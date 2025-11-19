uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8sn200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEN6webrtc17RTPVideoHeaderVP8ENS9_17RTPVideoHeaderVP9ENS9_18RTPVideoHeaderH264EEEEE16__generic_assignB8sn200100INS0_17__move_assignmentISD_LNS0_6_TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRNS0_6__baseILSH_1EJS8_SA_SB_SC_EEEOSR_EEEDcSJ_DpT0_(uint64_t result)
{
  v1 = *result;
  v2 = *(*result + 1640);
  if (v2 != -1)
  {
    if (!v2)
    {
      return result;
    }

    result = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8sn200100IZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN6webrtc17RTPVideoHeaderVP8ENS7_17RTPVideoHeaderVP9ENS7_18RTPVideoHeaderH264EEEELNS0_6_TraitE1EE9__destroyB8sn200100EvEUlRT_E_JRSD_EEEDcOSE_DpOT0____fmatrix[v2])(&v3, v1);
  }

  *(v1 + 1640) = 0;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8sn200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEN6webrtc17RTPVideoHeaderVP8ENS9_17RTPVideoHeaderVP9ENS9_18RTPVideoHeaderH264EEEEE16__generic_assignB8sn200100INS0_17__move_assignmentISD_LNS0_6_TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRNS0_6__baseILSH_1EJS8_SA_SB_SC_EEEOSR_EEEDcSJ_DpT0_(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v3 = *a1;
  v4 = (*a1)[102].n128_u32[2];
  if (v4 != -1)
  {
    if (v4 == 1)
    {
      result = *a3;
      a2[1].n128_u32[0] = a3[1].n128_u32[0];
      *a2 = result;
      return result;
    }

    v6 = a3;
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8sn200100IZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN6webrtc17RTPVideoHeaderVP8ENS7_17RTPVideoHeaderVP9ENS7_18RTPVideoHeaderH264EEEELNS0_6_TraitE1EE9__destroyB8sn200100EvEUlRT_E_JRSD_EEEDcOSE_DpOT0____fmatrix[v4])(&v7, v3);
    a3 = v6;
  }

  v3[102].n128_u32[2] = -1;
  result = *a3;
  v3[1].n128_u32[0] = a3[1].n128_u32[0];
  *v3 = result;
  v3[102].n128_u32[2] = 1;
  return result;
}

void *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2ELm2EEE10__dispatchB8sn200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEN6webrtc17RTPVideoHeaderVP8ENS9_17RTPVideoHeaderVP9ENS9_18RTPVideoHeaderH264EEEEE16__generic_assignB8sn200100INS0_17__move_assignmentISD_LNS0_6_TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRNS0_6__baseILSH_1EJS8_SA_SB_SC_EEEOSR_EEEDcSJ_DpT0_(uint64_t a1, void *__dst, void *__src)
{
  v4 = *a1;
  v5 = *(*a1 + 1640);
  if (v5 == -1)
  {
    goto LABEL_7;
  }

  if (v5 != 2)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8sn200100IZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN6webrtc17RTPVideoHeaderVP8ENS7_17RTPVideoHeaderVP9ENS7_18RTPVideoHeaderH264EEEELNS0_6_TraitE1EE9__destroyB8sn200100EvEUlRT_E_JRSD_EEEDcOSE_DpOT0____fmatrix[v5])(&v7, v4);
LABEL_7:
    v4[410] = -1;
    result = memcpy(v4, __src, 0x668uLL);
    v4[410] = 2;
    return result;
  }

  return memcpy(__dst, __src, 0x668uLL);
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3ELm3EEE10__dispatchB8sn200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEN6webrtc17RTPVideoHeaderVP8ENS9_17RTPVideoHeaderVP9ENS9_18RTPVideoHeaderH264EEEEE16__generic_assignB8sn200100INS0_17__move_assignmentISD_LNS0_6_TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRNS0_6__baseILSH_1EJS8_SA_SB_SC_EEEOSR_EEEDcSJ_DpT0_(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(*a1 + 1640);
  if (v5 == -1)
  {
    goto LABEL_7;
  }

  if (v5 != 3)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8sn200100IZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN6webrtc17RTPVideoHeaderVP8ENS7_17RTPVideoHeaderVP9ENS7_18RTPVideoHeaderH264EEEELNS0_6_TraitE1EE9__destroyB8sn200100EvEUlRT_E_JRSD_EEEDcOSE_DpOT0____fmatrix[v5])(&v10, v4);
LABEL_7:
    *(v4 + 1640) = -1;
    *v4 = *a3;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    result = *(a3 + 8);
    *(v4 + 8) = result;
    *(v4 + 24) = *(a3 + 24);
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 8) = 0;
    *(v4 + 32) = *(a3 + 32);
    *(v4 + 1640) = 3;
    return result;
  }

  *a2 = *a3;
  v7 = (a2 + 8);
  v6 = *(a2 + 8);
  if (v6)
  {
    *(a2 + 16) = v6;
    v8 = a2;
    operator delete(v6);
    a2 = v8;
    *v7 = 0;
    v7[1] = 0;
    v7[2] = 0;
  }

  result = *(a3 + 8);
  *(a2 + 8) = result;
  *(a2 + 24) = *(a3 + 24);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a2 + 32) = *(a3 + 32);
  return result;
}

void webrtc::internal::VideoQualityObserver::UpdateHistograms(int64x2_t *this, int a2)
{
  v55 = *MEMORY[0x277D85DE8];
  if (this->i64[1])
  {
    v52 = &v54;
    v53 = xmmword_273B92320;
    v54 = 0;
    v3 = this[2].i64[1];
    v4 = this->i64[0] - v3;
    if (this->i64[0] > v3)
    {
      v5 = vdupq_n_s64(1uLL);
      v5.i64[0] = v4;
      this[10] = vaddq_s64(this[10], v5);
      if (this[11].i8[4] != 1 || this[11].i32[0] < v4)
      {
        this[11].i32[0] = v4;
        this[11].i8[4] = 1;
      }

      if (this[11].i8[12] != 1 || this[11].i32[2] > v4)
      {
        this[11].i32[2] = v4;
        this[11].i8[12] = 1;
      }
    }

    if (a2)
    {
      v6 = "WebRTC.Video.Screenshare";
    }

    else
    {
      v6 = "WebRTC.Video";
    }

    if (a2)
    {
      v7 = 24;
    }

    else
    {
      v7 = 12;
    }

    if (a2)
    {
      operator new();
    }

    v51 = 12;
    if (&__dst <= v6 && &v50 + 4 > v6)
    {
      goto LABEL_107;
    }

    memcpy(&__dst, v6, v7);
    BYTE4(v50) = 0;
    if (this[10].i64[1] >= 1)
    {
      if (v51 >= 0)
      {
        v8 = v51;
      }

      else
      {
        v8 = v50;
      }

      if (v8 + 25 <= 0x7FFFFFFFFFFFFFF7)
      {
        if (v8 + 25 >= 0x17)
        {
          operator new();
        }

        goto LABEL_107;
      }

      goto LABEL_108;
    }

    v9 = this[6].i64[1];
    if (v9 >= 1)
    {
      if (v51 >= 0)
      {
        v10 = v51;
      }

      else
      {
        v10 = v50;
      }

      if (v10 + 21 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_108;
      }

      v11 = this[6].i64[0];
      if (v10 + 21 >= 0x17)
      {
        operator new();
      }

      v47 = 0;
      v48 = 0;
      __p = 0;
      HIBYTE(v48) = v10 + 21;
      if (v51 >= 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_107;
      }

      v13 = &__p + v10;
      if (p_dst >= &__p && v13 > p_dst)
      {
        goto LABEL_107;
      }

      if (v10)
      {
        memmove(&__p, p_dst, v10);
      }

      if (v13 <= ".MeanFreezeDurationMs" && v13 + 21 > ".MeanFreezeDurationMs")
      {
        goto LABEL_107;
      }

      strcpy(v13, ".MeanFreezeDurationMs");
      CountsLinear = webrtc::metrics::HistogramFactoryGetCountsLinear();
      if (SHIBYTE(v48) < 0)
      {
        v15 = CountsLinear;
        operator delete(__p);
        CountsLinear = v15;
      }

      if (CountsLinear)
      {
        webrtc::metrics::HistogramAdd(CountsLinear, v11 / v9);
      }

      v16 = v51;
      if (v51 >= 0)
      {
        v17 = &__dst;
      }

      else
      {
        v17 = __dst;
      }

      if (v51 < 0)
      {
        v16 = v50;
      }

      if (v16 >= v53 + ~*(&v53 + 1))
      {
        v18 = v53 + ~*(&v53 + 1);
      }

      else
      {
        v18 = v16;
      }

      memcpy(&v52[*(&v53 + 1)], v17, v18);
      *(&v53 + 1) += v18;
      v52[*(&v53 + 1)] = 0;
      if (v53 + ~*(&v53 + 1) >= 0x16uLL)
      {
        v19 = 22;
      }

      else
      {
        v19 = v53 + ~*(&v53 + 1);
      }

      memcpy(&v52[*(&v53 + 1)], ".MeanFreezeDurationMs ", v19);
      *(&v53 + 1) += v19;
      v52[*(&v53 + 1)] = 0;
      webrtc::SimpleStringBuilder::AppendFormat(&v52, "%d", v11 / v9);
      v20 = v53;
      v21 = *(&v53 + 1) + 1;
      memcpy(&v52[*(&v53 + 1)], "\n", v53 != *(&v53 + 1) + 1);
      v22 = *(&v53 + 1);
      if (v20 != v21)
      {
        v22 = *(&v53 + 1) + 1;
      }

      *(&v53 + 1) = v22;
      v52[v22] = 0;
    }

    v23 = this->i64[0] - this[1].i64[0];
    if (v23 >= 3000)
    {
      v24 = this[12].i64[0];
      if ((this[12].i64[1] - v24) <= 0x10)
      {
LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

      if (v51 >= 0)
      {
        v25 = v51;
      }

      else
      {
        v25 = v50;
      }

      if (v25 + 19 <= 0x7FFFFFFFFFFFFFF7)
      {
        v26 = *(v24 + 16);
        if (v25 + 19 >= 0x17)
        {
          operator new();
        }

        v47 = 0;
        v48 = 0;
        __p = 0;
        HIBYTE(v48) = v25 + 19;
        if (v51 >= 0)
        {
          v27 = &__dst;
        }

        else
        {
          v27 = __dst;
        }

        if ((v25 & 0x8000000000000000) != 0)
        {
          goto LABEL_107;
        }

        v28 = &__p + v25;
        if (v27 >= &__p && v28 > v27)
        {
          goto LABEL_107;
        }

        if (v25)
        {
          memmove(&__p, v27, v25);
        }

        if (v28 <= ".TimeInHdPercentage" && v28 + 19 > ".TimeInHdPercentage")
        {
          goto LABEL_107;
        }

        strcpy(v28, ".TimeInHdPercentage");
        v29 = webrtc::metrics::HistogramFactoryGetCountsLinear();
        if (SHIBYTE(v48) < 0)
        {
          v30 = v29;
          operator delete(__p);
          v29 = v30;
        }

        if (v29)
        {
          webrtc::metrics::HistogramAdd(v29, 100 * v26 / v23);
        }

        v31 = v51;
        if (v51 >= 0)
        {
          v32 = &__dst;
        }

        else
        {
          v32 = __dst;
        }

        if (v51 < 0)
        {
          v31 = v50;
        }

        if (v31 >= v53 + ~*(&v53 + 1))
        {
          v33 = v53 + ~*(&v53 + 1);
        }

        else
        {
          v33 = v31;
        }

        memcpy(&v52[*(&v53 + 1)], v32, v33);
        *(&v53 + 1) += v33;
        v52[*(&v53 + 1)] = 0;
        if (v53 + ~*(&v53 + 1) >= 0x14uLL)
        {
          v34 = 20;
        }

        else
        {
          v34 = v53 + ~*(&v53 + 1);
        }

        memcpy(&v52[*(&v53 + 1)], ".TimeInHdPercentage ", v34);
        *(&v53 + 1) += v34;
        v52[*(&v53 + 1)] = 0;
        webrtc::SimpleStringBuilder::AppendFormat(&v52, "%d", 100 * v26 / v23);
        v35 = v53;
        v36 = *(&v53 + 1) + 1;
        memcpy(&v52[*(&v53 + 1)], "\n", v53 != *(&v53 + 1) + 1);
        v37 = *(&v53 + 1);
        if (v35 != v36)
        {
          v37 = *(&v53 + 1) + 1;
        }

        *(&v53 + 1) = v37;
        v52[v37] = 0;
        v38 = v51 >= 0 ? v51 : v50;
        if (v38 + 28 <= 0x7FFFFFFFFFFFFFF7)
        {
          if (v38 + 28 >= 0x17)
          {
            operator new();
          }

          goto LABEL_107;
        }
      }

LABEL_108:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v39, v40, v41, v42, v43, v44, v45, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/video_quality_observer2.cc");
    }

    if (v51 < 0)
    {
      operator delete(__dst);
    }
  }
}

void webrtc::internal::VideoQualityObserver::OnRenderedFrame(unint64_t *a1, unsigned int *a2)
{
  v3 = a1[1];
  if (v3)
  {
    v4 = (a1 + 31);
    v5 = a1[31];
    if (!v5)
    {
LABEL_19:
      v12 = v4;
      goto LABEL_20;
    }
  }

  else
  {
    v6 = *(a2 + 4);
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

    a1[5] = v10;
    a1[2] = v10;
    v4 = (a1 + 31);
    v5 = a1[31];
    if (!v5)
    {
      goto LABEL_19;
    }
  }

  v11 = *a2;
  v12 = v4;
  do
  {
    if (v5[4] >= v11)
    {
      v12 = v5;
    }

    v5 = v5[v5[4] < v11];
  }

  while (v5);
  if (v12 == v4 || v12[4] > v11)
  {
    goto LABEL_19;
  }

LABEL_20:
  if (v3 <= 0)
  {
    if ((a1[29] & 1) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_33;
  }

  v13 = *(a2 + 4);
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

  v18 = *a1;
  v19 = v17 - *a1;
  *(a1 + 11) = *(a1 + 11) + v19 / 1000.0 * (v19 / 1000.0);
  if (a1[29])
  {
LABEL_33:
    *(a1 + 232) = 0;
    v25 = *a1;
    v26 = a1[5];
    v27 = __OFSUB__(*a1, v26);
    v28 = *a1 - v26;
    if (!((v28 < 0) ^ v27 | (v28 == 0)))
    {
      v29 = vdupq_n_s64(1uLL);
      v29.i64[0] = v28;
      *(a1 + 10) = vaddq_s64(*(a1 + 10), v29);
      if (*(a1 + 180) != 1 || *(a1 + 44) < v28)
      {
        *(a1 + 44) = v28;
        *(a1 + 180) = 1;
      }

      if (*(a1 + 188) != 1 || *(a1 + 46) > v28)
      {
        *(a1 + 46) = v28;
        *(a1 + 188) = 1;
      }
    }

    v30 = *(a2 + 4);
    if ((v30 & 0x8000000000000000) != 0)
    {
      v32 = -v30;
      v33 = v32 / 0x3E8;
      if (v32 % 0x3E8 <= 0x1F4)
      {
        v34 = 0;
      }

      else
      {
        v34 = -1;
      }

      v31 = v34 - v33;
      a1[5] = v31;
      if (a1[1] <= 0)
      {
        goto LABEL_85;
      }
    }

    else
    {
      if (v30 % 0x3E8 <= 0x1F3)
      {
        v31 = v30 / 0x3E8;
      }

      else
      {
        v31 = v30 / 0x3E8 + 1;
      }

      a1[5] = v31;
      if (a1[1] < 1)
      {
        goto LABEL_85;
      }
    }

    v35 = v31 - LODWORD(v25);
    v36 = vdupq_n_s64(1uLL);
    v36.i64[0] = v35;
    *(a1 + 8) = vaddq_s64(v36, *(a1 + 8));
    if (*(a1 + 148) != 1 || *(a1 + 36) < v35)
    {
      *(a1 + 36) = v35;
      *(a1 + 148) = 1;
    }

    if (*(a1 + 156) != 1 || *(a1 + 38) > v35)
    {
      *(a1 + 38) = v35;
      *(a1 + 156) = 1;
      v37 = a2[7] * a2[6];
      if (v37 < 518400)
      {
        goto LABEL_92;
      }

      goto LABEL_86;
    }

LABEL_85:
    v37 = a2[7] * a2[6];
    if (v37 < 518400)
    {
      goto LABEL_92;
    }

    goto LABEL_86;
  }

  v20 = a1[6] + 1;
  a1[6] = v20;
  v21 = a1[8];
  v22 = (a1[9] - v21) >> 2;
  v23 = v20 % v22;
  if (v20 <= v22)
  {
    v24 = a1[7];
  }

  else
  {
    v24 = a1[7] - *(v21 + 4 * v23);
  }

  v38 = v24 + v19;
  a1[7] = v38;
  *(v21 + 4 * v23) = v19;
  if (v22 < v20)
  {
    v20 = v22;
  }

  if (v20 < 5)
  {
    goto LABEL_64;
  }

  v39 = (v38 / v20);
  v40 = 3 * v39;
  v41 = v39 + 150;
  if (v40 <= v41)
  {
    v40 = v41;
  }

  if (v19 < v40)
  {
LABEL_64:
    v42 = *(a1 + 54);
    v43 = a1[24];
    if (v42 >= (a1[25] - v43) >> 3)
    {
      __break(1u);
      return;
    }

    *(v43 + 8 * v42) += v19;
    if (*(a1 + 32) == 1)
    {
      a1[28] += v19;
      v37 = a2[7] * a2[6];
      if (v37 < 518400)
      {
        goto LABEL_92;
      }

LABEL_86:
      *(a1 + 54) = 2;
      if (a1[3] <= v37)
      {
        goto LABEL_97;
      }

      goto LABEL_96;
    }

    goto LABEL_85;
  }

  v44 = vdupq_n_s64(1uLL);
  v44.i64[0] = v19;
  *(a1 + 6) = vaddq_s64(*(a1 + 6), v44);
  if (*(a1 + 116) != 1 || *(a1 + 28) < v19)
  {
    *(a1 + 28) = v19;
    *(a1 + 116) = 1;
  }

  if (*(a1 + 124) != 1 || *(a1 + 30) > v19)
  {
    *(a1 + 30) = v19;
    *(a1 + 124) = 1;
  }

  v45 = *&v18 - a1[5];
  v46 = vdupq_n_s64(1uLL);
  v46.i64[0] = v45;
  *(a1 + 10) = vaddq_s64(v46, *(a1 + 10));
  if (*(a1 + 180) != 1 || *(a1 + 44) < v45)
  {
    *(a1 + 44) = v45;
    *(a1 + 180) = 1;
  }

  if (*(a1 + 188) != 1 || *(a1 + 46) > v45)
  {
    *(a1 + 46) = v45;
    *(a1 + 188) = 1;
  }

  v47 = *(a2 + 4);
  if ((v47 & 0x8000000000000000) == 0)
  {
    if (v47 % 0x3E8 <= 0x1F3)
    {
      v48 = v47 / 0x3E8;
    }

    else
    {
      v48 = v47 / 0x3E8 + 1;
    }

    a1[5] = v48;
    goto LABEL_85;
  }

  v49 = -v47;
  v50 = v49 / 0x3E8;
  if (v49 % 0x3E8 <= 0x1F4)
  {
    v51 = 0;
  }

  else
  {
    v51 = -1;
  }

  a1[5] = v51 - v50;
  v37 = a2[7] * a2[6];
  if (v37 >= 518400)
  {
    goto LABEL_86;
  }

LABEL_92:
  if (v37 >= 230400)
  {
    *(a1 + 54) = 1;
    if (a1[3] <= v37)
    {
      goto LABEL_97;
    }

    goto LABEL_96;
  }

  *(a1 + 54) = 0;
  if (a1[3] > v37)
  {
LABEL_96:
    ++*(a1 + 55);
  }

LABEL_97:
  a1[3] = v37;
  v52 = *(a2 + 4);
  v53 = v52 / 0x3E8uLL;
  if (v52 % 0x3E8uLL > 0x1F3)
  {
    ++v53;
  }

  if (-v52 % 0x3E8uLL <= 0x1F4)
  {
    v54 = 0;
  }

  else
  {
    v54 = -1;
  }

  v55 = v54 - -v52 / 0x3E8uLL;
  if (v52 >= 0)
  {
    v55 = v53;
  }

  *a1 = v55;
  *(a1 + 32) = v12 != v4;
  if (v12 != v4)
  {
    v56 = a1[30];
    v57 = v12[1];
    if (v57)
    {
      do
      {
        v58 = v57;
        v57 = *v57;
      }

      while (v57);
    }

    else
    {
      do
      {
        v58 = v12[2];
        v59 = *v58 == v12;
        v12 = v58;
      }

      while (!v59);
    }

    if (v56 != v58)
    {
      do
      {
        v61 = v56[1];
        v62 = v56;
        if (v61)
        {
          do
          {
            v63 = v61;
            v61 = *v61;
          }

          while (v61);
        }

        else
        {
          do
          {
            v63 = v62[2];
            v59 = *v63 == v62;
            v62 = v63;
          }

          while (!v59);
        }

        if (a1[30] == v56)
        {
          a1[30] = v63;
        }

        v60 = a1[31];
        --a1[32];
        std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v60, v56);
        operator delete(v56);
        v56 = v63;
      }

      while (v63 != v58);
    }
  }

  ++a1[1];
}

void webrtc::internal::VideoQualityObserver::OnDecodedFrame(void *a1, unsigned int a2, __int16 a3, int a4)
{
  if ((a3 & 0x100) != 0)
  {
    if (a4 == 1)
    {
      if (a3 <= 0x46u)
      {
        return;
      }
    }

    else if (a4 != 2 || a3 <= 0xB4u)
    {
      return;
    }

    if (a1[32] >= 0x65uLL)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/video_quality_observer2.cc");
      }

      v13 = a1[30];
      v14 = 50;
      v15 = v13;
      do
      {
        v17 = v15[1];
        v18 = v15;
        if (v17)
        {
          do
          {
            v15 = v17;
            v17 = *v17;
          }

          while (v17);
        }

        else
        {
          do
          {
            v15 = v18[2];
            v19 = *v15 == v18;
            v18 = v15;
          }

          while (!v19);
        }
      }

      while (v14-- > 1);
      if (v13 != v15)
      {
        do
        {
          v22 = v13[1];
          v23 = v13;
          if (v22)
          {
            do
            {
              v24 = v22;
              v22 = *v22;
            }

            while (v22);
          }

          else
          {
            do
            {
              v24 = v23[2];
              v19 = *v24 == v23;
              v23 = v24;
            }

            while (!v19);
          }

          if (a1[30] == v13)
          {
            a1[30] = v24;
          }

          v21 = a1[31];
          --a1[32];
          std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v21, v13);
          operator delete(v13);
          v13 = v24;
        }

        while (v24 != v15);
      }
    }

    v20 = a1[31];
    if (!v20)
    {
LABEL_34:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v25 = v20;
        v26 = v20[4];
        if (v26 <= a2)
        {
          break;
        }

        v20 = *v25;
        if (!*v25)
        {
          goto LABEL_34;
        }
      }

      if (v26 >= a2)
      {
        break;
      }

      v20 = v25[1];
      if (!v20)
      {
        goto LABEL_34;
      }
    }
  }
}

