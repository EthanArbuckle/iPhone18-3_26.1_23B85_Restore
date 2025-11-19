uint64_t webrtc::SimulcastEncoderAdapter::FetchOrCreateEncoderContext(webrtc::SimulcastEncoderAdapter *this, uint64_t a2, int a3)
{
  v73 = *MEMORY[0x277D85DE8];
  if (*(a2 + 64))
  {
    v5 = a3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = 0;
    v7 = (a2 + 592);
    v8 = *(a2 + 600);
    if (v8 != (a2 + 592))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = *(a2 + 617) & 1;
    v7 = (a2 + 592);
    v8 = *(a2 + 600);
    if (v8 != (a2 + 592))
    {
LABEL_9:
      while (*(v8[2] + 8) != v6)
      {
        v8 = v8[1];
        if (v8 == v7)
        {
          goto LABEL_14;
        }
      }
    }
  }

  if (v8 != v7)
  {
    v9 = v8[1];
    v10 = v8[2];
    v11 = *v8;
    *(v11 + 8) = v9;
    *v9 = v11;
    --*(a2 + 608);
    operator delete(v8);
    result = (*(**v10 + 40))(*v10, *(a2 + 584));
    *this = v10;
    return result;
  }

LABEL_14:
  (*(**(a2 + 56) + 24))(&v29);
  v12 = *(a2 + 64);
  if (v12)
  {
    (*(*v12 + 24))(v72);
    v13 = *&v72[0];
  }

  else
  {
    v13 = 0;
  }

  LOBYTE(v51) = 0;
  v52 = 0;
  v53 = 0x10000E100;
  v54 = 0;
  v55[23] = 7;
  if (v55 <= "unknown" && &v55[7] > "unknown" || (strcpy(v55, "unknown"), v56 = 256, v58 = -1, v57 = 2, v59 = 0, v60 = 0, v61 = 0, v62 = 0, v65 = 0, v63 = 0, v64 = 0, v66 = 0, v68 = 1, v67 = 2, v69 = 0, v70 = 0, v71 = 0, LOBYTE(v30) = 0, v31 = 0, v32 = 0x10000E100, v33 = 0, v34[23] = 7, v34 <= "unknown") && &v34[7] > "unknown")
  {
    __break(1u);
  }

  strcpy(v34, "unknown");
  v35 = 256;
  v37 = -1;
  v36 = 2;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v43 = 0;
  v44 = 0;
  v42 = 0;
  v45 = 0;
  v47 = 1;
  v46 = 2;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  if (v29)
  {
    (*(*v29 + 96))(v72);
    webrtc::VideoEncoder::EncoderInfo::operator=(&v51, v72);
    webrtc::VideoEncoder::EncoderInfo::~EncoderInfo(v72);
    webrtc::VideoEncoder::EncoderInfo::operator=(&v30, &v51);
    if (v13)
    {
      v29 = 0;
      webrtc::CreateVideoEncoderSoftwareFallbackWrapper();
    }

    v29 = 0;
    goto LABEL_29;
  }

  if (v13)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t\n\t", v14, v15, v16, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/simulcast_encoder_adapter.cc");
    }

    (*(*v13 + 96))(v72, v13);
    webrtc::VideoEncoder::EncoderInfo::operator=(&v30, v72);
    webrtc::VideoEncoder::EncoderInfo::~EncoderInfo(v72);
    webrtc::VideoEncoder::EncoderInfo::operator=(&v51, &v30);
LABEL_29:
    operator new();
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t\n\t", v22, v23, v24, v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/simulcast_encoder_adapter.cc");
  }

  *this = 0;
  webrtc::VideoEncoder::EncoderInfo::~EncoderInfo(&v30);
  webrtc::VideoEncoder::EncoderInfo::~EncoderInfo(&v51);
  result = v29;
  v29 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t webrtc::anonymous namespace::CountActiveStreams(webrtc::_anonymous_namespace_ *this, const VideoCodec *a2)
{
  v2 = *(this + 32);
  if (!*(this + 32))
  {
    return 1;
  }

  if (v2 < 8)
  {
    v3 = 0;
    v4 = 0;
LABEL_8:
    v12 = v2 - v3;
    v13 = (this + 36 * v3 + 52);
    do
    {
      v14 = *v13;
      v13 += 9;
      v4 += v14;
      --v12;
    }

    while (v12);
    goto LABEL_10;
  }

  v3 = v2 & 0xF8;
  v6 = (this + 160);
  v7 = 0uLL;
  v8 = v3;
  v9 = 0uLL;
  do
  {
    v10.i32[0] = *(v6 - 27);
    v10.i32[1] = *(v6 - 18);
    v10.i32[2] = *(v6 - 9);
    v10.i32[3] = *v6;
    v11.i32[0] = v6[9];
    v11.i32[1] = v6[18];
    v11.i32[2] = v6[27];
    v11.i32[3] = v6[36];
    v7 = vaddq_s32(v10, v7);
    v9 = vaddq_s32(v11, v9);
    v6 += 72;
    v8 -= 8;
  }

  while (v8);
  v4 = vaddvq_s32(vaddq_s32(v9, v7));
  if (v3 != v2)
  {
    goto LABEL_8;
  }

LABEL_10:
  if (!v4)
  {
    return *(this + 68);
  }

  if (v2 >= 0x10)
  {
    if (v2 >= 0x20)
    {
      v28 = 0;
      v15 = v2 & 0xE0;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      v32 = 0uLL;
      v33 = 0uLL;
      v34 = 0uLL;
      v35 = 0uLL;
      v36 = 0uLL;
      do
      {
        v37.i8[0] = *(this + v28 + 68);
        v37.i8[1] = *(this + v28 + 104);
        v37.i8[2] = *(this + v28 + 140);
        v37.i8[3] = *(this + v28 + 176);
        v37.i8[4] = *(this + v28 + 212);
        v37.i8[5] = *(this + v28 + 248);
        v37.i8[6] = *(this + v28 + 284);
        v37.i8[7] = *(this + v28 + 320);
        v38.i8[0] = *(this + v28 + 356);
        v38.i8[1] = *(this + v28 + 392);
        v38.i8[2] = *(this + v28 + 428);
        v38.i8[3] = *(this + v28 + 464);
        v38.i8[4] = *(this + v28 + 500);
        v38.i8[5] = *(this + v28 + 536);
        v38.i8[6] = *(this + v28 + 572);
        v38.i8[7] = *(this + v28 + 608);
        v39.i8[0] = *(this + v28 + 644);
        v39.i8[1] = *(this + v28 + 680);
        v39.i8[2] = *(this + v28 + 716);
        v39.i8[3] = *(this + v28 + 752);
        v39.i8[4] = *(this + v28 + 788);
        v39.i8[5] = *(this + v28 + 824);
        v39.i8[6] = *(this + v28 + 860);
        v39.i8[7] = *(this + v28 + 896);
        v40.i8[0] = *(this + v28 + 932);
        v40.i8[1] = *(this + v28 + 968);
        v40.i8[2] = *(this + v28 + 1004);
        v40.i8[3] = *(this + v28 + 1040);
        v40.i8[4] = *(this + v28 + 1076);
        v40.i8[5] = *(this + v28 + 1112);
        v40.i8[6] = *(this + v28 + 1148);
        v40.i8[7] = *(this + v28 + 1184);
        v41 = vmovl_u8(v37);
        v42 = vmovl_u8(v38);
        v43 = vmovl_u8(v39);
        v44 = vmovl_u8(v40);
        v32 = vaddw_high_u16(v32, v42);
        v30 = vaddw_high_u16(v30, v41);
        v31 = vaddw_u16(v31, *v42.i8);
        v29 = vaddw_u16(v29, *v41.i8);
        v36 = vaddw_high_u16(v36, v44);
        v34 = vaddw_high_u16(v34, v43);
        v35 = vaddw_u16(v35, *v44.i8);
        v33 = vaddw_u16(v33, *v43.i8);
        v28 += 1152;
      }

      while (((v2 >> 5 << 7) | (v2 >> 5 << 10)) != v28);
      v16 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v33, v29), vaddq_s32(v35, v31)), vaddq_s32(vaddq_s32(v34, v30), vaddq_s32(v36, v32))));
      if (v15 == v2)
      {
        return v16;
      }

      if ((v2 & 0x10) == 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      LODWORD(v16) = 0;
      v15 = 0;
    }

    v17 = v15;
    v15 = v2 & 0xF0;
    v18 = 0uLL;
    v19 = v16;
    v20 = v17 - v15;
    v21 = this + 36 * v17 + 320;
    v22 = 0uLL;
    v23 = 0uLL;
    do
    {
      v24.i8[0] = *(v21 - 252);
      v24.i8[1] = *(v21 - 216);
      v24.i8[2] = *(v21 - 180);
      v24.i8[3] = *(v21 - 144);
      v24.i8[4] = *(v21 - 108);
      v24.i8[5] = *(v21 - 72);
      v24.i8[6] = *(v21 - 36);
      v24.i8[7] = *v21;
      v25.i8[0] = v21[36];
      v25.i8[1] = v21[72];
      v25.i8[2] = v21[108];
      v25.i8[3] = v21[144];
      v25.i8[4] = v21[180];
      v25.i8[5] = v21[216];
      v26 = vmovl_u8(v24);
      v25.i8[6] = v21[252];
      v25.i8[7] = v21[288];
      v27 = vmovl_u8(v25);
      v23 = vaddw_high_u16(v23, v27);
      v22 = vaddw_u16(v22, *v27.i8);
      v18 = vaddw_high_u16(v18, v26);
      v19 = vaddw_u16(v19, *v26.i8);
      v21 += 576;
      v20 += 16;
    }

    while (v20);
    v16 = vaddvq_s32(vaddq_s32(vaddq_s32(v19, v22), vaddq_s32(v18, v23)));
    if (v15 == v2)
    {
      return v16;
    }

    goto LABEL_24;
  }

  v15 = 0;
  LODWORD(v16) = 0;
LABEL_24:
  v45 = v2 - v15;
  v46 = this + 36 * v15 + 68;
  do
  {
    v47 = *v46;
    v46 += 36;
    v16 = (v16 + v47);
    --v45;
  }

  while (v45);
  return v16;
}

uint64_t webrtc::SimulcastEncoderAdapter::Encode(uint64_t a1, uint64_t a2)
{
  v2 = atomic_load((a1 + 48));
  if (v2 != 1 || !*(a1 + 584))
  {
    return 4294967289;
  }

  if (*(a1 + 696) == 1 && !*(a1 + 692))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v23, v24, v25, v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/experiments/encoder_info_settings.cc");
    }
  }

  else
  {
    v5 = *(a1 + 692);
    if ((v5 & 0x100000000) == 0)
    {
      goto LABEL_6;
    }

    if (!v5)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v32, v33, v34, v35, v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/experiments/encoder_info_settings.cc");
      }

      __break(1u);
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v12 = *(a2 + 8);
    if (v12)
    {
      LODWORD(v12) = (*(*v12 + 40))(v12);
    }

    if (v12 % v5)
    {
      goto LABEL_29;
    }

    v13 = *(a2 + 8);
    if (v13)
    {
      LODWORD(v13) = (*(*v13 + 48))(v13);
    }

    if (v13 % v5)
    {
LABEL_29:
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
      {
        goto LABEL_39;
      }

      v21 = *(a2 + 8);
      if (v21)
      {
        (*(*v21 + 40))(v21);
        v22 = *(a2 + 8);
        if (v22)
        {
          (*(*v22 + 48))(v22);
        }
      }

LABEL_38:
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v14, v15, v16, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/simulcast_encoder_adapter.cc");
LABEL_39:
      if (*(a1 + 619))
      {
        return 1;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }

    if (*(a1 + 761) == 1)
    {
      v30 = *(a1 + 560);
      v31 = *(a1 + 568);
      if (v30 != v31)
      {
        while (!(*(v30 + 36) % v5) && !(*(v30 + 38) % v5))
        {
          v30 += 48;
          if (v30 == v31)
          {
            goto LABEL_6;
          }
        }

        if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
        {
          goto LABEL_39;
        }

        goto LABEL_38;
      }
    }
  }

LABEL_6:
  for (i = *(a1 + 560); ; i += 48)
  {
    if (i == *(a1 + 568))
    {
      v7 = *(a2 + 8);
      if (v7)
      {
        goto LABEL_16;
      }

LABEL_12:
      v8 = *(a1 + 560);
      v9 = *(a1 + 568);
      if (v8 == v9)
      {
        return 0;
      }

      goto LABEL_20;
    }

    if (*(i + 41) & 1) == 0 && (*(i + 40))
    {
      break;
    }
  }

  v7 = *(a2 + 8);
  if (!v7)
  {
    goto LABEL_12;
  }

LABEL_16:
  (*(*v7 + 40))(v7);
  v11 = *(a2 + 8);
  if (v11)
  {
    (*(*v11 + 48))(v11);
    v8 = *(a1 + 560);
    v9 = *(a1 + 568);
    if (v8 != v9)
    {
      goto LABEL_20;
    }

    return 0;
  }

  v8 = *(a1 + 560);
  v9 = *(a1 + 568);
  if (v8 == v9)
  {
    return 0;
  }

  do
  {
LABEL_20:
    if ((*(v8 + 41) & 1) == 0)
    {
      operator new();
    }

    v8 += 48;
  }

  while (v8 != v9);
  return 0;
}

uint64_t webrtc::SimulcastEncoderAdapter::RegisterEncodeCompleteCallback(void *a1, uint64_t a2)
{
  a1[73] = a2;
  v2 = a1[70];
  if (v2 == a1[71] || *(v2 + 32))
  {
    return 0;
  }

  (*(***(v2 + 16) + 40))(**(v2 + 16));
  return 0;
}

void webrtc::SimulcastEncoderAdapter::SetRates(webrtc::SimulcastEncoderAdapter *this, const webrtc::VideoEncoder::RateControlParameters *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = atomic_load(this + 12);
  if (v8 != 1)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v18, v19, v20, v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/simulcast_encoder_adapter.cc");
    }

    return;
  }

  v10 = *(a2 + 43);
  if (v10 < 1.0)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t\a", v11, v12, v13, v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/simulcast_encoder_adapter.cc");
    }

    return;
  }

  *(this + 47) = (v10 + 0.5);
  v25 = *(this + 70);
  if (*(this + 556) != 1)
  {
    v28 = *(this + 71);
    if (v25 == v28)
    {
      return;
    }

    while (1)
    {
      v26 = *(v25 + 32);
      if (v26 >= 5)
      {
        goto LABEL_54;
      }

      v30 = (a2 + 32 * v26 + 180);
      if (*(v30 + 4) == 1)
      {
        v31 = *v30;
        if (*(v30 + 12) != 1)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v31 = 0;
        if (*(v30 + 12) != 1)
        {
LABEL_24:
          v32 = 0;
          if (*(v30 + 20) != 1)
          {
            goto LABEL_25;
          }

          goto LABEL_30;
        }
      }

      v32 = v30[2];
      if (*(v30 + 20) != 1)
      {
LABEL_25:
        v33 = 0;
        if (*(v30 + 28) != 1)
        {
          goto LABEL_26;
        }

        goto LABEL_31;
      }

LABEL_30:
      v33 = v30[4];
      if (*(v30 + 28) != 1)
      {
LABEL_26:
        v34 = v32 + v31 + v33;
        if (v34 >= 0x3E8)
        {
          goto LABEL_32;
        }

        goto LABEL_34;
      }

LABEL_31:
      v34 = v32 + v31 + v33 + v30[6];
      if (v34 >= 0x3E8)
      {
LABEL_32:
        if (*(v25 + 41) == 1)
        {
          *(v25 + 40) = 1;
        }
      }

LABEL_34:
      *(v25 + 41) = v34 < 0x3E8;
      v46 = &unk_2882A1B60;
      memcpy(v47, a2 + 8, sizeof(v47));
      LODWORD(v47[21]) = 0;
      BYTE4(v47[21]) = 0;
      LOBYTE(v47[22]) = 0;
      BYTE4(v47[22]) = 0;
      LOBYTE(v47[23]) = 0;
      BYTE4(v47[23]) = 0;
      LOBYTE(v47[24]) = 0;
      BYTE4(v47[24]) = 0;
      LOBYTE(v47[25]) = 0;
      BYTE4(v47[25]) = 0;
      LOBYTE(v47[26]) = 0;
      BYTE4(v47[26]) = 0;
      LOBYTE(v47[27]) = 0;
      BYTE4(v47[27]) = 0;
      LOBYTE(v47[28]) = 0;
      BYTE4(v47[28]) = 0;
      LOBYTE(v47[29]) = 0;
      BYTE4(v47[29]) = 0;
      LOBYTE(v47[30]) = 0;
      BYTE4(v47[30]) = 0;
      LOBYTE(v47[31]) = 0;
      BYTE4(v47[31]) = 0;
      LOBYTE(v47[32]) = 0;
      BYTE4(v47[32]) = 0;
      LOBYTE(v47[33]) = 0;
      BYTE4(v47[33]) = 0;
      LOBYTE(v47[34]) = 0;
      BYTE4(v47[34]) = 0;
      LOBYTE(v47[35]) = 0;
      BYTE4(v47[35]) = 0;
      LOBYTE(v47[36]) = 0;
      BYTE4(v47[36]) = 0;
      LOBYTE(v47[37]) = 0;
      BYTE4(v47[37]) = 0;
      LOBYTE(v47[38]) = 0;
      BYTE4(v47[38]) = 0;
      LOBYTE(v47[39]) = 0;
      BYTE4(v47[39]) = 0;
      LOBYTE(v47[40]) = 0;
      BYTE4(v47[40]) = 0;
      LOBYTE(v47[41]) = 0;
      BYTE4(v47[41]) = 0;
      if (*(v30 + 4) == 1)
      {
        v35 = *v30;
        v36 = v35 + LODWORD(v47[21]);
        if (v36 <= 0xFFFFFFFFLL)
        {
          LOBYTE(v47[22]) = 1;
          v47[21] = __PAIR64__(v35, v36);
        }
      }

      if (*(v30 + 12) == 1)
      {
        v37 = v30[2];
        if (v37 + LODWORD(v47[21]) <= 0xFFFFFFFFLL)
        {
          LOBYTE(v47[23]) = 1;
          HIDWORD(v47[22]) = v37;
          LODWORD(v47[21]) += v37;
        }
      }

      if (*(v30 + 20) == 1)
      {
        v38 = v30[4];
        if (v38 + LODWORD(v47[21]) <= 0xFFFFFFFFLL)
        {
          LOBYTE(v47[24]) = 1;
          HIDWORD(v47[23]) = v38;
          LODWORD(v47[21]) += v38;
        }
      }

      if (*(v30 + 28) == 1)
      {
        v39 = v30[6];
        if (v39 + LODWORD(v47[21]) <= 0xFFFFFFFFLL)
        {
          LOBYTE(v47[25]) = 1;
          HIDWORD(v47[24]) = v39;
          LODWORD(v47[21]) += v39;
        }
      }

      v40 = *(a2 + 44);
      if (v40)
      {
        v41 = *(a2 + 44);
        if (v41)
        {
          v42 = v40 * LODWORD(v47[21]) / v41;
          if (v42 <= LODWORD(v47[21]))
          {
            v42 = LODWORD(v47[21]);
          }

          v47[43] = v42;
        }
      }

      v43 = *(v25 + 24);
      if (v43)
      {
        v29 = *v43;
      }

      else
      {
        v29 = 0.0;
      }

      if (!v43)
      {
        v29 = *(a2 + 43);
      }

      if (v29 >= *(a2 + 43))
      {
        v29 = *(a2 + 43);
      }

      *&v47[42] = v29;
      (*(***(v25 + 16) + 64))(**(v25 + 16), &v46);
      v25 += 48;
      if (v25 == v28)
      {
        return;
      }
    }
  }

  v26 = *(this + 71);
  if (v25 == v26)
  {
    __break(1u);
LABEL_54:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/video_bitrate_allocation.cc", 78, "spatial_index < kMaxSpatialLayers", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, v26);
    webrtc::SimulcastEncoderAdapter::OnPacketLossRateUpdate(v44, v45);
  }

  else
  {
    v27 = *(***(v25 + 16) + 64);

    v27();
  }
}

uint64_t webrtc::SimulcastEncoderAdapter::OnPacketLossRateUpdate(uint64_t this, float a2)
{
  v2 = *(this + 560);
  for (i = *(this + 568); v2 != i; v2 += 48)
  {
    this = (*(***(v2 + 16) + 72))(**(v2 + 16), a2);
  }

  return this;
}

uint64_t webrtc::SimulcastEncoderAdapter::OnRttUpdate(uint64_t this, uint64_t a2)
{
  v2 = *(this + 560);
  for (i = *(this + 568); v2 != i; v2 += 48)
  {
    this = (*(***(v2 + 16) + 80))(**(v2 + 16), a2);
  }

  return this;
}

uint64_t webrtc::SimulcastEncoderAdapter::OnLossNotification(uint64_t result, uint64_t a2)
{
  v2 = *(result + 560);
  for (i = *(result + 568); v2 != i; v2 += 48)
  {
    result = (*(***(v2 + 16) + 88))(**(v2 + 16), a2);
  }

  return result;
}

void webrtc::SimulcastEncoderAdapter::OverrideFromFieldTrial(webrtc::SimulcastEncoderAdapter *this, webrtc::VideoEncoder::EncoderInfo *a2)
{
  if (__PAIR64__(*(this + 696), *(this + 173)) == 0x100000000)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v14, v15, v16, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/experiments/encoder_info_settings.cc");
    }
  }

  else
  {
    v4 = *(this + 692);
    if ((v4 & 0x100000000) != 0)
    {
      if (v4)
      {
        v5 = *(a2 + 4);
        if (!v5)
        {
          *(a2 + 4) = 0;
          if (*(a2 + 20))
          {
            goto LABEL_21;
          }

          goto LABEL_25;
        }

        if (v5 >= v4)
        {
          v6 = *(this + 692);
        }

        else
        {
          v6 = *(a2 + 4);
        }

        if (v5 <= v4)
        {
          v7 = *(this + 692);
        }

        else
        {
          v7 = *(a2 + 4);
        }

        v8 = v7 % v6;
        if (v8)
        {
          v9 = v8 >> __clz(__rbit32(v8));
          v10 = v6;
          do
          {
            v11 = v10 >> __clz(__rbit32(v10));
            v10 = v11 - v9;
            if (v9 > v11)
            {
              v10 = v9 - v11;
            }

            if (v9 >= v11)
            {
              v9 = v11;
            }
          }

          while (v10);
          v6 = v9 << __clz(__rbit32(v8 | v6));
        }

        v12 = v5 / v6 * v4;
        if ((v12 & 0xFFFFFFFF00000000) == 0)
        {
          *(a2 + 4) = v12;
          if (*(a2 + 20))
          {
LABEL_21:
            v13 = 1;
LABEL_26:
            *(a2 + 20) = v13 & 1;
            goto LABEL_27;
          }

LABEL_25:
          v13 = *(this + 761);
          goto LABEL_26;
        }
      }

      else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v23, v24, v25, v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/experiments/encoder_info_settings.cc");
      }

      __break(1u);
      goto LABEL_35;
    }
  }

LABEL_27:
  if (*(a2 + 22) == *(a2 + 23))
  {
    v21 = *(this + 96);
    v22 = *(this + 97);
    if (v22 != v21)
    {
      if (((v22 - v21) & 0x8000000000000000) == 0)
      {
        operator new();
      }

LABEL_35:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }
  }
}

