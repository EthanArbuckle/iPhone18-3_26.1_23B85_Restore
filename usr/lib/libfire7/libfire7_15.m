uint64_t BlueFin::GlMeSrdAsicCorrVecTrkMsmt::GlMeSrdAsicCorrVecTrkMsmt(uint64_t result, int a2)
{
  *result = 0;
  *(result + 4) = 0;
  *(result + 6) = 0;
  *(result + 8) = a2;
  *(result + 12) = 1;
  *(result + 16) = 1281;
  *(result + 52) = 0;
  *(result + 54) = 0;
  *(result + 56) = a2;
  *(result + 60) = 2;
  *(result + 64) = 1281;
  *(result + 100) = 0;
  *(result + 102) = 0;
  *(result + 104) = a2;
  *(result + 108) = 3;
  *(result + 112) = 1281;
  *(result + 148) = -1;
  *(result + 150) = 0;
  *(result + 152) = 0;
  *(result + 156) = 0;
  *(result + 160) = 575;
  *(result + 172) = 0;
  *(result + 164) = 0;
  *(result + 180) = 0;
  return result;
}

double BlueFin::GlMeSrdObsBuf::SumFcn(BlueFin::GlMeSrdObsBuf *this, unsigned int a2, void *a3, double (*a4)(void *, void *))
{
  v6 = a2;
  if (*(this + 8) == 1)
  {
    if (*(this + 9) >= a2)
    {
      v8 = *(this + 10);
      goto LABEL_5;
    }

    v13 = "ucNbElemSum<=m_ucNbElem";
    DeviceFaultNotify("glmesrd_obsbuf.cpp", 78, "SumFcn", "ucNbElemSum<=m_ucNbElem");
    v14 = 78;
LABEL_16:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_obsbuf.cpp", v14, v13);
  }

  v8 = *(this + 10);
  if (v8 < a2)
  {
    v13 = "ucNbElemSum<=m_ucElemIdx";
    DeviceFaultNotify("glmesrd_obsbuf.cpp", 80, "SumFcn", "ucNbElemSum<=m_ucElemIdx");
    v14 = 80;
    goto LABEL_16;
  }

LABEL_5:
  v9 = v8 - a2;
  if (v8 >= a2)
  {
    if (!a2)
    {
      return 0.0;
    }
  }

  else
  {
    v9 += *(this + 9);
  }

  v10 = 0.0;
  do
  {
    v10 = v10 + a4(a3, (*this + *(this + 11) * v9));
    v11 = *(this + 9);
    if (v11 > (v9 + 1))
    {
      LOBYTE(v11) = 0;
    }

    v9 = v9 + 1 - v11;
    --v6;
  }

  while (v6);
  return v10;
}

uint64_t BlueFin::GlMeSrdDspMeasAux::GlMeSrdDspMeasAux(uint64_t a1, uint64_t a2, char a3, _DWORD *a4, double a5)
{
  *a1 = &unk_2A1F0C0C0;
  *(a1 + 8) = *a2;
  v7 = *(a2 + 4);
  *(a1 + 16) = *(a2 + 8);
  *(a1 + 12) = v7;
  *(a1 + 20) = a3;
  *(a1 + 24) = a5;
  *(a1 + 32) = 0;
  *(a1 + 34) = 0;
  *(a1 + 36) = *a4;
  *(a1 + 40) = 0;
  *(a1 + 52) = 0;
  *(a1 + 44) = vneg_f32(0x80000000800000);
  *(a1 + 56) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 192) = 0;
  BlueFin::GlMeSrdDspMeasAuxTrackRslts::Clear(a1 + 64);
  if (!*a4)
  {
    DeviceFaultNotify("glmesrd_dsp_meas_aux.cpp", 946, "GlMeSrdDspMeasAux", "otMsmtSource.GetEnum() != GLMESRD_MSMT_SRC_INVALID");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_dsp_meas_aux.cpp", 946, "otMsmtSource.GetEnum() != GLMESRD_MSMT_SRC_INVALID");
  }

  return a1;
}

BlueFin::GlMeSrdGridResults *BlueFin::GlMeSrdGridResults::GlMeSrdGridResults(BlueFin::GlMeSrdGridResults *this)
{
  *(this + 14) = 0;
  v2 = this + 1289;
  *(this + 6) = 0;
  *this = 0;
  *(this + 4) = 0;
  bzero(this + 16, 0x428uLL);
  for (i = 0; i != 192; i += 48)
  {
    *(this + i + 1080) = 0;
    v4 = (this + i + 1084);
    *v4 = 0uLL;
    v4[1] = 0uLL;
    *(v4 + 28) = 0uLL;
  }

  *(this + 1288) = 0;
  *(this + 1272) = 0u;
  *v2 = 0x203020F043F0606;
  *(v2 + 2) = -16711421;
  *(this + 1301) = -1;
  *(this + 163) = 0;
  return this;
}

double BlueFin::GlMeSrdEstCodePrm::CalcEarlyMinusLateDllValidityTestStatSummand(BlueFin::GlMeSrdEstCodePrm *this, float *a2, void *a3, float a4, float a5)
{
  if (!a2)
  {
    v18 = "potBufElem != nullptr";
    DeviceFaultNotify("glmesrd_codeprm.cpp", 1707, "CalcEarlyMinusLateDllValidityTestStatSummand", "potBufElem != nullptr");
    v19 = 1707;
    goto LABEL_16;
  }

  if (!this)
  {
    v18 = "potTestStatParam != nullptr";
    DeviceFaultNotify("glmesrd_codeprm.cpp", 1708, "CalcEarlyMinusLateDllValidityTestStatSummand", "potTestStatParam != nullptr");
    v19 = 1708;
LABEL_16:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_codeprm.cpp", v19, v18);
  }

  v6 = *(a2 + 2);
  LOBYTE(a4) = *(a2 + 6);
  LOBYTE(a5) = *(this + 16);
  v7 = LODWORD(a4) / LODWORD(a5);
  v8 = *(this + 1);
  v10 = *(this + 2);
  v9 = *(this + 3);
  v11 = 0.5;
  if ((v7 * 1000.0) > 0.0 || (v11 = -0.5, (v7 * 1000.0) < 0.0))
  {
    v12 = (v11 + (v7 * 1000.0));
    switch(v12)
    {
      case 200:
        v13 = 0.64;
        v14 = 0.36;
        goto LABEL_13;
      case 600:
        v13 = 0.16;
        goto LABEL_11;
      case 400:
        v13 = 0.36;
LABEL_11:
        v14 = 0.04;
        goto LABEL_13;
    }
  }

  v13 = ((1.0 - v7) * (1.0 - v7));
  v14 = (((v7 * -2.0) + 1.0) * ((v7 * -2.0) + 1.0));
LABEL_13:
  v15 = BlueFin::GlMeSrdSatReport::CalcDbHzToTargetCohSnrInLin(this, *this, *(this + 3));
  v16 = v13 * ((((v9 / v8) * v10) * v15) + (((v9 / v8) * v10) * v15));
  *&v16 = ((1.0 - v14) * ((v9 * v10) / v8) + (v16 + v16) * v7) * (((v9 * v10) / v8) + ((v9 * v10) / v8)) / v6;
  return ((*a2 * *a2) / *&v16);
}

uint64_t BlueFin::GlMeDSPMeas::GetMeasTrackMode(BlueFin::GlMeDSPMeas *this)
{
  v1 = *(this + 35) - 10;
  if (v1 > 7)
  {
    return 0;
  }

  else
  {
    return dword_298A3A5E0[v1];
  }
}

float BlueFin::GlMeReceiverParametersIfc::GetBbHwInterSysBiasS(BlueFin::GlMeReceiverParametersIfc *this, const BlueFin::GlSignalId *a2)
{
  v3 = (*(*this + 64))(this);

  return BlueFin::GlMeBbHwInterSysBias::GetBias(v3, a2);
}

uint64_t BlueFin::GlMeSrdReceiverParameters::GetBbHwInterSysBiasStruct(BlueFin::GlMeSrdReceiverParameters *this)
{
  v1 = *(*BlueFin::GlMeSrdReceiverParameters::rRxIfc(this) + 64);

  return v1();
}

float BlueFin::GlMeBbHwInterSysBias::GetBias(BlueFin::GlMeBbHwInterSysBias *this, const BlueFin::GlSignalId *a2)
{
  v2 = BlueFin::GlSvId::s_aucSvId2gnss[*a2];
  if (v2 <= 2)
  {
    if (!BlueFin::GlSvId::s_aucSvId2gnss[*a2])
    {
      v4 = *(a2 + 1);
      if (v4 > 1)
      {
        if (v4 == 2)
        {
          goto LABEL_41;
        }

        if (v4 == 3)
        {
          return *this;
        }
      }

      else
      {
        if (!v4)
        {
          return *this;
        }

        if (v4 == 1)
        {
LABEL_27:
          this = (this + 20);
          return *this;
        }
      }

      DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 156, "GetBias", "0");
      v7 = 156;
      goto LABEL_52;
    }

    if (v2 == 1)
    {
      if (!*(a2 + 1))
      {
        this = (this + 4);
        return *this;
      }

      DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 166, "GetBias", "0");
      v7 = 166;
    }

    else
    {
      if (v2 != 2)
      {
        goto LABEL_50;
      }

      if (!*(a2 + 1))
      {
        this = (this + 8);
        return *this;
      }

      DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 176, "GetBias", "0");
      v7 = 176;
    }

LABEL_52:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_receiver_parameters.cpp", v7, "0");
  }

  if (BlueFin::GlSvId::s_aucSvId2gnss[*a2] > 4u)
  {
    if (v2 == 5)
    {
      v6 = *(a2 + 1);
      switch(v6)
      {
        case 2:
          this = (this + 40);
          return *this;
        case 1:
          this = (this + 28);
          return *this;
        case 0:
          this = (this + 16);
          return *this;
      }

      DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 221, "GetBias", "0");
      v7 = 221;
    }

    else
    {
      if (v2 != 6)
      {
        goto LABEL_50;
      }

      if (!*(a2 + 1))
      {
        this = (this + 44);
        return *this;
      }

      DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 231, "GetBias", "0");
      v7 = 231;
    }

    goto LABEL_52;
  }

  if (v2 == 3)
  {
    v5 = *(a2 + 1);
    if (v5 <= 1)
    {
      if (!v5)
      {
        return *this;
      }

      if (v5 == 1)
      {
        goto LABEL_27;
      }

LABEL_40:
      DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 191, "GetBias", "0");
      v7 = 191;
      goto LABEL_52;
    }

    if (v5 != 2)
    {
      if (v5 == 3)
      {
        return *this;
      }

      goto LABEL_40;
    }

LABEL_41:
    this = (this + 32);
    return *this;
  }

  if (v2 != 4)
  {
LABEL_50:
    DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 236, "GetBias", "0");
    v7 = 236;
    goto LABEL_52;
  }

  v3 = *(a2 + 1);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      this = (this + 36);
    }

    else if (v3 != 3)
    {
LABEL_37:
      DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 207, "GetBias", "0");
      v7 = 207;
      goto LABEL_52;
    }
  }

  else if (v3)
  {
    if (v3 != 1)
    {
      goto LABEL_37;
    }
  }

  else
  {
    this = (this + 12);
  }

  return *this;
}

double BlueFin::GlSignalId::GetInterSignalBiasInMs(unsigned __int8 *a1, uint64_t a2)
{
  if (*(a1 + 4) >= 0x23Fu)
  {
    v10 = "IsValid()";
    DeviceFaultNotify("glsignalid.cpp", 600, "GetInterSignalBiasInMs", "IsValid()");
    v11 = 600;
    goto LABEL_22;
  }

  v2 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(a1 + 1) - *(a1 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a1]];
  if (v2 > 0xE)
  {
    v10 = "false";
    DeviceFaultNotify("glsignalid.cpp", 631, "GetInterSignalBiasInMs", "false");
    v11 = 631;
LABEL_22:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.cpp", v11, v10);
  }

  result = 0.0;
  v4 = 1 << v2;
  if ((v4 & 0x784B) != 0)
  {
    return result;
  }

  if ((v4 & 0x1B4) == 0)
  {
    v10 = "false";
    DeviceFaultNotify("glsignalid.cpp", 624, "GetInterSignalBiasInMs", "false");
    v11 = 624;
    goto LABEL_22;
  }

  v5 = (*(*a2 + 184))(a2, 0.0);
  v6 = (v5 & 0xF000FFFF) == 0x30000011 || (v5 & 0xF000FFFF) == 805306383;
  v7 = -0.0467008798;
  if (v6)
  {
    v7 = -0.0470918866;
  }

  v8 = 0.0250244379;
  v9 = (v5 & 0xF000FFFE) == 0x30000012 || (v5 & 0xF000FFFE) == 805306388;
  if (!v9 && (v5 & 0xF0FFFFFE) != 0x30000010)
  {
    v8 = 0.0250244379;
    if ((v5 & 0xF0FFFFFE) != 0x30FF0010)
    {
      v8 = 0.0;
    }
  }

  return v7 + v8;
}

double BlueFin::GlMeSrdAsicConfig::GetCodeNcoDrift(_DWORD *a1, uint64_t a2)
{
  if ((*(*a1 + 256))(a1))
  {
    return 0.000581992;
  }

  v5 = a1[3] & 0xF000FFFE;
  if (v5 == 805306386)
  {
    if (a1[547] == 4 && (*(a2 + 4) - 1) < 2)
    {
      return -0.000555118;
    }

    if (a1[546] != 4)
    {
      return -0.000232172;
    }

    v9 = *(a2 + 4);
    if (v9)
    {
      v7 = v9 == 3;
    }

    else
    {
      v7 = 1;
    }

    result = -0.000232172;
    v8 = -0.000555118;
  }

  else
  {
    result = 0.0;
    if (v5 != 805306388)
    {
      return result;
    }

    if (a1[547] == 4 && (*(a2 + 4) - 1) < 2)
    {
      return -0.011247561;
    }

    if (a1[546] != 4)
    {
      return -0.024885477;
    }

    v6 = *(a2 + 4);
    if (v6)
    {
      v7 = v6 == 3;
    }

    else
    {
      v7 = 1;
    }

    result = -0.024885477;
    v8 = -0.011247561;
  }

  if (v7)
  {
    return v8;
  }

  return result;
}

uint64_t BlueFin::GlPeGloEphemeris::GetEphDataSrc(BlueFin::GlPeGloEphemeris *this)
{
  result = (*(*this + 192))(this, 38);
  if (result != 1)
  {
    if ((*(*this + 192))(this, 39) == 1)
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t BlueFin::GlPeGloEphemeris::GetCmpUnsignedField(BlueFin::GlPeGloEphemeris *this, int a2)
{
  v2 = *(this + 2);
  switch(a2)
  {
    case 2:
      return (v2[9] >> 12) & 1;
    case 5:
      return (*v2 >> 13) & 0xFFF;
    case 6:
      return (*v2 >> 20) & 0x1F;
    case 7:
      return (*v2 >> 14) & 0x3F;
    case 8:
      v5 = *v2;
      goto LABEL_20;
    case 9:
      return (v2[2] >> 10) & 0x7F;
    case 10:
      return (v2[8] >> 20) & 3;
    case 22:
      return (v2[2] >> 18) & 7;
    case 23:
      return (v2[2] >> 20) & 1;
    case 24:
      return (v2[4] >> 4) & 3;
    case 25:
      HIDWORD(v4) = v2[7];
      LODWORD(v4) = v2[8];
      return (v4 >> 6) >> 21;
    case 26:
      return (v2[7] >> 6) & 0xF;
    case 27:
      return (v2[8] >> 22) & 0x1F;
    case 29:
      return v2[7] >> 11;
    case 30:
      return (*v2 >> 25) & 3;
    case 31:
      return (v2[2] >> 17) & 1;
    case 32:
      return (v2[4] >> 15) & 1;
    case 33:
      return (v2[7] >> 10) & 1;
    case 34:
      return (v2[4] >> 3) & 1;
    case 35:
      return (v2[8] >> 19) & 1;
    case 36:
      return (v2[8] >> 14) & 0x1F;
    case 38:
      v5 = v2[9];
LABEL_20:
      result = (v5 >> 13) & 1;
      break;
    case 39:
      result = (v2[9] >> 11) & 1;
      break;
    default:
      DeviceFaultNotify("glpe_glnephmgr.cpp", 441, "GetCmpUnsignedField", "0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_glnephmgr.cpp", 441, "0");
  }

  return result;
}

uint64_t BlueFin::GlPeGloEphemeris::isHealthy(BlueFin::GlPeGloEphemeris *this)
{
  if ((*(*this + 192))(this, 23) || (*(*this + 192))(this, 34) || (*(*this + 192))(this, 26) > 0xE)
  {
    return 0;
  }

  result = (*(*this + 192))(this, 27);
  if (result)
  {
    return (*(*this + 192))(this, 27) < 0x19;
  }

  return result;
}

uint64_t BlueFin::GlPeGloEphemeris::GetGnssId@<X0>(BlueFin::GlPeGloEphemeris *this@<X0>, _BYTE *a2@<X8>)
{
  result = (*(*this + 192))(this, 27);
  *a2 = result;
  return result;
}

uint64_t BlueFin::GlPeSensListener::SetExtSensInfo(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, int8x16_t a9, int8x16_t a10, int8x16_t a11)
{
  v11 = *(a1 + 8);
  if (v11)
  {
    v12 = *a2 < 1;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    return 0;
  }

  else
  {
    return BlueFin::GlPosEng::InjectExtSensInfo(v11, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  }
}

double BlueFin::GlPeSensStats::ProcessSensData(uint64_t a1, unsigned int a2, uint64_t a3, float64x2_t *a4)
{
  v4 = a4->f64[0];
  v5 = *(a3 + 40);
  v6 = v5;
  a4->f64[0] = v6;
  a4[1].f64[0] = v4;
  a4[1].f64[1] = -(v4 - (a2 + v6) * 0.001);
  v7 = *(a3 + 48);
  v8 = *(a3 + 32);
  v9.f64[1] = 0.0;
  v9.f64[0] = v7 * v7;
  v10 = 0.0;
  if (v8 < 2)
  {
    v14 = -1000.0;
    v15 = 1000.0;
    v19 = 1000.0;
  }

  else
  {
    v11 = 0;
    v12 = v8 - 1;
    v13 = (a3 + 136);
    v14 = -1000.0;
    v15 = 1000.0;
    do
    {
      v16 = *(v13 - 4);
      v17 = (v16 - v5);
      if (v17 <= 0)
      {
        DeviceFaultNotify("glpe_sens_stats.cpp", 113, "ProcessSensData", "sTimeDiff > 0");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_sens_stats.cpp", 113, "sTimeDiff > 0");
      }

      a4->f64[0] = v16;
      v18.f64[0] = *v13;
      v7 = v7 + v18.f64[0];
      if (v14 < v18.f64[0])
      {
        v14 = *v13;
      }

      if (v15 > v18.f64[0])
      {
        v15 = *v13;
      }

      v18.f64[1] = (v18.f64[0] - *(v13 - 22)) * 0.5;
      v11 += v17;
      v9 = vaddq_f64(v9, vmulq_f64(v18, v18));
      v13 += 22;
      v5 = v16;
      --v12;
    }

    while (v12);
    v19 = v11 / (v8 - 1);
    v7 = v7 / v8;
    v9 = vdivq_f64(v9, vdupq_lane_s64(COERCE__INT64(v8), 0));
    if (v9.f64[0] - v7 * v7 >= 0.0)
    {
      v10 = v9.f64[0] - v7 * v7;
    }
  }

  v20.f64[1] = v19;
  v20.f64[0] = a2;
  *a4 = vmulq_f64(v20, vdupq_n_s64(0x3F50624DD2F1A9FCuLL));
  a4[2].f64[0] = v7;
  a4[2].f64[1] = sqrt(v10);
  result = v14 - v15;
  a4[3].f64[0] = v14 - v15;
  a4[4] = v9;
  return result;
}

uint64_t BlueFin::GlPeShrimpSensBuffer::Write(uint64_t result, int a2, uint64_t a3, unsigned int a4, int a5)
{
  if (a4)
  {
    v5 = *(result + 1692);
    v6 = (a3 + 8);
    v7 = a4;
    do
    {
      v8 = (result + 28 * (v5 % 0x3C));
      v9 = v8[6];
      v10 = *(v6 - 4);
      if (v9)
      {
        v11 = a2 - v9 + v10;
        if (v11 < 0)
        {
          v11 = -v11;
        }

        if (v11 >= 0x65)
        {
          *(result + 1696) = 1;
        }
      }

      else
      {
        v8[6] = v10 + a2;
      }

      if (a5 > 2)
      {
        switch(a5)
        {
          case 3:
            v8[3] = *v6;
            break;
          case 4:
            v8[4] = *v6;
            break;
          case 5:
            v8[5] = *v6;
            break;
          default:
LABEL_26:
            DeviceFaultNotify("glpe_shrimpsensbuffer.cpp", 88, "Write", "false");
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_shrimpsensbuffer.cpp", 88, "false");
        }
      }

      else if (a5)
      {
        if (a5 == 1)
        {
          v8[1] = *v6;
        }

        else
        {
          if (a5 != 2)
          {
            goto LABEL_26;
          }

          v8[2] = *v6;
        }
      }

      else
      {
        *v8 = *v6;
      }

      v6 += 22;
      ++v5;
      --v7;
    }

    while (v7);
  }

  v12 = *(result + 1684) | (1 << a5);
  *(result + 1684) = v12;
  if (v12 == *(result + 1680))
  {
    *(result + 1692) = (*(result + 1692) + a4) % 0x3C;
  }

  return result;
}

double BlueFin::GlPeSensStats::updateGyr(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, double result)
{
  if (a3 <= 2)
  {
    *(a1 + 585) = 1;
    v5 = *(a4 + 88);
    if (fabs(v5 + 999.0) < 0.1)
    {
      if (a2 - *(a1 + 588) <= 0xEA60)
      {
        v6 = *(a1 + 586) + 1;
      }

      else
      {
        v6 = 1;
      }

      *(a1 + 588) = a2;
      *(a1 + 586) = v6;
    }

    if (fabs(v5 + 998.0) < 0.1)
    {
      *(a1 + 592) = 1;
    }

    return BlueFin::GlPeSensStats::ProcessSensData(a1, a2, a4, (a1 + 96 * a3 + 600));
  }

  return result;
}

BOOL BlueFin::GlPeShrimpKf::SensorUpdate(uint64_t a1, double *a2, double *a3, int a4)
{
  BlueFin::GlPeShrimpKf::UpdatePlacementContext(a1, a2, a3, a4);
  v8 = *(a1 + 8);
  if (v8)
  {
    if (v8 == 2)
    {
      BlueFin::GlPeShrimpKf::DoInitDoneSensor(a1, a2, a3, a4);
    }

    else
    {
      if (v8 != 1)
      {
        DeviceFaultNotify("glpe_shrimpkf.cpp", 1466, "SensorUpdate", "false");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_shrimpkf.cpp", 1466, "false");
      }

      BlueFin::GlPeShrimpKf::DoInitTiltSensor(a1, a2, a3, a4);
    }
  }

  *(a1 + 5040) = 1;
  *(a1 + 4856) = a4;
  if (*(a1 + 5042) == 1)
  {
    *(a1 + 5032) = sqrt(*(a1 + *(*a1 - 24) + 112) * *(a1 + *(*a1 - 24) + 112) + *(a1 + *(*a1 - 24) + 104) * *(a1 + *(*a1 - 24) + 104));
    *(a1 + 5042) = 0;
    *(a1 + 4920) = 0u;
    *(a1 + 4936) = 0u;
    *(a1 + 4952) = 0u;
    *(a1 + 4968) = 0u;
  }

  return *(a1 + 8) != 2 || *(a1 + 5816) || (*(a1 + 4864) - a4 + ((*(a1 + 4656) + 1.0) * 1000.0)) > 25;
}

void BlueFin::GlPeShrimpKf::UpdatePlacementContext(uint64_t a1, double *a2, double *a3, int a4)
{
  v5 = *a3 - *(a1 + 4632);
  v6 = a3[1] - *(a1 + 4640);
  v7 = a3[2] - *(a1 + 4648);
  v8 = (a4 - *(a1 + 4856)) * 0.001;
  if (v5 >= 0.0)
  {
    v9 = *a3 - *(a1 + 4632);
  }

  else
  {
    v9 = -v5;
  }

  v10 = v9 * 57.2957795;
  v11 = v9 * 57.2957795 < 200.0;
  v12 = -v6;
  v13 = -v7;
  if (v11 && (v6 >= 0.0 ? (v14 = a3[1] - *(a1 + 4640)) : (v14 = -v6), v14 * 57.2957795 < 200.0 && (v7 >= 0.0 ? (v15 = a3[2] - *(a1 + 4648)) : (v15 = -v7), v15 * 57.2957795 < 200.0)))
  {
    *(a1 + 470) = 0;
  }

  else
  {
    if (v10 >= 200.0)
    {
      v16 = *(a1 + 470);
      *(a1 + 470) = v16 + 1;
      if (v10 >= 400.0)
      {
        *(a1 + 470) = v16 + 2;
      }
    }

    if (v6 >= 0.0)
    {
      v12 = v6;
    }

    v17 = v12 * 57.2957795;
    if (v17 >= 200.0)
    {
      v18 = *(a1 + 470);
      *(a1 + 470) = v18 + 1;
      if (v17 >= 400.0)
      {
        *(a1 + 470) = v18 + 2;
      }
    }

    if (v7 >= 0.0)
    {
      v13 = v7;
    }

    v19 = v13 * 57.2957795;
    if (v19 >= 200.0)
    {
      v20 = *(a1 + 470);
      *(a1 + 470) = v20 + 1;
      if (v19 >= 400.0)
      {
        *(a1 + 470) = v20 + 2;
      }
    }
  }

  if (v8 >= 0.5 || (v21 = sqrt(v6 * v6 + v5 * v5 + v7 * v7) * 57.2957795, v21 <= 60.0) || (v22 = *(a1 + 471), v22 > 0x15))
  {
    v24 = 0;
    *(a1 + 471) = 0;
    *(a1 + 472) = 0;
  }

  else
  {
    *(a1 + 471) = v22 + 1;
    v23 = *(a1 + 472) + v21 * v8;
    *(a1 + 472) = v23;
    v24 = v23 > 60.0;
  }

  v25 = 0;
  v26 = (a1 + 464);
  v27 = a1 + 512;
  do
  {
    v28 = v5;
    if (v25)
    {
      if (v25 == 1)
      {
        v28 = v6;
      }

      else
      {
        v28 = v7;
      }
    }

    if (v28 < 0.0)
    {
      v28 = -v28;
    }

    if (v8 >= 0.5 || v28 < 0.523598776 || (v29 = *(v27 + v25), v29 > 0x15))
    {
      *(v27 + v25) = 0;
      v32 = (a1 + 480);
      if (v25)
      {
        if (v25 == 1)
        {
          v32 = (a1 + 488);
        }

        else
        {
          v32 = (a1 + 496);
        }
      }

      *v32 = 0;
    }

    else
    {
      *(v27 + v25) = v29 + 1;
      v30 = v5;
      v31 = (a1 + 480);
      if (v25)
      {
        if (v25 == 1)
        {
          v30 = v6;
        }

        else
        {
          v30 = v7;
        }

        if (v25 == 1)
        {
          v31 = (a1 + 488);
        }

        else
        {
          v31 = (a1 + 496);
        }
      }

      *v31 = *v31 + v30 * v8;
    }

    ++v25;
  }

  while (v25 != 3);
  for (i = 0; i != 3; ++i)
  {
    if (*(v27 + i) <= 0xBu)
    {
      v34 = (a1 + 480);
      if (i)
      {
        if (i == 1)
        {
          v34 = (a1 + 488);
        }

        else
        {
          v34 = (a1 + 496);
        }
      }

      v35 = *v34;
      if (*v34 < 0.0)
      {
        v35 = -*v34;
      }

      if (v35 >= 0.741764932)
      {
        goto LABEL_73;
      }
    }

    v36 = (a1 + 480);
    if (i)
    {
      if (i == 1)
      {
        v36 = (a1 + 488);
      }

      else
      {
        v36 = (a1 + 496);
      }
    }

    v37 = *v36;
    if (*v36 < 0.0)
    {
      v37 = -*v36;
    }

    if (v37 >= 1.04719755)
    {
LABEL_73:
      *(a1 + 469) = 1;
    }
  }

  if (*(a1 + 470) > 2u || v24)
  {
    *(a1 + 469) = 1;
  }

  v38 = a2[1] - *(a1 + 4616);
  v39 = a2[2] - *(a1 + 4624);
  v56[0] = *a2 - *(a1 + 4608);
  v57 = v38;
  v58 = v39;
  if (*(a1 + 467))
  {
    v40 = *v26;
LABEL_79:
    if (v56[4 * *(a1 + 465) - 4] * v40 < 0.0)
    {
      *(a1 + 468) = 1;
    }
  }

  else
  {
    v41 = v56;
    v42 = 1;
    while (1)
    {
      v43 = *v41;
      v44 = -*v41;
      if (*v41 >= 0.0)
      {
        v44 = *v41;
      }

      if (v44 > 6.9)
      {
        break;
      }

      ++v42;
      v41 += 4;
      if (v42 == 4)
      {
        v45 = *(a1 + 466);
        goto LABEL_95;
      }
    }

    if (*(a1 + 465))
    {
      if (*(a1 + 465) != v42)
      {
        goto LABEL_100;
      }
    }

    else
    {
      *(a1 + 465) = v42;
    }

    v45 = *(a1 + 466) + 1;
    *(a1 + 466) = v45;
    v46 = *(a1 + 464);
    if (v43 > 0.0)
    {
      v47 = v46 + 1;
    }

    else
    {
      v47 = v46 - 1;
    }

    *(a1 + 464) = v47;
LABEL_95:
    if (v45 < 0x3Du)
    {
      goto LABEL_101;
    }

    v40 = *v26;
    v48 = *v26;
    if (v48 < 0)
    {
      v48 = -v48;
    }

    if (v48 >= 0x3D)
    {
      *(a1 + 467) = 1;
      goto LABEL_79;
    }

LABEL_100:
    *(a1 + 536) = 0;
    *(a1 + 520) = 0u;
    *v26 = 0u;
    *(a1 + 480) = 0u;
    *(a1 + 496) = 0u;
    *(a1 + 511) = 0;
  }

LABEL_101:
  v61[16] = 0.0;
  v61[0] = v5;
  v61[4] = v6;
  v61[8] = v7;
  BlueFin::QuaternionD::rotVec((a1 + 4688), v61, v59);
  v49 = 0;
  v50 = *(a1 + 5224);
  if (v8 > 2.0)
  {
    goto LABEL_118;
  }

  v51 = *(v50 + 24);
  v52 = sqrt(v60 * v60 + v59[0] * v59[0]);
  v53 = v52;
  if (v51 == 2)
  {
    goto LABEL_110;
  }

  if (v53 <= 0.523598776)
  {
    if (v53 >= 0.174532925)
    {
      *(a1 + 528) = 0;
    }

    else
    {
      *(a1 + 520) = 0;
      *(a1 + 536) = 0;
    }
  }

  else
  {
    *(a1 + 537) = 0;
    *(a1 + 528) = 0;
    v54 = v8 + *(a1 + 520);
    *(a1 + 520) = v54;
    if (v54 > 1.0)
    {
      *(a1 + 536) = 1;
      *(a1 + 520) = 0;
    }
  }

  if (v51 != 1)
  {
LABEL_110:
    if (v53 >= 0.174532925)
    {
      *(a1 + 528) = 0;
    }

    else
    {
      *(a1 + 536) = 0;
      v55 = v8 + *(a1 + 528);
      *(a1 + 528) = v55;
      if (v55 > 2.0)
      {
        *(a1 + 537) = 1;
        *(a1 + 520) = 0u;
      }
    }
  }

  if (*(a1 + 468) & 1) != 0 || (*(a1 + 469) & 1) != 0 || (*(a1 + 536))
  {
    v49 = 2;
LABEL_118:
    *(v50 + 24) = v49;
    return;
  }

  v49 = *(a1 + 537);
  if (v49 == 1)
  {
    goto LABEL_118;
  }
}

double BlueFin::QuaternionD::rotVec(double *a1, double *a2, uint64_t a3)
{
  v3 = a1[1];
  v4 = *a1 + *a1;
  v5 = v4 * v3;
  v6 = a1[2];
  v7 = a1[3];
  v8 = v4 * v6;
  v9 = v4 * v7;
  v10 = (v3 + v3) * v6;
  v11 = (v3 + v3) * v7;
  v12 = v6 + v6;
  v13 = v6 * (v6 + v6);
  v14 = v12 * v7;
  v15 = v7 * (v7 + v7);
  v16 = *a2 * (v10 + v9) + 0.0;
  v17 = a2[4];
  v18 = *a2 * (1.0 - v13 - v15) + 0.0 + v17 * (v10 - v9);
  v19 = 1.0 - v3 * (v3 + v3);
  v20 = *a2 * (v11 - v8) + 0.0 + v17 * (v5 + v14);
  v21 = a2[8];
  *(a3 + 128) = 0x100000003;
  *a3 = v18 + v21 * (v8 + v11);
  result = v20 + v21 * (v19 - v13);
  *(a3 + 32) = v16 + v17 * (v19 - v15) + v21 * (v14 - v5);
  *(a3 + 64) = result;
  return result;
}

uint64_t BlueFin::GlUtils::Report(uint64_t this, const char *a2)
{
  v2 = this;
  v3 = BlueFin::GlUtils::m_pInstance;
  v4 = this;
  if (!this)
  {
    v4 = *(BlueFin::GlUtils::m_pInstance + 1240);
  }

  v5 = *(BlueFin::GlUtils::m_pInstance + 1092) - *(BlueFin::GlUtils::m_pInstance + 1236);
  v6 = 20;
  v7 = (BlueFin::GlUtils::m_pInstance + 1408);
  do
  {
    v8 = *(v7 - 20);
    if (v8)
    {
      this = v8(*v7, v4);
    }

    ++v7;
    --v6;
  }

  while (v6);
  v9 = *(v3 + 1248);
  if (v9)
  {
    this = v9(*(v3 + 1408), 0);
  }

  if (*(v3 + 1568))
  {
    this = GlCustomLog(12, "</EXPERIMENT_%s %ums end>\n", *(v3 + 1240), v5);
  }

  v10 = BlueFin::GlUtils::m_pInstance;
  v11 = *(BlueFin::GlUtils::m_pInstance + 1092);
  *(BlueFin::GlUtils::m_pInstance + 1236) = v11;
  *(v10 + 1232) = v11 + 59950;
  if (v2)
  {
    *(v3 + 1240) = v2;
  }

  return this;
}

_DWORD *BlueFin::GlPePlatfStatMgr::ReportStatic(_DWORD *this, void *a2, const char *a3)
{
  if (this)
  {
    v3 = this;
    this = GlCustomLog(13, "GLP,DTIN,%u,%u,DTOUT,%u,%u,HATMD,%d\n", this[11], this[13], this[12], this[14], this[40]);
    *(v3 + 52) = 0;
    *(v3 + 44) = 0;
  }

  return this;
}

uint64_t BlueFin::GlDbgCodec::Rvw(BlueFin::GlDbgCodec *this, double *a2)
{
  v8[6] = *MEMORY[0x29EDCA608];
  v8[1] = 0;
  v8[3] = 0;
  v8[0] = BlueFin::GlDbgCodec::Read;
  v8[2] = BlueFin::GlDbgCodec::Verify;
  v8[4] = BlueFin::GlDbgCodec::Write;
  v8[5] = 0;
  v2 = &v8[2 * *(this + 143)];
  v3 = *v2;
  v4 = v2[1];
  v5 = (this + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  v6 = *MEMORY[0x29EDCA608];

  return v3(v5, a2);
}

BOOL BlueFin::GlPeExtLoc::WaitPosLocVerification(BlueFin::GlPeExtLoc *this, int a2, int a3, char a4)
{
  result = 0;
  if (a2 ^ 1 | a3) == 1 && (*(this + 12))
  {
    v6 = *(this + 17);
    result = 0;
    if (v6)
    {
      if (*(v6 + 3008) == 1 && vaddvq_f64(vmulq_f64(*(v6 + 3040), *(v6 + 3040))) < 160000.0)
      {
        v7 = *(v6 + 3072);
        if (v7 == 1 || v7 == 2 && (a4 & 1) == 0)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t BlueFin::GlDbgCodec::Rvw(BlueFin::GlDbgCodec *a1, __int16 *a2)
{
  v4 = *a2;
  result = BlueFin::GlDbgCodec::Rvw(a1, a2);
  v6 = *a2;
  if (v6 > v4)
  {
    DeviceFaultNotify("gldebug_codec.cpp", 4569, "Rvw", "rValue.sSensNum <= ssOrgSensNum");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_codec.cpp", 4569, "rValue.sSensNum <= ssOrgSensNum");
  }

  if (v6 >= 1)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      result = BlueFin::GlDbgCodec::Rvw(a1, (*(a2 + 1) + v7));
      ++v8;
      v7 += 3560;
    }

    while (v8 < *a2);
  }

  return result;
}

{
  v49 = *a2;
  BlueFin::GlDbgCodec::Rvw(a1, &v49);
  if (v49 >= 0x22u && (v49 - 100) >= 3u)
  {
    v44 = "GlExtSensorType::IsIntValidSensor(ucSensorType)";
    DeviceFaultNotify("gldebug_codec.cpp", 4292, "Rvw", "GlExtSensorType::IsIntValidSensor(ucSensorType)");
    v45 = 4292;
    goto LABEL_126;
  }

  v48 = 103;
  BlueFin::GlExtSensorType::SetFromInt(&v48, v49);
  if (v48 - 100 > 2)
  {
    Extended = BlueFin::GlExtSensorType::Get(&v48);
  }

  else
  {
    Extended = BlueFin::GlExtSensorType::GetExtended(&v48);
  }

  *a2 = Extended;
  v50 = *(a2 + 1);
  BlueFin::GlDbgCodec::Rvw(a1, &v50);
  if (*(a1 + 143))
  {
    v6 = *(a2 + 1);
  }

  else
  {
    v6 = v50;
    *(a2 + 1) = v50;
  }

  if (v6 > 2)
  {
    if ((v6 - 5) < 2 || v6 == 3)
    {
      BlueFin::GlDbgCodec::Rvw(a1, a2 + 1);
    }

    else
    {
      if (v6 != 4)
      {
LABEL_129:
        v44 = "0";
        DeviceFaultNotify("gldebug_codec.cpp", 4321, "Rvw", "0");
        v45 = 4321;
        goto LABEL_126;
      }

      BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
    }
  }

  else if (v6)
  {
    if (v6 == 1)
    {
      BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
    }

    else if (v6 != 2)
    {
      goto LABEL_129;
    }
  }

  else
  {
    BlueFin::GlDbgCodec::Rvw(a1, a2 + 2);
  }

  if (v49 == 20)
  {
LABEL_127:
    v44 = "0";
    DeviceFaultNotify("gldebug_codec.cpp", 4435, "Rvw", "0");
    v45 = 4435;
    goto LABEL_126;
  }

  result = BlueFin::GlDbgCodec::Rvw(a1, a2 + 16);
  v8 = a2[16];
  if (v49 <= 0x63u)
  {
    switch(v49)
    {
      case 0u:
      case 1u:
      case 2u:
      case 3u:
      case 4u:
      case 5u:
      case 6u:
      case 7u:
      case 0x19u:
      case 0x1Au:
      case 0x1Bu:
      case 0x1Cu:
        if (v8 < 1)
        {
          LOWORD(v11) = a2[16];
        }

        else
        {
          v9 = 0;
          v10 = (a2 + 24);
          do
          {
            BlueFin::GlDbgCodec::Rvw(a1, v10 - 4);
            result = BlueFin::GlDbgCodec::Rvw(a1, v10);
            ++v9;
            v11 = a2[16];
            v10 += 22;
          }

          while (v9 < v11);
        }

        v14 = *a2;
        v15 = v14 - 3;
        v16 = v14 - 26;
        v18 = v15 < 3 || v16 < 3;
        if (v8 >= 1 && v18)
        {
          return BlueFin::GlDbgCodec::Rvw(a1, &a2[44 * (v11 - 1) + 44]);
        }

        return result;
      case 8u:
      case 9u:
        if (v8 >= 1)
        {
          v23 = 0;
          v24 = (a2 + 24);
          do
          {
            BlueFin::GlDbgCodec::Rvw(a1, v24 - 4);
            BlueFin::GlDbgCodec::Rvw(a1, v24);
            BlueFin::GlDbgCodec::Rvw(a1, v24 + 1);
            BlueFin::GlDbgCodec::Rvw(a1, v24 + 2);
            BlueFin::GlDbgCodec::Rvw(a1, v24 + 3);
            result = BlueFin::GlDbgCodec::Rvw(a1, (v24 + 5));
            ++v23;
            v24 += 11;
          }

          while (v23 < a2[16]);
        }

        return result;
      case 0xAu:
      case 0x21u:
        if (v8 >= 1)
        {
          v21 = 0;
          v22 = (a2 + 44);
          do
          {
            BlueFin::GlDbgCodec::Rvw(a1, (v22 - 48));
            BlueFin::GlDbgCodec::Rvw(a1, (v22 - 40));
            BlueFin::GlDbgCodec::Rvw(a1, (v22 - 32));
            BlueFin::GlDbgCodec::Rvw(a1, (v22 - 24));
            result = BlueFin::GlDbgCodec::Rvw(a1, v22);
            ++v21;
            v22 += 88;
          }

          while (v21 < a2[16]);
        }

        return result;
      case 0xBu:
      case 0xCu:
      case 0xDu:
      case 0xEu:
      case 0xFu:
      case 0x10u:
        if (v8 >= 1)
        {
          v12 = 0;
          v13 = (a2 + 44);
          do
          {
            BlueFin::GlDbgCodec::Rvw(a1, v13 - 24);
            BlueFin::GlDbgCodec::Rvw(a1, v13 - 10);
            result = BlueFin::GlDbgCodec::Rvw(a1, v13);
            ++v12;
            v13 += 22;
          }

          while (v12 < a2[16]);
        }

        return result;
      case 0x11u:
        if (v8 >= 1)
        {
          v39 = 0;
          v40 = a2 + 60;
          do
          {
            BlueFin::GlDbgCodec::Rvw(a1, v40 - 40);
            v51 = *(v40 - 18);
            BlueFin::GlDbgCodec::Rvw(a1, &v51);
            if (!*(a1 + 143))
            {
              *(v40 - 18) = v51;
            }

            v52 = *v40;
            result = BlueFin::GlDbgCodec::Rvw(a1, &v52);
            if (!*(a1 + 143))
            {
              *v40 = v52;
            }

            ++v39;
            v40 += 44;
          }

          while (v39 < a2[16]);
        }

        return result;
      case 0x12u:
        if (v8 >= 1)
        {
          v29 = 0;
          v30 = a2 + 20;
          do
          {
            BlueFin::GlDbgCodec::Rvw(a1, v30);
            v53 = *(v30 + 2);
            result = BlueFin::GlDbgCodec::Rvw(a1, &v53);
            if (!*(a1 + 143))
            {
              *(v30 + 2) = v53;
            }

            ++v29;
            v30 += 44;
          }

          while (v29 < a2[16]);
        }

        return result;
      case 0x13u:
        if (v8 >= 1)
        {
          v27 = 0;
          v28 = a2 + 20;
          do
          {
            BlueFin::GlDbgCodec::Rvw(a1, v28);
            v54 = *(v28 + 2);
            result = BlueFin::GlDbgCodec::Rvw(a1, &v54);
            if (!*(a1 + 143))
            {
              *(v28 + 2) = v54;
            }

            ++v27;
            v28 += 44;
          }

          while (v27 < a2[16]);
        }

        return result;
      case 0x14u:
        goto LABEL_127;
      case 0x15u:
        if (v8 >= 1)
        {
          v31 = 0;
          v32 = (a2 + 44);
          do
          {
            BlueFin::GlDbgCodec::Rvw(a1, v32 - 24);
            v55 = *(v32 - 10);
            BlueFin::GlDbgCodec::Rvw(a1, &v55);
            if (!*(a1 + 143))
            {
              *(v32 - 10) = v55;
            }

            BlueFin::GlDbgCodec::Rvw(a1, v32 - 9);
            result = BlueFin::GlDbgCodec::Rvw(a1, v32);
            ++v31;
            v32 += 22;
          }

          while (v31 < a2[16]);
        }

        return result;
      case 0x16u:
        if (v8 >= 1)
        {
          v25 = 0;
          v26 = (a2 + 44);
          do
          {
            BlueFin::GlDbgCodec::Rvw(a1, v26 - 24);
            v56 = *(v26 - 10);
            BlueFin::GlDbgCodec::Rvw(a1, &v56);
            if (!*(a1 + 143))
            {
              *(v26 - 10) = v56;
            }

            BlueFin::GlDbgCodec::Rvw(a1, v26 - 9);
            result = BlueFin::GlDbgCodec::Rvw(a1, v26);
            ++v25;
            v26 += 22;
          }

          while (v25 < a2[16]);
        }

        return result;
      case 0x17u:
        if (v8 >= 1)
        {
          v33 = 0;
          v34 = (a2 + 44);
          do
          {
            BlueFin::GlDbgCodec::Rvw(a1, v34 - 24);
            BlueFin::GlDbgCodec::Rvw(a1, v34 - 5);
            BlueFin::GlDbgCodec::Rvw(a1, v34 - 4);
            BlueFin::GlDbgCodec::Rvw(a1, v34 - 6);
            BlueFin::GlDbgCodec::Rvw(a1, v34 - 5);
            BlueFin::GlDbgCodec::Rvw(a1, v34 - 4);
            BlueFin::GlDbgCodec::Rvw(a1, v34 - 3);
            if ((*(*a1 + 112))(a1) < 0x3E)
            {
              if (!*(a1 + 143))
              {
                *(v34 - 2) = 0.0;
              }
            }

            else
            {
              BlueFin::GlDbgCodec::Rvw(a1, v34 - 2);
            }

            result = BlueFin::GlDbgCodec::Rvw(a1, v34);
            ++v33;
            v34 += 22;
          }

          while (v33 < a2[16]);
        }

        return result;
      case 0x18u:
        v44 = "false";
        DeviceFaultNotify("gldebug_codec.cpp", 4517, "Rvw", "false");
        v45 = 4517;
        goto LABEL_126;
      case 0x1Du:
        if (v8 < 1)
        {
          return result;
        }

        v41 = 0;
        v42 = (a2 + 36);
        break;
      case 0x1Eu:
      case 0x1Fu:
        v44 = "false";
        DeviceFaultNotify("gldebug_codec.cpp", 4384, "Rvw", "false");
        v45 = 4384;
        goto LABEL_126;
      case 0x20u:
        v44 = "false";
        DeviceFaultNotify("gldebug_codec.cpp", 4520, "Rvw", "false");
        v45 = 4520;
        goto LABEL_126;
      default:
        goto LABEL_133;
    }

    while (1)
    {
      BlueFin::GlDbgCodec::Rvw(a1, v42 - 16);
      BlueFin::GlDbgCodec::Rvw(a1, v42 - 3);
      v57 = *(v42 - 4);
      BlueFin::GlDbgCodec::Rvw(a1, &v57);
      if (*(a1 + 143))
      {
        v43 = *(v42 - 4);
      }

      else
      {
        v43 = v57;
        *(v42 - 4) = v57;
      }

      if (v43 == 2)
      {
        BlueFin::GlDbgCodec::Rvw(a1, v42 - 6);
        BlueFin::GlDbgCodec::Rvw(a1, v42 - 5);
        BlueFin::GlDbgCodec::Rvw(a1, v42 - 2);
        BlueFin::GlDbgCodec::Rvw(a1, v42 - 2);
        BlueFin::GlDbgCodec::Rvw(a1, v42 - 1);
        result = BlueFin::GlDbgCodec::Rvw(a1, v42);
      }

      else if (v43 == 1)
      {
        result = BlueFin::GlDbgCodec::Rvw(a1, (v42 - 3));
      }

      else
      {
        if (v43)
        {
          v44 = "false";
          DeviceFaultNotify("gldebug_codec.cpp", 4510, "Rvw", "false");
          v45 = 4510;
          goto LABEL_126;
        }

        result = BlueFin::GlDbgCodec::Rvw(a1, (v42 - 3));
      }

      ++v41;
      v42 += 22;
      if (v41 >= a2[16])
      {
        return result;
      }
    }
  }

  switch(v49)
  {
    case 'd':
      if (v8 >= 1)
      {
        v35 = 0;
        v36 = a2 + 44;
        do
        {
          BlueFin::GlDbgCodec::Rvw(a1, v36 - 24);
          v47 = *(v36 - 10);
          BlueFin::GlDbgCodec::Rvw(a1, &v47);
          if (!*(a1 + 143))
          {
            *(v36 - 10) = v47;
          }

          v46 = *v36;
          result = BlueFin::GlDbgCodec::Rvw(a1, &v46);
          if (!*(a1 + 143))
          {
            *v36 = v46;
          }

          ++v35;
          v36 += 44;
        }

        while (v35 < a2[16]);
      }

      break;
    case 'e':
      if (v8 >= 1)
      {
        v37 = 0;
        v38 = (a2 + 44);
        do
        {
          BlueFin::GlDbgCodec::Rvw(a1, v38 - 24);
          BlueFin::GlDbgCodec::Rvw(a1, v38 - 39);
          BlueFin::GlDbgCodec::Rvw(a1, v38 - 40);
          result = BlueFin::GlDbgCodec::Rvw(a1, v38);
          ++v37;
          v38 += 88;
        }

        while (v37 < a2[16]);
      }

      break;
    case 'f':
      if (v8 >= 1)
      {
        v19 = 0;
        v20 = (a2 + 32);
        do
        {
          BlueFin::GlDbgCodec::Rvw(a1, v20 - 12);
          BlueFin::GlDbgCodec::Rvw(a1, v20 - 2);
          BlueFin::GlDbgCodec::Rvw(a1, v20 - 1);
          result = BlueFin::GlDbgCodec::Rvw(a1, v20);
          ++v19;
          v20 += 88;
        }

        while (v19 < a2[16]);
      }

      break;
    default:
LABEL_133:
      v44 = "false";
      DeviceFaultNotify("gldebug_codec.cpp", 4561, "Rvw", "false");
      v45 = 4561;
LABEL_126:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_codec.cpp", v45, v44);
  }

  return result;
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 1);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 2);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 3);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 4);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 5);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 6);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 7);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 8);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 9);

  return BlueFin::GlDbgCodec::Rvw(a1, a2 + 10);
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 1);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 2);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 3);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 4);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 5);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 6);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 7);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 8);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 9);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 10);

  return BlueFin::GlDbgCodec::Rvw(a1, a2 + 11);
}