void *webrtc::VideoReceiveStreamInterface::Stats::ToString@<X0>(webrtc::VideoReceiveStreamInterface::Stats *this@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v96 = *MEMORY[0x277D85DE8];
  __s = v95;
  strcpy(v95, "VideoReceiveStreamInterface stats: ");
  v93 = xmmword_273BA61E0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%lld", a2);
  if (v93 + ~*(&v93 + 1) >= 9uLL)
  {
    v4 = 9;
  }

  else
  {
    v4 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], ", {ssrc: ", v4);
  *(&v93 + 1) += v4;
  __s[*(&v93 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%u", *(this + 75));
  if (v93 + ~*(&v93 + 1) >= 2uLL)
  {
    v5 = 2;
  }

  else
  {
    v5 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], ", ", v5);
  *(&v93 + 1) += v5;
  __s[*(&v93 + 1)] = 0;
  if (v93 + ~*(&v93 + 1) >= 0xBuLL)
  {
    v6 = 11;
  }

  else
  {
    v6 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], "total_bps: ", v6);
  *(&v93 + 1) += v6;
  __s[*(&v93 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 62));
  if (v93 + ~*(&v93 + 1) >= 2uLL)
  {
    v7 = 2;
  }

  else
  {
    v7 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], ", ", v7);
  *(&v93 + 1) += v7;
  __s[*(&v93 + 1)] = 0;
  if (v93 + ~*(&v93 + 1) >= 0xCuLL)
  {
    v8 = 12;
  }

  else
  {
    v8 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], "frameWidth: ", v8);
  *(&v93 + 1) += v8;
  __s[*(&v93 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 63));
  if (v93 + ~*(&v93 + 1) >= 2uLL)
  {
    v9 = 2;
  }

  else
  {
    v9 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], ", ", v9);
  *(&v93 + 1) += v9;
  __s[*(&v93 + 1)] = 0;
  if (v93 + ~*(&v93 + 1) >= 0xDuLL)
  {
    v10 = 13;
  }

  else
  {
    v10 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], "frameHeight: ", v10);
  *(&v93 + 1) += v10;
  __s[*(&v93 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 64));
  if (v93 + ~*(&v93 + 1) >= 2uLL)
  {
    v11 = 2;
  }

  else
  {
    v11 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], ", ", v11);
  *(&v93 + 1) += v11;
  __s[*(&v93 + 1)] = 0;
  if (v93 + ~*(&v93 + 1) >= 5uLL)
  {
    v12 = 5;
  }

  else
  {
    v12 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], "key: ", v12);
  *(&v93 + 1) += v12;
  __s[*(&v93 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 13));
  if (v93 + ~*(&v93 + 1) >= 2uLL)
  {
    v13 = 2;
  }

  else
  {
    v13 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], ", ", v13);
  *(&v93 + 1) += v13;
  __s[*(&v93 + 1)] = 0;
  if (v93 + ~*(&v93 + 1) >= 7uLL)
  {
    v14 = 7;
  }

  else
  {
    v14 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], "delta: ", v14);
  *(&v93 + 1) += v14;
  __s[*(&v93 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 14));
  if (v93 + ~*(&v93 + 1) >= 2uLL)
  {
    v15 = 2;
  }

  else
  {
    v15 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], ", ", v15);
  *(&v93 + 1) += v15;
  __s[*(&v93 + 1)] = 0;
  if (v93 + ~*(&v93 + 1) >= 0x24uLL)
  {
    v16 = 36;
  }

  else
  {
    v16 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], "framesAssembledFromMultiplePackets: ", v16);
  *(&v93 + 1) += v16;
  __s[*(&v93 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%u", *(this + 40));
  if (v93 + ~*(&v93 + 1) >= 2uLL)
  {
    v17 = 2;
  }

  else
  {
    v17 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], ", ", v17);
  *(&v93 + 1) += v17;
  __s[*(&v93 + 1)] = 0;
  if (v93 + ~*(&v93 + 1) >= 0xFuLL)
  {
    v18 = 15;
  }

  else
  {
    v18 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], "framesDecoded: ", v18);
  *(&v93 + 1) += v18;
  __s[*(&v93 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%u", *(this + 33));
  if (v93 + ~*(&v93 + 1) >= 2uLL)
  {
    v19 = 2;
  }

  else
  {
    v19 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], ", ", v19);
  *(&v93 + 1) += v19;
  __s[*(&v93 + 1)] = 0;
  if (v93 + ~*(&v93 + 1) >= 0xFuLL)
  {
    v20 = 15;
  }

  else
  {
    v20 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], "framesDropped: ", v20);
  *(&v93 + 1) += v20;
  __s[*(&v93 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%u", *(this + 32));
  if (v93 + ~*(&v93 + 1) >= 2uLL)
  {
    v21 = 2;
  }

  else
  {
    v21 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], ", ", v21);
  *(&v93 + 1) += v21;
  __s[*(&v93 + 1)] = 0;
  if (v93 + ~*(&v93 + 1) >= 0xDuLL)
  {
    v22 = 13;
  }

  else
  {
    v22 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], "network_fps: ", v22);
  *(&v93 + 1) += v22;
  __s[*(&v93 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *this);
  if (v93 + ~*(&v93 + 1) >= 2uLL)
  {
    v23 = 2;
  }

  else
  {
    v23 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], ", ", v23);
  *(&v93 + 1) += v23;
  __s[*(&v93 + 1)] = 0;
  if (v93 + ~*(&v93 + 1) >= 0xCuLL)
  {
    v24 = 12;
  }

  else
  {
    v24 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], "decode_fps: ", v24);
  *(&v93 + 1) += v24;
  __s[*(&v93 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 1));
  if (v93 + ~*(&v93 + 1) >= 2uLL)
  {
    v25 = 2;
  }

  else
  {
    v25 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], ", ", v25);
  *(&v93 + 1) += v25;
  __s[*(&v93 + 1)] = 0;
  if (v93 + ~*(&v93 + 1) >= 0xCuLL)
  {
    v26 = 12;
  }

  else
  {
    v26 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], "render_fps: ", v26);
  *(&v93 + 1) += v26;
  __s[*(&v93 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 2));
  if (v93 + ~*(&v93 + 1) >= 2uLL)
  {
    v27 = 2;
  }

  else
  {
    v27 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], ", ", v27);
  *(&v93 + 1) += v27;
  __s[*(&v93 + 1)] = 0;
  if (v93 + ~*(&v93 + 1) >= 0xBuLL)
  {
    v28 = 11;
  }

  else
  {
    v28 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], "decode_ms: ", v28);
  *(&v93 + 1) += v28;
  __s[*(&v93 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 15));
  if (v93 + ~*(&v93 + 1) >= 2uLL)
  {
    v29 = 2;
  }

  else
  {
    v29 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], ", ", v29);
  *(&v93 + 1) += v29;
  __s[*(&v93 + 1)] = 0;
  if (v93 + ~*(&v93 + 1) >= 0xFuLL)
  {
    v30 = 15;
  }

  else
  {
    v30 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], "max_decode_ms: ", v30);
  *(&v93 + 1) += v30;
  __s[*(&v93 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 16));
  if (v93 + ~*(&v93 + 1) >= 2uLL)
  {
    v31 = 2;
  }

  else
  {
    v31 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], ", ", v31);
  *(&v93 + 1) += v31;
  __s[*(&v93 + 1)] = 0;
  if (v93 + ~*(&v93 + 1) >= 0x24uLL)
  {
    v32 = 36;
  }

  else
  {
    v32 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], "first_frame_received_to_decoded_ms: ", v32);
  *(&v93 + 1) += v32;
  __s[*(&v93 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%lld", *(this + 23));
  if (v93 + ~*(&v93 + 1) >= 2uLL)
  {
    v33 = 2;
  }

  else
  {
    v33 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], ", ", v33);
  *(&v93 + 1) += v33;
  __s[*(&v93 + 1)] = 0;
  if (v93 + ~*(&v93 + 1) >= 0x12uLL)
  {
    v34 = 18;
  }

  else
  {
    v34 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], "current_delay_ms: ", v34);
  *(&v93 + 1) += v34;
  __s[*(&v93 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 17));
  if (v93 + ~*(&v93 + 1) >= 2uLL)
  {
    v35 = 2;
  }

  else
  {
    v35 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], ", ", v35);
  *(&v93 + 1) += v35;
  __s[*(&v93 + 1)] = 0;
  if (v93 + ~*(&v93 + 1) >= 0x11uLL)
  {
    v36 = 17;
  }

  else
  {
    v36 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], "target_delay_ms: ", v36);
  *(&v93 + 1) += v36;
  __s[*(&v93 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 18));
  if (v93 + ~*(&v93 + 1) >= 2uLL)
  {
    v37 = 2;
  }

  else
  {
    v37 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], ", ", v37);
  *(&v93 + 1) += v37;
  __s[*(&v93 + 1)] = 0;
  if (v93 + ~*(&v93 + 1) >= 0x11uLL)
  {
    v38 = 17;
  }

  else
  {
    v38 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], "jitter_delay_ms: ", v38);
  *(&v93 + 1) += v38;
  __s[*(&v93 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 19));
  if (v93 + ~*(&v93 + 1) >= 2uLL)
  {
    v39 = 2;
  }

  else
  {
    v39 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], ", ", v39);
  *(&v93 + 1) += v39;
  __s[*(&v93 + 1)] = 0;
  if (v93 + ~*(&v93 + 1) >= 0x13uLL)
  {
    v40 = 19;
  }

  else
  {
    v40 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], "totalAssemblyTime: ", v40);
  *(&v93 + 1) += v40;
  __s[*(&v93 + 1)] = 0;
  v41 = *(this + 19);
  if (v41 == 0x8000000000000000)
  {
    v42 = 0xFFF0000000000000;
    goto LABEL_116;
  }

  if (v41 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v42 = 0x7FF0000000000000;
LABEL_116:
    v43 = *&v42;
    goto LABEL_118;
  }

  v43 = v41 * 0.000001;
LABEL_118:
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%g", v43);
  if (v93 + ~*(&v93 + 1) >= 2uLL)
  {
    v44 = 2;
  }

  else
  {
    v44 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], ", ", v44);
  *(&v93 + 1) += v44;
  __s[*(&v93 + 1)] = 0;
  if (v93 + ~*(&v93 + 1) >= 0x13uLL)
  {
    v45 = 19;
  }

  else
  {
    v45 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], "jitterBufferDelay: ", v45);
  *(&v93 + 1) += v45;
  __s[*(&v93 + 1)] = 0;
  v46 = *(this + 10);
  if (v46 == 0x8000000000000000)
  {
    v47 = 0xFFF0000000000000;
    goto LABEL_128;
  }

  if (v46 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v47 = 0x7FF0000000000000;
LABEL_128:
    v48 = *&v47;
    goto LABEL_130;
  }

  v48 = v46 * 0.000001;
LABEL_130:
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%g", v48);
  if (v93 + ~*(&v93 + 1) >= 2uLL)
  {
    v49 = 2;
  }

  else
  {
    v49 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], ", ", v49);
  *(&v93 + 1) += v49;
  __s[*(&v93 + 1)] = 0;
  if (v93 + ~*(&v93 + 1) >= 0x19uLL)
  {
    v50 = 25;
  }

  else
  {
    v50 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], "jitterBufferTargetDelay: ", v50);
  *(&v93 + 1) += v50;
  __s[*(&v93 + 1)] = 0;
  v51 = *(this + 11);
  if (v51 == 0x8000000000000000)
  {
    v52 = 0xFFF0000000000000;
    goto LABEL_140;
  }

  if (v51 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v52 = 0x7FF0000000000000;
LABEL_140:
    v53 = *&v52;
    goto LABEL_142;
  }

  v53 = v51 * 0.000001;
LABEL_142:
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%g", v53);
  if (v93 + ~*(&v93 + 1) >= 2uLL)
  {
    v54 = 2;
  }

  else
  {
    v54 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], ", ", v54);
  *(&v93 + 1) += v54;
  __s[*(&v93 + 1)] = 0;
  if (v93 + ~*(&v93 + 1) >= 0x1AuLL)
  {
    v55 = 26;
  }

  else
  {
    v55 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], "jitterBufferEmittedCount: ", v55);
  *(&v93 + 1) += v55;
  __s[*(&v93 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%llu", *(this + 12));
  if (v93 + ~*(&v93 + 1) >= 2uLL)
  {
    v56 = 2;
  }

  else
  {
    v56 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], ", ", v56);
  *(&v93 + 1) += v56;
  __s[*(&v93 + 1)] = 0;
  if (v93 + ~*(&v93 + 1) >= 0x1AuLL)
  {
    v57 = 26;
  }

  else
  {
    v57 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], "jitterBufferMinimumDelay: ", v57);
  *(&v93 + 1) += v57;
  __s[*(&v93 + 1)] = 0;
  v58 = *(this + 13);
  if (v58 == 0x8000000000000000)
  {
    v59 = 0xFFF0000000000000;
    goto LABEL_158;
  }

  if (v58 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v59 = 0x7FF0000000000000;
LABEL_158:
    v60 = *&v59;
    goto LABEL_160;
  }

  v60 = v58 * 0.000001;
LABEL_160:
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%g", v60);
  if (v93 + ~*(&v93 + 1) >= 2uLL)
  {
    v61 = 2;
  }

  else
  {
    v61 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], ", ", v61);
  *(&v93 + 1) += v61;
  __s[*(&v93 + 1)] = 0;
  if (v93 + ~*(&v93 + 1) >= 0x11uLL)
  {
    v62 = 17;
  }

  else
  {
    v62 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], "totalDecodeTime: ", v62);
  *(&v93 + 1) += v62;
  __s[*(&v93 + 1)] = 0;
  v63 = *(this + 17);
  if (v63 == 0x8000000000000000)
  {
    v64 = 0xFFF0000000000000;
    goto LABEL_170;
  }

  if (v63 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v64 = 0x7FF0000000000000;
LABEL_170:
    v65 = *&v64;
    goto LABEL_172;
  }

  v65 = v63 * 0.000001;
LABEL_172:
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%g", v65);
  if (v93 + ~*(&v93 + 1) >= 2uLL)
  {
    v66 = 2;
  }

  else
  {
    v66 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], ", ", v66);
  *(&v93 + 1) += v66;
  __s[*(&v93 + 1)] = 0;
  if (v93 + ~*(&v93 + 1) >= 0x16uLL)
  {
    v67 = 22;
  }

  else
  {
    v67 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], "totalProcessingDelay: ", v67);
  *(&v93 + 1) += v67;
  __s[*(&v93 + 1)] = 0;
  v68 = *(this + 18);
  if (v68 == 0x8000000000000000)
  {
    v69 = 0xFFF0000000000000;
  }

  else
  {
    if (v68 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v70 = v68 * 0.000001;
      goto LABEL_184;
    }

    v69 = 0x7FF0000000000000;
  }

  v70 = *&v69;
LABEL_184:
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%g", v70);
  if (v93 + ~*(&v93 + 1) >= 2uLL)
  {
    v71 = 2;
  }

  else
  {
    v71 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], ", ", v71);
  *(&v93 + 1) += v71;
  __s[*(&v93 + 1)] = 0;
  if (v93 + ~*(&v93 + 1) >= 0x16uLL)
  {
    v72 = 22;
  }

  else
  {
    v72 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], "min_playout_delay_ms: ", v72);
  *(&v93 + 1) += v72;
  __s[*(&v93 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 28));
  if (v93 + ~*(&v93 + 1) >= 2uLL)
  {
    v73 = 2;
  }

  else
  {
    v73 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], ", ", v73);
  *(&v93 + 1) += v73;
  __s[*(&v93 + 1)] = 0;
  if (v93 + ~*(&v93 + 1) >= 0x10uLL)
  {
    v74 = 16;
  }

  else
  {
    v74 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], "sync_offset_ms: ", v74);
  *(&v93 + 1) += v74;
  __s[*(&v93 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 74));
  if (v93 + ~*(&v93 + 1) >= 2uLL)
  {
    v75 = 2;
  }

  else
  {
    v75 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], ", ", v75);
  *(&v93 + 1) += v75;
  __s[*(&v93 + 1)] = 0;
  if (v93 + ~*(&v93 + 1) >= 0xAuLL)
  {
    v76 = 10;
  }

  else
  {
    v76 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], "cum_loss: ", v76);
  *(&v93 + 1) += v76;
  __s[*(&v93 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 82));
  if (v93 + ~*(&v93 + 1) >= 2uLL)
  {
    v77 = 2;
  }

  else
  {
    v77 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], ", ", v77);
  *(&v93 + 1) += v77;
  __s[*(&v93 + 1)] = 0;
  if (v93 + ~*(&v93 + 1) >= 0xBuLL)
  {
    v78 = 11;
  }

  else
  {
    v78 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], "nackCount: ", v78);
  *(&v93 + 1) += v78;
  __s[*(&v93 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%u", *(this + 100));
  if (v93 + ~*(&v93 + 1) >= 2uLL)
  {
    v79 = 2;
  }

  else
  {
    v79 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], ", ", v79);
  *(&v93 + 1) += v79;
  __s[*(&v93 + 1)] = 0;
  if (v93 + ~*(&v93 + 1) >= 0xAuLL)
  {
    v80 = 10;
  }

  else
  {
    v80 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], "firCount: ", v80);
  *(&v93 + 1) += v80;
  __s[*(&v93 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%u", *(this + 101));
  if (v93 + ~*(&v93 + 1) >= 2uLL)
  {
    v81 = 2;
  }

  else
  {
    v81 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], ", ", v81);
  *(&v93 + 1) += v81;
  __s[*(&v93 + 1)] = 0;
  if (v93 + ~*(&v93 + 1) >= 0xAuLL)
  {
    v82 = 10;
  }

  else
  {
    v82 = v93 + ~*(&v93 + 1);
  }

  memcpy(&__s[*(&v93 + 1)], "pliCount: ", v82);
  *(&v93 + 1) += v82;
  __s[*(&v93 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%u", *(this + 102));
  __src = 125;
  v83 = v93;
  v84 = *(&v93 + 1) + 1;
  memcpy(&__s[*(&v93 + 1)], &__src, v93 != *(&v93 + 1) + 1);
  v85 = *(&v93 + 1);
  if (v83 != v84)
  {
    v85 = *(&v93 + 1) + 1;
  }

  *(&v93 + 1) = v85;
  __s[v85] = 0;
  v86 = __s;
  if (!__s)
  {
    goto LABEL_232;
  }

  v87 = strlen(__s);
  if (v87 >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_233;
  }

  v88 = v87;
  if (v87 > 0x16)
  {
    operator new();
  }

  result = a3;
  a3[23] = v88;
  v90 = &a3[v88];
  if (a3 <= v86 && v90 > v86)
  {
LABEL_232:
    __break(1u);
LABEL_233:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (v88)
  {
    result = memmove(a3, v86, v88);
  }

  *v90 = 0;
  return result;
}

webrtc::VideoReceiveStreamInterface::Config *webrtc::VideoReceiveStreamInterface::Config::Config(webrtc::VideoReceiveStreamInterface::Config *this, const webrtc::VideoReceiveStreamInterface::Config *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v4 = *(a2 + 1);
  if (v4 != *a2)
  {
    if ((0x4EC4EC4EC4EC4EC5 * ((v4 - *a2) >> 3)) < 0x276276276276277)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *(this + 3) = *(a2 + 3);
  webrtc::VideoReceiveStreamInterface::Config::Rtp::Rtp(this + 32, a2 + 32);
  v5 = *(a2 + 8);
  *(this + 141) = *(a2 + 141);
  *(this + 8) = v5;
  if ((*(a2 + 175) & 0x80000000) == 0)
  {
    v6 = *(a2 + 152);
    *(this + 21) = *(a2 + 21);
    *(this + 152) = v6;
    v7 = *(a2 + 22);
    *(this + 22) = v7;
    if (!v7)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  std::string::__init_copy_ctor_external((this + 152), *(a2 + 19), *(a2 + 20));
  v7 = *(a2 + 22);
  *(this + 22) = v7;
  if (v7)
  {
LABEL_6:
    (**v7)(v7);
  }

LABEL_7:
  v8 = *(a2 + 46);
  *(this + 188) = *(a2 + 188);
  *(this + 46) = v8;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 24) = 0;
  v10 = *(a2 + 24);
  v9 = *(a2 + 25);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v11 = *(a2 + 27);
  *(this + 27) = v11;
  if (v11)
  {
    (**v11)(v11);
  }

  return this;
}

void webrtc::VideoReceiveStreamInterface::Config::~Config(webrtc::VideoReceiveStreamInterface::Config *this)
{
  v2 = *(this + 27);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 24);
  if (v3)
  {
    *(this + 25) = v3;
    operator delete(v3);
  }

  v4 = *(this + 22);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  if (*(this + 175) < 0)
  {
    operator delete(*(this + 19));
  }

  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 104, *(this + 14));
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 80, *(this + 11));
  v5 = *this;
  if (*this)
  {
    v6 = *(this + 1);
    v7 = *this;
    if (v6 != v5)
    {
      do
      {
        while (1)
        {
          if (*(v6 - 7))
          {
            operator delete(*(v6 - 6));
          }

          v8 = v6 - 13;
          std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((v6 - 10), *(v6 - 9));
          if (*(v6 - 81) < 0)
          {
            break;
          }

          v6 -= 13;
          if (v8 == v5)
          {
            goto LABEL_17;
          }
        }

        operator delete(*v8);
        v6 -= 13;
      }

      while (v8 != v5);
LABEL_17:
      v7 = *this;
    }

    *(this + 1) = v5;
    operator delete(v7);
  }
}

void *webrtc::VideoReceiveStreamInterface::Config::ToString(webrtc::VideoReceiveStreamInterface::Config *this, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](this, a2, a3);
  v135[256] = *MEMORY[0x277D85DE8];
  v4 = v134;
  v130 = v134;
  strcpy(v134, "{decoders: [");
  v131 = xmmword_273BA61F0;
  v5 = *v3;
  v126 = v3;
  v124 = v6;
  if (v3[1] != *v3)
  {
    v7 = 0;
    v4 = v134;
    v8 = 12;
    qmemcpy(v125, "d_type: {payload", sizeof(v125));
    while (1)
    {
      v9 = (v5 + 104 * v7);
      __s = v135;
      v135[0] = v125[1];
      *(v135 + 7) = v125[0];
      v133 = xmmword_273B93590;
      HIBYTE(v135[1]) = 0;
      webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(v9 + 24));
      if (v133 + ~*(&v133 + 1) >= 0x10uLL)
      {
        v10 = 16;
      }

      else
      {
        v10 = v133 + ~*(&v133 + 1);
      }

      memcpy(&__s[*(&v133 + 1)], ", payload_name: ", v10);
      *(&v133 + 1) += v10;
      __s[*(&v133 + 1)] = 0;
      v11 = *(v9 + 23);
      if ((v11 & 0x8000000000000000) != 0)
      {
        v12 = *v9;
        v11 = v9[1];
      }

      else
      {
        v12 = v9;
      }

      if (v11 >= v133 + ~*(&v133 + 1))
      {
        v13 = v133 + ~*(&v133 + 1);
      }

      else
      {
        v13 = v11;
      }

      memcpy(&__s[*(&v133 + 1)], v12, v13);
      *(&v133 + 1) += v13;
      __s[*(&v133 + 1)] = 0;
      if (v133 + ~*(&v133 + 1) >= 0x11uLL)
      {
        v14 = 17;
      }

      else
      {
        v14 = v133 + ~*(&v133 + 1);
      }

      memcpy(&__s[*(&v133 + 1)], ", codec_params: {", v14);
      *(&v133 + 1) += v14;
      __s[*(&v133 + 1)] = 0;
      v15 = v9[3];
      if (v15 != v9 + 4)
      {
        do
        {
          if (v15 != v9[3])
          {
            if (v133 + ~*(&v133 + 1) >= 2uLL)
            {
              v24 = 2;
            }

            else
            {
              v24 = v133 + ~*(&v133 + 1);
            }

            memcpy(&__s[*(&v133 + 1)], ", ", v24);
            *(&v133 + 1) += v24;
            __s[*(&v133 + 1)] = 0;
          }

          v25 = *(v15 + 55);
          if ((v25 & 0x8000000000000000) != 0)
          {
            v26 = v15[4];
            v25 = v15[5];
          }

          else
          {
            v26 = v15 + 4;
          }

          if (v25 >= v133 + ~*(&v133 + 1))
          {
            v27 = v133 + ~*(&v133 + 1);
          }

          else
          {
            v27 = v25;
          }

          memcpy(&__s[*(&v133 + 1)], v26, v27);
          *(&v133 + 1) += v27;
          __s[*(&v133 + 1)] = 0;
          if (v133 + ~*(&v133 + 1) >= 2uLL)
          {
            v28 = 2;
          }

          else
          {
            v28 = v133 + ~*(&v133 + 1);
          }

          memcpy(&__s[*(&v133 + 1)], ": ", v28);
          *(&v133 + 1) += v28;
          __s[*(&v133 + 1)] = 0;
          v29 = *(v15 + 79);
          if ((v29 & 0x8000000000000000) != 0)
          {
            v30 = v15[7];
            v29 = v15[8];
          }

          else
          {
            v30 = v15 + 7;
          }

          if (v29 >= v133 + ~*(&v133 + 1))
          {
            v31 = v133 + ~*(&v133 + 1);
          }

          else
          {
            v31 = v29;
          }

          memcpy(&__s[*(&v133 + 1)], v30, v31);
          *(&v133 + 1) += v31;
          __s[*(&v133 + 1)] = 0;
          v32 = v15[1];
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
              v33 = v15[2];
              v34 = *v33 == v15;
              v15 = v33;
            }

            while (!v34);
          }

          v15 = v33;
        }

        while (v33 != v9 + 4);
      }

      LOBYTE(__src) = 125;
      v16 = v133;
      v17 = *(&v133 + 1) + 1;
      memcpy(&__s[*(&v133 + 1)], &__src, v133 != *(&v133 + 1) + 1);
      v18 = *(&v133 + 1);
      if (v16 != v17)
      {
        v18 = *(&v133 + 1) + 1;
      }

      *(&v133 + 1) = v18;
      __s[v18] = 0;
      LOBYTE(__src) = 125;
      v19 = v133;
      v20 = *(&v133 + 1) + 1;
      memcpy(&__s[*(&v133 + 1)], &__src, v133 != *(&v133 + 1) + 1);
      v21 = *(&v133 + 1);
      if (v19 != v20)
      {
        v21 = *(&v133 + 1) + 1;
      }

      *(&v133 + 1) = v21;
      __s[v21] = 0;
      if (!__s)
      {
        goto LABEL_233;
      }

      v22 = strlen(__s);
      if (v22 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_234;
      }

      if (v22 > 0x16)
      {
        operator new();
      }

      v129 = v22;
      v23 = &__src + v22;
      if (&__src <= __s && v23 > __s)
      {
        goto LABEL_233;
      }

      if (v22)
      {
        memmove(&__src, __s, v22);
      }

      *v23 = 0;
      v35 = v129;
      if ((v129 & 0x80u) == 0)
      {
        p_src = &__src;
      }

      else
      {
        p_src = __src;
      }

      if ((v129 & 0x80u) != 0)
      {
        v35 = v128;
      }

      if (v35 >= 4095 - v8)
      {
        v37 = 4095 - v8;
      }

      else
      {
        v37 = v35;
      }

      memcpy(&v4[v8], p_src, v37);
      v4 = v130;
      v8 = *(&v131 + 1) + v37;
      *(&v131 + 1) = v8;
      v130[v8] = 0;
      if (v129 < 0)
      {
        operator delete(__src);
      }

      v38 = v126;
      v5 = *v126;
      v39 = 0x4EC4EC4EC4EC4EC5 * ((v126[1] - *v126) >> 3);
      if (v7 != v39 - 1)
      {
        if ((4095 - v8) >= 2)
        {
          v40 = 2;
        }

        else
        {
          v40 = 4095 - v8;
        }

        memcpy(&v4[v8], ", ", v40);
        v8 += v40;
        *(&v131 + 1) = v8;
        v4[v8] = 0;
        v5 = *v38;
        v39 = 0x4EC4EC4EC4EC4EC5 * ((v38[1] - *v38) >> 3);
      }

      if (++v7 >= v39)
      {
        goto LABEL_73;
      }
    }
  }

  v38 = v3;
  v8 = 12;