void webrtc::SimulcastEncoderAdapter::GetEncoderInfo(webrtc::SimulcastEncoderAdapter *this@<X0>, uint64_t a2@<X8>)
{
  v78 = *MEMORY[0x277D85DE8];
  v4 = *(this + 71);
  v5 = *(this + 70);
  if (v4 - v5 == 48)
  {
    if (v5 != v4)
    {
      (*(***(v5 + 16) + 96))(**(v5 + 16));

      webrtc::SimulcastEncoderAdapter::OverrideFromFieldTrial(this, a2);
      return;
    }

    goto LABEL_171;
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 12) = 0x10000E100;
  *(a2 + 20) = 0;
  *(a2 + 47) = 7;
  if (a2 + 24 <= "unknown" && a2 + 31 > "unknown")
  {
    goto LABEL_171;
  }

  strcpy((a2 + 24), "unknown");
  *(a2 + 56) = 2;
  *(a2 + 48) = 256;
  *(a2 + 64) = -1;
  *(a2 + 80) = 0;
  *(a2 + 104) = 0;
  *(a2 + 128) = 0;
  *(a2 + 152) = 0;
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(a2 + 176) = 0;
  *(a2 + 200) = 0;
  *(a2 + 216) = 1;
  *(a2 + 208) = 2;
  *(a2 + 240) = 0;
  *(a2 + 244) = 0;
  *(a2 + 248) = 0;
  std::string::__assign_external((a2 + 24), "SimulcastEncoderAdapter", 0x17uLL);
  *(a2 + 16) = 1;
  *(a2 + 20) = 256;
  if (*(a2 + 8) == 1)
  {
    *(a2 + 8) = 0;
  }

  v6 = *(this + 70);
  if (v6 == *(this + 71))
  {
    webrtc::SimulcastEncoderAdapter::FetchOrCreateEncoderContext(&v70, this, 1);
    v33 = v70.__r_.__value_.__r.__words[0];
    if (!v70.__r_.__value_.__r.__words[0])
    {
      return;
    }

    LODWORD(v34) = 0;
    v35 = *(v70.__r_.__value_.__r.__words[0] + 32);
    if (!v35)
    {
      goto LABEL_99;
    }

    v36 = *(v70.__r_.__value_.__r.__words[0] + 288);
    if (!v36)
    {
      goto LABEL_99;
    }

    if (v35 >= v36)
    {
      v37 = *(v70.__r_.__value_.__r.__words[0] + 288);
    }

    else
    {
      v37 = *(v70.__r_.__value_.__r.__words[0] + 32);
    }

    if (v35 <= v36)
    {
      v38 = *(v70.__r_.__value_.__r.__words[0] + 288);
    }

    else
    {
      v38 = *(v70.__r_.__value_.__r.__words[0] + 32);
    }

    v39 = v38 % v37;
    if (v39)
    {
      v40 = v39 >> __clz(__rbit32(v39));
      v41 = v37;
      do
      {
        v42 = v41 >> __clz(__rbit32(v41));
        v41 = v42 - v40;
        if (v40 > v42)
        {
          v41 = v40 - v42;
        }

        if (v40 >= v42)
        {
          v40 = v42;
        }
      }

      while (v41);
      v37 = v40 << __clz(__rbit32(v39 | v37));
    }

    v34 = v35 / v37 * v36;
    if ((v34 & 0xFFFFFFFF00000000) == 0)
    {
LABEL_99:
      *(a2 + 16) = v34;
      *(a2 + 20) = (v33[36] | v33[292]) & 1;
      if (v33[216] != 1 || (v33[472] & 1) == 0)
      {
        *(a2 + 20) = 1;
      }

      operator new();
    }

    goto LABEL_171;
  }

  v7 = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 12) = 57600;
  v65 = (a2 + 24);
  v67 = 0;
  v68 = 0;
  v69 = 0;
  do
  {
    (*(***(v6 + 48 * v7 + 16) + 96))(&v70);
    v8 = *(this + 70);
    if (0xAAAAAAAAAAAAAAABLL * ((*(this + 71) - v8) >> 4) <= v7)
    {
      goto LABEL_171;
    }

    if ((*(v8 + 48 * v7 + 41) & 1) == 0)
    {
      v9 = v68;
      if (v68 >= v69)
      {
        v11 = 0xAAAAAAAAAAAAAAABLL * ((v68 - v67) >> 3) + 1;
        if (v11 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }

        if (0x5555555555555556 * ((v69 - v67) >> 3) > v11)
        {
          v11 = 0x5555555555555556 * ((v69 - v67) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v69 - v67) >> 3) >= 0x555555555555555)
        {
          v12 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v12 = v11;
        }

        if (v12)
        {
          if (v12 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

LABEL_172:
          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }

        goto LABEL_171;
      }

      if (!v68)
      {
        goto LABEL_171;
      }

      if (SHIBYTE(v72) < 0)
      {
        std::string::__init_copy_ctor_external(v68, v71, *(&v71 + 1));
      }

      else
      {
        v10 = v71;
        v68->__r_.__value_.__r.__words[2] = v72;
        *&v9->__r_.__value_.__l.__data_ = v10;
      }

      v68 = v9 + 1;
    }

    v13 = v70.__r_.__value_.__s.__data_[21];
    if (v7)
    {
      v13 = *(a2 + 21) | v70.__r_.__value_.__s.__data_[21];
      v14 = *(a2 + 48) & v73;
      v15 = *(a2 + 49) | v74;
      v16 = (*(a2 + 240) | ~*(a2 + 241)) & (v77 | ~HIBYTE(v77)) & 1 | 0x100;
    }

    else
    {
      v14 = v73;
      v15 = v74;
      v16 = v77;
    }

    *(a2 + 21) = v13;
    *(a2 + 48) = v14;
    *(a2 + 49) = v15;
    *(a2 + 240) = v16;
    v17 = (a2 + 56 + 24 * v7);
    if (v17 != &v75)
    {
      if (v75)
      {
        v18 = v76;
      }

      else
      {
        v18 = &v76;
      }

      absl::inlined_vector_internal::Storage<unsigned char,4ul,std::allocator<unsigned char>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<unsigned char>,unsigned char const*>>(v17, v18, v75 >> 1);
    }

    LODWORD(v19) = 0;
    v20 = *(a2 + 16);
    v21 = v70.__r_.__value_.__r.__words[2];
    if (v20 && LODWORD(v70.__r_.__value_.__r.__words[2]))
    {
      if (v20 >= LODWORD(v70.__r_.__value_.__r.__words[2]))
      {
        v22 = v70.__r_.__value_.__r.__words[2];
      }

      else
      {
        v22 = *(a2 + 16);
      }

      if (v20 <= LODWORD(v70.__r_.__value_.__r.__words[2]))
      {
        v23 = v70.__r_.__value_.__r.__words[2];
      }

      else
      {
        v23 = *(a2 + 16);
      }

      v24 = v23 % v22;
      if (v24)
      {
        v25 = v24 >> __clz(__rbit32(v24));
        v26 = v22;
        do
        {
          v27 = v26 >> __clz(__rbit32(v26));
          v26 = v27 - v25;
          if (v25 > v27)
          {
            v26 = v25 - v27;
          }

          if (v25 >= v27)
          {
            v25 = v27;
          }
        }

        while (v26);
        v22 = v25 << __clz(__rbit32(v24 | v22));
      }

      v19 = v20 / v22 * LODWORD(v70.__r_.__value_.__r.__words[2]);
      if ((v19 & 0xFFFFFFFF00000000) != 0)
      {
        goto LABEL_171;
      }
    }

    *(a2 + 16) = v19;
    if ((v70.__r_.__value_.__s.__data_[20] & 1) != 0 || v21 >= 2 && ((v28 = (this + 36 * v7 + 204), v28[1] < *(this + 87)) || *v28 < *(this + 86)))
    {
      *(a2 + 20) = 1;
    }

    webrtc::VideoEncoder::EncoderInfo::~EncoderInfo(&v70.__r_.__value_.__l.__data_);
    ++v7;
    v6 = *(this + 70);
  }

  while (v7 < 0xAAAAAAAAAAAAAAABLL * ((*(this + 71) - v6) >> 4));
  if (v67 == v68)
  {
    goto LABEL_158;
  }

  *(&v70.__r_.__value_.__s + 23) = 2;
  if (&v70 <= " (" && &v70.__r_.__value_.__s.__data_[2] > " (")
  {
    goto LABEL_171;
  }

  strcpy(&v70, " (");
  webrtc::StrJoin<std::vector<std::string>>(", ", 2uLL, &v67, &__p);
  v29 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
  v30 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
  if (!v29 && v30)
  {
    goto LABEL_171;
  }

  if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v31 = 22;
  }

  else
  {
    v31 = (v70.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v70.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v70.__r_.__value_.__l.__size_;
  }

  if (v31 - size >= v30)
  {
    if (v30)
    {
      if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v43 = &v70;
      }

      else
      {
        v43 = v70.__r_.__value_.__r.__words[0];
      }

      if ((v30 & 0x8000000000000000) != 0)
      {
        goto LABEL_171;
      }

      v44 = v43 + size;
      if ((v43 + size) <= v29 && &v44[v30] > v29)
      {
        goto LABEL_171;
      }

      v45 = v30;
      memmove(v44, v29, v30);
      v46 = size + v45;
      if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
      {
        v70.__r_.__value_.__l.__size_ = size + v45;
        v43->__r_.__value_.__s.__data_[v46] = 0;
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_113;
        }

LABEL_80:
        operator delete(__p.__r_.__value_.__l.__data_);
        goto LABEL_113;
      }

      *(&v70.__r_.__value_.__s + 23) = v46 & 0x7F;
      v43->__r_.__value_.__s.__data_[v46] = 0;
    }

    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_80;
  }

  std::string::__grow_by_and_replace(&v70, v31, size + v30 - v31, size, size, 0, v30, v29);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_80;
  }

LABEL_113:
  v47 = HIBYTE(v70.__r_.__value_.__r.__words[2]);
  if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v48 = 22;
  }

  else
  {
    v48 = (v70.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v47 = v70.__r_.__value_.__l.__size_;
  }

  if (v48 == v47)
  {
    std::string::__grow_by_and_replace(&v70, v48, 1uLL, v48, v48, 0, 1uLL, ")");
    goto LABEL_128;
  }

  v49 = &v70;
  if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v49 = v70.__r_.__value_.__r.__words[0];
  }

  v50 = v49 + v47;
  if (v49 + v47 <= ")" && v50 + 1 > ")")
  {
    goto LABEL_171;
  }

  *v50 = 41;
  v51 = v47 + 1;
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    v70.__r_.__value_.__l.__size_ = v51;
  }

  else
  {
    *(&v70.__r_.__value_.__s + 23) = v51 & 0x7F;
  }

  v49->__r_.__value_.__s.__data_[v51] = 0;
LABEL_128:
  __p = v70;
  memset(&v70, 0, sizeof(v70));
  v52 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
  v53 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
  if (!v52 && v53)
  {
    goto LABEL_171;
  }

  v54 = *(a2 + 47);
  if (v54 >= 0)
  {
    v55 = 22;
  }

  else
  {
    v55 = (*(a2 + 40) & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v54 >= 0)
  {
    v56 = *(a2 + 47);
  }

  else
  {
    v56 = *(a2 + 32);
  }

  if (v55 - v56 >= v53)
  {
    if (!v53)
    {
      goto LABEL_156;
    }

    if (v54 >= 0)
    {
      v58 = a2 + 24;
    }

    else
    {
      v58 = v65->__r_.__value_.__r.__words[0];
    }

    if ((v53 & 0x8000000000000000) == 0)
    {
      v59 = (v58 + v56);
      if (v58 + v56 > v52 || &v59[v53] <= v52)
      {
        v60 = v53;
        memmove(v59, v52, v53);
        v61 = v56 + v60;
        if (*(a2 + 47) < 0)
        {
          *(a2 + 32) = v61;
          *(v58 + v61) = 0;
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_157;
          }

LABEL_144:
          operator delete(__p.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v70.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_158;
          }

LABEL_145:
          operator delete(v70.__r_.__value_.__l.__data_);
          webrtc::SimulcastEncoderAdapter::OverrideFromFieldTrial(this, a2);
          v57 = v67;
          if (v67)
          {
            goto LABEL_159;
          }

          return;
        }

        *(a2 + 47) = v61 & 0x7F;
        *(v58 + v61) = 0;
LABEL_156:
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_157;
        }

        goto LABEL_144;
      }
    }

LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  std::string::__grow_by_and_replace(v65, v55, v56 + v53 - v55, v56, v56, 0, v53, v52);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_144;
  }

LABEL_157:
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_145;
  }

LABEL_158:
  webrtc::SimulcastEncoderAdapter::OverrideFromFieldTrial(this, a2);
  v57 = v67;
  if (v67)
  {
LABEL_159:
    v62 = v68;
    v63 = v57;
    if (v68 != v57)
    {
      do
      {
        v64 = SHIBYTE(v62[-1].__r_.__value_.__r.__words[2]);
        --v62;
        if (v64 < 0)
        {
          operator delete(v62->__r_.__value_.__l.__data_);
        }
      }

      while (v62 != v57);
      v63 = v67;
    }

    v68 = v57;
    operator delete(v63);
  }
}

void std::vector<webrtc::SimulcastEncoderAdapter::StreamContext>::__emplace_back_slow_path<decltype(nullptr),std::unique_ptr<webrtc::SimulcastEncoderAdapter::EncoderContext>,decltype(nullptr),int,unsigned short &,unsigned short &,BOOL>(void *a1)
{
  v1 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4) + 1;
  if (v1 <= 0x555555555555555)
  {
    if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v1)
    {
      v1 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
    {
      v2 = 0x555555555555555;
    }

    else
    {
      v2 = v1;
    }

    v3 = a1;
    if (v2)
    {
      if (v2 <= 0x555555555555555)
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

uint64_t std::vector<webrtc::SimulcastEncoderAdapter::StreamContext>::__swap_out_circular_buffer(uint64_t result, void *a2)
{
  v3 = result;
  v4 = *result;
  v5 = *(result + 8);
  v6 = a2[1] - (v5 - *result);
  if (v5 == *result)
  {
LABEL_11:
    a2[1] = v6;
    *v3 = v6;
    v3[1] = v4;
    a2[1] = v4;
    v14 = v3[1];
    v3[1] = a2[2];
    a2[2] = v14;
    v15 = v3[2];
    v3[2] = a2[3];
    a2[3] = v15;
    *a2 = a2[1];
  }

  else
  {
    v7 = 0;
    while (1)
    {
      v8 = v6 + v7 * 8;
      if (!(v6 + v7 * 8))
      {
        break;
      }

      v9 = v6 + v7 * 8;
      v10 = &v4[v7];
      v11 = v4[v7 + 1];
      *v9 = &unk_28829FB28;
      *(v9 + 8) = v11;
      v12 = *&v4[v7 + 2];
      v10[2] = 0;
      v10[3] = 0;
      *(v9 + 16) = v12;
      *(v9 + 32) = v4[v7 + 4];
      *(v9 + 36) = WORD2(v4[v7 + 4]);
      *(v9 + 38) = *(&v4[v7 + 4] + 6);
      if (v11)
      {
        result = (*(**v12 + 40))(*v12, v8);
      }

      v7 += 6;
      if (&v4[v7] == v5)
      {
        v13 = v4;
        while (v4)
        {
          result = (**v4)(v4, v8);
          v13 += 6;
          v4 += 6;
          if (v4 == v5)
          {
            v4 = *v3;
            goto LABEL_11;
          }
        }

        break;
      }
    }

    __break(1u);
  }

  return result;
}

void webrtc::SimulcastRateAllocator::SimulcastRateAllocator(void *a1, int a2, void *__src)
{
  *a1 = &unk_28829FBD0;
  memcpy(a1 + 1, __src, 0x180uLL);
  webrtc::StableTargetRateExperiment::StableTargetRateExperiment((a1 + 49));
}

void webrtc::SimulcastRateAllocator::~SimulcastRateAllocator(webrtc::SimulcastRateAllocator *this)
{
  *this = &unk_28829FBD0;
  v2 = *(this + 86);
  if (v2)
  {
    operator delete(v2);
  }

  *(this + 66) = &unk_288293910;
  if (*(this + 583) < 0)
  {
    operator delete(*(this + 70));
  }

  v3 = *(this + 67);
  if (v3)
  {
    *(this + 68) = v3;
    operator delete(v3);
  }

  *(this + 57) = &unk_288293910;
  if (*(this + 511) < 0)
  {
    operator delete(*(this + 61));
  }

  v4 = *(this + 58);
  if (v4)
  {
    *(this + 59) = v4;
    operator delete(v4);
  }

  *(this + 49) = &unk_288293910;
  if (*(this + 447) < 0)
  {
    operator delete(*(this + 53));
  }

  v5 = *(this + 50);
  if (v5)
  {
    *(this + 51) = v5;
    operator delete(v5);
  }
}

{
  *this = &unk_28829FBD0;
  v2 = *(this + 86);
  if (v2)
  {
    operator delete(v2);
  }

  *(this + 66) = &unk_288293910;
  if (*(this + 583) < 0)
  {
    operator delete(*(this + 70));
  }

  v3 = *(this + 67);
  if (v3)
  {
    *(this + 68) = v3;
    operator delete(v3);
  }

  *(this + 57) = &unk_288293910;
  if (*(this + 511) < 0)
  {
    operator delete(*(this + 61));
  }

  v4 = *(this + 58);
  if (v4)
  {
    *(this + 59) = v4;
    operator delete(v4);
  }

  *(this + 49) = &unk_288293910;
  if (*(this + 447) < 0)
  {
    operator delete(*(this + 53));
  }

  v5 = *(this + 50);
  if (v5)
  {
    *(this + 51) = v5;
    operator delete(v5);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::SimulcastRateAllocator::Allocate@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 4) = 0;
  *(a3 + 8) = 0;
  *(a3 + 12) = 0;
  *(a3 + 16) = 0;
  *(a3 + 20) = 0;
  *(a3 + 24) = 0;
  *(a3 + 28) = 0;
  *(a3 + 32) = 0;
  *(a3 + 36) = 0;
  *(a3 + 40) = 0;
  *(a3 + 44) = 0;
  *(a3 + 48) = 0;
  *(a3 + 52) = 0;
  *(a3 + 56) = 0;
  *(a3 + 60) = 0;
  *(a3 + 64) = 0;
  *(a3 + 68) = 0;
  *(a3 + 72) = 0;
  *(a3 + 76) = 0;
  *(a3 + 80) = 0;
  *(a3 + 84) = 0;
  *(a3 + 88) = 0;
  *(a3 + 92) = 0;
  *(a3 + 96) = 0;
  *(a3 + 100) = 0;
  *(a3 + 104) = 0;
  *(a3 + 108) = 0;
  *(a3 + 112) = 0;
  *(a3 + 116) = 0;
  *(a3 + 120) = 0;
  *(a3 + 124) = 0;
  *(a3 + 128) = 0;
  *(a3 + 132) = 0;
  *(a3 + 136) = 0;
  *(a3 + 140) = 0;
  *(a3 + 144) = 0;
  *(a3 + 148) = 0;
  *(a3 + 152) = 0;
  *(a3 + 156) = 0;
  *(a3 + 160) = 0;
  *(a3 + 164) = 0;
  v5 = *a2;
  if (*(a1 + 449) == 1)
  {
    v6 = a2[1];
    if (*a2 >= v6)
    {
      v7 = a2[1];
    }

    else
    {
      v7 = *a2;
    }

    if (v6 <= 0)
    {
      v5 = *a2;
    }

    else
    {
      v5 = v7;
    }
  }

  webrtc::SimulcastRateAllocator::DistributeAllocationToSimulcastLayers(a1, *a2, v5, a3);

  return webrtc::SimulcastRateAllocator::DistributeAllocationToTemporalLayers(a1, a3, v8, v9, v10, v11, v12, v13);
}

uint64_t webrtc::SimulcastRateAllocator::DistributeAllocationToSimulcastLayers(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v4 = *(result + 20);
  if (1000 * v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = 1000 * v4;
  }

  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = a2;
  }

  if (*(result + 40))
  {
    operator new();
  }

  if (*(result + 32) == 1)
  {
    v7 = 1000 * *(result + 24);
    if (v7 <= v6)
    {
      LODWORD(v7) = v6;
    }

    v8 = *a4;
    if (*(a4 + 8) == 1)
    {
      v8 -= a4[1];
    }

    v9 = v8 + v7;
    if (v9 <= 0xFFFFFFFFLL)
    {
      *(a4 + 8) = 1;
      *a4 = v9;
      a4[1] = v7;
    }
  }

  return result;
}

uint64_t webrtc::SimulcastRateAllocator::DistributeAllocationToTemporalLayers(uint64_t this, webrtc::VideoBitrateAllocation *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  if (*(this + 40) <= 1u)
  {
    v9 = 1;
  }

  else
  {
    v9 = *(this + 40);
  }

  v10 = this + 44;
  do
  {
    if (v8 == 5)
    {
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/video_bitrate_allocation.cc", 59, "spatial_index < kMaxSpatialLayers", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, 5);
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/video_bitrate_allocation.cc", 33, "temporal_index < kMaxTemporalStreams", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v19, v20, v21, v22, v23);
      goto LABEL_35;
    }

    v11 = a2 + 32 * v8 + 4;
    if (v11[4] == 1 && *v11 >= 0x3E8u)
    {
      v12 = *(this + 8);
      if (v12 != 1 || (v13 = (this + 364), *(this + 40)))
      {
        v13 = (v10 + 36 * v8 + 12);
      }

      v14 = *v13;
      if (*(this + 332) == 1)
      {
        v15 = *(this + 712);
        if (v8 || (v15 & 1) == 0)
        {
          if (v14 < 2)
          {
            goto LABEL_27;
          }

          if (!v8)
          {
            goto LABEL_31;
          }
        }

        else
        {
          if (v14 <= 1)
          {
LABEL_27:
            operator new();
          }

          v15 = 1;
LABEL_31:
          if (v15)
          {
            operator new();
          }
        }
      }

      else if (v14 < 2)
      {
        goto LABEL_27;
      }

      if (v12 != 1 || (v16 = (this + 364), *(this + 40)))
      {
        v16 = (v10 + 36 * v8 + 12);
      }

      v17 = *v16;
      if (v17 <= 1)
      {
        v18 = 1;
      }

      else
      {
        v18 = *v16;
      }

      if (v17 < 5)
      {
        operator new();
      }

LABEL_35:
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/utility/simulcast_rate_allocator.cc", 57, "num_layers <= kMaxTemporalStreams", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, v18);
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    ++v8;
  }

  while (v8 != v9);
  return this;
}

double std::__stable_sort<std::_ClassicAlgPolicy,webrtc::SimulcastRateAllocator::DistributeAllocationToSimulcastLayers(webrtc::DataRate,webrtc::DataRate,webrtc::VideoBitrateAllocation *)::$_0 &,std::__wrap_iter<unsigned long *>>@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v7 = *(a2 - 1);
      v8 = *a1;
      if (*(*a3 + 44 + 36 * v7 + 16) < *(*a3 + 44 + 36 * *a1 + 16))
      {
        *a1 = v7;
        *(a2 - 1) = v8;
      }
    }

    else if (a4 > 128)
    {
      v19 = a4 >> 1;
      v20 = &a1[a4 >> 1];
      v21 = a4 - (a4 >> 1);
      v22 = a1;
      if (a4 <= a6)
      {
        v29 = a5;
        std::__stable_sort_move<std::_ClassicAlgPolicy,webrtc::SimulcastRateAllocator::DistributeAllocationToSimulcastLayers(webrtc::DataRate,webrtc::DataRate,webrtc::VideoBitrateAllocation *)::$_0 &,std::__wrap_iter<unsigned long *>>(a1, v20, a3, a4 >> 1, a5, a7);
        v30 = &v29[v19];
        std::__stable_sort_move<std::_ClassicAlgPolicy,webrtc::SimulcastRateAllocator::DistributeAllocationToSimulcastLayers(webrtc::DataRate,webrtc::DataRate,webrtc::VideoBitrateAllocation *)::$_0 &,std::__wrap_iter<unsigned long *>>(v20, a2, a3, v21, v30, v31);
        v32 = &v29[a4];
        v33 = *a3 + 44;
        v34 = v30;
        v35 = v22;
        do
        {
          if (v34 == v32)
          {
            if (v29 == v30)
            {
              return v26.n128_f64[0];
            }

            v49 = v30 - v29 - 8;
            if (v49 >= 0x38)
            {
              if ((v22 - v29) >= 0x20)
              {
                v51 = v35 + 1;
                v52 = (v49 >> 3) + 1;
                v53 = v52 & 0x3FFFFFFFFFFFFFFCLL;
                v50 = &v29[v53];
                v35 = (v35 + v53 * 8);
                v54 = (v29 + 2);
                v55 = v52 & 0x3FFFFFFFFFFFFFFCLL;
                do
                {
                  v26 = v54[-1];
                  v56 = *v54;
                  v51[-1] = v26;
                  *v51 = v56;
                  v51 += 2;
                  v54 += 2;
                  v55 -= 4;
                }

                while (v55);
                if (v52 == (v52 & 0x3FFFFFFFFFFFFFFCLL))
                {
                  return v26.n128_f64[0];
                }
              }

              else
              {
                v50 = v29;
              }
            }

            else
            {
              v50 = v29;
            }

            do
            {
              v57 = *v50++;
              v35->n128_u64[0] = v57;
              v35 = (v35 + 8);
            }

            while (v50 != v30);
            return v26.n128_f64[0];
          }

          v36 = v34;
          v37 = *v34;
          v38 = *(v33 + 36 * v37 + 16) < *(v33 + 36 * *v29 + 16);
          if (*(v33 + 36 * v37 + 16) >= *(v33 + 36 * *v29 + 16))
          {
            v39 = *v29;
          }

          else
          {
            v39 = v37;
          }

          v29 += *(v33 + 36 * v37 + 16) >= *(v33 + 36 * *v29 + 16);
          v40 = v38;
          v34 = &v36[v40];
          v35->n128_u64[0] = v39;
          v35 = (v35 + 8);
          v22 = (v22 + 8);
        }

        while (v29 != v30);
        if (v34 != v32)
        {
          v41 = v32 - v36 - v40 * 8 - 8;
          if (v41 <= 0x57)
          {
            goto LABEL_48;
          }

          if ((v22 - v36 - v40 * 8) < 0x20)
          {
            goto LABEL_48;
          }

          v42 = v35 + 1;
          v43 = (v41 >> 3) + 1;
          v44 = 8 * (v43 & 0x3FFFFFFFFFFFFFFCLL);
          v34 = (v34 + v44);
          v35 = (v35 + v44);
          v45 = &v36[v40 + 2];
          v46 = v43 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v26 = v45[-1];
            v47 = *v45;
            v42[-1] = v26;
            *v42 = v47;
            v42 += 2;
            v45 += 2;
            v46 -= 4;
          }

          while (v46);
          if (v43 != (v43 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_48:
            do
            {
              v48 = *v34++;
              v35->n128_u64[0] = v48;
              v35 = (v35 + 8);
            }

            while (v34 != v32);
          }
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,webrtc::SimulcastRateAllocator::DistributeAllocationToSimulcastLayers(webrtc::DataRate,webrtc::DataRate,webrtc::VideoBitrateAllocation *)::$_0 &,std::__wrap_iter<unsigned long *>>(a1, v20, a3, a4 >> 1, a5, a6);
        std::__stable_sort<std::_ClassicAlgPolicy,webrtc::SimulcastRateAllocator::DistributeAllocationToSimulcastLayers(webrtc::DataRate,webrtc::DataRate,webrtc::VideoBitrateAllocation *)::$_0 &,std::__wrap_iter<unsigned long *>>(v20, a2, a3, v21, a5, a6);

        v26.n128_u64[0] = std::__inplace_merge<std::_ClassicAlgPolicy,webrtc::SimulcastRateAllocator::DistributeAllocationToSimulcastLayers(webrtc::DataRate,webrtc::DataRate,webrtc::VideoBitrateAllocation *)::$_0 &,std::__wrap_iter<unsigned long *>>(v22, v20, a2, a3, v19, v21, a5, a6).n128_u64[0];
      }
    }

    else if (a1 != a2)
    {
      v9 = a1 + 1;
      if (a1 + 1 != a2)
      {
        v10 = 0;
        v11 = *a3 + 44;
        v12 = a1;
        do
        {
          v14 = *v12;
          v12 = v9;
          v15 = *v9;
          v16 = *(v11 + 36 * v15 + 16);
          if (v16 < *(v11 + 36 * v14 + 16))
          {
            v17 = v10;
            do
            {
              *(a1 + v17 + 8) = v14;
              if (!v17)
              {
                v13 = a1;
                goto LABEL_11;
              }

              v14 = *(a1 + v17 - 8);
              v17 -= 8;
            }

            while (v16 < *(v11 + 36 * v14 + 16));
            v13 = (a1 + v17 + 8);
LABEL_11:
            *v13 = v15;
          }

          v9 = v12 + 1;
          v10 += 8;
        }

        while (v12 + 1 != a2);
      }
    }
  }

  return v26.n128_f64[0];
}