uint64_t BlueFin::GlExtSensorType::Get(BlueFin::GlExtSensorType *this)
{
  result = *this;
  if (result >= 0x23)
  {
    DeviceFaultNotify("glpe_hula.cpp", 298, "Get", "m_ucType <= _NUMOF(GL_EXT_SENS_TYPE)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_hula.cpp", 298, "m_ucType <= _NUMOF(GL_EXT_SENS_TYPE)");
  }

  return result;
}

_BYTE *BlueFin::GlExtSensorType::SetFromInt(_BYTE *this, unsigned int a2)
{
  if (a2 >= 0x22 && a2 - 100 >= 3)
  {
    DeviceFaultNotify("glpe_hula.cpp", 312, "SetFromInt", "IsIntValidSensor(ucType)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_hula.cpp", 312, "IsIntValidSensor(ucType)");
  }

  *this = a2;
  return this;
}

uint64_t BlueFin::GlDbgCodec::Rvw(BlueFin::GlDbgCodec *this, unint64_t *a2)
{
  v8[6] = *MEMORY[0x29EDCA608];
  v8[1] = 0;
  v8[3] = 0;
  v8[0] = BlueFin::GlDbgCodec::Read;
  v8[2] = BlueFin::GlDbgCodec::Verify;
  v8[4] = BlueFin::GlDbgCodec::Write;
  v8[5] = 0;
  v2 = &v8[2 * *(this + 143)];
  v3 = *v2;
  v4 = v2[1];
  v5 = (this + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  v6 = *MEMORY[0x29EDCA608];

  return v3(v5, a2);
}

uint64_t BlueFin::GlPeGnssSvsInfoMgr::getSvPosToa(int a1, BlueFin::GlPeGnssTime *this, double *a3, double *a4)
{
  result = 0;
  v9 = BlueFin::GlImplGnss::m_aucEnabledGnssTable[a1];
  if (v9 > 4)
  {
    switch(v9)
    {
      case 5:
        v35 = 0;
        v34 = &off_2A1F0E4D0;
        Bds = BlueFin::GlPeGnssTime::GetBds(this, &v34);
        v18 = (v34[4])(&v34, Bds);
        LODWORD(v19) = v35;
        *a3 = v19 * 2.32830644e-10 + v18;
        v35 = 0;
        v34 = &off_2A1F0E4D0;
        v13.n128_f64[0] = BlueFin::GlPeGnssTime::GetBds(this, &v34);
        break;
      case 6:
        v35 = 0;
        v34 = &off_2A1F0E480;
        Gal = BlueFin::GlPeGnssTime::GetGal(this, &v34);
        v29 = (v34[4])(&v34, Gal);
        LODWORD(v30) = v35;
        *a3 = v30 * 2.32830644e-10 + v29;
        v35 = 0;
        v34 = &off_2A1F0E480;
        v13.n128_f64[0] = BlueFin::GlPeGnssTime::GetGal(this, &v34);
        break;
      case 7:
        v35 = 0;
        v34 = &off_2A1F0DFC8;
        Nic = BlueFin::GlPeGnssTime::GetNic(this, &v34);
        v15 = (v34[4])(&v34, Nic);
        LODWORD(v16) = v35;
        *a3 = v16 * 2.32830644e-10 + v15;
        v35 = 0;
        v34 = &off_2A1F0DFC8;
        v13.n128_f64[0] = BlueFin::GlPeGnssTime::GetNic(this, &v34);
        break;
      default:
        return result;
    }
  }

  else
  {
    if (v9)
    {
      if (v9 == 2)
      {
        v35 = 0;
        v34 = &off_2A1F0E430;
        Glns = BlueFin::GlPeGnssTime::GetGlns(this, &v34);
        v21 = (v34[4])(&v34, Glns);
        LODWORD(v22) = v35;
        *a3 = v22 * 2.32830644e-10 + v21;
        v35 = 0;
        v34 = &off_2A1F0E430;
        v23.n128_f64[0] = BlueFin::GlPeGnssTime::GetGlns(this, &v34);
        v24 = 0;
        if (BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs && BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent)
        {
          v24 = HIDWORD(v35) == BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent;
        }

        v25 = (v34[4])(&v34, v23);
        if (v24)
        {
          v27 = 10799.0;
        }

        else
        {
          v27 = (v25 % 0x15180);
        }

        LODWORD(v26) = v35;
        v33 = v27 + v26 * 2.32830644e-10;
        goto LABEL_18;
      }

      if (v9 != 3)
      {
        return result;
      }
    }

    v35 = 0;
    v34 = &off_2A1F0B5F0;
    Gps = BlueFin::GlPeGnssTime::GetGps(this, &v34);
    v11 = (v34[4])(&v34, Gps);
    LODWORD(v12) = v35;
    *a3 = v12 * 2.32830644e-10 + v11;
    v35 = 0;
    v34 = &off_2A1F0B5F0;
    v13.n128_f64[0] = BlueFin::GlPeGnssTime::GetGps(this, &v34);
  }

  v31 = (v34[4])(&v34, v13);
  LODWORD(v32) = v35;
  v33 = v32 * 2.32830644e-10 + (v31 % 0x93A80);
LABEL_18:
  *a4 = v33;
  return 1;
}

uint64_t BlueFin::GlPeAtmosDelays::GlPeIonoSrc2GlGnssIonoDelaySrc(int a1)
{
  if ((a1 - 2) > 8)
  {
    return 0;
  }

  else
  {
    return dword_298A41BD0[a1 - 2];
  }
}

float BlueFin::GlPeGpsEphemerisBase::GetAccuracyM(BlueFin::GlPeGpsEphemerisBase *this)
{
  v1 = (*(*this + 192))(this, 4);
  if (v1 <= 0xEu)
  {
    return BlueFin::GlPeGpsEphemerisBase::GetUraM(unsigned char)::afUraTbl[v1 & 0xF];
  }

  else
  {
    return 8192.0;
  }
}

uint64_t BlueFin::GlPeGloEphemeris::GetCmpSignedField(BlueFin::GlPeGloEphemeris *this, int a2)
{
  v2 = *(this + 2);
  switch(a2)
  {
    case 4:
      return (*v2 >> 27);
    case 11:
      v19 = v2[4];
      v5 = (v19 >> 6) & 0x7FF;
      v6 = v19 >> 6;
      v7 = (v19 & 0x10000) == 0;
      goto LABEL_16;
    case 12:
      HIDWORD(v14) = v2[6];
      LODWORD(v14) = v2[7];
      v10 = v14 >> 11;
      v15 = v10 >> 10;
      v16 = (v10 >> 10) & 0x1FFFFF;
      goto LABEL_21;
    case 13:
      HIDWORD(v18) = v2[1];
      LODWORD(v18) = v2[2];
      v10 = v18 >> 16;
      goto LABEL_14;
    case 14:
      HIDWORD(v12) = v2[3];
      LODWORD(v12) = v2[4];
      v10 = v12 >> 13;
      goto LABEL_14;
    case 15:
      HIDWORD(v13) = v2[5];
      LODWORD(v13) = v2[6];
      v10 = v13 >> 6;
LABEL_14:
      v15 = v10 >> 5;
      v16 = (v10 >> 5) & 0x3FFFFFF;
      goto LABEL_21;
    case 16:
      HIDWORD(v20) = *v2;
      LODWORD(v20) = v2[1];
      v10 = v20 >> 13;
      goto LABEL_20;
    case 17:
      HIDWORD(v17) = v2[2];
      LODWORD(v17) = v2[3];
      v10 = v17 >> 10;
      goto LABEL_20;
    case 18:
      HIDWORD(v11) = v2[4];
      LODWORD(v11) = v2[5];
      v10 = v11 >> 3;
LABEL_20:
      v15 = v10 >> 8;
      v16 = (v10 >> 8) & 0x7FFFFF;
LABEL_21:
      if ((v10 & 0x80000000) != 0)
      {
        return -v16;
      }

      else
      {
        return v15;
      }

    case 19:
      v8 = v2[1];
      goto LABEL_6;
    case 20:
      v9 = v2[3];
      v5 = (v9 >> 13) & 0x1F;
      v6 = (v9 >> 13) & 0xF;
      v7 = (v9 & 0x20000) == 0;
      goto LABEL_16;
    case 21:
      v4 = v2[5];
      v5 = (v4 >> 6) & 0x1F;
      v6 = (v4 >> 6) & 0xF;
      v7 = (v4 & 0x400) == 0;
      goto LABEL_16;
    case 28:
      v8 = v2[7];
LABEL_6:
      v5 = HIWORD(v8) & 0x1F;
      v6 = HIWORD(v8) & 0xF;
      v7 = (v8 & 0x100000) == 0;
LABEL_16:
      if (v7)
      {
        return v5;
      }

      else
      {
        return -v6;
      }

    default:
      DeviceFaultNotify("glpe_glnephmgr.cpp", 520, "GetCmpSignedField", "0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_glnephmgr.cpp", 520, "0");
  }
}

float BlueFin::GlPeGalEphemeris::GetAccuracyM(BlueFin::GlPeGalEphemeris *this)
{
  v1 = (*(*this + 192))(this, 4);
  if (v1 <= 0x7Du)
  {
    return (BlueFin::GlPeGalEphemeris::GetUraM(unsigned char)const::ausOffsetCm[v1 / 0x19u] + BlueFin::GlPeGalEphemeris::GetUraM(unsigned char)const::ausResolutionCm[v1 / 0x19u] * (v1 % 0x19u)) * 0.01;
  }

  else
  {
    return 8192.0;
  }
}

void std::allocator_traits<std::allocator<gnss::SvInfo>>::destroy[abi:ne200100]<gnss::SvInfo,0>(void *a1)
{
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  a1[6] = 0;
  if (v3)
  {
    MEMORY[0x29C292F70](v3, 0x1000C40AC4F46D1);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;

    operator delete(v4);
  }
}

uint64_t BlueFin::GlPeGloFcnOsnMgr::OsnVerifier::ageCache(BlueFin::GlPeGloFcnOsnMgr::OsnVerifier *this, int a2)
{
  v2 = 0;
  v3 = 0;
  v4 = this + 12;
  v5 = -1;
  v6 = -1;
  do
  {
    v7 = *&v4[4 * v2];
    if (v7 == -7200001)
    {
      goto LABEL_5;
    }

    v8 = a2 - v7;
    if (v8 >= 0x36EE81)
    {
      *&v4[4 * v2] = -7200001;
LABEL_5:
      v9 = v2;
      goto LABEL_9;
    }

    if (v8 > v3)
    {
      v6 = v2;
      v3 = v8;
    }

    v9 = -1;
LABEL_9:
    if (v5 == -1)
    {
      v5 = v9;
    }

    ++v2;
  }

  while (v2 != 3);
  if (v5 == -1)
  {
    v5 = v6;
    if (v6 == -1)
    {
      DeviceFaultNotify("glpe_glofcnosnmgr.cpp", 138, "ageCache", "scOldestIndex != -1");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_glofcnosnmgr.cpp", 138, "scOldestIndex != -1");
    }
  }

  *(this + 1) = a2;
  return v5;
}

uint64_t BlueFin::GlPeGnssSvsInfoMgr::getSvAzEl(uint64_t result, int a2, unsigned __int8 a3, float *a4, float *a5)
{
  if (result)
  {
    v5 = *(result + 44);
    if (v5 < 1)
    {
      return 0;
    }

    else
    {
      for (i = (result + 54); BlueFin::GlImplGnss::m_aucEnabledGnssTable[a2] != *(i - 4) || *(i - 3) != a3; i += 20)
      {
        if (!--v5)
        {
          return 0;
        }
      }

      *a4 = *(i - 1);
      *a5 = *i;
      return 1;
    }
  }

  return result;
}

uint64_t BlueFin::GlPeGloEphemeris::GetPvt(BlueFin::GlPeEphemeris *a1, uint64_t a2, uint64_t a3, double a4)
{
  v115 = *MEMORY[0x29EDCA608];
  v6 = (*(*a1 + 64))(a1, a2, 1);
  if (fabs(v6) >= 7200.0)
  {
    DeviceFaultNotify("glpe_glnephmgr.cpp", 257, "GetPvt", "FABS_D(dDtSecs) < 7200.0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_glnephmgr.cpp", 257, "FABS_D(dDtSecs) < 7200.0");
  }

  ScaledFloatingField = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 12);
  v8 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 11);
  v9 = (*(*a1 + 192))(a1, 27);
  if (v9 - 1 <= 0x17 && (v10 = *(a1 + 9)) != 0)
  {
    v11 = ScaledFloatingField - v8 * v6;
    v12 = v10 + 88 * v9;
    v13 = (*(*a1 + 192))(a1, 9);
    v16 = *(v12 - 88);
    v15 = v12 - 88;
    v14 = v16;
    if (v16 != 255 && v14 == v13)
    {
      v18 = *(v15 + 80);
    }

    else
    {
      *v15 = v13;
      *(v15 + 8) = 0;
      *(v15 + 16) = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 13);
      *(v15 + 24) = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 14);
      *(v15 + 32) = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 15);
      *(v15 + 40) = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 16);
      *(v15 + 48) = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 17);
      *(v15 + 56) = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 18);
      *(v15 + 64) = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 19);
      *(v15 + 72) = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 20);
      v18 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 21);
      *(v15 + 80) = v18;
    }

    v20 = v6 + v11;
    memset(v114, 0, sizeof(v114));
    memset(v113, 0, sizeof(v113));
    memset(v112, 0, sizeof(v112));
    memset(v111, 0, sizeof(v111));
    v21 = *(v15 + 32);
    v22 = *(v15 + 48);
    v108 = *(v15 + 16);
    *v109 = v21;
    *&v109[16] = v22;
    memset(v110, 0, sizeof(v110));
    v23 = *(v15 + 8);
    v24 = *(v15 + 64);
    if (v23 > v6 + v11)
    {
      v25 = -60.0;
    }

    else
    {
      v25 = 60.0;
    }

    __asm { FMOV            V1.2D, #2.0 }

    v30 = *(v15 + 8);
    if (_NF == _VF)
    {
      v31 = vdupq_lane_s64(COERCE__INT64(v25 * 0.5), 0);
      v32 = vdupq_lane_s64(*&v25, 0);
      v33 = vdupq_lane_s64(COERCE__INT64(v25 / 6.0), 0);
      v30 = *(v15 + 8);
      do
      {
        v34 = 0;
        v35 = 1.0 / (COERCE_DOUBLE(*&vmulq_f64(v108, v108).f64[1]) + v108.f64[0] * v108.f64[0] + *v109 * *v109);
        v36 = v35 * sqrt(v35);
        v37 = *v109 * (*v109 * -5.0) * v35 + 1.0;
        v38 = v35 * -2.63327758e10;
        v39 = (v37 * v38 + -398600.44) * v36;
        *&v114[1] = *&v109[24];
        *(&v114[2] + 1) = v18 + (v39 + (v38 + v38) * v36) * *v109;
        v114[0] = *&v109[8];
        v40 = vmulq_f64(*&v109[8], xmmword_298A3C220);
        *(&v114[1] + 8) = vaddq_f64(v24, vmlaq_n_f64(vextq_s8(v40, v40, 8uLL), v108, v39 + 0.00000000531749412));
        do
        {
          v110[v34] = vmlaq_f64(*(&v108 + v34 * 16), v114[v34], v31);
          ++v34;
        }

        while (v34 != 3);
        v41 = 0;
        v42 = 1.0 / (COERCE_DOUBLE(*&vmulq_f64(*v110, *v110).f64[1]) + v110[0].f64[0] * v110[0].f64[0] + v110[1].f64[0] * v110[1].f64[0]);
        v43 = v42 * sqrt(v42);
        v44 = v110[1].f64[0] * (v110[1].f64[0] * -5.0) * v42 + 1.0;
        v45 = v42 * -2.63327758e10;
        v46 = (v44 * v45 + -398600.44) * v43;
        *&v113[1] = v110[2].f64[1];
        *(&v113[2] + 1) = v18 + (v46 + (v45 + v45) * v43) * v110[1].f64[0];
        v113[0] = *(&v110[1] + 8);
        v47 = vmulq_f64(*(&v110[1] + 8), xmmword_298A3C220);
        *(&v113[1] + 8) = vaddq_f64(v24, vmlaq_n_f64(vextq_s8(v47, v47, 8uLL), v110[0], v46 + 0.00000000531749412));
        do
        {
          v110[v41] = vmlaq_f64(*(&v108 + v41 * 16), v113[v41], v31);
          ++v41;
        }

        while (v41 != 3);
        v48 = 0;
        v49 = 1.0 / (COERCE_DOUBLE(*&vmulq_f64(*v110, *v110).f64[1]) + v110[0].f64[0] * v110[0].f64[0] + v110[1].f64[0] * v110[1].f64[0]);
        v50 = v49 * sqrt(v49);
        v51 = v110[1].f64[0] * (v110[1].f64[0] * -5.0) * v49 + 1.0;
        v52 = v49 * -2.63327758e10;
        v53 = (v51 * v52 + -398600.44) * v50;
        *&v112[1] = v110[2].f64[1];
        *(&v112[2] + 1) = v18 + (v53 + (v52 + v52) * v50) * v110[1].f64[0];
        v112[0] = *(&v110[1] + 8);
        v54 = vmulq_f64(*(&v110[1] + 8), xmmword_298A3C220);
        *(&v112[1] + 8) = vaddq_f64(v24, vmlaq_n_f64(vextq_s8(v54, v54, 8uLL), v110[0], v53 + 0.00000000531749412));
        do
        {
          v110[v48] = vmlaq_f64(*(&v108 + v48 * 16), v112[v48], v32);
          ++v48;
        }

        while (v48 != 3);
        v55 = 0;
        *&v111[1] = v110[2].f64[1];
        v56 = 1.0 / (COERCE_DOUBLE(*&vmulq_f64(*v110, *v110).f64[1]) + v110[0].f64[0] * v110[0].f64[0] + v110[1].f64[0] * v110[1].f64[0]);
        v57 = v56 * sqrt(v56);
        v58 = ((v110[1].f64[0] * (v110[1].f64[0] * -5.0) * v56 + 1.0) * (v56 * -2.63327758e10) + -398600.44) * v57;
        *(&v111[2] + 1) = v18 + (v58 + (v56 * -2.63327758e10 + v56 * -2.63327758e10) * v57) * v110[1].f64[0];
        v111[0] = *(&v110[1] + 8);
        v59 = vmulq_f64(*(&v110[1] + 8), xmmword_298A3C220);
        *(&v111[1] + 8) = vaddq_f64(v24, vmlaq_n_f64(vextq_s8(v59, v59, 8uLL), v110[0], v58 + 0.00000000531749412));
        do
        {
          *(&v108 + v55 * 16) = vmlaq_f64(*(&v108 + v55 * 16), vaddq_f64(vmlaq_f64(vmlaq_f64(v114[v55], _Q1, v113[v55]), _Q1, v112[v55]), v111[v55]), v33);
          ++v55;
        }

        while (v55 != 3);
        v30 = v25 + v30;
      }

      while (vabdd_f64(v20, v30) >= 60.0);
    }

    if (v30 == v23)
    {
      v61 = v20 - v23;
    }

    else
    {
      *(v15 + 8) = v30;
      v60 = *v109;
      *(v15 + 16) = v108;
      *(v15 + 32) = v60;
      *(v15 + 48) = *&v109[16];
      v61 = v20 - v30;
    }

    v62 = v108;
    v63 = *v109;
    v64 = *&v109[8];
    v65 = *&v109[24];
    if (v61 != 0.0)
    {
      v66 = 0;
      v67 = 1.0 / (COERCE_DOUBLE(*&vmulq_f64(v108, v108).f64[1]) + v108.f64[0] * v108.f64[0] + *v109 * *v109);
      v68 = v67 * sqrt(v67);
      v69 = ((*v109 * (*v109 * -5.0) * v67 + 1.0) * (v67 * -2.63327758e10) + -398600.44) * v68;
      v114[0] = *&v109[8];
      *(&v114[2] + 1) = v18 + (v69 + (v67 * -2.63327758e10 + v67 * -2.63327758e10) * v68) * *v109;
      *&v114[1] = *&v109[24];
      v70 = vmulq_f64(*&v109[8], xmmword_298A3C220);
      *(&v114[1] + 8) = vaddq_f64(v24, vmlaq_n_f64(vextq_s8(v70, v70, 8uLL), v108, v69 + 0.00000000531749412));
      v71 = vdupq_lane_s64(COERCE__INT64(v61 * 0.5), 0);
      do
      {
        v110[v66] = vmlaq_f64(*(&v108 + v66 * 16), v114[v66], v71);
        ++v66;
      }

      while (v66 != 3);
      v72 = 0;
      v73 = 1.0 / (v110[0].f64[1] * v110[0].f64[1] + v110[0].f64[0] * v110[0].f64[0] + v110[1].f64[0] * v110[1].f64[0]);
      v74 = v73 * sqrt(v73);
      v75 = v110[1].f64[0] * (v110[1].f64[0] * -5.0) * v73 + 1.0;
      v76 = v73 * -2.63327758e10;
      v77 = (v75 * v76 + -398600.44) * v74;
      v78 = v18 + (v77 + (v76 + v76) * v74) * v110[1].f64[0];
      *(v113 + 8) = v110[2];
      v79 = v77 + 0.00000000531749412;
      *v113 = v110[1].f64[1];
      *(&v113[2] + 1) = v78;
      *(&v113[1] + 1) = v24.f64[0] + 0.0001458423 * v110[2].f64[0] + v79 * v110[0].f64[0];
      *&v113[2] = v24.f64[1] + v110[1].f64[1] * -0.0001458423 + v79 * v110[0].f64[1];
      do
      {
        v110[v72] = vmlaq_f64(*(&v108 + v72 * 16), v113[v72], v71);
        ++v72;
      }

      while (v72 != 3);
      v80 = 0;
      v81 = 1.0 / (v110[0].f64[1] * v110[0].f64[1] + v110[0].f64[0] * v110[0].f64[0] + v110[1].f64[0] * v110[1].f64[0]);
      v82 = v81 * sqrt(v81);
      v83 = v110[1].f64[0] * (v110[1].f64[0] * -5.0) * v81 + 1.0;
      v84 = v81 * -2.63327758e10;
      v85 = (v83 * v84 + -398600.44) * v82;
      v86 = v18 + (v85 + (v84 + v84) * v82) * v110[1].f64[0];
      *(v112 + 8) = v110[2];
      v87 = v85 + 0.00000000531749412;
      *v112 = v110[1].f64[1];
      *(&v112[2] + 1) = v86;
      *(&v112[1] + 1) = v24.f64[0] + 0.0001458423 * v110[2].f64[0] + v87 * v110[0].f64[0];
      *&v112[2] = v24.f64[1] + v110[1].f64[1] * -0.0001458423 + v87 * v110[0].f64[1];
      v88 = vdupq_lane_s64(*&v61, 0);
      do
      {
        v110[v80] = vmlaq_f64(*(&v108 + v80 * 16), v112[v80], v88);
        ++v80;
      }

      while (v80 != 3);
      v89 = 0;
      v90 = 1.0 / (v110[0].f64[1] * v110[0].f64[1] + v110[0].f64[0] * v110[0].f64[0] + v110[1].f64[0] * v110[1].f64[0]);
      v91 = v90 * sqrt(v90);
      v92 = ((v110[1].f64[0] * (v110[1].f64[0] * -5.0) * v90 + 1.0) * (v90 * -2.63327758e10) + -398600.44) * v91;
      *(&v111[2] + 1) = v18 + (v92 + (v90 * -2.63327758e10 + v90 * -2.63327758e10) * v91) * v110[1].f64[0];
      *v111 = v110[1].f64[1];
      *(v111 + 8) = v110[2];
      *(&v111[1] + 1) = v24.f64[0] + 0.0001458423 * v110[2].f64[0] + (v92 + 0.00000000531749412) * v110[0].f64[0];
      *&v111[2] = v24.f64[1] + v110[1].f64[1] * -0.0001458423 + (v92 + 0.00000000531749412) * v110[0].f64[1];
      v93 = vdupq_lane_s64(COERCE__INT64(v61 / 6.0), 0);
      do
      {
        *(&v108 + v89 * 16) = vmlaq_f64(*(&v108 + v89 * 16), vaddq_f64(vmlaq_f64(vmlaq_f64(v114[v89], _Q1, v113[v89]), _Q1, v112[v89]), v111[v89]), v93);
        ++v89;
      }

      while (v89 != 3);
      v62 = v108;
      v63 = *v109;
      v64 = *&v109[8];
      v65 = *&v109[24];
    }

    v94 = vdupq_n_s64(0x408F400000000000uLL);
    v95 = vmulq_f64(v62, v94);
    v96 = vmulq_f64(v95, xmmword_298A3C230);
    v97 = vextq_s8(v95, v95, 8uLL);
    v98 = vmlaq_n_f64(v97, v96, a4);
    *&v96.f64[0] = vdup_n_s32(a4 != 0.0);
    v99.i64[0] = LODWORD(v96.f64[0]);
    v99.i64[1] = HIDWORD(v96.f64[0]);
    v100 = vcltzq_s64(vshlq_n_s64(v99, 0x3FuLL));
    v101 = vbslq_s8(v100, v98, v97);
    *a3 = vextq_s8(v101, v101, 8uLL);
    *(a3 + 16) = v63 * 1000.0;
    v102 = vmulq_f64(v64, v94);
    v103 = vmulq_f64(v102, xmmword_298A3C230);
    v104 = vextq_s8(v102, v102, 8uLL);
    v105 = vbslq_s8(v100, vmlaq_n_f64(v104, v103, a4), v104);
    *(a3 + 24) = vextq_s8(v105, v105, 8uLL);
    *(a3 + 40) = v65 * 1000.0;
    *(a3 + 48) = -v11;
    *(a3 + 56) = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 11);
    *(a3 + 64) = (*(*a1 + 152))(a1);
    result = 1;
  }

  else
  {
    result = 0;
  }

  v106 = *MEMORY[0x29EDCA608];
  return result;
}

