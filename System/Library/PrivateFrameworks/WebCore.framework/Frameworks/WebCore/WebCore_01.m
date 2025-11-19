void webrtc::AgcManagerDirect::Process(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v9 = *(v3 + 64);
  v10 = *(v3 + 72);
  if (v10 == v9)
  {
    goto LABEL_128;
  }

  v11 = v4;
  v12 = v3;
  v13 = (v10 - v9) >> 3;
  v14 = *(*v9 + 44);
  *(v3 + 44) = 0;
  if (v13 >= 2)
  {
    for (i = 1; i != v13; ++i)
    {
      v16 = *(*(v9 + 8 * i) + 44);
      if (v16 < v14)
      {
        *(v3 + 44) = i;
        v14 = v16;
      }
    }
  }

  v17 = *(v3 + 8) != 1 || v14 <= 0;
  if (!v17 && v14 <= *(v3 + 4))
  {
    v14 = *(v3 + 4);
  }

  if (*v3)
  {
    *(v3 + 36) = v14;
    if (*(v3 + 40) != 1)
    {
      return;
    }
  }

  else
  {
    v14 = *(v3 + 36);
    if (*(v3 + 40) != 1)
    {
      return;
    }
  }

  v18 = 0;
  v7.n128_u32[0] = v5;
  v19 = *(v4 + 72);
  v20 = (v6 & 0x100000000) == 0 || (v5 & 0x100000000) == 0;
  v8.i32[0] = 0.5;
  v21 = 30.0;
  if (*&v6 < 30.0)
  {
    v21 = *&v6;
  }

  v22 = -18.0 - v21;
  v23 = 72.0;
  if (*&v6 > -90.0)
  {
    v23 = v22;
  }

  v24 = llroundf(v23);
  if (*&v5 < 0.5)
  {
    v24 = 0;
  }

  v95 = v20;
  if (v20)
  {
    v24 = 0;
  }

  v94 = v24;
  if (v19)
  {
    v25 = v97;
  }

  else
  {
    v25 = 0;
  }

  v26.i64[0] = 0x8000000080000000;
  v26.i64[1] = 0x8000000080000000;
  v27 = vdupq_n_s32(0x46FFFE00u);
  v28.i64[0] = 0xC7000000C7000000;
  v28.i64[1] = 0xC7000000C7000000;
  v29.i64[0] = 0x3F0000003F000000;
  v29.i64[1] = 0x3F0000003F000000;
  v96 = v27;
  do
  {
    v30 = *(v11 + 88);
    if (!v30)
    {
      v30 = *(v11 + 80);
    }

    if (v19)
    {
      v31 = *(*(v30 + 16) + 8 * *(v30 + 56) * v18);
      if (v19 >= 8)
      {
        v33 = v97;
        v34 = v19 & 0xFFFFFFFFFFFFFFF8;
        v35 = v31;
        do
        {
          v36 = *v35;
          v37 = v35[1];
          v35 += 2;
          v38 = vbslq_s8(vcgtq_f32(v36, v27), v27, v36);
          v39 = vbslq_s8(vcgtq_f32(v37, v27), v27, v37);
          v40 = vbslq_s8(vcgtq_f32(v28, v38), v28, v38);
          v41 = vbslq_s8(vcgtq_f32(v28, v39), v28, v39);
          v7 = vuzp1q_s16(vcvtq_s32_f32(vaddq_f32(v40, vbslq_s8(v26, v29, v40))), vcvtq_s32_f32(vaddq_f32(v41, vbslq_s8(v26, v29, v41))));
          *v33++ = v7;
          v34 -= 8;
        }

        while (v34);
        v32 = v19 & 0xFFFFFFFFFFFFFFF8;
        if (v19 == (v19 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_46;
        }
      }

      else
      {
        v32 = 0;
      }

      v42 = v19 - v32;
      v43 = &v97[v32];
      v44 = &v31->i32[v32];
      do
      {
        v45 = *v44++;
        v7.n128_f32[0] = v45;
        if (v45 > 32767.0)
        {
          v7.n128_f32[0] = 32767.0;
        }

        if (v7.n128_f32[0] < -32768.0)
        {
          v7.n128_f32[0] = -32768.0;
        }

        v7.n128_f32[0] = v7.n128_f32[0] + *vbslq_s8(v26, v8, v7).i32;
        *v43++ = v7.n128_f32[0];
        --v42;
      }

      while (v42);
    }

LABEL_46:
    if (v18 >= (v10 - v9) >> 3)
    {
      goto LABEL_128;
    }

    v46 = *(v9 + 8 * v18);
    if (*(v46 + 52) == 1)
    {
      *(v46 + 52) = 0;
    }

    if (*(v46 + 41) == 1)
    {
      *(v46 + 41) = 0;
      v47 = v46[11];
      if (v47)
      {
        if (v47 >= 0x100)
        {
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
          {
            webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v48, v49, v50, v51, v52, v53, v54, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/agc/agc_manager_direct.cc");
          }

          goto LABEL_58;
        }
      }

      else if ((*(v46 + 42) & 1) == 0)
      {
        goto LABEL_58;
      }

      v55 = *v46;
      if (v47 < *v46)
      {
        v46[11] = v55;
        v47 = v55;
      }

      (*(**(v46 + 1) + 32))(*(v46 + 1), v7);
      v46[4] = v47;
      *(v46 + 42) = 0;
      v46[16] = 0;
      *(v46 + 68) = 1;
    }

LABEL_58:
    (*(**(v46 + 1) + 16))(*(v46 + 1), v25, v19);
    v98[0] = 0;
    v56 = (*(**(v46 + 1) + 24))(*(v46 + 1), v98);
    if (v95)
    {
      v8.i32[0] = 0.5;
      v26.i64[0] = 0x8000000080000000;
      v26.i64[1] = 0x8000000080000000;
      v27 = v96;
      v28.i64[0] = 0xC7000000C7000000;
      v28.i64[1] = 0xC7000000C7000000;
      v29.i64[0] = 0x3F0000003F000000;
      v29.i64[1] = 0x3F0000003F000000;
      if (!v56)
      {
        goto LABEL_94;
      }

      v57 = v98[0];
    }

    else
    {
      v8.i32[0] = 0.5;
      v26.i64[0] = 0x8000000080000000;
      v26.i64[1] = 0x8000000080000000;
      v27 = v96;
      v28.i64[0] = 0xC7000000C7000000;
      v28.i64[1] = 0xC7000000C7000000;
      v29.i64[0] = 0x3F0000003F000000;
      v29.i64[1] = 0x3F0000003F000000;
      if ((v46[17] & 1) != 0 || v46[16] < 0)
      {
        goto LABEL_94;
      }

      v57 = v94;
      v98[0] = v94;
    }

    v46[16] = 0;
    v58 = v57 + 2;
    v59 = v46[6];
    v60 = v46[7];
    if (v57 + 2 >= v59)
    {
      v61 = v46[6];
    }

    else
    {
      v61 = v57 + 2;
    }

    if (v57 <= 0)
    {
      v61 = 2;
    }

    v62 = v60 + (v61 - v60) / 2;
    if (v61 == 2 && v60 == 3)
    {
      v62 = 2;
    }

    if (v61 != v59 || v60 != v59 - 1)
    {
      v59 = v62;
    }

    v65 = v58 - v61;
    if (v58 - v61 >= 15)
    {
      v65 = 15;
    }

    if (v65 <= -15)
    {
      v65 = -15;
    }

    v46[7] = v59;
    v66 = v58 - v61;
    if (v58 != v61)
    {
      v67 = v46[4];
      v68 = webrtc::kGainMap[v67];
      v69 = v67;
      if (v66 < 1)
      {
        v73 = v46[4];
        do
        {
          v74 = v73 - 1;
          if (v73 <= *v46)
          {
            break;
          }

          v75 = webrtc::kGainMap[v73--] - v68;
        }

        while (v75 > v65);
        v72 = v74 + 1;
      }

      else
      {
        do
        {
          v70 = v69 + 1;
          if (v69 > 254)
          {
            break;
          }

          v71 = webrtc::kGainMap[v69++] - v68;
        }

        while (v71 < v65);
        v72 = v70 - 1;
      }

      webrtc::MonoAgc::SetLevel(v46, v72);
      v8.i32[0] = 0.5;
      v26.i64[0] = 0x8000000080000000;
      v26.i64[1] = 0x8000000080000000;
      v27 = v96;
      v28.i64[0] = 0xC7000000C7000000;
      v28.i64[1] = 0xC7000000C7000000;
      v29.i64[0] = 0x3F0000003F000000;
      v29.i64[1] = 0x3F0000003F000000;
      if (v67 != v46[4])
      {
        (*(**(v46 + 1) + 32))(*(v46 + 1));
        v29.i64[0] = 0x3F0000003F000000;
        v29.i64[1] = 0x3F0000003F000000;
        v28.i64[0] = 0xC7000000C7000000;
        v28.i64[1] = 0xC7000000C7000000;
        v27 = v96;
        v26.i64[0] = 0x8000000080000000;
        v26.i64[1] = 0x8000000080000000;
        v8.i32[0] = 0.5;
      }
    }

LABEL_94:
    if ((v46[1] & 1) == 0)
    {
      v77 = v46[7];
      v76 = v46[8];
      if (v76 != v77)
      {
        v78 = -0.05;
        if (v77 > v76)
        {
          v78 = 0.05;
        }

        v79 = v78 + *(v46 + 9);
        *(v46 + 9) = v79;
        v7.n128_f64[0] = v79 + 0.5;
        v80 = vcvtmd_s64_f64(v7.n128_f64[0]);
        v7.n128_f32[0] = v80;
        if (vabds_f32(v79, v80) < 0.025 && v76 != v80)
        {
          v46[8] = v80;
          v46[9] = v7.n128_u32[0];
          v46[12] = v80;
          *(v46 + 52) = 1;
        }
      }
    }

    *(v46 + 68) = 0;
    v82 = v46[16];
    if (v82 < 0)
    {
      v46[16] = v82 + 1;
    }

    v83 = *(v12 + 64);
    if (v18 >= (*(v12 + 72) - v83) >> 3)
    {
      goto LABEL_128;
    }

    v84 = *(v12 + 88);
    if (v18 >= (*(v12 + 96) - v84) >> 3)
    {
      goto LABEL_128;
    }

    v85 = *(*(v83 + 8 * v18) + 48);
    v86 = v84 + 8 * v18;
    *v86 = v85;
    *(v86 + 4) = BYTE4(v85);
    ++v18;
    v9 = *(v12 + 64);
    v10 = *(v12 + 72);
    v87 = (v10 - v9) >> 3;
  }

  while (v18 < v87);
  if (v10 == v9)
  {
LABEL_128:
    __break(1u);
    return;
  }

  v88 = *(*v9 + 44);
  *(v12 + 44) = 0;
  if (v87 >= 2)
  {
    for (j = 1; j != v87; ++j)
    {
      v90 = *(*(v9 + 8 * j) + 44);
      if (v90 < v88)
      {
        *(v12 + 44) = j;
        v88 = v90;
      }
    }
  }

  v91 = *(v12 + 8) != 1 || v88 <= 0;
  if (!v91 && v88 <= *(v12 + 4))
  {
    v88 = *(v12 + 4);
  }

  if (*v12)
  {
    *(v12 + 36) = v88;
    if (v14 == v88)
    {
      return;
    }

LABEL_124:
    explicit = atomic_load_explicit(&webrtc::UpdateHistogramOnRecommendedInputVolumeChangeToMatchTarget(int)::atomic_histogram_pointer, memory_order_acquire);
    if (explicit)
    {
      webrtc::metrics::HistogramAdd(explicit, v88);
    }

    else
    {
      v93 = 0;
      atomic_compare_exchange_strong(&webrtc::UpdateHistogramOnRecommendedInputVolumeChangeToMatchTarget(int)::atomic_histogram_pointer, &v93, 0);
    }
  }

  else
  {
    v88 = *(v12 + 36);
    if (v14 != v88)
    {
      goto LABEL_124;
    }
  }
}

void webrtc::AimdRateControl::AimdRateControl(uint64_t a1, uint64_t a2, char a3)
{
  v46[2] = *MEMORY[0x277D85DE8];
  *a1 = xmmword_273B8E310;
  *(a1 + 16) = vdupq_n_s64(0x1C9C380uLL);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0x3FD999999999999ALL;
  *(a1 + 56) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = vnegq_f64(0);
  *(a1 + 224) = 0x8000000000000000;
  *(a1 + 232) = 0;
  (*(*a2 + 16))(&__p, a2, "WebRTC-BweBackOffFactor", 23);
  v6 = 0;
  v7 = v45;
  if ((v45 & 0x80u) != 0)
  {
    v7 = v44;
  }

  if (v7 >= 7)
  {
    p_p = __p;
    if ((v45 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    v18 = *p_p;
    v19 = *(p_p + 3);
    v6 = v18 == 1650552389 && v19 == 1684368482;
    if ((v45 & 0x80000000) == 0)
    {
LABEL_5:
      if (v6)
      {
        goto LABEL_6;
      }

LABEL_24:
      v9 = 0.85;
      goto LABEL_32;
    }
  }

  else if ((v45 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(__p);
  if (!v6)
  {
    goto LABEL_24;
  }

LABEL_6:
  (*(*a2 + 16))(&__p, a2, "WebRTC-BweBackOffFactor", 23);
  v46[0] = 0.0;
  if ((v45 & 0x80u) == 0)
  {
    v8 = &__p;
  }

  else
  {
    v8 = __p;
  }

  if (sscanf(v8, "Enabled-%lf", v46) != 1)
  {
    goto LABEL_27;
  }

  v9 = v46[0];
  if (v46[0] >= 1.0)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
LABEL_26:
      webrtc::webrtc_logging_impl::Log("\r\t", v10, v11, v12, v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/remote_bitrate_estimator/aimd_rate_control.cc");
    }

LABEL_27:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v21, v22, v23, v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/remote_bitrate_estimator/aimd_rate_control.cc");
    }

    v9 = 0.85;
    goto LABEL_30;
  }

  if (v46[0] <= 0.0)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_27;
  }

LABEL_30:
  if (v45 < 0)
  {
    operator delete(__p);
  }

LABEL_32:
  *(a1 + 240) = v9;
  *(a1 + 248) = 0;
  *(a1 + 256) = 200000;
  *(a1 + 264) = a3;
  (*(*a2 + 16))(&__p, a2, "WebRTC-DontIncreaseDelayBasedBweInAlr", 37);
  v28 = 0;
  v29 = v45;
  if ((v45 & 0x80u) != 0)
  {
    v29 = v44;
  }

  if (v29 >= 7)
  {
    v30 = __p;
    if ((v45 & 0x80u) == 0)
    {
      v30 = &__p;
    }

    v31 = *v30;
    v32 = *(v30 + 3);
    v28 = v31 == 1650552389 && v32 == 1684368482;
  }

  if (v45 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 265) = v28;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 280) = 0;
  *(a1 + 327) = 8;
  if (a1 + 304 <= "Disabled" && a1 + 312 > "Disabled" || (strcpy((a1 + 304), "Disabled"), *(a1 + 328) = 0, *(a1 + 272) = &unk_288293940, *(a1 + 352) = 0, *(a1 + 360) = 0, *(a1 + 344) = 0, *(a1 + 391) = 7, a1 + 368 <= "c_upper") && a1 + 375 > "c_upper")
  {
    __break(1u);
    return;
  }

  strcpy((a1 + 368), "c_upper");
  *(a1 + 392) = 256;
  *(a1 + 336) = &unk_288293790;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *&v46[0] = a1 + 272;
  *&v46[1] = a1 + 336;
  (*(*a2 + 16))(&__p, a2, "WebRTC-Bwe-EstimateBoundedIncrease", 34);
  if ((v45 & 0x80u) == 0)
  {
    v34 = &__p;
  }

  else
  {
    v34 = __p;
  }

  if ((v45 & 0x80u) == 0)
  {
    v35 = v45;
  }

  else
  {
    v35 = v44;
  }

  webrtc::ParseFieldTrial(v46, 2, v34, v35);
  if ((v45 & 0x80000000) == 0)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
    {
      return;
    }

LABEL_59:
    webrtc::webrtc_logging_impl::Log("\r\t\a", v36, v37, v38, v39, v40, v41, v42, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/remote_bitrate_estimator/aimd_rate_control.cc");
    return;
  }

  operator delete(__p);
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    goto LABEL_59;
  }
}

BOOL webrtc::AimdRateControl::TimeToReduceFurther(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 1;
  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return v3;
  }

  v4 = *(a1 + 208);
  if (v4 == 0x8000000000000000)
  {
    return v3;
  }

  v5 = *(a1 + 256);
  if (v5 >= 200000)
  {
    v5 = 200000;
  }

  if (v5 <= 10000)
  {
    v5 = 10000;
  }

  if (a2 != 0x8000000000000000 && v4 != 0x7FFFFFFFFFFFFFFFLL && a2 - v4 >= v5)
  {
    return 1;
  }

  if (*(a1 + 232) == 1)
  {
    return llround(*(a1 + 16) * 0.5) > a3;
  }

  return 0;
}

uint64_t webrtc::AimdRateControl::ChangeBitrate(uint64_t result, int *a2, uint64_t a3)
{
  LOBYTE(v71) = 0;
  if (*(a2 + 16))
  {
    v3 = (a2 + 2);
  }

  else
  {
    v3 = (result + 24);
  }

  v4 = *v3;
  if (*(a2 + 16))
  {
    *(result + 24) = *(a2 + 1);
  }

  v5 = *(result + 232);
  v6 = *a2;
  if ((v5 & 1) != 0 || v6 == 2)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        *(result + 200) = 0;
        goto LABEL_33;
      }

      if (v6 == 2)
      {
        if (*(result + 200) != 2)
        {
          *(result + 200) = 2;
        }

LABEL_25:
        v12 = (result + 16);
        v11 = *(result + 16);
        v13 = *(result + 240);
        v14 = llround(v13 * v4);
        v15 = v14 - 5000;
        if (v14 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
        }

        if (v14 > 5000)
        {
          v14 = v15;
        }

        if (v14 > v11 && *(result + 40) == 1)
        {
          v16 = *(result + 32) * 1000.0;
          if (v16 == INFINITY)
          {
            v17 = 9.22337204e18;
          }

          else
          {
            v31 = v16 == -INFINITY;
            v17 = v16;
            if (v31)
            {
              v17 = -9.22337204e18;
            }
          }

          v14 = llround(v13 * v17);
        }

        if (v11 <= v14)
        {
          if (v5 && v4 < v11)
          {
            if ((*(result + 408) & 1) == 0)
            {
              *(result + 408) = 1;
            }

            *(result + 400) = 0;
          }
        }

        else
        {
          v71 = v14;
          if (v5 && v4 < v11)
          {
            v30 = 0x7FFFFFFFFFFFFFFFLL;
            v31 = v14 == 0x8000000000000000 || v11 == 0x7FFFFFFFFFFFFFFFLL;
            if (!v31)
            {
              v30 = v11 - v14;
            }

            if ((*(result + 408) & 1) == 0)
            {
              *(result + 408) = 1;
            }

            *(result + 400) = v30;
          }
        }

        if (*(result + 40) == 1)
        {
          v32 = fmax(*(result + 32) + sqrt(*(result + 32) * *(result + 48)) * -3.0, 0.0) * 1000.0;
          v33 = 0x7FFFFFFFFFFFFFFFLL;
          if (v32 != INFINITY)
          {
            v33 = v32;
          }

          v34 = v4 >= v33;
          *(result + 232) = 1;
          if ((v4 & 0x8000000000000000) == 0)
          {
            v35 = v4 / 0x3E8uLL;
            if (v4 % 0x3E8uLL > 0x1F3)
            {
              ++v35;
            }

            v36 = v35;
            v37 = v35;
            if (v4 < v33)
            {
LABEL_96:
              *(result + 32) = v37;
              *(result + 40) = 1;
              v42 = 1.0;
              if (v37 >= 1.0)
              {
                v42 = v37;
              }

              v43 = (v37 - v36) * ((v37 - v36) * 0.05) / v42 + *(result + 48) * 0.95;
              v44 = 2.5;
              if (v43 < 2.5)
              {
                v44 = v43;
              }

              if (v43 > 0.400000006)
              {
                v45 = v44;
              }

              else
              {
                v45 = 0.400000006;
              }

              *(result + 48) = v45;
              *(result + 200) = 0;
              *(result + 208) = a3;
              *(result + 216) = a3;
              v26 = (result + 16);
              if (v11 <= v14)
              {
LABEL_104:
                v46 = *v26;
                v47 = *(result + 192);
                if (*(result + 329) == 1)
                {
                  goto LABEL_105;
                }

                goto LABEL_153;
              }

LABEL_152:
              v46 = v71;
              v47 = *(result + 192);
              if (*(result + 329) == 1)
              {
LABEL_105:
                if ((v47 & 1) == 0)
                {
                  goto LABEL_166;
                }

                goto LABEL_160;
              }

LABEL_153:
              if ((v47 & 1) == 0)
              {
LABEL_166:
                if (v46 <= *result)
                {
                  v46 = *result;
                }

                *(result + 16) = v46;
                return result;
              }

              v68 = *(result + 104);
              if ((v68 + 0x7FFFFFFFFFFFFFFFLL) <= 0xFFFFFFFFFFFFFFFDLL)
              {
                if (*(result + 393) == 1 && v68 <= *v12)
                {
                  v68 = *v12;
                }

                if (v68 < v46)
                {
                  v46 = v68;
                }
              }

LABEL_160:
              v69 = *(result + 96);
              if ((v69 + 0x7FFFFFFFFFFFFFFFLL) <= 0xFFFFFFFFFFFFFFFDLL && v46 < *v12)
              {
                v70 = llround(*(result + 240) * v69);
                if (v46 <= v70)
                {
                  v46 = v70;
                }

                if (v46 >= *v12)
                {
                  v46 = *v12;
                }
              }

              goto LABEL_166;
            }

LABEL_95:
            v37 = v36 * 0.05 + *(result + 32) * 0.95;
            goto LABEL_96;
          }
        }

        else
        {
          *(result + 232) = 1;
          if ((v4 & 0x8000000000000000) == 0)
          {
            if (v4 % 0x3E8uLL <= 0x1F3)
            {
              v38 = v4 / 0x3E8uLL;
            }

            else
            {
              v38 = v4 / 0x3E8uLL + 1;
            }

            v36 = v38;
            v37 = v38;
            goto LABEL_96;
          }

          v34 = 0;
        }

        v39 = -v4;
        v40 = v39 / 0x3E8;
        if (v39 % 0x3E8 <= 0x1F4)
        {
          v41 = 0;
        }

        else
        {
          v41 = -1;
        }

        v36 = (v41 - v40);
        v37 = v36;
        if (!v34)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      }

      v7 = *(result + 200);
    }

    else
    {
      v7 = *(result + 200);
      if (!v7)
      {
        *(result + 208) = a3;
        *(result + 200) = 1;
LABEL_19:
        v8 = *(result + 40);
        if (v8 == 1)
        {
          v9 = (*(result + 32) + sqrt(*(result + 32) * *(result + 48)) * 3.0) * 1000.0;
          if (v9 == INFINITY)
          {
            goto LABEL_34;
          }

          v10 = v9;
          if (v9 == -INFINITY)
          {
            v10 = 0x8000000000000000;
          }

          if (v4 <= v10)
          {
LABEL_34:
            v8 = 1;
          }

          else
          {
            v8 = 0;
            *(result + 40) = 0;
          }
        }

        v18 = llround(v4 * 1.5);
        v19 = v18 + 10000;
        if (v18 == 0x8000000000000000)
        {
          v19 = 0x8000000000000000;
        }

        if (v18 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v20 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v19;
        }

        if (*(result + 264) == 1 && *(result + 248) == 1 && *(result + 265) == 1)
        {
          v20 = *(result + 16);
        }

        v12 = (result + 16);
        v21 = *(result + 16);
        if (v21 < v20)
        {
          v22 = *(result + 208);
          if (v8)
          {
            v23 = INFINITY;
            if (a3 != 0x7FFFFFFFFFFFFFFFLL && v22 != 0x8000000000000000)
            {
              if (a3 == 0x8000000000000000 || v22 == 0x7FFFFFFFFFFFFFFFLL || (v24 = a3 - v22, a3 - v22 == 0x8000000000000000))
              {
                v25 = 0xFFF0000000000000;
                goto LABEL_109;
              }

              if (v24 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v25 = 0x7FF0000000000000;
LABEL_109:
                v23 = *&v25;
                goto LABEL_110;
              }

              v23 = v24 * 0.000001;
            }

LABEL_110:
            v49 = llround(((33333 * v21 + 4000000) / 8000000) / ceil(((33333 * v21 + 4000000) / 8000000) / 1200.0));
            v50 = *(result + 256);
            v51 = 2 * v50 + 200000;
            if (v50 == 0x8000000000000000)
            {
              v51 = 0;
            }

            v52 = -2;
            if (v50 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v52 = v51;
            }

            v53 = (8000000 * v49) / v52;
            if (v53 == 0x8000000000000000)
            {
              v54 = 0xFFF0000000000000;
            }

            else
            {
              if (v53 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v55 = v53;
                goto LABEL_120;
              }

              v54 = 0x7FF0000000000000;
            }

            v55 = *&v54;
LABEL_120:
            v56 = v23 * fmax(v55, 4000.0);
            v57 = 0x7FFFFFFFFFFFFFFFLL;
            v58 = v56;
            v59 = 0x8000000000000000;
            if (v56 == -INFINITY)
            {
              v58 = 0x8000000000000000;
            }

            if (v58 != 0x8000000000000000 && v21 != 0x8000000000000000)
            {
              v59 = v58 + v21;
            }

            if (v58 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v61 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v61 = v59;
            }

            if (v56 != INFINITY)
            {
              v57 = v61;
            }

LABEL_149:
            if (v20 < v57)
            {
              v57 = v20;
            }

            v71 = v57;
            *(result + 208) = a3;
            goto LABEL_152;
          }

          if ((v22 + 0x7FFFFFFFFFFFFFFFLL) > 0xFFFFFFFFFFFFFFFDLL)
          {
            v48 = 0.08;
LABEL_142:
            v65 = llround(v48 * v21);
            v66 = 1000;
            if (v65 > 1000)
            {
              v66 = v65;
            }

            v67 = v66 + v21;
            if (v21 == 0x8000000000000000)
            {
              v67 = 0x8000000000000000;
            }

            if (v65 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v57 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v57 = v67;
            }

            goto LABEL_149;
          }

          if (a3 != 0x7FFFFFFFFFFFFFFFLL)
          {
            if (a3 == 0x8000000000000000 || (v62 = a3 - v22, a3 - v22 == 0x8000000000000000))
            {
              v27 = a3;
              v28 = result;
              v29 = 0xFFF0000000000000;
              goto LABEL_138;
            }

            if (v62 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v27 = a3;
              v28 = result;
              v63 = v62 * 0.000001;
LABEL_139:
              v64 = 1.0;
              if (v63 <= 1.0)
              {
                v64 = v63;
              }

              v48 = pow(1.08, v64) + -1.0;
              result = v28;
              a3 = v27;
              goto LABEL_142;
            }
          }

          v27 = a3;
          v28 = result;
          v29 = 0x7FF0000000000000;
LABEL_138:
          v63 = *&v29;
          goto LABEL_139;
        }

        *(result + 208) = a3;
LABEL_54:
        v26 = v12;
        goto LABEL_104;
      }
    }

    if (v7 == 2)
    {
      goto LABEL_25;
    }

    if (v7 == 1)
    {
      goto LABEL_19;
    }

LABEL_33:
    v12 = (result + 16);
    goto LABEL_54;
  }

  return result;
}