uint64_t *std::__stable_sort_move<std::_ClassicAlgPolicy,webrtc::SimulcastRateAllocator::DistributeAllocationToSimulcastLayers(webrtc::DataRate,webrtc::DataRate,webrtc::VideoBitrateAllocation *)::$_0 &,std::__wrap_iter<unsigned long *>>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v9 = a2;
  if (a4 == 2)
  {
    v9 = a2 - 1;
    a6 = *(a2 - 1);
    v6 = *result;
    v10 = *a3 + 44;
    v7 = *(v10 + 36 * a6 + 16);
    if (v7 < *(v10 + 36 * *result + 16))
    {
      if (!a5)
      {
        goto LABEL_35;
      }

LABEL_21:
      *a5 = a6;
      a5[1] = *result;
      return result;
    }

    if (a5)
    {
      a6 = *result;
      result = a2 - 1;
      goto LABEL_21;
    }
  }

  else
  {
    if (a4 > 8)
    {
      v23 = a4 >> 1;
      v24 = a4 >> 1;
      v25 = &result[v24];
      v26 = result;
      v8 = a5;
      (std::__stable_sort<std::_ClassicAlgPolicy,webrtc::SimulcastRateAllocator::DistributeAllocationToSimulcastLayers(webrtc::DataRate,webrtc::DataRate,webrtc::VideoBitrateAllocation *)::$_0 &,std::__wrap_iter<unsigned long *>>)();
      result = std::__stable_sort<std::_ClassicAlgPolicy,webrtc::SimulcastRateAllocator::DistributeAllocationToSimulcastLayers(webrtc::DataRate,webrtc::DataRate,webrtc::VideoBitrateAllocation *)::$_0 &,std::__wrap_iter<unsigned long *>>(v25, v9, a3, a4 - v23, v8 + v24 * 8, a4 - v23);
      v29 = *a3 + 44;
      v6 = -v8;
      v7 = 36;
      a6 = v25;
      do
      {
        while (1)
        {
          if (a6 == v9)
          {
            while (v26 != v25)
            {
              if (!v8)
              {
                goto LABEL_35;
              }

              v31 = *v26++;
              a6 = v31;
              *v8 = v31;
              v8 += 8;
            }

            return result;
          }

          if (*(v29 + 36 * *a6 + 16) < *(v29 + 36 * *v26 + 16))
          {
            break;
          }

          if (!v8)
          {
            goto LABEL_35;
          }

          *v8 = *v26;
          v8 += 8;
          ++v26;
          v6 -= 8;
          if (v26 == v25)
          {
            goto LABEL_29;
          }
        }

        if (!v8)
        {
          goto LABEL_35;
        }

        *v8 = *a6;
        v8 += 8;
        a6 += 8;
        v6 -= 8;
      }

      while (v26 != v25);
LABEL_29:
      if (a6 == v9)
      {
        return result;
      }

      v7 = v9 - a6 - 8;
      if (v7 < 0x48)
      {
        v30 = a6;
        goto LABEL_41;
      }

      goto LABEL_36;
    }

    if (result == a2)
    {
      return result;
    }

    if (a5)
    {
      v11 = *a3;
      v12 = *result++;
      *a5 = v12;
      if (result != a2)
      {
        v13 = 0;
        v14 = v11 + 44;
        v15 = a5;
        v16 = a5;
        do
        {
          while (1)
          {
            v18 = *v16++;
            v17 = v18;
            if (*(v14 + 36 * *result + 16) < *(v14 + 36 * v18 + 16))
            {
              break;
            }

            *v16 = *result++;
            v13 += 8;
            v15 = v16;
            if (result == a2)
            {
              return result;
            }
          }

          v15[1] = v17;
          v19 = a5;
          if (v15 != a5)
          {
            v20 = v13;
            while (1)
            {
              v19 = (a5 + v20);
              v21 = *(a5 + v20 - 8);
              if (*(v14 + 36 * *result + 16) >= *(v14 + 36 * v21 + 16))
              {
                break;
              }

              *v19 = v21;
              v20 -= 8;
              if (!v20)
              {
                v19 = a5;
                break;
              }
            }
          }

          v22 = *result++;
          *v19 = v22;
          v13 += 8;
          v15 = v16;
        }

        while (result != a2);
      }

      return result;
    }
  }

LABEL_35:
  __break(1u);
LABEL_36:
  if ((-a6 - v6) < 0x20)
  {
    v30 = a6;
    do
    {
LABEL_41:
      v38 = *v30++;
      *v8 = v38;
      v8 += 8;
    }

    while (v30 != v9);
    return result;
  }

  v32 = (v8 + 16);
  v33 = (v7 >> 3) + 1;
  v34 = 8 * (v33 & 0x3FFFFFFFFFFFFFFCLL);
  v8 += v34;
  v30 = (a6 + v34);
  v35 = (a6 + 16);
  v36 = v33 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v37 = *v35;
    *(v32 - 1) = *(v35 - 1);
    *v32 = v37;
    v35 += 2;
    v32 += 2;
    v36 -= 4;
  }

  while (v36);
  if (v33 != (v33 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_41;
  }

  return result;
}

__n128 std::__inplace_merge<std::_ClassicAlgPolicy,webrtc::SimulcastRateAllocator::DistributeAllocationToSimulcastLayers(webrtc::DataRate,webrtc::DataRate,webrtc::VideoBitrateAllocation *)::$_0 &,std::__wrap_iter<unsigned long *>>(__n128 *a1, char *a2, char *a3, void *a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  if (!a6)
  {
    return result;
  }

  while (a5 > a8 && a6 > a8)
  {
    if (!a5)
    {
      return result;
    }

    v8 = 0;
    v9 = *a4 + 44;
    v10 = -a5;
    while (1)
    {
      v11 = a1->n128_i64[v8 / 8];
      if (*(v9 + 36 * *a2 + 16) < *(v9 + 36 * v11 + 16))
      {
        break;
      }

      v8 += 8;
      if (__CFADD__(v10++, 1))
      {
        return result;
      }
    }

    v13 = -v10;
    v14 = &a1->n128_u64[v8 / 8];
    if (-v10 < a6)
    {
      v15 = a6 / 2;
      v16 = &a2[8 * (a6 / 2)];
      v17 = a2;
      if (a2 - a1 != v8)
      {
        v18 = (a2 - a1 - v8) >> 3;
        v17 = a1 + v8;
        do
        {
          v19 = v18 >> 1;
          v20 = &v17[8 * (v18 >> 1)];
          v22 = *v20;
          v21 = v20 + 8;
          v18 += ~(v18 >> 1);
          if (*(v9 + 36 * *v16 + 16) < *(v9 + 36 * v22 + 16))
          {
            v18 = v19;
          }

          else
          {
            v17 = v21;
          }
        }

        while (v18);
      }

      v23 = (v17 - a1 - v8) >> 3;
      v24 = &a2[8 * (a6 / 2)];
      v25 = a2 - v17;
      if (a2 == v17)
      {
        goto LABEL_49;
      }

LABEL_27:
      v24 = v17;
      if (a2 != v16)
      {
        if (v17 + 8 == a2)
        {
          v110 = *v17;
          v112 = v15;
          v31 = v16 - a2;
          v118 = a3;
          v120 = a1;
          v32 = a6;
          v33 = a7;
          v114 = a4;
          v116 = &a1->n128_u64[v8 / 8];
          v34 = a8;
          v35 = v23;
          memmove(v17, a2, v16 - a2);
          v23 = v35;
          a4 = v114;
          v14 = v116;
          a8 = v34;
          a7 = v33;
          v15 = v112;
          a6 = v32;
          a3 = v118;
          a1 = v120;
          v24 = &v17[v31];
          *v24 = v110;
        }

        else if (a2 + 8 == v16)
        {
          v36 = *(v16 - 1);
          v24 = v17 + 8;
          if (v16 - 8 != v17)
          {
            v119 = a3;
            v121 = a1;
            v111 = a6;
            v113 = v15;
            v37 = a7;
            v115 = a4;
            v117 = &a1->n128_u64[v8 / 8];
            v38 = a8;
            v39 = v23;
            memmove(v17 + 8, v17, v16 - 8 - v17);
            v23 = v39;
            a4 = v115;
            v14 = v117;
            a8 = v38;
            a7 = v37;
            a6 = v111;
            v15 = v113;
            a3 = v119;
            a1 = v121;
          }

          *v17 = v36;
        }

        else
        {
          v40 = v25 >> 3;
          v41 = (v16 - a2) >> 3;
          if (v25 >> 3 == v41)
          {
            v42 = v17 + 8;
            v43 = a2 + 8;
            do
            {
              v44 = *(v42 - 1);
              *(v42 - 1) = *(v43 - 1);
              *(v43 - 1) = v44;
              if (v42 == a2)
              {
                break;
              }

              v42 += 8;
              v45 = v43 == v16;
              v43 += 8;
            }

            while (!v45);
            v24 = a2;
          }

          else
          {
            v46 = v25 >> 3;
            do
            {
              v47 = v46;
              v46 = v41;
              v41 = v47 % v41;
            }

            while (v41);
            v48 = &v17[8 * v46];
            do
            {
              v50 = *(v48 - 1);
              v48 -= 8;
              v49 = v50;
              v51 = &v48[v25];
              v52 = v48;
              do
              {
                v53 = v51;
                *v52 = *v51;
                v54 = (v16 - v51) >> 3;
                v55 = __OFSUB__(v40, v54);
                v57 = v40 - v54;
                v56 = (v57 < 0) ^ v55;
                v51 = &v17[8 * v57];
                if (v56)
                {
                  v51 = &v53[8 * v40];
                }

                v52 = v53;
              }

              while (v51 != v48);
              *v53 = v49;
            }

            while (v48 != v17);
            v24 = &v17[v16 - a2];
          }
        }
      }

      goto LABEL_49;
    }

    if (v10 == -1)
    {
      a1->n128_u64[v8 / 8] = *a2;
      *a2 = v11;
      return result;
    }

    v23 = v13 / 2;
    v17 = &a1->n128_i8[8 * (v13 / 2) + v8];
    v16 = a2;
    if (a2 != a3)
    {
      v26 = (a3 - a2) >> 3;
      v16 = a2;
      do
      {
        v27 = v26 >> 1;
        v28 = &v16[8 * (v26 >> 1)];
        v30 = *v28;
        v29 = v28 + 8;
        v26 += ~(v26 >> 1);
        if (*(v9 + 36 * v30 + 16) < *(v9 + 36 * *v17 + 16))
        {
          v16 = v29;
        }

        else
        {
          v26 = v27;
        }
      }

      while (v26);
    }

    v15 = (v16 - a2) >> 3;
    v24 = v16;
    v25 = a2 - v17;
    if (a2 != v17)
    {
      goto LABEL_27;
    }

LABEL_49:
    v58 = a6 - v15;
    if (v23 + v15 >= a6 - (v23 + v15) - v10)
    {
      v66 = a4;
      v67 = v15;
      v68 = a7;
      v69 = a8;
      v70 = v14;
      v71 = v23;
      std::__inplace_merge<std::_ClassicAlgPolicy,webrtc::SimulcastRateAllocator::DistributeAllocationToSimulcastLayers(webrtc::DataRate,webrtc::DataRate,webrtc::VideoBitrateAllocation *)::$_0 &,std::__wrap_iter<unsigned long *>>(v24, v16);
      a1 = v70;
      a2 = v17;
      a5 = v71;
      a3 = v24;
      a6 = v67;
      a7 = v68;
      a4 = v66;
      a8 = v69;
      if (!v67)
      {
        return result;
      }
    }

    else
    {
      v59 = &a1->n128_u64[v8 / 8];
      v60 = a3;
      v61 = a4;
      v62 = -(v23 + v10);
      v63 = a7;
      v64 = a8;
      std::__inplace_merge<std::_ClassicAlgPolicy,webrtc::SimulcastRateAllocator::DistributeAllocationToSimulcastLayers(webrtc::DataRate,webrtc::DataRate,webrtc::VideoBitrateAllocation *)::$_0 &,std::__wrap_iter<unsigned long *>>(v59, v17);
      a5 = v62;
      a3 = v60;
      a1 = v24;
      a2 = v16;
      a6 = v58;
      a7 = v63;
      a4 = v61;
      a8 = v64;
      if (!v58)
      {
        return result;
      }
    }
  }

  if (a5 <= a6)
  {
    if (a2 != a1)
    {
      v81 = a2 - a1 - 8;
      v82 = a7;
      v83 = a1;
      if (v81 < 0x18)
      {
        goto LABEL_103;
      }

      v82 = a7;
      v83 = a1;
      if ((a7 - a1) <= 0x1F)
      {
        goto LABEL_103;
      }

      v84 = (v81 >> 3) + 1;
      v85 = 8 * (v84 & 0x3FFFFFFFFFFFFFFCLL);
      v82 = &a7[v85];
      v83 = a1 + v85;
      v86 = a1 + 1;
      v87 = (a7 + 16);
      v88 = v84 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        result = v86[-1];
        v89 = *v86;
        v87[-1] = result;
        *v87 = v89;
        v86 += 2;
        v87 += 2;
        v88 -= 4;
      }

      while (v88);
      if (v84 != (v84 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_103:
        do
        {
          v90 = *v83;
          v83 += 8;
          *v82 = v90;
          v82 += 8;
        }

        while (v83 != a2);
      }

      v91 = *a4 + 44;
      while (a2 != a3)
      {
        v92 = *a2;
        v93 = *(v91 + 36 * *a2 + 16) >= *(v91 + 36 * *a7 + 16);
        if (*(v91 + 36 * *a2 + 16) >= *(v91 + 36 * *a7 + 16))
        {
          v92 = *a7;
        }

        a2 += 8 * (*(v91 + 36 * *a2 + 16) < *(v91 + 36 * *a7 + 16));
        a7 += 8 * v93;
        a1->n128_u64[0] = v92;
        a1 = (a1 + 8);
        if (a7 == v82)
        {
          return result;
        }
      }

      memmove(a1, a7, v82 - a7);
    }
  }

  else
  {
    if (a2 == a3)
    {
      return result;
    }

    v72 = a3 - a2 - 8;
    if (v72 < 0x18)
    {
      v73 = a7;
      v74 = a2;
    }

    else
    {
      v73 = a7;
      v74 = a2;
      if ((a7 - a2) > 0x1F)
      {
        v75 = (v72 >> 3) + 1;
        v76 = 8 * (v75 & 0x3FFFFFFFFFFFFFFCLL);
        v73 = &a7[v76];
        v74 = &a2[v76];
        v77 = (a2 + 16);
        v78 = (a7 + 16);
        v79 = v75 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          result = v77[-1];
          v80 = *v77;
          v78[-1] = result;
          *v78 = v80;
          v77 += 2;
          v78 += 2;
          v79 -= 4;
        }

        while (v79);
        if (v75 == (v75 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_81;
        }
      }
    }

    do
    {
      v94 = *v74;
      v74 += 8;
      *v73 = v94;
      v73 += 8;
    }

    while (v74 != a3);
LABEL_81:
    v95 = *a4 + 44;
    v96 = a3;
    while (a2 != a1)
    {
      v97 = *(a2 - 1);
      v98 = *(v95 + 36 * *(v73 - 1) + 16);
      v99 = *(v95 + 36 * v97 + 16);
      if (v98 < v99)
      {
        a2 -= 8;
      }

      else
      {
        v97 = *(v73 - 1);
      }

      if (v98 >= v99)
      {
        v73 -= 8;
      }

      *(a3 - 1) = v97;
      a3 -= 8;
      v96 -= 8;
      if (v73 == a7)
      {
        return result;
      }
    }

    v100 = v73 - a7;
    if (v73 != a7)
    {
      v101 = v100 - 8;
      if ((v100 - 8) < 0x48 || (v73 - v96) < 0x20)
      {
        v102 = v73;
        goto LABEL_94;
      }

      v105 = (a3 - 16);
      v106 = (v101 >> 3) + 1;
      v107 = 8 * (v106 & 0x3FFFFFFFFFFFFFFCLL);
      v102 = &v73[-v107];
      a3 -= v107;
      v108 = (v73 - 16);
      v109 = v106 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        result = *v108;
        v105[-1] = v108[-1];
        *v105 = result;
        v105 -= 2;
        v108 -= 2;
        v109 -= 4;
      }

      while (v109);
      if (v106 != (v106 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_94:
        v103 = a3 - 8;
        do
        {
          v104 = *(v102 - 1);
          v102 -= 8;
          *v103 = v104;
          v103 -= 8;
        }

        while (v102 != a7);
      }
    }
  }

  return result;
}

void webrtc::SimulcastSdpSerializer::SerializeSimulcastDescription(char ***a1@<X1>, std::string *a2@<X8>)
{
  memset(&v30, 0, sizeof(v30));
  __p = 0;
  v28 = 0;
  v29 = 0;
  v5 = *a1;
  v6 = a1[1];
  if (v5 != v6)
  {
    if (&v30 <= "send" && v30.__r_.__value_.__r.__words + 4 > "send")
    {
      goto LABEL_77;
    }

    LODWORD(v30.__r_.__value_.__l.__data_) = 1684956531;
    if (v30.__r_.__value_.__r.__words + 4 <= " " && v30.__r_.__value_.__r.__words + 5 > " ")
    {
      goto LABEL_77;
    }

    WORD2(v30.__r_.__value_.__r.__words[0]) = 32;
    *(&v30.__r_.__value_.__s + 23) = 5;
    if (SHIBYTE(v29) < 0)
    {
      v28 = 1;
      p_p = __p;
    }

    else
    {
      HIBYTE(v29) = 1;
      p_p = &__p;
    }

    *p_p = 32;
  }

  if (a1[3] != a1[4])
  {
    if (v29 >= 0)
    {
      v8 = &__p;
    }

    else
    {
      v8 = __p;
    }

    if (v29 >= 0)
    {
      v9 = HIBYTE(v29);
    }

    else
    {
      v9 = v28;
    }

    if (v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 == 0;
    }

    if (!v10)
    {
      goto LABEL_77;
    }

    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = 22;
    }

    else
    {
      v11 = (v30.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v30.__r_.__value_.__l.__size_;
    }

    if (v11 - size >= v9)
    {
      if (v9)
      {
        if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v13 = &v30;
        }

        else
        {
          v13 = v30.__r_.__value_.__r.__words[0];
        }

        if ((v9 & 0x8000000000000000) != 0 || (v14 = v13 + size, v13 + size <= v8) && &v14[v9] > v8)
        {
LABEL_77:
          __break(1u);
          return;
        }

        v15 = v9;
        memmove(v14, v8, v9);
        v16 = size + v15;
        if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
        {
          v30.__r_.__value_.__l.__size_ = size + v15;
        }

        else
        {
          *(&v30.__r_.__value_.__s + 23) = v16 & 0x7F;
        }

        v13->__r_.__value_.__s.__data_[v16] = 0;
      }
    }

    else
    {
      std::string::__grow_by_and_replace(&v30, v11, size + v9 - v11, size, size, 0, v9, v8);
    }

    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = 22;
    }

    else
    {
      v17 = (v30.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v18 = v30.__r_.__value_.__l.__size_;
    }

    if (v17 - v18 >= 4)
    {
      v19 = &v30;
      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v19 = v30.__r_.__value_.__r.__words[0];
      }

      v20 = (v19 + v18);
      if (v19 + v18 <= "recv" && v20 + 1 > "recv")
      {
        goto LABEL_77;
      }

      *v20 = 1986225522;
      v21 = v18 + 4;
      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        v30.__r_.__value_.__l.__size_ = v18 + 4;
      }

      else
      {
        *(&v30.__r_.__value_.__s + 23) = v21 & 0x7F;
      }

      v19->__r_.__value_.__s.__data_[v21] = 0;
    }

    else
    {
      std::string::__grow_by_and_replace(&v30, v17, v18 - v17 + 4, v18, v18, 0, 4uLL, "recv");
    }

    v22 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = 22;
    }

    else
    {
      v23 = (v30.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v22 = v30.__r_.__value_.__l.__size_;
    }

    if (v23 == v22)
    {
      std::string::__grow_by_and_replace(&v30, v23, 1uLL, v23, v23, 0, 1uLL, " ");
    }

    else
    {
      v24 = &v30;
      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v24 = v30.__r_.__value_.__r.__words[0];
      }

      v25 = v24 + v22;
      if (v24 + v22 <= " " && v25 + 1 > " ")
      {
        goto LABEL_77;
      }

      *v25 = 32;
      v26 = v22 + 1;
      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        v30.__r_.__value_.__l.__size_ = v26;
      }

      else
      {
        *(&v30.__r_.__value_.__s + 23) = v26 & 0x7F;
      }

      v24->__r_.__value_.__s.__data_[v26] = 0;
    }
  }

  *a2 = v30;
  memset(&v30, 0, sizeof(v30));
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p);
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }
  }
}