double BlueFin::GlPeGloEphemeris::ComputeAgeS(BlueFin::GlPeGloEphemeris *this, const BlueFin::GlPeGnssTime *a2)
{
  v16 = &off_2A1F0E430;
  v17 = 0;
  Glns = BlueFin::GlPeGnssTime::GetGlns(a2, &v16);
  (v16[4])(&v16, Glns);
  v4 = BlueFin::GlPeGloEphemeris::computeTk(v15, this, &v16);
  v5 = (*(*this + 192))(this, 9, v4);
  v6 = (*(*this + 232))(this, 9);
  *v6.i64 = (60 * v5 * v7);
  BlueFin::GlGlnsTime::ResolveAmbiguity(v15, v6, &v13, v8);
  v9 = v17;
  v10 = HIDWORD(v17);
  if (v14)
  {
    if (v17 < v14)
    {
      v10 = (__PAIR64__(HIDWORD(v14) - HIDWORD(v17), v14) - v17) >> 32;
      v9 = v14 - v17;
      v11 = 1;
    }

    else
    {
      v11 = 0;
      v10 = (v17 - v14) >> 32;
      v9 = v17 - v14;
    }
  }

  else
  {
    v11 = 0;
  }

  result = v9 * 2.32830644e-10 + v10;
  if ((v11 & ((v10 | v9) != 0)) != 0)
  {
    return -result;
  }

  return result;
}

double BlueFin::GlPeGloEphemeris::GetTgd(BlueFin::GlPeGloEphemeris *this)
{
  v2 = (*(*this + 208))(this, 4);
  v3 = (v2 * 562500.0) + 1602000000.0;
  v4 = ((v2 * 437500.0) + 1246000000.0) * ((v2 * 437500.0) + 1246000000.0);
  return BlueFin::GlPeEphemeris::GetScaledFloatingField(this, 28) * (v4 / (v4 - (v3 * v3)));
}

uint64_t BlueFin::GlPeGloEphemeris::GetSrc(BlueFin::GlPeGloEphemeris *this)
{
  v1 = (*(*this + 144))(this);
  if (v1 >= 4)
  {
    DeviceFaultNotify("glpe_glnephmgr.cpp", 380, "GetSrc", "false");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_glnephmgr.cpp", 380, "false");
  }

  return dword_298A3A830[v1];
}

uint64_t BlueFin::GlMeSrdSatStatusListener::TrackInvalid(BlueFin::GlMeSrdSatStatusListener *this, const BlueFin::GlSatCarrId *a2, int a3, int a4)
{
  v8 = *a2;
  result = BlueFin::GlMeSrdSatMgr::IsSatInKillProcess((*(this + 1) + 3520), *a2);
  if ((result & 1) == 0)
  {
    v10 = *(this + 1);
    v11 = 1 << (v8 & 0x1F);
    if ((v11 & *(v10[455] + 4 * (v8 >> 5))) == 0 && (v11 & *(v10[451] + 4 * (v8 >> 5))) == 0 || !BlueFin::GlMeSrdSatTrackMgr::HasSat((v10 + 1794), v8))
    {
      DeviceFaultNotify("glmesrd_acq_mgr.cpp", 834, "TrackInvalid", "GlMeSrdSatStatusListener::TrackInvalid Satid %u not in trackmgr\n");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_acq_mgr.cpp", 834, "GlMeSrdSatStatusListener::TrackInvalid Satid %u not in trackmgr\n");
    }

    v12 = (*(this + 1) + 14352);

    return BlueFin::GlMeSrdSatTrackMgr::TrackInvalid(v12, a2, a3, a4);
  }

  return result;
}

void *BlueFin::GlMeSrdSatTrackMgr::TrackInvalid(void *result, unsigned __int8 *a2, int a3, int a4)
{
  v4 = *a2 + 100 * a2[4];
  v5 = v4 >> 5;
  v6 = v4 & 0x1F;
  if (((*(result[500] + 4 * v5) >> v6) & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_track_mgr.cpp", 467, "TrackInvalid", "m_otSetSatCarrIdInUse.Has(otSatCarrId)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_track_mgr.cpp", 467, "m_otSetSatCarrIdInUse.Has(otSatCarrId)");
  }

  v7 = 1 << v6;
  *(result[530] + 4 * v5) |= v7;
  if (!a3)
  {
    if (!a4)
    {
      return result;
    }

LABEL_6:
    *(result[580] + 4 * v5) |= v7;
    return result;
  }

  *(result[570] + 4 * v5) |= v7;
  if (a4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t BlueFin::GlMeSlots::GpsFrameMgr(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 1504);
  v3 = *a2;
  v4 = v2 != v3 || v3 == 0;
  if (v4 || v2 >= 0x21 && (v2 < 0x42 || (v2 >= 0x4C ? (v5 = v2 - 189 > 0xFFFFFFF1) : (v5 = 1), !v5)))
  {
    DeviceFaultNotify("glme_msmtmgr.cpp", 89, "GpsFrameMgr", "(m_otSignalId.GetSvId() == rotSvId) && ((IS_GPS_SVID(*rotSvId)) INC_QZS(|| IS_QZSS_SVID(*rotSvId)) INC_NIC(|| IS_NAVIC_SVID(*rotSvId)))");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_msmtmgr.cpp", 89, "(m_otSignalId.GetSvId() == rotSvId) && ((IS_GPS_SVID(*rotSvId)) INC_QZS(|| IS_QZSS_SVID(*rotSvId)) INC_NIC(|| IS_NAVIC_SVID(*rotSvId)))");
  }

  return a1 + 192;
}

uint64_t BlueFin::GlMeSrdSatTrackMgr::SnapToAidingForNonL1(BlueFin::GlMeSrdSatTrackMgr *this, const BlueFin::GlSatCarrId *a2)
{
  v3 = *a2 + 100 * *(a2 + 4);
  v4 = *(*(this + 500) + 4 * (v3 >> 5));
  v5 = *(this + 1);
  if ((v4 >> (v3 & 0x1F)))
  {
    result = BlueFin::GlMeSrdSatMgr::GetTrackChannel(v5, a2);
    if (result >= 0x7B)
    {
      DeviceFaultNotify("glmesrd_track_mgr.cpp", 509, "SnapToAidingForNonL1", "ucTrackChannel < _DIM(m_aotSatTrackData)");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_track_mgr.cpp", 509, "ucTrackChannel < _DIM(m_aotSatTrackData)");
    }

    *(this + 32 * result + 57) = 0;
  }

  else
  {
    v7 = *a2;

    return BlueFin::GlMeSrdSatMgr::IsSatInKillProcess(v5, v7);
  }

  return result;
}

float BlueFin::GlMeSrdSatReport::CalcDbHzToTargetCohSnrInLin(BlueFin::GlMeSrdSatReport *this, float a2, float a3)
{
  v4 = 0.5;
  if ((a3 * 1000000.0) <= 0.0)
  {
    v4 = -0.5;
    if ((a3 * 1000000.0) >= 0.0)
    {
LABEL_38:
      v6 = log10f(a3);
      goto LABEL_39;
    }
  }

  v5 = (v4 + (a3 * 1000000.0));
  if (v5 > 10999)
  {
    if (v5 > 15999)
    {
      if (v5 <= 17999)
      {
        if (v5 != 16000)
        {
          if (v5 == 17000)
          {
            v6 = -1.76955108;
            goto LABEL_39;
          }

          goto LABEL_38;
        }

        v6 = -1.79588002;
      }

      else
      {
        switch(v5)
        {
          case 18000:
            v6 = -1.74472749;
            break;
          case 19000:
            v6 = -1.7212464;
            break;
          case 20000:
            v6 = -1.69897;
            break;
          default:
            goto LABEL_38;
        }
      }
    }

    else if (v5 <= 12999)
    {
      if (v5 != 11000)
      {
        if (v5 == 12000)
        {
          v6 = -1.92081875;
          goto LABEL_39;
        }

        goto LABEL_38;
      }

      v6 = -1.95860731;
    }

    else
    {
      switch(v5)
      {
        case 13000:
          v6 = -1.88605665;
          break;
        case 14000:
          v6 = -1.85387196;
          break;
        case 15000:
          v6 = -1.82390874;
          break;
        default:
          goto LABEL_38;
      }
    }
  }

  else if (v5 > 5999)
  {
    if (v5 <= 7999)
    {
      if (v5 != 6000)
      {
        if (v5 == 7000)
        {
          v6 = -2.15490196;
          goto LABEL_39;
        }

        goto LABEL_38;
      }

      v6 = -2.22184875;
    }

    else
    {
      switch(v5)
      {
        case 8000:
          v6 = -2.09691001;
          break;
        case 9000:
          v6 = -2.04575749;
          break;
        case 10000:
          v6 = -2.0;
          break;
        default:
          goto LABEL_38;
      }
    }
  }

  else
  {
    if (v5 <= 2999)
    {
      v6 = -3.0;
      if (v5 == 1000)
      {
        goto LABEL_39;
      }

      if (v5 == 2000)
      {
        v6 = -2.69897;
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    switch(v5)
    {
      case 3000:
        v6 = -2.52287875;
        break;
      case 4000:
        v6 = -2.39794001;
        break;
      case 5000:
        v6 = -2.30103;
        break;
      default:
        goto LABEL_38;
    }
  }

LABEL_39:
  v7 = v6 + (a2 * 0.1);

  return __exp10f(v7);
}

uint64_t BlueFin::GlMeDSPDataBits::Set(uint64_t result, char a2, _BYTE *a3, unsigned int a4, __int16 a5, int a6, int a7, unsigned int a8, double a9, int *a10, char a11, uint64_t a12, int a13)
{
  *(result + 8) = a2;
  *(result + 9) = *a3;
  *(result + 12) = 0;
  *(result + 16) = a5;
  *(result + 20) = a6;
  *(result + 24) = a7;
  *(result + 32) = a9;
  if (a8 > 0x20)
  {
    v21 = "usNumWords <= _DIM(m_aulBitValues)";
    DeviceFaultNotify("glme_msmtmgr.cpp", 2144, "Set", "usNumWords <= _DIM(m_aulBitValues)");
    v22 = 2144;
    goto LABEL_22;
  }

  if (a8)
  {
    v14 = (result + 44);
    v15 = a8;
    do
    {
      v16 = *a10++;
      *v14++ = v16;
      --v15;
    }

    while (v15);
    if (a11)
    {
      v17 = 0;
      do
      {
        *(result + 172 + 4 * v17) = *(a12 + 4 * v17);
        ++v17;
      }

      while (v17 < a8);
      goto LABEL_10;
    }
  }

  else if (a11)
  {
LABEL_10:
    v18 = 32;
    goto LABEL_12;
  }

  v18 = 0;
LABEL_12:
  v19 = v18 | 0x40;
  if (((1 << a4) & 0x23000) == 0)
  {
    v19 = v18;
  }

  if (a4 <= 0x11)
  {
    v18 = v19;
  }

  *(result + 12) = v18;
  if (a13 == 1)
  {
    v20 = v18 & 0xFFFFFFFD;
    goto LABEL_20;
  }

  if (a13)
  {
    v21 = "0";
    DeviceFaultNotify("glme_msmtmgr.cpp", 2184, "Set", "0");
    v22 = 2184;
LABEL_22:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_msmtmgr.cpp", v22, v21);
  }

  v20 = v18 | 2;
LABEL_20:
  *(result + 12) = v20 | 0x10;
  return result;
}

uint64_t BlueFin::GlMeGlonassFrameMgr::GetGlnsStrPhsInSym(BlueFin::GlMeGlonassFrameMgr *this, unsigned int a2, unsigned __int8 *a3)
{
  *a3 = -1;
  if (*(this + 1))
  {
    return 0;
  }

  SearchStateMemory = BlueFin::GlMeGlonassFrameMgr::GetSearchStateMemory(this);
  if (*(SearchStateMemory + 140) != 1)
  {
    return 0;
  }

  v7 = *(SearchStateMemory + 148);
  if (v7 <= a2)
  {
    v8 = (a2 - v7 + 5) / 0xA - -56 * (((42949673 * ((a2 - v7 + 5) / 0xA)) >> 32) >> 1);
  }

  else
  {
    v8 = -56 * (((42949673 * ((v7 - a2 + 5) / 0xA)) >> 32) >> 1) - (v7 - a2 + 5) / 0xA - 56;
  }

  *a3 = v8;
  return 1;
}

uint64_t BlueFin::GlMeSlots::GlonassFrameMgr(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (*(a1 + 1504) != v2 || (v2 - 66) <= 0xFFFFFFF1)
  {
    DeviceFaultNotify("glme_msmtmgr.cpp", 97, "GlonassFrameMgr", "(m_otSignalId.GetSvId() == rotSvId) && (IS_GLONASS_SVID(*rotSvId))");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_msmtmgr.cpp", 97, "(m_otSignalId.GetSvId() == rotSvId) && (IS_GLONASS_SVID(*rotSvId))");
  }

  return a1 + 192;
}

uint64_t BlueFin::GlMeGlonassFrameMgr::GetSystemTime(BlueFin::GlMeGlonassFrameMgr *a1, _DWORD *a2, _DWORD *a3, _BYTE *a4, _BYTE *a5, _BYTE *a6, _BYTE *a7, _DWORD *a8)
{
  v8 = *(a1 + 1);
  if (v8 == 1)
  {
    return 0;
  }

  if (v8)
  {
    DeviceFaultNotify("glme_glonassframemgr.cpp", 355, "GetSystemTime", "false");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_glonassframemgr.cpp", 355, "false");
  }

  SearchStateMemory = BlueFin::GlMeGlonassFrameMgr::GetSearchStateMemory(a1);
  *a2 = *(SearchStateMemory + 148);
  *a3 = *(SearchStateMemory + 152);
  *a4 = *(SearchStateMemory + 140);
  *a5 = *(SearchStateMemory + 141);
  *a6 = *(SearchStateMemory + 142);
  *a7 = *(SearchStateMemory + 144);
  *a8 = *a1;
  return 1;
}

uint64_t BlueFin::GlMeGlonassFrameMgr::GetSearchStateMemory(BlueFin::GlMeGlonassFrameMgr *this)
{
  if (*(this + 1))
  {
    DeviceFaultNotify("glme_glonassframemgr.cpp", 79, "GetSearchStateMemory", "SEARCH == m_etState");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_glonassframemgr.cpp", 79, "SEARCH == m_etState");
  }

  return this + 8;
}

BlueFin::GlMeSrdViterbiDecoder *BlueFin::GlMeSrdEstNavBit::Run(BlueFin::GlMeSrdViterbiDecoder *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float *a6, unsigned __int8 *a7, float *a8, _BYTE *a9, uint64_t a10, uint64_t a11)
{
  if ((*a5 & 1) == 0)
  {
    v56 = "stAsicNavBitTrkMsmt.bValid";
    DeviceFaultNotify("glmesrd_navbit.cpp", 63, "Run", "stAsicNavBitTrkMsmt.bValid");
    v57 = 63;
    goto LABEL_57;
  }

  v12 = *(a5 + 2);
  *(a11 + 2) = v12;
  v13 = *(a5 + 672);
  if (v13 >= 0x21)
  {
    v56 = "stAsicNavBitTrkMsmt.usNumWords <= GlMeSrdAsicNavBitTrkMsmt::MAX_NUM_TRK_DATA_WORDS";
    DeviceFaultNotify("glmesrd_navbit.cpp", 67, "Run", "stAsicNavBitTrkMsmt.usNumWords <= GlMeSrdAsicNavBitTrkMsmt::MAX_NUM_TRK_DATA_WORDS");
    v57 = 67;
    goto LABEL_57;
  }

  v17 = result;
  v18 = 0;
  *(a11 + 928) = v13;
  *(a11 + 4) = *(a5 + 4);
  do
  {
    v19 = (a11 + v18);
    v19[2] = *(a5 + v18 + 8);
    v19[34] = *(a5 + v18 + 136);
    v19[165] = *(a5 + v18 + 404);
    v19[197] = *(a5 + v18 + 532);
    v18 += 4;
  }

  while (v18 != 128);
  if (*(a5 + 392) == 1)
  {
    *(a11 + 360) = 0u;
    *(a11 + 376) = 0u;
    *(a11 + 328) = 0u;
    *(a11 + 344) = 0u;
    *(a11 + 296) = 0u;
    *(a11 + 312) = 0u;
    *(a11 + 264) = 0u;
    *(a11 + 280) = 0u;
    if (v12)
    {
      v20 = 0;
      v21 = *(result + 8);
      v22 = v12;
      do
      {
        v23 = 0;
        if ((v22 & 0xFFE0) != 0)
        {
          v24 = 32;
        }

        else
        {
          v24 = v22;
        }

        v25 = v20;
        v26 = *(a11 + 8 + 4 * v20);
        v27 = v24;
        do
        {
          if (v26 < 0)
          {
            v21 = (v21 & 1) == 0;
            *(v17 + 8) = v21;
          }

          v26 *= 2;
          v23 = 2 * v23 + v21;
          --v27;
        }

        while (v27);
        v22 -= v24;
        v20 = v25 + 1;
        *(a11 + 264 + 4 * v25) = v23 << -v24;
      }

      while (v22);
    }

    result = *(v17 + 2);
    if (result && a8[2] > a6[3])
    {
      result = BlueFin::GlMeSrdViterbiDecoder::RunViterbi(result, v12, (a11 + 660), (a11 + 788), 0);
      *(a11 + 928) >>= 1;
      v12 = *(a11 + 2) >> 1;
      *(a11 + 2) >>= 1;
      *(a11 + 930) = 1;
    }
  }

  v28 = *(a5 + 394);
  if (v28 == 1)
  {
    v29 = 0;
    v30 = a5 + 264;
    v31 = a11 + 392;
    do
    {
      for (i = 0; i != 32; i += 4)
      {
        *(v31 + i) = *(v30 + i);
      }

      ++v29;
      v31 += 32;
      v30 += 32;
    }

    while (v29 != 4);
    v33 = 0;
    v34 = v17 + 9;
    while (1)
    {
      v35 = (a11 + 520 + 32 * v33);
      *v35 = 0uLL;
      v35[1] = 0uLL;
      if (v12)
      {
        break;
      }

LABEL_35:
      if (++v33 == 4)
      {
        LOBYTE(v28) = *(a5 + 394);
        goto LABEL_37;
      }
    }

    v36 = 0;
    v37 = v34[v33];
    v38 = v12;
    result = (a11 + 392 + 32 * v33);
    while (1)
    {
      v39 = v38;
      if ((v38 & 0xFFE0) != 0)
      {
        v39 = 32;
      }

      if (v36 == 8)
      {
        break;
      }

      v40 = 0;
      v38 -= v39;
      v41 = *(result + v36);
      v42 = v39;
      do
      {
        if (v41 < 0)
        {
          v37 = (v37 & 1) == 0;
          v34[v33] = v37;
        }

        v41 *= 2;
        v40 = 2 * v40 + v37;
        --v42;
      }

      while (v42);
      *(v35 + v36++) = v40 << -v39;
      if (!v38)
      {
        goto LABEL_35;
      }
    }

    v56 = "ucWordOffset < GlMeSrdAsicNavBitTrkMsmt::MAX_NUM_TRK_LOW_TOW_DATA_WORDS";
    DeviceFaultNotify("glmesrd_navbit.cpp", 165, "Run", "ucWordOffset < GlMeSrdAsicNavBitTrkMsmt::MAX_NUM_TRK_LOW_TOW_DATA_WORDS");
    v57 = 165;
LABEL_57:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_navbit.cpp", v57, v56);
  }

LABEL_37:
  v43 = 0;
  *a11 = 1;
  v44 = *(a5 + 392);
  *(a11 + 648) = v44;
  v45 = *(a5 + 393);
  *(a11 + 649) = v45;
  *(a11 + 650) = v28;
  *(a11 + 651) = *(a5 + 395);
  *(a11 + 656) = *(a5 + 400);
  *(a11 + 916) = *(a5 + 660);
  v46 = *(a5 + 662);
  *(a11 + 918) = v46;
  v47 = *(a5 + 663);
  *(a11 + 919) = v47;
  *(a11 + 920) = *(a5 + 664);
  if (a9[28])
  {
    v48 = a9[29];
  }

  else
  {
    v48 = 0;
  }

  v49 = *a7 - 139;
  if (v49 >= 0x24)
  {
    v50 = v48;
  }

  else
  {
    v50 = 0;
  }

  v51 = *a8;
  if (a8[2] < a6[15])
  {
    v52 = *a8;
  }

  else
  {
    v52 = 0;
  }

  v53 = (v50 | v52) ^ 1;
  *(a11 + 648) = v53 & v44;
  *(a11 + 649) = v53 & v45;
  *(a11 + 650) = v53 & v28;
  if (a9[31] == 1)
  {
    if (a9[33])
    {
      v43 = 1;
    }

    else
    {
      v43 = a9[32];
    }
  }

  if (v49 < 0x24)
  {
    v43 = 0;
  }

  if (a8[2] < a6[18])
  {
    v54 = v51;
  }

  else
  {
    v54 = 0;
  }

  v55 = (v43 | v54) ^ 1;
  *(a11 + 918) = v55 & v46;
  *(a11 + 919) = v55 & v47;
  return result;
}

double BlueFin::GlMeSrdEstCodePrm::SubMsPart(BlueFin::GlMeSrdEstCodePrm *this, double a2)
{
  v2 = a2 * 1000.0 - floor(a2 * 1000.0);
  if (v2 < 0.0 || v2 >= 1.0)
  {
    DeviceFaultNotify("glmesrd_codeprm.cpp", 1872, "SubMsPart", "(0.0 <= dSubMsTimeInMs) && (dSubMsTimeInMs < 1.0)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_codeprm.cpp", 1872, "(0.0 <= dSubMsTimeInMs) && (dSubMsTimeInMs < 1.0)");
  }

  v4 = 0.001;
  result = v2 * 0.001;
  if (result <= 0.0005)
  {
    if (result > -0.0005)
    {
      return result;
    }
  }

  else
  {
    v4 = -0.001;
  }

  return result + v4;
}

uint64_t BlueFin::GlMeSrdAsicCorrVecTrkMsmt::AddMagSqCvecToAccumulator(uint64_t a1, uint64_t a2, unsigned int a3, float a4)
{
  if ((*a1 & 1) == 0)
  {
    v9 = "m_bValid";
    DeviceFaultNotify("glmesrd_estimators_input_trk.cpp", 369, "AddMagSqCvecToAccumulator", "m_bValid");
    v10 = 369;
    goto LABEL_15;
  }

  v5 = *(a1 + 148);
  if (!v5)
  {
    v9 = "m_ucDelaysPerChip > 0";
    DeviceFaultNotify("glmesrd_estimators_input_trk.cpp", 370, "AddMagSqCvecToAccumulator", "m_ucDelaysPerChip > 0");
    v10 = 370;
    goto LABEL_15;
  }

  if (*(a1 + 4) >= 9u)
  {
    v9 = "m_stMagSqCvec.m_ucCvecLen <= MAX_CVEC_LEN";
    DeviceFaultNotify("glmesrd_estimators_input_trk.cpp", 371, "AddMagSqCvecToAccumulator", "m_stMagSqCvec.m_ucCvecLen <= MAX_CVEC_LEN");
    v10 = 371;
LABEL_15:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_estimators_input_trk.cpp", v10, v9);
  }

  v6 = *(a1 + 176) * 1000.0;
  v7 = 0.5;
  if (v6 <= 0.0 && (v7 = -0.5, v6 >= 0.0))
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v8 = (v6 + v7);
    if (v8 >= 0x100)
    {
      v9 = "ucCvCohIntInMs == slCvCohIntInMs";
      DeviceFaultNotify("glmesrd_estimators_input_trk.cpp", 375, "AddMagSqCvecToAccumulator", "ucCvCohIntInMs == slCvCohIntInMs");
      v10 = 375;
      goto LABEL_15;
    }
  }

  v11 = *(a1 + 149);
  v12 = *(a1 + 164);

  return BlueFin::GlMeSrdCorrVecAccumulator::AddVec(a2, (a1 + 4), v5, v11, v12, v8, a3, a4);
}

uint64_t BlueFin::GlMeSrdCorrVecAccumulator::AddVec(uint64_t result, unsigned __int8 *a2, char a3, int a4, unsigned int a5, char a6, unsigned int a7, float a8)
{
  LODWORD(v8) = *a2;
  if (v8 >= 9)
  {
    v34 = "stCorrVec.m_ucCvecLen <= _DIM(stCorrVec.m_afCvec)";
    DeviceFaultNotify("glmesrd_corrvec_accumulator.cpp", 92, "AddVec", "stCorrVec.m_ucCvecLen <= _DIM(stCorrVec.m_afCvec)");
    v35 = 92;
    goto LABEL_58;
  }

  if (*(a2 + 1) != *result)
  {
    v34 = "stCorrVec.m_etNominalOrExtendedCvec == m_etNominalOrExtendedCvec";
    DeviceFaultNotify("glmesrd_corrvec_accumulator.cpp", 93, "AddVec", "stCorrVec.m_etNominalOrExtendedCvec == m_etNominalOrExtendedCvec");
    v35 = 93;
    goto LABEL_58;
  }

  if (*(a2 + 2) != *(result + 4))
  {
    v34 = "stCorrVec.m_etCvecNonlinearityType == m_etCvecNonlinearityType";
    DeviceFaultNotify("glmesrd_corrvec_accumulator.cpp", 94, "AddVec", "stCorrVec.m_etCvecNonlinearityType == m_etCvecNonlinearityType");
    v35 = 94;
    goto LABEL_58;
  }

  v9 = *(result + 13);
  if (v9 == 4)
  {
    v11 = v8 == 8;
  }

  else
  {
    if (!*(result + 13))
    {
      *(result + 13) = v8;
      *(result + 10) = *(a2 + 1);
      *(result + 8) = a3;
      v10 = (result + 9);
LABEL_25:
      *v10 = a4;
      goto LABEL_26;
    }

    v11 = 0;
  }

  if (v9 != v8 && !v11)
  {
    v34 = "m_ucCorrVecLen == stCorrVec.m_ucCvecLen || bAssertException";
    DeviceFaultNotify("glmesrd_corrvec_accumulator.cpp", 112, "AddVec", "m_ucCorrVecLen == stCorrVec.m_ucCvecLen || bAssertException");
    v35 = 112;
    goto LABEL_58;
  }

  v12 = a2[1];
  v13 = *(result + 10) == v12 || v11;
  if ((v13 & 1) == 0)
  {
    v34 = "m_bHaveVeryEarlySample == stCorrVec.m_bHaveVeryEarlySample || bAssertException";
    DeviceFaultNotify("glmesrd_corrvec_accumulator.cpp", 113, "AddVec", "m_bHaveVeryEarlySample == stCorrVec.m_bHaveVeryEarlySample || bAssertException");
    v35 = 113;
    goto LABEL_58;
  }

  v14 = a2[2];
  v15 = *(result + 11) == v14 || v11;
  if ((v15 & 1) == 0)
  {
    v34 = "m_ucIdxOfFirstVeryEarlySample == stCorrVec.m_ucIdxOfFirstVeryEarlySample || bAssertException";
    DeviceFaultNotify("glmesrd_corrvec_accumulator.cpp", 114, "AddVec", "m_ucIdxOfFirstVeryEarlySample == stCorrVec.m_ucIdxOfFirstVeryEarlySample || bAssertException");
    v35 = 114;
    goto LABEL_58;
  }

  v10 = (result + 9);
  v16 = *(result + 9) == a4 || v11;
  if ((v16 & 1) == 0)
  {
    v34 = "m_ucCvecPromptIdx == ucCvecPromptIdx || bAssertException";
    DeviceFaultNotify("glmesrd_corrvec_accumulator.cpp", 116, "AddVec", "m_ucCvecPromptIdx == ucCvecPromptIdx || bAssertException");
    v35 = 116;
LABEL_58:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_corrvec_accumulator.cpp", v35, v34);
  }

  if (v11)
  {
    *(result + 13) = v8;
    *(result + 10) = v12;
    *(result + 11) = v14;
    *(result + 8) = a3;
    goto LABEL_25;
  }

LABEL_26:
  v17 = result + 16;
  if (*(result + 15) || *(result + 14))
  {
    v18 = *(v17 + 40 * *(result + 15));
    v19 = a5 >= v18;
    v20 = a5 - v18;
    if (!v20)
    {
      return result;
    }

    if (!v19)
    {
      v21 = (result + 24);
      v22 = 10;
      do
      {
        *v21 = 0uLL;
        v21[1] = 0uLL;
        *(v21 - 2) = 0;
        *(v21 - 5) = 0;
        v21 = (v21 + 40);
        --v22;
      }

      while (v22);
LABEL_36:
      v25 = 0;
      LODWORD(v8) = *a2;
      goto LABEL_39;
    }

    if (v20 > a7)
    {
      v23 = (result + 24);
      v24 = 10;
      do
      {
        *v23 = 0uLL;
        v23[1] = 0uLL;
        *(v23 - 2) = 0;
        *(v23 - 5) = 0;
        v23 = (v23 + 40);
        --v24;
      }

      while (v24);
      goto LABEL_36;
    }

    v25 = *(result + 14);
  }

  else
  {
    v25 = 0;
  }

LABEL_39:
  if (v8)
  {
    v26 = (a2 + 16);
    v8 = v8;
    v27 = (result + 40 * v25 + 24);
    do
    {
      v28 = *v26++;
      *v27++ = v28;
      --v8;
    }

    while (v8);
  }

  v29 = v17 + 40 * v25;
  *v29 = a5;
  *(v29 + 4) = a2[13];
  v30 = a8;
  if (a8 <= 0.0)
  {
    if (a8 >= 0.0)
    {
      LOBYTE(v32) = 0;
      goto LABEL_48;
    }

    v31 = -0.5;
  }

  else
  {
    v31 = 0.5;
  }

  v32 = (v30 + v31);
LABEL_48:
  v33 = v17 + 40 * v25;
  *(v33 + 5) = v32;
  *(v33 + 6) = a6;
  *(result + 14) = v25 + 1;
  *(result + 15) = v25;
  if (*(result + 12) <= (v25 + 1))
  {
    *(result + 14) = 0;
  }

  return result;
}

uint64_t BlueFin::GlMeSrdSatRptTrkMsmtMI::GetEpochCntInMs(BlueFin::GlSignalId **this)
{
  result = *(*this + 23);
  if (result != -1)
  {
    return result;
  }

  v3 = this[4];
  EpochPerSymbol = BlueFin::GlSignalId::GetEpochPerSymbol(v3);
  if (*(v3 + 4) >= 0x23Fu)
  {
    goto LABEL_17;
  }

  v5 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(v3 + 1) - *(v3 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*v3]];
  if (!v5)
  {
LABEL_18:
    v11 = "ucMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
    v12 = 686;
LABEL_19:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v12, v11);
  }

  v6 = this[4];
  v7 = *v6;
  if ((v7 - 81) > 0x34)
  {
    v9 = v5 * EpochPerSymbol;
    goto LABEL_12;
  }

  if ((*(*this + 24) & 0xF) == 0)
  {
    if (*(v6 + 4) < 0x23Fu)
    {
      v9 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(v6 + 1) - *(v6 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*v6]];
      if (v9)
      {
        goto LABEL_12;
      }

      goto LABEL_18;
    }

LABEL_17:
    v11 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
    v12 = 679;
    goto LABEL_19;
  }

  EpochPerBit = BlueFin::GlSignalId::GetEpochPerBit(this[4]);
  if (*(v6 + 4) >= 0x23Fu)
  {
    goto LABEL_17;
  }

  if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(v6 + 1) - *(v6 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*v6]])
  {
    goto LABEL_18;
  }

  v9 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(v6 + 1) - *(v6 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*v6]] * EpochPerBit;
  v6 = this[4];
  v7 = *v6;