LABEL_73:
  LOBYTE(v135[0]) = 93;
  if (v8 == 4095)
  {
    v41 = 4095;
  }

  else
  {
    v41 = v8 + 1;
  }

  memcpy(&v4[v8], v135, v8 != 4095);
  v4[v41] = 0;
  if ((4095 - v41) >= 7)
  {
    v42 = 7;
  }

  else
  {
    v42 = 4095 - v41;
  }

  memcpy(&v4[v41], ", rtp: ", v42);
  *(&v131 + 1) = v41 + v42;
  v4[*(&v131 + 1)] = 0;
  __s = v135;
  strcpy(v135, "{remote_ssrc: ");
  v133 = xmmword_273BA6200;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%u", *(v38 + 8));
  if (v133 + ~*(&v133 + 1) >= 0xEuLL)
  {
    v43 = 14;
  }

  else
  {
    v43 = v133 + ~*(&v133 + 1);
  }

  memcpy(&__s[*(&v133 + 1)], ", local_ssrc: ", v43);
  *(&v133 + 1) += v43;
  __s[*(&v133 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%u", *(v38 + 9));
  if (v133 + ~*(&v133 + 1) >= 0xDuLL)
  {
    v44 = 13;
  }

  else
  {
    v44 = v133 + ~*(&v133 + 1);
  }

  memcpy(&__s[*(&v133 + 1)], ", rtcp_mode: ", v44);
  *(&v133 + 1) += v44;
  __s[*(&v133 + 1)] = 0;
  if (*(v38 + 11) == 1)
  {
    v45 = "RtcpMode::kCompound";
  }

  else
  {
    v45 = "RtcpMode::kReducedSize";
  }

  v46 = 19;
  if (*(v38 + 11) != 1)
  {
    v46 = 22;
  }

  if (v46 >= v133 + ~*(&v133 + 1))
  {
    v47 = v133 + ~*(&v133 + 1);
  }

  else
  {
    v47 = v46;
  }

  memcpy(&__s[*(&v133 + 1)], v45, v47);
  *(&v133 + 1) += v47;
  __s[*(&v133 + 1)] = 0;
  if (v133 + ~*(&v133 + 1) >= 0xBuLL)
  {
    v48 = 11;
  }

  else
  {
    v48 = v133 + ~*(&v133 + 1);
  }

  memcpy(&__s[*(&v133 + 1)], ", rtcp_xr: ", v48);
  *(&v133 + 1) += v48;
  __s[*(&v133 + 1)] = 0;
  if (v133 + ~*(&v133 + 1) >= 0x21uLL)
  {
    v49 = 33;
  }

  else
  {
    v49 = v133 + ~*(&v133 + 1);
  }

  memcpy(&__s[*(&v133 + 1)], "{receiver_reference_time_report: ", v49);
  *(&v133 + 1) += v49;
  __s[*(&v133 + 1)] = 0;
  if (*(v38 + 48))
  {
    v50 = "on";
  }

  else
  {
    v50 = "off";
  }

  v51 = 2;
  if (!*(v38 + 48))
  {
    v51 = 3;
  }

  if (v51 >= v133 + ~*(&v133 + 1))
  {
    v52 = v133 + ~*(&v133 + 1);
  }

  else
  {
    v52 = v51;
  }

  memcpy(&__s[*(&v133 + 1)], v50, v52);
  *(&v133 + 1) += v52;
  __s[*(&v133 + 1)] = 0;
  LOBYTE(__src) = 125;
  v53 = v133;
  v54 = *(&v133 + 1) + 1;
  memcpy(&__s[*(&v133 + 1)], &__src, v133 != *(&v133 + 1) + 1);
  v55 = *(&v133 + 1);
  if (v53 != v54)
  {
    v55 = *(&v133 + 1) + 1;
  }

  *(&v133 + 1) = v55;
  __s[v55] = 0;
  if (v133 + ~*(&v133 + 1) >= 0x12uLL)
  {
    v56 = 18;
  }

  else
  {
    v56 = v133 + ~*(&v133 + 1);
  }

  memcpy(&__s[*(&v133 + 1)], ", lntf: {enabled: ", v56);
  *(&v133 + 1) += v56;
  __s[*(&v133 + 1)] = 0;
  if (*(v38 + 50))
  {
    v57 = "true";
  }

  else
  {
    v57 = "false";
  }

  v58 = 4;
  if (!*(v38 + 50))
  {
    v58 = 5;
  }

  if (v58 >= v133 + ~*(&v133 + 1))
  {
    v59 = v133 + ~*(&v133 + 1);
  }

  else
  {
    v59 = v58;
  }

  memcpy(&__s[*(&v133 + 1)], v57, v59);
  *(&v133 + 1) += v59;
  __s[*(&v133 + 1)] = 0;
  LOBYTE(__src) = 125;
  v60 = v133;
  v61 = *(&v133 + 1) + 1;
  memcpy(&__s[*(&v133 + 1)], &__src, v133 != *(&v133 + 1) + 1);
  v62 = *(&v133 + 1);
  if (v60 != v61)
  {
    v62 = *(&v133 + 1) + 1;
  }

  *(&v133 + 1) = v62;
  __s[v62] = 0;
  if (v133 + ~*(&v133 + 1) >= 0x19uLL)
  {
    v63 = 25;
  }

  else
  {
    v63 = v133 + ~*(&v133 + 1);
  }

  memcpy(&__s[*(&v133 + 1)], ", nack: {rtp_history_ms: ", v63);
  *(&v133 + 1) += v63;
  __s[*(&v133 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(v38 + 10));
  LOBYTE(__src) = 125;
  v64 = v133;
  v65 = *(&v133 + 1) + 1;
  memcpy(&__s[*(&v133 + 1)], &__src, v133 != *(&v133 + 1) + 1);
  v66 = *(&v133 + 1);
  if (v64 != v65)
  {
    v66 = *(&v133 + 1) + 1;
  }

  *(&v133 + 1) = v66;
  __s[v66] = 0;
  if (v133 + ~*(&v133 + 1) >= 0x17uLL)
  {
    v67 = 23;
  }

  else
  {
    v67 = v133 + ~*(&v133 + 1);
  }

  memcpy(&__s[*(&v133 + 1)], ", ulpfec_payload_type: ", v67);
  *(&v133 + 1) += v67;
  __s[*(&v133 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(v38 + 13));
  if (v133 + ~*(&v133 + 1) >= 0xCuLL)
  {
    v68 = 12;
  }

  else
  {
    v68 = v133 + ~*(&v133 + 1);
  }

  memcpy(&__s[*(&v133 + 1)], ", red_type: ", v68);
  *(&v133 + 1) += v68;
  __s[*(&v133 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(v38 + 14));
  if (v133 + ~*(&v133 + 1) >= 0xCuLL)
  {
    v69 = 12;
  }

  else
  {
    v69 = v133 + ~*(&v133 + 1);
  }

  memcpy(&__s[*(&v133 + 1)], ", rtx_ssrc: ", v69);
  *(&v133 + 1) += v69;
  __s[*(&v133 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%u", *(v38 + 15));
  if (v133 + ~*(&v133 + 1) >= 0x16uLL)
  {
    v70 = 22;
  }

  else
  {
    v70 = v133 + ~*(&v133 + 1);
  }

  memcpy(&__s[*(&v133 + 1)], ", rtx_payload_types: {", v70);
  *(&v133 + 1) += v70;
  __s[*(&v133 + 1)] = 0;
  v71 = v38;
  v72 = v38[10];
  v73 = v71 + 11;
  if (v72 != v71 + 11)
  {
    do
    {
      webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(v72 + 7));
      if (v133 + ~*(&v133 + 1) >= 9uLL)
      {
        v74 = 9;
      }

      else
      {
        v74 = v133 + ~*(&v133 + 1);
      }

      memcpy(&__s[*(&v133 + 1)], " (pt) -> ", v74);
      *(&v133 + 1) += v74;
      __s[*(&v133 + 1)] = 0;
      webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(v72 + 8));
      if (v133 + ~*(&v133 + 1) >= 8uLL)
      {
        v75 = 8;
      }

      else
      {
        v75 = v133 + ~*(&v133 + 1);
      }

      memcpy(&__s[*(&v133 + 1)], " (apt), ", v75);
      *(&v133 + 1) += v75;
      __s[*(&v133 + 1)] = 0;
      v76 = v72[1];
      if (v76)
      {
        do
        {
          v77 = v76;
          v76 = *v76;
        }

        while (v76);
      }

      else
      {
        do
        {
          v77 = v72[2];
          v34 = *v77 == v72;
          v72 = v77;
        }

        while (!v34);
      }

      v72 = v77;
    }

    while (v77 != v73);
  }

  LOBYTE(__src) = 125;
  v78 = v133;
  v79 = *(&v133 + 1) + 1;
  memcpy(&__s[*(&v133 + 1)], &__src, v133 != *(&v133 + 1) + 1);
  v80 = *(&v133 + 1);
  if (v78 != v79)
  {
    v80 = *(&v133 + 1) + 1;
  }

  *(&v133 + 1) = v80;
  __s[v80] = 0;
  if (v133 + ~*(&v133 + 1) >= 0x16uLL)
  {
    v81 = 22;
  }

  else
  {
    v81 = v133 + ~*(&v133 + 1);
  }

  memcpy(&__s[*(&v133 + 1)], ", raw_payload_types: {", v81);
  *(&v133 + 1) += v81;
  __s[*(&v133 + 1)] = 0;
  v82 = v126;
  v83 = v126[13];
  v84 = v126 + 14;
  if (v83 != v126 + 14)
  {
    do
    {
      webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(v83 + 7));
      if (v133 + ~*(&v133 + 1) >= 2uLL)
      {
        v85 = 2;
      }

      else
      {
        v85 = v133 + ~*(&v133 + 1);
      }

      memcpy(&__s[*(&v133 + 1)], ", ", v85);
      *(&v133 + 1) += v85;
      __s[*(&v133 + 1)] = 0;
      v86 = v83[1];
      if (v86)
      {
        do
        {
          v87 = v86;
          v86 = *v86;
        }

        while (v86);
      }

      else
      {
        do
        {
          v87 = v83[2];
          v34 = *v87 == v83;
          v83 = v87;
        }

        while (!v34);
      }

      v83 = v87;
    }

    while (v87 != v84);
  }

  LOBYTE(__src) = 125;
  v88 = v133;
  v89 = *(&v133 + 1) + 1;
  memcpy(&__s[*(&v133 + 1)], &__src, v133 != *(&v133 + 1) + 1);
  v90 = *(&v133 + 1);
  if (v88 != v89)
  {
    v90 = *(&v133 + 1) + 1;
  }

  *(&v133 + 1) = v90;
  __s[v90] = 0;
  LOBYTE(__src) = 125;
  v91 = v133;
  v92 = *(&v133 + 1) + 1;
  memcpy(&__s[*(&v133 + 1)], &__src, v133 != *(&v133 + 1) + 1);
  v93 = *(&v133 + 1);
  if (v91 != v92)
  {
    v93 = *(&v133 + 1) + 1;
  }

  *(&v133 + 1) = v93;
  __s[v93] = 0;
  if (!__s)
  {
    goto LABEL_233;
  }

  v94 = strlen(__s);
  if (v94 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_234;
  }

  if (v94 > 0x16)
  {
    operator new();
  }

  v129 = v94;
  v95 = &__src + v94;
  if (&__src <= __s && v95 > __s)
  {
    goto LABEL_233;
  }

  if (v94)
  {
    memmove(&__src, __s, v94);
  }

  *v95 = 0;
  v96 = v129;
  if ((v129 & 0x80u) == 0)
  {
    v97 = &__src;
  }

  else
  {
    v97 = __src;
  }

  if ((v129 & 0x80u) != 0)
  {
    v96 = v128;
  }

  v99 = *(&v131 + 1);
  v98 = v131;
  v100 = v130;
  if (v96 >= v131 + ~*(&v131 + 1))
  {
    v101 = v131 + ~*(&v131 + 1);
  }

  else
  {
    v101 = v96;
  }

  memcpy(&v130[*(&v131 + 1)], v97, v101);
  v102 = v99 + v101;
  v100[v102] = 0;
  if (v129 < 0)
  {
    operator delete(__src);
  }

  if (v98 + ~v102 >= 0xC)
  {
    v103 = 12;
  }

  else
  {
    v103 = v98 + ~v102;
  }

  memcpy(&v100[v102], ", renderer: ", v103);
  v104 = v102 + v103;
  v100[v104] = 0;
  v105 = v82[17];
  if (v105)
  {
    v106 = "(renderer)";
  }

  else
  {
    v106 = "nullptr";
  }

  v107 = 10;
  if (!v105)
  {
    v107 = 7;
  }

  if (v107 >= v98 + ~v104)
  {
    v108 = v98 + ~v104;
  }

  else
  {
    v108 = v107;
  }

  memcpy(&v100[v104], v106, v108);
  v109 = v104 + v108;
  v100[v109] = 0;
  if (v98 + ~v109 >= 0x13)
  {
    v110 = 19;
  }

  else
  {
    v110 = v98 + ~v109;
  }

  memcpy(&v100[v109], ", render_delay_ms: ", v110);
  *(&v131 + 1) = v109 + v110;
  v100[*(&v131 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&v130, "%d", *(v82 + 36));
  v111 = *(v82 + 175);
  if (v111 < 0)
  {
    v111 = v82[20];
  }

  if (v111)
  {
    if (v131 + ~*(&v131 + 1) >= 0xEuLL)
    {
      v112 = 14;
    }

    else
    {
      v112 = v131 + ~*(&v131 + 1);
    }

    memcpy(&v130[*(&v131 + 1)], ", sync_group: ", v112);
    *(&v131 + 1) += v112;
    v130[*(&v131 + 1)] = 0;
    v113 = *(v82 + 175);
    if ((v113 & 0x8000000000000000) != 0)
    {
      v114 = v82[19];
      v113 = v82[20];
    }

    else
    {
      v114 = v82 + 19;
    }

    if (v113 >= v131 + ~*(&v131 + 1))
    {
      v115 = v131 + ~*(&v131 + 1);
    }

    else
    {
      v115 = v113;
    }

    memcpy(&v130[*(&v131 + 1)], v114, v115);
    *(&v131 + 1) += v115;
    v130[*(&v131 + 1)] = 0;
  }

  LOBYTE(v135[0]) = 125;
  v116 = v131;
  v117 = *(&v131 + 1) + 1;
  memcpy(&v130[*(&v131 + 1)], v135, v131 != *(&v131 + 1) + 1);
  v118 = *(&v131 + 1);
  if (v116 != v117)
  {
    v118 = *(&v131 + 1) + 1;
  }

  *(&v131 + 1) = v118;
  v130[v118] = 0;
  v119 = v130;
  if (!v130)
  {
    goto LABEL_233;
  }

  v120 = strlen(v130);
  if (v120 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_234;
  }

  v121 = v120;
  if (v120 > 0x16)
  {
    operator new();
  }

  result = v124;
  v124[23] = v121;
  v123 = &v124[v121];
  if (v124 <= v119 && v123 > v119)
  {
LABEL_233:
    __break(1u);
LABEL_234:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (v121)
  {
    result = memmove(v124, v119, v121);
  }

  *v123 = 0;
  return result;
}

uint64_t webrtc::VideoReceiveStreamInterface::Config::Rtp::Rtp(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  v6 = *(a2 + 40);
  *(a1 + 56) = 0;
  v7 = (a1 + 56);
  *(a1 + 48) = a1 + 56;
  v8 = (a1 + 48);
  *(a1 + 40) = v6;
  *(a1 + 24) = v5;
  *(a1 + 8) = v4;
  *(a1 + 64) = 0;
  v9 = *(a2 + 48);
  v10 = (a2 + 56);
  if (v9 != (a2 + 56))
  {
    do
    {
      if (!*std::__tree<int>::__find_equal<int>(v8, v7, &v19, &v18, v9 + 7))
      {
        operator new();
      }

      v11 = *(v9 + 1);
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = *(v9 + 2);
          v13 = *v12 == v9;
          v9 = v12;
        }

        while (!v13);
      }

      v9 = v12;
    }

    while (v12 != v10);
  }

  *(a1 + 80) = 0;
  *(a1 + 72) = a1 + 80;
  *(a1 + 88) = 0;
  v14 = *(a2 + 72);
  if (v14 != (a2 + 80))
  {
    do
    {
      if (!*std::__tree<int>::__find_equal<int>((a1 + 72), (a1 + 80), &v19, &v18, v14 + 7))
      {
        operator new();
      }

      v15 = *(v14 + 1);
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
          v16 = *(v14 + 2);
          v13 = *v16 == v14;
          v14 = v16;
        }

        while (!v13);
      }

      v14 = v16;
    }

    while (v16 != (a2 + 80));
  }

  return a1;
}

void webrtc::internal::VideoReceiveStream2::VideoReceiveStream2(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = (a1 + 312);
  *a1 = &unk_2882A24A8;
  *(a1 + 8) = &unk_2882A25B0;
  *(a1 + 16) = &unk_2882A25E8;
  *(a1 + 24) = &unk_2882A2610;
  *(a1 + 32) = &unk_2882A2658;
  *(a1 + 40) = &unk_2882A2680;
  *(a1 + 48) = &unk_2882A26B0;
  v13 = *a2;
  *(a1 + 56) = *a2;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1u, memory_order_relaxed);
  }

  v14 = *(a2 + 3);
  *(a1 + 64) = *(a2 + 1);
  *(a1 + 80) = v14;
  v15 = *(a6 + 128);
  *(a1 + 120) = 0;
  *(a1 + 96) = &unk_2882A12C8;
  *(a1 + 104) = v15;
  *(a1 + 112) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = *a6;
  *(a1 + 136) = *(a6 + 16);
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a1 + 144) = *(a6 + 24);
  webrtc::VideoReceiveStreamInterface::Config::Rtp::Rtp(a1 + 152, a6 + 32);
  v16 = *(a6 + 128);
  *(a1 + 261) = *(a6 + 141);
  *(a1 + 248) = v16;
  v17 = *(a6 + 152);
  *(a1 + 288) = *(a6 + 168);
  *(a1 + 272) = v17;
  *(a6 + 152) = 0;
  *(a6 + 160) = 0;
  v18 = *(a6 + 176);
  *(a6 + 168) = 0;
  *(a6 + 176) = 0;
  *(a1 + 296) = v18;
  LODWORD(v18) = *(a6 + 184);
  *(a1 + 308) = *(a6 + 188);
  *(a1 + 304) = v18;
  v12[1] = 0;
  v12[2] = 0;
  *v12 = 0;
  *v12 = *(a6 + 192);
  *(a1 + 328) = *(a6 + 208);
  *(a6 + 192) = 0;
  *(a6 + 200) = 0;
  v19 = *(a6 + 216);
  *(a6 + 208) = 0;
  *(a6 + 216) = 0;
  *(a1 + 336) = v19;
  *(a1 + 344) = a4;
  *(a1 + 352) = a3;
  *(a1 + 360) = a7;
  *(a1 + 368) = 256;
  v20 = *(a1 + 72);
  *(a1 + 376) = v20;
  *(a1 + 384) = a1 + 384;
  *(a1 + 392) = a1 + 384;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0;
  *(a1 + 440) = 1065353216;
  v21 = *(a1 + 152);
  (*(*a3 + 240))(a3);
  webrtc::internal::ReceiveStatisticsProxy::ReceiveStatisticsProxy(a1 + 448, v21, v20);
}

void webrtc::internal::VideoReceiveStream2::~VideoReceiveStream2(webrtc::internal::VideoReceiveStream2 *this)
{
  *this = &unk_2882A24A8;
  *(this + 1) = &unk_2882A25B0;
  *(this + 2) = &unk_2882A25E8;
  *(this + 3) = &unk_2882A2610;
  *(this + 4) = &unk_2882A2658;
  *(this + 5) = &unk_2882A2680;
  *(this + 6) = &unk_2882A26B0;
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::VideoReceiveStreamInterface::Config::ToString((this + 120), v2, v3);
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/video_receive_stream2.cc");
    if (v43 < 0)
    {
      operator delete(__p);
    }
  }

  (*(*this + 24))(this);
  v11 = *(this + 572);
  *(this + 572) = 0;
  if (v11)
  {
    (**v11)(v11);
  }

  v12 = *(this + 571);
  *(v12 + 4) = 0;
  if (atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  v13 = *(this + 568);
  if (v13)
  {
    v14 = *(this + 569);
    v15 = *(this + 568);
    if (v14 != v13)
    {
      do
      {
        v17 = *--v14;
        v16 = v17;
        *v14 = 0;
        if (v17)
        {
          (*(*v16 + 8))(v16);
        }
      }

      while (v14 != v13);
      v15 = *(this + 568);
    }

    *(this + 569) = v13;
    operator delete(v15);
  }

  pthread_mutex_destroy((this + 4464));
  v18 = *(this + 556);
  if (v18 == (this + 4424))
  {
    (*(*v18 + 32))(v18);
    v19 = *(this + 539);
    *(this + 539) = 0;
    if (v19)
    {
LABEL_20:
      (*(*v19 + 8))(v19);
    }
  }

  else
  {
    if (v18)
    {
      (*(*v18 + 40))(v18);
    }

    v19 = *(this + 539);
    *(this + 539) = 0;
    if (v19)
    {
      goto LABEL_20;
    }
  }

  v20 = *(this + 537);
  *(this + 537) = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v21 = *(this + 536);
  *(this + 536) = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  v22 = *(this + 534);
  *(this + 534) = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  webrtc::internal::RtpStreamsSynchronizer::~RtpStreamsSynchronizer((this + 4048));
  v30 = *(this + 505);
  *(this + 505) = 0;
  if (v30)
  {
    (*(*v30 + 40))(v30);
  }

  webrtc::RtpVideoStreamReceiver2::~RtpVideoStreamReceiver2((this + 2456), v23, v24, v25, v26, v27, v28, v29);
  v31 = *(this + 306);
  *(this + 306) = 0;
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  std::__tree<std::__value_type<unsigned char,std::unique_ptr<webrtc::VideoDecoder>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::unique_ptr<webrtc::VideoDecoder>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::unique_ptr<webrtc::VideoDecoder>>>>::destroy(this + 2424, *(this + 304));
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 2400, *(this + 301));
  if (*(this + 2392) == 1)
  {
    (*(**(this + 293) + 48))(*(this + 293));
    if (*(this + 2383) < 0)
    {
      operator delete(*(this + 295));
    }
  }

  webrtc::VCMDecodedFrameCallback::~VCMDecodedFrameCallback((this + 2160));
  v32 = *(this + 268);
  *(this + 268) = 0;
  if (v32)
  {
    (*(*v32 + 8))(v32);
  }

  v33 = *(this + 267);
  *(this + 267) = 0;
  if (v33)
  {
    (*(*v33 + 8))(v33);
  }

  webrtc::internal::ReceiveStatisticsProxy::~ReceiveStatisticsProxy((this + 448));
  v34 = *(this + 53);
  if (v34)
  {
    do
    {
      v35 = *v34;
      operator delete(v34);
      v34 = v35;
    }

    while (v35);
  }

  v36 = *(this + 51);
  *(this + 51) = 0;
  if (v36)
  {
    operator delete(v36);
  }

  if (*(this + 50))
  {
    v37 = *(this + 49);
    v38 = *(*(this + 48) + 8);
    v39 = *v37;
    *(v39 + 8) = v38;
    *v38 = v39;
    *(this + 50) = 0;
    if (v37 != (this + 384))
    {
      do
      {
        v40 = *(v37 + 1);
        operator delete(v37);
        v37 = v40;
      }

      while (v40 != (this + 384));
    }
  }

  webrtc::VideoReceiveStreamInterface::Config::~Config((this + 120));
  v41 = *(this + 7);
  if (v41)
  {
    if (atomic_fetch_add(v41 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v41 + 8))(v41);
    }
  }
}

{
  webrtc::internal::VideoReceiveStream2::~VideoReceiveStream2(this);

  JUMPOUT(0x2743DA540);
}

void non-virtual thunk towebrtc::internal::VideoReceiveStream2::~VideoReceiveStream2(webrtc::internal::VideoReceiveStream2 *this)
{
  webrtc::internal::VideoReceiveStream2::~VideoReceiveStream2((this - 8));
}

{
  webrtc::internal::VideoReceiveStream2::~VideoReceiveStream2((this - 16));
}

{
  webrtc::internal::VideoReceiveStream2::~VideoReceiveStream2((this - 24));
}

{
  webrtc::internal::VideoReceiveStream2::~VideoReceiveStream2((this - 32));
}

{
  webrtc::internal::VideoReceiveStream2::~VideoReceiveStream2((this - 40));
}

{
  webrtc::internal::VideoReceiveStream2::~VideoReceiveStream2((this - 48));
}

{
  webrtc::internal::VideoReceiveStream2::~VideoReceiveStream2((this - 8));

  JUMPOUT(0x2743DA540);
}

{
  webrtc::internal::VideoReceiveStream2::~VideoReceiveStream2((this - 16));

  JUMPOUT(0x2743DA540);
}

{
  webrtc::internal::VideoReceiveStream2::~VideoReceiveStream2((this - 24));

  JUMPOUT(0x2743DA540);
}

{
  webrtc::internal::VideoReceiveStream2::~VideoReceiveStream2((this - 32));

  JUMPOUT(0x2743DA540);
}

{
  webrtc::internal::VideoReceiveStream2::~VideoReceiveStream2((this - 40));

  JUMPOUT(0x2743DA540);
}