std::string *webrtc::anonymous namespace::operator<<(std::string *this, char **a2, char **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = 1;
    do
    {
      if (v5)
      {
        goto LABEL_10;
      }

      size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
      if ((size & 0x8000000000000000) != 0)
      {
        size = this->__r_.__value_.__l.__size_;
        v8 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v8 == size)
        {
          goto LABEL_9;
        }

        v7 = this->__r_.__value_.__r.__words[0];
      }

      else
      {
        v7 = this;
        if (size == 22)
        {
          v8 = 22;
LABEL_9:
          std::string::__grow_by_and_replace(this, v8, 1uLL, v8, v8, 0, 1uLL, ";");
LABEL_10:
          v9 = *v4;
          v52 = v4;
          v53 = v4[1];
          if (*v4 != v53)
          {
            goto LABEL_11;
          }

          goto LABEL_3;
        }
      }

      if (v7 + size <= ";" && &v7->__r_.__value_.__l.__data_ + size + 1 > ";")
      {
        goto LABEL_138;
      }

      v7->__r_.__value_.__s.__data_[size] = 59;
      v17 = size + 1;
      if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
      {
        this->__r_.__value_.__l.__size_ = v17;
        v7->__r_.__value_.__s.__data_[v17] = 0;
        v9 = *v4;
        v52 = v4;
        v53 = v4[1];
        if (*v4 != v53)
        {
LABEL_11:
          if ((v9[24] & 1) == 0)
          {
            goto LABEL_40;
          }

          v10 = HIBYTE(this->__r_.__value_.__r.__words[2]);
          v11 = v10;
          if ((v10 & 0x80u) == 0)
          {
            v12 = 22;
          }

          else
          {
            v12 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          }

          if ((v10 & 0x80u) != 0)
          {
            v10 = this->__r_.__value_.__l.__size_;
          }

          if (v12 == v10)
          {
            std::string::__grow_by_and_replace(this, v12, 1uLL, v12, v12, 0, 1uLL, "~");
            goto LABEL_40;
          }

          if (v11 >= 0)
          {
            v13 = this;
          }

          else
          {
            v13 = this->__r_.__value_.__r.__words[0];
          }

          if (v13 + v10 <= "~" && &v13->__r_.__value_.__l.__data_ + v10 + 1 > "~")
          {
            goto LABEL_138;
          }

          v13->__r_.__value_.__s.__data_[v10] = 126;
          v15 = v10 + 1;
          if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
          {
            this->__r_.__value_.__l.__size_ = v15;
          }

          else
          {
            *(&this->__r_.__value_.__s + 23) = v15 & 0x7F;
          }

          v13->__r_.__value_.__s.__data_[v15] = 0;
LABEL_40:
          v18 = v9[23];
          v19 = v18 >= 0 ? v9 : *v9;
          v20 = v18 >= 0 ? v9[23] : *(v9 + 1);
          if (!v19 && v20 != 0)
          {
LABEL_138:
            __break(1u);
            goto LABEL_139;
          }

          v22 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
          if (v22 >= 0)
          {
            v23 = 22;
          }

          else
          {
            v23 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          }

          if (v22 >= 0)
          {
            v24 = HIBYTE(this->__r_.__value_.__r.__words[2]);
          }

          else
          {
            v24 = this->__r_.__value_.__l.__size_;
          }

          if (v23 - v24 < v20)
          {
            std::string::__grow_by_and_replace(this, v23, v24 + v20 - v23, v24, v24, 0, v20, v19);
            goto LABEL_72;
          }

          if (v20)
          {
            if (v22 >= 0)
            {
              v25 = this;
            }

            else
            {
              v25 = this->__r_.__value_.__r.__words[0];
            }

            if ((v20 & 0x8000000000000000) == 0 && (v25 + v24 > v19 || v25 + v24 + v20 <= v19))
            {
              v27 = v20;
              memmove(v25 + v24, v19, v20);
              v28 = v24 + v27;
              if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
              {
                this->__r_.__value_.__l.__size_ = v28;
              }

              else
              {
                *(&this->__r_.__value_.__s + 23) = v28 & 0x7F;
              }

              v25->__r_.__value_.__s.__data_[v28] = 0;
              goto LABEL_72;
            }

            goto LABEL_138;
          }

LABEL_72:
          while (2)
          {
            v9 += 32;
            if (v9 == v53)
            {
              goto LABEL_3;
            }

            v29 = HIBYTE(this->__r_.__value_.__r.__words[2]);
            v30 = v29;
            if ((v29 & 0x80u) == 0)
            {
              v31 = 22;
            }

            else
            {
              v31 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            }

            if ((v29 & 0x80u) != 0)
            {
              v29 = this->__r_.__value_.__l.__size_;
            }

            if (v31 == v29)
            {
              if (v31 != 0x7FFFFFFFFFFFFFF6)
              {
                operator new();
              }

              goto LABEL_139;
            }

            if (v30 >= 0)
            {
              v32 = this;
            }

            else
            {
              v32 = this->__r_.__value_.__r.__words[0];
            }

            if (v32 + v29 <= "," && &v32->__r_.__value_.__l.__data_ + v29 + 1 > ",")
            {
              goto LABEL_138;
            }

            v32->__r_.__value_.__s.__data_[v29] = 44;
            v34 = v29 + 1;
            if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
            {
              this->__r_.__value_.__l.__size_ = v34;
              v32->__r_.__value_.__s.__data_[v34] = 0;
              if (v9[24] != 1)
              {
LABEL_109:
                v41 = v9[23];
                if (v41 >= 0)
                {
                  v42 = v9;
                }

                else
                {
                  v42 = *v9;
                }

                if (v41 >= 0)
                {
                  v43 = v9[23];
                }

                else
                {
                  v43 = *(v9 + 1);
                }

                if (!v42 && v43)
                {
                  goto LABEL_138;
                }

                v44 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
                if (v44 >= 0)
                {
                  v45 = 22;
                }

                else
                {
                  v45 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                }

                if (v44 >= 0)
                {
                  v46 = HIBYTE(this->__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v46 = this->__r_.__value_.__l.__size_;
                }

                if (v45 - v46 < v43)
                {
                  if (0x7FFFFFFFFFFFFFF6 - v45 >= v46 + v43 - v45)
                  {
                    operator new();
                  }

                  goto LABEL_139;
                }

                if (v43)
                {
                  if (v44 >= 0)
                  {
                    v47 = this;
                  }

                  else
                  {
                    v47 = this->__r_.__value_.__r.__words[0];
                  }

                  if ((v43 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_138;
                  }

                  v48 = v47 + v46;
                  if (v47 + v46 <= v42 && &v48[v43] > v42)
                  {
                    goto LABEL_138;
                  }

                  memmove(v48, v42, v43);
                  v49 = v46 + v43;
                  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
                  {
                    this->__r_.__value_.__l.__size_ = v49;
                  }

                  else
                  {
                    *(&this->__r_.__value_.__s + 23) = v49 & 0x7F;
                  }

                  v47->__r_.__value_.__s.__data_[v49] = 0;
                }

                continue;
              }
            }

            else
            {
              *(&this->__r_.__value_.__s + 23) = v34 & 0x7F;
              v32->__r_.__value_.__s.__data_[v34] = 0;
              if (v9[24] != 1)
              {
                goto LABEL_109;
              }
            }

            break;
          }

          v35 = HIBYTE(this->__r_.__value_.__r.__words[2]);
          v36 = v35;
          if ((v35 & 0x80u) == 0)
          {
            v37 = 22;
          }

          else
          {
            v37 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          }

          if ((v35 & 0x80u) != 0)
          {
            v35 = this->__r_.__value_.__l.__size_;
          }

          if (v37 == v35)
          {
            if (v37 != 0x7FFFFFFFFFFFFFF6)
            {
              operator new();
            }

LABEL_139:
            std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
          }

          if (v36 >= 0)
          {
            v38 = this;
          }

          else
          {
            v38 = this->__r_.__value_.__r.__words[0];
          }

          v39 = v38 + v35;
          if (v38 + v35 <= "~" && v39 + 1 > "~")
          {
            goto LABEL_138;
          }

          *v39 = 126;
          v40 = v35 + 1;
          if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
          {
            this->__r_.__value_.__l.__size_ = v40;
          }

          else
          {
            *(&this->__r_.__value_.__s + 23) = v40 & 0x7F;
          }

          v38->__r_.__value_.__s.__data_[v40] = 0;
          goto LABEL_109;
        }
      }

      else
      {
        *(&this->__r_.__value_.__s + 23) = v17 & 0x7F;
        v7->__r_.__value_.__s.__data_[v17] = 0;
        v9 = *v4;
        v52 = v4;
        v53 = v4[1];
        if (*v4 != v53)
        {
          goto LABEL_11;
        }
      }

LABEL_3:
      v5 = 0;
      v4 = v52 + 3;
    }

    while (v52 + 3 != a3);
  }

  return this;
}

std::string *webrtc::StringBuilder::operator<<(std::string *this, const std::string::value_type *__src, size_t __len)
{
  v5 = this;
  if (!__src && __len)
  {
    goto LABEL_18;
  }

  v6 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if (v6 < 0)
  {
    size = this->__r_.__value_.__l.__size_;
    v7 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v7 - size < __len)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v7 = 22;
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if (22 - v6 < __len)
    {
LABEL_5:
      std::string::__grow_by_and_replace(this, v7, __len - v7 + size, size, size, 0, __len, __src);
      return v5;
    }
  }

  if (!__len)
  {
    return v5;
  }

  v9 = this;
  if ((v6 & 0x80000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[0];
  }

  if ((__len & 0x8000000000000000) != 0 || (this = (v9 + size), v9 + size <= __src) && this + __len > __src)
  {
LABEL_18:
    __break(1u);
  }

  else
  {
    memmove(this, __src, __len);
    v10 = size + __len;
    if (SHIBYTE(v5->__r_.__value_.__r.__words[2]) < 0)
    {
      v5->__r_.__value_.__l.__size_ = v10;
    }

    else
    {
      *(&v5->__r_.__value_.__s + 23) = v10 & 0x7F;
    }

    v9->__r_.__value_.__s.__data_[v10] = 0;
    return v5;
  }

  return this;
}

void webrtc::SimulcastSdpSerializer::DeserializeSimulcastDescription(void ***a1@<X1>, size_t a2@<X2>, uint64_t a3@<X8>)
{
  __p = 0;
  v88 = 0;
  v89 = 0;
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_168:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  HIBYTE(v91) = a2;
  v4 = (&v90 + a2);
  if (&v90 <= a1 && v4 > a1)
  {
    goto LABEL_167;
  }

  if (a2)
  {
    memmove(&v90, a1, a2);
  }

  *v4 = 0;
  if (v91 >= 0)
  {
    v5 = &v90;
  }

  else
  {
    v5 = v90;
  }

  if (v91 >= 0)
  {
    v6 = HIBYTE(v91);
  }

  else
  {
    v6 = v91;
  }

  webrtc::tokenize(v5, v6, 0x20u, &__p);
  if (SHIBYTE(v91) < 0)
  {
    operator delete(v90);
  }

  v7 = __p;
  v8 = v88 - __p;
  v9 = 0xAAAAAAAAAAAAAAABLL * ((v88 - __p) >> 3);
  if (v9 != 2 && v9 != 4)
  {
    operator new();
  }

  v11 = *(__p + 23);
  if (v11 < 0)
  {
    if (*(__p + 1) != 4)
    {
      goto LABEL_29;
    }

    v12 = *__p;
    if (**__p == 1684956531)
    {
      goto LABEL_39;
    }
  }

  else
  {
    if (v11 != 4)
    {
      goto LABEL_29;
    }

    v12 = __p;
    if (*__p == 1684956531)
    {
      goto LABEL_39;
    }
  }

  if (*v12 != 1986225522)
  {
    goto LABEL_29;
  }

LABEL_39:
  if (v8 != 96)
  {
    goto LABEL_60;
  }

  v17 = (__p + 48);
  v18 = *(__p + 71);
  if (v18 < 0)
  {
    if (*(__p + 7) != 4)
    {
      goto LABEL_29;
    }

    v19 = *v17;
    if (**v17 == 1684956531)
    {
      goto LABEL_47;
    }
  }

  else
  {
    if (v18 != 4)
    {
      goto LABEL_29;
    }

    v19 = __p + 48;
    if (*v17 == 1684956531)
    {
      goto LABEL_47;
    }
  }

  if (*v19 != 1986225522)
  {
    goto LABEL_29;
  }

LABEL_47:
  if (v11 >= 0)
  {
    v20 = *(__p + 23);
  }

  else
  {
    v20 = *(__p + 1);
  }

  v21 = *(__p + 7);
  if (v18 >= 0)
  {
    v21 = *(__p + 71);
  }

  if (v20 == v21)
  {
    v22 = v11 >= 0 ? __p : *__p;
    v23 = v18 >= 0 ? __p + 48 : *(__p + 6);
    if (!memcmp(v22, v23, v20))
    {
LABEL_29:
      operator new();
    }
  }

LABEL_60:
  v82 = 10;
  BYTE6(v83[3]) = 0;
  memset(v83, 0, 29);
  LOBYTE(v84[0]) = 0;
  v86 = 0;
  v76 = 10;
  v78[22] = 0;
  *v78 = 0;
  *&v78[8] = 0;
  v77 = 0;
  *&v78[13] = 0;
  LOBYTE(v79[0]) = 0;
  v81 = 0;
  webrtc::RTCErrorOr<webrtc::SimulcastLayerList>::operator=(&v82, &v90);
  if (v96 == 1)
  {
    v24 = v94;
    if (v94)
    {
      v25 = *(&v94 + 1);
      if (*(&v94 + 1) != v94)
      {
        v26 = *(&v94 + 1);
        do
        {
          v29 = *(v26 - 3);
          v26 -= 3;
          v28 = v29;
          if (v29)
          {
            v30 = *(v25 - 2);
            v27 = v28;
            if (v30 != v28)
            {
              do
              {
                v31 = *(v30 - 9);
                v30 -= 4;
                if (v31 < 0)
                {
                  operator delete(*v30);
                }
              }

              while (v30 != v28);
              v27 = *v26;
            }

            *(v25 - 2) = v28;
            operator delete(v27);
          }

          v25 = v26;
        }

        while (v26 != v24);
      }

      operator delete(v24);
    }
  }

  if (SHIBYTE(v92) < 0)
  {
    operator delete(v91);
  }

  v32 = v82;
  if (v82)
  {
    v33 = v83[0];
    *(a3 + 16) = v83[1];
    *(a3 + 23) = *(&v83[1] + 7);
    v34 = HIBYTE(v83[2]);
    memset(v83, 0, 24);
    *(a3 + 32) = v83[3];
    v35 = *(&v83[3] + 3);
    goto LABEL_78;
  }

  if (v8 == 96)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v88 - __p) >> 3) <= 3)
    {
      goto LABEL_167;
    }

    webrtc::RTCErrorOr<webrtc::SimulcastLayerList>::operator=(&v76, &v90);
    if (v96 == 1)
    {
      v36 = v94;
      if (v94)
      {
        v37 = *(&v94 + 1);
        if (*(&v94 + 1) != v94)
        {
          v38 = *(&v94 + 1);
          do
          {
            v41 = *(v38 - 3);
            v38 -= 3;
            v40 = v41;
            if (v41)
            {
              v42 = *(v37 - 2);
              v39 = v40;
              if (v42 != v40)
              {
                do
                {
                  v43 = *(v42 - 9);
                  v42 -= 4;
                  if (v43 < 0)
                  {
                    operator delete(*v42);
                  }
                }

                while (v42 != v40);
                v39 = *v38;
              }

              *(v37 - 2) = v40;
              operator delete(v39);
            }

            v37 = v38;
          }

          while (v38 != v36);
        }

        operator delete(v36);
      }
    }

    if (SHIBYTE(v92) < 0)
    {
      operator delete(v91);
    }

    v32 = v76;
    if (v76)
    {
      v33 = v77;
      *(a3 + 16) = *v78;
      *(a3 + 23) = *&v78[7];
      v34 = v78[15];
      *v78 = 0;
      *&v78[8] = 0;
      v77 = 0;
      *(a3 + 32) = *&v78[16];
      v35 = *&v78[19];
LABEL_78:
      *(a3 + 35) = v35;
      *a3 = v32;
      *(a3 + 8) = v33;
      *(a3 + 31) = v34;
      *(a3 + 40) = 0;
      *(a3 + 88) = 0;
      if (v81 != 1)
      {
        goto LABEL_148;
      }

      goto LABEL_134;
    }
  }

  v44 = __p;
  if (v88 == __p)
  {
    goto LABEL_167;
  }

  v45 = *(__p + 23);
  if ((v45 & 0x80000000) == 0)
  {
    if (v45 != 4)
    {
      goto LABEL_107;
    }

LABEL_106:
    if (*v44 == 1684956531)
    {
      goto LABEL_125;
    }

    goto LABEL_107;
  }

  if (*(__p + 1) == 4)
  {
    v44 = *__p;
    goto LABEL_106;
  }

LABEL_107:
  LODWORD(v90) = v82;
  v92 = v83[2];
  v91 = *v83;
  memset(v83, 0, 24);
  LODWORD(v93) = v83[3];
  *(&v93 + 3) = *(&v83[3] + 3);
  LOBYTE(v94) = 0;
  v96 = 0;
  if (v86 == 1)
  {
    v94 = *v84;
    v95 = v85;
    v84[1] = 0;
    v85 = 0;
    v84[0] = 0;
    v96 = 1;
  }

  webrtc::RTCErrorOr<webrtc::SimulcastLayerList>::operator=(&v82, &v76);
  webrtc::RTCErrorOr<webrtc::SimulcastLayerList>::operator=(&v76, &v90);
  if (v96 == 1)
  {
    v46 = v94;
    if (v94)
    {
      v47 = *(&v94 + 1);
      if (*(&v94 + 1) != v94)
      {
        v48 = *(&v94 + 1);
        do
        {
          v51 = *(v48 - 3);
          v48 -= 3;
          v50 = v51;
          if (v51)
          {
            v52 = *(v47 - 2);
            v49 = v50;
            if (v52 != v50)
            {
              do
              {
                v53 = *(v52 - 9);
                v52 -= 4;
                if (v53 < 0)
                {
                  operator delete(*v52);
                }
              }

              while (v52 != v50);
              v49 = *v48;
            }

            *(v47 - 2) = v50;
            operator delete(v49);
          }

          v47 = v48;
        }

        while (v48 != v46);
      }

      operator delete(v46);
    }
  }

  if (SHIBYTE(v92) < 0)
  {
    operator delete(v91);
  }

LABEL_125:
  v54 = 0uLL;
  if (v82)
  {
    v55 = 0;
    v56 = 0uLL;
    goto LABEL_129;
  }

  if ((v86 & 1) == 0)
  {
LABEL_167:
    __break(1u);
    goto LABEL_168;
  }

  v56 = *v84;
  v55 = v85;
  v84[0] = 0;
  v84[1] = 0;
  v85 = 0;
LABEL_129:
  if (v76)
  {
    v57 = 0;
    goto LABEL_133;
  }

  if ((v81 & 1) == 0)
  {
    goto LABEL_167;
  }

  v54 = *v79;
  v57 = v80;
  v79[0] = 0;
  v79[1] = 0;
  v80 = 0;
LABEL_133:
  *a3 = 0;
  *(a3 + 38) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  *(a3 + 29) = 0;
  *(a3 + 40) = v56;
  *(a3 + 56) = v55;
  v90 = 0;
  v91 = 0uLL;
  v92 = 0;
  *(a3 + 64) = v54;
  *(a3 + 80) = v57;
  v93 = 0;
  *&v94 = 0;
  *(a3 + 88) = 1;
  webrtc::SimulcastDescription::~SimulcastDescription(&v90);
  if (v81 != 1)
  {
    goto LABEL_148;
  }

LABEL_134:
  v58 = v79[0];
  if (v79[0])
  {
    v59 = v79[1];
    v60 = v79[0];
    if (v79[1] != v79[0])
    {
      v61 = v79[1];
      do
      {
        v64 = *(v61 - 3);
        v61 -= 3;
        v63 = v64;
        if (v64)
        {
          v65 = *(v59 - 2);
          v62 = v63;
          if (v65 != v63)
          {
            do
            {
              v66 = *(v65 - 9);
              v65 -= 4;
              if (v66 < 0)
              {
                operator delete(*v65);
              }
            }

            while (v65 != v63);
            v62 = *v61;
          }

          *(v59 - 2) = v63;
          operator delete(v62);
        }

        v59 = v61;
      }

      while (v61 != v58);
      v60 = v79[0];
    }

    v79[1] = v58;
    operator delete(v60);
  }

LABEL_148:
  if ((v78[15] & 0x80000000) != 0)
  {
    operator delete(v77);
  }

  if (v86 == 1)
  {
    v67 = v84[0];
    if (v84[0])
    {
      v68 = v84[1];
      v69 = v84[0];
      if (v84[1] != v84[0])
      {
        v70 = v84[1];
        do
        {
          v73 = *(v70 - 3);
          v70 -= 3;
          v72 = v73;
          if (v73)
          {
            v74 = *(v68 - 2);
            v71 = v72;
            if (v74 != v72)
            {
              do
              {
                v75 = *(v74 - 9);
                v74 -= 4;
                if (v75 < 0)
                {
                  operator delete(*v74);
                }
              }

              while (v74 != v72);
              v71 = *v70;
            }

            *(v68 - 2) = v72;
            operator delete(v71);
          }

          v68 = v70;
        }

        while (v70 != v67);
        v69 = v84[0];
      }

      v84[1] = v67;
      operator delete(v69);
    }
  }

  if (SHIBYTE(v83[2]) < 0)
  {
    operator delete(v83[0]);
  }

  v13 = __p;
  if (__p)
  {
    v14 = v88;
    v15 = __p;
    if (v88 != __p)
    {
      do
      {
        v16 = *(v14 - 1);
        v14 -= 3;
        if (v16 < 0)
        {
          operator delete(*v14);
        }
      }

      while (v14 != v13);
      v15 = __p;
    }

    v88 = v13;
    operator delete(v15);
  }
}

void webrtc::anonymous namespace::ParseSimulcastLayerList(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 23);
  if (v2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  if (v2 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      if (*(v3 + i) == 59)
      {
        operator new();
      }
    }
  }

  operator new();
}

uint64_t webrtc::RTCErrorOr<webrtc::SimulcastLayerList>::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v4;
  *(a2 + 31) = 0;
  *(a2 + 8) = 0;
  v5 = *(a2 + 35);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 35) = v5;
  if (*(a1 + 64) == *(a2 + 64))
  {
    if (*(a1 + 64))
    {
      v6 = *(a1 + 40);
      if (v6)
      {
        v7 = *(a1 + 48);
        v8 = *(a1 + 40);
        if (v7 != v6)
        {
          v9 = *(a1 + 48);
          do
          {
            v12 = *(v9 - 3);
            v9 -= 3;
            v11 = v12;
            if (v12)
            {
              v13 = *(v7 - 2);
              v10 = v11;
              if (v13 != v11)
              {
                do
                {
                  v14 = *(v13 - 9);
                  v13 -= 4;
                  if (v14 < 0)
                  {
                    operator delete(*v13);
                  }
                }

                while (v13 != v11);
                v10 = *v9;
              }

              *(v7 - 2) = v11;
              operator delete(v10);
            }

            v7 = v9;
          }

          while (v9 != v6);
          v8 = *(a1 + 40);
        }

        *(a1 + 48) = v6;
        operator delete(v8);
        *(a1 + 40) = 0;
        *(a1 + 48) = 0;
        *(a1 + 56) = 0;
      }

      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
      *(a2 + 40) = 0;
      *(a2 + 48) = 0;
      *(a2 + 56) = 0;
    }
  }

  else if (*(a1 + 64))
  {
    v15 = *(a1 + 40);
    if (v15)
    {
      v16 = *(a1 + 48);
      v17 = *(a1 + 40);
      if (v16 != v15)
      {
        v18 = *(a1 + 48);
        do
        {
          v21 = *(v18 - 3);
          v18 -= 3;
          v20 = v21;
          if (v21)
          {
            v22 = *(v16 - 2);
            v19 = v20;
            if (v22 != v20)
            {
              do
              {
                v23 = *(v22 - 9);
                v22 -= 4;
                if (v23 < 0)
                {
                  operator delete(*v22);
                }
              }

              while (v22 != v20);
              v19 = *v18;
            }

            *(v16 - 2) = v20;
            operator delete(v19);
          }

          v16 = v18;
        }

        while (v18 != v15);
        v17 = *(a1 + 40);
      }

      *(a1 + 48) = v15;
      operator delete(v17);
    }

    *(a1 + 64) = 0;
  }

  else
  {
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a1 + 64) = 1;
  }

  return a1;
}

void webrtc::SimulcastSdpSerializer::SerializeRidDescription(const webrtc::MediaContentDescription *a1@<X1>, const webrtc::RidDescription *a2@<X2>, std::string *a3@<X8>)
{
  memset(&__dst, 0, sizeof(__dst));
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    size = *(a2 + 23);
  }

  else
  {
    size = *(a2 + 1);
  }

  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = size == 0;
  }

  if (!v8)
  {
    goto LABEL_319;
  }

  if (size > 0x16)
  {
    if (size - 0x7FFFFFFFFFFFFFF7 > 0x800000000000001ELL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (size)
  {
    v11 = (&__dst + size);
    if (&__dst <= v6 && v11 > v6)
    {
      goto LABEL_319;
    }

    memmove(&__dst, v6, size);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      __dst.__r_.__value_.__l.__size_ = size;
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = size;
    }

    *v11 = 0;
    LODWORD(v14) = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    v13 = __dst.__r_.__value_.__r.__words[2];
    size = __dst.__r_.__value_.__l.__size_;
  }

  else
  {
    v13 = 0;
    LODWORD(v14) = 0;
  }

  v15 = v14;
  v16 = (v13 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v14 = v14;
  if ((v14 & 0x80u) == 0)
  {
    v17 = 22;
  }

  else
  {
    v17 = v16;
  }

  if ((v14 & 0x80u) != 0)
  {
    v14 = size;
  }

  if (v17 == v14)
  {
    std::string::__grow_by_and_replace(&__dst, v17, 1uLL, v17, v17, 0, 1uLL, " ");
  }

  else
  {
    p_dst = __dst.__r_.__value_.__r.__words[0];
    if (v15 >= 0)
    {
      p_dst = &__dst;
    }

    v19 = p_dst + v14;
    if (p_dst + v14 <= " " && v19 + 1 > " ")
    {
      goto LABEL_319;
    }

    *v19 = 32;
    v20 = v14 + 1;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      __dst.__r_.__value_.__l.__size_ = v20;
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = v20 & 0x7F;
    }

    p_dst->__r_.__value_.__s.__data_[v20] = 0;
  }

  if (*(a2 + 6))
  {
    v21 = "recv";
  }

  else
  {
    v21 = "send";
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = 22;
  }

  else
  {
    v22 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v23 = __dst.__r_.__value_.__l.__size_;
  }

  if (v22 - v23 < 4)
  {
    std::string::__grow_by_and_replace(&__dst, v22, v23 - v22 + 4, v23, v23, 0, 4uLL, v21);
    v131 = 0;
    v132 = 0;
    v133 = 0;
    v24 = *(a2 + 4);
    v25 = *(a2 + 5);
    if (v24 != v25)
    {
      goto LABEL_62;
    }

    goto LABEL_81;
  }

  v26 = &__dst;
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v26 = __dst.__r_.__value_.__r.__words[0];
  }

  v27 = (v26 + v23);
  if (v26 + v23 <= v21 && v27 + 1 > v21)
  {
    goto LABEL_319;
  }

  *v27 = *v21;
  v28 = v23 + 4;
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    *(&__dst.__r_.__value_.__s + 23) = v28 & 0x7F;
    v26->__r_.__value_.__s.__data_[v28] = 0;
    v131 = 0;
    v132 = 0;
    v133 = 0;
    v24 = *(a2 + 4);
    v25 = *(a2 + 5);
    if (v24 != v25)
    {
      goto LABEL_62;
    }

LABEL_81:
    v34 = " ";
    v116 = a3;
    if (v131 == v132)
    {
      goto LABEL_132;
    }

    goto LABEL_82;
  }

  __dst.__r_.__value_.__l.__size_ = v23 + 4;
  v26->__r_.__value_.__s.__data_[v28] = 0;
  v131 = 0;
  v132 = 0;
  v133 = 0;
  v24 = *(a2 + 4);
  v25 = *(a2 + 5);
  if (v24 == v25)
  {
    goto LABEL_81;
  }

  while (1)
  {
LABEL_62:
    (*(*v24 + 16))(&v117, v24);
    webrtc::RtpCodec::RtpCodec(&v124, &v117);
    v117 = &unk_28829C078;
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v123, v123[1]);
    if (__p)
    {
      v122 = __p;
      operator delete(__p);
    }

    if ((v120 & 0x80000000) == 0)
    {
      v30 = *(a1 + 35);
      v31 = *(a1 + 36);
      if (v30 != v31)
      {
        goto LABEL_66;
      }

LABEL_72:
      if (v30 == v31)
      {
        break;
      }

      goto LABEL_73;
    }

    operator delete(v118);
    v30 = *(a1 + 35);
    v31 = *(a1 + 36);
    if (v30 == v31)
    {
      goto LABEL_72;
    }

LABEL_66:
    while ((webrtc::IsSameRtpCodecIgnoringLevel(v30, &v124, v29) & 1) == 0)
    {
      v30 += 54;
      if (v30 == v31)
      {
        v30 = v31;
        break;
      }
    }

    if (v30 == *(a1 + 36))
    {
      break;
    }