LABEL_12:
  if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(v6 + 1) - *(v6 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[v7]] == 1)
  {
    v10 = 20;
  }

  else
  {
    v10 = v9;
  }

  return BlueFin::GlMeSrdSatRptTrkMsmtMIBase::GetEpochCntInBits(this) * v10;
}

void BlueFin::GlMeSrdSatRptTrkMsmtMI::BuildCvecMsmt(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, char a6, float a7)
{
  v53 = *MEMORY[0x29EDCA608];
  if ((*(a1 + 56) & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 725, "BuildCvecMsmt", "m_stAcqWindowMsmtInfo.m_bValid");
    CrashData();
  }

  v14 = (*(**(a1 + 16) + 168))(*(a1 + 16), *(a1 + 41));
  v15 = (*(**(a1 + 16) + 136))(*(a1 + 16));
  v16 = 0;
  *a5 = 1;
  v17 = *(v14 + 152);
  *(a5 + 4) = v17;
  *(a5 + 52) = v17;
  *(a5 + 100) = v17;
  *(a5 + 148) = *(v14 + 156);
  *(a5 + 17) = a6;
  LOBYTE(v18) = *(v15 + 26);
  LOWORD(v19) = *(v15 + 24);
  *&v20 = v19;
  v21 = v18 / *&v20;
  LOWORD(v20) = *(*a1 + 324);
  v22 = *v14 * v20;
  v23 = (a5 + 68);
  v24 = (a3 + 32);
  v25 = (a5 + 68);
  do
  {
    if (v16 >= v17)
    {
      *(v25 - 12) = 0.0;
    }

    else
    {
      *(v25 - 12) = (v21 * *(a2 + 4 * v16)) / v22;
      if (!a4)
      {
        *v25 = (v21 * *(v24 - 8)) / v22;
        v26 = (v21 * *v24) / v22;
        goto LABEL_9;
      }
    }

    *v25 = 0.0;
    v26 = 0.0;
LABEL_9:
    v25[12] = v26;
    ++v16;
    ++v25;
    ++v24;
  }

  while (v16 != 8);
  v27 = *(a1 + 32);
  v28 = *(v27 + 1);
  if (v28)
  {
    v29 = v28 == 3;
  }

  else
  {
    v29 = 1;
  }

  if (v29 && (*(v14 + 148) - 5) <= 1)
  {
    v51 = xmmword_298A36B1C;
    v52 = unk_298A36B2C;
    if ((*(**(a1 + 48) + 256))(*(a1 + 48)) && (*(**(a1 + 48) + 824))(*(a1 + 48)) <= 0x82)
    {
      v51 = xmmword_298A36B3C;
      v52 = unk_298A36B4C;
    }

    v30 = 0;
    v31 = *(a5 + 4);
    do
    {
      if (v30 < v31)
      {
        v32 = *(&v51 + v30);
        *(v23 - 12) = (v21 * *(a2 + 4 * v32)) / v22;
        v33 = 0.0;
        v34 = 0.0;
        if ((a4 & 1) == 0)
        {
          v33 = (v21 * *(a3 + 4 * v32)) / v22;
          v34 = (v21 * *(a3 + 32 + 4 * v32)) / v22;
        }

        *v23 = v33;
        v23[12] = v34;
      }

      ++v30;
      ++v23;
    }

    while (v30 != 8);
    if (BlueFin::GlUtils::m_ucEnabled)
    {
      BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x97);
    }

    v27 = *(a1 + 32);
  }

  v35 = *(v27 + 4);
  if (v35 >= 0x23F)
  {
    v48 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 693, "GetSecPerEpochWithTrkException", "IsValid()");
    v49 = 693;
    goto LABEL_56;
  }

  v36 = *(v27 + 1);
  v37 = *v27;
  if (v36 != 1 || ((v38 = 1.5, (v37 - 1) >= 0x20) ? (v39 = (v37 - 66) >= 0xA) : (v39 = 0), v39))
  {
    v40 = BlueFin::GlSvId::s_aucSvId2gnss[*v27];
    v41 = &BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[-v36];
    if (v41[8 * v36 + v40])
    {
      v38 = v41[8 * v36 + v40] * 0.001;
      goto LABEL_37;
    }

    v48 = "ucMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
    v49 = 686;
LABEL_56:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v49, v48);
  }

LABEL_37:
  v42 = *(a1 + 3480) * v22 / v38;
  *(a5 + 150) = *(*a1 + 12);
  if ((a5 + 152) != v27)
  {
    *(a5 + 152) = v37;
    *(a5 + 156) = v36;
    *(a5 + 160) = v35;
    v36 = *(v27 + 1);
  }

  v43 = *(v14 + 44);
  *(a5 + 176) = a7;
  *(a5 + 180) = v43;
  *(a5 + 164) = *(a1 + 76);
  *(a5 + 168) = *(a1 + 120);
  *(a5 + 184) = v42;
  *a5 = 1;
  *(a5 + 149) = *(v14 + 153);
  if (!v36 && (*(**(a1 + 48) + 256))(*(a1 + 48)) && (*(**(a1 + 48) + 824))(*(a1 + 48)) <= 0x82 && *(v14 + 148) == 7)
  {
    *(a5 + 149) = 4;
  }

  if ((*(v14 + 148) - 5) <= 1)
  {
    *(a5 + 149) = 3;
  }

  v45 = *(v14 + 157);
  *(a5 + 5) = v45;
  v46 = *(v14 + 158);
  *(a5 + 6) = v46;
  *(a5 + 53) = v45;
  *(a5 + 54) = v46;
  *(a5 + 101) = v45;
  *(a5 + 102) = v46;
  if (v46 >= 8)
  {
    DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 880, "BuildCvecMsmt", "stCorrVecTrkMsmt.m_stMagSqCvec.m_ucIdxOfFirstVeryEarlySample < _DIM(stCorrVecTrkMsmt.m_stMagSqCvec.m_afCvec)");
    v50 = *MEMORY[0x29EDCA608];

    CrashData();
  }

  else
  {
    v47 = *MEMORY[0x29EDCA608];
  }
}

uint64_t BlueFin::GlMeSrdDspMeasAuxTrackRslts::Clear(uint64_t this)
{
  *this = 0;
  *(this + 4) = 0;
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 16) = 0;
  *(this + 20) = 0xFFFFFFFF00000000;
  *(this + 28) = -1;
  *(this + 33) = 4;
  *(this + 29) = 0;
  *(this + 36) = 4;
  *(this + 72) = 0;
  *(this + 64) = 0;
  *(this + 80) = 0;
  *(this + 88) = 0;
  *(this + 92) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 53) = 0;
  *(this + 96) = 0;
  *(this + 104) = 0;
  *(this + 118) = 0;
  *(this + 112) = 0;
  return this;
}

double BlueFin::GlMeSrdAsicUnitConverter::EswUtStructToInitialUserTimeMs(uint64_t a1, unsigned __int8 *a2, int a3)
{
  Lms16ToLms32 = BlueFin::GlMeSrdAsicUnitConverter::GetLms16ToLms32(*(a1 + 4), a3);
  if (*(a2 + 4) >= 0x23Fu)
  {
    v15 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 807, "GetChipsPerSec", "IsValid()");
    v16 = "glsignalid.h";
    v17 = 807;
    goto LABEL_11;
  }

  v7 = BlueFin::GlSvId::s_aucSvId2gnss[*a2];
  v8 = *(a2 + 1);
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
    v15 = "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 815, "GetChipsPerSec", "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0");
    v16 = "glsignalid.h";
    v17 = 815;
    goto LABEL_11;
  }

  v12 = 0x408F400000000000;
  LOBYTE(v12) = BlueFin::GlMeSrdAsicUnitConverter::ucSubChipResolution;
  v13 = (1000 * v9 / v10) / 1000.0 * v12;
  if (v13 == 0.0)
  {
    v15 = "dTwentiethsPerMs != 0";
    DeviceFaultNotify("glmesrd_asic_unit_converter.cpp", 333, "EswUtStructToInitialUserTimeMs", "dTwentiethsPerMs != 0");
    v16 = "glmesrd_asic_unit_converter.cpp";
    v17 = 333;
LABEL_11:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v16, v17, v15);
  }

  LOWORD(v6) = *(a1 + 6);
  return v6 / v13 + Lms16ToLms32;
}

float BlueFin::GlMeSrdSatRptTrkMsmtMI::BuildCNoMsmt(BlueFin::GlMeSrdSatRptTrkMsmtMI *this, int a2)
{
  *(this + 136) = 1;
  LOWORD(v2) = *((*(**(this + 2) + 136))(*(this + 2)) + 24);
  v5 = (*(**(this + 2) + 136))(*(this + 2));
  LOWORD(v6) = *(*this + 324);
  *&v7 = v6;
  v8 = *(*this + 108) / *&v7;
  LOBYTE(v7) = *(v5 + 26);
  *(this + 35) = (v8 * v7) / v2;
  v9 = 40;
  if (a2)
  {
    v9 = 41;
  }

  result = *((*(**(this + 2) + 184))(*(this + 2), *(this + v9)) + 8);
  *(this + 36) = result;
  return result;
}

float BlueFin::GlMeSrdAsicUnitConverter::EswFllOrPllPhiDotToHz(BlueFin::GlMeSrdAsicUnitConverter *this, float a2)
{
  if (a2 == 0.0)
  {
    DeviceFaultNotify("glmesrd_asic_unit_converter.cpp", 551, "EswFllOrPllPhiDotToHz", "fAcqCohIntInSec != 0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asic_unit_converter.cpp", 551, "fAcqCohIntInSec != 0");
  }

  return vcvtd_n_f64_s32(this, 0x19uLL) / a2;
}

float BlueFin::GlMeSrdAsicUnitConverter::EswFllOrPllPhi2DotToHzPerSec(BlueFin::GlMeSrdAsicUnitConverter *this, float a2)
{
  if (a2 == 0.0)
  {
    DeviceFaultNotify("glmesrd_asic_unit_converter.cpp", 564, "EswFllOrPllPhi2DotToHzPerSec", "fAcqCohIntInSec != 0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asic_unit_converter.cpp", 564, "fAcqCohIntInSec != 0");
  }

  return vcvtd_n_f64_s32(this >> 12, 0x19uLL) / (a2 * a2);
}

uint64_t BlueFin::GlMeSrdSatRptTrkMsmtMI::AidApplied(BlueFin::GlMeSrdSatRptTrkMsmtMI *this)
{
  v1 = *this;
  if ((*(*this + 9) & 0x2001) == 0)
  {
    DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 422, "AidApplied", "m_rRpcBuffer.GetFlags().Has(FLG_TRACK_HAS_DEBUG) || m_rRpcBuffer.GetFlags().Has(FLGS_RECEIVED_CW)");
    CrashData();
    v1 = *this;
  }

  return (*(v1 + 942) >> 4) & 1;
}

void BlueFin::GlMeSrdSatRptTrkMsmtMI::BuildNavBitMsmt(BlueFin::GlMeSrdSatRptTrkMsmtMI *this)
{
  *(this + 1144) = 0;
  v1 = *this;
  if ((*(*this + 9) & 4) != 0)
  {
    v3 = (*(**(this + 2) + 144))(*(this + 2), *(this + 41));
    v4 = *this;
    v5 = *(*this + 946);
    if (*(*this + 946))
    {
      v6 = ((v5 - 1) >> 5) + 1;
    }

    else
    {
      v6 = 0;
    }

    if (v6 >= 0x21u)
    {
      DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 1779, "BuildNavBitMsmt", "usNumWords <= GlMeSrdAsicNavBitTrkMsmt::MAX_NUM_TRK_DATA_WORDS");
      CrashData();
    }

    *(this + 573) = v5;
    *(this + 574) = *(v4 + 734);
    *(this + 902) = *(v4 + 732);
    *(this + 386) = BlueFin::GlMeSrdSatRptTrkMsmtMIBase::GetEpochCntInBits(this);
    *(this + 452) = BlueFin::GlMeSrdSatRptTrkMsmtMIBase::GetEpochCntInBits(this);
    *(this + 1540) = *(v4 + 948);
    *(this + 908) = v6;
    *(this + 1539) = *(v3 + 28);
    *(this + 453) = BlueFin::GlMeSrdSatRptTrkMsmtMI::GetEpochCntInMs(this);
    v7 = v5 & 0x1F;
    v8 = 32 - (v5 & 0x1F);
    *(this + 1144) = 1;
    v9 = *(v1 + 8);
    if (v6)
    {
      v10 = (*(v1 + 8) & 0x800) == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      *(this + 1536) = 0;
    }

    else
    {
      if (v6 >= 0x11u)
      {
        DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 1809, "BuildNavBitMsmt", "usNumWords <= _DIM(rTrkBits.u.sBits.fll_bvec.word)");
        CrashData();
      }

      v11 = (v4 + 952);
      v12 = v6;
      v13 = (this + 1152);
      do
      {
        v14 = *v11++;
        *v13++ = v14;
        --v12;
      }

      while (v12);
      if ((v5 & 0x1F) != 0)
      {
        *(this + v6 + 287) <<= v8;
      }

      *(this + 1536) = 1;
      v9 = *(v1 + 8);
    }

    if (v6 && (v9 & 0x1000) != 0)
    {
      if (v6 >= 0x11u)
      {
        DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 1836, "BuildNavBitMsmt", "usNumWords <= _DIM(rTrkBits.u.sBits.fll_mvec.word)");
        CrashData();
      }

      v15 = (v4 + 1080);
      v16 = v6;
      v17 = (this + 1280);
      do
      {
        v18 = *v15++;
        *v17++ = v18;
        --v16;
      }

      while (v16);
      if ((v5 & 0x1F) != 0)
      {
        *(this + v6 + 319) <<= v8;
      }

      *(this + 1537) = 1;
      v9 = *(v1 + 8);
    }

    else
    {
      *(this + 1537) = 0;
    }

    if (v6 && (v9 & 0x2000) != 0)
    {
      if (v6 >= 0x11u)
      {
        DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 1860, "BuildNavBitMsmt", "usNumWords <= _DIM(rTrkBits.u.sBits.pll_bvec.word)");
        CrashData();
      }

      v19 = (v4 + 1016);
      v20 = v6;
      v21 = (this + 1548);
      do
      {
        v22 = *v19++;
        *v21++ = v22;
        --v20;
      }

      while (v20);
      if ((v5 & 0x1F) != 0)
      {
        *(this + v6 + 386) <<= v8;
      }

      *(this + 1806) = 1;
      v9 = *(v1 + 8);
    }

    else
    {
      *(this + 1806) = 0;
    }

    if (v6 && (v9 & 0x4000) != 0)
    {
      if (v6 >= 0x11u)
      {
        DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 1884, "BuildNavBitMsmt", "usNumWords <= _DIM(rTrkBits.u.sBits.pll_mvec.word)");
        CrashData();
      }

      v23 = (v4 + 1144);
      v24 = v6;
      v25 = (this + 1676);
      do
      {
        v26 = *v23++;
        *v25++ = v26;
        --v24;
      }

      while (v24);
      if ((v5 & 0x1F) != 0)
      {
        *(this + v6 + 418) <<= v8;
      }

      *(this + 1807) = 1;
      v9 = *(v1 + 8);
    }

    else
    {
      *(this + 1807) = 0;
    }

    if (v6 && (v9 & 0x8000) != 0)
    {
      *(this + 1538) = 1;
      *(this + 88) = 0u;
      *(this + 89) = 0u;
      *(this + 90) = 0u;
      *(this + 91) = 0u;
      *(this + 92) = 0u;
      *(this + 93) = 0u;
      *(this + 94) = 0u;
      *(this + 95) = 0u;
      v27 = *((*(**(this + 2) + 144))(*(this + 2), *(this + 41)) + 28);
      if (v27 >= 5)
      {
        DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 1912, "BuildNavBitMsmt", "ucNumFllLowTowPhases <= GlMeSrdAsicNavBitTrkMsmt::MAX_NUM_TRK_LOW_TOW_FLL_PHASES");
        CrashData();
      }

      v28 = *this;
      if ((*(*this + 9) & 4) == 0)
      {
        DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 531, "GetNumLowTowPhaseFromRpc", "m_rRpcBuffer.GetFlags().Has(FLGS_RECEIVED_TRACKBITS)");
        CrashData();
        v28 = *this;
      }

      if ((*(v28 + 944) & 0x40) != 0)
      {
        v29 = 4;
      }

      else
      {
        v29 = 2;
      }

      if (v27 == v29 || (DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 1913, "BuildNavBitMsmt", "ucNumFllLowTowPhases == GetNumLowTowPhaseFromRpc()"), CrashData(), v27))
      {
        v30 = 0;
        v31 = this + 1408;
        v32 = (v4 + 952);
        v33 = v31;
        do
        {
          v34 = v32;
          v35 = v33;
          v36 = v6;
          do
          {
            v37 = *v34++;
            *v35++ = v37;
            --v36;
          }

          while (v36);
          if (v7)
          {
            if (v6 >= 9u)
            {
              DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 1924, "BuildNavBitMsmt", "usNumWords <= GlMeSrdAsicNavBitTrkMsmt::MAX_NUM_TRK_LOW_TOW_DATA_WORDS");
              CrashData();
            }

            *&v31[32 * v30 - 4 + 4 * v6] <<= v8;
          }

          ++v30;
          v33 += 8;
          v32 += 16;
        }

        while (v30 != v27);
      }
    }

    else
    {
      *(this + 1538) = 0;
    }
  }
}

_BYTE *BlueFin::GlMeTrkCvecTapConfig::GetTrackCvecDelayOffsetArray(_BYTE *this, float *a2, unsigned int a3)
{
  if (this[4] != a3)
  {
    v7 = "usExpectedVecLen == ucCvecLen";
    DeviceFaultNotify("glmesrd_receiver_parameters_track.cpp", 233, "GetTrackCvecDelayOffsetArray", "usExpectedVecLen == ucCvecLen");
    v8 = 233;
    goto LABEL_9;
  }

  if (!this[8])
  {
    v7 = "ucNumSamplesPerChip > 0";
    DeviceFaultNotify("glmesrd_receiver_parameters_track.cpp", 234, "GetTrackCvecDelayOffsetArray", "ucNumSamplesPerChip > 0");
    v8 = 234;
LABEL_9:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_receiver_parameters_track.cpp", v8, v7);
  }

  if (a3)
  {
    v3 = this + 11;
    v4 = this[8];
    v5 = a3;
    do
    {
      v6 = *v3++;
      *a2++ = v6 / v4;
      --v5;
    }

    while (v5);
  }

  return this;
}

void BlueFin::GlMeSrdSatStatusListener::MsmtReceived(BlueFin::GlMeSrdSatStatusListener *this, const BlueFin::GlMeDSPMeas *a2, const BlueFin::GlMeSrdDspMeasAux *a3)
{
  v6 = *(a2 + 112);
  if (BlueFin::GlMeSrdSatMgr::IsSatInKillProcess((*(this + 1) + 3520), *(a2 + 112)) || !BlueFin::GlMeSrdSatMgr::CheckCoherence((*(this + 1) + 3520), v6, a2 + 100))
  {
    return;
  }

  v7 = *(a2 + 35);
  v8 = v7 > 0xF;
  v9 = (1 << v7) & 0x8300;
  if (v8 || v9 == 0)
  {
    if (!BlueFin::GlMeSrdSatTrackMgr::HasSat((*(this + 1) + 14352), v6))
    {
      GlCustomLog(12, "Got a TrackMgr for a Sat that is not in Trck... RmReport lost?\n");
      BlueFin::GlMeSrdAcqMgrSm::MoveSatFromSSE2STE(*(this + 1), v6);
      v23 = (*(this + 1) + 14352);

      BlueFin::GlMeSrdSatTrackMgr::TrackMsmtReceived(v23, a2, a3);
      return;
    }

    BlueFin::GlMeSrdSatTrackMgr::TrackMsmtReceived((*(this + 1) + 14352), a2, a3);
    v21 = *(this + 1) + 48 * *(a2 + 26);
    v22 = *(a2 + 100);
    if ((*(a2 + 87) & 2) != 0)
    {
      *(*(v21 + 25056) + ((v22 >> 3) & 0x1C)) |= 1 << v22;
    }

    else
    {
      BlueFin::GlSetBase::Remove(v21 + 25056, v22);
    }

    if (*(a2 + 35) != 10)
    {
      BlueFin::GlSetBase::Remove(*(this + 1) + 25016, v6);
    }

    BlueFin::GlSatCarrId::GlSatCarrId(v25, *(a2 + 112), *(a2 + 26));
    if (v26 < 1 || *(a2 + 35) == 14)
    {
      return;
    }

    if (*(BlueFin::GlMeSrdDspMeasAux::GetTrkRslts(a3) + 123) == 1)
    {
      if ((*(BlueFin::GlMeSrdDspMeasAux::GetTrkRslts(a3) + 124) & 1) != 0 || *(BlueFin::GlMeSrdDspMeasAux::GetTrkRslts(a3) + 125))
      {
        v18 = "otDspMeasAux.GetTrkRslts().m_bRequestForNonL1SnapToTap == false && otDspMeasAux.GetTrkRslts().m_bRequestForNonL1SnapToGridSrch == false";
        DeviceFaultNotify("glmesrd_acq_mgr.cpp", 722, "MsmtReceived", "otDspMeasAux.GetTrkRslts().m_bRequestForNonL1SnapToTap == false && otDspMeasAux.GetTrkRslts().m_bRequestForNonL1SnapToGridSrch == false");
        v19 = 722;
        goto LABEL_42;
      }

      v24 = *(this + 1);
      BlueFin::GlSatCarrId::GlSatCarrId(v25, *(a2 + 112), *(a2 + 26));
      BlueFin::GlMeSrdSatTrackMgr::SnapToAidingForNonL1((v24 + 14352), v25);
    }

    if (*(BlueFin::GlMeSrdDspMeasAux::GetTrkRslts(a3) + 124) == 1)
    {
      if ((*(BlueFin::GlMeSrdDspMeasAux::GetTrkRslts(a3) + 123) & 1) != 0 || *(BlueFin::GlMeSrdDspMeasAux::GetTrkRslts(a3) + 125))
      {
        v18 = "otDspMeasAux.GetTrkRslts().m_bRequestForNonL1SnapToAid == false && otDspMeasAux.GetTrkRslts().m_bRequestForNonL1SnapToGridSrch==false";
        DeviceFaultNotify("glmesrd_acq_mgr.cpp", 731, "MsmtReceived", "otDspMeasAux.GetTrkRslts().m_bRequestForNonL1SnapToAid == false && otDspMeasAux.GetTrkRslts().m_bRequestForNonL1SnapToGridSrch==false");
        v19 = 731;
        goto LABEL_42;
      }

      BlueFin::GlMeSrdSatStatusListener::SnapToTap(this, a2, a3);
    }

    if (*(BlueFin::GlMeSrdDspMeasAux::GetTrkRslts(a3) + 125) != 1)
    {
      return;
    }

    if ((*(BlueFin::GlMeSrdDspMeasAux::GetTrkRslts(a3) + 123) & 1) == 0 && !*(BlueFin::GlMeSrdDspMeasAux::GetTrkRslts(a3) + 124))
    {
      BlueFin::GlMeSrdSatStatusListener::SnapToGridSrch(this, a2, a3);
      return;
    }

    v18 = "otDspMeasAux.GetTrkRslts().m_bRequestForNonL1SnapToAid == false && otDspMeasAux.GetTrkRslts().m_bRequestForNonL1SnapToTap == false";
    DeviceFaultNotify("glmesrd_acq_mgr.cpp", 740, "MsmtReceived", "otDspMeasAux.GetTrkRslts().m_bRequestForNonL1SnapToAid == false && otDspMeasAux.GetTrkRslts().m_bRequestForNonL1SnapToTap == false");
    v19 = 740;
LABEL_42:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_acq_mgr.cpp", v19, v18);
  }

  v11 = *(this + 1);
  v12 = v6 >> 5;
  v13 = v6 & 0x1F;
  v14 = 1 << (v6 & 0x1F);
  if ((v14 & *(*(v11 + 13920) + 4 * (v6 >> 5))) != 0)
  {
    v15 = 1 << v13;
  }

  else
  {
    v16 = 0;
    while (1)
    {
      v17 = *(v11 + 23080 + v16);
      if ((v14 & *(*(v17 + 128) + 4 * v12)) != 0)
      {
        break;
      }

      v16 += 8;
      if (v16 == 80)
      {
        v18 = "bFound";
        DeviceFaultNotify("glmesrd_acq_mgr.cpp", 688, "MsmtReceived", "bFound");
        v19 = 688;
        goto LABEL_42;
      }
    }

    (*(*v17 + 24))(v17, v6);
    v20 = *(v17 + 72);
    v15 = 1 << v13;
    *(*(v11 + 13920) + 4 * v12) |= 1 << v13;
    *(v11 + 4 * v6 + 13952) = v20;
    v11 = *(this + 1);
  }

  *(*(v11 + 25016) + 4 * v12) |= v15;
}

double BlueFin::GlMeSrdEstCarrPrm::CalcMagSqrdFllValidityTestStatSummand(BlueFin::GlMeSrdEstCarrPrm *this, void *a2, void *a3)
{
  if (!a2)
  {
    v4 = "potBufElem != nullptr";
    DeviceFaultNotify("glmesrd_carrprm.cpp", 2487, "CalcMagSqrdFllValidityTestStatSummand", "potBufElem != nullptr");
    v5 = 2487;
    goto LABEL_6;
  }

  if (this)
  {
    v4 = "potTestStatParam == nullptr";
    DeviceFaultNotify("glmesrd_carrprm.cpp", 2488, "CalcMagSqrdFllValidityTestStatSummand", "potTestStatParam == nullptr");
    v5 = 2488;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_carrprm.cpp", v5, v4);
  }

  return *a2;
}

BOOL BlueFin::GlMeSrdSatMgr::IsSatInKillProcess(BlueFin::GlMeSrdSatMgr *this, unsigned int a2)
{
  v2 = a2 >> 5;
  v3 = 1;
  v4 = 1 << (a2 & 0x1F);
  if ((v4 & *(*(this + 19) + 4 * (a2 >> 5))) == 0)
  {
    if ((v4 & *(*(this + 23) + 4 * (a2 >> 5))) != 0 || (v4 & *(*(this + 27) + 4 * (a2 >> 5))) != 0)
    {
      return 1;
    }

    else
    {
      BlueFin::GlSatCarrIdSet::GetSatIdSetAnyCarrier((this + 6464), v6);
      return (v4 & *(v6[0] + 4 * v2)) != 0;
    }
  }

  return v3;
}

uint64_t BlueFin::GlMeSrdSatTrackMgr::TrackMsmtReceived(BlueFin::GlMeSrdSatTrackMgr *this, const BlueFin::GlMeDSPMeas *a2, const BlueFin::GlMeSrdDspMeasAux *a3)
{
  v6 = *(a2 + 112);
  BlueFin::GlSatCarrId::GlSatCarrId(v27, v6, *(a2 + 26));
  v7 = v27[0] + 100 * v28;
  if (((*(*(this + 500) + 4 * (v7 >> 5)) >> ((v27[0] + 100 * v28) & 0x1F)) & 1) == 0)
  {
    v25 = "m_otSetSatCarrIdInUse.Has(otSatCarrId)";
    DeviceFaultNotify("glmesrd_track_mgr.cpp", 600, "TrackMsmtReceived", "m_otSetSatCarrIdInUse.Has(otSatCarrId)");
    v26 = 600;
    goto LABEL_44;
  }

  if ((*(a2 + 87) & 4) != 0)
  {
    *(*(this + 550) + 4 * (v7 >> 5)) |= 1 << (v7 & 0x1F);
  }

  else
  {
    BlueFin::GlSetBase::Remove(this + 4400, v7);
  }

  result = BlueFin::GlMeSrdSatMgr::GetTrackChannel(*(this + 1), v27);
  if (result >= 0x7B)
  {
    v25 = "ucTrackChannel < _DIM(m_aotSatTrackData)";
    DeviceFaultNotify("glmesrd_track_mgr.cpp", 613, "TrackMsmtReceived", "ucTrackChannel < _DIM(m_aotSatTrackData)");
    v26 = 613;
LABEL_44:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_track_mgr.cpp", v26, v25);
  }

  v9 = *(this + 510);
  v10 = v6 >> 5;
  v11 = *(v9 + 4 * (v6 >> 5));
  v12 = v6 & 0x1F;
  v13 = 1 << (v6 & 0x1F);
  v14 = *(a2 + 35);
  v16 = v14 == 14 || v14 == 16;
  v17 = this + 32 * result;
  if (((((v13 & v11) != 0) ^ v16) & 1) != 0 || !*(v17 + 16))
  {
    v18 = ((v13 & v11) != 0) ^ v16 ^ 1;
    if (*(a2 + 100) - 139 > 0x23)
    {
      v18 = 1;
    }

    if ((v18 & 1) != 0 || *(a2 + 10) >= 20.0)
    {
      *(v17 + 16) = 0;
    }

    if (v14 == 16 || v14 == 14)
    {
      *(v9 + 4 * v10) = v11 | (1 << v12);
    }

    else
    {
      result = BlueFin::GlSetBase::Remove(this + 4080, v6);
    }

    if (v28 == 2 && *(a2 + 10) > 22.0)
    {
      result = BlueFin::GlMeSrdDspMeasAux::GetTrkRslts(a3);
      if ((*(result + 31) & 0x10) != 0)
      {
        v17[57] = 1;
      }
    }
  }

  v19 = *(a2 + 100);
  if (v19 - 139 > 0x23 || v14 == 14 || v14 == 16 || (*(a3 + 32) & 1) != 0)
  {
    result = BlueFin::GlSetBase::Remove(this + 4112, v19);
    v19 = *(a2 + 100);
  }

  else
  {
    *(*(this + 514) + 4 * (v19 >> 5)) |= 1 << v19;
  }

  v20 = *(a2 + 10);
  if (v19 - 81 <= 0x34 && v20 > 30.0 || (v13 & *(*(this + 634) + 4 * (v6 >> 5))) != 0 && v20 > 28.0)
  {
    *(*(this + 630) + 4 * v10) |= 1 << v12;
  }

  v22 = *(v17 + 16);
  v21 = v17 + 32;
  *(v21 + 1) = v20;
  v23 = *(a2 + 35);
  *(v21 + 2) = v23;
  *v21 = v22 + 1;
  *(v21 + 2) = *(a2 + 3);
  if (v23 == 12)
  {
    result = BlueFin::GlMeSrdDspMeasAux::GetTrkRslts(a3);
    v24 = (*(result + 129) >> 5) & 1;
  }

  else
  {
    LOBYTE(v24) = 0;
  }

  v21[24] = v24;
  return result;
}