{
  webrtc::internal::VideoReceiveStream2::~VideoReceiveStream2((this - 48));

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::internal::VideoReceiveStream2::RegisterWithTransport(uint64_t a1, uint64_t a2)
{
  *(a1 + 4280) = a2;
  (*(*a2 + 16))(&v8, a2, *(a1 + 152), a1 + 2472);
  v4 = v8;
  v8 = 0;
  result = *(a1 + 4288);
  *(a1 + 4288) = v4;
  if (result)
  {
    (*(*result + 8))(result);
    result = v8;
    v8 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  v6 = 180;
  if (*(a1 + 4308))
  {
    v6 = 4304;
  }

  if (*(a1 + v6))
  {
    if (*(a1 + 4296))
    {
      (*(*a2 + 16))(&v8, a2);
      v7 = v8;
      v8 = 0;
      result = *(a1 + 4312);
      *(a1 + 4312) = v7;
      if (result)
      {
        (*(*result + 8))(result);
        result = v8;
        v8 = 0;
        if (result)
        {
          return (*(*result + 8))(result);
        }
      }
    }
  }

  return result;
}

uint64_t webrtc::internal::VideoReceiveStream2::Start(uint64_t this)
{
  v32[2] = *MEMORY[0x277D85DE8];
  if ((*(this + 368) & 1) == 0)
  {
    v1 = this;
    if (*(this + 184))
    {
      v2 = 0;
      if (*(this + 160) < 1)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v3 = *(this + 2912);
      if (!v3)
      {
        goto LABEL_9;
      }

      v2 = *(v3 + 4) == -1;
      if (*(this + 160) < 1)
      {
        goto LABEL_9;
      }
    }

    if (!v2)
    {
      *(*(this + 4272) + 972) = 1;
    }

LABEL_9:
    atomic_store(1u, (this + 112));
    if (*(this + 268) == 1)
    {
      operator new();
    }

    v4 = *(this + 120);
    if (v4 == *(this + 128))
    {
      operator new();
    }

    v5 = v28 + 1 <= "w" || v28 > "w";
    if (!v5 || (v20 + 1 > "h" ? (v6 = v20 > "h") : (v6 = 1), !v6))
    {
      webrtc::PayloadStringToCodecType(v4);
      __break(1u);
    }

    webrtc::PayloadStringToCodecType(v4);
    v7 = *(v1 + 64);
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v29 = 1;
    LOWORD(v28[0]) = 119;
    v24 = &unk_2882938B0;
    v30 = 0;
    v31 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v21 = 1;
    LOWORD(v20[0]) = 104;
    v16 = &unk_2882938B0;
    LOBYTE(v22) = 0;
    v23 = 0;
    v32[0] = &v24;
    v32[1] = &v16;
    (*(*v7 + 16))(__p);
    if ((v15 & 0x80u) == 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    if ((v15 & 0x80u) == 0)
    {
      v9 = v15;
    }

    else
    {
      v9 = __p[1];
    }

    webrtc::ParseFieldTrial(v32, 2, v8, v9);
    if (v15 < 0)
    {
      operator delete(__p[0]);
      if (v31 != 1)
      {
        goto LABEL_36;
      }
    }

    else if (v31 != 1)
    {
      goto LABEL_36;
    }

    if (v23 == 1)
    {
      v16 = &unk_288293910;
      if ((v21 & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

LABEL_37:
      operator delete(v20[0]);
LABEL_38:
      if (v17)
      {
        v18 = v17;
        operator delete(v17);
      }

      v24 = &unk_288293910;
      if (v29 < 0)
      {
        operator delete(v28[0]);
        v10 = v25;
        if (!v25)
        {
LABEL_43:
          v11 = *(v1 + 232);
          v12 = *(v4 + 96);
          if (!v11)
          {
LABEL_51:
            webrtc::RtpVideoStreamReceiver2::AddReceiveCodec();
          }

          while (1)
          {
            v13 = *(v11 + 7);
            if (v12 >= v13)
            {
              if (v13 >= v12)
              {
                goto LABEL_51;
              }

              ++v11;
            }

            v11 = *v11;
            if (!v11)
            {
              goto LABEL_51;
            }
          }
        }
      }

      else
      {
        v10 = v25;
        if (!v25)
        {
          goto LABEL_43;
        }
      }

      v26 = v10;
      operator delete(v10);
      goto LABEL_43;
    }

LABEL_36:
    v16 = &unk_288293910;
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  return this;
}

uint64_t webrtc::internal::VideoReceiveStream2::Stop(webrtc::internal::VideoReceiveStream2 *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v47 = *MEMORY[0x277D85DE8];
  if (*(this + 2936) == 1)
  {
    v9 = *(this + 322);
    if (v9)
    {
      v10 = *(this + 369);
      webrtc::PacketRouter::MaybeRemoveRembModuleCandidate(*(this + 322), v10, 0, a4, a5, a6, a7, a8);
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
      }

      v14 = (v11 - (v12 + 8));
      if (v11 != v12 + 8)
      {
        memmove(v12, v12 + 8, v11 - (v12 + 8));
      }

      *(v9 + 96) = &v14[v12];
      v15 = *(this + 322);
      v36 = *(this + 369);
      std::vector<webrtc::BufferT<unsigned char,false> *,std::allocator<webrtc::BufferT<unsigned char,false> *>>::push_back[abi:sn200100]((v15 + 88), &v36);
    }
  }

  *(this + 2936) = 0;
  *(this + 518) = *(this + 800);
  *(this + 2076) = 1;
  v16 = *(this + 534);
  (*(**(v16 + 48) + 40))(*(v16 + 48));
  v17 = *(v16 + 936);
  if (v17)
  {
    *(v17 + 4) = 0;
    if (atomic_fetch_add(v17, 0xFFFFFFFF) == 1)
    {
      MEMORY[0x2743DA540]();
    }

    *(v16 + 936) = 0;
  }

  *(v16 + 976) = 0;
  v18 = *(this + 45);
  v36 = this + 32;
  std::list<webrtc::CallStatsObserver *>::remove((v18 + 96), &v36);
  if (*(this + 368) == 1)
  {
    webrtc::Event::Event(&v45, 0, 0);
    v19 = *(this + 572);
    v36 = this;
    *&v37 = &v45;
    *(&v37 + 1) = absl::internal_any_invocable::LocalManagerTrivial;
    *&v38 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::internal::VideoReceiveStream2::Stop(void)::$_0 &&>;
    (*(*v19 + 8))(v19, &v36, v35, &v34);
    (*(&v37 + 1))(1, &v36, &v36);
    v20.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v21.var0 = 3000000;
    webrtc::Event::Wait(&v45, v20, v21);
    *(this + 368) = 0;
    v36 = 0x7FFFFFFFFFFFFFFFLL;
    v37 = 0u;
    v44 = 0;
    v43 = 0u;
    v42 = 0u;
    v41 = 0u;
    v40 = 0u;
    v39 = 0u;
    v38 = 0u;
    v22 = (*(**(this + 267) + 24))(*(this + 267), *(this + 38));
    if (v22)
    {
      v23 = v22;
      v24 = (*(*v22 + 24))();
      (*(*v23 + 32))(&v36, v23);
      v25 = v24 & 0xFF00000000;
      v26 = v24 & 0xFFFFFF00;
      v27 = v24;
    }

    else
    {
      v26 = 0;
      v25 = 0;
      v27 = 0;
    }

    v28 = 180;
    if (*(this + 4308))
    {
      v28 = 4304;
    }

    if (*(this + v28) && (v29 = (*(**(this + 267) + 24))(*(this + 267))) != 0)
    {
      (*(*v29 + 32))(v35);
      v30 = this + 448;
      v31 = v25 | v26 | v27;
    }

    else
    {
      v30 = this + 448;
      v31 = v25 | v26 | v27;
    }

    webrtc::internal::ReceiveStatisticsProxy::UpdateHistograms(v30, v31, &v36);
    pthread_mutex_destroy(&v45);
    pthread_cond_destroy(&v46);
  }

  std::__tree<std::__value_type<unsigned char,std::map<std::string,std::string>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::map<std::string,std::string>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::map<std::string,std::string>>>>::destroy(this + 3416, *(this + 428));
  *(this + 427) = this + 3424;
  *(this + 214) = 0u;
  std::__tree<std::__value_type<unsigned char,std::unique_ptr<webrtc::VideoRtpDepacketizer>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::unique_ptr<webrtc::VideoRtpDepacketizer>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::unique_ptr<webrtc::VideoRtpDepacketizer>>>>::destroy(this + 3392, *(this + 425));
  *(this + 424) = this + 3400;
  *(this + 3400) = 0u;
  *(this + 3184) = 0;
  std::unique_ptr<webrtc::H26xPacketBuffer>::reset[abi:sn200100](this + 399, 0);
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 3440, *(this + 431));
  *(this + 430) = this + 3448;
  *(this + 3448) = 0u;
  if (*(this + 2330) == 1)
  {
    *(this + 2330) = 0;
  }

  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 2400, *(this + 301));
  *(this + 300) = this + 2408;
  *(this + 2408) = 0u;
  v32 = *(this + 505);
  *(this + 505) = 0;
  if (v32)
  {
    (*(*v32 + 40))(v32);
  }

  result = *(this + 306);
  *(this + 306) = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  atomic_store(0, this + 112);
  return result;
}

uint64_t webrtc::internal::VideoReceiveStream2::SetFlexFecProtection(uint64_t result, uint64_t a2)
{
  *(result + 2928) = a2;
  *(result + 192) = a2;
  *(result + 184) = a2 != 0;
  return result;
}

uint64_t webrtc::internal::VideoReceiveStream2::SetNackHistory(uint64_t this, TimeDelta a2)
{
  v2 = *(this + 160);
  if (a2.var0 < 0)
  {
    if (-a2.var0 % 0x3E8uLL <= 0x1F4)
    {
      v4 = 0;
    }

    else
    {
      v4 = -1;
    }

    v3 = v4 - -a2.var0 / 0x3E8uLL;
    if (v3 == v2)
    {
      return this;
    }

    goto LABEL_10;
  }

  v3 = a2.var0 / 0x3E8;
  if (a2.var0 % 0x3E8 > 0x1F3)
  {
    ++v3;
  }

  if (v3 != v2)
  {
LABEL_10:
    *(this + 160) = v3;
    if (*(this + 184))
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v5 = *(this + 2912);
      if (v5)
      {
        LOBYTE(v5) = *(v5 + 4) != -1;
      }
    }

    v6 = a2.var0 / 0x3E8;
    if (a2.var0 % 0x3E8 > 0x1F3)
    {
      ++v6;
    }

    if (-a2.var0 % 0x3E8uLL <= 0x1F4)
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 - -a2.var0 / 0x3E8uLL;
    if (a2.var0 >= 0)
    {
      v8 = v6;
    }

    *(*(this + 4272) + 972) = (v8 > 0) & v5;
    v9 = this;
    this = webrtc::RtpVideoStreamReceiver2::SetNackHistory((this + 2456), a2);
    var0 = 200000;
    if ((a2.var0 - 1) < 0xF423F)
    {
      var0 = a2.var0;
    }

    v12 = 3 * a2.var0;
    if ((a2.var0 - 1) >= 0xF423F)
    {
      v12 = 3000000;
    }

    v9[543] = var0;
    v9[544] = v12;
    v13 = v9[534];
    *(v13 + 888) = var0;
    *(v13 + 896) = v12;
  }

  return this;
}

webrtc::UlpfecReceiver *webrtc::internal::VideoReceiveStream2::SetProtectionPayloadTypes(webrtc::internal::VideoReceiveStream2 *this, int a2)
{
  *(this + 730) = a2;
  if (a2 != -1)
  {
    operator new();
  }

  result = *(this + 364);
  *(this + 364) = 0;
  if (result)
  {
    webrtc::UlpfecReceiver::~UlpfecReceiver(result);

    JUMPOUT(0x2743DA540);
  }

  return result;
}

uint64_t webrtc::internal::VideoReceiveStream2::SetRtcpXr(uint64_t a1, char a2)
{
  v2 = *(a1 + 2952);
  v3 = a2 & 1;
  pthread_mutex_lock((v2 + 184));
  *(v2 + 464) = v3;
  pthread_mutex_unlock((v2 + 184));
  pthread_mutex_lock((v2 + 896));
  *(v2 + 1064) = v3;

  return pthread_mutex_unlock((v2 + 896));
}

void webrtc::internal::VideoReceiveStream2::SetAssociatedPayloadTypes(uint64_t a1, void *a2)
{
  v2 = *(a1 + 4296);
  if (v2)
  {
    v3 = a2 + 1;
    v4 = a2[1];
    v9 = *a2;
    v10 = v4;
    v11 = a2[2];
    if (v11)
    {
      v4[2] = &v10;
      *a2 = v3;
      *v3 = 0;
      a2[2] = 0;
    }

    else
    {
      v9 = &v10;
    }

    v6 = *(v2 + 24);
    v5 = (v2 + 24);
    std::__tree<sigslot::_signal_base_interface *>::destroy((v5 - 1), v6);
    v7 = v10;
    *(v5 - 1) = v9;
    *v5 = v7;
    v8 = v11;
    v5[1] = v11;
    if (v8)
    {
      v7[2] = v5;
      v9 = &v10;
      v10 = 0;
      v11 = 0;
      v7 = 0;
    }

    else
    {
      *(v5 - 1) = v5;
    }

    std::__tree<sigslot::_signal_base_interface *>::destroy(&v9, v7);
  }
}

uint64_t webrtc::internal::VideoReceiveStream2::GetStats@<X0>(webrtc::internal::VideoReceiveStream2 *this@<X0>, uint64_t a2@<X8>)
{
  webrtc::internal::ReceiveStatisticsProxy::GetStats((this + 448), a2);
  *(a2 + 248) = 0;
  v4 = (*(**(this + 267) + 24))(*(this + 267), *(a2 + 300));
  if (v4)
  {
    v5 = v4;
    (*(*v4 + 16))(&v23);
    v6 = v26;
    *(a2 + 360) = v25;
    *(a2 + 376) = v6;
    *(a2 + 392) = v27;
    v7 = v24;
    *(a2 + 328) = v23;
    *(a2 + 344) = v7;
    *(a2 + 248) = (*(*v5 + 40))(v5);
  }

  v8 = 180;
  if (*(this + 4308))
  {
    v8 = 4304;
  }

  if (*(this + v8))
  {
    v9 = (*(**(this + 267) + 24))(*(this + 267));
    if (v9)
    {
      v10 = v9;
      *(a2 + 248) += (*(*v9 + 40))();
      (*(*v10 + 16))(&v23, v10);
      v11 = *(a2 + 496);
      v12 = v26;
      *(a2 + 456) = v25;
      *(a2 + 472) = v12;
      *(a2 + 488) = v27;
      v13 = v24;
      *(a2 + 424) = v23;
      *(a2 + 440) = v13;
      if ((v11 & 1) == 0)
      {
        *(a2 + 496) = 1;
      }
    }
  }

  v14 = *(this + 369);
  pthread_mutex_lock((v14 + 896));
  v15 = *(v14 + 976);
  if (v15)
  {
    v16 = *(v14 + 968);
    v17 = *(v14 + 984);
    v18 = *(v14 + 996);
    v19 = *(v14 + 1000);
    v20 = *(v14 + 1008);
    result = pthread_mutex_unlock((v14 + 896));
    if ((*(a2 + 632) & 1) == 0)
    {
      *(a2 + 632) = 1;
    }

    *(a2 + 624) = v16;
    if ((*(a2 + 648) & 1) == 0)
    {
      *(a2 + 648) = 1;
    }

    *(a2 + 640) = (((1000000 * v15) >> 31) & 1) + ((1000000 * v15) >> 32) + 1000000 * (HIDWORD(v15) + 2085978496);
    if (v17)
    {
      v22 = (((1000000 * v17) >> 31) & 1) + ((1000000 * v17) >> 32) + 1000000 * (HIDWORD(v17) + 2085978496);
      if (*(a2 + 664))
      {
LABEL_17:
        *(a2 + 656) = v22;
        *(a2 + 672) = v18;
        *(a2 + 680) = v19;
        *(a2 + 688) = v20;
        return result;
      }
    }

    else
    {
      v22 = 0x8000000000000000;
      if (*(a2 + 664))
      {
        goto LABEL_17;
      }
    }

    *(a2 + 664) = 1;
    goto LABEL_17;
  }

  return pthread_mutex_unlock((v14 + 896));
}

BOOL webrtc::internal::VideoReceiveStream2::SetBaseMinimumPlayoutDelayMs(webrtc::internal::VideoReceiveStream2 *this, int a2)
{
  v2 = 1000 * a2;
  v4 = a2 >= 0 && v2 < 0x989681;
  if (v4)
  {
    if ((*(this + 4384) & 1) == 0)
    {
      *(this + 4384) = 1;
    }

    *(this + 547) = v2;
    webrtc::internal::VideoReceiveStream2::UpdatePlayoutDelays(this);
  }

  return v4;
}

uint64_t webrtc::internal::VideoReceiveStream2::UpdatePlayoutDelays(uint64_t this)
{
  v1 = this;
  v95 = *MEMORY[0x277D85DE8];
  v2 = (this + 4360);
  v87 = *(this + 4360);
  LOBYTE(v88) = *(this + 4368);
  v3 = (this + 4376);
  LOBYTE(v90) = *(this + 4384);
  v89 = *(this + 4376);
  v4 = (this + 4392);
  v91 = *(this + 4392);
  LOBYTE(v92) = *(this + 4400);
  v5 = &v87;
  if (v90)
  {
    if (v88 == 1 && v87 >= v89)
    {
      v5 = &v87;
      if (v92 != 1)
      {
        goto LABEL_9;
      }

      goto LABEL_6;
    }

    v5 = &v89;
  }

  if (v92 != 1)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (*(v5 + 8) != 1 || *v5 < v91)
  {
    v5 = &v91;
  }

LABEL_9:
  v6 = *v5;
  v7 = v5[1];
  v84 = v6;
  v85 = v7;
  if ((v7 & 1) == 0)
  {
    return this;
  }

  if (*(this + 4416) != 1)
  {
    goto LABEL_37;
  }

  v8 = *(this + 4408);
  if (v6 <= v8)
  {
    goto LABEL_37;
  }

  v84 = *(this + 4408);
  v9 = *(this + 2144);
  pthread_mutex_lock((v9 + 8));
  v10 = *(v9 + 104);
  pthread_mutex_unlock((v9 + 8));
  if (v10 == v8 || (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) != 0)
  {
    goto LABEL_37;
  }

  v76 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/video_receive_stream2.cc";
  v77 = 8754;
  v78 = &v75;
  v79[0] = "Maximum playout delay ";
  v79[1] = &v76;
  if ((*(v1 + 4416) & 1) == 0)
  {
    goto LABEL_224;
  }

  webrtc::webrtc_logging_impl::MakeVal<webrtc::TimeDelta,(void *)0>((v1 + 4408), v11, &v93);
  if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v80, v93.__r_.__value_.__l.__data_, v93.__r_.__value_.__l.__size_);
    v81 = v79;
    if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v93.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v80 = v93;
    v81 = v79;
  }

  v82 = " overrides minimum delay. frame min delay=";
  v83 = &v80;
  if (*(v1 + 4368))
  {
    v12.var0 = *(v1 + 4360);
    memset(&v86, 0, sizeof(v86));
    absl::AlphaNum::AlphaNum<webrtc::TimeDelta,void>(&v93, v12, &v86);
    absl::StrCat(&v73, v93.__r_.__value_.__l.__data_, v93.__r_.__value_.__l.__size_);
    if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v86.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    std::string::basic_string[abi:sn200100]<0>(&v73, "<unset>");
  }

  if (*(v1 + 4384))
  {
    v13.var0 = *(v1 + 4376);
    memset(&v86, 0, sizeof(v86));
    absl::AlphaNum::AlphaNum<webrtc::TimeDelta,void>(&v93, v13, &v86);
    absl::StrCat(&v71, v93.__r_.__value_.__l.__data_, v93.__r_.__value_.__l.__size_);
    if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v86.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    std::string::basic_string[abi:sn200100]<0>(&v71, "<unset>");
  }

  if (*(v1 + 4400))
  {
    v14.var0 = *(v1 + 4392);
    memset(&v86, 0, sizeof(v86));
    absl::AlphaNum::AlphaNum<webrtc::TimeDelta,void>(&v93, v14, &v86);
    absl::StrCat(&__p, v93.__r_.__value_.__l.__data_, v93.__r_.__value_.__l.__size_);
    if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v86.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    std::string::basic_string[abi:sn200100]<0>(&__p, "<unset>");
  }

  webrtc::webrtc_logging_impl::Log("\r\t\n\t\n\t\n\t\n", v15, v16, v17, v18, v19, v20, v21, **(v83[1].__r_.__value_.__r.__words[0] + 8));
  if (v70 < 0)
  {
    operator delete(__p);
    if ((v72 & 0x80000000) == 0)
    {
LABEL_35:
      if ((v74 & 0x80000000) == 0)
      {
        goto LABEL_36;
      }

LABEL_77:
      operator delete(v73);
      if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

LABEL_78:
      operator delete(v80.__r_.__value_.__l.__data_);
      goto LABEL_37;
    }
  }

  else if ((v72 & 0x80000000) == 0)
  {
    goto LABEL_35;
  }

  operator delete(v71);
  if (v74 < 0)
  {
    goto LABEL_77;
  }

LABEL_36:
  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_78;
  }

LABEL_37:
  if ((v90 & 1) + (v88 & 1) + (v92 & 1) < 2)
  {
    goto LABEL_207;
  }

  v22 = *(v1 + 2144);
  pthread_mutex_lock((v22 + 8));
  v23 = *(v22 + 104);
  pthread_mutex_unlock((v22 + 8));
  if ((v85 & 1) == 0)
  {
    goto LABEL_224;
  }

  if (v23 == v84 || (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) != 0)
  {
    goto LABEL_207;
  }

  v76 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/video_receive_stream2.cc";
  v77 = 8874;
  v78 = v79;
  v82 = "Multiple playout delays set. Actual delay value set to ";
  v83 = &v76;
  if ((v85 & 1) == 0)
  {
    goto LABEL_224;
  }

  webrtc::webrtc_logging_impl::MakeVal<webrtc::TimeDelta,(void *)0>(&v84, v24, &v80);
  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v93, v80.__r_.__value_.__l.__data_, v80.__r_.__value_.__l.__size_);
    v94 = &v82;
    if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v80.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v93 = v80;
    v94 = &v82;
  }

  __p = " frame min delay=";
  v69 = &v93;
  if (*(v1 + 4368))
  {
    v32 = *v2;
    memset(&v86, 0, sizeof(v86));
    webrtc::ToString(v32, v25, &v80);
    if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = &v80;
    }

    else
    {
      v31 = v80.__r_.__value_.__r.__words[0];
    }

    if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v80.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v80.__r_.__value_.__l.__size_;
    }

    if (!v31 && size)
    {
      goto LABEL_224;
    }

    v25.var0 = (v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? 22 : (v86.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v33 = (v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v86.__r_.__value_.__r.__words[2]) : v86.__r_.__value_.__l.__size_;
    if (v25.var0 - v33 >= size)
    {
      if (size)
      {
        if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v34 = &v86;
        }

        else
        {
          v34 = v86.__r_.__value_.__r.__words[0];
        }

        if ((size & 0x8000000000000000) != 0)
        {
          goto LABEL_224;
        }

        v35 = v34 + v33;
        if ((v34 + v33) <= v31 && &v35[size] > v31)
        {
          goto LABEL_224;
        }

        v36 = size;
        memmove(v35, v31, size);
        v37 = v33 + v36;
        if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
        {
          v86.__r_.__value_.__l.__size_ = v33 + v36;
        }

        else
        {
          *(&v86.__r_.__value_.__s + 23) = v37 & 0x7F;
        }

        v34->__r_.__value_.__s.__data_[v37] = 0;
      }
    }

    else
    {
      std::string::__grow_by_and_replace(&v86, v25.var0, v33 + size - v25.var0, v33, v33, 0, size, v31);
    }

    if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v80.__r_.__value_.__l.__data_);
    }

    v38 = (v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v86 : v86.__r_.__value_.__r.__words[0];
    v39 = (v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v86.__r_.__value_.__r.__words[2]) : v86.__r_.__value_.__l.__size_;
    if (!v38 && v39)
    {
      goto LABEL_224;
    }

    if (v39 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_225;
    }

    if (v39 > 0x16)
    {
      operator new();
    }

    v74 = v39;
    v40 = (&v73 + v39);
    if (&v73 <= v38 && v40 > v38)
    {
      goto LABEL_224;
    }

    if (v39)
    {
      memmove(&v73, v38, v39);
    }

    v40->__r_.__value_.__s.__data_[0] = 0;
    if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v86.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v74 = 7;
    if (&v73 <= "<unset>" && &v73 + 7 > "<unset>")
    {
      goto LABEL_224;
    }

    strcpy(&v73, "<unset>");
  }

  if (*(v1 + 4384))
  {
    v41 = *v3;
    memset(&v86, 0, sizeof(v86));
    webrtc::ToString(v41, v25, &v80);
    if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = &v80;
    }

    else
    {
      v31 = v80.__r_.__value_.__r.__words[0];
    }

    if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v80.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v80.__r_.__value_.__l.__size_;
    }

    if (!v31 && size)
    {
      goto LABEL_224;
    }

    v25.var0 = (v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? 22 : (v86.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v42 = (v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v86.__r_.__value_.__r.__words[2]) : v86.__r_.__value_.__l.__size_;
    if (v25.var0 - v42 >= size)
    {
      if (size)
      {
        if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v43 = &v86;
        }

        else
        {
          v43 = v86.__r_.__value_.__r.__words[0];
        }

        if ((size & 0x8000000000000000) != 0)
        {
          goto LABEL_224;
        }

        v44 = v43 + v42;
        if ((v43 + v42) <= v31 && &v44[size] > v31)
        {
          goto LABEL_224;
        }

        v45 = size;
        memmove(v44, v31, size);
        v46 = v42 + v45;
        if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
        {
          v86.__r_.__value_.__l.__size_ = v42 + v45;
        }

        else
        {
          *(&v86.__r_.__value_.__s + 23) = v46 & 0x7F;
        }

        v43->__r_.__value_.__s.__data_[v46] = 0;
      }
    }

    else
    {
      std::string::__grow_by_and_replace(&v86, v25.var0, v42 + size - v25.var0, v42, v42, 0, size, v31);
    }

    if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v80.__r_.__value_.__l.__data_);
    }

    v47 = (v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v86 : v86.__r_.__value_.__r.__words[0];
    v48 = (v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v86.__r_.__value_.__r.__words[2]) : v86.__r_.__value_.__l.__size_;
    if (!v47 && v48)
    {
      goto LABEL_224;
    }

    if (v48 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_225;
    }

    if (v48 > 0x16)
    {
      operator new();
    }

    v72 = v48;
    v49 = (&v71 + v48);
    if (&v71 <= v47 && v49 > v47)
    {
      goto LABEL_224;
    }

    if (v48)
    {
      memmove(&v71, v47, v48);
    }

    v49->__r_.__value_.__s.__data_[0] = 0;
    if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v86.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v72 = 7;
    if (&v71 <= "<unset>" && &v71 + 7 > "<unset>")
    {
      goto LABEL_224;
    }

    strcpy(&v71, "<unset>");
  }

  if ((*(v1 + 4400) & 1) == 0)
  {
    *(&v80.__r_.__value_.__s + 23) = 7;
    if (&v80 <= "<unset>" && v80.__r_.__value_.__r.__words + 7 > "<unset>")
    {
      goto LABEL_224;
    }

    strcpy(&v80, "<unset>");
    goto LABEL_203;
  }

  v50 = *v4;
  memset(&v86, 0, sizeof(v86));
  webrtc::ToString(v50, v25, &v80);
  if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v31 = &v80;
  }

  else
  {
    v31 = v80.__r_.__value_.__r.__words[0];
  }

  if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v80.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v80.__r_.__value_.__l.__size_;
  }

  if (!v31 && size)
  {
    goto LABEL_224;
  }

  v25.var0 = (v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? 22 : (v86.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v51 = (v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v86.__r_.__value_.__r.__words[2]) : v86.__r_.__value_.__l.__size_;
  if (v25.var0 - v51 >= size)
  {
    if (size)
    {
      if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v52 = &v86;
      }

      else
      {
        v52 = v86.__r_.__value_.__r.__words[0];
      }

      if ((size & 0x8000000000000000) != 0)
      {
        goto LABEL_224;
      }

      v53 = v52 + v51;
      if ((v52 + v51) <= v31 && &v53[size] > v31)
      {
        goto LABEL_224;
      }

      v54 = size;
      memmove(v53, v31, size);
      v55 = v51 + v54;
      if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
      {
        v86.__r_.__value_.__l.__size_ = v51 + v54;
      }

      else
      {
        *(&v86.__r_.__value_.__s + 23) = v55 & 0x7F;
      }

      v52->__r_.__value_.__s.__data_[v55] = 0;
    }
  }

  else
  {
    std::string::__grow_by_and_replace(&v86, v25.var0, v51 + size - v25.var0, v51, v51, 0, size, v31);
  }

  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v80.__r_.__value_.__l.__data_);
  }

  v56 = (v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v86 : v86.__r_.__value_.__r.__words[0];
  v57 = (v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v86.__r_.__value_.__r.__words[2]) : v86.__r_.__value_.__l.__size_;
  if (!v56 && v57)
  {
LABEL_224:
    __break(1u);
  }

  if (v57 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_225:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (v57 > 0x16)
  {
    operator new();
  }

  *(&v80.__r_.__value_.__s + 23) = v57;
  v58 = (&v80 + v57);
  if (&v80 <= v56 && v58 > v56)
  {
    goto LABEL_224;
  }

  if (v57)
  {
    memmove(&v80, v56, v57);
  }

  v58->__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v86.__r_.__value_.__l.__data_);
  }

LABEL_203:
  webrtc::webrtc_logging_impl::Log("\r\t\n\t\n\t\n\t\n", v25.var0, v26, v27, v28, v29, size, v31, **(v69[1].__r_.__value_.__r.__words[0] + 8));
  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v80.__r_.__value_.__l.__data_);
    if ((v72 & 0x80000000) == 0)
    {
LABEL_205:
      if ((v74 & 0x80000000) == 0)
      {
        goto LABEL_206;
      }

      goto LABEL_213;
    }
  }

  else if ((v72 & 0x80000000) == 0)
  {
    goto LABEL_205;
  }

  operator delete(v71);
  if (v74 < 0)
  {
LABEL_213:
    operator delete(v73);
    if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_214;
    }