uint64_t webrtc::AlignmentAdjuster::GetAlignmentAndMaybeAdjustScaleFactors(uint64_t a1, void *a2, unint64_t a3, int a4)
{
  result = *(a1 + 16);
  if (*(a1 + 20) == 1 && result >= 1 && a2[24] >= 2uLL)
  {
    v10 = a2[21];
    v9 = a2[22];
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 5);
    if (v11 >= 2)
    {
      if (v10 == v9)
      {
LABEL_11:
        if (a3)
        {
          v13 = a3 >= v11;
        }

        else
        {
          v13 = 1;
        }

        v14 = !v13;
        if ((a4 & v14) != 0)
        {
          LOBYTE(v11) = a3;
        }

        return (result << (v11 - 1));
      }

      else
      {
        v12 = a2[21];
        while (*(v12 + 32) < 1.0)
        {
          v12 += 96;
          if (v12 == v9)
          {
            goto LABEL_11;
          }
        }

        v15 = v9 - v10 - 96;
        v16 = a2[21];
        if (v15 <= 0x5F)
        {
          goto LABEL_73;
        }

        v17 = v15 / 0x60 + 1;
        v16 = v10 + 96 * (v17 & 0x7FFFFFFFFFFFFFELL);
        v18 = (v10 + 128);
        v19 = v17 & 0x7FFFFFFFFFFFFFELL;
        do
        {
          v20 = *(v18 - 12);
          v21 = *v18;
          if (v20 < 1.0)
          {
            v20 = 1.0;
          }

          if (v21 < 1.0)
          {
            v21 = 1.0;
          }

          if (v20 > 10000.0)
          {
            v20 = 10000.0;
          }

          if (v21 > 10000.0)
          {
            v21 = 10000.0;
          }

          *(v18 - 12) = v20;
          *v18 = v21;
          v18 += 24;
          v19 -= 2;
        }

        while (v19);
        if (v17 != (v17 & 0x7FFFFFFFFFFFFFELL))
        {
LABEL_73:
          do
          {
            v22 = *(v16 + 32);
            if (v22 < 1.0)
            {
              v22 = 1.0;
            }

            if (v22 > 10000.0)
            {
              v22 = 10000.0;
            }

            *(v16 + 32) = v22;
            v16 += 96;
          }

          while (v16 != v9);
        }

        v53 = result;
        v23 = 1;
        if (result > 16)
        {
          goto LABEL_74;
        }

        v24 = 1.79769313e308;
        for (i = result; i != 17; ++i)
        {
          if (result <= i)
          {
            v28 = i;
            v26 = 0.0;
            v29 = v10;
            do
            {
              v30 = *(v29 + 32);
              v31 = 1.0;
              v32 = 1.79769313e308;
              v33 = result;
              do
              {
                v34 = vabdd_f64(v30, v28 / v33);
                if (v34 <= v32)
                {
                  v31 = v28 / v33;
                  v32 = v34;
                }

                v33 += result;
              }

              while (v33 <= i);
              v26 = v26 + vabdd_f64(v30, v31);
              v29 += 96;
            }

            while (v29 != v9);
          }

          else
          {
            v26 = 0.0;
            v27 = v10;
            do
            {
              v26 = v26 + fabs(*(v27 + 32) + -1.0);
              v27 += 96;
            }

            while (v27 != v9);
          }

          if (v26 < v24)
          {
            v23 = i;
            v24 = v26;
          }
        }

        if (result <= v23)
        {
          do
          {
            v42 = 1.0;
            v43 = 1.79769313e308;
            v44 = result;
            do
            {
              v45 = vabdd_f64(*(v10 + 32), v23 / v44);
              if (v45 <= v43)
              {
                v42 = v23 / v44;
                v43 = v45;
              }

              v44 += result;
            }

            while (v44 <= v23);
            if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
            {
              v5 = v5 & 0xFFFFFFFF00000000 | 0x189;
              webrtc::webrtc_logging_impl::Log("\r\t\a\t\a", v46, v47, v48, v49, v50, v51, v52, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/alignment_adjuster.cc");
            }

            *(v10 + 32) = v42;
            v10 += 96;
            LODWORD(result) = v53;
          }

          while (v10 != v9);
        }

        else
        {
LABEL_74:
          do
          {
            if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
            {
              v4 = v4 & 0xFFFFFFFF00000000 | 0x189;
              webrtc::webrtc_logging_impl::Log("\r\t\a\t\a", v35, v36, v37, v38, v39, v40, v41, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/alignment_adjuster.cc");
            }

            *(v10 + 32) = 0x3FF0000000000000;
            v10 += 96;
          }

          while (v10 != v9);
          LODWORD(result) = v53;
        }

        if (v23 <= result)
        {
          return result;
        }

        else
        {
          return v23;
        }
      }
    }
  }

  return result;
}

uint64_t webrtc::AlignmentMixer::SelectChannel(uint64_t result, uint64_t a2)
{
  if (*(result + 16) == 1 && (*(result + 24) > 0x7DuLL || *(result + 32) >= 0x7EuLL))
  {
    ++*(result + 72);
    v2 = 1;
    v3 = 2;
    goto LABEL_7;
  }

  v3 = *result;
  ++*(result + 72);
  if (v3 > 0)
  {
    v2 = 0;
    v3 = v3;
LABEL_7:
    v4 = 0;
    v5 = 0;
    v6 = *(a2 + 8);
    v7 = (*(a2 + 16) - v6) >> 2;
    while (v7 > v4)
    {
      v8 = (v6 + 4 * v4);
      v9 = v8[11];
      v10 = ((((((((((((((((((((((*v8 * *v8) + 0.0) + (v8[1] * v8[1])) + (v8[2] * v8[2])) + (v8[3] * v8[3])) + (v8[4] * v8[4])) + (v8[5] * v8[5])) + (v8[6] * v8[6])) + (v8[7] * v8[7])) + (v8[8] * v8[8])) + (v8[9] * v8[9])) + (v8[10] * v8[10])) + (v9 * v9)) + (v8[12] * v8[12])) + (v8[13] * v8[13])) + (v8[14] * v8[14])) + (v8[15] * v8[15])) + (v8[16] * v8[16])) + (v8[17] * v8[17])) + (v8[18] * v8[18])) + (v8[19] * v8[19])) + (v8[20] * v8[20])) + (v8[21] * v8[21]);
      v11 = v8[33];
      v12 = (((((((((((((((((((((v10 + (v8[22] * v8[22])) + (v8[23] * v8[23])) + (v8[24] * v8[24])) + (v8[25] * v8[25])) + (v8[26] * v8[26])) + (v8[27] * v8[27])) + (v8[28] * v8[28])) + (v8[29] * v8[29])) + (v8[30] * v8[30])) + (v8[31] * v8[31])) + (v8[32] * v8[32])) + (v11 * v11)) + (v8[34] * v8[34])) + (v8[35] * v8[35])) + (v8[36] * v8[36])) + (v8[37] * v8[37])) + (v8[38] * v8[38])) + (v8[39] * v8[39])) + (v8[40] * v8[40])) + (v8[41] * v8[41])) + (v8[42] * v8[42])) + (v8[43] * v8[43]);
      v13 = v8[55];
      v14 = (((((((((((((((((((v12 + (v8[44] * v8[44])) + (v8[45] * v8[45])) + (v8[46] * v8[46])) + (v8[47] * v8[47])) + (v8[48] * v8[48])) + (v8[49] * v8[49])) + (v8[50] * v8[50])) + (v8[51] * v8[51])) + (v8[52] * v8[52])) + (v8[53] * v8[53])) + (v8[54] * v8[54])) + (v13 * v13)) + (v8[56] * v8[56])) + (v8[57] * v8[57])) + (v8[58] * v8[58])) + (v8[59] * v8[59])) + (v8[60] * v8[60])) + (v8[61] * v8[61])) + (v8[62] * v8[62])) + (v8[63] * v8[63]);
      if (v5 <= 1 && v14 > *(result + 12))
      {
        ++*(result + 24 + 8 * v5);
      }

      v15 = *(result + 72);
      v16 = *(result + 40);
      v17 = (*(result + 48) - v16) >> 2;
      if (v15 > 0x3A98)
      {
        if (v17 <= v5)
        {
          goto LABEL_45;
        }

        v18 = v16->f32[v5] + ((v14 - v16->f32[v5]) * 0.0004);
      }

      else
      {
        if (v17 <= v5)
        {
          goto LABEL_45;
        }

        v18 = v14 + v16->f32[v5];
      }

      v16->f32[v5++] = v18;
      v4 += 64;
      if (v3 == v5)
      {
        if (v15 == 15000)
        {
          v19 = v3 - 1;
          if (v17 < v3 - 1)
          {
            v19 = v17;
          }

          v20 = v19 + 1;
          if (v20 > 8)
          {
            v23 = v20 & 7;
            if ((v20 & 7) == 0)
            {
              v23 = 8;
            }

            v21 = v20 - v23;
            v24 = v16 + 1;
            v25 = vdupq_n_s32(0x388BCF65u);
            v26 = v21;
            do
            {
              v27 = vmulq_f32(*v24, v25);
              v24[-1] = vmulq_f32(v24[-1], v25);
              *v24 = v27;
              v24 += 2;
              v26 -= 8;
            }

            while (v26);
          }

          else
          {
            v21 = 0;
          }

          v28 = v3 - v21;
          v29 = v17 - v21;
          v30 = &v16->f32[v21];
          while (v29)
          {
            *v30 = *v30 * 0.000066667;
            ++v30;
            --v29;
            if (!--v28)
            {
              goto LABEL_31;
            }
          }
        }

        else
        {
LABEL_31:
          v31 = 0;
          LODWORD(v22) = 0;
          while (v17 != v31 && v17 > v22)
          {
            if (v16->f32[v31] <= v16->f32[v22])
            {
              v22 = v22;
            }

            else
            {
              v22 = v31;
            }

            if (v3 == ++v31)
            {
              if ((v2 & 1) != 0 && *(result + 64) > 1)
              {
                goto LABEL_43;
              }

              goto LABEL_40;
            }
          }
        }

        goto LABEL_45;
      }
    }

    goto LABEL_45;
  }

  v22 = 0;
  v16 = *(result + 40);
  v17 = (*(result + 48) - v16) >> 2;
LABEL_40:
  if (v17 <= v22 || (v32 = *(result + 64), v17 <= v32))
  {
LABEL_45:
    __break(1u);
    return result;
  }

  if (v16->f32[v22] > (v16->f32[v32] + v16->f32[v32]))
  {
LABEL_43:
    *(result + 64) = v22;
    return v22;
  }

  return v32;
}

uint64_t webrtc::anonymous namespace::GetConfigFromTrials(uint64_t a1)
{
  (*(*a1 + 16))(v17);
  v6 = BYTE7(v18);
  if (SBYTE7(v18) < 0)
  {
    v6 = v17[1];
  }

  if (v6)
  {
    (*(*a1 + 16))(__p, a1, "WebRTC-ProbingScreenshareBwe", 28);
    v7 = __p[1];
    if ((SBYTE7(v15) & 0x80u) == 0)
    {
      v7 = SBYTE7(v15);
    }

    v8 = v7 == 0;
    if ((SBYTE7(v15) & 0x8000000000000000) != 0)
    {
      operator delete(__p[0]);
    }

    if ((BYTE7(v18) & 0x80) != 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = 1;
    if ((BYTE7(v18) & 0x80) != 0)
    {
LABEL_9:
      operator delete(v17[0]);
    }
  }

  if (v8)
  {
    webrtc::AlrExperimentSettings::CreateFromFieldTrial(a1, "WebRTC-ProbingScreenshareBwe", 28, v17);
    if (v19 & 1) != 0 || (webrtc::AlrExperimentSettings::CreateFromFieldTrial(a1, "WebRTC-StrictPacingAndProbing", 29, __p), v19 = v16, *v17 = *__p, v18 = v15, v20 = xmmword_273B8E370, v21 = 0.5, (v16))
    {
      *&v20 = v18 / 100.0;
      *(&v20 + 1) = SDWORD1(v18) / 100.0;
      v21 = SDWORD2(v18) / 100.0;
    }

    operator new();
  }

  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/congestion_controller/goog_cc/alr_detector.cc", 30, "AlrExperimentSettings::MaxOneFieldTrialEnabled(*key_value_config)", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v2, v3, v4, v5, v13);
  return webrtc::AlrDetector::OnBytesSent(v9, v10, v11);
}

uint64_t webrtc::AlrDetector::OnBytesSent(uint64_t this, int a2, uint64_t a3)
{
  if ((*(this + 32) & 1) == 0)
  {
    *(this + 24) = a3;
    *(this + 32) = 1;
    return this;
  }

  v3 = a3 - *(this + 24);
  *(this + 24) = a3;
  *(this + 32) = 1;
  v4 = *(this + 48);
  v5 = *(this + 56) - a2;
  if (v5 <= -v4)
  {
    v5 = -v4;
  }

  v6 = v3 * *(this + 40) / 8;
  if (v5 < 0 || *(this + 64) == 1)
  {
    v6 += v5;
  }

  if (v4 >= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = *(this + 48);
  }

  *(this + 56) = v7;
  if (v4)
  {
    if (v7 / v4 <= *(this + 8))
    {
      goto LABEL_17;
    }
  }

  else if (*(this + 8) >= 0.0)
  {
    goto LABEL_17;
  }

  if ((*(this + 80) & 1) == 0)
  {
    if (webrtc::g_clock)
    {
      v8 = this;
      this = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
    }

    else
    {
      v8 = this;
      if (!dword_28100D8E4)
      {
        mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
      }

      this = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
    }

    *(v8 + 72) = this / 1000000;
    *(v8 + 80) = 1;
    if (!*(v8 + 88))
    {
      return this;
    }

LABEL_30:
    operator new();
  }

LABEL_17:
  if (v4)
  {
    if (v7 / v4 >= *(this + 16))
    {
      return this;
    }
  }

  else if (*(this + 16) <= 0.0)
  {
    return this;
  }

  if (*(this + 80) == 1)
  {
    *(this + 80) = 0;
    if (*(this + 88))
    {
      goto LABEL_30;
    }
  }

  return this;
}

void webrtc::AlrExperimentSettings::CreateFromFieldTrial(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v52 = a2;
  v53 = a3;
  *a4 = 0;
  *(a4 + 32) = 0;
  (*(*a1 + 16))(&v51);
  v50 = 8;
  if (v49 <= "_Dogfood" && &v49[1] > "_Dogfood")
  {
    __break(1u);
    return;
  }

  strcpy(v49, "_Dogfood");
  v7 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
  v8 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
  size = v51.__r_.__value_.__l.__size_;
  v10 = v51.__r_.__value_.__r.__words[0];
  if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v51;
  }

  else
  {
    v11 = v51.__r_.__value_.__r.__words[0];
  }

  if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v12 = v51.__r_.__value_.__l.__size_;
  }

  if (!v12)
  {
    goto LABEL_51;
  }

  v13 = (v11 + v12);
  v14 = v11;
  v15 = (v11 + v12);
  while (2)
  {
    for (i = (v14->__r_.__value_.__r.__words + 7); ; i = (i + 1))
    {
      v14 = (i - 6);
      if (i[-1].__r_.__value_.__s.__data_[17] != 95)
      {
        if (v14 == v13)
        {
          goto LABEL_31;
        }

        continue;
      }

      if (v14 == v13)
      {
        goto LABEL_31;
      }

      if (v14->__r_.__value_.__s.__data_[0] == 68)
      {
        if ((&i[-1].__r_.__value_.__r.__words[2] + 3) == v13)
        {
          goto LABEL_31;
        }

        if (i[-1].__r_.__value_.__s.__data_[19] == 111)
        {
          if ((&i[-1].__r_.__value_.__r.__words[2] + 4) == v13)
          {
            goto LABEL_31;
          }

          if (i[-1].__r_.__value_.__s.__data_[20] == 103)
          {
            if ((&i[-1].__r_.__value_.__r.__words[2] + 5) == v13)
            {
              goto LABEL_31;
            }

            if (i[-1].__r_.__value_.__s.__data_[21] == 102)
            {
              if ((&i[-1].__r_.__value_.__r.__words[2] + 6) == v13)
              {
                goto LABEL_31;
              }

              if (i[-1].__r_.__value_.__s.__data_[22] == 111)
              {
                if ((&i[-1].__r_.__value_.__r.__words[2] + 7) == v13)
                {
                  goto LABEL_31;
                }

                if (*(&i[-1].__r_.__value_.__s + 23) == 111)
                {
                  break;
                }
              }
            }
          }
        }
      }
    }

    if (i != v13)
    {
      if (i->__r_.__value_.__s.__data_[0] == 100)
      {
        v15 = (i - 7);
      }

      continue;
    }

    break;
  }

LABEL_31:
  if (v15 != v13)
  {
    v17 = v15 - v11;
    if (v17 != -1 && v17 == v12 - 8)
    {
      if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
      {
        v18 = v17 - v51.__r_.__value_.__l.__size_;
        if (v17 <= v51.__r_.__value_.__l.__size_)
        {
          v51.__r_.__value_.__l.__size_ = v17;
          goto LABEL_49;
        }

        v19 = (v51.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        v8 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
        v7 = v51.__r_.__value_.__l.__size_;
        if (v19 - v51.__r_.__value_.__l.__size_ < v18)
        {
LABEL_37:
          std::string::__grow_by(&v51, v19, v18 - v19 + v7, v7, v7, 0, 0);
          v51.__r_.__value_.__l.__size_ = v7;
          v8 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
          v10 = v51.__r_.__value_.__r.__words[0];
        }

LABEL_38:
        if (v8 >= 0)
        {
          v20 = &v51;
        }

        else
        {
          v20 = v10;
        }

        bzero(v20 + v7, v18);
        v21 = v7 + v18;
        if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
        {
          v51.__r_.__value_.__l.__size_ = v7 + v18;
        }

        else
        {
          *(&v51.__r_.__value_.__s + 23) = v21 & 0x7F;
        }

        v22 = v20 + v21;
      }

      else
      {
        v18 = v17 - HIBYTE(v51.__r_.__value_.__r.__words[2]);
        if (v17 > HIBYTE(v51.__r_.__value_.__r.__words[2]))
        {
          v19 = 22;
          if (22 - HIBYTE(v51.__r_.__value_.__r.__words[2]) < v18)
          {
            goto LABEL_37;
          }

          goto LABEL_38;
        }

        *(&v51.__r_.__value_.__s + 23) = v17;
        v10 = &v51;
LABEL_49:
        v22 = v10 + v17;
      }

      *v22 = 0;
      v7 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
      size = v51.__r_.__value_.__l.__size_;
      v8 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
    }
  }

LABEL_51:
  if (v8 >= 0)
  {
    size = v7;
  }

  if (size)
  {
LABEL_54:
    if (v8 >= 0)
    {
      v23 = &v51;
    }

    else
    {
      v23 = v51.__r_.__value_.__r.__words[0];
    }

    if (sscanf(v23, "%f,%lld,%d,%d,%d,%d", &v47, &v47 + 8, &v48, &v48 + 4, &v48 + 8, &v48 + 12) == 6)
    {
      v24 = v48;
      *a4 = v47;
      *(a4 + 16) = v24;
      *(a4 + 32) = 1;
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        v44[0] = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/experiments/alr_experiment.cc";
        v44[1] = 553;
        v44[2] = &v43;
        v45[0] = "Using ALR experiment settings: pacing factor: ";
        v45[1] = v44;
        v46[0] = *&v47;
        *&v46[1] = v45;
        *&v46[2] = ", max pacer queue length: ";
        *&v46[3] = v46;
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)7,double>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)7,double>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v25, v26, v27, v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/experiments/alr_experiment.cc");
      }
    }

    else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*> const&)::t, v36, v37, v38, v39, v40, v41, v42, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/experiments/alr_experiment.cc");
    }
  }

  else if (a3 == 28)
  {
    v32 = *a2 == 0x502D435452626557 && *(a2 + 8) == 0x6353676E69626F72;
    v33 = v32 && *(a2 + 16) == 0x726168736E656572;
    if (v33 && *(a2 + 24) == 1702314597)
    {
      if (v8 < 0)
      {
        v51.__r_.__value_.__l.__size_ = 20;
        v35 = v51.__r_.__value_.__r.__words[0];
      }

      else
      {
        *(&v51.__r_.__value_.__s + 23) = 20;
        v35 = &v51;
      }

      strcpy(v35, "1.0,2875,80,40,-60,3");
      v8 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
      goto LABEL_54;
    }
  }

  if ((v50 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_80:
    operator delete(v51.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(v49[0]);
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_80;
  }
}

uint64_t webrtc::WebRtcAgc_AddMic(webrtc *this, __int16 **a2, __int16 *const *a3, uint64_t a4)
{
  v105 = *MEMORY[0x277D85DE8];
  v7 = *this;
  if (*this != 8000)
  {
    if (a4 == 160)
    {
      v8 = 16;
      v13 = *(this + 79);
      v10 = *(this + 81);
      v11 = __OFSUB__(v13, v10);
      v12 = v13 - v10;
      if (!((v12 < 0) ^ v11 | (v12 == 0)))
      {
        goto LABEL_8;
      }

      goto LABEL_5;
    }

    return 0xFFFFFFFFLL;
  }

  if (a4 != 80)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = 8;
  v9 = *(this + 79);
  v10 = *(this + 81);
  v11 = __OFSUB__(v9, v10);
  v12 = v9 - v10;
  if (!((v12 < 0) ^ v11 | (v12 == 0)))
  {
LABEL_8:
    v14 = 31 * v12 / (*(this + 80) - v10);
    v15 = *(this + 154);
    if (v14 <= v15)
    {
      if (v14 >= v15)
      {
        goto LABEL_14;
      }

      v16 = -1;
    }

    else
    {
      v16 = 1;
    }

    LOWORD(v15) = v16 + v15;
    *(this + 154) = v15;
LABEL_14:
    if (a3)
    {
      v18 = 0;
      do
      {
        v20 = a2;
        v21 = a3;
        do
        {
          v23 = *v20++;
          v22 = v23;
          v24 = (*(v23 + 2 * v18) * v19) >> 12;
          if (v24 <= -32768)
          {
            v24 = -32768;
          }

          if (v24 >= 0x7FFF)
          {
            LOWORD(v24) = 0x7FFF;
          }

          *(v22 + 2 * v18) = v24;
          v21 = (v21 - 1);
        }

        while (v21);
        ++v18;
      }

      while (v18 != a4);
    }

    goto LABEL_23;
  }

LABEL_5:
  *(this + 154) = 0;
LABEL_23:
  v25 = *(this + 151);
  v26 = *a2;
  v27 = **a2;
  v28 = vmull_high_s16(v27, v27);
  v29 = vmull_s16(*v27.i8, *v27.i8);
  if (v7 != 8000)
  {
    v30 = v26[1];
    v28 = vmaxq_s32(vmull_high_s16(v30, v30), v28);
    v29 = vmaxq_s32(vmull_s16(*v30.i8, *v30.i8), v29);
  }

  v31 = vmaxvq_s32(vmaxq_s32(v29, v28));
  v32 = 196;
  if (v25 > 0)
  {
    v32 = 236;
  }

  v33 = (this + v32);
  *v33 = v31;
  v34 = &v26[v8 / 8];
  v35 = *v34;
  v36 = vmull_high_s16(v35, v35);
  v37 = vmull_s16(*v35.i8, *v35.i8);
  if (v7 != 8000)
  {
    v38 = v34[1];
    v36 = vmaxq_s32(vmull_high_s16(v38, v38), v36);
    v37 = vmaxq_s32(vmull_s16(*v38.i8, *v38.i8), v37);
  }

  v33[1] = vmaxvq_s32(vmaxq_s32(v37, v36));
  v39 = &v26[v8 / 4];
  v40 = *v39;
  v41 = vmull_high_s16(v40, v40);
  v42 = vmull_s16(*v40.i8, *v40.i8);
  if (v7 != 8000)
  {
    v43 = v39[1];
    v41 = vmaxq_s32(vmull_high_s16(v43, v43), v41);
    v42 = vmaxq_s32(vmull_s16(*v43.i8, *v43.i8), v42);
  }

  v33[2] = vmaxvq_s32(vmaxq_s32(v42, v41));
  v44 = (v26 + 6 * v8);
  v45 = *v44;
  v46 = vmull_high_s16(v45, v45);
  v47 = vmull_s16(*v45.i8, *v45.i8);
  if (v7 != 8000)
  {
    v48 = v44[1];
    v46 = vmaxq_s32(vmull_high_s16(v48, v48), v46);
    v47 = vmaxq_s32(vmull_s16(*v48.i8, *v48.i8), v47);
  }

  v33[3] = vmaxvq_s32(vmaxq_s32(v47, v46));
  v49 = &v26[v8 / 2];
  v50 = *v49;
  v51 = vmull_high_s16(v50, v50);
  v52 = vmull_s16(*v50.i8, *v50.i8);
  if (v7 != 8000)
  {
    v53 = v49[1];
    v51 = vmaxq_s32(vmull_high_s16(v53, v53), v51);
    v52 = vmaxq_s32(vmull_s16(*v53.i8, *v53.i8), v52);
  }

  v33[4] = vmaxvq_s32(vmaxq_s32(v52, v51));
  v54 = (v26 + 10 * v8);
  v55 = *v54;
  v56 = vmull_high_s16(v55, v55);
  v57 = vmull_s16(*v55.i8, *v55.i8);
  if (v7 != 8000)
  {
    v58 = v54[1];
    v56 = vmaxq_s32(vmull_high_s16(v58, v58), v56);
    v57 = vmaxq_s32(vmull_s16(*v58.i8, *v58.i8), v57);
  }

  v33[5] = vmaxvq_s32(vmaxq_s32(v57, v56));
  v59 = (v26 + 12 * v8);
  v60 = *v59;
  v61 = vmull_high_s16(v60, v60);
  v62 = vmull_s16(*v60.i8, *v60.i8);
  if (v7 != 8000)
  {
    v63 = v59[1];
    v61 = vmaxq_s32(vmull_high_s16(v63, v63), v61);
    v62 = vmaxq_s32(vmull_s16(*v63.i8, *v63.i8), v62);
  }

  v33[6] = vmaxvq_s32(vmaxq_s32(v62, v61));
  v64 = (v26 + 14 * v8);
  v65 = *v64;
  v66 = vmull_high_s16(v65, v65);
  v67 = vmull_s16(*v65.i8, *v65.i8);
  if (v7 != 8000)
  {
    v68 = v64[1];
    v66 = vmaxq_s32(vmull_high_s16(v68, v68), v66);
    v67 = vmaxq_s32(vmull_s16(*v68.i8, *v68.i8), v67);
  }

  v33[7] = vmaxvq_s32(vmaxq_s32(v67, v66));
  v69 = &v26[v8];
  v70 = *v69;
  v71 = vmull_high_s16(v70, v70);
  v72 = vmull_s16(*v70.i8, *v70.i8);
  if (v7 != 8000)
  {
    v73 = v69[1];
    v71 = vmaxq_s32(vmull_high_s16(v73, v73), v71);
    v72 = vmaxq_s32(vmull_s16(*v73.i8, *v73.i8), v72);
  }

  v33[8] = vmaxvq_s32(vmaxq_s32(v72, v71));
  v74 = (v26 + 18 * v8);
  v75 = *v74;
  v76 = vmull_high_s16(v75, v75);
  v77 = vmull_s16(*v75.i8, *v75.i8);
  if (v7 != 8000)
  {
    v78 = v74[1];
    v76 = vmaxq_s32(vmull_high_s16(v78, v78), v76);
    v77 = vmaxq_s32(vmull_s16(*v78.i8, *v78.i8), v77);
  }

  v33[9] = vmaxvq_s32(vmaxq_s32(v77, v76));
  v79 = 156;
  if (v25 > 0)
  {
    v79 = 176;
  }

  v80 = (this + v79);
  if (v7 == 16000)
  {
    WebRtcSpl_DownsampleBy2(v26->i16, 0x20uLL, v104, this + 15);
  }

  else
  {
    v81 = v26[1];
    *v104 = *v26;
    *&v104[16] = v81;
  }

  v82 = vshrq_n_u32(vmull_s16(*&v104[14], *&v104[14]), 4uLL);
  v83 = vshrq_n_u32(vmull_high_s16(*&v104[14], *&v104[14]), 4uLL);
  v84 = vaddvq_s64(vaddq_s64(vaddl_u32(*v82.i8, *v83.i8), vaddl_high_u32(v82, v83))) + ((*&v104[30] * *&v104[30]) >> 4) + vaddvq_s32(vshrq_n_u32(vmull_s16(*v104, *v104), 4uLL)) + ((*&v104[8] * *&v104[8]) >> 4) + ((*&v104[10] * *&v104[10]) >> 4) + ((*&v104[12] * *&v104[12]) >> 4);
  if (v84 >= 0x7FFFFFFF)
  {
    LODWORD(v84) = 0x7FFFFFFF;
  }

  *v80 = v84;
  v85 = *a2;
  if (*this == 16000)
  {
    WebRtcSpl_DownsampleBy2(v85 + 32, 0x20uLL, v104, this + 15);
  }

  else
  {
    v86 = *(v85 + 3);
    *v104 = *(v85 + 2);
    *&v104[16] = v86;
  }

  v87 = vshrq_n_u32(vmull_s16(*&v104[14], *&v104[14]), 4uLL);
  v88 = vshrq_n_u32(vmull_high_s16(*&v104[14], *&v104[14]), 4uLL);
  v89 = vaddvq_s64(vaddq_s64(vaddl_u32(*v87.i8, *v88.i8), vaddl_high_u32(v87, v88))) + ((*&v104[30] * *&v104[30]) >> 4) + vaddvq_s32(vshrq_n_u32(vmull_s16(*v104, *v104), 4uLL)) + ((*&v104[8] * *&v104[8]) >> 4) + ((*&v104[10] * *&v104[10]) >> 4) + ((*&v104[12] * *&v104[12]) >> 4);
  if (v89 >= 0x7FFFFFFF)
  {
    LODWORD(v89) = 0x7FFFFFFF;
  }

  v80[1] = v89;
  v90 = *a2;
  if (*this == 16000)
  {
    WebRtcSpl_DownsampleBy2(v90 + 64, 0x20uLL, v104, this + 15);
  }

  else
  {
    v91 = *(v90 + 5);
    *v104 = *(v90 + 4);
    *&v104[16] = v91;
  }

  v92 = vshrq_n_u32(vmull_s16(*&v104[14], *&v104[14]), 4uLL);
  v93 = vshrq_n_u32(vmull_high_s16(*&v104[14], *&v104[14]), 4uLL);
  v94 = vaddvq_s64(vaddq_s64(vaddl_u32(*v92.i8, *v93.i8), vaddl_high_u32(v92, v93))) + ((*&v104[30] * *&v104[30]) >> 4) + vaddvq_s32(vshrq_n_u32(vmull_s16(*v104, *v104), 4uLL)) + ((*&v104[8] * *&v104[8]) >> 4) + ((*&v104[10] * *&v104[10]) >> 4) + ((*&v104[12] * *&v104[12]) >> 4);
  if (v94 >= 0x7FFFFFFF)
  {
    LODWORD(v94) = 0x7FFFFFFF;
  }

  v80[2] = v94;
  v95 = *a2;
  if (*this == 16000)
  {
    WebRtcSpl_DownsampleBy2(v95 + 96, 0x20uLL, v104, this + 15);
  }

  else
  {
    v96 = *(v95 + 7);
    *v104 = *(v95 + 6);
    *&v104[16] = v96;
  }

  v97 = vshrq_n_u32(vmull_s16(*&v104[14], *&v104[14]), 4uLL);
  v98 = vshrq_n_u32(vmull_high_s16(*&v104[14], *&v104[14]), 4uLL);
  v99 = vaddvq_s64(vaddq_s64(vaddl_u32(*v97.i8, *v98.i8), vaddl_high_u32(v97, v98))) + ((*&v104[30] * *&v104[30]) >> 4) + vaddvq_s32(vshrq_n_u32(vmull_s16(*v104, *v104), 4uLL)) + ((*&v104[8] * *&v104[8]) >> 4) + ((*&v104[10] * *&v104[10]) >> 4) + ((*&v104[12] * *&v104[12]) >> 4);
  if (v99 >= 0x7FFFFFFF)
  {
    LODWORD(v99) = 0x7FFFFFFF;
  }

  v80[3] = v99;
  v100 = *a2;
  if (*this == 16000)
  {
    WebRtcSpl_DownsampleBy2(v100 + 128, 0x20uLL, v104, this + 15);
  }

  else
  {
    v101 = *(v100 + 9);
    *v104 = *(v100 + 8);
    *&v104[16] = v101;
  }

  v102 = ((*v104 * *v104) >> 4) + ((*&v104[2] * *&v104[2]) >> 4) + ((*&v104[4] * *&v104[4]) >> 4) + ((*&v104[6] * *&v104[6]) >> 4) + ((*&v104[8] * *&v104[8]) >> 4) + ((*&v104[10] * *&v104[10]) >> 4) + ((*&v104[12] * *&v104[12]) >> 4) + ((*&v104[14] * *&v104[14]) >> 4) + ((*&v104[16] * *&v104[16]) >> 4) + ((*&v104[18] * *&v104[18]) >> 4) + ((*&v104[20] * *&v104[20]) >> 4) + ((*&v104[22] * *&v104[22]) >> 4) + ((*&v104[24] * *&v104[24]) >> 4) + ((*&v104[26] * *&v104[26]) >> 4) + ((*&v104[28] * *&v104[28]) >> 4) + ((*&v104[30] * *&v104[30]) >> 4);
  if (v102 >= 0x7FFFFFFF)
  {
    LODWORD(v102) = 0x7FFFFFFF;
  }

  v80[4] = v102;
  if (*(this + 151))
  {
    v103 = 2;
  }

  else
  {
    v103 = 1;
  }

  *(this + 151) = v103;
  webrtc::WebRtcAgc_ProcessVad(this + 352, *a2, a4);
  return 0;
}

uint64_t webrtc::WebRtcAgc_VirtualMic(webrtc *this, __int16 **a2, __int16 *const *a3, unint64_t a4, int a5, int *a6, int *a7)
{
  if (*this == 8000)
  {
    v7 = 5500;
  }

  else
  {
    v7 = 11000;
  }

  v8 = *a2;
  if (a4 < 2)
  {
    goto LABEL_14;
  }

  v9 = 0;
  v10 = v8 + 1;
  v11 = *v8 * *v8;
  v12 = a4 - 1;
  do
  {
    v13 = *v10;
    v14 = v13 * v13;
    if (v11 >= v7)
    {
      v14 = 0;
    }

    v11 += v14;
    v9 += ((*(v10++ - 1) ^ v13) & 0x8000) >> 15;
    --v12;
  }

  while (v12);
  v15 = v11 < 0x1F4 || v9 <= 5;
  if (v15 || v9 > 0xFu && (v11 <= v7 || v9 >= 0x14u))
  {
LABEL_14:
    *(this + 332) = 1;
    v16 = a5 << *(this + 174);
    if (v16 != *(this + 76))
    {
      goto LABEL_23;
    }

LABEL_15:
    v17 = *(this + 81);
    if (*(this + 79) < v17)
    {
      v17 = *(this + 79);
    }

    if (v17 <= 127)
    {
    }

    if (a4)
    {
      goto LABEL_24;
    }

    goto LABEL_44;
  }

  *(this + 332) = 0;
  v16 = a5 << *(this + 174);
  if (v16 == *(this + 76))
  {
    goto LABEL_15;
  }

LABEL_23:
  *(this + 76) = v16;
  v17 = 127;
  *(this + 79) = 127;
  if (a4)
  {
LABEL_24:
    v19 = *v18;
    if (a3 > 1)
    {
      v20 = 0;
      while (1)
      {
        v21 = (v8[v20] * v19) >> 10;
        if (v21 < 0x8000)
        {
          if (v21 > -32769)
          {
            goto LABEL_37;
          }

          v22 = v17 - 128;
          if (v17 > 127)
          {
          }

          else
          {
            v22 = 128 - v17;
          }

          LOWORD(v21) = 0x8000;
        }

        else
        {
          v22 = v17 - 128;
          if (v17 > 127)
          {
          }

          else
          {
            v22 = 128 - v17;
          }

          LOWORD(v21) = 0x7FFF;
        }

        --v17;
        v19 = v23[v22];
LABEL_37:
        v8[v20] = v21;
        v24 = (a2 + 1);
        v25 = a3 - 1;
        do
        {
          v27 = *v24++;
          v26 = v27;
          v28 = (v19 * *(v27 + 2 * v20)) >> 10;
          if (v28 >= 0x7FFF)
          {
            v28 = 0x7FFF;
          }

          if (v28 <= -32768)
          {
            LOWORD(v28) = 0x8000;
          }

          *(v26 + 2 * v20) = v28;
          --v25;
        }

        while (v25);
        if (++v20 == a4)
        {
          goto LABEL_44;
        }
      }
    }

    for (i = a4; i; --i)
    {
      v33 = (*v8 * v19) >> 10;
      if (v33 >= 0x8000)
      {
        v31 = 128 - v17;
        if (v17 < 128)
        {
        }

        else
        {
          v31 = v17 - 128;
        }

        LOWORD(v33) = 0x7FFF;
      }

      else
      {
        if (v33 > -32769)
        {
          goto LABEL_53;
        }

        v31 = 128 - v17;
        if (v17 < 128)
        {
        }

        else
        {
          v31 = v17 - 128;
        }

        LOWORD(v33) = 0x8000;
      }

      --v17;
      v19 = v32[v31];
LABEL_53:
      *v8++ = v33;
    }
  }

LABEL_44:
  *(this + 78) = v17;
  *a6 = v17 >> *(this + 174);
  if (webrtc::WebRtcAgc_AddMic(this, a2, a3, a4))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t webrtc::WebRtcAgc_ProcessAnalog(webrtc *this, void *a2, int *a3, int *a4, int a5, _BYTE *a6, unsigned __int8 *a7)
{
  v7 = a2 << *(this + 174);
  v8 = *(this + 81);
  if (v7 > v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *(this + 83);
  if (v7 < v9)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(this + 145))
  {
    v11 = *(this + 79);
    if (v11 <= v8)
    {
      v12 = *(this + 81);
    }

    else
    {
      v12 = *(this + 79);
    }

    if (v7 == v8)
    {
      v7 = v12;
    }

    if (v7 == v11)
    {
      goto LABEL_25;
    }
  }

  else
  {
    *(this + 145) = 1;
    if (v7 < v9 + ((51 * (*(this + 80) - v9)) >> 9) && *(this + 4) == 1)
    {
      v7 = v9 + ((51 * (*(this + 80) - v9)) >> 9);
    }

    *(this + 79) = v7;
    v11 = v7;
    if (v7 <= v8)
    {
      v13 = v8;
    }

    else
    {
      v13 = v7;
    }

    if (v7 == v8)
    {
      v7 = v13;
    }

    if (v7 == v11)
    {
      goto LABEL_25;
    }
  }

  if (v7 >= *(this + 84))
  {
    if (*(this + 86) == a2)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v7 = v9 + ((51 * (*(this + 80) - v9)) >> 9);
  }

  *(this + 79) = v7;
  v11 = v7;
LABEL_25:
  if (v11 > *(this + 80))
  {
    *(this + 80) = v11;
  }

  v14 = vdupq_n_s32(0x36Bu);
  v15 = *(this + 196);
  v16 = *(this + 220);
  v17 = *(this + 204);
  v18.i64[0] = v15;
  v18.i64[1] = *(this + 204);
  v19 = vshrq_n_s32(v18, 0x14uLL);
  v20 = vshrq_n_s32(vextq_s8(v17, v16, 8uLL), 0x14uLL);
  v21 = vandq_s8(vuzp1q_s16(v19, v20), vuzp1q_s16(vcgtq_s32(v19, v14), vcgtq_s32(v20, v14)));
  v21.i16[0] = vaddvq_s16(v21);
  *v20.i8 = vshr_n_s32(*&vextq_s8(v16, v16, 8uLL), 0x14uLL);
  v21.i16[2] = *(this + 139);
  *v14.i8 = vadd_s32(*v21.i8, vand_s8(*v20.i8, vcgt_s32(*v20.i8, *v14.i8)));
  *(this + 86) = a2;
  v22 = vadd_s32(*v14.i8, vdup_lane_s32(*v14.i8, 1)).i16[0];
  if (v22 <= 25000)
  {
    *(this + 139) = (32440 * v22) >> 15;
    v25 = v15;
    v26 = HIDWORD(v15);
    v24 = v11;
  }

  else
  {
    *(this + 139) = 0;
    *(this + 27) = ((*(this + 27) + (*(this + 27) < 0 ? 7 : 0)) & 0xFFFFFFF8) - *(this + 27) / 8;
    *(this + 85) = v11;
    v23 = v9 + ((29591 * (v11 - v9)) >> 15);
    if (v23 >= v11 - 2)
    {
      v24 = v11 - 2;
    }

    else
    {
      v24 = v23;
    }

    *(this + 79) = v24;
    if (v24 >= *(this + 84))
    {
      v25 = v15;
      v26 = HIDWORD(v15);
    }

    else
    {
      *a6 = 1;
      v25 = *(this + 49);
      v26 = *(this + 50);
      v16 = *(this + 220);
      v17 = *(this + 204);
    }

    *(this + 286) = 65436;
    *(this + 28) = 0;
    *(this + 294) = 34079060;
    *(this + 92) = *(this + 4);
  }

  if (vaddvq_s64(vaddq_s64(vaddl_s32(*v17.i8, *v16.i8), vaddl_high_s32(v17, v16))) + v26 + v25 <= 499)
  {
    v27 = (*(this + 146) + 10);
    v28 = v27 > 500;
    *(this + 146) = v27;
    v29 = *(this + 150);
    if (v29 < 1)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  v28 = 0;
  *(this + 146) = 0;
  v29 = *(this + 150);
  if (v29 >= 1)
  {
LABEL_40:
    LOWORD(v29) = v29 - 10;
    *(this + 150) = v29;
  }

LABEL_41:
  if (v28)
  {
    *(this + 146) = 0;
    if (v24 < (*(this + 81) + *(this + 83) + 1) / 2)
    {
      if ((1126 * v24) >> 10 >= *(this + 85))
      {
        v24 = *(this + 85);
      }

      else
      {
        v24 = (1126 * v24) >> 10;
      }

      *(this + 79) = v24;
    }

    *(this + 298) = 524288000;
    *(this + 28) = 0;
    LOWORD(v29) = 8000;
  }

  if (*(this + 198) > 2499)
  {
    v51 = *(this + 198);
    v52 = v51 >> 2;
    v53 = ((4500 - v51) >> 1) + 400;
    if (v52 >= 0x465)
    {
      LOWORD(v53) = 400;
    }

    v54 = (31 * *(this + 140) + v53) >> 5;
    *(this + 140) = v54;
    v30 = this + 116;
    v31 = *(this + 138);
    v32 = *(this + 138);
    if (a4 <= v54)
    {
LABEL_50:
      v33 = *(this + 39);
      *(this + 25) += (v33 - *&v30[4 * v31]) >> 3;
      *&v30[4 * v31] = v33;
      if (v32 == 9)
      {
        v34 = 0;
      }

      else
      {
        v34 = v32 + 1;
      }

      v35 = *(this + 25);
      *(this + 26) += (v33 - *(this + 26)) >> 6;
      v36 = *(this + 40);
      *(this + 25) = v35 + ((v36 - *&v30[4 * v34]) >> 3);
      *&v30[4 * v34] = v36;
      if ((v34 + 1) == 10)
      {
        v37 = 0;
      }

      else
      {
        v37 = v34 + 1;
      }

      v38 = *(this + 25);
      *(this + 26) += (v36 - *(this + 26)) >> 6;
      v39 = *(this + 41);
      *(this + 25) = v38 + ((v39 - *&v30[4 * v37]) >> 3);
      *&v30[4 * v37] = v39;
      if ((v37 + 1) == 10)
      {
        v40 = 0;
      }

      else
      {
        v40 = v37 + 1;
      }

      v41 = *(this + 25);
      *(this + 26) += (v39 - *(this + 26)) >> 6;
      v42 = *(this + 42);
      *(this + 25) = v41 + ((v42 - *&v30[4 * v40]) >> 3);
      *&v30[4 * v40] = v42;
      if ((v40 + 1) == 10)
      {
        v43 = 0;
      }

      else
      {
        v43 = v40 + 1;
      }

      v44 = *(this + 25);
      *(this + 26) += (v42 - *(this + 26)) >> 6;
      v45 = *(this + 43);
      *(this + 25) = v44 + ((v45 - *&v30[4 * v43]) >> 3);
      *&v30[4 * v43] = v45;
      if ((v43 + 1) == 10)
      {
        v46 = 0;
      }

      else
      {
        v46 = v43 + 1;
      }

      *(this + 26) += (v45 - *(this + 26)) >> 6;
      *(this + 138) = v46;
      if (a5 != 1)
      {
        goto LABEL_66;
      }

LABEL_145:
      v48 = *(this + 79);
      if (v48 > v11)
      {
        goto LABEL_68;
      }

      goto LABEL_69;
    }
  }

  else
  {
    *(this + 140) = 1500;
    v30 = this + 116;
    v31 = *(this + 138);
    v32 = *(this + 138);
    if (a4 <= 1500)
    {
      goto LABEL_50;
    }
  }

  v55 = 0;
  v56 = *(this + 149);
  v57 = *(this + 25);
  do
  {
    v58 = *(this + v55 + 156);
    *(this + 25) = v57 + ((v58 - *&v30[4 * v32]) >> 3);
    *&v30[4 * v32] = v58;
    if ((v32 + 1) == 10)
    {
      LOWORD(v32) = 0;
    }

    else
    {
      LOWORD(v32) = v32 + 1;
    }

    v59 = *(this + 26) + ((v58 - *(this + 26)) >> 6);
    *(this + 26) = v59;
    if (v56 >= 250)
    {
      if (v56 == 250)
      {
        v56 = 252;
        *(this + 149) = 252;
        *(this + 27) = 10 * (*(this + 28) >> 3);
      }
    }

    else
    {
      v56 += 2;
      *(this + 149) = v56;
      if (v59 > *(this + 28))
      {
        *(this + 28) = v59;
      }
    }

    v57 = *(this + 25);
    v60 = *(this + 27) + ((v57 - *(this + 27)) >> 10);
    *(this + 27) = v60;
    if (v60 <= *(this + 12))
    {
      if (v60 <= *(this + 23))
      {
        if (v60 >= *(this + 13))
        {
          if (v60 >= *(this + 24))
          {
            v81 = *(this + 144);
            if (v81 > 4000)
            {
              *(this + 294) = 65536500;
              *(this + 92) = *(this + 5);
            }

            else
            {
              *(this + 144) = v81 + 2;
            }

            *(this + 71) = 0;
            goto LABEL_81;
          }

          *(this + 286) = 0;
          v74 = *(this + 142) + 2;
          *(this + 142) = v74;
          if (*(this + 148) < v74)
          {
            *(this + 142) = 0;
            v75 = *(this + 83);
            v76 = v24 - v75;
            v77 = *(this + 82) - v75;
            if (!v77)
            {
              LOWORD(v78) = 0x4000;
              goto LABEL_115;
            }

            v78 = (v76 << 14) / v77;
            if (v78 <= 5243)
            {
              if (v78 <= 2621)
              {
                v79 = v78 > 1311;
              }

              else
              {
                v79 = 2;
                if (v78 > 0xF5Cu)
                {
                  v79 = 3;
                }
              }
            }

            else if (v78 <= 0x1EB8u)
            {
              v79 = 4;
              if (v78 > 0x199Au)
              {
                v79 = 5;
              }
            }

            else if (v78 >= 0x2F5Du)
            {
LABEL_115:
              v79 = 7;
            }

            else
            {
              v79 = 6;
            }

            *(this + 27) = 67 * (v60 / 64);
            v24 = v75 + ((v76 * v80) >> 14);
            if (v24 <= v11)
            {
              v24 = v11 + 1;
            }

LABEL_81:
            *(this + 79) = v24;
          }
        }

        else
        {
          *(this + 286) = 0;
          v67 = *(this + 142) + 2;
          *(this + 142) = v67;
          if (*(this + 147) < v67)
          {
            *(this + 142) = 0;
            v68 = *(this + 83);
            v69 = v24 - v68;
            v70 = *(this + 82) - v68;
            if (!v70)
            {
              LOWORD(v71) = 0x4000;
              goto LABEL_108;
            }

            v71 = (v69 << 14) / v70;
            if (v71 <= 5243)
            {
              if (v71 <= 2621)
              {
                v72 = v71 > 1311;
              }

              else
              {
                v72 = 2;
                if (v71 > 0xF5Cu)
                {
                  v72 = 3;
                }
              }
            }

            else if (v71 <= 0x1EB8u)
            {
              v72 = 4;
              if (v71 > 0x199Au)
              {
                v72 = 5;
              }
            }

            else if (v71 >= 0x2F5Du)
            {
LABEL_108:
              v72 = 7;
            }

            else
            {
              v72 = 6;
            }

            *(this + 27) = 67 * (v60 / 64);
            v24 = v68 + ((v69 * v73) >> 14);
            if (v24 <= v11 + 2)
            {
              v24 = v11 + 2;
            }

            goto LABEL_81;
          }
        }
      }

      else
      {
        v64 = *(this + 143) + 2;
        *(this + 143) = v64;
        *(this + 142) = 0;
        *(this + 144) = 0;
        if (*(this + 148) < v64)
        {
          *(this + 143) = 0;
          *(this + 27) = 53 * (v60 / 64);
          v65 = *(this + 79);
          v66 = (v65 - *(this + 80) + 16 * *(this + 80)) / 16;
          if (v66 <= *(this + 81))
          {
            v66 = *(this + 81);
          }

          *(this + 80) = v66;
          *(this + 85) = v65;
          v24 = *(this + 83) + ((31621 * (v24 - *(this + 83))) >> 15);
          if (v24 >= v11)
          {
            v24 = v11 - 1;
          }

          goto LABEL_81;
        }
      }
    }

    else
    {
      v61 = *(this + 143) + 2;
      *(this + 143) = v61;
      *(this + 142) = 0;
      *(this + 144) = 0;
      if (*(this + 147) < v61)
      {
        v56 = 0;
        v62 = *(this + 79);
        v63 = (v62 - *(this + 80) + 16 * *(this + 80)) / 16;
        if (v63 <= *(this + 81))
        {
          v63 = *(this + 81);
        }

        *(this + 80) = v63;
        *(this + 143) = 0;
        *(this + 85) = v62;
        v24 = *(this + 83) + ((31130 * (v24 - *(this + 83))) >> 15);
        if (v24 >= v11)
        {
          v24 = v11 - 1;
        }

        *(this + 79) = v24;
        *(this + 149) = 0;
        *(this + 108) = (53 * (v60 >> 6));
      }
    }

    v55 += 4;
  }

  while (v55 != 20);
  *(this + 138) = v32;
  if (a5 == 1)
  {
    goto LABEL_145;
  }

LABEL_66:
  v47 = v29 - 1;
  v48 = *(this + 79);
  if (v47 <= 0x1F3Eu && v48 > v11)
  {
LABEL_68:
    *(this + 79) = v11;
    v48 = v11;
  }

LABEL_69:
  v49 = *(this + 80);
  if (v48 > v49 || (v49 = *(this + 84), v48 < v49))
  {
    *(this + 79) = v49;
    v48 = v49;
  }

  if (v48 >= *(this + 81))
  {
    v48 = *(this + 81);
  }

  v50 = *(this + 174);
  result = 0;
  *a3 = v48 >> v50;
  return result;
}

uint64_t webrtc::WebRtcAgc_Analyze(webrtc *this, __int16 **a2, const __int16 *const *a3, uint64_t a4, void *a5, int *a6, int *a7, _BYTE *a8, unsigned __int8 *a9, int *a10)
{
  if (!this)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = *this;
  result = 0xFFFFFFFFLL;
  if (v11 > 31999)
  {
    if (v11 != 32000 && v11 != 48000)
    {
      return result;
    }
  }

  else
  {
    if (v11 == 8000)
    {
      if (a4 != 80)
      {
        return result;
      }

      goto LABEL_13;
    }

    if (v11 != 16000)
    {
      return result;
    }
  }

  if (a4 != 160)
  {
    return result;
  }

LABEL_13:
  v14 = a7;
  *a8 = 0;
  *a6 = a5;
  v18 = this;
  result = webrtc::WebRtcAgc_ComputeDigitalGains(this + 408, a2, a3, *this, *(this + 332), a9);
  if (result != -1)
  {
    if ((v20 = v18, v21 = v18[4], v21 > 2) || v21 == 2 && v18[332] || (result = webrtc::WebRtcAgc_ProcessAnalog(v18, a5, a6, v18[194], v14, a8, v19), v20 = v18, result != -1))
    {
      v22 = v20[151];
      if (v22 < 2)
      {
        if (v22 != 1)
        {
          return 0;
        }
      }

      else
      {
        *(v20 + 98) = *(v20 + 118);
        *(v20 + 106) = *(v20 + 126);
        *(v20 + 114) = *(v20 + 134);
        *(v20 + 78) = *(v20 + 11);
        *(v20 + 43) = *(v20 + 48);
      }

      result = 0;
      v20[151] = v22 - 1;
    }
  }

  return result;
}

uint64_t webrtc::WebRtcAgc_Init(webrtc *this, void *a2, int a3, unsigned int a4, int a5)
{
  *(this + 412) = 0x1000000000000;
  *(this + 274) = 0;
  *(this + 275) = a4;
  *(this + 73) = 0x3C00000000030000;
  *(this + 74) = 0x3C0000000001F400;
  *(this + 150) = 128000;
  *(this + 302) = 0;
  *(this + 552) = 0u;
  *(this + 568) = 0u;
  *(this + 160) = 196608;
  *(this + 644) = 0x1F4003C000000;
  *(this + 652) = 0x1F4003C000000;
  *(this + 330) = 0;
  *(this + 38) = 0u;
  *(this + 39) = 0u;
  *(this + 139) = 0;
  *(this + 102) = (a4 != 3) << 27;
  if (a4 > 3)
  {
    return 0xFFFFFFFFLL;
  }

  *(this + 4) = a4;
  *this = a5;
  *(this + 48) = 0x3C00000000030000;
  *(this + 98) = 128000;
  *(this + 99) = 1006632960;
  *(this + 100) = 128000;
  *(this + 202) = 0;
  *(this + 22) = 0uLL;
  *(this + 23) = 0uLL;
  *(this + 174) = 0;
  if (a4 == 2)
  {
    v7 = 255;
  }

  else
  {
    v7 = a3;
  }

  if (a4 == 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = a2;
  }

  if (a4 == 2)
  {
    v9 = 127;
  }

  else
  {
    v9 = a3;
  }

  v10 = v7 - v8;
  if (v7 < v8)
  {
    v10 = v7 - v8 + 3;
  }

  *(this + 83) = v8;
  *(this + 81) = v7;
  v11 = v7 + (v10 >> 2);
  *(this + 80) = v11;
  *(this + 82) = v11;
  *(this + 85) = v7;
  *(this + 86) = 0;
  *(this + 79) = v9;
  *(this + 76) = v9;
  *(this + 78) = 127;
  *(this + 84) = v8 + ((10 * (v11 - v8)) >> 8);
  *(this + 154) = 0;
  *(this + 284) = 0;
  *(this + 146) = 0;
  *(this + 294) = 34079060;
  *(this + 28) = 0;
  *(this + 70) = 400;
  memset_pattern16(this + 116, &unk_273B8E3B0, 0x28uLL);
  *(this + 196) = 0u;
  *(this + 100) = 0x3F9C000004E2;
  *(this + 138) = 0;
  *(this + 156) = 0;
  *(this + 164) = 0;
  *(this + 43) = 0;
  *(this + 151) = 0;
  *(this + 212) = 0u;
  *(this + 228) = 0u;
  *(this + 244) = 0u;
  *(this + 260) = 0u;
  *(this + 60) = 0u;
  *(this + 76) = 0u;
  *(this + 12) = 42;
  *(this + 16) = 1;
  *(this + 3) = 589827;
  v12 = *(this + 8);
  v13 = (v12 << 32) | 0x90003;
  if (((v12 << 32) & 0xFE00000000) != 0)
  {
    goto LABEL_31;
  }

  v14 = v13 >> 16;
  v15 = HIDWORD(v13);
  *(this + 10) = BYTE4(v13);
  *(this + 2) = 9;
  *(this + 3) = 3;
  v16 = *(this + 4);
  v17 = v13 >> 16;
  if (v16 == 3)
  {
    LOWORD(v17) = v14 + 3;
    *(this + 2) = v14 + 3;
  }

  if (((5 * v17 + 5) / 11) <= 0x7FFBu)
  {
    v18 = ((5958 * (5 * v17 + 5)) >> 16) + ((5958 * (5 * v17 + 5)) >> 31) + 4;
  }

  else
  {
    LOWORD(v18) = 4;
  }

  v19 = v16 == 3 ? v17 : v18;
  *(this + 29) = v19;
  *(this + 28) = 20;
  *(this + 28) = xmmword_273B8E3A0;
  *(this + 44) = 0x287984C00813652;
  *(this + 13) = 4244080;
  *(this + 92) = 0xA2AB200101CFECLL;
  if (webrtc::WebRtcAgc_CalculateGainTable((this + 420), v17, 3, v12, v19) == -1)
  {
LABEL_31:
    *(this + 13) = 18000;
    return 0xFFFFFFFFLL;
  }

  else
  {
    *(this + 10) = v14;
    *(this + 22) = v15;
    *(this + 9) = 3;
    *(this + 27) = *(this + 7);
    *(this + 332) = 0;
    v21 = (v7 & 0xFC000000) != 0 || v7 <= v8;
    return (v21 << 31 >> 31);
  }
}

float64x2_t webrtc::ApiCallJitterMetrics::ReportCaptureCall(webrtc::ApiCallJitterMetrics *this)
{
  if (*(this + 24) == 1)
  {
    if (*(this + 25) == 1)
    {
      v2 = *(this + 4);
      v3 = *(this + 1);
      if (v3 >= v2)
      {
        v3 = *(this + 4);
      }

      if (*this > v2)
      {
        v2 = *this;
      }

      *this = v2;
      *(this + 1) = v3;
    }

    *(this + 4) = 1;
    v4 = this + 16;
    *(this + 12) = 256;
  }

  else
  {
    v4 = this + 16;
    v5 = *(this + 25);
    ++*(this + 4);
    *(this + 24) = 0;
    if ((v5 & 1) == 0)
    {
      return result;
    }
  }

  v6 = *(this + 5) + 1;
  *(this + 5) = v6;
  if (v6 == 1000)
  {
    explicit = atomic_load_explicit(&_MergedGlobals_6, memory_order_acquire);
    if (explicit)
    {
      if (*this >= 50)
      {
        v8 = 50;
      }

      else
      {
        v8 = *this;
      }

      webrtc::metrics::HistogramAdd(explicit, v8);
      v9 = atomic_load_explicit(&qword_28100B880, memory_order_acquire);
      if (v9)
      {
LABEL_16:
        if (*(this + 1) >= 50)
        {
          v10 = 50;
        }

        else
        {
          v10 = *(this + 1);
        }

        webrtc::metrics::HistogramAdd(v9, v10);
        v11 = atomic_load_explicit(&qword_28100B888, memory_order_acquire);
        if (v11)
        {
LABEL_20:
          if (*(this + 2) >= 50)
          {
            v12 = 50;
          }

          else
          {
            v12 = *(this + 2);
          }

          webrtc::metrics::HistogramAdd(v11, v12);
          v13 = atomic_load_explicit(&qword_28100B890, memory_order_acquire);
          if (v13)
          {
            goto LABEL_24;
          }

          goto LABEL_31;
        }

LABEL_30:
        v17 = 0;
        atomic_compare_exchange_strong(&qword_28100B888, &v17, 0);
        v13 = atomic_load_explicit(&qword_28100B890, memory_order_acquire);
        if (v13)
        {
LABEL_24:
          if (*(this + 3) >= 50)
          {
            v14 = 50;
          }

          else
          {
            v14 = *(this + 3);
          }

          webrtc::metrics::HistogramAdd(v13, v14);
          goto LABEL_32;
        }

LABEL_31:
        v18 = 0;
        atomic_compare_exchange_strong(&qword_28100B890, &v18, 0);
LABEL_32:
        v19.f64[0] = NAN;
        v19.f64[1] = NAN;
        result = vnegq_f64(v19);
        *this = result;
        *v4 = 0;
        *(v4 + 4) = 0;
        return result;
      }
    }

    else
    {
      v15 = 0;
      atomic_compare_exchange_strong(&_MergedGlobals_6, &v15, 0);
      v9 = atomic_load_explicit(&qword_28100B880, memory_order_acquire);
      if (v9)
      {
        goto LABEL_16;
      }
    }

    v16 = 0;
    atomic_compare_exchange_strong(&qword_28100B880, &v16, 0);
    v11 = atomic_load_explicit(&qword_28100B888, memory_order_acquire);
    if (v11)
    {
      goto LABEL_20;
    }

    goto LABEL_30;
  }

  return result;
}

void webrtc::rtcp::App::~App(webrtc::rtcp::App *this)
{
  *this = &unk_28828CCD8;
  v1 = *(this + 5);
  *(this + 5) = 0;
  if (v1)
  {
    MEMORY[0x2743DA520](v1, 0x1000C8077774924);
  }
}

{
  *this = &unk_28828CCD8;
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    MEMORY[0x2743DA520](v2, 0x1000C8077774924);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::rtcp::App::Parse(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (v2 <= 7)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      goto LABEL_10;
    }

    return 0;
  }

  if ((v2 & 3) != 0)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
LABEL_10:
      webrtc::webrtc_logging_impl::Log("\r\t", v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_packet/app.cc");
      return 0;
    }

    return 0;
  }

  *(a1 + 12) = *(a2 + 1);
  v11 = *(a2 + 8);
  *(a1 + 8) = bswap32(*v11);
  *(a1 + 16) = bswap32(v11[1]);
  *(a1 + 24) = 0;
  v12 = v2 - 8;
  if (v2 != 8)
  {
    if (*(a1 + 32) < v12)
    {
      operator new[]();
    }

    memcpy(*(a1 + 40), v11 + 2, v12);
    *(a1 + 24) = v12;
  }

  return 1;
}

uint64_t webrtc::rtcp::App::Create(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v12 = *a3;
  if ((*(*a1 + 16))(a1) + v12 <= a4)
  {
LABEL_4:
    (*(*a1 + 16))(a1);
    v13 = *(a1 + 12);
    v14 = (*(*a1 + 16))(a1);
    *(a2 + *a3) = v13 | 0x80;
    *(a2 + *a3 + 1) = -52;
    *(a2 + *a3 + 2) = (v14 - 4) >> 10;
    *(a2 + *a3 + 3) = (v14 - 4) >> 2;
    v15 = *a3 + 4;
    *a3 = v15;
    *(a2 + v15) = bswap32(*(a1 + 8));
    *(a2 + *a3 + 4) = bswap32(*(a1 + 16));
    v16 = *(a1 + 24);
    if (v16)
    {
      memcpy((a2 + *a3 + 8), *(a1 + 40), v16);
      v17 = *(a1 + 24) + 8;
    }

    else
    {
      v17 = 8;
    }

    *a3 += v17;
    return 1;
  }

  else
  {
    while (*a3)
    {
      a6(a5, a2);
      *a3 = 0;
      if ((*(*a1 + 16))(a1) <= a4)
      {
        goto LABEL_4;
      }
    }

    return 0;
  }
}

char *absl::str_format_internal::anonymous namespace::ConvertIntImplInnerSlow(char *result, uint64_t a2, uint64_t a3, int a4, char *a5)
{
  v5 = *result;
  v6 = v5 < 49;
  v7 = a2 - v6;
  if (a2 - v6 < 0)
  {
    goto LABEL_112;
  }

  v9 = a2;
  v10 = result;
  v11 = HIDWORD(a3);
  if (a3 < 0)
  {
    v11 = 0;
  }

  v12 = v11 >= v7;
  v13 = v11 - v7;
  if (!v12)
  {
    v13 = 0;
  }

  v14 = (a3 & 0xFE) == 2;
  if ((a3 & 0xFE) == 2)
  {
    v15 = "-";
  }

  else
  {
    v15 = 0;
  }

  if ((a3 & 0xFE) == 2 && v5 != 45)
  {
    if ((a3 & 0x200) != 0)
    {
      v15 = "+";
      v14 = 1;
    }

    else
    {
      v14 = (BYTE1(a3) & 4) >> 2;
      if ((a3 & 0x400) != 0)
      {
        v15 = " ";
      }

      else
      {
        v15 = 0;
      }
    }
  }

  v16 = 0;
  v12 = v13 >= v14;
  v17 = v13 - v14;
  if (!v12)
  {
    v17 = 0;
  }

  v18 = 1;
  if (a3 > 0x11u)
  {
    v19 = 0;
    v21 = v17;
    v22 = a4;
    if (a4 < 0)
    {
      v22 = 1;
    }

    if ((a3 & 0x800) != 0)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v19 = 0;
    if (((1 << a3) & 0x200C0) != 0)
    {
      if ((a3 & 0x800) != 0 || a3 == 17)
      {
        v20 = a2 - (v5 < 49);
        if (v20 < 0)
        {
          goto LABEL_112;
        }

        if (v20)
        {
          v18 = 0;
          if (a3 == 7)
          {
            v19 = "0X";
          }

          else
          {
            v19 = "0x";
          }

          v16 = 2;
          v21 = v17 - 2;
          if (v17 < 2)
          {
            v21 = 0;
          }

          v22 = a4;
          if (a4 < 0)
          {
            v22 = 1;
          }

          if ((a3 & 0x800) == 0)
          {
            goto LABEL_42;
          }

LABEL_37:
          if (a3 == 4 && (a2 == v6 || result[v6] != 48) && v22 <= v7 + 1)
          {
            v22 = v7 + 1;
          }

          goto LABEL_42;
        }
      }

      v16 = 0;
      v19 = 0;
    }

    v21 = v17;
    v22 = a4;
    if (a4 < 0)
    {
      v22 = 1;
    }

    if ((a3 & 0x800) != 0)
    {
      goto LABEL_37;
    }
  }

LABEL_42:
  v12 = v22 >= v7;
  v23 = v22 - v7;
  if (v12)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v12 = v21 >= v24;
  v25 = v21 - v24;
  if (!v12)
  {
    v25 = 0;
  }

  if ((a3 & 0x100) != 0)
  {
    v26 = 0;
  }

  else
  {
    v26 = v25;
  }

  if (a4 < 0 && (a3 & 0x1000) != 0)
  {
    v24 += v26;
    if ((a3 & 0x100) != 0)
    {
      v27 = v25;
    }

    else
    {
      v27 = 0;
    }

    __len = v27;
  }

  else
  {
    if ((a3 & 0x100) != 0)
    {
      v28 = v25;
    }

    else
    {
      v28 = 0;
    }

    __len = v28;
    if (v26)
    {
      v60 = v6;
      v62 = result;
      result = *(a5 + 3);
      *(a5 + 2) += v26;
      v29 = a5 + 1056;
      v30 = a5 + 1056 - result;
      v31 = v26 - v30;
      v58 = v15;
      v57 = v18;
      if (v26 <= v30)
      {
        v31 = v25;
        v32 = result;
      }

      else
      {
        v32 = a5 + 32;
        if (v29 == result)
        {
          v34 = v29 - v32;
          if (v29 - v32 < 0)
          {
            goto LABEL_112;
          }
        }

        else
        {
          result = memset(result, 32, a5 + 1056 - result);
          v33 = *(a5 + 3) + v30;
          *(a5 + 3) = v33;
          v34 = v33 - v32;
          if ((v33 - v32) < 0)
          {
            goto LABEL_112;
          }
        }

        (*(a5 + 1))(*a5, a5 + 32, v34);
        *(a5 + 3) = v32;
        if (v31 >= 0x401)
        {
          do
          {
            v31 -= 1024;
            memset(a5 + 32, 32, 0x400uLL);
            *(a5 + 3) = v29;
            (*(a5 + 1))(*a5, a5 + 32, 1024);
            *(a5 + 3) = v32;
          }

          while (v31 > 0x400);
        }
      }

      result = memset(v32, 32, v31);
      *(a5 + 3) += v31;
      v6 = v60;
      v10 = v62;
      v15 = v58;
      v9 = a2;
      v18 = v57;
    }
  }

  if (!v14)
  {
LABEL_76:
    if (v18)
    {
      goto LABEL_82;
    }

    goto LABEL_80;
  }

  v35 = *(a5 + 3);
  ++*(a5 + 2);
  if ((a5 - v35 + 1056) > 1)
  {
    *v35 = *v15;
    ++*(a5 + 3);
    goto LABEL_76;
  }

  if (v35 - (a5 + 32) < 0)
  {
    goto LABEL_112;
  }

  v61 = v14;
  v63 = v16;
  v36 = v19;
  v37 = v6;
  v38 = v9;
  v39 = v7;
  v40 = v10;
  v41 = v15;
  v42 = v18;
  (*(a5 + 1))(*a5, a5 + 32, v35 - (a5 + 32));
  *(a5 + 3) = a5 + 32;
  v43 = v41;
  v10 = v40;
  v7 = v39;
  v9 = v38;
  v6 = v37;
  v19 = v36;
  v16 = v63;
  result = (*(a5 + 1))(*a5, v43, v61);
  if (v42)
  {
LABEL_82:
    if (v24)
    {
      goto LABEL_83;
    }

    goto LABEL_90;
  }

LABEL_80:
  result = *(a5 + 3);
  *(a5 + 2) += v16;
  if (v16 < a5 - result + 1056)
  {
    result = memcpy(result, v19, v16);
    *(a5 + 3) += v16;
    goto LABEL_82;
  }

  if (result - (a5 + 32) < 0)
  {
    goto LABEL_112;
  }

  (*(a5 + 1))(*a5, a5 + 32, result - (a5 + 32));
  *(a5 + 3) = a5 + 32;
  result = (*(a5 + 1))(*a5, v19, v16);
  if (v24)
  {
LABEL_83:
    result = *(a5 + 3);
    *(a5 + 2) += v24;
    v44 = a5 + 1056;
    v45 = a5 + 1056 - result;
    v46 = v24 - v45;
    if (v24 <= v45)
    {
      v46 = v24;
      v47 = result;
    }

    else
    {
      v47 = a5 + 32;
      if (v44 == result)
      {
        v49 = v44 - v47;
        if (v44 - v47 < 0)
        {
          goto LABEL_112;
        }
      }

      else
      {
        result = memset(result, 48, a5 + 1056 - result);
        v48 = *(a5 + 3) + v45;
        *(a5 + 3) = v48;
        v49 = v48 - v47;
        if ((v48 - v47) < 0)
        {
          goto LABEL_112;
        }
      }

      (*(a5 + 1))(*a5, a5 + 32, v49);
      *(a5 + 3) = v47;
      if (v46 >= 0x401)
      {
        do
        {
          v46 -= 1024;
          memset(a5 + 32, 48, 0x400uLL);
          *(a5 + 3) = v44;
          (*(a5 + 1))(*a5, a5 + 32, 1024);
          *(a5 + 3) = v47;
        }

        while (v46 > 0x400);
      }
    }

    result = memset(v47, 48, v46);
    *(a5 + 3) += v46;
    if (v9 == v6)
    {
      goto LABEL_98;
    }

    goto LABEL_96;
  }

LABEL_90:
  if (v9 == v6)
  {
LABEL_98:
    v50 = __len;
    if (!__len)
    {
      return result;
    }

    goto LABEL_99;
  }

LABEL_96:
  result = *(a5 + 3);
  *(a5 + 2) += v7;
  if (v7 < a5 - result + 1056)
  {
    result = memcpy(result, &v10[v6], v7);
    *(a5 + 3) += v7;
    goto LABEL_98;
  }

  if (result - (a5 + 32) < 0)
  {
    goto LABEL_112;
  }

  (*(a5 + 1))(*a5, a5 + 32, result - (a5 + 32));
  *(a5 + 3) = a5 + 32;
  result = (*(a5 + 1))(*a5, &v10[v6], v7);
  v50 = __len;
  if (!__len)
  {
    return result;
  }

LABEL_99:
  result = *(a5 + 3);
  *(a5 + 2) += v50;
  v51 = a5 + 1056;
  v52 = a5 + 1056 - result;
  v53 = v50 - v52;
  if (v50 > v52)
  {
    v54 = a5 + 32;
    if (v51 != result)
    {
      result = memset(result, 32, a5 + 1056 - result);
      v55 = *(a5 + 3) + v52;
      *(a5 + 3) = v55;
      v56 = v55 - v54;
      if ((v55 - v54) < 0)
      {
        goto LABEL_112;
      }

      goto LABEL_108;
    }

    v56 = v51 - v54;
    if (v51 - v54 >= 0)
    {
LABEL_108:
      (*(a5 + 1))(*a5, a5 + 32, v56);
      *(a5 + 3) = v54;
      if (v53 >= 0x401)
      {
        do
        {
          v53 -= 1024;
          memset(a5 + 32, 32, 0x400uLL);
          *(a5 + 3) = v51;
          (*(a5 + 1))(*a5, a5 + 32, 1024);
          *(a5 + 3) = v54;
        }

        while (v53 > 0x400);
      }

      goto LABEL_110;
    }

LABEL_112:
    __break(1u);
    return result;
  }

  v53 = v50;
  v54 = result;
LABEL_110:
  result = memset(v54, 32, v53);
  *(a5 + 3) += v53;
  return result;
}

uint64_t absl::str_format_internal::ConvertIntArg<unsigned char>(absl::numbers_internal *this, uint64_t a2, char *a3, absl::str_format_internal::FormatSinkImpl *a4)
{
  LOBYTE(v6) = this;
  *&v30[4] = *MEMORY[0x277D85DE8];
  v24 = a2;
  v25 = a3;
  if (a2 > 6u)
  {
    if (a2 - 8 < 8)
    {
    }

    if (a2 == 7)
    {
      v10 = v30;
      v9 = v30;
      do
      {
        v12 = v6;
        *--v9 = a0123456789abcd[v6 & 0xF];
        LOBYTE(v6) = v6 >> 4;
      }

      while (v12 > 0xF);
      goto LABEL_26;
    }

    goto LABEL_20;
  }

  if (a2 > 3u)
  {
    if (a2 == 4)
    {
      v10 = v30;
      v9 = v30;
      do
      {
        v15 = v6;
        *--v9 = v6 & 7 | 0x30;
        LOBYTE(v6) = v6 >> 3;
      }

      while (v15 > 7);
LABEL_26:
      v11 = v30 - v9;
      __src = v9;
      v27 = (v30 - v9);
      if ((a2 & 0xFF00) == 0)
      {
        goto LABEL_27;
      }

LABEL_21:
      return 1;
    }

    if (a2 != 5)
    {
      v29 = *&absl::numbers_internal::kHexTable[2 * this];
      if (v29 == 48)
      {
        v9 = &v29 + 1;
      }

      else
      {
        v9 = &v29;
      }

      v10 = v30;
      v11 = v30 - v9;
      __src = v9;
      v27 = (v30 - v9);
      if ((a2 & 0xFF00) != 0)
      {
        goto LABEL_21;
      }

      goto LABEL_27;
    }

LABEL_20:
    v9 = v28;
    __src = v28;
    v13 = a3;
    v10 = absl::numbers_internal::FastIntToBuffer(this, v28, a3);
    LODWORD(a3) = v13;
    v11 = v10 - v28;
    v27 = (v10 - v28);
    if ((a2 & 0xFF00) != 0)
    {
      goto LABEL_21;
    }

LABEL_27:
    if ((v11 & 0x8000000000000000) != 0)
    {
      goto LABEL_50;
    }

    v16 = __src;
    if (v10 != v9 && !__src)
    {
      goto LABEL_50;
    }

    if (v10 != v9)
    {
      v17 = *(a4 + 3);
      *(a4 + 2) += v11;
      if (v11 < a4 - v17 + 1056)
      {
        v18 = v11;
        memcpy(v17, v16, v11);
        *(a4 + 3) += v18;
        return 1;
      }

      if (v17 - (a4 + 32) >= 0)
      {
        v19 = v11;
        (*(a4 + 1))(*a4, a4 + 32, v17 - (a4 + 32));
        *(a4 + 3) = a4 + 32;
        (*(a4 + 1))(*a4, v16, v19);
        return 1;
      }

LABEL_50:
      __break(1u);
    }

    return 1;
  }

  if (a2 - 2 < 2)
  {
    goto LABEL_20;
  }

  if ((a2 & 0xFF0000) == 0x20000)
  {
    if ((this & 0x80) != 0)
    {
      BYTE1(__src) = this & 0xBF;
      v8 = 2;
      v6 = (this >> 6) | 0xFFFFFFC0;
    }

    else
    {
      v8 = 1;
    }

    LOBYTE(__src) = v6;
    if (BYTE1(a2))
    {
      return absl::str_format_internal::FormatSinkImpl::PutPaddedString(a4, &__src, v8, SHIDWORD(a2), a3, BYTE1(a2) & 1);
    }

    v22 = *(a4 + 3);
    *(a4 + 2) += v8;
    if (v8 < a4 - v22 + 1056)
    {
      memcpy(v22, &__src, v8);
      *(a4 + 3) += v8;
      return 1;
    }

    v23 = a4 + 32;
    if (v22 - (a4 + 32) >= 0)
    {
      (*(a4 + 1))(*a4, a4 + 32, v22 - (a4 + 32));
      *(a4 + 3) = v23;
      (*(a4 + 1))(*a4, &__src, v8);
      return 1;
    }

    goto LABEL_50;
  }

  v20 = HIDWORD(a2) - 1;
  if (!HIDWORD(a2))
  {
    v20 = 0;
  }

  if (a2 >= 0)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if ((a2 & 0x100) != 0)
  {
    v7 = 1;
    absl::str_format_internal::FormatSinkImpl::Append(a4, 1uLL, this);
    absl::str_format_internal::FormatSinkImpl::Append(a4, v21, 32);
  }

  else
  {
    absl::str_format_internal::FormatSinkImpl::Append(a4, v21, 32);
    v7 = 1;
    absl::str_format_internal::FormatSinkImpl::Append(a4, 1uLL, v6);
  }

  return v7;
}

uint64_t absl::str_format_internal::ConvertIntArg<int>(absl::numbers_internal *this, uint64_t a2, char *a3, absl::str_format_internal::FormatSinkImpl *a4)
{
  v6 = this;
  *&v31[3] = *MEMORY[0x277D85DE8];
  v25 = a2;
  v26 = a3;
  if (a2 > 6u)
  {
    if (a2 - 8 < 8)
    {
    }

    if (a2 == 7)
    {
      v11 = &v30;
      v9 = &v30;
      do
      {
        *--v9 = a0123456789abcd[v6 & 0xF];
        v13 = v6 > 0xF;
        v6 >>= 4;
      }

      while (v13);
      goto LABEL_23;
    }

    goto LABEL_17;
  }

  if (a2 > 3u)
  {
    if (a2 == 4)
    {
      v11 = &v30;
      v9 = &v30;
      do
      {
        *--v9 = v6 & 7 | 0x30;
        v13 = v6 > 7;
        v6 >>= 3;
      }

      while (v13);
LABEL_23:
      v12 = &v30 - v9;
      __src = v9;
      v28 = (&v30 - v9);
      if ((a2 & 0xFF00) == 0)
      {
        goto LABEL_24;
      }

LABEL_18:
      return 1;
    }

    if (a2 == 5)
    {
      v9 = v29;
      __src = v29;
      v10 = a3;
      v11 = absl::numbers_internal::FastIntToBuffer(this, v29, a3);
      LODWORD(a3) = v10;
      v12 = v11 - v29;
      v28 = (v11 - v29);
      if ((a2 & 0xFF00) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_18;
    }

    v11 = &v30;
    v19 = v31;
    do
    {
      v20 = *&absl::numbers_internal::kHexTable[2 * v6];
      *(v19 - 3) = v20;
      v19 -= 2;
      v13 = v6 > 0xFF;
      v6 >>= 8;
    }

    while (v13);
    if (v20 == 48)
    {
      v9 = v19;
    }

    else
    {
      v9 = v19 - 1;
    }

    v12 = &v30 - v9;
    __src = v9;
    v28 = (&v30 - v9);
    if ((a2 & 0xFF00) != 0)
    {
      goto LABEL_18;
    }

LABEL_24:
    if ((v12 & 0x8000000000000000) != 0)
    {
      goto LABEL_63;
    }

    v16 = __src;
    if (v11 != v9 && !__src)
    {
      goto LABEL_63;
    }

    if (v11 != v9)
    {
      v17 = *(a4 + 3);
      *(a4 + 2) += v12;
      if (v12 < a4 - v17 + 1056)
      {
        v8 = v12;
        p_src = v16;
LABEL_30:
        memcpy(v17, p_src, v8);
        *(a4 + 3) += v8;
        return 1;
      }

      if (v17 - (a4 + 32) >= 0)
      {
        v21 = v12;
        (*(a4 + 1))(*a4, a4 + 32, v17 - (a4 + 32));
        *(a4 + 3) = a4 + 32;
        (*(a4 + 1))(*a4, v16, v21);
        return 1;
      }

      goto LABEL_63;
    }

    return 1;
  }

  if (a2 - 2 < 2)
  {
LABEL_17:
    v9 = v29;
    __src = v29;
    v14 = a3;
    v11 = absl::numbers_internal::FastIntToBuffer(this, v29, a3);
    LODWORD(a3) = v14;
    v12 = v11 - v29;
    v28 = (v11 - v29);
    if ((a2 & 0xFF00) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_24;
  }

  if ((a2 & 0xFF0000) == 0x20000)
  {
    if (this > 0x7F)
    {
      if (this > 0x7FF)
      {
        if (this >> 11 < 0x1B || (this & 0xFFFFE000) == 0xE000)
        {
          LOBYTE(__src) = (this >> 12) | 0xE0;
          BYTE1(__src) = (this >> 6) & 0x3F | 0x80;
          BYTE2(__src) = this & 0x3F | 0x80;
          v8 = 3;
        }

        else
        {
          if ((this - 0x10000) >> 20)
          {
            return 0;
          }

          LOBYTE(__src) = (this >> 18) | 0xF0;
          BYTE1(__src) = (this >> 12) & 0x3F | 0x80;
          BYTE2(__src) = (this >> 6) & 0x3F | 0x80;
          BYTE3(__src) = this & 0x3F | 0x80;
          v8 = 4;
        }
      }

      else
      {
        LOBYTE(__src) = (this >> 6) | 0xC0;
        BYTE1(__src) = this & 0x3F | 0x80;
        v8 = 2;
      }
    }

    else
    {
      LOBYTE(__src) = this;
      v8 = 1;
    }

    if (BYTE1(a2))
    {
      return absl::str_format_internal::FormatSinkImpl::PutPaddedString(a4, &__src, v8, SHIDWORD(a2), a3, BYTE1(a2) & 1);
    }

    v17 = *(a4 + 3);
    *(a4 + 2) += v8;
    if (v8 < a4 - v17 + 1056)
    {
      p_src = &__src;
      goto LABEL_30;
    }

    v24 = a4 + 32;
    if (v17 - (a4 + 32) >= 0)
    {
      (*(a4 + 1))(*a4, a4 + 32, v17 - (a4 + 32));
      *(a4 + 3) = v24;
      (*(a4 + 1))(*a4, &__src, v8);
      return 1;
    }

LABEL_63:
    __break(1u);
  }

  v22 = HIDWORD(a2) - 1;
  if (!HIDWORD(a2))
  {
    v22 = 0;
  }

  if (a2 >= 0)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if ((a2 & 0x100) != 0)
  {
    v7 = 1;
    absl::str_format_internal::FormatSinkImpl::Append(a4, 1uLL, this);
    absl::str_format_internal::FormatSinkImpl::Append(a4, v23, 32);
  }

  else
  {
    absl::str_format_internal::FormatSinkImpl::Append(a4, v23, 32);
    v7 = 1;
    absl::str_format_internal::FormatSinkImpl::Append(a4, 1uLL, v6);
  }

  return v7;
}

uint64_t absl::str_format_internal::ConvertIntArg<unsigned long>(unint64_t a1, uint64_t a2, char *a3, absl::str_format_internal::FormatSinkImpl *this)
{
  *&v31[3] = *MEMORY[0x277D85DE8];
  v25 = a2;
  v26 = a3;
  if (a2 > 6u)
  {
    if (a2 - 8 < 8)
    {
    }

    if (a2 == 7)
    {
      v8 = &v30;
      v12 = &v30;
      do
      {
        *--v12 = a0123456789abcd[a1 & 0xF];
        v11 = a1 > 0xF;
        a1 >>= 4;
      }

      while (v11);
      goto LABEL_28;
    }

    goto LABEL_22;
  }

  if (a2 > 3u)
  {
    if (a2 == 4)
    {
      v8 = &v30;
      v12 = &v30;
      do
      {
        *--v12 = a1 & 7 | 0x30;
        v11 = a1 > 7;
        a1 >>= 3;
      }

      while (v11);
LABEL_28:
      v13 = &v30 - v12;
      __src = v12;
      v28 = (&v30 - v12);
      if ((a2 & 0xFF00) == 0)
      {
        goto LABEL_29;
      }

LABEL_23:
      return 1;
    }

    if (a2 != 5)
    {
      v8 = &v30;
      v9 = v31;
      do
      {
        v10 = *&absl::numbers_internal::kHexTable[2 * a1];
        *(v9 - 3) = v10;
        v9 = (v9 - 2);
        v11 = a1 > 0xFF;
        a1 >>= 8;
      }

      while (v11);
      if (v10 == 48)
      {
        v12 = v9;
      }

      else
      {
        v12 = v9 - 1;
      }

      v13 = &v30 - v12;
      __src = v12;
      v28 = (&v30 - v12);
      if ((a2 & 0xFF00) != 0)
      {
        goto LABEL_23;
      }

      goto LABEL_29;
    }

LABEL_22:
    v12 = v29;
    __src = v29;
    v14 = a3;
    v15 = absl::numbers_internal::FastIntToBuffer(a1, v29, a3);
    LODWORD(a3) = v14;
    v8 = v15;
    v13 = v15 - v29;
    v28 = (v15 - v29);
    if ((a2 & 0xFF00) != 0)
    {
      goto LABEL_23;
    }

LABEL_29:
    if ((v13 & 0x8000000000000000) != 0)
    {
      goto LABEL_61;
    }

    v17 = __src;
    if (v8 != v12 && !__src)
    {
      goto LABEL_61;
    }

    if (v8 != v12)
    {
      v18 = *(this + 3);
      *(this + 2) += v13;
      if (v13 < this - v18 + 1056)
      {
        v7 = v13;
        p_src = v17;
LABEL_35:
        memcpy(v18, p_src, v7);
        *(this + 3) += v7;
        return 1;
      }

      if (v18 - (this + 32) >= 0)
      {
        v20 = v13;
        (*(this + 1))(*this, this + 32, v18 - (this + 32));
        *(this + 3) = this + 32;
        (*(this + 1))(*this, v17, v20);
        return 1;
      }

      goto LABEL_61;
    }

    return 1;
  }

  if (a2 - 2 < 2)
  {
    goto LABEL_22;
  }

  if ((a2 & 0xFF0000) == 0x20000)
  {
    if (a1 > 0x7F)
    {
      if (a1 > 0x7FF)
      {
        if (a1 >> 11 < 0x1B || (a1 & 0xFFFFE000) == 0xE000)
        {
          LOBYTE(__src) = (a1 >> 12) | 0xE0;
          BYTE1(__src) = (a1 >> 6) & 0x3F | 0x80;
          BYTE2(__src) = a1 & 0x3F | 0x80;
          v7 = 3;
        }

        else
        {
          if ((a1 - 0x10000) >> 20)
          {
            return 0;
          }

          LOBYTE(__src) = (a1 >> 18) | 0xF0;
          BYTE1(__src) = (a1 >> 12) & 0x3F | 0x80;
          BYTE2(__src) = (a1 >> 6) & 0x3F | 0x80;
          BYTE3(__src) = a1 & 0x3F | 0x80;
          v7 = 4;
        }
      }

      else
      {
        LOBYTE(__src) = (a1 >> 6) | 0xC0;
        BYTE1(__src) = a1 & 0x3F | 0x80;
        v7 = 2;
      }
    }

    else
    {
      LOBYTE(__src) = a1;
      v7 = 1;
    }

    if (BYTE1(a2))
    {
      return absl::str_format_internal::FormatSinkImpl::PutPaddedString(this, &__src, v7, SHIDWORD(a2), a3, BYTE1(a2) & 1);
    }

    v18 = *(this + 3);
    *(this + 2) += v7;
    if (v7 < this - v18 + 1056)
    {
      p_src = &__src;
      goto LABEL_35;
    }

    v24 = this + 32;
    if (v18 - (this + 32) >= 0)
    {
      (*(this + 1))(*this, this + 32, v18 - (this + 32));
      *(this + 3) = v24;
      (*(this + 1))(*this, &__src, v7);
      return 1;
    }

LABEL_61:
    __break(1u);
  }

  v21 = a1;
  v22 = HIDWORD(a2) - 1;
  if (!HIDWORD(a2))
  {
    v22 = 0;
  }

  if (a2 >= 0)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if ((a2 & 0x100) != 0)
  {
    v6 = 1;
    absl::str_format_internal::FormatSinkImpl::Append(this, 1uLL, a1);
    absl::str_format_internal::FormatSinkImpl::Append(this, v23, 32);
  }

  else
  {
    absl::str_format_internal::FormatSinkImpl::Append(this, v23, 32);
    v6 = 1;
    absl::str_format_internal::FormatSinkImpl::Append(this, 1uLL, v21);
  }

  return v6;
}

uint64_t absl::str_format_internal::FormatArgImpl::Dispatch<unsigned char>(unsigned __int8 a1, uint64_t a2, unsigned int a3, absl::str_format_internal::FormatSinkImpl *a4)
{
  if (a2 == 19)
  {
    *a4 = a1;
    return 1;
  }

  else if (((2 << a2) & 0x9FFFA) != 0)
  {
    return absl::str_format_internal::ConvertIntArg<unsigned char>(a1, a2, a3, a4);
  }

  else
  {
    return 0;
  }
}

uint64_t absl::str_format_internal::FormatArgImpl::Dispatch<int>(absl::numbers_internal *a1, uint64_t a2, unsigned int a3, absl::str_format_internal::FormatSinkImpl *a4)
{
  if (a2 == 19)
  {
    *a4 = a1;
    return 1;
  }

  else if (((2 << a2) & 0x9FFFA) != 0)
  {
    return absl::str_format_internal::ConvertIntArg<int>(a1, a2, a3, a4);
  }

  else
  {
    return 0;
  }
}

uint64_t absl::str_format_internal::FormatArgImpl::Dispatch<unsigned long>(unint64_t a1, uint64_t a2, unsigned int a3, absl::str_format_internal::FormatSinkImpl *a4)
{
  if (a2 == 19)
  {
    v5 = 0x7FFFFFFF;
    if (a1 < 0x7FFFFFFF)
    {
      v5 = a1;
    }

    *a4 = v5;
    return 1;
  }

  else if (((2 << a2) & 0x9FFFA) != 0)
  {
    return absl::str_format_internal::ConvertIntArg<unsigned long>(a1, a2, a3, a4);
  }

  else
  {
    return 0;
  }
}

uint64_t absl::str_format_internal::FormatArgImpl::Dispatch<std::string>(const void **a1, uint64_t a2, unsigned int a3, void *a4)
{
  if (a2 == 19 || ((2 << a2) & 0x80004) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 23);
  if (v6 >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  if (v6 >= 0)
  {
    v8 = *(a1 + 23);
  }

  else
  {
    v8 = a1[1];
  }

  if (!BYTE1(a2))
  {
    if (v8)
    {
      result = a4[3];
      a4[2] += v8;
      if (v8 < a4 - result + 1056)
      {
        v10 = v8;
        memcpy(result, v7, v8);
        a4[3] += v10;
        return 1;
      }

      v12 = v8;
      v13 = a4 + 4;
      if (result - (a4 + 4) < 0)
      {
        __break(1u);
        return result;
      }

      v14 = v7;
      (a4[1])(*a4, a4 + 4, result - (a4 + 4));
      a4[3] = v13;
      (a4[1])(*a4, v14, v12);
    }

    return 1;
  }

  return absl::str_format_internal::FormatSinkImpl::PutPaddedString(a4, v7, v8, SHIDWORD(a2), a3, BYTE1(a2) & 1);
}

char *absl::str_format_internal::FormatSinkImpl::Append(char *this, size_t a2, int __c)
{
  if (a2)
  {
    v4 = this;
    v5 = *(this + 2);
    this = *(this + 3);
    *(v4 + 2) = v5 + a2;
    v6 = v4 + 1056;
    v7 = v4 + 1056 - this;
    v8 = a2 - v7;
    if (a2 <= v7)
    {
      v8 = a2;
      v9 = this;
LABEL_9:
      this = memset(v9, __c, v8);
      *(v4 + 3) += v8;
      return this;
    }

    v9 = v4 + 32;
    if (v6 == this)
    {
      v11 = v6 - v9;
      if (v6 - v9 >= 0)
      {
LABEL_5:
        (*(v4 + 1))(*v4, v4 + 32, v11);
        *(v4 + 3) = v9;
        if (v8 >= 0x401)
        {
          do
          {
            v8 -= 1024;
            memset(v4 + 32, __c, 0x400uLL);
            *(v4 + 3) = v6;
            (*(v4 + 1))(*v4, v4 + 32, 1024);
            *(v4 + 3) = v9;
          }

          while (v8 > 0x400);
        }

        goto LABEL_9;
      }
    }

    else
    {
      this = memset(this, __c, v4 + 1056 - this);
      v10 = *(v4 + 3) + v7;
      *(v4 + 3) = v10;
      v11 = v10 - v9;
      if ((v10 - v9) >= 0)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return this;
}

void webrtc::AsyncAudioProcessing::Factory::CreateAsyncAudioProcessing(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    operator new();
  }

  operator new();
}

void webrtc::AsyncAudioProcessing::~AsyncAudioProcessing(webrtc::AsyncAudioProcessing *this)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(this + 5);
  if (v2)
  {
    v11 = 0;
    (*(*v2 + 24))(v2, v10);
    v3 = v11;
    if (v11 != v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *(this + 4);
    v9 = 0;
    (*(*v7 + 24))(v7, v8);
    v3 = v9;
    if (v9 != v8)
    {
LABEL_3:
      if (v3)
      {
        (*(*v3 + 40))(v3);
      }

      v4 = *(this + 6);
      *(this + 6) = 0;
      if (v4)
      {
        goto LABEL_6;
      }

      goto LABEL_7;
    }
  }

  (*(*v3 + 32))(v3);
  v4 = *(this + 6);
  *(this + 6) = 0;
  if (v4)
  {
LABEL_6:
    (**v4)(v4);
  }

LABEL_7:
  v5 = *(this + 5);
  *(this + 5) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 3);
  if (v6 == this)
  {
    (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    (*(*v6 + 40))(v6);
  }
}

uint64_t webrtc::AsyncAudioProcessing::Process(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = *a2;
  *a2 = 0;
  v10[0] = a1;
  v10[1] = v5;
  if (v4)
  {
    v11 = absl::internal_any_invocable::LocalManagerNontrivial<webrtc::AsyncAudioProcessing::Process(std::unique_ptr<webrtc::AudioFrame>)::$_0>;
    v6 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::AsyncAudioProcessing::Process(std::unique_ptr<webrtc::AudioFrame>)::$_0 &&>;
  }

  else
  {
    v11 = absl::internal_any_invocable::LocalManagerNontrivial<webrtc::AsyncAudioProcessing::Process(std::unique_ptr<webrtc::AudioFrame>)::$_1>;
    v6 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::AsyncAudioProcessing::Process(std::unique_ptr<webrtc::AudioFrame>)::$_1 &&>;
  }

  v12 = v6;
  (*(*v3 + 8))(v3, v10, &v9, &v8);
  return v11(1, v10, v10);
}

uint64_t std::__function::__func<webrtc::AsyncAudioProcessing::AsyncAudioProcessing(webrtc::AudioFrameProcessor &,webrtc::TaskQueueFactory &,std::function<void ()(std::unique_ptr<webrtc::AudioFrame>)>)::$_0,std::allocator<webrtc::AsyncAudioProcessing::AsyncAudioProcessing(webrtc::AudioFrameProcessor &,webrtc::TaskQueueFactory &,std::function<void ()(std::unique_ptr<webrtc::AudioFrame>)>)::$_0>,void ()(std::unique_ptr<webrtc::AudioFrame>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28828CD38;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<webrtc::AsyncAudioProcessing::AsyncAudioProcessing(webrtc::AudioFrameProcessor &,webrtc::TaskQueueFactory &,std::function<void ()(std::unique_ptr<webrtc::AudioFrame>)>)::$_0,std::allocator<webrtc::AsyncAudioProcessing::AsyncAudioProcessing(webrtc::AudioFrameProcessor &,webrtc::TaskQueueFactory &,std::function<void ()(std::unique_ptr<webrtc::AudioFrame>)>)::$_0>,void ()(std::unique_ptr<webrtc::AudioFrame>)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  *a2 = 0;
  v4 = *(v2 + 48);
  v8[0] = v2;
  v8[1] = v3;
  v9 = absl::internal_any_invocable::LocalManagerNontrivial<webrtc::AsyncAudioProcessing::AsyncAudioProcessing(webrtc::AudioFrameProcessor &,webrtc::TaskQueueFactory &,std::function<void ()(std::unique_ptr<webrtc::AudioFrame>)>)::$_0::operator() const(std::unique_ptr<webrtc::AudioFrame>)::{lambda(void)#1}>;
  v10 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::AsyncAudioProcessing::AsyncAudioProcessing(webrtc::AudioFrameProcessor &,webrtc::TaskQueueFactory &,std::function<void ()(std::unique_ptr<webrtc::AudioFrame>)>)::$_0::operator() const(std::unique_ptr<webrtc::AudioFrame>)::{lambda(void)#1} &&>;
  (*(*v4 + 8))(v4, v8, &v7, &v6);
  return v9(1, v8, v8);
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::AsyncAudioProcessing::AsyncAudioProcessing(webrtc::AudioFrameProcessor &,webrtc::TaskQueueFactory &,std::function<void ()(std::unique_ptr<webrtc::AudioFrame>)>)::$_0::operator() const(std::unique_ptr<webrtc::AudioFrame>)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  a1[1] = 0;
  v11 = v2;
  v3 = *(v1 + 24);
  if (v3)
  {
    (*(*v3 + 48))(v3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      v5 = *(result + 64);
      if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
      {
        v6 = result;
        v7 = *(v5 + 8);
        if (v7)
        {
          v8 = *(v5 + 16);
          v9 = *(v5 + 8);
          if (v8 != v7)
          {
            do
            {
              v10 = *(v8 - 96);
              if (v10)
              {
                *(v8 - 88) = v10;
                operator delete(v10);
              }

              v8 -= 104;
            }

            while (v8 != v7);
            v9 = *(v5 + 8);
          }

          *(v5 + 16) = v7;
          operator delete(v9);
        }

        MEMORY[0x2743DA540](v5, 0x1020C40E72D6CFBLL);
        result = v6;
      }

      return MEMORY[0x2743DA540](result, 0x1020C40C39A3FA5);
    }
  }

  else
  {
    std::__throw_bad_function_call[abi:sn200100]();
    return std::__throw_bad_function_call[abi:sn200100]();
  }

  return result;
}

uint64_t absl::internal_any_invocable::LocalManagerNontrivial<webrtc::AsyncAudioProcessing::AsyncAudioProcessing(webrtc::AudioFrameProcessor &,webrtc::TaskQueueFactory &,std::function<void ()(std::unique_ptr<webrtc::AudioFrame>)>)::$_0::operator() const(std::unique_ptr<webrtc::AudioFrame>)::{lambda(void)#1}>(char a1, __int128 *a2, _OWORD *a3)
{
  if ((a1 & 1) == 0)
  {
    v3 = *a2;
    *(a2 + 1) = 0;
    *a3 = v3;
  }

  result = *(a2 + 1);
  *(a2 + 1) = 0;
  if (result)
  {
    v5 = *(result + 64);
    if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
    {
      v6 = *(v5 + 8);
      if (v6)
      {
        v7 = *(v5 + 16);
        v8 = *(v5 + 8);
        if (v7 != v6)
        {
          do
          {
            v9 = *(v7 - 96);
            if (v9)
            {
              *(v7 - 88) = v9;
              operator delete(v9);
            }

            v7 -= 104;
          }

          while (v7 != v6);
          v8 = *(v5 + 8);
        }

        *(v5 + 16) = v6;
        operator delete(v8);
      }

      MEMORY[0x2743DA540](v5, 0x1020C40E72D6CFBLL);
    }

    JUMPOUT(0x2743DA540);
  }

  return result;
}

uint64_t std::__function::__func<webrtc::AsyncAudioProcessing::AsyncAudioProcessing(std::unique_ptr<webrtc::AudioFrameProcessor>,webrtc::TaskQueueFactory &,std::function<void ()(std::unique_ptr<webrtc::AudioFrame>)>)::$_0,std::allocator<webrtc::AsyncAudioProcessing::AsyncAudioProcessing(std::unique_ptr<webrtc::AudioFrameProcessor>,webrtc::TaskQueueFactory &,std::function<void ()(std::unique_ptr<webrtc::AudioFrame>)>)::$_0>,void ()(std::unique_ptr<webrtc::AudioFrame>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28828CD80;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<webrtc::AsyncAudioProcessing::AsyncAudioProcessing(std::unique_ptr<webrtc::AudioFrameProcessor>,webrtc::TaskQueueFactory &,std::function<void ()(std::unique_ptr<webrtc::AudioFrame>)>)::$_0,std::allocator<webrtc::AsyncAudioProcessing::AsyncAudioProcessing(std::unique_ptr<webrtc::AudioFrameProcessor>,webrtc::TaskQueueFactory &,std::function<void ()(std::unique_ptr<webrtc::AudioFrame>)>)::$_0>,void ()(std::unique_ptr<webrtc::AudioFrame>)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  *a2 = 0;
  v4 = *(v2 + 48);
  v8[0] = v2;
  v8[1] = v3;
  v9 = absl::internal_any_invocable::LocalManagerNontrivial<webrtc::AsyncAudioProcessing::AsyncAudioProcessing(std::unique_ptr<webrtc::AudioFrameProcessor>,webrtc::TaskQueueFactory &,std::function<void ()(std::unique_ptr<webrtc::AudioFrame>)>)::$_0::operator() const(std::unique_ptr<webrtc::AudioFrame>)::{lambda(void)#1}>;
  v10 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::AsyncAudioProcessing::AsyncAudioProcessing(std::unique_ptr<webrtc::AudioFrameProcessor>,webrtc::TaskQueueFactory &,std::function<void ()(std::unique_ptr<webrtc::AudioFrame>)>)::$_0::operator() const(std::unique_ptr<webrtc::AudioFrame>)::{lambda(void)#1} &&>;
  (*(*v4 + 8))(v4, v8, &v7, &v6);
  return v9(1, v8, v8);
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::AsyncAudioProcessing::AsyncAudioProcessing(std::unique_ptr<webrtc::AudioFrameProcessor>,webrtc::TaskQueueFactory &,std::function<void ()(std::unique_ptr<webrtc::AudioFrame>)>)::$_0::operator() const(std::unique_ptr<webrtc::AudioFrame>)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  a1[1] = 0;
  v12 = v2;
  v3 = *(v1 + 24);
  if (v3)
  {
    (*(*v3 + 48))(v3, &v12);
    result = v12;
    v12 = 0;
    if (result)
    {
      v5 = *(result + 64);
      if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
      {
        v6 = result;
        v7 = *(v5 + 8);
        if (v7)
        {
          v8 = *(v5 + 16);
          v9 = *(v5 + 8);
          if (v8 != v7)
          {
            do
            {
              v10 = *(v8 - 96);
              if (v10)
              {
                *(v8 - 88) = v10;
                operator delete(v10);
              }

              v8 -= 104;
            }

            while (v8 != v7);
            v9 = *(v5 + 8);
          }

          *(v5 + 16) = v7;
          operator delete(v9);
        }

        MEMORY[0x2743DA540](v5, 0x1020C40E72D6CFBLL);
        result = v6;
      }

      return MEMORY[0x2743DA540](result, 0x1020C40C39A3FA5);
    }
  }

  else
  {
    v11 = std::__throw_bad_function_call[abi:sn200100]();
    return absl::internal_any_invocable::LocalManagerNontrivial<webrtc::AsyncAudioProcessing::AsyncAudioProcessing(std::unique_ptr<webrtc::AudioFrameProcessor>,webrtc::TaskQueueFactory &,std::function<void ()(std::unique_ptr<webrtc::AudioFrame>)>)::$_0::operator() const(std::unique_ptr<webrtc::AudioFrame>)::{lambda(void)#1}>(v11);
  }

  return result;
}

uint64_t absl::internal_any_invocable::LocalManagerNontrivial<webrtc::AsyncAudioProcessing::AsyncAudioProcessing(std::unique_ptr<webrtc::AudioFrameProcessor>,webrtc::TaskQueueFactory &,std::function<void ()(std::unique_ptr<webrtc::AudioFrame>)>)::$_0::operator() const(std::unique_ptr<webrtc::AudioFrame>)::{lambda(void)#1}>(char a1, __int128 *a2, _OWORD *a3)
{
  if ((a1 & 1) == 0)
  {
    v3 = *a2;
    *(a2 + 1) = 0;
    *a3 = v3;
  }

  result = *(a2 + 1);
  *(a2 + 1) = 0;
  if (result)
  {
    v5 = *(result + 64);
    if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
    {
      v6 = *(v5 + 8);
      if (v6)
      {
        v7 = *(v5 + 16);
        v8 = *(v5 + 8);
        if (v7 != v6)
        {
          do
          {
            v9 = *(v7 - 96);
            if (v9)
            {
              *(v7 - 88) = v9;
              operator delete(v9);
            }

            v7 -= 104;
          }

          while (v7 != v6);
          v8 = *(v5 + 8);
        }

        *(v5 + 16) = v6;
        operator delete(v8);
      }

      MEMORY[0x2743DA540](v5, 0x1020C40E72D6CFBLL);
    }

    JUMPOUT(0x2743DA540);
  }

  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::AsyncAudioProcessing::Process(std::unique_ptr<webrtc::AudioFrame>)::$_0 &&>(void *a1)
{
  v1 = a1[1];
  v2 = *(*a1 + 40);
  a1[1] = 0;
  v10 = v1;
  (*(*v2 + 16))(v2, &v10);
  result = v10;
  v10 = 0;
  if (result)
  {
    v4 = *(result + 64);
    if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
    {
      v5 = result;
      v6 = *(v4 + 8);
      if (v6)
      {
        v7 = *(v4 + 16);
        v8 = *(v4 + 8);
        if (v7 != v6)
        {
          do
          {
            v9 = *(v7 - 96);
            if (v9)
            {
              *(v7 - 88) = v9;
              operator delete(v9);
            }

            v7 -= 104;
          }

          while (v7 != v6);
          v8 = *(v4 + 8);
        }

        *(v4 + 16) = v6;
        operator delete(v8);
      }

      MEMORY[0x2743DA540](v4, 0x1020C40E72D6CFBLL);
      result = v5;
    }

    return MEMORY[0x2743DA540](result, 0x1020C40C39A3FA5);
  }

  return result;
}

uint64_t absl::internal_any_invocable::LocalManagerNontrivial<webrtc::AsyncAudioProcessing::Process(std::unique_ptr<webrtc::AudioFrame>)::$_0>(char a1, __int128 *a2, _OWORD *a3)
{
  if ((a1 & 1) == 0)
  {
    v3 = *a2;
    *(a2 + 1) = 0;
    *a3 = v3;
  }

  result = *(a2 + 1);
  *(a2 + 1) = 0;
  if (result)
  {
    v5 = *(result + 64);
    if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
    {
      v6 = *(v5 + 8);
      if (v6)
      {
        v7 = *(v5 + 16);
        v8 = *(v5 + 8);
        if (v7 != v6)
        {
          do
          {
            v9 = *(v7 - 96);
            if (v9)
            {
              *(v7 - 88) = v9;
              operator delete(v9);
            }

            v7 -= 104;
          }

          while (v7 != v6);
          v8 = *(v5 + 8);
        }

        *(v5 + 16) = v6;
        operator delete(v8);
      }

      MEMORY[0x2743DA540](v5, 0x1020C40E72D6CFBLL);
    }

    JUMPOUT(0x2743DA540);
  }

  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::AsyncAudioProcessing::Process(std::unique_ptr<webrtc::AudioFrame>)::$_1 &&>(void *a1)
{
  v1 = a1[1];
  v2 = *(*a1 + 32);
  a1[1] = 0;
  v10 = v1;
  (*(*v2 + 16))(v2, &v10);
  result = v10;
  v10 = 0;
  if (result)
  {
    v4 = *(result + 64);
    if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
    {
      v5 = result;
      v6 = *(v4 + 8);
      if (v6)
      {
        v7 = *(v4 + 16);
        v8 = *(v4 + 8);
        if (v7 != v6)
        {
          do
          {
            v9 = *(v7 - 96);
            if (v9)
            {
              *(v7 - 88) = v9;
              operator delete(v9);
            }

            v7 -= 104;
          }

          while (v7 != v6);
          v8 = *(v4 + 8);
        }

        *(v4 + 16) = v6;
        operator delete(v8);
      }

      MEMORY[0x2743DA540](v4, 0x1020C40E72D6CFBLL);
      result = v5;
    }

    return MEMORY[0x2743DA540](result, 0x1020C40C39A3FA5);
  }

  return result;
}

uint64_t absl::internal_any_invocable::LocalManagerNontrivial<webrtc::AsyncAudioProcessing::Process(std::unique_ptr<webrtc::AudioFrame>)::$_1>(char a1, __int128 *a2, _OWORD *a3)
{
  if ((a1 & 1) == 0)
  {
    v3 = *a2;
    *(a2 + 1) = 0;
    *a3 = v3;
  }

  result = *(a2 + 1);
  *(a2 + 1) = 0;
  if (result)
  {
    v5 = *(result + 64);
    if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
    {
      v6 = *(v5 + 8);
      if (v6)
      {
        v7 = *(v5 + 16);
        v8 = *(v5 + 8);
        if (v7 != v6)
        {
          do
          {
            v9 = *(v7 - 96);
            if (v9)
            {
              *(v7 - 88) = v9;
              operator delete(v9);
            }

            v7 -= 104;
          }

          while (v7 != v6);
          v8 = *(v5 + 8);
        }

        *(v5 + 16) = v6;
        operator delete(v8);
      }

      MEMORY[0x2743DA540](v5, 0x1020C40E72D6CFBLL);
    }

    JUMPOUT(0x2743DA540);
  }

  return result;
}

void webrtc::AsyncDnsResolver::AsyncDnsResolver(webrtc::AsyncDnsResolver *this)
{
  v1 = *MEMORY[0x277D85DE8];
  *this = &unk_28828CDC8;
  operator new();
}

void webrtc::AsyncDnsResolver::~AsyncDnsResolver(webrtc::AsyncDnsResolver *this)
{
  *this = &unk_28828CDC8;
  v2 = *(this + 2);
  pthread_mutex_lock((v2 + 16));
  *(v2 + 80) = 2;
  pthread_mutex_unlock((v2 + 16));
  (*(this + 19))(1, this + 136, this + 136);
  *(this + 3) = &unk_28828CE00;
  v3 = *(this + 13);
  if (v3)
  {
    v4 = *(this + 14);
    v5 = *(this + 13);
    if (v4 != v3)
    {
      v6 = v4 - 4;
      v7 = v4 - 4;
      v8 = v4 - 4;
      do
      {
        v9 = *v8;
        v8 -= 4;
        (*v9)(v7);
        v6 -= 4;
        v10 = v7 == v3;
        v7 = v8;
      }

      while (!v10);
      v5 = *(this + 13);
    }

    *(this + 14) = v3;
    operator delete(v5);
  }

  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  v11 = *(this + 2);
  if (v11 && atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(this + 1);
  *(v12 + 4) = 0;
  if (atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }
}

{
  webrtc::AsyncDnsResolver::~AsyncDnsResolver(this);

  JUMPOUT(0x2743DA540);
}

void webrtc::AsyncDnsResolverResultImpl::~AsyncDnsResolverResultImpl(webrtc::AsyncDnsResolverResultImpl *this)
{
  *this = &unk_28828CE00;
  v2 = *(this + 10);
  if (v2)
  {
    v3 = *(this + 11);
    v4 = *(this + 10);
    if (v3 != v2)
    {
      v5 = v3 - 4;
      v6 = v3 - 4;
      v7 = v3 - 4;
      do
      {
        v8 = *v7;
        v7 -= 4;
        (*v8)(v6);
        v5 -= 4;
        v9 = v6 == v2;
        v6 = v7;
      }

      while (!v9);
      v4 = *(this + 10);
    }

    *(this + 11) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_28828CE00;
  v2 = *(this + 10);
  if (v2)
  {
    v3 = *(this + 11);
    v4 = *(this + 10);
    if (v3 != v2)
    {
      v5 = v3 - 4;
      v6 = v3 - 4;
      v7 = v3 - 4;
      do
      {
        v8 = *v7;
        v7 -= 4;
        (*v8)(v6);
        v5 -= 4;
        v9 = v6 == v2;
        v6 = v7;
      }

      while (!v9);
      v4 = *(this + 10);
    }

    *(this + 11) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::AsyncDnsResolver::Start(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 32);
  (*(a3 + 16))(0, a3, v8);
  v9 = *(a3 + 16);
  *(a3 + 16) = absl::internal_any_invocable::EmptyManager;
  *(a3 + 24) = 0;
  (*(*a1 + 24))(a1, a2, v6, v8);
  return (v9)(1, v8, v8);
}

void webrtc::AsyncDnsResolver::Start(uint64_t a1, std::string *a2, int a3, uint64_t a4)
{
  v6 = a2;
  v8 = (a1 + 32);
  if (v8 != a2)
  {
    if (*(a1 + 55) < 0)
    {
      if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
      }

      else
      {
        a2 = a2->__r_.__value_.__r.__words[0];
        size = v6->__r_.__value_.__l.__size_;
      }

      std::string::__assign_no_alias<false>(v8, a2, size);
    }

    else if ((*(&a2->__r_.__value_.__s + 23) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(v8, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      v9 = *&a2->__r_.__value_.__l.__data_;
      v8->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
      *&v8->__r_.__value_.__l.__data_ = v9;
    }
  }

  *(a1 + 64) = v6[1].__r_.__value_.__r.__words[1];
  *(a1 + 68) = *(&v6[1].__r_.__value_.__r.__words[1] + 4);
  *(a1 + 88) = v6[2].__r_.__value_.__r.__words[1];
  *(a1 + 96) = v6[2].__r_.__value_.__s.__data_[16];
  *(a1 + 92) = HIDWORD(v6[2].__r_.__value_.__r.__words[1]);
  (*(a1 + 152))(1, a1 + 136, a1 + 136);
  *(a1 + 152) = absl::internal_any_invocable::EmptyManager;
  *(a1 + 160) = 0;
  (*(a4 + 16))(0, a4, a1 + 136);
  *(a1 + 152) = *(a4 + 16);
  *(a4 + 16) = absl::internal_any_invocable::EmptyManager;
  *(a4 + 24) = 0;
  __p = 0uLL;
  v22 = 0;
  memset(v24, 0, sizeof(v24));
  v23 = &unk_28828CE50;
  if (&__p != v6)
  {
    if (SHIBYTE(v6->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__assign_no_alias<true>(&__p, v6->__r_.__value_.__l.__data_, v6->__r_.__value_.__l.__size_);
    }

    else
    {
      __p = *&v6->__r_.__value_.__l.__data_;
      v22 = v6->__r_.__value_.__r.__words[2];
    }
  }

  *v24 = v6[1].__r_.__value_.__r.__words[1];
  *&v24[4] = *(&v6[1].__r_.__value_.__r.__words[1] + 4);
  v25 = v6[2].__r_.__value_.__r.__words[1];
  v27 = v6[2].__r_.__value_.__s.__data_[16];
  v26 = HIDWORD(v6[2].__r_.__value_.__r.__words[1]);
  v28 = a3;
  v18 = *(a1 + 8);
  v29 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(v18, 1u, memory_order_relaxed);
  }

  v20 = *(a1 + 16);
  v30 = *v19;
  v31 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1u, memory_order_relaxed);
  }

  operator new();
}

uint64_t webrtc::AsyncDnsResolverResultImpl::GetResolvedAddress(webrtc::AsyncDnsResolverResultImpl *this, int a2, std::string *__dst)
{
  if (*(this + 26) || *(this + 10) == *(this + 11))
  {
    return 0;
  }

  v4 = this + 8;
  if ((this + 8) != __dst)
  {
    v5 = *(this + 31);
    if (SHIBYTE(__dst->__r_.__value_.__r.__words[2]) < 0)
    {
      if ((v5 & 0x80u) != 0)
      {
        v4 = *(this + 1);
        v5 = *(this + 2);
      }

      v7 = this;
      v8 = a2;
      v9 = __dst;
      std::string::__assign_no_alias<false>(__dst, v4, v5);
    }

    else
    {
      if ((v5 & 0x80) == 0)
      {
        v6 = *v4;
        __dst->__r_.__value_.__r.__words[2] = *(this + 3);
        *&__dst->__r_.__value_.__l.__data_ = v6;
        goto LABEL_13;
      }

      v7 = this;
      v8 = a2;
      v9 = __dst;
      std::string::__assign_no_alias<true>(__dst, *(this + 1), *(this + 2));
    }

    this = v7;
    a2 = v8;
    __dst = v9;
  }

LABEL_13:
  LODWORD(__dst[1].__r_.__value_.__r.__words[1]) = *(this + 10);
  *(&__dst[1].__r_.__value_.__r.__words[1] + 4) = *(this + 44);
  LOWORD(__dst[2].__r_.__value_.__r.__words[1]) = *(this + 32);
  __dst[2].__r_.__value_.__s.__data_[16] = *(this + 72);
  HIDWORD(__dst[2].__r_.__value_.__r.__words[1]) = *(this + 17);
  v10 = *(this + 10);
  v11 = *(this + 11);
  if (v10 == v11)
  {
    return 0;
  }

  while (*(v10 + 8) != a2)
  {
    v10 += 32;
    if (v10 == v11)
    {
      return 0;
    }
  }

  LODWORD(__dst[1].__r_.__value_.__r.__words[1]) = a2;
  *(&__dst[1].__r_.__value_.__r.__words[1] + 4) = *(v10 + 12);
  HIDWORD(__dst[2].__r_.__value_.__r.__words[1]) = 0;
  return 1;
}

void webrtc::AsyncDnsResolver::State::~State(webrtc::AsyncDnsResolver::State *this)
{
  *this = &unk_28828CE30;
  pthread_mutex_destroy((this + 16));
}

{
  *this = &unk_28828CE30;
  pthread_mutex_destroy((this + 16));

  JUMPOUT(0x2743DA540);
}

void webrtc::anonymous namespace::GlobalGcdRunTask(webrtc::_anonymous_namespace_ *this, void *a2)
{
  (*(this + 3))(this, a2);
  (*(this + 2))(1, this, this);

  JUMPOUT(0x2743DA540);
}

void absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::AsyncDnsResolver::Start(webrtc::SocketAddress const&,int,absl::AnyInvocable<void ()(void)>)::$_0 &&>(uint64_t *a1)
{
  v1 = *a1;
  __p = 0;
  v20 = 0;
  v21 = 0;
  v2 = *(v1 + 31);
  if (v2 >= 0)
  {
    v3 = (v1 + 8);
  }

  else
  {
    v3 = *(v1 + 8);
  }

  if (v2 >= 0)
  {
    v4 = *(v1 + 31);
  }

  else
  {
    v4 = *(v1 + 16);
  }

  v5 = *(v1 + 80);
  v25 = 0;
  memset(&v24.ai_socktype, 0, 40);
  v24.ai_flags = 1024;
  v24.ai_family = v5;
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_51;
  }

  if (v4 > 0x16)
  {
    operator new();
  }

  BYTE11(v27) = v4;
  v6 = (&v26 + v4);
  if (&v26 <= v3 && v6 > v3)
  {
    goto LABEL_50;
  }

  if (v4)
  {
    memmove(&v26, v3, v4);
  }

  *v6 = 0;
  if ((SBYTE11(v27) & 0x80u) == 0)
  {
    v8 = &v26;
  }

  else
  {
    v8 = v26;
  }

  v9 = getaddrinfo(v8, 0, &v24, &v25);
  v10 = v9;
  if (SBYTE11(v27) < 0)
  {
    operator delete(v26);
    if (v10)
    {
LABEL_22:
      v11 = *(v1 + 88);
      if (!v11)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }
  }

  else if (v9)
  {
    goto LABEL_22;
  }

  v12 = v25;
  if (v25)
  {
    if (v5)
    {
      while (1)
      {
        if (v12->ai_family == v5)
        {
          v22 = &unk_28828CE50;
          memset(v23, 0, 20);
          ai_addr = v12->ai_addr;
          if (ai_addr)
          {
            sa_family = ai_addr->sa_family;
            if (sa_family == 30)
            {
              v27 = *&ai_addr->sa_data[6];
              LODWORD(v23[0]) = 30;
              *(v23 + 4) = v27;
              if (!v21)
              {
                goto LABEL_29;
              }

LABEL_50:
              __break(1u);
LABEL_51:
              std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
            }

            if (sa_family == 2)
            {
              v15 = *&ai_addr->sa_data[2];
              LODWORD(v23[0]) = 2;
              HIDWORD(v23[0]) = v15;
              v23[1] = 0;
              LODWORD(v23[2]) = 0;
              if (v21)
              {
                goto LABEL_50;
              }

LABEL_29:
              std::vector<webrtc::IPAddress>::__emplace_back_slow_path<webrtc::IPAddress const&>(&__p);
            }
          }
        }

        v12 = v12->ai_next;
        if (!v12)
        {
          goto LABEL_39;
        }
      }
    }

    do
    {
      v22 = &unk_28828CE50;
      memset(v23, 0, 20);
      v16 = v12->ai_addr;
      if (v16)
      {
        v17 = v16->sa_family;
        if (v17 == 30)
        {
          v27 = *&v16->sa_data[6];
          LODWORD(v23[0]) = 30;
          *(v23 + 4) = v27;
          if (v21)
          {
            goto LABEL_50;
          }

          goto LABEL_42;
        }

        if (v17 == 2)
        {
          v18 = *&v16->sa_data[2];
          LODWORD(v23[0]) = 2;
          HIDWORD(v23[0]) = v18;
          v23[1] = 0;
          LODWORD(v23[2]) = 0;
          if (v21)
          {
            goto LABEL_50;
          }

LABEL_42:
          std::vector<webrtc::IPAddress>::__emplace_back_slow_path<webrtc::IPAddress const&>(&__p);
        }
      }

      v12 = v12->ai_next;
    }

    while (v12);
  }

LABEL_39:
  freeaddrinfo(v25);
  v11 = *(v1 + 88);
  if (!v11)
  {
LABEL_24:
    v20 = 0;
    v21 = 0;
    __p = 0;
    operator new();
  }

LABEL_23:
  atomic_fetch_add_explicit(v11, 1u, memory_order_relaxed);
  goto LABEL_24;
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::AsyncDnsResolver::Start(webrtc::SocketAddress const&,int,absl::AnyInvocable<void ()(void)>)::$_0>(uint64_t result, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      v4 = *(v3 + 104);
      if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v4 + 8))(v4);
      }

      v5 = *(v3 + 88);
      if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
      {
        MEMORY[0x2743DA540]();
      }

      if (*(v3 + 31) < 0)
      {
        operator delete(*(v3 + 8));
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

void std::vector<webrtc::IPAddress>::__emplace_back_slow_path<webrtc::IPAddress const&>(void *a1)
{
  v1 = ((a1[1] - *a1) >> 5) + 1;
  if (!(v1 >> 59))
  {
    v2 = a1[2] - *a1;
    if (v2 >> 4 > v1)
    {
      v1 = v2 >> 4;
    }

    if (v2 >= 0x7FFFFFFFFFFFFFE0)
    {
      v1 = 0x7FFFFFFFFFFFFFFLL;
    }

    if (v1)
    {
      if (!(v1 >> 59))
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    __break(1u);
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

void absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::AsyncDnsResolver::Start(webrtc::SocketAddress const&,int,absl::AnyInvocable<void ()(void)>)::$_0::operator() const(void)::{lambda(void)#1} &>(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 1u, memory_order_relaxed);
  }

  v1[5] = 0;
  v1[6] = 0;
  v1[4] = 0;
  operator new();
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::AsyncDnsResolver::Start(webrtc::SocketAddress const&,int,absl::AnyInvocable<void ()(void)>)::$_0::operator() const(void)::{lambda(void)#1}>(uint64_t result, void *a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      v4 = v3[4];
      if (v4)
      {
        v5 = v3[5];
        v6 = v3[4];
        if (v5 != v4)
        {
          v7 = v5 - 4;
          v8 = v5 - 4;
          v9 = v5 - 4;
          do
          {
            v10 = *v9;
            v9 -= 4;
            (*v10)(v8);
            v7 -= 4;
            v11 = v8 == v4;
            v8 = v9;
          }

          while (!v11);
          v6 = v3[4];
        }

        v3[5] = v4;
        operator delete(v6);
      }

      v12 = v3[2];
      if (v12 && atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
      {
        MEMORY[0x2743DA540]();
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

uint64_t _ZN4absl22internal_any_invocable13RemoteInvokerILb0EvOZN6webrtc8SafeTaskENS2_13scoped_refptrINS2_21PendingTaskSafetyFlagEEENS_12AnyInvocableIFvvOEEEEUlvE_JEEET0_PNS0_15TypeErasedStateEDpNS0_18ForwardedParameterIT2_E4typeE(uint64_t result)
{
  if (*(**result + 4) == 1)
  {
    return (*(*result + 32))(*result + 8);
  }

  return result;
}

uint64_t _ZN4absl22internal_any_invocable23RemoteManagerNontrivialIZN6webrtc8SafeTaskENS2_13scoped_refptrINS2_21PendingTaskSafetyFlagEEENS_12AnyInvocableIFvvOEEEEUlvE_EEvNS0_14FunctionToCallEPNS0_15TypeErasedStateESC_(uint64_t result, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      (*(v3 + 24))(1, v3 + 8, v3 + 8);
      if (*v3 && atomic_fetch_add(*v3, 0xFFFFFFFF) == 1)
      {
        MEMORY[0x2743DA540]();
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

uint64_t absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::AsyncDnsResolver::Start(webrtc::SocketAddress const&,int,absl::AnyInvocable<void ()(void)>)::$_0::operator() const(void)::{lambda(void)#1}::operator()(void)::{lambda(void)#1} &&>(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if ((v2 + 104) != *a1 + 2)
  {
    std::vector<webrtc::IPAddress>::__assign_with_size[abi:sn200100]<webrtc::IPAddress*,webrtc::IPAddress*>((v2 + 104), v1[2], v1[3], (v1[3] - v1[2]) >> 5);
  }

  *(v2 + 128) = *(v1 + 2);
  v3 = *(v2 + 160);

  return v3(v2 + 136);
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::AsyncDnsResolver::Start(webrtc::SocketAddress const&,int,absl::AnyInvocable<void ()(void)>)::$_0::operator() const(void)::{lambda(void)#1}::operator()(void)::{lambda(void)#1}>(uint64_t result, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      v4 = *(v3 + 16);
      if (v4)
      {
        v5 = *(v3 + 24);
        v6 = *(v3 + 16);
        if (v5 != v4)
        {
          v7 = v5 - 4;
          v8 = v5 - 4;
          v9 = v5 - 4;
          do
          {
            v10 = *v9;
            v9 -= 4;
            (*v10)(v8);
            v7 -= 4;
            v11 = v8 == v4;
            v8 = v9;
          }

          while (!v11);
          v6 = *(v3 + 16);
        }

        *(v3 + 24) = v4;
        operator delete(v6);
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

void **std::vector<webrtc::IPAddress>::__assign_with_size[abi:sn200100]<webrtc::IPAddress*,webrtc::IPAddress*>(void **result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2;
  v5 = result;
  v6 = result[2];
  v7 = *result;
  if (a4 > (v6 - *result) >> 5)
  {
    if (v7)
    {
      v8 = a4;
      v9 = result[1];
      v10 = *result;
      if (v9 != v7)
      {
        v11 = v9 - 32;
        v12 = v9 - 32;
        v13 = v9 - 32;
        do
        {
          v14 = *v13;
          v13 -= 32;
          (*v14)(v12);
          v11 -= 32;
          v15 = v12 == v7;
          v12 = v13;
        }

        while (!v15);
        v10 = *v5;
      }

      v5[1] = v7;
      operator delete(v10);
      v6 = 0;
      *v5 = 0;
      v5[1] = 0;
      v5[2] = 0;
      a4 = v8;
    }

    if (!(a4 >> 59))
    {
      v16 = v6 >> 4;
      if (v6 >> 4 <= a4)
      {
        v16 = a4;
      }

      v17 = v6 >= 0x7FFFFFFFFFFFFFE0;
      v18 = 0x7FFFFFFFFFFFFFFLL;
      if (!v17)
      {
        v18 = v16;
      }

      if (!(v18 >> 59))
      {
        operator new();
      }
    }

    goto LABEL_35;
  }

  v19 = result[1];
  v20 = v19 - v7;
  if (a4 <= (v19 - v7) >> 5)
  {
    if (a2 != a3)
    {
      do
      {
        *(v7 + 2) = *(v4 + 8);
        *(v7 + 12) = *(v4 + 12);
        v4 += 32;
        v7 += 32;
      }

      while (v4 != a3);
      v19 = result[1];
    }

    if (v19 != v7)
    {
      v27 = v19 - 32;
      v28 = v19 - 32;
      v29 = v19 - 32;
      do
      {
        v30 = *v29;
        v29 -= 32;
        result = (*v30)(v28);
        v27 -= 32;
        v15 = v28 == v7;
        v28 = v29;
      }

      while (!v15);
    }

    v5[1] = v7;
  }

  else
  {
    if (v19 != v7)
    {
      v21 = a2 + v20;
      v22 = v7 + 12;
      v23 = (a2 + 12);
      do
      {
        *(v22 - 1) = *(v23 - 1);
        v24 = *v23;
        v23 += 2;
        *v22 = v24;
        v22 += 2;
        v20 -= 32;
      }

      while (v20);
      v19 = result[1];
      v4 = v21;
    }

    v25 = v19;
    if (v4 != a3)
    {
      v25 = v19;
      v26 = v19;
      while (v26)
      {
        *v26 = &unk_28828CE50;
        *(v26 + 2) = *(v4 + 8);
        *(v26 + 12) = *(v4 + 12);
        v4 += 32;
        v26 += 32;
        v25 += 32;
        if (v4 == a3)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_35:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_25:
    result[1] = v25;
  }

  return result;
}

uint64_t webrtc::PacketTimeUpdateParams::PacketTimeUpdateParams(uint64_t this)
{
  *this = -1;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 8) = 0;
  *(this + 32) = -1;
  *(this + 40) = -1;
  return this;
}

uint64_t webrtc::AsyncSocketPacketOptions::AsyncSocketPacketOptions(uint64_t this)
{
  *this = -1;
  *(this + 4) = 0;
  *(this + 8) = -1;
  *(this + 16) = -1;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 24) = 0;
  *(this + 48) = -1;
  *(this + 56) = -1;
  *(this + 64) = 0;
  *(this + 66) = 0;
  *(this + 78) = 0;
  *(this + 68) = 0;
  *(this + 76) = 0;
  *(this + 88) = 0;
  *(this + 96) = 0;
  *(this + 80) = 0;
  *(this + 104) = 0;
  return this;
}

uint64_t webrtc::AsyncSocketPacketOptions::AsyncSocketPacketOptions(uint64_t this, const webrtc::AsyncSocketPacketOptions *a2)
{
  *this = *a2;
  *(this + 16) = *(a2 + 4);
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 24) = 0;
  v3 = *(a2 + 3);
  v2 = *(a2 + 4);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *(this + 48) = *(a2 + 3);
  v4 = *(a2 + 4);
  v5 = *(a2 + 5);
  *(this + 96) = *(a2 + 12);
  *(this + 64) = v4;
  *(this + 80) = v5;
  *(this + 104) = *(a2 + 52);
  return this;
}

void webrtc::PacketTimeUpdateParams::~PacketTimeUpdateParams(webrtc::PacketTimeUpdateParams *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    *(this + 2) = v1;
    operator delete(v1);
  }
}

void webrtc::AsyncSocketPacketOptions::~AsyncSocketPacketOptions(webrtc::AsyncSocketPacketOptions *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    *(this + 4) = v1;
    operator delete(v1);
  }
}

void webrtc::AsyncPacketSocket::~AsyncPacketSocket(void (**this)(uint64_t, char *, char *))
{
  *this = &unk_28828CE70;
  this[41](1, this + 312, this + 312);
  if (*(this + 304) == 1)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/callback_list.cc", 21, "!send_in_progress_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v2, v3, v4, v5, v31);
    webrtc::AsyncPacketSocket::~AsyncPacketSocket(v30);
  }

  v6 = this[35];
  if (v6)
  {
    v7 = this[36];
    v8 = this[35];
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 1);
        if (v9)
        {
          v9(v7 - 48);
        }

        v7 = (v7 - 56);
      }

      while (v7 != v6);
      v8 = this[35];
    }

    this[36] = v6;
    operator delete(v8);
  }

  while (1)
  {
    v14 = this[32];
    if (!v14)
    {
      break;
    }

    v10 = this[31];
    v11 = *(v10 + 3);
    v13 = *v10;
    v12 = *(v10 + 1);
    *(v13 + 8) = v12;
    *v12 = v13;
    this[32] = (v14 - 1);
    operator delete(v10);
    (*(v11 + 16))(v11, this + 224);
  }

  this[33] = (this + 30);
  for (i = this[25]; i; i = this[25])
  {
    v16 = this[24];
    v17 = *(v16 + 3);
    v19 = *v16;
    v18 = *(v16 + 1);
    *(v19 + 8) = v18;
    *v18 = v19;
    this[25] = (i - 1);
    operator delete(v16);
    (*(v17 + 16))(v17, this + 168);
  }

  this[26] = (this + 23);
  for (j = this[18]; j; j = this[18])
  {
    v21 = this[17];
    v22 = *(v21 + 3);
    v24 = *v21;
    v23 = *(v21 + 1);
    *(v24 + 8) = v23;
    *v23 = v24;
    this[18] = (j - 1);
    operator delete(v21);
    (*(v22 + 16))(v22, this + 112);
  }

  this[19] = (this + 16);
  for (k = this[11]; k; k = this[11])
  {
    v26 = this[10];
    v27 = *(v26 + 3);
    v29 = *v26;
    v28 = *(v26 + 1);
    *(v29 + 8) = v28;
    *v28 = v29;
    this[11] = (k - 1);
    operator delete(v26);
    (*(v27 + 16))(v27, this + 56);
  }

  this[12] = (this + 9);
  *this = &unk_28828CEE0;
  (this[3])(this);
  std::__tree<sigslot::_signal_base_interface *>::destroy((this + 4), this[5]);
}

uint64_t webrtc::AsyncPacketSocket::RegisterReceivedPacketCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 336))
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/async_packet_socket.cc", 58, "!received_packet_callback_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v13);
    return webrtc::AsyncPacketSocket::DeregisterReceivedPacketCallback(v12);
  }

  else
  {
    v10 = (a1 + 328);
    (*(a1 + 328))(1, a1 + 312, a1 + 312);
    *(a1 + 328) = absl::internal_any_invocable::EmptyManager;
    *(a1 + 336) = 0;
    result = (*(a2 + 16))(0, a2, a1 + 312);
    *v10 = *(a2 + 16);
    *(a2 + 16) = absl::internal_any_invocable::EmptyManager;
    *(a2 + 24) = 0;
  }

  return result;
}

uint64_t webrtc::AsyncPacketSocket::DeregisterReceivedPacketCallback(uint64_t (**this)(uint64_t, char *, char *))
{
  result = this[41](1, this + 312, this + 312);
  this[41] = absl::internal_any_invocable::EmptyManager;
  this[42] = 0;
  return result;
}

uint64_t webrtc::AsyncPacketSocket::NotifyPacketReceived(uint64_t result, uint64_t a2)
{
  v2 = *(result + 336);
  if (v2)
  {
    return v2(result + 312, result, a2);
  }

  return result;
}

uint64_t sigslot::has_slots<sigslot::single_threaded>::~has_slots(uint64_t a1)
{
  *a1 = &unk_28828CEE0;
  (*(a1 + 24))();
  std::__tree<sigslot::_signal_base_interface *>::destroy(a1 + 32, *(a1 + 40));
  return a1;
}

void sigslot::has_slots<sigslot::single_threaded>::~has_slots(uint64_t a1)
{
  *a1 = &unk_28828CEE0;
  (*(a1 + 24))();
  std::__tree<sigslot::_signal_base_interface *>::destroy(a1 + 32, *(a1 + 40));

  JUMPOUT(0x2743DA540);
}

void std::__tree<sigslot::_signal_base_interface *>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<sigslot::_signal_base_interface *>::destroy(a1, *a2);
    std::__tree<sigslot::_signal_base_interface *>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void webrtc::webrtc_function_impl::CallHelpers<void ()(webrtc::AsyncPacketSocket *,int)>::CallVoidPtr<std::function<void ()(webrtc::AsyncPacketSocket *,int)>>(uint64_t *a1, uint64_t a2, int a3)
{
  v3 = *a1;
  v7 = a2;
  v6 = a3;
  v4 = *(v3 + 24);
  if (v4)
  {
    (*(*v4 + 48))(v4, &v7, &v6);
  }

  else
  {
    v5 = std::__throw_bad_function_call[abi:sn200100]();
    webrtc::UntypedFunction::PrepareArgs<void ()(webrtc::AsyncPacketSocket *,int),std::function<void ()(webrtc::AsyncPacketSocket *,int)>,std::function<void ()(webrtc::AsyncPacketSocket *,int)>,(void *)0>(std::function<void ()(webrtc::AsyncPacketSocket *,int)> &&)::{lambda(webrtc::webrtc_function_impl::VoidUnion *)#1}::__invoke(v5);
  }
}

void webrtc::UntypedFunction::PrepareArgs<void ()(webrtc::AsyncPacketSocket *,int),std::function<void ()(webrtc::AsyncPacketSocket *,int)>,std::function<void ()(webrtc::AsyncPacketSocket *,int)>,(void *)0>(std::function<void ()(webrtc::AsyncPacketSocket *,int)> &&)::{lambda(webrtc::webrtc_function_impl::VoidUnion *)#1}::__invoke(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
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

void webrtc::AsyncSocketAdapter::AsyncSocketAdapter(webrtc::AsyncSocketAdapter *this, webrtc::Socket *a2)
{
  *this = &unk_28829FC60;
  *(this + 1) = sigslot::_signal_base<sigslot::multi_threaded_local>::do_slot_disconnect;
  *(this + 2) = sigslot::_signal_base<sigslot::multi_threaded_local>::do_slot_duplicate;
  pthread_mutex_init((this + 24), 0);
  *(this + 11) = this + 88;
  *(this + 12) = this + 88;
  *(this + 13) = 0;
  *(this + 14) = this + 88;
  *(this + 120) = 0;
  *(this + 16) = sigslot::_signal_base<sigslot::multi_threaded_local>::do_slot_disconnect;
  *(this + 17) = sigslot::_signal_base<sigslot::multi_threaded_local>::do_slot_duplicate;
  pthread_mutex_init((this + 144), 0);
  *(this + 26) = this + 208;
  *(this + 27) = this + 208;
  *(this + 28) = 0;
  *(this + 29) = this + 208;
  *(this + 240) = 0;
  *(this + 31) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(this + 32) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(this + 33) = this + 264;
  *(this + 34) = this + 264;
  *(this + 35) = 0;
  *(this + 36) = this + 264;
  *(this + 296) = 0;
  *(this + 38) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(this + 39) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(this + 40) = this + 320;
  *(this + 41) = this + 320;
  *(this + 42) = 0;
  *(this + 43) = this + 320;
  *(this + 352) = 0;
  *(this + 46) = sigslot::has_slots<sigslot::single_threaded>::do_signal_connect;
  *(this + 47) = sigslot::has_slots<sigslot::single_threaded>::do_signal_disconnect;
  *(this + 50) = 0;
  *(this + 51) = 0;
  *(this + 48) = sigslot::has_slots<sigslot::single_threaded>::do_disconnect_all;
  *(this + 49) = this + 400;
  *this = &unk_28828CF00;
  *(this + 45) = &unk_28828CFC8;
  *(this + 52) = a2;
  operator new();
}

uint64_t webrtc::AsyncSocketAdapter::OnConnectEvent(uint64_t a1)
{
  return (*(*a1 + 152))();
}

{
  v2 = a1 + 264;
  result = *(a1 + 272);
  for (*(a1 + 288) = result; result != v2; result = *(a1 + 288))
  {
    v5 = *(result + 16);
    v4 = result + 16;
    *(a1 + 288) = *(v4 - 8);
    v5(v4, a1);
  }

  return result;
}

uint64_t webrtc::AsyncSocketAdapter::OnReadEvent(uint64_t a1)
{
  return (*(*a1 + 160))();
}

{
  pthread_mutex_lock((a1 + 24));
  v2 = *(a1 + 96);
  for (*(a1 + 112) = v2; v2 != a1 + 88; v2 = *(a1 + 112))
  {
    v4 = *(v2 + 16);
    v3 = v2 + 16;
    *(a1 + 112) = *(v3 - 8);
    v4(v3, a1);
  }

  return pthread_mutex_unlock((a1 + 24));
}

uint64_t webrtc::AsyncSocketAdapter::OnWriteEvent(uint64_t a1)
{
  return (*(*a1 + 168))();
}

{
  pthread_mutex_lock((a1 + 144));
  v2 = *(a1 + 216);
  for (*(a1 + 232) = v2; v2 != a1 + 208; v2 = *(a1 + 232))
  {
    v4 = *(v2 + 16);
    v3 = v2 + 16;
    *(a1 + 232) = *(v3 - 8);
    v4(v3, a1);
  }

  return pthread_mutex_unlock((a1 + 144));
}

uint64_t webrtc::AsyncSocketAdapter::OnCloseEvent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1 + 320;
  result = *(a1 + 328);
  for (*(a1 + 344) = result; result != v4; result = *(a1 + 344))
  {
    v8 = *(result + 16);
    v7 = result + 16;
    *(a1 + 344) = *(v7 - 8);
    v8(v7, a1, a3);
  }

  return result;
}

void webrtc::AsyncSocketAdapter::~AsyncSocketAdapter(webrtc::AsyncSocketAdapter *this)
{
  *this = &unk_28828CF00;
  v2 = this + 360;
  *(this + 45) = &unk_28828CFC8;
  v3 = *(this + 52);
  *(this + 52) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 45) = &unk_28828CEE0;
  (*(this + 48))(v2);
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 392, *(this + 50));

  webrtc::Socket::~Socket(this);
}

{
  *this = &unk_28828CF00;
  v2 = this + 360;
  *(this + 45) = &unk_28828CFC8;
  v3 = *(this + 52);
  *(this + 52) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 45) = &unk_28828CEE0;
  (*(this + 48))(v2);
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 392, *(this + 50));
  webrtc::Socket::~Socket(this);

  JUMPOUT(0x2743DA540);
}

void non-virtual thunk towebrtc::AsyncSocketAdapter::~AsyncSocketAdapter(webrtc::AsyncSocketAdapter *this)
{
  v2 = (this - 360);
  *(this - 45) = &unk_28828CF00;
  *this = &unk_28828CFC8;
  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *this = &unk_28828CEE0;
  (*(this + 3))(this);
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 32, *(this + 5));

  webrtc::Socket::~Socket(v2);
}

{
  v2 = (this - 360);
  *(this - 45) = &unk_28828CF00;
  *this = &unk_28828CFC8;
  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *this = &unk_28828CEE0;
  (*(this + 3))(this);
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 32, *(this + 5));
  webrtc::Socket::~Socket(v2);

  JUMPOUT(0x2743DA540);
}

uint64_t sigslot::_signal_base<sigslot::multi_threaded_local>::do_slot_disconnect(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = (a1 + 2);
  }

  else
  {
    v4 = 0;
  }

  pthread_mutex_lock(v4);
  v5 = a1[11];
  while (v5 != a1 + 10)
  {
    v6 = v5;
    v5 = v5[1];
    if (v6[3] == a2)
    {
      v7 = *v6;
      *(v7 + 8) = v5;
      *v5 = v7;
      v8 = a1[13];
      --a1[12];
      operator delete(v6);
      if (v8 == v6)
      {
        a1[13] = v5;
      }
    }
  }

  return pthread_mutex_unlock(v4);
}

uint64_t sigslot::_signal_base<sigslot::multi_threaded_local>::do_slot_duplicate(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = (a1 + 16);
  }

  else
  {
    v4 = 0;
  }

  pthread_mutex_lock(v4);
  for (i = *(a1 + 88); i != a1 + 80; i = *(i + 8))
  {
    if (*(i + 24) == a2)
    {
      operator new();
    }
  }

  return pthread_mutex_unlock(v4);
}

void sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect(void *a1, uint64_t a2)
{
  v2 = a1 + 2;
  v3 = a1[3];
  if (v3 != a1 + 2)
  {
    do
    {
      v6 = v3;
      v3 = v3[1];
      if (v6[3] == a2)
      {
        v7 = *v6;
        *(v7 + 8) = v3;
        *v3 = v7;
        v8 = a1[5];
        --a1[4];
        operator delete(v6);
        if (v8 == v6)
        {
          a1[5] = v3;
        }
      }
    }

    while (v3 != v2);
  }
}

uint64_t sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate(uint64_t result, uint64_t a2)
{
  for (i = *(result + 24); i != result + 16; i = *(i + 8))
  {
    if (*(i + 24) == a2)
    {
      operator new();
    }
  }

  return result;
}

void webrtc::Socket::~Socket(webrtc::Socket *this)
{
  *this = &unk_28829FC60;
  for (i = *(this + 42); i; i = *(this + 42))
  {
    v3 = *(this + 41);
    v4 = v3[3];
    v6 = *v3;
    v5 = v3[1];
    *(v6 + 8) = v5;
    *v5 = v6;
    *(this + 42) = i - 1;
    operator delete(v3);
    (*(v4 + 16))(v4, this + 304);
  }

  *(this + 43) = this + 320;
  for (j = *(this + 35); j; j = *(this + 35))
  {
    v8 = *(this + 34);
    v9 = v8[3];
    v11 = *v8;
    v10 = v8[1];
    *(v11 + 8) = v10;
    *v10 = v11;
    *(this + 35) = j - 1;
    operator delete(v8);
    (*(v9 + 16))(v9, this + 248);
  }

  *(this + 36) = this + 264;
  sigslot::_signal_base<sigslot::multi_threaded_local>::~_signal_base(this + 128);
  sigslot::_signal_base<sigslot::multi_threaded_local>::~_signal_base(this + 8);
}

uint64_t sigslot::_signal_base<sigslot::multi_threaded_local>::~_signal_base(uint64_t a1)
{
  pthread_mutex_lock((a1 + 16));
  for (i = *(a1 + 96); i; i = *(a1 + 96))
  {
    v3 = *(a1 + 88);
    v4 = v3[3];
    v6 = *v3;
    v5 = v3[1];
    *(v6 + 8) = v5;
    *v5 = v6;
    *(a1 + 96) = i - 1;
    operator delete(v3);
    (*(v4 + 16))(v4, a1);
  }

  v7 = (a1 + 80);
  *(a1 + 104) = a1 + 80;
  pthread_mutex_unlock((a1 + 16));
  if (*(a1 + 96))
  {
    v8 = *(a1 + 88);
    v9 = *(*(a1 + 80) + 8);
    v10 = *v8;
    *(v10 + 8) = v9;
    *v9 = v10;
    *(a1 + 96) = 0;
    if (v8 != v7)
    {
      do
      {
        v11 = v8[1];
        operator delete(v8);
        v8 = v11;
      }

      while (v11 != v7);
    }
  }

  pthread_mutex_destroy((a1 + 16));
  return a1;
}

uint64_t sigslot::has_slots<sigslot::single_threaded>::do_signal_connect(uint64_t result, unint64_t a2)
{
  v2 = *(result + 40);
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
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void sigslot::has_slots<sigslot::single_threaded>::do_signal_disconnect(void *a1, unint64_t a2)
{
  v4 = a1 + 5;
  v3 = a1[5];
  if (v3)
  {
    v5 = v4;
    v6 = v3;
    do
    {
      v7 = v6[4];
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v5 = v6;
      }

      v6 = v6[v9];
    }

    while (v6);
    if (v5 != v4 && v5[4] <= a2)
    {
      v10 = v5[1];
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
        v12 = v5;
        do
        {
          v11 = v12[2];
          v13 = *v11 == v12;
          v12 = v11;
        }

        while (!v13);
      }

      if (a1[4] == v5)
      {
        a1[4] = v11;
      }

      --a1[6];
      std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v3, v5);

      operator delete(v5);
    }
  }
}

void sigslot::has_slots<sigslot::single_threaded>::do_disconnect_all(void *a1)
{
  v1 = a1[6];
  if (v1)
  {
    v3 = a1 + 5;
    do
    {
      v4 = a1[5];
      v10 = a1[4];
      v5 = v10;
      v11[0] = v4;
      a1[5] = 0;
      a1[6] = 0;
      v11[1] = v1;
      v4[2] = v11;
      a1[4] = v3;
      if (v5 != v11)
      {
        do
        {
          v6 = v5[1];
          v7 = v5;
          if (v6)
          {
            do
            {
              v8 = v6;
              v6 = *v6;
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

            while (!v9);
          }

          (*v5[4])();
          v5 = v8;
        }

        while (v8 != v11);
        v4 = v11[0];
      }

      std::__tree<sigslot::_signal_base_interface *>::destroy(&v10, v4);
      v1 = a1[6];
    }

    while (v1);
  }
}

uint64_t *std::__tree_balance_after_insert[abi:sn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 == result)
  {
    return result;
  }

  while (1)
  {
    v2 = a2[2];
    if (v2[3])
    {
      return result;
    }

    v3 = v2[2];
    v4 = *v3;
    if (*v3 != v2)
    {
      break;
    }

    v8 = v3[1];
    if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
    {
      if (*v2 == a2)
      {
        *(v2 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v10 = v2[1];
        v11 = *v10;
        v2[1] = *v10;
        v12 = v2;
        if (v11)
        {
          v11[2] = v2;
          v3 = v2[2];
          v12 = *v3;
        }

        v10[2] = v3;
        v3[v12 != v2] = v10;
        *v10 = v2;
        v2[2] = v10;
        v3 = v10[2];
        v4 = *v3;
        *(v10 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
LABEL_15:
          *(v13 + 16) = v3;
        }
      }

      v14 = v3[2];
      v14[*v14 != v3] = v4;
      v4[1] = v3;
      v4[2] = v14;
      v3[2] = v4;
      return result;
    }

LABEL_3:
    *(v2 + 24) = 1;
    a2 = v3;
    *(v3 + 24) = v3 == result;
    *v7 = 1;
    if (v3 == result)
    {
      return result;
    }
  }

  if (v4)
  {
    v6 = *(v4 + 24);
    v5 = v4 + 3;
    if (v6 != 1)
    {
      v7 = v5;
      goto LABEL_3;
    }
  }

  v15 = *v2;
  if (*v2 == a2)
  {
    v16 = *(v15 + 8);
    *v2 = v16;
    if (v16)
    {
      *(v16 + 16) = v2;
      v3 = v2[2];
    }

    v3[*v3 != v2] = v15;
    *(v15 + 8) = v2;
    *(v15 + 16) = v3;
    v2[2] = v15;
    v3 = *(v15 + 16);
  }

  else
  {
    v15 = a2[2];
  }

  *(v15 + 24) = 1;
  *(v3 + 24) = 0;
  v17 = v3[1];
  v18 = *v17;
  v3[1] = *v17;
  if (v18)
  {
    *(v18 + 16) = v3;
  }

  v19 = v3[2];
  v17[2] = v19;
  v19[*v19 != v3] = v17;
  *v17 = v3;
  v3[2] = v17;
  return result;
}

uint64_t **std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(uint64_t **result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      v5 = 0;
      v6 = a2[2];
      *(v2 + 16) = v6;
      v7 = *v6;
      if (*v6 == a2)
      {
        goto LABEL_10;
      }

LABEL_6:
      v6[1] = v2;
      v8 = *(v3 + 24);
      if (v3 == a2)
      {
        goto LABEL_7;
      }

LABEL_16:
      v9 = a2[2];
      v9[*v9 != a2] = v3;
      v3[2] = v9;
      v11 = *a2;
      v10 = a2[1];
      *(v11 + 16) = v3;
      *v3 = v11;
      v3[1] = v10;
      if (v10)
      {
        *(v10 + 16) = v3;
      }

      *(v3 + 24) = *(a2 + 24);
      if (result == a2)
      {
        result = v3;
      }

      if (!result)
      {
        return result;
      }

      goto LABEL_21;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (!v2)
  {
    v6 = v3[2];
    v5 = 1;
    v7 = *v6;
    if (*v6 == v3)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v5 = 0;
  v6 = v3[2];
  *(v2 + 16) = v6;
  v7 = *v6;
  if (*v6 != v3)
  {
    goto LABEL_6;
  }

LABEL_10:
  *v6 = v2;
  if (v3 == result)
  {
    v7 = 0;
    result = v2;
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = v6[1];
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

LABEL_7:
  if (!result)
  {
    return result;
  }

LABEL_21:
  if (!v8)
  {
    return result;
  }

  if (!v5)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v14 = v7[2];
    v15 = *v14;
    if (*v14 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v14 + 24) = 0;
      v16 = v14[1];
      v17 = *v16;
      v14[1] = *v16;
      if (v17)
      {
        *(v17 + 16) = v14;
      }

      v18 = v14[2];
      v16[2] = v18;
      v18[*v18 != v14] = v16;
      *v16 = v14;
      v14[2] = v16;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v19 = *v7;
    if (*v7 && *(v19 + 24) != 1)
    {
      v20 = v7[1];
      if (v20 && (v20[3] & 1) == 0)
      {
LABEL_65:
        v19 = v7;
      }

      else
      {
        *(v19 + 24) = 1;
        *(v7 + 24) = 0;
        v28 = v19[1];
        *v7 = v28;
        if (v28)
        {
          *(v28 + 16) = v7;
        }

        v29 = v7[2];
        v29[*v29 != v7] = v19;
        v19[1] = v7;
        v19[2] = v29;
        v7[2] = v19;
        v20 = v7;
      }

      v30 = v19[2];
      *(v19 + 24) = *(v30 + 24);
      *(v30 + 24) = 1;
      *(v20 + 24) = 1;
      v31 = *(v30 + 8);
      v32 = *v31;
      *(v30 + 8) = *v31;
      if (v32)
      {
        *(v32 + 16) = v30;
      }

      v33 = *(v30 + 16);
      v31[2] = v33;
      v33[*v33 != v30] = v31;
      *v31 = v30;
      *(v30 + 16) = v31;
      return result;
    }

    v20 = v7[1];
    if (v20 && *(v20 + 24) != 1)
    {
      goto LABEL_65;
    }

    *(v7 + 24) = 0;
    v12 = v7[2];
    if (v12 == result || (v12[3] & 1) == 0)
    {
      goto LABEL_59;
    }

LABEL_28:
    v7 = v12[2][*v12[2] == v12];
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v14 + 24) = 0;
    v21 = v15[1];
    *v14 = v21;
    if (v21)
    {
      v21[2] = v14;
    }

    v22 = v14[2];
    v22[*v22 != v14] = v15;
    v15[1] = v14;
    v15[2] = v22;
    v14[2] = v15;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_69;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v12 = v7[2];
    if (*(v12 + 24) != 1 || v12 == result)
    {
LABEL_59:
      *(v12 + 24) = 1;
      return result;
    }

    goto LABEL_28;
  }

  if (v24 && (v24[3] & 1) == 0)
  {
LABEL_69:
    v25 = v7;
    goto LABEL_70;
  }

  *(v25 + 24) = 1;
  *(v7 + 24) = 0;
  v26 = *v25;
  v7[1] = *v25;
  if (v26)
  {
    *(v26 + 16) = v7;
  }

  v27 = v7[2];
  v25[2] = v27;
  v27[*v27 != v7] = v25;
  *v25 = v7;
  v7[2] = v25;
  v24 = v7;
LABEL_70:
  v34 = v25[2];
  *(v25 + 24) = *(v34 + 24);
  *(v34 + 24) = 1;
  *(v24 + 24) = 1;
  v35 = *v34;
  v36 = *(*v34 + 8);
  *v34 = v36;
  if (v36)
  {
    *(v36 + 16) = v34;
  }

  v37 = v34[2];
  v37[*v37 != v34] = v35;
  *(v35 + 8) = v34;
  *(v35 + 16) = v37;
  v34[2] = v35;
  return result;
}

uint64_t sigslot::_opaque_connection::emitter<webrtc::AsyncSocketAdapter,webrtc::Socket *>(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[1];
  if (v3)
  {
    v4 = v3 - 360;
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

uint64_t sigslot::_opaque_connection::emitter<webrtc::AsyncSocketAdapter,webrtc::Socket *,int>(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[1];
  if (v3)
  {
    v4 = v3 - 360;
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

size_t webrtc::AsyncStunTCPSocket::Send(webrtc::AsyncStunTCPSocket *this, unsigned __int16 *a2, size_t a3, const webrtc::AsyncSocketPacketOptions *a4)
{
  if (a3 - 65557 < 0xFFFFFFFFFFFEFFEFLL)
  {
    (*(*this + 88))(this, 40);
    return 0xFFFFFFFFLL;
  }

  if (*(this + 47))
  {
    return a3;
  }

  v5 = bswap32(a2[1]) >> 16;
  if ((*a2 & 0xC0) != 0)
  {
    v6 = 4 - (v5 & 3);
    v7 = (v5 & 3) == 0;
    v8 = v5 + 4;
    if (v7)
    {
      v9 = 0;
    }

    else
    {
      v9 = v6;
    }

    if (v8 == a3)
    {
      goto LABEL_9;
    }

    return 0xFFFFFFFFLL;
  }

  v9 = 0;
  if (v5 + 20 != a3)
  {
    return 0xFFFFFFFFLL;
  }

LABEL_9:
  v10 = a3;
  if (*(this + 48) < a3)
  {
    operator new[]();
  }

  v12 = a3;
  memcpy(*(this + 49), a2, a3);
  *(this + 47) = v12;
  __src = 0;
  if (v9)
  {
    if (*(this + 48) < v9 + v10)
    {
      operator new[]();
    }

    memcpy((*(this + 49) + v10), &__src, v9);
    *(this + 47) = v9 + v10;
  }

  v13 = webrtc::AsyncTCPSocketBase::FlushOutBuffer(this);
  if (v13 <= 0)
  {
    *(this + 47) = 0;
    return v13;
  }

  else
  {
    v14 = *(a4 + 1);
    if (webrtc::g_clock)
    {
      v15 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
    }

    else
    {
      if (!dword_28100D8E4)
      {
        mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
      }

      v15 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
    }

    v20[0] = v14;
    v20[1] = v15 / 1000000;
    v21 = 0;
    v22 = 0;
    v25 = 0;
    v23 = 0;
    v24 = 0;
    v27 = 0;
    v28 = 0;
    v26 = 0;
    v16 = *(this + 10);
    for (*(this + 12) = v16; v16 != (this + 72); v16 = *(this + 12))
    {
      v18 = v16[2];
      v17 = v16 + 2;
      *(this + 12) = *(v17 - 1);
      v18(v17, this, v20);
    }

    return v10;
  }
}

unint64_t webrtc::AsyncStunTCPSocket::ProcessInput(void *a1, uint64_t a2, unint64_t a3)
{
  (*(*a1 + 24))(__p);
  if (a3 >= 4)
  {
    v6 = 0;
    v8 = a3;
    while (1)
    {
      v9 = bswap32(*(a2 + v6 + 2)) >> 16;
      if ((*(a2 + v6) & 0xC0) != 0)
      {
        v10 = 4 - (v9 & 3);
        v11 = (v9 & 3) == 0;
        v12 = v9 + 4;
        if (v11)
        {
          v10 = 0;
        }

        v13 = v12 + v10;
        if (v8 < v12 + v10)
        {
          goto LABEL_3;
        }
      }

      else
      {
        v12 = v9 + 20;
        v13 = v12;
        if (v8 < v12)
        {
          goto LABEL_3;
        }
      }

      if (a3 <= v6)
      {
        v14 = 0;
      }

      else
      {
        v14 = v12;
      }

      if (a3 <= v6)
      {
        v15 = 0;
      }

      else
      {
        v15 = a2 + v6;
      }

      if (webrtc::g_clock)
      {
        v16 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
      }

      else
      {
        if (!dword_28100D8E4)
        {
          mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
        }

        v16 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
      }

      if (a3 <= v6)
      {
        v17 = 0;
      }

      else
      {
        v17 = v15;
      }

      v19[0] = v17;
      v19[1] = v14;
      v19[2] = v16 / 1000;
      v19[3] = 1;
      v19[4] = __p;
      v19[5] = 0;
      v18 = a1[42];
      if (v18)
      {
        v18(a1 + 39, a1, v19);
      }

      v6 += v13;
      v8 = a3 - v6;
      if (a3 - v6 <= 3)
      {
        goto LABEL_3;
      }
    }
  }

  v6 = 0;
LABEL_3:
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

void webrtc::AsyncStunTCPSocket::~AsyncStunTCPSocket(webrtc::AsyncStunTCPSocket *this)
{
  *this = &unk_28828D060;
  v2 = *(this + 49);
  *(this + 49) = 0;
  if (v2)
  {
    MEMORY[0x2743DA520](v2, 0x1000C8077774924);
  }

  v3 = *(this + 46);
  *(this + 46) = 0;
  if (v3)
  {
    MEMORY[0x2743DA520](v3, 0x1000C8077774924);
  }

  v4 = *(this + 43);
  *(this + 43) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  webrtc::AsyncPacketSocket::~AsyncPacketSocket(this);
}

{
  *this = &unk_28828D060;
  v2 = *(this + 49);
  *(this + 49) = 0;
  if (v2)
  {
    MEMORY[0x2743DA520](v2, 0x1000C8077774924);
  }

  v3 = *(this + 46);
  *(this + 46) = 0;
  if (v3)
  {
    MEMORY[0x2743DA520](v3, 0x1000C8077774924);
  }

  v4 = *(this + 43);
  *(this + 43) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  webrtc::AsyncPacketSocket::~AsyncPacketSocket(this);

  JUMPOUT(0x2743DA540);
}

void webrtc::AsyncTCPSocketBase::AsyncTCPSocketBase(webrtc::AsyncTCPSocketBase *this, webrtc::Socket *a2, uint64_t a3)
{
  *(this + 1) = sigslot::has_slots<sigslot::single_threaded>::do_signal_connect;
  *(this + 2) = sigslot::has_slots<sigslot::single_threaded>::do_signal_disconnect;
  *(this + 5) = 0;
  *(this + 3) = sigslot::has_slots<sigslot::single_threaded>::do_disconnect_all;
  *(this + 4) = this + 40;
  *(this + 6) = 0;
  *(this + 7) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(this + 8) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(this + 9) = this + 72;
  *(this + 10) = this + 72;
  *(this + 11) = 0;
  *(this + 12) = this + 72;
  *(this + 104) = 0;
  *(this + 14) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(this + 15) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(this + 16) = this + 128;
  *(this + 17) = this + 128;
  *(this + 18) = 0;
  *(this + 19) = this + 128;
  *(this + 160) = 0;
  *(this + 21) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(this + 22) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(this + 23) = this + 184;
  *(this + 24) = this + 184;
  *(this + 25) = 0;
  *(this + 26) = this + 184;
  *(this + 216) = 0;
  *(this + 28) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(this + 29) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(this + 30) = this + 240;
  *(this + 31) = this + 240;
  *(this + 32) = 0;
  *(this + 33) = this + 240;
  *(this + 272) = 0;
  *(this + 35) = 0;
  *(this + 36) = 0;
  *(this + 304) = 0;
  *(this + 37) = 0;
  *(this + 41) = absl::internal_any_invocable::EmptyManager;
  *(this + 42) = 0;
  *this = &unk_28828D060;
  *(this + 43) = a2;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 50) = a3;
  *(this + 51) = a3;
  operator new[]();
}

uint64_t webrtc::AsyncTCPSocketBase::OnConnectEvent(uint64_t a1)
{
  v2 = a1 + 240;
  result = *(a1 + 248);
  for (*(a1 + 264) = result; result != v2; result = *(a1 + 264))
  {
    v5 = *(result + 16);
    v4 = result + 16;
    *(a1 + 264) = *(v4 - 8);
    v5(v4, a1);
  }

  return result;
}

void webrtc::AsyncTCPSocketBase::OnReadEvent(webrtc::AsyncTCPSocketBase *this, webrtc::Socket *a2)
{
  v3 = 0;
  v5 = *(this + 44);
  v4 = *(this + 45);
  while (1)
  {
    v7 = v4 - v5;
    if (v4 - v5 <= 0x7F && v4 < *(this + 50) && v4 >= 1)
    {
      operator new[]();
    }

    v8 = (*(**(this + 43) + 64))(*(this + 43), *(this + 46) + v5, v7, 0);
    if ((v8 & 0x80000000) != 0)
    {
      break;
    }

    v4 = *(this + 45);
    v5 = *(this + 44) + v8;
    if (v4 < v5)
    {
      operator new[]();
    }

    v3 += v8;
    *(this + 44) = v5;
    if (v8)
    {
      v6 = v7 > v8;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      goto LABEL_16;
    }
  }

  if ((*(**(this + 43) + 112))(*(this + 43)) - 35 >= 2 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    (*(**(this + 43) + 112))(*(this + 43));
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v9, v10, v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/async_tcp_socket.cc");
  }

LABEL_16:
  if (v3)
  {
    if (*(this + 44))
    {
      v16 = *(this + 46);
    }

    else
    {
      v16 = 0;
    }

    v17 = (*(*this + 96))(this, v16);
    v18 = *(this + 44);
    v19 = v18 - v17;
    if (v18 >= v17)
    {
      if (v18 != v17)
      {
        memmove(*(this + 46), (*(this + 46) + v17), v19);
      }

      if (*(this + 45) < v19)
      {
        operator new[]();
      }
    }

    else
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v20, v21, v22, v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/async_tcp_socket.cc");
      }

      v19 = 0;
    }

    *(this + 44) = v19;
  }
}

void *webrtc::AsyncTCPSocketBase::OnWriteEvent(webrtc::AsyncTCPSocketBase *this, webrtc::Socket *a2)
{
  if (!*(this + 47) || (result = webrtc::AsyncTCPSocketBase::FlushOutBuffer(this), !*(this + 47)))
  {
    result = *(this + 17);
    for (*(this + 19) = result; result != (this + 128); result = *(this + 19))
    {
      v5 = result[2];
      v4 = result + 2;
      *(this + 19) = *(v4 - 1);
      v5(v4, this);
    }
  }

  return result;
}

uint64_t *webrtc::AsyncTCPSocketBase::OnCloseEvent(uint64_t *this, webrtc::Socket *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 304) == 1)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/callback_list.cc", 71, "!send_in_progress_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v16);
    webrtc::AsyncTCPSocketBase::~AsyncTCPSocketBase(v15);
  }

  v8 = this;
  v9 = this + 38;
  *(this + 304) = 1;
  v10 = this[35];
  v11 = this[36];
  if (v10 == v11)
  {
    *v9 = 0;
  }

  else
  {
    v13 = 0;
    do
    {
      this = (*(v10 + 40))(v10 + 8, v8, a3);
      v14 = *v10;
      v10 += 56;
      v13 |= v14 == v9;
    }

    while (v10 != v11);
    *v9 = 0;
    if (v13)
    {

      return webrtc::callback_list_impl::CallbackListReceivers::RemoveReceivers((v8 + 280), v9);
    }
  }

  return this;
}

uint64_t webrtc::AsyncTCPSocketBase::GetState(webrtc::AsyncTCPSocketBase *this)
{
  v1 = (*(**(this + 43) + 128))(*(this + 43));
  if (v1 == 1)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  if (v1 == 2)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t webrtc::AsyncTCPSocketBase::SendTo(webrtc::AsyncTCPSocketBase *this, const void *a2, uint64_t a3, const webrtc::SocketAddress *a4, const webrtc::AsyncSocketPacketOptions *a5)
{
  (*(*this + 24))(__p);
  if (webrtc::SocketAddress::operator==(a4, __p))
  {
    result = (*(*this + 32))(this, a2, a3, a5);
    if (v13 < 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    (*(**(this + 43) + 120))(*(this + 43), 57);
    result = 0xFFFFFFFFLL;
    if (v13 < 0)
    {
LABEL_6:
      v11 = result;
      operator delete(__p[0]);
      return v11;
    }
  }

  return result;
}

uint64_t webrtc::AsyncTCPSocketBase::FlushOutBuffer(webrtc::AsyncTCPSocketBase *this)
{
  v2 = *(this + 47);
  if (v2)
  {
    v3 = *(this + 49);
    while (1)
    {
      v4 = (*(**(this + 43) + 48))(*(this + 43), v3, v2);
      if (v4 < 1)
      {
        LODWORD(v7) = v4;
        goto LABEL_19;
      }

      v5 = v2 - v4;
      if (v2 < v4)
      {
        break;
      }

      if (v5 >= v2)
      {
        v5 = v2;
      }

      if (v2 > v4)
      {
        v3 += v4;
      }

      else
      {
        v3 = 0;
      }

      v6 = v2 <= v4 || v5 == 0;
      v2 = v5;
      if (v6)
      {
        v2 = 0;
        v7 = *(this + 94);
        goto LABEL_25;
      }
    }

    LODWORD(v7) = -1;
  }

  else
  {
    v3 = 0;
    LODWORD(v7) = 0;
  }

LABEL_19:
  v8 = (*(**(this + 43) + 112))(*(this + 43));
  v9 = *(this + 47);
  if (v8 == 35)
  {
    v7 = (v9 - v2);
  }

  else
  {
    v7 = v7;
  }

  if (v9 > v2)
  {
    memmove(*(this + 49), v3, v2);
    if (*(this + 48) < v2)
    {
      operator new[]();
    }

LABEL_25:
    *(this + 47) = v2;
  }

  return v7;
}

size_t webrtc::AsyncTCPSocket::Send(webrtc::AsyncTCPSocket *this, const void *a2, size_t __n, const webrtc::AsyncSocketPacketOptions *a4)
{
  if (__n < 0x10003)
  {
    v5 = __n;
    if (!*(this + 47))
    {
      v7 = bswap32(__n) >> 16;
      if (*(this + 48) <= 1uLL)
      {
        operator new[]();
      }

      **(this + 49) = v7;
      *(this + 47) = 2;
      if (__n)
      {
        v9 = __n + 2;
        if (*(this + 48) < __n + 2)
        {
          operator new[]();
        }

        memcpy((*(this + 49) + 2), a2, __n);
        *(this + 47) = v9;
      }

      v10 = webrtc::AsyncTCPSocketBase::FlushOutBuffer(this);
      if (v10 <= 0)
      {
        *(this + 47) = 0;
        return v10;
      }

      else
      {
        v11 = *(a4 + 1);
        if (webrtc::g_clock)
        {
          v12 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
        }

        else
        {
          if (!dword_28100D8E4)
          {
            mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
          }

          v12 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
        }

        v19[0] = v11;
        v19[1] = v12 / 1000000;
        v13 = *(a4 + 5);
        v20 = *(a4 + 4);
        v22 = *(&v13 + 1);
        v21 = v5;
        (*(*this + 16))(&__p, this);
        v14 = 40;
        if (v26 != 30)
        {
          v14 = 0;
        }

        v15 = 20;
        if (v26 != 2)
        {
          v15 = v14;
        }

        v23 = v15;
        if (v25 < 0)
        {
          operator delete(__p);
        }

        v16 = *(this + 10);
        for (*(this + 12) = v16; v16 != (this + 72); v16 = *(this + 12))
        {
          v18 = v16[2];
          v17 = v16 + 2;
          *(this + 12) = *(v17 - 1);
          v18(v17, this, v19);
        }
      }
    }
  }

  else
  {
    (*(*this + 88))(this, 40);
    return 0xFFFFFFFFLL;
  }

  return v5;
}

uint64_t webrtc::AsyncTCPSocket::ProcessInput(void *a1, uint64_t a2, unint64_t a3)
{
  (*(*a1 + 24))(__p);
  if (a3 >= 2)
  {
    v6 = 0;
    v8 = a3;
    do
    {
      v9 = bswap32(*(a2 + v6)) >> 16;
      v10 = v9 + 2;
      if (v8 < v9 + 2)
      {
        break;
      }

      v11 = v6 + 2;
      v12 = a2 + v6 + 2;
      if (a3 - (v6 + 2) < v9)
      {
        v9 = a3 - (v6 + 2);
      }

      if (!v9)
      {
        v12 = 0;
      }

      v13 = a3 > v11 ? v9 : 0;
      v14 = a3 > v11 ? v12 : 0;
      if (webrtc::g_clock)
      {
        v15 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
      }

      else
      {
        if (!dword_28100D8E4)
        {
          mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
        }

        v15 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
      }

      if (v13)
      {
        v16 = v14;
      }

      else
      {
        v16 = 0;
      }

      v18[0] = v16;
      v18[1] = v13;
      v18[2] = v15 / 1000;
      v18[3] = 1;
      v18[4] = __p;
      v18[5] = 0;
      v17 = a1[42];
      if (v17)
      {
        v17(a1 + 39, a1, v18);
      }

      v6 += v10;
      v8 = a3 - v6;
    }

    while (a3 - v6 > 1);
  }

  else
  {
    v6 = 0;
  }

  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

void webrtc::AsyncTcpListenSocket::AsyncTcpListenSocket(uint64_t a1, uint64_t *a2)
{
  *(a1 + 8) = sigslot::has_slots<sigslot::single_threaded>::do_signal_connect;
  *(a1 + 16) = sigslot::has_slots<sigslot::single_threaded>::do_signal_disconnect;
  *(a1 + 40) = 0;
  *(a1 + 24) = sigslot::has_slots<sigslot::single_threaded>::do_disconnect_all;
  *(a1 + 32) = a1 + 40;
  *(a1 + 48) = 0;
  *(a1 + 56) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(a1 + 64) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(a1 + 72) = a1 + 72;
  *(a1 + 80) = a1 + 72;
  *(a1 + 88) = 0;
  *(a1 + 96) = a1 + 72;
  *(a1 + 104) = 0;
  *a1 = &unk_28828D150;
  v2 = *a2;
  *a2 = 0;
  *(a1 + 112) = v2;
  pthread_mutex_lock((v2 + 24));
  operator new();
}

void webrtc::AsyncTcpListenSocket::OnReadEvent(webrtc::AsyncTcpListenSocket *this, webrtc::Socket *a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v16 = 0;
  v17 = &unk_28828CE50;
  v22 = 0;
  memset(v23, 0, sizeof(v23));
  v18 = 0;
  v19 = *&v23[4];
  v20 = 0;
  v21 = 0;
  v3 = (*(*a2 + 96))(a2, __p);
  if (!v3)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      if ((SHIBYTE(v16) & 0x80000000) == 0)
      {
        return;
      }
    }

    else
    {
      (*(**(this + 14) + 112))(*(this + 14));
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v8, v9, v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/async_tcp_socket.cc");
      if ((SHIBYTE(v16) & 0x80000000) == 0)
      {
        return;
      }
    }

LABEL_10:
    operator delete(__p[0]);
    return;
  }

  v4 = v3;
  (*(*this + 32))(this, v3);
  pthread_mutex_lock((v4 + 24));
  v5 = *(v4 + 96);
  for (*(v4 + 112) = v5; v5 != v4 + 88; v5 = *(v4 + 112))
  {
    v7 = *(v5 + 16);
    v6 = v5 + 16;
    *(v4 + 112) = *(v6 - 8);
    v7(v6, v4);
  }

  pthread_mutex_unlock((v4 + 24));
  if (SHIBYTE(v16) < 0)
  {
    goto LABEL_10;
  }
}

void webrtc::AsyncTCPSocket::~AsyncTCPSocket(webrtc::AsyncTCPSocket *this)
{
  *this = &unk_28828D060;
  v2 = *(this + 49);
  *(this + 49) = 0;
  if (v2)
  {
    MEMORY[0x2743DA520](v2, 0x1000C8077774924);
  }

  v3 = *(this + 46);
  *(this + 46) = 0;
  if (v3)
  {
    MEMORY[0x2743DA520](v3, 0x1000C8077774924);
  }

  v4 = *(this + 43);
  *(this + 43) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  webrtc::AsyncPacketSocket::~AsyncPacketSocket(this);
}

{
  *this = &unk_28828D060;
  v2 = *(this + 49);
  *(this + 49) = 0;
  if (v2)
  {
    MEMORY[0x2743DA520](v2, 0x1000C8077774924);
  }

  v3 = *(this + 46);
  *(this + 46) = 0;
  if (v3)
  {
    MEMORY[0x2743DA520](v3, 0x1000C8077774924);
  }

  v4 = *(this + 43);
  *(this + 43) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  webrtc::AsyncPacketSocket::~AsyncPacketSocket(this);

  JUMPOUT(0x2743DA540);
}

void webrtc::AsyncTcpListenSocket::~AsyncTcpListenSocket(webrtc::AsyncTcpListenSocket *this)
{
  *this = &unk_28828D150;
  v2 = *(this + 14);
  *(this + 14) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = &unk_28828D188;
  for (i = *(this + 11); i; i = *(this + 11))
  {
    v4 = *(this + 10);
    v5 = v4[3];
    v7 = *v4;
    v6 = v4[1];
    *(v7 + 8) = v6;
    *v6 = v7;
    *(this + 11) = i - 1;
    operator delete(v4);
    (*(v5 + 16))(v5, this + 56);
  }

  *(this + 12) = this + 72;
  *this = &unk_28828CEE0;
  (*(this + 3))(this);
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 32, *(this + 5));
}

{
  *this = &unk_28828D150;
  v2 = *(this + 14);
  *(this + 14) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = &unk_28828D188;
  for (i = *(this + 11); i; i = *(this + 11))
  {
    v4 = *(this + 10);
    v5 = v4[3];
    v7 = *v4;
    v6 = v4[1];
    *(v7 + 8) = v6;
    *v6 = v7;
    *(this + 11) = i - 1;
    operator delete(v4);
    (*(v5 + 16))(v5, this + 56);
  }

  *(this + 12) = this + 72;
  *this = &unk_28828CEE0;
  (*(this + 3))(this);
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 32, *(this + 5));

  JUMPOUT(0x2743DA540);
}

uint64_t sigslot::_opaque_connection::emitter<webrtc::AsyncTCPSocketBase,webrtc::Socket *>(void *a1)
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

uint64_t sigslot::_opaque_connection::emitter<webrtc::AsyncTCPSocketBase,webrtc::Socket *,int>(void *a1)
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

uint64_t sigslot::_opaque_connection::emitter<webrtc::AsyncTcpListenSocket,webrtc::Socket *>(void *a1)
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

void webrtc::AsyncUDPSocket::AsyncUDPSocket(webrtc::AsyncUDPSocket *this, webrtc::Socket *a2)
{
  *(this + 1) = sigslot::has_slots<sigslot::single_threaded>::do_signal_connect;
  *(this + 2) = sigslot::has_slots<sigslot::single_threaded>::do_signal_disconnect;
  *(this + 5) = 0;
  *(this + 3) = sigslot::has_slots<sigslot::single_threaded>::do_disconnect_all;
  *(this + 4) = this + 40;
  *(this + 6) = 0;
  *(this + 7) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(this + 8) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(this + 9) = this + 72;
  *(this + 10) = this + 72;
  *(this + 11) = 0;
  *(this + 12) = this + 72;
  *(this + 104) = 0;
  *(this + 14) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(this + 15) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(this + 16) = this + 128;
  *(this + 17) = this + 128;
  *(this + 18) = 0;
  *(this + 19) = this + 128;
  *(this + 160) = 0;
  *(this + 21) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(this + 22) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(this + 23) = this + 184;
  *(this + 24) = this + 184;
  *(this + 25) = 0;
  *(this + 26) = this + 184;
  *(this + 216) = 0;
  *(this + 28) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(this + 29) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(this + 30) = this + 240;
  *(this + 31) = this + 240;
  *(this + 32) = 0;
  *(this + 33) = this + 240;
  *(this + 272) = 0;
  *(this + 35) = 0;
  *(this + 36) = 0;
  *(this + 304) = 0;
  *(this + 37) = 0;
  *(this + 41) = absl::internal_any_invocable::EmptyManager;
  *(this + 42) = 0;
  *this = &unk_28828D1B8;
  *(this + 43) = a2;
  *(this + 352) = 0;
  *(this + 392) = 0;
  *(this + 46) = 0;
  *(this + 47) = 0;
  *(this + 45) = 0;
  *(this + 384) = 0;
  pthread_mutex_lock((a2 + 24));
  operator new();
}

void webrtc::AsyncUDPSocket::OnReadEvent(webrtc::AsyncUDPSocket *this, webrtc::Socket *a2)
{
  LOBYTE(v27) = 0;
  LOBYTE(v28) = 0;
  v29[1] = 0;
  v30 = 0;
  v29[0] = 0;
  v31 = &unk_28828CE50;
  v36 = 0;
  memset(&__p[1], 0, 20);
  v32 = 0;
  v33 = *(&__p[1] + 4);
  v34 = 0;
  v35 = 0;
  v37 = 0;
  v38 = this + 360;
  v3 = (*(**(this + 43) + 80))(*(this + 43), &v27);
  if (v3 < 0)
  {
    (*(**(this + 43) + 16))(__p);
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0 && (webrtc::SocketAddress::ToSensitiveString(__p, &v22), (*(**(this + 43) + 112))(*(this + 43)), webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v7, v8, v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/async_udp_socket.cc"), v23 < 0))
    {
      operator delete(v22);
      if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
      {
        goto LABEL_38;
      }
    }

    else if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    operator delete(__p[0]);
    goto LABEL_38;
  }

  if (v3)
  {
    if ((v28 & 1) == 0)
    {
      if (webrtc::g_clock)
      {
        v14 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
      }

      else
      {
        if (!dword_28100D8E4)
        {
          mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
        }

        v14 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
      }

      v6 = v14 / 1000;
      if ((v28 & 1) == 0)
      {
        LOBYTE(v28) = 1;
      }

      goto LABEL_34;
    }

    if (*(this + 392) == 1)
    {
      v4 = *(this + 48);
      v5 = v27;
      v6 = 0x7FFFFFFFFFFFFFFFLL;
      if (v27 == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_34:
        v27 = v6;
        v19 = *(v38 + 2);
        v20 = *v38;
        if (!*v38)
        {
          v19 = 0;
        }

        __p[0] = v19;
        __p[1] = v20;
        __p[2] = v6;
        __p[3] = v28;
        __p[4] = v29;
        v25 = v37;
        v26 = 0;
        v21 = *(this + 42);
        if (v21)
        {
          v21(this + 312, this, __p);
        }

        goto LABEL_38;
      }

LABEL_22:
      if (v4 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v6 = 0x8000000000000000;
        v17 = v4 == 0x8000000000000000 || v5 == 0x8000000000000000;
        v18 = v5 + v4;
        if (!v17)
        {
          v6 = v18;
        }
      }

      goto LABEL_34;
    }

    if (webrtc::g_clock)
    {
      v15 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
      if (v28)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (!dword_28100D8E4)
      {
        mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
      }

      v15 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
      if (v28)
      {
LABEL_15:
        v5 = v27;
        v16 = v15 / 1000 - v27;
        v4 = 0x7FFFFFFFFFFFFFFFLL;
        if (v27 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v16 = 0x8000000000000000;
        }

        if (v27 != 0x8000000000000000)
        {
          v4 = v16;
        }

        if ((*(this + 392) & 1) == 0)
        {
          *(this + 392) = 1;
        }

        *(this + 48) = v4;
        v6 = 0x7FFFFFFFFFFFFFFFLL;
        if (v5 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_34;
        }

        goto LABEL_22;
      }
    }

    __break(1u);
    return;
  }

LABEL_38:
  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29[0]);
  }
}

uint64_t webrtc::AsyncUDPSocket::OnWriteEvent(uint64_t a1)
{
  v2 = a1 + 128;
  result = *(a1 + 136);
  for (*(a1 + 152) = result; result != v2; result = *(a1 + 152))
  {
    v5 = *(result + 16);
    v4 = result + 16;
    *(a1 + 152) = *(v4 - 8);
    v5(v4, a1);
  }

  return result;
}

uint64_t webrtc::AsyncUDPSocket::Send(webrtc::AsyncUDPSocket *this, const void *a2, uint64_t a3, const webrtc::AsyncSocketPacketOptions *a4)
{
  v8 = *(a4 + 1);
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

  v18[0] = v8;
  v18[1] = v9 / 1000000;
  v10 = *(a4 + 5);
  v19 = *(a4 + 4);
  v21 = *(&v10 + 1);
  v20 = a3;
  (*(*this + 16))(&__p, this);
  v11 = 40;
  if (v25 != 30)
  {
    v11 = 0;
  }

  v12 = 20;
  if (v25 != 2)
  {
    v12 = v11;
  }

  v22 = v12;
  if (v24 < 0)
  {
    operator delete(__p);
  }

  v13 = (*(**(this + 43) + 48))(*(this + 43), a2, a3);
  v14 = *(this + 10);
  for (*(this + 12) = v14; v14 != (this + 72); v14 = *(this + 12))
  {
    v16 = v14[2];
    v15 = v14 + 2;
    *(this + 12) = *(v15 - 1);
    v16(v15, this, v18);
  }

  return v13;
}

uint64_t webrtc::AsyncUDPSocket::SendTo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a5 + 8);
  if (webrtc::g_clock)
  {
    v11 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
  }

  else
  {
    if (!dword_28100D8E4)
    {
      mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
    }

    v11 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
  }

  v20[0] = v10;
  v20[1] = v11 / 1000000;
  v12 = *(a5 + 80);
  v21 = *(a5 + 64);
  v23 = *(&v12 + 1);
  v22 = a3;
  (*(*a1 + 16))(&__p, a1);
  v13 = 40;
  if (v27 != 30)
  {
    v13 = 0;
  }

  v14 = 20;
  if (v27 != 2)
  {
    v14 = v13;
  }

  v24 = v14;
  if (v26 < 0)
  {
    operator delete(__p);
    if (*(a1 + 352) == *(a5 + 4))
    {
      goto LABEL_16;
    }
  }

  else if (*(a1 + 352) == *(a5 + 4))
  {
    goto LABEL_16;
  }

  if (!(*(**(a1 + 344) + 144))(*(a1 + 344), 7))
  {
    *(a1 + 352) = *(a5 + 4);
  }