uint64_t BlueFin::GlMeSrdSvIdMsmtHistoryBuffer::GetMsmtHistorySlot(BlueFin::GlMeSrdSvIdMsmtHistoryBuffer *this, const BlueFin::GlSignalId *a2)
{
  if (BlueFin::GlBigArray::Has((this + 2960), *(a2 + 4)))
  {

    return BlueFin::GlSignalIdArray::Get((this + 1808), a2);
  }

  else
  {
    if (*(this + 1497) == -1)
    {
      BlueFin::GlMeSrdSvIdMsmtHistoryBuffer::MsmtHistoryGarbageCollector(this);
    }

    result = BlueFin::GlBigArray::Add((this + 2960), *(a2 + 4));
    if (!result)
    {
      DeviceFaultNotify("glmesrd_svid_msmt_history.cpp", 56, "GetMsmtHistorySlot", "potMsmtHistorySlot != nullptr");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_svid_msmt_history.cpp", 56, "potMsmtHistorySlot != nullptr");
    }

    *result = 0;
    *(result + 4) = 0;
    *(result + 8) = 0;
  }

  return result;
}

uint64_t BlueFin::GlMeSrdSatMgr::GetTrackChannel(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2 + 100 * *(a2 + 1);
  if (((*(*(a1 + 280) + 4 * (v2 >> 5)) >> (v2 & 0x1F)) & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_sat_mgr.cpp", 905, "GetTrackChannel", "m_otSetSatCarrIdHaveTrackChannel.Has(otSatCarrId)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_mgr.cpp", 905, "m_otSetSatCarrIdHaveTrackChannel.Has(otSatCarrId)");
  }

  return *(*(a1 + 6288) + 52 * *a2 + *(a2 + 1) + 24);
}

uint64_t BlueFin::GlPeNicEphemeris::GetPvt(BlueFin::GlPeEphemeris *a1, uint64_t a2, uint64_t a3, double a4)
{
  ScaledFloatingField = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 17);
  v58 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 15);
  v8 = v58 * v58;
  v9 = v58;
  v55 = ScaledFloatingField * ScaledFloatingField;
  v10 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 12) + sqrt(3.986005e14 / (v55 * (v55 * v55)));
  v11 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 9);
  v12 = (*(*a1 + 64))(a1, a2, 0);
  v13 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 10) + v11 * v12;
  *(a3 + 48) = v13;
  v14 = v13 - BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 6);
  v15 = (*(*a1 + 64))(a1, a2, 1) - v14;
  v57 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 13) + v10 * v15;
  v56 = 0.0;
  BlueFin::GlPeEphemeris::Kepler(&v57, &v58, &v56, v16);
  v17 = __sincos_stret(v56);
  v18 = ScaledFloatingField * (v9 * -4.44280763e-10);
  *(a3 + 48) = *(a3 + 48) + v18 * v17.__sinval;
  *(a3 + 56) = v11 + v18 * v17.__cosval * v10;
  v45 = v15 - v18 * v17.__sinval;
  v53 = atan2(sqrt(1.0 - v8) * v17.__sinval, v17.__cosval - v9);
  v19 = v53 + BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 24);
  v20 = __sincos_stret(v19 + v19);
  v48 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 16);
  v47 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 14);
  v50 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 11);
  v49 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 23);
  v52 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 21);
  v51 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 19);
  v21 = v19 + v47 * v20.__cosval + v48 * v20.__sinval;
  v44 = 1.0 - v9 * v17.__cosval;
  v22 = v20.__cosval * v49 + v50 * v20.__sinval + ScaledFloatingField * ScaledFloatingField * v44;
  v46 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 26);
  v23 = v20.__cosval * v51 + v52 * v20.__sinval + BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 22) + v46 * v45;
  v24 = __sincos_stret(v21);
  v43 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 25) + -0.0000729211515;
  v25 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 20) + v43 * (v45 + a4);
  v26 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 18);
  v27 = __sincos_stret(v25 + v26 * -0.0000729211515);
  v28 = __sincos_stret(v23);
  v29 = v24.__sinval * v22 * v28.__cosval;
  *a3 = v24.__cosval * v22 * v27.__cosval - v29 * v27.__sinval;
  *(a3 + 8) = v29 * v27.__cosval + v24.__cosval * v22 * v27.__sinval;
  *(a3 + 16) = v24.__sinval * v22 * v28.__sinval;
  v30 = __sincos_stret(v21 + v21);
  sinval = v30.__sinval;
  cosval = v30.__cosval;
  v33 = __sincos_stret(v53);
  v34 = v17.__sinval * (v10 / v44) * (v9 * v33.__cosval + 1.0) / (v44 * v33.__sinval);
  v35 = v34 + (v48 * cosval - v47 * sinval + v48 * cosval - v47 * sinval) * v34;
  v36 = v10 * (v55 * v9 * v17.__sinval) / v44 + (v50 * cosval - v49 * sinval + v50 * cosval - v49 * sinval) * v34;
  v37 = v46 + (v52 * cosval - v51 * sinval + v52 * cosval - v51 * sinval) * v34;
  v38 = v36 * v24.__cosval - v24.__sinval * v22 * v35;
  v39 = v24.__cosval * v22 * v35 + v36 * v24.__sinval;
  v40 = v38 - v29 * v43;
  v41 = v28.__cosval * v39 + v24.__cosval * v22 * v43 - v24.__sinval * v22 * v28.__sinval * v37;
  *(a3 + 24) = v40 * v27.__cosval - v41 * v27.__sinval;
  *(a3 + 32) = v27.__cosval * v41 + v40 * v27.__sinval;
  *(a3 + 40) = v29 * v37 + v39 * v28.__sinval;
  *(a3 + 64) = (*(*a1 + 152))(a1);
  return 1;
}

float BlueFin::GlPeNicEphemeris::GetAccuracyM(BlueFin::GlPeNicEphemeris *this)
{
  v2 = (*(*this + 192))(this, 4);
  v3 = (*(*this + 192))(this, 32);
  v4 = v2;
  if ((v2 & 0xF8) != 0)
  {
    v4 = 8;
  }

  v5 = v4 + 7;
  if (!v3)
  {
    v5 = v2;
  }

  if (v5 <= 0xEu)
  {
    return flt_298A3A8B0[v5 & 0xF];
  }

  else
  {
    return 8192.0;
  }
}

uint64_t BlueFin::GlMeSrdSatRptTrkMsmtMI::IsBeidouPrebitWithHssSec(BlueFin::GlMeSrdSatRptTrkMsmtMI *this)
{
  if (*(*this + 105) != 6 || (*(*this + 24) & 0xF) != 0)
  {
    return 0;
  }

  v3 = (*(**(this + 6) + 256))(*(this + 6));
  if (v3)
  {
    return 1;
  }

  v4 = *(*BlueFin::GlUtils::GetAsicConfigIfc(v3) + 264);

  return v4();
}

double BlueFin::GlMeSrdAcqWindowMsmtInfo::CopyFrom(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  if (a1 != a2)
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 12) = *(a2 + 12);
    *(a1 + 16) = *(a2 + 16);
  }

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 56);
  *(a1 + 56) = result;
  return result;
}

uint64_t BlueFin::GlMeSrdSatRptNoiseStats::GlMeSrdSatRptNoiseStats(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v8 = (*(*a2 + 48))(a2, a3, a4);
  *a1 = v8;
  *(a1 + 4) = 1065353216;
  if ((v5 & 0xF000FFFE) == 0x30000010)
  {
    *(a1 + 4) = v8 / (*(*a2 + 48))(a2, 889192463, a4);
  }

  return a1;
}

uint64_t BlueFin::GlMeSrdReceiverParameters::GetAllModesTrkParamsFromGearId(BlueFin::GlMeSrdReceiverParameters *this)
{
  v1 = *(*BlueFin::GlMeSrdReceiverParameters::rRxIfc(this) + 144);

  return v1();
}

uint64_t BlueFin::GlMeSrdReceiverParameters::GetAllParams(BlueFin::GlMeSrdReceiverParameters *this)
{
  v1 = *(*BlueFin::GlMeSrdReceiverParameters::rRxIfc(this) + 32);

  return v1();
}

void BlueFin::GlMeSrdEstCNo::Run(uint64_t a1, double *a2, __n128 a3, uint64_t a4, float *a5, uint64_t a6, float *a7, unsigned __int8 *a8, uint64_t a9, float *a10, uint64_t a11)
{
  if ((*a9 & 1) == 0)
  {
    v21 = "stAsicCNoTrkMsmt.bValid";
    DeviceFaultNotify("glmesrd_estcno.cpp", 123, "Run", "stAsicCNoTrkMsmt.bValid");
    v22 = "glmesrd_estcno.cpp";
    v23 = 123;
    goto LABEL_23;
  }

  v11 = *a8;
  if ((v11 - 1) >= 0xBC)
  {
    v21 = "otSignalId.GetSvId().isValid()";
    DeviceFaultNotify("glmesrd_estcno.cpp", 124, "Run", "otSignalId.GetSvId().isValid()");
    v22 = "glmesrd_estcno.cpp";
    v23 = 124;
    goto LABEL_23;
  }

  if ((a1 + 20) == a8)
  {
    v13 = *(a1 + 28);
  }

  else
  {
    *(a1 + 20) = v11;
    *(a1 + 24) = *(a8 + 1);
    v13 = *(a8 + 4);
    *(a1 + 28) = v13;
  }

  if (v13 >= 0x23F)
  {
    v21 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 693, "GetSecPerEpochWithTrkException", "IsValid()");
    v22 = "glsignalid.h";
    v23 = 693;
    goto LABEL_23;
  }

  v14 = *(a1 + 24);
  v15 = *(a1 + 20);
  if (v14 != 1 || (a3.n128_u32[0] = 1.5, (v15 - 1) >= 0x20) && (v15 - 66) >= 0xA)
  {
    v16 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v14 - v14 + BlueFin::GlSvId::s_aucSvId2gnss[*(a1 + 20)]];
    if (!v16)
    {
      v21 = "ucMsPerEpoch != 0";
      DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
      v22 = "glsignalid.h";
      v23 = 686;
LABEL_23:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v22, v23, v21);
    }

    a3.n128_f64[0] = v16 * 0.001;
    a3.n128_f32[0] = a3.n128_f64[0];
  }

  v17 = *a2;
  *a11 = (*(*a1 + 24))(a1, v26, v24, a3, *a10, *(a9 + 8), *a5, v17, *(a9 + 4), *a7);
  v18 = v25;
  *(a11 + 12) = v25;
  if (*(a1 + 28) >= 0x23Fu)
  {
    v21 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 712, "GetSecPerEpochIndB", "IsValid()");
    v22 = "glsignalid.h";
    v23 = 712;
    goto LABEL_23;
  }

  v19 = BlueFin::GlSignalId::s_assSignalIndexAndGnss2epochIndB[7 * *(a1 + 24) + BlueFin::GlSvId::s_aucSvId2gnss[*(a1 + 20)]];
  if (!v19)
  {
    v21 = "ssEpochIndB != 0";
    DeviceFaultNotify("glsignalid.h", 719, "GetSecPerEpochIndB", "ssEpochIndB != 0");
    v22 = "glsignalid.h";
    v23 = 719;
    goto LABEL_23;
  }

  v20 = -(v19 - (log10f(v18) * 10.0));
  if (v20 < 7.0)
  {
    v20 = 7.0;
  }

  *(a11 + 8) = v20;
  *(a11 + 4) = 2;
  *(a1 + 12) = 1;
}

uint64_t BlueFin::GlMeSrdEstCNo::GetCNoEstimate(uint64_t a1, float *a2, float *a3, float a4, float a5, float a6, float a7, float a8, float a9, float a10)
{
  v10 = floorf((a6 / a7) + 0.5);
  *a2 = a6;
  a2[1] = v10;
  v11 = floorf((a6 / a4) + 0.5);
  a2[2] = v11;
  a2[3] = v11 * a5;
  v12 = (v10 * a9) - a8;
  v13 = v12 - (v11 * a5);
  if (v13 <= 0.0)
  {
    v13 = 0.000000001;
  }

  a2[4] = v12;
  a2[5] = v13;
  v14 = ((v13 * a4) * a4) / (a6 * a6);
  a2[6] = a5;
  a2[7] = v14;
  v15 = v14 + a5;
  a2[8] = v15;
  v16 = *(a1 + 12);
  if (v16 == 2)
  {
    v17 = (*(a1 + 16) + 1.0) * a5;
    *(a1 + 8) = v17;
  }

  else
  {
    v17 = *(a1 + 8);
  }

  *a3 = a10;
  v18 = ((1.0 - a10) * v15) + (a10 * v17);
  a3[2] = v18;
  v19 = *(a2 + 8);
  if (!v16)
  {
    v18 = a2[8];
  }

  *(a1 + 8) = v18;
  v20 = v18 - a5;
  if (v20 <= 0.0)
  {
    v20 = 0.000000001;
  }

  a3[1] = v20;
  if (v20 <= 0.0)
  {
    DeviceFaultNotify("glmesrd_estcno.cpp", 471, "GetCNoEstimate", "closedLpMsmt.fCaEpochCohSigPwr > 0.0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_estcno.cpp", 471, "closedLpMsmt.fCaEpochCohSigPwr > 0.0");
  }

  a3[3] = v20 / a5;
  return 1;
}

float BlueFin::GlMeSrdCNoResults::isGarbage(BlueFin::GlMeSrdCNoResults *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    return result;
  }

  result = *(this + 2);
  if (result == 3.4028e38)
  {
    return result;
  }

  result = *(this + 3);
  if (result == 3.4028e38)
  {
    return result;
  }

  if (v1 > 2)
  {
    if (v1 != 3 && v1 != 4)
    {
      return result;
    }

    return *(this + 4);
  }

  if (v1 == 1)
  {
    return *(this + 4);
  }

  if (v1 == 2)
  {
    return *(this + 4);
  }

  return result;
}

uint64_t BlueFin::GlMeSrdAsicConfig::GetMIAdjustmentLimits(uint64_t this, __int16 *a2, __int16 *a3)
{
  *a2 = *(this + 1476);
  *a3 = *(this + 1478);
  return this;
}

uint64_t BlueFin::GlMeSrdEstPkFit::CheckForUsableCorrvec(BlueFin::GlMeSrdEstPkFit *this, const float *a2, int a3, unsigned int a4, int a5, char *a6, signed __int8 *a7, uint64_t a8, const BlueFin::GlMeTrkCvecTapConfig *a9, BOOL a10)
{
  v38[1] = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v10 = a4;
  }

  else
  {
    v10 = a2;
  }

  v11 = (this + 24);
  v12 = (this + 12);
  if (a2 >= 7 && a8)
  {
    v13 = this;
    if (*a8 == 7)
    {
      if (v10 >= 9)
      {
        v34 = "ucVecLenExcludingVeryEarlyDelay <= _DIM(afCorrVecReordered)";
        DeviceFaultNotify("glmesrd_pkfit.cpp", 68, "CheckForUsableCorrvec", "ucVecLenExcludingVeryEarlyDelay <= _DIM(afCorrVecReordered)");
        v35 = 68;
        goto LABEL_71;
      }

      v11 = v38;
      v12 = &v37;
      if (a9)
      {
        v14 = &unk_298A36930;
      }

      else
      {
        v14 = &unk_298A36938;
      }

      if (!v10)
      {
        goto LABEL_25;
      }

      for (i = 0; i != v10; ++i)
      {
        v13 = v36;
        v36[i] = *(this + v14[i]);
      }
    }
  }

  else
  {
    v13 = this;
  }

  if (v10 < 2)
  {
LABEL_25:
    v16 = 0;
    goto LABEL_26;
  }

  v16 = 0;
  v17 = *v13;
  v18 = *v13 == 0.0;
  for (j = 1; j != v10; ++j)
  {
    v20 = v13[j];
    if (v20 == 0.0)
    {
      ++v18;
    }

    if (v20 > v17)
    {
      v17 = v13[j];
      v16 = j;
    }
  }

  if (v18 > 2u)
  {
    result = 7;
    goto LABEL_68;
  }

LABEL_26:
  *a6 = 0;
  if (v16)
  {
    v22 = v16 + 1 >= v10;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    if (v16)
    {
      v23 = 127;
    }

    else
    {
      v23 = -127;
    }

    if ((a7 & 1) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_66;
  }

  if (!a8)
  {
    goto LABEL_54;
  }

  if (!a7)
  {
    goto LABEL_54;
  }

  v24 = *(a8 + 5);
  if (v24 < 2)
  {
    goto LABEL_54;
  }

  v25 = (this + 4 * v24);
  v26 = *v25 > *(v25 - 2);
  *a6 = v26;
  if (v25[2] > *v25)
  {
    ++v26;
  }

  *a6 = v26;
  if (v25[2] > v25[1])
  {
    ++v26;
  }

  *a6 = v26;
  v27 = (__PAIR64__(v26, *v25) - COERCE_UNSIGNED_INT(*(v25 - 2))) >> 32;
  *a6 = v27;
  LOBYTE(v27) = v27 - (v25[2] < *v25);
  *a6 = v27;
  v28 = (v24 - 1);
  *a6 = v27 - (*(v25 - 2) > *(this + v28));
  v29 = *v25;
  v30 = *(v25 - 2);
  if (*v25 > v30)
  {
    v31 = v25[2];
    if (v31 > v29 && v31 > v25[1])
    {
      goto LABEL_67;
    }
  }

  if (v30 <= v29 || v29 <= v25[2])
  {
LABEL_54:
    if (!a5)
    {
      result = 1;
      goto LABEL_68;
    }

    goto LABEL_55;
  }

  v32 = *(this + v28);
  if (v30 <= v32)
  {
    result = 1;
  }

  else
  {
    result = 2;
  }

  if (v30 <= v32 && (a5 & 1) != 0)
  {
LABEL_55:
    if (v10 > 5)
    {
      if (v16 == 5)
      {
        if (!a7)
        {
          goto LABEL_67;
        }
      }

      else
      {
        if (*v11 < *v12)
        {
          result = 1;
        }

        else
        {
          result = 2;
        }

        if (*v11 < *v12 || (a7 & 1) == 0)
        {
          goto LABEL_68;
        }
      }

      v23 = 64;
LABEL_66:
      *a6 = v23;
LABEL_67:
      result = 2;
      goto LABEL_68;
    }

    v34 = "ucVecLenExcludingVeryEarlyDelay >= GlMeSrdTrkCvecTapConfig::ucBocPrnPromptIdx";
    DeviceFaultNotify("glmesrd_pkfit.cpp", 162, "CheckForUsableCorrvec", "ucVecLenExcludingVeryEarlyDelay >= GlMeSrdTrkCvecTapConfig::ucBocPrnPromptIdx");
    v35 = 162;
LABEL_71:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_pkfit.cpp", v35, v34);
  }

LABEL_68:
  v33 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlMeSrdEstPkFit::LeastSquaresPeakFit(BlueFin::GlMeSrdEstPkFit *this, const float *a2, const float *a3, unsigned int a4, int a5, unsigned int a6, unsigned int a7, unsigned __int8 a8, double a9, const BlueFin::GlSignalId *a10, float *a11, float *a12, float *a13, float *a14, float *a15, float *a16)
{
  v128 = *MEMORY[0x29EDCA608];
  if (a3 <= 3)
  {
    v120 = "usVecLen >= 4";
    DeviceFaultNotify("glmesrd_pkfit.cpp", 608, "LeastSquaresPeakFit", "usVecLen >= 4");
    v121 = 608;
    goto LABEL_162;
  }

  if (a3 >= 9)
  {
    v120 = "usVecLen <= MAX_CVEC_LEN";
    DeviceFaultNotify("glmesrd_pkfit.cpp", 609, "LeastSquaresPeakFit", "usVecLen <= MAX_CVEC_LEN");
    v121 = 609;
    goto LABEL_162;
  }

  if (!a4)
  {
    v120 = "ucDelaysPerChip > 0";
    DeviceFaultNotify("glmesrd_pkfit.cpp", 610, "LeastSquaresPeakFit", "ucDelaysPerChip > 0");
    v121 = 610;
    goto LABEL_162;
  }

  if (a7 >= 8)
  {
    v120 = "ucPromptIdxInDelays < MAX_CVEC_LEN";
    DeviceFaultNotify("glmesrd_pkfit.cpp", 611, "LeastSquaresPeakFit", "ucPromptIdxInDelays < MAX_CVEC_LEN");
    v121 = 611;
    goto LABEL_162;
  }

  v16 = this;
  if (a5)
  {
    v17 = a6;
  }

  else
  {
    v17 = a3;
  }

  v20 = a8 - 139 < 0x24 && a10 == 0 || a10 == 3;
  v124 = 0u;
  v125 = 0u;
  __dst = 0u;
  v123 = 0u;
  memcpy(&__dst, this, 4 * (v17 & 0x3FFF));
  memcpy(&v124, a2, 4 * (v17 & 0x3FFF));
  LOWORD(v126) = v17;
  BYTE2(v126) = a4;
  BYTE3(v126) = a7;
  BYTE4(v126) = v20;
  BYTE5(v126) = BYTE5(a10);
  BYTE6(v126) = a10 == 2;
  HIBYTE(v126) = BYTE4(a10);
  result = memcmp(&xmmword_2A18BB198, &__dst, 0x48uLL);
  if (!result)
  {
    *a11 = _MergedGlobals_1;
    *a12 = dword_2A18BB18C;
    *a13 = dword_2A18BB190;
    *a15 = dword_2A18BB194;
    *a14 = *a12 / a4;
    goto LABEL_156;
  }

  v25 = 0.0;
  v26 = 0.0;
  if ((BYTE4(a10) & 1) == 0)
  {
    if (v17)
    {
      p_dst = &__dst;
      v28 = v17;
      do
      {
        v29 = *p_dst++;
        v26 = v26 + v29;
        --v28;
      }

      while (v28);
      result = v17;
    }

    else
    {
      result = 0;
    }

    *a12 = 0.0;
    *a13 = 0.0;
    v30 = v17;
    v31 = -0.5;
    v32 = 1000000.0;
    v33 = 1.0;
    while (1)
    {
      if (v20)
      {
        if (v17)
        {
          v34 = 0.0;
          v35 = 1.0;
          v36 = -5;
          v37 = &v124;
          v38 = result;
          v39 = 0.0;
          v40 = 0.0;
          v41 = 0.0;
          v42 = 0.0;
          v43 = 0.0;
          v44 = 0.0;
          while (1)
          {
            v45 = *(v37 - 8);
            v46 = v31 + *v37;
            if (v46 < 0.0)
            {
              break;
            }

            if (v46 < 0.5)
            {
              if (v36 <= 0xFFFFFFFC && (BYTE5(a10) & 1) != 0)
              {
                v48 = 0.0;
                v49 = 1.0;
                v50 = 0.5;
              }

              else
              {
                if (v46 >= 0.33333)
                {
                  v50 = 0.5;
                }

                else
                {
                  v50 = 0.33333;
                }

                if (v46 >= 0.33333)
                {
                  v49 = 3.0;
                }

                else
                {
                  v49 = -3.0;
                }

                if (v46 >= 0.33333)
                {
                  v48 = -1.0;
                }

                else
                {
                  v48 = 1.0;
                }
              }

              goto LABEL_60;
            }

            v49 = -1.0;
            v50 = 1.0;
            v48 = 1.0;
            if (v46 < 1.0)
            {
              goto LABEL_60;
            }

LABEL_63:
            ++v36;
            ++v37;
            if (!--v38)
            {
              goto LABEL_100;
            }
          }

          if (v46 >= -1.0)
          {
            v49 = 1.0;
            v50 = -0.5;
            v48 = 1.0;
            if (v46 >= -0.5)
            {
              if (v36 <= 0xFFFFFFFC && (BYTE5(a10) & 1) != 0)
              {
                v49 = -1.0;
                v50 = 0.0;
                v48 = 0.0;
              }

              else
              {
                if (v46 >= -0.33333)
                {
                  v50 = 0.0;
                }

                else
                {
                  v50 = -0.33333;
                }

                if (v46 >= -0.33333)
                {
                  v49 = 3.0;
                }

                else
                {
                  v49 = -3.0;
                }

                if (v46 >= -0.33333)
                {
                  v48 = 1.0;
                }

                else
                {
                  v48 = -1.0;
                }
              }
            }

LABEL_60:
            v51 = v48 + (*v37 * v49);
            v34 = v34 + (v51 * v51);
            v39 = v39 + v51;
            v40 = v40 + (v51 * v49);
            v41 = v41 + v49;
            v44 = v44 + (v49 * v49);
            v43 = v43 + (v45 * v51);
            v42 = v42 + (v45 * v49);
            v47 = v50 - v46;
          }

          else
          {
            v47 = -1.0 - v46;
          }

          if (v35 >= v47)
          {
            v35 = v47;
          }

          goto LABEL_63;
        }

LABEL_102:
        v43 = 0.0;
        v35 = 1.0;
        v44 = 0.0;
        v42 = 0.0;
        v34 = 0.0;
        v39 = 0.0;
        v41 = 0.0;
        v40 = 0.0;
        goto LABEL_103;
      }

      if (a10 == 2)
      {
        if (!v17)
        {
          goto LABEL_102;
        }

        v34 = 0.0;
        v35 = 1.0;
        v52 = &v124;
        v53 = result;
        v39 = 0.0;
        v42 = 0.0;
        v43 = 0.0;
        v44 = 0.0;
        v41 = 0.0;
        v40 = 0.0;
        while (2)
        {
          v54 = *(v52 - 8);
          v55 = v31 + *v52;
          if (v55 >= 0.0)
          {
            v57 = 0.25;
            if (v55 >= 0.25)
            {
              v59 = -1.0;
              v57 = 1.0;
              v58 = 1.0;
              if (v55 >= 1.0)
              {
                goto LABEL_86;
              }
            }

            else
            {
              v58 = 0.875;
              v59 = -0.5;
            }
          }

          else
          {
            if (v55 < -1.0)
            {
              v56 = -1.0 - v55;
LABEL_84:
              if (v35 >= v56)
              {
                v35 = v56;
              }

LABEL_86:
              ++v52;
              if (!--v53)
              {
                goto LABEL_100;
              }

              continue;
            }

            if (v55 >= -0.25)
            {
              v57 = 0.0;
            }

            else
            {
              v57 = -0.25;
            }

            if (v55 >= -0.25)
            {
              v59 = 0.5;
            }

            else
            {
              v59 = 1.0;
            }

            if (v55 >= -0.25)
            {
              v58 = 0.875;
            }

            else
            {
              v58 = 1.0;
            }
          }

          break;
        }

        v60 = v58 + (*v52 * v59);
        v34 = v34 + (v60 * v60);
        v39 = v39 + v60;
        v40 = v40 + (v60 * v59);
        v41 = v41 + v59;
        v44 = v44 + (v59 * v59);
        v43 = v43 + (v54 * v60);
        v42 = v42 + (v54 * v59);
        v56 = v57 - v55;
        goto LABEL_84;
      }

      if (!v17)
      {
        goto LABEL_102;
      }

      v34 = 0.0;
      v35 = 1.0;
      v61 = &v124;
      v62 = result;
      v39 = 0.0;
      v40 = 0.0;
      v42 = 0.0;
      v43 = 0.0;
      v44 = 0.0;
      v41 = 0.0;
      do
      {
        v63 = *(v61 - 8);
        v64 = v31 + *v61;
        if (v64 >= 0.0)
        {
          v66 = -1.0;
          v67 = 1.0;
          if (v64 >= 1.0)
          {
            goto LABEL_99;
          }
        }

        else
        {
          if (v64 < -1.0)
          {
            v65 = -1.0 - v64;
            goto LABEL_97;
          }

          v66 = 1.0;
          v67 = 0.0;
        }

        v68 = (*v61 * v66) + 1.0;
        v34 = v34 + (v68 * v68);
        v39 = v39 + v68;
        v40 = v40 + (v68 * v66);
        v41 = v41 + v66;
        v44 = v44 + (v66 * v66);
        v43 = v43 + (v63 * v68);
        v42 = v42 + (v63 * v66);
        v65 = v67 - v64;
LABEL_97:
        if (v35 >= v65)
        {
          v35 = v65;
        }

LABEL_99:
        ++v61;
        --v62;
      }

      while (v62);
LABEL_100:
      if (v35 < 0.0025)
      {
        v69 = v31 + 0.0025;
        goto LABEL_120;
      }

LABEL_103:
      v69 = fminf(v31 + v35, 0.5);
      v70 = (v30 * v44) - (v41 * v41);
      v71 = (v40 * v41) - (v39 * v44);
      v72 = (v39 * v41) - (v40 * v30);
      v73 = ((v39 * v71) + (v34 * v70)) + (v40 * v72);
      if (fabsf(v73) >= 0.000001)
      {
        v74 = (((v26 * v71) + (v70 * v43)) + (v72 * v42)) / v73;
        if (v74 > 0.0)
        {
          v75 = ((((v26 * ((v39 * v40) - (v34 * v41))) + (v72 * v43)) + (((v39 * -v39) + (v34 * v30)) * v42)) / v73) / v74;
          if (v31 < v75)
          {
            v31 = v75;
          }

          if (v31 >= v69)
          {
            v76 = v69;
          }

          else
          {
            v76 = v31;
          }

          v77 = v76 / 0.0025;
          if (v77 > 0.0)
          {
            v78 = v77 + 0.5;
            goto LABEL_115;
          }

          if (v77 < 0.0)
          {
            v78 = v77 + -0.5;
LABEL_115:
            v79 = v78;
          }

          else
          {
            v79 = 0;
          }

          v80 = v79 * 0.0025;
          if (v80 != v33)
          {
            v81 = v34 + (v80 * ((v40 + v40) + (v80 * v44)));
            v82 = v39 + (v80 * v41);
            v83 = (v81 * v30) - (v82 * v82);
            if (fabsf(v83) >= 0.000001)
            {
              v84 = -(v39 + (v80 * v41));
              v85 = v43 + (v80 * v42);
              v86 = ((v26 * v84) + (v30 * v85)) / v83;
              v87 = ((v26 * v81) + (v84 * v85)) / v83;
              v88 = (v87 * ((v26 * -2.0) + (v30 * v87))) + (v86 * ((-(v85 - (v87 * v82)) - (v85 - (v87 * v82))) + (v86 * v81)));
              if (v88 < v32)
              {
                *a12 = v86;
                *a13 = v87;
                v32 = v88;
                v33 = v79 * 0.0025;
              }
            }
          }
        }
      }

LABEL_120:
      v31 = v69;
      if (v69 >= 0.5)
      {
        v26 = 0.0;
        if (v33 < 1.0)
        {
          v26 = -v33;
        }

        break;
      }
    }
  }

  *a11 = v26;
  v89 = 1.0e-10;
  if (!v17)
  {
    v99 = NAN;
    v104 = NAN;
    v101 = 1.0e-10;
    goto LABEL_143;
  }

  v90 = 0;
  v91 = 0.0;
  do
  {
    v92 = vabds_f32(*(&v124 + v90), v26);
    if (v92 >= 0.5)
    {
      v93 = 0.0;
      if (v92 >= 1.0)
      {
        goto LABEL_136;
      }

LABEL_131:
      v93 = 1.0 - v92;
      goto LABEL_136;
    }

    if (v20)
    {
      if (v90 - 5 <= 0xFFFFFFFC && (BYTE5(a10) & 1) != 0)
      {
        v93 = v92;
      }

      else
      {
        v93 = fabsf((v92 * -3.0) + 1.0);
      }
    }

    else
    {
      if (a10 != 2 || v92 >= 0.25)
      {
        goto LABEL_131;
      }

      v93 = (v92 * -0.5) + 0.875;
    }

LABEL_136:
    v127[v90] = v93;
    v91 = v91 + v93;
    ++v90;
  }

  while (v17 != v90);
  v94 = v17;
  v95 = 0.0;
  v96 = v16;
  v97 = v17;
  do
  {
    v98 = *v96++;
    v95 = v95 + v98;
    --v97;
  }

  while (v97);
  v99 = v91 / v94;
  v25 = 0.0;
  v100 = v127;
  v101 = 1.0e-10;
  v102 = v16;
  v103 = v17;
  v104 = v95 / v94;
  do
  {
    v105 = *v100++;
    v106 = v105 - v99;
    v101 = v101 + (v106 * v106);
    v107 = *v102++;
    v25 = v25 + (v106 * (v107 - v104));
    --v103;
  }

  while (v103);
LABEL_143:
  v108 = v25 / v101;
  v109 = v25 <= 0.0;
  v110 = 0.0;
  if (v109)
  {
    v108 = 0.0;
  }

  *a12 = v108;
  *a13 = v104 - (v108 * v99);
  *a14 = *a12 / a4;
  if (v17)
  {
    v111 = a7;
    v112 = v127;
    v89 = 1.0e-10;
    do
    {
      if (v111)
      {
        v113 = 1.0;
      }

      else
      {
        v113 = 3.0;
      }

      v114 = *v112++;
      v115 = v114 - v99;
      v116 = *a12 * (v114 - v99);
      v117 = *v16++;
      v110 = v110 + ((((v117 - v104) + (-*a12 * v115)) * ((v117 - v104) + (-*a12 * v115))) * v113);
      v89 = v89 + ((v116 * v116) * v113);
      --v111;
      --v17;
    }

    while (v17);
    if (v89 == 0.0)
    {
      v120 = "fXX != 0";
      DeviceFaultNotify("glmesrd_pkfit.cpp", 716, "LeastSquaresPeakFit", "fXX != 0");
      v121 = 716;
LABEL_162:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_pkfit.cpp", v121, v120);
    }
  }

  v118 = v110 / v89;
  if (v118 > 1.0)
  {
    v118 = 1.0;
  }

  *a15 = v118;
  _MergedGlobals_1 = *a11;
  dword_2A18BB18C = *a12;
  dword_2A18BB190 = *a13;
  dword_2A18BB194 = LODWORD(v118);
  xmmword_2A18BB1B8 = v124;
  unk_2A18BB1C8 = v125;
  qword_2A18BB1D8 = v126;
  xmmword_2A18BB198 = __dst;
  unk_2A18BB1A8 = v123;
LABEL_156:
  v119 = *MEMORY[0x29EDCA608];
  return result;
}

BlueFin::GlMeSrdMPFResults *BlueFin::GlMeSrdMPFResults::GlMeSrdMPFResults(BlueFin::GlMeSrdMPFResults *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 16) = -1;
  *(this + 5) = 0;
  memset_pattern16(this + 24, &memset_pattern, 0x14uLL);
  v2 = 0;
  *(this + 52) = 0;
  *(this + 44) = 0;
  *(this + 15) = 0;
  v3 = xmmword_298A319D0;
  v4 = vdupq_n_s64(5uLL);
  v5 = vdupq_n_s64(2uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(v4, v3)).u8[0])
    {
      *(this + v2 + 64) = 0;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(5uLL), *&v3)).i32[1])
    {
      *(this + v2 + 68) = 0;
    }

    v3 = vaddq_s64(v3, v5);
    v2 += 8;
  }

  while (v2 != 24);
  return this;
}