LABEL_207:
    if (*(v1 + 4416) == 1)
    {
      goto LABEL_208;
    }

    goto LABEL_215;
  }

LABEL_206:
  if ((SHIBYTE(v93.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_207;
  }

LABEL_214:
  operator delete(v93.__r_.__value_.__l.__data_);
  if (*(v1 + 4416) != 1)
  {
LABEL_215:
    if (v85)
    {
      v62.var0 = v84;
      this = webrtc::VCMTiming::set_min_playout_delay(*(v1 + 2144), v62);
      if (*(v1 + 4368) != 1)
      {
        return this;
      }

      goto LABEL_217;
    }

    goto LABEL_224;
  }

LABEL_208:
  if ((v85 & 1) == 0)
  {
    goto LABEL_224;
  }

  v59 = *(v1 + 2144);
  v60.var0 = v84;
  v61.var0 = *(v1 + 4408);
  webrtc::VideoPlayoutDelay::VideoPlayoutDelay(&v93, v60, v61);
  pthread_mutex_lock((v59 + 8));
  *(v59 + 104) = *&v93.__r_.__value_.__l.__data_;
  this = pthread_mutex_unlock((v59 + 8));
  if (*(v1 + 4368) != 1)
  {
    return this;
  }

LABEL_217:
  if (!*(v1 + 4360) && *(v1 + 4416) == 1)
  {
    v63 = *(v1 + 4408);
    if (v63 >= 1)
    {
      v64 = v63 * 0.000001 * 60.0;
      if (v63 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v64 = INFINITY;
      }

      v65 = rint(v64) - *(*(*(v1 + 4272) + 848) + 32);
      v66 = v65 & ~(v65 >> 31);
      v67 = *(v1 + 2144);
      pthread_mutex_lock((v67 + 8));
      *(v67 + 276) = 1;
      *(v67 + 272) = v66;
      return pthread_mutex_unlock((v67 + 8));
    }
  }

  return this;
}

unint64_t webrtc::internal::VideoReceiveStream2::GetBaseMinimumPlayoutDelayMs(webrtc::internal::VideoReceiveStream2 *this)
{
  if (*(this + 4384) == 1)
  {
    v1 = *(this + 547);
    if ((v1 & 0x8000000000000000) == 0)
    {
      if (v1 % 0x3E8 <= 0x1F3)
      {
        return v1 / 0x3E8;
      }

      else
      {
        return v1 / 0x3E8 + 1;
      }
    }
  }

  else
  {
    v1 = -1000;
  }

  v3 = -v1;
  v4 = v3 / 0x3E8;
  if (v3 % 0x3E8 <= 0x1F4)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  return v5 - v4;
}

void webrtc::internal::VideoReceiveStream2::OnFrame(webrtc::internal::VideoReceiveStream2 *this, const webrtc::VideoFrame *a2)
{
  (*(**(this + 32) + 16))(*(this + 32));
  v4 = *(a2 + 23);
  if (v4)
  {
    atomic_fetch_add_explicit(v4, 1u, memory_order_relaxed);
  }

  (*(**(this + 9) + 16))(*(this + 9));
  v5 = *(a2 + 1);
  if (v5)
  {
    (*(*v5 + 40))(v5);
    v6 = *(a2 + 1);
    if (v6)
    {
      (*(*v6 + 48))(v6);
    }
  }

  (*(**(this + 44) + 240))(*(this + 44));
  v7 = *(this + 571);
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 1u, memory_order_relaxed);
  }

  if (v4)
  {
    atomic_fetch_add_explicit(v4, 1u, memory_order_relaxed);
  }

  operator new();
}

uint64_t webrtc::internal::VideoReceiveStream2::SetFrameDecryptor(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v5 = v2;
  webrtc::RtpVideoStreamReceiver2::SetFrameDecryptor(a1 + 2456, &v5);
  result = v5;
  if (v5)
  {
    v4 = *(*v5 + 8);

    return v4();
  }

  return result;
}

void webrtc::internal::VideoReceiveStream2::OnCompleteFrame(webrtc::internal::VideoReceiveStream2 *this, uint64_t *a2)
{
  v4 = *a2;
  if (*(*a2 + 136))
  {
    v6 = *(v4 + 120);
    v5 = *(v4 + 128);
    if ((*(this + 4368) & 1) == 0)
    {
      *(this + 4368) = 1;
    }

    *(this + 545) = v6;
    if ((*(this + 4416) & 1) == 0)
    {
      *(this + 4416) = 1;
    }

    *(this + 551) = v5;
    webrtc::internal::VideoReceiveStream2::UpdatePlayoutDelays(this);
    v4 = *a2;
  }

  v7 = *(this + 534);
  *a2 = 0;
  v15 = v4;
  inserted = webrtc::VideoStreamBufferController::InsertFrame(v7, &v15);
  v10 = v9;
  v11 = v15;
  v15 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  if (v10)
  {
    v12 = *(this + 384);
    if (v12)
    {
      v13 = *(this + 416);
      if (v13)
      {
        v14 = this + 3328;
        do
        {
          if (*(v13 + 4) >= inserted)
          {
            v14 = v13;
          }

          v13 = *&v13[8 * (*(v13 + 4) < inserted)];
        }

        while (v13);
        if (v14 != this + 3328 && *(v14 + 4) <= inserted)
        {
          webrtc::NackRequester::ClearUpTo(v12, *(v14 + 20));
        }
      }
    }
  }
}

void non-virtual thunk towebrtc::internal::VideoReceiveStream2::OnCompleteFrame(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  if (*(*a2 + 136))
  {
    v5 = a1 - 16;
    v7 = *(v4 + 120);
    v6 = *(v4 + 128);
    if ((*(a1 + 4352) & 1) == 0)
    {
      *(a1 + 4352) = 1;
    }

    *(a1 + 4344) = v7;
    if ((*(a1 + 4400) & 1) == 0)
    {
      *(a1 + 4400) = 1;
    }

    *(a1 + 4392) = v6;
    webrtc::internal::VideoReceiveStream2::UpdatePlayoutDelays(v5);
    v4 = *a2;
  }

  v8 = *(a1 + 4256);
  *a2 = 0;
  v16 = v4;
  inserted = webrtc::VideoStreamBufferController::InsertFrame(v8, &v16);
  v11 = v10;
  v12 = v16;
  v16 = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  if (v11)
  {
    v13 = *(a1 + 3056);
    if (v13)
    {
      v14 = *(a1 + 3312);
      if (v14)
      {
        v15 = a1 + 3312;
        do
        {
          if (*(v14 + 32) >= inserted)
          {
            v15 = v14;
          }

          v14 = *(v14 + 8 * (*(v14 + 32) < inserted));
        }

        while (v14);
        if (v15 != a1 + 3312 && *(v15 + 32) <= inserted)
        {
          webrtc::NackRequester::ClearUpTo(v13, *(v15 + 40));
        }
      }
    }
  }
}

uint64_t webrtc::internal::VideoReceiveStream2::OnRttUpdate(webrtc::internal::VideoReceiveStream2 *this, uint64_t a2, uint64_t a3)
{
  v5 = 1000 * a3;
  v6.var0 = 1000 * a3;
  result = webrtc::RttFilter::Update(*(this + 534) + 544, v6);
  v8 = *(this + 384);
  if (v8)
  {
    *(v8 + 152) = v5;
  }

  *(this + 239) = a2;
  return result;
}

uint64_t non-virtual thunk towebrtc::internal::VideoReceiveStream2::OnRttUpdate(webrtc::internal::VideoReceiveStream2 *this, uint64_t a2, uint64_t a3)
{
  v5 = 1000 * a3;
  v6.var0 = 1000 * a3;
  result = webrtc::RttFilter::Update(*(this + 530) + 544, v6);
  v8 = *(this + 380);
  if (v8)
  {
    *(v8 + 152) = v5;
  }

  *(this + 235) = a2;
  return result;
}

uint64_t webrtc::internal::VideoReceiveStream2::GetInfo@<X0>(webrtc::internal::VideoReceiveStream2 *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 369);
  pthread_mutex_lock((v4 + 896));
  if (!*(v4 + 976))
  {
    result = pthread_mutex_unlock((v4 + 896));
LABEL_16:
    v20 = 0;
    *a2 = 0;
    goto LABEL_17;
  }

  v5 = *(v4 + 988);
  v6 = *(v4 + 984);
  v7 = *(v4 + 992);
  result = pthread_mutex_unlock((v4 + 896));
  if (*(this + 3472) != 1 || *(this + 3496) != 1)
  {
    goto LABEL_16;
  }

  v9 = *(this + 867);
  v10 = *(this + 436);
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

  v13 = v12 - -v10 / 0x3E8uLL;
  if (v10 < 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = v11;
  }

  v15 = *(this + 268);
  pthread_mutex_lock((v15 + 8));
  v16 = *(v15 + 120);
  v17 = 0x7FFFFFFFFFFFFFFFLL;
  if (v16 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = *(v15 + 88);
    if (*(v18 + 80))
    {
      v19 = 1000 * *(*(v18 + 88) + 32);
    }

    else
    {
      v19 = 0;
    }

    v21 = v19 + v16;
    v22 = 0x8000000000000000;
    if (v16 != 0x8000000000000000)
    {
      v16 = v21;
    }

    v23 = *(v15 + 96);
    if (v23 != 0x8000000000000000 && v16 != 0x8000000000000000)
    {
      v22 = v16 + v23;
    }

    if (v16 == 0x7FFFFFFFFFFFFFFFLL || v23 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v22;
    }
  }

  if (*(v15 + 104) <= v17)
  {
    v26 = v17;
  }

  else
  {
    v26 = *(v15 + 104);
  }

  result = pthread_mutex_unlock((v15 + 8));
  v27 = v26 / 0x3E8uLL;
  if (v26 % 0x3E8uLL > 0x1F3)
  {
    LODWORD(v27) = v27 + 1;
  }

  if (-v26 % 0x3E8uLL <= 0x1F4)
  {
    v28 = 0;
  }

  else
  {
    v28 = -1;
  }

  v29 = v28 - -v26 / 0x3E8uLL;
  *a2 = v14;
  if (v26 < 0)
  {
    LODWORD(v27) = v29;
  }

  *(a2 + 8) = v9;
  *(a2 + 12) = v5;
  *(a2 + 16) = v6;
  *(a2 + 20) = v7;
  *(a2 + 24) = v27;
  v20 = 1;
LABEL_17:
  *(a2 + 32) = v20;
  return result;
}

uint64_t non-virtual thunk towebrtc::internal::VideoReceiveStream2::GetInfo@<X0>(webrtc::internal::VideoReceiveStream2 *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 366);
  pthread_mutex_lock((v4 + 896));
  if (!*(v4 + 976))
  {
    result = pthread_mutex_unlock((v4 + 896));
LABEL_16:
    v20 = 0;
    *a2 = 0;
    goto LABEL_17;
  }

  v5 = *(v4 + 988);
  v6 = *(v4 + 984);
  v7 = *(v4 + 992);
  result = pthread_mutex_unlock((v4 + 896));
  if (*(this + 3448) != 1 || *(this + 3472) != 1)
  {
    goto LABEL_16;
  }

  v9 = *(this + 861);
  v10 = *(this + 433);
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

  v13 = v12 - -v10 / 0x3E8uLL;
  if (v10 < 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = v11;
  }

  v15 = *(this + 265);
  pthread_mutex_lock((v15 + 8));
  v16 = *(v15 + 120);
  v17 = 0x7FFFFFFFFFFFFFFFLL;
  if (v16 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = *(v15 + 88);
    if (*(v18 + 80))
    {
      v19 = 1000 * *(*(v18 + 88) + 32);
    }

    else
    {
      v19 = 0;
    }

    v21 = v19 + v16;
    v22 = 0x8000000000000000;
    if (v16 != 0x8000000000000000)
    {
      v16 = v21;
    }

    v23 = *(v15 + 96);
    if (v23 != 0x8000000000000000 && v16 != 0x8000000000000000)
    {
      v22 = v16 + v23;
    }

    if (v16 == 0x7FFFFFFFFFFFFFFFLL || v23 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v22;
    }
  }

  if (*(v15 + 104) <= v17)
  {
    v26 = v17;
  }

  else
  {
    v26 = *(v15 + 104);
  }

  result = pthread_mutex_unlock((v15 + 8));
  v27 = v26 / 0x3E8uLL;
  if (v26 % 0x3E8uLL > 0x1F3)
  {
    LODWORD(v27) = v27 + 1;
  }

  if (-v26 % 0x3E8uLL <= 0x1F4)
  {
    v28 = 0;
  }

  else
  {
    v28 = -1;
  }

  v29 = v28 - -v26 / 0x3E8uLL;
  *a2 = v14;
  if (v26 < 0)
  {
    LODWORD(v27) = v29;
  }

  *(a2 + 8) = v9;
  *(a2 + 12) = v5;
  *(a2 + 16) = v6;
  *(a2 + 20) = v7;
  *(a2 + 24) = v27;
  v20 = 1;
LABEL_17:
  *(a2 + 32) = v20;
  return result;
}

uint64_t webrtc::internal::VideoReceiveStream2::SetMinimumPlayoutDelay(webrtc::internal::VideoReceiveStream2 *this, int a2)
{
  if ((*(this + 4400) & 1) == 0)
  {
    *(this + 4400) = 1;
  }

  *(this + 549) = 1000 * a2;
  webrtc::internal::VideoReceiveStream2::UpdatePlayoutDelays(this);
  return 1;
}

uint64_t non-virtual thunk towebrtc::internal::VideoReceiveStream2::SetMinimumPlayoutDelay(webrtc::internal::VideoReceiveStream2 *this, int a2)
{
  if ((*(this + 4376) & 1) == 0)
  {
    *(this + 4376) = 1;
  }

  *(this + 546) = 1000 * a2;
  webrtc::internal::VideoReceiveStream2::UpdatePlayoutDelays(this - 24);
  return 1;
}

void webrtc::internal::VideoReceiveStream2::OnEncodedFrame(uint64_t a1, uint64_t *a2)
{
  v4 = (a1 + 1880);
  (*(**(a1 + 72) + 16))(*(a1 + 72));
  v6 = *a2;
  v19 = -1;
  if (*(v6 + 424) == 1)
  {
    v7 = *(v6 + 144);
    if (v7)
    {
      v7 = (*(*v7 + 40))(v7);
      v6 = *a2;
    }

    if ((webrtc::vp8::GetQp(v7, *(v6 + 152), &v19, v5) & 1) == 0 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v8, v9, v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/video_receive_stream2.cc");
    }
  }

  v15 = *(*a2 + 424);
  v16 = v19;
  *(a1 + 1948) = v15;
  if (v15 == 1 && v16 != -1)
  {
    v18 = vdupq_n_s64(1uLL);
    v18.i64[0] = v16;
    *v4 = vaddq_s64(*v4, v18);
    if (*(a1 + 1900) != 1 || *(a1 + 1896) < v16)
    {
      *(a1 + 1896) = v16;
      *(a1 + 1900) = 1;
    }

    if (*(a1 + 1908) != 1 || *(a1 + 1904) > v16)
    {
      *(a1 + 1904) = v16;
      *(a1 + 1908) = 1;
    }
  }

  *a2 = 0;
  operator new();
}

void webrtc::internal::VideoReceiveStream2::OnDecodableFrameTimeout(webrtc::internal::VideoReceiveStream2 *this, TimeDelta a2)
{
  v3 = this + 3468;
  var0 = a2.var0;
  v4 = (*(**(this + 9) + 16))(*(this + 9));
  if (*(this + 3496) != 1)
  {
    goto LABEL_32;
  }

  v5 = *(this + 436);
  v6 = v5 / 0x3E8uLL;
  if (v5 % 0x3E8uLL > 0x1F3)
  {
    ++v6;
  }

  v7 = -v5 % 0x3E8uLL <= 0x1F4 ? 0 : -1;
  v8 = v7 - -v5 / 0x3E8uLL;
  v9 = v5 < 0 ? v8 : v6;
  if (v4 == 0x7FFFFFFFFFFFFFFFLL || ((v10 = v4 - 1000 * v9, v4 != 0x8000000000000000) ? (v11 = v10 < 5000000) : (v11 = 1), !v11))
  {
LABEL_32:
    if (*(this + 1992) == 1)
    {
      *(this + 1992) = 0;
    }

    *(*(this + 213) + 232) = 1;
    goto LABEL_35;
  }

  if (*(this + 3512) != 1)
  {
    goto LABEL_28;
  }

  v12 = *(this + 438);
  v13 = v12 / 0x3E8uLL;
  if (v12 % 0x3E8uLL > 0x1F3)
  {
    ++v13;
  }

  if (-v12 % 0x3E8uLL <= 0x1F4)
  {
    v14 = 0;
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 - -v12 / 0x3E8uLL;
  if (v12 >= 0)
  {
    v15 = v13;
  }

  v16 = v4 - 1000 * v15;
  if (v4 == 0x8000000000000000)
  {
    v16 = 0x8000000000000000;
  }

  if (v16 >= *(this + 543))
  {
LABEL_28:
    if (*(this + 308) != 1 || *(this + 3528) == 1)
    {
      v17 = v4;
      v18 = *v3;
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
      {
        goto LABEL_61;
      }

      v43[0] = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/video_receive_stream2.cc";
      v43[1] = 7082;
      v43[2] = &v42;
      v44[0] = "No decodable frame in ";
      v44[1] = v43;
      webrtc::webrtc_logging_impl::MakeVal<webrtc::TimeDelta,(void *)0>(&var0, v19, &v48);
      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v45, v48.__r_.__value_.__l.__data_, v48.__r_.__value_.__l.__size_);
        v46 = v44;
        if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v48.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v45 = v48;
        v46 = v44;
      }

      if ((v18 & 0x100000000) != 0)
      {
        v48.__r_.__value_.__r.__words[2] = 0x1600000000000000;
        *&v48.__r_.__value_.__l.__data_ = 0uLL;
        v28 = absl::numbers_internal::FastIntToBuffer(v18, &v48, v21);
        v29 = v28 - &v48;
        if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          if (v48.__r_.__value_.__l.__size_ < v29)
          {
            goto LABEL_73;
          }

          v30 = v48.__r_.__value_.__r.__words[0];
          v48.__r_.__value_.__l.__size_ = v28 - &v48;
        }

        else
        {
          if (v29 > SHIBYTE(v48.__r_.__value_.__r.__words[2]))
          {
            goto LABEL_73;
          }

          *(&v48.__r_.__value_.__s + 23) = v28 - &v48;
          v30 = &v48;
        }

        v27 = v30 + v29;
      }

      else
      {
        *(&v48.__r_.__value_.__s + 23) = 9;
        v27 = &v48.__r_.__value_.__s.__data_[9];
        if (&v48 <= "<not set>" && &v48.__r_.__value_.__r.__words[1] + 1 > "<not set>")
        {
          goto LABEL_72;
        }

        v48.__r_.__value_.__s.__data_[8] = 62;
        v48.__r_.__value_.__r.__words[0] = *"<not set>";
      }

      *v27 = 0;
      if (v3[1120] == 1)
      {
        v31 = *(this + 1146);
        v40 = 0;
        v41 = 0x1600000000000000;
        __p = 0;
        v32 = absl::numbers_internal::FastIntToBuffer(v31, &__p, v21);
        v33 = v32 - &__p;
        if ((SHIBYTE(v41) & 0x8000000000000000) != 0)
        {
          if (v40 >= v33)
          {
            p_p = __p;
            v40 = v32 - &__p;
            goto LABEL_57;
          }
        }

        else if (v33 <= SHIBYTE(v41))
        {
          HIBYTE(v41) = v32 - &__p;
          p_p = &__p;
LABEL_57:
          v35 = &p_p[v33];
LABEL_58:
          *v35 = 0;
          webrtc::webrtc_logging_impl::Log("\r\t\n\t\n\t\n\t", v20, v21, v22, v23, v24, v25, v26, *v46[1]);
          if (SHIBYTE(v41) < 0)
          {
            operator delete(__p);
            if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_60:
              if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_61;
              }

              goto LABEL_66;
            }
          }

          else if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_60;
          }

          operator delete(v48.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_61:
            v36 = *(this + 2976);
            if (v36 != 1)
            {
LABEL_62:
              v37 = v17;
              if (v36 != 2)
              {
LABEL_69:
                if ((v3[868] & 1) == 0)
                {
                  v3[868] = 1;
                }

                *(this + 541) = v37;
                goto LABEL_35;
              }

              v38 = 128;
LABEL_68:
              (*(**(this + 369) + 488))(*(this + 369), v38);
              v37 = v17;
              goto LABEL_69;
            }

LABEL_67:
            v38 = 32;
            goto LABEL_68;
          }

LABEL_66:
          operator delete(v45.__r_.__value_.__l.__data_);
          v36 = *(this + 2976);
          if (v36 != 1)
          {
            goto LABEL_62;
          }

          goto LABEL_67;
        }

LABEL_73:
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      HIBYTE(v41) = 9;
      v35 = &v40 + 1;
      if (&__p > "<not set>" || &v40 + 1 <= "<not set>")
      {
        LOBYTE(v40) = 62;
        __p = *"<not set>";
        goto LABEL_58;
      }

LABEL_72:
      __break(1u);
      goto LABEL_73;
    }
  }

LABEL_35:
  webrtc::VideoStreamBufferController::StartNextDecode(*(this + 534), v3[852]);
}

void webrtc::internal::anonymous namespace::WebRtcRecordableEncodedFrame::~WebRtcRecordableEncodedFrame(webrtc::internal::_anonymous_namespace_::WebRtcRecordableEncodedFrame *this)
{
  *this = &unk_2882A2730;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(*(this + 1));
  }
}

{
  *this = &unk_2882A2730;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(*(this + 1));
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::internal::VideoReceiveStream2::SetAndGetRecordingState(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a1 + 4096;
  webrtc::Event::Event(&v19, 0, 0);
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  v9 = *(v8 + 232);
  *v13 = *(a1 + 4329);
  *&v13[3] = *(a1 + 4332);
  v10 = *(v8 + 240);
  if (a3)
  {
    v11 = (*(**(a1 + 72) + 16))(*(a1 + 72));
    if (*(v8 + 240))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*(a2 + 40) == 1)
  {
    v11 = 1000 * *(a2 + 32);
    if (*(v8 + 240))
    {
      goto LABEL_4;
    }
  }

  else
  {
    v11 = 0;
    if (*(v8 + 240))
    {
LABEL_4:
      *(a1 + 4328) = v11;
      v12 = *(a2 + 24);
      if (v12)
      {
        if (v12 == a2)
        {
          v15 = v14;
          (*(*v12 + 24))(v12, v14);
        }

        else
        {
          v15 = *(a2 + 24);
          *(a2 + 24) = 0;
        }
      }

      else
      {
        v15 = 0;
      }

      v16 = v9;
      *v17 = *v13;
      *&v17[3] = *&v13[3];
      v18 = v10;
      operator new();
    }
  }

LABEL_3:
  *(v8 + 240) = 1;
  goto LABEL_4;
}

uint64_t webrtc::internal::VideoReceiveStream2::GenerateKeyFrame(webrtc::internal::VideoReceiveStream2 *this)
{
  v2 = this + 4096;
  result = (*(**(this + 9) + 16))(*(this + 9));
  v4 = result;
  v5 = *(this + 2976);
  if (v5 == 1)
  {
    v6 = 32;
  }

  else
  {
    if (v5 != 2)
    {
      goto LABEL_6;
    }

    v6 = 128;
  }

  result = (*(**(this + 369) + 488))(*(this + 369), v6);
LABEL_6:
  if ((v2[240] & 1) == 0)
  {
    v2[240] = 1;
  }

  *(this + 541) = v4;
  v2[360] = 1;
  return result;
}

uint64_t webrtc::internal::VideoReceiveStream2::UpdateRtxSsrc(webrtc::internal::VideoReceiveStream2 *this, int a2)
{
  v3 = *(this + 539);
  *(this + 539) = 0;
  if (v3)
  {
    v4 = a2;
    (*(*v3 + 8))(v3);
    a2 = v4;
  }

  *(this + 1076) = a2;
  *(this + 4308) = 1;
  (*(**(this + 535) + 16))(&v7);
  v5 = v7;
  v7 = 0;
  result = *(this + 539);
  *(this + 539) = v5;
  if (result)
  {
    (*(*result + 8))(result);
    result = v7;
    v7 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t webrtc::internal::anonymous namespace::NullVideoDecoder::Configure(webrtc::internal::_anonymous_namespace_::NullVideoDecoder *this, const webrtc::VideoDecoder::Settings *a2)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/video_receive_stream2.cc");
  }

  return 1;
}

uint64_t webrtc::internal::anonymous namespace::NullVideoDecoder::Decode(webrtc::internal::_anonymous_namespace_::NullVideoDecoder *this, const webrtc::EncodedImage *a2)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/video_receive_stream2.cc");
  }

  return 0;
}

uint64_t webrtc::internal::anonymous namespace::NullVideoDecoder::RegisterDecodeCompleteCallback(webrtc::internal::_anonymous_namespace_::NullVideoDecoder *this, webrtc::DecodedImageCallback *a2)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/video_receive_stream2.cc");
  }

  return 0;
}

uint64_t (***webrtc::internal::anonymous namespace::WebRtcRecordableEncodedFrame::encoded_buffer@<X0>(webrtc::internal::_anonymous_namespace_::WebRtcRecordableEncodedFrame *this@<X0>, void *a2@<X8>))(void)
{
  result = *(this + 1);
  *a2 = result;
  if (result)
  {
    return (**result)(result);
  }

  return result;
}

__n128 webrtc::internal::anonymous namespace::WebRtcRecordableEncodedFrame::color_space@<Q0>(webrtc::internal::_anonymous_namespace_::WebRtcRecordableEncodedFrame *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 68) = 0;
  if (*(this + 108) == 1)
  {
    result = *(this + 56);
    v3 = *(this + 88);
    *(a2 + 32) = *(this + 72);
    *(a2 + 48) = v3;
    *(a2 + 64) = *(this + 104);
    *a2 = *(this + 40);
    *(a2 + 16) = result;
    *(a2 + 68) = 1;
  }

  return result;
}

_BYTE *absl::StrCat(_BYTE *result, _BYTE *a2, size_t a3)
{
  if (!a2 && a3)
  {
    goto LABEL_12;
  }

  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_13;
  }

  if (a3 > 0x16)
  {
    operator new();
  }

  result[23] = a3;
  v3 = &result[a3];
  if (result <= a2 && v3 > a2)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (a3)
  {
    result = memcpy(result, a2, a3);
  }

  *v3 = 0;
  return result;
}

