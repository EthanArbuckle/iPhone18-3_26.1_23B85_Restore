uint64_t BlueFin::GlMeSrdSatReport::UpdateMsmtCensorshipStatus(BlueFin::GlMeSrdSatReport *this, BlueFin::GlMeDSPMeas *a2, BlueFin::GlMeSrdDspMeasAux *a3)
{
  v6 = *(a2 + 21);
  result = (*(**(*(this + 1) + 24) + 40))(*(*(this + 1) + 24));
  v8 = result;
  if (result)
  {
    v9 = 0;
    while (*(a3 + v9 + 88) != 255)
    {
      if (++v9 == 5)
      {
        goto LABEL_7;
      }
    }

    *(a2 + 21) &= ~0x20u;
  }

LABEL_7:
  if (*(this + 3198))
  {
    result = BlueFin::GlMeSrdDspMeasAux::GetTrkRslts(a3);
    v10.i32[0] = *(result + 25);
    v11 = vminv_u16(vmin_u16((*&vdup_n_s16(*(result + 24)) & 0xFF00FF00FF00FFLL), *&vmovl_u8(v10)));
    v12 = v11;
    v13 = *(result + 28) + 10 * *(result + 27);
    if (v13 <= 0x20)
    {
      v14 = v11;
    }

    else
    {
      v14 = 3;
    }

    if (v13 > 0x2B)
    {
      v14 = 4;
    }

    if (v13 < 0x38)
    {
      v12 = v14;
    }

    if (~v6 & 0x40060) != 0 || (*(a3 + 180))
    {
      goto LABEL_22;
    }

    v15 = *(this + 3199);
    if (v15 >= 1)
    {
      *(this + 3199) = v15 - 1;
      LOBYTE(v15) = v15 - 1;
    }

    if ((v12 - 1) > 1u)
    {
      if (v12 != 3)
      {
        if ((v12 & 0xFE) != 4)
        {
          DeviceFaultNotify("glmesrd_sat_report_validity_chk.cpp", 399, "UpdateMsmtCensorshipStatus", "0");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_report_validity_chk.cpp", 399, "0");
        }

        if ((*(a2 + 22) - 1) < 3)
        {
          goto LABEL_62;
        }

LABEL_60:
        if (*(this + 3198) == 1 && v15 < 1)
        {
LABEL_62:
          *(this + 1599) = 0;
          goto LABEL_63;
        }

        goto LABEL_63;
      }

      v16 = *(a2 + 22);
      if ((v16 - 1) <= 2)
      {
        LOBYTE(v15) = 0;
        *(this + 1599) = 0;
      }
    }

    else
    {
      v16 = *(a2 + 22);
    }

    if ((v16 | 4) == 4)
    {
LABEL_22:
      *(this + 3199) = 3;
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  if (*(a3 + 200))
  {
    goto LABEL_49;
  }

  if ((*(a3 + 201) & 1) == 0 && (*(a3 + 202) & 1) == 0 && (*(a3 + 203) & 1) == 0 && (*(a3 + 204) & 1) == 0 && (*(a3 + 205) & 1) == 0 && (*(a3 + 206) & 1) == 0 && (*(a3 + 207) & 1) == 0 && (*(a3 + 208) & 1) == 0 && (*(a3 + 209) & 1) == 0 && (*(a3 + 210) & 1) == 0 && (*(a3 + 211) & 1) == 0 && (*(a3 + 212) & 1) == 0 && (*(a3 + 213) & 1) == 0 && (*(a3 + 214) & 1) == 0 && *(a3 + 215) != 1)
  {
    goto LABEL_63;
  }

  if (*(a3 + 203) & 1) != 0 || (*(a3 + 204) & 1) != 0 || (*(a3 + 205) & 1) != 0 || (*(a3 + 206) & 1) != 0 || (*(a3 + 207) & 1) != 0 || (*(a3 + 208) & 1) != 0 || (*(a3 + 211) & 1) != 0 || (*(a3 + 212) & 1) != 0 || (*(a3 + 213) & 1) != 0 || (*(a3 + 214))
  {
LABEL_49:
    v17 = 1;
  }

  else
  {
    v17 = *(a3 + 215);
  }

  result = (*(**(*(this + 1) + 24) + 48))(*(*(this + 1) + 24));
  if ((result & 1) == 0)
  {
    result = (*(**(*(this + 1) + 24) + 32))(*(*(this + 1) + 24));
    if ((result & 1) == 0)
    {
      v18 = (*&v6 & 0x40060) != 262240;
      result = (*(**(*(this + 1) + 24) + 16))(*(*(this + 1) + 24));
      if ((v8 | result) & 1) == 0 && ((v18 | v17))
      {
        *(this + 1599) = 769;
      }
    }
  }

LABEL_63:
  v19 = *(this + 3198);
  if (v19 == 1)
  {
    *(a2 + 21) &= 0xFFFFFF1F;
    *(a3 + 49) |= 0x1000u;
    *(a2 + 21) &= 0xFFFFFDF7;
    *(a2 + 14) = 897988541;
  }

  *(a3 + 184) = v19;
  *(a3 + 185) = *(this + 3199);
  return result;
}

uint64_t BlueFin::GlMeSrdDspMeasAux::GetTrkRslts(BlueFin::GlMeSrdDspMeasAux *this)
{
  v1 = *(this + 9);
  if (v1 != 2 && v1 != 4)
  {
    DeviceFaultNotify("glmesrd_dsp_meas_aux.h", 411, "GetTrkRslts", "m_otMsmtSource.GetEnum() == GLMESRD_MSMT_SRC_TRACK || m_otMsmtSource.GetEnum() == GLMESRD_MSMT_SRC_SUB_TRACK");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_dsp_meas_aux.h", 411, "m_otMsmtSource.GetEnum() == GLMESRD_MSMT_SRC_TRACK || m_otMsmtSource.GetEnum() == GLMESRD_MSMT_SRC_SUB_TRACK");
  }

  return this + 64;
}

BOOL BlueFin::GlMeSrdSatReport::GenerateAcqMgrRequests(BlueFin::GlMeSrdSatReport *this, BlueFin::GlMeDSPMeas *a2, BlueFin::GlMeSrdDspMeasAux *a3)
{
  v3 = *(a3 + 97);
  if ((*(a2 + 87) & 4) != 0)
  {
    v4 = 100;
  }

  else
  {
    v4 = 10;
  }

  if (v4 < v3)
  {
    DeviceFaultNotify("glmesrd_sat_report_validity_chk.cpp", 190, "GenerateAcqMgrRequests", "ucMaxInvalidCountBeforeStartingSearch <= ucMaxInvalidCountBeforeKillingTrack");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_report_validity_chk.cpp", 190, "ucMaxInvalidCountBeforeStartingSearch <= ucMaxInvalidCountBeforeKillingTrack");
  }

  if (*(a3 + 8) - 81 >= 0x35)
  {
    v5 = 8;
  }

  else
  {
    v5 = 2;
  }

  v6 = *(this + 3193);
  v7 = *(a3 + 48) & 0x800;
  v8 = *(this + 3192);
  v9 = *(this + 3194);
  v10 = *(this + 3195);
  v11 = v10 > 1;
  v12 = *(this + 3196);
  v13 = *(this + 3197);
  v14 = v13 > 1;
  v15 = (*(a3 + 48) >> 11) & 1;
  v16 = v8 > v3;
  v17 = v9 > v3;
  v18 = v12 > v3;
  if (v5 < v6 || v4 < v8 || v4 < v9 || v4 < v10 || v4 < v12 || v7 != 0 || v4 < v13)
  {
    v14 = 0;
    LOBYTE(v15) = 0;
    v18 = 0;
    v11 = 0;
    v17 = 0;
    v16 = 0;
  }

  result = v4 < v13;
  *(a3 + 200) = v5 < v6;
  *(a3 + 201) = v4 < v8;
  *(a3 + 202) = v4 < v9;
  *(a3 + 203) = v4 < v10;
  *(a3 + 204) = v4 < v12;
  *(a3 + 205) = v7 >> 11;
  *(a3 + 206) = result;
  *(a3 + 207) = 0;
  *(a3 + 209) = v16;
  *(a3 + 210) = v17;
  *(a3 + 211) = v11;
  *(a3 + 212) = v18;
  *(a3 + 213) = v15;
  *(a3 + 214) = v14;
  *(a3 + 215) = 0;
  return result;
}

uint64_t BlueFin::GlMeSrdDspMeasAux::isGarbage(BlueFin::GlMeSrdDspMeasAux *this)
{
  v1 = *(this + 9);
  v2 = 1;
  if (v1 > 2)
  {
    if (v1 != 3)
    {
      if (v1 != 4)
      {
        return v2 & 1;
      }

      goto LABEL_7;
    }

    if ((*(this + 64) & 1) == 0)
    {
      v2 = *(this + 40);
      return v2 & 1;
    }

LABEL_21:
    v2 = 1;
    return v2 & 1;
  }

  if (v1 == 1)
  {
    if ((*(this + 64) & 1) == 0 && (*(this + 40) != 1 || *(this + 11) != 3.4028e38 && *(this + 12) != 3.4028e38))
    {
      v2 = 0;
      return v2 & 1;
    }

    goto LABEL_21;
  }

  if (v1 != 2)
  {
    return v2 & 1;
  }

LABEL_7:
  if (*(this + 40))
  {
    goto LABEL_21;
  }

  v3 = *(this + 19);
  if (v3 >= 5 && v3 != 7)
  {
    goto LABEL_21;
  }

  v4 = *(this + 20);
  if (v4 >= 5 && v4 != 7)
  {
    goto LABEL_21;
  }

  v2 = *(this + 21) > 2u;
  return v2 & 1;
}

_BYTE *BlueFin::GlMeSrdAsicBitPhsTrkMsmt::Print(_BYTE *this)
{
  if (this[4] == 1 && this[12] >= 0x1Au)
  {
    v1 = "stHistogram.ucEffBitIntvlInCaEpochs <= _DIM(stHistogram.afTotAccumHist)";
    DeviceFaultNotify("glmesrd_estimators_input_trk.cpp", 494, "Print", "stHistogram.ucEffBitIntvlInCaEpochs <= _DIM(stHistogram.afTotAccumHist)");
    v2 = 494;
    goto LABEL_8;
  }

  if (this[116] == 1 && this[124] >= 0x1Au)
  {
    v1 = "stDeltaHistogram.ucEffBitIntvlInCaEpochs <= _DIM(stDeltaHistogram.afTotAccumHist)";
    DeviceFaultNotify("glmesrd_estimators_input_trk.cpp", 511, "Print", "stDeltaHistogram.ucEffBitIntvlInCaEpochs <= _DIM(stDeltaHistogram.afTotAccumHist)");
    v2 = 511;
LABEL_8:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_estimators_input_trk.cpp", v2, v1);
  }

  return this;
}

void BlueFin::GlMeSrdEstBitPhs::Run(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, float *a7, uint64_t a8, unsigned int *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char __src, char a16, int a17, int a18, __int16 a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0xA48] = *MEMORY[0x29EDCA608];
  *a12 = 0;
  *(a12 + 4) = -1082130432;
  *(a12 + 8) = 0;
  *(a12 + 10) = 127;
  if ((a9[1] & 1) == 0)
  {
    v156 = "stAsicBitPhsTrkMsmt.stHistogram.bValid";
    DeviceFaultNotify("glmesrd_bitphase.cpp", 494, "Run", "stAsicBitPhsTrkMsmt.stHistogram.bValid");
    v157 = 494;
    goto LABEL_153;
  }

  if ((a9[29] & 1) == 0)
  {
    v156 = "stAsicBitPhsTrkMsmt.stDeltaHistogram.bValid";
    DeviceFaultNotify("glmesrd_bitphase.cpp", 495, "Run", "stAsicBitPhsTrkMsmt.stDeltaHistogram.bValid");
    v157 = 495;
LABEL_153:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_bitphase.cpp", v157, v156);
  }

  if (*a5 != 1 || !a9[30])
  {
    goto LABEL_149;
  }

  v79 = *(a9 + 124);
  a66 = &unk_2A1F0BF90;
  a67 = 1;
  a68 = 0;
  a69 = v79;
  a70 = 1;
  a71 = *(a5 + 4);
  a72 = 0;
  v80 = *(a8 + 4);
  v81 = *(a8 + 8);
  a73 = *a8;
  a74 = v80;
  a75 = v81;
  a77 = 0;
  a76 = 0;
  LODWORD(STACK[0x808]) = 0;
  *&STACK[0x7F8] = 0u;
  *&STACK[0x7E8] = 0u;
  *&STACK[0x7D8] = 0u;
  *&STACK[0x7C8] = 0u;
  a79 = 0u;
  a78 = 0u;
  STACK[0x958] = &STACK[0x810];
  STACK[0x998] = &STACK[0x970];
  if (!v79)
  {
    DeviceFaultNotify("glmesrd_bitphase.cpp", 1264, "GlMeSrdEstBitPhsSerializeContainer", "stAsicBitPhsTrkMsmt.stDeltaHistogram.ucEffBitIntvlInCaEpochs > 0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_bitphase.cpp", 1264, "stAsicBitPhsTrkMsmt.stDeltaHistogram.ucEffBitIntvlInCaEpochs > 0");
  }

  for (i = 0; i != 324; i += 108)
  {
    v84 = &a66 + i;
    v84[164] = 0;
    *(v84 + 40) = 0;
    *(v84 + 168) = 0uLL;
    *(v84 + 184) = 0uLL;
    *(v84 + 200) = 0uLL;
    *(v84 + 216) = 0uLL;
    *(v84 + 232) = 0uLL;
    *(v84 + 248) = 0uLL;
    *(v84 + 66) = 0;
  }

  for (j = 0; j != 36; j += 12)
  {
    v86 = &a66 + j;
    v86[512] = 0;
    *(v86 + 129) = -1082130432;
    *(v86 + 260) = 0;
    v86[522] = 127;
  }

  if (*(a9 + 117) == 1)
  {
    *(a1 + 42) = 0;
    *(a1 + 40) = 0;
    bzero(*(a1 + 32), *(a1 + 41) * *(a1 + 43));
  }

  v87 = *(a11 + 29) | ~*(a11 + 28);
  v88 = *(a1 + 56);
  *(a1 + 56) = *(a11 + 29) & 1 | ((*(a11 + 28) & 1) == 0);
  if (v87 & 1) != 0 || (v88)
  {
    if (*(a11 + 72) == 1)
    {
      v90 = *(a11 + 80);
      if (v90 < 0.0)
      {
        v90 = -v90;
      }

      v89 = v90 > *(a5 + 12);
    }

    else
    {
      v89 = 1;
    }
  }

  else
  {
    v89 = 0;
  }

  if (*a9 & 1) != 0 || (*(a9 + 1))
  {
    v89 = (*(a9 + 117) & 1) != 0 || (*(a11 + 1) & 1) == 0;
  }

  BlueFin::GlMeSrdBitHistBuf::GlMeSrdBitHistBuf(&v165, a9 + 32, a9 + 124, a9 + 30);
  v91 = *(a9 + 117);
  BlueFin::GlMeSrdBitHistBuf::operator=(&a76, &v165);
  HIBYTE(a67) = v91;
  a68 = v89;
  if (v89)
  {
    __src = 0;
    a17 = -1082130432;
    LOWORD(a18) = 0;
    BYTE2(a18) = 127;
    v92 = BlueFin::GlMeSrdEstBitPhsSerializeContainer::AddAccBitHistObsAndResults(&a66, 1, &v165, &__src);
    if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      (*(a66 + 24))(&a66, 0, 0, v92);
    }

    goto LABEL_149;
  }

  BlueFin::GlMeSrdBitHistBuf::GlMeSrdBitHistBuf(&__src, a9 + 32, a9 + 124, a9 + 30);
  memcpy((*(a1 + 32) + *(a1 + 43) * *(a1 + 42)), &__src, *(a1 + 43));
  v93 = *(a1 + 42) + 1;
  *(a1 + 42) = v93;
  if (*(a1 + 41) <= v93)
  {
    *(a1 + 40) = 1;
    *(a1 + 42) = 0;
  }

  v94 = 0;
  __src = 0;
  a17 = 0;
  a63 = &a22;
  do
  {
    v95 = &__src + v94;
    v95[36] = 0;
    *(v95 + 8) = 0;
    *(v95 + 40) = 0uLL;
    *(v95 + 56) = 0uLL;
    *(v95 + 72) = 0uLL;
    *(v95 + 88) = 0uLL;
    *(v95 + 104) = 0uLL;
    *(v95 + 120) = 0uLL;
    v94 += 108;
    *(v95 + 34) = 0;
  }

  while (v94 != 324);
  v96 = *(a5 + 16);
  a16 = v79;
  a18 = v96;
  a19 = *(a5 + 20);
  BlueFin::GlMeSrdObsBuf::ItFcn(a1 + 32, 0, &__src, BlueFin::GlMeSrdEstBitPhs::AccumulateBitHistogram);
  v97 = __src;
  if (__src)
  {
    v98 = 0;
    while (((a17 >> v98) & 1) == 0)
    {
LABEL_90:
      if (++v98 >= v97)
      {
        goto LABEL_146;
      }
    }

    v99 = a63 + 108 * v98;
    v100 = *(a3 + 16);
    v101 = *a7;
    LOBYTE(v163) = 0;
    HIDWORD(v163) = -1082130432;
    LOWORD(v164) = 0;
    BYTE2(v164) = 127;
    v102 = *v99;
    if (!*v99)
    {
      goto LABEL_88;
    }

    LOBYTE(v163) = 1;
    v103 = *a9;
    v104 = *(a9 + 1);
    STACK[0xA30] = 0;
    STACK[0xA28] = 0;
    LOBYTE(STACK[0xA40]) = 0;
    STACK[0xA38] = 0;
    v105 = *(v100 + 8);
    if (v105 >= 0x1A)
    {
      DeviceFaultNotify("glmesrd_bitphase.cpp", 92, "EstTrkBitPhs", "ucEffBitIntInMs <= GlMeSrdAsicBitPhsTrkMsmt::MAX_HIST_VEC_LEN");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_bitphase.cpp", 92, "ucEffBitIntInMs <= GlMeSrdAsicBitPhsTrkMsmt::MAX_HIST_VEC_LEN");
    }

    v106 = v103 | v104;
    LODWORD(STACK[0xA20]) = 0;
    *&STACK[0xA00] = 0u;
    *&STACK[0xA10] = 0u;
    *&STACK[0x9E0] = 0u;
    *&STACK[0x9F0] = 0u;
    *&STACK[0x9C0] = 0u;
    *&STACK[0x9D0] = 0u;
    v107 = *(v99 + 4);
    if (*(v99 + 4))
    {
      v108 = 0;
      v109 = v101 * v105;
      do
      {
        v110 = BlueFin::GlMeSrdBitHistBuf::operator[](v99, v108);
        v102 = *v99;
        v111 = v110 / *v99;
        v112 = v111 * v111;
        v113 = v111 - v109;
        if (v106)
        {
          v113 = v112;
        }

        if (v113 < 0.0)
        {
          v113 = 0.0;
        }

        v114 = v113 / v109;
        *(&STACK[0x9C0] + v108) = v114;
        *(&STACK[0xA28] + v108) = v108;
        if (v108)
        {
          v115 = 0;
          while (v114 <= *(&STACK[0x9C0] + *(&STACK[0xA28] + v115)))
          {
            if (v108 == ++v115)
            {
              goto LABEL_53;
            }
          }

          v116 = v108;
          v117 = v108;
          do
          {
            *(&STACK[0xA28] + v117--) = *(&STACK[0xA28] + (v116 - 1));
            v116 = v117;
          }

          while (v115 < v117);
          *(&STACK[0xA28] + v115) = v108;
        }

LABEL_53:
        ++v108;
      }

      while (v108 != v107);
      v118 = LOBYTE(STACK[0xA28]);
      v119 = *(&STACK[0x9C0] + v118);
      v120 = LOBYTE(STACK[0xA29]);
      v121 = *(&STACK[0x9C0] + v120);
      if (v106)
      {
        v122 = *(&STACK[0x9C0] + v120);
        if (v120 >= 0x19)
        {
          DeviceFaultNotify("glmesrd_bitphase.cpp", 166, "EstTrkBitPhs", "ucIndexHistHalfBitOff < 25");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_bitphase.cpp", 166, "ucIndexHistHalfBitOff < 25");
        }

LABEL_59:
        v123 = 0.0;
        if (v121 >= 0.0000001)
        {
          v123 = 1.0 - (1.0 / (v119 / v121));
        }

        *(&v163 + 1) = v123;
        v124 = *(a5 + 16);
        if (v102 >= v124)
        {
          v127 = *(a5 + 4);
          if (v123 >= v127)
          {
            LOBYTE(v164) = 1;
          }

          if (v123 >= *(a5 + 8))
          {
            BYTE1(v164) = 1;
          }

          v126 = 1;
          if (v123 < v127)
          {
            v125 = 0;
          }

          else
          {
            BYTE2(v164) = v118 - ((v106 & 1) == 0);
            v126 = BYTE2(v164) == 127;
            v125 = 1;
          }
        }

        else
        {
          v125 = 0;
          v126 = 1;
        }

        v129 = fabsf(*(a4 + 16) + -0.001) < 0.00000011921 && *a6 - 81 < 0x35;
        if ((v129 | v106))
        {
          if (v125)
          {
            v123 = 0.0;
            if (v122 >= 0.0000001)
            {
              v123 = 1.0 - (1.0 / (v119 / v122));
            }

            *(&v163 + 1) = v123;
            if (v102 >= v124)
            {
              if (v123 < *(a5 + 4))
              {
                BYTE2(v164) = 0;
                LOBYTE(v164) = 0;
                if (v123 < *(a5 + 8))
                {
                  v130 = 0;
                  BYTE1(v164) = 0;
LABEL_89:
                  BlueFin::GlMeSrdEstBitPhsSerializeContainer::AddAccBitHistObsAndResults(&a66, v130, (a63 + 108 * v98), &v163);
                  v97 = __src;
                  goto LABEL_90;
                }

LABEL_88:
                v130 = 0;
                goto LABEL_89;
              }

              if (v123 < *(a5 + 8))
              {
                BYTE1(v164) = 0;
                goto LABEL_87;
              }
            }
          }

LABEL_86:
          if (!v125)
          {
            goto LABEL_88;
          }

LABEL_87:
          if (v123 < 0.0 || v126)
          {
            goto LABEL_88;
          }

          v131 = *(a12 + 8);
          if (*a12 == 1)
          {
            if ((*(a12 + 8) & 1) == 0 || *(a12 + 4) < 0.0 || *(a12 + 10) == 127)
            {
              goto LABEL_134;
            }
          }

          else if ((*(a12 + 8) & 1) == 0)
          {
            goto LABEL_134;
          }

          if (*(a12 + 4) >= v123)
          {
            goto LABEL_88;
          }

LABEL_134:
          *a12 = v163;
          *(a12 + 8) = v164;
          v130 = 1;
          goto LABEL_89;
        }

        if (!v125 || v105 < 3)
        {
          goto LABEL_86;
        }

        v132 = *(&STACK[0x9C0] + v118);
        v133 = *(&STACK[0x9C0] + v120);
        if (v132 < v133)
        {
          DeviceFaultNotify("glmesrd_bitphase.cpp", 285, "TrkShapeCheck", "afPkHistVals[aucPkHistIdx[0]] >= afPkHistVals[aucPkHistIdx[1]]");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_bitphase.cpp", 285, "afPkHistVals[aucPkHistIdx[0]] >= afPkHistVals[aucPkHistIdx[1]]");
        }

        v134 = LOBYTE(STACK[0xA2A]);
        v135 = *(&STACK[0x9C0] + v134);
        if (v133 < v135)
        {
          DeviceFaultNotify("glmesrd_bitphase.cpp", 286, "TrkShapeCheck", "afPkHistVals[aucPkHistIdx[1]] >= afPkHistVals[aucPkHistIdx[2]]");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_bitphase.cpp", 286, "afPkHistVals[aucPkHistIdx[1]] >= afPkHistVals[aucPkHistIdx[2]]");
        }

        if (v118 - v120 >= 0)
        {
          v136 = v118 - v120;
        }

        else
        {
          v136 = v120 - v118;
        }

        v137 = v118 - v134;
        if (v137 < 0)
        {
          v137 = -v137;
        }

        v138 = v120 - v134;
        if (v138 >= 0)
        {
          v139 = v138;
        }

        else
        {
          v139 = -v138;
        }

        v140 = v105 - 1;
        v142 = v136 == 1 || v136 == v140;
        if (v137 != 1 && v139 != 1)
        {
          v144 = v137 == v140 || v139 == v140;
          v142 &= v144;
        }

        v145 = v132 - v133;
        v146 = vabds_f32(v132, v133);
        v147 = vabds_f32(v132, v135);
        v148 = vabds_f32(v133, v135);
        if (v146 == v147)
        {
          v149 = v133 - v135;
          v151 = v147 == v148 && v149 == 0.0;
          if (v145 == 0.0 || v151)
          {
            goto LABEL_145;
          }
        }

        else if (v145 == 0.0)
        {
          goto LABEL_145;
        }

        v153 = (v146 + v147) != 0.0 && (v147 + v148) != 0.0;
        if (v153 & v142)
        {
          goto LABEL_86;
        }

LABEL_145:
        v130 = 0;
        LOWORD(v164) = 0;
        goto LABEL_89;
      }
    }

    else
    {
      LODWORD(v120) = 0;
      LODWORD(v118) = 0;
      v119 = 0.0;
      v121 = 0.0;
      v122 = 0.0;
      if (v106)
      {
        goto LABEL_59;
      }
    }

    v122 = v121;
    v121 = *(&STACK[0x9C0] + (v118 + (v105 >> 1)) % v105);
    goto LABEL_59;
  }

LABEL_146:
  if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    (*(a66 + 24))(&a66, 0, 0);
  }

LABEL_149:
  v154 = STACK[0xA48];
  v155 = *MEMORY[0x29EDCA608];
}

float BlueFin::GlMeSrdBitHistBuf::GlMeSrdBitHistBuf(BlueFin::GlMeSrdBitHistBuf *this, float *a2, const unsigned __int8 *a3, const unsigned int *a4)
{
  *(this + 4) = 0;
  *this = 0;
  result = 0.0;
  *(this + 8) = 0u;
  v5 = (this + 8);
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 26) = 0;
  v6 = *a3;
  if (v6 >= 0x1A)
  {
    DeviceFaultNotify("glmesrd_bithistbuf.cpp", 57, "GlMeSrdBitHistBuf", "rucNbHistBins <= MAX_NB_OF_HIST_BINS");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_bithistbuf.cpp", 57, "rucNbHistBins <= MAX_NB_OF_HIST_BINS");
  }

  *(this + 4) = v6;
  *this = *a4;
  if (v6)
  {
    do
    {
      v7 = *a2++;
      result = v7;
      *v5++ = v7;
      --v6;
    }

    while (v6);
  }

  return result;
}

float BlueFin::GlMeSrdBitHistBuf::operator=(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (v2 >= 0x1A)
  {
    DeviceFaultNotify("glmesrd_bithistbuf.cpp", 79, "operator=", "rhs.m_ucNbHistBins <= MAX_NB_OF_HIST_BINS");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_bithistbuf.cpp", 79, "rhs.m_ucNbHistBins <= MAX_NB_OF_HIST_BINS");
  }

  *(a1 + 4) = v2;
  *a1 = *a2;
  for (i = 8; i != 108; i += 4)
  {
    result = *(a2 + i);
    *(a1 + i) = result;
  }

  return result;
}

float BlueFin::GlMeSrdEstBitPhsSerializeContainer::AddAccBitHistObsAndResults(uint64_t a1, int a2, _DWORD *a3, uint64_t a4)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    v10 = "m_bIsMiBitHist1DBit";
    DeviceFaultNotify("glmesrd_bitphase.cpp", 1316, "AddAccBitHistObsAndResults", "m_bIsMiBitHist1DBit");
    v11 = 1316;
    goto LABEL_8;
  }

  if (!*a3)
  {
    v10 = "stEstBitHistBuf.GetTotalObsLenInEffSym() > 0";
    DeviceFaultNotify("glmesrd_bitphase.cpp", 1317, "AddAccBitHistObsAndResults", "stEstBitHistBuf.GetTotalObsLenInEffSym() > 0");
    v11 = 1317;
LABEL_8:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_bitphase.cpp", v11, v10);
  }

  BlueFin::GlMeSrdBitHistBuf::operator=(*(a1 + 488) + 108 * *(a1 + 24), a3);
  v7 = *(a1 + 24);
  if (a2)
  {
    *(a1 + 25) = v7;
  }

  v8 = *(a1 + 552) + 12 * v7;
  *v8 = *a4;
  result = *(a4 + 4);
  *(v8 + 4) = result;
  *(v8 + 8) = *(a4 + 8);
  *(v8 + 9) = *(a4 + 9);
  *(a1 + 24) = v7 + 1;
  return result;
}

uint64_t BlueFin::GlMeSlots::GalileoPilotSecCodeDecoder(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (*(a1 + 1504) != v2 || (v2 - 175) <= 0xFFFFFFDB)
  {
    DeviceFaultNotify("glme_msmtmgr.cpp", 113, "GalileoPilotSecCodeDecoder", "(m_otSignalId.GetSvId() == rotSvId) && (IS_GALILEO_SVID(*rotSvId))");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_msmtmgr.cpp", 113, "(m_otSignalId.GetSvId() == rotSvId) && (IS_GALILEO_SVID(*rotSvId))");
  }

  return a1 + 992;
}

uint64_t BlueFin::GlMeSlots::GalileoINavDecoder(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (*(a1 + 1504) != v2 || (v2 - 175) <= 0xFFFFFFDB)
  {
    DeviceFaultNotify("glme_msmtmgr.cpp", 106, "GalileoINavDecoder", "(m_otSignalId.GetSvId() == rotSvId) && (IS_GALILEO_SVID(*rotSvId))");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_msmtmgr.cpp", 106, "(m_otSignalId.GetSvId() == rotSvId) && (IS_GALILEO_SVID(*rotSvId))");
  }

  return a1 + 192;
}

uint64_t BlueFin::GlMeGalileoPilotSecCodeDecoder::GetSecCodePhsInSym(uint64_t a1, unsigned int a2, _BYTE *a3, int a4)
{
  *a3 = -1;
  result = *(a1 + 8);
  if (result == 1)
  {
    v6 = *(a1 + 4);
    v7 = 25 * ((v6 - a2 + 2) / 0x64) - ((v6 - a2 + 2) >> 2) + 25;
    if (a4)
    {
      v7 = a2 - v6 + 100 * ((v6 - a2) / 0x64) + 100;
    }

    v8 = (a2 - v6) % 0x64;
    if (!a4)
    {
      v8 = ((a2 - v6 + 2) >> 2) - 25 * ((a2 - v6 + 2) / 0x64);
    }

    if (v6 <= a2)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }

    *a3 = v9;
  }

  return result;
}

BOOL BlueFin::GlMeSatIdProbationMgr::Ignoring(uint64_t a1, unsigned int a2, unsigned __int8 *a3)
{
  if (a2 >= 0x64)
  {
    DeviceFaultNotify("glmesrd_sat_probation_mgr.cpp", 53, "Ignoring", "ucSatId < _DIM(m_astIgnore)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_probation_mgr.cpp", 53, "ucSatId < _DIM(m_astIgnore)");
  }

  v3 = *(a1 + 200);
  return *(v3 + 2 * a2 + 1) == *a3 && *(v3 + 2 * a2);
}

uint64_t BlueFin::GlMeSrdSatStatusListener::RequestBitAlignment(BlueFin::GlMeSrdSatStatusListener *this, const BlueFin::GlSatCarrId *a2)
{
  v4 = *a2;
  result = BlueFin::GlMeSrdSatMgr::IsSatInKillProcess((*(this + 1) + 3520), *a2);
  if ((result & 1) == 0)
  {
    v6 = *(this + 1);
    v7 = 1 << (v4 & 0x1F);
    if ((v7 & *(v6[455] + 4 * (v4 >> 5))) == 0 && (v7 & *(v6[451] + 4 * (v4 >> 5))) == 0 || !BlueFin::GlMeSrdSatTrackMgr::HasSat((v6 + 1794), v4))
    {
      DeviceFaultNotify("glmesrd_acq_mgr.cpp", 857, "RequestBitAlignment", "GlMeSrdSatStatusListener::RequestBitAlignment WARNING: Satid %u not in trackmgr\n");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_acq_mgr.cpp", 857, "GlMeSrdSatStatusListener::RequestBitAlignment WARNING: Satid %u not in trackmgr\n");
    }

    v8 = *(this + 1) + 14352;

    return BlueFin::GlMeSrdSatTrackMgr::RequestBitAlignment(v8, a2);
  }

  return result;
}

uint64_t BlueFin::GlMeSrdSatTrackMgr::RequestBitAlignment(uint64_t result, unsigned __int8 *a2)
{
  v2 = *a2 + 100 * a2[4];
  v3 = v2 >> 5;
  v4 = v2 & 0x1F;
  if (((*(*(result + 4000) + 4 * v3) >> v4) & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_track_mgr.cpp", 483, "RequestBitAlignment", "m_otSetSatCarrIdInUse.Has(otSatCarrId)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_track_mgr.cpp", 483, "m_otSetSatCarrIdInUse.Has(otSatCarrId)");
  }

  *(*(result + 4880) + 4 * v3) |= 1 << v4;
  return result;
}

void BlueFin::GlMeSrdSvIdReportMsmtSlot::Save(BlueFin::GlMeSrdSvIdReportMsmtSlot *this, const BlueFin::GlMeDSPMeas *a2, const BlueFin::GlMeSrdDspMeasAux *a3)
{
  BlueFin::GlMeDSPMeas::operator=(this, a2);
  *(this + 160) = *(a3 + 32);
  v5 = *(a3 + 9);
  *(this + 41) = v5;
  if (v5 == 2)
  {
    *(this + 161) = *(BlueFin::GlMeSrdDspMeasAux::GetTrkRslts(a3) + 120);
    v6 = *(BlueFin::GlMeSrdDspMeasAux::GetTrkRslts(a3) + 122);
  }

  else
  {
    v6 = 0;
    *(this + 161) = 0;
  }

  *(this + 162) = v6;
  *(this + 168) = 1;
}

void BlueFin::CT_GRID_XWCV::runPeakCarrFrqEst(_BYTE *a1, BlueFin::CT_GRID_XWCV *a2, uint64_t a3, BlueFin::GlMeSrdCarrPrmResults *this, float a5, float a6, float a7)
{
  if (*a3 == 1)
  {
    if ((BlueFin::GlMeSrdCarrPrmResults::isGarbage(this) & 1) != 0 || (*this == 1 ? (v15 = *(this + 5) == 0) : (v15 = 1), v15))
    {
      LODWORD(v14) = *(a3 + 16);
      if (vabds_f32(*&v14, *(a3 + 12)) <= 10.0)
      {
        *&v14 = *&v14 + a7;
      }
    }

    else
    {
      v14 = *(this + 1);
      *&v14 = v14;
    }

    v16 = *a1;
    if (*a1)
    {
      v17 = (v16 + 3) & 0x1FC;
      v18 = vdupq_n_s64(v16 - 1);
      v19 = xmmword_298A319C0;
      v20 = xmmword_298A319D0;
      v21 = a1 + 264;
      v22 = vdupq_n_s64(4uLL);
      do
      {
        v23 = vmovn_s64(vcgeq_u64(v18, v20));
        if (vuzp1_s16(v23, *&v14).u8[0])
        {
          *(v21 - 24) = LODWORD(v14);
        }

        if (vuzp1_s16(v23, *&v14).i8[2])
        {
          *(v21 - 16) = LODWORD(v14);
        }

        if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v18, *&v19))).i32[1])
        {
          *(v21 - 8) = LODWORD(v14);
          *v21 = LODWORD(v14);
        }

        v19 = vaddq_s64(v19, v22);
        v20 = vaddq_s64(v20, v22);
        v21 += 32;
        v17 -= 4;
      }

      while (v17);
    }
  }

  if (a7 != 0.0 && *a1)
  {
    v24 = (3.1416 / (1.0 / a5)) * fabsf(a7);
    v25 = sinf(v24);
    v26 = 0;
    v28 = log10f(v25 / v24) * 20.0;
    v29 = (a1 + 180);
    do
    {
      *v29 = *v29 - BlueFin::CT_GRID_XWCV::GetDriftChips(a2, v27, a7, a6);
      v30 = *(v29 - 4);
      v32 = fabsf(BlueFin::CT_GRID_XWCV::GetDriftChips(a2, v31, a7, a6));
      if (v32 > v30)
      {
        v32 = v30;
      }

      *(v29 - 1) = *(v29 - 1) - (v28 + (log10f((v32 * -0.5) + 1.0) * 20.0));
      ++v26;
      v29 += 8;
    }

    while (v26 < *a1);
  }
}

uint64_t BlueFin::GlMeSrdEstGrid::Run(float a1, uint64_t a2, uint64_t a3, float *a4, int *a5, uint64_t a6, double *a7, uint64_t a8, unsigned __int8 *a9, unsigned __int8 *a10, BlueFin::GlMeSrdCarrPrmResults *a11, uint64_t a12, _BYTE *a13, uint64_t a14)
{
  v53 = *MEMORY[0x29EDCA608];
  if (a10[1] == 1)
  {
    v17 = a8 + 136;
    result = BlueFin::ST_GRID_CONTEXT::ST_GRID_CONTEXT(v25, a4, a5, a6, a7, a9, a10, a1);
    v19 = a10[4];
    if (v19 > 2)
    {
      if (v19 == 3)
      {
        *a13 = 1;
        goto LABEL_12;
      }

      if (v19 != 4)
      {
        goto LABEL_13;
      }
    }

    else if (v19 != 1)
    {
      if (v19 == 2)
      {
        v29[0] = 0;
        v40 = 0;
        v42[0] = 0;
        v41 = 0;
        *(v42 + 6) = 0;
        v43 = 0;
        v45[0] = 0;
        v44 = 0;
        *(v45 + 6) = 0;
        v46 = 0;
        v48[0] = 0;
        v47 = 0;
        *(v48 + 6) = 0;
        v50 = 0;
        v51[0] = 0;
        v49 = 0;
        *(v51 + 6) = 0;
        v52 = v17;
        v39 = 0u;
        v38 = 0u;
        v37 = 0u;
        v36 = 0u;
        v35 = 0u;
        v34 = 0u;
        v33 = 0u;
        v32 = 0u;
        v31 = 0u;
        v30 = 0u;
        v23 = 0.0;
        v24 = v17;
        BlueFin::CT_GRID_FULL::loadGrid(&v23, (a10 + 48), v25, v29);
        v20 = v23;
        BlueFin::CT_GRID_XWCV::runPeakCarrFrqEst(v29, a9, a12, a11, v28, v26 * v27, v23);
        BlueFin::CT_GRID_XWCV::getResults(v29, v25, a13);
        if ((*(*(a8 + 464) + 4) >> 5))
        {
          a13[3] = (v20 / (*(*(a8 + 464) + 4) >> 5));
        }

        goto LABEL_10;
      }

LABEL_13:
      DeviceFaultNotify("glmesrd_grid.cpp", 365, "Run", "0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_grid.cpp", 365, "0");
    }

    v29[0] = 0;
    v40 = 0;
    v42[0] = 0;
    v41 = 0;
    *(v42 + 6) = 0;
    v43 = 0;
    v45[0] = 0;
    v44 = 0;
    *(v45 + 6) = 0;
    v46 = 0;
    v48[0] = 0;
    v47 = 0;
    *(v48 + 6) = 0;
    v50 = 0;
    v51[0] = 0;
    v49 = 0;
    *(v51 + 6) = 0;
    v52 = v17;
    v39 = 0u;
    v38 = 0u;
    v37 = 0u;
    v36 = 0u;
    v35 = 0u;
    v34 = 0u;
    v33 = 0u;
    v32 = 0u;
    v31 = 0u;
    v30 = 0u;
    BlueFin::CT_GRID_XWCV::loadXwcv(v29, (a10 + 48), v25);
    BlueFin::CT_GRID_XWCV::runPeakCarrFrqEst(v29, a9, a12, a11, v28, v26 * v27, 0.0);
    BlueFin::CT_GRID_XWCV::getResults(v29, v25, a13);
LABEL_10:
    result = BlueFin::CT_GRID_XWCV::getGridResults(v29, v21, a10, a6, v25, a14);
  }

LABEL_12:
  v22 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlMeSrdSatRptRpcBuffer::gll_satrpt_rpc_trk_grid_data(uint64_t a1, int a2, const void *a3)
{
  BlueFin::GlMeSrdSatRptRpcBuffer::CheckInstanceId(a1, a2);
  v5 = *(a1 + 8);
  if ((v5 & 0x40000) != 0)
  {
    DeviceFaultNotify("glmesrd_sat_report_rpc_buffer.cpp", 231, "gll_satrpt_rpc_trk_grid_data", "m_otFlags.Missing(FLGS_RECEIVED_GRID_DATA)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_report_rpc_buffer.cpp", 231, "m_otFlags.Missing(FLGS_RECEIVED_GRID_DATA)");
  }

  *(a1 + 8) = v5 | 0x40000;
  memcpy((a1 + 1844), a3, 0x42CuLL);
  v6 = *(**(a1 + 3152) + 80);

  return v6();
}

void BlueFin::GlMeSrdEstCodePrm::OverrideTrkCodePrmRmsev2022(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float *a5, uint64_t a6)
{
  if (*a6 != 1)
  {
    return;
  }

  v10 = __exp10f(*(a4 + 8) / 10.0);
  v11 = *(a1 + 12);
  v12 = sqrtf(((a5[22] * a5[23]) * ((2.0 / (v10 * (a5[5] * (2.0 - a5[23])))) + 1.0)) / (v10 + v10));
  v13 = v12 * 2.5;
  if (v11 != 2)
  {
    v13 = v12;
  }

  *(a6 + 16) = v13;
  if (!v11 && *(a4 + 8) < 22.0)
  {
    v13 = v12 * 1.5;
    *(a6 + 16) = v12 * 1.5;
  }

  v14 = *(a1 + 8);
  if (*(a1 + 16) >= 0x23Fu)
  {
    v19 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 807, "GetChipsPerSec", "IsValid()");
    v20 = 807;
    goto LABEL_22;
  }

  v15 = BlueFin::GlSvId::s_aucSvId2gnss[*(a1 + 8)];
  v16 = BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[7 * v11 + v15];
  if (!v16 || !BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v11 - v11 + v15])
  {
    v19 = "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 815, "GetChipsPerSec", "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0");
    v20 = 815;
LABEL_22:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v20, v19);
  }

  v17 = flt_298A359B0[(v14 - 52) < 0xE] * (1000 * v16 / BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v11 - v11 + v15]);
  v18 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v11 - v11 + v15];
  if ((v18 > 8 || ((1 << v18) & 0x134) == 0) && ((v14 - 76) <= 0x3E && ((1 << (v14 - 76)) & 0x7C0000000000001FLL) != 0 || (v14 - 33) <= 0x12))
  {
    v13 = v13 + v13;
    *(a6 + 16) = v13;
  }

  if (v13 < v17)
  {
    *(a6 + 16) = v17;
  }
}

void BlueFin::CT_GRID_XWCV::runPeakFit(unsigned __int8 *a1, uint64_t a2)
{
  LODWORD(v2) = **(a1 + 37);
  if (v2 < 2)
  {
    return;
  }

  v5 = 0;
  v6 = 0;
  v7 = a1 + 132;
  v8 = a1 + 164;
  v48 = a1 + 4;
  v49 = a1 + 133;
  v9 = 1;
  v10 = 1.0;
  do
  {
    if (v7[v9] != 2)
    {
      goto LABEL_52;
    }

    v11 = *a1;
    if (v11 > 3)
    {
      break;
    }

    v12 = v9 - 3;
    v13 = 4;
    v14 = v5;
    v15 = &v8[32 * v11];
    while (1)
    {
      v16 = a1[v14 + 133];
      if (v16 == 2)
      {
        break;
      }

      if (v16 == 1 && (!v7[v14] || v7[v14] == 255))
      {
        v12 = v14 + 1;
        goto LABEL_20;
      }

LABEL_15:
      if (!--v13)
      {
        goto LABEL_20;
      }

      if (!v14--)
      {
        v12 = 0;
        goto LABEL_20;
      }
    }

    v17 = v7[v14];
    if (v17 != 255 && v17 != 0)
    {
      goto LABEL_15;
    }

    v12 = v14;
LABEL_20:
    v15[20] = v9 - v12;
    if (v2 - 1 <= v12)
    {
      v21 = v15[21];
    }

    else
    {
      v20 = 0;
      v21 = v15[21];
      v22 = v12;
      v23 = 7;
      v24 = &v49[v12];
      do
      {
        v25 = v21++;
        v15[21] = v21;
        v15[v25 + 22] = v22;
        v26 = *(v24 - 1);
        if (v26 == 2)
        {
          if (!*v24)
          {
            goto LABEL_34;
          }
        }

        else if (v26 == 255)
        {
          v27 = *v24;
          if (v27 < 2 || v20 && v27 == 2)
          {
            goto LABEL_34;
          }
        }

        if (!--v23)
        {
          goto LABEL_34;
        }

        ++v22;
        LODWORD(v2) = **(a1 + 37);
        --v20;
        ++v24;
      }

      while (v2 - 1 > v22);
    }

    v28 = &v15[v21++];
    v15[21] = v21;
    v28[22] = v2 - 1;
LABEL_34:
    if (v21 < 3u)
    {
      *v15 = 0;
      *(v15 + 1) = 0;
      *(v15 + 22) = 0;
LABEL_45:
      *(v15 + 2) = 0;
    }

    else
    {
      if (v9 != v12 && v21 - 1 > (v9 - v12))
      {
        v29 = v15[(v9 - v12) + 21];
        v30 = *&v48[4 * v29];
        v31 = v15[(v9 - v12) + 23];
        v32 = *&v48[4 * v31];
        if ((v30 + v32) > 0.0)
        {
          v33 = *(a1 + 37) + 68;
          v34 = *(v33 + 4 * v29) - *(v33 + 4 * v31);
          v35 = v15[(v9 - v12) + 22];
          v36 = *&v48[4 * v35];
          v37 = *(v33 + 4 * v35);
          v38 = ((v30 - v32) * v34) / (v30 + v32);
          v39 = -v38;
          if (v38 >= 0.0)
          {
            v39 = v38;
          }

          v40 = __exp10f((v39 * 6.0) / 20.0);
          *(v15 + 4) = v37 + v38;
          v41 = v36 * v40;
          v10 = 1.0;
          *(v15 + 2) = v41;
          *v15 = fabsf(v34 * 0.5);
        }
      }

      v42 = *(a2 + 88);
      if (v6)
      {
        v43 = *(v15 + 2);
        if (v43 < v42[5])
        {
          *v15 = 0;
          *(v15 + 1) = 0;
          *(v15 + 22) = 0;
          v6 = 1;
          goto LABEL_45;
        }
      }

      else
      {
        v43 = *(v15 + 2);
      }

      v44 = *(a2 + 28);
      v45 = *(a2 + 32);
      v46 = (((v42[1] + (v43 * v42[1])) * (v10 / ((((*(a2 + 12) * *(a2 + 40)) * *(a2 + 44)) * *(a2 + 48)) * *(a2 + 56)))) / floorf(((*(a2 + 16) * *(a2 + 4)) / v44) + 0.5)) - (*(a2 + 36) * v45);
      if (v46 <= 0.0)
      {
        v46 = 0.000000001;
      }

      v47 = -(*(a2 + 8) - (log10f((((*(a2 + 20) * *(a2 + 20)) * v46) / (v44 * v44)) / v45) * 10.0));
      if (v47 < 7.0)
      {
        v47 = 7.0;
      }

      *(v15 + 3) = v47;
      v6 |= v47 >= v42[4];
      *a1 = v11 + 1;
    }

LABEL_52:
    ++v9;
    v2 = **(a1 + 37);
    ++v5;
  }

  while (v9 < v2);
}

uint64_t BlueFin::CT_GRID_XWCV::getGridResults(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = 0;
  v7 = *(result + 296);
  *a6 = *v7;
  *(a6 + 1) = *(a3 + 11);
  *(a6 + 2) = -56;
  v8 = *(v7 + 41);
  *(a6 + 3) = *(*(a4 + 64) + (*(v8 + 6) & 7));
  v9 = (*(v8 + 4) & 0x1Fu) + 1;
  *(a6 + 4) = (*(v8 + 4) & 0x1F) + 1;
  v10 = *(v8 + 4) >> 5;
  *(a6 + 5) = v10;
  *(a6 + 8) = *(*(a5 + 88) + 4);
  v11 = v10;
  v12 = a3 + 48;
  while (1)
  {
LABEL_2:
    v13 = *&v7[4 * v6 + 196] / v11;
    v14 = v13;
    if (v13 <= 0.0)
    {
      if (v13 >= 0.0)
      {
        LOBYTE(v16) = 0;
        goto LABEL_8;
      }

      v15 = v14 + -0.5;
    }

    else
    {
      v15 = v14 + 0.5;
    }

    v16 = v15;
LABEL_8:
    *(a6 + 4140 + v6) = v16;
    v7 = *(result + 296);
    v17 = *v7;
    if (!*v7)
    {
      break;
    }

    v18 = (((*(a5 + 12) + *(a5 + 12)) * *(a5 + 40)) * *(a5 + 44)) * *(a5 + 48);
    v19 = (a6 + 12 + (v6 << 7));
    v20 = 2;
    v21 = *v7;
    do
    {
      v22 = *(v12 + 4 * (v7[v20] + v7[v6 + 34] * v17)) / v18;
      v23 = v22;
      if (v22 <= 0.0)
      {
        if (v22 >= 0.0)
        {
          v25 = 0;
          goto LABEL_16;
        }

        v24 = v23 + -0.5;
      }

      else
      {
        v24 = v23 + 0.5;
      }

      v25 = v24;
LABEL_16:
      *v19++ = v25;
      ++v20;
      --v21;
    }

    while (v21);
    if (++v6 == v9)
    {
      v26 = 0;
      while (1)
      {
        v27 = *&v7[4 * v26 + 68] * 4.0;
        v28 = v27;
        if (v27 > 0.0)
        {
          break;
        }

        if (v27 < 0.0)
        {
          v29 = v28 + -0.5;
          goto LABEL_26;
        }

        LOBYTE(v30) = 0;
LABEL_27:
        *(a6 + 4108 + v26++) = v30;
        v7 = *(result + 296);
        if (v26 >= *v7)
        {
          return result;
        }
      }

      v29 = v28 + 0.5;
LABEL_26:
      v30 = v29;
      goto LABEL_27;
    }
  }

  if (++v6 != v9)
  {
    goto LABEL_2;
  }

  return result;
}

unint64_t BlueFin::GlMeSrdSatRptNonL1VetSm::SetDspMeasurementReport(uint64_t a1, uint64_t a2, BlueFin::GlMeSrdDspMeasAux *this, _BYTE *a4, char a5, char a6, uint64_t a7)
{
  if (a7)
  {
    v14 = (*(*a7 + 88))(a7, a2 + 100, 0.0);
    if (v14)
    {
      v43 = &off_2A1F0E398;
      v44 = 0;
      v45 = -1;
      v46 = 575;
      v47 = 0;
      v48 = 0;
      v49 = xmmword_298A339D0;
      v50 = 2139095039;
      v51 = 0;
      v52 = 3.4028e38;
      v53 = 0;
      v54 = 0x7FEFFFFFFFFFFFFFLL;
      v55 = -1;
      v56 = -1;
      v58 = 0;
      v59 = 0;
      v57 = 0;
      v60 = 0;
      *(a1 + 92) = *(v14 + 92);
      if ((*(*a7 + 40))(a7, a2 + 100, 0, *(a2 + 24) * 1000.0))
      {
        v15 = *(a2 + 24);
        v42 = 1;
        if ((*(*a7 + 24))(a7, a2 + 100, &v43, &v42, 0, 0, v15 * 1000.0, 0.0, 0.0))
        {
          if (v52 <= 0.0)
          {
            v16 = 0.0;
          }

          else
          {
            v16 = v52 * 299792458.0;
          }

          *(a1 + 96) = v51;
          *(a1 + 104) = v16;
        }
      }
    }
  }

  *(a1 + 112) = a2;
  *(a1 + 120) = this;
  *(a1 + 89) |= *a4;
  *(a1 + 90) |= a4[1];
  *(a1 + 91) |= a4[2];
  *(a1 + 43) = a5;
  *(a1 + 128) = *(a2 + 24);
  *(a1 + 44) = 0;
  *(a1 + 48) = 1065353216;
  for (i = 24; i != 29; ++i)
  {
    if (*(BlueFin::GlMeSrdDspMeasAux::GetTrkRslts(this) + i) == 255)
    {
      *(a1 + 48) = *(a1 + 48) + -0.2;
    }

    else
    {
      v18 = *(a1 + 44);
      if (v18 < *(BlueFin::GlMeSrdDspMeasAux::GetTrkRslts(this) + i))
      {
        *(a1 + 44) = *(BlueFin::GlMeSrdDspMeasAux::GetTrkRslts(this) + i);
      }
    }
  }

  v19 = *(a1 + 48);
  if (v19 < 0.15)
  {
    v33 = "m_fDutyCycleScale >= 0.15f";
    DeviceFaultNotify("glmesrd_sat_report_vetting.cpp", 957, "SetDspMeasurementReport", "m_fDutyCycleScale >= 0.15f");
    v34 = 957;
    goto LABEL_51;
  }

  *(a1 + 64) = 0;
  v20 = (a1 + 64);
  *(a1 + 48) = sqrtf(v19);
  v21 = *(a1 + 56);
  v22 = *(a2 + 24);
  if (v21 > 0.0)
  {
    v23 = v22 - v21;
    if (v23 > 0.0 && *(a2 + 56) <= 0.000000003 && (*(a2 + 84) & 0x40) != 0)
    {
      v35 = *(a2 + 32);
      v36 = *(a1 + 68);
      *(a1 + 72) = v36;
      v37 = vrev64q_s32(v36);
      v38 = vextq_s8(v37, v37, 8uLL);
      v39 = (((*v38.i32 + 0.0) + *&v38.i32[1]) + *&v38.i32[2]) + *&v38.i32[3];
      v40 = floor(v23 * 1000.0 + 0.5) / 1000.0;
      if (v23 * 1000.0 <= 0.0)
      {
        v40 = 0.0;
      }

      v41 = (v40 - v23 - v40 * v35) * 299792458.0;
      *(a1 + 68) = v41;
      v25 = v39 + v41;
    }

    else
    {
      v24 = 0;
      v25 = 0.0;
      do
      {
        v25 = v25 + *(a1 + 68 + v24);
        v24 += 4;
      }

      while (v24 != 20);
    }

    *v20 = v25;
  }

  *(a1 + 56) = v22;
  if ((*(a1 + 91) & 0x18) != 0)
  {
    *v20 = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
  }

  if ((*(this + 156) & 1) != 0 || *(a1 + 104) >= 3.40282306e38)
  {
    LOWORD(v42) = 7;
    v26 = *(a1 + 32);
    v27 = *(a1 + 8);
    *(a1 + 32) = v27;
    do
    {
      v43 = 0;
      if (BlueFin::patch_dispatch(v27, a1, &v42, &v43))
      {
        v27 = v43;
      }

      else
      {
        v27 = (*(a1 + 32))(a1, &v42);
      }

      *(a1 + 32) = v27;
    }

    while (v27);
  }

  else
  {
    v26 = *(a1 + 32);
  }

  LOBYTE(v42) = 6;
  BYTE1(v42) = a6;
  result = *(a1 + 8);
  *(a1 + 32) = result;
  do
  {
    v43 = 0;
    if (BlueFin::patch_dispatch(result, a1, &v42, &v43))
    {
      result = v43;
    }

    else
    {
      result = (*(a1 + 32))(a1, &v42);
    }

    *(a1 + 32) = result;
  }

  while (result);
  *(a1 + 32) = v26;
  v29 = *(a1 + 40);
  if (v29 == 1)
  {
    *(this + 49) |= 0x2000u;
    *(a2 + 84) |= 0x400000u;
  }

  *(a1 + 92) = -1082130432;
  *(a1 + 96) = 0xBFF0000000000000;
  *(this + 184) = v29;
  *(this + 186) = *(a1 + 41);
  v30 = *(a1 + 42);
  *(this + 187) = v30;
  v31 = *(a1 + 45);
  *(this + 188) = v31;
  v32 = *(a1 + 46);
  *(this + 189) = v32;
  if (v30 != 1)
  {
    if (!v31 || !v32)
    {
      return result;
    }

    v33 = "0";
    DeviceFaultNotify("glmesrd_sat_report_vetting.cpp", 1016, "SetDspMeasurementReport", "0");
    v34 = 1016;
LABEL_51:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_report_vetting.cpp", v34, v33);
  }

  if (v31)
  {
    v33 = "0";
    DeviceFaultNotify("glmesrd_sat_report_vetting.cpp", 1006, "SetDspMeasurementReport", "0");
    v34 = 1006;
    goto LABEL_51;
  }

  if (v32)
  {
    v33 = "0";
    DeviceFaultNotify("glmesrd_sat_report_vetting.cpp", 1011, "SetDspMeasurementReport", "0");
    v34 = 1011;
    goto LABEL_51;
  }

  return result;
}

uint64_t BlueFin::GlMeSrdSvIdReportMsmtSlot::GetSignalIndex@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 100);
  if ((v2 - 189) <= 0xFFFFFF43)
  {
    DeviceFaultNotify("glmesrd_svid_report_mgr_slot_types.cpp", 111, "GetSignalIndex", "IS_SVID(*m_otDspMeas.otSignalId.GetSvId())");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_svid_report_mgr_slot_types.cpp", 111, "IS_SVID(*m_otDspMeas.otSignalId.GetSvId())");
  }

  *a2 = v2;
  *(a2 + 4) = *(this + 104);
  *(a2 + 8) = *(this + 108);
  return this;
}

uint64_t BlueFin::GlMeSrdSvIdReportMgr::GetMsmtStats(uint64_t result, _BYTE *a2, uint64_t a3)
{
  *(a3 + 224) = 0;
  v3 = *(result + 8);
  if (*(v3 + 832) > (*(v3 + 834) + 1))
  {
    v6 = result;
    v7 = 0;
    v35 = (a3 + 176);
    v36 = (a3 + 192);
    v33 = (a3 + 184);
    v34 = (a3 + 200);
    for (i = (*(v3 + 834) + 1); i < *(v3 + 832); ++i)
    {
      v9 = *(v6 + 8);
      v10 = (*(v3 + 828) + *(*(v3 + 816) + 2 * i));
      if (!BlueFin::GlBigArray::Has((v3 + 800), v10))
      {
        v30 = "m_potArray->Has(handle)";
        DeviceFaultNotify("glinc_array.h", 362, "Next", "m_potArray->Has(handle)");
        v31 = "glinc_array.h";
        v32 = 362;
        goto LABEL_55;
      }

      if (v10 - *(v9 + 828) >= *(v9 + 830))
      {
        v30 = "handle - m_usMinHandle < m_usNumHandles";
        DeviceFaultNotify("glinc_array.h", 313, "EnsureValidHandle", "handle - m_usMinHandle < m_usNumHandles");
        v31 = "glinc_array.h";
        v32 = 313;
        goto LABEL_55;
      }

      v11 = *(*(v9 + 808) + 2 * (v10 - *(v9 + 828)));
      if (v11 == 0xFFFF)
      {
        v12 = 0;
      }

      else
      {
        if (*(v9 + 832) <= v11)
        {
          v30 = "slot < m_usNumSlots";
          DeviceFaultNotify("glinc_array.h", 319, "EnsureValidSlot", "slot < m_usNumSlots");
          v31 = "glinc_array.h";
          v32 = 319;
          goto LABEL_55;
        }

        v12 = *(v9 + 800) + *(v9 + 824) * v11;
      }

      result = BlueFin::GlMeSrdSvIdReportMsmtSlot::GetSvId(v12, &v39);
      if (v39 == *a2)
      {
        result = BlueFin::GlSatCarrId::GlSatCarrId(v37, *(v12 + 112), *(v12 + 104));
        v13 = *(v12 + 164);
        if (v13 <= 2)
        {
          if (v13 != 1)
          {
            if (v13 != 2)
            {
              goto LABEL_57;
            }

            v14 = v38;
            v7 |= v38 == 0;
            v15 = *(v12 + 84);
            if ((v15 & 0x20) != 0 && (v15 & 0x40) != 0)
            {
              goto LABEL_22;
            }

LABEL_15:
            v16 = v37[0];
            *(*(a3 + 32) + ((v37[0] >> 3) & 0x1C)) |= 1 << v37[0];
            v17 = *(v12 + 40);
            v18 = *(a3 + 216);
            if (v17 >= v18)
            {
              *(a3 + 220) = v18;
              *(a3 + 200) = *(a3 + 192);
              *(a3 + 204) = *(a3 + 196);
              if (v36 != v37)
              {
                *(a3 + 192) = v16;
                *(a3 + 196) = v14;
              }

              *(a3 + 216) = *(v12 + 40);
            }

            else if (v17 >= *(a3 + 220))
            {
              *(a3 + 220) = v17;
              if (v34 != v37)
              {
                *(a3 + 200) = v16;
                *(a3 + 204) = v14;
              }
            }

            continue;
          }

          v25 = v37[0];
          *(*a3 + ((v37[0] >> 3) & 0x1C)) |= 1 << v37[0];
          if ((*(v12 + 86) & 4) == 0)
          {
            v26 = *(v12 + 140);
            goto LABEL_31;
          }

          v29 = *(v12 + 40);
          if (*(a3 + 164) < v29)
          {
            *(a3 + 164) = v29;
            *(a3 + 161) = v25;
          }

          v26 = *(v12 + 140);
          if (v26 == 9 && *(a3 + 168) < v29)
          {
            *(a3 + 168) = v29;
            *(a3 + 162) = v25;
          }

          else
          {
LABEL_31:
            if (v26 == 15)
            {
              *(a3 + 160) = v25;
            }
          }

          v7 = 1;
          continue;
        }

        if (v13 != 3)
        {
          if (v13 != 4)
          {
LABEL_57:
            v30 = "0";
            DeviceFaultNotify("glmesrd_svid_report_mgr.cpp", 682, "GetMsmtStats", "0");
            v31 = "glmesrd_svid_report_mgr.cpp";
            v32 = 682;
LABEL_55:
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v31, v32, v30);
          }

          *(a3 + 224) = 1;
          v14 = v38;
          v7 |= v38 == 0;
          if ((*(v12 + 84) & 0x40) != 0)
          {
LABEL_22:
            v19 = v37[0];
            v20 = v37[0] >> 5;
            v21 = 1 << v37[0];
            *(*(a3 + 64) + 4 * v20) |= 1 << v37[0];
            v22 = *(v12 + 140);
            if (v22 <= 0x11 && ((1 << v22) & 0x21800) != 0)
            {
              *(*(a3 + 96) + 4 * v20) |= v21;
            }

            v23 = *(v12 + 40);
            v24 = *(a3 + 208);
            if (v23 >= v24)
            {
              *(a3 + 212) = v24;
              *(a3 + 184) = *(a3 + 176);
              *(a3 + 188) = *(a3 + 180);
              if (v35 != v37)
              {
                *(a3 + 176) = v19;
                *(a3 + 180) = v14;
              }

              *(a3 + 208) = *(v12 + 40);
            }

            else if (v23 >= *(a3 + 212))
            {
              *(a3 + 212) = v23;
              if (v33 != v37)
              {
                *(a3 + 184) = v19;
                *(a3 + 188) = v14;
              }
            }

            continue;
          }

          goto LABEL_15;
        }

        if (v38 && v38 != 3)
        {
          v30 = "otSatCarrId.GetSignalIndex() == SIGNAL_INDEX_0 || otSatCarrId.GetSignalIndex() == SIGNAL_INDEX_3";
          DeviceFaultNotify("glmesrd_svid_report_mgr.cpp", 615, "GetMsmtStats", "otSatCarrId.GetSignalIndex() == SIGNAL_INDEX_0 || otSatCarrId.GetSignalIndex() == SIGNAL_INDEX_3");
          v31 = "glmesrd_svid_report_mgr.cpp";
          v32 = 615;
          goto LABEL_55;
        }

        v27 = v37[0];
        v7 = 1;
        *(*(a3 + 128) + ((v37[0] >> 3) & 0x1C)) |= 1 << v37[0];
        if ((*(v12 + 86) & 4) != 0)
        {
          v28 = *(v12 + 40);
          if (*(a3 + 172) < v28)
          {
            *(a3 + 172) = v28;
            *(a3 + 163) = v27;
          }
        }
      }
    }
  }

  return result;
}

uint64_t BlueFin::GlMeSrdSvIdReportMgr::DecideWhichSatToPublish(uint64_t a1, float *a2, _BYTE *a3)
{
  *a3 = 0;
  v6 = *(a2 + 160);
  if (v6 != 255)
  {
    v7 = *(a2 + 12);
    if (!*v7)
    {
      v21 = *(a2 + 104);
      if (v21 < 2)
      {
        return v6;
      }

      v22 = v21 - 1;
      v23 = v7 + 1;
      while (!*v23++)
      {
        if (!--v22)
        {
          goto LABEL_60;
        }
      }
    }
  }

  v8 = *(a2 + 8);
  if (*v8)
  {
LABEL_4:
    v6 = *(a2 + 176);
    if (BlueFin::GlSetBase::Cnt((a2 + 16)) < 2)
    {
      goto LABEL_60;
    }

    v9 = *(a1 + 8);
    v10 = *(v9 + 828);
    v11 = *(v9 + 830);
    if (v6 + 100 * *(a2 + 180) - v10 >= v11)
    {
      goto LABEL_95;
    }

    v12 = *(v9 + 808);
    v13 = *(v12 + 2 * (v6 + 100 * *(a2 + 180) - v10));
    if (v13 == 0xFFFF)
    {
      v14 = 0;
      goto LABEL_22;
    }

    if (*(v9 + 832) > v13)
    {
      v14 = *(v9 + 800) + *(v9 + 824) * v13;
LABEL_22:
      v25 = *(a2 + 184) + 100 * *(a2 + 188) - v10;
      if (v25 < v11)
      {
        v26 = *(v12 + 2 * v25);
        if (v26 == 0xFFFF)
        {
          v27 = 0;
LABEL_27:
          BlueFin::GlMeSrdSvIdReportMsmtSlot::GetSvId(v14, v68);
          if (v68[0] < 0x8Bu || (BlueFin::GlMeSrdSvIdReportMsmtSlot::GetSvId(v14, &v69), v69 > 0xAEu))
          {
            v30 = *(v14 + 140);
            if (v30 <= 0x11 && ((1 << v30) & 0x21800) != 0 && *(v27 + 140) == 10 || *(v14 + 116) == 1)
            {
              goto LABEL_59;
            }

            v31 = *(v27 + 140);
            if (v31 <= 0x11 && ((1 << v31) & 0x21800) != 0 && v30 == 10)
            {
              goto LABEL_63;
            }
          }

          else if (*(v14 + 160) == 1)
          {
            if ((*(v27 + 160) & 1) == 0)
            {
              v28 = *(v14 + 112);
              v29 = *(v14 + 104);
LABEL_57:
              BlueFin::GlSatCarrId::GlSatCarrId(v68, v28, v29);
              v6 = v68[0];
              goto LABEL_60;
            }
          }

          else if (*(v27 + 160))
          {
            v28 = *(v27 + 112);
            v29 = *(v27 + 104);
            goto LABEL_57;
          }

          if (*(v14 + 48) < 0x7D1u && (*(v27 + 48) >= 0x7D1u || (a2[52] - a2[53]) <= 2.0 && *(v14 + 68) > *(v27 + 68)))
          {
LABEL_63:
            v6 = *(a2 + 184);
            goto LABEL_60;
          }

LABEL_59:
          v6 = *(a2 + 176);
          goto LABEL_60;
        }

        if (*(v9 + 832) > v26)
        {
          v27 = *(v9 + 800) + *(v9 + 824) * v26;
          goto LABEL_27;
        }

        goto LABEL_96;
      }

LABEL_95:
      v65 = "handle - m_usMinHandle < m_usNumHandles";
      DeviceFaultNotify("glinc_array.h", 313, "EnsureValidHandle", "handle - m_usMinHandle < m_usNumHandles");
      v66 = "glinc_array.h";
      v67 = 313;
      goto LABEL_97;
    }

    goto LABEL_96;
  }

  v15 = *(a2 + 72);
  if (v15 >= 2)
  {
    v16 = v15 - 1;
    v17 = v8 + 1;
    do
    {
      if (*v17++)
      {
        goto LABEL_4;
      }
    }

    while (--v16);
  }

  v19 = *a2;
  v20 = **a2;
  if (!v20)
  {
    v32 = *(a2 + 8);
    if (v32 < 2)
    {
      goto LABEL_44;
    }

    v33 = v32 - 1;
    v34 = v19 + 1;
    while (!*v34++)
    {
      if (!--v33)
      {
        goto LABEL_44;
      }
    }
  }

  v6 = *(a2 + 162);
  if (v6 == 255)
  {
LABEL_44:
    v36 = *(a2 + 4);
    if (!*v36)
    {
      v43 = *(a2 + 40);
      if (v43 < 2)
      {
LABEL_53:
        if (!v20)
        {
          v56 = *(a2 + 8);
          if (v56 < 2)
          {
LABEL_88:
            v60 = *(a2 + 16);
            if (!*v60)
            {
              v61 = *(a2 + 136);
              if (v61 < 2)
              {
LABEL_94:
                v65 = "ucSatToPublish != INVALID_SATID";
                DeviceFaultNotify("glmesrd_svid_report_mgr.cpp", 864, "DecideWhichSatToPublish", "ucSatToPublish != INVALID_SATID");
                v66 = "glmesrd_svid_report_mgr.cpp";
                v67 = 864;
                goto LABEL_97;
              }

              v62 = v61 - 1;
              v63 = v60 + 1;
              while (!*v63++)
              {
                if (!--v62)
                {
                  goto LABEL_94;
                }
              }
            }

            v6 = *(a2 + 163);
            goto LABEL_60;
          }

          v57 = v56 - 1;
          v58 = v19 + 1;
          while (!*v58++)
          {
            if (!--v57)
            {
              goto LABEL_88;
            }
          }
        }

        v6 = *(a2 + 161);
        goto LABEL_60;
      }

      v44 = v43 - 1;
      v45 = v36 + 1;
      while (!*v45++)
      {
        if (!--v44)
        {
          goto LABEL_53;
        }
      }
    }

    v6 = *(a2 + 192);
    if (BlueFin::GlSetBase::Cnt((a2 + 8)) < 2)
    {
      goto LABEL_60;
    }

    v37 = *(a1 + 8);
    v38 = *(v37 + 828);
    v39 = *(v37 + 830);
    if (v6 + 100 * *(a2 + 196) - v38 >= v39)
    {
      goto LABEL_95;
    }

    v40 = *(v37 + 808);
    v41 = *(v40 + 2 * (v6 + 100 * *(a2 + 196) - v38));
    if (v41 == 0xFFFF)
    {
      v42 = 0;
    }

    else
    {
      if (*(v37 + 832) <= v41)
      {
        goto LABEL_96;
      }

      v42 = *(v37 + 800) + *(v37 + 824) * v41;
    }

    v48 = *(a2 + 200) + 100 * *(a2 + 204) - v38;
    if (v48 >= v39)
    {
      goto LABEL_95;
    }

    v49 = *(v40 + 2 * v48);
    if (*(v37 + 832) <= v49)
    {
LABEL_96:
      v65 = "slot < m_usNumSlots";
      DeviceFaultNotify("glinc_array.h", 319, "EnsureValidSlot", "slot < m_usNumSlots");
      v66 = "glinc_array.h";
      v67 = 319;
LABEL_97:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v66, v67, v65);
    }

    v50 = *(v37 + 800) + *(v37 + 824) * v49;
    v51 = *(v42 + 48);
    if (v51 >= *(v50 + 48))
    {
      v51 = *(v50 + 48);
    }

    if (vabdd_f64(*(v42 + 24), *(v50 + 24)) >= 0.000001 || vabds_f32(*(v42 + 32), *(v50 + 32)) >= 0.00000003)
    {
      if (v51 >> 3 <= 0x752)
      {
        *a3 = 1;
      }
    }

    else
    {
      v52 = *(v50 + 140);
      v53 = v52 > 0x11;
      v54 = (1 << v52) & 0x21800;
      if (!v53 && v54 != 0)
      {
        if (*(v42 + 140) == 10)
        {
          v6 = *(a2 + 200);
        }

        else
        {
          v6 = v6;
        }
      }
    }

LABEL_60:
    if (v6 != 255)
    {
      return v6;
    }

    goto LABEL_94;
  }

  return v6;
}

uint64_t BlueFin::GlMeSrdSvIdReportMgr::DecideWhichSatsToKill(uint64_t a1, int a2, int a3, BlueFin::GlSetBase *a4, uint64_t a5)
{
  if (*(a4 + 160) != 255)
  {
    v10 = *(a4 + 12);
    if (!*v10)
    {
      v28 = *(a4 + 104);
      if (v28 < 2)
      {
LABEL_22:
        *v58 = &v60;
        v59 = 4;
        v60 = 0uLL;
        BlueFin::GlSetBase::OperatorBinaryOr(a4 + 64, v58, a4 + 16);
        result = BlueFin::GlSetBase::operator=(a5, v58);
        *(a5 + 12) = v60;
        return result;
      }

      v29 = v28 - 1;
      v30 = v10 + 1;
      while (!*v30++)
      {
        if (!--v29)
        {
          goto LABEL_22;
        }
      }
    }
  }

  v11 = *(a4 + 8);
  if (*v11)
  {
LABEL_4:
    v55 = v57;
    v56 = 4;
    v57[1] = 0;
    v57[0] = 0;
    BlueFin::GlSetBase::OperatorBinaryOr(a4 + 64, &v55, a4 + 16);
    *v58 = &v60;
    v59 = 4;
    v60 = 0uLL;
    BlueFin::GlSetBase::OperatorBinaryOr(&v55, v58, a4 + 4);
    v12 = BlueFin::GlSetBase::operator=(a5, v58);
    *(a5 + 12) = v60;
    BlueFin::GlSetBase::Remove(v12, a2);
    result = BlueFin::GlSetBase::Cnt((a4 + 64));
    if (result < 2)
    {
      return result;
    }

    v14 = *(a1 + 8);
    v15 = *(v14 + 828);
    v16 = *(v14 + 830);
    if (*(a4 + 176) + 100 * *(a4 + 180) - v15 < v16)
    {
      v17 = *(v14 + 808);
      v18 = *(v17 + 2 * (*(a4 + 176) + 100 * *(a4 + 180) - v15));
      if (v18 == 0xFFFF)
      {
        v19 = 0;
      }

      else
      {
        if (*(v14 + 832) <= v18)
        {
LABEL_64:
          v44 = "slot < m_usNumSlots";
          DeviceFaultNotify("glinc_array.h", 319, "EnsureValidSlot", "slot < m_usNumSlots");
          v45 = "glinc_array.h";
          v46 = 319;
          goto LABEL_68;
        }

        v19 = *(v14 + 800) + *(v14 + 824) * v18;
      }

      v32 = *(a4 + 184) + 100 * *(a4 + 188) - v15;
      if (v32 < v16)
      {
        v33 = *(v17 + 2 * v32);
        if (v33 == 0xFFFF)
        {
          v34 = 0;
          goto LABEL_30;
        }

        if (*(v14 + 832) > v33)
        {
          v34 = *(v14 + 800) + *(v14 + 824) * v33;
LABEL_30:
          result = BlueFin::GlMeSrdSvIdReportMsmtSlot::GetSvId(v19, v58);
          if (LOBYTE(v58[0]) - 139 > 0x23)
          {
            return result;
          }

          if (*(v19 + 160) == *(v34 + 160))
          {
            BlueFin::GlSatCarrId::GlSatCarrId(v58, *(v19 + 112), *(v19 + 104));
            if (LOBYTE(v58[0]) == a2)
            {
              v35 = *(v19 + 112);
              v36 = *(v19 + 104);
LABEL_48:
              BlueFin::GlSatCarrId::GlSatCarrId(v58, v35, v36);
              v27 = LOBYTE(v58[0]);
              return BlueFin::GlSetBase::Remove(a5, v27);
            }

            result = BlueFin::GlSatCarrId::GlSatCarrId(v58, *(v34 + 112), *(v34 + 104));
            if (LOBYTE(v58[0]) != a2)
            {
              return result;
            }
          }

          else
          {
            BlueFin::GlSatCarrId::GlSatCarrId(v58, *(v19 + 112), *(v19 + 104));
            BlueFin::GlSetBase::Remove(a5, LOBYTE(v58[0]));
          }

          v35 = *(v34 + 112);
          v36 = *(v34 + 104);
          goto LABEL_48;
        }

        goto LABEL_64;
      }
    }

    v44 = "handle - m_usMinHandle < m_usNumHandles";
    DeviceFaultNotify("glinc_array.h", 313, "EnsureValidHandle", "handle - m_usMinHandle < m_usNumHandles");
    v45 = "glinc_array.h";
    v46 = 313;
    goto LABEL_68;
  }

  v20 = *(a4 + 72);
  if (v20 >= 2)
  {
    v21 = v20 - 1;
    v22 = v11 + 1;
    do
    {
      if (*v22++)
      {
        goto LABEL_4;
      }
    }

    while (--v21);
  }

  v24 = *(a4 + 4);
  if (*v24)
  {
LABEL_13:
    *v58 = &v60;
    v59 = 4;
    v60 = 0uLL;
    BlueFin::GlSetBase::OperatorBinaryOr(a4 + 128, v58, a4 + 4);
    v25 = BlueFin::GlSetBase::operator=(a5, v58);
    *(a5 + 12) = v60;
    result = BlueFin::GlSetBase::Remove(v25, a2);
    if (a3)
    {
      if (BlueFin::GlSetBase::Cnt((a4 + 32)) <= 1)
      {
        v44 = "otMsmtStats.m_otInvalidTrkMsmts.Cnt() >= 2";
        DeviceFaultNotify("glmesrd_svid_report_mgr.cpp", 933, "DecideWhichSatsToKill", "otMsmtStats.m_otInvalidTrkMsmts.Cnt() >= 2");
        v45 = "glmesrd_svid_report_mgr.cpp";
        v46 = 933;
      }

      else
      {
        v26 = *(a4 + 192);
        if (v26 == 255)
        {
          v44 = "otMsmtStats.m_otTopTwoCnoInvalidTrkSatid[0].GetSatId() != INVALID_SATID";
          DeviceFaultNotify("glmesrd_svid_report_mgr.cpp", 934, "DecideWhichSatsToKill", "otMsmtStats.m_otTopTwoCnoInvalidTrkSatid[0].GetSatId() != INVALID_SATID");
          v45 = "glmesrd_svid_report_mgr.cpp";
          v46 = 934;
        }

        else
        {
          if (*(a4 + 200) != 255)
          {
            BlueFin::GlSetBase::Remove(a5, v26);
            v27 = *(a4 + 200);
            return BlueFin::GlSetBase::Remove(a5, v27);
          }

          v44 = "otMsmtStats.m_otTopTwoCnoInvalidTrkSatid[1].GetSatId() != INVALID_SATID";
          DeviceFaultNotify("glmesrd_svid_report_mgr.cpp", 935, "DecideWhichSatsToKill", "otMsmtStats.m_otTopTwoCnoInvalidTrkSatid[1].GetSatId() != INVALID_SATID");
          v45 = "glmesrd_svid_report_mgr.cpp";
          v46 = 935;
        }
      }

LABEL_68:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v45, v46, v44);
    }

    if (*(a4 + 162) == a2)
    {
      return result;
    }

    v43 = *(a4 + 16);
    if (!*v43)
    {
      v51 = *(a4 + 136);
      if (v51 < 2)
      {
        return result;
      }

      v52 = v51 - 1;
      v53 = v43 + 1;
      while (!*v53++)
      {
        if (!--v52)
        {
          return result;
        }
      }
    }

    v27 = *(a4 + 163);
    if (v27 == 255)
    {
      v44 = "otMsmtStats.m_ucMaxSniffCnoSatid != INVALID_SATID";
      DeviceFaultNotify("glmesrd_svid_report_mgr.cpp", 945, "DecideWhichSatsToKill", "otMsmtStats.m_ucMaxSniffCnoSatid != INVALID_SATID");
      v45 = "glmesrd_svid_report_mgr.cpp";
      v46 = 945;
      goto LABEL_68;
    }

    return BlueFin::GlSetBase::Remove(a5, v27);
  }

  v37 = *(a4 + 40);
  if (v37 >= 2)
  {
    v38 = v37 - 1;
    v39 = v24 + 1;
    do
    {
      if (*v39++)
      {
        goto LABEL_13;
      }
    }

    while (--v38);
  }

  result = BlueFin::GlSetBase::operator=(a5, a4 + 128);
  *(a5 + 12) = *(a4 + 140);
  v41 = *(a4 + 16);
  if (!*v41)
  {
    v47 = *(a4 + 136);
    if (v47 < 2)
    {
      return result;
    }

    v48 = v47 - 1;
    v49 = v41 + 1;
    while (!*v49++)
    {
      if (!--v48)
      {
        return result;
      }
    }
  }

  v42 = *(a4 + 163);

  return BlueFin::GlSetBase::Remove(a5, v42);
}

void BlueFin::GlMeMsmtHolder::SetDSPMeas(BlueFin::GlMeMsmtHolder *this, const BlueFin::GlMeDSPMeas *a2)
{
  v56[0] = *(a2 + 100);
  v57 = *(a2 + 26);
  v58 = *(a2 + 54);
  if (v56[0] - 1 > 0xBB)
  {
    return;
  }

  v4 = *(a2 + 35);
  if (v4 == 8)
  {
LABEL_6:
    v5 = 1;
    goto LABEL_8;
  }

  if (v4 == 9 && v56[0] >= 0x8Bu)
  {
    if (v56[0] > 0xAEu)
    {
      v5 = 0;
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v5 = 0;
LABEL_8:
  if (v56[0] - 33 < 0x13)
  {
    goto LABEL_10;
  }

LABEL_9:
  if ((*(a2 + 86) & 1) == 0)
  {
    goto LABEL_10;
  }

  v38 = &off_2A1F0E398;
  LOBYTE(v39) = 0;
  v40 = -1;
  v41 = 575;
  v42 = 0;
  v43 = 0;
  v44 = xmmword_298A339D0;
  v45 = 2139095039;
  v46 = 0.0;
  v47 = 3.4028e38;
  v48 = 0;
  v49 = 0x7FEFFFFFFFFFFFFFLL;
  v50 = -1;
  v51 = -1;
  v53 = 0;
  v54 = 0;
  v52 = 0;
  v55 = 0;
  v7 = *(this + 2);
  v8 = *(a2 + 3);
  v37 = 1;
  if (((*(*v7 + 24))(v7, v56, &v38, &v37, 0, 0, v8 * 1000.0, 0.0, 0.0) & 1) == 0)
  {
    return;
  }

  if (v56[0] < 0x34u)
  {
    v9 = v47;
    v10 = 0.00015152;
    goto LABEL_43;
  }

  v9 = v47;
  if (v56[0] < 0x42u || v47 >= 0.00015152)
  {
    if (v56[0] > 0x41u)
    {
      goto LABEL_10;
    }

    v10 = 0.00030333;
LABEL_43:
    if (v9 < v10)
    {
      goto LABEL_44;
    }

LABEL_10:
    if (v5)
    {
      return;
    }

    goto LABEL_11;
  }

LABEL_44:
  v30 = *(a2 + 3) * 1000.0 - floor(*(a2 + 3) * 1000.0) - (v46 * 1000.0 - floor(v46 * 1000.0));
  if (v30 < 0.0)
  {
    v30 = -v30;
  }

  if (v30 > 0.0205)
  {
    v31 = 1;
  }

  else
  {
    v31 = v5;
  }

  if (v31)
  {
    return;
  }

LABEL_11:
  if (BlueFin::GlBigArray::Has((*(this + 15) + 1152), v58))
  {
    v6 = BlueFin::GlSignalIdArray::Get(*(this + 15), v56);
    goto LABEL_54;
  }

  v11 = *(this + 15);
  v12 = *(v11 + 1184);
  v13 = *(v11 + 1186);
  if (*(this + 4348) > (v12 + ~v13))
  {
    v14 = BlueFin::GlBigArray::Add((v11 + 1152), v58);
    if (v14)
    {
      goto LABEL_53;
    }

    v15 = "0";
    DeviceFaultNotify("glme_msmtholder.cpp", 416, "SetDSPMeas", "0");
    v16 = "glme_msmtholder.cpp";
    v17 = 416;
    goto LABEL_65;
  }

  v18 = v13 + 1;
  if (v12 <= v18)
  {
    goto LABEL_59;
  }

  v19 = 0;
  v20 = 0;
  v21 = v18;
  v22 = 575;
  v23 = 4294967300.0;
  do
  {
    v24 = *(v11 + 1180) + *(*(v11 + 1168) + 2 * v21);
    if (!BlueFin::GlBigArray::Has((v11 + 1152), v24))
    {
      v15 = "m_potArray->Has(handle)";
      DeviceFaultNotify("glinc_array.h", 362, "Next", "m_potArray->Has(handle)");
      v16 = "glinc_array.h";
      v17 = 362;
      goto LABEL_65;
    }

    if (v24 >= 0x23Fu)
    {
      v15 = "usIndex < NUM_SIGNAL_IDS";
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      v16 = "glsignalid.h";
      v17 = 578;
      goto LABEL_65;
    }

    v25 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v24;
    v26 = *v25;
    LODWORD(v25) = v25[1];
    LOBYTE(v38) = v26;
    HIDWORD(v38) = v25;
    v39 = v24;
    v27 = BlueFin::GlSignalIdArray::Get(*(this + 15), &v38);
    v28 = *(v27 + 140);
    v29 = v28 == 14 || v28 == 16;
    if (v29 || v20 != 14 && v20 != 16 && *(v27 + 140) <= 0x11u && (((1 << v28) & 0x23C00) != 0 || ((1 << v28) & 0x8300) != 0) && *(v27 + 24) < v23)
    {
      v19 = *(v27 + 100);
      v22 = *(v27 + 108);
      v20 = *(v27 + 140);
      v23 = *(v27 + 24);
    }

    ++v21;
  }

  while (v21 < *(v11 + 1184));
  if (!v19)
  {
LABEL_59:
    v36 = *(a2 + 35);
    if ((v36 - 10) >= 4 && v36 != 17 || *(this + 4348) < 100)
    {
      return;
    }

    v15 = "0";
    DeviceFaultNotify("glme_msmtholder.cpp", 439, "SetDSPMeas", "0");
    v16 = "glme_msmtholder.cpp";
    v17 = 439;
LABEL_65:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v16, v17, v15);
  }

  BlueFin::GlBigArray::Remove(*(this + 15) + 1152, v22);
  BlueFin::GlSetBase::Remove(this + 32, v22);
  v14 = BlueFin::GlBigArray::Add((*(this + 15) + 1152), v58);
  if (!v14)
  {
    v15 = "0";
    DeviceFaultNotify("glme_msmtholder.cpp", 427, "SetDSPMeas", "0");
    v16 = "glme_msmtholder.cpp";
    v17 = 427;
    goto LABEL_65;
  }

LABEL_53:
  v6 = v14;
  *v14 = &unk_2A1F0DBF0;
  *(v14 + 84) = 0;
  *(v14 + 100) = 0;
  *(v14 + 104) = -1;
  *(v14 + 108) = 575;
  BlueFin::GlMeDSPMeas::init(v14, v56);
LABEL_54:
  BlueFin::GlMeDSPMeas::operator=(v6, a2);
  *(*(this + 4) + 4 * (v58 >> 5)) |= 1 << v58;
  v32 = *(a2 + 9);
  v33 = BlueFin::GlMeMsmtMgr::CurrentCrossCorrThreshSNR_Get(*(this + 1));
  v34 = *(v6 + 84);
  if (v32 >= v33)
  {
    v35 = v34 & 0xFFFF7FFF;
  }

  else
  {
    v35 = v34 | 0x8000;
  }

  *(v6 + 84) = v35;
}

void BlueFin::GlMeMeasAidFilter::SetDSPMeas(BlueFin::GlMeMeasAidFilter *this, const BlueFin::GlMeDSPMeas *a2)
{
  *(BlueFin::GlMeMeasSelfAidFilter::m_otSetMsmtSignalIds + (*(a2 + 54) >> 5)) |= 1 << *(a2 + 54);
  if (BlueFin::GlMeMeasSelfAidFilter::m_IsSelfAidOn != 1 || *(a2 + 35) != 14)
  {
    BlueFin::GlMeMsmtHolder::SetDSPMeas((this + 11680), a2);

    BlueFin::GlMeMsmtMgr::SetDSPMeas((this + 10624), a2);
  }
}

uint64_t BlueFin::GlMeFrameMgr::AddBestWord(BlueFin::GlMeFrameMgr *this, unsigned int a2, BlueFin::GPSFrameMgrUtils *a3, unsigned int a4, __int32 a5, BlueFin::GPSFrameMgrUtils *a6, unsigned int a7, unsigned __int32 a8)
{
  v170 = *MEMORY[0x29EDCA608];
  if (*this != 1)
  {
    v134 = "SYNCED == m_utStateMem.ucState";
    DeviceFaultNotify("glme_framemgr.h", 532, "GetSynced", "SYNCED == m_utStateMem.ucState");
    v135 = "glme_framemgr.h";
    v136 = 532;
    goto LABEL_256;
  }

  v14 = this;
  v15 = this + 340;
  v157[0] = this + 340;
  v157[1] = 0;
  v158 = 0;
  v161 = 0;
  v160 = 0;
  v159 = vdup_n_s32(0x140u);
  v162 = 0;
  BlueFin::GlBitBuffer::Position(v157, 32 * *(this + 3));
  v16 = 0;
  if (a4 == -1)
  {
    v16 = BlueFin::GPSFrameMgrUtils::Parity(a3);
  }

  v152 = a7 == -1 && BlueFin::GPSFrameMgrUtils::Parity(a6);
  v17 = a7 == -1 || a4 == -1;
  if (v17)
  {
    v18 = *(v14 + 50);
    if (v18)
    {
      (*(*v18 + 32))(v18, v16 || v152, 1, v14 + 408);
    }
  }

  v148 = v16;
  v19 = *(v14 + 13);
  v20 = v160;
  if (v19 < a2)
  {
    if (v160)
    {
      while (v159.i32[1] != v160)
      {
        BlueFin::GlBitBuffer::PutU(v157, 0x4BADC0DEu, 0x20u);
      }

      result = BlueFin::GlMeFrameMgr::SendSubFrame(v14, v157);
      if (!result)
      {
        goto LABEL_245;
      }

      v19 = *(v14 + 13);
      v20 = v160;
    }

    v22 = (a2 - v19 + 5999) / 0x1770;
    v23 = v22 + *(v14 + 12);
    v24 = 6000 * v22;
    if (v23 >> 6 >= 0x627)
    {
      v23 %= 0x189C0u;
    }

    v19 += v24;
    *(v14 + 12) = v23;
    *(v14 + 13) = v19;
    *(v14 + 14) += v24;
  }

  v150 = a4;
  v151 = a7;
  v25 = a7 | a4;
  v26 = (v19 - a2) / 0x258 + 1;
  if (v26 < (v159.i32[1] - v20) >> 5)
  {
    v27 = (v159.i32[1] - v20) >> 5;
    do
    {
      --v27;
      BlueFin::GlBitBuffer::PutU(v157, 0x4BADC0DEu, 0x20u);
    }

    while (v26 < v27);
    v20 = v160;
  }

  v147 = a8;
  v153 = a6;
  v28 = a2;
  v29 = v15;
  v30 = *(v14 + 12);
  v156 = v20 >> 5;
  v31 = 1269678302;
  if (v20 >= 0x20)
  {
    BlueFin::GlBitBuffer::Position(v157, v20 - 32);
    v31 = BlueFin::GlBitBuffer::GetU(v157, 0x20u);
  }

  v32 = BlueFin::GPSFrameMgrUtils::Parity(v31);
  v146 = BlueFin::GlMeFrameMgr::TestOverlapBits(a3, v156, v31, v32);
  v154 = v32;
  v155 = v31;
  v33 = BlueFin::GlMeFrameMgr::TestOverlapBits(v153, v156, v31, v32);
  if (v25)
  {
    if (v20 >= 0x40)
    {
      v35 = (v30 + 4) % 5u;
      if (v35 <= 2)
      {
        v36 = *(v14 + 12);
        v37 = *(v14 + 105);
        if (v37 == -1)
        {
LABEL_59:
          v139 = v33;
          v140 = (v30 + 4) % 5u;
          v141 = v25;
          v143 = v29;
          v144 = v28;
          *(v14 + 105) = v36;
          v145 = v14;
          v137 = v14 + 424;
          v163[0] = v14 + 424;
          v163[1] = 0;
          v164 = 0;
          v167 = 0;
          v166 = 0;
          v165 = vdup_n_s32(0x8C0u);
          v168 = 0;
          v138 = v156 + 8 * v35 - 2;
          BlueFin::GlBitBuffer::Position(v163, 93 * v138);
          v49 = 0;
          LODWORD(v50) = 0;
          v142 = a3;
          v51 = a3 ^ (a3 >> 1);
          v52 = v153 ^ (v153 >> 1);
          v53 = a4 & (a4 >> 1);
          v54 = a5;
          v55 = v151 & (v151 >> 1);
          v56 = v147 & (v147 >> 1);
          do
          {
            v57 = BlueFin::GlBitBuffer::GetU(v163, 3u);
            if ((v57 & 0xFFFFFFFC) == 4)
            {
              v58 = -8;
            }

            else
            {
              v58 = 0;
            }

            v59 = v58 + v57;
            if (v53)
            {
              v59 += (2 * (v51 & 1) - 1) << (v54 & 1);
            }

            if (v55)
            {
              v60 = v59 + ((2 * (v52 & 1) - 1) << (v56 & 1));
            }

            else
            {
              v60 = v59;
            }

            if (v60 >= 3)
            {
              v61 = 3;
            }

            else
            {
              v61 = v60;
            }

            if (v61 <= -3)
            {
              v62 = -3;
            }

            else
            {
              v62 = v61;
            }

            BlueFin::GlBitBuffer::Position(v163, v166 - 3);
            BlueFin::GlBitBuffer::PutU(v163, v62 + 8, 3u);
            *(&v169[8] + v49 + 1) = v62;
            v63 = v49 + 1;
            v51 >>= 1;
            v52 >>= 1;
            if (v60 > 0)
            {
              v50 = ~(v50 ^ (-2 << v49));
            }

            else
            {
              v50 = v50;
            }

            v53 >>= 1;
            v55 >>= 1;
            ++v49;
            v54 >>= 1;
            v56 >>= 1;
          }

          while (v63 != 31);
          v64 = 0;
          v65.i32[1] = 0;
          v66 = 1269678302;
          memset(v169, 0, 124);
          do
          {
            v67 = 0;
            v68 = 0;
            v69 = 0;
            do
            {
              v70 = *(&v169[8] + v67 + 1);
              if (v70 >= -v64 && v70 <= v64)
              {
                v72 = (2 << v67) - 1;
                v69 |= *(v169 + v68) != v72;
                *(v169 + v68++) = v72;
              }

              ++v67;
            }

            while (v67 != 31);
            if ((v64 == 0) | v69 & 1)
            {
              if (v68 > 6)
              {
                break;
              }

              v73 = 0;
              v74 = 0;
              do
              {
                v75 = v50;
                if (v68 >= 1)
                {
                  v76 = 0;
                  v75 = v50;
                  do
                  {
                    if ((v74 >> v76))
                    {
                      v75 = (*(v169 + v76) ^ v75);
                    }

                    ++v76;
                  }

                  while (v68 != v76);
                }

                if (BlueFin::GlMeFrameMgr::TestOverlapBits(v75, v156, v155, v154))
                {
                  v77 = BlueFin::GPSFrameMgrUtils::Parity(v75);
                  if (v77)
                  {
                    v66 = v75;
                  }

                  if (v77 & v73)
                  {
                    v66 = 1269678302;
                    goto LABEL_105;
                  }

                  v73 |= v77;
                }

                ++v74;
              }

              while (!(v74 >> v68));
              if (v73)
              {
                break;
              }
            }

            ++v64;
          }

          while (v64 != 3);
LABEL_105:
          v65.i32[0] = a5;
          v78 = vcnt_s8(v65);
          v78.i16[0] = vaddlv_u8(v78);
          v79 = v78.i32[0];
          v78.i32[0] = v147;
          v80 = vcnt_s8(v78);
          v80.i16[0] = vaddlv_u8(v80);
          if (v79 < v80.i32[0])
          {
            v81 = v80.i32[0] - v79;
          }

          else
          {
            v81 = v79 - v80.i32[0];
          }

          v82 = v142;
          v84 = v142 == v153 || (v153 ^ v142) == -1;
          v85 = v148 & v146;
          if (v150 != -1)
          {
            v85 = 0;
          }

          v86 = v152 & v139;
          if (v151 != -1)
          {
            v86 = 0;
          }

          v14 = v145;
          if (!v84 && v85 && v86 && v81 < 16)
          {
            goto LABEL_122;
          }

          if (v79 >= v80.i32[0])
          {
            v94 = v85;
          }

          else
          {
            v94 = 0;
          }

          if (v94)
          {
            v95 = v79;
          }

          else
          {
            v97 = v79 <= v80.i32[0];
            v98 = v85 | v86;
            v99 = v85 == 0;
            if (v85)
            {
              v100 = v142;
            }

            else
            {
              v100 = v153;
            }

            if (v99)
            {
              v101 = v80.i32[0];
            }

            else
            {
              v101 = v79;
            }

            if ((v86 & v97) != 0)
            {
              v82 = v153;
            }

            else
            {
              v82 = v100;
            }

            if ((v86 & v97) != 0)
            {
              v95 = v80.i32[0];
            }

            else
            {
              v95 = v101;
            }

            if ((v98 & 1) == 0)
            {
LABEL_122:
              v87 = (v145 + 704);
              v88 = (v145 + 4 * v138 + 704);
              v89 = *v88;
              v28 = v144;
              v40 = v143;
              v90 = v141;
              goto LABEL_123;
            }
          }

          v87 = (v145 + 704);
          v88 = (v145 + 4 * v138 + 704);
          v89 = *v88;
          v28 = v144;
          v40 = v143;
          v90 = v141;
          if (v82 != -1951547170 && v82 != 1269678302)
          {
            v103 = v66 != 1269678302 && v66 != -1951547170;
            v17 = v89 == v82;
            v104 = v89 ^ v82;
            v106 = v17 || v104 == -1 || v84;
            v108 = (v66 == v82 || (v82 ^ v66) == -1) && v103;
            if ((v106 & 1) != 0 || v95 > 0x18)
            {
              v66 = v82;
              v96 = v140;
            }

            else
            {
              v96 = v140;
              if (!v108)
              {
                *v88 = v82;
                goto LABEL_179;
              }

              v66 = v82;
            }

LABEL_133:
            *v88 = v66;
            v93 = v66;
            goto LABEL_180;
          }

LABEL_123:
          if (v68 >= 3 && (v89 ^ v66) != -1 && v89 != v66)
          {
            v96 = v140;
            if (v66 != -1951547170)
            {
              v93 = 1269678302;
              if (v66 != 1269678302)
              {
                *v88 = v66;
              }

              goto LABEL_180;
            }

            goto LABEL_179;
          }

          v96 = v140;
          if (v66 != -1951547170)
          {
            v93 = 1269678302;
            if (v66 == 1269678302)
            {
              goto LABEL_180;
            }

            goto LABEL_133;
          }

LABEL_179:
          v93 = 1269678302;
LABEL_180:
          if (v90 == -1)
          {
            v109 = v93;
          }

          else
          {
            v109 = 1269678302;
          }

          v42 = v109;
          if (v156 == byte_298A3A3B0[v96])
          {
            v42 = 1269678302;
            if (v109 != 1269678302)
            {
              v110 = ((v109 ^ ((2 * v109) >> 31)) >> 22);
              v111 = *(v145 + 103);
              if (v110 != v111)
              {
                if (v68 || v79 <= 0x1E && v80.i32[0] <= 0x1Eu && *(v145 + 104) != v110)
                {
                  if (v111 == 0xFFFF)
                  {
                    v93 = v109;
                  }

                  else
                  {
                    v93 = 1269678302;
                  }
                }

                else
                {
                  if (v111 != 0xFFFF)
                  {
                    *(v137 + 34) = 0;
                    *(v137 + 15) = 0u;
                    *(v137 + 16) = 0u;
                    *(v137 + 13) = 0u;
                    *(v137 + 14) = 0u;
                    *(v137 + 11) = 0u;
                    *(v137 + 12) = 0u;
                    *(v137 + 9) = 0u;
                    *(v137 + 10) = 0u;
                    *(v137 + 7) = 0u;
                    *(v137 + 8) = 0u;
                    *(v137 + 5) = 0u;
                    *(v137 + 6) = 0u;
                    *(v137 + 3) = 0u;
                    *(v137 + 4) = 0u;
                    *(v137 + 1) = 0u;
                    *(v137 + 2) = 0u;
                    *v137 = 0u;
                    *&v114 = 0xF0F0F0F0F0F0F0F0;
                    *(&v114 + 1) = 0xF0F0F0F0F0F0F0F0;
                    v87[4] = v114;
                    v87[5] = v114;
                    v87[2] = v114;
                    v87[3] = v114;
                    *v87 = v114;
                    v87[1] = v114;
                  }

                  *(v145 + 103) = v110;
                  v110 = 0xFFFF;
                }

                *(v145 + 104) = v110;
              }

              v42 = v93;
            }
          }

          goto LABEL_206;
        }

        if (v36)
        {
          v38 = (v36 + 1199) / 0x4B0u;
          if (v37)
          {
LABEL_35:
            v39 = (v37 + 1199) / 0x4B0u;
            goto LABEL_57;
          }
        }

        else
        {
          v38 = 84;
          if (v37)
          {
            goto LABEL_35;
          }
        }

        v39 = 84;
LABEL_57:
        if (v38 != v39)
        {
          *(v14 + 87) = 0;
          *(v14 + 664) = 0u;
          *(v14 + 680) = 0u;
          *(v14 + 632) = 0u;
          *(v14 + 648) = 0u;
          *(v14 + 600) = 0u;
          *(v14 + 616) = 0u;
          *(v14 + 568) = 0u;
          *(v14 + 584) = 0u;
          *(v14 + 536) = 0u;
          *(v14 + 552) = 0u;
          *(v14 + 504) = 0u;
          *(v14 + 520) = 0u;
          *(v14 + 472) = 0u;
          *(v14 + 488) = 0u;
          *(v14 + 440) = 0u;
          *(v14 + 456) = 0u;
          *(v14 + 424) = 0u;
          *&v48 = 0xF0F0F0F0F0F0F0F0;
          *(&v48 + 1) = 0xF0F0F0F0F0F0F0F0;
          *(v14 + 48) = v48;
          *(v14 + 49) = v48;
          *(v14 + 46) = v48;
          *(v14 + 47) = v48;
          *(v14 + 44) = v48;
          *(v14 + 45) = v48;
          *(v14 + 412) = 0xFFFF0000FFFFLL;
        }

        goto LABEL_59;
      }
    }
  }

  v40 = v29;
  if ((v151 & a4) != 0xFFFFFFFF)
  {
    v41 = v153;
    if (!v152)
    {
      v41 = 1269678302;
    }

    if (v148)
    {
      v42 = a3;
    }

    else
    {
      v42 = v41;
    }

    goto LABEL_206;
  }

  v42 = a3;
  if (a3 == v153 || (v153 ^ a3) == 0xFFFFFFFF)
  {
    v112 = !v148;
    v113 = 1269678302;
LABEL_195:
    if (v112)
    {
      v42 = v113;
    }

    else
    {
      v42 = a3;
    }

    goto LABEL_206;
  }

  if (!v148 || !v152)
  {
    if (v152)
    {
      v113 = v153;
    }

    else
    {
      v113 = 1269678302;
    }

    v112 = !v148;
    goto LABEL_195;
  }

  v34.i32[0] = a5;
  v43 = vcnt_s8(v34);
  v43.i16[0] = vaddlv_u8(v43);
  v44 = v43.i32[0];
  v43.i32[0] = v147;
  v45 = vcnt_s8(v43);
  v45.i16[0] = vaddlv_u8(v45);
  if (v44 == v45.i32[0])
  {
    if (v146 != v33)
    {
      v46 = a3;
    }

    else
    {
      v46 = -1951547170;
    }

    if (v33)
    {
      v47 = v153;
    }

    else
    {
      v47 = 1269678302;
    }

    if (v146 | v33 ^ 1)
    {
      v42 = v46;
    }

    else
    {
      v42 = v47;
    }
  }

  else if (v45.i32[0] >= v44)
  {
    if (v44 >= v45.i32[0])
    {
      v42 = 1269678302;
    }

    else
    {
      v42 = v153;
    }
  }

LABEL_206:
  BlueFin::GlBitBuffer::PutU(v157, v42, 0x20u);
  v115 = v160;
  if ((*(v14 + 804) & 1) == 0 && 30 * ((v159.i32[1] - v160) >> 5) != (*(v14 + 13) - v28) / 0x14)
  {
    v134 = "(((GlIntU32)(30 * (otBitBuffer.Remaining() >> 5))) == Epochs2Bits(pstSynced->ulTowEpochCnt - ulEpochCnt))";
    DeviceFaultNotify("glme_framemgr.cpp", 1384, "AddBestWord", "(((GlIntU32)(30 * (otBitBuffer.Remaining() >> 5))) == Epochs2Bits(pstSynced->ulTowEpochCnt - ulEpochCnt))");
    v135 = "glme_framemgr.cpp";
    v136 = 1384;
LABEL_256:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v135, v136, v134);
  }

  if (v160 != 320)
  {
LABEL_211:
    *(v14 + 3) = v115 >> 5;
    if ((v115 & 0x1FE0) == 0x40)
    {
      v116 = *(v14 + 86);
      if (BlueFin::GPSFrameMgrUtils::Parity(v116))
      {
        if ((~v116 & 3) != 0)
        {
          v117 = v116;
        }

        else
        {
          v117 = ~v116;
        }

        if ((v117 & 0x40000000) != 0)
        {
          v117 ^= 0x3FFFFFC0u;
        }

        v118 = (v117 >> 13) & 0x1FFFF;
        v17 = (v117 & 3) == 0;
        v119 = v117 >> 13;
        v120 = (v117 >> 8) & 7;
        v121 = (v119 >> 6) & 0x7FF;
        v124 = v17 && v118 + 4 - 5 * ((858993460 * (v118 + 4)) >> 32) + 1 == v120 && v121 < 0x627;
        v125 = *(v14 + 12);
        if (*(v14 + 1))
        {
          goto LABEL_238;
        }

        v126 = *v40;
        if (!BlueFin::GPSFrameMgrUtils::Parity(*v40))
        {
          goto LABEL_238;
        }

        if (v126 >> 22 == 139)
        {
          v128 = v126;
        }

        else
        {
          v128 = ~v126;
        }

        v17 = v128 >> 22 == 139;
        v129 = v124 ^ 1;
        if (!v17)
        {
          v129 = 1;
        }

        if (v129)
        {
          *(v14 + 412) = 0xFFFF0000FFFFLL;
          *(v14 + 87) = 0;
          *(v14 + 424) = 0u;
          *(v14 + 440) = 0u;
          *(v14 + 456) = 0u;
          *(v14 + 472) = 0u;
          *(v14 + 488) = 0u;
          *(v14 + 504) = 0u;
          *(v14 + 520) = 0u;
          *(v14 + 536) = 0u;
          *(v14 + 552) = 0u;
          *(v14 + 568) = 0u;
          *(v14 + 584) = 0u;
          *(v14 + 600) = 0u;
          *(v14 + 616) = 0u;
          *(v14 + 632) = 0u;
          *(v14 + 648) = 0u;
          *(v14 + 664) = 0u;
          *(v14 + 680) = 0u;
          *&v133 = 0xF0F0F0F0F0F0F0F0;
          *(&v133 + 1) = 0xF0F0F0F0F0F0F0F0;
          *(v14 + 48) = v133;
          *(v14 + 49) = v133;
          *(v14 + 46) = v133;
          *(v14 + 47) = v133;
          *(v14 + 44) = v133;
          *(v14 + 45) = v133;
          BlueFin::GlMeFrameMgr::SetState(v14, 0);
          result = 0;
          goto LABEL_245;
        }

        if (v118 == v125)
        {
          v130 = ++*(v14 + 2);
          *(v14 + 16) = v28;
          if (v130 >= 2)
          {
            *(v14 + 1) = 1;
            *(v14 + 3) = 0;
            LODWORD(v127) = *(v14 + 14);
            BlueFin::GlMeWinMgr::SetTMDecodeInfoFromGps(*(v14 + 48), v14 + 408, v127, v118, 1);
          }

LABEL_238:
          if (v118 == v125)
          {
            v131 = v124;
          }

          else
          {
            v131 = 0;
          }

          if (v131 == 1 && *(v14 + 1) == 1)
          {
            *(v14 + 15) = v28;
            *(v14 + 6) = 0;
          }

          goto LABEL_244;
        }

        *(v14 + 12) = v118;
      }
    }

LABEL_244:
    result = 1;
    goto LABEL_245;
  }

  result = BlueFin::GlMeFrameMgr::SendSubFrame(v14, v157);
  if (result)
  {
    v115 = v160;
    goto LABEL_211;
  }

LABEL_245:
  v132 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL BlueFin::GPSFrameMgrUtils::Parity(BlueFin::GPSFrameMgrUtils *this)
{
  v1 = this & 0xBB1F34A0 ^ ((this & 0xBB1F34A0) >> 16) ^ ((this & 0xBB1F34A0 ^ ((this & 0xBB1F34A0) >> 16)) >> 8);
  v2 = v1 ^ (v1 >> 4) ^ ((v1 ^ (v1 >> 4)) >> 2);
  if ((v2 ^ (v2 >> 1)))
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v4 = v3;
    if (v3 == 5)
    {
      break;
    }

    v5 = __const__ZN7BlueFin16GPSFrameMgrUtils6ParityEj_ulParityMask[v3 + 1] & this;
    v6 = v5 ^ HIWORD(v5) ^ ((v5 ^ HIWORD(v5)) >> 8);
    v7 = v6 ^ (v6 >> 4) ^ ((v6 ^ (v6 >> 4)) >> 2);
    v8 = v7 ^ (v7 >> 1);
    v3 = v4 + 1;
  }

  while ((v8 & 1) == 0);
  return v4 > 4;
}

float BlueFin::GlMeSrdMultiPeakResults::ToPeGridMeas@<S0>(BlueFin::GlMeSrdMultiPeakResults *this@<X0>, const BlueFin::GlMeDSPMeas *a2@<X1>, uint64_t a3@<X8>, float result@<S0>)
{
  *a3 = 0;
  *(a3 + 4) = -1;
  *(a3 + 8) = 575;
  if ((a2 + 100) == a3)
  {
    v4 = 0u;
    v7 = 0;
    v5 = -1;
  }

  else
  {
    v4 = *(a2 + 100);
    *a3 = v4;
    v5 = *(a2 + 26);
    *(a3 + 4) = v5;
    v6 = *(a2 + 54);
    *(a3 + 8) = v6;
    v7 = v6 < 0x23F;
  }

  v8 = *(this + 1);
  *(a3 + 16) = v8;
  *(a3 + 12) = *(a2 + 12);
  if (v8)
  {
    result = *(a2 + 14);
    v9 = (a3 + 56);
    v10 = (this + 20);
    v11 = (v4 - 59);
    if ((v4 - 52) >= 0xE)
    {
      v11 = -8.0;
    }

    while (1)
    {
      v12 = *(v10 - 2);
      *(v9 - 3) = 0;
      *(v9 - 2) = 2139095039;
      *(v9 - 1) = result;
      *v9 = v12;
      if (!v7)
      {
        break;
      }

      v13 = BlueFin::GlSvId::s_aucSvId2gnss[v4];
      v14 = BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[7 * v5 + v13];
      v15 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v5 - v5 + v13];
      if (v14)
      {
        v16 = v15 == 0;
      }

      else
      {
        v16 = 1;
      }

      if (v16)
      {
        v22 = "ulChipsPerEpoch != 0 && ucMsPerEpoch != 0";
        DeviceFaultNotify("glsignalid.h", 800, "GetSecondsPerChip", "ulChipsPerEpoch != 0 && ucMsPerEpoch != 0");
        v23 = 800;
LABEL_18:
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v23, v22);
      }

      v17 = v15 / (1000 * v14);
      v18 = v17 * *v10;
      v19 = BlueFin::GlSignalId::s_adSignalType2ctrFreqHz[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v5 - v5 + v13]];
      *(v9 - 4) = v17 * *(v10 - 1);
      v20 = v19 + v11 * 562500.0;
      if (v13 != 2)
      {
        v20 = v19;
      }

      v21 = v20;
      *(v9 - 4) = *(v10 - 4) / v21;
      *(v9 - 3) = v18;
      v9 += 10;
      v10 += 5;
      if (!--v8)
      {
        return result;
      }
    }

    v22 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 792, "GetSecondsPerChip", "IsValid()");
    v23 = 792;
    goto LABEL_18;
  }

  return result;
}

double BlueFin::GlMeDSPMeas::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *(a1 + 100) = *(a2 + 100);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 108) = *(a2 + 108);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 84) = *(a2 + 84);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 140) = *(a2 + 140);
    *(a1 + 116) = *(a2 + 116);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 132) = *(a2 + 132);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 80) = *(a2 + 80);
    result = *(a2 + 148);
    *(a1 + 148) = result;
  }

  return result;
}

__n128 BlueFin::GlMeSrdSatRptTrkMsmtMI::UpdateState(int *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = vcvtd_n_f64_s32(*(*a1 + 68), 0x18uLL) + *(*a1 + 64);
  v6 = *(a2 + 16);
  if (vabdd_f64(v6, v5) > 4194304.0)
  {
    v7 = *(a2 + 8);
    if (v6 > v5)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = v7 - 1;
    }

    *(a2 + 8) = v8;
  }

  *(a2 + 16) = v5;
  *v9.i64 = BlueFin::GlMeSrdAsicUnitConverter::EswUtStructToFinalUserTimeMs((v4 + 36), *(a1 + 4), a1[6]);
  *v11.i64 = *v9.i64 + trunc(*v9.i64 * 2.32830644e-10) * -4294967300.0;
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v13 = vnegq_f64(v12);
  *&v14 = vbslq_s8(v13, v11, v9).u64[0];
  if (*v9.i64 > 4294967300.0)
  {
    *v9.i64 = v14;
  }

  if (*v9.i64 < -4294967300.0)
  {
    *v10.i64 = -*v9.i64;
    *v9.i64 = -(*v9.i64 - trunc(*v9.i64 * -2.32830644e-10) * -4294967300.0);
    *v9.i64 = -*vbslq_s8(v13, v9, v10).i64;
  }

  if (*v9.i64 < 0.0)
  {
    v15 = --*v9.i64;
  }

  else
  {
    v15 = *v9.i64;
  }

  *a2 = v15;
  *(a2 + 4) = BlueFin::GlMeSrdSatRptTrkMsmtMIBase::GetEpochCntInBits(a1);
  if ((*(*a1 + 8) & 0x20) != 0)
  {
    *(a2 + 28) = a1[872];
    v18 = *(a1 + 889);
    v17 = *(a1 + 893);
    v19 = *(a1 + 885);
    *(a2 + 128) = a1[897];
    *(a2 + 96) = v18;
    *(a2 + 112) = v17;
    *(a2 + 80) = v19;
    result = *(a1 + 873);
    v20 = *(a1 + 881);
    *(a2 + 48) = *(a1 + 877);
    *(a2 + 64) = v20;
    *(a2 + 32) = result;
  }

  else
  {
    *(a2 + 28) = 0;
  }

  return result;
}

uint64_t BlueFin::MinnowGllRpcParserImp::Handle_SatRpt_TrkGridData(BlueFin::MinnowGllRpcParserImp *this, BlueFin::GlStream *a2)
{
  U08 = BlueFin::GlStream::GetU08(a2);
  v5 = BlueFin::GlStream::GetU08(a2);
  v14[0] = v5 & 1;
  v14[1] = (v5 >> 1) & 0xF;
  v6 = v5 >> 5;
  v14[2] = v5 >> 5;
  v7 = BlueFin::GlStream::GetU08(a2);
  v15 = v7 + 1;
  v16 = BlueFin::GlStream::GetU08(a2) + 1;
  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = (v7 + 32) >> 5;
  }

  v18 = v8;
  v9 = BlueFin::GlStream::GetU08(a2);
  v17 = 5 * (v9 & 7);
  v19 = (v9 >> 4) & 0xC | (v9 >> 3) & 3 | (16 * (BlueFin::GlStream::GetU08(a2) & 0x1F));
  v20[0] = 0;
  v10 = 12;
  do
  {
    *&v14[v10] = BlueFin::GlStream::GetU32(a2);
    v10 += 4;
    --v8;
  }

  while (v8);
  do
  {
    if ((v20[v8 >> 5] >> (v8 & 0x1F)))
    {
      U16 = BlueFin::GlStream::GetU16(a2);
      v12 = ((U16 << 16) & 0xFFE00000) >> U16;
    }

    else
    {
      v12 = 0;
    }

    v20[v8++ + 8] = v12;
  }

  while (v7 + 1 != v8);
  if (BlueFin::GlStream::GetAvailableSize(a2))
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 1118, "Handle_SatRpt_TrkGridData", "otStream.GetAvailableSize() == 0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_decoder_minnow.cpp", 1118, "otStream.GetAvailableSize() == 0");
  }

  return (*(**(*(this + 1) + 17072) + 80))(*(*(this + 1) + 17072), U08, v14);
}

float BlueFin::CT_GRID_XWCV::GetDriftChips(BlueFin::CT_GRID_XWCV *this, const BlueFin::GlSignalId *a2, float a3, float a4)
{
  v6 = BlueFin::GlMeSrdAsicUnitConverter::HzToPpu(this, a3, a2);
  if (*(this + 4) >= 0x23Fu)
  {
    v13 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 807, "GetChipsPerSec", "IsValid()");
    v14 = 807;
    goto LABEL_9;
  }

  v7 = BlueFin::GlSvId::s_aucSvId2gnss[*this];
  v8 = *(this + 1);
  v9 = BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[7 * v8 + v7];
  v10 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v8 - v8 + v7];
  if (v9)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v13 = "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 815, "GetChipsPerSec", "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0");
    v14 = 815;
LABEL_9:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v14, v13);
  }

  return (v6 * (1000 * v9 / v10)) * a4;
}

void BlueFin::CT_GRID_XWCV::getResults(unsigned __int8 *a1, uint64_t a2, _BYTE *a3)
{
  *a3 = 1;
  v3 = *a1;
  a3[1] = v3;
  v4 = *(a1 + 37);
  a3[2] = *(*(v4 + 328) + 10) == 1;
  if (v3)
  {
    v5 = *(a2 + 80);
    v6 = *(a2 + 28);
    v7 = (a3 + 20);
    v8 = (a1 + 180);
    do
    {
      *(v7 - 2) = *(v8 - 3);
      v9 = *(v8 - 1);
      v10 = v5 + *v8;
      *(v7 - 2) = v9;
      *(v7 - 1) = v10;
      v11 = __exp10f(v9 / 10.0);
      v12 = *(v4 + 76) - *(v4 + 68);
      *v7 = sqrtf((v12 * ((2.0 / (v11 * (v6 * (2.0 - v12)))) + 1.0)) / (v11 + v11));
      v7 += 5;
      v8 += 8;
      --v3;
    }

    while (v3);
  }
}

uint64_t BlueFin::GlMeSrdEstGrid::Config(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, unsigned __int8 *a5)
{
  v5 = *(a5 + 163);
  if (!v5)
  {
    v58 = *(a2 + 64);
    v55 = BlueFin::GlSignalId::s_ausSignalType2str[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(a4 + 1) - *(a4 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a4]]];
    GlCustomLog(11, "GlMeSrdEstGrid::Config:Missing Grid Config(sv:%u,%s) Ls:%6.3f\n");
    return 0;
  }

  if (v5 != *(a3 + 464))
  {
    if (a5[3])
    {
      v6 = *a5;
      *(a3 + 138) = xmmword_298A346A0;
      *(a3 + 464) = v5;
      *(a3 + 154) = xmmword_298A346B0;
      v7 = (a3 + 204);
      v8 = a5[1289];
      if (a5[1289])
      {
        v9 = 0;
        v10 = 0;
        v11 = *(a5 + 319);
        v12 = a5[1290];
        v13 = a5[1291];
        v14 = *(a5 + 318);
        v15 = *(a5 + 642);
        v16 = a5[1294];
        v17 = a5[1295];
        v18 = *(a5 + 643);
        v19 = a5[1296];
        v20 = a5[1297];
        do
        {
          if (v9 <= 2)
          {
            v21 = 2;
          }

          else
          {
            v21 = 5;
          }

          if (v9 <= 2)
          {
            v22 = v11;
          }

          else
          {
            v22 = v14;
          }

          v23 = v13 & (v22 >> ((v21 - v9) * v12));
          if (v23 > 0x3E)
          {
            v33 = v10;
          }

          else
          {
            v24 = 0;
            v25 = vcvtd_n_f64_u32(v23, 2uLL);
            v26 = 5 - v9;
            v27 = vcvtd_n_f64_u32(v17 & (v15 >> ((5 - v9) * v16)), 4uLL);
            if (v9)
            {
              v28 = v27;
            }

            else
            {
              v28 = 0.0;
            }

            v29 = vcvtd_n_f64_u32(((v18 >> (v26 * v19)) & v20) + 1, 2uLL);
            v30 = v28 + v25;
            v31 = (a5[1293] & (*(a5 + 320) >> (v26 * a5[1292])));
            do
            {
              v32 = vcvtd_n_f64_u32(*(a5 + 651) >> 11, 2uLL) - (v30 + (v24 * v29)) + ((*(a5 + 651) >> 6) & 0x1F);
              v33 = (v10 + 1);
              v34 = v10;
              ++v24;
              LODWORD(v10) = v10 + 1;
              v7[v34] = v32;
            }

            while (v31 >= v24);
          }

          ++v9;
          v10 = v33;
        }

        while (v9 != v8);
      }

      else
      {
        LOBYTE(v33) = 0;
      }

      if (((v33 > 7) & v6) != 0)
      {
        v36 = v33 - 8;
      }

      else
      {
        v36 = v33;
      }

      if (v36 >= 2u)
      {
        v37 = 0;
        v38 = v36 - 1;
        do
        {
          if (v37 < v36 - 1)
          {
            v39 = *v7;
            v40 = v38;
            v41 = (a3 + 208);
            do
            {
              if (v39 <= *v41)
              {
                v39 = *v41;
              }

              else
              {
                *(v41 - 1) = *v41;
                *v41 = v39;
              }

              ++v41;
              --v40;
            }

            while (v40);
          }

          --v38;
        }

        while (v37++ != v36 - 2);
      }

      *(a3 + 136) = v36;
      if (v6)
      {
        v43 = v36 + 8;
      }

      else
      {
        v43 = v36;
      }

      if (v43 == 8 * (*(*(a5 + 163) + 8) & 3) + 8)
      {
        if (v36 >= 2u)
        {
          v44 = 0;
          v45 = v36 - 1;
          v46 = (a3 + 139);
          v47 = (a3 + 208);
          do
          {
            if (*v47 != v7[v44])
            {
              v7[++v44] = *v47;
              *(a3 + 138 + v44) = *v46;
            }

            ++v46;
            ++v47;
            --v45;
          }

          while (v45);
          v36 = v44 + 1;
        }

        *(a3 + 136) = v36;
        *(a3 + 170) = xmmword_298A346A0;
        *(a3 + 186) = xmmword_298A346B0;
        v48 = *(a5 + 163);
        v49 = *(v48 + 4);
        v50 = (v49 & 0x1F) + 1;
        *(a3 + 332) = -((v49 >> 5) * (v50 >> 1));
        if ((v49 & 0x1F) != 0)
        {
          v51 = *(a3 + 332);
          v52 = v49 & 0x1F;
          v53 = (a3 + 336);
          do
          {
            v51 = v51 + (*(v48 + 4) >> 5);
            *v53++ = v51;
            --v52;
          }

          while (v52);
        }

        else
        {
          LOBYTE(v50) = 1;
        }

        *(a3 + 137) = v50;
        return 1;
      }

      v59 = *(a2 + 64);
      v57 = BlueFin::GlSignalId::s_ausSignalType2str[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(a4 + 1) - *(a4 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a4]]];
      GlCustomLog(11, "GlMeSrdEstGrid::Config:Bad Or Missing Tap Config(sv:%u,%s) Ls:%6.3f\n");
    }

    else
    {
      v35 = *(a2 + 64);
      v56 = BlueFin::GlSignalId::s_ausSignalType2str[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(a4 + 1) - *(a4 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a4]]];
      GlCustomLog(12, "GlMeSrdEstGrid::Config:MissingTapConfig(sv:%u,%s) Ls:%6.3f\n");
    }

    return 0;
  }

  return 1;
}

uint64_t BlueFin::ST_GRID_CONTEXT::ST_GRID_CONTEXT(uint64_t a1, float *a2, int *a3, uint64_t a4, double *a5, unsigned __int8 *a6, unsigned __int8 *a7, float a8)
{
  *(a1 + 64) = a6;
  v8 = *a7;
  *a1 = v8;
  LOBYTE(a8) = a7[11];
  v9 = LODWORD(a8);
  *(a1 + 4) = v9;
  v10 = *a4;
  *(a1 + 16) = *a4;
  if (*(a6 + 4) >= 0x23Fu)
  {
    v43 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 712, "GetSecPerEpochIndB", "IsValid()");
    v44 = "glsignalid.h";
    v45 = 712;
    goto LABEL_33;
  }

  v12 = *(a6 + 1);
  v13 = *a6;
  v14 = BlueFin::GlSvId::s_aucSvId2gnss[*a6];
  if (!BlueFin::GlSignalId::s_assSignalIndexAndGnss2epochIndB[7 * v12 + v14])
  {
    v43 = "ssEpochIndB != 0";
    DeviceFaultNotify("glsignalid.h", 719, "GetSecPerEpochIndB", "ssEpochIndB != 0");
    v44 = "glsignalid.h";
    v45 = 719;
    goto LABEL_33;
  }

  *(a1 + 8) = BlueFin::GlSignalId::s_assSignalIndexAndGnss2epochIndB[7 * v12 + v14];
  if (v12 != 1 || (v17 = 1.5, (v13 - 1) >= 0x20) && (v13 - 66) >= 0xA)
  {
    if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v12 - v12 + v14])
    {
      v43 = "ucMsPerEpoch != 0";
      DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
      v44 = "glsignalid.h";
      v45 = 686;
      goto LABEL_33;
    }

    v17 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v12 - v12 + v14] * 0.001;
  }

  v18 = *a3;
  *(a1 + 20) = v17;
  *(a1 + 24) = v18;
  LOWORD(v17) = *(a4 + 24);
  v19 = LODWORD(v17);
  if (v8)
  {
    v19 = 1.3488;
  }

  *(a1 + 12) = v19;
  v20 = *a2;
  *(a1 + 32) = *a2;
  v21 = *(a7 + 163);
  v22 = *(*(a4 + 64) + (*(v21 + 6) & 7));
  v23 = v22;
  *(a1 + 36) = v22;
  *(a1 + 28) = v22 / 1000.0;
  v24 = a7[14];
  v25 = 1.0;
  v26 = 1.0;
  v27 = 1.0;
  if ((v8 & 1) == 0)
  {
    LODWORD(v25) = 1065353216 - ((4 - 2 * v24) << 23);
    LODWORD(v26) = 1065353216 - (a7[12] << 24);
    v27 = 1.0 / (1 << a7[13]);
  }

  *(a1 + 40) = v25;
  *(a1 + 44) = v26;
  v28 = (v10 * 1000.0) * v9;
  v29 = floorf(v28 / v23);
  v30 = (v28 / (v29 * v23)) * (v28 / (v29 * v23));
  v31 = 0.0;
  if (!v24)
  {
    v31 = 1.25;
  }

  if (v24 == 1)
  {
    v31 = 0.66667;
  }

  *(a1 + 48) = v27;
  *(a1 + 52) = v31;
  *(a1 + 56) = v30;
  v32 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v12 - v12 + v14];
  if (v32 <= 8 && ((1 << v32) & 0x124) != 0)
  {
    if ((*(v21 + 6) & 7u) < 6)
    {
      v33 = &BlueFin::ST_GRID_CONTEXT::astBand5GridNoiseTbl + 72 * (*(v21 + 6) & 7) + 24 * v24;
      goto LABEL_21;
    }

    v43 = "rstGridRslt.m_potCfg->frq.bits.grid_coh < _DIM(ST_GRID_CONTEXT::astBand5GridNoiseTbl)";
    DeviceFaultNotify("glmesrd_grid.cpp", 226, "ST_GRID_CONTEXT", "rstGridRslt.m_potCfg->frq.bits.grid_coh < _DIM(ST_GRID_CONTEXT::astBand5GridNoiseTbl)");
    v44 = "glmesrd_grid.cpp";
    v45 = 226;
LABEL_33:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v44, v45, v43);
  }

  v33 = &BlueFin::ST_GRID_CONTEXT::astCalculatedGridNoise + 24 * v24;
  *v33 = v22;
  v33[1] = v24;
  *(v33 + 1) = v30 * (v27 * (v26 * ((((v10 * (v19 * (v20 + v31))) * 1000.0) * v9) * v25)));
  *(v33 + 8) = xmmword_298A346C0;
LABEL_21:
  *(a1 + 88) = v33;
  v34 = a5[8] - a5[5];
  if (v34 <= 0.0)
  {
    v43 = "dDeltaTimeStampInRxSec > 0";
    DeviceFaultNotify("glmesrd_grid.cpp", 248, "ST_GRID_CONTEXT", "dDeltaTimeStampInRxSec > 0");
    v44 = "glmesrd_grid.cpp";
    v45 = 248;
    goto LABEL_33;
  }

  v35 = BlueFin::GlMeSrdEstCodePrm::SubMsPart(a1, v34 * (a5[4] + 1.0));
  v37 = BlueFin::GlMeSrdEstCodePrm::SubMsPart(v36, a5[9] - a5[6]);
  if (*(a6 + 4) >= 0x23Fu)
  {
    v43 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 807, "GetChipsPerSec", "IsValid()");
    v44 = "glsignalid.h";
    v45 = 807;
    goto LABEL_33;
  }

  v38 = BlueFin::GlSvId::s_aucSvId2gnss[*a6];
  v39 = *(a6 + 1);
  v40 = BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[7 * v39 + v38];
  if (!v40 || (v41 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v39 - v39 + v38]) == 0)
  {
    v43 = "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 815, "GetChipsPerSec", "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0");
    v44 = "glsignalid.h";
    v45 = 815;
    goto LABEL_33;
  }

  *(a1 + 72) = a5[8] - a5[9];
  *(a1 + 80) = (v37 - v35) * (1000 * v40 / v41);
  return a1;
}

float BlueFin::CT_GRID_FULL::loadGrid(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v29 = *MEMORY[0x29EDCA608];
  memset(v28, 0, sizeof(v28));
  memset(v27, 0, sizeof(v27));
  v6 = *(*(a1 + 8) + 328);
  v7 = *(v6 + 8);
  v8 = 8 * (v7 & 3) + 8;
  LODWORD(v6) = *(v6 + 4);
  v9 = v6 & 0x1F;
  v10 = 0.5 / (*(a3 + 24) * (v6 >> 5));
  v11 = v9 + 1;
  v12 = ((v11 >> 1) - v10) & ~(((v11 >> 1) - v10) >> 31);
  if (v9 >= (v10 + ((v9 + 1) >> 1)))
  {
    v9 = v10 + (v11 >> 1);
  }

  v13 = v9;
  if (v9 <= v12)
  {
    v13 = ((v11 >> 1) - v10) & ~(((v11 >> 1) - v10) >> 31);
  }

  v14 = v13 + 1;
  v15 = (a2 + 4 * v8 * v12);
  v16 = 32 * (v7 & 3) + 32;
  do
  {
    if (v12 <= v9)
    {
      v17 = *(v27 + v5);
      v18 = v15;
      v19 = v12;
      do
      {
        v20 = *v18;
        if (*v18 > v17)
        {
          *(v28 + v5) = v19;
          v17 = v20;
        }

        v18 = (v18 + v16);
        ++v19;
      }

      while (v14 != v19);
      *(v27 + v5) = v17;
    }

    ++v5;
    ++v15;
  }

  while (v5 != v8);
  v21 = 0;
  v22 = 0;
  v23 = 0;
  do
  {
    if (*(v27 + v21) > v22)
    {
      v23 = v21;
      v22 = *(v27 + v21);
    }

    ++v21;
  }

  while (v8 != v21);
  v24 = *(v28 + v23);
  BlueFin::CT_GRID_XWCV::loadXwcv(a4, a2 + 4 * (v8 * v24), a3);
  result = -*(*(a1 + 8) + 4 * *(*(a1 + 8) + v24 + 34) + 196);
  *a1 = result;
  v26 = *MEMORY[0x29EDCA608];
  return result;
}

void BlueFin::CT_GRID_XWCV::loadXwcv(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 296);
  v6 = *v5;
  if (*v5)
  {
    v7 = *(*(a3 + 88) + 4);
    v8 = v5 + 2;
    v9 = (a1 + 4);
    do
    {
      v10 = *v8++;
      *v9++ = (*(a2 + 4 * v10) - v7) / v7;
      --v6;
    }

    while (v6);
  }

  BlueFin::CT_GRID_XWCV::runPeakDetection(a1, a3, 0.0);

  BlueFin::CT_GRID_XWCV::runPeakFit(a1, a3);
}

uint64_t BlueFin::CT_GRID_XWCV::runPeakDetection(uint64_t result, uint64_t a2, float a3)
{
  if (!**(result + 296))
  {
    return result;
  }

  v3 = 0;
  v4 = *(a2 + 88);
  v5 = *(v4 + 8);
  v6 = *(v4 + 12);
  do
  {
    v7 = (result + 4 * v3);
    if (v3)
    {
      v8 = v7[1] - *v7;
    }

    else
    {
      v8 = 0.0;
    }

    if (v8 >= a3)
    {
      v9 = 1;
    }

    else
    {
      if (v8 >= -a3)
      {
        goto LABEL_11;
      }

      v9 = -1;
    }

    *(result + v3 + 132) = v9;
LABEL_11:
    if (v7[1] <= v6)
    {
      *(result + v3 + 132) = 0;
    }

    if (v3 && (*(result + v3 + 132) - *(result + v3 + 131)) == 254)
    {
      *(result + v3 + 131) = 2;
    }

    ++v3;
  }

  while (v3 < **(result + 296));
  if (**(result + 296))
  {
    v10 = 0;
    v11 = **(result + 296);
    do
    {
      if (*(result + v10 + 131) == 2 && *(result + 4 * v10) < v5)
      {
        *(result + v10 + 131) = 0;
        v11 = **(result + 296);
      }

      ++v10;
    }

    while (v10 < v11);
  }

  return result;
}

unint64_t BlueFin::GlMeSrdSatRptNonL1VetSm::DebugLog(unint64_t result, const char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  STACK[0x788] = *MEMORY[0x29EDCA608];
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    v39 = result;
    result = BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x1C);
    if ((result & 1) != 0 || BlueFin::GlUtils::m_ucEnabled && (result = BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0xF), result))
    {
      v40 = *a3;
      v41 = a3[1];
      if (!strcmp(a2, "wait_for_aided_track"))
      {
        v42 = 1;
      }

      else if (!strcmp(a2, "los_verification"))
      {
        v42 = 2;
      }

      else if (!strcmp(a2, "los_verification_pull_in"))
      {
        v42 = 3;
      }

      else if (!strcmp(a2, "los_tracking"))
      {
        v42 = 4;
      }

      else if (!strcmp(a2, "mp_tracking"))
      {
        v42 = 5;
      }

      else if (!strcmp(a2, "snap_to_tap"))
      {
        v42 = 6;
      }

      else if (!strcmp(a2, "los_sensitivity"))
      {
        v42 = 7;
      }

      else if (!strcmp(a2, "grid_search"))
      {
        v42 = 8;
      }

      else if (!strcmp(a2, "snap_to_grid_aid"))
      {
        v42 = 9;
      }

      else if (!strcmp(a2, "snap_to_grid_detection"))
      {
        v42 = 10;
      }

      else
      {
        v42 = 0;
      }

      STACK[0x690] = &unk_2A1F0C460;
      LOBYTE(STACK[0x698]) = v40;
      LOBYTE(STACK[0x699]) = v41;
      LOBYTE(STACK[0x69A]) = v42;
      STACK[0x750] = v39;
      v44 = *(v39 + 112);
      v43 = *(v39 + 120);
      v45 = *(v44 + 100);
      LOBYTE(STACK[0x6B0]) = -1;
      LOBYTE(STACK[0x6B4]) = v45;
      LODWORD(STACK[0x6B8]) = *(v44 + 104);
      LOWORD(STACK[0x6BC]) = *(v44 + 108);
      LOWORD(STACK[0x6C0]) = 0;
      LOBYTE(STACK[0x6C2]) = 0;
      STACK[0x708] = 0;
      LOBYTE(STACK[0x714]) = 0;
      LODWORD(STACK[0x718]) = 0;
      STACK[0x720] = 0;
      LOBYTE(STACK[0x728]) = 0;
      STACK[0x6F8] = 0;
      *&STACK[0x6E8] = 0u;
      *&STACK[0x6D8] = 0u;
      *&STACK[0x6C8] = 0u;
      *&STACK[0x73C] = 0u;
      *&STACK[0x72C] = 0u;
      LODWORD(STACK[0x700]) = -1;
      LOBYTE(STACK[0x704]) = -1;
      LODWORD(STACK[0x710]) = 0;
      STACK[0x6A0] = &STACK[0x6B0];
      TrkRslts = BlueFin::GlMeSrdDspMeasAux::GetTrkRslts(v43);
      v47 = STACK[0x750];
      v48 = *(STACK[0x750] + 112);
      v49 = *(&STACK[0x690] | 0x10);
      *v49 = *(v48 + 112);
      v50 = LOBYTE(STACK[0x698]);
      *(v49 + 16) = v50;
      *(v49 + 17) = *(&STACK[0x690] | 9);
      v51 = *(&STACK[0x690] | 0xA);
      *(v49 + 18) = v51;
      *(v49 + 64) = *(v47 + 92);
      *(v49 + 88) = *(v47 + 96);
      if (v50 == 6)
      {
        v52 = "EVT(MSMT)";
      }

      else
      {
        v52 = "invalid_event!";
      }

      *(v49 + 24) = v52;
      *(v49 + 32) = BlueFin::GlMeSrdSatRptNonL1VetContainer::ToStateString(v51);
      *(v49 + 48) = *(v47 + 128) - *(v47 + 152);
      *(v49 + 40) = *(v47 + 128) - *(v47 + 144);
      *(v49 + 68) = *(v48 + 40);
      v53.i32[0] = *(v48 + 32);
      v53.i32[1] = *(v48 + 56);
      *(v49 + 56) = *(v48 + 24);
      *(v49 + 72) = vmul_f32(v53, vdup_n_s32(0x4E6E6B28u));
      v54 = *(TrkRslts + 28);
      *(v49 + 80) = *(TrkRslts + 24);
      *(v49 + 84) = v54;
      v55 = STACK[0x750];
      v56 = *(v49 + 96) & 0xFFFFFFFE | *(STACK[0x750] + 40);
      *(v49 + 96) = v56;
      v57 = v56 & 0xFFFFFE01 | (2 * ((~*(*(v55 + 112) + 84) & 0x30) == 0));
      if (*(TrkRslts + 117))
      {
        v58 = 4;
      }

      else
      {
        v58 = 0;
      }

      if (*(v55 + 42))
      {
        v59 = 8;
      }

      else
      {
        v59 = 0;
      }

      v60 = v58 | v59;
      if (*(v55 + 45))
      {
        v61 = 16;
      }

      else
      {
        v61 = 0;
      }

      *(v49 + 96) = (v57 | v60 | v61 | (*(v55 + 91) >> 1) & 0x20 | (*(v55 + 91) >> 1) & 0x40) + ((16 * *(v55 + 91)) & 0x80) + 16 * (*(v55 + 91) & 0x10);
      *(v49 + 100) = *(TrkRslts + 118);
      v62 = *(TrkRslts + 64);
      *(v49 + 104) = v62;
      Str = BlueFin::GlMeSrdEstMultipath::GetStr(v62);
      v64 = *(&STACK[0x690] | 0x10);
      *(v64 + 14) = Str;
      *(v64 + 16) = *(TrkRslts + 68);
      v65 = *(TrkRslts + 88);
      v66 = STACK[0x750];
      v67 = *(STACK[0x750] + 44);
      v64[120] = v67;
      v68 = *(v66 + 64);
      if (v68 < 0.0)
      {
        v68 = -v68;
      }

      v69 = *(v66 + 48);
      *(v64 + 31) = v69;
      *(v64 + 35) = v65;
      *(v64 + 36) = v68;
      *(v64 + 148) = 1099431936;
      *(v64 + 34) = BlueFin::GlMeSrdSatRptNonL1VetSm::afVE_TAP_DETECTION_TRHESHOLD_CVEC_MAGNITUDE[v67 - 1] / v69;
      if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
      {
        (*(STACK[0x690] + 24))(&STACK[0x690], 0, 0);
        v64 = STACK[0x6A0];
      }

      v70 = *(v64 + 24);
      v72 = *(v64 + 5);
      v71 = *(v64 + 6);
      v74 = *(v64 + 3);
      v73 = *(v64 + 4);
      v75 = *v64;
      v76 = v64[4];
      v77 = BlueFin::GlSignalId::s_ausSignalIndex2str[*(v64 + 2)];
      v78 = v64[80];
      v79 = v64[81];
      v80 = v64[82];
      v81 = v64[83];
      v82 = v64[84];
      if ((v70 & 4) != 0 && *(v64 + 17) >= *(v64 + 37))
      {
        v83 = v64[100];
      }

      else
      {
        v83 = 0;
      }

      v84 = *(v64 + 19);
      v85 = *(v64 + 18);
      v86 = *(v64 + 16);
      v87 = *(v64 + 11) * 1000.0;
      v88 = *(v64 + 7) * 1000.0;
      v89 = *(v64 + 36);
      v90 = v64[17];
      v91 = *(v64 + 14);
      v92 = *(v64 + 32);
      v93 = *(v64 + 33);
      v94 = "vet";
      if (v70)
      {
        v94 = "VET";
      }

      v95 = *(v64 + 35);
      v96 = *(v64 + 34);
      v97 = *(v64 + 38);
      v98 = v64[120];
      BlueFin::GlFormat::glsnprintf(&a37, 0x190, "meSmNonL1_%s::%s(S:%.2f V:%.2f)::%s(Sat:%i Sv:%i Bd:%s) Lms %.9f Aid %.9f ProbLOS %.1f CNo %.1f Dop[Ppb %.1f U %.2f] Gear[%i %i %i %i %i] Aid[%s:%s:%s:%s/%s:%s] QA[%s:%s Pol:%i CcdMet:%.2f] Cvec[%s] MP[%s] VE[CNo:%.1f Met:%.2f Off:%.2f MetThr:%.1g Freq(Scan):%.1f MaxGear:%i]\n", v83, v94, v73, v71, v72, v74, v75, v76, v77, *&v88, *&v87);
      result = GlCustomLog(15, "%s", &a37);
    }
  }

  v99 = STACK[0x788];
  v100 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlMeFrameMgr::GetTowMeas(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 408);
  *(a2 + 8) = 0;
  *(a2 + 4) = 0;
  if (*a1 != 1)
  {
    return 0;
  }

  v2 = 6 * *(a1 + 48);
  v3 = *(a1 + 5);
  if (v3 >= 3)
  {
    v4 = *(a1 + 52);
    v7 = *(a1 + 60);
  }

  else
  {
    v4 = *(a1 + 52);
    v5 = *(a1 + 56);
    if ((v5 / 0x3E8 - *(a1 + 44)) >= 0)
    {
      v6 = v5 / 0x3E8 - *(a1 + 44);
    }

    else
    {
      v6 = *(a1 + 44) - v5 / 0x3E8;
    }

    v7 = *(a1 + 60);
    if ((v4 - v7) >> 4 <= 0x176 && (*(a1 + 6) & 1) == 0)
    {
      *(a1 + 5) = v3 + 1;
      *(a1 + 6) = 1;
    }

    v8 = *(a1 + 384);
    if (*(v8 + 336) < 60.0)
    {
      v9 = *(v8 + 328) - v2;
      v10 = -274877907 * (*(v8 + 356) - v5);
      v11 = (v10 >> 38) + (v10 >> 63);
      v12 = v9 - 604800;
      v13 = v9 + 604800;
      if (v9 >= -302400)
      {
        v13 = v9;
      }

      if (v9 <= 302400)
      {
        v12 = v13;
      }

      v14 = v12 + v11;
      if (v14 < 0)
      {
        v14 = -v14;
      }

      if (v14 >= 0x65)
      {
        if (v6 < 0x1F)
        {
          return 0;
        }

        goto LABEL_25;
      }

      if (v6 >= 0x3D)
      {
LABEL_25:
        BlueFin::GlMeFrameMgr::SetState(a1, 0);
        return 0;
      }
    }
  }

  *(a2 + 8) = v2;
  *(a2 + 12) = v7;
  *(a2 + 4) = v4;
  if (*(a1 + 1) == 1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t BlueFin::GlMeSrdSvIdReportMsmtSlot::GetSvId@<X0>(uint64_t this@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(this + 100);
  if ((v2 - 189) <= 0xFFFFFF43)
  {
    DeviceFaultNotify("glmesrd_svid_report_mgr_slot_types.cpp", 102, "GetSvId", "IS_SVID(*m_otDspMeas.otSignalId.GetSvId())");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_svid_report_mgr_slot_types.cpp", 102, "IS_SVID(*m_otDspMeas.otSignalId.GetSvId())");
  }

  *a2 = v2;
  return this;
}

float BlueFin::GlMeMsmtMgr::CurrentCrossCorrThreshSNR_Get(BlueFin::GlMeMsmtMgr *this)
{
  v1 = this + 976;
  if (*(this + 1002))
  {
    v2 = *&v1[4 * *(this + 1001)];
  }

  else
  {
    v3 = 0;
    v2 = -171.0;
    do
    {
      v4 = *&v1[4 * v3];
      if (v2 < v4)
      {
        *(this + 1001) = v3;
        v2 = v4;
      }

      ++v3;
    }

    while (v3 != 5);
    if (v2 > -124.0)
    {
      *&v1[4 * *(this + 1001)] = -1024458752;
      v2 = -120.0;
    }

    *(this + 1002) = 1;
  }

  return v2 + -20.0;
}

void BlueFin::GlMeMsmtMgr::SetDSPMeas(BlueFin::GlMeMsmtMgr *this, const BlueFin::GlMeDSPMeas *a2)
{
  v5 = (a2 + 104);
  v4 = *(a2 + 26);
  v76[0] = *(a2 + 100);
  v77 = v4;
  v78 = *(a2 + 54);
  if (v76[0] - 1 > 0xBB)
  {
LABEL_116:
    if ((*(a2 + 85) & 0x40) == 0)
    {
      v71 = *(a2 + 3);
      if (v71 > *(this + 29))
      {
        *(this + 29) = v71;
      }
    }

    return;
  }

  v6 = *(a2 + 35);
  if ((v6 - 8) >= 2)
  {
    if (v6 == 14)
    {
LABEL_9:
      v9 = 0;
      goto LABEL_11;
    }

    if (v6 != 15)
    {
      v9 = 1;
LABEL_11:
      MsmtSlotPtr = BlueFin::GlMeMsmtMgr::GetMsmtSlotPtr(this, v76, 0, v9);
      if (!MsmtSlotPtr)
      {
        return;
      }

      if (*(a2 + 100) != v76[0] || *v5 != v77)
      {
        v72 = "rMeas.otSignalId == otSignalId";
        DeviceFaultNotify("glme_msmtmgr.cpp", 609, "SetDSPMeas", "rMeas.otSignalId == otSignalId");
        v73 = "glme_msmtmgr.cpp";
        v74 = 609;
        goto LABEL_121;
      }

      v14 = MsmtSlotPtr;
      *(*this + 4 * (v78 >> 5)) |= 1 << v78;
      *(MsmtSlotPtr + 112) = *(a2 + 112);
      *(MsmtSlotPtr + 88) = *(a2 + 11);
      *(MsmtSlotPtr + 96) = *(a2 + 24);
      *(MsmtSlotPtr + 132) = *(a2 + 33);
      *(MsmtSlotPtr + 136) = *(a2 + 34);
      *(MsmtSlotPtr + 140) = *(a2 + 35);
      v15 = *(a2 + 21);
      if ((v15 & 0x10) == 0)
      {
        v72 = "0";
        DeviceFaultNotify("glme_msmtmgr.cpp", 667, "SetDSPMeas", "0");
        v73 = "glme_msmtmgr.cpp";
        v74 = 667;
        goto LABEL_121;
      }

      v16 = *(MsmtSlotPtr + 84);
      v17 = *(a2 + 3);
      v18 = 0.0;
      if ((v16 & 0x10) != 0)
      {
        v19 = v17 - *(MsmtSlotPtr + 24);
        v20 = v19 + *(a2 + 16);
        v18 = (v15 & 0x20) != 0 ? v19 + *(a2 + 16) : v17 - *(MsmtSlotPtr + 24);
        if ((v16 & 0x20) != 0)
        {
          v18 = v18 - *(MsmtSlotPtr + 64);
        }
      }

      *(MsmtSlotPtr + 24) = v17;
      v21 = v16 | 0x10;
      *(MsmtSlotPtr + 84) = v16 | 0x10;
      *(MsmtSlotPtr + 44) = *(a2 + 11);
      if ((*(a2 + 84) & 2) != 0)
      {
        v22 = *(a2 + 9);
        *(MsmtSlotPtr + 36) = v22;
        *(MsmtSlotPtr + 84) = v16 | 0x12;
        if (*(this + 1000) != 1 || v22 > *(this + 249))
        {
          *(this + 249) = v22;
          *(this + 1000) = 1;
        }

        v21 = *(MsmtSlotPtr + 84) & 0xFFFF7FFF | ((v22 < BlueFin::GlMeMsmtMgr::CurrentCrossCorrThreshSNR_Get(this)) << 15);
        *(v14 + 84) = v21;
        v23 = *(this + 121);
        if (v23)
        {
          (*(*v23 + 40))(v23, *(a2 + 112), v76, *(a2 + 9));
          v21 = *(v14 + 84);
        }
      }

      if ((*(a2 + 86) & 4) != 0)
      {
        *(v14 + 40) = *(a2 + 10);
        v21 |= 0x40000u;
        *(v14 + 84) = v21;
        v24 = *(this + 121);
        if (v24)
        {
          (*(*v24 + 40))(v24, *(a2 + 112), v76);
          v21 = *(v14 + 84);
        }
      }

      v25 = v21 & 0xFFFF7FFF | (((*(a2 + 21) >> 15) & 1) << 15);
      *(v14 + 84) = v25;
      v26 = v25 & 0xFFFFFEFF | *(a2 + 21) & 0x100;
      *(v14 + 48) = vand_s8(*(a2 + 48), vcgez_s32(vshl_n_s32(vdup_n_s32((*(a2 + 21) & 0x100) == 0), 0x1FuLL)));
      *(v14 + 84) = v26;
      if ((*(a2 + 84) & 0x40) != 0)
      {
        *(v14 + 32) = *(a2 + 8);
        v27 = *(a2 + 14);
        *(v14 + 56) = v27;
        *(v14 + 148) = *(a2 + 148);
        v26 |= 0x40u;
        *(v14 + 84) = v26;
        v28 = *(a2 + 35);
        if (v28 <= 0x11 && ((1 << v28) & 0x21800) != 0)
        {
          v11.i64[0] = *(a2 + 3);
          *v13.i64 = *v11.i64 + trunc(*v11.i64 * 2.32830644e-10) * -4294967300.0;
          v29.f64[0] = NAN;
          v29.f64[1] = NAN;
          v30 = vnegq_f64(v29);
          v13.i64[0] = vbslq_s8(v30, v13, v11).u64[0];
          if (*v11.i64 > 4294967300.0)
          {
            v11.i64[0] = v13.i64[0];
          }

          if (*v11.i64 < -4294967300.0)
          {
            *v12.i64 = -*v11.i64;
            *v11.i64 = -(*v11.i64 - trunc(*v11.i64 * -2.32830644e-10) * -4294967300.0);
            *v11.i64 = -*vbslq_s8(v30, v11, v12).i64;
          }

          if (*v11.i64 < 0.0)
          {
            v31 = --*v11.i64;
          }

          else
          {
            v31 = *v11.i64;
          }

          *(v14 + 172) = v31;
        }
      }

      else if ((v21 & 0x40) != 0)
      {
        v27 = *(v14 + 56) * 1.05;
        *(v14 + 56) = v27;
        *(v14 + 152) = *(v14 + 152) * 1.05;
      }

      else
      {
        *(v14 + 32) = 0;
        *(v14 + 56) = 2139095039;
        v27 = 3.4028e38;
        *(v14 + 148) = 0x7F7FFFFF00000000;
      }

      v32 = *(a2 + 21);
      if ((v32 & 0x80000) != 0)
      {
        v26 |= 0x80000u;
      }

      else
      {
        if ((v26 & 0x80000) == 0)
        {
          goto LABEL_49;
        }

        v26 &= ~0x80000u;
      }

      *(v14 + 84) = v26;
      v32 = *(a2 + 21);
LABEL_49:
      if ((v32 & 0x80) != 0)
      {
        v26 |= 0x80u;
        *(v14 + 84) = v26;
        v32 = *(a2 + 21);
      }

      else if ((v32 & 0x800000) == 0)
      {
        v26 &= 0xFF7FFF7F;
        *(v14 + 84) = v26;
        *(v14 + 8) = 0;
        v33 = 0;
        goto LABEL_56;
      }

      if ((v32 & 0x800000) != 0)
      {
        v26 |= 0x800000u;
        *(v14 + 84) = v26;
      }

      *(v14 + 8) = *(a2 + 1);
      v33 = *(a2 + 15);
LABEL_56:
      *(v14 + 60) = v33;
      v34 = *(a2 + 15);
      v35 = *(a2 + 32);
      v36 = *(a2 + 21) & 0x1000000 | v26 & 0xFEFFFFFF;
      if ((*(a2 + 21) & 0x1000000) == 0)
      {
        v34 = 0.0;
        v35 = 0.0;
      }

      *(v14 + 84) = v36;
      *(v14 + 120) = v34;
      *(v14 + 128) = v35;
      if ((*(a2 + 84) & 0x20) != 0)
      {
        *(v14 + 16) = 0;
        *(v14 + 64) = *(a2 + 8);
        v36 = v36 & 0xFFFFFFDB | 0x20;
      }

      else
      {
        if ((v26 & 0x20) == 0)
        {
LABEL_66:
          v38 = *(v14 + 164);
          if (v38 == -1)
          {
            v41 = 0;
          }

          else
          {
            v39 = *(v14 + 24);
            v40 = v38 * -0.001;
            v41 = (v39 + v40) <= 600.0;
          }

          v42 = *(v14 + 172);
          if (v42 == -1)
          {
            v44 = 0;
          }

          else
          {
            v43 = *(v14 + 24);
            v44 = (v43 - v42) <= 5.0;
          }

          v45 = *(a2 + 21);
          if ((v45 & 8) == 0)
          {
            v46 = *(v14 + 169);
            if (v45 & 0x400) != 0 && ((v46 | v44) & v41)
            {
              v47 = v36 & 0xFFDFFBF7;
LABEL_112:
              v60 = v47 | 0x408;
              goto LABEL_113;
            }

            if ((v45 & 0x400) != 0 || (v46 & v41) == 0)
            {
              *(v14 + 164) = -1;
              *(v14 + 168) = 255;
              v60 = v36 & 0xFFDFF9F7;
LABEL_113:
              *(v14 + 84) = v60;
              v70 = *(a2 + 21);
              if ((v70 & 0x100000) != 0)
              {
                *(v14 + 72) = *(a2 + 9);
                *(v14 + 80) = *(a2 + 20);
                v60 |= 0x100000u;
                *(v14 + 84) = v60;
                v70 = *(a2 + 21);
              }

              *(v14 + 84) = v60 & 0xFFFFDFFF | (((v70 >> 13) & 1) << 13);
              goto LABEL_116;
            }

            v53 = v38 * 0.001 + (*(v14 + 24) - v38 * 0.001) * (1.0 - *(v14 + 32));
            v75 = *(v14 + 24);
            SubEpochTime = BlueFin::GlSystemTime::getSubEpochTime(&v75, v76, 0);
            v75 = v53;
            v55 = BlueFin::GlSystemTime::getSubEpochTime(&v75, v76, 0);
            if (SubEpochTime - v55 >= 0.0005)
            {
              v69 = v53 + -0.001;
            }

            else
            {
              if (v55 - SubEpochTime < 0.0005)
              {
                v56 = floor(v53 * 1000.0) / 1000.0;
LABEL_111:
                v75 = *(v14 + 24);
                *(v14 + 24) = v56 + BlueFin::GlSystemTime::getSubEpochTime(&v75, v76, 0);
                v47 = *(v14 + 84) & 0xFFDFF9F7;
                goto LABEL_112;
              }

              v69 = v53 + 0.001;
            }

            v56 = floor(v69 * 1000.0) / 1000.0;
            goto LABEL_111;
          }

          if ((v45 & 0x400) != 0)
          {
            *(v14 + 84) = v36 | 0x408;
            v48 = v36 & 0xFFFFF9F7 | 0x408;
            v49 = v36 | 0x608;
            if ((*(a2 + 21) & 0x200) != 0)
            {
              v48 = v49;
            }

            *(v14 + 84) = v48;
            v50 = *(a2 + 35);
            if (v50 <= 0x11 && ((1 << v50) & 0x21800) != 0)
            {
              *(v14 + 169) = 1;
            }

            v51 = *(v14 + 24);
            if (v51 * 1000.0 <= 0.0)
            {
              if (v51 * 1000.0 >= 0.0)
              {
                v61 = 0;
LABEL_97:
                *(v14 + 164) = v61;
                v75 = v51;
                *v62.i64 = BlueFin::GlSystemTime::getSubBitTime(&v75, v76, 0) * 1000.0;
                *v64.i64 = *v62.i64 + trunc(*v62.i64 * 2.32830644e-10) * -4294967300.0;
                v65.f64[0] = NAN;
                v65.f64[1] = NAN;
                v66 = vnegq_f64(v65);
                *&v67 = vbslq_s8(v66, v64, v62).u64[0];
                if (*v62.i64 > 4294967300.0)
                {
                  *v62.i64 = v67;
                }

                if (*v62.i64 < -4294967300.0)
                {
                  *v63.i64 = -*v62.i64;
                  *v62.i64 = -(*v62.i64 - trunc(*v62.i64 * -2.32830644e-10) * -4294967300.0);
                  *v62.i64 = -*vbslq_s8(v66, v62, v63).i64;
                }

                if (*v62.i64 < 0.0)
                {
                  v68 = --*v62.i64;
                }

                else
                {
                  LOBYTE(v68) = *v62.i64;
                }

                *(v14 + 168) = v68;
                v60 = *(v14 + 84) | 0x200000;
                goto LABEL_113;
              }

              v52 = -0.5;
            }

            else
            {
              v52 = 0.5;
            }

            v61 = (v51 * 1000.0 + v52);
            goto LABEL_97;
          }

          v72 = "0";
          DeviceFaultNotify("glme_msmtmgr.cpp", 913, "SetDSPMeas", "0");
          v73 = "glme_msmtmgr.cpp";
          v74 = 913;
LABEL_121:
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v73, v74, v72);
        }

        *(v14 + 64) = 0;
        *(v14 + 16) = v18 + *(v14 + 16);
        v36 |= 4u;
        *(v14 + 84) = v36;
        if ((v26 & 0x40) != 0)
        {
          v57 = v18;
          v58 = *(v14 + 68) + (fabsf(v57) * v27);
          *(v14 + 68) = v58;
          if (v76[0] < 0x34u || v76[0] >= 0x42u)
          {
            v59 = 0.00015152;
          }

          else
          {
            v59 = 0.00030333;
          }

          if (v58 <= v59)
          {
            goto LABEL_66;
          }

          v36 &= ~0x20u;
        }

        else
        {
          if (*(v14 + 108) >= 0x23Fu)
          {
            v72 = "IsValid()";
            DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
            v73 = "glsignalid.h";
            v74 = 679;
            goto LABEL_121;
          }

          if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(v14 + 104) - *(v14 + 104) + BlueFin::GlSvId::s_aucSvId2gnss[*(v14 + 100)]])
          {
            v72 = "ucMsPerEpoch != 0";
            DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
            v73 = "glsignalid.h";
            v74 = 686;
            goto LABEL_121;
          }

          v37 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(v14 + 104) - *(v14 + 104) + BlueFin::GlSvId::s_aucSvId2gnss[*(v14 + 100)]] * 0.001;
          *(v14 + 68) = v37;
          v36 &= 0xFFFFFF9F;
        }
      }

      *(v14 + 84) = v36;
      goto LABEL_66;
    }
  }

  v7 = v6 & 0xFFFFFFFE;
  if (v76[0] - 139 > 0x23 || v7 != 8)
  {
    goto LABEL_9;
  }
}

double BlueFin::GlMeSrdMeasAidFilterEvents::OnMeasSSEvent(BlueFin::GlMeSrdMeasAidFilterEvents *this, float a2, unsigned __int8 a3, const BlueFin::GlSignalId *a4)
{
  if (*a4 - 189 <= 0xFFFFFF43)
  {
    DeviceFaultNotify("glmesrd_ctrl_sm.h", 157, "OnMeasSSEvent", "IS_SVID(*rotSignalId.GetSvId())");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_ctrl_sm.h", 157, "IS_SVID(*rotSignalId.GetSvId())");
  }

  result = a2 + 0.5;
  *(this + *(a4 + 4) + 8) = result;
  return result;
}

BOOL BlueFin::GlMeFrameMgr::TestOverlapBits(BlueFin::GlMeFrameMgr *this, unsigned int a2, char a3, int a4)
{
  v4 = this >> 30;
  if ((a2 & 0xFFFFFFFD) != 0 && a4 && v4 != (a3 & 3) && (a3 & 3 ^ (this >> 30)) != 3)
  {
    return 0;
  }

  if (a2)
  {
    v4 = this & 3;
  }

  v7 = v4 == 3 || v4 == 0;
  if (((1 << a2) & 0x207) == 0)
  {
    v7 = 1;
  }

  return a2 > 9 || v7;
}

BOOL BlueFin::GlMeMeasAidFilter::IsTowUnverified(uint64_t a1, const BlueFin::GlSignalId *a2)
{
  MsmtSlotPtr = BlueFin::GlMeMsmtMgr::GetMsmtSlotPtr((a1 + 10624), a2, 1, 1);
  v4 = *a2;
  if (!*a2 || v4 >= 0x21 && (v4 < 0x42 || v4 >= 0x4C && v4 - 175 > 0xD))
  {
    return 0;
  }

  v5 = BlueFin::GlMeSlots::GpsFrameMgr(MsmtSlotPtr, a2);
  return BlueFin::GlMeFrameMgr::GetTowMeas(v5, &v7) == 1;
}

uint64_t BlueFin::GlMeSrdSvIdReportDataBitsSlot::GetSvId@<X0>(uint64_t this@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(this + 9);
  if (v2 != *(this + 313))
  {
    v3 = "m_otFllBits.m_otSvId == m_otPllBits.m_otSvId";
    DeviceFaultNotify("glmesrd_svid_report_mgr_slot_types.cpp", 50, "GetSvId", "m_otFllBits.m_otSvId == m_otPllBits.m_otSvId");
    v4 = 50;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_svid_report_mgr_slot_types.cpp", v4, v3);
  }

  if ((v2 - 189) <= 0xFFFFFF43)
  {
    v3 = "IS_SVID(*m_otFllBits.m_otSvId)";
    DeviceFaultNotify("glmesrd_svid_report_mgr_slot_types.cpp", 52, "GetSvId", "IS_SVID(*m_otFllBits.m_otSvId)");
    v4 = 52;
    goto LABEL_6;
  }

  *a2 = v2;
  return this;
}

uint64_t BlueFin::GlMeMsmtMgr::SetDSPDataBits(uint64_t this, const BlueFin::GlMeDSPDataBits *a2, const BlueFin::GlMeDSPDataBits *a3)
{
  v3 = *(a2 + 9);
  if (v3 != *(a3 + 9))
  {
    v45 = "rFllDataBits.m_otSvId == rPllDataBits.m_otSvId";
    DeviceFaultNotify("glme_msmtmgr.cpp", 1282, "SetDSPDataBits", "rFllDataBits.m_otSvId == rPllDataBits.m_otSvId");
    v46 = "glme_msmtmgr.cpp";
    v47 = 1282;
    goto LABEL_77;
  }

  if ((*(a2 + 12) & 2) == 0 || (*(a3 + 12) & 2) != 0)
  {
    v45 = "(rFllDataBits.m_otFlags32.Has(GLME_DSPDATABIT_nPLL_FLL)) && (rPllDataBits.m_otFlags32.Missing(GLME_DSPDATABIT_nPLL_FLL))";
    DeviceFaultNotify("glme_msmtmgr.cpp", 1283, "SetDSPDataBits", "(rFllDataBits.m_otFlags32.Has(GLME_DSPDATABIT_nPLL_FLL)) && (rPllDataBits.m_otFlags32.Missing(GLME_DSPDATABIT_nPLL_FLL))");
    v46 = "glme_msmtmgr.cpp";
    v47 = 1283;
    goto LABEL_77;
  }

  v56 = *(a2 + 9);
  if (!v3 || v3 == 255)
  {
    return this;
  }

  v6 = this;
  v7 = BlueFin::GlUtils::m_pInstance;
  if (BlueFin::GlUtils::m_pInstance)
  {
    if (*(BlueFin::GlUtils::m_pInstance + 1122) != 1 || (this = (*(*a2 + 24))(a2, 0, 0), (v7 = BlueFin::GlUtils::m_pInstance) != 0))
    {
      if (*(v7 + 1122) == 1)
      {
        this = (*(*a3 + 24))(a3, 0, 0);
      }
    }
  }

  v8 = BlueFin::GlSvId::s_aucSvId2gnss[v3];
  if (v8 <= 2)
  {
    if (!BlueFin::GlSvId::s_aucSvId2gnss[v3])
    {
      goto LABEL_37;
    }

    if (v8 == 1)
    {
      BlueFin::GlArray::EnsureValidHandle(v6 + 744, v3);
      v24 = *(*(v6 + 760) + v3 - *(v6 + 780));
      v25 = BlueFin::GlArray::Add((v6 + 744), v3);
      if (v25)
      {
        if (v24 == 255)
        {
          v30 = 0;
          v25[6].i32[1] = -1;
          v25[6].i16[4] = -256;
          v25[6].i8[10] = 0;
          v31 = v25 + 2;
          do
          {
            v31->i32[0] = 0;
            if (v30 <= 7)
            {
              v31[-2].i32[0] = 0;
            }

            ++v30;
            v31 = (v31 + 4);
          }

          while (v30 != 17);
          v25[7].i64[0] = *(v6 + 176);
        }

        BlueFin::GlMeWaasFrameMgr::Update(v25, a3, v26, v27, v28, v29);
      }

      v51[0] = v3;
      v52 = 0;
      if ((v3 - 189) >= 0xFFFFFF44)
      {
        v32 = v3 + 95;
      }

      else
      {
        v32 = 575;
      }

      v53 = v32;
      this = BlueFin::GlMeMsmtMgr::GetMsmtSlotPtr(v6, v51, 1, 1);
      MsmtSlotPtr = this;
      if (!this)
      {
        return this;
      }
    }

    else
    {
      if (v8 != 2)
      {
        return this;
      }

      v51[0] = v3;
      v52 = 0;
      if ((v3 - 189) >= 0xFFFFFF44)
      {
        v15 = v3 + 95;
      }

      else
      {
        v15 = 575;
      }

      v53 = v15;
      MsmtSlotPtr = BlueFin::GlMeMsmtMgr::GetMsmtSlotPtr(v6, v51, 0, 1);
      v17 = BlueFin::GlMeSlots::GlonassFrameMgr(MsmtSlotPtr, &v56);
      this = BlueFin::GlMeGlonassFrameMgr::Update(v17, a2, a3);
    }

    goto LABEL_68;
  }

  if (BlueFin::GlSvId::s_aucSvId2gnss[v3] > 4u)
  {
    if (v8 != 5)
    {
      if (v8 != 6)
      {
        return this;
      }

      v51[0] = v3;
      v52 = 0;
      if ((v3 - 189) >= 0xFFFFFF44)
      {
        v19 = v3 + 386;
      }

      else
      {
        v19 = 575;
      }

      v53 = v19;
      MsmtSlotPtr = BlueFin::GlMeMsmtMgr::GetMsmtSlotPtr(v6, v51, 0, 1);
      v20 = BlueFin::GlMeSlots::NavICDecoder(MsmtSlotPtr, &v56);
      this = BlueFin::GlMeNavICDecoder::SetDSPDataBits(v20, *(v6 + 968), a2, a3);
      goto LABEL_68;
    }

    v51[0] = v3;
    v52 = 0;
    if ((v3 - 189) >= 0xFFFFFF44)
    {
      v21 = v3 + 314;
    }

    else
    {
      v21 = 575;
    }

    v53 = v21;
    v22 = BlueFin::GlMeMsmtMgr::GetMsmtSlotPtr(v6, v51, 0, 1);
    MsmtSlotPtr = v22;
    if (*(a2 + 13))
    {
      v33 = BlueFin::GlMeSlots::GalileoPilotSecCodeDecoder(v22, &v56);
      BlueFin::GlMeGalileoPilotSecCodeDecoder::SetDSPDataBits(v33, a2, a3);
    }

    else
    {
      v23 = BlueFin::GlMeSlots::GalileoINavDecoder(v22, &v56);
      BlueFin::GlMeGalileoINavDecoder::SetDSPDataBits(v23, *(v6 + 968), a2, a3);
    }

    this = BlueFin::GlMeSlots::GalileoINavDecoder(MsmtSlotPtr, &v56);
    if (*(this + 376))
    {
      v34 = (this + 392);
    }

    else
    {
      if (*(this + 752) != 1)
      {
        goto LABEL_68;
      }

      v34 = (this + 768);
    }

    v35 = *v34;
    this = BlueFin::GlMeSlots::GalileoPilotSecCodeDecoder(MsmtSlotPtr, &v56);
    *(this + 8) = 1;
    *(this + 4) = v35 % 0x64;
LABEL_68:
    v18.i32[0] = *(MsmtSlotPtr + 40);
    v39 = *v18.i32;
    if (v39)
    {
      BlueFin::GlMeDSPDataBits::CheckLowTransitionCount(a2, *v18.i32, v18);
      return BlueFin::GlMeDSPDataBits::CheckLowTransitionCount(a3, v39, v40);
    }

    return this;
  }

  if (v8 == 3)
  {
LABEL_37:
    v51[0] = v3;
    v52 = 0;
    v53 = 575;
    if ((v3 - 189) >= 0xFFFFFF44)
    {
      if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v8] == 255)
      {
        v52 = -1;
      }

      else
      {
        v53 = BlueFin::GlSignalId::s_ausGnss2signalId[v8] + v3 - BlueFin::GlSvId::s_aucGnss2minSvId[v8];
      }
    }

    v36 = BlueFin::GlMeMsmtMgr::GetMsmtSlotPtr(v6, v51, 0, 1);
    if (!v36)
    {
      v45 = "pMeSlot != NULL_PTR";
      DeviceFaultNotify("glme_msmtmgr.cpp", 1304, "SetDSPDataBits", "pMeSlot != NULL_PTR");
      v46 = "glme_msmtmgr.cpp";
      v47 = 1304;
      goto LABEL_77;
    }

    MsmtSlotPtr = v36;
    v37 = BlueFin::GlMeSlots::GpsFrameMgr(v36, &v56);
    if (v3 != v37[408])
    {
      v45 = "otSvId == otFrameMgr.GetSvId()";
      DeviceFaultNotify("glme_msmtmgr.cpp", 1307, "SetDSPDataBits", "otSvId == otFrameMgr.GetSvId()");
      v46 = "glme_msmtmgr.cpp";
      v47 = 1307;
      goto LABEL_77;
    }

    v38 = v37;
    BlueFin::GlMeFrameMgr::Update(v37, a2);
    this = BlueFin::GlMeFrameMgr::Update(v38, a3);
    goto LABEL_68;
  }

  if (v8 == 4)
  {
    v51[0] = v3;
    v52 = 0;
    if ((v3 - 189) >= 0xFFFFFF44)
    {
      v9 = v3 + 125;
    }

    else
    {
      v9 = 575;
    }

    v53 = v9;
    v10 = BlueFin::GlMeMsmtMgr::GetMsmtSlotPtr(v6, v51, 0, 1);
    if (!v10 || !*(v6 + 176))
    {
      v45 = "pMeSlot && m_posEngInterface";
      DeviceFaultNotify("glme_msmtmgr.cpp", 1389, "SetDSPDataBits", "pMeSlot && m_posEngInterface");
      v46 = "glme_msmtmgr.cpp";
      v47 = 1389;
      goto LABEL_77;
    }

    v11 = BlueFin::GlMeSlots::BeidouBitDecoder(v10, &v56);
    this = BlueFin::GlMeBeidouDecodeMgr::SetDSPDataBits(v11, *(v6 + 176), *(v6 + 968), a2, a3);
    v12 = *(a3 + 8);
    if (*(a3 + 8))
    {
      v52 = 0;
      v55 = 0;
      v54 = 0;
      v13 = *(a3 + 9);
      v51[0] = v13;
      v53 = v12;
      v48[0] = v13;
      v49 = 0;
      v50 = 575;
      if ((v13 - 189) >= 0xFFFFFF44)
      {
        v14 = BlueFin::GlSvId::s_aucSvId2gnss[v13];
        if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v14] == 255)
        {
          v49 = -1;
        }

        else
        {
          v50 = BlueFin::GlSignalId::s_ausGnss2signalId[v14] + v13 - BlueFin::GlSvId::s_aucGnss2minSvId[v14];
        }
      }

      v41 = *(a3 + 6);
      EpochPerBit = BlueFin::GlSignalId::GetEpochPerBit(v48);
      if (v50 >= 0x23Fu)
      {
        v45 = "IsValid()";
        DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
        v46 = "glsignalid.h";
        v47 = 679;
      }

      else
      {
        v43 = BlueFin::GlSvId::s_aucSvId2gnss[v48[0]];
        v44 = &BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[-v49];
        if (v44[8 * v49 + v43])
        {
          v52 = v41 - EpochPerBit * v12 * v44[8 * v49 + v43];
          v54 = *(a3 + 44);
          v55 = *(a3 + 172);
          return (*(**(v6 + 176) + 72))(*(v6 + 176), v51);
        }

        v45 = "ucMsPerEpoch != 0";
        DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
        v46 = "glsignalid.h";
        v47 = 686;
      }

LABEL_77:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v46, v47, v45);
    }
  }

  return this;
}

uint64_t *BlueFin::GlMeFrameMgr::CopyBits(uint64_t *this, BlueFin::GlBitBuffer *a2, BlueFin::GlBitBuffer *a3, BlueFin::GlBitBuffer *a4, unsigned int *a5, unsigned int *a6)
{
  v22 = 0;
  v19[0] = a4;
  v19[1] = 0;
  v20 = 0;
  v23 = 0;
  v21 = 0x40000000400;
  v24 = 0;
  v13[0] = a5;
  v13[1] = 0;
  v14 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0x40000000400;
  v18 = 0;
  if (a6)
  {
    v6 = a6;
    v9 = this;
    do
    {
      if ((v6 & 0xFFE0) != 0)
      {
        v10 = 32;
      }

      else
      {
        v10 = v6;
      }

      v6 -= v10;
      BlueFin::GlBitBuffer::PutU(v9, 0xFFFFFFFF, v10);
      v11 = BlueFin::GlBitBuffer::GetU(v13, v10);
      BlueFin::GlBitBuffer::PutU(a2, ~v11, v10);
      v12 = BlueFin::GlBitBuffer::GetU(v19, v10);
      this = BlueFin::GlBitBuffer::PutU(a3, v12, v10);
    }

    while (v6);
  }

  return this;
}

uint64_t BlueFin::GlMeDSPDataBits::CheckLowTransitionCount(uint64_t this, uint64_t a2, int8x8_t a3)
{
  v3 = *(this + 9);
  if (v3 <= 0x33)
  {
    if (v3 > 0x20)
    {
      return this;
    }

    v4 = 100;
  }

  else if (v3 >= 0x42)
  {
    v4 = 100;
  }

  else
  {
    v4 = 200;
  }

  v5 = *(this + 16);
  if (v5 >= v4 >> 1)
  {
    if (v5 < 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0;
      v7 = (this + 44);
      v8 = *(this + 44) >> 31;
      v9 = 32 - v5;
      v10 = *(this + 16);
      do
      {
        v12 = *v7++;
        v11 = v12;
        v13 = 32 - v10;
        if (v10 > 0x20u)
        {
          v13 = 0;
        }

        v14 = v11 << v13;
        if ((v14 & (1 << v9)) != 0)
        {
          v15 = v14 | ((1 << v9) - 1);
        }

        else
        {
          v15 = v14 & -(1 << v9);
        }

        if (v10 > 0x1F)
        {
          v15 = v14;
        }

        a3.i32[0] = v15 ^ (v15 >> 31) ^ ((v15 ^ (v15 >> 31)) >> 1);
        a3 = vcnt_s8(a3);
        a3.i16[0] = vaddlv_u8(a3);
        v6 += (v8 ^ (v14 >> 31)) + a3.i32[0];
        v8 = v14 & 1;
        v9 += 32;
        v16 = v10 >= 0x20;
        v10 -= 32;
      }

      while (v10 != 0 && v16);
    }

    v17 = v6 + 2;
    if (a2 >= 32)
    {
      v17 = v6;
    }

    if (v17 >= 6)
    {
      if (v6 >= (v5 >> 4))
      {
        return this;
      }

      LOBYTE(v18) = 15;
    }

    else
    {
      v18 = 0xE0E0D0D0C0CuLL >> (8 * v17);
    }

    if ((*(this + 12) & 2) != 0)
    {
      v19 = 70;
    }

    else
    {
      v19 = 80;
    }

    v20 = *(this + 44);
    v21 = *(this + 48);
    if ((v3 - 52) > 0xD)
    {
      v22 = *(this + 44);
      return GlCustomLog(v18, "LowTransitionCount sv%02d C/No:%hd %cLL.%c %s %d/%d/%d 0x%08X:%08X\n", v3, a2);
    }

    else
    {
      v23 = *(this + 52);
      return GlCustomLog(v18, "LowTransitionCount sv%02d C/No:%hd %cLL.%c %s %d/%d/%d 0x%08X:%08X:%08X\n", v3, a2, v19);
    }
  }

  return this;
}

uint64_t BlueFin::GlMeGlonassFrameMgr::ParseBits(BlueFin::GlMeGlonassFrameMgr *this, BlueFin::GlMeDSPDataBits *a2, unsigned int *a3, unsigned int *a4, BOOL *a5, int a6)
{
  v67 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  memset(v62, 0, 13);
  v61 = 0;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  memset(v57, 0, 13);
  v56 = 0;
  SearchStateMemory = BlueFin::GlMeGlonassFrameMgr::GetSearchStateMemory(this);
  v52 = a5;
  *a5 = 0;
  v63[0] = a2 + 44;
  v63[1] = 0;
  v64 = 0;
  v68 = 0;
  v66 = 0;
  v65 = 0x40000000400;
  v69 = 0;
  BlueFin::GlBitBuffer::Limit(v63, *(a2 + 8));
  if (a6)
  {
    v11 = SearchStateMemory + 188;
    v58 = SearchStateMemory + 188;
    v59 = 0;
    v60 = 0;
    LODWORD(v62[1]) = 0;
    LODWORD(v62[0]) = 0;
    v61 = 0x8000000080;
    BYTE4(v62[1]) = 0;
    BlueFin::GlBitBuffer::Limit(&v58, 0x64u);
    v12 = SearchStateMemory + 204;
    v53 = SearchStateMemory + 204;
    v54 = 0;
    v55 = 0;
    LODWORD(v57[1]) = 0;
    LODWORD(v57[0]) = 0;
    v56 = 0x8000000080;
    BYTE4(v57[1]) = 0;
    BlueFin::GlBitBuffer::Limit(&v53, 0x64u);
    *SearchStateMemory = 0;
    v13 = *(a2 + 5);
    if (v13 - 20 * *(a2 + 8) != *(SearchStateMemory + 4))
    {
      *v12 = 0;
      *(SearchStateMemory + 212) = 0;
      v13 = *(a2 + 5);
    }

    *(SearchStateMemory + 4) = v13;
    v14 = 252;
  }

  else
  {
    v11 = SearchStateMemory + 220;
    v58 = SearchStateMemory + 220;
    v59 = 0;
    v60 = 0;
    LODWORD(v62[1]) = 0;
    LODWORD(v62[0]) = 0;
    v61 = 0x8000000080;
    BYTE4(v62[1]) = 0;
    BlueFin::GlBitBuffer::Limit(&v58, 0x64u);
    v12 = SearchStateMemory + 236;
    v53 = SearchStateMemory + 236;
    v54 = 0;
    v55 = 0;
    LODWORD(v57[1]) = 0;
    LODWORD(v57[0]) = 0;
    v56 = 0x8000000080;
    BYTE4(v57[1]) = 0;
    BlueFin::GlBitBuffer::Limit(&v53, 0x64u);
    *(SearchStateMemory + 2) = 0;
    v13 = *(a2 + 5);
    if (v13 - 20 * *(a2 + 8) != *(SearchStateMemory + 8))
    {
      *v12 = 0;
      *(SearchStateMemory + 244) = 0;
      v13 = *(a2 + 5);
    }

    *(SearchStateMemory + 8) = v13;
    v14 = 253;
  }

  v15 = *(SearchStateMemory + 148);
  v49 = a3;
  if (v13 >= v15)
  {
    v17 = (((3277 * ((v13 - v15) % 0x7D0)) >> 16) + 100);
    v16 = *(a2 + 8);
  }

  else
  {
    v16 = *(a2 + 8);
    v17 = (200 - ((3277 * ((v15 - v13) % 0x7D0)) >> 16));
  }

  LOBYTE(v18) = *(SearchStateMemory + v14);
  v19 = (v17 - v16) % 0x64u;
  BlueFin::GlBitBuffer::Position(&v58, v19);
  result = BlueFin::GlBitBuffer::Position(&v53, v19);
  v21 = HIDWORD(v65) - v66;
  if (HIDWORD(v65) - v66 >= 1)
  {
    v22 = LODWORD(v62[0]) < 0x55;
    if (a6)
    {
      v23 = (SearchStateMemory + 260);
    }

    else
    {
      v23 = (SearchStateMemory + 264);
    }

    if (a6)
    {
      v24 = (SearchStateMemory + 268);
    }

    else
    {
      v24 = (SearchStateMemory + 272);
    }

    v25.i64[0] = 0x100000001;
    v25.i64[1] = 0x100000001;
    v26.i64[0] = 0x400000004;
    v26.i64[1] = 0x400000004;
    do
    {
      if (HIDWORD(v61) == LODWORD(v62[0]))
      {
        if ((~*(v12 + 8) & 0x7FF) == 0 && ((*(v12 + 12) >> 28 == 15) & v18) == 1)
        {
          HIDWORD(v27) = *(v11 + 8);
          LODWORD(v27) = *(v11 + 12);
          v28 = (v27 >> 28) & 0x7FFF;
          if ((a6 & 1) == 0)
          {
            if (v28 == 0x7FFF)
            {
              v29 = 2;
LABEL_44:
              *this = v29;
            }

            else if (!v28)
            {
              v29 = 1;
              goto LABEL_44;
            }
          }

          v35 = vdupq_n_s32(v28 ^ (2 * v28));
          v36 = 0uLL;
          v37 = -4;
          v38 = xmmword_298A3A490;
          do
          {
            v39 = v36;
            v36 = vaddq_s32(vandq_s8(vshlq_u32(v35, vnegq_s32(v38)), v25), v36);
            v38 = vaddq_s32(v38, v26);
            v37 += 4;
          }

          while (v37 != 12);
          v40.i64[0] = 0xE0000000ELL;
          v40.i64[1] = 0xE0000000ELL;
          v41 = *v23 + vaddvq_s32(vbslq_s8(vcgtq_u32(v40, vorrq_s8(vdupq_n_s32(0xCu), xmmword_298A397C0)), v36, v39));
          *v23 = v41;
          v42 = *v24;
          v43 = *v24 + 1;
          *v24 = v43;
          if (v42 >= 4)
          {
            if (v41 / v43 < 5)
            {
              v44 = (SearchStateMemory + 268);
              v45 = (SearchStateMemory + 260);
              if ((a6 & 1) == 0)
              {
                goto LABEL_59;
              }
            }

            else
            {
              if (a6)
              {
                *(SearchStateMemory + 254) = 1;
                v44 = (SearchStateMemory + 268);
                v45 = (SearchStateMemory + 260);
                goto LABEL_60;
              }

              *(SearchStateMemory + 255) = 1;
LABEL_59:
              v44 = (SearchStateMemory + 272);
              v45 = (SearchStateMemory + 264);
            }

LABEL_60:
            *v44 = 0;
            *v45 = 0;
          }
        }

        LODWORD(v62[0]) = 0;
        BYTE4(v62[1]) = 0;
        LODWORD(v57[0]) = 0;
        BYTE4(v57[1]) = 0;
        v22 = 1;
        LOBYTE(v18) = 1;
        *v12 = 0;
        *(v12 + 8) = 0;
        goto LABEL_62;
      }

      if (v21 >= HIDWORD(v61) - LODWORD(v62[0]))
      {
        v21 = HIDWORD(v61) - LODWORD(v62[0]);
      }

      if (v21 >= 32)
      {
        v30 = 32;
      }

      else
      {
        v30 = v21;
      }

      v31 = BlueFin::GlBitBuffer::GetU(v63, v30);
      BlueFin::GlBitBuffer::PutU(&v58, v31, v30);
      result = BlueFin::GlBitBuffer::PutU(&v53, 0xFFFFFFFF, v30);
      v32 = *(v12 + 8);
      if ((v32 & 0x7FF) != 0 || *(v12 + 12) >> 28)
      {
        v18 &= *(a2 + 12) >> 7;
      }

      v33 = v18 & 1;
      v25.i64[0] = 0x100000001;
      v25.i64[1] = 0x100000001;
      v26.i64[0] = 0x400000004;
      v26.i64[1] = 0x400000004;
      if (a6)
      {
        *(SearchStateMemory + 252) = v33;
        if (!v22)
        {
          goto LABEL_57;
        }
      }

      else
      {
        *(SearchStateMemory + 253) = v33;
        if (!v22)
        {
          goto LABEL_57;
        }
      }

      v34 = v62[0];
      if (LODWORD(v62[0]) < 0x55)
      {
        v22 = 1;
      }

      else
      {
        if (*v12 == -1 && *(v12 + 4) == -1)
        {
          *v52 = v32 > 0xFFFFF7FF;
          if (v32 >= 0xFFFFF800)
          {
            for (i = 0; i != 3; ++i)
            {
              v49[i] = *(v11 + i * 4);
            }

            v22 = 0;
            v47 = v49[1];
            v48 = v49[2];
            *v49 ^= __PAIR64__(*v49, v47) >> 31;
            v49[1] = (__PAIR64__(v47, v48) >> 31) ^ v47;
            v49[2] = v48 ^ (2 * v48);
            *a4 = 20 * (HIDWORD(v65) + v34 - v66);
            goto LABEL_62;
          }

LABEL_57:
          v22 = 0;
          goto LABEL_62;
        }

        v22 = 0;
        *v52 = 0;
      }

LABEL_62:
      v21 = HIDWORD(v65) - v66;
    }

    while (HIDWORD(v65) - v66 > 0);
  }

  return result;
}

unsigned __int8 *BlueFin::GlPeMsmtMgr::GetMeMeas(BlueFin::GlSignalIdArray **this, const BlueFin::GlSignalId *a2, int a3, unsigned int a4)
{
  result = BlueFin::GlSignalIdArray::Get(this[2349], a2);
  if (result && (((*(this[1] + (*(a2 + 4) >> 5)) >> (*(a2 + 4) & 0x1F)) | a4) & 1) == 0)
  {
    result = 0;
  }

  if (!result && a3)
  {
    result = BlueFin::GlPeMsmtMgr::GetPropagatedMeMeas(this, a2);
  }

  if (result && (*result != *a2 || *(result + 1) != *(a2 + 1)))
  {
    DeviceFaultNotify("glpe_msmtmgr.cpp", 745, "GetMeMeas", "potMeMeas->m_otSignalId == rotSignalId");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_msmtmgr.cpp", 745, "potMeMeas->m_otSignalId == rotSignalId");
  }

  return result;
}

unint64_t BlueFin::stPeSigMeasKF::IsPRValid(BlueFin::stPeSigMeasKF *this)
{
  if ((*(this + 96) & 2) == 0)
  {
    return 0;
  }

  v2 = *(this + 15);
  if (v2)
  {
    return BlueFin::stSkfTestParam::UseSigId(*(this + 15), (this + 40), (v2 + 112), (v2 + 376));
  }

  else
  {
    return 1;
  }
}

unint64_t BlueFin::stPeSigMeasKF::IsRRValid(BlueFin::stPeSigMeasKF *this)
{
  if ((*(this + 96) & 0x10) == 0)
  {
    return 0;
  }

  v2 = *(this + 15);
  if (v2)
  {
    return BlueFin::stSkfTestParam::UseSigId(*(this + 15), (this + 40), (v2 + 200), (v2 + 464));
  }

  else
  {
    return 1;
  }
}

unint64_t BlueFin::stSkfTestParam::UseSigId(BlueFin::stSkfTestParam *this, const BlueFin::GlSignalId *a2, const BlueFin::GlSignalIdSet *a3, const BlueFin::GlSignalIdSet *a4)
{
  if (!**a3)
  {
    v9 = *(a3 + 8);
    if (v9 < 2)
    {
      goto LABEL_8;
    }

    v10 = v9 - 1;
    v11 = (*a3 + 4);
    while (!*v11++)
    {
      if (!--v10)
      {
        goto LABEL_8;
      }
    }
  }

  if (BlueFin::stSkfTestParam::InSatCommandedTimeRange(this))
  {
    return (*(*a3 + 4 * (*(a2 + 4) >> 5)) >> (*(a2 + 4) & 0x1F)) & 1;
  }

LABEL_8:
  if (!**a4)
  {
    v13 = *(a4 + 8);
    if (v13 < 2)
    {
      return 1;
    }

    v14 = v13 - 1;
    v15 = (*a4 + 4);
    while (!*v15++)
    {
      if (!--v14)
      {
        return 1;
      }
    }
  }

  if (BlueFin::stSkfTestParam::InSatCommandedTimeRange(this))
  {
    return ((*(*a4 + 4 * (*(a2 + 4) >> 5)) >> (*(a2 + 4) & 0x1F)) & 1) == 0;
  }

  return 1;
}

uint64_t BlueFin::GlPeMsmtMgr::insertMePeMeas(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a2 + 8);
  v7 = BlueFin::GlBigArray::Has((*(a1 + 18792) + 1152), v6);
  v8 = *(a1 + 18792);
  if (v7)
  {
    v9 = BlueFin::GlSignalIdArray::Get(v8, a2);
    if (v9 != a2)
    {
      *v9 = *a2;
      *(v9 + 4) = *(a2 + 4);
      *(v9 + 8) = *(a2 + 8);
    }

    *(v9 + 12) = *(a2 + 12);
    v10 = *(a2 + 28);
    v11 = *(a2 + 44);
    v12 = *(a2 + 60);
    *(v9 + 76) = *(a2 + 76);
    *(v9 + 60) = v12;
    *(v9 + 44) = v11;
    *(v9 + 28) = v10;
    v13 = *(a2 + 92);
    v14 = *(a2 + 108);
    v15 = *(a2 + 124);
    *(v9 + 140) = *(a2 + 140);
    *(v9 + 124) = v15;
    *(v9 + 108) = v14;
    *(v9 + 92) = v13;
    v16 = (a1 + 96);
    goto LABEL_18;
  }

  if (BlueFin::GlBigArray::Add((v8 + 1152), v6))
  {
    v17 = 0;
  }

  else
  {
    v17 = a3 == 0;
  }

  if (!v17)
  {
    v18 = *(a1 + 18792);
    v39 = v18 + 1152;
    v40 = *(v18 + 1186) + 1;
    if (*(v18 + 1184) <= v40)
    {
      goto LABEL_21;
    }

    v19 = 0;
    v20 = 575;
    v21 = -7200002;
    do
    {
      BlueFin::GlSignalIdArrayIterator::Next(&v39, v37);
      if (((*(*(a1 + 8) + 4 * (v38 >> 5)) >> (v38 & 0x1F)) & 1) == 0)
      {
        v22 = BlueFin::GlSignalIdArray::Get(*(a1 + 18792), v37);
        if (*(v22 + 228) < v21)
        {
          v19 = v37[0];
          v20 = v38;
          v21 = *(v22 + 228);
        }
      }
    }

    while (v40 < *(v39 + 32));
    if ((v19 - 1) >= 0xBC)
    {
LABEL_21:
      v35 = "otSignalIdOldest.GetSvId().isValid()";
      DeviceFaultNotify("glpe_msmtmgr.cpp", 943, "insertMePeMeas", "otSignalIdOldest.GetSvId().isValid()");
      v36 = 943;
    }

    else
    {
      BlueFin::GlBigArray::Remove(*(a1 + 18792) + 1152, v20);
      v16 = (a1 + 96);
      BlueFin::GlSetBase::Remove(a1 + 96, v20);
      v23 = BlueFin::GlBigArray::Add((*(a1 + 18792) + 1152), *(a2 + 8));
      if (v23)
      {
        v24 = *(a1 + 56224);
        *v23 = *a2;
        v25 = *(a2 + 4);
        *(v23 + 8) = *(a2 + 8);
        *(v23 + 4) = v25;
        *(v23 + 12) = *(a2 + 12);
        v26 = *(a2 + 16);
        v27 = *(a2 + 32);
        v28 = *(a2 + 64);
        *(v23 + 48) = *(a2 + 48);
        *(v23 + 64) = v28;
        *(v23 + 16) = v26;
        *(v23 + 32) = v27;
        v29 = *(a2 + 80);
        v30 = *(a2 + 96);
        v31 = *(a2 + 128);
        *(v23 + 112) = *(a2 + 112);
        *(v23 + 128) = v31;
        *(v23 + 80) = v29;
        *(v23 + 96) = v30;
        *(v23 + 184) = *a2;
        v32 = *(a2 + 4);
        *(v23 + 192) = *(a2 + 8);
        *(v23 + 188) = v32;
        v33 = *(a2 + 48);
        *(v23 + 240) = 0;
        *(v23 + 244) = v33;
        *(v23 + 264) = v24;
        *(v23 + 176) = 0;
        *(v23 + 144) = 0u;
        *(v23 + 160) = 0u;
        *(v23 + 228) = xmmword_298A419E0;
        *(v23 + 257) = 1;
        *(v23 + 196) = xmmword_298A419F0;
        *(v23 + 256) = 0;
        *(v23 + 248) = 0;
        *(v23 + 212) = 0x33D6BF9500000000;
        *(v23 + 272) = 0;
        *(v23 + 220) = 0;
        *(v23 + 224) = 0;
LABEL_18:
        result = 1;
        *(*v16 + 4 * (*(a2 + 8) >> 5)) |= 1 << *(a2 + 8);
        return result;
      }

      v35 = "potMePeMeas != nullptr";
      DeviceFaultNotify("glpe_msmtmgr.cpp", 950, "insertMePeMeas", "potMePeMeas != nullptr");
      v36 = 950;
    }

    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_msmtmgr.cpp", v36, v35);
  }

  return 0;
}

BOOL BlueFin::GlMeDspMeasListener::IsTowUnverified(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4[0] = *a2;
  v5 = *(a2 + 4);
  v6 = *(a2 + 8);
  return BlueFin::GlMeMeasAidFilter::IsTowUnverified(v2, v4);
}

unint64_t BlueFin::stPeSigMeasKF::IsRRValidForNav(BlueFin::stPeSigMeasKF *this)
{
  if ((*(this + 96) & 0x20) == 0)
  {
    return 0;
  }

  v2 = *(this + 15);
  if (v2)
  {
    return BlueFin::stSkfTestParam::UseSigId(*(this + 15), (this + 40), (v2 + 200), (v2 + 464));
  }

  else
  {
    return 1;
  }
}

uint64_t BlueFin::GlMeFrameMgr::Synced(uint64_t this, BlueFin::GlMeDSPDataBits *a2)
{
  *&v115[132] = *MEMORY[0x29EDCA608];
  if (*this != 1)
  {
    v65 = "SYNCED == m_utStateMem.ucState";
    DeviceFaultNotify("glme_framemgr.h", 532, "GetSynced", "SYNCED == m_utStateMem.ucState");
    v66 = "glme_framemgr.h";
    v67 = 532;
    goto LABEL_83;
  }

  v3 = this;
  if ((*(this + 804) & 1) == 0 && *(this + 68) > *(this + 72))
  {
    v65 = "SvId=%d expected %d <= %d\n";
    DeviceFaultNotify("glme_framemgr.cpp", 820, "Synced", "SvId=%d expected %d <= %d\n");
    v66 = "glme_framemgr.cpp";
    v67 = 820;
    goto LABEL_83;
  }

  if ((*(a2 + 12) & 4) != 0)
  {
    if (*(a2 + 8) || (v4 = *(a2 + 5)) != 0)
    {
      v65 = "(0 == otDataBits.m_usNumBits) && (0UL == otDataBits.m_ulEpochCnt)";
      DeviceFaultNotify("glme_framemgr.cpp", 824, "Synced", "(0 == otDataBits.m_usNumBits) && (0UL == otDataBits.m_ulEpochCnt)");
      v66 = "glme_framemgr.cpp";
      v67 = 824;
      goto LABEL_83;
    }
  }

  else
  {
    v4 = *(a2 + 5);
  }

  v6 = *(this + 68);
  v5 = *(this + 72);
  if (v5 != v4 && v6 >= v5)
  {
LABEL_77:
    *(v3 + 72) = v4;
    *(v3 + 4) = *(a2 + 16);
    *(v3 + 40) = *(a2 + 3);
    v52 = *(a2 + 108);
    v53 = *(a2 + 156);
    v54 = *(a2 + 140);
    *(v3 + 164) = *(a2 + 124);
    *(v3 + 180) = v54;
    *(v3 + 196) = v53;
    *(v3 + 148) = v52;
    v55 = *(a2 + 44);
    v56 = *(a2 + 60);
    v57 = *(a2 + 76);
    *(v3 + 132) = *(a2 + 92);
    *(v3 + 116) = v57;
    *(v3 + 100) = v56;
    *(v3 + 84) = v55;
    v58 = *(a2 + 252);
    v59 = *(a2 + 284);
    v60 = *(a2 + 236);
    *(v3 + 308) = *(a2 + 268);
    *(v3 + 324) = v59;
    *(v3 + 276) = v60;
    *(v3 + 292) = v58;
    v61 = *(a2 + 172);
    v62 = *(a2 + 188);
    v63 = *(a2 + 204);
    *(v3 + 260) = *(a2 + 220);
    *(v3 + 244) = v63;
    *(v3 + 228) = v62;
    *(v3 + 212) = v61;
    if ((*(a2 + 12) & 4) != 0)
    {
      BlueFin::GlMeFrameMgr::AddBestWord(v3, *(v3 + 52), 0, 0, 0, 0, 0, 0);
      this = BlueFin::GlMeFrameMgr::SetState(v3, 0);
    }

    goto LABEL_79;
  }

  if (v5 - 20 * *(this + 4) != v6)
  {
    v7 = (*(this + 40) & 2) == 0;
    v8 = 16;
    if ((*(this + 40) & 2) == 0)
    {
      v8 = 28;
    }

    v9 = 20;
    if ((*(this + 40) & 2) == 0)
    {
      v9 = 32;
    }

    *(this + v9) = 0;
    v10 = 36;
    if (!v7)
    {
      v10 = 24;
    }

    *(this + v10) = 0;
    *(this + v8) = 0;
  }

  v107 = 0;
  v100 = 0;
  v93 = 0;
  v86 = 0;
  v79 = 0;
  v72 = 0;
  bzero(v110, 0x318uLL);
  v103[0] = v110;
  v103[1] = 0;
  v104 = 0;
  v108 = 0;
  v106 = 0;
  v11 = vdup_n_s32(0x420u);
  v105 = v11;
  v109 = 0;
  BlueFin::GlBitBuffer::PutU(v103, *(v3 + 20), 0x20u);
  v96[0] = &v111;
  v96[1] = 0;
  v97 = 0;
  v101 = 0;
  v99 = 0;
  v98 = v11;
  v102 = 0;
  BlueFin::GlBitBuffer::PutU(v96, *(v3 + 24), 0x20u);
  v75[0] = &v112;
  v75[1] = 0;
  v76 = 0;
  v80 = 0;
  v78 = 0;
  v77 = v11;
  v81 = 0;
  BlueFin::GlBitBuffer::PutU(v75, *(v3 + 16), 0x20u);
  v89[0] = &v113;
  v89[1] = 0;
  v90 = 0;
  v94 = 0;
  v92 = 0;
  v91 = v11;
  v95 = 0;
  BlueFin::GlBitBuffer::PutU(v89, *(v3 + 32), 0x20u);
  v82[0] = &v114;
  v82[1] = 0;
  v83 = 0;
  v87 = 0;
  v85 = 0;
  v84 = v11;
  v88 = 0;
  BlueFin::GlBitBuffer::PutU(v82, *(v3 + 36), 0x20u);
  v68[0] = v115;
  v68[1] = 0;
  v69 = 0;
  v73 = 0;
  v71 = 0;
  v70 = v11;
  v74 = 0;
  BlueFin::GlBitBuffer::PutU(v68, *(v3 + 28), 0x20u);
  v12 = *(v3 + 4);
  if ((*(v3 + 40) & 2) != 0)
  {
    BlueFin::GlMeFrameMgr::CopyBits(v103, v96, v75, (v3 + 84), (v3 + 212), v12);
    if (*(v3 + 72) != *(a2 + 5))
    {
      goto LABEL_26;
    }

    if ((*(a2 + 12) & 2) == 0)
    {
      v13 = *(a2 + 8);
      v14 = v89;
      v15 = v82;
      v16 = v68;
      goto LABEL_25;
    }

    v65 = "otDataBits.m_otFlags32.Missing(GLME_DSPDATABIT_nPLL_FLL)";
    DeviceFaultNotify("glme_framemgr.cpp", 866, "Synced", "otDataBits.m_otFlags32.Missing(GLME_DSPDATABIT_nPLL_FLL)");
    v66 = "glme_framemgr.cpp";
    v67 = 866;
LABEL_83:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v66, v67, v65);
  }

  BlueFin::GlMeFrameMgr::CopyBits(v89, v82, v68, (v3 + 84), (v3 + 212), v12);
  if (*(v3 + 72) != *(a2 + 5))
  {
    goto LABEL_26;
  }

  if ((*(a2 + 12) & 2) == 0)
  {
    v65 = "otDataBits.m_otFlags32.Has(GLME_DSPDATABIT_nPLL_FLL)";
    DeviceFaultNotify("glme_framemgr.cpp", 875, "Synced", "otDataBits.m_otFlags32.Has(GLME_DSPDATABIT_nPLL_FLL)");
    v66 = "glme_framemgr.cpp";
    v67 = 875;
    goto LABEL_83;
  }

  v13 = *(a2 + 8);
  v14 = v103;
  v15 = v96;
  v16 = v75;
LABEL_25:
  BlueFin::GlMeFrameMgr::CopyBits(v14, v15, v16, (a2 + 44), a2 + 43, v13);
LABEL_26:
  if (v92 <= v106)
  {
    v17 = v106;
  }

  else
  {
    v17 = v92;
  }

  BlueFin::GlBitBuffer::Position(v103, v17);
  v105.i32[1] = v106;
  v106 = 0;
  v109 = 0;
  BlueFin::GlBitBuffer::Position(v96, v17);
  v98.i32[1] = v99;
  v99 = 0;
  v102 = 0;
  BlueFin::GlBitBuffer::Position(v75, v17);
  v77.i32[1] = v78;
  v78 = 0;
  v81 = 0;
  BlueFin::GlBitBuffer::Position(v89, v17);
  v91.i32[1] = v92;
  v92 = 0;
  v95 = 0;
  BlueFin::GlBitBuffer::Position(v82, v17);
  v84.i32[1] = v85;
  v85 = 0;
  v88 = 0;
  BlueFin::GlBitBuffer::Position(v68, v17);
  v70.i32[1] = v71;
  v71 = 0;
  v74 = 0;
  v18 = *(v3 + 72);
  v19 = 20 * v105.u16[2];
  v20 = v19 >= v18;
  v21 = v19 - v18;
  if (!v20)
  {
    v21 = 0;
  }

  v22 = v18 - 20 * v105.u16[2];
  v23 = (*(v3 + 52) + 560) % 0x258u + 600 * ((v22 + v21) / 0x258);
  if (v23 < v22 + v21)
  {
    v23 += 600;
  }

  v24 = (v23 - v22) / 0x14;
  if (v105.u16[2] < v24)
  {
    v24 = v105.u16[2];
  }

  if (v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = 30;
  }

  BlueFin::GlBitBuffer::Position(v103, v25);
  BlueFin::GlBitBuffer::Position(v96, v25);
  BlueFin::GlBitBuffer::Position(v75, v25);
  BlueFin::GlBitBuffer::Position(v89, v25);
  BlueFin::GlBitBuffer::Position(v82, v25);
  BlueFin::GlBitBuffer::Position(v68, v25);
  v26 = v105.i32[1] - v106;
  if (v105.i32[1] - v106 <= 0x1F)
  {
    v27 = *(v3 + 72) - 20 * v26 + 40;
    if (*(v3 + 52) <= v27)
    {
      this = BlueFin::GlMeFrameMgr::AddBestWord(v3, v27, 0, 0, 0, 0, 0, 0);
      if (!this)
      {
        goto LABEL_79;
      }

      LOBYTE(v26) = v105.i8[4] - v106;
      if (v105.i32[1] - v106 >= 0x20)
      {
        goto LABEL_42;
      }
    }

LABEL_76:
    *(v3 + 20) = BlueFin::GlBitBuffer::GetU(v103, v26);
    *(v3 + 24) = BlueFin::GlBitBuffer::GetU(v96, (v98.i8[4] - v99));
    *(v3 + 16) = BlueFin::GlBitBuffer::GetU(v75, (v77.i8[4] - v78));
    *(v3 + 32) = BlueFin::GlBitBuffer::GetU(v89, (v91.i8[4] - v92));
    *(v3 + 36) = BlueFin::GlBitBuffer::GetU(v82, (v84.i8[4] - v85));
    this = BlueFin::GlBitBuffer::GetU(v68, (v70.i8[4] - v71));
    *(v3 + 28) = this;
    *(v3 + 68) = *(v3 + 72);
    v4 = *(a2 + 5);
    goto LABEL_77;
  }

LABEL_42:
  while (1)
  {
    v28 = BlueFin::GlBitBuffer::GetU(v103, 0x20u);
    v29 = BlueFin::GlBitBuffer::GetU(v89, 0x20u);
    v30 = BlueFin::GlBitBuffer::GetU(v96, 0x20u);
    v31 = BlueFin::GlBitBuffer::GetU(v82, 0x20u);
    v32 = BlueFin::GlBitBuffer::GetU(v75, 0x20u);
    v33 = BlueFin::GlBitBuffer::GetU(v68, 0x20u);
    v34 = v33;
    this = BlueFin::GlMeFrameMgr::AddBestWord(v3, *(v3 + 72) - 20 * (v105.i32[1] - v106), v32, v28, v30, v33, v29, v31);
    if (!this)
    {
      break;
    }

    v35 = *(v3 + 3);
    if (v35 <= 2)
    {
      v36 = *(v3 + 392);
      if (*(v36 + 43))
      {
        if (*(v3 + 72) == *(a2 + 5))
        {
          if (v35 == 2)
          {
            if (*(v3 + 408) - 1 <= 0x1F)
            {
              v45 = *(v3 + 344);
              if (BlueFin::GPSFrameMgrUtils::Parity(v45))
              {
                if ((~v45 & 3) != 0)
                {
                  v50 = v45;
                }

                else
                {
                  v50 = ~v45;
                }

                if ((v50 & 0x40000000) != 0)
                {
                  v50 ^= 0x3FFFFFC0u;
                }

                if ((v50 & 3) == 0)
                {
                  v51 = (v50 >> 13) & 0x1FFFF;
                  if (v51 >> 6 <= 0x626 && v51 + 4 - 5 * ((858993460 * (v51 + 4)) >> 32) + 1 == ((v50 >> 8) & 7) && v51 == *(v3 + 48))
                  {
                    v46.i64[0] = *(a2 + 4);
                    BlueFin::GlMeFrameAidMgr::FoundHOW(v36, v46, v105.i32[1] - v106 + 60, v51, v47, v48, v49);
                  }
                }
              }
            }
          }

          else if (v35 == 1)
          {
            v37 = *(v3 + 340);
            if (BlueFin::GPSFrameMgrUtils::Parity(v37))
            {
              v42 = v37 >> 22 == 139 ? v37 : ~v37;
              if (v42 >> 22 == 139)
              {
                if ((v34 & 0xFFC00000) == 0x22C00000)
                {
                  v43 = v34;
                }

                else
                {
                  v43 = ~v34;
                }

                if (v43 >> 22 == 139)
                {
                  if ((v34 & 0xFFC00000) == 0xDD000000)
                  {
                    v44 = 2;
                  }

                  else
                  {
                    v44 = 1;
                  }

                  *(v3 + 800) = v44;
                }

                if (*(v3 + 408) - 1 <= 0x1F)
                {
                  v38.i64[0] = *(a2 + 4);
                  BlueFin::GlMeFrameAidMgr::FoundTLM(v36, v38, v105.i32[1] - v106 + 30, v39, v40, v41);
                }
              }
            }
          }
        }
      }
    }

    BlueFin::GlBitBuffer::Position(v103, v106 - 2);
    BlueFin::GlBitBuffer::Position(v96, v99 - 2);
    BlueFin::GlBitBuffer::Position(v75, v78 - 2);
    BlueFin::GlBitBuffer::Position(v89, v92 - 2);
    BlueFin::GlBitBuffer::Position(v82, v85 - 2);
    BlueFin::GlBitBuffer::Position(v68, v71 - 2);
    LOBYTE(v26) = v105.i8[4] - v106;
    if (v105.i32[1] - v106 <= 0x1F)
    {
      goto LABEL_76;
    }
  }

LABEL_79:
  v64 = *MEMORY[0x29EDCA608];
  return this;
}

unint64_t BlueFin::stPeSigMeasKF::IsPRValidForNav(BlueFin::stPeSigMeasKF *this)
{
  if ((*(this + 96) & 4) == 0)
  {
    return 0;
  }

  v2 = *(this + 15);
  if (v2)
  {
    return BlueFin::stSkfTestParam::UseSigId(*(this + 15), (this + 40), (v2 + 112), (v2 + 376));
  }

  else
  {
    return 1;
  }
}

uint64_t BlueFin::GlPeMsmtMgr::GetPeMeas(BlueFin::GlSignalIdArray **this, const BlueFin::GlSignalId *a2, char a3)
{
  v6 = BlueFin::GlSignalIdArray::Get(this[2349], a2);
  if (!v6 || ((*(this[1] + (*(a2 + 4) >> 5)) >> (*(a2 + 4) & 0x1F)) & 1) == 0 && (a3 & 1) == 0)
  {
    DeviceFaultNotify("glpe_msmtmgr.cpp", 855, "GetPeMeas", "potMePeMeas != nullptr && (m_otValidMeasSignalIds.Has(rotSignalId) || bAllowInvalidMeas)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_msmtmgr.cpp", 855, "potMePeMeas != nullptr && (m_otValidMeasSignalIds.Has(rotSignalId) || bAllowInvalidMeas)");
  }

  return v6 + 144;
}

uint64_t BlueFin::GlMeSrdMeasAidFilterEvents::OnBitParityStats(uint64_t result, int a2, int a3, _BYTE *a4)
{
  v4 = *a4;
  if ((v4 - 189) < 0xFFFFFF44 || (v5 = BlueFin::GlSvId::s_aucSvId2gnss[*a4], BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v5] == 255))
  {
    v6 = 575;
  }

  else
  {
    v6 = (BlueFin::GlSignalId::s_ausGnss2signalId[v5] + v4 - BlueFin::GlSvId::s_aucGnss2minSvId[v5]);
  }

  v7 = *(result + 16 + 2 * v6);
  if (v7 >= 11)
  {
    return BlueFin::GlMeSrdStats::BitParity(*(*(result + 8) + 200), a2, a3, a4, v7);
  }

  return result;
}

uint64_t BlueFin::GlMeSrdStats::BitParity(_DWORD *a1, int a2, int a3, _BYTE *a4, int a5)
{
  result = BlueFin::GlMePlatfStat::ss2hist((a5 - 170));
  v11 = &a1[result];
  v12 = v11[158] + a3;
  v11[158] = v12;
  v13 = v11[173] + a2;
  v11[173] = v13;
  v14 = *a4;
  if (*a4)
  {
    if (v14 > 0x20)
    {
      if (v14 >= 0x34)
      {
        if (v14 > 0x41)
        {
          if (v14 < 0x4C)
          {
            a1[223] += a3;
            a1[224] += a2;
          }

          else if (v14 > 0x8A)
          {
            if (v14 <= 0xAE)
            {
              a1[194] += a3;
              a1[195] += a2;
            }
          }

          else
          {
            a1[192] += a3;
            a1[193] += a2;
          }
        }

        else
        {
          a1[190] += a3;
          a1[191] += a2;
        }
      }
    }

    else
    {
      a1[188] += a3;
      a1[189] += a2;
    }
  }

  if (v12)
  {
    v15 = (1.0 - v13 / v12) * 100.0;
  }

  else
  {
    v15 = 0.0;
  }

  if (a2 != a3)
  {
    v16 = a5 - 24;
    if (a5 >= 24)
    {
      v17 = 12;
    }

    else
    {
      v17 = 79;
    }

    if (v16 >= 6)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0x4C4C4C4D4E4EuLL >> (8 * v16);
    }

    return GlCustomLog(v18, "Ephemeris Decode Parity Fail Rate=%.1f%% (%u out of %u) sv%d ss=%d\n", v15, v12 - v13, v12, v14, a5);
  }

  return result;
}

uint64_t BlueFin::GlMeMsmtHolder::SetGridMeas(uint64_t result, uint64_t a2)
{
  v2 = *(result + 17296);
  if (v2 > 0xD)
  {
    return GlCustomLog(15, "Surplus grids received!");
  }

  v3 = *(result + 2832);
  *(result + 17296) = v2 + 1;
  v4 = v3 + 184 * v2;
  if (v4 != a2)
  {
    *v4 = *a2;
    *(v4 + 4) = *(a2 + 4);
    *(v4 + 8) = *(a2 + 8);
  }

  v5 = *(a2 + 12);
  v6 = *(a2 + 28);
  *(v4 + 44) = *(a2 + 44);
  *(v4 + 28) = v6;
  *(v4 + 12) = v5;
  v7 = *(a2 + 60);
  v8 = *(a2 + 76);
  v9 = *(a2 + 92);
  *(v4 + 108) = *(a2 + 108);
  *(v4 + 92) = v9;
  *(v4 + 76) = v8;
  *(v4 + 60) = v7;
  v10 = *(a2 + 124);
  v11 = *(a2 + 140);
  v12 = *(a2 + 156);
  *(v4 + 168) = *(a2 + 168);
  *(v4 + 156) = v12;
  *(v4 + 140) = v11;
  *(v4 + 124) = v10;
  *(*(result + 17304) + 4 * (*(a2 + 8) >> 5)) |= 1 << *(a2 + 8);
  return result;
}

uint64_t BlueFin::GlMeMeasAidFilter::UpdateFrameManagerSync(uint64_t result, unsigned __int8 *a2, unsigned int a3, double a4)
{
  v8 = *a2;
  if ((v8 - 52) <= 0xD)
  {
    v45 = v7;
    v46 = v6;
    v47 = v4;
    v48 = v5;
    v12 = result;
    v42[0] = v8;
    v43 = 0;
    v13 = BlueFin::GlSvId::s_aucSvId2gnss[v8];
    v44 = 575;
    if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v13] == 255)
    {
      v43 = -1;
    }

    else
    {
      v44 = BlueFin::GlSignalId::s_ausGnss2signalId[v13] + v8 - BlueFin::GlSvId::s_aucGnss2minSvId[v13];
    }

    MsmtSlotPtr = BlueFin::GlMeMsmtMgr::GetMsmtSlotPtr((result + 10624), v42, 0, 1);
    v15 = BlueFin::GlMeSlots::GlonassFrameMgr(MsmtSlotPtr, a2);
    result = BlueFin::GlMeGlonassFrameMgr::GetGlnsStrPhsInSym(v15, a3, &v41);
    if ((result & 1) == 0)
    {
      v23 = &off_2A1F0E398;
      v24 = 0;
      v25 = -1;
      v26 = 575;
      v27 = 0;
      v28 = 0;
      v18.i64[1] = 2139095039;
      v29 = xmmword_298A339D0;
      v30 = 2139095039;
      v31 = 0.0;
      v32 = 2139095039;
      v33 = 0;
      v34 = 0x7FEFFFFFFFFFFFFFLL;
      v35 = -1;
      v36 = -1;
      v38 = 0;
      v39 = 0;
      v37 = 0;
      v40 = 0;
      *v18.i64 = a4 * 1000.0;
      v22 = 0;
      v16.i64[0] = 0;
      result = BlueFin::GlMeWinMgr::GetMeAcqWindow(v12 + 32, v42, &v23, &v22, 0, 0, v18, 0.0, v16, v17);
      if ((v28 & 0x80) != 0)
      {
        v19 = (v31 - a4) * 1000.0;
        if (v19 <= 0.0)
        {
          if (v19 >= 0.0)
          {
            v21 = 0;
            return BlueFin::GlMeMsmtMgr::ReportSyncEpochCnt(v12 + 10624, a2, v21 + a3, v35, v31);
          }

          v20 = -0.5;
        }

        else
        {
          v20 = 0.5;
        }

        v21 = (v19 + v20);
        return BlueFin::GlMeMsmtMgr::ReportSyncEpochCnt(v12 + 10624, a2, v21 + a3, v35, v31);
      }
    }
  }

  return result;
}

uint64_t BlueFin::GlMeGlonassFrameMgr::Update(uint64_t this, const BlueFin::GlMeDSPDataBits *a2, const BlueFin::GlMeDSPDataBits *a3)
{
  v386 = *MEMORY[0x29EDCA608];
  v3 = a2 + 9;
  v4 = *(this + 284);
  if (*(a2 + 9) != v4 || *(a3 + 9) != v4)
  {
    v209 = "(rotFllDataBits.m_otSvId == m_otSvId) && (rotPllDataBits.m_otSvId == m_otSvId)";
    DeviceFaultNotify("glme_glonassframemgr.cpp", 93, "Update", "(rotFllDataBits.m_otSvId == m_otSvId) && (rotPllDataBits.m_otSvId == m_otSvId)");
    v210 = 93;
    goto LABEL_293;
  }

  v7 = this;
  v8 = *(a2 + 3);
  if ((v8 & 0x100) != 0)
  {
    v15 = *(a2 + 5);
LABEL_22:
    this = BlueFin::GlMeGlonassFrameMgr::GetSearchStateMemory(this);
    *(this + 140) = 1;
    *(this + 148) = v15 % 0x7D0;
    goto LABEL_23;
  }

  v10 = *(a3 + 3);
  if ((v10 & 0x100) != 0)
  {
    v15 = *(a3 + 5);
    goto LABEL_22;
  }

  if ((v8 & 0x10) == 0)
  {
    *(a2 + 8) = 0;
  }

  if ((v10 & 0x10) == 0)
  {
    *(a3 + 8) = 0;
  }

  if ((v10 & 0x204) != 0)
  {
    *this = 0;
  }

  v12 = (this + 4);
  v11 = *(this + 4);
  if (v11 == 1)
  {
    goto LABEL_23;
  }

  if (v11)
  {
    v209 = "false";
    DeviceFaultNotify("glme_glonassframemgr.cpp", 290, "Update", "false");
    v210 = 290;
LABEL_293:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_glonassframemgr.cpp", v210, v209);
  }

  SearchStateMemory = BlueFin::GlMeGlonassFrameMgr::GetSearchStateMemory(this);
  if (*(SearchStateMemory + 140))
  {
    goto LABEL_17;
  }

  if ((*(a3 + 12) & 0x40) == 0)
  {
    v246 = v3;
    v256 = BlueFin::GlMeGlonassFrameMgr::GetSearchStateMemory(v7);
    if ((*(a2 + 12) & 4) != 0 || (*(a3 + 12) & 4) != 0 || *(a2 + 5) <= v256[1] || *(a3 + 5) <= v256[2])
    {
      *(v7 + 276) = 0;
      *(v7 + 244) = 0u;
      *(v7 + 260) = 0u;
      *(v7 + 212) = 0u;
      *(v7 + 228) = 0u;
      *(v7 + 180) = 0u;
      *(v7 + 196) = 0u;
      *(v7 + 148) = 0u;
      *(v7 + 164) = 0u;
      *(v7 + 116) = 0u;
      *(v7 + 132) = 0u;
      *(v7 + 84) = 0u;
      *(v7 + 100) = 0u;
      *(v7 + 52) = 0u;
      *(v7 + 68) = 0u;
      *(v7 + 20) = 0u;
      *(v7 + 36) = 0u;
      *v12 = 0u;
    }

    v266 = 0;
    v267 = 0;
    LOBYTE(v268) = 0;
    memset(v269, 0, 21);
    *v348 = 0;
    *v347 = 0;
    v348[8] = 0;
    memset(v350, 0, 13);
    v349 = 0;
    *v381 = 0;
    v382 = 0;
    v383 = 0;
    memset(v385, 0, 13);
    v384 = 0;
    *v376 = 0;
    v377 = 0;
    v378 = 0;
    v380[0] = 0;
    v379 = 0;
    *(v380 + 5) = 0;
    v371 = 0;
    v372 = 0;
    v373 = 0;
    v375[0] = 0;
    v374 = 0;
    *(v375 + 5) = 0;
    v343 = 0;
    *v342 = 0;
    v344 = 0;
    v346[0] = 0;
    v345 = 0;
    *(v346 + 5) = 0;
    v17 = *(a2 + 8);
    v338 = 0;
    *v337 = 0;
    v339 = 0;
    v341[0] = 0;
    v340 = 0;
    *(v341 + 5) = 0;
    v286 = a2 + 44;
    v287 = 0;
    LOBYTE(v288) = 0;
    v291 = 0.0;
    v290 = 0;
    v289 = 0x40000000400;
    v292 = 0;
    BlueFin::GlBitBuffer::Limit(&v286, v17);
    v18 = *(a3 + 8);
    v266 = a3 + 44;
    v267 = 0;
    LOBYTE(v268) = 0;
    v269[0] = 0x40000000400;
    BlueFin::GlBitBuffer::Limit(&v266, v18);
    *v347 = a2 + 172;
    *v348 = 0;
    v348[8] = 0;
    LODWORD(v350[1]) = 0;
    LODWORD(v350[0]) = 0;
    v349 = 0x40000000400;
    BYTE4(v350[1]) = 0;
    BlueFin::GlBitBuffer::Limit(v347, *(a2 + 8));
    *v381 = a3 + 172;
    v382 = 0;
    v383 = 0;
    v385[2] = 0;
    v385[0] = 0;
    v384 = 0x40000000400;
    LOBYTE(v385[3]) = 0;
    BlueFin::GlBitBuffer::Limit(v381, *(a3 + 8));
    v19 = *v256;
    *v376 = v256 + 3;
    v377 = 0;
    v378 = 0;
    LODWORD(v380[1]) = 0;
    LODWORD(v380[0]) = 0;
    v379 = 0x10000000100;
    BYTE4(v380[1]) = 0;
    BlueFin::GlBitBuffer::Limit(v376, v19);
    v20 = *(v256 + 1);
    v249 = (v256 + 2);
    v371 = v256 + 19;
    v372 = 0;
    v373 = 0;
    LODWORD(v375[1]) = 0;
    LODWORD(v375[0]) = 0;
    v374 = 0x10000000100;
    BYTE4(v375[1]) = 0;
    BlueFin::GlBitBuffer::Limit(&v371, v20);
    v21 = *v256;
    *v342 = v256 + 11;
    v343 = 0;
    v344 = 0;
    LODWORD(v346[1]) = 0;
    LODWORD(v346[0]) = 0;
    v345 = 0x10000000100;
    BYTE4(v346[1]) = 0;
    BlueFin::GlBitBuffer::Limit(v342, v21);
    *v337 = v256 + 27;
    v338 = 0;
    v339 = 0;
    LODWORD(v341[1]) = 0;
    LODWORD(v341[0]) = 0;
    v340 = 0x10000000100;
    BYTE4(v341[1]) = 0;
    this = BlueFin::GlBitBuffer::Limit(v337, *(v256 + 1));
    v22 = v256;
    v247 = v256 + 1;
    if (*(a2 + 5) - 10 * *(a2 + 8) == v256[1])
    {
      v23 = *v256;
      if (v23 >= 0x1F)
      {
        v24 = 31;
      }

      else
      {
        v24 = *v256;
      }

      v25 = v24;
      BlueFin::GlBitBuffer::Position(v376, v23 - v24);
      BlueFin::GlBitBuffer::Position(v342, *v256 - v25);
      v260 = BlueFin::GlBitBuffer::GetU(v376, v25);
      this = BlueFin::GlBitBuffer::GetU(v342, v25);
      v258 = this;
      v22 = v256;
      v26 = v25;
    }

    else
    {
      v26 = 0;
      v258 = 0;
      v260 = 0;
    }

    v248 = v22 + 2;
    if (*(a3 + 5) - 10 * *(a3 + 8) == v22[2])
    {
      v54 = v26;
      v55 = *v249;
      if (v55 >= 0x1F)
      {
        v56 = 31;
      }

      else
      {
        v56 = *v249;
      }

      v57 = v56;
      BlueFin::GlBitBuffer::Position(&v371, v55 - v56);
      BlueFin::GlBitBuffer::Position(v337, *v249 - v57);
      v261 = BlueFin::GlBitBuffer::GetU(&v371, v57);
      this = BlueFin::GlBitBuffer::GetU(v337, v57);
      v257 = this;
      v26 = v54;
      v58 = v57;
    }

    else
    {
      v58 = 0;
      v257 = 0;
      v261 = 0;
    }

    if ((HIDWORD(v289) + v26 - v290) >= 0x1F)
    {
      v59 = v58;
      v60 = v26 ^ 0x1F;
      v61 = BlueFin::GlBitBuffer::GetU(&v286, v26 ^ 0x1Fu);
      this = BlueFin::GlBitBuffer::GetU(v347, v60);
      v260 = v61 | (v260 << v60);
      v258 = this | (v258 << v60);
      v26 = 31;
      v58 = v59;
    }

    v259 = v26;
    if ((HIDWORD(v269[0]) + v58 - LODWORD(v269[1])) >= 0x1F)
    {
      v62 = v58 ^ 0x1F;
      v63 = BlueFin::GlBitBuffer::GetU(&v266, v58 ^ 0x1Fu);
      this = BlueFin::GlBitBuffer::GetU(v381, v62);
      v261 = v63 | (v261 << v62);
      v257 = this | (v257 << v62);
      v58 = 31;
    }

    v64 = *(a2 + 5);
    if (v64 >= 0x7D1 && (v65 = v256[1], v65 > 10 * *v256) && (v66 = 10 * (HIDWORD(v289) - v290) + 2000, v67 = v64 >= v66, v68 = v64 - v66, v68 != 0 && v67) && (v69 = v65 - 10 * *v256, v67 = v68 >= v69, v70 = v68 - v69, v70 != 0 && v67))
    {
      v71 = v70 / 0xA;
      if (v71 - 0x10000 < 0xFFFF001F)
      {
        v71 = 31;
      }

      if (v71 <= 0x1F)
      {
        v72 = 31;
      }

      else
      {
        v72 = v71;
      }

      v73 = v72 - 31;
      if (v71 >= 0x1F)
      {
        v71 = 31;
      }

      v262 = v71;
      if (v71 + v73 <= HIDWORD(v379))
      {
        v74 = v58;
        BlueFin::GlBitBuffer::Position(v376, (v72 - 31));
        BlueFin::GlBitBuffer::Position(v342, v73);
        v254 = BlueFin::GlBitBuffer::GetU(v376, v262);
        this = BlueFin::GlBitBuffer::GetU(v342, v262);
        v253 = this;
        v58 = v74;
LABEL_84:
        v75 = *(a3 + 5);
        v76 = HIDWORD(v269[0]);
        v77 = v269[1];
        v263 = v58;
        if (v75 >= 0x7D1 && (v78 = *v248 - 10 * *v249, v79 = v75 - 10 * (HIDWORD(v269[0]) - LODWORD(v269[1])) - 2000, v67 = v79 >= v78, v80 = v79 - v78, v80 != 0 && v67))
        {
          v81 = v80 / 0xA;
          if (v81 - 100001 < 0xFFFE797E)
          {
            v81 = 31;
          }

          if (v81 <= 0x1F)
          {
            v82 = 31;
          }

          else
          {
            v82 = v81;
          }

          v83 = v82 - 31;
          if (v81 >= 0x1F)
          {
            v84 = 31;
          }

          else
          {
            v84 = v81;
          }

          if (v84 + v83 <= HIDWORD(v374))
          {
            v85 = v84;
            BlueFin::GlBitBuffer::Position(&v371, (v82 - 31));
            BlueFin::GlBitBuffer::Position(v337, v83);
            v252 = BlueFin::GlBitBuffer::GetU(&v371, v85);
            this = BlueFin::GlBitBuffer::GetU(v337, v85);
            v251 = this;
            v76 = HIDWORD(v269[0]);
            v77 = v269[1];
            v84 = v85;
            goto LABEL_99;
          }
        }

        else
        {
          v84 = 0;
        }

        v251 = 0;
        v252 = 0;
LABEL_99:
        v86 = HIDWORD(v289);
        v87 = v290;
        v88 = HIDWORD(v289) == v290;
        if (HIDWORD(v289) == v290 && v76 == v77)
        {
          goto LABEL_313;
        }

        v255 = 0;
        v89 = 0;
        v90 = 0;
        while (1)
        {
          v91 = v84;
          v92 = *(a2 + 5) - 10 * (v86 - v87);
          v93 = *(a3 + 5) - 10 * (v76 - v77);
          if (v88 || v92 > v93)
          {
            v259 = 0;
            goto LABEL_115;
          }

          v94 = BlueFin::GlBitBuffer::GetU(&v286, 1u);
          this = BlueFin::GlBitBuffer::GetU(v347, 1u);
          v260 = v94 | (2 * v260);
          v258 = this | (2 * v258);
          v95 = v259;
          if (v259 >= 31)
          {
            v95 = 31;
          }

          v259 = v95 + 1;
          if (HIDWORD(v379) == LODWORD(v380[0]))
          {
            v262 = 0;
            goto LABEL_115;
          }

          if (v262 < 2)
          {
            if (*v256 + *(a2 + 8) != (WORD2(v289) - v290 + 201))
            {
              goto LABEL_115;
            }

            v98 = BlueFin::GlBitBuffer::Position(v376, 0);
            v254 = BlueFin::GlBitBuffer::GetU(v98, 1u);
            BlueFin::GlBitBuffer::Position(v342, 0);
            this = BlueFin::GlBitBuffer::GetU(v342, 1u);
            v253 = this;
            v97 = v262;
          }

          else
          {
            v96 = BlueFin::GlBitBuffer::GetU(v376, 1u);
            this = BlueFin::GlBitBuffer::GetU(v342, 1u);
            v254 = v96 | (2 * v254);
            v253 = this | (2 * v253);
            v97 = v262;
            if (v262 >= 0x1F)
            {
              v97 = 31;
            }
          }

          v262 = v97 + 1;
LABEL_115:
          v99 = HIDWORD(v269[0]) == LODWORD(v269[1]) || v93 > v92;
          if (v99)
          {
            v263 = 0;
LABEL_121:
            v100 = v91;
            goto LABEL_133;
          }

          v101 = BlueFin::GlBitBuffer::GetU(&v266, 1u);
          this = BlueFin::GlBitBuffer::GetU(v381, 1u);
          v261 = v101 | (2 * v261);
          v257 = this | (2 * v257);
          v102 = v263;
          if (v263 >= 31)
          {
            v102 = 31;
          }

          v263 = v102 + 1;
          if (HIDWORD(v374) == LODWORD(v375[0]))
          {
            v100 = 0;
          }

          else if (v91 < 2)
          {
            if (*v249 + *(a3 + 8) != (WORD2(v269[0]) - LOWORD(v269[1]) + 201))
            {
              goto LABEL_121;
            }

            v105 = BlueFin::GlBitBuffer::Position(&v371, 0);
            v252 = BlueFin::GlBitBuffer::GetU(v105, 1u);
            BlueFin::GlBitBuffer::Position(v337, 0);
            this = BlueFin::GlBitBuffer::GetU(v337, 1u);
            v251 = this;
            v100 = (v91 + 1);
          }

          else
          {
            v103 = BlueFin::GlBitBuffer::GetU(&v371, 1u);
            this = BlueFin::GlBitBuffer::GetU(v337, 1u);
            v252 = v103 | (2 * v252);
            v251 = this | (2 * v251);
            if (v91 >= 0x1F)
            {
              v104 = 31;
            }

            else
            {
              v104 = v91;
            }

            v100 = (v104 + 1);
          }

LABEL_133:
          if (v262 <= 0)
          {
            v106 = 0;
          }

          else
          {
            v106 = v254 ^ (v254 >> 1);
          }

          if (v262 > 0)
          {
            v107 = ~v253;
          }

          else
          {
            v107 = 0;
          }

          v108 = v100;
          if (v100 < 1)
          {
            v109 = 0;
            v110 = 0;
          }

          else
          {
            v109 = v252 ^ (v252 >> 1);
            v110 = ~(v251 | (v251 >> 1));
          }

          v111 = v260 ^ (v260 >> 1);
          v112 = v261 ^ (v261 >> 1);
          v113 = ~(v257 | (v257 >> 1));
          if (v255)
          {
            v90 *= 2;
            v114 = (2 * (v111 & 1) - 1) << ((v258 & 1) == 0);
            v115 = (2 * (v112 & 1) - 1) << (v113 & 1);
            v116 = __OFADD__(v115, v114);
            v117 = v115 + v114;
            if ((v117 < 0) ^ v116 | (v117 == 0))
            {
              v118 = 0;
            }

            else
            {
              v118 = 1;
            }

            v89 = v118 | (2 * v89);
            v119 = v259;
            v84 = v108;
            if ((v117 + ((2 * (v106 & 1) - 1) << (v107 & 1)) + ((2 * (v109 & 1) - 1) << (v110 & 1))) > 0)
            {
              ++v90;
            }

            goto LABEL_154;
          }

          if (v92 == v93)
          {
            v89 = 0;
            v90 = 0;
            v120 = 30;
            v119 = v259;
            v84 = v108;
            do
            {
              v121 = (2 * ((v111 >> v120) & 1) - 1) << ((~v258 >> v120) & 1);
              v122 = (2 * ((v112 >> v120) & 1) - 1) << ((v113 >> v120) & 1);
              v116 = __OFADD__(v121, v122);
              v123 = v121 + v122;
              if ((v123 < 0) ^ v116 | (v123 == 0))
              {
                v124 = 0;
              }

              else
              {
                v124 = 1;
              }

              this = ((2 * ((v109 >> v120) & 1) - 1) << ((v110 >> v120) & 1)) + ((2 * ((v106 >> v120) & 1) - 1) << ((v107 >> v120) & 1));
              v89 = v124 | (2 * v89);
              --v120;
              v90 = (this + v123 > 0) | (2 * v90);
            }

            while (v120 != -1);
LABEL_154:
            v255 = 1;
            goto LABEL_156;
          }

          v255 = 0;
          v119 = v259;
          v84 = v108;
LABEL_156:
          v126 = v119 == 32 && (v260 == -119717287 || v260 == 119717286);
          v128 = v263 == 32 && (v261 == -119717287 || v261 == 119717286);
          v130 = v119 == 32 && v263 == 32;
          v131 = v89 == 78898037 && v130;
          if (v262 != 32)
          {
            v130 = 0;
          }

          if (v84 != 32)
          {
            v130 = 0;
          }

          v132 = v90 == 78898037 && v130;
          v86 = HIDWORD(v289);
          v87 = v290;
          v76 = HIDWORD(v269[0]);
          v77 = v269[1];
          if (v126 || v128 || v131 || v132)
          {
            v133 = HIDWORD(v269[0]) - LODWORD(v269[1]);
            if (v126)
            {
              v133 = HIDWORD(v289) - v290;
            }

            if (v128)
            {
              if (v261 == 119717286)
              {
                v134 = 2;
              }

              else
              {
                v134 = 1;
              }

              *v7 = v134;
            }

            if ((v256[35] & 1) == 0)
            {
              *(v256 + 140) = 1;
              v135 = 10 * v133 + 20;
              v256[37] = *(a2 + 5) - v135;
              if ((*(a2 + 12) & 0x80) != 0)
              {
                v136 = *(a2 + 4) + v135 / -1000.0;
                *(v256 + 143) = 1;
                BlueFin::GlMeWinMgr::SetTMDecodeInfo(*(v7 + 296), (v7 + 284), 1, v136);
              }
            }

            memset(v369, 0, sizeof(v369));
            v370 = 0;
            memset(v367, 0, sizeof(v367));
            v368 = 0;
            memset(v365, 0, sizeof(v365));
            v366 = 0;
            memset(v363, 0, sizeof(v363));
            v364 = 0;
            v326 = 0;
            v325 = 0;
            v327 = 0;
            memset(v329, 0, 13);
            v328 = 0;
            v321 = 0;
            v320 = 0;
            v322 = 0;
            memset(v324, 0, 13);
            v323 = 0;
            v316 = 0;
            v315 = 0;
            v317 = 0;
            memset(v319, 0, 13);
            v318 = 0;
            *v330 = v369;
            v331 = 0;
            v332 = 0;
            v335 = 0;
            v334 = 0;
            v333 = 0xE0000000E0;
            v336 = 0;
            BlueFin::GlBitBuffer::Limit(v330, 0xC8u);
            v325 = v367;
            v326 = 0;
            v327 = 0;
            v329[2] = 0;
            v329[0] = 0;
            v328 = 0xE0000000E0;
            LOBYTE(v329[3]) = 0;
            BlueFin::GlBitBuffer::Limit(&v325, 0xC8u);
            v320 = v365;
            v321 = 0;
            v322 = 0;
            v324[2] = 0;
            v324[0] = 0;
            v323 = 0xE0000000E0;
            LOBYTE(v324[3]) = 0;
            BlueFin::GlBitBuffer::Limit(&v320, 0xC8u);
            v315 = v363;
            v316 = 0;
            v317 = 0;
            v319[2] = 0;
            v319[0] = 0;
            v318 = 0xE0000000E0;
            LOBYTE(v319[3]) = 0;
            this = BlueFin::GlBitBuffer::Limit(&v315, 0xC8u);
            v314 = -1;
            v313 = -1;
            v137 = *(a2 + 5);
            v138 = *(a2 + 8);
            v139 = v137 - 10 * v138;
            if (v139 == *v247)
            {
              v140 = *v256;
              if (v140 + v138 - (HIDWORD(v289) - v290) >= 0xC8)
              {
                v141 = 10 * (HIDWORD(v289) - v290) + 2020;
                v67 = v137 >= v141;
                v142 = v137 - v141;
                if (v67)
                {
                  v314 = v142;
                  v67 = v139 >= v142;
                  v143 = v139 - v142;
                  if (v143 != 0 && v67)
                  {
                    v144 = v143 / 0xA;
                    if (v144 <= v140)
                    {
                      v145 = v140 - v144;
                      BlueFin::GlBitBuffer::Position(v376, (v140 - v144));
                      this = BlueFin::GlBitBuffer::Position(v342, v145);
                      v146 = HIDWORD(v379) - LODWORD(v380[0]);
                      if (HIDWORD(v379) - LODWORD(v380[0]) >= (HIDWORD(v333) - v334))
                      {
                        v146 = HIDWORD(v333) - v334;
                      }

                      if (v146 >= 1)
                      {
                        do
                        {
                          if (v146 >= 0x20)
                          {
                            v147 = 32;
                          }

                          else
                          {
                            v147 = v146;
                          }

                          v148 = BlueFin::GlBitBuffer::GetU(v376, v147);
                          BlueFin::GlBitBuffer::PutU(v330, v148, v147);
                          v149 = BlueFin::GlBitBuffer::GetU(v342, v147);
                          this = BlueFin::GlBitBuffer::PutU(&v325, v149, v147);
                          v146 = HIDWORD(v379) - LODWORD(v380[0]);
                          if (HIDWORD(v379) - LODWORD(v380[0]) >= (HIDWORD(v333) - v334))
                          {
                            v146 = HIDWORD(v333) - v334;
                          }
                        }

                        while (v146 > 0);
                      }
                    }
                  }

                  v150 = HIDWORD(v333) - v334;
                  if (HIDWORD(v333) != v334)
                  {
                    v290 = 0;
                    v292 = 0;
                    LODWORD(v350[0]) = 0;
                    BYTE4(v350[1]) = 0;
                    if (HIDWORD(v289) < v150)
                    {
                      v150 = HIDWORD(v289);
                    }

                    if (v150 >= 1)
                    {
                      do
                      {
                        if (v150 >= 0x20)
                        {
                          v151 = 32;
                        }

                        else
                        {
                          v151 = v150;
                        }

                        v152 = BlueFin::GlBitBuffer::GetU(&v286, v151);
                        BlueFin::GlBitBuffer::PutU(v330, v152, v151);
                        v153 = BlueFin::GlBitBuffer::GetU(v347, v151);
                        this = BlueFin::GlBitBuffer::PutU(&v325, v153, v151);
                        v150 = HIDWORD(v289) - v290;
                        if (HIDWORD(v289) - v290 >= (HIDWORD(v333) - v334))
                        {
                          v150 = HIDWORD(v333) - v334;
                        }
                      }

                      while (v150 > 0);
                    }
                  }
                }
              }
            }

            v154 = *(a3 + 5);
            v155 = *(a3 + 8);
            v156 = v154 - 10 * v155;
            if (v156 == *v248)
            {
              v157 = *v249;
              if (v157 + v155 - (HIDWORD(v269[0]) - LODWORD(v269[1])) >= 0xC8)
              {
                v158 = 10 * (HIDWORD(v269[0]) - LODWORD(v269[1])) + 2020;
                v67 = v154 >= v158;
                v159 = v154 - v158;
                if (v67)
                {
                  v313 = v159;
                  v67 = v156 >= v159;
                  v160 = v156 - v159;
                  if (v160 != 0 && v67)
                  {
                    v161 = v160 / 0xA;
                    if (v161 <= v157)
                    {
                      v162 = v157 - v161;
                      BlueFin::GlBitBuffer::Position(&v371, (v157 - v161));
                      this = BlueFin::GlBitBuffer::Position(v337, v162);
                      v163 = HIDWORD(v374) - LODWORD(v375[0]);
                      if (HIDWORD(v374) - LODWORD(v375[0]) >= (HIDWORD(v323) - v324[0]))
                      {
                        v163 = HIDWORD(v323) - v324[0];
                      }

                      if (v163 >= 1)
                      {
                        do
                        {
                          if (v163 >= 0x20)
                          {
                            v164 = 32;
                          }

                          else
                          {
                            v164 = v163;
                          }

                          v165 = BlueFin::GlBitBuffer::GetU(&v371, v164);
                          BlueFin::GlBitBuffer::PutU(&v320, v165, v164);
                          v166 = BlueFin::GlBitBuffer::GetU(v337, v164);
                          this = BlueFin::GlBitBuffer::PutU(&v315, v166, v164);
                          v163 = HIDWORD(v374) - LODWORD(v375[0]);
                          if (HIDWORD(v374) - LODWORD(v375[0]) >= (HIDWORD(v323) - v324[0]))
                          {
                            v163 = HIDWORD(v323) - v324[0];
                          }
                        }

                        while (v163 > 0);
                      }
                    }
                  }

                  v167 = HIDWORD(v323) - v324[0];
                  if (HIDWORD(v323) != v324[0])
                  {
                    LODWORD(v269[1]) = 0;
                    BYTE4(v269[2]) = 0;
                    v385[0] = 0;
                    LOBYTE(v385[3]) = 0;
                    if (HIDWORD(v269[0]) < v167)
                    {
                      v167 = HIDWORD(v269[0]);
                    }

                    if (v167 >= 1)
                    {
                      do
                      {
                        if (v167 >= 0x20)
                        {
                          v168 = 32;
                        }

                        else
                        {
                          v168 = v167;
                        }

                        v169 = BlueFin::GlBitBuffer::GetU(&v266, v168);
                        BlueFin::GlBitBuffer::PutU(&v320, v169, v168);
                        v170 = BlueFin::GlBitBuffer::GetU(v381, v168);
                        this = BlueFin::GlBitBuffer::PutU(&v315, v170, v168);
                        v167 = HIDWORD(v269[0]) - LODWORD(v269[1]);
                        if (HIDWORD(v269[0]) - LODWORD(v269[1]) >= (HIDWORD(v323) - v324[0]))
                        {
                          v167 = HIDWORD(v323) - v324[0];
                        }
                      }

                      while (v167 > 0);
                    }
                  }
                }
              }
            }

            v171 = v334;
            v172 = v324[0];
            if (v334 == 200 || v324[0] == 200)
            {
              v361 = 0;
              *v360 = 0;
              v362 = 0;
              v359[0] = 0;
              v358 = 0;
              v359[1] = 0;
              v356 = 0;
              *v355 = 0;
              v357 = 0;
              v354[0] = 0;
              v353 = 0;
              v354[1] = 0;
              BlueFin::GLNFrameMgrUtils::MeanderDecode(v369, v360, 0xC0, 1);
              v360[0] ^= __PAIR64__(v360[0], v360[1]) >> 31;
              v360[1] ^= __PAIR64__(v360[1], v361) >> 31;
              LODWORD(v361) = v361 ^ (2 * v361);
              BlueFin::GLNFrameMgrUtils::MeanderDecode(v365, v355, 0xC0, 1);
              v355[0] ^= __PAIR64__(v355[0], v355[1]) >> 31;
              v355[1] ^= __PAIR64__(v355[1], v356) >> 31;
              LODWORD(v356) = v356 ^ (2 * v356);
              BlueFin::GLNFrameMgrUtils::MeanderDecode(v369, &v361 + 1, 0xC0, 0);
              HIDWORD(v361) ^= __PAIR64__(HIDWORD(v361), v362) >> 31;
              LODWORD(v362) = (__PAIR64__(v362, HIDWORD(v362)) >> 31) ^ v362;
              HIDWORD(v362) ^= 2 * HIDWORD(v362);
              BlueFin::GLNFrameMgrUtils::MeanderDecode(v365, &v356 + 1, 0xC0, 0);
              v177 = 0;
              HIDWORD(v356) ^= __PAIR64__(HIDWORD(v356), v357) >> 31;
              LODWORD(v357) = (__PAIR64__(v357, HIDWORD(v357)) >> 31) ^ v357;
              HIDWORD(v357) ^= 2 * HIDWORD(v357);
              v178 = v367[0];
              v179 = v363[0];
              do
              {
                v180 = v178;
                v181 = v179;
                this = v177++ >> 1;
                v178 = *(v367 + v177);
                v182 = ((__PAIR64__(v180, v178) >> 30) | (__PAIR64__(v180, v178) >> 31) | v180);
                v179 = *(v363 + v177);
                v183 = (__PAIR64__(v181, v179) >> 30) | (__PAIR64__(v181, v179) >> 31) | v181;
                v184 = *(&v359[-1] + this);
                v185 = *(v359 + this + 1);
                v186 = 16 * (v177 & 1);
                v187 = *(&v354[-1] + this);
                v188 = *(v354 + this + 1);
                v189 = -4;
                do
                {
                  v189 += 4;
                  v190 = (v182 >> v189) & 0xFLL;
                  v184 |= byte_298A3A4A0[v190] << v186;
                  v185 |= byte_298A3A4A0[v190 + 16] << v186;
                  v191 = (v183 >> v189) & 0xFLL;
                  v187 |= byte_298A3A4A0[v191] << v186;
                  v188 |= byte_298A3A4A0[v191 + 16] << v186;
                  v186 += 2;
                }

                while (v189 < 0x1C);
                *(&v359[-1] + this) = v184;
                *(v359 + this + 1) = v185;
                *(&v354[-1] + this) = v187;
                *(v354 + this + 1) = v188;
              }

              while (v177 != 6);
              v192 = 0;
              v193 = 0;
              v264 = 0;
              v194 = 0;
              v352[0] = v360;
              v352[1] = &v361 + 4;
              v352[2] = v355;
              v352[3] = &v356 + 4;
              v351[0] = &v314;
              v351[1] = &v314;
              v351[2] = &v313;
              v351[3] = &v313;
              v312[0] = v171 == 200;
              v312[1] = v171 == 200;
              v312[2] = v172 == 200;
              v312[3] = v172 == 200;
              do
              {
                if (v312[v192])
                {
                  v195 = v352[v192];
                  this = BlueFin::GLNFrameMgrUtils::Parity(v195, v182);
                  if (this)
                  {
                    if (!v194 || *v194 == *v195 && *(v194 + 1) == *(v195 + 1) && (*(v195 + 2) ^ *(v194 + 2)) < 0x1000 || (v99 = v193 <= 0, --v193, v99))
                    {
                      v264 = v351[v192];
                      ++v193;
                      v194 = v195;
                    }
                  }
                }

                ++v192;
              }

              while (v192 != 4);
              if (v193 > 1)
              {
                v196 = *v194;
                v197 = *v194 >> 28;
                *(v256 + 144) = 1;
                v198 = *v264;
                v199 = *(a2 + 5) - *v264;
                *v309 = &unk_2A1F093B8;
                memset(&v309[2], 0, 10);
                memset(v311, 0, 12);
                v310 = 0;
                LODWORD(v310) = *v194 >> 1;
                HIDWORD(v200) = *v194;
                LODWORD(v200) = *(v194 + 1);
                HIDWORD(v310) = v200 >> 1;
                HIDWORD(v200) = *(v194 + 1);
                LODWORD(v200) = *(v194 + 2);
                v311[0] = (v200 >> 1) & 0xFFFFF800;
                LOBYTE(v309[2]) = *(v7 + 284);
                v201 = LOBYTE(v309[2]) - 59;
                if (LOBYTE(v309[2]) - 52 >= 0xE)
                {
                  v201 = -8;
                }

                BYTE1(v309[2]) = v201;
                *(&v309[2] + 2) = 0;
                v202 = *(a2 + 6);
                v67 = v202 >= v199;
                v203 = v202 - v199;
                if (v203 != 0 && v67)
                {
                  LOWORD(v309[4]) = v203;
                }

                if (v197 == 1 && (*(v256 + 142) & 1) == 0)
                {
                  HIWORD(v309[2]) = 1;
                  v216 = 1000 * (60 * ((v196 >> 13) & 0x3F) + 3600 * ((v196 >> 19) & 0x1F) + (((v196 << 19) >> 31) & 0x1E));
                  v309[3] = v216;
                  *(v256 + 140) = 1;
                  if (*(v256 + 141) == 1)
                  {
                    v217 = v256[38] + v198 - v256[37];
                    if (v217 > 0x5265BFF)
                    {
                      v217 -= 86400000;
                    }

                    *(v256 + 142) = v216 == v217;
                  }

                  *(v256 + 141) = 1;
                  v256[37] = v198;
                  v256[38] = v216;
                  v206 = *(a2 + 4) + v199 / -1000.0;
                  *(v311 + 4) = v206;
                  goto LABEL_310;
                }

                if (*(v256 + 141))
                {
                  v204 = v256[38] + v198 - v256[37];
                  if (v204 > 0x5265BFF)
                  {
                    v204 -= 86400000;
                  }

                  v309[3] = v204;
                  HIWORD(v309[2]) = 1;
                  v256[37] = v198;
                  v256[38] = v204;
                  v205 = *(v256 + 140);
                  v206 = *(a2 + 4) + v199 / -1000.0;
                  *(v311 + 4) = v206;
                  if ((v205 & 1) == 0)
                  {
                    goto LABEL_312;
                  }

LABEL_310:
                  if ((*(a2 + 12) & 0x80) != 0)
                  {
                    *(v256 + 143) = 1;
                    BlueFin::GlMeWinMgr::SetTMDecodeInfo(*(v7 + 296), (v7 + 284), 1, v206);
                  }

                  goto LABEL_312;
                }

                v211 = *(v256 + 140);
                if (v211 == 1)
                {
                  v256[37] = v198;
                  v256[38] = 2000 * v197 - 2000;
                }

                v212 = *(a2 + 4);
                *v174.i64 = floor(v212 * 1000.0);
                *v176.i64 = *v174.i64 + trunc(*v174.i64 * 2.32830644e-10) * -4294967300.0;
                v213.f64[0] = NAN;
                v213.f64[1] = NAN;
                v214 = vnegq_f64(v213);
                v176.i64[0] = vbslq_s8(v214, v176, v174).u64[0];
                if (*v174.i64 > 4294967300.0)
                {
                  v174.i64[0] = v176.i64[0];
                }

                if (*v174.i64 < -4294967300.0)
                {
                  *v175.i64 = -*v174.i64;
                  *v174.i64 = -(*v174.i64 - trunc(*v174.i64 * -2.32830644e-10) * -4294967300.0);
                  *v174.i64 = -*vbslq_s8(v214, v174, v175).i64;
                }

                if (*v174.i64 < 0.0)
                {
                  v215 = --*v174.i64;
                }

                else
                {
                  v215 = *v174.i64;
                }

                v309[3] = v215 - v199;
                v206 = v212 + v199 / -1000.0;
                *(v311 + 4) = v206;
                if (v211)
                {
                  goto LABEL_310;
                }

LABEL_312:
                this = (*(**(v7 + 288) + 56))(*(v7 + 288), v309);
              }

LABEL_313:
              if ((v256[35] & 1) == 0)
              {
                BlueFin::GlMeGlonassFrameMgr::SaveSearchBits((v256 + 3), v256 + 11, v247, v256, a2 + 22, a2 + 43, *(a2 + 5), *(a2 + 8), v244);
                this = BlueFin::GlMeGlonassFrameMgr::SaveSearchBits((v256 + 19), v256 + 27, v248, v249, a3 + 22, a3 + 43, *(a3 + 5), *(a3 + 8), v245);
              }

              v3 = v246;
              if ((*(SearchStateMemory + 140) & 1) == 0)
              {
LABEL_23:
                v16 = *MEMORY[0x29EDCA608];
                return this;
              }

LABEL_17:
              v286 = &unk_2A1F0DC20;
              HIDWORD(v287) = 0;
              v288 = 0;
              v289 = 0;
              v291 = 0.0;
              v292 = 0;
              v307 = 0u;
              v308 = 0u;
              v293 = 0u;
              v294 = 0u;
              v295 = 0u;
              v296 = 0u;
              v297 = 0u;
              v298 = 0u;
              v299 = 0u;
              v300 = 0u;
              v301 = 0u;
              v302 = 0u;
              v303 = 0u;
              v304 = 0u;
              v305 = 0u;
              v306 = 0u;
              LOWORD(v287) = 0;
              v266 = &unk_2A1F0DC20;
              HIDWORD(v267) = 0;
              v268 = 0;
              v269[0] = 0;
              *(&v269[1] + 4) = 0;
              BYTE4(v269[2]) = 0;
              v284 = 0u;
              v285 = 0u;
              v270 = 0u;
              v271 = 0u;
              v272 = 0u;
              v273 = 0u;
              v274 = 0u;
              v275 = 0u;
              v276 = 0u;
              v277 = 0u;
              v278 = 0u;
              v279 = 0u;
              v280 = 0u;
              v281 = 0u;
              v282 = 0u;
              v283 = 0u;
              LOWORD(v267) = 0;
              v13 = *(a3 + 3);
              if ((v13 & 0x40) != 0)
              {
                LOWORD(v287) = *(a2 + 4);
                HIDWORD(v287) = *(a2 + 3);
                v288 = *(a2 + 8);
                v289 = *(a2 + 20);
                v291 = *(a2 + 4);
                v292 = *(a2 + 40);
                v27 = *(a2 + 124);
                v297 = *(a2 + 108);
                v298 = v27;
                v28 = *(a2 + 156);
                v299 = *(a2 + 140);
                v300 = v28;
                v29 = *(a2 + 60);
                v293 = *(a2 + 44);
                v294 = v29;
                v30 = *(a2 + 92);
                v295 = *(a2 + 76);
                v296 = v30;
                v31 = *(a2 + 284);
                v307 = *(a2 + 268);
                v308 = v31;
                v304 = *(a2 + 220);
                v303 = *(a2 + 204);
                v302 = *(a2 + 188);
                v301 = *(a2 + 172);
                v306 = *(a2 + 252);
                v305 = *(a2 + 236);
                LOWORD(v267) = *(a3 + 4);
                HIDWORD(v267) = v13;
                v268 = *(a3 + 8);
                v269[0] = *(a3 + 20);
                *(&v269[1] + 4) = *(a3 + 4);
                BYTE4(v269[2]) = *(a3 + 40);
                v32 = *(a3 + 44);
                v33 = *(a3 + 60);
                v34 = *(a3 + 92);
                v272 = *(a3 + 76);
                v273 = v34;
                v270 = v32;
                v271 = v33;
                v35 = *(a3 + 108);
                v36 = *(a3 + 124);
                v37 = *(a3 + 156);
                v276 = *(a3 + 140);
                v277 = v37;
                v274 = v35;
                v275 = v36;
                v38 = *(a3 + 236);
                v39 = *(a3 + 252);
                v40 = *(a3 + 284);
                v284 = *(a3 + 268);
                v285 = v40;
                v41 = *(a3 + 172);
                v42 = *(a3 + 188);
                v43 = *(a3 + 204);
                v281 = *(a3 + 220);
                v280 = v43;
                v279 = v42;
                v278 = v41;
                v283 = v39;
                v282 = v38;
              }

              else
              {
                v347[0] = -1;
                if ((BlueFin::GlMeGlonassFrameMgr::GetGlnsStrPhsInSym(v7, *(a2 + 5), v347) & 1) == 0)
                {
                  DeviceFaultNotify("glme_glonassframemgr.cpp", 206, "Update", "GetGlnsStrPhsInSym(rotFllDataBits.m_ulEpochCnt, ucGlnsStrPhsInSym)");
                  __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_glonassframemgr.cpp", 206, "GetGlnsStrPhsInSym(rotFllDataBits.m_ulEpochCnt, ucGlnsStrPhsInSym)");
                }

                v14 = v347[0];
                BlueFin::GlMeDSPDataBits::ConvertGlnsSymsToBits(a2, &v286, (SearchStateMemory + 257), v347[0]);
                BlueFin::GlMeDSPDataBits::ConvertGlnsSymsToBits(a3, &v266, (SearchStateMemory + 258), v14);
              }

              this = BlueFin::GlMeGlonassFrameMgr::GetSearchStateMemory(v7);
              v44 = this;
              if ((*(this + 256) & 1) == 0)
              {
                *(this + 256) = 1;
                *(this + 252) = 257;
              }

              if ((v287 & 0x400000000) != 0 || (v267 & 0x400000000) != 0 || v289 <= *(this + 4) || LODWORD(v269[0]) <= *(this + 8))
              {
                *(v7 + 276) = 0;
                *(v7 + 244) = 0u;
                *(v7 + 260) = 0u;
                *(v7 + 212) = 0u;
                *(v7 + 228) = 0u;
                *(v7 + 180) = 0u;
                *(v7 + 196) = 0u;
                *(v7 + 148) = 0u;
                *(v7 + 164) = 0u;
                *(v7 + 116) = 0u;
                *(v7 + 132) = 0u;
                *(v7 + 84) = 0u;
                *(v7 + 100) = 0u;
                *(v7 + 52) = 0u;
                *(v7 + 68) = 0u;
                *(v7 + 20) = 0u;
                *(v7 + 36) = 0u;
                *v12 = 0u;
              }

              else
              {
                LODWORD(v382) = 0;
                *v381 = 0;
                LODWORD(v377) = 0;
                *v376 = 0;
                LODWORD(v372) = 0;
                v371 = 0;
                v342[0] = 0;
                v337[0] = 0;
                v330[0] = 0;
                BlueFin::GlMeGlonassFrameMgr::ParseBits(v7, &v286, v381, v342, v337, 1);
                this = BlueFin::GlMeGlonassFrameMgr::ParseBits(v7, &v266, v376, v342, v330, 0);
                if ((*(v44 + 254) & 1) != 0 || *(v44 + 255) == 1)
                {
                  *(v7 + 276) = 0;
                  *(v7 + 244) = 0u;
                  *(v7 + 260) = 0u;
                  *(v7 + 212) = 0u;
                  *(v7 + 228) = 0u;
                  *(v7 + 180) = 0u;
                  *(v7 + 196) = 0u;
                  *(v7 + 148) = 0u;
                  *(v7 + 164) = 0u;
                  *(v7 + 116) = 0u;
                  *(v7 + 132) = 0u;
                  *(v7 + 84) = 0u;
                  *(v7 + 100) = 0u;
                  *(v7 + 52) = 0u;
                  *(v7 + 68) = 0u;
                  *(v7 + 20) = 0u;
                  *(v7 + 36) = 0u;
                  *v12 = 0u;
                  if ((v287 & 0x4000000000) != 0)
                  {
                    this = *(v7 + 304);
                    if (this)
                    {
                      this = (*(*this + 48))(this, &v287 + 1, 1);
                    }
                  }

                  goto LABEL_48;
                }

                v207 = v337[0];
                if (v337[0])
                {
                  this = BlueFin::GLNFrameMgrUtils::Parity(v381, v45);
                  v208 = this;
                }

                else
                {
                  v208 = 0;
                }

                v218 = v330[0];
                if (v330[0])
                {
                  v265 = v208;
                  this = BlueFin::GLNFrameMgrUtils::Parity(v376, v45);
                  v208 = v265;
                  v219 = this;
                }

                else
                {
                  v219 = 0;
                }

                if (v207 || v218) && (*(v44 + 256))
                {
                  this = *(v7 + 304);
                  if (this)
                  {
                    v220 = v208;
                    v221 = v219;
                    this = (*(*this + 32))(this, v208 | v219, 1, v7 + 284);
                    v208 = v220;
                    v219 = v221;
                  }
                }

                if ((v208 & v219) == 1)
                {
                  v222 = 0;
                  while (1)
                  {
                    v223 = v381[v222];
                    v224 = v376[v222] ^ v223;
                    if (v222 == 2)
                    {
                      v224 &= 0xFFFFF800;
                    }

                    if (v224)
                    {
                      goto LABEL_48;
                    }

                    *(&v371 + v222 * 4) = v223;
                    if (++v222 == 3)
                    {
                      v208 = 1;
                      goto LABEL_336;
                    }
                  }
                }

                if ((v208 | v219))
                {
                  v225 = v376;
                  if (v208)
                  {
                    v225 = v381;
                  }

                  v371 = *v225;
                  LODWORD(v372) = v225[2];
LABEL_336:
                  v226 = v371;
                  *v347 = &unk_2A1F093B8;
                  LODWORD(v350[1]) = 0;
                  LODWORD(v349) = v371 >> 1;
                  HIDWORD(v349) = __PAIR64__(v371, HIDWORD(v371)) >> 1;
                  v350[0] = (__PAIR64__(HIDWORD(v371), v372) >> 1) & 0xFFFFF800;
                  v348[0] = *(v7 + 284);
                  v227 = v348[0] - 59;
                  if (v348[0] - 52 >= 0xE)
                  {
                    v227 = -8;
                  }

                  v348[1] = v227;
                  *&v348[2] = 0;
                  v228 = v342[0];
                  if (v208)
                  {
                    v229 = &v289;
                    v230 = WORD2(v289);
                    if (v342[0] >= HIDWORD(v289))
                    {
                      goto LABEL_344;
                    }

LABEL_343:
                    *&v348[8] = v230 - LOWORD(v342[0]);
                  }

                  else
                  {
                    v229 = v269;
                    if (v342[0] < HIDWORD(v269[0]))
                    {
                      v230 = WORD2(v289);
                      goto LABEL_343;
                    }
                  }

LABEL_344:
                  v231 = v371 >> 28;
                  *(v44 + 144) = 1;
                  v232 = *v229 - v228;
                  if (v226 >> 28 == 1 && (*(v44 + 142) & 1) == 0)
                  {
                    v235 = (v226 >> 19) & 0x1F;
                    if (v235 > 0x17 || (v236 = (v226 >> 13) & 0x3F, v236 >= 0x3C))
                    {
                      if ((*(v44 + 140) & 1) == 0)
                      {
                        goto LABEL_366;
                      }

                      v234 = *(v44 + 152);
LABEL_363:
                      *&v348[4] = v234;
                      v240 = v291 + v228 / -1000.0;
                      *(v350 + 4) = v240;
                    }

                    else
                    {
                      *&v348[2] = 1;
                      v237 = 1000 * ((((v226 << 19) >> 31) & 0x1E) + 60 * (v236 + 60 * v235));
                      *&v348[4] = v237;
                      if (*(v44 + 141) == 1)
                      {
                        v238 = *(v44 + 152) + v232 - *(v44 + 148);
                        if (v238 > 0x5265BFF)
                        {
                          v238 -= 86400000;
                        }

                        *(v44 + 142) = v237 == v238;
                      }

                      *(v44 + 141) = 1;
                      *(v44 + 148) = v232;
                      *(v44 + 152) = v237;
LABEL_359:
                      v239 = *(v44 + 140);
                      v240 = v291 + v228 / -1000.0;
                      *(v350 + 4) = v240;
                      if ((v239 & 1) == 0)
                      {
                        goto LABEL_374;
                      }
                    }

                    if ((v287 & 0x8000000000) != 0)
                    {
                      *(v44 + 143) = 1;
                      BlueFin::GlMeWinMgr::SetTMDecodeInfo(*(v7 + 296), (v7 + 284), 1, v240);
                    }

                    goto LABEL_374;
                  }

                  if (*(v44 + 141) == 1)
                  {
                    v233 = *(v44 + 152) + v232 - *(v44 + 148);
                    if (v233 > 0x5265BFF)
                    {
                      v233 -= 86400000;
                    }

                    *&v348[4] = v233;
                    *&v348[2] = 1;
                    *(v44 + 148) = v232;
                    *(v44 + 152) = v233;
                    goto LABEL_359;
                  }

                  if (*(v44 + 140) == 1)
                  {
                    v234 = 2000 * v231 - 2000;
                    *(v44 + 148) = v232;
                    *(v44 + 152) = v234;
                    goto LABEL_363;
                  }

LABEL_366:
                  *v46.i64 = floor(v291 * 1000.0);
                  *v48.i64 = *v46.i64 + trunc(*v46.i64 * 2.32830644e-10) * -4294967300.0;
                  v241.f64[0] = NAN;
                  v241.f64[1] = NAN;
                  v242 = vnegq_f64(v241);
                  v48.i64[0] = vbslq_s8(v242, v48, v46).u64[0];
                  if (*v46.i64 > 4294967300.0)
                  {
                    v46.i64[0] = v48.i64[0];
                  }

                  if (*v46.i64 < -4294967300.0)
                  {
                    *v47.i64 = -*v46.i64;
                    *v46.i64 = -(*v46.i64 - trunc(*v46.i64 * -2.32830644e-10) * -4294967300.0);
                    *v46.i64 = -*vbslq_s8(v242, v46, v47).i64;
                  }

                  if (*v46.i64 < 0.0)
                  {
                    v243 = --*v46.i64;
                  }

                  else
                  {
                    v243 = *v46.i64;
                  }

                  *&v348[4] = v243 - v228;
                  *(v350 + 4) = v291 + v228 / -1000.0;
LABEL_374:
                  this = (*(**(v7 + 288) + 56))(*(v7 + 288), v347);
                }
              }

LABEL_48:
              if (*(SearchStateMemory + 140) == 1 && (*(a2 + 12) & 0x40) != 0)
              {
                v49 = *(a2 + 5);
                v50 = *(SearchStateMemory + 148);
                if (v49 >= v50)
                {
                  v51 = -858993459 * (v49 - v50);
                }

                else
                {
                  v51 = -858993459 * (v50 - v49);
                }

                HIDWORD(v173) = v51;
                LODWORD(v173) = v51;
                if ((v173 >> 2) >= 0xCCCCCCD)
                {
                  *(v7 + 276) = 0;
                  *(v7 + 244) = 0u;
                  *(v7 + 260) = 0u;
                  *(v7 + 212) = 0u;
                  *(v7 + 228) = 0u;
                  *(v7 + 180) = 0u;
                  *(v7 + 196) = 0u;
                  *(v7 + 148) = 0u;
                  *(v7 + 164) = 0u;
                  *(v7 + 116) = 0u;
                  *(v7 + 132) = 0u;
                  *(v7 + 84) = 0u;
                  *(v7 + 100) = 0u;
                  *(v7 + 52) = 0u;
                  *(v7 + 68) = 0u;
                  *(v7 + 20) = 0u;
                  *(v7 + 36) = 0u;
                  *v12 = 0u;
                  this = *(v7 + 304);
                  if (this)
                  {
                    this = (*(*this + 48))(this, v3, 1);
                  }
                }
              }

              goto LABEL_23;
            }

            v86 = HIDWORD(v289);
            v87 = v290;
            v76 = HIDWORD(v269[0]);
            v77 = v269[1];
            v84 = v108;
          }

          v88 = v86 == v87;
          if (v86 == v87 && v76 == v77)
          {
            goto LABEL_313;
          }
        }
      }
    }

    else
    {
      v262 = 0;
    }

    v253 = 0;
    v254 = 0;
    goto LABEL_84;
  }

  *(v7 + 276) = 0;
  *(v7 + 244) = 0u;
  *(v7 + 260) = 0u;
  *(v7 + 212) = 0u;
  *(v7 + 228) = 0u;
  *(v7 + 180) = 0u;
  *(v7 + 196) = 0u;
  *(v7 + 148) = 0u;
  *(v7 + 164) = 0u;
  *(v7 + 116) = 0u;
  *(v7 + 132) = 0u;
  *(v7 + 84) = 0u;
  *(v7 + 100) = 0u;
  *(v7 + 52) = 0u;
  *(v7 + 68) = 0u;
  *(v7 + 20) = 0u;
  *(v7 + 36) = 0u;
  *v12 = 0u;
  this = *(v7 + 304);
  if (!this)
  {
    goto LABEL_23;
  }

  v52 = *(*this + 48);
  v53 = *MEMORY[0x29EDCA608];

  return v52();
}

uint64_t BlueFin::GlMePlatfStat::ss2hist(BlueFin::GlMePlatfStat *this)
{
  v1 = this + 148;
  if (this <= -140)
  {
    v2 = 14;
  }

  else
  {
    v2 = 0;
  }

  if (v1 >= 0xD)
  {
    return v2;
  }

  else
  {
    return 13 - v1;
  }
}

uint64_t BlueFin::GlMeDSPDataBits::Print(uint64_t this)
{
  if (*(this + 16))
  {
    if ((((*(this + 16) - 1) >> 5) + 1) > 0x20u)
    {
      DeviceFaultNotify("glme_msmtmgr.cpp", 2831, "Print", "ucNumWords <= NUM_LONGS");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_msmtmgr.cpp", 2831, "ucNumWords <= NUM_LONGS");
    }
  }

  return this;
}

double BlueFin::GlMeSrdSvIdReportMgr::SetDSPDataBits(BlueFin::GlMeSrdSvIdReportMgr *this, const BlueFin::GlMeDSPDataBits *a2, const BlueFin::GlMeDSPDataBits *a3)
{
  v3 = *(a2 + 9);
  if (v3 != *(a3 + 9))
  {
    v17 = "otSvId == otPllDataBits.m_otSvId";
    DeviceFaultNotify("glmesrd_svid_report_mgr.cpp", 543, "SaveDataBits", "otSvId == otPllDataBits.m_otSvId");
    v18 = 543;
    goto LABEL_32;
  }

  v6 = *(a2 + 8);
  if (v6 != *(a3 + 8))
  {
    v17 = "ucSatId == otPllDataBits.m_ucChn";
    DeviceFaultNotify("glmesrd_svid_report_mgr.cpp", 544, "SaveDataBits", "ucSatId == otPllDataBits.m_ucChn");
    v18 = 544;
    goto LABEL_32;
  }

  if ((v3 - 189) <= 0xFFFFFF43)
  {
    v17 = "IS_SVID(*otSvId)";
    DeviceFaultNotify("glmesrd_svid_report_mgr.cpp", 546, "SaveDataBits", "IS_SVID(*otSvId)");
    v18 = 546;
    goto LABEL_32;
  }

  v8 = (*(**(this + 2) + 40))(*(this + 2), *(a2 + 8));
  if (!(*(**(this + 2) + 64))(*(this + 2)) || (v8 & 1) != 0)
  {
    goto LABEL_20;
  }

  if (((*(**(this + 2) + 64))(*(this + 2)) & 1) == 0)
  {
    v17 = "m_otDataBitsArray.IsFull()";
    DeviceFaultNotify("glmesrd_svid_report_mgr.cpp", 1535, "DataBitsGarbageCollector", "m_otDataBitsArray.IsFull()");
    v18 = 1535;
    goto LABEL_32;
  }

  (*(**(this + 2) + 80))(&v19);
  if (v20 >= *(v19 + 38))
  {
    goto LABEL_33;
  }

  v9 = 255;
  v10 = 1.79769313e308;
  do
  {
    v11 = BlueFin::GlArrayIterator::Next(&v19);
    v12 = (*(**(this + 2) + 16))(*(this + 2), v11);
    if ((v9 == 255 || v10 >= *(v12 + 336)) && (v9 = v11, v10 = *(v12 + 336), v11 == 255))
    {
      v13 = *(v12 + 32);
    }

    else
    {
      v13 = *(v12 + 32);
      if (v10 < v13)
      {
        continue;
      }
    }

    v10 = v13;
    v9 = v11;
  }

  while (v20 < *(v19 + 38));
  if (v9 == 255)
  {
LABEL_33:
    v17 = "ucSatToRemove != INVALID_SATID";
    DeviceFaultNotify("glmesrd_svid_report_mgr.cpp", 1556, "DataBitsGarbageCollector", "ucSatToRemove != INVALID_SATID");
    v18 = 1556;
LABEL_32:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_svid_report_mgr.cpp", v18, v17);
  }

  (*(**(this + 2) + 16))(*(this + 2), v9);
  (*(**(this + 2) + 32))(*(this + 2), v9);
  v14 = *(a2 + 4);
  if (v14 <= *(a3 + 4))
  {
    v14 = *(a3 + 4);
  }

  if (v14 - v10 < 0.1)
  {
    v17 = "(dCurrentTimeStampLs - dOldestTimeStampLs) >= 0.1";
    DeviceFaultNotify("glmesrd_svid_report_mgr.cpp", 554, "SaveDataBits", "(dCurrentTimeStampLs - dOldestTimeStampLs) >= 0.1");
    v18 = 554;
    goto LABEL_32;
  }

LABEL_20:
  v15 = (*(**(this + 2) + 24))(*(this + 2), v6);
  if (!v15)
  {
    v17 = "potDataBitSlot != nullptr";
    DeviceFaultNotify("glmesrd_svid_report_mgr.cpp", 561, "SaveDataBits", "potDataBitSlot != nullptr");
    v18 = 561;
    goto LABEL_32;
  }

  if ((v8 & 1) == 0)
  {
    BlueFin::GlMeSrdSvIdReportDataBitsSlot::GlMeSrdSvIdReportDataBitsSlot(v15);
  }

  *&result = BlueFin::GlMeSrdSvIdReportDataBitsSlot::Save(v15, a2, a3).n128_u64[0];
  return result;
}

__n128 BlueFin::GlMeSrdSvIdReportDataBitsSlot::Save(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v3 = *(a2 + 44);
  v4 = *(a2 + 60);
  v5 = *(a2 + 76);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 76) = v5;
  *(a1 + 60) = v4;
  *(a1 + 44) = v3;
  v6 = *(a2 + 108);
  v7 = *(a2 + 124);
  v8 = *(a2 + 140);
  *(a1 + 156) = *(a2 + 156);
  *(a1 + 140) = v8;
  *(a1 + 124) = v7;
  *(a1 + 108) = v6;
  v9 = *(a2 + 252);
  v10 = *(a2 + 268);
  v11 = *(a2 + 284);
  *(a1 + 236) = *(a2 + 236);
  *(a1 + 268) = v10;
  *(a1 + 284) = v11;
  *(a1 + 252) = v9;
  v12 = *(a2 + 172);
  v13 = *(a2 + 188);
  v14 = *(a2 + 204);
  *(a1 + 220) = *(a2 + 220);
  *(a1 + 204) = v14;
  *(a1 + 188) = v13;
  *(a1 + 172) = v12;
  *(a1 + 312) = *(a3 + 8);
  *(a1 + 316) = *(a3 + 12);
  *(a1 + 320) = *(a3 + 16);
  *(a1 + 324) = *(a3 + 20);
  *(a1 + 336) = *(a3 + 32);
  *(a1 + 344) = *(a3 + 40);
  v15 = *(a3 + 44);
  v16 = *(a3 + 60);
  v17 = *(a3 + 92);
  *(a1 + 380) = *(a3 + 76);
  *(a1 + 396) = v17;
  *(a1 + 348) = v15;
  *(a1 + 364) = v16;
  v18 = *(a3 + 108);
  v19 = *(a3 + 124);
  v20 = *(a3 + 156);
  *(a1 + 444) = *(a3 + 140);
  *(a1 + 460) = v20;
  *(a1 + 412) = v18;
  *(a1 + 428) = v19;
  v21 = *(a3 + 188);
  v22 = *(a3 + 220);
  v23 = *(a3 + 172);
  *(a1 + 508) = *(a3 + 204);
  *(a1 + 524) = v22;
  *(a1 + 476) = v23;
  *(a1 + 492) = v21;
  result = *(a3 + 236);
  v25 = *(a3 + 252);
  v26 = *(a3 + 284);
  *(a1 + 572) = *(a3 + 268);
  *(a1 + 588) = v26;
  *(a1 + 540) = result;
  *(a1 + 556) = v25;
  *(a1 + 608) = 1;
  return result;
}

uint64_t BlueFin::GlPeReqBag::GetNonInstantaneousRequests@<X0>(uint64_t this@<X0>, _DWORD *a2@<X8>)
{
  v2 = 0;
  v3 = 0;
  do
  {
    v4 = *(this + v2);
    if (v4)
    {
      v5 = *(v4 + 8);
      v6 = *(v5 + 16);
      if (v6 != 1 || *(v5 + 22))
      {
        v3 |= 1 << v6;
      }
    }

    v2 += 8;
  }

  while (v2 != 576);
  *a2 = v3;
  return this;
}

uint64_t BlueFin::GlMeSrdObsBuf::ItFcn(uint64_t this, unsigned int a2, void *a3, uint64_t (*a4)(void *, unint64_t))
{
  v6 = a2;
  v7 = this;
  if (*(this + 8) == 1)
  {
    if (a2)
    {
      if (*(this + 9) < a2)
      {
        v8 = "ucNbElemSum<=m_ucNbElem";
        DeviceFaultNotify("glmesrd_obsbuf.cpp", 159, "ItFcn", "ucNbElemSum<=m_ucNbElem");
        v9 = 159;
        goto LABEL_8;
      }
    }

    else
    {
      v6 = *(this + 9);
    }

    LOBYTE(v10) = *(this + 10);
    if (!v10)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v10 = *(this + 10);
  if (!a2)
  {
    v6 = *(this + 10);
    if (!*(this + 10))
    {
LABEL_11:
      LOBYTE(v10) = *(this + 9);
    }

LABEL_12:
    if (!v6)
    {
      return this;
    }

    goto LABEL_13;
  }

  if (v10 < a2)
  {
    v8 = "ucNbElemSum<=m_ucElemIdx";
    DeviceFaultNotify("glmesrd_obsbuf.cpp", 164, "ItFcn", "ucNbElemSum<=m_ucElemIdx");
    v9 = 164;
LABEL_8:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_obsbuf.cpp", v9, v8);
  }

  do
  {
LABEL_13:
    LOBYTE(v10) = v10 - 1;
    this = a4(a3, *v7 + *(v7 + 11) * v10);
    if (this)
    {
      break;
    }

    if (!v10)
    {
      LOBYTE(v10) = *(v7 + 9);
    }

    --v6;
  }

  while (v6);
  return this;
}

uint64_t BlueFin::GlMeSrdEstBitPhs::AccumulateBitHistogram(BlueFin::GlMeSrdEstBitPhs *this, uint64_t a2, void *a3)
{
  if (!a2)
  {
    v9 = "potBufElem != nullptr";
    DeviceFaultNotify("glmesrd_bitphase.cpp", 1146, "AccumulateBitHistogram", "potBufElem != nullptr");
    v10 = 1146;
    goto LABEL_14;
  }

  if (!this)
  {
    v9 = "potItObsParam != nullptr";
    DeviceFaultNotify("glmesrd_bitphase.cpp", 1147, "AccumulateBitHistogram", "potItObsParam != nullptr");
    v10 = 1147;
LABEL_14:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_bitphase.cpp", v10, v9);
  }

  v4 = this + 8;
  if (*(this + *this + 4))
  {
    BlueFin::GlMeSrdBitHistBuf::operator+=(*(this + 45) + 108 * *this, a2);
    v5 = *this;
    if (*&v4[2 * v5])
    {
      v6 = *(this + 45);
      if (*(v6 + 108 * *this) >= *&v4[2 * *this])
      {
        result = 1;
        *(this + 1) |= 1 << v5;
        v8 = v5 + 1;
        *this = v8;
        if (v8 > 2u)
        {
          return result;
        }

        if (!*&v4[2 * v8])
        {
          return 1;
        }

        BlueFin::GlMeSrdBitHistBuf::operator+=(v6 + 108 * v8, v6 + 108 * v8 - 108);
      }
    }
  }

  return 0;
}

uint64_t (*BlueFin::GlMeSrdSatRptNonL1VetSm::my_top(uint64_t a1, unsigned __int8 *a2))()
{
  v2 = *a2;
  switch(v2)
  {
    case 7:
      BlueFin::QHsm::tran(a1, BlueFin::GlMeSrdSatRptNonL1VetSm::grid_search, "&GlMeSrdSatRptNonL1VetSm::grid_search");
      return 0;
    case 3:
      return 0;
    case 2:
      v3 = 0;
      *(a1 + 40) = 1;
      break;
    default:
      return BlueFin::QHsm::top;
  }

  return v3;
}

uint64_t BlueFin::GlPeComputeZRH::Compute(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, BlueFin::GlSetBase *this)
{
  if (!**this)
  {
    v19 = *(this + 8);
    if (v19 < 2)
    {
      return 0;
    }

    v20 = v19 - 1;
    v21 = (*this + 4);
    while (!*v21++)
    {
      if (!--v20)
      {
        return 0;
      }
    }
  }

  v10 = 0;
  v274 = 0;
  v270 = 0u;
  memset(v271, 0, 25);
  memset(v269, 0, sizeof(v269));
  v267 = 0u;
  v268 = 0u;
  memset(v266, 0, sizeof(v266));
  v11 = *(a2 + 28);
  v12 = *(a2 + 24);
  v272 = 0x4008000000000000;
  v13 = *a2;
  v14 = v12 * 0.001;
  if (v11 <= 2)
  {
    if (v11)
    {
      if (v11 == 1)
      {
        v43 = *(a2 + 8);
        v266[0] = *v43;
        *&v266[1] = *(v43 + 16);
        BlueFin::lla2ecef(v266, v316);
        *(&v266[1] + 8) = v316[0];
        *(&v266[2] + 1) = *&v316[1].f64[0];
        v44 = *v13;
        *&v267 = (*v13)[4];
        *(&v267 + 1) = v14;
        v268 = *(v44 + 5);
        v269[0] = 0.0;
        *&v270 = v44[7];
        v10 = 7;
      }

      else if (v11 == 2)
      {
        v24 = *(a2 + 8);
        v266[0] = *v24;
        *&v266[1] = *(v24 + 16);
        BlueFin::lla2ecef(v266, v316);
        *(&v266[1] + 8) = v316[0];
        *(&v266[2] + 1) = *&v316[1].f64[0];
        *&v267 = *(a2 + 16);
        *(&v267 + 1) = v14;
        v25 = *v13;
        v268 = *(*v13 + 1);
        v269[0] = v25[3];
        *&v270 = v25[4];
        v10 = 4;
      }

      goto LABEL_47;
    }

    goto LABEL_25;
  }

  if (v11 > 4)
  {
    if (v11 == 5)
    {
      v35 = *(a2 + 8);
      v36 = *(v35 + 8);
      *&v266[0] = *v35;
      *(v266 + 1) = v36;
      *&v266[1] = *(v35 + 16);
      *&v267 = *(a2 + 16);
      *&v270 = 0;
      v37 = *v266;
      v38 = __sincosf_stret(v37 * 0.017453);
      v39 = v36;
      v40 = __sincosf_stret(v39 * 0.017453);
      v273[0] = -(v38.__sinval * v40.__cosval);
      v273[1] = -(v38.__sinval * v40.__sinval);
      v273[2] = v38.__cosval;
      v273[4] = -v40.__sinval;
      v273[5] = v40.__cosval;
      v273[6] = 0.0;
      v273[8] = -(v38.__cosval * v40.__cosval);
      v273[9] = -(v38.__cosval * v40.__sinval);
      v273[10] = -v38.__sinval;
      v274 = 0x300000003;
      v41 = 6378100.0 / sqrtf(((v38.__sinval * -0.0066944) * v38.__sinval) + 1.0);
      v42 = *&v266[1];
      *(&v266[1] + 8) = vcvtq_f64_f32(vmul_n_f32(__PAIR64__(LODWORD(v40.__sinval), LODWORD(v40.__cosval)), v38.__cosval * (v41 + v42)));
      *(&v266[2] + 1) = (v38.__sinval * (v42 + (v41 * 0.99331)));
LABEL_43:
      v10 = 8;
      goto LABEL_47;
    }

    if (v11 != 6)
    {
      goto LABEL_47;
    }

LABEL_25:
    v26 = (*v13)[3];
    v27 = (*v13)[7];
    v316[0].f64[0] = (*v13)[1];
    v316[0].f64[1] = v26;
    v316[1].f64[0] = v27;
    BlueFin::ned2lla(*(a2 + 8), v316[0].f64, &v307);
    v266[0] = v307;
    *&v266[1] = v308;
    BlueFin::lla2ecef(v266, &v307);
    *(&v266[1] + 8) = v307;
    *(&v266[2] + 1) = v308;
    v28 = *v13;
    v268.f64[0] = (*v13)[2];
    v268.f64[1] = v28[4];
    v269[0] = v28[9];
    v29 = *(a2 + 32);
    v30 = *(a2 + 16);
    if ((v29 & 0x8000) != 0)
    {
      *(&v267 + 1) = v30 / 299792458.0 + *(a2 + 24) * 0.001;
      *&v267 = 0;
      LOBYTE(v271[3]) = 1;
    }

    else
    {
      *&v267 = v30 + v28[5];
      if ((v29 & 0x800) != 0)
      {
        *(&v267 + 1) = v14;
      }

      else
      {
        *(&v267 + 1) = v14 + v28[8];
      }
    }

    *&v270 = v28[6];
    v45 = *(a2 + 72);
    *(&v270 + 1) = *(a2 + 64) + v28[11];
    v271[0] = v45 + v28[9];
    v46 = *(a2 + 88);
    v271[1] = *(a2 + 80) + v28[12];
    v271[2] = v46 + v28[10];
    goto LABEL_43;
  }

  if (v11 == 3)
  {
    v31 = *(a2 + 40);
    if (!v31)
    {
      v245 = "rotInput.m_potNedVel";
      DeviceFaultNotify("glpe_computezrh.cpp", 2522, "CalcMeasState", "rotInput.m_potNedVel");
      v246 = "glpe_computezrh.cpp";
      v247 = 2522;
      goto LABEL_362;
    }

    if (!*(a2 + 56))
    {
      v245 = "rotInput.m_pdBcDot";
      DeviceFaultNotify("glpe_computezrh.cpp", 2523, "CalcMeasState", "rotInput.m_pdBcDot");
      v246 = "glpe_computezrh.cpp";
      v247 = 2523;
      goto LABEL_362;
    }

    v32 = *v13;
    if (fabs((*v13)[2]) >= 0.00000011920929)
    {
      v245 = "FABS_D(rotXHat(DKF_STATE_VX)) < FLT_EPSILON";
      DeviceFaultNotify("glpe_computezrh.cpp", 2524, "CalcMeasState", "FABS_D(rotXHat(DKF_STATE_VX)) < FLT_EPSILON");
      v246 = "glpe_computezrh.cpp";
      v247 = 2524;
      goto LABEL_362;
    }

    if (fabs(v32[4]) >= 0.00000011920929)
    {
      v245 = "FABS_D(rotXHat(DKF_STATE_VY)) < FLT_EPSILON";
      DeviceFaultNotify("glpe_computezrh.cpp", 2525, "CalcMeasState", "FABS_D(rotXHat(DKF_STATE_VY)) < FLT_EPSILON");
      v246 = "glpe_computezrh.cpp";
      v247 = 2525;
      goto LABEL_362;
    }

    if (fabs(v32[6]) >= 0.00000011920929)
    {
      v245 = "FABS_D(rotXHat(DKF_STATE_VZ)) < FLT_EPSILON";
      DeviceFaultNotify("glpe_computezrh.cpp", 2526, "CalcMeasState", "FABS_D(rotXHat(DKF_STATE_VZ)) < FLT_EPSILON");
      v246 = "glpe_computezrh.cpp";
      v247 = 2526;
      goto LABEL_362;
    }

    if (fabs(v32[1]) >= 0.00000011920929)
    {
      v245 = "FABS_D(rotXHat(DKF_STATE_X)) < FLT_EPSILON";
      DeviceFaultNotify("glpe_computezrh.cpp", 2527, "CalcMeasState", "FABS_D(rotXHat(DKF_STATE_X)) < FLT_EPSILON");
      v246 = "glpe_computezrh.cpp";
      v247 = 2527;
      goto LABEL_362;
    }

    if (fabs(v32[3]) >= 0.00000011920929)
    {
      v245 = "FABS_D(rotXHat(DKF_STATE_Y)) < FLT_EPSILON";
      DeviceFaultNotify("glpe_computezrh.cpp", 2528, "CalcMeasState", "FABS_D(rotXHat(DKF_STATE_Y)) < FLT_EPSILON");
      v246 = "glpe_computezrh.cpp";
      v247 = 2528;
      goto LABEL_362;
    }

    if (fabs(v32[5]) >= 0.00000011920929)
    {
      v245 = "FABS_D(rotXHat(DKF_STATE_Z)) < FLT_EPSILON";
      DeviceFaultNotify("glpe_computezrh.cpp", 2529, "CalcMeasState", "FABS_D(rotXHat(DKF_STATE_Z)) < FLT_EPSILON");
      v246 = "glpe_computezrh.cpp";
      v247 = 2529;
      goto LABEL_362;
    }

    if ((*(a2 + 34) & 2) != 0)
    {
      v47 = *(a2 + 48);
      if (!v47)
      {
        v245 = "rotInput.m_potNedAcc";
        DeviceFaultNotify("glpe_computezrh.cpp", 2533, "CalcMeasState", "rotInput.m_potNedAcc");
        v246 = "glpe_computezrh.cpp";
        v247 = 2533;
        goto LABEL_362;
      }

      *&v269[1] = *v47;
      v269[3] = *(v47 + 16);
      v48 = v31[1].f64[0];
      v49 = *(a2 + 96);
      v316[0] = vmulq_n_f64(*v31, v49);
      v316[1].f64[0] = v48 * v49;
      BlueFin::ned2lla(*(a2 + 8), v316[0].f64, &v307);
      v266[0] = v307;
      *&v266[1] = v308;
      BlueFin::lla2ecef(v266, &v307);
      *(&v266[1] + 8) = v307;
      *(&v266[2] + 1) = v308;
      v50 = *(a2 + 96);
      v51 = *(a2 + 40);
      v52 = *(a2 + 48);
      v268 = vmlaq_n_f64(*v51, *v52, v50);
      v269[0] = v51[1].f64[0] + v50 * v52[1].f64[0];
      v10 = 13;
    }

    else
    {
      v33 = *(a2 + 8);
      v266[0] = *v33;
      *&v266[1] = *(v33 + 16);
      BlueFin::lla2ecef(v266, v316);
      *(&v266[1] + 8) = v316[0];
      *(&v266[2] + 1) = *&v316[1].f64[0];
      v34 = *(a2 + 40);
      v268 = *v34;
      v269[0] = v34[1].f64[0];
      v10 = 12;
    }

    v53 = *v13;
    v54 = (*v13)[8];
    *&v267 = *(a2 + 16) + (*v13)[7];
    *&v270 = **(a2 + 56) + v54;
    *(&v267 + 1) = v14;
    v55 = *(a2 + 72);
    *(&v270 + 1) = *(a2 + 64) + v53[11];
    v271[0] = v55 + v53[9];
    v56 = *(a2 + 88);
    v271[1] = *(a2 + 80) + v53[12];
    v271[2] = v56 + v53[10];
    v272 = *(a2 + 104);
  }

  else
  {
    if (!*(a2 + 40))
    {
      v245 = "rotInput.m_potNedVel";
      DeviceFaultNotify("glpe_computezrh.cpp", 2569, "CalcMeasState", "rotInput.m_potNedVel");
      v246 = "glpe_computezrh.cpp";
      v247 = 2569;
      goto LABEL_362;
    }

    if (!*(a2 + 56))
    {
      v245 = "rotInput.m_pdBcDot";
      DeviceFaultNotify("glpe_computezrh.cpp", 2570, "CalcMeasState", "rotInput.m_pdBcDot");
      v246 = "glpe_computezrh.cpp";
      v247 = 2570;
      goto LABEL_362;
    }

    v15 = *v13;
    if (fabs((*v13)[2]) >= 0.00000011920929)
    {
      v245 = "FABS_D(rotXHat(DKF_STATE_VX)) < FLT_EPSILON";
      DeviceFaultNotify("glpe_computezrh.cpp", 2571, "CalcMeasState", "FABS_D(rotXHat(DKF_STATE_VX)) < FLT_EPSILON");
      v246 = "glpe_computezrh.cpp";
      v247 = 2571;
      goto LABEL_362;
    }

    if (fabs(v15[4]) >= 0.00000011920929)
    {
      v245 = "FABS_D(rotXHat(DKF_STATE_VY)) < FLT_EPSILON";
      DeviceFaultNotify("glpe_computezrh.cpp", 2572, "CalcMeasState", "FABS_D(rotXHat(DKF_STATE_VY)) < FLT_EPSILON");
      v246 = "glpe_computezrh.cpp";
      v247 = 2572;
      goto LABEL_362;
    }

    if (fabs(v15[6]) >= 0.00000011920929)
    {
      v245 = "FABS_D(rotXHat(DKF_STATE_VZ)) < FLT_EPSILON";
      DeviceFaultNotify("glpe_computezrh.cpp", 2573, "CalcMeasState", "FABS_D(rotXHat(DKF_STATE_VZ)) < FLT_EPSILON");
      v246 = "glpe_computezrh.cpp";
      v247 = 2573;
      goto LABEL_362;
    }

    if (fabs(v15[1]) >= 0.00000011920929)
    {
      v245 = "FABS_D(rotXHat(DKF_STATE_X)) < FLT_EPSILON";
      DeviceFaultNotify("glpe_computezrh.cpp", 2574, "CalcMeasState", "FABS_D(rotXHat(DKF_STATE_X)) < FLT_EPSILON");
      v246 = "glpe_computezrh.cpp";
      v247 = 2574;
      goto LABEL_362;
    }

    if (fabs(v15[3]) >= 0.00000011920929)
    {
      v245 = "FABS_D(rotXHat(DKF_STATE_Y)) < FLT_EPSILON";
      DeviceFaultNotify("glpe_computezrh.cpp", 2575, "CalcMeasState", "FABS_D(rotXHat(DKF_STATE_Y)) < FLT_EPSILON");
      v246 = "glpe_computezrh.cpp";
      v247 = 2575;
      goto LABEL_362;
    }

    if (fabs(v15[5]) >= 0.00000011920929)
    {
      v245 = "FABS_D(rotXHat(DKF_STATE_Z)) < FLT_EPSILON";
      DeviceFaultNotify("glpe_computezrh.cpp", 2576, "CalcMeasState", "FABS_D(rotXHat(DKF_STATE_Z)) < FLT_EPSILON");
      v246 = "glpe_computezrh.cpp";
      v247 = 2576;
      goto LABEL_362;
    }

    v16 = *(a2 + 8);
    v266[0] = *v16;
    *&v266[1] = *(v16 + 16);
    BlueFin::lla2ecef(v266, v316);
    *(&v266[1] + 8) = v316[0];
    *(&v266[2] + 1) = *&v316[1].f64[0];
    v17 = *(a2 + 40);
    v268 = *v17;
    v269[0] = v17[1].f64[0];
    v18 = (*v13)[8];
    *&v267 = *(a2 + 16) + (*v13)[7];
    *&v270 = **(a2 + 56) + v18;
    *(&v267 + 1) = v14;
    v10 = 12;
  }

LABEL_47:
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x47);
  }

  v57 = *a3;
  if (*(*a3 + 12) >= 0x15u)
  {
    v58 = 21;
  }

  else
  {
    v58 = *(*a3 + 12);
  }

  if (a3[2])
  {
    v59 = v58;
  }

  else
  {
    v59 = *(*a3 + 12);
  }

  if (!v10)
  {
    v245 = "ucNbStates > 0";
    DeviceFaultNotify("glpe_computezrh.cpp", 117, "Compute", "ucNbStates > 0");
    v246 = "glpe_computezrh.cpp";
    v247 = 117;
    goto LABEL_362;
  }

  v259 = this;
  v60 = BlueFin::GlSetBase::Cnt(this);
  if (v59 >= v60)
  {
    v61 = v60;
  }

  else
  {
    v61 = v59;
  }

  v62 = v61;
  *(v57 + 2) = v61;
  v63 = *v57;
  v64 = 8 * v61;
  bzero((v63 + 8), v64);
  v65 = a3[1];
  v65[2] = v62;
  bzero((*v65 + 8), v64);
  v66 = a3[3];
  if (v66)
  {
    v66[2] = v62;
    bzero((*v66 + 8), v64);
  }

  v67 = a3[2];
  if (v67)
  {
    BlueFin::BigMatrix::Null(v67, v62, v10);
  }

  v261 = *(v259 + 8);
  memcpy(v265, *v259, 4 * v261);
  v263 = 0;
  v262 = 0;
  v264 = v265[0];
  BlueFin::GlSetIterator::operator++(&v261);
  v23 = 0;
  if (v262 != v261)
  {
    v23 = 0;
    v69 = 0;
    v70 = 0x300000001;
    v71 = 299792458.0;
    *&v72 = 299792.458;
    *&v73 = 2500.0;
    v74 = 1.0;
    v260 = a4;
    do
    {
      if (v59 < ++v69)
      {
        return v23;
      }

      v75 = v263;
      v76 = a4 + 56 * v263;
      v77 = *(a2 + 32);
      if ((v77 & 0x800) != 0)
      {
        v78 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(v76 + 36) - *(v76 + 36) + BlueFin::GlSvId::s_aucSvId2gnss[*(v76 + 32)]];
        if (v78 == 11 || v78 == 5)
        {
          *&v267 = *(**a2 + 64) + *&v267;
        }
      }

      v80 = *(v76 + 44);
      if (v80 <= 3)
      {
        if (v80 > 1)
        {
          if (v80 != 2)
          {
            if ((v77 & 8) == 0)
            {
              v86 = *(a2 + 28);
              *(**a3 + 8 * v69) = *&v266[1] - *v76;
              *(*a3[1] + 8 * v69) = 0;
              v87 = a3[3];
              if (v87)
              {
                *(*v87 + 8 * v69) = *(v76 + 8) * *(v76 + 8);
              }

              v88 = a3[2];
              if (v88)
              {
                if (v86 == 1)
                {
                  v126 = *(v266 + 1) * 0.0174532925;
                  v127 = __sincos_stret(*v266 * 0.0174532925);
                  v128 = __sincos_stret(v126);
                  v23 = 0;
                  v129 = *(*(v88 + 8) + 8 * v69);
                  v129[1] = -(v127.__cosval * v128.__cosval);
                  v129[2] = -(v127.__cosval * v128.__sinval);
                  v129[3] = -v127.__sinval;
                }

                else
                {
                  if (v86)
                  {
                    v245 = "false";
                    DeviceFaultNotify("glpe_computezrh.cpp", 296, "getZRH_FromAlMeas", "false");
                    v246 = "glpe_computezrh.cpp";
                    v247 = 296;
LABEL_362:
                    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v246, v247, v245);
                  }

                  v23 = 0;
                  *(*(*(v88 + 8) + 8 * v69) + 56) = 0x3FF0000000000000;
                }
              }

              else
              {
                v23 = 0;
              }

              a4 = v260;
              goto LABEL_333;
            }

            goto LABEL_330;
          }

          if ((v77 & 8) != 0)
          {
            goto LABEL_330;
          }

          v106 = *(a2 + 28);
          v293 = 0;
          v291 = 0u;
          v292 = 0;
          memset(v290, 0, sizeof(v290));
          v23 = (*(*a1 + 24))(a1, v76 + 32, *(v76 + 16), v266, v290, v77 & 1, (v77 >> 15) & 1, (v77 >> 5) & 1, 0);
          if (v23)
          {
            goto LABEL_330;
          }

          v321 = 0;
          v315 = 0;
          v306 = 0;
          v299 = -91.0;
          v289 = 0;
          LOBYTE(v287[0]) = *(v76 + 32);
          v287[1] = *(v76 + 36);
          v288 = *(v76 + 40);
          if ((*(*(a1 + 1512) + ((LOBYTE(v287[0]) >> 3) & 0x1C)) >> (v287[0] & 0x1F)))
          {
            if (BlueFin::GlPeSatPosCache::GetLOSFromCache(a1 + 24, (v76 + 32), &v300))
            {
              v107 = vsubq_f64(v290[0], *(&v266[1] + 8));
              v108 = v290[1].f64[0] - *(&v266[2] + 1);
              v109 = sqrt(vaddvq_f64(vmulq_f64(v107, v107)) + v108 * v108);
              if (v109 == 0.0)
              {
                goto LABEL_359;
              }

              v315 = v70;
              v307 = vmulq_n_f64(v107, v74 / v109);
              *&v308 = v108 * (v74 / v109);
            }

            else
            {
              v109 = (*(**(a1 + 4264) + 80))(*(a1 + 4264), v290, &v266[1] + 8, v266, &v307, &v300, 0, 0);
            }

            v144 = BlueFin::GlPeElAzCache::Get((a1 + 296), v287);
            v145 = *(v144 + 1);
            v289 = *(v144 + 2);
            v299 = v145;
          }

          else
          {
            if (a3[5])
            {
              v142 = &v289;
            }

            else
            {
              v142 = 0;
            }

            if (a3[4])
            {
              v143 = &v299;
            }

            else
            {
              v143 = 0;
            }

            v109 = (*(**(a1 + 4264) + 80))(*(a1 + 4264), v290, &v266[1] + 8, v266, &v307, &v300, v142, v143);
          }

          *(**a3 + 8 * v69) = *v76;
          v146 = -(v290[2].f64[0] * *(&v307 + 1) + v290[1].f64[1] * *&v307 + v290[2].f64[1] * *&v308);
          if (*(*(a1 + 4272) + 120021) == 1)
          {
            v285 = 0;
            v281 = 0u;
            memset(v282, 0, sizeof(v282));
            v283 = 0u;
            v284 = 0;
            v298 = 0;
            v295 = 0;
            v252 = (*(*a1 + 24))(a1, v76 + 32, (*(v76 + 16) - 100), v266, &v281, 0, (*(a2 + 32) >> 15) & 1, (*(a2 + 32) >> 5) & 1, 0);
            v147 = (*(**(a1 + 4264) + 80))(*(a1 + 4264), &v281, &v266[1] + 8, v266, &v296, v294, 0, 0);
            v148 = (*(*a1 + 24))(a1, v76 + 32, (*(v76 + 16) + 100), v266, &v281, 0, (*(a2 + 32) >> 15) & 1, (*(a2 + 32) >> 5) & 1, 0);
            (*(**(a1 + 4264) + 80))(*(a1 + 4264), &v281, &v266[1] + 8, v266, &v296, v294, 0, 0);
            if (!(v252 | v148))
            {
              v146 = (v147 - v149) * 1000.0 / 200.0;
            }
          }

          v298 = v70;
          v296 = v268;
          v297 = v269[0];
          BlueFin::Matrix::mult(v294, &v296, 1, &v300, v269[0]);
          *(*a3[1] + 8 * v69) = -v146 - v294[0].n128_f64[0] + *&v270 + *(&v291 + 1) * -299792458.0;
          v150 = a3[3];
          if (v150)
          {
            v151 = *(v76 + 8) * *(v76 + 8);
            v152 = *v150;
            *(*v150 + 8 * v69) = v151;
            if ((*(a2 + 33) & 0x40) != 0)
            {
              v299 = fmaxf(v299, 1.0);
              *(v152 + 8 * v69) = v151 * (1.0 / sinf(fmaxf(v299, 20.0) * 0.017453));
            }
          }

          v153 = a3[2];
          if (v153)
          {
            if (v106 > 2)
            {
              if (v106 != 6)
              {
                if (v106 == 4)
                {
                  v197 = *(*(v153 + 8) + 8 * v69);
                  *(v197 + 16) = -v300.f64[0];
                  *(v197 + 32) = -v300.f64[1];
                  *(v197 + 48) = -*&v301;
                  *(v197 + 64) = 0x3FF0000000000000;
                }

                else if (v106 == 3)
                {
                  v155 = -v300.f64[0];
                  v156 = *(*(v153 + 8) + 8 * v69);
                  *(v156 + 16) = -v300.f64[0];
                  v157 = -v300.f64[1];
                  *(v156 + 32) = -v300.f64[1];
                  v158 = -*&v301;
                  *(v156 + 48) = -*&v301;
                  *(v156 + 64) = 0x3FF0000000000000;
                  if ((*(a2 + 34) & 2) != 0)
                  {
                    *(v156 + 104) = v269[2] * v157 + v269[1] * v155 + v269[3] * v158;
                  }
                }

                goto LABEL_234;
              }
            }

            else if (v106)
            {
              if (v106 == 1)
              {
                v286 = v70;
                v281 = *(&v290[1] + 8);
                v282[0] = *&v290[2].f64[1];
                BlueFin::Matrix::mult(&v275, &v281, 1, &v307, v290[2].f64[1]);
                BlueFin::Matrix::mult(v316, &v275, &v307);
                BlueFin::Matrix::operator-=(v316, &v281);
                BlueFin::Matrix::operator/=(v316, v109);
                v196 = *(*(v153 + 8) + 8 * v69);
                *(v196 + 8) = v316[0];
                *(v196 + 24) = v316[1].f64[0];
                *(v196 + 40) = vnegq_f64(v300);
                *(v196 + 56) = 0x3FF0000000000000;
              }

              else if (v106 == 2)
              {
                v154 = *(*(v153 + 8) + 8 * v69);
                *(v154 + 8) = -v300.f64[0];
                *(v154 + 16) = -v300.f64[1];
                *(v154 + 24) = -*&v301;
                *(v154 + 32) = 0x3FF0000000000000;
              }

              goto LABEL_234;
            }

            v164 = *(*(v153 + 8) + 8 * v69);
            *(v164 + 16) = -v300.f64[0];
            *(v164 + 32) = -v300.f64[1];
            *(v164 + 48) = 0x3FF0000000000000;
          }

LABEL_234:
          v198 = a3[4];
          if (v198)
          {
            *(v198 + 4 * v69 - 4) = v299;
          }

          v199 = a3[5];
          a4 = v260;
          if (v199)
          {
            *(v199 + 4 * v69 - 4) = v289;
          }

          goto LABEL_330;
        }

        if (!v80)
        {
          if (*(a2 + 28) == 5)
          {
            v93 = a3[2];
            if (!v93)
            {
              v23 = 1;
              a4 = v260;
LABEL_331:
              v244 = a3[8];
              if (!v244)
              {
                return v23;
              }

              *(*v244 + ((*(v76 + 32) >> 3) & 0x1C)) |= 1 << *(v76 + 32);
              goto LABEL_333;
            }

            a4 = v260;
            if (BlueFin::GlPeSatPosCache::GetHFromCache(a1 + 24, (v76 + 32), v69, v93))
            {
              goto LABEL_133;
            }

            v320 = 0;
            v317 = 0u;
            v318 = 0u;
            v319 = 0;
            memset(v316, 0, sizeof(v316));
            v23 = (*(*a1 + 24))(a1, v76 + 32, *(v76 + 16), v266, v316, *(a2 + 32) & 1, (*(a2 + 32) >> 15) & 1, (*(a2 + 32) >> 5) & 1, 0);
            if (!v23)
            {
              v94 = v316[1].f64[0] - *(&v266[2] + 1);
              *&v311 = v70;
              v95 = vcvt_f32_f64(vsubq_f64(v316[0], *(&v266[1] + 8)));
              v96 = 1.0 / sqrtf((COERCE_FLOAT(vmul_f32(v95, v95).i32[1]) + (v95.f32[0] * v95.f32[0])) + (v94 * v94));
              v254 = vmul_n_f32(v95, v96);
              v97 = v96 * v94;
              *&v307 = v254;
              *(&v307 + 2) = v96 * v94;
              BlueFin::FMatrix::FMatrix(&v300, &v307, 0, v273);
              v98 = v316[1].f64[1];
              v99 = *&v317;
              v100 = -(v254.f32[1] * v99) - (v254.f32[0] * v98);
              v101 = *(&v317 + 1);
              v102 = v100 - (v101 * v97);
              v103 = *(v300.f64 + 1);
              v104 = *(*(a3[2] + 8) + 8 * v69);
              *(v104 + 8) = -*v300.f64;
              *(v104 + 24) = -v103;
              v105 = -*&v300.f64[1];
              *(v104 + 40) = 0x3FF0000000000000;
              *(v104 + 56) = v105;
              *(v104 + 64) = v102;
            }

            goto LABEL_330;
          }

          v255 = *(a2 + 28);
          v121 = a3[1];
          v305 = 0;
          v302 = 0u;
          v303 = 0u;
          v304 = 0;
          v300 = 0u;
          v301 = 0u;
          v23 = (*(*a1 + 24))(a1, v76 + 32, *(v76 + 16), v266, &v300, v77 & 1, (v77 & 0x18000) != 0, (v77 >> 5) & 1, v76 & (v77 >> 15));
          if (v23)
          {
            goto LABEL_329;
          }

          v250 = v121;
          v321 = 0;
          v315 = 0;
          LODWORD(v275) = 0;
          LODWORD(v290[0].f64[0]) = 0;
          if ((~*(a2 + 32) & 0x40008) != 0)
          {
            v125 = v255;
            if ((*(*(a1 + 1512) + ((*(v76 + 32) >> 3) & 0x1C)) >> (*(v76 + 32) & 0x1F)))
            {
              if (BlueFin::GlPeSatPosCache::GetLOSFromCache(a1 + 24, (v76 + 32), &v307))
              {
                v140 = vsubq_f64(v300, *(&v266[1] + 8));
                v141 = *&v301 - *(&v266[2] + 1);
                v123 = sqrt(vaddvq_f64(vmulq_f64(v140, v140)) + v141 * v141);
                if (v123 == 0.0)
                {
LABEL_359:
                  v245 = "dGeometricRangeM != 0.0";
                  DeviceFaultNotify("glpe_satposif.h", 177, "svrange", "dGeometricRangeM != 0.0");
                  v246 = "glpe_satposif.h";
                  v247 = 177;
                  goto LABEL_362;
                }

                v321 = v70;
                v316[0] = vmulq_n_f64(v140, v74 / v123);
                v316[1].f64[0] = v141 * (v74 / v123);
              }

              else
              {
                v123 = (*(**(a1 + 4264) + 80))(*(a1 + 4264), &v300, &v266[1] + 8, v266, v316, &v307, 0, 0);
              }

              v165 = BlueFin::GlPeElAzCache::Get((a1 + 296), (v76 + 32));
              if (!v165)
              {
                v245 = "pElAz != nullptr";
                DeviceFaultNotify("glpe_computezrh.cpp", 512, "getZRH_FromPRMeas", "pElAz != nullptr");
                v246 = "glpe_computezrh.cpp";
                v247 = 512;
                goto LABEL_362;
              }

              v166 = *(v165 + 1);
              LODWORD(v275) = *(v165 + 2);
              LODWORD(v290[0].f64[0]) = v166;
            }

            else
            {
              v123 = (*(**(a1 + 4264) + 80))(*(a1 + 4264), &v300, &v266[1] + 8, v266, v316, &v307, &v275, v290);
            }

            v124 = 0.0;
            if (v255 <= 6 && ((1 << v255) & 0x43) != 0)
            {
              v124 = -(*&v302 * v316[0].f64[1] + *(&v301 + 1) * v316[0].f64[0] + *(&v302 + 1) * v316[1].f64[0]);
            }
          }

          else
          {
            v122 = vsubq_f64(v300, *(&v266[1] + 8));
            v123 = sqrt(vaddvq_f64(vmulq_f64(v122, v122)) + (*&v301 - *(&v266[2] + 1)) * (*&v301 - *(&v266[2] + 1)));
            v124 = 0.0;
            v125 = v255;
          }

          v167 = a3[4];
          if (v167)
          {
            *(v167 + 4 * v69 - 4) = LODWORD(v290[0].f64[0]);
          }

          v168 = a3[5];
          if (v168)
          {
            *(v168 + 4 * v69 - 4) = v275;
          }

          v169 = a3[6];
          if (v169)
          {
            v170 = v169 + 136 * v69;
            if ((v170 - 136) != &v307)
            {
              v171 = v307;
              v172 = v308;
              v173 = v310;
              *(v170 - 104) = v309;
              *(v170 - 88) = v173;
              *(v170 - 136) = v171;
              *(v170 - 120) = v172;
              v174 = v311;
              v175 = v312;
              v176 = v314;
              *(v170 - 40) = v313;
              *(v170 - 24) = v176;
              *(v170 - 72) = v174;
              *(v170 - 56) = v175;
              *(v170 - 8) = v315;
            }
          }

          v177 = BlueFin::GlSvId::s_aucSvId2gnss[*(v76 + 32)];
          if ((*(a2 + 33) & 4) != 0 && ((*(*a1 + 72))(a1, v76 + 32, v125) & 1) == 0)
          {
            GlCustomLog(13, "<ZRH> Time Unc Fail Sig %02d %d\n", *(v76 + 32), *(v76 + 36));
            v23 = 2;
            goto LABEL_329;
          }

          v178 = *&v303 * v71;
          v179 = *&v73;
          if ((*(v76 + 49) & 1) == 0)
          {
            v178 = v178 + (*(*a1 + 88))(a1, v76 + 32, 0);
          }

          v180 = *&v72;
          (*(*a1 + 96))(a1, v177);
          if (v177 == 5)
          {
            v181 = v181 + *(&v270 + 1);
            if ((*(a2 + 33) & 8) != 0)
            {
              v181 = 0.0;
            }
          }

          v249 = v177;
          if (v177 == 4)
          {
            v182 = v181 + v271[1];
          }

          else
          {
            v182 = v181;
          }

          InterSystemHwBiasM = BlueFin::GlPeGnssHwBiasMgr::GetInterSystemHwBiasM(*(a1 + 4328), (v76 + 32), 0, 0);
          v186 = *(v76 + 36);
          v187 = InterSystemHwBiasM;
          v188 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v186 - v186 + BlueFin::GlSvId::s_aucSvId2gnss[*(v76 + 32)]];
          if (v188 == 6)
          {
            v187 = v271[2] + v187;
          }

          if (v188 == 12 || v186 == 2)
          {
            v187 = v271[0] + v187;
          }

          if (v186 < 1)
          {
            v190 = v250;
          }

          else
          {
            v190 = v250;
            if (v186 != 3 && *(v76 + 49))
            {
              v187 = 0.0;
            }
          }

          v191 = v69;
          *(*v190 + 8 * v69) = v187 + v182 + v123 + *&v267 - v178;
          v192 = *(a2 + 32);
          if ((v192 & 0x40000) != 0)
          {
            v193 = BlueFin::GlPeComputeZRHUtil::computeBitResolution((v76 + 32), (*(a2 + 32) >> 4) & 1);
            AtmosDelay = BlueFin::GlPeComputeZRHUtil::resolveIntegers(v259, v75, v193, v69, v190, v260);
            v191 = v69;
            *(v76 + 24) = AtmosDelay;
            v192 = *(a2 + 32);
          }

          *&v72 = v180;
          if ((v192 & 8) != 0)
          {
            goto LABEL_328;
          }

          if (v255 != 1 && (v192 & 0x40) != 0)
          {
            v194 = v191;
            if (v186 < 1)
            {
              v195 = 0;
            }

            else
            {
              v195 = *(v76 + 49);
            }

            AtmosDelay = BlueFin::GlPeComputeZRH::GetAtmosDelay(a1, (v76 + 32), *(v76 + 16), v266, *&v275, *v290[0].f64, v184, v195 & 1, 0, v287);
            v191 = v194;
            *(*v250 + 8 * v194) = v205 + *(*v250 + 8 * v194);
          }

          *(**a3 + 8 * v191) = *v76 + *(v76 + 24) * v180;
          v206 = *(*a3[1] + 8 * v191);
          v207 = a3[2];
          if (!v207)
          {
            goto LABEL_272;
          }

          if (v255 <= 2)
          {
            if (v255)
            {
              if (v255 == 1)
              {
                v213 = *(*(v207 + 8) + 8 * v191);
                *(v213 + 8) = -v316[0].f64[0];
                *(v213 + 16) = -v316[0].f64[1];
                *(v213 + 24) = -v316[1].f64[0];
                *(v213 + 32) = 0x3FF0000000000000;
                *(v213 + 56) = v124;
              }

              goto LABEL_272;
            }
          }

          else if (v255 != 6)
          {
            if (v255 == 4)
            {
              v215 = *(*(v207 + 8) + 8 * v191);
              *(v215 + 8) = -*&v307;
              *(v215 + 24) = -*(&v307 + 1);
              *(v215 + 56) = 0x3FF0000000000000;
              *(v215 + 40) = -*&v308;
            }

            else if (v255 == 3)
            {
              v208 = -*&v307;
              v209 = *(*(v207 + 8) + 8 * v191);
              *(v209 + 8) = -*&v307;
              v210 = -*(&v307 + 1);
              *(v209 + 24) = -*(&v307 + 1);
              *(v209 + 56) = 0x3FF0000000000000;
              v211 = -*&v308;
              *(v209 + 40) = -*&v308;
              if (v249 == 5)
              {
                *(v209 + 88) = 0x3FF0000000000000;
              }

              if (v186 == 2 && v249 != 4)
              {
                v212 = 72;
                goto LABEL_259;
              }

              if (v249 == 4)
              {
                v216 = *(v76 + 36);
                if ((v216 - 2) < 2)
                {
                  v212 = 96;
                  goto LABEL_259;
                }

                if (!v216)
                {
                  v212 = 80;
LABEL_259:
                  *(v209 + v212) = 0x3FF0000000000000;
                }
              }

              if ((*(a2 + 34) & 2) != 0)
              {
                *(v209 + 104) = v268.f64[1] * v210 + v268.f64[0] * v208 + v269[0] * v211;
              }
            }

LABEL_272:
            v217 = a3[3];
            if (!v217)
            {
              goto LABEL_328;
            }

            if (v255 == 1)
            {
              *(*v217 + 8 * v191) = *(v76 + 8) * *(v76 + 8);
              goto LABEL_328;
            }

            v218 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(v76 + 36) - *(v76 + 36) + BlueFin::GlSvId::s_aucSvId2gnss[*(v76 + 32)]];
            v257 = v218 < 9;
            v219 = *(a2 + 32);
            if ((v219 & 4) != 0)
            {
              v222 = 30.0;
              if ((v219 & 0x200) == 0)
              {
                v222 = 20.0;
              }

              if (v222 <= *v290[0].f64)
              {
                v220 = 1.0;
                v221 = 0.0;
                goto LABEL_289;
              }

              v221 = 0.0;
              v253 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(v76 + 36) - *(v76 + 36) + BlueFin::GlSvId::s_aucSvId2gnss[*(v76 + 32)]];
              v218 = v191;
              v223 = BlueFin::SmoothThresh(AtmosDelay, 0.0, v222 + -5.0, v222 - *v290[0].f64);
              v191 = v218;
              LOBYTE(v218) = v253;
              v220 = v223;
              if ((v219 & 0x2000) == 0)
              {
                goto LABEL_290;
              }
            }

            else
            {
              v220 = 1.0;
              v221 = 0.0;
              if ((v219 & 2) != 0 && *v290[0].f64 <= 15.0)
              {
                if (*v290[0].f64 >= 5.0)
                {
                  v221 = ((*v290[0].f64 + -5.0) * -5.0 + 50.0) * ((*v290[0].f64 + -5.0) * -5.0 + 50.0) * 4.0;
                  if ((v219 & 0x2000) != 0)
                  {
                    goto LABEL_285;
                  }
                }

                else
                {
                  v221 = v179;
                  if ((v219 & 0x2000) != 0)
                  {
                    goto LABEL_285;
                  }
                }

LABEL_290:
                v224 = v191;
LABEL_291:
                v226 = (*(*a1 + 40))(a1, v76 + 32);
                if (*(v76 + 32) - 76 <= 0x3E)
                {
                  BlueFin::GlPeTimeManager::GetTime(*(a1 + 4288), 1, v294);
                  BlueFin::GlPeGnssTime::GetUtc(v294, &v296);
                  v227.i64[0] = 0;
                  BlueFin::GlUtcTime::GlUtcTime(v294, 0x7E3u, 9u, 1u, v227, v228, v229);
                  BlueFin::GlUtcTime::operator-(&v281, LODWORD(v296.f64[1]), HIDWORD(v296.f64[1]), v294[0].n128_u32[2], v294[0].n128_u32[3]);
                  if (BYTE8(v281))
                  {
                    v226 = v226 + 10.0;
                  }
                }

                v258 = v257 & (0x134u >> v218);
                MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(*(a1 + 4320), (v76 + 32), 0, 0);
                if (MeMeas)
                {
                  v231 = MeMeas;
                  v232 = 0.0;
                  if (*v290[0].f64 <= 85.0)
                  {
                    if (*v290[0].f64 <= 40.0)
                    {
                      v232 = 60.0;
                    }

                    else
                    {
                      v232 = (50.0 / tanf(*v290[0].f64 * 0.017453));
                    }
                  }

                  v233 = *(a2 + 32);
                  if ((v233 & 0x80) == 0)
                  {
LABEL_301:
                    v235 = 0;
                    goto LABEL_315;
                  }

                  v236 = *(v231 + 5);
                  if (v236 == 4)
                  {
LABEL_305:
                    v237 = 60.0;
                  }

                  else
                  {
                    if (v236 != 3)
                    {
                      if (v236)
                      {
                        goto LABEL_301;
                      }

                      goto LABEL_305;
                    }

                    v237 = 30.0;
                  }

                  if (v232 >= v237 || (v233 & 0x200) != 0)
                  {
                    v232 = v237;
                  }

                  if (v258)
                  {
                    v232 = v232 * 0.1;
                  }

                  v235 = (v232 * v232);
LABEL_315:
                  v234 = v235;
                }

                else
                {
                  v233 = *(a2 + 32);
                  v234 = 0.0;
                }

                v239 = v234 + (v226 * v226) + *(v76 + 8) * *(v76 + 8);
                v240 = *v217;
                *(*v217 + 8 * v224) = v239;
                if ((v233 & 4) != 0)
                {
                  goto LABEL_323;
                }

                v241 = v258;
                if ((v233 & 0x2000) == 0)
                {
                  v241 = 1;
                }

                if ((v241 & 1) == 0)
                {
LABEL_323:
                  v242 = v220 * v239;
                }

                else
                {
                  if ((v233 & 2) == 0)
                  {
                    if ((v233 & 0x100) != 0)
                    {
                      v242 = fmin(v239, 100.0);
                      goto LABEL_324;
                    }

LABEL_325:
                    if ((v233 & 0x10000) != 0)
                    {
                      v243 = v234 + *(v76 + 8) * *(v76 + 8);
                      *(v240 + 8 * v224) = v243;
                      if ((v233 & 0x100) != 0)
                      {
                        *(v240 + 8 * v224) = fmin(v243, 100.0);
                      }
                    }

LABEL_328:
                    v23 = 0;
                    *&v73 = v179;
                    v74 = 1.0;
LABEL_329:
                    a4 = v260;
LABEL_330:
                    if (v23)
                    {
                      goto LABEL_331;
                    }

                    goto LABEL_333;
                  }

                  v242 = v221 + v239;
                }

LABEL_324:
                *(v240 + 8 * v224) = v242;
                goto LABEL_325;
              }

LABEL_289:
              if ((v219 & 0x2000) == 0)
              {
                goto LABEL_290;
              }
            }

LABEL_285:
            v224 = v191;
            v225 = (1.0 / sinf(fmaxf(*v290[0].f64, 10.0) * 0.017453));
            if (v220 <= v225)
            {
              v220 = v225;
            }

            goto LABEL_291;
          }

          v214 = *(*(v207 + 8) + 8 * v191);
          *(v214 + 8) = -*&v307;
          *(v214 + 24) = -*(&v307 + 1);
          *(v214 + 40) = 0x3FF0000000000000;
          *(v214 + 56) = -*&v308;
          *(v214 + 64) = v124;
          goto LABEL_272;
        }

        if (v80 != 1)
        {
          goto LABEL_363;
        }

        if ((v77 & 8) != 0)
        {
          goto LABEL_330;
        }

        v83 = *(&v267 + 1);
        *(**a3 + 8 * v69) = *v76;
        *(*a3[1] + 8 * v69) = v83;
        v84 = a3[3];
        if (v84)
        {
          *(*v84 + 8 * v69) = *(v76 + 8) * *(v76 + 8);
        }

        v85 = a3[2];
        if (!v85)
        {
          goto LABEL_133;
        }

        v23 = 0;
        *(*(*(v85 + 8) + 8 * v69) + 64) = 0x3FF0000000000000;
      }

      else
      {
        if (v80 > 7)
        {
          if (v80 == 8)
          {
            if ((v77 & 8) == 0)
            {
              v114 = *(a2 + 28);
              v316[0].f64[0] = *v76;
              *(v316 + 8) = *(v266 + 8);
              BlueFin::lla2ned(v316[0].f64, v266, 0, &v307);
              *(**a3 + 8 * v69) = v307;
              *(*a3[1] + 8 * v69) = 0;
              v115 = a3[3];
              if (v115)
              {
                *(*v115 + 8 * v69) = *(v76 + 8) * *(v76 + 8);
              }

              v116 = a3[2];
              if (v116)
              {
                if (v114)
                {
                  v245 = "eCallingFunction == CALLING_FROMKF";
                  DeviceFaultNotify("glpe_computezrh.cpp", 390, "getZRH_FromLatMeas", "eCallingFunction == CALLING_FROMKF");
                  v246 = "glpe_computezrh.cpp";
                  v247 = 390;
                  goto LABEL_362;
                }

                *(*(*(v116 + 8) + 8 * v69) + 8) = 0x3FF0000000000000;
              }

LABEL_133:
              v23 = 0;
              goto LABEL_333;
            }

            goto LABEL_330;
          }

          if (v80 == 9)
          {
            if ((v77 & 8) == 0)
            {
              v117 = *(a2 + 28);
              v118 = *v76;
              v316[0].f64[0] = *v266;
              v316[0].f64[1] = v118;
              v316[1].f64[0] = *&v266[1];
              BlueFin::lla2ned(v316[0].f64, v266, 0, &v307);
              *(**a3 + 8 * v69) = *(&v307 + 1);
              *(*a3[1] + 8 * v69) = 0;
              v119 = a3[3];
              if (v119)
              {
                *(*v119 + 8 * v69) = *(v76 + 8) * *(v76 + 8);
              }

              v120 = a3[2];
              if (v120)
              {
                if (v117)
                {
                  v245 = "eCallingFunction == CALLING_FROMKF";
                  DeviceFaultNotify("glpe_computezrh.cpp", 423, "getZRH_FromLonMeas", "eCallingFunction == CALLING_FROMKF");
                  v246 = "glpe_computezrh.cpp";
                  v247 = 423;
                  goto LABEL_362;
                }

                *(*(*(v120 + 8) + 8 * v69) + 24) = 0x3FF0000000000000;
              }

              goto LABEL_133;
            }

            goto LABEL_330;
          }

          if (v80 != 10)
          {
            goto LABEL_363;
          }

          v81 = *(a2 + 28);
          v285 = 0;
          v281 = 0u;
          memset(v282, 0, sizeof(v282));
          v283 = 0u;
          v284 = 0;
          v280 = 0;
          v277 = 0u;
          v278 = 0u;
          v279 = 0;
          v275 = 0u;
          v276 = 0u;
          v82 = (*(*a1 + 24))(a1, v76 + 32, *(v76 + 16), v266, &v281, 1, 0, 0, 0);
          if (v82 || (v82 = (*(*a1 + 24))(a1, v76 + 32, (*(v76 + 16) - *(v76 + 20)), v266, &v275, 0, 0, 0, 0), v82))
          {
            v23 = v82;
            goto LABEL_329;
          }

          v248 = v73;
          v251 = v72;
          v256 = v70;
          v130 = v71;
          v321 = 0;
          v315 = 0;
          v306 = 0;
          v287[0] = -1028259840;
          v299 = 0.0;
          LOBYTE(v290[0].f64[0]) = *(v76 + 32);
          HIDWORD(v290[0].f64[0]) = *(v76 + 36);
          LOWORD(v290[0].f64[1]) = *(v76 + 40);
          v131 = v275;
          v132 = *(&v266[1] + 1);
          v133 = *&v266[2];
          v134 = *&v276;
          v135 = *(&v266[2] + 1);
          v136 = *(**(a1 + 4264) + 80);
          if ((*(*(a1 + 1512) + ((LOBYTE(v290[0].f64[0]) >> 3) & 0x1C)) >> (LOBYTE(v290[0].f64[0]) & 0x1F)))
          {
            v137 = v136();
            v138 = BlueFin::GlPeElAzCache::Get((a1 + 296), v290);
            v139 = *(v138 + 1);
            v299 = *(v138 + 2);
            v287[0] = v139;
          }

          else
          {
            v137 = v136();
          }

          v159 = *v76;
          *(**a3 + 8 * v69) = *v76;
          *(*a3[1] + 8 * v69) = sqrt((*&v131 - v132) * (*&v131 - v132) + (*(&v131 + 1) - v133) * (*(&v131 + 1) - v133) + (v134 - v135) * (v134 - v135)) - v137 + (*&v278 - *&v283) * -299792458.0 - v159;
          v160 = a3[3];
          if (v160)
          {
            *(*v160 + 8 * v69) = *(v76 + 8) * *(v76 + 8) + 0.0000999999975;
          }

          v161 = a3[2];
          v71 = v130;
          v72 = v251;
          v70 = v256;
          v73 = v248;
          v74 = 1.0;
          if (v161)
          {
            if (v81 <= 1)
            {
              if (v81)
              {
                if (v81 == 1)
                {
                  v298 = v256;
                  v296 = *&v282[1];
                  v297 = *&v282[3];
                  BlueFin::Matrix::mult(v294, &v296, 1, &v307, *&v282[3]);
                  BlueFin::Matrix::mult(v316, v294, &v307);
                  BlueFin::Matrix::operator-=(v316, &v296);
                  BlueFin::Matrix::operator/=(v316, v137);
                  v163 = *(*(v161 + 8) + 8 * v69);
                  *(v163 + 8) = v316[0];
                  *(v163 + 24) = v316[1].f64[0];
                  *(v163 + 40) = vnegq_f64(v300);
                  *(v163 + 56) = 0x3FF0000000000000;
                }
              }

              else
              {
                v202 = *(*(v161 + 8) + 8 * v69);
                *(v202 + 16) = -v300.f64[0];
                *(v202 + 32) = -v300.f64[1];
                *(v202 + 48) = 0x3FF0000000000000;
              }
            }

            else
            {
              switch(v81)
              {
                case 2:
                  v200 = *(*(v161 + 8) + 8 * v69);
                  *(v200 + 8) = -v300.f64[0];
                  *(v200 + 16) = -v300.f64[1];
                  *(v200 + 24) = -*&v301;
                  *(v200 + 32) = 0x3FF0000000000000;
                  break;
                case 4:
                  v201 = *(*(v161 + 8) + 8 * v69);
                  *(v201 + 16) = -v300.f64[0];
                  *(v201 + 32) = -v300.f64[1];
                  *(v201 + 48) = -*&v301;
                  *(v201 + 64) = 0x3FF0000000000000;
                  if (!v160)
                  {
                    v245 = "rotOutput.m_potR";
                    DeviceFaultNotify("glpe_computezrh.cpp", 1232, "getZRH_FromADRMeas", "rotOutput.m_potR");
                    v246 = "glpe_computezrh.cpp";
                    v247 = 1232;
                    goto LABEL_362;
                  }

                  break;
                case 3:
                  v162 = *(*(v161 + 8) + 8 * v69);
                  *(v162 + 16) = -v300.f64[0];
                  *(v162 + 32) = -v300.f64[1];
                  *(v162 + 48) = -*&v301;
                  *(v162 + 64) = 0x3FF0000000000000;
                  if (!v160)
                  {
                    v245 = "rotOutput.m_potR";
                    DeviceFaultNotify("glpe_computezrh.cpp", 1217, "getZRH_FromADRMeas", "rotOutput.m_potR");
                    v246 = "glpe_computezrh.cpp";
                    v247 = 1217;
                    goto LABEL_362;
                  }

                  break;
              }
            }
          }

          v203 = a3[4];
          if (v203)
          {
            *(v203 + 4 * v69 - 4) = v287[0];
          }

          v204 = a3[5];
          a4 = v260;
          if (v204)
          {
            *(v204 + 4 * v69 - 4) = v299;
          }

          v23 = 0;
          goto LABEL_330;
        }

        if (v80 == 4)
        {
          v110 = *(a2 + 28);
          v111 = v268.f64[0];
          *(**a3 + 8 * v69) = *v76;
          *(*a3[1] + 8 * v69) = v111;
          v112 = a3[3];
          if (v112)
          {
            *(*v112 + 8 * v69) = *(v76 + 8) * *(v76 + 8);
          }

          v113 = a3[2];
          if (!v113)
          {
            goto LABEL_133;
          }

          if (v110)
          {
            v245 = "eCallingFunction == CALLING_FROMKF";
            DeviceFaultNotify("glpe_computezrh.cpp", 326, "getZRH_FromVxMeas", "eCallingFunction == CALLING_FROMKF");
            v246 = "glpe_computezrh.cpp";
            v247 = 326;
            goto LABEL_362;
          }

          v23 = 0;
          *(*(*(v113 + 8) + 8 * v69) + 16) = 0x3FF0000000000000;
        }

        else
        {
          if (v80 != 5)
          {
LABEL_363:
            v245 = "0";
            DeviceFaultNotify("glpe_computezrh.cpp", 207, "Compute", "0");
            v246 = "glpe_computezrh.cpp";
            v247 = 207;
            goto LABEL_362;
          }

          v89 = *(a2 + 28);
          v90 = v268.f64[1];
          *(**a3 + 8 * v69) = *v76;
          *(*a3[1] + 8 * v69) = v90;
          v91 = a3[3];
          if (v91)
          {
            *(*v91 + 8 * v69) = *(v76 + 8) * *(v76 + 8);
          }

          v92 = a3[2];
          if (!v92)
          {
            goto LABEL_133;
          }

          if (v89)
          {
            v245 = "eCallingFunction == CALLING_FROMKF";
            DeviceFaultNotify("glpe_computezrh.cpp", 357, "getZRH_FromVyMeas", "eCallingFunction == CALLING_FROMKF");
            v246 = "glpe_computezrh.cpp";
            v247 = 357;
            goto LABEL_362;
          }

          v23 = 0;
          *(*(*(v92 + 8) + 8 * v69) + 32) = 0x3FF0000000000000;
        }
      }

LABEL_333:
      BlueFin::GlSetIterator::operator++(&v261);
    }

    while (v262 != v261);
  }

  return v23;
}