void BlueFin::GlMeSrdEstCarrPrm::EstTrkCarrPrmViaOpenLpLagOne(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5, float *a6, float *a7, uint64_t a8, float a9, float a10, unsigned __int8 a11, unsigned __int16 a12, char a13, unsigned __int8 a14, char a15, char a16, unsigned __int8 a17, char a18)
{
  v27 = a17;
  *(a8 + 72) = 0;
  *(a8 + 56) = 0u;
  *(a8 + 40) = 0u;
  v28 = *(a3 + 24);
  if (*(v28 + 48) <= a9)
  {
    v27 = 1;
  }

  if (v27)
  {
    v29 = *(v28 + 48);
  }

  else
  {
    v29 = a9;
  }

  v87 = *(a5 + 12);
  v86 = *(a5 + 52);
  HIWORD(v30) = WORD1(v86);
  LOWORD(v30) = *(a5 + 60);
  v31 = v29 * v30;
  if (!a13 || *(a1 + 376) - 81 > 0x34)
  {
    v34 = *(v28 + 52);
    if ((v34 - 1) < 2)
    {
      v33 = v31 / v29;
      goto LABEL_15;
    }

    if (!v34)
    {
      v33 = v31 * ((1.0 / v29) - (1.0 / *(v28 + 44)));
      goto LABEL_15;
    }

    v75 = "0";
    DeviceFaultNotify("glmesrd_carrprm.cpp", 2673, "CalcNumberOfLagOneProd", "0");
    v76 = "glmesrd_carrprm.cpp";
    v77 = 2673;
LABEL_97:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v76, v77, v75);
  }

  EpochPerBit = BlueFin::GlSignalId::GetEpochPerBit((a1 + 376));
  if (*(a1 + 384) >= 0x23Fu)
  {
    v75 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
    v76 = "glsignalid.h";
    v77 = 679;
    goto LABEL_97;
  }

  if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a1 + 380) - *(a1 + 380) + BlueFin::GlSvId::s_aucSvId2gnss[*(a1 + 376)]])
  {
    goto LABEL_94;
  }

  v33 = ((1.0 / v29) + -1.0 / ((BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a1 + 380) - *(a1 + 380) + BlueFin::GlSvId::s_aucSvId2gnss[*(a1 + 376)]] * EpochPerBit) * 0.001)) * v31;
LABEL_15:
  __src = v33;
  memcpy((*(a1 + 344) + *(a1 + 355) * *(a1 + 354)), &__src, *(a1 + 355));
  v35 = *(a1 + 354) + 1;
  *(a1 + 354) = v35;
  if (*(a1 + 353) <= v35)
  {
    *(a1 + 352) = 1;
    *(a1 + 354) = 0;
  }

  v36 = (a1 + 344);
  v37 = a7[2];
  v38 = (*(a3 + 16) + 68);
  v39 = 12;
  while (*(v38 - 1) > v37)
  {
    v38 += 2;
    if (!--v39)
    {
      v40 = -1;
      goto LABEL_22;
    }
  }

  v40 = *v38;
LABEL_22:
  if (v37 <= 16.0)
  {
    v41 = -1;
  }

  else
  {
    v41 = 20;
  }

  if (v37 <= 30.0)
  {
    v42 = v41;
  }

  else
  {
    v42 = 10;
  }

  if (v29 > a9)
  {
    v43 = v42;
  }

  else
  {
    v43 = v40;
  }

  v82 = 0.0;
  v83 = 0.0;
  v84 = 0.0;
  v44 = 9;
  if (!*(a1 + 352))
  {
    v44 = 10;
  }

  if (v36[v44])
  {
    v81 = v43;
    v80 = v29;
    v79 = *(a5 + 12);
    BlueFin::GlMeSrdObsBuf::SumVecFcnWithExit(v36, &v79, &v82, BlueFin::GlMeSrdEstCarrPrm::AccumulateMultiSecondCplxSummand);
    v45 = v82;
    if (v82 >= v43)
    {
      v46 = 0;
      v47 = v83;
      v48 = v84;
      v49 = 0.0;
      if (v48 == 0.0 || v47 == 0.0)
      {
        goto LABEL_57;
      }

      v50 = v84;
      v51 = v83;
      v49 = atan2f(v50, v51);
      if (*(a1 + 384) >= 0x23Fu)
      {
LABEL_95:
        v75 = "IsValid()";
        DeviceFaultNotify("glsignalid.h", 693, "GetSecPerEpochWithTrkException", "IsValid()");
        v76 = "glsignalid.h";
        v77 = 693;
        goto LABEL_97;
      }

      v52 = *(a1 + 380);
      v53 = *(a1 + 376);
      if (v52 == 1)
      {
        v54 = 1.5;
        if ((v53 - 1) < 0x20 || (v53 - 66) < 0xA)
        {
LABEL_43:
          v55 = a7[7];
          if (v55 == 0.0)
          {
            v57 = 1.0;
          }

          else
          {
            v56 = *a2;
            v57 = ((((sqrtf((v47 * v47) + (v48 * v48)) / v45) * a11) / a12) + (v56 + ((v29 / v54) * *a6))) / v55;
            if (v52 == 3)
            {
              v57 = v57 * 4.0;
            }
          }

          v46 = 0;
          if ((a14 & 1) == 0 && (a16 & 1) == 0 && v29 <= a9 && (a15 & 1) == 0)
          {
            v58 = a7[2];
            v59 = v57;
            if (v58 > 30.0 && v59 < 0.86)
            {
              goto LABEL_56;
            }

            if (v58 > 23.0 && v59 < 0.7)
            {
              goto LABEL_56;
            }

            v73 = v59 >= 0.6 || v58 <= 20.0;
            v74 = !v73;
            if (v74 || v57 > 1.5)
            {
              goto LABEL_56;
            }

            v46 = a18;
            if (!a18)
            {
              goto LABEL_61;
            }

            if ((*(a5 + 136) / a10) < 1.2)
            {
LABEL_56:
              v46 = 1;
            }

            else
            {
              v46 = 0;
            }
          }

LABEL_57:
          if (v29 > a9 && a18 && (a16 & 1) == 0)
          {
            v46 = fminf(*(a5 + 64) / a10, *(a5 + 136) / a10) < 1.2;
          }

LABEL_61:
          v60 = (v49 / (v29 * 6.2832));
          v61 = *(a5 + 12);
          v62 = v60 - (*(a5 + 16) - v61);
          v63 = *(a5 + 24) + 0.0;
          *(a8 + 48) = v62;
          *(a8 + 56) = v60 + v61;
          *(a8 + 40) = v63;
          if (*(a1 + 384) < 0x23Fu)
          {
            v64 = *(a1 + 380);
            v65 = *(a1 + 376);
            if (v64 == 1)
            {
              v66 = 1.5;
              if ((v65 - 1) < 0x20 || (v65 - 66) < 0xA)
              {
                goto LABEL_67;
              }
            }

            v67 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v64 - v64 + BlueFin::GlSvId::s_aucSvId2gnss[*(a1 + 376)]];
            if (v67)
            {
              v66 = v67 * 0.001;
LABEL_67:
              v68 = v29 / v66 * a7[3];
              *(a8 + 64) = *(a4 + 24) / sqrtf(v45 * v68);
              *(a8 + 68) = 0;
              if (a13)
              {
                v69 = v29 >= 0.01 || (v65 - 139) >= 0x24;
                v70 = 0.1;
                if (!v69)
                {
                  v70 = 0.3;
                }
              }

              else
              {
                v70 = 0.1;
              }

              if (v29 > a9)
              {
                *(a8 + 75) = 1;
                v70 = 0.3;
              }

              if ((a14 & ((v65 - 52) < 0xE)) != 0)
              {
                v70 = 0.5;
              }

              v71 = v62;
              v72 = (v70 > fabsf(v29 * v71)) & ~v46;
              *(a8 + 72) = 0;
              if (v47 == 0.0)
              {
                v72 = 0;
              }

              *(a8 + 73) = v72;
              *(a8 + 74) = v72;
              return;
            }

            goto LABEL_94;
          }

          goto LABEL_95;
        }
      }

      if (BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v52 - v52 + BlueFin::GlSvId::s_aucSvId2gnss[*(a1 + 376)]])
      {
        v54 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v52 - v52 + BlueFin::GlSvId::s_aucSvId2gnss[*(a1 + 376)]] * 0.001;
        goto LABEL_43;
      }

LABEL_94:
      v75 = "ucMsPerEpoch != 0";
      DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
      v76 = "glsignalid.h";
      v77 = 686;
      goto LABEL_97;
    }
  }
}

void BlueFin::GlMeSrdEstCarrPrm::Run(uint64_t a1, double *a2, uint64_t a3, float *a4, float32x2_t *a5, uint64_t a6, double a7, uint64_t a8, float *a9, uint64_t a10, char a11, unsigned __int8 a12, unsigned __int8 a13, unsigned __int8 a14, char a15, unsigned __int8 a16, unsigned __int16 a17, unsigned __int8 a18, unsigned __int8 a19, char a20, char a21, uint64_t a22, uint64_t a23, unsigned __int8 *a24, char a25, unsigned int a26, uint64_t a27, _BYTE *a28, unsigned __int8 a29, float *a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  if ((*a22 & 1) == 0)
  {
    v69 = "stAsicCarrPrmTrkMsmt.bValid";
    DeviceFaultNotify("glmesrd_carrprm.cpp", 1711, "Run", "stAsicCarrPrmTrkMsmt.bValid");
    v70 = 1711;
    goto LABEL_57;
  }

  v33 = *a24;
  if ((v33 - 1) >= 0xBC)
  {
    v69 = "otSignalId.GetSvId().isValid()";
    DeviceFaultNotify("glmesrd_carrprm.cpp", 1712, "Run", "otSignalId.GetSvId().isValid()");
    v70 = 1712;
    goto LABEL_57;
  }

  v34 = a9;
  v35 = a4;
  v37 = a26;
  v74 = (a1 + 376);
  if ((a1 + 376) != a24)
  {
    *(a1 + 376) = v33;
    *(a1 + 380) = *(a24 + 1);
    *(a1 + 384) = *(a24 + 4);
  }

  *(a1 + 388) = a25;
  *(a1 + 392) = a7;
  v39 = a13 < 5u && a26 > 0x3E8;
  v40 = *(a22 + 122);
  if ((a15 & 1) == 0)
  {
    v40 &= ~v39;
  }

  v41 = a30;
  v42 = a21 & ~a12;
  if (*(a27 + 176) <= 0.002)
  {
    v42 = 0;
  }

  *&v43 = *(a27 + 20 + 4 * *(a27 + 149)) * a17;
  v44 = *(a22 + 8);
  if (v44 == 1)
  {
    v45 = *(a22 + 24);
    v46 = *(a22 + 12);
    v47 = 1.0 / (*a4 + *a4);
  }

  else
  {
    LOBYTE(v44) = 0;
    v47 = 0.0;
    v45 = 0;
    v46 = 0.0;
  }

  v48 = v42 & (a14 ^ 1);
  *a33 = v44;
  *(a33 + 8) = v45;
  *(a33 + 16) = 0;
  *(a33 + 20) = v44;
  *(a33 + 24) = v46;
  *(a33 + 32) = v47;
  v49 = *&v43 / a16;
  if (*(a22 + 48) == 1)
  {
    v73 = v40;
    v50 = a2;
    v51 = a3;
    BlueFin::GlMeSrdEstCarrPrm::EstTrkCarrPrmViaOpenLpLagOne(a1, a2, a3, a6, a22, a9, a30, a33, *a4, v49, a16, a17, a11, a12, v39, v39 | a11 | a14, a18, v48);
    v40 = v73;
    v37 = a26;
    v34 = a9;
    v41 = a30;
    a2 = v50;
    a3 = v51;
    v35 = a4;
  }

  if (*(a22 + 72) == 1)
  {
    *(a33 + 111) = 0;
    *(a33 + 80) = 0u;
    *(a33 + 96) = 0u;
    v43 = *(a22 + 80);
    v54 = *(a22 + 24) + 0.0;
    v55 = v43 + *(a22 + 16);
    *(a33 + 88) = v43;
    *(a33 + 96) = v55;
    *(a33 + 80) = v54;
    *(a33 + 104) = 1102053376;
    *(a33 + 113) = 257;
  }

  if (*(a22 + 88) == 1)
  {
    v72 = v37;
    v71 = v48;
    v56 = a1;
    v57 = a2;
    v58 = a3;
    v59 = a1;
    v60 = v35;
    BlueFin::GlMeSrdEstCarrPrm::EstTrkCarrPrmViaClosedLpFll(v56, v34, a3, a5, a6, a22, v40, a19, *v35, v49, v39, a20, v71, v72, a29, v41, a33);
    a2 = v57;
    a3 = v58;
    v35 = v60;
    a1 = v59;
  }

  if (*(a22 + 144) == 1)
  {
    BlueFin::GlMeSrdEstCarrPrm::EstTrkCarrPrmViaClosedLpPll(a1, *(a3 + 24), a22, a23, (v39 ^ 1) & *(a22 + 170), a29, *v41, a33, a2[1], *v35, a5[4].f32[0], v41[2]);
  }

  if ((a20 & 1) == 0)
  {
    BlueFin::GlMeSrdEstCarrPrm::CrossCheckTrkCarrPrmEst(a6, a33, *&v43);
  }

  BlueFin::GlMeSrdEstCarrPrm::SelectPublishedTrkCarrPrmEst(a6, a33, a14, a29, a32);
  if ((*(a22 + 8) & 1) == 0)
  {
    v69 = "stAsicCarrPrmTrkMsmt.stAcqPrm.bValid";
    DeviceFaultNotify("glmesrd_carrprm.cpp", 1834, "Run", "stAsicCarrPrmTrkMsmt.stAcqPrm.bValid");
    v70 = 1834;
LABEL_57:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_carrprm.cpp", v70, v69);
  }

  v61 = *(a31 + 20);
  *(a32 + 92) = v61;
  *(a32 + 96) = *(a31 + 8);
  if (v61 == 3)
  {
    if (*(a32 + 1) != 1)
    {
      goto LABEL_36;
    }

    v62 = *(a31 + 16);
    if (v62 == -1)
    {
      goto LABEL_36;
    }

    v63 = a31 + 4 * v62;
    if (*(v63 + 24) >= 0.2)
    {
      goto LABEL_36;
    }

    v64 = *(a32 + 8);
    v65 = *(v63 + 44) - v64;
    if (v65 < 0.0)
    {
      v65 = -v65;
    }

    if (v65 >= 3.0)
    {
LABEL_36:
      *(a32 + 1) = 0;
      *(a32 + 34) = 0;
      *(a32 + 36) = 0;
      *(a32 + 20) = 0;
      *(a32 + 68) = 0;
    }
  }

  if (*(a22 + 88) == 1)
  {
    *(a32 + 28) = 1;
    *(a32 + 29) = *(a33 + 121) ^ 1;
    *(a32 + 31) = 1;
    *(a32 + 32) = *(a33 + 160) ^ 1;
    *(a32 + 33) = *(a33 + 196) ^ 1;
  }

  BlueFin::GlMeSrdEstCarrPrm::OverrideTrkCarrPrmRmse(a1, *v41, a32, v41[2]);
  v66 = vcgt_f32(0x3400000034000000, vabs_f32(vadd_f32(a5[2], 0xBCA3D70ABBA3D70ALL)));
  if ((v66.i32[1] & v66.i32[0] & 1) != 0 && *v74 - 175 <= 0xFFFFFFDB && (*a28 & 1) != 0 && (*a27 & 1) != 0 && (*v41 & 1) != 0 && v41[2] >= 20.0 && (*&a28[4 * a28[149] + 20] / *(a27 + 20 + 4 * *(a27 + 149))) <= 1.122)
  {
    *(a32 + 1) = 0;
    v67 = *(a32 + 16);
    if (v67 < 1000.0)
    {
      v67 = 1000.0;
    }

    *(a32 + 16) = v67;
    *(a32 + 20) = 0;
  }

  if (*(a31 + 20) == 2 && *(a32 + 1) == 1)
  {
    v68 = *(a31 + 8);
    if (*(a32 + 16) < v68)
    {
      *(a32 + 34) = 0;
      *(a32 + 36) = 0;
      *(a32 + 68) = 0;
      *(a32 + 16) = v68;
    }
  }
}

_BYTE *BlueFin::GlMeSrdObsBuf::SumVecFcnWithExit(_BYTE *this, void *a2, void *a3, uint64_t (*a4)(void *, void *, unint64_t))
{
  v4 = 9;
  if (!this[8])
  {
    v4 = 10;
  }

  v5 = this[v4];
  if (this[v4])
  {
    v9 = this;
    v10 = this[9];
    if (v10 > (this[10] - 1))
    {
      LOBYTE(v10) = 0;
    }

    v11 = v10 + this[10] - 1;
    do
    {
      this = a4(a2, a3, *v9 + *(v9 + 11) * v11);
      if (!this)
      {
        break;
      }

      v12 = *(v9 + 9);
      if (v12 > (v11 - 1))
      {
        LOBYTE(v12) = 0;
      }

      v11 = v12 + v11 - 1;
      --v5;
    }

    while (v5);
  }

  return this;
}

BOOL BlueFin::GlMeSrdEstCarrPrm::AccumulateMultiSecondCplxSummand(BlueFin::GlMeSrdEstCarrPrm *this, char *a2, char *a3, void *a4)
{
  if (!this)
  {
    v13 = "potBufParam != nullptr";
    DeviceFaultNotify("glmesrd_carrprm.cpp", 2621, "AccumulateMultiSecondCplxSummand", "potBufParam != nullptr");
    v14 = 2621;
    goto LABEL_8;
  }

  if (!a2)
  {
    v13 = "potAccBufElem != nullptr";
    DeviceFaultNotify("glmesrd_carrprm.cpp", 2625, "AccumulateMultiSecondCplxSummand", "potAccBufElem != nullptr");
    v14 = 2625;
    goto LABEL_8;
  }

  if (!a3)
  {
    v13 = "potBufElem != nullptr";
    DeviceFaultNotify("glmesrd_carrprm.cpp", 2629, "AccumulateMultiSecondCplxSummand", "potBufElem != nullptr");
    v14 = 2629;
LABEL_8:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_carrprm.cpp", v14, v13);
  }

  v7 = (*(a3 + 3) - *this) * 6.28318531 * *(this + 2);
  v8 = __sincosf_stret(v7);
  v9.f64[0] = v8.__sinval;
  v10 = vcvtq_f64_f32(*(a3 + 4));
  v9.f64[1] = -v8.__sinval;
  v11 = vmulq_f64(v9, v10);
  *(a2 + 8) = vaddq_f64(*(a2 + 8), vmlaq_n_f64(vextq_s8(v11, v11, 8uLL), v10, v8.__cosval));
  *v11.i32 = *a3 + *a2;
  *a2 = v11.i32[0];
  return *v11.i32 < *(this + 3);
}

void BlueFin::GlMeSrdEstCarrPrm::EstTrkCarrPrmViaClosedLpFll(uint64_t a1, uint64_t a2, uint64_t a3, float *a4, uint64_t a5, uint64_t a6, int a7, int a8, float a9, float a10, char a11, char a12, char a13, unsigned int a14, char a15, uint64_t a16, uint64_t a17)
{
  if (*a6 != 1 || *(a6 + 88) != 1)
  {
    *(a17 + 120) = 0;
    *(a17 + 128) = 0;
    *(a17 + 136) = 0;
    *(a17 + 144) = 0;
    *(a17 + 152) = 0;
    return;
  }

  v26 = *(a1 + 96);
  v27 = *(a6 + 104);
  if (v26 - v27 <= 63.5)
  {
    v28 = *(a1 + 104);
    if (v27 - v26 <= 63.5)
    {
      goto LABEL_10;
    }

    --v28;
  }

  else
  {
    v28 = *(a1 + 104) + 1;
  }

  *(a1 + 104) = v28;
LABEL_10:
  *(a1 + 96) = v27;
  v94 = v27 + v28 * 128.0;
  v92 = a4[15];
  v90 = a4[13];
  v29 = a4[18];
  v30 = v90 / a9;
  v31 = __exp10f(*(a16 + 8) / 10.0) * a9;
  v32 = ((v29 * 0.5) * 6.2832) * a9;
  v33 = __sincosf_stret(v32 * 0.5);
  v34 = sinf(((v90 / a9) * v32) * 0.5) / v33.__sinval;
  v35 = sinf((v90 / a9) * v32);
  v36 = v35 / sinf(v32);
  v37 = ((a9 + a9) * (v33.__cosval / v33.__sinval)) * ((v34 * v34) - ((v90 / a9) * v36));
  v38 = ((v90 * (v92 + v92)) * (((((v30 * v30) - (v36 * v36)) + ((v30 * v30) - (v36 * v36))) + ((v34 * ((v31 * 4.0) * v34)) * (v30 - v36))) / (v37 * ((v31 * v31) * v37)))) / 39.4784176;
  *(a17 + 128) = v94 + *(a6 + 24);
  *(a17 + 136) = 1092616192;
  *(a17 + 144) = *(a6 + 96) + *(a6 + 16);
  *(a17 + 152) = sqrtf(v38);
  v39 = a4[17];
  if (((v39 > 0.0) & a7) != 0)
  {
    v40 = 2;
  }

  else
  {
    v40 = 0;
  }

  v95 = v40;
  v41 = *(a5 + 36);
  if (*(a5 + 36))
  {
    v93 = a8;
    v91 = a3;
    v42 = *(a3 + 24);
    v43 = *(a2 + 4);
    if (v39 <= 0.0)
    {
      v44 = 1;
    }

    else
    {
      v44 = 3;
    }

    v45 = (a6 + 40);
    v46 = 4;
    v88 = v44;
    while (1)
    {
      v47 = v46;
      v48 = v45[v46];
      if (v48 != 255)
      {
        break;
      }

      v46 = v47 - 1;
      if (v47 == 1)
      {
        v47 = 0;
        v48 = *v45;
        break;
      }
    }

    if (v48 <= 3)
    {
      v49 = a4[13] / *v42;
    }

    else
    {
      v49 = (a4[13] / *v42) * (a4[13] / *v42);
    }

    v50 = (v43 * *(a5 + 48)) * v49;
    v51 = *(a1 + 112);
    v52 = v51 - v50;
    if ((v51 - v50) < 0.0)
    {
      v52 = -(v51 - v50);
    }

    if (v52 >= 1.0 || v51 == 0.0 && v50 != 0.0)
    {
      *(a1 + 112) = v50;
      __src = v50;
      *(a1 + 130) = 0;
      *(a1 + 128) = 1;
      if (*(a1 + 129))
      {
        v53 = 0;
        do
        {
          memcpy((*(a1 + 120) + v53 * *(a1 + 131)), &__src, *(a1 + 131));
          ++v53;
        }

        while (v53 < *(a1 + 129));
      }
    }

    v54 = *(a6 + 124);
    __src = v54;
    if (!v93)
    {
      goto LABEL_40;
    }

    v55 = v45[v47];
    if (v55 == 3)
    {
      v56 = 1.2;
    }

    else
    {
      if (v55 > 2)
      {
LABEL_40:
        memcpy((*(a1 + 120) + *(a1 + 131) * *(a1 + 130)), &__src, *(a1 + 131));
        v60 = *(a1 + 130) + 1;
        *(a1 + 130) = v60;
        if (*(a1 + 129) <= v60)
        {
          *(a1 + 128) = 1;
          *(a1 + 130) = 0;
        }

        v61 = v49 * (v43 * *(a5 + 52));
        v62 = BlueFin::GlMeSrdObsBuf::SumFcn((a1 + 120), v41, 0, BlueFin::GlMeSrdEstCarrPrm::CalcMagSqrdFllValidityTestStatSummand) / v41;
        if (a13)
        {
          v63 = v45[v47];
          v64 = flt_298A358F8[v63 == 2];
          if (v63 > 2)
          {
            v64 = 1.4;
          }

          if (v61 <= v62)
          {
            v65 = a7;
          }

          else
          {
            v65 = 0;
          }

          v58 = a16;
          v59 = v95;
          v57 = v88;
          if ((*(a6 + 136) / a10) > v64)
          {
            v59 = v95 | v65;
          }

          a8 = v93;
          a3 = v91;
        }

        else
        {
          if (v61 <= v62)
          {
            v66 = a7;
          }

          else
          {
            v66 = 0;
          }

          a8 = v93;
          v59 = v95 | v66;
          v58 = a16;
          a3 = v91;
          v57 = v88;
        }

        goto LABEL_55;
      }

      v56 = 1.5;
    }

    __src = v54 * v56;
    goto LABEL_40;
  }

  if (v39 <= 0.0)
  {
    v85 = "!otEstValidityChkBitMsk32.IsEmpty()";
    DeviceFaultNotify("glmesrd_carrprm.cpp", 2164, "DetermineFllValidity", "!otEstValidityChkBitMsk32.IsEmpty()");
    v86 = "glmesrd_carrprm.cpp";
    v87 = 2164;
    goto LABEL_97;
  }

  v57 = 2;
  v58 = a16;
  v59 = v40;
LABEL_55:
  if ((v59 & ~v57) != 0)
  {
    v85 = "otValRslt.IsEmpty()";
    DeviceFaultNotify("glmesrd_carrprm.cpp", 2170, "DetermineFllValidity", "otValRslt.IsEmpty()");
    v86 = "glmesrd_carrprm.cpp";
    v87 = 2170;
    goto LABEL_97;
  }

  if (BlueFin::GlUtils::m_ucEnabled)
  {
    BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x3F);
  }

  *(a17 + 121) = v57 == v59;
  *(a17 + 120) = 0;
  v67 = *(a3 + 24);
  if ((a15 & 2) == 0)
  {
    goto LABEL_67;
  }

  v68 = v67[17] + -5.0;
  if (v68 <= 21.0)
  {
    v68 = 21.0;
  }

  *(a17 + 120) = v68 < *(v58 + 8);
  if (*(a1 + 384) >= 0x23Fu)
  {
    v85 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 651, "GetRfCarrierFrqHz", "IsValid()");
    v86 = "glsignalid.h";
    v87 = 651;
LABEL_97:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v86, v87, v85);
  }

  v69 = *(a1 + 376);
  v70 = BlueFin::GlSvId::s_aucSvId2gnss[v69];
  v71 = BlueFin::GlSignalId::s_adSignalType2ctrFreqHz[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(a1 + 380) - *(a1 + 380) + v70]];
  if (v70 == 2)
  {
    v72 = (v69 - 59);
    if ((v69 - 52) >= 0xE)
    {
      v72 = -8.0;
    }

    v71 = v71 + v72 * 562500.0;
  }

  v73 = 0.5 / (299792458.0 / v71);
  *(a17 + 136) = v73;
LABEL_67:
  *(a17 + 156) = 1;
  v74 = 0.04;
  if (!a8)
  {
    v74 = a4[13];
  }

  v75 = 1.0;
  if (a12)
  {
    v75 = 3.0;
    if (*(a6 + 44) >= 3u)
    {
      if (*v67 == 0.004)
      {
        v74 = 0.008;
      }

      if (*v67 == 0.005)
      {
        v74 = 0.01;
      }
    }
  }

  v76 = *(a6 + 96);
  v77 = v74;
  if (v75 * 0.3 <= fabsf(v77 * v76))
  {
    *(a17 + 120) = 0;
    *(a17 + 157) = 1;
  }

  v78 = *(a6 + 112);
  if (v75 * 51.5 < fabsf(v78))
  {
    *(a17 + 120) = 0;
    *(a17 + 158) = 1;
  }

  if (a14 >= 0x1389 && (a11 & 1) == 0)
  {
    v79 = *(a1 + 392);
    v80 = *(a1 + 372);
    v81 = 0.0;
    if (v80 == -1)
    {
      v82 = 0;
    }

    else
    {
      v82 = 0;
      v83 = v79 - v80;
      if (v83 > 0.0 && v83 <= 2000.0)
      {
        v81 = (v78 - *(a1 + 368)) / (v83 / 1000.0);
        v82 = 1;
      }
    }

    *(a1 + 368) = v78;
    v84 = (v79 + 0.5);
    if (v79 <= 0.0)
    {
      v84 = 0;
    }

    if (v79 < 0.0)
    {
      v84 = -1;
    }

    *(a1 + 372) = v84;
    if (v79 >= 0.0 && v82 && v75 * 50.0 < fabsf(v81))
    {
      *(a17 + 120) = 0;
      *(a17 + 157) = 257;
      *(a17 + 159) = 1;
    }
  }
}

void BlueFin::GlMeSrdEstCarrPrm::EstTrkCarrPrmViaClosedLpPll(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, char a7, uint64_t a8, double a9, float a10, float a11, float a12)
{
  if (*a3 != 1 || *(a3 + 144) != 1)
  {
    *(a8 + 200) |= 0x40u;
    *(a8 + 160) = 0;
    *(a8 + 204) = 0;
    *(a8 + 176) = 0;
    *(a8 + 184) = 0;
    *(a8 + 168) = 0;
    *(a8 + 189) = 0;
    return;
  }

  v23 = *(a1 + 8);
  v24 = *(a3 + 160);
  if (v23 - v24 <= 63.5)
  {
    v25 = *(a1 + 108);
    if (v24 - v23 <= 63.5)
    {
      goto LABEL_10;
    }

    --v25;
  }

  else
  {
    v25 = *(a1 + 108) + 1;
  }

  *(a1 + 108) = v25;
LABEL_10:
  *(a1 + 8) = v24;
  if (*(a1 + 384) >= 0x23Fu)
  {
    DeviceFaultNotify("glsignalid.h", 651, "GetRfCarrierFrqHz", "IsValid()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 651, "IsValid()");
  }

  v26 = v24 + v25 * 128.0;
  v27 = *(a1 + 376);
  v28 = BlueFin::GlSvId::s_aucSvId2gnss[v27];
  v29 = BlueFin::GlSignalId::s_adSignalType2ctrFreqHz[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(a1 + 380) - *(a1 + 380) + v28]];
  v30 = v29;
  if (v28 == 2)
  {
    v31 = (v27 - 59);
    if ((v27 - 52) >= 0xE)
    {
      v31 = -8.0;
    }

    v30 = v29 + v31 * 562500.0;
  }

  v32 = v30;
  v33 = a9;
  v34 = (sqrtf(((1.0 / (__exp10f(a12 / 10.0) * a10)) * a11) * a10) * (v33 / v32)) / 6.2832;
  v35 = v26 + *(a3 + 24);
  *(a8 + 168) = v35;
  v36 = v34;
  v37 = v29;
  if (v28 == 2)
  {
    v38 = (v27 - 59);
    if ((v27 - 52) >= 0xE)
    {
      v38 = -8.0;
    }

    v37 = v29 + v38 * 562500.0;
  }

  v39 = v36 / (299792458.0 / v37);
  *(a8 + 176) = v39;
  *(a8 + 180) = *(a3 + 172);
  *(a8 + 184) = *(a3 + 152) + *(a3 + 16);
  v40 = v29;
  if (v28 == 2)
  {
    v41 = (v27 - 59);
    if ((v27 - 52) >= 0xE)
    {
      v41 = -8.0;
    }

    v40 = v29 + v41 * 562500.0;
  }

  v42 = -100.0 / (299792458.0 / v40);
  *(a8 + 192) = v42;
  if ((a7 & 1) != 0 && *(a2 + 68) <= a12)
  {
    v44 = *(a8 + 200);
    v43 = 1;
  }

  else
  {
    v43 = 0;
    v44 = *(a8 + 200) | 4;
    *(a8 + 200) = v44;
  }

  if (*(a3 + 184) & *(a3 + 185))
  {
    v44 |= 0x10u;
  }

  if (a5)
  {
    v45 = 4096;
  }

  else
  {
    v45 = 4097;
  }

  v46 = v44 | v45;
  *(a8 + 200) = v46;
  if (a6)
  {
    *(a8 + 204) = 0;
  }

  if (v43 & a5)
  {
    v47 = 1;
  }

  else
  {
    v47 = 0;
    *(a8 + 192) = 0;
  }

  *(a8 + 160) = v47;
  *(a8 + 196) = v47;
  if (v28 == 2)
  {
    v48 = (v27 - 59);
    if ((v27 - 52) >= 0xE)
    {
      v48 = -8.0;
    }

    v29 = v29 + v48 * 562500.0;
  }

  v49 = a1 + 56;
  v50 = *(a1 + 390);
  v51 = v50 % 5u;
  *(a1 + 56 + 8 * v51) = *(a1 + 392) * 0.001;
  v52 = (a1 + 16);
  v53 = v50 + 1;
  *(a1 + 390) = v53;
  *(a1 + 16 + 8 * v51) = v35 * (299792458.0 / v29);
  if (v53 >= 0x15u && !(v53 % 5u))
  {
    v53 = 5;
    *(a1 + 390) = 5;
LABEL_45:
    v54 = v53 - 3;
    v55 = 0.0;
    if (v54 > (v53 - 5))
    {
      v56 = (v53 - 5);
      do
      {
        v57 = v56 % 5u;
        v58 = v56 + 2;
        v59 = v56 + 1;
        v60 = (v56 + 1) % 5u;
        v61 = v52[v60];
        v62 = *(v49 + 8 * v60);
        v63 = *(v49 + 8 * v57);
        v64 = v62 - v63;
        v65 = v58 % 5u;
        v66 = *(v49 + 8 * v65) - v62;
        v67 = v62 + v66 * 0.5 - (v63 + (v62 - v63) * 0.5);
        v55 = v55 + (v52[v65] - v61) / (v66 * v67) - (v61 - v52[v57]) / (v64 * v67);
        v56 = v59;
      }

      while (v54 != v59);
      v55 = v55 * 0.333333333;
    }

    v68 = (v53 - 2) % 5;
    v69 = v54 % 5u;
    v70 = *(v49 + 8 * v68);
    v71 = *(v49 + 8 * v69);
    v72 = v70 - v71;
    v73 = (v53 - 1) % 5;
    v74 = *(v49 + 8 * v73) - v70;
    v75 = v70 + v74 * 0.5 - (v71 + (v70 - v71) * 0.5);
    if (vabdd_f64(v55, (v52[v73] - v52[v68]) / (v74 * v75) - (v52[v68] - v52[v69]) / (v72 * v75)) > 100.0)
    {
      *(a1 + 390) = 0;
      *v52 = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      v46 = *(a8 + 200) | 8;
      *(a8 + 200) = v46;
    }

    goto LABEL_51;
  }

  if (v53 >= 5u)
  {
    goto LABEL_45;
  }

LABEL_51:
  if (*(a4 + 663) == 1 && *(a4 + 660) > 2 * (*(a4 + 2) / 5u))
  {
    *(a8 + 200) = v46 | 0x800;
    *(a8 + 160) = 0;
  }
}