LABEL_16:
  v15 = (*(**(a1 + 344) + 56))(*(a1 + 344), a2, a3, a4);
  v16 = *(a1 + 80);
  for (*(a1 + 96) = v16; v16 != a1 + 72; v16 = *(a1 + 96))
  {
    v18 = *(v16 + 16);
    v17 = v16 + 16;
    *(a1 + 96) = *(v17 - 8);
    v18(v17, a1, v20);
  }

  return v15;
}

void webrtc::AsyncUDPSocket::~AsyncUDPSocket(webrtc::AsyncUDPSocket *this)
{
  *this = &unk_28828D1B8;
  v2 = *(this + 47);
  *(this + 47) = 0;
  if (v2)
  {
    MEMORY[0x2743DA520](v2, 0x1000C8077774924);
  }

  v3 = *(this + 43);
  *(this + 43) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  webrtc::AsyncPacketSocket::~AsyncPacketSocket(this);
}

{
  *this = &unk_28828D1B8;
  v2 = *(this + 47);
  *(this + 47) = 0;
  if (v2)
  {
    MEMORY[0x2743DA520](v2, 0x1000C8077774924);
  }

  v3 = *(this + 43);
  *(this + 43) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  webrtc::AsyncPacketSocket::~AsyncPacketSocket(this);

  JUMPOUT(0x2743DA540);
}