LABEL_73:
    v33 = v30[3];
    v32 = v30 + 3;
    if (v33 == -1)
    {
      break;
    }

    std::vector<unsigned int>::push_back[abi:sn200100](&v131, v32);
    v124 = &unk_28829C078;
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v129, v130);
    if (v127)
    {
      v128 = v127;
      operator delete(v127);
    }

    if (v126 < 0)
    {
      operator delete(v125);
    }

    v24 += 216;
    if (v24 == v25)
    {
      goto LABEL_81;
    }
  }

  v124 = &unk_28829C078;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v129, v130);
  if (v127)
  {
    v128 = v127;
    operator delete(v127);
  }

  if ((v126 & 0x80000000) == 0)
  {
    goto LABEL_81;
  }

  operator delete(v125);
  v34 = " ";
  v116 = a3;
  if (v131 == v132)
  {
LABEL_132:
    v57 = *(a2 + 7);
    v58 = a2 + 64;
    if (v57 != (a2 + 64))
    {
      goto LABEL_157;
    }

    goto LABEL_245;
  }

LABEL_82:
  v35 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v36 = 22;
  }

  else
  {
    v36 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v35 = __dst.__r_.__value_.__l.__size_;
  }

  if (v36 == v35)
  {
    std::string::__grow_by_and_replace(&__dst, v36, 1uLL, v36, v36, 0, 1uLL, " ");
    goto LABEL_99;
  }

  v37 = &__dst;
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v37 = __dst.__r_.__value_.__r.__words[0];
  }

  v38 = v37 + v35;
  if (v37 + v35 <= " " && v38 + 1 > " ")
  {
    goto LABEL_319;
  }

  *v38 = 32;
  v39 = v35 + 1;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    __dst.__r_.__value_.__l.__size_ = v39;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = v39 & 0x7F;
  }

  v37->__r_.__value_.__s.__data_[v39] = 0;
LABEL_99:
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v40 = 22;
  }

  else
  {
    v40 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v41 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v41 = __dst.__r_.__value_.__l.__size_;
  }

  if (v40 - v41 < 2)
  {
    std::string::__grow_by_and_replace(&__dst, v40, v41 - v40 + 2, v41, v41, 0, 2uLL, "pt");
    goto LABEL_115;
  }

  v42 = &__dst;
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v42 = __dst.__r_.__value_.__r.__words[0];
  }

  v43 = (v42 + v41);
  if (v42 + v41 <= "pt" && v43 + 1 > "pt")
  {
    goto LABEL_319;
  }

  *v43 = 29808;
  v44 = v41 + 2;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    __dst.__r_.__value_.__l.__size_ = v41 + 2;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = v44 & 0x7F;
  }

  v42->__r_.__value_.__s.__data_[v44] = 0;
LABEL_115:
  v45 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v46 = 22;
  }

  else
  {
    v46 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v45 = __dst.__r_.__value_.__l.__size_;
  }

  if (v46 == v45)
  {
    std::string::__grow_by_and_replace(&__dst, v46, 1uLL, v46, v46, 0, 1uLL, "=");
    v47 = v131;
    v48 = v132;
    if (v131 != v132)
    {
      goto LABEL_122;
    }

LABEL_131:
    v34 = ";";
    goto LABEL_132;
  }

  v54 = &__dst;
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v54 = __dst.__r_.__value_.__r.__words[0];
  }

  v55 = v54 + v45;
  if (v54 + v45 <= "=" && v55 + 1 > "=")
  {
    goto LABEL_319;
  }

  *v55 = 61;
  v56 = v45 + 1;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    __dst.__r_.__value_.__l.__size_ = v56;
    v54->__r_.__value_.__s.__data_[v56] = 0;
    v47 = v131;
    v48 = v132;
    if (v131 == v132)
    {
      goto LABEL_131;
    }
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = v56 & 0x7F;
    v54->__r_.__value_.__s.__data_[v56] = 0;
    v47 = v131;
    v48 = v132;
    if (v131 == v132)
    {
      goto LABEL_131;
    }
  }

LABEL_122:
  v49 = *v47;
  v118 = 0;
  v119 = 0x1600000000000000;
  v117 = 0;
  v50 = absl::numbers_internal::FastIntToBuffer(v49, &v117, a2);
  v52 = v50 - &v117;
  if ((SHIBYTE(v119) & 0x8000000000000000) == 0)
  {
    if (v52 <= SHIBYTE(v119))
    {
      HIBYTE(v119) = v50 - &v117;
      v53 = &v117;
      goto LABEL_136;
    }

LABEL_320:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (v118 < v52)
  {
    goto LABEL_320;
  }

  v53 = v117;
  v118 = (v50 - &v117);
LABEL_136:
  v53[v52] = 0;
  v59 = v119 >= 0 ? &v117 : v117;
  v60 = v119 >= 0 ? HIBYTE(v119) : v118;
  if (!v59 && v60)
  {
LABEL_319:
    __break(1u);
    goto LABEL_320;
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v61 = 22;
  }

  else
  {
    v61 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v62 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v62 = __dst.__r_.__value_.__l.__size_;
  }

  if (v61 - v62 >= v60)
  {
    if (v60)
    {
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v95 = &__dst;
      }

      else
      {
        v95 = __dst.__r_.__value_.__r.__words[0];
      }

      if ((v60 & 0x8000000000000000) != 0)
      {
        goto LABEL_319;
      }

      v96 = v95 + v62;
      if (v95 + v62 <= v59 && &v96[v60] > v59)
      {
        goto LABEL_319;
      }

      v97 = v60;
      memmove(v96, v59, v60);
      v98 = v62 + v97;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        __dst.__r_.__value_.__l.__size_ = v62 + v97;
        v95->__r_.__value_.__s.__data_[v98] = 0;
        if ((SHIBYTE(v119) & 0x80000000) == 0)
        {
          goto LABEL_259;
        }

LABEL_152:
        operator delete(v117);
        v63 = v47 + 1;
        if (v47 + 1 != v48)
        {
          goto LABEL_260;
        }

        goto LABEL_153;
      }

      *(&__dst.__r_.__value_.__s + 23) = v98 & 0x7F;
      v95->__r_.__value_.__s.__data_[v98] = 0;
    }

    if ((SHIBYTE(v119) & 0x80000000) == 0)
    {
      goto LABEL_259;
    }

    goto LABEL_152;
  }

  std::string::__grow_by_and_replace(&__dst, v61, v62 + v60 - v61, v62, v62, 0, v60, v59);
  if (SHIBYTE(v119) < 0)
  {
    goto LABEL_152;
  }

LABEL_259:
  v63 = v47 + 1;
  if (v47 + 1 != v48)
  {
LABEL_260:
    v34 = ";";
    while (1)
    {
      while (1)
      {
        v99 = *v63;
        v100 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v101 = 22;
        }

        else
        {
          v101 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v100 = __dst.__r_.__value_.__l.__size_;
        }

        if (v101 == v100)
        {
          std::string::__grow_by_and_replace(&__dst, v101, 1uLL, v101, v101, 0, 1uLL, ",");
        }

        else
        {
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v102 = &__dst;
          }

          else
          {
            v102 = __dst.__r_.__value_.__r.__words[0];
          }

          if (v102 + v100 <= "," && &v102->__r_.__value_.__l.__data_ + v100 + 1 > ",")
          {
            goto LABEL_319;
          }

          v102->__r_.__value_.__s.__data_[v100] = 44;
          v104 = v100 + 1;
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            __dst.__r_.__value_.__l.__size_ = v104;
          }

          else
          {
            *(&__dst.__r_.__value_.__s + 23) = v104 & 0x7F;
          }

          v102->__r_.__value_.__s.__data_[v104] = 0;
        }

        v118 = 0;
        v119 = 0x1600000000000000;
        v117 = 0;
        v105 = absl::numbers_internal::FastIntToBuffer(v99, &v117, v51);
        v106 = v105 - &v117;
        if ((SHIBYTE(v119) & 0x8000000000000000) != 0)
        {
          if (v118 < v106)
          {
            goto LABEL_320;
          }

          v107 = v117;
          v118 = (v105 - &v117);
        }

        else
        {
          if (v106 > SHIBYTE(v119))
          {
            goto LABEL_320;
          }

          HIBYTE(v119) = v105 - &v117;
          v107 = &v117;
        }

        v107[v106] = 0;
        if (v119 >= 0)
        {
          v108 = &v117;
        }

        else
        {
          v108 = v117;
        }

        if (v119 >= 0)
        {
          v109 = HIBYTE(v119);
        }

        else
        {
          v109 = v118;
        }

        if (!v108 && v109)
        {
          goto LABEL_319;
        }

        v110 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? 22 : (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        v111 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__dst.__r_.__value_.__r.__words[2]) : __dst.__r_.__value_.__l.__size_;
        if (v110 - v111 >= v109)
        {
          break;
        }

        std::string::__grow_by_and_replace(&__dst, v110, v111 + v109 - v110, v111, v111, 0, v109, v108);
        if ((SHIBYTE(v119) & 0x80000000) == 0)
        {
          goto LABEL_262;
        }

LABEL_311:
        operator delete(v117);
        if (++v63 == v48)
        {
          goto LABEL_154;
        }
      }

      if (v109)
      {
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v112 = &__dst;
        }

        else
        {
          v112 = __dst.__r_.__value_.__r.__words[0];
        }

        if ((v109 & 0x8000000000000000) != 0)
        {
          goto LABEL_319;
        }

        v113 = v112 + v111;
        if (v112 + v111 <= v108 && &v113[v109] > v108)
        {
          goto LABEL_319;
        }

        v114 = v109;
        memmove(v113, v108, v109);
        v115 = v111 + v114;
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          __dst.__r_.__value_.__l.__size_ = v111 + v114;
          v112->__r_.__value_.__s.__data_[v115] = 0;
          if (SHIBYTE(v119) < 0)
          {
            goto LABEL_311;
          }

          goto LABEL_262;
        }

        *(&__dst.__r_.__value_.__s + 23) = v115 & 0x7F;
        v112->__r_.__value_.__s.__data_[v115] = 0;
      }

      if (SHIBYTE(v119) < 0)
      {
        goto LABEL_311;
      }

LABEL_262:
      if (++v63 == v48)
      {
        goto LABEL_154;
      }
    }
  }

LABEL_153:
  v34 = ";";
LABEL_154:
  v57 = *(a2 + 7);
  v58 = a2 + 64;
  if (v57 != (a2 + 64))
  {
    do
    {
LABEL_157:
      v64 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v65 = 22;
      }

      else
      {
        v65 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v64 = __dst.__r_.__value_.__l.__size_;
      }

      if (v65 == v64)
      {
        std::string::__grow_by_and_replace(&__dst, v65, 1uLL, v65, v65, 0, 1uLL, v34);
        v66 = *(v57 + 55);
        if ((v66 & 0x8000000000000000) == 0)
        {
          goto LABEL_164;
        }
      }

      else
      {
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v69 = &__dst;
        }

        else
        {
          v69 = __dst.__r_.__value_.__r.__words[0];
        }

        if (v69 + v64 <= v34 && &v69->__r_.__value_.__l.__data_ + v64 + 1 > v34)
        {
          goto LABEL_319;
        }

        v69->__r_.__value_.__s.__data_[v64] = *v34;
        v71 = v64 + 1;
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          __dst.__r_.__value_.__l.__size_ = v71;
          v69->__r_.__value_.__s.__data_[v71] = 0;
          v66 = *(v57 + 55);
          if ((v66 & 0x8000000000000000) == 0)
          {
LABEL_164:
            v67 = (v57 + 4);
            v68 = v66 == 0;
            goto LABEL_176;
          }
        }

        else
        {
          *(&__dst.__r_.__value_.__s + 23) = v71 & 0x7F;
          v69->__r_.__value_.__s.__data_[v71] = 0;
          v66 = *(v57 + 55);
          if ((v66 & 0x8000000000000000) == 0)
          {
            goto LABEL_164;
          }
        }
      }

      v67 = v57[4];
      v66 = v57[5];
      v68 = v66 == 0;
      if (!v67 && v66)
      {
        goto LABEL_319;
      }

LABEL_176:
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v72 = 22;
      }

      else
      {
        v72 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v73 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v73 = __dst.__r_.__value_.__l.__size_;
      }

      if (v72 - v73 < v66)
      {
        std::string::__grow_by_and_replace(&__dst, v72, v73 + v66 - v72, v73, v73, 0, v66, v67);
        v74 = *(v57 + 79);
        if (v74 < 0)
        {
          goto LABEL_184;
        }

        goto LABEL_196;
      }

      if (v68)
      {
        goto LABEL_195;
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v75 = &__dst;
      }

      else
      {
        v75 = __dst.__r_.__value_.__r.__words[0];
      }

      if ((v66 & 0x8000000000000000) != 0)
      {
        goto LABEL_319;
      }

      v76 = v75 + v73;
      if (v75 + v73 <= v67 && &v76[v66] > v67)
      {
        goto LABEL_319;
      }

      v77 = v66;
      memmove(v76, v67, v66);
      v78 = v73 + v77;
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        *(&__dst.__r_.__value_.__s + 23) = v78 & 0x7F;
        v75->__r_.__value_.__s.__data_[v78] = 0;
LABEL_195:
        v74 = *(v57 + 79);
        if (v74 < 0)
        {
          goto LABEL_184;
        }

        goto LABEL_196;
      }

      __dst.__r_.__value_.__l.__size_ = v73 + v77;
      v75->__r_.__value_.__s.__data_[v78] = 0;
      v74 = *(v57 + 79);
      if (v74 < 0)
      {
LABEL_184:
        if (!v57[8])
        {
          goto LABEL_232;
        }

        goto LABEL_197;
      }

LABEL_196:
      if (!v74)
      {
        goto LABEL_232;
      }

LABEL_197:
      v79 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v80 = 22;
      }

      else
      {
        v80 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v79 = __dst.__r_.__value_.__l.__size_;
      }

      if (v80 == v79)
      {
        std::string::__grow_by_and_replace(&__dst, v80, 1uLL, v80, v80, 0, 1uLL, "=");
        v81 = *(v57 + 79);
        if ((v81 & 0x8000000000000000) == 0)
        {
          goto LABEL_204;
        }
      }

      else
      {
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v84 = &__dst;
        }

        else
        {
          v84 = __dst.__r_.__value_.__r.__words[0];
        }

        v85 = v84 + v79;
        if (v84 + v79 <= "=" && v85 + 1 > "=")
        {
          goto LABEL_319;
        }

        *v85 = 61;
        v86 = v79 + 1;
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          __dst.__r_.__value_.__l.__size_ = v86;
          v84->__r_.__value_.__s.__data_[v86] = 0;
          v81 = *(v57 + 79);
          if ((v81 & 0x8000000000000000) == 0)
          {
LABEL_204:
            v82 = (v57 + 7);
            v83 = v81 == 0;
            goto LABEL_214;
          }
        }

        else
        {
          *(&__dst.__r_.__value_.__s + 23) = v86 & 0x7F;
          v84->__r_.__value_.__s.__data_[v86] = 0;
          v81 = *(v57 + 79);
          if ((v81 & 0x8000000000000000) == 0)
          {
            goto LABEL_204;
          }
        }
      }

      v82 = v57[7];
      v81 = v57[8];
      v83 = v81 == 0;
      if (!v82 && v81)
      {
        goto LABEL_319;
      }

LABEL_214:
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v87 = 22;
      }

      else
      {
        v87 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v88 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v88 = __dst.__r_.__value_.__l.__size_;
      }

      if (v87 - v88 < v81)
      {
        std::string::__grow_by_and_replace(&__dst, v87, v88 + v81 - v87, v88, v88, 0, v81, v82);
        v89 = v57[1];
        if (!v89)
        {
          goto LABEL_242;
        }

        goto LABEL_233;
      }

      if (v83)
      {
        goto LABEL_232;
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v90 = &__dst;
      }

      else
      {
        v90 = __dst.__r_.__value_.__r.__words[0];
      }

      if ((v81 & 0x8000000000000000) != 0)
      {
        goto LABEL_319;
      }

      v91 = v90 + v88;
      if (v90 + v88 <= v82 && &v91[v81] > v82)
      {
        goto LABEL_319;
      }

      v92 = v81;
      memmove(v91, v82, v81);
      v93 = v88 + v92;
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        *(&__dst.__r_.__value_.__s + 23) = v93 & 0x7F;
        v90->__r_.__value_.__s.__data_[v93] = 0;
LABEL_232:
        v89 = v57[1];
        if (!v89)
        {
          goto LABEL_242;
        }

        goto LABEL_233;
      }

      __dst.__r_.__value_.__l.__size_ = v88 + v92;
      v90->__r_.__value_.__s.__data_[v93] = 0;
      v89 = v57[1];
      if (!v89)
      {
        do
        {
LABEL_242:
          v94 = v57[2];
          v8 = *v94 == v57;
          v57 = v94;
        }

        while (!v8);
        goto LABEL_156;
      }

      do
      {
LABEL_233:
        v94 = v89;
        v89 = *v89;
      }

      while (v89);
LABEL_156:
      v34 = ";";
      v57 = v94;
    }

    while (v94 != v58);
  }

LABEL_245:
  *v116 = __dst;
  memset(&__dst, 0, sizeof(__dst));
  if (v131)
  {
    v132 = v131;
    operator delete(v131);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }
}