uint64_t BlueFin::GlMeSrdEstCarrPrm::SelectPublishedTrkCarrPrmEst(uint64_t result, char *a2, int a3, int a4, uint64_t a5)
{
  *a5 = 1;
  *(a5 + 34) = 0;
  *(a5 + 36) = 0;
  *(a5 + 80) = 0;
  *(a5 + 88) = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *(a5 + 40) = 0u;
  *(a5 + 56) = 0u;
  *(a5 + 72) = 0;
  if (*result == 4)
  {
    if ((a2[113] & 1) == 0)
    {
      goto LABEL_8;
    }

    v5 = 7;
    v6 = 88;
  }

  else
  {
    if (*result != 3)
    {
      DeviceFaultNotify("glmesrd_carrprm.cpp", 1346, "SelectPublishedTrkCarrPrmEst", "0");
      v42 = 1346;
LABEL_73:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_carrprm.cpp", v42, "0");
    }

    if ((a2[73] & 1) == 0)
    {
      goto LABEL_8;
    }

    v5 = 3;
    v6 = 48;
  }

  *(a5 + 72) = 1;
  *(a5 + 80) = *&a2[v6];
  *(a5 + 88) = v5;
LABEL_8:
  *(a5 + 1) = 0;
  v7 = *(a2 + 3);
  *(a5 + 8) = v7;
  v8 = *(a2 + 21);
  v9 = *(a2 + 16);
  *(a5 + 40) = v8;
  *(a5 + 48) = v9;
  *(a5 + 20) = 0;
  v10 = *(a2 + 50);
  *(a5 + 100) = v10;
  v11 = *(result + 4);
  v12 = v11 != 0;
  if (!v11 && !a3)
  {
    v13 = 0;
LABEL_62:
    if (v13 != 2)
    {
      *(a5 + 100) = v10 | 0x80;
    }

    goto LABEL_64;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v48 = *a2;
  v17 = *(a2 + 1);
  v18 = *(a2 + 4);
  v47 = a2[20];
  v19 = *(result + 32);
  v20 = *(result + 84);
  v43 = a2[160];
  v44 = a2[204];
  v21 = *(a2 + 44);
  v46 = a2[121];
  v22 = *(a2 + 34);
  v23 = *(result + 64);
  v45 = a2[196];
  v24 = a2[72];
  v25 = *(a2 + 5);
  v26 = *(a2 + 17);
  v27 = a2[74];
  v28 = a2[112];
  v29 = *(a2 + 10);
  v30 = a2[120] & *&v46 & ((a4 & 2) >> 1);
  v31 = *(a2 + 27);
  v32 = v10;
  v33 = a2[114];
  while (1)
  {
    if (a3)
    {
      v34 = 3;
    }

    else
    {
      v34 = 0;
    }

    if (v12)
    {
      v34 = v11;
    }

    v35 = v34 != 3;
    if (v34 > 2)
    {
      switch(v34)
      {
        case 3:
          if (v24)
          {
            v15 = 1;
            *(a5 + 34) = 1;
            *(a5 + 40) = v25;
            *(a5 + 56) = v26;
            v13 = 3;
            *(a5 + 68) = 3;
            v16 = 3;
          }

          if (v27)
          {
            *(a5 + 1) = 1;
            *(a5 + 8) = *(a2 + 7);
            *(a5 + 16) = *(a2 + 16);
            v41 = 3;
            goto LABEL_69;
          }

          break;
        case 5:
          if (v48)
          {
            v15 = 1;
            *(a5 + 34) = 1;
            *(a5 + 40) = v17;
            *(a5 + 56) = v18;
            v13 = 4;
            *(a5 + 68) = 4;
            v16 = 4;
          }

          if (v47)
          {
            *(a5 + 1) = 1;
            *(a5 + 8) = v7;
            *(a5 + 16) = *(a2 + 8);
            v41 = 4;
            goto LABEL_69;
          }

          break;
        case 4:
          if (v28)
          {
            v15 = 1;
            *(a5 + 34) = 1;
            *(a5 + 40) = v29;
            *(a5 + 56) = v31;
            v13 = 7;
            *(a5 + 68) = 7;
            v16 = 7;
          }

          if (v33)
          {
            *(a5 + 1) = 1;
            *(a5 + 8) = *(a2 + 12);
            *(a5 + 16) = *(a2 + 26);
            v41 = 7;
            goto LABEL_69;
          }

          break;
        default:
          goto LABEL_71;
      }

      goto LABEL_60;
    }

    if (v34 == 1)
    {
      if (v19 <= 1 && (v46 & 1) != 0)
      {
        v41 = 1;
        *(a5 + 1) = 1;
        *(a5 + 8) = *(a2 + 18);
        *(a5 + 16) = *(a2 + 38);
        goto LABEL_69;
      }

      goto LABEL_60;
    }

    if (v34 != 2)
    {
LABEL_71:
      DeviceFaultNotify("glmesrd_carrprm.cpp", 1558, "SelectPublishedTrkCarrPrmEst", "0");
      v42 = 1558;
      goto LABEL_73;
    }

    v36 = *(a2 + 45);
    if ((v20 & 1) == 0)
    {
      v32 |= 0x100u;
    }

    if ((v20 & (v36 >= *(result + 88))) != 0)
    {
      v32 |= 2u;
    }

    if (v20 & (v36 >= *(result + 88)) | (v20 ^ 1) & 1)
    {
      *(a5 + 100) = v32;
      v10 = v32;
      if (((v43 | v44) & 1) == 0)
      {
        goto LABEL_48;
      }

      v15 = 0;
      *(a5 + 40) = v8;
      *(a5 + 56) = v21;
      v10 = v32;
      *(a5 + 34) = 0;
    }

    else
    {
      if (((v43 | v44) & 1) == 0)
      {
        goto LABEL_48;
      }

      v15 = v43;
      *(a5 + 34) = v43;
      *(a5 + 40) = v8;
      *(a5 + 56) = v21;
    }

    *(a5 + 64) = v36;
LABEL_48:
    if (a4)
    {
      if (v44)
      {
        *(a5 + 35) = 1;
LABEL_52:
        v13 = 2;
        *(a5 + 68) = 2;
        v16 = 2;
        if (v30)
        {
          *(a5 + 36) = 1;
          *(a5 + 48) = v9;
          v13 = 2;
          *(a5 + 60) = v22;
        }

        goto LABEL_58;
      }

      *(a5 + 35) = 0;
      if (v15)
      {
        goto LABEL_52;
      }
    }

    else
    {
      *(a5 + 35) = v15;
      if (v15)
      {
        goto LABEL_52;
      }
    }

    if (v30)
    {
      *(a5 + 36) = 1;
      *(a5 + 48) = v9;
      *(a5 + 60) = v22;
      if (v16 != 2)
      {
        v13 = 1;
        *(a5 + 68) = 1;
        v16 = 1;
      }
    }

LABEL_58:
    if (v23 <= 1 && (v45 & 1) != 0)
    {
      break;
    }

LABEL_60:
    v14 += v12;
    LOBYTE(a3) = v12 & a3 & v35;
    v11 = *(result + 4 + 4 * v14);
    v12 = v11 != 0;
    if (!(v12 | a3 & 1))
    {
      if (v15)
      {
        goto LABEL_64;
      }

      goto LABEL_62;
    }
  }

  *(a5 + 1) = 1;
  *(a5 + 8) = *(a2 + 23);
  *(a5 + 16) = *(a2 + 48);
  v41 = 2;
LABEL_69:
  *(a5 + 20) = v41;
  if ((v15 & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_64:
  if (a2[156] == 1)
  {
    v37 = a2[157];
    v38 = a2[158];
    v39 = 1;
    v40 = a2[159];
  }

  else
  {
    v39 = 0;
    v37 = 0;
    v38 = 0;
    v40 = 0;
  }

  *(a5 + 24) = v39;
  *(a5 + 25) = v37;
  *(a5 + 26) = v38;
  *(a5 + 27) = v40;
  *(a5 + 30) = a2[122];
  return result;
}

float BlueFin::GlMeSrdEstCarrPrm::CrossCheckTrkCarrPrmEst(uint64_t a1, uint64_t a2, float result)
{
  *(a2 + 122) = 0;
  if (*(a1 + 28))
  {
    if (*(a1 + 56) == 1 && *(a2 + 74) == 1 && *(a2 + 121) == 1)
    {
      v3 = *(a2 + 56);
      v4 = *(a2 + 144);
      result = vabds_f32(v3, v4);
      if (result > *(a1 + 60))
      {
        *(a2 + 120) = 0;
        *(a2 + 122) = 1;
      }
    }
  }

  if (*(a1 + 68) == 1)
  {
    v5 = *(a2 + 184) - *(a2 + 56);
    if (!*(a2 + 74))
    {
      v5 = 0.0;
    }

    v6 = -v5;
    if (v5 >= 0.0)
    {
      v6 = v5;
    }

    result = *(a1 + 72);
    if (v6 > result)
    {
      *(a2 + 196) = 0;
      *(a2 + 160) = 0;
      *(a2 + 204) = 0;
      result = result + result;
      *(a2 + 192) = result;
    }
  }

  if (*(a1 + 76) == 1)
  {
    v7 = *(a2 + 184) - *(a2 + 144);
    if (!*(a2 + 121))
    {
      v7 = 0.0;
    }

    v8 = -v7;
    if (v7 >= 0.0)
    {
      v8 = v7;
    }

    result = *(a1 + 80);
    if (v8 > result)
    {
      *(a2 + 196) = 0;
      *(a2 + 160) = 0;
      *(a2 + 204) = 0;
      result = result + result;
      *(a2 + 192) = result;
    }
  }

  return result;
}

uint64_t BlueFin::GlMeSrdCarrPrmResults::isGarbage(BlueFin::GlMeSrdCarrPrmResults *this)
{
  if (*this != 1)
  {
    v1 = 0;
    return v1 & 1;
  }

  if (*(this + 1) == 1)
  {
    v1 = *(this + 1) == 1.79769313e308 || *(this + 4) == 3.4028e38 || !*(this + 5);
  }

  else
  {
    v1 = *(this + 5) != 0;
  }

  if ((*(this + 34) & 1) != 0 || *(this + 35) == 1)
  {
    if (*(this + 5) == 1.79769313e308 || *(this + 14) == 3.4028e38 || *(this + 16) == -1)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (*(this + 36) != 1)
    {
      v1 |= *(this + 17) != 0;
      goto LABEL_20;
    }

    if (*(this + 6) == 1.79769313e308 || *(this + 15) == 3.4028e38)
    {
      goto LABEL_19;
    }
  }

  v2 = *(this + 17);
  if (v2 <= 6 && ((1 << v2) & 0x61) != 0)
  {
LABEL_19:
    v1 = 1;
  }

LABEL_20:
  if (*(this + 72) == 1)
  {
    if (*(this + 10) == 3.40282347e38 || !*(this + 22))
    {
      v1 = 1;
    }
  }

  else
  {
    v1 |= *(this + 22) != 0;
  }

  return v1 & 1;
}

void BlueFin::GlMeSrdEstMultipath::Run(uint64_t a1, int a2, uint64_t a3, int a4, unsigned __int8 *a5, BlueFin::GlMeSrdCNoResults *this, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 a14, unsigned __int8 a15, char a16, char a17, unsigned __int8 a18, uint64_t a19)
{
  v19 = this;
  BlueFin::GlMeSrdCNoResults::isGarbage(this);
  if (v23)
  {
    v78 = "!stCNoResults.isGarbage()";
    DeviceFaultNotify("glmesrd_multipath.cpp", 75, "Run", "!stCNoResults.isGarbage()");
    v79 = "glmesrd_multipath.cpp";
    v80 = 75;
    goto LABEL_98;
  }

  v24 = *(a5 + 4);
  if (v24 >= 0x23F)
  {
    v78 = "otSignalId.IsValid()";
    DeviceFaultNotify("glmesrd_multipath.cpp", 76, "Run", "otSignalId.IsValid()");
    v79 = "glmesrd_multipath.cpp";
    v80 = 76;
    goto LABEL_98;
  }

  if ((a1 + 12) != a5)
  {
    *(a1 + 12) = *a5;
    *(a1 + 16) = *(a5 + 1);
    *(a1 + 20) = v24;
  }

  if ((*v19 & 1) == 0)
  {
    *(a19 + 4) = 0;
    return;
  }

  v25 = a13;
  v26 = *(*(a3 + 24) + 4);
  v27 = BlueFin::GlMeSrdEstMultipath::Run(BlueFin::GlMeSrdPhysConst const&,BlueFin::GlMeSrdGlbTrkParams const&,BlueFin::GlMeGearTrkParams const&,BlueFin::GlSignalId const&,BlueFin::GlMeSrdCNoResults const&,BlueFin::GlMeSrdTrkAidStatus const&,BOOL,unsigned int,BlueFin::GlMeSrdAsicCorrVecTrkMsmt const&,BlueFin::GlMeSrdAsicCorrVecTrkMsmt const&,BlueFin::GlMeSrdPkFitResults const&,BlueFin::GlMeSrdPkFitResults const&,unsigned char,unsigned char,BOOL,BOOL,BOOL,BlueFin::GlMeSrdMultipathResults &)::fVeryLowThreshholds[4 * BlueFin::GlSvId::s_aucSvId2gnss[*a5] + *(a5 + 1)];
  if (*a12 == 1)
  {
    PkFitMultipathIndicator = BlueFin::GlMeSrdEstMultipath::GetPkFitMultipathIndicator(*(a12 + 44), *(v19 + 2), *(a12 + 8), *(a12 + 28), *(a12 + 45), a14, a15, a18, *(*(a3 + 24) + 4), BlueFin::GlMeSrdEstMultipath::Run(BlueFin::GlMeSrdPhysConst const&,BlueFin::GlMeSrdGlbTrkParams const&,BlueFin::GlMeGearTrkParams const&,BlueFin::GlSignalId const&,BlueFin::GlMeSrdCNoResults const&,BlueFin::GlMeSrdTrkAidStatus const&,BOOL,unsigned int,BlueFin::GlMeSrdAsicCorrVecTrkMsmt const&,BlueFin::GlMeSrdAsicCorrVecTrkMsmt const&,BlueFin::GlMeSrdPkFitResults const&,BlueFin::GlMeSrdPkFitResults const&,unsigned char,unsigned char,BOOL,BOOL,BOOL,BlueFin::GlMeSrdMultipathResults &)::fVeryLowThreshholds[4 * BlueFin::GlSvId::s_aucSvId2gnss[*a5] + *(a5 + 1)]);
  }

  else
  {
    PkFitMultipathIndicator = 0;
  }

  *(a19 + 8) = *(a12 + 8);
  *(a19 + 16) = *(a12 + 40) / *(a12 + 36);
  if (*a13 == 1)
  {
    v29 = BlueFin::GlMeSrdEstMultipath::GetPkFitMultipathIndicator(*(a13 + 44), *(v19 + 2), *(a13 + 8), *(a13 + 28), *(a13 + 45), a14, a15, a18, v26, v27);
  }

  else
  {
    v29 = 0;
  }

  v30 = *(a13 + 8);
  *(a19 + 12) = v30;
  *(a19 + 20) = *(a13 + 40) / *(a13 + 36);
  if (v29)
  {
    *(a19 + 4) = v29;
LABEL_18:
    v31 = v30 > 0.5;
    goto LABEL_19;
  }

  if (PkFitMultipathIndicator)
  {
    *(a19 + 4) = PkFitMultipathIndicator;
    v30 = *(a12 + 8);
    goto LABEL_18;
  }

  v31 = 0;
  *(a19 + 4) = 0;
LABEL_19:
  v32 = 0;
  *a19 = v31;
  v33 = *(a1 + 8);
  if (a16 && (*(a1 + 8) & 1) == 0)
  {
    v32 = 0;
    *(a19 + 44) = 1135869952;
    if (*v19 != 1)
    {
      v33 = 0;
      goto LABEL_71;
    }

    v33 = 0;
    if (*(v19 + 2) >= 30.0)
    {
      v34 = *(a10 + 156);
      v35 = *(a10 + 176) * 1000.0;
      v36 = 0.5;
      if (v35 <= 0.0 && (v36 = -0.5, v35 >= 0.0) || (v36 + v35) <= 4 && (v34 != 2 || (v58 = 0.5, v35 <= 0.0) && (v58 = -0.5, v35 >= 0.0) || (v58 + v35) < 4))
      {
        v32 = 0;
        v33 = 0;
        goto LABEL_71;
      }

      v37 = *(a10 + 52);
      if (*(a10 + 52))
      {
        v81 = v29;
        v82 = v19;
        v38 = 0;
        v39 = *(a10 + 53);
        v40 = *(a10 + 54);
        v43 = *(a10 + 152) - 139 < 0x24 && v34 == 0 || v34 == 3;
        v44 = (a10 + 116);
        v45 = 1000000.0;
        v46 = -1000000.0;
        do
        {
          if (v38 >= v40)
          {
            v47 = v39;
          }

          else
          {
            v47 = 0;
          }

          v49 = v34 == 2 && v38 > 4;
          if ((v47 & 1) == 0 && !v49 && (v38 - 5 >= 0xFFFFFFFD || !v43))
          {
            v51 = *(v44 - 12);
            v52 = *v44;
            if (v51 != 0.0 || (v53 = 0.0, v52 != 0.0))
            {
              v54 = a1;
              v55 = v40;
              v56 = atan2f(v52, v51);
              v40 = v55;
              a1 = v54;
              v25 = a13;
              v53 = (v56 * 360.0) / 6.28318531;
            }

            if (v53 < v45)
            {
              v45 = v53;
            }

            if (v53 > v46)
            {
              v46 = v53;
            }
          }

          ++v38;
          ++v44;
          --v37;
        }

        while (v37);
        v57 = v46 - v45;
        *(a19 + 44) = v57;
        v19 = v82;
        v29 = v81;
        v33 = 0;
        if (v46 - v45 > 50.0)
        {
          v32 = 4;
          *(a19 + 4) = 4;
          goto LABEL_71;
        }
      }

      else
      {
        v33 = 0;
        *(a19 + 44) = -906746880;
      }

      v32 = 2;
    }
  }

LABEL_71:
  *(a19 + 48) = v32;
  *(a19 + 52) = 0;
  v59 = *(v25 + 16);
  v60 = *(v25 + 20);
  *(a19 + 56) = v59;
  *(a19 + 60) = 0;
  *(a19 + 64) = v60;
  if ((v33 & 1) == 0 && a17 && v29 && !*(a5 + 1))
  {
    if (*(a1 + 20) >= 0x23Fu)
    {
      v78 = "IsValid()";
      DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
      v79 = "glsignalid.h";
      v80 = 679;
    }

    else if (BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a1 + 16) - *(a1 + 16) + BlueFin::GlSvId::s_aucSvId2gnss[*(a1 + 12)]])
    {
      v61 = *(a11 + 176);
      v62 = 0.5;
      if ((v61 * 1000.0) <= 0.0 && (v62 = -0.5, (v61 * 1000.0) >= 0.0) || (v62 + (v61 * 1000.0)) < 5 || *v19 != 1 || *(v19 + 2) < 20.0)
      {
LABEL_95:
        *(a19 + 56) = v59;
        return;
      }

      v63 = (*(v25 + 45) * 0.2) / v61;
      v64 = 0.5;
      if (v63 > 0.0 || (v64 = -0.5, v63 < 0.0))
      {
        v65 = (v64 + v63);
        if (v65)
        {
          v66 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a1 + 16) - *(a1 + 16) + BlueFin::GlSvId::s_aucSvId2gnss[*(a1 + 12)]] * 0.001;
          v67 = (v61 / v66) * *(v19 + 3);
          v68 = v67 + 1.0;
          v69 = ((((v67 * 2.0) + 1.0) * 13.831) / v65) - (v68 * v68);
          v70 = v68 + v68;
          v71 = (((13.831 / v65) + -1.0) * (v69 * -4.0)) + (v70 * v70);
          if (v71 >= 0.0)
          {
            v72 = -v70;
            v73 = sqrtf(v71);
            v74 = v69 + v69;
            v75 = (v73 - v70) / v74;
            v76 = (v72 - v73) / v74;
            if (v76 < v75)
            {
              v76 = v75;
            }

            if (v76 < 0.1)
            {
              v76 = 0.1;
            }

            if (v76 < 0.8)
            {
              if (v59 <= v76)
              {
                v77 = 2;
              }

              else
              {
                v77 = 4;
                *(a19 + 4) = 4;
              }

              *(a19 + 52) = v77;
              *(a19 + 60) = v76;
              *(a19 + 64) = v60;
            }
          }

          goto LABEL_95;
        }
      }

      v78 = "ulNumCohIntervals > 0";
      DeviceFaultNotify("glmesrd_multipath.cpp", 606, "GetVeryEarlyThreshold", "ulNumCohIntervals > 0");
      v79 = "glmesrd_multipath.cpp";
      v80 = 606;
    }

    else
    {
      v78 = "ucMsPerEpoch != 0";
      DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
      v79 = "glsignalid.h";
      v80 = 686;
    }

LABEL_98:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v79, v80, v78);
  }
}

uint64_t BlueFin::GlMeSrdEstMultipath::GetPkFitMultipathIndicator(BlueFin::GlMeSrdEstMultipath *this, float a2, float a3, float a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned __int8 a8, float a9, float a10)
{
  if (!this)
  {
    DeviceFaultNotify("glmesrd_multipath.cpp", 440, "GetPkFitMultipathIndicator", "ucNumCvecsAveraged > 0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_multipath.cpp", 440, "ucNumCvecsAveraged > 0");
  }

  v10 = this;
  result = 0;
  if (v10 >= a6 && a5 >= a7)
  {
    if (a2 >= 42.5)
    {
      goto LABEL_10;
    }

    if (fabsf(a4) > 0.4)
    {
      return 4;
    }

    v12 = 1.0;
    if (((a6 == 10) & a8) != 0)
    {
      v12 = 4.0;
    }

    if ((v12 * a9) >= a3)
    {
LABEL_10:
      if (a3 < a10)
      {
        return 1;
      }

      else
      {
        return 2;
      }
    }

    else
    {
      return 4;
    }
  }

  return result;
}

double BlueFin::GlMeSrdEstCodePrm::CalcPromptMagSqrdDllValidityTestStatSummand(BlueFin::GlMeSrdEstCodePrm *this, void *a2, void *a3)
{
  if (!a2)
  {
    v4 = "potBufElem != nullptr";
    DeviceFaultNotify("glmesrd_codeprm.cpp", 1695, "CalcPromptMagSqrdDllValidityTestStatSummand", "potBufElem != nullptr");
    v5 = 1695;
    goto LABEL_6;
  }

  if (this)
  {
    v4 = "potTestStatParam == nullptr";
    DeviceFaultNotify("glmesrd_codeprm.cpp", 1696, "CalcPromptMagSqrdDllValidityTestStatSummand", "potTestStatParam == nullptr");
    v5 = 1696;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_codeprm.cpp", v5, v4);
  }

  return *a2;
}

void BlueFin::GlMeSrdEstCodePrm::OverrideTrkCodePrmRmse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*a6 != 1)
  {
    return;
  }

  if (*(a1 + 16) >= 0x23Fu)
  {
    v19 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 807, "GetChipsPerSec", "IsValid()");
    v20 = 807;
    goto LABEL_20;
  }

  v6 = *(a1 + 8);
  v7 = BlueFin::GlSvId::s_aucSvId2gnss[*(a1 + 8)];
  v8 = *(a1 + 12);
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
    v19 = "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 815, "GetChipsPerSec", "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0");
    v20 = 815;
LABEL_20:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v20, v19);
  }

  v14 = (1000 * v9 / v10);
  v15 = __exp10f((*(a4 + 8) * 0.7) / 10.0);
  v16 = sqrtf((fmaxf(*(a5 + 88), 0.4) * fmaxf(*(a5 + 92), 0.5)) / (v15 + v15));
  *(a6 + 16) = v16;
  v17 = flt_298A359B0[(v6 - 52) < 0xE] * v14;
  v18 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v8 - v8 + v7];
  if (v18 <= 8 && ((1 << v18) & 0x134) != 0)
  {
    v17 = v17 * 0.5;
  }

  else if ((v6 - 76) <= 0x3E && ((1 << (v6 - 76)) & 0x7C0000000000001FLL) != 0 || (v6 - 33) <= 0x12)
  {
    v16 = v16 + v16;
    *(a6 + 16) = v16;
  }

  if (v16 < v17)
  {
    *(a6 + 16) = v17;
  }
}

BOOL BlueFin::GlMeSrdAsicNavBitTrkMsmt::isGarbage(BlueFin::GlMeSrdAsicNavBitTrkMsmt *this)
{
  if (*this != 1)
  {
    return 0;
  }

  v1 = *(this + 394) == 1 && (*(this + 396) == 255 || *(this + 395) == 255);
  if (*(this + 2) == -1 || *(this + 100) == -1 || *(this + 330) == -1 || *(this + 166) == -1 || *(this + 336) == -1 || *(this + 167) == -1)
  {
    return 1;
  }

  return v1;
}

uint64_t BlueFin::GlMeSrdSatRptTrkMsmtMI::IsGridRunning(BlueFin::GlMeSrdSatRptTrkMsmtMI *this)
{
  if ((*(*this + 104) & 8) == 0)
  {
    return 0;
  }

  v2 = *(this + 2163);
  v3 = *(this + 433);
  v4 = v2 ^ 1;
  if (!v3)
  {
    v4 = 1;
  }

  if ((v2 & 1) == 0 && v3)
  {
    v4 = (*(this + 2161) & 1) == 0 && !*(this + 2162);
  }

  return v4 ^ 1u;
}

double BlueFin::GlMeSrdAsicConfig::GetCarrierNcoDrift(BlueFin::GlMeSrdAsicConfig *this, const BlueFin::GlSignalId *a2)
{
  BlueFin::GlMeSrdAsicConfig::VERIFY(this, 1);
  v4 = *(this + 3);
  if ((v4 & 0xF000FFFE) == 0x30000014)
  {
    goto LABEL_10;
  }

  if ((v4 & 0xF000FFFE) != 0x30000012)
  {
    result = 0.0;
    if ((v4 & 0xF100FFFE) != 0x31000014)
    {
      return result;
    }

LABEL_10:
    v5 = *a2;
    result = 0.0;
    if (!*a2)
    {
      return result;
    }

    if (v5 >= 0x21)
    {
      if (v5 < 0x42)
      {
        if (v5 >= 0x34)
        {
          v11 = &BlueFin::GlMeSrdAsicConfig::GetCarrierNcoDrift(BlueFin::GlSignalId const&)const::dGlnCphDriftRateMinnowLp;
          v12 = &BlueFin::GlMeSrdAsicConfig::GetCarrierNcoDrift(BlueFin::GlSignalId const&)const::dGlnCphDriftRateMinnowVlp;
          goto LABEL_32;
        }
      }

      else if (v5 >= 0x4C)
      {
        if (v5 < 0x8B)
        {
          v13 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(a2 + 1) - *(a2 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[v5]];
          if (v13 == 13)
          {
            goto LABEL_39;
          }

          if (v13 == 8)
          {
            goto LABEL_15;
          }

          if (v13 != 7)
          {
            v8 = *(this + 546) == 4;
            v9 = &unk_298A33CF0;
            return v9[v8];
          }

          goto LABEL_38;
        }

        if (v5 > 0xAE)
        {
          if (v5 > 0xBC)
          {
            return result;
          }

          v8 = *(this + 547) == 4;
          v9 = &unk_298A33D00;
          return v9[v8];
        }
      }
    }

    v10 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(a2 + 1) - *(a2 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[v5]];
    if (v10 == 5)
    {
LABEL_15:
      v8 = *(this + 547) == 4;
      v9 = &unk_298A33CD0;
      return v9[v8];
    }

    if (v10 != 4)
    {
      if (v10 == 2)
      {
        goto LABEL_15;
      }

LABEL_39:
      v8 = *(this + 546) == 4;
      v9 = &unk_298A33CC0;
      return v9[v8];
    }

LABEL_38:
    v8 = *(this + 547) == 4;
    v9 = &unk_298A33CE0;
    return v9[v8];
  }

  v5 = *a2;
  result = 0.0;
  if (!*a2)
  {
    return result;
  }

  if (v5 < 0x21)
  {
    goto LABEL_5;
  }

  if (v5 >= 0x42)
  {
    if (v5 >= 0x4C)
    {
      if (v5 < 0x8B)
      {
        v14 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(a2 + 1) - *(a2 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[v5]];
        if (v14 == 13)
        {
          goto LABEL_44;
        }

        if (v14 == 8)
        {
          goto LABEL_8;
        }

        if (v14 != 7)
        {
          v8 = *(this + 546) == 4;
          v9 = &unk_298A33CA0;
          return v9[v8];
        }

        goto LABEL_43;
      }

      if (v5 > 0xAE)
      {
        if (v5 > 0xBC)
        {
          return result;
        }

        v8 = *(this + 547) == 4;
        v9 = &unk_298A33CB0;
        return v9[v8];
      }
    }

LABEL_5:
    v7 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(a2 + 1) - *(a2 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[v5]];
    if (v7 == 5)
    {
LABEL_8:
      v8 = *(this + 547) == 4;
      v9 = &unk_298A33C80;
      return v9[v8];
    }

    if (v7 != 4)
    {
      if (v7 == 2)
      {
        goto LABEL_8;
      }

LABEL_44:
      v8 = *(this + 546) == 4;
      v9 = &unk_298A33C70;
      return v9[v8];
    }

LABEL_43:
    v8 = *(this + 547) == 4;
    v9 = &unk_298A33C90;
    return v9[v8];
  }

  if (v5 < 0x34)
  {
    goto LABEL_5;
  }

  v11 = &BlueFin::GlMeSrdAsicConfig::GetCarrierNcoDrift(BlueFin::GlSignalId const&)const::dGlnCphDriftRateMinnowLp;
  v12 = &BlueFin::GlMeSrdAsicConfig::GetCarrierNcoDrift(BlueFin::GlSignalId const&)const::dGlnCphDriftRateMinnowVlp;
LABEL_32:
  if (*(this + 546) == 4)
  {
    v11 = v12;
  }

  return v11[v5 - 52];
}

void BlueFin::GlMeSrdRptCtrl::Run(uint64_t a1, double a2, double a3, double a4, double a5, float a6, float a7, double a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, unsigned __int8 *a22, char a23, int a24, char a25, char a26, char a27, char a28, unsigned __int8 a29, char a30, char a31, char a32, char a33, char a34, char a35, char a36, unsigned __int8 a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  BlueFin::GlMeDSPMeas::init(a39, a22);
  if (a38)
  {
    *(a39 + 84) |= 0x2000000u;
  }

  if ((a39 + 100) != a22)
  {
    *(a39 + 100) = *a22;
    *(a39 + 104) = *(a22 + 1);
    *(a39 + 108) = *(a22 + 4);
  }

  *(a39 + 112) = a23;
  if (a21)
  {
    if (a21 != 1)
    {
      v132 = "0";
      DeviceFaultNotify("glmesrd_rptctrl.cpp", 175, "Run", "0");
      v133 = "glmesrd_rptctrl.cpp";
      v134 = 175;
      goto LABEL_296;
    }

    if (a24 <= 2)
    {
      switch(a24)
      {
        case 0:
          v51 = 10;
          goto LABEL_27;
        case 1:
          v51 = 11;
          goto LABEL_27;
        case 2:
          v51 = 12;
LABEL_27:
          *(a39 + 140) = v51;
          *(a39 + 144) = a32;
          *(a39 + 84) |= 0x100u;
          *(a39 + 48) = a20;
          *(a39 + 52) = a20;
          goto LABEL_28;
      }

      goto LABEL_298;
    }

    if (a24 == 3)
    {
      v51 = 13;
      goto LABEL_27;
    }

    if (a24 != 5)
    {
      if (a24 == 6)
      {
        v51 = 17;
        goto LABEL_27;
      }

LABEL_298:
      v132 = "0";
      DeviceFaultNotify("glmesrd_rptctrl.cpp", 167, "Run", "0");
      v133 = "glmesrd_rptctrl.cpp";
      v134 = 167;
      goto LABEL_296;
    }

    v53 = a25 == 0;
    v52 = 14;
    v54 = 16;
  }

  else
  {
    if (a27)
    {
      v52 = 9;
    }

    else
    {
      v52 = 8;
    }

    v53 = a28 == 0;
    v54 = 15;
  }

  if (!v53)
  {
    v52 = v54;
  }

  *(a39 + 140) = v52;
  *(a39 + 144) = a32;
  *(a39 + 48) = 0;
LABEL_28:
  if (*a11 == 1)
  {
    *(a39 + 40) = *(a11 + 8);
    *(a39 + 84) |= 0x40000u;
  }

  if (*(a22 + 4) >= 0x23Fu)
  {
    v132 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 807, "GetChipsPerSec", "IsValid()");
    v133 = "glsignalid.h";
    v134 = 807;
    goto LABEL_296;
  }

  v55 = BlueFin::GlSvId::s_aucSvId2gnss[*a22];
  v56 = *(a22 + 1);
  v57 = BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[7 * v56 + v55];
  v58 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v56 - v56 + v55];
  if (v57)
  {
    v59 = v58 == 0;
  }

  else
  {
    v59 = 1;
  }

  if (v59)
  {
    v132 = "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 815, "GetChipsPerSec", "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0");
    v133 = "glsignalid.h";
    v134 = 815;
    goto LABEL_296;
  }

  EpochPerSymbol = BlueFin::GlSignalId::GetEpochPerSymbol(a22);
  if (*(a22 + 4) >= 0x23Fu)
  {
    goto LABEL_286;
  }

  v62 = BlueFin::GlSvId::s_aucSvId2gnss[*a22];
  v63 = &BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a22 + 1) - *(a22 + 1)];
  v64 = v63[v62];
  if (!v63[v62])
  {
    goto LABEL_99;
  }

  v65 = (a39 + 100);
  v197 = EpochPerSymbol;
  if (*(a13 + 1) == 1)
  {
    *(a39 + 84) |= 0x40u;
    v66 = *(a13 + 8);
    *(a39 + 32) = BlueFin::GlMeSrdAsicUnitConverter::HzToPpu((a39 + 100), v66, v61);
    v68 = BlueFin::GlMeSrdAsicUnitConverter::HzToPpu((a39 + 100), *(a13 + 16), v67);
    *(a39 + 56) = v68;
    v71.i32[0] = *(a39 + 32);
    *(a39 + 152) = 897988541;
    if (a28 && v68 >= 0.000000016)
    {
      *(a39 + 56) = 846234791;
    }
  }

  else
  {
    v72 = *(a13 + 8);
    *v71.i32 = BlueFin::GlMeSrdAsicUnitConverter::HzToPpu((a39 + 100), v72, v61);
    *(a39 + 56) = 897988541;
    *(a39 + 152) = 897988541;
  }

  v73 = (a8 + a9) / -299792458.0;
  v74 = *v71.i32 + v73;
  *(a39 + 32) = v74;
  *(a39 + 148) = v74;
  if (*(a13 + 34))
  {
    v75 = *(a39 + 84) | 0x80;
    *(a39 + 84) = v75;
    if ((*(a13 + 35) & 1) == 0)
    {
LABEL_48:
      if (*(a22 + 4) < 0x23Fu)
      {
        v76 = *a22;
        v77 = BlueFin::GlSvId::s_aucSvId2gnss[v76];
        v78 = *(a22 + 1);
        v79 = BlueFin::GlSignalId::s_adSignalType2ctrFreqHz[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v78 - v78 + v77]];
        if (v77 == 2)
        {
          v80 = (v76 - 59);
          if ((v76 - 52) >= 0xE)
          {
            v80 = -8.0;
          }

          v79 = v79 + v80 * 562500.0;
        }

        v81 = 299792458.0 / v79;
        v82 = v81 * -*(a13 + 40);
        *(a39 + 8) = v82;
        *&v81 = v81 * *(a13 + 56);
        *(a39 + 60) = LODWORD(v81);
        if (*(a39 + 48) <= 0x3E8u)
        {
          *(a39 + 60) = 2139095039;
          *(a39 + 84) = v75 & 0xFF7DFF7F | 0x20000;
          *(a42 + 100) |= 0x20u;
        }

        goto LABEL_61;
      }

LABEL_289:
      v132 = "IsValid()";
      DeviceFaultNotify("glsignalid.h", 651, "GetRfCarrierFrqHz", "IsValid()");
      v133 = "glsignalid.h";
      v134 = 651;
      goto LABEL_296;
    }