std::string **absl::AlphaNum::AlphaNum<webrtc::TimeDelta,void>(std::string **a1, TimeDelta this, std::string *a3)
{
  result = webrtc::ToString(this.var0, this, __p);
  if ((v19 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v7 = v19;
  }

  else
  {
    v7 = __p[1];
  }

  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7 == 0;
  }

  if (!v8)
  {
LABEL_42:
    __break(1u);
    return result;
  }

  v9 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
  if (v9 >= 0)
  {
    v10 = 22;
  }

  else
  {
    v10 = (a3->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v9 >= 0)
  {
    size = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a3->__r_.__value_.__l.__size_;
  }

  if (v10 - size >= v7)
  {
    if (v7)
    {
      if (v9 >= 0)
      {
        v12 = a3;
      }

      else
      {
        v12 = a3->__r_.__value_.__r.__words[0];
      }

      if ((v7 & 0x8000000000000000) != 0)
      {
        goto LABEL_42;
      }

      result = (v12 + size);
      if (v12 + size <= v6 && v12 + size + v7 > v6)
      {
        goto LABEL_42;
      }

      v14 = v7;
      memmove(result, v6, v7);
      v15 = size + v14;
      if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
      {
        a3->__r_.__value_.__l.__size_ = v15;
        v12->__r_.__value_.__s.__data_[v15] = 0;
        if ((v19 & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }

      *(&a3->__r_.__value_.__s + 23) = v15 & 0x7F;
      v12->__r_.__value_.__s.__data_[v15] = 0;
    }

    if (v19 < 0)
    {
LABEL_33:
      operator delete(__p[0]);
    }
  }

  else
  {
    std::string::__grow_by_and_replace(a3, v10, size + v7 - v10, size, size, 0, v7, v6);
    if (v19 < 0)
    {
      goto LABEL_33;
    }
  }

LABEL_34:
  v16 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  if ((v16 & 0x80u) == 0)
  {
    v17 = a3;
  }

  else
  {
    v17 = a3->__r_.__value_.__r.__words[0];
  }

  if ((v16 & 0x80u) != 0)
  {
    v16 = a3->__r_.__value_.__l.__size_;
  }

  *a1 = v17;
  a1[1] = v16;
  return a1;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::internal::VideoReceiveStream2::Stop(void)::$_0 &&>(uint64_t *a1)
{
  v2 = *a1;
  *(v2 + 369) = 1;
  v3 = *(v2 + 120);
  for (i = *(v2 + 128); v3 != i; v3 += 104)
  {
    webrtc::VCMDecoderDatabase::DeregisterExternalDecoder((v2 + 2328), *(v3 + 96));
  }

  v5 = a1[1];
  pthread_mutex_lock(v5);
  *(v5 + 113) = 1;
  pthread_cond_broadcast((v5 + 64));

  return pthread_mutex_unlock(v5);
}

void absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::internal::VideoReceiveStream2::OnFrame(webrtc::VideoFrame const&)::$_0 &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v5 = 0;
  v6 = 0;
  v4 = 0.0;
  if (webrtc::internal::RtpStreamsSynchronizer::GetStreamSyncOffsetInMs(&v2[506], *v1, *(v1 + 8) / 1000, &v6, &v5, &v4))
  {
    webrtc::internal::ReceiveStatisticsProxy::OnSyncOffsetUpdated(&v2[56], v6, v5, v4);
  }

  webrtc::internal::ReceiveStatisticsProxy::OnRenderedFrame(&v2[56], v1);
  v3.var0 = *(v1 + 32);

  webrtc::SourceTracker::OnFrameDelivered(v2 + 47, (v1 + 40), v3);
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::internal::VideoReceiveStream2::OnFrame(webrtc::VideoFrame const&)::$_0>(char a1, uint64_t *a2, void *a3)
{
  result = *a2;
  if (a1)
  {
    if (result)
    {
      v5 = *(result + 40);
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
  }

  else
  {
    *a3 = result;
  }

  return result;
}

uint64_t **absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::internal::VideoReceiveStream2::OnEncodedFrame(std::unique_ptr<webrtc::EncodedFrame>)::$_0 &&>(uint64_t **result)
{
  v126 = *MEMORY[0x277D85DE8];
  v1 = *result;
  v2 = **result;
  if ((*(v2 + 369) & 1) == 0)
  {
    v3 = v1[3];
    v4 = *(v3 + 160);
    v1[3] = 0;
    v93 = *(v1 + 16);
    v94 = v4;
    v95 = v1;
    v92 = *(v1 + 32);
    v5 = *(v2 + 2432);
    if (v5)
    {
      v6 = *(v3 + 416);
      v7 = v2 + 2432;
      do
      {
        v8 = *(v5 + 32);
        v9 = v8 >= v6;
        v10 = v8 < v6;
        if (v9)
        {
          v7 = v5;
        }

        v5 = *(v5 + 8 * v10);
      }

      while (v5);
      if (v7 != v2 + 2432 && *(v7 + 32) <= v6)
      {
        goto LABEL_125;
      }
    }

    v11 = *(v2 + 120);
    v12 = *(v2 + 128);
    if (v11 == v12)
    {
      goto LABEL_125;
    }

LABEL_14:
    if (*(v11 + 96) != *(v3 + 416))
    {
      webrtc::VCMDecoderDatabase::DeregisterExternalDecoder((v2 + 2328), *(v11 + 96));
      goto LABEL_13;
    }

    (*(**(v2 + 144) + 32))(v111);
    if (!v111[0])
    {
      operator new();
    }

    (*(**(v2 + 64) + 16))(&__p);
    v13 = v103;
    p_p = __p;
    v15 = p_s;
    if ((v103 & 0x80u) != 0)
    {
      v16 = p_s;
    }

    else
    {
      p_p = &__p;
      v16 = v103;
    }

    if (!v16)
    {
      goto LABEL_82;
    }

    v17 = p_p;
    if (v16 < 8)
    {
LABEL_121:
      v40 = &p_p[v16];
      do
      {
        if (*v17 == 59)
        {
          *v17 = 47;
        }

        ++v17;
      }

      while (v17 != v40);
      goto LABEL_81;
    }

    if (v16 < 0x10)
    {
      v18 = 0;
      goto LABEL_24;
    }

    v18 = v16 & 0xFFFFFFFFFFFFFFF0;
    v22 = p_p + 7;
    v23 = v16 & 0xFFFFFFFFFFFFFFF0;
    while (1)
    {
      v24.i64[0] = 0x3B3B3B3B3B3B3B3BLL;
      v24.i64[1] = 0x3B3B3B3B3B3B3B3BLL;
      v25 = vceqq_s8(*(v22 - 7), v24);
      if (v25.i8[0])
      {
        *(v22 - 7) = 47;
        if ((v25.i8[1] & 1) == 0)
        {
LABEL_49:
          if ((v25.i8[2] & 1) == 0)
          {
            goto LABEL_50;
          }

          goto LABEL_66;
        }
      }

      else if ((v25.i8[1] & 1) == 0)
      {
        goto LABEL_49;
      }

      *(v22 - 6) = 47;
      if ((v25.i8[2] & 1) == 0)
      {
LABEL_50:
        if ((v25.i8[3] & 1) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_67;
      }

LABEL_66:
      *(v22 - 5) = 47;
      if ((v25.i8[3] & 1) == 0)
      {
LABEL_51:
        if ((v25.i8[4] & 1) == 0)
        {
          goto LABEL_52;
        }

        goto LABEL_68;
      }

LABEL_67:
      *(v22 - 4) = 47;
      if ((v25.i8[4] & 1) == 0)
      {
LABEL_52:
        if ((v25.i8[5] & 1) == 0)
        {
          goto LABEL_53;
        }

        goto LABEL_69;
      }

LABEL_68:
      *(v22 - 3) = 47;
      if ((v25.i8[5] & 1) == 0)
      {
LABEL_53:
        if ((v25.i8[6] & 1) == 0)
        {
          goto LABEL_54;
        }

        goto LABEL_70;
      }

LABEL_69:
      *(v22 - 2) = 47;
      if ((v25.i8[6] & 1) == 0)
      {
LABEL_54:
        if ((v25.i8[7] & 1) == 0)
        {
          goto LABEL_55;
        }

        goto LABEL_71;
      }

LABEL_70:
      *(v22 - 1) = 47;
      if ((v25.i8[7] & 1) == 0)
      {
LABEL_55:
        if ((v25.i8[8] & 1) == 0)
        {
          goto LABEL_56;
        }

        goto LABEL_72;
      }

LABEL_71:
      *v22 = 47;
      if ((v25.i8[8] & 1) == 0)
      {
LABEL_56:
        if ((v25.i8[9] & 1) == 0)
        {
          goto LABEL_57;
        }

        goto LABEL_73;
      }

LABEL_72:
      v22[1] = 47;
      if ((v25.i8[9] & 1) == 0)
      {
LABEL_57:
        if ((v25.i8[10] & 1) == 0)
        {
          goto LABEL_58;
        }

        goto LABEL_74;
      }

LABEL_73:
      v22[2] = 47;
      if ((v25.i8[10] & 1) == 0)
      {
LABEL_58:
        if ((v25.i8[11] & 1) == 0)
        {
          goto LABEL_59;
        }

        goto LABEL_75;
      }

LABEL_74:
      v22[3] = 47;
      if ((v25.i8[11] & 1) == 0)
      {
LABEL_59:
        if ((v25.i8[12] & 1) == 0)
        {
          goto LABEL_60;
        }

        goto LABEL_76;
      }

LABEL_75:
      v22[4] = 47;
      if ((v25.i8[12] & 1) == 0)
      {
LABEL_60:
        if ((v25.i8[13] & 1) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_77;
      }

LABEL_76:
      v22[5] = 47;
      if ((v25.i8[13] & 1) == 0)
      {
LABEL_61:
        if ((v25.i8[14] & 1) == 0)
        {
          goto LABEL_62;
        }

        goto LABEL_78;
      }

LABEL_77:
      v22[6] = 47;
      if ((v25.i8[14] & 1) == 0)
      {
LABEL_62:
        if (v25.i8[15])
        {
          goto LABEL_79;
        }

        goto LABEL_46;
      }

LABEL_78:
      v22[7] = 47;
      if (v25.i8[15])
      {
LABEL_79:
        v22[8] = 47;
      }

LABEL_46:
      v22 += 16;
      v23 -= 16;
      if (!v23)
      {
        if (v16 == v18)
        {
          goto LABEL_81;
        }

        if ((v16 & 8) == 0)
        {
          v17 = &p_p[v18];
          goto LABEL_121;
        }

LABEL_24:
        v17 = &p_p[v16 & 0xFFFFFFFFFFFFFFF8];
        v19 = v18 - (v16 & 0xFFFFFFFFFFFFFFF8);
        v20 = &p_p[v18 + 3];
        while (2)
        {
          v21 = vceq_s8(*(v20 - 3), 0x3B3B3B3B3B3B3B3BLL);
          if (v21.i8[0])
          {
            *(v20 - 3) = 47;
            if (v21.i8[1])
            {
              goto LABEL_36;
            }

LABEL_28:
            if ((v21.i8[2] & 1) == 0)
            {
              goto LABEL_29;
            }

LABEL_37:
            *(v20 - 1) = 47;
            if (v21.i8[3])
            {
              goto LABEL_38;
            }

LABEL_30:
            if ((v21.i8[4] & 1) == 0)
            {
              goto LABEL_31;
            }

LABEL_39:
            v20[1] = 47;
            if (v21.i8[5])
            {
              goto LABEL_40;
            }

LABEL_32:
            if ((v21.i8[6] & 1) == 0)
            {
              goto LABEL_33;
            }

LABEL_41:
            v20[3] = 47;
            if (v21.i8[7])
            {
LABEL_42:
              v20[4] = 47;
            }
          }

          else
          {
            if ((v21.i8[1] & 1) == 0)
            {
              goto LABEL_28;
            }

LABEL_36:
            *(v20 - 2) = 47;
            if (v21.i8[2])
            {
              goto LABEL_37;
            }

LABEL_29:
            if ((v21.i8[3] & 1) == 0)
            {
              goto LABEL_30;
            }

LABEL_38:
            *v20 = 47;
            if (v21.i8[4])
            {
              goto LABEL_39;
            }

LABEL_31:
            if ((v21.i8[5] & 1) == 0)
            {
              goto LABEL_32;
            }

LABEL_40:
            v20[2] = 47;
            if (v21.i8[6])
            {
              goto LABEL_41;
            }

LABEL_33:
            if (v21.i8[7])
            {
              goto LABEL_42;
            }
          }

          v20 += 8;
          v19 += 8;
          if (!v19)
          {
            if (v16 != (v16 & 0xFFFFFFFFFFFFFFF8))
            {
              goto LABEL_121;
            }

LABEL_81:
            v13 = v103;
            v15 = p_s;
LABEL_82:
            if ((v13 & 0x80u) == 0)
            {
              v26 = v13;
            }

            else
            {
              v26 = v15;
            }

            if (v26)
            {
              __s = &__dst;
              v99 = 256;
              LOBYTE(__dst) = 0;
              if ((v13 & 0x80u) == 0)
              {
                v27 = &__p;
              }

              else
              {
                v27 = __p;
              }

              if ((v13 & 0x80u) == 0)
              {
                v28 = v13;
              }

              else
              {
                v28 = v15;
              }

              if (v28 >= 0xFF)
              {
                v29 = 255;
              }

              else
              {
                v29 = v28;
              }

              memcpy(&__dst, v27, v29);
              *(&__dst + v29) = 0;
              if ((v29 ^ 0xFF) >= 0x17)
              {
                v30 = 23;
              }

              else
              {
                v30 = v29 ^ 0xFF;
              }

              memcpy(&__dst + v29, "/webrtc_receive_stream_", v30);
              v100 = v30 + v29;
              *(&__dst + v100) = 0;
              webrtc::SimpleStringBuilder::AppendFormat(&__s, "%u", *(v2 + 152));
              v31 = v99;
              v32 = v100 + 1;
              memcpy(&__s[v100], "-", v99 != v100 + 1);
              v33 = v100;
              if (v31 != v32)
              {
                v33 = v100 + 1;
              }

              v100 = v33;
              __s[v33] = 0;
              if (webrtc::g_clock)
              {
                v34 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
              }

              else
              {
                if (!dword_28100D8E4)
                {
                  mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
                }

                v34 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
              }

              webrtc::SimpleStringBuilder::AppendFormat(&__s, "%lld", v34 / 1000);
              if (v99 + ~v100 >= 4)
              {
                v35 = 4;
              }

              else
              {
                v35 = v99 + ~v100;
              }

              memcpy(&__s[v100], ".ivf", v35);
              v100 += v35;
              __s[v100] = 0;
              v111[0] = 0;
              if (__s)
              {
                v36 = strlen(__s);
                operator new();
              }

LABEL_203:
              __break(1u);
LABEL_204:
              std::__throw_bad_function_call[abi:sn200100]();
            }

            v37 = v111[0];
            v111[0] = 0;
            v38 = *(v11 + 96);
            if (v37)
            {
              __dst = v37;
              webrtc::VCMDecoderDatabase::RegisterExternalDecoder((v2 + 2328), v38, &__dst);
              if (__dst)
              {
                (*(*__dst + 8))(__dst);
              }

              if ((v103 & 0x80000000) == 0)
              {
LABEL_114:
                v39 = v111[0];
                v111[0] = 0;
                if (!v39)
                {
LABEL_13:
                  v11 += 104;
                  if (v11 != v12)
                  {
                    goto LABEL_14;
                  }

LABEL_125:
                  v41 = v2 + 4096;
                  v42 = *(v3 + 2496);
                  if (*(v2 + 4448) && (v43 = *(v2 + 4552), v44 = *(v2 + 4544), v45 = v43 - v44, v43 - v44 <= 0x1DF))
                  {
                    v46 = *(v2 + 4560);
                    if (v43 >= v46)
                    {
                      v57 = v46 - v44;
                      if (v57 >> 2 <= (v45 >> 3) + 1)
                      {
                        v58 = (v45 >> 3) + 1;
                      }

                      else
                      {
                        v58 = v57 >> 2;
                      }

                      v9 = v57 >= 0x7FFFFFFFFFFFFFF8;
                      v59 = 0x1FFFFFFFFFFFFFFFLL;
                      if (!v9)
                      {
                        v59 = v58;
                      }

                      if (!(v59 >> 61))
                      {
                        operator new();
                      }

                      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
                    }

                    if (!v43)
                    {
                      goto LABEL_203;
                    }

                    *v43 = v3;
                    v47 = v43 + 1;
                    *(v2 + 4552) = v47;
                    if ((v47 - v44) == 480 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
                    {
                      webrtc::webrtc_logging_impl::Log("\r\t", v60, v61, v62, v63, v64, v65, v66, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/video_receive_stream2.cc");
                    }

                    pthread_mutex_lock((v2 + 4464));
                    if (*(v3 + 32) == 3 && !*(v3 + 8) && !*(v3 + 12) && (*(v2 + 4536) & 1) == 0)
                    {
                      *(v2 + 4528) = 0;
                      *(v2 + 4536) = 1;
                    }

                    pthread_mutex_unlock((v2 + 4464));
                    v49 = 0;
                    v48 = 1;
                    Decoder = webrtc::VCMDecoderDatabase::GetDecoder((v2 + 2328), v3, (v2 + 2160));
                    if (!Decoder)
                    {
LABEL_151:
                      v53 = -8;
                      v54 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>();
                      if ((v54 & 1) == 0)
                      {
                        goto LABEL_152;
                      }

LABEL_133:
                      v96 = v42;
                      if (!v48)
                      {
                        goto LABEL_194;
                      }

                      goto LABEL_160;
                    }
                  }

                  else
                  {
                    v48 = 0;
                    v49 = v3;
                    Decoder = webrtc::VCMDecoderDatabase::GetDecoder((v2 + 2328), v3, (v2 + 2160));
                    if (!Decoder)
                    {
                      goto LABEL_151;
                    }
                  }

                  v51 = Decoder;
                  v52 = (*(**(v2 + 2152) + 16))(*(v2 + 2152));
                  v53 = webrtc::VCMGenericDecoder::Decode(v51, v3 + 8, v52, *(v3 + 408), v3 + 2424);
                  if ((v53 & 0x80000000) == 0)
                  {
                    goto LABEL_133;
                  }

                  v54 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>();
                  if (v54)
                  {
                    goto LABEL_133;
                  }

LABEL_152:
                  __dst = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/video_receive_stream2.cc";
                  v113 = 7890;
                  v114 = &v106;
                  v107[0] = "Failed to decode frame. Return code: ";
                  v107[1] = &__dst;
                  v108[0] = v53;
                  v108[1] = v107;
                  v109[0] = ", SSRC: ";
                  v109[1] = v108;
                  v110[0] = *(v2 + 152);
                  v110[1] = v109;
                  v111[0] = ", frame RTP timestamp: ";
                  v111[1] = v110;
                  __s = *(v3 + 160);
                  v99 = v111;
                  __p = ", type: ";
                  p_s = &__s;
                  v67 = *(v3 + 32);
                  if (v67)
                  {
                    if (v67 != 4)
                    {
                      if (v67 != 3)
                      {
                        webrtc::webrtc_checks_impl::UnreachableCodeReached(v54);
                      }

                      v68 = "key";
                      v69 = 3;
LABEL_159:
                      v104 = v68;
                      v105 = v69;
                      v70 = *(*(*(*(*(p_s[1] + 1) + 8) + 8) + 8) + 8);
                      webrtc::webrtc_logging_impl::Log( webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long> const&)::t,  *(v70 + 8),  *v70,  *(v3 + 8),  *(v3 + 12),  ", id: ",  v55,  v56,  *v70);
                      v96 = v42;
                      if (!v48)
                      {
                        goto LABEL_194;
                      }

LABEL_160:
                      pthread_mutex_lock((v2 + 4464));
                      v97 = *(v2 + 4536);
                      if (v97)
                      {
                        v71 = *(v2 + 4528);
                        pthread_mutex_unlock((v2 + 4464));
                        if (!v71)
                        {
                          goto LABEL_194;
                        }

                        v91 = v2 + 4096;
                        v72 = *(v2 + 4544);
                        v73 = *(v2 + 4552);
                        if (v72 != v73)
                        {
                          goto LABEL_167;
                        }
                      }

                      else
                      {
                        pthread_mutex_unlock((v2 + 4464));
                        v71 = 0;
                        v91 = v2 + 4096;
                        v72 = *(v2 + 4544);
                        v73 = *(v2 + 4552);
                        if (v72 != v73)
                        {
                          do
                          {
LABEL_167:
                            v74 = *v72;
                            v75 = *(*v72 + 8);
                            if (*(*v72 + 32) == 3 && v75 == 0)
                            {
                              if (*(*v72 + 12))
                              {
                                v75 = 0;
                              }

                              else
                              {
                                v75 = v71;
                              }

                              if (*(*v72 + 12))
                              {
                                v77 = *(*v72 + 12);
                              }

                              else
                              {
                                v77 = HIDWORD(v71);
                              }

                              if (!*(*v72 + 12) && (v97 & 1) == 0)
                              {
                                goto LABEL_203;
                              }
                            }

                            else
                            {
                              v77 = *(*v72 + 12);
                            }

                            v78 = *(v74 + 144);
                            __dst = &unk_2882A2730;
                            v113 = v78;
                            if (v78)
                            {
                              (**v78)(v78);
                            }

                            v114 = (*(*v74 + 24))(v74);
                            v115 = *(v74 + 424);
                            v116 = *(v74 + 32) == 3;
                            v117 = v75 | (v77 << 32);
                            LOBYTE(v118) = 0;
                            v123 = 0;
                            LOBYTE(v124) = 0;
                            v125 = 0;
                            if (*(v74 + 300) == 1)
                            {
                              v119 = *(v74 + 248);
                              v122 = *(v74 + 296);
                              v118 = *(v74 + 232);
                              v79 = *(v74 + 280);
                              v120 = *(v74 + 264);
                              v121 = v79;
                              v123 = 1;
                            }

                            if (*(v74 + 36))
                            {
                              v124 = *(v74 + 36);
                              v125 = 1;
                            }

                            v80 = *(v2 + 4448);
                            if (!v80)
                            {
                              goto LABEL_204;
                            }

                            (*(*v80 + 48))(v80, &__dst);
                            __dst = &unk_2882A2730;
                            if (v113)
                            {
                              (*(*v113 + 8))(v113);
                            }

                            ++v72;
                          }

                          while (v72 != v73);
                          v73 = *(v2 + 4552);
                          v72 = *(v2 + 4544);
                        }
                      }

                      while (v73 != v72)
                      {
                        v82 = *--v73;
                        v81 = v82;
                        *v73 = 0;
                        if (v82)
                        {
                          (*(*v81 + 8))(v81);
                        }
                      }

                      *(v2 + 4552) = v72;
                      v41 = v91;
LABEL_194:
                      if (v49)
                      {
                        (*(*v49 + 8))(v49);
                      }

                      if ((v53 | 4) == 4)
                      {
                        v83 = 0;
                        v84 = v53 == 4;
                        v85 = 1;
                        *(v41 + 225) = 1;
                      }

                      else
                      {
                        v85 = 0;
                        v96 = 0;
                        v84 = v93 | *(v41 + 225) & v92 ^ 1;
                        v83 = 1;
                      }

                      (*(**(v2 + 352) + 240))(*(v2 + 352));
                      v86 = *(v2 + 4568);
                      if (v86)
                      {
                        atomic_fetch_add_explicit(v86, 1u, memory_order_relaxed);
                      }

                      v87 = v95[1];
                      v88 = *(v95 + 17);
                      v89 = *(v95 + 16);
                      v90 = operator new(0x40uLL);
                      *v90 = v2;
                      v90[1] = v87;
                      *(v90 + 4) = v94;
                      *(v90 + 24) = v84;
                      v90[4] = v96;
                      *(v90 + 40) = v85;
                      *(v90 + 48) = v83;
                      *(v90 + 56) = v88;
                      *(v90 + 57) = v89;
                      operator new();
                    }

                    v68 = "delta";
                  }

                  else
                  {
                    v68 = "empty";
                  }

                  v69 = 5;
                  goto LABEL_159;
                }

LABEL_118:
                (*(*v39 + 8))(v39);
                goto LABEL_13;
              }
            }

            else
            {
              webrtc::VCMDecoderDatabase::DeregisterExternalDecoder((v2 + 2328), *(v11 + 96));
              if ((v103 & 0x80000000) == 0)
              {
                goto LABEL_114;
              }
            }

            operator delete(__p);
            v39 = v111[0];
            v111[0] = 0;
            if (!v39)
            {
              goto LABEL_13;
            }

            goto LABEL_118;
          }

          continue;
        }
      }
    }
  }

  return result;
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::internal::VideoReceiveStream2::OnEncodedFrame(std::unique_ptr<webrtc::EncodedFrame>)::$_0>(uint64_t result, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      v4 = *(v3 + 24);
      *(v3 + 24) = 0;
      if (v4)
      {
        (*(*v4 + 8))(v4);
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

void absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::internal::VideoReceiveStream2::OnEncodedFrame(std::unique_ptr<webrtc::EncodedFrame>)::$_0::operator()(void)::{lambda(void)#2} &&>(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  *(v2 + 4320) = *(*a1 + 48);
  if (*(v1 + 40) == 1)
  {
    webrtc::RtpVideoStreamReceiver2::FrameDecoded((v2 + 2456), v1[4]);
  }

  *(v2 + 4584) = *(v1 + 4);
  *(v2 + 4588) = 1;
  v3 = v1[1];
  v4 = *(v1 + 24);
  if (*(v2 + 4456) != 1)
  {
    goto LABEL_28;
  }

  if (*(v1 + 56) == 1)
  {
    *(v2 + 4456) = 0;
    if ((v4 & 1) == 0)
    {
      goto LABEL_37;
    }

LABEL_29:
    v12 = *(v2 + 2976);
    if (v12 == 1)
    {
      v13 = 32;
    }

    else
    {
      if (v12 != 2)
      {
LABEL_34:
        if ((*(v2 + 4336) & 1) == 0)
        {
          *(v2 + 4336) = 1;
        }

        *(v2 + 4328) = v3;
        goto LABEL_37;
      }

      v13 = 128;
    }

    (*(**(v2 + 2952) + 488))(*(v2 + 2952), v13);
    goto LABEL_34;
  }

  if (!*(v1 + 57))
  {
LABEL_28:
    if (!*(v1 + 24))
    {
      goto LABEL_37;
    }

    goto LABEL_29;
  }

  if (*(v2 + 3512) != 1)
  {
    goto LABEL_29;
  }

  v5 = *(v2 + 3504);
  v6 = v5 / 0x3E8uLL;
  if (v5 % 0x3E8uLL > 0x1F3)
  {
    ++v6;
  }

  if (-v5 % 0x3E8uLL <= 0x1F4)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (v5 < 0)
  {
    v8 = v7 - -v5 / 0x3E8uLL;
  }

  else
  {
    v8 = v6;
  }

  v9 = v3 - 1000 * v8;
  if (v3 == 0x8000000000000000)
  {
    v9 = 0x8000000000000000;
  }

  v10 = v3 != 0x7FFFFFFFFFFFFFFFLL && v9 < *(v2 + 4344);
  v11 = v10;
  if ((v1[3] & 1) != 0 || !v11)
  {
    goto LABEL_29;
  }

LABEL_37:
  v14 = *(v2 + 4272);
  v15 = *(v2 + 4320);

  webrtc::VideoStreamBufferController::StartNextDecode(v14, v15);
}

uint64_t absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::internal::VideoReceiveStream2::SetAndGetRecordingState(webrtc::VideoReceiveStreamInterface::RecordingState,BOOL)::$_0 &&>(uint64_t **a1)
{
  v22[3] = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[2];
  v4 = *(v3 + 24);
  *(v3 + 24) = 0;
  if (v4 == v3)
  {
    (*(*v4 + 32))(v4);
    v5 = (v2 + 4424);
    v6 = *(v2 + 4448);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_9:
    *(v3 + 24) = 0;
    v7 = v1[6];
    if (!v7)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = (v2 + 4424);
  v6 = *(v2 + 4448);
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (v6 == v5)
  {
    *(v3 + 24) = v3;
    (*(**(v2 + 4448) + 24))(*(v2 + 4448), v3);
    v7 = v1[6];
    if (!v7)
    {
      goto LABEL_14;
    }

LABEL_10:
    if (v7 == v1 + 3)
    {
      v21 = v20;
      (*(*v7 + 24))(v7, v20);
      if (v5 == v20)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v21 = (*(*v7 + 16))(v7);
      if (v5 == v20)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_17;
  }

  *(v3 + 24) = v6;
  *(v2 + 4448) = 0;
  v7 = v1[6];
  if (v7)
  {
    goto LABEL_10;
  }

LABEL_14:
  v21 = 0;
  if (v5 == v20)
  {
LABEL_25:
    v10 = v21;
    if (v21 != v20)
    {
      goto LABEL_26;
    }

LABEL_35:
    (*(*v10 + 32))(v10);
    if (*(v1 + 64) == 1)
    {
      goto LABEL_29;
    }

LABEL_36:
    v12 = 0;
LABEL_37:
    if (v12 % 0x3E8 <= 0x1F3)
    {
      v16 = v12 / 0x3E8;
    }

    else
    {
      v16 = v12 / 0x3E8 + 1;
    }

    goto LABEL_40;
  }

LABEL_17:
  v8 = v21;
  v9 = *(v2 + 4448);
  if (v21 != v20)
  {
    if (v9 != v5)
    {
      v21 = *(v2 + 4448);
      *(v2 + 4448) = v8;
      v10 = v9;
      if (v9 != v20)
      {
        goto LABEL_26;
      }

      goto LABEL_35;
    }

    (*(*v9 + 24))(*(v2 + 4448), v20);
    (*(**(v2 + 4448) + 32))(*(v2 + 4448));
    *(v2 + 4448) = v21;
    v21 = v20;
    goto LABEL_25;
  }

  if (v9 != v5)
  {
    (*(*v21 + 24))();
    (*(*v21 + 32))(v21);
    v21 = *(v2 + 4448);
    v11 = v21;
    *(v2 + 4448) = v5;
    v10 = v11;
    if (v11 != v20)
    {
      goto LABEL_26;
    }

    goto LABEL_35;
  }

  (*(*v21 + 24))();
  (*(*v21 + 32))(v21);
  v21 = 0;
  (*(**(v2 + 4448) + 24))(*(v2 + 4448), v20);
  (*(**(v2 + 4448) + 32))(*(v2 + 4448));
  *(v2 + 4448) = 0;
  v21 = v20;
  (*(v22[0] + 24))(v22, v5);
  (*(v22[0] + 32))(v22);
  *(v2 + 4448) = v5;
  v10 = v21;
  if (v21 == v20)
  {
    goto LABEL_35;
  }

LABEL_26:
  if (v10)
  {
    (*(*v10 + 40))(v10);
  }

  if (*(v1 + 64) != 1)
  {
    goto LABEL_36;
  }

LABEL_29:
  v12 = v1[7];
  if ((v12 & 0x8000000000000000) == 0)
  {
    goto LABEL_37;
  }

  v13 = -v12;
  v14 = v13 / 0x3E8;
  if (v13 % 0x3E8 <= 0x1F4)
  {
    v15 = 0;
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 - v14;
LABEL_40:
  v17 = v1[2];
  *(v17 + 32) = v16;
  *(v17 + 40) = 1;
  v18 = v1[1];
  pthread_mutex_lock(v18);
  *(v18 + 113) = 1;
  pthread_cond_broadcast((v18 + 64));
  return pthread_mutex_unlock(v18);
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::internal::VideoReceiveStream2::SetAndGetRecordingState(webrtc::VideoReceiveStreamInterface::RecordingState,BOOL)::$_0>(uint64_t result, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      v4 = *(v3 + 48);
      if (v4 == v3 + 24)
      {
        (*(*v4 + 32))(v4);
      }

      else if (v4)
      {
        (*(*v4 + 40))(v4);
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

void webrtc::VideoReceiveStreamTimeoutTracker::Start(webrtc::VideoReceiveStreamTimeoutTracker *this, int a2)
{
  v3 = 24;
  if (a2)
  {
    v3 = 16;
  }

  v4 = *(this + v3);
  *(this + 88) = a2;
  v5 = (*(**this + 16))(*this);
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  v7 = 0x8000000000000000;
  if (v4 != 0x8000000000000000 && v5 != 0x8000000000000000)
  {
    v7 = v5 + v4;
  }

  if (v5 != 0x7FFFFFFFFFFFFFFFLL && v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v7;
  }

  *(this + 9) = v5;
  *(this + 10) = v6;
  {
    {
      operator new();
    }
  }

  webrtc::RepeatingTaskHandle::DelayedStart();
}

void absl::internal_any_invocable::LocalInvoker<false,webrtc::TimeDelta,webrtc::VideoReceiveStreamTimeoutTracker::Start(BOOL)::$_0 &>(void **a1)
{
  v1 = *a1;
  v2 = (*(***a1 + 16))(**a1);
  if (*(v1 + 80) <= v2)
  {
    v3 = 24;
    if (*(v1 + 88))
    {
      v3 = 16;
    }

    v4 = *(v1 + v3);
    v5 = 0x7FFFFFFFFFFFFFFFLL;
    v6 = v4 == 0x8000000000000000 || v2 == 0x8000000000000000;
    v7 = v4 + v2;
    if (v6)
    {
      v7 = 0x8000000000000000;
    }

    if (v2 == 0x7FFFFFFFFFFFFFFFLL || v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    *(v1 + 80) = v7;
    v9 = *(v1 + 72);
    if (v2 != 0x7FFFFFFFFFFFFFFFLL && v9 != 0x8000000000000000)
    {
      if (v9 == 0x7FFFFFFFFFFFFFFFLL || v2 == 0x8000000000000000)
      {
        v5 = 0x8000000000000000;
      }

      else
      {
        v5 = v2 - v9;
      }
    }

    v15 = v5;
    v12 = *(v1 + 56);
    if (v12)
    {
      (*(*v12 + 48))(v12, &v15);
    }

    else
    {
      v13 = std::__throw_bad_function_call[abi:sn200100]();
      std::__tree<std::__value_type<unsigned char,std::unique_ptr<webrtc::VideoDecoder>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::unique_ptr<webrtc::VideoDecoder>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::unique_ptr<webrtc::VideoDecoder>>>>::destroy(v13, v14);
    }
  }
}

void std::__tree<std::__value_type<unsigned char,std::unique_ptr<webrtc::VideoDecoder>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::unique_ptr<webrtc::VideoDecoder>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::unique_ptr<webrtc::VideoDecoder>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned char,std::unique_ptr<webrtc::VideoDecoder>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::unique_ptr<webrtc::VideoDecoder>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::unique_ptr<webrtc::VideoDecoder>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned char,std::unique_ptr<webrtc::VideoDecoder>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::unique_ptr<webrtc::VideoDecoder>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::unique_ptr<webrtc::VideoDecoder>>>>::destroy(a1, a2[1]);
    v4 = a2[5];
    a2[5] = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    operator delete(a2);
  }
}

void webrtc::VideoRenderFrames::~VideoRenderFrames(webrtc::VideoRenderFrames *this)
{
  *(this + 5) += *(this + 2);
  explicit = atomic_load_explicit(&webrtc::VideoRenderFrames::~VideoRenderFrames()::atomic_histogram_pointer, memory_order_acquire);
  if (explicit || (explicit = webrtc::metrics::HistogramFactoryGetCountsLinear(), v3 = 0, atomic_compare_exchange_strong(&webrtc::VideoRenderFrames::~VideoRenderFrames()::atomic_histogram_pointer, &v3, explicit), explicit))
  {
    webrtc::metrics::HistogramAdd(explicit, *(this + 10));
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long> const&)::t, v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/render/video_render_frames.cc");
  }

  if (*(this + 2))
  {
    v11 = *(this + 1);
    v12 = *(*this + 8);
    v13 = *v11;
    *(v13 + 8) = v12;
    *v12 = v13;
    *(this + 2) = 0;
    if (v11 != this)
    {
      do
      {
        v14 = *(v11 + 1);
        v15 = *(v11 + 25);
        if (v15 && atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
        {
          v16 = *(v15 + 8);
          if (v16)
          {
            v17 = *(v15 + 16);
            v18 = *(v15 + 8);
            if (v17 != v16)
            {
              do
              {
                v19 = *(v17 - 96);
                if (v19)
                {
                  *(v17 - 88) = v19;
                  operator delete(v19);
                }

                v17 -= 104;
              }

              while (v17 != v16);
              v18 = *(v15 + 8);
            }

            *(v15 + 16) = v16;
            operator delete(v18);
          }

          MEMORY[0x2743DA540](v15, 0x1020C40E72D6CFBLL);
        }

        v20 = *(v11 + 3);
        if (v20)
        {
          (*(*v20 + 8))(v20);
        }

        operator delete(v11);
        v11 = v14;
      }

      while (v14 != this);
    }
  }
}

uint64_t webrtc::VideoRenderFrames::AddFrame(void *a1, uint64_t a2)
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
  v6 = *(a2 + 32) / 1000;
  if (a1[2] && v6 + 500 < v5)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (v6 <= v5 + 10000)
  {
    if (v6 >= a1[4])
    {
      a1[4] = v6;
      operator new();
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long> const&)::t, v15, v16, v17, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/render/video_render_frames.cc");
    }
  }

  else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
LABEL_12:
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v7, v8, v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/render/video_render_frames.cc");
  }

  ++a1[5];
  return 0xFFFFFFFFLL;
}

void webrtc::VideoRenderFrames::FrameToRender(webrtc::VideoRenderFrames *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 216) = 0;
  if (*(this + 2))
  {
    v4 = &qword_28100D000;
    do
    {
      v5 = *(*(this + 1) + 48);
      v6 = *(this + 6);
      if (webrtc::g_clock)
      {
        v7 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
      }

      else
      {
        if (!*(v4 + 569))
        {
          mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
        }

        v7 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
      }

      if ((((v5 / 1000) - v6 + (v7 / -1000000)) & ~((v5 / 1000 - v6 + v7 / -1000000) >> 63)) != 0)
      {
        break;
      }

      if (*(a2 + 216) == 1)
      {
        ++*(this + 5);
        if (!*(this + 2) || (webrtc::VideoFrame::operator=(a2, *(this + 1) + 16), (v8 = *(this + 2)) == 0))
        {
LABEL_32:
          __break(1u);
          return;
        }
      }

      else
      {
        v8 = *(this + 2);
        if (!v8)
        {
          goto LABEL_32;
        }

        v9 = *(this + 1);
        *a2 = *(v9 + 16);
        v10 = *(v9 + 24);
        *(v9 + 24) = 0;
        *(a2 + 8) = v10;
        v12 = *(v9 + 48);
        v11 = *(v9 + 64);
        v13 = *(v9 + 32);
        *(a2 + 60) = *(v9 + 76);
        *(a2 + 32) = v12;
        *(a2 + 48) = v11;
        *(a2 + 16) = v13;
        *(a2 + 76) = 0;
        *(a2 + 144) = 0;
        if (*(v9 + 160) == 1)
        {
          *(a2 + 76) = *(v9 + 92);
          v14 = *(v9 + 108);
          v15 = *(v9 + 124);
          v16 = *(v9 + 140);
          *(a2 + 140) = *(v9 + 156);
          *(a2 + 124) = v16;
          *(a2 + 108) = v15;
          *(a2 + 92) = v14;
          *(a2 + 144) = 1;
        }

        v17 = *(v9 + 164);
        *(a2 + 161) = *(v9 + 177);
        *(a2 + 148) = v17;
        v18 = *(v9 + 200);
        *(v9 + 200) = 0;
        *(a2 + 184) = v18;
        v19 = *(v9 + 208);
        *(a2 + 208) = *(v9 + 224);
        *(a2 + 192) = v19;
        *(a2 + 216) = 1;
      }

      v20 = *(this + 1);
      v22 = *v20;
      v21 = v20[1];
      *(v22 + 8) = v21;
      *v21 = v22;
      *(this + 2) = v8 - 1;
      v23 = v20[25];
      if (v23 && atomic_fetch_add(v23, 0xFFFFFFFF) == 1)
      {
        v24 = *(v23 + 8);
        if (v24)
        {
          v25 = v4;
          v26 = *(v23 + 16);
          v27 = *(v23 + 8);
          if (v26 != v24)
          {
            do
            {
              v28 = *(v26 - 96);
              if (v28)
              {
                *(v26 - 88) = v28;
                operator delete(v28);
              }

              v26 -= 104;
            }

            while (v26 != v24);
            v27 = *(v23 + 8);
          }

          *(v23 + 16) = v24;
          operator delete(v27);
          v4 = v25;
        }

        MEMORY[0x2743DA540](v23, 0x1020C40E72D6CFBLL);
      }

      v29 = v20[3];
      if (v29)
      {
        (*(*v29 + 8))(v29);
      }

      operator delete(v20);
    }

    while (*(this + 2));
  }
}

void webrtc::VideoRtpDepacketizer::AssembleFrame(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = (a3 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v3 > 3)
    {
      v6 = v3 + 1;
      v7 = v6 & 3;
      if ((v6 & 3) == 0)
      {
        v7 = 4;
      }

      v8 = v6 - v7;
      v5 = a2 + 16 * v8;
      v9 = (a2 + 40);
      v10 = 0uLL;
      v11 = 0uLL;
      do
      {
        v12 = v9 - 4;
        v13 = vld2q_f64(v12);
        v14 = vld2q_f64(v9);
        v10 = vaddq_s64(v13, v10);
        v11 = vaddq_s64(v14, v11);
        v9 += 8;
        v8 -= 4;
      }

      while (v8);
      v4 = vaddvq_s64(vaddq_s64(v11, v10));
    }

    else
    {
      v4 = 0;
      v5 = a2;
    }

    do
    {
      v4 += *(v5 + 8);
      v5 += 16;
    }

    while (v5 != a2 + 16 * a3);
  }

  operator new();
}

void webrtc::VideoRtpDepacketizerAv1::AssembleFrame(char **a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v96 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = a1;
  }

  else
  {
    v4 = 0;
  }

  v92 = 0;
  if (!a2)
  {
    v8 = 0;
    goto LABEL_7;
  }

  v5 = a1;
  LOBYTE(v6) = 0;
  v7 = &v4[2 * a2];
  do
  {
    v10 = *v5;
    v9 = v5[1];
    if (!v9)
    {
      v10 = 0;
    }

    v86[0] = v10;
    v86[1] = v9;
    v87 = 0;
    v88 = v9;
    if (!v9 || (v11 = *v10, v87 = 1, (v6 & 1) != v11 < 0))
    {
LABEL_69:
      v90 = 0;
      v8 = 0;
      if (!v92)
      {
        goto LABEL_71;
      }

      goto LABEL_70;
    }

    v12 = v11;
    v13 = (v11 >> 4) & 3;
    if (v9 == 1)
    {
      if (v13 != 1)
      {
        goto LABEL_69;
      }

      if ((v11 & 0x80) == 0)
      {
        v14 = v93;
        v15 = v94;
        if ((v92 & 1) == 0)
        {
          v14 = &v93;
          v15 = 4;
        }

        if (v92 >> 1 == v15)
        {
        }

        if (!v14)
        {
          goto LABEL_144;
        }

        v16 = &v14[11 * (v92 >> 1)];
        v16[10] = 0;
        *(v16 + 3) = 0u;
        *(v16 + 4) = 0u;
        *(v16 + 1) = 0u;
        *(v16 + 2) = 0u;
        *v16 = 0u;
        v92 += 2;
      }

      goto LABEL_10;
    }

    if ((v11 & 0x80) != 0)
    {
      if (v92 < 2)
      {
        goto LABEL_144;
      }

      v20 = v93;
      if ((v92 & 1) == 0)
      {
        v20 = &v93;
      }

      v19 = &v20[11 * (v92 >> 1) - 11];
      v85 = 0;
      if (v13 == 1)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v17 = v93;
      v18 = v94;
      if ((v92 & 1) == 0)
      {
        v17 = &v93;
        v18 = 4;
      }

      if (v92 >> 1 == v18)
      {
      }

      if (!v17)
      {
LABEL_144:
        __break(1u);
      }

      v19 = &v17[11 * (v92 >> 1)];
      *(v19 + 80) = 0;
      *(v19 + 48) = 0u;
      *(v19 + 64) = 0u;
      *(v19 + 16) = 0u;
      *(v19 + 32) = 0u;
      *v19 = 0u;
      v92 += 2;
      v85 = 0;
      if (v13 == 1)
      {
LABEL_34:
        v22 = v87;
        v21 = v88;
        v23 = &v88[-v87];
        v85 = &v88[-v87];
        goto LABEL_38;
      }
    }

    if (!webrtc::ByteBufferReader::ReadUVarint(v86, &v85))
    {
      goto LABEL_69;
    }

    v23 = v85;
    v22 = v87;
    v21 = v88;
    if (v85 > &v88[-v87])
    {
      goto LABEL_69;
    }

LABEL_38:
    if (v23)
    {
      v89 = v23;
      v90 = v86[0] + v22;
      v24 = (v19 + 48);
      v25 = *(v19 + 48);
      if (v25)
      {
        v26 = *(v19 + 56);
        v27 = *(v19 + 64);
      }

      else
      {
        v26 = v19 + 56;
        v27 = 2;
      }

      v28 = v25 >> 1;
      if (v28 == v27)
      {
        absl::inlined_vector_internal::Storage<webrtc::ArrayView<unsigned char const,-4711l>,2ul,std::allocator<webrtc::ArrayView<unsigned char const,-4711l>>>::EmplaceBackSlow<unsigned char const*&,unsigned long &>(v24);
      }

      if (!v26)
      {
        goto LABEL_144;
      }

      v29 = (v26 + 16 * v28);
      *v29 = v86[0] + v22;
      v29[1] = v23;
      *v24 += 2;
      *(v19 + 40) += v23;
      if (&v21[-v22] >= v23)
      {
        v22 += v23;
        v87 = v22;
      }
    }

    if (v21 != v22)
    {
      v30 = v13 - 2;
      do
      {
        v31 = v93;
        v32 = v94;
        if ((v92 & 1) == 0)
        {
          v31 = &v93;
          v32 = 4;
        }

        if (v92 >> 1 == v32)
        {
        }

        if (!v31)
        {
          goto LABEL_144;
        }

        v33 = &v31[11 * (v92 >> 1)];
        v33[10] = 0;
        *(v33 + 3) = 0u;
        *(v33 + 4) = 0u;
        *(v33 + 1) = 0u;
        *(v33 + 2) = 0u;
        *v33 = 0u;
        v92 += 2;
        v85 = 0;
        if (v30)
        {
          if (!webrtc::ByteBufferReader::ReadUVarint(v86, &v85))
          {
            goto LABEL_69;
          }

          v34 = v85;
          v36 = v87;
          v35 = v88;
          if (v85 > &v88[-v87])
          {
            goto LABEL_69;
          }

          if (!v85)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v36 = v87;
          v35 = v88;
          v34 = &v88[-v87];
          v85 = &v88[-v87];
          if (v88 == v87)
          {
            goto LABEL_48;
          }
        }

        v89 = v34;
        v90 = v86[0] + v36;
        v37 = v33 + 6;
        v38 = v33[6];
        if (v38)
        {
          v39 = v33[7];
          v40 = v33[8];
        }

        else
        {
          v39 = v33 + 7;
          v40 = 2;
        }

        v41 = v38 >> 1;
        if (v41 == v40)
        {
          absl::inlined_vector_internal::Storage<webrtc::ArrayView<unsigned char const,-4711l>,2ul,std::allocator<webrtc::ArrayView<unsigned char const,-4711l>>>::EmplaceBackSlow<unsigned char const*&,unsigned long &>(v37);
        }

        if (!v39)
        {
          goto LABEL_144;
        }

        v42 = &v39[2 * v41];
        *v42 = v86[0] + v36;
        v42[1] = v34;
        *v37 += 2;
        v33[5] += v34;
        if (&v35[-v36] >= v34)
        {
          v36 += v34;
          v87 = v36;
        }

LABEL_48:
        --v30;
      }

      while (v35 != v36);
    }

LABEL_10:
    v6 = (v12 >> 6) & 1;
    v5 += 2;
  }

  while (v5 != v7);
  if ((v12 & 0x40) == 0)
  {
    v8 = v92;
    v90 = 0;
    if (v92)
    {
      v91[0] = v93;
      v91[1] = v94;
      v90 = v92;
      goto LABEL_71;
    }

    if (v92)
    {
      v77 = 0;
      v78 = v92 >> 1;
      do
      {
        v79 = *&v95[v77 + 32];
        v91[v77 / 8 + 6] = 0;
        v80 = &v91[v77 / 8 + 6];
        v81 = *&v95[v77];
        *(v80 - 3) = *(&v92 + v77 + 8);
        *(v80 - 2) = v81;
        v82 = *&v95[v77 + 24];
        *(v80 - 2) = *&v95[v77 + 16];
        *(v80 - 1) = v82;
        if (v79 >= 2)
        {
          if (v79)
          {
            absl::inlined_vector_internal::Storage<webrtc::ArrayView<unsigned char const,-4711l>,2ul,std::allocator<webrtc::ArrayView<unsigned char const,-4711l>>>::InitFrom(v80, &v95[v77 + 32]);
          }

          else
          {
            *v80 = v79;
            v83 = &v91[v77 / 8 - 1];
            v84 = *&v95[v77 + 56];
            *(v83 + 4) = *&v95[v77 + 40];
            *(v83 + 5) = v84;
          }
        }

        v77 += 88;
        --v78;
      }

      while (v78);
      v8 = v92 & 0xFFFFFFFFFFFFFFFELL;
    }

LABEL_7:
    v90 = v8;
    if (!v92)
    {
      goto LABEL_71;
    }

LABEL_70:
    v8 = v90;
    goto LABEL_71;
  }

  v8 = 0;
  v90 = 0;
  if (v92)
  {
    goto LABEL_70;
  }

LABEL_71:
  if (v8 >= 2)
  {
    v43 = 0;
    v44 = v91[0];
    if ((v8 & 1) == 0)
    {
      v44 = v91;
    }

    v45 = &v44[11 * (v8 >> 1)];
    for (i = v44 + 1; ; i += 11)
    {
      v47 = v44[6];
      if (v47 < 2)
      {
        break;
      }

      v48 = (v44 + 7);
      v49 = (v44 + 7);
      if (v47)
      {
        v49 = *v48;
      }

      v50 = **v49;
      *(v44 + 8) = v50 | 2;
      *v44 = 1;
      v51 = v49[1];
      v52 = v51 != 1;
      v53 = &v49[2 * (v51 == 1)];
      if ((v50 & 4) != 0)
      {
        v56 = (v44 + 7);
        if (v47)
        {
          v56 = *v48;
        }

        if (v51 == 1 && v53 == &v56[2 * (v47 >> 1)])
        {
          break;
        }

        *(v44 + 9) = (*v53)[v52];
        *v44 = 2;
        if (v51 == 1)
        {
          v57 = 3;
        }

        else
        {
          v57 = 1;
        }

        v58 = v49[v57];
        if (v51 == 1)
        {
          v52 = 1;
        }

        else
        {
          v52 = 2;
        }

        v64 = v52 == v58;
        v59 = v52 == v58;
        if (v64)
        {
          v52 = 0;
        }

        v53 += 2 * v59;
        v54 = 2;
        if ((v50 & 2) != 0)
        {
LABEL_97:
          v60 = v47 >> 1;
          v61 = 0;
          if (v47)
          {
            v55 = 0;
            v68 = &(*v48)[2 * v60];
            v62 = -1;
            while (1)
            {
              ++v62;
              v69 = !v52 && v53 == v68;
              if (v69 || v62 > 7)
              {
                break;
              }

              v71 = (*v53)[v52];
              v55 |= (v71 & 0x7F) << v61;
              v72 = v52 + 1 == v53[1];
              if ((v52 + 1) == v53[1])
              {
                v52 = 0;
              }

              else
              {
                ++v52;
              }

              v53 += 2 * v72;
              v61 += 7;
              if ((v71 & 0x80) == 0)
              {
LABEL_123:
                v73 = v44[5] + ~v62 - v54;
                v44[2] = v73;
                if (v55 != v73)
                {
                  goto LABEL_72;
                }

                goto LABEL_124;
              }
            }
          }

          else
          {
            v55 = 0;
            v62 = -1;
            v63 = &v48[2 * v60];
            while (1)
            {
              ++v62;
              v64 = !v52 && v53 == v63;
              if (v64 || v62 > 7)
              {
                break;
              }

              v66 = (*v53)[v52];
              v55 |= (v66 & 0x7F) << v61;
              v67 = v52 + 1 == v53[1];
              if ((v52 + 1) == v53[1])
              {
                v52 = 0;
              }

              else
              {
                ++v52;
              }

              v53 += 2 * v67;
              v61 += 7;
              if ((v66 & 0x80) == 0)
              {
                goto LABEL_123;
              }
            }
          }

          break;
        }
      }

      else
      {
        v54 = 1;
        if ((v50 & 2) != 0)
        {
          goto LABEL_97;
        }
      }

      v55 = v44[5] - v54;
      v44[2] = v55;
LABEL_124:
      v44[3] = v53;
      v44[4] = v52;
      if (v55 < 0x80)
      {
        LODWORD(v74) = 0;
      }

      else
      {
        v74 = 0;
        do
        {
          *(i + v54 + v74++) = v55 | 0x80;
          v75 = v55 >> 14;
          v55 >>= 7;
        }

        while (v75);
      }

      *(v44 + v54 + v74 + 8) = v55;
      v76 = v54 + v74 + 1;
      *v44 = v76;
      v43 += v76 + v44[2];
      v44 += 11;
      if (v44 == v45)
      {
        operator new();
      }
    }
  }

LABEL_72:
  *a3 = 0;
  if (v90)
  {
  }
}

void webrtc::VideoRtpDepacketizerAv1::Parse(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v2 = a1[2];
  if (v2 && (v3 = *a1, v4 = a1 + 1, v5 = a1[1], v6 = *(*(*a1 + 16) + v5), (~v6 & 0x88) != 0))
  {
    bzero(a2, 0x7F8uLL);
    a2[167] = 1;
    a2[176] = 0;
    *(a2 + 206) = 0;
    *(a2 + 25) = 0;
    a2[212] = -1;
    a2[284] = 0;
    a2[290] = 0;
    a2[1944] = 0;
    a2[1976] = 0;
    a2[2064] = 1;
    *a1 = 0;
    *(a2 + 255) = v3;
    *(a2 + 256) = v5;
    *(a2 + 257) = v2;
    *v4 = 0;
    v4[1] = 0;
    *(a2 + 43) = 3;
    a2[165] = (~v6 & 0x80) != 0;
    a2[166] = ((v6 >> 6) & 1) == 0;
    if ((v6 & 8) != 0)
    {
      v9 = 3;
    }

    else
    {
      v9 = 4;
    }

    *(a2 + 38) = v9;
  }

  else
  {
    *a2 = 0;
    a2[2064] = 0;
  }
}

void absl::inlined_vector_internal::Storage<webrtc::anonymous namespace::ObuInfo,4ul,std::allocator<webrtc::anonymous namespace::ObuInfo>>::EmplaceBackSlow<>(void *a1)
{
  if ((*a1 & 1) != 0 && (2 * a1[2]) >= 0x2E8BA2E8BA2E8BBLL)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  operator new();
}

void *absl::inlined_vector_internal::Storage<webrtc::ArrayView<unsigned char const,-4711l>,2ul,std::allocator<webrtc::ArrayView<unsigned char const,-4711l>>>::InitFrom(unint64_t *a1, unint64_t *a2)
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

void absl::inlined_vector_internal::Storage<webrtc::ArrayView<unsigned char const,-4711l>,2ul,std::allocator<webrtc::ArrayView<unsigned char const,-4711l>>>::EmplaceBackSlow<unsigned char const*&,unsigned long &>(void *a1)
{
  if ((*a1 & 1) != 0 && ((a1[2] >> 59) & 0xFLL) != 0)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  operator new();
}

void absl::inlined_vector_internal::Storage<webrtc::anonymous namespace::ObuInfo,4ul,std::allocator<webrtc::anonymous namespace::ObuInfo>>::DestroyContents(unint64_t *a1)
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
    v7 = &v5[11 * (v2 >> 1) - 5];
    do
    {
      if (*v7)
      {
        operator delete(*(v7 + 8));
      }

      v7 -= 88;
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

void webrtc::VideoRtpDepacketizerGeneric::Parse(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a1[2];
  if (v3)
  {
    bzero(v28, 0x7F8uLL);
    v32 = 1;
    *&v33[6] = 0xFF000000000000;
    *v33 = 0;
    v34 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0uLL;
    v40 = 1;
    v5 = *a1;
    if (*a1)
    {
      v6 = (*(v5 + 16) + a1[1]);
    }

    else
    {
      v6 = 0;
    }

    v14 = *v6;
    if (*v6)
    {
      v15 = 3;
    }

    else
    {
      v15 = 4;
    }

    v29 = v15;
    v31 = (v14 & 2) != 0;
    v30 = 0;
    if ((v14 & 4) != 0)
    {
      if (v3 <= 2)
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log("\r\t", v20, v21, v22, v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/video_rtp_depacketizer_generic.cc");
        }

        *a2 = 0;
        *(a2 + 2064) = 0;
        goto LABEL_20;
      }

      v27 = v6[2] | ((v6[1] & 0x7F) << 8);
      v36 = 4;
      v35 = v27;
      v16 = 3;
      v17 = v3 - 3;
      if (!v5)
      {
LABEL_14:
        v18 = a1[1] + v16;
        v38 = v5;
        *&v39 = v18;
        *(&v39 + 1) = v17;
        *a2 = 0;
        *(a2 + 2064) = 0;
        webrtc::RTPVideoHeader::RTPVideoHeader(a2, v28);
        v19 = v38;
        v38 = 0;
        *(a2 + 2040) = v19;
        *(a2 + 2048) = v39;
        v39 = 0u;
        *(a2 + 2064) = 1;
        if ((v40 & 1) == 0)
        {
          return;
        }

LABEL_20:
        webrtc::RTPVideoHeader::~RTPVideoHeader(v28);
        return;
      }
    }

    else
    {
      v16 = 1;
      v17 = v3 - 1;
      if (!v5)
      {
        goto LABEL_14;
      }
    }

    atomic_fetch_add_explicit((v5 + 24), 1u, memory_order_relaxed);
    goto LABEL_14;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v7, v8, v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/video_rtp_depacketizer_generic.cc");
  }

  *a2 = 0;
  *(a2 + 2064) = 0;
}

void webrtc::VideoRtpDepacketizerH264::Parse(unint64_t *a1@<X1>, _BYTE *a2@<X8>)
{
  v93 = *MEMORY[0x277D85DE8];
  v3 = a1[2];
  if (!v3)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v14, v15, v16, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/video_rtp_depacketizer_h264.cc");
    }

    *a2 = 0;
    a2[2064] = 0;
    return;
  }

  v4 = *a1;
  v5 = a1[1];
  if ((*(*(*a1 + 16) + v5) & 0x1F) != 0x1C)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    v21 = *(v4 + 16);
    bzero(&v74, 0x7F8uLL);
    v78 = 1;
    v80 = 0;
    v81 = 0;
    *&v82[6] = 0xFF000000000000;
    *v82 = 0;
    v83 = 0;
    v84 = 0;
    v87 = 0;
    v88 = 0;
    v89 = 0;
    v91 = 0;
    v90 = 0;
    v92 = 1;
    __n = 0;
    v72 = 0;
    __src = 0;
    atomic_fetch_add_explicit((v4 + 24), 1u, memory_order_relaxed);
    v22 = v89;
    if (v89 && atomic_fetch_add((v89 + 24), 0xFFFFFFFF) == 1)
    {
      v23 = *(v22 + 16);
      *(v22 + 16) = 0;
      if (v23)
      {
        MEMORY[0x2743DA520](v23, 0x1000C8077774924);
      }

      MEMORY[0x2743DA540](v22, 0x1010C40EE34DA14);
    }

    v89 = v4;
    v90 = v5;
    v91 = v3;
    if ((v92 & 1) == 0)
    {
      goto LABEL_91;
    }

    v24 = v21 + v5;
    v76 = 0;
    v80 = 4;
    v79 = 0;
    v77 = 0;
    if (v86 != -1)
    {
      (off_2882A2808[v86])(&v69, v85);
    }

    memset(v85, 0, 40);
    v86 = 3;
    if ((*v24 & 0x1F) != 0x18)
    {
      LOBYTE(v85[0]) = *v24 & 0x1F;
      operator new();
    }

    if (v3 == 1)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
LABEL_21:
        webrtc::webrtc_logging_impl::Log("\r\t", v25, v26, v27, v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/video_rtp_depacketizer_h264.cc");
      }
    }

    else
    {
      if (v3 - 1 >= 2 && *(v24 + 1) && v3 - 3 >= __rev16(*(v24 + 1)))
      {
        operator new();
      }

      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    *a2 = 0;
    a2[2064] = 0;
    v43 = __src;
    __src = 0;
    if (v43)
    {
      MEMORY[0x2743DA520](v43, 0x1000C8077774924);
    }

    if (v92 == 1)
    {
      v44 = v89;
      if (v89 && atomic_fetch_add((v89 + 24), 0xFFFFFFFF) == 1)
      {
        v45 = *(v44 + 16);
        *(v44 + 16) = 0;
        if (v45)
        {
          MEMORY[0x2743DA520](v45, 0x1000C8077774924);
        }

        MEMORY[0x2743DA540](v44, 0x1010C40EE34DA14);
      }

      webrtc::RTPVideoHeader::~RTPVideoHeader(&v74);
    }

    if (atomic_fetch_add((v4 + 24), 0xFFFFFFFF) == 1)
    {
      v46 = *(v4 + 16);
      *(v4 + 16) = 0;
      if (!v46)
      {
LABEL_89:
        MEMORY[0x2743DA540](v4, 0x1010C40EE34DA14);
        return;
      }

LABEL_88:
      MEMORY[0x2743DA520]();
      goto LABEL_89;
    }

    return;
  }

  *a1 = 0;
  v67 = v4;
  *&v68 = v5;
  *(&v68 + 1) = v3;
  a1[1] = 0;
  a1[2] = 0;
  v6 = v3 - 1;
  if (v3 == 1)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v7, v8, v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/video_rtp_depacketizer_h264.cc");
    }

    *a2 = 0;
    a2[2064] = 0;
    goto LABEL_86;
  }

  bzero(a2, 0x7F8uLL);
  a2[167] = 1;
  *(a2 + 43) = 0;
  a2[192] = 0;
  *(a2 + 206) = 0;
  *(a2 + 25) = 0;
  a2[212] = -1;
  a2[284] = 0;
  a2[290] = 0;
  a2[1944] = 0;
  a2[1976] = 0;
  v32 = (a2 + 2040);
  *(a2 + 255) = 0;
  *(a2 + 257) = 0;
  *(a2 + 256) = 0;
  a2[2064] = 1;
  v33 = (*(v4 + 16) + v5);
  v34 = v33[1];
  v35 = v34 & 0x1F;
  if (v34 < 0)
  {
    v47 = *v33 & 0xE0;
    if ((v34 & 0x1B) == 1)
    {
      if (v3 <= 2)
      {
        v48 = 0;
      }

      else
      {
        v48 = (v33 + 2);
      }

      if (v3 - 2 >= v3)
      {
        v49 = v3;
      }

      else
      {
        v49 = v3 - 2;
      }

      if (v3 <= 2)
      {
        v50 = 0;
      }

      else
      {
        v50 = v49;
      }

      v51 = webrtc::PpsParser::ParseSliceHeader(v48, v50);
      if (v52)
      {
        v40 = v51 == 0;
      }

      else
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v53, v54, v55, v56, v57, v58, v59, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/video_rtp_depacketizer_h264.cc");
        }

        v40 = 0;
      }
    }

    else
    {
      v40 = 0;
    }

    v60 = v35 | v47;
    atomic_fetch_add_explicit((v4 + 24), 1u, memory_order_relaxed);
    if (atomic_fetch_add((v4 + 24), 0xFFFFFFFF) == 1)
    {
      v61 = *(v4 + 16);
      *(v4 + 16) = 0;
      if (v61)
      {
        MEMORY[0x2743DA520](v61, 0x1000C8077774924);
      }

      MEMORY[0x2743DA540](v4, 0x1010C40EE34DA14);
    }

    *&v68 = v5 + 1;
    *(&v68 + 1) = v6;
    webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(&v67, *(v67 + 8) - (v5 + 1));
    v62 = v67;
    *(*(v67 + 16) + v68) = v60;
    if ((a2[2064] & 1) == 0)
    {
      goto LABEL_91;
    }

    v67 = 0;
    v63 = *v32;
    *v32 = v62;
    if (v63 && atomic_fetch_add((v63 + 24), 0xFFFFFFFF) == 1)
    {
      v64 = *(v63 + 16);
      *(v63 + 16) = 0;
      if (v64)
      {
        MEMORY[0x2743DA520](v64, 0x1000C8077774924);
      }

      MEMORY[0x2743DA540](v63, 0x1010C40EE34DA14);
    }

    *(a2 + 128) = v68;
    v68 = 0uLL;
    v41 = a2[2064];
    if (v35 == 5)
    {
      goto LABEL_31;
    }
  }

  else
  {
    atomic_fetch_add_explicit((v4 + 24), 1u, memory_order_relaxed);
    if ((a2[2064] & 1) == 0)
    {
      goto LABEL_91;
    }

    v36 = v3 - 2;
    v37 = v5 + 2;
    v38 = *v32;
    *v32 = v4;
    if (v38 && atomic_fetch_add((v38 + 24), 0xFFFFFFFF) == 1)
    {
      v39 = *(v38 + 16);
      *(v38 + 16) = 0;
      if (v39)
      {
        MEMORY[0x2743DA520](v39, 0x1000C8077774924);
      }

      MEMORY[0x2743DA540](v38, 0x1010C40EE34DA14);
    }

    v40 = 0;
    *(a2 + 256) = v37;
    *(a2 + 257) = v36;
    v41 = a2[2064];
    if (v35 == 5)
    {
LABEL_31:
      if (v41)
      {
        v42 = 3;
        goto LABEL_81;
      }

LABEL_91:
      __break(1u);
    }
  }

  if ((v41 & 1) == 0)
  {
    goto LABEL_91;
  }

  v42 = 4;
LABEL_81:
  *(a2 + 38) = v42;
  *(a2 + 39) = 0;
  *(a2 + 43) = 4;
  a2[168] = 0;
  a2[165] = v40;
  v65 = *(a2 + 484);
  if (v65 != -1)
  {
    (off_2882A2808[v65])(&v74, a2 + 296);
  }

  *(a2 + 41) = 0;
  *(a2 + 296) = 0u;
  *(a2 + 312) = 0u;
  *(a2 + 484) = 3;
  *(a2 + 75) = 2;
  a2[296] = v35;
  if (v34 < 0)
  {
    v69 = v74;
    v70 = v75;
    operator new();
  }

  v4 = v67;
  if (v67)
  {
LABEL_86:
    if (atomic_fetch_add((v4 + 24), 0xFFFFFFFF) != 1)
    {
      return;
    }

    v66 = *(v4 + 16);
    *(v4 + 16) = 0;
    if (!v66)
    {
      goto LABEL_89;
    }

    goto LABEL_88;
  }
}

void webrtc::VideoRtpDepacketizerH265::Parse(unint64_t *a1@<X1>, char *a2@<X8>)
{
  v2 = a2;
  v93 = *MEMORY[0x277D85DE8];
  v3 = a1[2];
  if (!v3)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v14, v15, v16, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/video_rtp_depacketizer_h265.cc");
    }

    goto LABEL_11;
  }

  v4 = *a1;
  v5 = a1[1];
  v6 = (*(*(*a1 + 16) + v5) >> 1) & 0x3F;
  if (v6 == 50)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v21, v22, v23, v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/video_rtp_depacketizer_h265.cc");
    }

LABEL_11:
    *v2 = 0;
    v2[2064] = 0;
    return;
  }

  if (v6 != 49)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    if (v3 != 1)
    {
      v36 = (*(v4 + 16) + v5);
      bzero(&v78, 0x7F8uLL);
      v81 = 1;
      v83 = 0;
      *&v84[6] = 0xFF000000000000;
      *v84 = 0;
      v85 = 0;
      v86 = 0;
      v87 = 0;
      v88 = 0;
      v89 = 0;
      v91 = 0;
      v90 = 0;
      v92 = 1;
      v80 = 0;
      v82 = 5;
      v37 = *v36;
      v75 = 0;
      v76 = 0;
      v77 = 0;
      if ((v37 & 0x7E) != 0x60)
      {
        operator new();
      }

      if (v3 >= 5)
      {
        if (v3 - 4 >= __rev16(*(v36 + 1)))
        {
          operator new();
        }

        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log("\r\t", v59, v60, v61, v62, v63, v64, v65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/video_rtp_depacketizer_h265.cc");
        }

        *v2 = 0;
        v2[2064] = 0;
        v66 = v75;
        if (v75 && atomic_fetch_add((v75 + 24), 0xFFFFFFFF) == 1)
        {
          v67 = *(v75 + 16);
          *(v75 + 16) = 0;
          if (v67)
          {
            MEMORY[0x2743DA520](v67, 0x1000C8077774924);
          }

          MEMORY[0x2743DA540](v66, 0x1010C40EE34DA14);
        }
      }

      else
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log("\r\t", v38, v39, v40, v41, v42, v43, v44, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/video_rtp_depacketizer_h265.cc");
        }

        *v2 = 0;
        v2[2064] = 0;
      }

      if (v92 == 1)
      {
        v68 = v89;
        if (v89 && atomic_fetch_add((v89 + 24), 0xFFFFFFFF) == 1)
        {
          v69 = *(v68 + 16);
          *(v68 + 16) = 0;
          if (v69)
          {
            MEMORY[0x2743DA520](v69, 0x1000C8077774924);
          }

          MEMORY[0x2743DA540](v68, 0x1010C40EE34DA14);
        }

        webrtc::RTPVideoHeader::~RTPVideoHeader(&v78);
      }

      goto LABEL_78;
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  *a1 = 0;
  v72 = v4;
  v73 = v5;
  v74 = v3;
  a1[1] = 0;
  a1[2] = 0;
  if (v3 > 2)
  {
    bzero(a2, 0x7F8uLL);
    v2[167] = 1;
    *(v2 + 43) = 0;
    v2[192] = 0;
    *(v2 + 206) = 0;
    *(v2 + 25) = 0;
    v2[212] = -1;
    v2[284] = 0;
    v2[290] = 0;
    v2[1944] = 0;
    v2[1976] = 0;
    v28 = (v2 + 2040);
    *(v2 + 255) = 0;
    *(v2 + 257) = 0;
    *(v2 + 256) = 0;
    v2[2064] = 1;
    v29 = (*(v4 + 16) + v5);
    v30 = v29[2];
    if (v30 < 0)
    {
      v71 = v2;
      v45 = *v29;
      v46 = v29[1];
      if ((v30 & 0x3Fu) > 0x1F)
      {
        LOBYTE(v34) = 0;
        v47 = v3;
      }

      else
      {
        v47 = v3;
        if (v3 == 3)
        {
          v48 = 0;
        }

        else
        {
          v48 = (v29 + 3);
        }

        IsFirstSliceSegmentInPic = webrtc::H265BitstreamParser::IsFirstSliceSegmentInPic(v48, v3 - 3);
        v34 = *&IsFirstSliceSegmentInPic & ((IsFirstSliceSegmentInPic & 0x100) >> 8);
      }

      atomic_fetch_add_explicit((v4 + 24), 1u, memory_order_relaxed);
      v72 = v4;
      if (atomic_fetch_add((v4 + 24), 0xFFFFFFFF) == 1)
      {
        v50 = *(v4 + 16);
        *(v4 + 16) = 0;
        if (v50)
        {
          MEMORY[0x2743DA520](v50, 0x1000C8077774924);
        }

        MEMORY[0x2743DA540](v4, 0x1010C40EE34DA14);
      }

      v73 = v5 + 1;
      v74 = v47 - 1;
      webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(&v72, *(v72 + 8) - (v5 + 1));
      v51 = v72;
      v52 = v73;
      *(*(v72 + 16) + v73) = v45 & 0x81 | (2 * (v30 & 0x3F));
      webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(&v72, *(v51 + 8) - v52);
      v53 = v72;
      v54 = v73;
      *(*(v72 + 16) + v73 + 1) = v46;
      v78 = 0;
      v79 = 0uLL;
      webrtc::CopyOnWriteBuffer::AppendData<unsigned char,(void *)0>(&v78, &webrtc::kStartCode, 4uLL);
      webrtc::CopyOnWriteBuffer::AppendData<unsigned char,(void *)0>(&v78, (*(v53 + 16) + v54), v74);
      v2 = v71;
      if ((v71[2064] & 1) == 0)
      {
        goto LABEL_83;
      }

      v55 = v78;
      if (&v78 != v28)
      {
        if (v78)
        {
          atomic_fetch_add_explicit((v78 + 24), 1u, memory_order_relaxed);
        }

        v56 = *v28;
        if (v56 && atomic_fetch_add((v56 + 24), 0xFFFFFFFF) == 1)
        {
          v57 = *(v56 + 16);
          *(v56 + 16) = 0;
          if (v57)
          {
            MEMORY[0x2743DA520](v57, 0x1000C8077774924);
          }

          MEMORY[0x2743DA540](v56, 0x1010C40EE34DA14);
        }

        *(v71 + 255) = v55;
        *(v71 + 128) = v79;
        v55 = v78;
      }

      if (v55 && atomic_fetch_add((v55 + 24), 0xFFFFFFFF) == 1)
      {
        v58 = *(v55 + 16);
        *(v55 + 16) = 0;
        if (v58)
        {
          MEMORY[0x2743DA520](v58, 0x1000C8077774924);
        }

        MEMORY[0x2743DA540](v55, 0x1010C40EE34DA14);
      }
    }

    else
    {
      atomic_fetch_add_explicit((v4 + 24), 1u, memory_order_relaxed);
      if ((v2[2064] & 1) == 0)
      {
        goto LABEL_83;
      }

      v31 = v5 + 3;
      v32 = *v28;
      *v28 = v4;
      if (v32 && atomic_fetch_add((v32 + 24), 0xFFFFFFFF) == 1)
      {
        v33 = *(v32 + 16);
        *(v32 + 16) = 0;
        if (v33)
        {
          MEMORY[0x2743DA520](v33, 0x1000C8077774924);
        }

        MEMORY[0x2743DA540](v32, 0x1010C40EE34DA14);
      }

      LOBYTE(v34) = 0;
      *(v2 + 256) = v31;
      *(v2 + 257) = v3 - 3;
    }

    if ((v30 & 0x38) == 0x10)
    {
      if (v2[2064])
      {
        v35 = 3;
        goto LABEL_35;
      }
    }

    else if (v2[2064])
    {
      v35 = 4;
LABEL_35:
      *(v2 + 38) = v35;
      *(v2 + 39) = 0;
      *(v2 + 43) = 5;
      v2[165] = v34;
      v4 = v72;
      if (!v72)
      {
        return;
      }

      goto LABEL_78;
    }

LABEL_83:
    __break(1u);
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
LABEL_14:
    webrtc::webrtc_logging_impl::Log("\r\t", v7, v8, v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/video_rtp_depacketizer_h265.cc");
  }

LABEL_15:
  *v2 = 0;
  v2[2064] = 0;
LABEL_78:
  if (atomic_fetch_add((v4 + 24), 0xFFFFFFFF) == 1)
  {
    v70 = *(v4 + 16);
    *(v4 + 16) = 0;
    if (v70)
    {
      MEMORY[0x2743DA520](v70, 0x1000C8077774924);
    }

    MEMORY[0x2743DA540](v4, 0x1010C40EE34DA14);
  }
}