void webrtc::SimulcastSdpSerializer::DeserializeRidDescription(std::string *__src@<X2>, size_t __len@<X3>, uint64_t a3@<X8>)
{
  v121 = 0;
  v122 = 0;
  v123 = 0;
  if (__len > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_276;
  }

  if (__len > 0x16)
  {
    operator new();
  }

  *(&v113.__r_.__value_.__s + 23) = __len;
  v4 = (&v113 + __len);
  if (&v113 <= __src && v4 > __src)
  {
    goto LABEL_275;
  }

  if (__len)
  {
    memmove(&v113, __src, __len);
  }

  v4->__r_.__value_.__s.__data_[0] = 0;
  if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v113;
  }

  else
  {
    v5 = v113.__r_.__value_.__r.__words[0];
  }

  if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v113.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v113.__r_.__value_.__l.__size_;
  }

  webrtc::tokenize(v5, size, 0x20u, &v121);
  if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v113.__r_.__value_.__l.__data_);
  }

  v7 = v121;
  v8 = v122;
  v9 = 0xAAAAAAAAAAAAAAABLL * (v122 - v121);
  if (v9 <= 1)
  {
    operator new();
  }

  if (v9 >= 4)
  {
    operator new();
  }

  v14 = *(v121 + 23);
  if ((v14 & 0x8000000000000000) != 0)
  {
    v15 = *v121;
    v14 = v121[1];
    if (v14 - 17 < 0xFFFFFFFFFFFFFFF0)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v15 = v121;
    if (v14 - 17 < 0xFFFFFFFFFFFFFFF0)
    {
LABEL_40:
      if (v8 == v7)
      {
        goto LABEL_275;
      }

      std::operator+<char>();
      v18 = HIBYTE(v127.__r_.__value_.__r.__words[2]);
      if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = 22;
      }

      else
      {
        v19 = (v127.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v18 = v127.__r_.__value_.__l.__size_;
      }

      if (v19 == v18)
      {
        std::string::__grow_by_and_replace(&v127, v19, 1uLL, v19, v19, 0, 1uLL, ".");
      }

      else
      {
        if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = &v127;
        }

        else
        {
          v20 = v127.__r_.__value_.__r.__words[0];
        }

        v21 = v20 + v18;
        if (v20 + v18 <= "." && v21 + 1 > ".")
        {
          goto LABEL_275;
        }

        *v21 = 46;
        v22 = v18 + 1;
        if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
        {
          v127.__r_.__value_.__l.__size_ = v22;
        }

        else
        {
          *(&v127.__r_.__value_.__s + 23) = v22 & 0x7F;
        }

        v20->__r_.__value_.__s.__data_[v22] = 0;
      }

      __srca = v127;
      memset(&v127, 0, sizeof(v127));
      v27 = SHIBYTE(__srca.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__srca.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        v27 = __srca.__r_.__value_.__l.__size_;
        p_srca = __srca.__r_.__value_.__r.__words[0];
        LODWORD(v113.__r_.__value_.__l.__data_) = 5;
        if (__srca.__r_.__value_.__l.__size_ > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_276;
        }

        if (__srca.__r_.__value_.__l.__size_ <= 0x16)
        {
LABEL_63:
          HIBYTE(v114) = v27;
          v29 = (&v113.__r_.__value_.__r.__words[1] + v27);
          if (&v113.__r_.__value_.__r.__words[1] <= p_srca && v29 > p_srca)
          {
            goto LABEL_275;
          }

          if (v27)
          {
            memmove(&v113.__r_.__value_.__r.__words[1], p_srca, v27);
          }

          v29->__r_.__value_.__s.__data_[0] = 0;
          LODWORD(v115) = 0;
          BYTE4(v115) = 0;
          BYTE6(v115) = 0;
          *a3 = v113.__r_.__value_.__l.__data_;
          *(a3 + 8) = *&v113.__r_.__value_.__r.__words[1];
          *(a3 + 24) = v114;
          *&v113.__r_.__value_.__r.__words[1] = 0uLL;
          v114 = 0;
          *(a3 + 32) = 0;
          *(a3 + 35) = *(&v115 + 3);
          *(a3 + 40) = 0;
          *(a3 + 120) = 0;
          if (SHIBYTE(__srca.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__srca.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v127.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_21;
            }
          }

          else if ((SHIBYTE(v127.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_21;
          }

          v30 = v127.__r_.__value_.__r.__words[0];
          goto LABEL_76;
        }
      }

      else
      {
        LODWORD(v113.__r_.__value_.__l.__data_) = 5;
        p_srca = &__srca;
        if (SHIBYTE(__srca.__r_.__value_.__r.__words[2]) <= 0x16)
        {
          goto LABEL_63;
        }
      }

      operator new();
    }
  }

  v16 = MEMORY[0x277D85DE0];
  do
  {
    v17 = *v15;
    if ((v17 & 0x80000000) != 0)
    {
      if (!__maskrune(v17, 0x500uLL))
      {
        goto LABEL_39;
      }
    }

    else if ((*(v16 + 4 * v17 + 60) & 0x500) == 0)
    {
LABEL_39:
      v7 = v121;
      v8 = v122;
      goto LABEL_40;
    }

    ++v15;
    --v14;
  }

  while (v14);
  v23 = v121;
  v24 = v122;
  if (0xAAAAAAAAAAAAAAABLL * (v122 - v121) <= 1)
  {
    goto LABEL_275;
  }

  v25 = v121 + 3;
  v26 = *(v121 + 47);
  if (v26 < 0)
  {
    if (v121[4] != 4)
    {
      goto LABEL_81;
    }

    v25 = *v25;
  }

  else if (v26 != 4)
  {
    goto LABEL_81;
  }

  if (*v25 != 1684956531 && *v25 != 1986225522)
  {
LABEL_81:
    operator new();
  }

  v31 = *v25 != 1684956531;
  if (*(v121 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v113, *v121, v121[1]);
    v23 = v121;
    v24 = v122;
  }

  else
  {
    v32 = *v121;
    v113.__r_.__value_.__r.__words[2] = v121[2];
    *&v113.__r_.__value_.__l.__data_ = v32;
  }

  LODWORD(v114) = v31;
  v115 = 0;
  v116 = 0;
  v119 = 0;
  v120 = 0;
  v117 = 0;
  v118 = &v119;
  if (v24 - v23 != 72)
  {
    goto LABEL_247;
  }

  v111[0] = 0;
  v111[1] = 0;
  v112 = 0;
  v33 = *(v23 + 71);
  if ((v33 & 0x8000000000000000) != 0)
  {
    v34 = v23[6];
    v33 = v23[7];
  }

  else
  {
    v34 = (v23 + 6);
  }

  webrtc::tokenize(v34, v33, 0x3Bu, v111);
  v35 = v111[0];
  v103 = v111[1];
  if (v111[0] == v111[1])
  {
    if (0xAAAAAAAAAAAAAAABLL * (v122 - v121) <= 2)
    {
      goto LABEL_275;
    }

    std::operator+<char>();
    v89 = SHIBYTE(v127.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v127.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v89 = v127.__r_.__value_.__l.__size_;
      v90 = v127.__r_.__value_.__r.__words[0];
      LODWORD(__srca.__r_.__value_.__l.__data_) = 5;
      if (v127.__r_.__value_.__l.__size_ > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_276;
      }
    }

    else
    {
      LODWORD(__srca.__r_.__value_.__l.__data_) = 5;
      v90 = &v127;
    }

    if (v89 > 0x16)
    {
      operator new();
    }

    HIBYTE(__len_8) = v89;
    v98 = (&__srca.__r_.__value_.__r.__words[1] + v89);
    if (&__srca.__r_.__value_.__r.__words[1] <= v90 && v98 > v90)
    {
      goto LABEL_275;
    }

    if (v89)
    {
      memmove(&__srca.__r_.__value_.__r.__words[1], v90, v89);
    }

    v98->__r_.__value_.__s.__data_[0] = 0;
    *v110 = 0;
    v110[4] = 0;
    v110[6] = 0;
    *a3 = __srca.__r_.__value_.__l.__data_;
    *(a3 + 8) = *&__srca.__r_.__value_.__r.__words[1];
    *(a3 + 24) = __len_8;
    *&__srca.__r_.__value_.__r.__words[1] = 0uLL;
    __len_8 = 0;
    *(a3 + 32) = 0;
    *(a3 + 35) = *&v110[3];
    *(a3 + 40) = 0;
    *(a3 + 120) = 0;
    if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v127.__r_.__value_.__l.__data_);
    }

    v99 = v111[0];
    if (v111[0])
    {
      v100 = v111[1];
      v101 = v111[0];
      if (v111[1] != v111[0])
      {
        do
        {
          v102 = *(v100 - 1);
          v100 -= 3;
          if (v102 < 0)
          {
            operator delete(*v100);
          }
        }

        while (v100 != v99);
        v101 = v111[0];
      }

      v111[1] = v99;
      operator delete(v101);
    }

    goto LABEL_248;
  }

  v36 = v111[1];
  do
  {
    v106 = 0;
    v107 = 0;
    __p = 0;
    v37 = v35[23];
    if ((v37 & 0x8000000000000000) != 0)
    {
      webrtc::tokenize(*v35, *(v35 + 1), 0x3Du, &__p);
      v39 = __p;
      v38 = v106;
      if (__p == v106)
      {
        goto LABEL_97;
      }
    }

    else
    {
      webrtc::tokenize(v35, v37, 0x3Du, &__p);
      v39 = __p;
      v38 = v106;
      if (__p == v106)
      {
        goto LABEL_97;
      }
    }

    v40 = v38 - v39;
    if (0xAAAAAAAAAAAAAAABLL * (v38 - v39) >= 3)
    {
LABEL_97:
      std::operator+<char>();
      v41 = SHIBYTE(v127.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(v127.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        v41 = v127.__r_.__value_.__l.__size_;
        v42 = v127.__r_.__value_.__r.__words[0];
        LODWORD(__srca.__r_.__value_.__l.__data_) = 5;
        if (v127.__r_.__value_.__l.__size_ > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_276;
        }
      }

      else
      {
        LODWORD(__srca.__r_.__value_.__l.__data_) = 5;
        v42 = &v127;
      }

      if (v41 > 0x16)
      {
        operator new();
      }

      HIBYTE(__len_8) = v41;
      v45 = (&__srca.__r_.__value_.__r.__words[1] + v41);
      if (&__srca.__r_.__value_.__r.__words[1] <= v42 && v45 > v42)
      {
        goto LABEL_275;
      }

      goto LABEL_110;
    }

    v43 = *(v39 + 23);
    if (v43 < 0)
    {
      if (v39[1] != 2)
      {
        goto LABEL_118;
      }

      v44 = *v39;
    }

    else
    {
      v44 = v39;
      if (v43 != 2)
      {
        goto LABEL_118;
      }
    }

    if (*v44 != 29808)
    {
LABEL_118:
      v48 = v119;
      if (!v119)
      {
        goto LABEL_159;
      }

      if (v43 >= 0)
      {
        v49 = v39;
      }

      else
      {
        v49 = *v39;
      }

      if (v43 >= 0)
      {
        v50 = *(v39 + 23);
      }

      else
      {
        v50 = v39[1];
      }

      v51 = &v119;
      while (1)
      {
        v52 = *(v48 + 55);
        if (v52 >= 0)
        {
          v53 = (v48 + 32);
        }

        else
        {
          v53 = *(v48 + 32);
        }

        if (v52 >= 0)
        {
          v54 = *(v48 + 55);
        }

        else
        {
          v54 = *(v48 + 40);
        }

        if (v50 >= v54)
        {
          v55 = v54;
        }

        else
        {
          v55 = v50;
        }

        v56 = memcmp(v53, v49, v55);
        if (v56)
        {
          if (v56 < 0)
          {
            goto LABEL_126;
          }

LABEL_140:
          v51 = v48;
          v48 = *v48;
          if (!v48)
          {
LABEL_141:
            if (v51 == &v119)
            {
              goto LABEL_159;
            }

            v59 = v51[4];
            v58 = v51 + 4;
            v57 = v59;
            v60 = *(v58 + 23);
            if (v60 >= 0)
            {
              v61 = v58;
            }

            else
            {
              v61 = v57;
            }

            if (v60 >= 0)
            {
              v62 = *(v58 + 23);
            }

            else
            {
              v62 = v58[1];
            }

            if (v62 >= v50)
            {
              v63 = v50;
            }

            else
            {
              v63 = v62;
            }

            v64 = memcmp(v49, v61, v63);
            if (v64)
            {
              if ((v64 & 0x80000000) == 0)
              {
                goto LABEL_153;
              }

LABEL_159:
              if (v40 == 48)
              {
                v36 = v103;
                if (*(v39 + 47) < 0)
                {
                  std::string::__init_copy_ctor_external(&__srca, v39[3], v39[4]);
                  v39 = __p;
                  v38 = v106;
                }

                else
                {
                  __srca = *(v39 + 1);
                }
              }

              else
              {
                memset(&__srca, 0, sizeof(__srca));
                v36 = v103;
              }

              if (v38 != v39)
              {
                v127.__r_.__value_.__r.__words[0] = v39;
                v65 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v118, v39);
                if (*(v65 + 79) < 0)
                {
                  v66 = v65;
                  operator delete(v65[7]);
                  v65 = v66;
                  v36 = v103;
                }

                v47 = 0;
                *(v65 + 7) = __srca;
                goto LABEL_168;
              }

LABEL_275:
              __break(1u);
LABEL_276:
              std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
            }

            if (v50 < v62)
            {
              goto LABEL_159;
            }

LABEL_153:
            std::operator+<char>();
            v41 = SHIBYTE(v127.__r_.__value_.__r.__words[2]);
            if ((SHIBYTE(v127.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
            {
              v41 = v127.__r_.__value_.__l.__size_;
              v42 = v127.__r_.__value_.__r.__words[0];
              LODWORD(__srca.__r_.__value_.__l.__data_) = 5;
              if (v127.__r_.__value_.__l.__size_ > 0x7FFFFFFFFFFFFFF7)
              {
                goto LABEL_276;
              }
            }

            else
            {
              LODWORD(__srca.__r_.__value_.__l.__data_) = 5;
              v42 = &v127;
            }

            v36 = v103;
            if (v41 > 0x16)
            {
              operator new();
            }

            HIBYTE(__len_8) = v41;
            v45 = (&__srca.__r_.__value_.__r.__words[1] + v41);
            if (&__srca.__r_.__value_.__r.__words[1] <= v42 && v45 > v42)
            {
              goto LABEL_275;
            }

LABEL_110:
            if (v41)
            {
              memmove(&__srca.__r_.__value_.__r.__words[1], v42, v41);
            }

            v45->__r_.__value_.__s.__data_[0] = 0;
            *v110 = 0;
            v110[4] = 0;
            v110[6] = 0;
            *a3 = __srca.__r_.__value_.__l.__data_;
            *(a3 + 8) = *&__srca.__r_.__value_.__r.__words[1];
            *(a3 + 24) = __len_8;
            *&__srca.__r_.__value_.__r.__words[1] = 0uLL;
            __len_8 = 0;
            *(a3 + 32) = *v110;
            *(a3 + 35) = *&v110[3];
            *(a3 + 40) = 0;
            *(a3 + 120) = 0;
            if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v127.__r_.__value_.__l.__data_);
            }

            v47 = 1;
            goto LABEL_168;
          }
        }

        else
        {
          if (v54 >= v50)
          {
            goto LABEL_140;
          }

LABEL_126:
          v48 = *(v48 + 8);
          if (!v48)
          {
            goto LABEL_141;
          }
        }
      }
    }

    if (v40 == 48)
    {
      if (*(v39 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v104, v39[3], v39[4]);
      }

      else
      {
        v104 = *(v39 + 1);
      }
    }

    else
    {
      memset(&v104, 0, sizeof(v104));
    }

    if (v120)
    {
      LODWORD(__srca.__r_.__value_.__l.__data_) = 5;
      operator new();
    }

    v71 = SHIBYTE(v104.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v104.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v71 = v104.__r_.__value_.__l.__size_;
      if (!v104.__r_.__value_.__l.__size_)
      {
LABEL_211:
        LODWORD(__srca.__r_.__value_.__l.__data_) = 5;
        operator new();
      }

      memset(&v127, 0, sizeof(v127));
      v72 = v104.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (!*(&v104.__r_.__value_.__s + 23))
      {
        goto LABEL_211;
      }

      memset(&v127, 0, sizeof(v127));
      v72 = &v104;
    }

    webrtc::tokenize(v72, v71, 0x2Cu, &v127);
    if (v127.__r_.__value_.__r.__words[0] == v127.__r_.__value_.__l.__size_)
    {
      LODWORD(__srca.__r_.__value_.__l.__data_) = 5;
      operator new();
    }

    v73 = *(v127.__r_.__value_.__r.__words[0] + 23);
    if ((v73 & 0x8000000000000000) != 0)
    {
      v74 = *v127.__r_.__value_.__l.__data_;
      v73 = *(v127.__r_.__value_.__r.__words[0] + 8);
    }

    else
    {
      v74 = v127.__r_.__value_.__r.__words[0];
    }

    v75 = webrtc::string_to_number_internal::ParseSigned(v74, v73, 0xAuLL);
    if ((v76 & ((v75 + 0x80000000) >> 32 == 0)) != 0)
    {
      v77 = v75 | 0x100000000;
    }

    else
    {
      v77 = 0;
    }

    if ((v77 & 0x100000000) != 0)
    {
      operator new();
    }

    std::operator+<char>();
    v81 = v126;
    if ((v126 & 0x8000000000000000) != 0)
    {
      v82 = v124;
      v81 = v125;
      LODWORD(__srca.__r_.__value_.__l.__data_) = 5;
      if (v125 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_276;
      }
    }

    else
    {
      LODWORD(__srca.__r_.__value_.__l.__data_) = 5;
      v82 = &v124;
    }

    if (v81 > 0x16)
    {
      operator new();
    }

    HIBYTE(__len_8) = v81;
    v83 = (&__srca.__r_.__value_.__r.__words[1] + v81);
    if (&__srca.__r_.__value_.__r.__words[1] <= v82 && v83 > v82)
    {
      goto LABEL_275;
    }

    if (v81)
    {
      memmove(&__srca.__r_.__value_.__r.__words[1], v82, v81);
    }

    *v83 = 0;
    *v110 = 0;
    v110[4] = 0;
    v110[6] = 0;
    if (v126 < 0)
    {
      operator delete(v124);
    }

    v36 = v103;
    v84 = v127.__r_.__value_.__r.__words[0];
    if (v127.__r_.__value_.__r.__words[0])
    {
      v78 = v127.__r_.__value_.__l.__size_;
      v79 = v127.__r_.__value_.__r.__words[0];
      if (v127.__r_.__value_.__l.__size_ != v127.__r_.__value_.__r.__words[0])
      {
        do
        {
          v80 = *(v78 - 1);
          v78 -= 3;
          if (v80 < 0)
          {
            operator delete(*v78);
          }
        }

        while (v78 != v84);
        v79 = v127.__r_.__value_.__r.__words[0];
      }

      v127.__r_.__value_.__l.__size_ = v84;
      operator delete(v79);
    }

    if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v104.__r_.__value_.__l.__data_);
    }

    if (LODWORD(__srca.__r_.__value_.__l.__data_))
    {
      *a3 = __srca.__r_.__value_.__l.__data_;
      *(a3 + 8) = *&__srca.__r_.__value_.__r.__words[1];
      *(a3 + 24) = __len_8;
      *&__srca.__r_.__value_.__r.__words[1] = 0uLL;
      __len_8 = 0;
      *(a3 + 32) = *v110;
      *(a3 + 35) = *&v110[3];
      *(a3 + 40) = 0;
      v47 = 1;
      *(a3 + 120) = 0;
    }

    else
    {
      if (SHIBYTE(__len_8) < 0)
      {
        operator delete(__srca.__r_.__value_.__l.__size_);
      }

      v47 = 3;
    }

LABEL_168:
    v67 = __p;
    if (__p)
    {
      v68 = v106;
      v69 = __p;
      if (v106 != __p)
      {
        do
        {
          v70 = *(v68 - 1);
          v68 -= 3;
          if (v70 < 0)
          {
            operator delete(*v68);
          }
        }

        while (v68 != v67);
        v69 = __p;
      }

      v106 = v67;
      operator delete(v69);
    }

    if (v47 != 3 && v47)
    {
      goto LABEL_235;
    }

    v35 += 24;
  }

  while (v35 != v36);
  LOBYTE(v47) = 2;
LABEL_235:
  v85 = v111[0];
  if (v111[0])
  {
    v86 = v111[1];
    v87 = v111[0];
    if (v111[1] != v111[0])
    {
      do
      {
        v88 = *(v86 - 1);
        v86 -= 3;
        if (v88 < 0)
        {
          operator delete(*v86);
        }
      }

      while (v86 != v85);
      v87 = v111[0];
    }

    v111[1] = v85;
    operator delete(v87);
  }

  if ((v47 & 1) == 0)
  {
LABEL_247:
    *a3 = 0;
    *(a3 + 38) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 8) = 0;
    *(a3 + 29) = 0;
    webrtc::RidDescription::RidDescription((a3 + 40), &v113);
    *(a3 + 120) = 1;
  }

LABEL_248:
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v118, v119);
  v91 = v115;
  if (v115)
  {
    v92 = v115;
    if (v116 != v115)
    {
      v93 = v116 - 216;
      v94 = v116 - 216;
      v95 = v116 - 216;
      do
      {
        v96 = *v95;
        v95 -= 216;
        (*v96)(v94);
        v93 -= 216;
        v97 = v94 == v91;
        v94 = v95;
      }

      while (!v97);
      v92 = v115;
    }

    v116 = v91;
    operator delete(v92);
  }

  if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
  {
    v30 = v113.__r_.__value_.__r.__words[0];
LABEL_76:
    operator delete(v30);
  }

LABEL_21:
  v10 = v121;
  if (v121)
  {
    v11 = v122;
    v12 = v121;
    if (v122 != v121)
    {
      do
      {
        v13 = *(v11 - 1);
        v11 -= 3;
        if (v13 < 0)
        {
          operator delete(*v11);
        }
      }

      while (v11 != v10);
      v12 = v121;
    }

    v122 = v10;
    operator delete(v12);
  }
}