LABEL_47:
    v75 |= 0x800000u;
    *(a39 + 84) = v75;
    goto LABEL_48;
  }

  if (*(a13 + 35) == 1)
  {
    v75 = *(a39 + 84);
    goto LABEL_47;
  }

  if (*(a22 + 4) >= 0x23Fu)
  {
    goto LABEL_289;
  }

  v83 = *a22;
  v84 = BlueFin::GlSvId::s_aucSvId2gnss[v83];
  v78 = *(a22 + 1);
  v85 = BlueFin::GlSignalId::s_adSignalType2ctrFreqHz[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v78 - v78 + v84]];
  if (v84 == 2)
  {
    v86 = (v83 - 59);
    if ((v83 - 52) >= 0xE)
    {
      v86 = -8.0;
    }

    v85 = v85 + v86 * 562500.0;
  }

  v82 = 299792458.0 / v85 * -*(a13 + 40);
  *(a39 + 8) = v82;
  *(a39 + 60) = 2139095039;
  *(a39 + 84) = *(a39 + 84) & 0xFF7DFF7F | 0x20000;
LABEL_61:
  v87 = v74 + 1.0;
  v88 = v64 * 0.001 / v87;
  if (*(a13 + 36) != 1)
  {
    v99 = *a22;
    v100 = BlueFin::GlSvId::s_aucSvId2gnss[v99];
    v101 = BlueFin::GlSignalId::s_adSignalType2ctrFreqHz[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v78 - v78 + v100]];
    if (v100 == 2)
    {
      v102 = (v99 - 59);
      if ((v99 - 52) >= 0xE)
      {
        v102 = -8.0;
      }

      v101 = v101 + v102 * 562500.0;
    }

    v96 = a1;
    v98 = 299792458.0 / v101 * -*(a13 + 48);
    v89 = (a39 + 84);
    v90 = *(a39 + 84);
    *(a39 + 120) = v98;
    *(a39 + 128) = 2139095039;
    goto LABEL_73;
  }

  v89 = (a39 + 84);
  v90 = *(a39 + 84);
  v91 = v90 | 0x1000000;
  *(a39 + 84) = v90 | 0x1000000;
  v92 = *a22;
  v93 = BlueFin::GlSvId::s_aucSvId2gnss[v92];
  v94 = BlueFin::GlSignalId::s_adSignalType2ctrFreqHz[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v78 - v78 + v93]];
  if (v93 == 2)
  {
    v95 = (v92 - 59);
    if ((v92 - 52) >= 0xE)
    {
      v95 = -8.0;
    }

    v94 = v94 + v95 * 562500.0;
  }

  v96 = a1;
  v97 = 299792458.0 / v94;
  *(a39 + 120) = v97 * -*(a13 + 48);
  v98 = v97 * *(a13 + 60);
  *&v98 = v98;
  *(a39 + 128) = LODWORD(v98);
  if (*(a39 + 48) <= 0x3E8u)
  {
    *(a39 + 128) = 2139095039;
LABEL_73:
    v91 = v90 & 0xFEFFFFFF;
    *v89 = v90 & 0xFEFFFFFF;
  }

  v103 = 1.0 / (1000 * v57 / v58) / v87;
  LOBYTE(v98) = *(a12 + 1);
  v104 = a2 - v88 * *&v98 + v88 * *(a12 + 2);
  if (*a12 == 1)
  {
    v105 = (v64 * v197) * 0.001 / v87;
    v106 = v103 * *(a12 + 8);
    v107 = v103 * *(a12 + 16);
    v108 = v106 > -v105 && v106 < v105;
    v109 = v105 + v104;
    if (v108)
    {
      v109 = v104;
    }

    v110 = v109 - v106;
    *(a39 + 24) = v109 - v106;
    v111 = v107;
    *(a39 + 68) = v111;
    v91 |= 0x20u;
  }

  else
  {
    v110 = v104 - a3;
    *(a39 + 24) = v104 - a3;
    v112 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v78 - v78 + BlueFin::GlSvId::s_aucSvId2gnss[*a22]];
    if (!v112)
    {
      goto LABEL_99;
    }

    v113 = v112 * 0.001;
    *(a39 + 68) = v113;
  }

  *(a39 + 8) = v82 + (a8 + a9) * v110;
  *(a39 + 64) = 0;
  v114 = v91 & 0xFBFFFFEF | 0x10;
  v115 = v91 | 0x4000010;
  if (*(a19 + 2))
  {
    v116 = v115;
  }

  else
  {
    v116 = v114;
  }

  *(a39 + 84) = v116;
  v117 = *(a19 + 1);
  if (*(a19 + 1))
  {
    v119 = (a19 + 16);
    do
    {
      v118 = (v104 - a3 - v110) / v103;
      *v119 = *v119 + v118;
      v119 += 5;
      --v117;
    }

    while (v117);
  }

  if (*a22 - 139 < 0x24)
  {
    v120 = v116 | 0x608;
    v122 = a24;
    v121 = a21;
    v123 = a16;
    v124 = a15;
    goto LABEL_198;
  }

  v198 = a12;
  v125 = *a14;
  v126 = a14[8];
  v127 = a14[9];
  EpochPerBit = BlueFin::GlSignalId::GetEpochPerSymbol((a39 + 100));
  if (*(a39 + 108) >= 0x23Fu)
  {
    goto LABEL_286;
  }

  v129 = *(a39 + 100);
  v130 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a39 + 104) - *(a39 + 104) + BlueFin::GlSvId::s_aucSvId2gnss[*(a39 + 100)]];
  if (!v130)
  {
LABEL_99:
    v132 = "ucMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
    v133 = "glsignalid.h";
    v134 = 686;
    goto LABEL_296;
  }

  if ((v129 - 175) < 0xFFFFFFDC)
  {
    v131 = (v126 & a28);
  }

  else
  {
    v131 = 0;
  }

  v200 = v131;
  v195 = v126 & a28;
  if ((v129 - 76) > 0x3E)
  {
    v124 = a15;
    v96 = a1;
    goto LABEL_101;
  }

  EpochPerBit = BlueFin::GlSignalId::GetEpochPerBit((a39 + 100));
  v124 = a15;
  if (*(a39 + 108) >= 0x23Fu)
  {
LABEL_286:
    v132 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
    v133 = "glsignalid.h";
    v134 = 679;
    goto LABEL_296;
  }

  v129 = *(a39 + 100);
  v130 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a39 + 104) - *(a39 + 104) + BlueFin::GlSvId::s_aucSvId2gnss[*(a39 + 100)]];
  v96 = a1;
  if (!v130)
  {
    goto LABEL_99;
  }

LABEL_101:
  v135 = v130 * EpochPerBit;
  v136 = *(v96 + 20);
  v110 = *(a39 + 24);
  if (v136 >= 2)
  {
    v194 = v125;
    v202 = v129;
    v137 = v127;
    v138 = (v110 - *(v96 + 8)) * 1000.0;
    v139 = (v138 + -0.5);
    if (v138 >= 0.0)
    {
      v139 = 0;
    }

    if (v138 > 0.0)
    {
      v139 = (v138 + 0.5);
    }

    v140 = v135;
    v141 = v135;
    v142 = v135;
    *v71.i64 = fmod(v139, v141);
    if (*v71.i64 < 0.0)
    {
      *v71.i64 = *v71.i64 + v141;
    }

    if (*v71.i64 < 0.0)
    {
      v132 = "dMsDelta >= 0";
      DeviceFaultNotify("glmesrd_rptctrl.cpp", 861, "UpdatePromptBitState", "dMsDelta >= 0");
      v133 = "glmesrd_rptctrl.cpp";
      v134 = 861;
      goto LABEL_296;
    }

    v143 = 0.0;
    if (*v71.i64 > (v142 >> 1))
    {
      v143 = v140;
    }

    v144 = *v71.i64 - v143;
    if (v144 >= v141)
    {
      v132 = "dMsDelta < ucObservableBitIntInMs";
      DeviceFaultNotify("glmesrd_rptctrl.cpp", 865, "UpdatePromptBitState", "dMsDelta < ucObservableBitIntInMs");
      v133 = "glmesrd_rptctrl.cpp";
      v134 = 865;
      goto LABEL_296;
    }

    v135 = v142;
    v145 = 0.5;
    v96 = a1;
    v127 = v137;
    v129 = v202;
    v125 = v194;
    if (fabs(v144) >= 0.5)
    {
      if (v144 <= 0.0)
      {
        v145 = -0.5;
      }

      v146 = v144 + v145;
      v147 = *(a1 + 24);
      v148 = v147 - v146;
      if (v140 <= (v147 - v146))
      {
        v149 = v135;
      }

      else
      {
        v149 = 0;
      }

      v150 = v148 - v149;
      *(a1 + 24) = v150;
      if (((v140 + v150) < 0) ^ __OFADD__(v140, v150) | (v140 + v150 == 0))
      {
        *(a1 + 24) = v150 + v135;
      }
    }
  }

  v151 = v126 & v125;
  *(v96 + 8) = v110;
  v122 = a24;
  if (v136 <= 2)
  {
    v65 = (a39 + 100);
    a12 = v198;
    if (v136 < 2)
    {
      if (v151)
      {
        LOBYTE(v152) = a14[10];
        *(v96 + 24) = v152;
        *(v96 + 16) = 0;
        v121 = a21;
        v123 = a16;
        if (v127)
        {
          v153 = 3;
        }

        else
        {
          v153 = 2;
        }

        goto LABEL_148;
      }

      if (v200)
      {
        LOBYTE(v152) = 0;
        *(v96 + 24) = 0;
        *(v96 + 16) = 0;
        v153 = 2;
LABEL_153:
        *(v96 + 20) = v153;
        v121 = a21;
        v123 = a16;
        goto LABEL_182;
      }

      v161 = v195 ^ 1;
      if ((a24 - 1) <= 2)
      {
        v161 = 0;
      }

      if ((v161 & 1) == 0)
      {
        LOBYTE(v152) = 0;
        *(v96 + 24) = 0;
        v153 = 1;
        goto LABEL_153;
      }

      if (!v136)
      {
        v153 = 0;
        v121 = a21;
        v123 = a16;
        goto LABEL_185;
      }

      v153 = 1;
      goto LABEL_166;
    }

    if (v136 == 2)
    {
      v121 = a21;
      v123 = a16;
      if (v151)
      {
        if (v127)
        {
          *(v96 + 20) = 3;
          v156 = a14[10];
          v157 = *(v96 + 24) - v156;
          if (v157 < 0)
          {
            v157 = a14[10] - *(v96 + 24);
          }

          if (v157 > 1)
          {
            v158 = -1;
          }

          else
          {
            v158 = 1;
          }

          *(v96 + 16) = v158;
          v153 = 3;
        }

        else
        {
          v156 = a14[10];
          if (*(v96 + 24) - v156 >= 0)
          {
            v164 = *(v96 + 24) - a14[10];
          }

          else
          {
            v164 = a14[10] - *(v96 + 24);
          }

          v165 = *(v96 + 16);
          if (v164 > 2)
          {
            v166 = v165 - 1;
          }

          else
          {
            v166 = v165 + 1;
          }

          *(v96 + 16) = v166;
          v153 = 2;
        }

        *(v96 + 24) = v156;
      }

      else
      {
        v163 = (v129 - 76) < 5 || (v129 - 134) < 5;
        v153 = 2;
        if (!a24 && v163)
        {
          v153 = 0;
          *(v96 + 20) = 0;
LABEL_189:
          v170 = *(a39 + 84) & 0xFFF7FFFF;
          goto LABEL_190;
        }
      }

      goto LABEL_181;
    }

    goto LABEL_299;
  }

  v65 = (a39 + 100);
  a12 = v198;
  if (v136 != 3)
  {
    if (v136 == 4)
    {
      v121 = a21;
      v123 = a16;
      if (v151 & v127)
      {
        v152 = a14[10];
        v154 = *(v96 + 16);
        if (*(v96 + 24) == v152)
        {
          v155 = v154 + 1;
        }

        else
        {
          v155 = v154 - 1;
        }

        *(v96 + 16) = v155;
        if (v155 < 6)
        {
          if (v155 < 0)
          {
            v153 = 3;
            *(v96 + 20) = 3;
            *(v96 + 24) = v152;
            goto LABEL_182;
          }
        }

        else
        {
          *(v96 + 16) = 5;
        }
      }

      v153 = 4;
      goto LABEL_181;
    }

LABEL_299:
    v132 = "0";
    DeviceFaultNotify("glmesrd_rptctrl.cpp", 1065, "UpdatePromptBitState", "0");
    v133 = "glmesrd_rptctrl.cpp";
    v134 = 1065;
LABEL_296:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v133, v134, v132);
  }

  if ((v151 & v127 & 1) == 0)
  {
    v153 = 3;
LABEL_166:
    v121 = a21;
    v123 = a16;
LABEL_181:
    LOBYTE(v152) = *(v96 + 24);
    goto LABEL_182;
  }

  v152 = *(v96 + 24);
  v159 = a14[10];
  v121 = a21;
  v123 = a16;
  if (v152 != v159)
  {
    *(v96 + 16) = 0;
    goto LABEL_168;
  }

  v160 = ++*(v96 + 16);
  if (v160 < 2)
  {
LABEL_168:
    *(v96 + 24) = v159;
    v153 = 3;
    goto LABEL_181;
  }

  v153 = 4;
LABEL_148:
  *(v96 + 20) = v153;
LABEL_182:
  v167 = v88 * v152;
  if (v167 >= vcvtd_n_f64_u32(v135, 1uLL) * 0.001)
  {
    v167 = v167 + (1.0 - *(a39 + 32)) * (v135 * -0.001);
  }

  v110 = v110 + v167;
  *(a39 + 16) = v167 + *(a39 + 16);
  *(a39 + 24) = v110;
LABEL_185:
  if ((v129 - 52) > 0xD)
  {
    goto LABEL_189;
  }

  v168 = *(a39 + 84);
  v169 = v168 & 0xFFF7FFFF;
  v170 = v168 | 0x80000;
  if (a24 != 2)
  {
    v170 = v169;
  }

LABEL_190:
  if (v153 <= 1)
  {
    v171 = v170 & 0xFFFFF9F7;
    if (v153)
    {
      v120 = v171 | 0x400;
    }

    else
    {
      v120 = v171;
    }
  }

  else if ((v153 - 2) >= 2)
  {
    *(a39 + 84) = v170 | 0x408;
    if (!a24)
    {
      v120 = v170 & 0xFFFFF9F7 | 0x408;
      *(a39 + 84) = v120;
      if (*a22 - 76 > 0x3E)
      {
        goto LABEL_206;
      }

      goto LABEL_203;
    }

    v120 = v170 | 0x608;
  }

  else
  {
    v120 = v170 & 0xFFFFF9F7 | 0x408;
  }

LABEL_198:
  *(a39 + 84) = v120;
  if (*a22 - 76 >= 0x3F)
  {
    goto LABEL_206;
  }

  if (v122)
  {
    if (!v121)
    {
      goto LABEL_206;
    }

LABEL_205:
    v120 |= 0x608u;
    *(a39 + 84) = v120;
    goto LABEL_206;
  }

LABEL_203:
  if (v121 && (a14[8] & 1) != 0)
  {
    goto LABEL_205;
  }

LABEL_206:
  *(a39 + 8) = *(a39 + 8) + *(a39 + 32) * -299792458.0 * (v110 - a2);
  *(a39 + 24) = v110 + v110 * a9 / 299792458.0;
  v172 = *(v123 + 4);
  v173 = *(a17 + 4);
  *(a39 + 88) = v172;
  *(a39 + 92) = v173;
  *(v96 + 28) = v172;
  *(v96 + 32) = v173;
  *(a39 + 136) = *(a13 + 96);
  *(a39 + 132) = *(a13 + 92);
  if (*(a18 + 1) == 1)
  {
    *(a39 + 72) = *(a18 + 16);
    *v71.i64 = *(a18 + 8) * 1000.0;
    *v70.i64 = *v71.i64 + trunc(*v71.i64 * 2.32830644e-10) * -4294967300.0;
    v174.f64[0] = NAN;
    v174.f64[1] = NAN;
    v175 = vnegq_f64(v174);
    v70.i64[0] = vbslq_s8(v175, v70, v71).u64[0];
    if (*v71.i64 > 4294967300.0)
    {
      v71.i64[0] = v70.i64[0];
    }

    if (*v71.i64 < -4294967300.0)
    {
      *v69.i64 = -*v71.i64;
      *v71.i64 = -(*v71.i64 - trunc(*v71.i64 * -2.32830644e-10) * -4294967300.0);
      *v71.i64 = -*vbslq_s8(v175, v71, v69).i64;
    }

    if (*v71.i64 < 0.0)
    {
      v176 = --*v71.i64;
    }

    else
    {
      v176 = *v71.i64;
    }

    *(a39 + 76) = v176;
    *(a39 + 80) = *(a18 + 20);
    *(a39 + 84) = v120 | 0x100000;
  }

  if (v121)
  {
    if (a29)
    {
      v132 = "!bCorrvecIsSaturated";
      DeviceFaultNotify("glmesrd_rptctrl.cpp", 496, "Run", "!bCorrvecIsSaturated");
      v133 = "glmesrd_rptctrl.cpp";
      v134 = 496;
      goto LABEL_296;
    }

    if (a30)
    {
      v132 = "!bIsCcmIntermediateReport";
      DeviceFaultNotify("glmesrd_rptctrl.cpp", 497, "Run", "!bIsCcmIntermediateReport");
      v133 = "glmesrd_rptctrl.cpp";
      v134 = 497;
      goto LABEL_296;
    }

    if (a31)
    {
      v132 = "!bXcorrDetected";
      DeviceFaultNotify("glmesrd_rptctrl.cpp", 498, "Run", "!bXcorrDetected");
      v133 = "glmesrd_rptctrl.cpp";
      v134 = 498;
      goto LABEL_296;
    }

    v177 = a37;
    if (a37)
    {
      *(a39 + 84) |= 0x800u;
    }

    if ((a35 & 1) == 0)
    {
      v178 = *v65;
      if (v178 >= 0x21 && v178 <= 0x33 && *(a39 + 140) == 10)
      {
        *(a42 + 100) |= 0x200u;
        v177 = 1;
      }
    }

    if ((*(a39 + 86) & 4) != 0 && *(a39 + 40) < a6)
    {
      *(a42 + 100) |= 4u;
      v177 = 1;
    }

    if (a33 && *a12 == 1 && *(a12 + 26) == 1 && ((*(a12 + 27) & 1) != 0 || *(a12 + 32) > a7))
    {
      *(a42 + 100) |= 0x400u;
      v179 = *(a39 + 84);
    }

    else
    {
      v179 = *(a39 + 84);
      if (!v177)
      {
LABEL_236:
        if ((v179 & 0x40) != 0 && *(a13 + 28) == 1 && (*(a13 + 29) & 1) == 0)
        {
          *(a39 + 84) = v179 | 0x1000;
        }

        goto LABEL_253;
      }
    }

    v179 &= 0xFE7FFF1F;
    *(a39 + 84) = v179;
    *(a39 + 56) = 897988541;
    goto LABEL_236;
  }

  v180 = *(a39 + 84);
  v182 = (v180 & 8) == 0 && *(a39 + 140) == 15;
  if ((a29 & ~a36 & 1) != 0 || (a30 & 1) != 0 || (a31 & 1) != 0 || v182)
  {
    v183 = v180 & 0xFE7FFF1F;
    v184 = v180 & 0xFE7F7F1F | 0x8000;
    if (a31)
    {
      v183 = v184;
    }

    *(a39 + 84) = v183;
    *(a39 + 56) = 897988541;
  }

LABEL_253:
  *(a40 + 44) = 0u;
  *(a40 + 8) = 0;
  *(a40 + 12) = 0;
  *(a40 + 16) = 0;
  *(a40 + 20) = 0;
  *(a40 + 32) = 0;
  *(a40 + 40) = 0;
  *(a40 + 60) = 0u;
  *(a40 + 76) = 0u;
  *(a40 + 92) = 0u;
  *(a40 + 108) = 0u;
  *(a40 + 124) = 0u;
  *(a40 + 140) = 0u;
  *(a40 + 156) = 0u;
  *(a40 + 172) = 0u;
  *(a40 + 188) = 0u;
  *(a40 + 204) = 0u;
  *(a40 + 220) = 0u;
  *(a40 + 236) = 0u;
  *(a40 + 252) = 0u;
  *(a40 + 268) = 0u;
  *(a40 + 284) = 0u;
  *(a41 + 44) = 0u;
  *(a41 + 8) = 0;
  *(a41 + 12) = 0;
  *(a41 + 16) = 0;
  *(a41 + 20) = 0;
  *(a41 + 32) = 0;
  *(a41 + 40) = 0;
  *(a41 + 60) = 0u;
  *(a41 + 76) = 0u;
  *(a41 + 92) = 0u;
  *(a41 + 108) = 0u;
  *(a41 + 124) = 0u;
  *(a41 + 140) = 0u;
  *(a41 + 156) = 0u;
  *(a41 + 172) = 0u;
  *(a41 + 188) = 0u;
  *(a41 + 204) = 0u;
  *(a41 + 220) = 0u;
  *(a41 + 236) = 0u;
  *(a41 + 252) = 0u;
  *(a41 + 268) = 0u;
  *(a41 + 284) = 0u;
  if (!v124 || *v65 - 33 <= 0x12 && *(v124 + 930) != 1 || (*(a39 + 84) & 0x10) == 0)
  {
    return;
  }

  if (*(v124 + 2) >= 0x3E9u)
  {
    v132 = "rNavBitResults.usNumSymInMsmtInt <= 1000";
    DeviceFaultNotify("glmesrd_rptctrl.cpp", 660, "Run", "rNavBitResults.usNumSymInMsmtInt <= 1000");
    v133 = "glmesrd_rptctrl.cpp";
    v134 = 660;
    goto LABEL_296;
  }

  if (*v124 == 1)
  {
    if (BlueFin::GlUtils::m_ucEnabled)
    {
      BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x3F);
    }

    v185 = *(a39 + 112);
    v186 = *(a39 + 140);
    if (*(v124 + 918) == 1)
    {
      BlueFin::GlMeDSPDataBits::Set(a40, v185, v65, v186, *(v124 + 2), *(v124 + 924), *(v124 + 924), *(v124 + 928), *(a39 + 24), (v124 + 660), *(v124 + 919), v124 + 788, 1);
      v185 = *(a39 + 112);
      v186 = *(a39 + 140);
    }

    else
    {
      v187 = *(v124 + 924);
      v188 = *(a39 + 24);
      *(a40 + 8) = v185;
      *(a40 + 9) = *(a39 + 100);
      *(a40 + 16) = 0;
      *(a40 + 20) = v187;
      *(a40 + 24) = v187;
      *(a40 + 32) = v188;
      if (v186 - 12 > 5)
      {
        v189 = 16;
      }

      else
      {
        v189 = *&aP_1[4 * v186 - 48];
      }

      *(a40 + 12) = v189;
    }

    if (*(v124 + 648) == 1)
    {
      BlueFin::GlMeDSPDataBits::Set(a41, v185, v65, v186, *(v124 + 2), *(v124 + 924), *(v124 + 924), *(v124 + 928), *(a39 + 24), (v124 + 264), *(v124 + 649), v124 + 136, 0);
    }

    else
    {
      v190 = *(v124 + 924);
      v191 = *(a39 + 24);
      *(a41 + 8) = v185;
      *(a41 + 9) = *(a39 + 100);
      *(a41 + 16) = 0;
      *(a41 + 20) = v190;
      *(a41 + 24) = v190;
      *(a41 + 32) = v191;
      if (v186 - 12 > 5)
      {
        v192 = 18;
      }

      else
      {
        v192 = dword_298A369A4[v186 - 12];
      }

      *(a41 + 12) = v192;
    }

    if ((*(a39 + 86) & 4) != 0)
    {
      v193 = *(a39 + 40);
      if (v193 > 32.0)
      {
        *(a40 + 12) |= 0x80u;
      }

      if (v193 > 30.0)
      {
        *(a41 + 12) |= 0x80u;
      }
    }

    if ((*(a39 + 86) & 2) != 0)
    {
      *(a40 + 12) |= 0x200u;
    }

    if (*(v124 + 4))
    {
      *(a41 + 12) |= 0x200u;
    }
  }
}

uint64_t BlueFin::GlMeSrdSatReport::PerformFinalValidityChecks(uint64_t this, BlueFin::GlMeDSPMeas *a2, BlueFin::GlMeSrdDspMeasAux *a3)
{
  if (*(a2 + 100) - 189 <= 0xFFFFFF43)
  {
    v8 = "IS_SVID(*otDspMeas.otSignalId.GetSvId())";
    DeviceFaultNotify("glmesrd_sat_report_validity_chk.cpp", 41, "PerformFinalValidityChecks", "IS_SVID(*otDspMeas.otSignalId.GetSvId())");
    v9 = 41;
    goto LABEL_20;
  }

  if (*(a2 + 14) < 0.0)
  {
    v8 = "otDspMeas.fDopplerUncPpu >= 0.0";
    DeviceFaultNotify("glmesrd_sat_report_validity_chk.cpp", 44, "PerformFinalValidityChecks", "otDspMeas.fDopplerUncPpu >= 0.0");
    v9 = 44;
    goto LABEL_20;
  }

  if (*(a2 + 15) < 0.0)
  {
    v8 = "otDspMeas.fCarPhaseUncM >= 0.0";
    DeviceFaultNotify("glmesrd_sat_report_validity_chk.cpp", 45, "PerformFinalValidityChecks", "otDspMeas.fCarPhaseUncM >= 0.0");
    v9 = 45;
    goto LABEL_20;
  }

  if (*(a2 + 17) < 0.0)
  {
    v8 = "otDspMeas.fPeakOffUncS >= 0.0";
    DeviceFaultNotify("glmesrd_sat_report_validity_chk.cpp", 46, "PerformFinalValidityChecks", "otDspMeas.fPeakOffUncS >= 0.0");
    v9 = 46;
LABEL_20:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_report_validity_chk.cpp", v9, v8);
  }

  v5 = *(a3 + 9);
  if (v5 == 4)
  {
    return this;
  }

  v6 = this;
  if (v5 != 2)
  {
    goto LABEL_10;
  }

  v7 = *(a2 + 26);
  if (v7 != 3)
  {
    if (v7 == 2)
    {
      if ((*(a2 + 87) & 4) == 0)
      {
        return this;
      }
    }

    else if (v7)
    {
LABEL_10:
      *(this + 3196) = 0;
      *(this + 3192) = 0;
      return this;
    }
  }

  BlueFin::GlMeSrdSatReport::UpdateInvalidCounts(this, a2, a3);
  BlueFin::GlMeSrdSatReport::GenerateAcqMgrRequests(v6, a2, a3);

  return BlueFin::GlMeSrdSatReport::UpdateMsmtCensorshipStatus(v6, a2, a3);
}

uint64_t BlueFin::GlMeSrdSatReport::UpdateInvalidCounts(BlueFin::GlMeSrdSatReport *this, BlueFin::GlMeDSPMeas *a2, BlueFin::GlMeSrdDspMeasAux *a3)
{
  result = BlueFin::GlMeSrdDspMeasAux::GetTrkRslts(a3);
  v6.i32[0] = *(result + 25);
  v7 = vminv_u16(vmin_u16((*&vdup_n_s16(*(result + 24)) & 0xFF00FF00FF00FFLL), *&vmovl_u8(v6)));
  v8 = v7;
  v9 = *(result + 28) + 10 * *(result + 27);
  if (v9 <= 0x20)
  {
    v10 = v7;
  }

  else
  {
    v10 = 3;
  }

  if (v9 > 0x2B)
  {
    v10 = 4;
  }

  if (v9 < 0x38)
  {
    v8 = v10;
  }

  if ((*result & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_sat_report_validity_chk.cpp", 104, "UpdateInvalidCounts", "rTrkRslts.m_bValid");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_report_validity_chk.cpp", 104, "rTrkRslts.m_bValid");
  }

  v11 = *(a2 + 21);
  v12 = *(result + 8);
  v13 = *(result + 128);
  v14 = *(this + 3192);
  if (v11 & 0x20) != 0 || (*(result + 32))
  {
    if (!*(this + 3192))
    {
      goto LABEL_20;
    }

    v16 = v14 - 1;
    if (v8 > 2u)
    {
      v16 = 0;
    }

    goto LABEL_19;
  }

  if ((v11 & 0x4000000) != 0)
  {
    v15 = 100;
  }

  else
  {
    v15 = 10;
  }

  if (v14 <= v15)
  {
    v16 = v14 + 1;
LABEL_19:
    *(this + 3192) = v16;
  }

LABEL_20:
  v17 = *&v12 & ((v13 & 4) >> 2);
  v18 = *(this + 3194);
  if ((v11 & 0x40) != 0)
  {
    if (!*(this + 3194))
    {
      goto LABEL_30;
    }

    v20 = v18 - 1;
    if (v8 > 2u)
    {
      v20 = 0;
    }

    goto LABEL_29;
  }

  if ((*(a2 + 87) & 4) != 0)
  {
    v19 = 100;
  }

  else
  {
    v19 = 10;
  }

  if (v18 <= v19)
  {
    v20 = v18 + 1;
LABEL_29:
    *(this + 3194) = v20;
  }

LABEL_30:
  v21 = *&v12 & ((v13 & 8) >> 3);
  v22 = *(this + 3195);
  if ((v17 & 1) == 0)
  {
    if (!*(this + 3195))
    {
      goto LABEL_41;
    }

    v25 = v22 - 1;
    if (v8 <= 2u)
    {
      v24 = v25;
    }

    else
    {
      v24 = 0;
    }

    goto LABEL_40;
  }

  if ((*(a2 + 87) & 4) != 0)
  {
    v23 = 100;
  }

  else
  {
    v23 = 10;
  }

  if (v22 <= v23)
  {
    v24 = v22 + 1;
LABEL_40:
    *(this + 3195) = v24;
  }

LABEL_41:
  v26 = *(this + 3196);
  if ((v21 & 1) == 0)
  {
    if (!*(this + 3196))
    {
      goto LABEL_52;
    }

    v29 = v26 - 1;
    if (v8 <= 2u)
    {
      v28 = v29;
    }

    else
    {
      v28 = 0;
    }

    goto LABEL_51;
  }

  if ((*(a2 + 87) & 4) != 0)
  {
    v27 = 100;
  }

  else
  {
    v27 = 10;
  }

  if (v26 <= v27)
  {
    v28 = v26 + 1;
LABEL_51:
    *(this + 3196) = v28;
  }

LABEL_52:
  v30 = *(this + 3197);
  if ((v13 & 0x1000) != 0)
  {
    if ((*(a2 + 87) & 4) != 0)
    {
      v33 = 100;
    }

    else
    {
      v33 = 10;
    }

    if (v30 <= v33)
    {
      v32 = v30 + 1;
LABEL_62:
      *(this + 3197) = v32;
    }
  }

  else if (*(this + 3197))
  {
    v31 = v30 - 1;
    if (v8 <= 2u)
    {
      v32 = v31;
    }

    else
    {
      v32 = 0;
    }

    goto LABEL_62;
  }

  if ((v11 & 8) != 0 || (v34 = *(a2 + 35), v34 <= 0x11) && ((1 << v34) & 0x21800) != 0)
  {
    if (!*(this + 3193))
    {
      return result;
    }

    v35 = this + 3193;
    if (v8 <= 2u)
    {
      v36 = *(this + 3193) - 1;
    }

    else
    {
      v36 = 0;
    }

    goto LABEL_70;
  }

  v37 = *(this + 3193);
  if (v37 <= 8)
  {
    v35 = this + 3193;
    v36 = v37 + 1;
LABEL_70:
    *v35 = v36;
  }

  return result;
}