__n128 webrtc::VideoRtpDepacketizerRaw::Parse@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  bzero(a2, 0x7F8uLL);
  *(a2 + 167) = 1;
  *(a2 + 172) = 0;
  *(a2 + 192) = 0;
  *(a2 + 206) = 0;
  *(a2 + 200) = 0;
  *(a2 + 212) = -1;
  *(a2 + 284) = 0;
  *(a2 + 290) = 0;
  *(a2 + 1944) = 0;
  *(a2 + 1976) = 0;
  *(a2 + 2064) = 1;
  *(a2 + 2040) = *a1;
  result = *(a1 + 8);
  *(a2 + 2048) = result;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return result;
}

double webrtc::VideoRtpDepacketizerVp8::Parse@<D0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  if (*a1)
  {
    v5 = (*(v4 + 16) + a1[1]);
  }

  else
  {
    v5 = 0;
  }

  v6 = a1[2];
  bzero(v32, 0x7F8uLL);
  v7 = 1;
  v37 = 1;
  v39 = 0;
  *&v40[6] = 0xFF000000000000;
  *v40 = 0;
  v41 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0uLL;
  if (v6)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  v49 = 1;
  if (!v6)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
LABEL_13:
      webrtc::webrtc_logging_impl::Log("\r\t", v13, v14, v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/video_rtp_depacketizer_vp8.cc");
    }