webrtc::SimulcastToSvcConverter *webrtc::SimulcastToSvcConverter::SimulcastToSvcConverter(webrtc::SimulcastToSvcConverter *this, const webrtc::VideoCodec *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 24) = 1;
  *(this + 7) = 0;
  *(this + 32) = 0;
  *(this + 36) = 0u;
  v3 = this + 36;
  *(this + 52) = 0u;
  *(this + 68) = 0u;
  *(this + 84) = 0u;
  *(this + 100) = 0u;
  *(this + 116) = 0u;
  *(this + 8) = 0u;
  *(this + 48) = 1;
  *(this + 60) = 0;
  *(this + 52) = 0;
  *(this + 68) = 0;
  *(this + 84) = 1;
  *(this + 104) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 120) = 1;
  *(this + 132) = 0;
  *(this + 124) = 0;
  *(this + 140) = 0;
  *(this + 9) = 0u;
  v4 = this + 144;
  *(this + 80) = 0;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 156) = 1;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 176) = 0;
  *(this + 192) = 1;
  *(this + 204) = 0;
  *(this + 196) = 0;
  *(this + 212) = 0;
  *(this + 228) = 1;
  *(this + 29) = 0;
  *(this + 30) = 0;
  *(this + 248) = 0;
  *(this + 264) = 1;
  *(this + 276) = 0;
  *(this + 268) = 0;
  *(this + 284) = 0;
  *(this + 300) = 1;
  *(this + 38) = 0;
  *(this + 39) = 0;
  *(this + 320) = 0;
  *(this + 81) = 0;
  *(this + 328) = 0;
  *(this + 42) = 0;
  *(this + 172) = 0;
  *(this + 352) = 0;
  *(this + 94) = 0;
  *(this + 380) = 0;
  *(this + 364) = 0;
  *(this + 356) = 0;
  *(this + 186) = 0;
  *(this + 48) = 0;
  *(this + 49) = 0;
  *(this + 50) = 0;
  v5 = memcpy(this, a2, 0x17DuLL);
  v6 = *(this + 48);
  v7 = *(this + 32);
  if (v6 == 3)
  {
    v8 = 2;
  }

  else
  {
    v8 = v6 == 2;
  }

  if (*(this + 32))
  {
    v9 = *(this + 32);
    do
    {
      v10 = *(v4 - 92);
      *v4 = *(v4 - 108);
      *(v4 + 1) = v10;
      v4[32] = *(v4 - 76);
      v4 += 36;
      --v9;
    }

    while (v9);
    v11 = v7 - 1;
  }

  else
  {
    v11 = -1;
  }

  v12 = &v3[36 * v11];
  v13 = *v12;
  v14 = *(v12 + 1);
  v3[32] = v12[32];
  *v3 = v13;
  *(v3 + 1) = v14;
  *(this + 366) = v7;
  *(this + 356) = *(this + 156);
  *(this + 92) = 0;
  *(this + 32) = 1;
  if (*(this + 373) == 1)
  {
    *(this + 373) = 0;
  }

  if (!v7)
  {
    return this;
  }

  v15 = 0;
  v16 = *(this + 49);
  while (1)
  {
    v18 = *(this + 50);
    if (v16 >= v18)
    {
      v23 = *(this + 48);
      v24 = 0x4EC4EC4EC4EC4EC5 * ((v16 - v23) >> 3) + 1;
      if (v24 > 0x276276276276276)
      {
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v25 = 0x4EC4EC4EC4EC4EC5 * ((v18 - v23) >> 3);
      if (2 * v25 > v24)
      {
        v24 = 2 * v25;
      }

      if (v25 >= 0x13B13B13B13B13BLL)
      {
        v26 = 0x276276276276276;
      }

      else
      {
        v26 = v24;
      }

      if (v26)
      {
        if (v26 <= 0x276276276276276)
        {
          operator new();
        }
      }

      else
      {
LABEL_32:
        __break(1u);
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    if (!v16)
    {
      goto LABEL_32;
    }

    (*(*(&off_279E953F8 + v8) + 1))(v5);
    *(v16 + 2) = 0;
    *(v16 + 12) = 0;
    v16[2] = 0;
    v16[3] = 0;
    *(v16 + 96) = 0;
    LODWORD(v30) = 0;
    BYTE4(v30) = 0;
    v31 = 0;
    LOBYTE(v32) = 0;
    v33 = 0;
    LOBYTE(v34) = 0;
    v35 = 0;
    LOBYTE(v36) = 0;
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
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    if (v6)
    {
      v31 = 1;
      v30 = 42949672970000;
      if (v6 != 1)
      {
        v33 = 1;
        v32 = 10000;
        LODWORD(v30) = 20000;
        if (v6 != 2)
        {
          v35 = 1;
          v34 = 10000;
          LODWORD(v30) = 30000;
          if (v6 != 3)
          {
            v37 = 1;
            v36 = 10000;
            LODWORD(v30) = 40000;
            if (v6 != 4)
            {
              break;
            }
          }
        }
      }
    }

    v17 = *v16;
    v16 += 13;
    v5 = (*(*v17 + 32))(v17, &v30);
    *(this + 49) = v16;
    if (++v15 == v7)
    {
      return this;
    }
  }

  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/video_bitrate_allocation.cc", 33, "temporal_index < kMaxTemporalStreams", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v19, v20, v21, v22, 4);
  return webrtc::SimulcastToSvcConverter::EncodeStarted(v27, v28);
}

void webrtc::SimulcastToSvcConverter::EncodeStarted(webrtc::SimulcastToSvcConverter *this, BOOL a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = *MEMORY[0x277D85DE8];
  v8 = *(this + 48);
  v9 = *(this + 49);
  if (v9 != v8)
  {
    v11 = 0;
    v12 = 0x4EC4EC4EC4EC4EC5 * ((v9 - v8) >> 3);
    if (v12 <= 1)
    {
      v12 = 1;
    }

    v13 = 96;
    do
    {
      v14 = *(v8 + v13) ^ 1 | v11 & 1;
      v11 = (*(v8 + v13) ^ 1) & 1 | v11 & 1;
      v13 += 104;
      --v12;
    }

    while (v12);
    v15 = 0;
    v16 = v14;
    while (1)
    {
      v18 = (v8 + 104 * v15);
      if (v18[96] == 1 && v16 != 0)
      {
        break;
      }

LABEL_22:
      v20 = 0x4EC4EC4EC4EC4EC5 * ((v9 - v8) >> 3);
      if (v20 <= v15)
      {
        goto LABEL_41;
      }

      v21 = (v8 + 104 * v15);
      v21[96] = 1;
      (*(**v21 + 40))(&__p);
      v22 = __p;
      v20 = v32 - __p;
      if (v32 - __p != 88)
      {
        goto LABEL_42;
      }

      v20 = *(this + 48);
      if (0x4EC4EC4EC4EC4EC5 * ((*(this + 49) - v20) >> 3) <= v15)
      {
LABEL_41:
        __break(1u);
LABEL_42:
        webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/svc/simulcast_to_svc_converter.cc", 87, "configs.size() == 1u", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int> const&)::t, a5, a6, a7, a8, 0x2E8BA2E8BA2E8BA3 * (v20 >> 3));
      }

      v23 = v20 + 104 * v15 + 8;
      *v23 = *__p;
      if (v23 != v22)
      {
        v26 = v22[3];
        v24 = (v22 + 3);
        v25 = v26;
        v27 = *(v24 - 1);
        if (v27)
        {
          v28 = v25;
        }

        else
        {
          v28 = v24;
        }

        absl::inlined_vector_internal::Storage<webrtc::CodecBufferUsage,8ul,std::allocator<webrtc::CodecBufferUsage>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::CodecBufferUsage>,webrtc::CodecBufferUsage const*>>((v23 + 16), v28, v27 >> 1);
      }

      v29 = __p;
      if (__p)
      {
        v30 = v32;
        v17 = __p;
        if (v32 != __p)
        {
          do
          {
            if (*(v30 - 9))
            {
              operator delete(*(v30 - 8));
            }

            v30 -= 11;
          }

          while (v30 != v29);
          v17 = __p;
        }

        v32 = v29;
        operator delete(v17);
      }

      ++v15;
      v8 = *(this + 48);
      v9 = *(this + 49);
      if (v15 >= 0x4EC4EC4EC4EC4EC5 * ((v9 - v8) >> 3))
      {
        return;
      }
    }

    (*(**v18 + 48))(&v33);
    if (v42)
    {
      operator delete(v42);
    }

    if (v40)
    {
      operator delete(v41);
      if ((v38 & 1) == 0)
      {
LABEL_18:
        if ((v36 & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_38;
      }
    }

    else if ((v38 & 1) == 0)
    {
      goto LABEL_18;
    }

    operator delete(v39);
    if ((v36 & 1) == 0)
    {
LABEL_19:
      if ((v34 & 1) == 0)
      {
LABEL_21:
        v8 = *(this + 48);
        v9 = *(this + 49);
        goto LABEL_22;
      }

LABEL_20:
      operator delete(v35);
      goto LABEL_21;
    }

LABEL_38:
    operator delete(v37);
    if ((v34 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }
}

BOOL webrtc::SimulcastToSvcConverter::ConvertFrame(webrtc::SimulcastToSvcConverter *this, webrtc::EncodedImage *a2, webrtc::CodecSpecificInfo *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = *MEMORY[0x277D85DE8];
  v9 = *(a2 + 23);
  if ((v9 & 0x100000000) == 0)
  {
    LODWORD(v9) = 0;
  }

  *(a2 + 160) = 1;
  *(a2 + 39) = v9;
  *(a2 + 46) = 0;
  *(a2 + 188) = 0;
  *(a3 + 1632) = 1;
  if (*(a3 + 1993) == 1)
  {
    if (*(a3 + 1992) >= 0x22u)
    {
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/svc/scalability_mode_util.cc", 309, "index < kNumScalabilityModes", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, a5, a6, a7, a8, *(a3 + 1992));
      return webrtc::SimulcastToSvcConverter::IsConfigSupported(v31, v32);
    }

    if (v10 <= 2)
    {
      *(a3 + 996) = v10 | 0x100;
    }
  }

  *(a3 + 24) = xmmword_273B91FB0;
  *(a3 + 8) = 1;
  v11 = v9;
  if (*(a3 + 11))
  {
    *(a3 + 21) = *(a3 + v9 + 21);
    *(a3 + 29) = *(a3 + v9 + 29);
  }

  v12 = *(this + 48);
  if (0x4EC4EC4EC4EC4EC5 * ((*(this + 49) - v12) >> 3) <= v11)
  {
    goto LABEL_65;
  }

  v13 = (v12 + 104 * v11);
  v14 = *v13;
  if (*(a3 + 1848) != 1)
  {
    goto LABEL_27;
  }

  result = 0;
  *(v13 + 96) = 0;
  if ((*(a2 + 24) & 0x100000000) != 0)
  {
    v16 = *(a2 + 24);
  }

  else
  {
    v16 = 0;
  }

  if (v16 == 255)
  {
    v16 = 0;
  }

  if (*(v13 + 5) == v16)
  {
    (*(*v14 + 48))(&v33, v14, v13 + 1);
    v17 = (a3 + 1640);
    if (*(a3 + 1848) == 1)
    {
      webrtc::GenericFrameInfo::operator=(v17, &v33);
      v18 = __p;
      if (!__p)
      {
LABEL_22:
        if (v42[0])
        {
          operator delete(v42[1]);
          if ((BYTE8(v40) & 1) == 0)
          {
LABEL_24:
            if ((v38 & 1) == 0)
            {
              goto LABEL_25;
            }

LABEL_51:
            operator delete(v39);
            if (v34)
            {
LABEL_26:
              operator delete(v35);
            }

LABEL_27:
            if (*(a3 + 1984) != 1)
            {
              return 1;
            }

            v19 = *(a3 + 240);
            if (v11 >= v19 >> 1)
            {
LABEL_65:
              __break(1u);
            }

            v20 = (a3 + 1928);
            if (v19)
            {
              v21 = *(a3 + 241);
            }

            else
            {
              v21 = a3 + 1928;
            }

            v22 = *&v21[8 * v11];
            (*(*v14 + 24))(&v33, v14);
            if (*(a3 + 1984))
            {
              webrtc::FrameDependencyStructure::operator=(a3 + 1856, &v33);
              v23 = v42[0];
              if (v42[0])
              {
                v24 = v42[1];
                v25 = v42[0];
                if (v42[1] == v42[0])
                {
LABEL_54:
                  v42[1] = v23;
                  operator delete(v25);
                  if (v39)
                  {
LABEL_55:
                    operator delete(v40);
                    if (v35)
                    {
LABEL_56:
                      operator delete(v36[0]);
                      if ((*(a3 + 1984) & 1) == 0)
                      {
                        goto LABEL_65;
                      }

LABEL_57:
                      v29 = (a3 + 1920);
                      absl::inlined_vector_internal::Storage<webrtc::RenderResolution,4ul,std::allocator<webrtc::RenderResolution>>::Resize<absl::inlined_vector_internal::DefaultValueAdapter<std::allocator<webrtc::RenderResolution>>>(a3 + 240, 1uLL);
                      if ((*(a3 + 1984) & 1) != 0 && *v29 > 1uLL)
                      {
                        if (*v29)
                        {
                          v30 = *v20;
                        }

                        else
                        {
                          v30 = (a3 + 1928);
                        }

                        *v30 = v22;
                        return 1;
                      }

                      goto LABEL_65;
                    }

LABEL_47:
                    if ((*(a3 + 1984) & 1) == 0)
                    {
                      goto LABEL_65;
                    }

                    goto LABEL_57;
                  }

LABEL_46:
                  if (v35)
                  {
                    goto LABEL_56;
                  }

                  goto LABEL_47;
                }

                while (1)
                {
                  if (*(v24 - 3))
                  {
                    operator delete(*(v24 - 2));
                    if ((*(v24 - 6) & 1) == 0)
                    {
LABEL_39:
                      if (*(v24 - 12))
                      {
                        goto LABEL_43;
                      }

                      goto LABEL_36;
                    }
                  }

                  else if ((*(v24 - 6) & 1) == 0)
                  {
                    goto LABEL_39;
                  }

                  operator delete(*(v24 - 5));
                  if (*(v24 - 12))
                  {
LABEL_43:
                    operator delete(*(v24 - 11));
                  }

LABEL_36:
                  v24 -= 13;
                  if (v24 == v23)
                  {
                    v25 = v42[0];
                    goto LABEL_54;
                  }
                }
              }
            }

            else
            {
              *(a3 + 232) = v33;
              *(a3 + 466) = v34;
              *(a3 + 234) = v35;
              v26 = v39;
              *(a3 + 239) = v38;
              v27 = v37;
              *(a3 + 1880) = *v36;
              *(a3 + 1896) = v27;
              *(a3 + 240) = v26;
              v28 = *v41;
              *v20 = v40;
              *(a3 + 1944) = v28;
              v35 = 0;
              v39 = 0;
              *(a3 + 1960) = *v42;
              *(a3 + 247) = v43;
              v42[1] = 0;
              v43 = 0;
              v42[0] = 0;
              *(a3 + 1984) = 1;
            }

            if (v39)
            {
              goto LABEL_55;
            }

            goto LABEL_46;
          }
        }

        else if ((BYTE8(v40) & 1) == 0)
        {
          goto LABEL_24;
        }

        operator delete(v41[0]);
        if ((v38 & 1) == 0)
        {
LABEL_25:
          if ((v34 & 1) == 0)
          {
            goto LABEL_27;
          }

          goto LABEL_26;
        }

        goto LABEL_51;
      }
    }

    else
    {
      webrtc::GenericFrameInfo::GenericFrameInfo(v17, &v33);
      *(a3 + 1848) = 1;
      v18 = __p;
      if (!__p)
      {
        goto LABEL_22;
      }
    }

    operator delete(v18);
    goto LABEL_22;
  }

  return result;
}

BOOL webrtc::SimulcastToSvcConverter::IsConfigSupported(webrtc::SimulcastToSvcConverter *this, const VideoCodec *a2)
{
  v2 = *(this + 32);
  if (v2 >= 2)
  {
    v3 = *(this + 2);
    v4 = this + 36 * (v2 - 1);
    v6 = *(v4 + 9);
    v5 = v4 + 36;
    if (v6 == v3)
    {
      v7 = *(this + 3);
      if (*(v5 + 1) == v7)
      {
        v8 = (this + 40);
        v9 = *(this + 32);
        while (*v8 * v3 == *(v8 - 1) * v7)
        {
          v8 += 9;
          if (!--v9)
          {
            v10 = *(this + 9);
            v11 = v2 - 1;
            v12 = (this + 72);
            v13 = v2 - 1;
            while (1)
            {
              v15 = *v12;
              v12 += 9;
              v14 = v15;
              if (v15 < v10)
              {
                break;
              }

              v10 = v14;
              if (!--v13)
              {
                v16 = *(this + 11);
                v17 = (this + 80);
                v18 = v2 - 1;
                while (1)
                {
                  v19 = v16;
                  v16 = *v17;
                  if (vabds_f32(*v17, v19) > 0.000000001)
                  {
                    break;
                  }

                  v17 += 9;
                  if (!--v18)
                  {
                    v20 = this + 84;
                    v21 = ((v2 - 1) & ~((v2 - 1) >> 31)) + 1;
                    while (--v21)
                    {
                      v22 = *(v20 - 36);
                      v23 = *v20;
                      v20 += 36;
                      if (v22 != v23)
                      {
                        return 0;
                      }
                    }

                    for (i = this + 68; i[36] != 1 || *i != 1 || *(i + 1) == 2 * *(i - 8) && *(i + 2) == 2 * *(i - 7); i += 36)
                    {
                      if (!--v11)
                      {
                        v26 = 0;
                        v27 = this + 68;
                        v28 = -1;
                        v29 = -1;
                        do
                        {
                          v31 = *v27;
                          v27 += 36;
                          v30 = v31;
                          if ((v31 & (v29 < 0)) != 0)
                          {
                            v29 = v11;
                          }

                          if (v30)
                          {
                            v28 = v11;
                          }

                          v26 += v30;
                          ++v11;
                        }

                        while (v2 != v11);
                        return v26 == v28 - v29 + 1;
                      }
                    }

                    return 0;
                  }
                }

                return 0;
              }
            }

            return 0;
          }
        }
      }
    }
  }

  return 0;
}

BOOL webrtc::SimulcastUtility::ValidSimulcastParameters(webrtc::SimulcastUtility *this, const VideoCodec *a2)
{
  v2 = *(this + 2);
  v3 = (this + 36 * a2);
  if (*v3 != v2)
  {
    return 0;
  }

  v4 = *(this + 3);
  if (v3[1] != v4)
  {
    return 0;
  }

  if (a2 >= 1)
  {
    v5 = (this + 40);
    v6 = a2;
    while (*v5 * v2 == *(v5 - 1) * v4)
    {
      v5 += 9;
      if (!--v6)
      {
        if (a2 == 1)
        {
          goto LABEL_8;
        }

        v12 = *(this + 9);
        v13 = (this + 72);
        v14 = a2 - 1;
        v15 = v14;
        while (1)
        {
          v17 = *v13;
          v13 += 9;
          v16 = v17;
          if (v17 < v12)
          {
            return 0;
          }

          v12 = v16;
          if (!--v15)
          {
            v18 = *(this + 11);
            v19 = (this + 80);
            while (1)
            {
              v20 = v18;
              v18 = *v19;
              if (vabds_f32(*v19, v20) > 0.000000001)
              {
                return 0;
              }

              v19 += 9;
              if (!--v14)
              {
                goto LABEL_8;
              }
            }
          }
        }
      }
    }

    return 0;
  }

LABEL_8:
  v7 = this + 48;
  v8 = ((a2 - 1) & ~((a2 - 1) >> 31)) + 1;
  do
  {
    result = --v8 == 0;
    if (!v8)
    {
      break;
    }

    v10 = *v7;
    v11 = v7[36];
    v7 += 36;
  }

  while (v10 == v11);
  return result;
}

float webrtc::SimulcastUtility::NumberOfTemporalLayers(webrtc::SimulcastUtility *this, const webrtc::VideoCodec *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 186);
  if ((v8 & 0x100) != 0 && v8 >= 0x22u)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/svc/scalability_mode_util.cc", 309, "index < kNumScalabilityModes", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, a5, a6, a7, a8, v8);
    return webrtc::SincResampler::Convolve_C(v9, v10, v11, v12, v13);
  }

  return result;
}

float webrtc::SincResampler::Convolve_C(webrtc::SincResampler *this, const float *a2, const float *a3, const float *a4, double a5)
{
  v5 = *(this + 1);
  v6 = ((*this * *a2) + 0.0) + (v5 * a2[1]);
  v7 = ((*this * *a3) + 0.0) + (v5 * a3[1]);
  v8 = *(this + 2);
  v9 = *(this + 3);
  v10 = (v6 + (v8 * a2[2])) + (v9 * a2[3]);
  v11 = (v7 + (v8 * a3[2])) + (v9 * a3[3]);
  v12 = *(this + 4);
  v13 = *(this + 5);
  v14 = (v10 + (v12 * a2[4])) + (v13 * a2[5]);
  v15 = (v11 + (v12 * a3[4])) + (v13 * a3[5]);
  v16 = *(this + 6);
  v17 = *(this + 7);
  v18 = (v14 + (v16 * a2[6])) + (v17 * a2[7]);
  v19 = (v15 + (v16 * a3[6])) + (v17 * a3[7]);
  v20 = *(this + 8);
  v21 = *(this + 9);
  v22 = (v18 + (v20 * a2[8])) + (v21 * a2[9]);
  v23 = (v19 + (v20 * a3[8])) + (v21 * a3[9]);
  v24 = *(this + 10);
  v25 = *(this + 11);
  v26 = (v22 + (v24 * a2[10])) + (v25 * a2[11]);
  v27 = (v23 + (v24 * a3[10])) + (v25 * a3[11]);
  v28 = *(this + 12);
  v29 = *(this + 13);
  v30 = (v26 + (v28 * a2[12])) + (v29 * a2[13]);
  v31 = (v27 + (v28 * a3[12])) + (v29 * a3[13]);
  v32 = *(this + 14);
  v33 = *(this + 15);
  v34 = (v30 + (v32 * a2[14])) + (v33 * a2[15]);
  v35 = (v31 + (v32 * a3[14])) + (v33 * a3[15]);
  v36 = *(this + 16);
  v37 = *(this + 17);
  v38 = (v34 + (v36 * a2[16])) + (v37 * a2[17]);
  v39 = (v35 + (v36 * a3[16])) + (v37 * a3[17]);
  v40 = *(this + 18);
  v41 = *(this + 19);
  v42 = (v38 + (v40 * a2[18])) + (v41 * a2[19]);
  v43 = (v39 + (v40 * a3[18])) + (v41 * a3[19]);
  v44 = *(this + 20);
  v45 = *(this + 21);
  v46 = (v42 + (v44 * a2[20])) + (v45 * a2[21]);
  v47 = (v43 + (v44 * a3[20])) + (v45 * a3[21]);
  v48 = *(this + 22);
  v49 = *(this + 23);
  v50 = (v46 + (v48 * a2[22])) + (v49 * a2[23]);
  v51 = (v47 + (v48 * a3[22])) + (v49 * a3[23]);
  v52 = *(this + 24);
  v53 = *(this + 25);
  v54 = (v50 + (v52 * a2[24])) + (v53 * a2[25]);
  v55 = (v51 + (v52 * a3[24])) + (v53 * a3[25]);
  v56 = *(this + 26);
  v57 = *(this + 27);
  return ((((((v55 + (v56 * a3[26])) + (v57 * a3[27])) + (*(this + 28) * a3[28])) + (*(this + 29) * a3[29])) + (*(this + 30) * a3[30])) + (*(this + 31) * a3[31])) * a5 + (1.0 - a5) * ((((((v54 + (v56 * a2[26])) + (v57 * a2[27])) + (*(this + 28) * a2[28])) + (*(this + 29) * a2[29])) + (*(this + 30) * a2[30])) + (*(this + 31) * a2[31]));
}

void webrtc::SincResampler::SincResampler(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *a1 = &unk_28829FC08;
  *(a1 + 8) = a4;
  *(a1 + 32) = a3;
  *(a1 + 40) = a2;
  *(a1 + 56) = a2 + 32;
  v5 = malloc_type_malloc(0x10A7uLL, 0x100004000313F17uLL);
  if (!v5)
  {
    goto LABEL_31;
  }

  v10 = (v5 + 39) & 0xFFFFFFFFFFFFFFE0;
  *(v10 - 8) = v5;
  *(a1 + 64) = v10;
  v11 = malloc_type_malloc(0x10A7uLL, 0x100004000313F17uLL);
  if (!v11)
  {
    goto LABEL_31;
  }

  v12 = (v11 + 39) & 0xFFFFFFFFFFFFFFE0;
  *(v12 - 8) = v11;
  *(a1 + 72) = v12;
  v13 = malloc_type_malloc(0x10A7uLL, 0x100004000313F17uLL);
  if (!v13)
  {
    goto LABEL_31;
  }

  v14 = (v13 + 39) & 0xFFFFFFFFFFFFFFE0;
  *(v14 - 8) = v13;
  *(a1 + 80) = v14;
  v15 = 4 * *(a1 + 56);
  if (v15)
  {
    v16 = malloc_type_malloc(v15 + 39, 0x100004000313F17uLL);
    if (v16)
    {
      v17 = v16;
      v18 = ((v16 + 39) & 0xFFFFFFFFFFFFFFE0);
      *(v18 - 1) = v17;
      v19 = 4 * *(a1 + 56);
      goto LABEL_8;
    }

LABEL_31:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/memory/aligned_malloc.cc", 66, "memory_pointer", "\t", v6, v7, v8, v9, "Couldn't allocate memory in AlignedMalloc");
    webrtc::SincResampler::~SincResampler(v52);
    return;
  }

  v19 = 0;
  v18 = 0;
LABEL_8:
  *(a1 + 112) = v18;
  *(a1 + 120) = v18 + 8;
  *(a1 + 88) = v18;
  *(a1 + 96) = webrtc::SincResampler::Convolve_C;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  bzero(v18, v19);
  v20 = *(a1 + 88) + 64;
  *(a1 + 104) = v20;
  v21 = v20 + 4 * *(a1 + 40);
  v22 = v21 - 128;
  v21 -= 64;
  *(a1 + 128) = v22;
  *(a1 + 136) = v21;
  *(a1 + 48) = (v21 - *(a1 + 120)) >> 2;
  bzero(*(a1 + 64), 0x1080uLL);
  bzero(*(a1 + 72), 0x1080uLL);
  bzero(*(a1 + 80), 0x1080uLL);
  v24 = *(a1 + 8);
  if (v24 <= 1.0)
  {
    v25 = 0.9;
  }

  else
  {
    v25 = 1.0 / v24 * 0.9;
  }

  v26 = 0;
  v28 = *(a1 + 72);
  v27 = *(a1 + 80);
  v29 = *(a1 + 64);
  v32 = (v27 - v28) < 8 || (v29 - v28) < 8 || (v29 - v27) < 8;
  v72 = v25;
  v60 = vdupq_lane_s64(*&v25, 0);
  v58 = vdupq_n_s64(0x401921FB54442D18uLL);
  v59 = vdupq_n_s64(0x400921FB54442D18uLL);
  __asm { FMOV            V0.2D, #-0.5 }

  v56 = _Q0;
  v57 = vdupq_n_s64(0x3FDAE147AE147AE1uLL);
  v54 = vdupq_n_s64(0x3FB47AE147AE147BuLL);
  v55 = vdupq_n_s64(0x402921FB54442D18uLL);
  v53 = vdupq_n_s64(2uLL);
  do
  {
    *v23.i32 = vcvts_n_f32_u64(v26, 5uLL);
    v37 = 0;
    if (v32)
    {
      v70 = v23;
      do
      {
        v39 = ((v37 - 16) - *v23.i32) * 3.14159265;
        *(v28 + 4 * v37) = v39;
        v40 = ((v37 - *v23.i32) * 0.03125);
        v41 = cos(v40 * 6.28318531) * -0.5 + 0.42;
        v42 = v41 + cos(v40 * 12.5663706) * 0.08;
        *(v27 + 4 * v37) = v42;
        v43 = v72;
        if (v39 != 0.0)
        {
          v43 = sin(v72 * v39) / v39;
        }

        v38 = v43 * v42;
        *(v29 + 4 * v37++) = v38;
        v23 = v70;
      }

      while (v37 != 32);
    }

    else
    {
      v44 = vdup_lane_s32(*v23.i8, 0);
      v23 = xmmword_273B92130;
      v45 = 0x100000000;
      do
      {
        v71 = v23;
        v46 = vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(vsub_f32(vcvt_f32_s32(vadd_s32(v45, 0xF0000000FLL)), v44)), v59));
        *(v28 + v37) = v46;
        v68 = vcvtq_f64_f32(vmul_f32(vsub_f32(vcvt_f32_f64(vcvtq_f64_u64(v23)), v44), 0x3D0000003D000000));
        v63 = vmulq_f64(v68, v58);
        v66 = cos(v63.f64[1]);
        v47.f64[0] = cos(v63.f64[0]);
        v47.f64[1] = v66;
        v67 = vmlaq_f64(v57, v56, v47);
        v64 = vmulq_f64(v68, v55);
        v68.f64[0] = cos(v64.f64[1]);
        v48.f64[0] = cos(v64.f64[0]);
        v48.f64[1] = v68.f64[0];
        *&v48.f64[0] = vcvt_f32_f64(vmlaq_f64(v67, v54, v48));
        *(v27 + v37) = v48.f64[0];
        v49 = vcvtq_f64_f32(*&v48.f64[0]);
        *&v48.f64[0] = vceqz_f32(v46);
        v50.i64[0] = SLODWORD(v48.f64[0]);
        v50.i64[1] = SHIDWORD(v48.f64[0]);
        v69 = v49;
        v65 = vcvtq_f64_f32(v46);
        __x = vmulq_n_f64(v65, v72);
        v62 = sin(__x.f64[1]);
        v51.f64[0] = sin(__x.f64[0]);
        v51.f64[1] = v62;
        *(v29 + v37) = vcvt_f32_f64(vmulq_f64(vbslq_s8(v50, v60, vdivq_f64(v51, v65)), v69));
        v23 = vaddq_s64(v71, v53);
        v45 = vadd_s32(v45, 0x200000002);
        v37 += 8;
      }

      while (v37 != 128);
    }

    ++v26;
    v29 += 128;
    v27 += 128;
    v28 += 128;
  }

  while (v26 != 33);
}

void webrtc::SincResampler::~SincResampler(webrtc::SincResampler *this)
{
  *this = &unk_28829FC08;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    free(*(v2 - 8));
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    free(*(v3 - 8));
  }

  v4 = *(this + 9);
  *(this + 9) = 0;
  if (v4)
  {
    free(*(v4 - 8));
  }

  v5 = *(this + 8);
  *(this + 8) = 0;
  if (v5)
  {
    free(*(v5 - 8));
  }
}

{
  *this = &unk_28829FC08;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    free(*(v2 - 8));
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    free(*(v3 - 8));
  }

  v4 = *(this + 9);
  *(this + 9) = 0;
  if (v4)
  {
    free(*(v4 - 8));
  }

  v5 = *(this + 8);
  *(this + 8) = 0;
  if (v5)
  {
    free(*(v5 - 8));
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::SincResampler::Resample(webrtc::SincResampler *this, uint64_t a2, float *a3)
{
  v4 = a2;
  if (!a2 || (*(this + 24) & 1) != 0)
  {
    if (!a2)
    {
      return;
    }
  }

  else
  {
    (*(**(this + 4) + 16))(*(this + 4), *(this + 5), *(this + 13));
    *(this + 24) = 1;
  }

  v6 = *(this + 1);
  v7 = *(this + 8);
  while (1)
  {
    v18 = *(this + 6);
    v19 = *(this + 2);
    v20 = vcvtpd_s64_f64((v18 - v19) / v6);
    if (v20 >= 1)
    {
      break;
    }

LABEL_6:
    *(this + 2) = v19 - v18;
    v8 = *(this + 14);
    v9 = *(this + 16);
    v10 = v9[7];
    v12 = v9[4];
    v11 = v9[5];
    v8[6] = v9[6];
    v8[7] = v10;
    v8[4] = v12;
    v8[5] = v11;
    v13 = *v9;
    v14 = v9[1];
    v15 = v9[3];
    v8[2] = v9[2];
    v8[3] = v15;
    *v8 = v13;
    v8[1] = v14;
    v16 = *(this + 13);
    v17 = *(this + 5);
    if (v16 == *(this + 15))
    {
      v25 = *(this + 11) + 128;
      *(this + 13) = v25;
      v26 = v25 + 4 * v17;
      v27 = v26 - 128;
      v26 -= 64;
      *(this + 16) = v27;
      *(this + 17) = v26;
      *(this + 6) = (v26 - v16) >> 2;
    }

    (*(**(this + 4) + 16))(*(this + 4));
  }

  v21 = v20 + 1;
  while (1)
  {
    v22 = v19;
    v23 = v19 - v19;
    v24 = vcvtd_n_s64_f64(v23, 5uLL);
    *a3 = (*(this + 12))(*(this + 14) + 4 * v22, v7 + (v24 << 7), v7 + (v24 << 7) + 128, v23 * 32.0 - v24);
    v19 = v6 + *(this + 2);
    *(this + 2) = v19;
    if (!--v4)
    {
      break;
    }

    ++a3;
    if (--v21 <= 1)
    {
      v18 = *(this + 6);
      goto LABEL_6;
    }
  }
}

void webrtc::SmoothingFilterImpl::AddSample(webrtc::SmoothingFilterImpl *this, float a2)
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

  v5 = v4 / 1000000;
  if (*(this + 32))
  {
    webrtc::SmoothingFilterImpl::ExtrapolateLastSample(this, v5);
  }

  else
  {
    *(this + 12) = a2;
    *(this + 3) = v5 + *(this + 2);
    *(this + 32) = 1;
    *(this + 7) = v5;
  }

  *(this + 10) = a2;
}

void webrtc::SmoothingFilterImpl::ExtrapolateLastSample(webrtc::SmoothingFilterImpl *this, uint64_t a2)
{
  if (*(this + 32))
  {
    v4 = *(this + 3);
    v5 = a2 - v4;
    if (a2 <= v4)
    {
      v8 = *(this + 2);
      if (v8)
      {
        if (v8 == 1)
        {
          v7 = exp((*(this + 7) - a2));
        }

        else
        {
          v9 = *(this + 3);
          v10 = powf(v9, (*(this + 7) - v4));
          v11 = powf(v9, v5);
          v7 = expf(-(v10 - v11) / *(this + 4));
        }
      }

      else
      {
        v7 = 0.0;
      }
    }

    else
    {
      v6 = *(this + 7);
      if (v6 < v4)
      {
        webrtc::SmoothingFilterImpl::ExtrapolateLastSample(this, v4);
        v6 = *(this + 7);
      }

      v7 = powf(*(this + 11), (a2 - v6));
    }

    *(this + 12) = ((1.0 - v7) * *(this + 10)) + (v7 * *(this + 12));
    *(this + 7) = a2;
  }

  else
  {
    __break(1u);
  }
}

uint64_t webrtc::SmoothingFilterImpl::GetAverage(webrtc::SmoothingFilterImpl *this)
{
  if (*(this + 32) != 1)
  {
    return 0;
  }

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

  webrtc::SmoothingFilterImpl::ExtrapolateLastSample(this, v2 / 1000000);
  return *(this + 12) | 0x100000000;
}

uint64_t webrtc::SmoothingFilterImpl::SetTimeConstantMs(webrtc::SmoothingFilterImpl *this, int a2)
{
  if (*(this + 32) != 1 || *(this + 7) < *(this + 3))
  {
    return 0;
  }

  if (a2)
  {
    *(this + 11) = expf(-1.0 / a2);
  }

  else
  {
    *(this + 11) = 0;
  }

  return 1;
}

uint64_t webrtc::Socket::RecvFrom(uint64_t a1, uint64_t a2)
{
  v10 = -1;
  v3 = *(a2 + 96);
  v4 = *(v3 + 8);
  if (!(v4 >> 16))
  {
    operator new[]();
  }

  result = (*(*a1 + 72))(a1, *(v3 + 16), v4, a2 + 16, &v10);
  v6 = *(a2 + 96);
  v7 = result & ~(result >> 31);
  if (v6[1] < v7)
  {
    operator new[]();
  }

  *v6 = v7;
  v8 = v10;
  if (result >= 1 && v10 != -1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      *(a2 + 8) = 1;
    }

    *a2 = v8;
  }

  return result;
}

uint64_t webrtc::BufferedReadAdapter::Send(webrtc::BufferedReadAdapter *this, const void *a2)
{
  if (*(this + 448) == 1)
  {
    (*(*this + 120))(this, 35);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v4 = *(**(this + 52) + 48);

    return v4();
  }
}

uint64_t webrtc::BufferedReadAdapter::Recv(webrtc::BufferedReadAdapter *this, char *__dst, size_t a3, uint64_t *a4)
{
  if (*(this + 448) == 1)
  {
    (*(*this + 120))(this, 35, a3, a4);
    return 0xFFFFFFFFLL;
  }

  v5 = *(this + 55);
  if (v5)
  {
    if (v5 >= a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = *(this + 55);
    }

    memcpy(__dst, *(this + 53), v8);
    v11 = this;
    v12 = *(this + 55);
    *(this + 55) = v12 - v8;
    if (v12 != v8)
    {
      memmove(*(this + 53), (*(this + 53) + v8), v12 - v8);
      v11 = this;
    }

    LODWORD(result) = (*(**(v11 + 52) + 64))(*(v11 + 52), &__dst[v8], a3 - v8, a4);
    if ((result & 0x80000000) == 0)
    {
      return (result + v8);
    }
  }

  else
  {
    v8 = 0;
    LODWORD(result) = (*(**(this + 52) + 64))(*(this + 52), __dst, a3, a4);
    if ((result & 0x80000000) == 0)
    {
      return (result + v8);
    }
  }

  if (v8)
  {
    return v8;
  }

  else
  {
    return result;
  }
}

void webrtc::BufferedReadAdapter::OnReadEvent(webrtc::BufferedReadAdapter *this, webrtc::Socket *a2)
{
  if (*(this + 448))
  {
    v4 = *(this + 54);
    v3 = *(this + 55);
    if (v3 >= v4)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v5, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/socket_adapters.cc");
      }

      v3 = 0;
      *(this + 55) = 0;
      v4 = *(this + 54);
    }

    v12 = (*(**(this + 52) + 64))(*(this + 52), *(this + 53) + v3, v4 - v3, 0);
    if ((v12 & 0x80000000) != 0)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        v18 = *__error();
        v26 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/socket_adapters.cc";
        v27 = 873;
        v28 = 1;
        v29 = v18;
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)14,webrtc::webrtc_logging_impl::LogMetadataErr>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)14,webrtc::webrtc_logging_impl::LogMetadataErr>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v19, v20, v21, v22, v23, v24, v25, &v26);
      }
    }

    else
    {
      *(this + 55) += v12;
      v13 = *(this + 53);
      v14 = *(*this + 184);

      v14(this, v13, this + 440);
    }
  }

  else
  {
    pthread_mutex_lock((this + 24));
    v15 = *(this + 12);
    for (*(this + 14) = v15; v15 != (this + 88); v15 = *(this + 14))
    {
      v17 = v15[2];
      v16 = v15 + 2;
      *(this + 14) = *(v16 - 1);
      v17(v16, this);
    }

    pthread_mutex_unlock((this + 24));
  }
}