uint64_t sigslot::_opaque_connection::emitter<webrtc::AsyncUDPSocket,webrtc::Socket *>(void *a1)
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

void *std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::anonymous namespace::VisitToString> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> const&>@<X0>(unsigned __int8 **a1@<X1>, char *a2@<X8>)
{
  if ((*a1)[1])
  {
    v3 = **a1;
    if (**a1)
    {
      v4 = "true";
    }

    else
    {
      v4 = "false";
    }

    if (v3)
    {
      v5 = 4;
    }

    else
    {
      v5 = 5;
    }

    a2[23] = v5;
    if (v4 < a2 || &a2[v5] <= v4)
    {
      result = memcpy(a2, v4, v5);
      a2[v5] = 0;
      return result;
    }

    __break(1u);
  }

  v8 = std::__throw_bad_optional_access[abi:sn200100]();
}

_BYTE *std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::anonymous namespace::VisitToString> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> const&>@<X0>(unsigned int **a1@<X1>, char *a2@<X2>, uint64_t a3@<X8>)
{
  if (((*a1)[1] & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:sn200100]();
    goto LABEL_8;
  }

  v4 = **a1;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 23) = 22;
  result = absl::numbers_internal::FastIntToBuffer(v4, a3, a2);
  v6 = &result[-a3];
  v7 = *(a3 + 23);
  if ((v7 & 0x8000000000000000) == 0)
  {
    if (v6 <= v7)
    {
      *(a3 + 23) = v6;
      *result = 0;
      return result;
    }

LABEL_8:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (*(a3 + 8) < v6)
  {
    goto LABEL_8;
  }

  *(a3 + 8) = v6;
  v6[*a3] = 0;
  return result;
}