LABEL_15:
    *a2 = 0;
    *(a2 + 2064) = 0;
LABEL_16:
    webrtc::RTPVideoHeader::~RTPVideoHeader(v32);
    return result;
  }

  v38 = 1;
  v42 = 0xFFFFFFFFFF0000;
  v44 = 0;
  v45 = 1;
  v43 = 0xFFFFFFFFLL;
  v9 = *v8;
  LOBYTE(v42) = (v9 & 0x20) != 0;
  v10 = *v8;
  v44 = (v10 & 0x10) != 0;
  v11 = *v8 & 7;
  HIDWORD(v43) = v11;
  if (v9 < 0)
  {
    if (v6 == 1)
    {
      goto LABEL_15;
    }

    v26 = v8[1];
    v27 = (v8 + 2);
    v28 = v6 - 2;
    if (v26 < 0)
    {
      if (v6 == 2)
      {
        goto LABEL_15;
      }

      v29 = *v27 & 0x7F;
      WORD1(v42) = v29;
      if (*v27 < 0)
      {
        v28 = v6 - 3;
        if (v6 == 3)
        {
          goto LABEL_15;
        }

        WORD1(v42) = v8[3] | (v29 << 8);
        v7 = 4;
        v30 = 3;
      }

      else
      {
        v7 = 3;
        v30 = 2;
      }

      v27 = &v8[v30 + 1];
      --v28;
      if ((v26 & 0x40) == 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v7 = 2;
      if ((v26 & 0x40) == 0)
      {
LABEL_37:
        if ((v26 & 0x30) != 0)
        {
          if (!v28)
          {
            goto LABEL_15;
          }

          if ((v26 & 0x20) != 0)
          {
            BYTE6(v42) = *v27 >> 6;
            HIBYTE(v42) = (*v27 & 0x20) != 0;
          }

          if ((v26 & 0x10) != 0)
          {
            LODWORD(v43) = *v27 & 0x1F;
          }

          ++v7;
        }

        goto LABEL_9;
      }
    }

    if (!v28)
    {
      goto LABEL_15;
    }

    v31 = *v27++;
    WORD2(v42) = v31;
    ++v7;
    --v28;
    goto LABEL_37;
  }

LABEL_9:
  v12 = (v11 == 0) & (v10 >> 4);
  v36 = v12;
  if (v6 == v7)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  if (!v12 || (v21 = &v8[v7], (*v21 & 1) != 0))
  {
    v22 = 0;
    v33 = 4;
    v34 = 0;
  }

  else
  {
    v33 = 3;
    if ((v6 - v7) < 10)
    {
      goto LABEL_15;
    }

    v34 = v21[6] | ((v21[7] & 0x3F) << 8);
    v22 = v21[8] | ((v21[9] & 0x3F) << 8);
  }

  v35 = v22;
  v23 = v6 - v7;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 24), 1u, memory_order_relaxed);
  }

  v24 = a1[1] + v7;
  v47 = v4;
  *&v48 = v24;
  *(&v48 + 1) = v23;
  *a2 = 0;
  *(a2 + 2064) = 0;
  webrtc::RTPVideoHeader::RTPVideoHeader(a2, v32);
  v25 = v47;
  v47 = 0;
  *(a2 + 2040) = v25;
  *(a2 + 2048) = v48;
  result = 0.0;
  v48 = 0u;
  *(a2 + 2064) = 1;
  if (v49)
  {
    goto LABEL_16;
  }

  return result;
}