void *webrtc::AsyncSSLSocket::OnConnectEvent(webrtc::AsyncSSLSocket *this, webrtc::Socket *a2)
{
  result = (*(**(this + 52) + 48))(*(this + 52), &webrtc::kSslClientHello, 72);
  if (result != 72)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/socket_adapters.cc");
    }

    (*(*this + 104))(this);
    result = *(this + 41);
    for (*(this + 43) = result; result != (this + 320); result = *(this + 43))
    {
      v12 = result[2];
      v11 = result + 2;
      *(this + 43) = *(v11 - 1);
      v12(v11, this, 0);
    }
  }

  return result;
}

uint64_t webrtc::AsyncSSLSocket::ProcessInput(uint64_t this, char *a2, unint64_t *a3)
{
  v3 = *a3;
  if (*a3 < 0x4F)
  {
    return this;
  }

  v5 = this;
  if (memcmp(&webrtc::kSslServerHello, a2, 0x4FuLL))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v7, v8, v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/socket_adapters.cc");
    }

    (*(*v5 + 104))(v5);
    this = *(v5 + 328);
    for (*(v5 + 344) = this; this != v5 + 320; this = *(v5 + 344))
    {
      v15 = *(this + 16);
      v14 = this + 16;
      *(v5 + 344) = *(v14 - 8);
      v15(v14, v5, 0);
    }

    return this;
  }

  *a3 = v3 - 79;
  if (v3 == 79)
  {
    v16 = 1;
    *(v5 + 448) = 0;
    v17 = v5 + 264;
    this = *(v5 + 272);
    *(v5 + 288) = this;
    if (this == v5 + 264)
    {
      goto LABEL_14;
    }
  }

  else
  {
    memmove(a2, a2 + 79, v3 - 79);
    v16 = *a3 == 0;
    *(v5 + 448) = 0;
    v17 = v5 + 264;
    this = *(v5 + 272);
    *(v5 + 288) = this;
    if (this == v5 + 264)
    {
      goto LABEL_14;
    }
  }

  do
  {
    v19 = *(this + 16);
    v18 = this + 16;
    *(v5 + 288) = *(v18 - 8);
    v19(v18, v5);
    this = *(v5 + 288);
  }

  while (this != v17);
LABEL_14:
  if (!v16)
  {
    pthread_mutex_lock((v5 + 24));
    v20 = *(v5 + 96);
    for (*(v5 + 112) = v20; v20 != v5 + 88; v20 = *(v5 + 112))
    {
      v22 = *(v20 + 16);
      v21 = v20 + 16;
      *(v5 + 112) = *(v21 - 8);
      v22(v21, v5);
    }

    return pthread_mutex_unlock((v5 + 24));
  }

  return this;
}

void webrtc::AsyncSSLSocket::~AsyncSSLSocket(webrtc::AsyncSSLSocket *this)
{
  *this = &unk_28829FD08;
  v2 = this + 360;
  *(this + 45) = &unk_28829FDD8;
  v3 = *(this + 53);
  if (v3)
  {
    MEMORY[0x2743DA520](v3, 0x1000C8077774924);
  }

  *this = &unk_28828CF00;
  *(this + 45) = &unk_28828CFC8;
  v4 = *(this + 52);
  *(this + 52) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(this + 45) = &unk_28828CEE0;
  (*(this + 48))(v2);
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 392, *(this + 50));

  webrtc::Socket::~Socket(this);
}

{
  *this = &unk_28829FD08;
  v2 = this + 360;
  *(this + 45) = &unk_28829FDD8;
  v3 = *(this + 53);
  if (v3)
  {
    MEMORY[0x2743DA520](v3, 0x1000C8077774924);
  }

  *this = &unk_28828CF00;
  *(this + 45) = &unk_28828CFC8;
  v4 = *(this + 52);
  *(this + 52) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(this + 45) = &unk_28828CEE0;
  (*(this + 48))(v2);
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 392, *(this + 50));
  webrtc::Socket::~Socket(this);

  JUMPOUT(0x2743DA540);
}

void non-virtual thunk towebrtc::AsyncSSLSocket::~AsyncSSLSocket(webrtc::AsyncSSLSocket *this)
{
  v2 = (this - 360);
  *(this - 45) = &unk_28829FD08;
  *this = &unk_28829FDD8;
  v3 = *(this + 8);
  if (v3)
  {
    MEMORY[0x2743DA520](v3, 0x1000C8077774924);
  }

  *v2 = &unk_28828CF00;
  *this = &unk_28828CFC8;
  v4 = *(this + 7);
  *(this + 7) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *this = &unk_28828CEE0;
  (*(this + 3))(this);
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 32, *(this + 5));

  webrtc::Socket::~Socket(v2);
}

{
  v2 = (this - 360);
  *(this - 45) = &unk_28829FD08;
  *this = &unk_28829FDD8;
  v3 = *(this + 8);
  if (v3)
  {
    MEMORY[0x2743DA520](v3, 0x1000C8077774924);
  }

  *v2 = &unk_28828CF00;
  *this = &unk_28828CFC8;
  v4 = *(this + 7);
  *(this + 7) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *this = &unk_28828CEE0;
  (*(this + 3))(this);
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 32, *(this + 5));
  webrtc::Socket::~Socket(v2);

  JUMPOUT(0x2743DA540);
}

__n128 webrtc::SocketAddress::SocketAddress(webrtc::SocketAddress *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = &unk_28828CE50;
  *(this + 64) = 0;
  memset(v2, 0, sizeof(v2));
  *(this + 8) = 0;
  result = *&v2[4];
  *(this + 36) = *&v2[4];
  *(this + 28) = 0;
  *(this + 15) = 0;
  return result;
}

double webrtc::SocketAddress::SetIP(uint64_t a1, _OWORD *a2, size_t a3)
{
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_18:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (a3 > 0x16)
  {
    operator new();
  }

  BYTE7(v9[1]) = a3;
  v6 = v9 + a3;
  if (v9 <= a2 && v6 > a2)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (a3)
  {
    memmove(v9, a2, a3);
  }

  *v6 = 0;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = v9[0];
  *(a1 + 16) = *&v9[1];
  if (webrtc::inet_pton(2, a2, a3, &v10))
  {
    v8 = v10;
    *(a1 + 32) = 2;
    *(a1 + 36) = v8;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
LABEL_15:
    *(a1 + 64) = 1;
    *(a1 + 60) = 0;
    return result;
  }

  if (webrtc::inet_pton(30, a2, a3, v9))
  {
    *(a1 + 32) = 30;
    result = *v9;
    *(a1 + 36) = v9[0];
    goto LABEL_15;
  }

  *(a1 + 64) = 0;
  memset(v9 + 8, 0, 20);
  *(a1 + 32) = 0;
  result = *(v9 + 12);
  *(a1 + 36) = *(v9 + 12);
  *(a1 + 60) = 0;
  return result;
}

uint64_t webrtc::SocketAddress::SocketAddress(uint64_t a1, _OWORD *a2, size_t a3, __int16 a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = &unk_28828CE50;
  *(a1 + 48) = 0;
  webrtc::SocketAddress::SetIP(a1, a2, a3);
  *(a1 + 56) = a4;
  return a1;
}

__n128 webrtc::SocketAddress::SocketAddress(webrtc::SocketAddress *this, const webrtc::IPAddress *a2, __int16 a3)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 2) = 0;
  *(this + 3) = &unk_28828CE50;
  *(this + 12) = 0;
  v3 = *(a2 + 2);
  *(this + 64) = 0;
  *(this + 8) = v3;
  result = *(a2 + 12);
  *(this + 36) = result;
  *(this + 15) = 0;
  *(this + 28) = a3;
  return result;
}

__n128 webrtc::SocketAddress::operator=(uint64_t a1, const std::string::value_type *a2)
{
  v2 = a2;
  if (a1 != a2)
  {
    if (*(a1 + 23) < 0)
    {
      if (a2[23] >= 0)
      {
        v4 = *(a2 + 23);
      }

      else
      {
        a2 = *a2;
        v4 = *(v2 + 1);
      }

      v5 = a1;
      std::string::__assign_no_alias<false>(a1, a2, v4);
    }

    else
    {
      if ((a2[23] & 0x80) == 0)
      {
        v3 = *a2;
        *(a1 + 16) = *(a2 + 2);
        *a1 = v3;
        goto LABEL_11;
      }

      v5 = a1;
      std::string::__assign_no_alias<true>(a1, *a2, *(a2 + 1));
    }

    a1 = v5;
  }

LABEL_11:
  *(a1 + 32) = *(v2 + 8);
  result = *(v2 + 36);
  *(a1 + 36) = result;
  *(a1 + 56) = *(v2 + 28);
  *(a1 + 64) = v2[64];
  *(a1 + 60) = *(v2 + 15);
  return result;
}

__n128 webrtc::SocketAddress::SocketAddress(webrtc::SocketAddress *this, const webrtc::SocketAddress *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 2) = 0;
  *(this + 3) = &unk_28828CE50;
  *(this + 12) = 0;
  if (this != a2)
  {
    if (*(a2 + 23) < 0)
    {
      v3 = this;
      v4 = a2;
      std::string::__assign_no_alias<true>(this, *a2, *(a2 + 1));
      a2 = v4;
      this = v3;
    }

    else
    {
      v2 = *a2;
      *(this + 2) = *(a2 + 2);
      *this = v2;
    }
  }

  *(this + 8) = *(a2 + 8);
  result = *(a2 + 36);
  *(this + 36) = result;
  *(this + 28) = *(a2 + 28);
  *(this + 64) = *(a2 + 64);
  *(this + 15) = *(a2 + 15);
  return result;
}

BOOL webrtc::SocketAddress::IsNil(webrtc::SocketAddress *this)
{
  if ((*(this + 23) & 0x8000000000000000) != 0)
  {
    if (*(this + 1))
    {
      return 0;
    }
  }

  else if (*(this + 23))
  {
    return 0;
  }

  return !*(this + 8) && *(this + 28) == 0;
}

__n128 webrtc::SocketAddress::SetResolvedIP(webrtc::SocketAddress *this, const webrtc::IPAddress *a2)
{
  *(this + 8) = *(a2 + 2);
  result = *(a2 + 12);
  *(this + 36) = result;
  *(this + 15) = 0;
  return result;
}

void webrtc::SocketAddress::HostAsURIString(webrtc::SocketAddress *this@<X0>, std::string *a2@<X8>)
{
  if ((*(this + 64) & 1) == 0)
  {
    if (*(this + 23) < 0)
    {
      v7 = *(this + 1);
      if (v7)
      {
        v8 = *this;

        std::string::__init_copy_ctor_external(a2, v8, v7);
        return;
      }
    }

    else if (*(this + 23))
    {
      *&a2->__r_.__value_.__l.__data_ = *this;
      a2->__r_.__value_.__r.__words[2] = *(this + 2);
      return;
    }
  }

  if (*(this + 8) == 30)
  {
    p_p = &__p;
    webrtc::IPAddress::ToString(this + 24, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v5 = 22;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v5 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if (v5 == size)
    {
      if (size != 0x7FFFFFFFFFFFFFF6)
      {
        operator new();
      }

LABEL_55:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v9 = "[";
    if (size)
    {
      if ((size & 0x8000000000000000) != 0)
      {
        goto LABEL_54;
      }

      if (p_p <= "[" && p_p + size > "[")
      {
        v9 = "";
      }

      v11 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v11 = __p.__r_.__value_.__r.__words[0];
      }

      memmove(&v11->__r_.__value_.__l.__data_ + 1, p_p, size);
    }

    p_p->__r_.__value_.__s.__data_[0] = *v9;
    v12 = size + 1;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      __p.__r_.__value_.__l.__size_ = size + 1;
    }

    else
    {
      *(&__p.__r_.__value_.__s + 23) = v12 & 0x7F;
    }

    p_p->__r_.__value_.__s.__data_[v12] = 0;
    v19 = __p;
    memset(&__p, 0, sizeof(__p));
    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = 22;
    }

    else
    {
      v13 = (v19.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = HIBYTE(v19.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v14 = v19.__r_.__value_.__l.__size_;
    }

    if (v13 == v14)
    {
      std::string::__grow_by_and_replace(&v19, v13, 1uLL, v13, v13, 0, 1uLL, "]");
LABEL_52:
      *a2 = v19;
      memset(&v19, 0, sizeof(v19));
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      return;
    }

    v15 = &v19;
    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v15 = v19.__r_.__value_.__r.__words[0];
    }

    v16 = v15 + v14;
    if (v15 + v14 > "]" || v16 + 1 <= "]")
    {
      *v16 = 93;
      v17 = v14 + 1;
      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        v19.__r_.__value_.__l.__size_ = v17;
      }

      else
      {
        *(&v19.__r_.__value_.__s + 23) = v17 & 0x7F;
      }

      v15->__r_.__value_.__s.__data_[v17] = 0;
      goto LABEL_52;
    }

LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v6 = this + 24;

  webrtc::IPAddress::ToString(v6, a2);
}

void webrtc::SocketAddress::HostAsSensitiveURIString(webrtc::SocketAddress *this@<X0>, std::string *a2@<X8>)
{
  if ((*(this + 64) & 1) == 0)
  {
    if (*(this + 23) < 0)
    {
      v7 = *(this + 1);
      if (v7)
      {
        v8 = *this;

        std::string::__init_copy_ctor_external(a2, v8, v7);
        return;
      }
    }

    else if (*(this + 23))
    {
      *&a2->__r_.__value_.__l.__data_ = *this;
      a2->__r_.__value_.__r.__words[2] = *(this + 2);
      return;
    }
  }

  if (*(this + 8) == 30)
  {
    p_p = &__p;
    webrtc::IPAddress::ToSensitiveString((this + 24), &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v5 = 22;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v5 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if (v5 == size)
    {
      if (size != 0x7FFFFFFFFFFFFFF6)
      {
        operator new();
      }

LABEL_55:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v9 = "[";
    if (size)
    {
      if ((size & 0x8000000000000000) != 0)
      {
        goto LABEL_54;
      }

      if (p_p <= "[" && p_p + size > "[")
      {
        v9 = "";
      }

      v11 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v11 = __p.__r_.__value_.__r.__words[0];
      }

      memmove(&v11->__r_.__value_.__l.__data_ + 1, p_p, size);
    }

    p_p->__r_.__value_.__s.__data_[0] = *v9;
    v12 = size + 1;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      __p.__r_.__value_.__l.__size_ = size + 1;
    }

    else
    {
      *(&__p.__r_.__value_.__s + 23) = v12 & 0x7F;
    }

    p_p->__r_.__value_.__s.__data_[v12] = 0;
    v19 = __p;
    memset(&__p, 0, sizeof(__p));
    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = 22;
    }

    else
    {
      v13 = (v19.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = HIBYTE(v19.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v14 = v19.__r_.__value_.__l.__size_;
    }

    if (v13 == v14)
    {
      std::string::__grow_by_and_replace(&v19, v13, 1uLL, v13, v13, 0, 1uLL, "]");
LABEL_52:
      *a2 = v19;
      memset(&v19, 0, sizeof(v19));
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      return;
    }

    v15 = &v19;
    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v15 = v19.__r_.__value_.__r.__words[0];
    }

    v16 = v15 + v14;
    if (v15 + v14 > "]" || v16 + 1 <= "]")
    {
      *v16 = 93;
      v17 = v14 + 1;
      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        v19.__r_.__value_.__l.__size_ = v17;
      }

      else
      {
        *(&v19.__r_.__value_.__s + 23) = v17 & 0x7F;
      }

      v15->__r_.__value_.__s.__data_[v17] = 0;
      goto LABEL_52;
    }

LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v6 = (this + 24);

  webrtc::IPAddress::ToSensitiveString(v6, a2);
}

unint64_t webrtc::SocketAddress::ToString@<X0>(webrtc::SocketAddress *this@<X0>, char *a2@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  __s[0] = __dst;
  __s[1] = 1024;
  __dst[0] = 0;
  webrtc::SocketAddress::HostAsURIString(this, &__p);
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (size >= 0x3FF)
  {
    v6 = 1023;
  }

  else
  {
    v6 = size;
  }

  v7 = size < 0x3FF;
  if (size >= 0x3FF)
  {
    v8 = v6;
  }

  else
  {
    v8 = v6 + 1;
  }

  memcpy(__dst, p_p, v6);
  __dst[v6] = 0;
  memcpy(&__dst[v6], ":", v7);
  __s[2] = v8;
  __dst[v8] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(__s, "%d", *(this + 28));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v9 = __s[0];
  if (!__s[0])
  {
    goto LABEL_24;
  }

  result = strlen(__s[0]);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_25;
  }

  if (result > 0x16)
  {
    operator new();
  }

  a2[23] = result;
  v11 = &a2[result];
  if (a2 <= v9 && v11 > v9)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (result)
  {
    result = memmove(a2, v9, result);
  }

  *v11 = 0;
  return result;
}

unint64_t webrtc::SocketAddress::ToSensitiveString@<X0>(webrtc::SocketAddress *this@<X0>, char *a2@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  __s[0] = __dst;
  __s[1] = 1024;
  __dst[0] = 0;
  webrtc::SocketAddress::HostAsSensitiveURIString(this, &__p);
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (size >= 0x3FF)
  {
    v6 = 1023;
  }

  else
  {
    v6 = size;
  }

  v7 = size < 0x3FF;
  if (size >= 0x3FF)
  {
    v8 = v6;
  }

  else
  {
    v8 = v6 + 1;
  }

  memcpy(__dst, p_p, v6);
  __dst[v6] = 0;
  memcpy(&__dst[v6], ":", v7);
  __s[2] = v8;
  __dst[v8] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(__s, "%d", *(this + 28));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v9 = __s[0];
  if (!__s[0])
  {
    goto LABEL_24;
  }

  result = strlen(__s[0]);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_25;
  }

  if (result > 0x16)
  {
    operator new();
  }

  a2[23] = result;
  v11 = &a2[result];
  if (a2 <= v9 && v11 > v9)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (result)
  {
    result = memmove(a2, v9, result);
  }

  *v11 = 0;
  return result;
}

void *webrtc::SocketAddress::ToSensitiveNameAndAddressString@<X0>(webrtc::SocketAddress *this@<X0>, char *a2@<X8>)
{
  v39 = *MEMORY[0x277D85DE8];
  if (*(this + 8))
  {
    if (*(this + 64))
    {
      goto LABEL_68;
    }

    LOBYTE(v3) = *(this + 23);
  }

  else
  {
    if (*(this + 64))
    {
      goto LABEL_68;
    }

    v3 = *(this + 23);
    if (v3 < 0)
    {
      if (*(this + 1))
      {
        goto LABEL_68;
      }
    }

    else if (*(this + 23))
    {
      goto LABEL_68;
    }
  }

  if ((v3 & 0x80) != 0)
  {
    if (*(this + 1))
    {
      goto LABEL_12;
    }

LABEL_68:

    return webrtc::SocketAddress::ToSensitiveString(this, a2);
  }

  if (!v3)
  {
    goto LABEL_68;
  }

LABEL_12:
  __s = __dst;
  v36 = 1024;
  __dst[0] = 0;
  webrtc::SocketAddress::HostAsSensitiveURIString(this, &__p);
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (size >= 0x3FF)
  {
    v7 = 1023;
  }

  else
  {
    v7 = size;
  }

  v8 = size < 0x3FF;
  if (size >= 0x3FF)
  {
    v9 = v7;
  }

  else
  {
    v9 = v7 + 1;
  }

  memcpy(__dst, p_p, v7);
  __dst[v7] = 0;
  memcpy(&__dst[v7], ":", v8);
  v37 = v9;
  __dst[v9] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 28));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v36 + ~v37 >= 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = v36 + ~v37;
  }

  memcpy(&__s[v37], " (", v10);
  v37 += v10;
  __s[v37] = 0;
  if (*(this + 8) == 30)
  {
    v11 = v36;
    v12 = v37 + 1;
    memcpy(&__s[v37], "[", v36 != v37 + 1);
    v13 = v37;
    if (v11 != v12)
    {
      v13 = v37 + 1;
    }

    v37 = v13;
    __s[v13] = 0;
    webrtc::IPAddress::ToSensitiveString((this + 24), &__p);
    v14 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &__p;
    }

    else
    {
      v15 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v14 = __p.__r_.__value_.__l.__size_;
    }

    if (v14 >= v36 + ~v37)
    {
      v16 = v36 + ~v37;
    }

    else
    {
      v16 = v14;
    }

    memcpy(&__s[v37], v15, v16);
    v37 += v16;
    __s[v37] = 0;
    v17 = v36;
    v18 = v37 + 1;
    memcpy(&__s[v37], "]", v36 != v37 + 1);
    v19 = v37;
    if (v17 != v18)
    {
      v19 = v37 + 1;
    }

    v37 = v19;
    __s[v19] = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_53;
    }
  }

  else
  {
    webrtc::IPAddress::ToSensitiveString((this + 24), &__p);
    v20 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &__p;
    }

    else
    {
      v21 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v20 = __p.__r_.__value_.__l.__size_;
    }

    if (v20 >= v36 + ~v37)
    {
      v22 = v36 + ~v37;
    }

    else
    {
      v22 = v20;
    }

    memcpy(&__s[v37], v21, v22);
    v37 += v22;
    __s[v37] = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_53;
    }
  }

  operator delete(__p.__r_.__value_.__l.__data_);
LABEL_53:
  v23 = v36;
  v24 = v37 + 1;
  memcpy(&__s[v37], ":", v36 != v37 + 1);
  v25 = v37;
  if (v23 != v24)
  {
    v25 = v37 + 1;
  }

  v37 = v25;
  __s[v25] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 28));
  v26 = v36;
  v27 = v37 + 1;
  memcpy(&__s[v37], ")", v36 != v37 + 1);
  v28 = v37;
  if (v26 != v27)
  {
    v28 = v37 + 1;
  }

  v37 = v28;
  __s[v28] = 0;
  v29 = __s;
  if (!__s)
  {
    goto LABEL_71;
  }

  v30 = strlen(__s);
  if (v30 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v31 = v30;
  if (v30 > 0x16)
  {
    operator new();
  }

  result = a2;
  a2[23] = v31;
  v33 = &a2[v31];
  if (a2 <= v29 && v33 > v29)
  {
LABEL_71:
    __break(1u);
  }

  if (v31)
  {
    result = memmove(a2, v29, v31);
  }

  *v33 = 0;
  return result;
}

BOOL webrtc::SocketAddress::IsUnresolvedIP(webrtc::SocketAddress *this)
{
  if (*(this + 8))
  {
    return 0;
  }

  if (*(this + 64))
  {
    return 0;
  }

  v2 = *(this + 23);
  if (v2 < 0)
  {
    return *(this + 1) != 0;
  }

  else
  {
    return v2 != 0;
  }
}

BOOL webrtc::SocketAddress::IsLoopbackIP(webrtc::SocketAddress *this)
{
  v1 = *(this + 8);
  if (v1 == 2)
  {
    if (*(this + 9) == 127)
    {
      return 1;
    }

    if (!*(this + 9))
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (v1 != 30)
  {
    return 0;
  }

  if (*(this + 36) == *MEMORY[0x277D85EF0] && *(this + 44) == *(MEMORY[0x277D85EF0] + 8))
  {
    return 1;
  }

  if ((*(this + 36) != *MEMORY[0x277D85EE8] || *(this + 44) != *(MEMORY[0x277D85EE8] + 8)) && (*(this + 36) != webrtc::kV4MappedPrefix || *(this + 44) != *(&webrtc::kV4MappedPrefix + 1)))
  {
    return 0;
  }

LABEL_16:
  if (*(this + 23) < 0)
  {
    this = *this;
  }

  return strcmp(this, "localhost") == 0;
}