char *std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::anonymous namespace::VisitToString> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> const&>@<X0>(unsigned int **a1@<X1>, char *a2@<X2>, uint64_t a3@<X8>)
{
  if (((*a1)[1] & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:sn200100]();
    goto LABEL_8;
  }

  v4 = **a1;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 23) = 22;
  result = absl::numbers_internal::FastIntToBuffer(v4, a3, a2);
  v6 = &result[-a3];
  v7 = *(a3 + 23);
  if ((v7 & 0x8000000000000000) == 0)
  {
    if (v6 <= v7)
    {
      *(a3 + 23) = v6;
      *result = 0;
      return result;
    }

LABEL_8:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (*(a3 + 8) < v6)
  {
    goto LABEL_8;
  }

  *(a3 + 8) = v6;
  v6[*a3] = 0;
  return result;
}

void *std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::anonymous namespace::VisitToString> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> const&>@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 8) & 1) == 0)
  {
    goto LABEL_14;
  }

  result = snprintf(__str, 0x20uLL, "%.16g", **a1);
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_15;
  }

  v4 = result;
  if (result > 0x16)
  {
    operator new();
  }

  a2[23] = result;
  if (a2 <= __str && &a2[result] > __str)
  {
    __break(1u);
LABEL_14:
    std::__throw_bad_optional_access[abi:sn200100]();
LABEL_15:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (result)
  {
    result = memcpy(a2, __str, result);
  }

  a2[v4] = 0;
  return result;
}

void *std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::anonymous namespace::VisitToString> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> const&>@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 8) & 1) == 0)
  {
    goto LABEL_14;
  }

  result = snprintf(__str, 0x20uLL, "%.16g", **a1);
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_15;
  }

  v4 = result;
  if (result > 0x16)
  {
    operator new();
  }

  a2[23] = result;
  if (a2 <= __str && &a2[result] > __str)
  {
    __break(1u);
LABEL_14:
    std::__throw_bad_optional_access[abi:sn200100]();
LABEL_15:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (result)
  {
    result = memcpy(a2, __str, result);
  }

  a2[v4] = 0;
  return result;
}

void *std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::anonymous namespace::VisitToString> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> const&>@<X0>(double **a1@<X1>, char *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  if (((*a1)[1] & 1) == 0)
  {
    goto LABEL_14;
  }

  result = snprintf(__str, 0x20uLL, "%.16g", **a1);
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_15;
  }

  v4 = result;
  if (result > 0x16)
  {
    operator new();
  }

  a2[23] = result;
  if (a2 <= __str && &a2[result] > __str)
  {
    __break(1u);
LABEL_14:
    std::__throw_bad_optional_access[abi:sn200100]();
LABEL_15:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (result)
  {
    result = memcpy(a2, __str, result);
  }

  a2[v4] = 0;
  return result;
}