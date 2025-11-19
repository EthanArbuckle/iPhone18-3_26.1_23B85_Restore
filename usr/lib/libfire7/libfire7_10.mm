void BlueFin::GlPeIonoMgr::GetIonoDelay(uint64_t a1, double *a2, _DWORD *a3, int8x16_t a4, float a5, float a6, double a7, int8x16_t a8)
{
  v12 = *(a1 + 48508);
  if ((v12 & 8) != 0 && *(a1 + 120))
  {
    v13 = a1 + 64;
  }

  else
  {
    v13 = a1;
    if ((v12 & 0x40) != 0)
    {
      v13 = a1 + ((*(a1 + 312) != 0) << 8);
    }
  }

  v14 = vcvtq_f32_s32(*(v13 + 40));
  v20[0] = vcvt_hight_f32_f64(vcvt_f32_f64(*(v13 + 8)), *(v13 + 24));
  v20[1] = v14;
  v15 = *(a1 + 352);
  v16 = BlueFin::GlPeTimeMgrUtil::DoubleToLms(a1, a4, v14, v20[0], a7, a8);
  v17 = v16;
  if (v16 <= 0xFF9222FE)
  {
    v17 = v16;
  }

  BlueFin::GlPeTimeManager::lmsToLegacyGlStruct(v15, 0, 0, v19, v17);
  v18 = *(v13 + 56);
  if (v19[3] != -1)
  {
    BlueFin::iono_delay(v19, a2, v20[0].i32, v18 == 2, a5, a6);
  }

  *a3 = v18;
}

uint64_t BlueFin::GlPeAlmMgr::GetSatPos(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  v31 = 7;
  v32 = 0;
  v21 = -65536;
  v22 = 0;
  v23 = 0;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0;
  v29 = -1;
  v30 = 0;
  Alm = BlueFin::GlPeAlmMgr::GetAlm(a1, a2, a3, &v21, 1, 1);
  result = 0;
  if (Alm)
  {
    BlueFin::GlPeTimeManager::GetTime(*(a1 + 448), a4, 1, &v17);
    v19 = &off_2A1F0B5F0;
    v20 = 0;
    *v10.i64 = BlueFin::GlPeGnssTime::GetGps(&v17, &v19);
    Toa = BlueFin::GlPeAlmanac::GetToa(&v21, &v19, &v17, v10, v11);
    v13 = v20;
    v14 = HIDWORD(v20);
    if (v18)
    {
      if (v20 < v18)
      {
        v14 = (__PAIR64__(HIDWORD(v18) - HIDWORD(v20), v18) - v20) >> 32;
        v13 = v18 - v20;
        v15 = 1;
      }

      else
      {
        v15 = 0;
        v14 = (v20 - v18) >> 32;
        v13 = v20 - v18;
      }
    }

    else
    {
      v15 = 0;
    }

    v16 = v13 * 2.32830644e-10 + v14;
    if ((v15 & ((v14 | v13) != 0)) != 0)
    {
      v16 = -v16;
    }

    return BlueFin::GlPeAlmMgr::GetSatPos(v16, Toa, &v21, a5, 0);
  }

  return result;
}

uint64_t BlueFin::GlPeQzssEphMgr::GetLtoAltNavData(uint64_t a1, unsigned __int8 *a2, int a3, float *a4)
{
  v4 = *a2;
  if ((v4 - 11) < 0xF6u)
  {
    return 0;
  }

  v6 = v4 - 1;
  if (a3 != 2)
  {
    return BlueFin::GlPeGpsQzssAltNavData::GetLtoAltNavData(a1 + 36 * v6 + 2072, v4, a3, a4);
  }

  v7 = a1 + 6 * v6;
  if (v4 != (*(v7 + 2432) + 1))
  {
    return 0;
  }

  v8 = *(v7 + 2434) * 2.91038305e-11 * 299792458.0;
  *a4 = v8;
  if (v8 < 0.0)
  {
    v8 = -v8;
  }

  if (v8 > 29.9792458)
  {
    *a4 = 0.0;
  }

  return 1;
}

uint64_t BlueFin::GlPeBdsEphMgr::GetLtoAltNavData(uint64_t a1, unsigned __int8 *a2, int a3, float *a4)
{
  v4 = *a2;
  if ((v4 - 64) < 0xC1u)
  {
    return 0;
  }

  if (BlueFin::GlPeBdsAltNavData::GetLtoAltNavData(a1 + 20 * (v4 - 1) + 16176, *a2, a3, a4))
  {
    return 1;
  }

  return BlueFin::GlPeBdsAltNavData::GetLtoAltNavData(a1 + 20 * (v4 - 1) + 17436, v4, a3, a4);
}

uint64_t BlueFin::GlPeBdsAltNavData::GetLtoAltNavData(uint64_t a1, unsigned __int8 a2, int a3, float *a4)
{
  if ((*a1 + 1) != a2)
  {
    return 0;
  }

  v4 = *(a1 + 4);
  if (v4 == 2)
  {
    if (a3 == 6)
    {
      goto LABEL_10;
    }

    if (a3 == 5)
    {
      goto LABEL_6;
    }

    return 0;
  }

  if (v4 != 1)
  {
    return 0;
  }

  if (a3 == 8)
  {
LABEL_10:
    v5 = 12;
    goto LABEL_11;
  }

  if (a3 != 7)
  {
    return 0;
  }

LABEL_6:
  v5 = 10;
LABEL_11:
  v7 = *(a1 + v5) * 5.82076609e-11 * 299792458.0;
  *a4 = v7;
  return 1;
}

double BlueFin::BdNavMsgMgr::UnpackEphPara(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 4);
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 20);
  v10 = *(a1 + 24);
  v11 = *(a1 + 28);
  v13 = *(a1 + 32);
  v12 = *(a1 + 36);
  v15 = *(a1 + 48);
  v14 = *(a1 + 52);
  v36 = *(a1 + 56);
  v34 = *(a1 + 60);
  v33 = *(a1 + 64);
  v32 = *(a1 + 68);
  v37 = *(a1 + 72);
  v35 = *(a1 + 76);
  v17 = *(a1 + 88);
  v16 = *(a1 + 92);
  v18 = *(a1 + 100);
  v31 = *(a1 + 96);
  v19 = *(a1 + 104);
  v30 = *(a1 + 108);
  LODWORD(v3) = *(a1 + 80);
  LODWORD(v2) = *(a1 + 84);
  *a2 = *a1;
  *(a2 + 1) = v6;
  *(a2 + 2) = v7;
  *(a2 + 3) = v8;
  *(a2 + 4) = v10;
  *(a2 + 12) = 8 * v9;
  v20 = v12;
  v21 = ldexp(1.0, -33);
  *(a2 + 16) = v21 * v20;
  *(a2 + 24) = ldexp(1.0, -50) * v13;
  *(a2 + 32) = ldexp(1.0, -66) * v11;
  v22 = ldexp(1.0e-10, 0);
  v23 = *(a1 + 40);
  v24.i64[0] = v23;
  v24.i64[1] = SHIDWORD(v23);
  *(a2 + 40) = vmulq_n_f64(vcvtq_f64_s64(v24), v22);
  *(a2 + 8) = 8 * v17;
  *(a2 + 56) = ldexp(1.0, -19) * v2;
  *(a2 + 64) = v21 * v3;
  v25 = ldexp(3.14159265, -31);
  *(a2 + 72) = v25 * v18;
  v26 = ldexp(3.14159265, -43);
  *(a2 + 80) = v26 * v15;
  *(a2 + 88) = v25 * v14;
  *(a2 + 96) = v25 * v16;
  *(a2 + 104) = v26 * v19;
  *(a2 + 112) = v25 * v31;
  *(a2 + 120) = v26 * v30;
  v27 = ldexp(1.0, -31);
  *(a2 + 128) = v27 * v32;
  *(a2 + 136) = v27 * v33;
  v28 = ldexp(1.0, -6);
  *(a2 + 144) = v28 * v34;
  *(a2 + 152) = v28 * v36;
  result = v27 * v35;
  *(a2 + 160) = result;
  *(a2 + 168) = v27 * v37;
  return result;
}

BOOL BlueFin::GlPeSvHealthHelper::IsUsable(uint64_t a1, int *a2)
{
  if ((*(*a1 + 40))(a1) || !BlueFin::GlGnssSet::Missing(a1 + 2304, a2))
  {
    return 0;
  }

  return BlueFin::GlGnssSet::Missing(a1 + 2496, a2);
}

uint64_t BlueFin::GlPeDisabledSvs::Remove(uint64_t result, unsigned __int8 *a2)
{
  v3 = *a2;
  if (((*(*(result + 144) + ((v3 >> 3) & 0x1C)) >> (v3 & 0x1F)) & 1) == 0)
  {
    v4 = result;
    BlueFin::GlSetBase::Remove(result, v3);
    v5 = *a2;

    return BlueFin::GlSetBase::Remove(v4 + 48, v5);
  }

  return result;
}

double BlueFin::GlPeDisabledSvs::GetDisabledSvIds(BlueFin::GlPeDisabledSvs *this, uint64_t a2)
{
  v4 = BlueFin::GlSetBase::GlSetBase(this, this + 3, 8u, a2);
  v6 = &v8;
  v7 = 8;
  v8 = 0u;
  *v9 = 0u;
  BlueFin::GlSetBase::OperatorBinaryOr(v4, &v6, (a2 + 96));
  BlueFin::GlSetBase::operator=(this, &v6);
  *(this + 12) = v8;
  result = v9[0];
  *(this + 28) = *v9;
  return result;
}

BOOL BlueFin::GlSignalIdArrayIterator::Next@<W0>(BlueFin::GlSignalIdArrayIterator *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 4);
  v5 = *this;
  if (v4 >= *(v5 + 32))
  {
    v11 = "HasNext()";
    DeviceFaultNotify("glinc_array.h", 360, "Next", "HasNext()");
    v12 = "glinc_array.h";
    v13 = 360;
    goto LABEL_8;
  }

  v6 = *(v5 + 16);
  *(this + 4) = v4 + 1;
  v7 = *(v5 + 28) + *(v6 + 2 * v4);
  result = BlueFin::GlBigArray::Has(v5, v7);
  if (!result)
  {
    v11 = "m_potArray->Has(handle)";
    DeviceFaultNotify("glinc_array.h", 362, "Next", "m_potArray->Has(handle)");
    v12 = "glinc_array.h";
    v13 = 362;
    goto LABEL_8;
  }

  if (v7 >= 0x23Fu)
  {
    v11 = "usIndex < NUM_SIGNAL_IDS";
    DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
    v12 = "glsignalid.h";
    v13 = 578;
LABEL_8:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v12, v13, v11);
  }

  v9 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v7;
  v10 = *v9;
  LODWORD(v9) = v9[1];
  *a2 = v10;
  *(a2 + 4) = v9;
  *(a2 + 8) = v7;
  return result;
}

uint64_t (*(*(*BlueFin::GlMeSrdAcqMgrSm::assisted_6000(uint64_t a1, unsigned __int8 *a2))(BlueFin::GlMeSrdAcqMgrSm *this, unsigned __int8 *a2))(BlueFin::GlMeSrdAcqMgrSm **this, unsigned __int8 *a2))()
{
  v2 = *a2;
  if (v2 == 3)
  {
    return 0;
  }

  if (v2 != 2)
  {
    return BlueFin::GlMeSrdAcqMgrSm::assisted;
  }

  BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 10128, 250, 250, 0xFAu, 0xFAu, 0xFAu, 0xFAu, 84, 0xFAu, 1);
  v4.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 10608, 250, 250, 0xFAu, 0xFAu, 0xFAu, 0xFAu, 84, 0xFAu, 1);
  if ((*(**(a1 + 64) + 1200))(v4))
  {
    v5 = 250;
  }

  else
  {
    v5 = 84;
  }

  v6.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12360, 93, 94, 0xFAu, 0xFAu, 0xFAu, 0xFAu, v5, 0xFAu, 1);
  if ((*(**(a1 + 64) + 1200))(v6))
  {
    v7 = 250;
  }

  else
  {
    v7 = 84;
  }

  BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12672, 93, 94, 0xFAu, 0xFAu, 0xFAu, 0xFAu, v7, 0xFAu, 1);
  return 0;
}

uint64_t (*(*BlueFin::GlMeSrdAcqMgrSm::assisted(BlueFin::GlMeSrdAcqMgrSm *this, unsigned __int8 *a2))(BlueFin::GlMeSrdAcqMgrSm **this, unsigned __int8 *a2))()
{
  v3 = this + 24956;
  v4 = *a2;
  result = BlueFin::GlMeSrdAcqMgrSm::first_fix;
  if (v4 <= 0x40)
  {
    if (v4 == 2)
    {
      v3[56] = 1;
      *(this + 11400) = 3;
      if ((*(**(this + 8) + 1200))(*(this + 8)))
      {
        v7 = 250;
      }

      else
      {
        v7 = 84;
      }

      BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(this + 11088, 24, 250, 0xFAu, 0xFAu, 0xFAu, 0xFAu, v7, 0xFAu, 1);
      v9 = &v11;
      v10 = 8;
      v11 = 0u;
      v12 = 0u;
      BlueFin::GlSetBase::operator=(this + 11344, &v9);
      v8 = v12;
      *(this + 11356) = v11;
      *(this + 11372) = v8;
      BlueFin::GlMeSrdSearchMgrBase::RemoveInvalidSvId((this + 11088), (this + 11344));
    }

    else
    {
      if (v4 != 3)
      {
        return result;
      }

      v3[56] = 0;
      v9 = &v11;
      v10 = 8;
      v11 = 0u;
      v12 = 0u;
      BlueFin::GlSetBase::operator=(this + 11344, &v9);
      v6 = v12;
      *(this + 11356) = v11;
      *(this + 11372) = v6;
      BlueFin::GlMeSrdSearchMgrBase::RemoveInvalidSvId((this + 11088), (this + 11344));
      *(this + 11400) = 0;
      BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(this + 11088, 250, 250, 0xFAu, 0xFAu, 0xFAu, 0xFAu, 250, 0xFAu, 1);
    }

    return 0;
  }

  if (v4 == 65 || v4 == 67)
  {
    if ((BlueFin::GlMeSrdAcqMgrSm::IsFirstFix(this) & 1) != 0 || (*v3 & 0x22) == 0)
    {
      BlueFin::GlMeSrdAcqMgrSm::UpdateSmFirstFixStates(this);
    }

    else
    {
      BlueFin::GlMeSrdAcqMgrSm::UpdateSmContinuousTrackStates(this);
    }

    return 0;
  }

  return result;
}

uint64_t BlueFin::GlSortFloats(uint64_t this, const float *a2, _BYTE *a3, unsigned __int8 *a4)
{
  *a3 = 0;
  if (a2 >= 2)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = *(this + 4 * v5);
      v7 = v4;
      while (1)
      {
        v8 = a3[v7];
        if (*(this + 4 * v8) <= v6)
        {
          break;
        }

        a3[v7 + 1] = v8;
        if (!v7--)
        {
          v10 = 0;
          goto LABEL_8;
        }
      }

      v10 = v7 + 1;
LABEL_8:
      a3[v10] = v5++;
      ++v4;
    }

    while (v5 != a2);
  }

  return this;
}

unsigned __int8 *BlueFin::GlReqSm::GlonassNewQuarterSigAidResetLogic(BlueFin::GlReqSm *this, BlueFin::GlSignalIdSet *a2)
{
  v17 = &v19;
  v18 = 8;
  v19 = 0u;
  v20 = 0u;
  v4 = *(this + 786);
  if (*(v4 + 120018) == 1)
  {
    *(v4 + 120018) = 0;
    v9 = &v11;
    LOBYTE(v10) = 8;
    v11 = xmmword_298A3240C;
    v12 = unk_298A3241C;
    BlueFin::GlSetBase::operator=(&v17, &v9);
    v19 = v11;
    v20 = v12;
  }

  BlueFin::GlSignalIdSet::GetSvIdSet((*(this + 790) + 96), v16);
  BlueFin::GlSetBase::GlSetBase(&__src, v15, 8u, &v17);
  v9 = &v11;
  LOBYTE(v10) = 8;
  v11 = 0u;
  v12 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(&__src, &v9, v16);
  BlueFin::GlSetBase::operator=(&__src, &v9);
  v15[0] = v11;
  v15[1] = v12;
  LOBYTE(v9) = v14;
  memcpy(&v10, __src, 4 * v14);
  WORD1(v9) = 0;
  BYTE1(v9) = 0;
  HIDWORD(v9) = v10;
  result = BlueFin::GlSetIterator::operator++(&v9);
  if (BYTE1(v9) != v9)
  {
    v6 = *a2;
    do
    {
      if (BYTE2(v9) - 189 < 0xFFFFFF44 || (v7 = BlueFin::GlSvId::s_aucSvId2gnss[BYTE2(v9)], BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v7] == 255))
      {
        v8 = 575;
      }

      else
      {
        v8 = (BlueFin::GlSignalId::s_ausGnss2signalId[v7] + BYTE2(v9) - BlueFin::GlSvId::s_aucGnss2minSvId[v7]);
      }

      *(v6 + 4 * (v8 >> 5)) |= 1 << v8;
      result = BlueFin::GlSetIterator::operator++(&v9);
    }

    while (BYTE1(v9) != v9);
  }

  return result;
}

uint64_t BlueFin::GlPeAsstMgr::IsEphValid(uint64_t a1, unsigned __int8 *a2, unsigned int a3, int8x16_t a4, int8x16_t a5)
{
  v11 = 7;
  v12 = 0;
  BlueFin::GlPeSvIdConverter::SvId2Gnss((a1 + 119744), a2, &v11, a4, a5);
  if (v11 > 6 || v12 - 1 > 0x3E)
  {
    return 0;
  }

  result = BlueFin::GlPeSvHealthHelper::IsUsable(*(a1 + 40) + 32, &v11);
  if (result)
  {
    result = BlueFin::GlPeGnssEphemerisMgr::GetMgr((a1 + 384), v11);
    if (result)
    {
      v8 = result;
      v10 = v12;
      result = (*(*result + 112))(result, &v10, 0);
      if (result)
      {
        v9.n128_f64[0] = a3;
        if (a3 <= 0xFF9222FE)
        {
          v9.n128_f64[0] = a3;
        }

        return (*(*v8 + 64))(v8, &v10, 1, v9) == 0;
      }
    }
  }

  return result;
}

void *BlueFin::GlPeAsstMgr::EphBeExpirationS(uint64_t a1, int *a2, int a3)
{
  result = BlueFin::GlPeGnssEphemerisMgr::GetMgr((a1 + 384), *a2);
  if (result)
  {
    result = (*(*result + 112))(result, a2 + 1, 1);
    if (result)
    {
      v7 = result;
      if ((*(*result + 152))(result) == 1)
      {
LABEL_4:
        Time = BlueFin::GlPeTimeManager::GetTime(*a1, 1, v11);
        return (*(*v7 + 248))(v7, v11, Time);
      }

      v9 = (*(*v7 + 152))(v7);
      if (v9 == 2 || a3 == 0)
      {
        if (v9 == 2)
        {
          goto LABEL_4;
        }
      }

      else if ((*(*v7 + 152))(v7) == 3)
      {
        goto LABEL_4;
      }

      return 0;
    }
  }

  return result;
}

uint64_t BlueFin::GlPeSvHealthMgr::GetGnssSvL5Health(uint64_t a1, unsigned int *a2, unsigned int a3, BOOL *a4)
{
  BlueFin::GlPeSvIdConverter::Gnss2SvId(*(a1 + 2728), a2, &v11);
  if (v11 - 1 > 0xBB)
  {
    return 0;
  }

  result = BlueFin::GlSettingsImpl::DoesSvSupportBand5(*(a1 + 2720), &v11);
  if (result)
  {
    result = BlueFin::GlPeGnssL5HealthData::getL5HealthData(a1 + 412, a2);
    if (result)
    {
      v9 = result;
      result = 0;
      v10 = v9[2];
      if (v10)
      {
        if (*v9 && v9[1] && *v9 > a3)
        {
          *a4 = v10 != 2;
          return 1;
        }
      }
    }
  }

  return result;
}

void BlueFin::GlMeSrdAidingMgr::FormatAidingForEsw(uint64_t a1, uint64_t a2, uint64_t a3, int a4, BlueFin::GlMeSrdAsicUnitConverter *this, int8x16_t a6, double a7, int8x16_t a8, int8x16_t a9)
{
  *a6.i64 = *a6.i64 + 0.5;
  *a9.i64 = *a6.i64 + trunc(*a6.i64 * 2.32830644e-10) * -4294967300.0;
  v14.f64[0] = NAN;
  v14.f64[1] = NAN;
  v15 = vnegq_f64(v14);
  a9.i64[0] = vbslq_s8(v15, a9, a6).u64[0];
  if (*a6.i64 > 4294967300.0)
  {
    a6.i64[0] = a9.i64[0];
  }

  if (*a6.i64 < -4294967300.0)
  {
    *a8.i64 = -*a6.i64;
    *a6.i64 = -(*a6.i64 - trunc(*a6.i64 * -2.32830644e-10) * -4294967300.0);
    *a6.i64 = -*vbslq_s8(v15, a6, a8).i64;
  }

  if (*a6.i64 < 0.0)
  {
    v16 = --*a6.i64;
  }

  else
  {
    v16 = *a6.i64;
  }

  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 12) = v16;
  *(a2 + 14) = 5;
  *a2 = BlueFin::GlMeSrdAsicUnitConverter::PpuToEswAidingFrequency(this, *(a3 + 40), a2);
  *(a2 + 2) = BlueFin::GlMeSrdAsicUnitConverter::PpuPerSecToEswAidingAcceleration(this, *(a3 + 48), v17);
  v18 = vcvts_n_s32_f32(*(a3 + 92), 0xFuLL);
  *(a2 + 18) = vcvts_n_s32_f32(*(a3 + 88), 0xFuLL);
  *(a2 + 20) = v18;
  *(a2 + 22) = vcvts_n_s32_f32(*(a3 + 96), 0xFuLL);
  if (a4)
  {
    *(a2 + 14) |= 0xAu;
    v19 = *(a3 + 100);
    v19.i32[1] = *(a3 + 112);
    v20 = vcvt_s32_f32(vmul_f32(v19, vdup_n_s32(0x526E6B28u)));
  }

  else
  {
    v20 = 0;
  }

  *(a2 + 28) = v20;
  *(a2 + 24) = 0;
  v21 = *(this + 1);
  v22 = *this;
  if (v21 > 0 || (v23 = 0, !v21) && (v22 - 139) <= 0x23)
  {
    v23 = (*(a3 + 104) - 1) < 2;
  }

  *(a2 + 17) = v23;
  if (((v22 - 76) > 0x3E || ((1 << (v22 - 76)) & 0x7C0000000000001FLL) == 0) && (v22 - 33) >= 0x13)
  {
    if ((*(a3 + 104) & 0xFFFFFFFE) == 4)
    {
      v92 = 3;
    }

    else
    {
      v92 = v23;
    }

    *(a2 + 17) = v92;
  }

  if (*(a3 + 64) < 0.005)
  {
    v24 = (*(**(a1 + 8) + 56))(*(a1 + 8), a3 + 8);
    v25 = *(a3 + 56);
    InterSignalBiasInMs = BlueFin::GlSignalId::GetInterSignalBiasInMs(this, *(a1 + 16));
    EpochPerSymbol = BlueFin::GlSignalId::GetEpochPerSymbol(this);
    (*(**(a1 + 16) + 848))();
    if (*(this + 4) < 0x23Fu)
    {
      v29 = *(this + 1);
      v30 = BlueFin::GlSvId::s_aucSvId2gnss[*this];
      v31 = &BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v29 - v29];
      v32 = v31[v30];
      if (!v31[v30])
      {
LABEL_118:
        v42 = "ucMsPerEpoch != 0";
        DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
        v43 = 686;
        goto LABEL_119;
      }

      v107 = BlueFin::GlSignalId::s_ausSignalIndexAndGnss2symbolsPerSecFrame[7 * v29 + v30];
      if (!BlueFin::GlSignalId::s_ausSignalIndexAndGnss2symbolsPerSecFrame[7 * v29 + v30])
      {
        v42 = "usSymbolsPerSecFrame != 0";
        DeviceFaultNotify("glsignalid.h", 771, "GetSymbolsPerSecFrame", "usSymbolsPerSecFrame != 0");
        v43 = 771;
        goto LABEL_119;
      }

      v33 = v28;
      v106 = a4;
      v34 = *(a3 + 40);
      v108[0] = 1;
      v109 = 0;
      v110 = 0;
      EpochPerBit = BlueFin::GlSignalId::GetEpochPerBit(v108);
      if (v110 <= 0x23Eu)
      {
        v36 = EpochPerBit;
        v37 = fmod(v33 * v16 / 299792458.0, ((1.0 - v34) * (v32 * EpochPerSymbol)));
        v38 = 0;
        v39 = v16 + (v25 + v24 + InterSignalBiasInMs * 0.001) * -1000.0 + v37;
        while (1)
        {
          v40 = BlueFin::GlSvId::s_aucSvId2gnss[v108[0]];
          v41 = &BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[-v109];
          if (!v41[8 * v109 + v40])
          {
            goto LABEL_118;
          }

          if (v38 > v41[8 * v109 + v40] * v36 || v39 >= 0.0)
          {
            break;
          }

          if (*(this + 4) >= 0x23Fu)
          {
            goto LABEL_29;
          }

          if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(this + 1) - *(this + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*this]])
          {
            goto LABEL_118;
          }

          v39 = v39 + ((1.0 - *(a3 + 40)) * (BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(this + 1) - *(this + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*this]] * EpochPerSymbol));
          ++v38;
          v36 = BlueFin::GlSignalId::GetEpochPerBit(v108);
          if (v110 >= 0x23Fu)
          {
            goto LABEL_29;
          }
        }

        v44 = v39 * (*(a3 + 40) + 1.0);
        if (v44 < 0.0)
        {
          v100 = *this;
          BlueFin::GlSignalId::GetMsPerEpoch(this);
          v101 = *(a1 + 16);
          v102 = *(a3 + 40);
          BlueFin::GlSignalId::GetInterSignalBiasInSec(this, v101);
          v103 = *(a3 + 56);
          DeviceFaultNotify("glmesrd_aiding_mgr.cpp", 746, "FormatAidingForEsw", "TestChanTimeOffsetAssert");
          CrashData();
          DeviceFaultNotify("glmesrd_aiding_mgr.cpp", 751, "FormatAidingForEsw", "dChannelTimeToaOffsetMs >= 0.0");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_aiding_mgr.cpp", 751, "dChannelTimeToaOffsetMs >= 0.0");
        }

        if (*(this + 4) >= 0x23Fu)
        {
          v42 = "IsValid()";
          DeviceFaultNotify("glsignalid.h", 807, "GetChipsPerSec", "IsValid()");
          v43 = 807;
        }

        else
        {
          v45 = BlueFin::GlSvId::s_aucSvId2gnss[*this];
          v46 = *(this + 1);
          v47 = BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[7 * v46 + v45];
          v48 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v46 - v46 + v45];
          if (v47)
          {
            v49 = v48 == 0;
          }

          else
          {
            v49 = 1;
          }

          if (!v49)
          {
            v50 = (1000 * v47 / v48) / 1000.0;
            v51 = (*(**(a1 + 16) + 320))(*(a1 + 16));
            v52 = v51;
            *v53.i64 = fmod(v44 * v50 * v51, v51);
            *v55.i64 = v50 * v51 + 0.5;
            *v56.i64 = *v55.i64 + trunc(*v55.i64 * 2.32830644e-10) * -4294967300.0;
            v57.f64[0] = NAN;
            v57.f64[1] = NAN;
            v58 = vnegq_f64(v57);
            *&v59 = vbslq_s8(v58, v56, v55).u64[0];
            if (*v55.i64 > 4294967300.0)
            {
              *v55.i64 = v59;
            }

            if (*v55.i64 < -4294967300.0)
            {
              *v54.i64 = -*v55.i64;
              *v55.i64 = -(*v55.i64 - trunc(*v55.i64 * -2.32830644e-10) * -4294967300.0);
              v55 = vbslq_s8(v58, v55, v54);
              *v55.i64 = -*v55.i64;
            }

            if (*v55.i64 < 0.0)
            {
              v60 = --*v55.i64;
            }

            else
            {
              v60 = *v55.i64;
            }

            v61 = v52 - *v53.i64;
            v62 = v60;
            if (v61 <= 0.5)
            {
              *v53.i64 = v44 * v62;
            }

            else
            {
              *v53.i64 = v44 * v62 + 0.5;
            }

            *v58.i64 = *v53.i64 + trunc(*v53.i64 * 2.32830644e-10) * -4294967300.0;
            v63.f64[0] = NAN;
            v63.f64[1] = NAN;
            v64 = vnegq_f64(v63);
            v58.i64[0] = vbslq_s8(v64, v58, v53).u64[0];
            if (*v53.i64 > 4294967300.0)
            {
              v53.i64[0] = v58.i64[0];
            }

            if (*v53.i64 < -4294967300.0)
            {
              *v55.i64 = -*v53.i64;
              *v53.i64 = -(*v53.i64 - trunc(*v53.i64 * -2.32830644e-10) * -4294967300.0);
              v53 = vbslq_s8(v64, v53, v55);
              *v53.i64 = -*v53.i64;
            }

            if (*v53.i64 < 0.0)
            {
              v65 = --*v53.i64;
            }

            else
            {
              v65 = *v53.i64;
            }

            v66 = v65 / v51;
            *(a2 + 10) = v65 % v51;
            v67 = *(this + 1);
            if (v67 == 1 && (BlueFin::GlSvId::s_aucSvId2gnss[*this] == 3 || !BlueFin::GlSvId::s_aucSvId2gnss[*this]))
            {
              v68 = v65 / v52;
              *v69.i64 = fmod(v68, v50);
              *v70.i64 = *v69.i64 + trunc(*v69.i64 * 2.32830644e-10) * -4294967300.0;
              v71.f64[0] = NAN;
              v71.f64[1] = NAN;
              v104 = vnegq_f64(v71);
              v105 = *v69.i64;
              *&v72 = vbslq_s8(v104, v70, v69).u64[0];
              if (*v69.i64 <= 4294967300.0)
              {
                v72 = *v69.i64;
              }

              *(a2 + 8) = v72;
              *v73.i64 = fmod(v68 / v50, 20.0);
              *v74.i64 = *v73.i64 + trunc(*v73.i64 * 2.32830644e-10) * -4294967300.0;
              v75 = vbslq_s8(v104, v74, v73);
              if (*v73.i64 > 4294967300.0)
              {
                v73.i64[0] = v75.i64[0];
              }

              *(a2 + 6) = *v73.i64;
              *v73.i64 = v105 * 256.0 + 0.5;
              *v75.i64 = *v73.i64 + trunc(*v73.i64 * 2.32830644e-10) * -4294967300.0;
              v76 = vbslq_s8(v104, v75, v73);
              if (*v73.i64 > 4294967300.0)
              {
                v73.i64[0] = v76.i64[0];
              }

              if (*v73.i64 < -4294967300.0)
              {
                *v76.i64 = -*v73.i64;
                *v73.i64 = -(*v73.i64 - trunc(*v73.i64 * -2.32830644e-10) * -4294967300.0);
                v73 = vbslq_s8(v104, v73, v76);
                *v73.i64 = -*v73.i64;
              }

              v77 = v106;
              v78 = v107;
              if (*v73.i64 < 0.0)
              {
                v79 = --*v73.i64;
              }

              else
              {
                LOBYTE(v79) = *v73.i64;
              }

              *(a2 + 16) = v79;
              *v73.i64 = v68 / (v50 * 20.0);
              *v76.i64 = *v73.i64 - trunc(*v73.i64 * 2.32830644e-10) * 4294967300.0;
              v76.i64[0] = vbslq_s8(v104, v76, v73).u64[0];
              if (*v73.i64 > 4294967300.0)
              {
                v73.i64[0] = v76.i64[0];
              }

              v80 = *v73.i64 % 75;
            }

            else
            {
              v81 = v66 / v47;
              *(a2 + 8) = v66 % v47;
              v82 = v66 / v47 / EpochPerSymbol;
              v83 = v81 - v82 * EpochPerSymbol;
              *v53.i64 = v44 * v50 * 256.0 + 0.5;
              *v64.i64 = *v53.i64 + trunc(*v53.i64 * 2.32830644e-10) * -4294967300.0;
              v84.f64[0] = NAN;
              v84.f64[1] = NAN;
              v85 = vnegq_f64(v84);
              v86 = vbslq_s8(v85, v64, v53);
              if (*v53.i64 > 4294967300.0)
              {
                v53.i64[0] = v86.i64[0];
              }

              *v86.i64 = -*v53.i64;
              *v55.i64 = -(*v53.i64 - trunc(*v53.i64 * -2.32830644e-10) * -4294967300.0);
              *v86.i64 = -*vbslq_s8(v85, v55, v86).i64;
              if (*v53.i64 < -4294967300.0)
              {
                v53.i64[0] = v86.i64[0];
              }

              *(a2 + 6) = v83;
              if (*v53.i64 < 0.0)
              {
                v87 = --*v53.i64;
              }

              else
              {
                LOBYTE(v87) = *v53.i64;
              }

              *(a2 + 16) = v87;
              v77 = v106;
              v78 = v107;
              v80 = v82 % v107;
            }

            *(a2 + 4) = v80;
            v88 = *(a3 + 32);
            if ((v88 & 0x1A) != 0)
            {
              v89 = *(a2 + 14);
              *(a2 + 14) = v89 | 0x40;
              if (BlueFin::GlSvId::s_aucSvId2gnss[*this] == 3 || !BlueFin::GlSvId::s_aucSvId2gnss[*this])
              {
                if (v67 == 1)
                {
                  if ((v88 & 0x800) == 0)
                  {
                    goto LABEL_86;
                  }
                }

                else if (v67 != 2)
                {
                  goto LABEL_86;
                }

                *(a2 + 14) = v89 | 0xC0;
              }
            }

LABEL_86:
            if ((v88 & 0x80) != 0)
            {
              v90 = *(a2 + 14);
              v91 = *(a3 + 80);
            }

            else
            {
              v90 = *(a2 + 14);
              if ((v88 & 0x3400) == 0)
              {
                goto LABEL_113;
              }

              if ((v88 & 0x400) != 0)
              {
                v91 = *(a3 + 81);
              }

              else if ((v88 & 0x1000) != 0)
              {
                v91 = *(a3 + 82);
              }

              else
              {
                v91 = *(a3 + 84);
              }
            }

            v90 |= 0x80u;
            v93 = v91 + v80;
            if (v78 <= v93)
            {
              v94 = v78;
            }

            else
            {
              v94 = 0;
            }

            v95 = v93 - v94;
            if (v38 <= v95)
            {
              v96 = 0;
            }

            else
            {
              v96 = v78;
            }

            v97 = v95 - v38 + v96;
            *(a2 + 4) = v97;
            v98 = BlueFin::GlSvId::s_aucSvId2gnss[*this];
            if (v98 == 4)
            {
              if (v67 != 2 || (v88 & 0x1000) == 0)
              {
LABEL_113:
                if (v77)
                {
                  v99 = 48;
                }

                else
                {
                  v99 = 32;
                }

                *(a2 + 14) = v90 | v99;
                return;
              }
            }

            else if (v98 != 5 || v67 < 1 || (v88 & 0x400) == 0)
            {
              goto LABEL_113;
            }

            *(a2 + 6) = v97;
            *(a2 + 4) = 0;
            goto LABEL_113;
          }

          v42 = "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0";
          DeviceFaultNotify("glsignalid.h", 815, "GetChipsPerSec", "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0");
          v43 = 815;
        }

LABEL_119:
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v43, v42);
      }
    }

LABEL_29:
    v42 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
    v43 = 679;
    goto LABEL_119;
  }
}

uint64_t BlueFin::GlMeSrdAidingMgr::GetAidIdFromSignalId(BlueFin::GlMeSrdAidingMgr *this, const BlueFin::GlSignalId *a2)
{
  v4 = BlueFin::GlBigArray::Has((this + 2632), *(a2 + 4));
  v5 = BlueFin::GlBigArray::Add((this + 2632), *(a2 + 4));
  if (!v5)
  {
    DeviceFaultNotify("glmesrd_aiding_mgr.cpp", 95, "GetAidIdFromSignalId", "nullptr != pAidId");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_aiding_mgr.cpp", 95, "nullptr != pAidId");
  }

  v6 = v5;
  v7 = this - v5 + 58;
  *v5 = v7;
  if (!v4 && BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    BlueFin::GlMeSrdAidingMgr::LogMappingChange(v5, 1, a2);
    return *v6;
  }

  return v7;
}

uint64_t BlueFin::GlBigArray::Add(BlueFin::GlBigArray *this, int a2)
{
  v2 = a2 - *(this + 14);
  if (v2 >= *(this + 15))
  {
    v13 = "handle - m_usMinHandle < m_usNumHandles";
    DeviceFaultNotify("glinc_array.h", 313, "EnsureValidHandle", "handle - m_usMinHandle < m_usNumHandles");
    v14 = "glinc_array.h";
    v15 = 313;
    goto LABEL_13;
  }

  v3 = *(this + 1);
  v4 = (a2 - *(this + 14));
  v5 = *(v3 + 2 * v4);
  if (v5 != 0xFFFF)
  {
    if (*(this + 16) > v5)
    {
      return *this + *(this + 6) * v5;
    }

    goto LABEL_11;
  }

  v6 = *(this + 17);
  if (v6 == 0xFFFF)
  {
    return 0;
  }

  if (v6 >= *(this + 16))
  {
    v13 = "m_usStackTop < m_usNumSlots";
    DeviceFaultNotify("glutl_array.cpp", 223, "Add", "m_usStackTop < m_usNumSlots");
    v14 = "glutl_array.cpp";
    v15 = 223;
LABEL_13:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v14, v15, v13);
  }

  v8 = *(this + 2);
  *(v3 + 2 * v4) = *(v8 + 2 * *(this + 17));
  *(v8 + 2 * (*(this + 17))--) = v2;
  v9 = *(v3 + 2 * v4);
  if (*(this + 16) <= v9)
  {
LABEL_11:
    v13 = "slot < m_usNumSlots";
    DeviceFaultNotify("glinc_array.h", 319, "EnsureValidSlot", "slot < m_usNumSlots");
    v14 = "glinc_array.h";
    v15 = 319;
    goto LABEL_13;
  }

  v10 = *this;
  v11 = *(this + 6);
  v12 = v11 * v9;
  bzero((*this + v12), v11);
  return v10 + v12;
}

uint64_t BlueFin::MinnowEswRpcJdEncImp::esw_jd_rpc_aid_set_all(uint64_t a1, uint64_t a2, int a3, unsigned __int8 *a4, uint64_t a5)
{
  LODWORD(v7) = a3;
  v23 = *MEMORY[0x29EDCA608];
  v10 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v21, v22, 1800, v10);
  BlueFin::GlStream::PutU08(v21, v7);
  if (!v7)
  {
    goto LABEL_9;
  }

  v7 = v7;
  v11 = v7;
  do
  {
    v13 = *a4++;
    v12 = v13;
    if (v13 >= 0xCB)
    {
      v19 = "bAidIdInRange";
      DeviceFaultNotify("glmesrd_transaction_rpc_encoder_minnow.cpp", 503, "esw_jd_rpc_aid_set_all", "bAidIdInRange");
      v20 = 503;
      goto LABEL_12;
    }

    BlueFin::GlStream::PutU08(v21, v12);
    --v11;
  }

  while (v11);
  v14 = a5 + 16;
  do
  {
    BlueFin::GlStream::PutS16(v21, *(v14 - 16));
    BlueFin::GlStream::PutS16(v21, *(v14 - 14));
    BlueFin::GlStream::PutU16(v21, *(v14 - 8));
    BlueFin::GlStream::PutU08(v21, *(v14 - 10));
    BlueFin::GlStream::PutU08(v21, *(v14 - 6));
    BlueFin::GlStream::PutU16(v21, *(v14 - 12));
    BlueFin::GlStream::PutU16(v21, *(v14 - 4));
    BlueFin::GlStream::PutU08(v21, *(v14 - 2));
    BlueFin::GlStream::PutU08(v21, *(v14 - 1));
    BlueFin::GlStream::PutU08(v21, *v14);
    BlueFin::GlStream::PutU08(v21, *(v14 + 1));
    if ((*(**(a1 + 8) + 920))())
    {
      BlueFin::GlStream::PutS16(v21, *(v14 + 2));
      BlueFin::GlStream::PutS16(v21, *(v14 + 4));
      BlueFin::GlStream::PutS16(v21, *(v14 + 6));
      BlueFin::GlStream::PutS16(v21, *(v14 + 8));
      BlueFin::GlStream::PutS32(v21, *(v14 + 12));
      BlueFin::GlStream::PutS32(v21, *(v14 + 16));
    }

    v14 += 36;
    --v7;
  }

  while (v7);
LABEL_9:
  Offset = BlueFin::GlStream::GetOffset(v21);
  BlueFin::GlMeSrdTransaction::Add(a2, 4, 7u, v22, Offset);
  v16 = *(a2 + 32);
  result = (*(**(a1 + 8) + 416))();
  if (result < v16)
  {
    v19 = "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_minnow.cpp", 538, "esw_jd_rpc_aid_set_all", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    v20 = 538;
LABEL_12:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_minnow.cpp", v20, v19);
  }

  v18 = *MEMORY[0x29EDCA608];
  return result;
}

unsigned int *BlueFin::GlStream::PutS16(unsigned int *this, __int16 a2)
{
  if (this[6])
  {
    v7 = "m_uiBitOffset == 0";
    DeviceFaultNotify("glutl_stream.cpp", 68, "PutS16", "m_uiBitOffset == 0");
    v8 = 68;
    goto LABEL_11;
  }

  if (this[7])
  {
    v7 = "m_uiBitsRemainingInWord == 0";
    DeviceFaultNotify("glutl_stream.cpp", 69, "PutS16", "m_uiBitsRemainingInWord == 0");
    v8 = 69;
    goto LABEL_11;
  }

  v2 = *this;
  if (v2 + 2 > this[4])
  {
    v7 = "m_uiOffset+2<=m_uiMaxOffset";
    DeviceFaultNotify("glutl_stream.cpp", 71, "PutS16", "m_uiOffset+2<=m_uiMaxOffset");
    v8 = 71;
LABEL_11:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_stream.cpp", v8, v7);
  }

  if (*(this + 20) == 1)
  {
    v3 = *(this + 1);
    *this = v2 + 1;
    *(v3 + v2) = HIBYTE(a2);
  }

  else
  {
    v4 = *(this + 1);
    *this = v2 + 1;
    *(v4 + v2) = a2;
    LOBYTE(a2) = HIBYTE(a2);
  }

  v5 = *(this + 1);
  v6 = *this;
  *this = v6 + 1;
  *(v5 + v6) = a2;
  return this;
}

uint64_t BlueFin::GlBigArray::Remove(uint64_t this, int a2)
{
  if (a2 - *(this + 28) >= *(this + 30))
  {
    DeviceFaultNotify("glinc_array.h", 313, "EnsureValidHandle", "handle - m_usMinHandle < m_usNumHandles");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glinc_array.h", 313, "handle - m_usMinHandle < m_usNumHandles");
  }

  v2 = *(this + 8);
  v3 = (a2 - *(this + 28));
  if (*(v2 + 2 * v3) != -1)
  {
    v4 = *(this + 34) + 1;
    *(this + 34) = v4;
    v5 = *(this + 32);
    if (v5 > v4)
    {
      v6 = *(this + 16);
      v7 = v4;
      v8 = (v6 + 2 * v4);
      v9 = v7 + 1;
      while (*v8 != v3)
      {
        ++v8;
        if (v5 == v9++)
        {
          goto LABEL_10;
        }
      }

      v11 = *(v2 + 2 * v3);
      *v8 = *(v6 + 2 * v7);
      *(v6 + 2 * *(this + 34)) = v11;
    }

LABEL_10:
    *(v2 + 2 * v3) = -1;
  }

  return this;
}

void *BlueFin::GlMeSrdAcqMgrSm::UpdateSmFirstFixStates(BlueFin::GlMeSrdAcqMgrSm *this)
{
  v2 = (this + 23160);
  v3 = *(this + 5);
  LODWORD(v55) = 4;
  (*(*v3 + 72))(&v85);
  v4 = *(this + 5);
  LODWORD(v55) = 46;
  (*(*v4 + 72))(&v83);
  v5 = 0;
  v6 = &v83[4 * v84 - 4];
  do
  {
    if (*v6)
    {
      v7 = *v6 - (((*v6 >> 1) & 0x5B6DB6DB) + ((*v6 >> 2) & 0x9249249));
      v5 = ((v7 + (v7 >> 3)) & 0xC71C71C7) + v5 - 63 * (((v7 + (v7 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    v6 -= 4;
  }

  while (v6 >= v83);
  v8 = 0;
  v9 = (v85 + 4 * v86 - 4);
  do
  {
    if (*v9)
    {
      v10 = *v9 - (((*v9 >> 1) & 0x5B6DB6DB) + ((*v9 >> 2) & 0x9249249));
      v8 = ((v10 + (v10 >> 3)) & 0xC71C71C7) + v8 - 63 * (((v10 + (v10 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    --v9;
  }

  while (v9 >= v85);
  v11 = 1;
  if ((v8 & 0xFC) == 0 && v5 <= 5u)
  {
    v11 = v5 + 1 >= BlueFin::GlSetBase::Cnt((this + 23168));
  }

  v82[0] = xmmword_298A3240C;
  v82[1] = unk_298A3241C;
  v79[0] = xmmword_298A3242C;
  v79[1] = unk_298A3243C;
  v76[0] = xmmword_298A3246C;
  v80 = v82;
  v81 = 8;
  v77 = v79;
  v78 = 8;
  v74 = v76;
  v75 = 8;
  v76[1] = unk_298A3247C;
  BlueFin::GlSetBase::GlSetBase(&v70, &v72, 8u, &v83);
  v55 = &v56[4];
  v56[0] = 8;
  memset(&v56[4], 0, 32);
  BlueFin::GlSetBase::OperatorBinaryAnd(&v70, &v55, &v80);
  BlueFin::GlSetBase::operator=(&v70, &v55);
  v72 = *&v56[4];
  v73 = *&v56[20];
  if (*v70)
  {
    v12 = 1;
  }

  else
  {
    v13 = v71 - 2;
    if (v71 < 2uLL)
    {
      v12 = 0;
    }

    else
    {
      v14 = (v70 + 4);
      do
      {
        v15 = *v14++;
        v12 = v15 != 0;
        if (v15)
        {
          v16 = 1;
        }

        else
        {
          v16 = v13 == 0;
        }

        --v13;
      }

      while (!v16);
    }
  }

  v63 = &v65;
  v64 = 8;
  v65 = BlueFin::GlSvIdSet::csm_aulGlSvIdSet[0];
  v66 = *algn_298A323DC;
  BlueFin::GlSetBase::GlSetBase(&v67, &v68, 8u, &v63);
  v55 = &v56[4];
  v56[0] = 8;
  memset(&v56[4], 0, 32);
  BlueFin::GlSetBase::OperatorBinaryOr(&v67, &v55, &v77);
  BlueFin::GlSetBase::operator=(&v67, &v55);
  v68 = *&v56[4];
  v69 = *&v56[20];
  BlueFin::GlSetBase::GlSetBase(&v70, &v72, 8u, &v83);
  v55 = &v56[4];
  v56[0] = 8;
  memset(&v56[4], 0, 32);
  BlueFin::GlSetBase::OperatorBinaryAnd(&v70, &v55, &v67);
  BlueFin::GlSetBase::operator=(&v70, &v55);
  v72 = *&v56[4];
  v73 = *&v56[20];
  if (*v70)
  {
    v17 = 1;
  }

  else
  {
    v18 = v71 - 2;
    if (v71 < 2uLL)
    {
      v17 = 0;
    }

    else
    {
      v19 = (v70 + 4);
      do
      {
        v20 = *v19++;
        v17 = v20 != 0;
        if (v20)
        {
          v21 = 1;
        }

        else
        {
          v21 = v18 == 0;
        }

        --v18;
      }

      while (!v21);
    }
  }

  BlueFin::GlSetBase::GlSetBase(&v70, &v72, 8u, &v83);
  v55 = &v56[4];
  v56[0] = 8;
  memset(&v56[4], 0, 32);
  BlueFin::GlSetBase::OperatorBinaryAnd(&v70, &v55, &v74);
  BlueFin::GlSetBase::operator=(&v70, &v55);
  v72 = *&v56[4];
  v73 = *&v56[20];
  if (*v70)
  {
    v22 = 1;
  }

  else
  {
    v23 = v71 - 2;
    if (v71 < 2uLL)
    {
      v22 = 0;
    }

    else
    {
      v24 = (v70 + 4);
      do
      {
        v25 = *v24++;
        v22 = v25 != 0;
        if (v25)
        {
          v26 = 1;
        }

        else
        {
          v26 = v23 == 0;
        }

        --v23;
      }

      while (!v26);
    }
  }

  v27 = v2[448];
  v28 = v2[449];
  if ((v28 & 0x22) == 0x22)
  {
    LODWORD(v29) = 1;
    if ((v28 & 8) != 0)
    {
LABEL_57:
      v33 = (v28 & 0x100) == 0 && v12;
      v31 = 1;
      LODWORD(v32) = 1;
      if (!v33)
      {
        goto LABEL_67;
      }

      goto LABEL_61;
    }
  }

  else
  {
    if (v12)
    {
      if (v17)
      {
        v30 = 0;
        if ((v28 & 8) != 0)
        {
          LODWORD(v29) = 0;
          v31 = 1;
          LODWORD(v32) = 1;
          if ((v28 & 0x100) != 0)
          {
            goto LABEL_67;
          }
        }

        else
        {
          v31 = 0;
        }

        goto LABEL_63;
      }
    }

    else
    {
      v29 = (v28 >> 1) & 1;
      if (v17 | (v2[449] >> 1) & 1)
      {
        if ((v28 & 8) != 0)
        {
          v31 = 1;
          LODWORD(v32) = 1;
          goto LABEL_67;
        }

        goto LABEL_56;
      }
    }

    v29 = (v28 >> 5) & 1;
    if ((v28 & 8) != 0)
    {
      goto LABEL_57;
    }
  }

LABEL_56:
  v31 = 0;
LABEL_61:
  if (v17)
  {
    v30 = v29;
LABEL_63:
    if (!v22)
    {
      LODWORD(v32) = 0;
      LODWORD(v54) = 0;
      goto LABEL_72;
    }

    LODWORD(v29) = v30;
    goto LABEL_66;
  }

  v32 = (v28 >> 8) & 1;
  if (!((v2[449] >> 8) & 1 | !v22))
  {
LABEL_66:
    v32 = (v28 >> 10) & 1;
  }

LABEL_67:
  if (v22)
  {
    v54 = (v28 >> 10) & 1;
  }

  else
  {
    LODWORD(v54) = 0;
  }

  v30 = v29;
LABEL_72:
  if (((*(**(this + 10) + 32))(*(this + 10)) & v11) == 1)
  {
    v30 = (v28 & 0x22) != 0;
    if (v31)
    {
      LODWORD(v32) = 1;
    }

    else
    {
      v32 = (v28 >> 8) & 1;
    }
  }

  v34 = *(v2 + 1893);
  v62 = 0.0;
  (*(**(this + 5) + 48))(*(this + 5), *v2, &v62, 0);
  v36 = 0;
  if ((*(**(this + 8) + 552))())
  {
    LODWORD(v35) = *v2;
    v37 = (*(**(this + 5) + 136))(*(this + 5), v35);
    if (v62 < 0.0005)
    {
      v36 = 1;
    }

    else
    {
      v36 = v37;
    }
  }

  *(v2 + 1893) = v36;
  if (v34 != v36)
  {
    v63 = &v65;
    v64 = 8;
    v65 = xmmword_298A3246C;
    v66 = unk_298A3247C;
    BlueFin::GlSetBase::GlSetBase(&v67, &v68, 8u, &v63);
    v55 = &v56[4];
    v56[0] = 8;
    memset(&v56[4], 0, 32);
    BlueFin::GlSetBase::OperatorBinaryAnd(&v67, &v55, this + 2896);
    BlueFin::GlSetBase::operator=(&v67, &v55);
    v68 = *&v56[4];
    v69 = *&v56[20];
    BlueFin::GlMeSrdSatTrackMgr::GetSetSvidListTrackingOrAided((this + 14352), v60);
    BlueFin::GlSvIdSet::operator~(v60, v61);
    BlueFin::GlSetBase::GlSetBase(&v70, &v72, 8u, &v67);
    v55 = &v56[4];
    v56[0] = 8;
    memset(&v56[4], 0, 32);
    BlueFin::GlSetBase::OperatorBinaryAnd(&v70, &v55, v61);
    BlueFin::GlSetBase::operator=(&v70, &v55);
    v72 = *&v56[4];
    v73 = *&v56[20];
    BlueFin::GlMeSrdAidingMgr::ForceAidingRefresh(this + 240, &v70);
  }

  if (*v2 > 0xAFC7)
  {
    v38 = 0;
  }

  else
  {
    v38 = v2[472] & v32 & v30;
  }

  v55 = &unk_2A1F0E1A0;
  *v56 = 0;
  *&v56[8] = 0x36A7C5AC00000000;
  *&v56[16] = 0;
  *&v56[24] = 2139095039;
  *&v56[32] = 0;
  v57 = 2139095039;
  v58 = 0;
  v59 = 0x36A7C5AC7F7FFFFFLL;
  (*(**(this + 5) + 96))(*(this + 5), &v55);
  v39 = 0;
  if (*v2 >> 4 <= 0x270)
  {
    v39 = v30 & (v32 ^ 1);
  }

  if (*(v2 + 1890) == 1)
  {
    if (v27 >= 4)
    {
      v50 = "eTcxo < NUM_OF_TCXO_STATES";
      DeviceFaultNotify("glmesrd_acq_mgr_sm.cpp", 1166, "GetNextFarStartState", "eTcxo < NUM_OF_TCXO_STATES");
      v51 = 1166;
LABEL_145:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_acq_mgr_sm.cpp", v51, v50);
    }

    v40 = (*(**(this + 5) + 64))(*(this + 5));
    if (**v40)
    {
LABEL_90:
      if ((v27 - 2) < 2)
      {
        v47 = !v30;
        v48 = BlueFin::GlMeSrdAcqMgrSm::far_start_assisted_100;
        v49 = BlueFin::GlMeSrdAcqMgrSm::far_start_assisted_100_bit;
        goto LABEL_129;
      }

      if (v27 == 1)
      {
        v47 = !v30;
        v48 = BlueFin::GlMeSrdAcqMgrSm::far_start_assisted_300;
        v49 = BlueFin::GlMeSrdAcqMgrSm::far_start_assisted_300_bit;
        goto LABEL_129;
      }

      if (!v27)
      {
        v41 = *(v2 + 2089);
        if (v11)
        {
          goto LABEL_128;
        }

LABEL_112:
        v47 = v41 == 0;
        v48 = BlueFin::GlMeSrdAcqMgrSm::autonomous_2000;
        v49 = BlueFin::GlMeSrdAcqMgrSm::autonomous_6000;
        goto LABEL_129;
      }

      goto LABEL_116;
    }

    v43 = *(v40 + 8);
    if (v43 >= 2)
    {
      v44 = v43 - 1;
      v45 = (*v40 + 4);
      do
      {
        if (*v45++)
        {
          goto LABEL_90;
        }
      }

      while (--v44);
    }

    v42 = BlueFin::GlMeSrdAcqMgrSm::far_start_positionless_300;
    if ((v27 - 2) < 2)
    {
      v42 = BlueFin::GlMeSrdAcqMgrSm::far_start_positionless_100;
      goto LABEL_126;
    }

LABEL_109:
    if (v27 != 1)
    {
      if (!v27)
      {
        v41 = *(v2 + 2089);
        goto LABEL_112;
      }

LABEL_116:
      v50 = "nextState != (QSTATE)&GlMeSrdAcqMgrSm::top";
      DeviceFaultNotify("glmesrd_acq_mgr_sm.cpp", 1428, "UpdateSmFirstFixStates", "nextState != (QSTATE)&GlMeSrdAcqMgrSm::top");
      v51 = 1428;
      goto LABEL_145;
    }

    goto LABEL_126;
  }

  if (!v11)
  {
    v42 = BlueFin::GlMeSrdAcqMgrSm::autonomous_fast_start_300;
    if (v2[458])
    {
      goto LABEL_126;
    }

    v42 = BlueFin::GlMeSrdAcqMgrSm::autonomous_300;
    if ((v27 - 2) < 2)
    {
      v42 = BlueFin::GlMeSrdAcqMgrSm::autonomous_100;
      goto LABEL_126;
    }

    goto LABEL_109;
  }

  if (v38)
  {
    v42 = BlueFin::GlMeSrdAcqMgrSm::assisted_300_fta;
    if ((v27 - 2) < 2)
    {
      v42 = BlueFin::GlMeSrdAcqMgrSm::assisted_100_fta;
      goto LABEL_126;
    }

    if (v27 == 1)
    {
LABEL_126:
      v52 = v42;
      goto LABEL_132;
    }

    if (v27)
    {
      goto LABEL_116;
    }
  }

  else
  {
    if (v39)
    {
      v42 = BlueFin::GlMeSrdAcqMgrSm::assisted_100_rtc;
      if (v27 >= 4)
      {
        goto LABEL_116;
      }

      goto LABEL_126;
    }

    v42 = BlueFin::GlMeSrdAcqMgrSm::assisted_300;
    if (v27 > 1)
    {
      if (v27 != 2)
      {
        if (v27 != 3)
        {
          goto LABEL_116;
        }

        v47 = v54 == 0;
        if ((v32 & v30) == 1)
        {
          v48 = BlueFin::GlMeSrdAcqMgrSm::assisted_70_bit_zoom;
          v49 = BlueFin::GlMeSrdAcqMgrSm::assisted_70_bit_zoom_WithGal;
        }

        else
        {
          v48 = BlueFin::GlMeSrdAcqMgrSm::assisted_100;
          v49 = BlueFin::GlMeSrdAcqMgrSm::assisted_100_zoom_Gal;
        }

        goto LABEL_129;
      }

      v42 = BlueFin::GlMeSrdAcqMgrSm::assisted_100;
      goto LABEL_126;
    }

    if (v27)
    {
      if (v27 != 1)
      {
        goto LABEL_116;
      }

      goto LABEL_126;
    }
  }

  v41 = *(v2 + 2089);
LABEL_128:
  v47 = v41 == 0;
  v48 = BlueFin::GlMeSrdAcqMgrSm::assisted_2000;
  v49 = BlueFin::GlMeSrdAcqMgrSm::assisted_6000;
LABEL_129:
  if (v47)
  {
    v52 = v48;
  }

  else
  {
    v52 = v49;
  }

LABEL_132:
  if (v52 == BlueFin::QHsm::top)
  {
    goto LABEL_116;
  }

  result = BlueFin::QHsm::isIn(this, v52);
  if (!result)
  {
    return BlueFin::QHsm::tran(this, v52, "UpdateSmFirstFixStates");
  }

  if (v34 != v36)
  {
    result = BlueFin::QHsm::isIn(this, BlueFin::GlMeSrdAcqMgrSm::autonomous_fast_start_300);
    if (!result)
    {
      return BlueFin::QHsm::tran(this, v52, "UpdateSmFirstFixStates");
    }
  }

  return result;
}

uint64_t BlueFin::GlMeSrdAsicConfig::ExtCohGalSearchAvailable(BlueFin::GlMeSrdAsicConfig *this)
{
  v1 = *(this + 2);
  if (v1 >= 6)
  {
    DeviceFaultNotify("glmesrd_asic_config.cpp", 5178, "ExtCohGalSearchAvailable", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asic_config.cpp", 5178, "0");
  }

  return (0x28u >> v1) & 1;
}

BOOL BlueFin::GlMeWinMgr::GetGalSecDecodeInfo(BlueFin::GlMeWinMgr *this, double a2)
{
  if (*(this + 9848) != 1)
  {
    return 0;
  }

  v4 = *(this + 1230) - a2;
  if (v4 < 0.0)
  {
    v4 = -v4;
  }

  if (v4 >= 180000.0)
  {
    return 0;
  }

  v19 = v2;
  v20 = v3;
  v7[0] = 0;
  v8 = 7;
  v9 = 0;
  v10 = xmmword_298A31A60;
  v11 = 0;
  v12 = 0;
  v17 = 0;
  v18 = 0xBF80000000000000;
  v15 = 0;
  v16 = 0;
  v13 = 0;
  v14 = 0;
  BlueFin::GlMeSatAidMgr::GetSatAid(this + 320, this + 9832, v7, a2);
  return v5 && *(v5 + 12) != 4 && *(v5 + 40) < 0.001;
}

uint64_t (*(*BlueFin::GlMeSrdAcqMgrSm::autonomous_fast_start_300(BlueFin::GlMeSrdAcqMgrSm *this, unsigned __int8 *a2, double a3))(BlueFin::GlMeSrdAcqMgrSm **this, unsigned __int8 *a2))()
{
  v4 = this + 23160;
  v5 = this + 10392;
  v6 = *a2;
  v7 = BlueFin::GlMeSrdAcqMgrSm::first_fix;
  if (v6 > 0x42)
  {
    if (*a2 <= 0x44u)
    {
      if (v6 != 67)
      {
        if (v6 == 68)
        {
          v8 = a2[1];
          if (v8 == 1)
          {
            if (*(this + 3010) + *(this + 11984) != 2)
            {
              v49 = "me->m_otTryoutsMgr.GetProgrammingRotation() == 2";
              DeviceFaultNotify("glmesrd_acq_mgr_sm.cpp", 1769, "autonomous_fast_start_300", "me->m_otTryoutsMgr.GetProgrammingRotation() == 2");
              v50 = 1769;
              goto LABEL_97;
            }

            v7 = 0;
            *(this + 11880) = 0;
          }

          else
          {
            if (v8 != 8)
            {
              v49 = "0";
              DeviceFaultNotify("glmesrd_acq_mgr_sm.cpp", 1774, "autonomous_fast_start_300", "0");
              v50 = 1774;
              goto LABEL_97;
            }

            v9 = (*(this + 10544) + *(this + 10600));
            if (v9 != 3)
            {
              if (v9 == 2)
              {
                BlueFin::GlMeSrdSatTrackMgr::GetSetSvidValidTrackingList(this + 1794, &v62);
                if (*(v4 + 448) && (v10 = BlueFin::GlSetBase::Cnt(&v62), BlueFin::GlSetBase::Cnt((this + 13920)) + v10 > 5))
                {
                  if ((*(**(this + 8) + 1200))(*(this + 8)))
                  {
                    v43 = 88;
                  }

                  else
                  {
                    v43 = 84;
                  }

                  BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(this + 10128, 7, 29, 0x33u, 0x3Du, 0x4Au, 0x2Fu, v43, 0x55u, 0);
                }

                else
                {
                  if ((*(**(this + 8) + 1200))(*(this + 8)))
                  {
                    v11 = 88;
                  }

                  else
                  {
                    v11 = 84;
                  }

                  BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(this + 10128, 7, 29, 0x33u, 0x3Du, 0xFAu, 0x2Fu, v11, 0xFAu, 0);
                }

                return 0;
              }

              v49 = "0";
              DeviceFaultNotify("glmesrd_acq_mgr_sm.cpp", 1764, "autonomous_fast_start_300", "0");
              v50 = 1764;
LABEL_97:
              __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_acq_mgr_sm.cpp", v50, v49);
            }

            v7 = 0;
            *(this + 10440) = 0;
          }
        }

        return v7;
      }

      if (*(this + 24992) != 1)
      {
        goto LABEL_68;
      }

      v33 = (*(**(this + 5) + 64))(*(this + 5));
      BlueFin::GlSatCarrIdSet::GetSatIdSetAnyCarrier((this + 18352), &v62);
      BlueFin::GlMeSrdSatMgr::GetSvidSetFromSatidSet(*(this + 1795), &v62, &v52);
      BlueFin::GlSvIdSet::operator~(&v52, &v55);
      BlueFin::GlSetBase::GlSetBase(&v58, &v60, 8u, v33);
      v62 = &v64;
      v63 = 8;
      v64 = 0u;
      v65 = 0u;
      BlueFin::GlSetBase::OperatorBinaryAnd(&v58, &v62, &v55);
      BlueFin::GlSetBase::operator=(&v58, &v62);
      v60 = v64;
      v61 = v65;
      if (BlueFin::GlMeSrdAcqMgrSm::IsFirstFix(this))
      {
        v34 = 0;
        v35 = (&v58[v59 / 4u - 1] + 12);
        do
        {
          if (*v35)
          {
            v36 = *v35 - (((*v35 >> 2) & 0x9249249) + ((*v35 >> 1) & 0x5B6DB6DB));
            v34 = ((v36 + (v36 >> 3)) & 0xC71C71C7) + v34 - 63 * (((v36 + (v36 >> 3)) & 0xC71C71C7) / 0x3F);
          }

          v35 = (v35 - 4);
        }

        while (v35 >= v58);
        if (v34 <= 4u && v4[1889] != 1)
        {
          if (v4[1832])
          {
            return 0;
          }

          goto LABEL_68;
        }
      }

LABEL_67:
      v4[1832] = 0;
LABEL_68:
      BlueFin::GlMeSrdAcqMgrSm::UpdateSmFirstFixStates(this);
      return 0;
    }

    if (v6 == 69)
    {
      v37 = a2[1];
      if (v37 == 1)
      {
        v62 = &v64;
        v63 = 8;
        v64 = 0u;
        v65 = 0u;
        BlueFin::GlSetBase::operator=(this + 11824, &v62);
        v39 = v65;
        *(this + 11836) = v64;
        *(this + 11852) = v39;
        BlueFin::GlMeSrdSearchMgrBase::RemoveInvalidSvId((this + 11568), (this + 11824));
        return 0;
      }

      if (v37 != 8)
      {
        v49 = "0";
        DeviceFaultNotify("glmesrd_acq_mgr_sm.cpp", 1796, "autonomous_fast_start_300", "0");
        v50 = 1796;
        goto LABEL_97;
      }

      if (*(this + 2650) + *(this + 10544) == 3)
      {
        goto LABEL_67;
      }
    }

    else
    {
      if (v6 != 70)
      {
        return v7;
      }

      BlueFin::GlMeSrdSatTrackMgr::GetSetSvidListTrackingOrAided((this + 14352), &v55);
      BlueFin::GlSetBase::GlSetBase(&v58, &v60, 8u, &v55);
      v62 = &v64;
      v63 = 8;
      v64 = 0u;
      v65 = 0u;
      BlueFin::GlSetBase::OperatorBinaryAnd(&v58, &v62, this + 2896);
      BlueFin::GlSetBase::operator=(&v58, &v62);
      v60 = v64;
      v61 = v65;
      if ((*(this + 2650) + v5[152] != 1 || *v4 <= 0x3E8u) && !*v58)
      {
        if (v59 < 2uLL)
        {
          return 0;
        }

        v40 = v59 - 1;
        v41 = v58 + 1;
        while (!*v41++)
        {
          if (!--v40)
          {
            return 0;
          }
        }
      }

      v21 = *(this + 1298);
      if (!*v21)
      {
        v22 = *v5;
        if (v22 >= 2)
        {
          v23 = v22 - 1;
          v24 = v21 + 1;
          do
          {
            if (*v24++)
            {
              return 0;
            }
          }

          while (--v23);
        }

        v26 = *(this + 1478);
        if (!*v26)
        {
          v27 = v5[1440];
          if (v27 >= 2)
          {
            v28 = v27 - 1;
            v29 = v26 + 1;
            while (1)
            {
              if (*v29++)
              {
                return 0;
              }

              if (!--v28)
              {
                goto LABEL_67;
              }
            }
          }

          goto LABEL_67;
        }
      }
    }

    return 0;
  }

  switch(v6)
  {
    case 2u:
      *(this + 10440) = 10;
      *(this + 10920) = 0;
      if (*(this + 2650) + *(this + 10544) == 1)
      {
        if (*(this + 3010) + *(this + 11984) == 1)
        {
          if ((*(**(this + 8) + 1232))(*(this + 8)))
          {
            v31 = 50;
          }

          else
          {
            v31 = 250;
          }

          if ((*(**(this + 8) + 1200))())
          {
            v32 = 88;
          }

          else
          {
            v32 = 84;
          }

          BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(this + 10128, 6, 28, v31, 0xFAu, 0xFAu, 0xFAu, v32, 0x55u, 1);
          BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(this + 10608, 250, 250, 0xFAu, 0xFAu, 0xFAu, 0xFAu, 250, 0xFAu, 1);
          BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(this + 12360, 250, 250, 0xFAu, 0xFAu, 0xFAu, 0xFAu, 250, 0xFAu, 1);
          BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(this + 12672, 250, 250, 0xFAu, 0xFAu, 0xFAu, 0xFAu, 250, 0xFAu, 1);
          return 0;
        }

        v49 = "me->m_otTryoutsMgr.GetProgrammingRotation() == 1";
        DeviceFaultNotify("glmesrd_acq_mgr_sm.cpp", 1626, "autonomous_fast_start_300", "me->m_otTryoutsMgr.GetProgrammingRotation() == 1");
        v50 = 1626;
      }

      else
      {
        v49 = "me->m_otScanMgr.GetProgrammingRotation() == 1";
        DeviceFaultNotify("glmesrd_acq_mgr_sm.cpp", 1625, "autonomous_fast_start_300", "me->m_otScanMgr.GetProgrammingRotation() == 1");
        v50 = 1625;
      }

      goto LABEL_97;
    case 3u:
      v62 = &v64;
      v63 = 8;
      v64 = 0u;
      v65 = 0u;
      BlueFin::GlSetBase::operator=(this + 11824, &v62);
      v38 = v65;
      *(this + 11836) = v64;
      *(this + 11852) = v38;
      BlueFin::GlMeSrdSearchMgrBase::RemoveInvalidSvId((this + 11568), (this + 11824));
      v7 = 0;
      v5[528] = 4;
      v4[1832] = 0;
      break;
    case 0x42u:
      if ((*(this + 24999) & 1) == 0)
      {
        if (*(this + 12455))
        {
          v12 = *(this + 5);
          LOBYTE(v62) = **(this + 3114);
          LODWORD(a3) = *v4;
          v13 = (*(*v12 + 88))(v12, &v62, *&a3);
          if (v13)
          {
            if ((*(v13 + 24) & 0x10) != 0)
            {
              v62 = &v64;
              v63 = 8;
              HIDWORD(v14) = 0;
              v64 = 0u;
              v65 = 0u;
              v15 = *(this + 3114);
              *(&v64 + ((*v15 >> 3) & 0x1C)) |= 1 << *v15;
              if (*(v4 + 875) < 2u)
              {
                goto LABEL_90;
              }

              v16 = 2;
              v17 = 4;
              while (1)
              {
                v18 = *(this + 5);
                LOBYTE(v58) = v15[v17];
                LODWORD(v14) = *v4;
                v19 = (*(*v18 + 88))(v18, &v58, v14);
                if (!v19 || (*(v19 + 24) & 0x10) == 0)
                {
                  break;
                }

                v15 = *(this + 3114);
                *(v62 + ((v15[v17] >> 3) & 0x1C)) |= 1 << v15[v17];
                v17 += 4;
                if (v16++ >= *(v4 + 875))
                {
                  goto LABEL_90;
                }
              }

              if (v16 >= *(v4 + 875))
              {
LABEL_90:
                v58 = &v60;
                v59 = 8;
                v60 = xmmword_298A323EC;
                v61 = *algn_298A323FC;
                BlueFin::GlSvIdSet::operator~(&v58, &v55);
                BlueFin::GlSetBase::operator&=(&v62, &v55);
                BlueFin::GlMeSrdSatTrackMgr::GetSetSvidList((this + 14352), &v52);
                BlueFin::GlSvIdSet::operator~(&v52, &v55);
                BlueFin::GlSetBase::operator&=(&v62, &v55);
                BlueFin::GlMeSrdSatMgr::GetSvidSetFromSatidSet(this + 440, this + 13920, &v52);
                BlueFin::GlSvIdSet::operator~(&v52, &v55);
                BlueFin::GlSetBase::operator&=(&v62, &v55);
                v4[1839] = 1;
                BlueFin::GlSetBase::GlSetBase(&v55, v57, 8u, &v62);
                BlueFin::GlMeSrdAidingMgr::ForceAidingRefresh(this + 240, &v55);
                v5[1488] = BlueFin::GlSetBase::Cnt(&v62);
                v48.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(this + 11568, 9, 35, 0x46u, 0x3Eu, 0x4Bu, 0xFAu, 84, 0xFAu, 1);
                if (((*(**(this + 8) + 256))(v48) & 1) == 0 && ((*(**(this + 8) + 264))(*(this + 8)) & 1) == 0)
                {
                  v55 = v57;
                  v56 = 8;
                  v57[0] = xmmword_298A3246C;
                  v57[1] = unk_298A3247C;
                  BlueFin::GlSvIdSet::operator~(&v55, v51);
                  BlueFin::GlSvIdSet::operator&(&v52, &v62, v51);
                  BlueFin::GlSetBase::operator=(&v62, &v52);
                  v64 = v53;
                  v65 = v54;
                }

                BlueFin::GlMeSrdSearchMgrBase::SetSvidToSearch((this + 11568), &v62);
              }

              else
              {
                v45 = v17 * 2 + 8;
                while (1)
                {
                  v46 = *(this + 5);
                  LOBYTE(v58) = *(*(this + 3114) + v45);
                  LODWORD(v14) = *v4;
                  v47 = (*(*v46 + 88))(v46, &v58, v14);
                  if (v47)
                  {
                    if ((*(v47 + 24) & 0x10) != 0)
                    {
                      break;
                    }
                  }

                  ++v16;
                  v45 += 8;
                  if (v16 >= *(v4 + 875))
                  {
                    goto LABEL_90;
                  }
                }
              }
            }
          }
        }
      }

      return 0;
  }

  return v7;
}

uint64_t (*(*(*BlueFin::GlMeSrdAcqMgrSm::autonomous_6000(BlueFin::GlMeSrdAcqMgrSm *this, unsigned __int8 *a2))(uint64_t a1, unsigned __int8 *a2))(BlueFin::GlMeSrdAcqMgrSm **this, unsigned __int8 *a2))()
{
  v3 = *a2;
  if (v3 > 0x40)
  {
    if (v3 != 65 && v3 != 67)
    {
      return BlueFin::GlMeSrdAcqMgrSm::autonomous;
    }

    *(this + 24996) = BlueFin::GlMeMeasSelfAidFilter::m_IsSelfAidOn;
    BlueFin::GlMeSrdAcqMgrSm::UpdateSmFirstFixStates(this);
  }

  else if (v3 == 2)
  {
    BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(this + 12048, 250, 250, 0xFAu, 0xFAu, 0xFAu, 0xFAu, 84, 0xFAu, 1);
    v5.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(this + 10128, 250, 250, 0xFAu, 0xFAu, 0xFAu, 0xFAu, 84, 0xFAu, 1);
    if ((*(**(this + 8) + 1200))(v5))
    {
      v6 = 250;
    }

    else
    {
      v6 = 84;
    }

    v7.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(this + 10608, 93, 94, 0xFAu, 0xFAu, 0xFAu, 0xFAu, v6, 0xFAu, 1);
    if ((*(**(this + 8) + 1200))(v7))
    {
      v8 = 250;
    }

    else
    {
      v8 = 84;
    }

    v9.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(this + 12360, 93, 94, 0xFAu, 0xFAu, 0xFAu, 0xFAu, v8, 0xFAu, 1);
    if ((*(**(this + 8) + 1200))(v9))
    {
      v10 = 250;
    }

    else
    {
      v10 = 84;
    }

    BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(this + 12672, 93, 94, 0xFAu, 0xFAu, 0xFAu, 0xFAu, v10, 0xFAu, 1);
  }

  else if (v3 != 3)
  {
    return BlueFin::GlMeSrdAcqMgrSm::autonomous;
  }

  return 0;
}

uint64_t (*(*BlueFin::GlMeSrdAcqMgrSm::autonomous(uint64_t a1, unsigned __int8 *a2))(BlueFin::GlMeSrdAcqMgrSm **this, unsigned __int8 *a2))()
{
  v2 = *a2;
  if (v2 == 3)
  {
    return 0;
  }

  if (v2 != 2)
  {
    return BlueFin::GlMeSrdAcqMgrSm::first_fix;
  }

  result = 0;
  a1 += 0x2000;
  *(a1 + 2248) = 6;
  *(a1 + 2728) = 2;
  return result;
}

uint64_t BlueFin::GlMeSrdAcqMgr::SetSignalAiding(BlueFin::GlMeSrdAcqMgr *this, BlueFin::GlMeSignalAidInfo *a2)
{
  v138 = *MEMORY[0x29EDCA608];
  if ((*(this + 104) & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_acq_mgr.cpp", 150, "SetSignalAiding", "m_bAllocated");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_acq_mgr.cpp", 150, "m_bAllocated");
  }

  v2 = 0;
  v117 = &v119;
  v118 = 8;
  v119 = 0u;
  v120 = 0u;
  v127 = &unk_2A1F0A870;
  v129[0] = &unk_2A1F09610;
  v129[1] = &v137;
  v130 = &v128;
  v131 = &v136;
  v132 = 2;
  v133 = -17407;
  v134 = 14;
  do
  {
    *(v130 + v2++) = -1;
  }

  while (v2 < HIBYTE(v133));
  if (v134)
  {
    for (i = 0; i < v134; ++i)
    {
      v131[i] = i;
    }

    v4 = v134 - 1;
  }

  else
  {
    v4 = -1;
  }

  v135 = v4;
  v5 = this + 8;
  v6 = *(this + 1);
  bzero(*(v6 + 23168), ((4 * *(v6 + 23176) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  bzero(*(v6 + 23216), ((4 * *(v6 + 23224) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  bzero(*(v6 + 23264), ((4 * *(v6 + 23272) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  bzero(*(v6 + 23408), ((4 * *(v6 + 23416) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  bzero(*(v6 + 23456), ((4 * *(v6 + 23464) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  bzero(*(v6 + 23504), ((4 * *(v6 + 23512) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  bzero(*(v6 + 23360), ((4 * *(v6 + 23368) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  bzero(*(v6 + 23312), ((4 * *(v6 + 23320) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  bzero(*(v6 + 23552), ((4 * *(v6 + 23560) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  v114 = v116;
  v115 = 8;
  memset(v116, 0, 32);
  *(v6 + 24910) = 0;
  v7 = (*(**(v6 + 64) + 392))();
  v8 = (*(**(*v5 + 64) + 832))(*(*v5 + 64), 8);
  v9 = this;
  if (*(a2 + 7))
  {
    v10 = v8;
    v11 = 0;
    v12 = 0;
    v13 = v7 - 3;
    v76 = v8 ^ 1;
    v14 = 4;
    do
    {
      if (v12 >= v13)
      {
        v15 = v10;
      }

      else
      {
        v15 = 0;
      }

      if (v15)
      {
        break;
      }

      v16 = *(a2 + 2);
      v17 = *(v16 + v14 - 4);
      if (BlueFin::GlSvId::s_aucSvId2gnss[v17] != 7)
      {
        if ((v17 - 76) <= 0x3E)
        {
          v18 = (*(**(*(v9 + 1) + 64) + 832))(*(*(v9 + 1) + 64), 7);
          v16 = *(a2 + 2);
          if ((v18 & 1) == 0)
          {
            *(v16 + v14) &= ~0x400u;
          }

          v9 = this;
        }

        v19 = *(v9 + 1);
        v20 = *(v19 + 24910);
        v21 = *(v19 + 24912);
        *(v19 + 24910) = v20 + 1;
        v22 = v21 + 8 * v20;
        *v22 = *(v16 + v14 - 4);
        *(v22 + 4) = *(v16 + v14);
        v23 = v17 >> 5;
        v24 = 1 << v17;
        *(*(v19 + 23168) + 4 * (v17 >> 5)) |= 1 << v17;
        v25 = *(v16 + v14);
        if (v25)
        {
          v114[v23] |= v24;
          v25 = *(v16 + v14);
        }

        if ((v25 & 0xE) != 0)
        {
          *(*(v19 + 23216) + 4 * v23) |= v24;
          v25 = *(v16 + v14);
        }

        if ((v25 & 0x100100) != 0)
        {
          *(*(v19 + 23408) + 4 * v23) |= v24;
          ++v12;
        }

        v26 = (*(**(v19 + 64) + 352))(*(v19 + 64));
        v27 = *(a2 + 2);
        if (v26)
        {
          v28 = *(v27 + v14);
          v29 = *(this + 1);
          if ((v28 & 0x200) != 0 && (v12 < v13) | v76 & 1)
          {
            *(*(v29 + 23456) + 4 * v23) |= v24;
            ++v12;
            v28 = *(v27 + v14);
          }

          if ((v28 & 0x400) != 0 && (v12 < v13) | v76 & 1)
          {
            *(*(v29 + 23504) + 4 * v23) |= v24;
            ++v12;
          }

          if ((*(**(v29 + 64) + 832))(*(v29 + 64), 9))
          {
            v30 = *(this + 1);
            if ((*(*(a2 + 2) + v14 + 2) & 1) != 0 && (v12 < v13) | v76 & 1)
            {
              *(*(v30 + 23312) + 4 * v23) |= v24;
              ++v12;
            }
          }

          else
          {
            v30 = *(this + 1);
          }

          v31 = (*(**(v30 + 64) + 832))(*(v30 + 64), 10);
          v27 = *(a2 + 2);
          if (v31 && (*(v27 + v14 + 3) & 1) != 0 && (v12 < v13) | v76 & 1)
          {
            *(*(*(this + 1) + 23360) + 4 * v23) |= v24;
            ++v12;
          }
        }

        v32 = *(v27 + v14);
        if ((v32 & 2) != 0)
        {
          *(*(*(this + 1) + 23264) + 4 * v23) |= v24;
          v32 = *(v27 + v14);
        }

        if ((v32 & 0x80) != 0)
        {
          *(v117 + v23) |= v24;
          v32 = *(v27 + v14);
        }

        v33 = v32 & 0x3E000000;
        if ((v32 & 0x3E000000) != 0)
        {
          if (v135 != 255)
          {
            v34 = BlueFin::GlArray::Add(v129, v17);
            if (!v34)
            {
              DeviceFaultNotify("glmesrd_acq_mgr.cpp", 272, "SetSignalAiding", "pusCfgId");
              __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_acq_mgr.cpp", 272, "pusCfgId");
            }

            if (v33 <= 0x7FFFFFF)
            {
              if (v33 != 0x2000000)
              {
                v9 = this;
                if (v33 == 0x4000000)
                {
                  v35 = 6;
                  goto LABEL_64;
                }

LABEL_63:
                v35 = 255;
                goto LABEL_64;
              }

              v35 = 9;
            }

            else
            {
              if (v33 != 0x8000000)
              {
                v9 = this;
                if (v33 == 0x10000000)
                {
                  v35 = 13;
                  goto LABEL_64;
                }

                if (v33 == 0x20000000)
                {
                  v35 = 270;
LABEL_64:
                  *v34 = v35;
                  goto LABEL_65;
                }

                goto LABEL_63;
              }

              v35 = 3;
            }

            v9 = this;
            goto LABEL_64;
          }

          GlCustomLog(15, "SvId %d rejected by ME grid set because set is full!\n", v17);
        }

        v9 = this;
      }

LABEL_65:
      ++v11;
      v14 += 8;
    }

    while (v11 < *(a2 + 7));
  }

  v36 = v9 + 8;
  v37 = *(v9 + 1);
  BlueFin::GlSatCarrIdSet::GetSatIdSetAnyCarrier((v37 + 18352), v121);
  BlueFin::GlMeSrdSatMgr::GetSvidSetFromSatidSet(*(v37 + 14360), v121, &v112);
  v38 = *v36;
  v39 = this;
  if (!BlueFin::GlSetBase::HasAll((*v36 + 23168), &v112))
  {
    goto LABEL_72;
  }

  if (v113 >= v115)
  {
    v40 = v115;
  }

  else
  {
    v40 = v113;
  }

  if (!v40)
  {
    goto LABEL_77;
  }

  if ((*v112 & *v114) == 0)
  {
    v73 = 0;
    while (v40 - 1 != v73)
    {
      v74 = v114[v73 + 1];
      v75 = v112[++v73];
      if ((v75 & v74) != 0)
      {
        if (v73 < v40)
        {
          goto LABEL_72;
        }

        break;
      }
    }
  }

  else
  {
LABEL_72:
    BlueFin::GlSatCarrIdSet::GetSatIdSetAnyCarrier((v38 + 2294), &__src);
    LOBYTE(v121[0]) = v105;
    memcpy(&v122, __src, 4 * v105);
    v121[1] = 0;
    HIBYTE(v121[0]) = 0;
    *&v121[2] = v122;
    BlueFin::GlSetIterator::operator++(v121);
    v38 = *(this + 1);
    while (HIBYTE(v121[0]) != LOBYTE(v121[0]))
    {
      v41 = v121[1];
      BlueFin::GlMeSrdSatMgr::GetSvid(v38 + 440, LOBYTE(v121[1]), &__src);
      v38 = *(this + 1);
      v42 = __src >> 5;
      v43 = 1 << (__src & 0x1F);
      if ((v43 & *(v38[2896] + 4 * v42)) == 0 || (v43 & v114[v42]) != 0)
      {
        *(v38[3115] + 4 * (v41 >> 5)) |= 1 << v41;
      }

      BlueFin::GlSetIterator::operator++(v121);
    }
  }

LABEL_77:
  BlueFin::GlMeSrdSatMgr::GetSvidSetFromSatidSet(v38 + 440, (v38 + 1740), v111);
  v44 = *(this + 1);
  if (!BlueFin::GlSetBase::HasAll((v44 + 23168), v111))
  {
    LOBYTE(v121[0]) = *(v44 + 13928);
    memcpy(&v122, *(v44 + 13920), 4 * LOBYTE(v121[0]));
    v121[1] = 0;
    HIBYTE(v121[0]) = 0;
    *&v121[2] = v122;
    BlueFin::GlSetIterator::operator++(v121);
    while (HIBYTE(v121[0]) != LOBYTE(v121[0]))
    {
      v45 = v121[1];
      BlueFin::GlMeSrdSatMgr::GetSvid((v44 + 3520), LOBYTE(v121[1]), &__src);
      v44 = *(this + 1);
      if (((*(*(v44 + 23168) + ((__src >> 3) & 0x1C)) >> (__src & 0x1F)) & 1) == 0)
      {
        *(*(v44 + 24920) + 4 * (v45 >> 5)) |= 1 << v45;
      }

      BlueFin::GlSetIterator::operator++(v121);
    }
  }

  BlueFin::GlMeSrdAcqMgrSm::UpdateSignalAiding(v44);
  v108 = v110;
  v109 = 8;
  memset(v110, 0, 32);
  v46 = *(this + 1);
  LOBYTE(v121[0]) = *(v46 + 23176);
  memcpy(&v122, *(v46 + 23168), 4 * LOBYTE(v121[0]));
  v121[1] = 0;
  HIBYTE(v121[0]) = 0;
  *&v121[2] = v122;
  BlueFin::GlSetIterator::operator++(v121);
  if (HIBYTE(v121[0]) != LOBYTE(v121[0]))
  {
    v47 = *(v46 + 23264);
    do
    {
      v48 = LOBYTE(v121[1]) >> 5;
      if ((*(v47 + 4 * v48) >> (v121[1] & 0x1F)))
      {
        v110[v48] |= 1 << (v121[1] & 0x1F);
      }

      BlueFin::GlSetIterator::operator++(v121);
    }

    while (HIBYTE(v121[0]) != LOBYTE(v121[0]));
  }

  BlueFin::GlMeSrdSatMgr::SetDataFrmsEnabled((v46 + 3520), &v108);
  v49 = *(this + 1);
  BlueFin::GlSetBase::operator=(v49 + 19952, &v117);
  v50 = v120;
  *(v49 + 19964) = v119;
  *(v49 + 19980) = v50;
  BlueFin::GlMeSrdSatTrackMgr::RequestGrids((*(this + 1) + 14352), &v127);
  BlueFin::GlSetBase::GlSetBase(&__src, v106, 0x10u, (*(this + 1) + 18352));
  LOBYTE(v121[0]) = v105;
  memcpy(&v122, __src, 4 * v105);
  v121[1] = 0;
  HIBYTE(v121[0]) = 0;
  *&v121[2] = v122;
  BlueFin::GlSetIterator::operator++(v121);
  for (; HIBYTE(v121[0]) != LOBYTE(v121[0]); v39 = this)
  {
    BlueFin::GlSatCarrId::GlSatCarrId(v101, v121[1]);
    v51 = v101[0];
    BlueFin::GlMeSrdSatMgr::GetSvid((*(v39 + 1) + 3520), v101[0], &v97);
    TrackChannel = BlueFin::GlMeSrdSatMgr::GetTrackChannel(*(v39 + 1) + 3520, v101);
    BlueFin::GlSetBase::GlSetBase(&__src, v106, 8u, (*(v39 + 1) + 18464));
    v53 = v97;
    v54 = v97 >> 5;
    v55 = *(__src + v54);
    v56 = *(v39 + 1);
    v57 = *(*(v56 + 23264) + 4 * v54);
    v58 = *(*(v56 + 24920) + 4 * (v51 >> 5));
    v59 = *(v56 + 32 * TrackChannel + 14384);
    BlueFin::GlSetBase::GlSetBase(&__src, v106, 4u, (v56 + 18432));
    v60 = *(__src + (v51 >> 5));
    if (((*(**(*(v39 + 1) + 64) + 256))() & 1) == 0)
    {
      v61 = (*(**(*(this + 1) + 64) + 264))(*(*(this + 1) + 64));
      v62 = v53 < 0x8B ? 1 : v61;
      if ((v62 & 1) == 0)
      {
        v63 = 1 << (v53 & 0x1F);
        v64 = v63 & v55;
        v65 = (v63 & v57) != 0;
        v66 = v64 != 0;
        if (v53 <= 0xAE)
        {
          if (v59)
          {
            v67 = 1 << (v51 & 0x1F);
            if ((v67 & v60) == 0 && (v67 & v58) == 0 && v66 != v65)
            {
              v68 = *(this + 1);
              *(*(v68 + 24920) + 4 * (v51 >> 5)) |= 1 << (v51 & 0x1F);
              *(*(v68 + 23552) + 4 * v54) |= 1 << (v53 & 0x1F);
            }
          }
        }
      }
    }

    BlueFin::GlSetIterator::operator++(v121);
  }

  result = (*(**(*(v39 + 1) + 64) + 832))(*(*(v39 + 1) + 64), 11);
  if (result)
  {
    BlueFin::GlMeSignalAidInfo::GetSignalIds(a2, &__src);
    *v101 = v103;
    v102 = 19;
    memset(v103, 0, sizeof(v103));
    BlueFin::GlSetBase::GlSetBase(&v97, v99, 0x10u, (*(v39 + 1) + 18352));
    LOBYTE(v121[0]) = v98;
    memcpy(&v122, v97, 4 * v98);
    v121[1] = 0;
    HIBYTE(v121[0]) = 0;
    *&v121[2] = v122;
    BlueFin::GlSetIterator::operator++(v121);
    while (HIBYTE(v121[0]) != LOBYTE(v121[0]))
    {
      BlueFin::GlSatCarrId::GlSatCarrId(&v97, v121[1]);
      BlueFin::GlMeSrdSatMgr::GetSvid((*(v39 + 1) + 3520), v97, &v92);
      v70 = 575;
      if (HIDWORD(v97) != -1 && v92 - 189 >= 0xFFFFFF44)
      {
        v71 = BlueFin::GlSvId::s_aucSvId2gnss[v92];
        if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * SHIDWORD(v97) - SHIDWORD(v97) + v71] == 255)
        {
          v70 = 575;
        }

        else
        {
          v70 = (BlueFin::GlSignalId::s_ausGnss2signalId[v71] + v92 - BlueFin::GlSvId::s_aucGnss2minSvId[v71] + WORD2(v97) * BlueFin::GlSvId::s_aucGnss2numSvId[v71]);
        }
      }

      *(*v101 + 4 * (v70 >> 5)) |= 1 << v70;
      BlueFin::GlSetIterator::operator++(v121);
    }

    BlueFin::GlSetBase::GlSetBase(&v87, &v88, 0x13u, v39 + 2);
    *v121 = &v123;
    LOBYTE(v122) = 19;
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    memset(v126, 0, sizeof(v126));
    BlueFin::GlSetBase::OperatorBinaryAnd(&v87, v121, v101);
    BlueFin::GlSetBase::operator=(&v87, v121);
    v89 = v124;
    v90 = v125;
    *v91 = *v126;
    *&v91[12] = *&v126[12];
    v88 = v123;
    BlueFin::GlSetBase::GlSetBase(&v92, &v93, 0x13u, &v87);
    *v121 = &v123;
    LOBYTE(v122) = 19;
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    memset(v126, 0, sizeof(v126));
    BlueFin::GlSetBase::OperatorBinaryInversion(&v92, v121);
    BlueFin::GlSetBase::operator=(&v92, v121);
    v94 = v124;
    v95 = v125;
    *v96 = *v126;
    *&v96[12] = *&v126[12];
    v93 = v123;
    BlueFin::GlSignalIdSet::setSignalIdLimits(&v92);
    BlueFin::GlSetBase::GlSetBase(&v97, v99, 0x13u, &v92);
    *v121 = &v123;
    LOBYTE(v122) = 19;
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    memset(v126, 0, sizeof(v126));
    BlueFin::GlSetBase::OperatorBinaryAnd(&v97, v121, &__src);
    BlueFin::GlSetBase::operator=(&v97, v121);
    v99[1] = v124;
    v99[2] = v125;
    *v100 = *v126;
    *&v100[12] = *&v126[12];
    v99[0] = v123;
    BlueFin::GlSetBase::GlSetBase(&v87, &v88, 0x13u, v39 + 2);
    *v121 = &v123;
    LOBYTE(v122) = 19;
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    memset(v126, 0, sizeof(v126));
    BlueFin::GlSetBase::OperatorBinaryAnd(&v87, v121, v101);
    BlueFin::GlSetBase::operator=(&v87, v121);
    v89 = v124;
    v90 = v125;
    *v91 = *v126;
    *&v91[12] = *&v126[12];
    v88 = v123;
    BlueFin::GlSetBase::GlSetBase(&v82, &v83, 0x13u, &__src);
    *v121 = &v123;
    LOBYTE(v122) = 19;
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    memset(v126, 0, sizeof(v126));
    BlueFin::GlSetBase::OperatorBinaryInversion(&v82, v121);
    BlueFin::GlSetBase::operator=(&v82, v121);
    v84 = v124;
    v85 = v125;
    *v86 = *v126;
    *&v86[12] = *&v126[12];
    v83 = v123;
    BlueFin::GlSignalIdSet::setSignalIdLimits(&v82);
    BlueFin::GlSetBase::GlSetBase(&v92, &v93, 0x13u, &v87);
    *v121 = &v123;
    LOBYTE(v122) = 19;
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    memset(v126, 0, sizeof(v126));
    BlueFin::GlSetBase::OperatorBinaryAnd(&v92, v121, &v82);
    BlueFin::GlSetBase::operator=(&v92, v121);
    v94 = v124;
    v95 = v125;
    *v96 = *v126;
    *&v96[12] = *&v126[12];
    v93 = v123;
    BlueFin::GlSignalIdSet::GetSvIdSet(v39 + 16, v81);
    BlueFin::GlSvIdSet::operator~(v81, &v82);
    BlueFin::GlSignalIdSet::GetSvIdSet(&__src, v80);
    BlueFin::GlSetBase::GlSetBase(&v87, &v88, 8u, &v82);
    *v121 = &v123;
    LOBYTE(v122) = 8;
    v123 = 0u;
    v124 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&v87, v121, v80);
    BlueFin::GlSetBase::operator=(&v87, v121);
    v88 = v123;
    v89 = v124;
    BlueFin::GlSignalIdSet::GetSvIdSet(v39 + 16, v81);
    BlueFin::GlSignalIdSet::GetSvIdSet(&__src, v79);
    BlueFin::GlSvIdSet::operator~(v79, v80);
    BlueFin::GlSetBase::GlSetBase(&v82, &v83, 8u, v81);
    *v121 = &v123;
    LOBYTE(v122) = 8;
    v123 = 0u;
    v124 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&v82, v121, v80);
    BlueFin::GlSetBase::operator=(&v82, v121);
    v83 = v123;
    v84 = v124;
    BlueFin::GlSignalIdSet::RemoveSvIds(&v97, &v87);
    BlueFin::GlSignalIdSet::RemoveSvIds(&v92, &v82);
    BlueFin::GlMeSrdSatTrackMgr::AddCarriers((*(v39 + 1) + 14352), &v97);
    BlueFin::GlMeSrdSatTrackMgr::RemoveCarriers((*(v39 + 1) + 14352), &v92);
    result = BlueFin::GlSetBase::operator=(v39 + 16, &__src);
    *(v39 + 44) = v106[1];
    *(v39 + 60) = v106[2];
    *(v39 + 76) = *v107;
    *(v39 + 88) = *&v107[12];
    *(v39 + 28) = v106[0];
  }

  v72 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlMeSrdSatTrackMgr::AddCarriers(BlueFin::GlMeSrdSatTrackMgr *this, const BlueFin::GlSignalIdSet *a2)
{
  BlueFin::GlSetBase::operator=(this + 5424, a2);
  *(this + 5436) = *(a2 + 12);
  v4 = *(a2 + 28);
  v5 = *(a2 + 44);
  v6 = *(a2 + 60);
  *(this + 5496) = *(a2 + 72);
  *(this + 5468) = v5;
  *(this + 5484) = v6;
  *(this + 5452) = v4;
  BlueFin::GlSetBase::GlSetBase(v8, v9, 0x13u, a2);
  v11 = &v13;
  v12 = 19;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  memset(v16, 0, sizeof(v16));
  BlueFin::GlSetBase::OperatorBinaryInversion(v8, &v11);
  BlueFin::GlSetBase::operator=(v8, &v11);
  v9[1] = v14;
  v9[2] = v15;
  *v10 = *v16;
  *&v10[12] = *&v16[12];
  v9[0] = v13;
  BlueFin::GlSignalIdSet::setSignalIdLimits(v8);
  return BlueFin::GlSetBase::operator&=(this + 5512, v8);
}

uint64_t BlueFin::GlMeSrdSatTrackMgr::RemoveCarriers(BlueFin::GlMeSrdSatTrackMgr *this, const BlueFin::GlSignalIdSet *a2)
{
  BlueFin::GlSetBase::operator=(this + 5512, a2);
  *(this + 5524) = *(a2 + 12);
  v4 = *(a2 + 28);
  v5 = *(a2 + 44);
  v6 = *(a2 + 60);
  *(this + 349) = *(a2 + 72);
  *(this + 5556) = v5;
  *(this + 5572) = v6;
  *(this + 5540) = v4;
  BlueFin::GlSetBase::GlSetBase(v8, v9, 0x13u, a2);
  v11 = &v13;
  v12 = 19;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  memset(v16, 0, sizeof(v16));
  BlueFin::GlSetBase::OperatorBinaryInversion(v8, &v11);
  BlueFin::GlSetBase::operator=(v8, &v11);
  v9[1] = v14;
  v9[2] = v15;
  *v10 = *v16;
  *&v10[12] = *&v16[12];
  v9[0] = v13;
  BlueFin::GlSignalIdSet::setSignalIdLimits(v8);
  return BlueFin::GlSetBase::operator&=(this + 5424, v8);
}

unint64_t BlueFin::GlReqSm::SetOscOffsAiding(unint64_t this, int a2)
{
  v3 = this;
  v4 = *(*(this + 6280) + 2568);
  v5 = *(this + 6456);
  v6 = *(v5 + 2);
  v7 = *(v5 + 10);
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    this = BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
  }

  v8 = *(v5 + 40);
  if (*(v3 + 53544) != v8 || a2 != 0)
  {
    this = (*(**(v3 + 312) + 320))(*(v3 + 312), v4, 0, v6 * 0.000000001, v7 * 0.000000001);
    *(v3 + 53544) = v8;
  }

  return this;
}

uint64_t BlueFin::GlReqSm::OnCpuLoadEnded(BlueFin::GlReqSm *this)
{
  v8 = *MEMORY[0x29EDCA608];
  result = GlCustomLog(15, "PredProcessingEnd %d\n", *(this + 13653));
  v3 = *(this + 13653);
  v7[0] = 14600959;
  v7[1] = v3;
  v4 = *(this + 4149);
  v5 = *(v4 + 248);
  if (v5)
  {
    result = v5(*(v4 + 8), v7, 8);
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlMeClkModMgr::SetClkMod(BlueFin::GlMeClkModMgr *this, BlueFin::GlMeClkMod *a2, char a3)
{
  v69 = 0;
  v6 = *(this + 7);
  v60 = &unk_2A1F0E1A0;
  v61 = 0;
  v62 = 0x36A7C5AC00000000;
  v63 = 0;
  v64 = 2139095039;
  v65 = 0;
  v66 = 2139095039;
  v67 = 0;
  v68 = 0x36A7C5AC7F7FFFFFLL;
  (*(*this + 24))(this, &v60, *(a2 + 3));
  v7 = v61;
  v8 = HIDWORD(v61);
  v9 = v63;
  *(this + 3) = v62;
  *(this + 4) = v9;
  *(this + 10) = v64;
  *(this + 6) = v65;
  *(this + 14) = v66;
  v10 = v68;
  *(this + 8) = v67;
  *(this + 9) = v10;
  v11 = v7 & 0xFFFFFDFF;
  *(this + 4) = v11;
  *(this + 5) = v8;
  v12 = *(a2 + 4);
  if (fabsf(v12) > (*(this + 21) * 10.0))
  {
    DeviceFaultNotify("glme_clkmodmgr.cpp", 403, "SetClkMod", "OscOffPpb=%f, MaxOscOffUncPpb=%f\n");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_clkmodmgr.cpp", 403, "OscOffPpb=%f, MaxOscOffUncPpb=%f\n");
  }

  if ((*(a2 + 8) & 0x10) == 0)
  {
    v13 = 0;
    v14 = 0;
    goto LABEL_37;
  }

  GlCustomLog(199, "HWDEBUG: LMS = %u, OscOffPpb=%lf, OscOffUncPpb=%lf \n", *(a2 + 3), (v12 * 1000000000.0), (*(a2 + 5) * 1000000000.0));
  v11 = *(this + 4);
  if ((v11 & 0x10) != 0)
  {
    if ((a3 & 1) != 0 || (v15 = *(a2 + 5), v15 <= 0.00000003))
    {
      v16 = *(a2 + 4);
      if (vabds_f32(*(this + 6), v16) <= 0.00000002)
      {
        v17 = 0;
      }

      else
      {
        v17 = 2064;
        v69 = 2064;
        v11 |= 0x200u;
        *(this + 4) = v11;
      }

      v18 = *(this + 7);
      v19 = v18 > 0.00000003;
      v15 = *(a2 + 5);
      v20 = v15 <= 0.00000003;
      v14 = v19 && v20;
      if (v19 && v20)
      {
        v17 |= 0x1020u;
      }

      v21 = (v18 / 0.00000005);
      v22 = (v15 / 0.00000005);
      if (v21 == v22)
      {
        v13 = v17;
      }

      else
      {
        v13 = v17 | 0x1020;
      }

      if (v14 || v21 != v22)
      {
        v69 = v13;
      }

      v11 |= 0x10u;
      *(this + 4) = v11;
    }

    else
    {
      if (vabds_f32(*(this + 7), v15) <= 0.000001)
      {
        v16 = *(a2 + 4);
        if (vabds_f32(*(this + 6), v16) <= 0.00000005)
        {
          v13 = 0;
        }

        else
        {
          v13 = 16;
          v69 = 16;
        }
      }

      else
      {
        v13 = 4128;
        v69 = 4128;
        v16 = *(a2 + 4);
      }

      v14 = 0;
    }
  }

  else
  {
    v15 = *(a2 + 5);
    if (v15 > *(this + 23))
    {
      v13 = 0;
      v14 = 0;
      v15 = *(this + 7);
      goto LABEL_32;
    }

    if (v15 >= 0.0000015)
    {
      v13 = 0;
    }

    else
    {
      v13 = 6192;
      v69 = 6192;
    }

    v14 = 0;
    v11 |= 0x10u;
    *(this + 4) = v11;
    v16 = *(a2 + 4);
  }

  *(this + 6) = v16;
  *(this + 7) = v15;
LABEL_32:
  if (v15 <= *(this + 22))
  {
    *(this + 23) = 882970544;
    v23 = 0.0000003;
  }

  else
  {
    v23 = *(this + 23);
  }

  if (v15 > v23)
  {
    *(this + 7) = v23;
  }

LABEL_37:
  v24 = *(a2 + 2);
  if ((~v24 & 0xA) != 0)
  {
    if ((v24 & 8) != 0)
    {
      if ((v24 & 2) == 0 && *(a2 + 8) < 0.00015152)
      {
        if (*(this + 10) >= 0.00015152)
        {
          v13 |= 8u;
          v69 = v13;
        }

        v53 = *(this + 4) - *(a2 + 3);
        LOBYTE(v57) = 1;
        v58 = 0;
        v59 = 0;
        if (fabs(fabs(fabs(BlueFin::GlSystemTime::getSubEpochTime(&v53, &v57, 0)) + -0.000500000024) + -0.000500000024) > 0.0000757575763)
        {
          v13 |= 2u;
          v69 = v13;
        }

        v32 = *(this + 4);
        *(this + 4) = v32 | 8;
        if ((v32 & 2) != 0)
        {
          v56 = *(this + 4);
          LOBYTE(v57) = 1;
          v58 = 0;
          v59 = 0;
          SubBitTime = BlueFin::GlSystemTime::getSubBitTime(&v56, &v57, 1u);
          v55 = *(a2 + 3);
          LOBYTE(v53) = 1;
          HIDWORD(v53) = 0;
          v54 = 0;
          SubEpochTime = SubBitTime + BlueFin::GlSystemTime::getSubEpochTime(&v55, &v53, 1u);
        }

        else
        {
          v53 = *(a2 + 3);
          LOBYTE(v57) = 1;
          v58 = 0;
          v59 = 0;
          SubEpochTime = BlueFin::GlSystemTime::getSubEpochTime(&v53, &v57, 1u);
        }

        *(this + 4) = SubEpochTime;
        *(this + 10) = *(a2 + 8);
      }
    }

    else if ((v24 & 2) != 0)
    {
      if ((v11 & 2) == 0)
      {
        v13 |= 0x40u;
        v69 = v13;
      }

      *(this + 4) = v11 | 2;
      *(this + 4) = *(a2 + 3);
      *(this + 10) = *(a2 + 8);
      v30 = v11 & 0xFFFFFFF9 | 2;
      v31 = v11 | 6;
      if ((*(a2 + 2) & 4) == 0)
      {
        v31 = v30;
      }

      *(this + 4) = v31;
      *(this + 27) = *(a2 + 3) / 0x3E8u;
    }
  }

  else if (*(a2 + 8) < 0.00015152)
  {
    if (*(this + 10) >= 0.00015152)
    {
      v13 |= 8u;
      v69 = v13;
    }

    v53 = *(this + 4) - *(a2 + 3);
    LOBYTE(v57) = 1;
    v58 = 0;
    v59 = 0;
    if (fabs(fabs(fabs(BlueFin::GlSystemTime::getSubEpochTime(&v53, &v57, 0)) + -0.000500000024) + -0.000500000024) > 0.0000757575763)
    {
      v13 |= 2u;
      v69 = v13;
    }

    v25 = *(this + 4);
    if ((v25 & 2) == 0)
    {
      v13 |= 0x40u;
      v69 = v13;
    }

    *(this + 4) = v25 | 0xA;
    v26 = *(a2 + 3);
    *(this + 4) = v26;
    *(this + 10) = *(a2 + 8);
    v53 = v26;
    LOBYTE(v57) = -117;
    v58 = 0;
    v59 = 453;
    *(this + 8) = BlueFin::GlSystemTime::getSubEpochTime(&v53, &v57, 1u);
    *(this + 18) = *(a2 + 8);
    v27 = *(a2 + 3) / 0x3E8u;
    *(this + 27) = v27;
    *(this + 29) = v27;
    v28 = *(this + 4);
    if ((*(a2 + 8) & 4) != 0)
    {
      v29 = v28 | 0x404;
    }

    else
    {
      v29 = v28 & 0xFFFFFBFB;
    }

    *(this + 4) = v29;
  }

  v34 = *(a2 + 2);
  if ((~v34 & 0x120) != 0)
  {
    if ((v34 & 0x100) != 0)
    {
      if ((v34 & 0x20) == 0 && *(a2 + 12) < 0.00030333)
      {
        if (*(this + 14) >= 0.00030333)
        {
          v13 |= 0x400u;
        }

        v53 = *(this + 6) - *(a2 + 5);
        LOBYTE(v57) = 52;
        v58 = 0;
        v59 = 147;
        if (fabs(fabs(fabs(BlueFin::GlSystemTime::getSubEpochTime(&v53, &v57, 0)) + -0.000500000024) + -0.000500000024) > 0.000151663407)
        {
          v13 |= 0x100u;
          v69 = v13;
        }

        v40 = *(this + 4);
        *(this + 4) = v40 | 0x100;
        if ((v40 & 0x20) != 0)
        {
          v56 = *(this + 6);
          LOBYTE(v57) = 52;
          v58 = 0;
          v59 = 147;
          v52 = BlueFin::GlSystemTime::getSubBitTime(&v56, &v57, 1u);
          v55 = *(a2 + 5);
          LOBYTE(v53) = 52;
          HIDWORD(v53) = 0;
          v54 = 147;
          v41 = v52 + BlueFin::GlSystemTime::getSubEpochTime(&v55, &v53, 1u);
        }

        else
        {
          v53 = *(a2 + 5);
          LOBYTE(v57) = 52;
          v58 = 0;
          v59 = 147;
          v41 = BlueFin::GlSystemTime::getSubEpochTime(&v53, &v57, 1u);
        }

        *(this + 6) = v41;
        *(this + 14) = *(a2 + 12);
      }
    }

    else if ((v34 & 0x20) != 0)
    {
      v37 = *(this + 4);
      if ((v37 & 0x20) == 0)
      {
        v13 |= 0x2000u;
        v69 = v13;
      }

      *(this + 4) = v37 | 0x120;
      *(this + 6) = *(a2 + 5);
      *(this + 14) = *(a2 + 12);
      v38 = v37 & 0xFFFFFE5F | 0x120;
      v39 = v37 | 0x1A0;
      if ((*(a2 + 2) & 0x80) == 0)
      {
        v39 = v38;
      }

      *(this + 4) = v39;
      *(this + 28) = *(a2 + 3) / 0x3E8u;
    }
  }

  else if (*(a2 + 12) < 0.00030333)
  {
    if (*(this + 14) >= 0.00030333)
    {
      v13 |= 0x400u;
    }

    v53 = *(this + 6) - *(a2 + 5);
    LOBYTE(v57) = 52;
    v58 = 0;
    v59 = 147;
    if (fabs(fabs(fabs(BlueFin::GlSystemTime::getSubEpochTime(&v53, &v57, 0)) + -0.000500000024) + -0.000500000024) > 0.000151663407)
    {
      v13 |= 0x100u;
    }

    v35 = *(this + 4);
    if ((v35 & 0x20) == 0)
    {
      v13 |= 0x2000u;
      v69 = v13;
    }

    *(this + 4) = v35 | 0x120;
    *(this + 6) = *(a2 + 5);
    *(this + 14) = *(a2 + 12);
    *(this + 28) = *(a2 + 3) / 0x3E8u;
    if ((*(a2 + 8) & 0x80) != 0)
    {
      v36 = v35 | 0x1A0;
    }

    else
    {
      v36 = v35 & 0xFFFFFE5F | 0x120;
    }

    *(this + 4) = v36;
  }

  if (*(*(this + 18) + 9856) - 1 > 3)
  {
    v42 = (*(this + 18) + 9859);
    goto LABEL_100;
  }

  v42 = (*(this + 18) + 9859);
  if (*(*(this + 18) + 9858) - 1 > 3)
  {
LABEL_100:
    *v42 = 0;
    goto LABEL_101;
  }

  *v42 = 1;
  if ((*(a2 + 2) & 0xA) == 2)
  {
    v43 = *(this + 4);
    if ((v43 & 0xA) == 0)
    {
      *(this + 4) = v43 | 2;
      *(this + 4) = *(a2 + 3);
      *(this + 10) = *(a2 + 8);
      *(this + 27) = *(a2 + 3) / 0x3E8u;
    }
  }

  *v42 = 1;
  if ((*(a2 + 2) & 0x120) == 0x20)
  {
    v44 = *(this + 4);
    if ((v44 & 0x120) == 0)
    {
      *(this + 4) = v44 | 0x20;
      *(this + 6) = *(a2 + 5);
      *(this + 14) = *(a2 + 12);
      *(this + 28) = *(a2 + 3) / 0x3E8u;
    }
  }

LABEL_101:
  v45 = *(this + 7);
  v46 = (v45 * 1000000000.0) / 50;
  if (*(this + 40) == v46)
  {
    v47 = v13;
  }

  else
  {
    v47 = v13 | 0x1020;
  }

  if ((v47 & 0x1020) != 0)
  {
    *(this + 40) = v46;
  }

  v69 = v47 & 0x1FBF;
  if ((v47 & 0x1FBF) != 0)
  {
    v48 = *(this + 17);
    if (v48)
    {
      (*(*v48 + 16))(v48, 1, &v69);
      v45 = *(this + 7);
    }
  }

  if (vabds_f32(v45, v6) <= 0.000001 && (v69 & 8) == 0 && !(v14 | (v69 >> 10) & 1))
  {
    if (*(*(this + 18) + 9856) - 1 > 3 || *(*(this + 18) + 9858) - 1 > 3)
    {
      *(*(this + 18) + 9859) = 0;
      goto LABEL_114;
    }

    *(*(this + 18) + 9859) = 1;
  }

  v57 = 0;
  v49 = *(this + 17);
  if (v49)
  {
    (*(*v49 + 16))(v49, 2, &v57);
  }

LABEL_114:
  result = (*(*this + 24))(this, &v60, *(a2 + 3));
  if (BlueFin::GlUtils::m_pInstance)
  {
    if (*(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      return (*(v60 + 3))(&v60, 0, 0);
    }
  }

  return result;
}

BOOL BlueFin::GlMeUserDynamic::GlMeUserDynamicUpdate(BlueFin::GlMeUserDynamic *this)
{
  v2 = *(*(this + 6) + 1004);
  if (*(this + 13) == 1)
  {
    if (v2 <= 5)
    {
      *(this + 13) = 0;
LABEL_8:
      *(this + 20) = 0;
LABEL_9:
      v3 = v2 > 5;
      goto LABEL_10;
    }
  }

  else
  {
    if (v2 < 0xE)
    {
      goto LABEL_8;
    }

    *(this + 13) = 1;
  }

  *(this + 20) = v2 > 0x11;
  if (v2 > 0x53)
  {
    v3 = 3;
    goto LABEL_10;
  }

  if (v2 <= 0x2C)
  {
    goto LABEL_9;
  }

  v3 = 2;
LABEL_10:
  BlueFin::GlMeUserDynamic::Debounce(this, v3);

  return BlueFin::GlMeUserDynamic::UpdateTimeStamps(this, v4, v5, v6, v7);
}

uint64_t BlueFin::GlMeMsmtMgr::GetCurrTimeLms(BlueFin::GlMeMsmtMgr *this, int8x16_t a2, double a3, int8x16_t a4, int8x16_t a5)
{
  v5 = *(this + 27);
  v6 = *(this + 29);
  if (v5 <= v6)
  {
    *a2.i64 = v6 * 1000.0;
  }

  else
  {
    *a2.i64 = v5 * 1000.0;
  }

  *a5.i64 = *a2.i64 + trunc(*a2.i64 * 2.32830644e-10) * -4294967300.0;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v8 = vnegq_f64(v7);
  a5.i64[0] = vbslq_s8(v8, a5, a2).u64[0];
  if (*a2.i64 > 4294967300.0)
  {
    a2.i64[0] = a5.i64[0];
  }

  if (*a2.i64 < -4294967300.0)
  {
    *a4.i64 = -*a2.i64;
    *a2.i64 = -(*a2.i64 - trunc(*a2.i64 * -2.32830644e-10) * -4294967300.0);
    *a2.i64 = -*vbslq_s8(v8, a2, a4).i64;
  }

  if (*a2.i64 < 0.0)
  {
    return --*a2.i64;
  }

  else
  {
    return *a2.i64;
  }
}

BOOL BlueFin::GlMeUserDynamic::VeryRecent(BlueFin::GlMeUserDynamic *this, unsigned int a2, int8x16_t a3, double a4, int8x16_t a5, int8x16_t a6)
{
  CurrTimeLms = BlueFin::GlMeMsmtMgr::GetCurrTimeLms(this, a3, a4, a5, a6);
  result = a2 != -1 && (CurrTimeLms - a2) >> 4 < 0x753;
  if (result && CurrTimeLms < a2)
  {
    DeviceFaultNotify("glme_userdynamic.cpp", 307, "VeryRecent", "ulCurrTimeMs >= ulTimeStampLms");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_userdynamic.cpp", 307, "ulCurrTimeMs >= ulTimeStampLms");
  }

  return result;
}

void BlueFin::GlMeMeasSelfAidFilter::UpdateMeSelfAid(BlueFin::GlMeMeasSelfAidFilter *this, unsigned int a2)
{
  if (!BlueFin::GlMeMeasSelfAidFilter::m_potWinMgr)
  {
    DeviceFaultNotify("glme_measaidfilter.cpp", 310, "UpdateMeSelfAid", "m_potWinMgr != (GlMeWinMgr*)(NULL_PTR)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_measaidfilter.cpp", 310, "m_potWinMgr != (GlMeWinMgr*)(NULL_PTR)");
  }

  if (*BlueFin::GlMeMeasSelfAidFilter::m_otPeAidSigLst)
  {
    goto LABEL_3;
  }

  if (byte_2A18BA4C0 >= 2uLL)
  {
    v5 = byte_2A18BA4C0 - 1;
    v6 = BlueFin::GlMeMeasSelfAidFilter::m_otPeAidSigLst + 1;
    do
    {
      if (*v6++)
      {
        goto LABEL_3;
      }
    }

    while (--v5);
  }

  if (this < 0x1389)
  {
LABEL_3:
    v2 = 0;
    goto LABEL_4;
  }

  v2 = BlueFin::GlMeMeasSelfAidFilter::SelfAidDueToNoPeAid(this, a2);
LABEL_4:
  BlueFin::GlMeMeasSelfAidFilter::m_IsSelfAidOn = v2;
  v3 = BlueFin::GlMeMeasSelfAidFilter::m_otSetMsmtSignalIds;
  v4 = ((4 * byte_2A18BA410 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4;

  bzero(v3, v4);
}

BOOL BlueFin::GlPeGloFcnOsnMgr::FCN2OSN(BlueFin::GlPeGloFcnOsnMgr *this, int a2, unsigned __int8 *a3, int8x16_t a4, int8x16_t a5)
{
  if ((a2 - 7) <= 0xF1u)
  {
    DeviceFaultNotify("glpe_glofcnosnmgr.cpp", 322, "FCN2OSN", "IS_GLONASS_FCN(cFcn)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_glofcnosnmgr.cpp", 322, "IS_GLONASS_FCN(cFcn)");
  }

  v8 = a2 + 7;
  v9 = this + 20 * (a2 + 7) + 432;
  if (*(this + 1249) == 1)
  {
    goto LABEL_3;
  }

  v11 = *(this + 2);
  v12 = *(v11 + 642);
  v13 = *(this + 276);
  if (v13 == -7200001 || v13 < v12)
  {
    if (*(this + 1108))
    {
      v14 = *(this + 1164);
      BlueFin::GlPeGloFcnOsnMgr::stCachedPositionAndTime::Update((this + 1104), *this, v11, a4, a5);
      if (v14)
      {
        goto LABEL_21;
      }
    }

    else
    {
      BlueFin::GlPeGloFcnOsnMgr::stCachedPositionAndTime::Update((this + 1104), *this, v11, a4, a5);
    }

    if (*(this + 1108) == 1 && *(this + 1164) == 1)
    {
      v15 = xmmword_298A319D0;
      v16 = (this + 452);
      v17 = vdupq_n_s64(2uLL);
      v18 = 14;
      do
      {
        if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xEuLL), v15)).u8[0])
        {
          *(v16 - 5) = -7200001;
        }

        if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xEuLL), *&v15)).i32[1])
        {
          *v16 = -7200001;
        }

        v15 = vaddq_s64(v15, v17);
        v16 += 10;
        v18 -= 2;
      }

      while (v18);
      for (i = 0; i != 384; i += 16)
      {
        *(this + i + 716) = -7200001;
      }
    }
  }

LABEL_21:
  v20 = v9[16] == 1 && *(v9 + 3) != 1;
  if (*v9 == v12)
  {
    if (*(v9 + 3) == 0 || v20)
    {
      v21 = 0;
    }

    else
    {
      v21 = v9[8];
    }

    *a3 = v21;
    return v21 != 0;
  }

  *v9 = v12;
  v22 = *(v9 + 3);
  if (v22)
  {
    if (v12 - *(v9 + 1) >= BlueFin::GlPeGloFcnOsnMgr::m_aulMaxFcnToOsnMs[v22])
    {
      *(v9 + 3) = 0;
    }

    else if (!v20)
    {
LABEL_3:
      *a3 = v9[8];
      return 1;
    }
  }

  v23 = *(this + 304);
  if (v23 == -7200001)
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    goto LABEL_50;
  }

  if (v12 - v23 >= 0x1B7740)
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    *(this + 304) = -7200001;
    goto LABEL_50;
  }

  *(this + 712) = 1;
  BlueFin::GlPeGloFcnOsnMgr::GetPossibleOsnsForFcn(this, a2, &v76, v77);
  *(this + 712) = 0;
  v25 = v76;
  if (v76)
  {
    v27 = *(this + 305);
    v24 = v77[0];
    if ((v27 >> v76))
    {
      if (!v77[0] || ((v27 >> v77[0]) & 1) == 0)
      {
        goto LABEL_96;
      }

      goto LABEL_49;
    }
  }

  else
  {
    v24 = v77[0];
  }

  if (!v24)
  {
LABEL_49:
    v26 = 1;
    goto LABEL_50;
  }

  v28 = *(this + 305);
  if (((v28 >> v24) & 1) != 0 && (!v76 || ((v28 >> v76) & 1) == 0))
  {
    LOBYTE(v25) = v24;
LABEL_96:
    *(v9 + 3) = 3;
    v9[8] = v25;
    *(v9 + 1) = v12;
    *a3 = v25;
    return 1;
  }

  v26 = 1;
LABEL_50:
  if (v9[16] == 1)
  {
    goto LABEL_94;
  }

  *(v9 + 1) = v12;
  if ((*(this + 1164) & 1) == 0)
  {
    goto LABEL_94;
  }

  if ((v26 & 1) == 0)
  {
    *(this + 712) = 1;
    BlueFin::GlPeGloFcnOsnMgr::GetPossibleOsnsForFcn(this, a2, &v76, v77);
    *(this + 712) = 0;
    v25 = v76;
    v24 = v77[0];
  }

  if (!(v25 | v24))
  {
    goto LABEL_94;
  }

  v29 = &v76;
  v30 = 1;
  do
  {
    v31 = v30;
    v32 = *v29;
    if (*v29)
    {
      LOBYTE(v60) = *v29;
      v33 = (*(**(this + 1) + 112))(*(this + 1), &v60, 1);
      if (v33)
      {
        v34 = v33;
        if ((*(*v33 + 152))(v33) == 1 && (BlueFin::GlPeEphemeris::isExpired(v34, this + 1168) & 1) == 0)
        {
          v9[8] = v32;
          if ((*(*v34 + 184))(v34))
          {
            v9[16] = 0;
            v54 = 1;
          }

          else
          {
            v54 = 2;
          }

          goto LABEL_104;
        }
      }
    }

    v30 = 0;
    v29 = v77;
  }

  while ((v31 & 1) != 0);
  if ((*(this + 1108) & 1) == 0)
  {
LABEL_94:
    result = 0;
    *a3 = 0;
    return result;
  }

  v35 = *(this + 290) / 0x12Cu;
  if (v35 >= 4)
  {
    v35 = 4;
  }

  v36 = BlueFin::GlPeGloFcnOsnMgr::FCN2OSN(signed char,unsigned char &)const::scMaskAngles[v35];
  v37 = &v76;
  v38 = 1;
  while (1)
  {
    v39 = v38;
    v40 = *v37;
    if (*v37)
    {
      break;
    }

LABEL_93:
    v38 = 0;
    v37 = v77;
    if ((v39 & 1) == 0)
    {
      goto LABEL_94;
    }
  }

  v57 = v38;
  v75 = *v37;
  v74 = 0;
  memset(v72, 0, sizeof(v72));
  v73 = 0;
  v41 = (*(**(this + 1) + 112))(*(this + 1), &v75, 1);
  v42 = v41;
  if (v41)
  {
    if (BlueFin::GlPeEphemeris::isExpired(v41, this + 1168))
    {
      LODWORD(v42) = 0;
    }

    else
    {
      if ((v42[8] & 0xF) == 1 && (*(*v42 + 208))(v42, 4) == -8)
      {
        BlueFin::GlPeGloEphMgr::SetEphFcn(*(this + 1), &v75, a2);
      }

      v56 = (*(*v42 + 112))(v42, this + 1168, v72, 0.0);
      if ((*(*v42 + 152))(v42) - 1 > 1)
      {
        LODWORD(v42) = 0;
      }

      else
      {
        LODWORD(v42) = (*(*v42 + 184))(v42);
      }

      if (v56)
      {
        goto LABEL_91;
      }
    }
  }

  v70 = 7;
  v71 = 0;
  v60 = NAN;
  v61 = 0;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0;
  v62 = 0;
  v68 = -1;
  v69 = 0;
  if (!BlueFin::GlPeAlmMgr::GetAlm(*this + 34112, 2u, v75, &v60, 1, 1))
  {
    goto LABEL_92;
  }

  BlueFin::GlPeAlmanac::GetToa(&v60, (this + 1200), v58, v43, v44);
  v45 = *(this + 302);
  v46 = *(this + 303);
  if (v59)
  {
    v48 = v46 - HIDWORD(v59);
    if (__PAIR64__(v46, v45) < v59)
    {
      v51 = HIDWORD(v59) - v46;
      v49 = v59 >= v45;
      v45 = v59 - v45;
      v52 = !v49;
      v46 = v51 - v52;
      v47 = 1;
    }

    else
    {
      v47 = 0;
      v49 = v45 >= v59;
      v45 -= v59;
      v50 = !v49;
      v46 = v48 - v50;
    }
  }

  else
  {
    v47 = 0;
  }

  v53 = v45 * 2.32830644e-10 + v46;
  if ((v47 & ((v46 | v45) != 0)) != 0)
  {
    v53 = -v53;
  }

  if (!BlueFin::GlPeAlmMgr::GetSatPos(v53, *this + 34112, &v60, v72, 0))
  {
    goto LABEL_92;
  }

LABEL_91:
  v60 = -90.0;
  (*(**(this + 3) + 80))(*(this + 3), v72, this + 1136, this + 1112, 0, 0, 0, &v60);
  if (v60 <= v36)
  {
LABEL_92:
    v39 = v57;
    goto LABEL_93;
  }

  v9[8] = v40;
  if (v42 && *(this + 290) <= 9u)
  {
    *(v9 + 3) = 1;
    v9[16] = 0;
    goto LABEL_105;
  }

  v54 = 3;
LABEL_104:
  *(v9 + 3) = v54;
LABEL_105:
  BlueFin::GlPeGloFcnOsnMgr::checkForDuplicateOsns(this, v12, v8);
  v55 = *(v9 + 3);
  if (v55)
  {
    if (v55 != 1 && (v9[16] & 1) != 0)
    {
      LOBYTE(v55) = 0;
      goto LABEL_109;
    }

    LOBYTE(v55) = v9[8];
    result = 1;
  }

  else
  {
LABEL_109:
    result = 0;
  }

  *a3 = v55;
  return result;
}

uint64_t BlueFin::GlMeUserDynamic::Debounce(uint64_t result, int a2)
{
  v3 = result;
  v4 = *(result + 44);
  if (v4 != a2)
  {
    *(result + 40) = 0;
    goto LABEL_7;
  }

  v5 = *(result + 40);
  if (v5 > 2 || (*(result + 40) = v5 + 1, v5 != 2))
  {
LABEL_7:
    if (v4 != 4)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (*(result + 8) == a2)
  {
    goto LABEL_10;
  }

LABEL_8:
  *(result + 8) = a2;
  result = *(result + 56);
  if (result)
  {
    result = (*(*result + 24))(result, 1);
  }

LABEL_10:
  *(v3 + 44) = a2;
  return result;
}

void BlueFin::GlMeSrdAsicUnitConverter::CalcPpuToEswAidingFrequency(BlueFin::GlMeSrdAsicUnitConverter *this, float a2, const BlueFin::GlSignalId *a3)
{
  if (*(this + 4) >= 0x23Fu)
  {
    v10 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 807, "GetChipsPerSec", "IsValid()");
    v11 = 807;
    goto LABEL_14;
  }

  v4 = BlueFin::GlSvId::s_aucSvId2gnss[*this];
  v5 = *(this + 1);
  if (BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[7 * v5 + v4])
  {
    v6 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v5 - v5 + v4] == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v10 = "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 815, "GetChipsPerSec", "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0");
    v11 = 815;
LABEL_14:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v11, v10);
  }

  if (v5 != 2)
  {
    BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v5 - v5 + v4];
  }

  BlueFin::GlMeSrdAsicUnitConverter::PpuToHz(this, a2, a3);
  v9 = *(this + 1);
  if (v9 == 2 || BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v9 - v9 + BlueFin::GlSvId::s_aucSvId2gnss[*this]] == 4)
  {
    BlueFin::GlMeSrdAsicUnitConverter::PpuToHz(this, a2, v8);
  }
}

uint64_t BlueFin::GlMeSatAidMgr::SetSatAidInfo(BlueFin::GlMeSatAidMgr *this, const BlueFin::GlSatAidInfo *a2)
{
  BlueFin::GlMeMeasSelfAidFilter::SetSatAidInfo(a2, a2);
  v4 = *(this + 1116);
  bzero(v4, ((4 * *(this + 8936) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  v5 = *(a2 + 1101);
  v6 = 91;
  do
  {
    if (*v5 && (~*(v5 + 6) & 0x12) == 0)
    {
      *&v4[(*v5 >> 3) & 0x1C] |= 1 << *v5;
    }

    v5 += 96;
    --v6;
  }

  while (v6);

  return BlueFin::GlSatAidInfo::operator=(this, a2);
}

void BlueFin::GlMeMeasSelfAidFilter::SetSatAidInfo(BlueFin::GlMeMeasSelfAidFilter *this, const BlueFin::GlSatAidInfo *a2)
{
  bzero(BlueFin::GlMeMeasSelfAidFilter::m_otPeAidSigLst, ((4 * byte_2A18BA4C0 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  v3 = BlueFin::GlMeMeasSelfAidFilter::m_otPeAidSigLst;
  v4 = *(this + 1101) + 12;
  v5 = BlueFin::GlMeMeasSelfAidFilter::m_otSelfAidSigLst;
  v6 = 91;
  do
  {
    v7 = *(v4 - 12);
    if (*(v4 - 12) && (*(v4 + 12) & 0x10) != 0)
    {
      v8 = v7 - 189;
      if (*v4 == 6)
      {
        if (v8 < 0xFFFFFF44 || (v9 = BlueFin::GlSvId::s_aucSvId2gnss[*(v4 - 12)], v10 = v5, BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v9] == 255))
        {
          v11 = 575;
          v10 = v5;
LABEL_12:
          *(v10 + 4 * (v11 >> 5)) |= 1 << v11;
          goto LABEL_13;
        }
      }

      else if (v8 < 0xFFFFFF44 || (v9 = BlueFin::GlSvId::s_aucSvId2gnss[*(v4 - 12)], v10 = v3, BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v9] == 255))
      {
        v11 = 575;
        v10 = v3;
        goto LABEL_12;
      }

      v11 = (BlueFin::GlSignalId::s_ausGnss2signalId[v9] + v7 - BlueFin::GlSvId::s_aucGnss2minSvId[v9]);
      goto LABEL_12;
    }

LABEL_13:
    v4 += 96;
    --v6;
  }

  while (v6);
}

double BlueFin::GlSystemTime::getSubBitAndEpochTime(BlueFin::GlSystemTime *this, const BlueFin::GlSignalId *a2, unsigned __int8 a3)
{
  EpochPerBit = BlueFin::GlSignalId::GetEpochPerBit(a2);
  if (*(a2 + 4) >= 0x23Fu)
  {
    v9 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
    v10 = 679;
    goto LABEL_8;
  }

  if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a2 + 1) - *(a2 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a2]])
  {
    v9 = "ucMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
    v10 = 686;
LABEL_8:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v10, v9);
  }

  v7 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a2 + 1) - *(a2 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a2]] * EpochPerBit;
  result = *this - ((*this * dbl_298A3A520[*this < 0.0]) / v7 * v7) * dbl_298A3A510[*this < 0.0];
  if ((a3 & (result < 0.0)) != 0)
  {
    return result + v7 * 0.001;
  }

  return result;
}

unsigned __int8 *BlueFin::GlMeSatAidMgr::GetAidSvLstBySrc@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 12) = 0u;
  v5 = a3 + 12;
  *a3 = a3 + 12;
  *(a3 + 8) = 8;
  *(a3 + 28) = 0u;
  v12 = *(a1 + 8936);
  memcpy(v16, *(a1 + 8928), 4 * v12);
  v14 = 0;
  v13 = 0;
  v15 = v16[0];
  result = BlueFin::GlSetIterator::operator++(&v12);
  if (v13 != v12)
  {
    v7 = *(a1 + 8808);
    v8 = *v7;
    v9 = *a2;
    do
    {
      v10 = v7;
      if (v8 != v14)
      {
        v10 = v7;
        do
        {
          v11 = v10[96];
          v10 += 96;
        }

        while (v11 != v14);
      }

      if ((v9 >> *(v10 + 6)))
      {
        *(v5 + ((v14 >> 3) & 0x1C)) |= 1 << v14;
      }

      result = BlueFin::GlSetIterator::operator++(&v12);
    }

    while (v13 != v12);
  }

  return result;
}

uint64_t BlueFin::GlPeKF::GetResetSignalIdSet@<X0>(BlueFin::GlPeKF *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 12) = 0u;
  v4 = (a2 + 12);
  *a2 = a2 + 12;
  *(a2 + 8) = 19;
  *(a2 + 28) = 0u;
  *(a2 + 44) = 0u;
  *(a2 + 60) = 0u;
  *(a2 + 72) = 0u;
  if (*(this + 1152) >= 5 && *(this + 192) >= 0xEA61u)
  {
    BlueFin::GlSetBase::operator=(a2, this + 1160);
    v6 = *(this + 1220);
    v4[2] = *(this + 1204);
    v4[3] = v6;
    *(v4 + 60) = *(this + 77);
    v7 = *(this + 1188);
    *v4 = *(this + 1172);
    v4[1] = v7;
    *(this + 1152) = 0;
    bzero(*(this + 145), ((4 * *(this + 1168) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  }

  BlueFin::GlSetBase::operator|=(a2, this + 1248);
  bzero(*(this + 156), ((4 * *(this + 1256) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  BlueFin::GlSetBase::operator|=(a2, this + 1424);
  bzero(*(this + 178), ((4 * *(this + 1432) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  result = BlueFin::GlPeKF::InFlightMode(this);
  if (result)
  {
    v9 = (this + 61072);
    if ((*(this + 61481) & 1) == 0)
    {
      BlueFin::GlSetBase::GlSetBase(v10, v11, 0x13u, this + 7652);
      v13 = &v15;
      v14 = 19;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      memset(v18, 0, sizeof(v18));
      BlueFin::GlSetBase::OperatorBinaryInversion(v10, &v13);
      BlueFin::GlSetBase::operator=(v10, &v13);
      v11[1] = v16;
      v11[2] = v17;
      *v12 = *v18;
      *&v12[12] = *&v18[12];
      v11[0] = v15;
      BlueFin::GlSignalIdSet::setSignalIdLimits(v10);
      BlueFin::GlSetBase::operator|=(a2, v10);
    }

    result = *v9;
    if (*v9)
    {
      return (*(*result + 96))(result, 84, 0.0);
    }
  }

  return result;
}

float BlueFin::GlPeAsstMgr::ComputeElevation(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, __int128 *a5, int8x16_t a6, int8x16_t a7)
{
  v15 = 7;
  v16 = 0;
  BlueFin::GlPeSvIdConverter::SvId2Gnss((a1 + 119744), a2, &v15, a6, a7);
  v13 = v15;
  v14 = v16;
  if (v16 - 1 > 0x3E)
  {
    return -90.0;
  }

  v15 = 0;
  v11 = BlueFin::GlPeAsstMgr::computeAzElCommon(a1, &v13, a4, a5, a3, 0, &v15);
  result = *&v15;
  if (!v11)
  {
    return -90.0;
  }

  return result;
}

void BlueFin::GlPeGloFcnOsnMgr::stCachedPositionAndTime::Update(BlueFin::GlPeGloFcnOsnMgr::stCachedPositionAndTime *this, const BlueFin::GlPeAsstMgr *a2, const BlueFin::GlPeTimeManager *a3, int8x16_t a4, int8x16_t a5)
{
  v7 = a2 + 118784;
  v8 = *(a3 + 642);
  if (*(a2 + 120021))
  {
    goto LABEL_20;
  }

  *(this + 4) = 0;
  if (*(a2 + 25) != -1)
  {
    AgeS = BlueFin::stTimeOfAsstPos::GetAgeS((a2 + 112), *(a2 + 44), a4, a5);
    if (AgeS >> 6 <= 0x2A2)
    {
      *v11.i64 = AgeS / 3600.0 * 150.0;
      *v13.i64 = *v11.i64 + trunc(*v11.i64 * 2.32830644e-10) * -4294967300.0;
      v14.f64[0] = NAN;
      v14.f64[1] = NAN;
      v15 = vnegq_f64(v14);
      v13.i64[0] = vbslq_s8(v15, v13, v11).u64[0];
      if (*v11.i64 > 4294967300.0)
      {
        v11.i64[0] = v13.i64[0];
      }

      if (*v11.i64 < -4294967300.0)
      {
        *v12.i64 = -*v11.i64;
        *v11.i64 = -(*v11.i64 - trunc(*v11.i64 * -2.32830644e-10) * -4294967300.0);
        *v11.i64 = -*vbslq_s8(v15, v11, v12).i64;
      }

      if (*v11.i64 < 0.0)
      {
        v16 = --*v11.i64;
      }

      else
      {
        v16 = *v11.i64;
      }

      if (v16 <= 1)
      {
        v16 = 1;
      }

      *(this + 14) = v16;
      if (*(a2 + 25) == -1)
      {
        DeviceFaultNotify("glpe_glofcnosnmgr.cpp", 1111, "Update", "bGotXYZ");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_glofcnosnmgr.cpp", 1111, "bGotXYZ");
      }

      *(this + 4) = *(a2 + 18);
      *(this + 5) = *(a2 + 19);
      *(this + 6) = *(a2 + 20);
      *(this + 8) = *(a2 + 168);
      *(this + 3) = *(a2 + 23);
      *(this + 4) = 1;
LABEL_17:
      if (v16 < 0x3E9)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }

    if (*(this + 4))
    {
      v16 = *(this + 14);
      goto LABEL_17;
    }
  }

LABEL_18:
  if (v7[1168] == 1)
  {
    v17 = *(v7 + 152);
    v18 = *(v7 + 149);
    v19 = *(v7 + 306);
    *(this + 2) = *(v7 + 75);
    *(this + 6) = v17;
    *(this + 8) = *(v7 + 1176);
    *(this + 3) = v18;
    *(this + 14) = v19 / 0x3E8;
    *(this + 4) = 1;
  }

LABEL_20:
  *(this + 60) = 0;
  if (*(a3 + 644))
  {
    *(this + 60) = 1;
    BlueFin::GlPeTimeManager::GetTime(a3, v8, 1, &v20);
    if ((this + 64) != &v20)
    {
      *(this + 8) = v20;
      *(this + 18) = v21;
      *(this + 5) = v22;
    }

    v20 = &off_2A1F0B5F0;
    v21 = 0;
    BlueFin::GlPeGnssTime::GetGps((this + 64), &v20);
    *(this + 13) = v21;
  }

  if (*(this + 4) == 1 && *(this + 60) == 1)
  {
    *this = v8;
  }
}

unint64_t BlueFin::GlDineCtrl::SetSignalAiding(BlueFin::GlDineCtrl *this, const BlueFin::GlMeSignalAidInfo *a2)
{
  GlCustomLog(15, "GlDineCtrl::SetSignalAiding(%d)\n", *(a2 + 7));
  (*(*(this + 3647) + 16))(this + 29176, a2);

  return BlueFin::GlMeSrdCtrlSm::SetSignalAiding((this + 75168), a2);
}

uint64_t (*BlueFin::GlMeSrdAcqMgrSm::first_fix(BlueFin::GlMeSrdAcqMgrSm **this, unsigned __int8 *a2))()
{
  v3 = (this + 3072);
  v4 = *a2;
  result = BlueFin::QHsm::top;
  if (v4 <= 0x40)
  {
    if (v4 == 2)
    {
      v3[420] = 0;
      BlueFin::GlMeSrdSearchMgrBase::SetStrategyId((this + 1506), 250, 250, 0xFAu, 0xFAu, 0xFAu, 0xFAu, 250, 0xFAu, 1);
      BlueFin::GlMeSrdAcqMgrSm::LimitOneTrackPerSv(this[6], 0);
      v3[476] = 1;
    }

    else
    {
      if (v4 != 3)
      {
        return result;
      }

      BlueFin::GlMeSrdAcqMgrSm::LimitOneTrackPerSv(this[6], 1);
      v3[476] = 0;
    }

    BlueFin::GlMeSrdSearchMgrBase::SetStrategyId((this + 1623), 25, 46, 0x3Bu, 0x3Cu, 0x47u, 0xFAu, 84, 0x3Bu, 1);
  }

  else
  {
    if (v4 == 65 || v4 == 67)
    {
      if ((BlueFin::GlMeSrdAcqMgrSm::IsFirstFix(this) & 1) != 0 || (v3[380] & 0x22) == 0)
      {
        BlueFin::GlMeSrdAcqMgrSm::UpdateSmFirstFixStates(this);
        return 0;
      }
    }

    else
    {
      if (v4 != 70)
      {
        return result;
      }

      if ((BlueFin::GlMeSrdAcqMgrSm::IsFirstFix(this) & 1) != 0 || (v3[380] & 0x22) == 0)
      {
        return 0;
      }
    }

    BlueFin::GlMeSrdAcqMgrSm::UpdateSmContinuousTrackStates(this);
  }

  return 0;
}

uint64_t BlueFin::GlPeRtiRequestHelper::OnHeartBeat(BlueFin::GlPeRtiRequestHelper *this, int a2)
{
  v2 = *(this + 5);
  v3 = (a2 - v2) / 0x3E8u;
  *(this + 5) = v2 + 1000 * v3;
  if (*(this + 24) == 1)
  {
    v4 = *(this + 44);
    if (__CFADD__(v4, v3))
    {
      v5 = 0;
      *(this + 24) = 0;
      *(this + 40) = 0u;
      *(this + 56) = 0u;
      *(this + 72) = 0u;
      *(this + 88) = 0u;
      *(this + 104) = 0u;
      *(this + 120) = 0u;
      *(this + 136) = 0u;
      *(this + 152) = 0u;
      *(this + 164) = 0u;
    }

    else
    {
      *(this + 44) = v4 + v3;
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  if ((*(this + 9) & 1) == 0)
  {
    *(this + 4) = 257;
  }

  v6 = *(this + 11) == 1 && (a2 - *(this + 4)) < *(this + 3);
  v7 = 0;
  if (*(this + 8) == 1 && !v6)
  {
    if (v5 && *(this + 44) < *(this + 46))
    {
      *(this + 8) = 0;
      return 2;
    }

    else
    {
      if (*(this + 11))
      {
        *(this + 3) = (2 * (*(this + 3) & 0x7FFFFF)) | 1;
      }

      v7 = 1;
      *(this + 11) = 1;
      *(this + 4) = a2;
    }
  }

  return v7;
}

double BlueFin::GlMeSkfCb::NoMsmtAvail(BlueFin::GlMeSkfCb *this, unsigned int a2, double a3, double a4)
{
  LODWORD(a4) = *(this + 12);
  v6 = (a2 - *&a4) * 0.001;
  v17 = *(this + 1) - v6 * *(*(this + 12) + 8);
  v14[0] = 1;
  v15 = 0;
  v16 = 0;
  *(this + 1) = BlueFin::GlSystemTime::getSubBitAndEpochTime(&v17, v14, 1u);
  v7 = *(this + 3);
  v8 = sqrtf(v7);
  v9 = v6;
  v10 = fabsf(v9);
  v11 = *(*(this + 12) + 24);
  v12 = sqrtf(v11);
  result = (v8 + (v10 * v12)) * (v8 + (v10 * v12));
  *(this + 3) = result;
  *(this + 12) = a2;
  return result;
}

uint64_t BlueFin::GlMeClkModMgr::SetClkModFromNoMsmt(BlueFin::GlMeClkModMgr *this, BlueFin::GlMeClkMod *a2)
{
  v4 = 84;
  if ((*(a2 + 2) & 0x10) == 0)
  {
    v4 = 70;
  }

  GlCustomLog(127, "SetClkModFromNoMsmt:%f,%c\n", (*(a2 + 5) * 1000000000.0), v4);

  return BlueFin::GlMeClkModMgr::SetClkMod(this, a2, 0);
}

uint64_t BlueFin::GlMeSrdAcqMgrSm::UpdateSvidControl(const void **this)
{
  v2 = (this + 2560);
  if (BlueFin::GlMeSrdAcqMgrSm::IsFirstFix(this))
  {
    BlueFin::GlSetBase::GlSetBase(&v45, v50, 8u, this + 2896);
    v52 = &v53[4];
    v53[0] = 8;
    *&v53[4] = xmmword_298A3244C;
    *&v53[20] = unk_298A3245C;
    BlueFin::GlSvIdSet::operator~(&v52, &v28);
    BlueFin::GlSetBase::operator&=(&v45, &v28);
    BlueFin::GlMeSrdSatMgr::SetBitHistogramEnabled((this + 440), &v45);
    v80 = &v82;
    v81 = 8;
    v82 = 0u;
    v83 = 0u;
    v76 = &v78;
    v77 = 8;
    v78 = 0u;
    v79 = 0u;
    v72 = &v74;
    v73 = 8;
    v74 = 0u;
    v75 = 0u;
    v68 = &v70;
    v69 = 8;
    v70 = 0u;
    v71 = 0u;
    v64 = &v66;
    v65 = 8;
    v66 = 0u;
    v67 = 0u;
    v60 = &v62;
    v61 = 8;
    v62 = 0u;
    v63 = 0u;
    LOBYTE(v28) = v2[2696];
    memcpy(v29, this[2896], 4 * v28);
    WORD1(v28) = 0;
    BYTE1(v28) = 0;
    HIDWORD(v28) = v29[0];
    BlueFin::GlSetIterator::operator++(&v28);
    if (BYTE1(v28) != v28)
    {
      v3 = this[2926];
      v4 = this[2932];
      v5 = this[2938];
      v6 = this[2914];
      v7 = this[2920];
      do
      {
        v8 = BYTE2(v28) >> 5;
        v9 = 1 << (BYTE2(v28) & 0x1F);
        v10 = 1 << (BYTE2(v28) & 0x1F);
        if ((v9 & v3[v8]) != 0)
        {
          v11 = this[2908];
          if (BYTE2(v28) - 139 > 0x23 || (v9 & v11[v8]) != 0)
          {
            *(&v78 + v8) |= v10;
            if ((v9 & v11[v8]) != 0)
            {
              *(&v82 + v8) |= v10;
            }
          }
        }

        if ((v9 & v4[v8]) != 0)
        {
          *(&v74 + v8) |= v10;
        }

        if ((v9 & v5[v8]) != 0)
        {
          *(&v70 + v8) |= v10;
        }

        if ((v9 & v6[v8]) != 0)
        {
          *(&v66 + v8) |= v10;
        }

        if ((v9 & v7[v8]) != 0)
        {
          *(&v62 + v8) |= v10;
        }

        BlueFin::GlSetIterator::operator++(&v28);
      }

      while (BYTE1(v28) != v28);
    }

    BlueFin::GlMeSrdSatMgr::SetDataFrmsEnabled((this + 440), &v80);
    BlueFin::GlMeSrdSatMgr::SetDataBitsEnabled((this + 440), &v76);
    BlueFin::GlMeSrdSatMgr::SetL2Enabled((this + 440), &v72);
    BlueFin::GlMeSrdSatMgr::SetL5Enabled((this + 440), &v68);
    BlueFin::GlMeSrdSatMgr::SetB1CEnabled((this + 440), &v64);
    v12 = (this + 440);
    v13 = &v60;
  }

  else
  {
    v80 = &v82;
    v81 = 8;
    v82 = 0u;
    v83 = 0u;
    v76 = &v78;
    v77 = 8;
    v78 = 0u;
    v79 = 0u;
    v72 = &v74;
    v73 = 8;
    v74 = 0u;
    v75 = 0u;
    v68 = &v70;
    v69 = 8;
    v70 = 0u;
    v71 = 0u;
    v64 = &v66;
    v65 = 8;
    v66 = 0u;
    v67 = 0u;
    v60 = &v62;
    v61 = 8;
    v62 = 0u;
    v63 = 0u;
    v57 = v59;
    v58 = 8;
    memset(v59, 0, 32);
    v52 = &unk_2A1F0E1A0;
    *v53 = 0;
    *&v53[8] = 0x36A7C5AC00000000;
    *&v53[16] = 0;
    *&v53[32] = 0;
    *&v53[24] = 2139095039;
    v54 = 2139095039;
    v55 = 0;
    v56 = 0x36A7C5AC7F7FFFFFLL;
    (*(*this[5] + 96))(this[5], &v52, *(v2 + 670));
    v51 = 0;
    v14 = (*(*this[5] + 16))(this[5], *(v2 + 670), &v51);
    v45 = v2[2696];
    memcpy(&v49, this[2896], 4 * v45);
    v47 = 0;
    v46 = 0;
    v48 = v49;
    BlueFin::GlSetIterator::operator++(&v45);
    while (v46 != v45)
    {
      v15 = v47;
      v28 = &off_2A1F0E398;
      LOBYTE(v29[0]) = 0;
      v29[1] = -1;
      v30 = 575;
      v31 = 0;
      v32 = 0;
      HIDWORD(v16) = 0;
      v33 = xmmword_298A339D0;
      v34 = 2139095039;
      v35 = 0;
      v36 = 2139095039;
      v37 = 0;
      v38 = 0x7FEFFFFFFFFFFFFFLL;
      v39 = -1;
      v40 = -1;
      v42 = 0;
      v43 = 0;
      v41 = 0;
      v44 = 0;
      v25[0] = v47;
      v26 = 0;
      v27 = 575;
      if (v47 - 189 >= 0xFFFFFF44)
      {
        v17 = BlueFin::GlSvId::s_aucSvId2gnss[v47];
        if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v17] == 255)
        {
          v26 = -1;
        }

        else
        {
          v27 = BlueFin::GlSignalId::s_ausGnss2signalId[v17] + v47 - BlueFin::GlSvId::s_aucGnss2minSvId[v17];
        }
      }

      v24 = v14;
      v18 = v47 >> 5;
      v19 = 1 << (v47 & 0x1F);
      v20 = 1 << (v47 & 0x1F);
      if ((v19 & *(this[2926] + v18)) != 0)
      {
        if (v47 - 52 <= 0xD)
        {
          v24 = v14 & ((v51 & 0x80) >> 7);
        }

        v21 = this[5];
        LODWORD(v16) = *(v2 + 670);
        v23 = 0;
        (*(*v21 + 24))(v21, v25, &v28, &v23, &v52, &v24, v16, 0.0, 0.0);
        if ((v15 - 76) >= 0x3F && (v32 & 8) == 0)
        {
          *(v80 + v18) |= v20;
        }

        if (((v19 & *(this[2902] + v18)) != 0 || (v32 & 0x100) == 0) && ((v15 - 139) > 0x23 || (v19 & *(this[2908] + v18)) != 0))
        {
          *(v76 + v18) |= v20;
        }

        if ((v19 & *(this[2908] + v18)) != 0)
        {
          *(v72 + v18) |= v20;
        }
      }

      if ((v19 & *(this[2932] + v18)) != 0)
      {
        *(v68 + v18) |= v20;
      }

      if ((v19 & *(this[2938] + v18)) != 0)
      {
        *(v64 + v18) |= v20;
      }

      if ((v19 & *(this[2914] + v18)) != 0)
      {
        *(v60 + v18) |= v20;
      }

      if ((v19 & *(this[2920] + v18)) != 0)
      {
        *&v57[4 * v18] |= v20;
      }

      BlueFin::GlSetIterator::operator++(&v45);
    }

    BlueFin::GlMeSrdSatMgr::SetBitHistogramEnabled((this + 440), &v80);
    BlueFin::GlMeSrdSatMgr::SetDataBitsEnabled((this + 440), &v76);
    BlueFin::GlMeSrdSatMgr::SetDataFrmsEnabled((this + 440), &v72);
    BlueFin::GlMeSrdSatMgr::SetL2Enabled((this + 440), &v68);
    BlueFin::GlMeSrdSatMgr::SetL5Enabled((this + 440), &v64);
    BlueFin::GlMeSrdSatMgr::SetB1CEnabled((this + 440), &v60);
    v12 = (this + 440);
    v13 = &v57;
  }

  BlueFin::GlMeSrdSatMgr::SetL1CEnabled(v12, v13);
  return BlueFin::GlMeSrdSatMgr::SetGridIqDumpEnabled((this + 440), this + 3132);
}

__n128 BlueFin::GlMeSrdSatMgr::SetDataBitsEnabled(BlueFin::GlMeSrdSatMgr *this, const BlueFin::GlSvIdSet *a2)
{
  if (!BlueFin::GlSetBase::operator==(a2, this + 552))
  {
    *(this + 6296) = 1;
    BlueFin::GlSetBase::operator=(this + 552, a2);
    result = *(a2 + 12);
    v5 = *(a2 + 28);
    *(this + 564) = result;
    *(this + 580) = v5;
  }

  return result;
}

unint64_t BlueFin::GlMeSrdSatMgr::SetL2Enabled(BlueFin::GlMeSrdSatMgr *this, const BlueFin::GlSvIdSet *a2)
{
  result = BlueFin::GlSetBase::operator==(a2, this + 696);
  if ((result & 1) == 0)
  {
    result = BlueFin::GlSetBase::operator=(this + 696, a2);
    v5 = *(a2 + 28);
    *(this + 708) = *(a2 + 12);
    *(this + 724) = v5;
    if (BlueFin::GlUtils::m_ucEnabled)
    {

      return BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x4F);
    }
  }

  return result;
}

unsigned __int8 *BlueFin::GlMeSrdSatTrackMgr::UpdateState(BlueFin::GlMeSrdSatTrackMgr *this)
{
  v24 = *(this + 4248);
  memcpy(v28, *(this + 530), 4 * v24);
  v26 = 0;
  v25 = 0;
  v27 = v28[0];
  BlueFin::GlSetIterator::operator++(&v24);
  while (v25 != v24)
  {
    BlueFin::GlSatCarrId::GlSatCarrId(v22, v26);
    v2 = *this;
    BlueFin::GlMeSrdSatMgr::GetSignalId(*(this + 1), v22, v20);
    LODWORD(v3) = *(this + 1812);
    v4 = v3;
    v5 = (*(**(this + 3) + 992))();
    v6 = (*(*v2 + 40))(v2, v20, v5, v4);
    v7 = v22[0] + 100 * v23;
    v8 = this + 4560;
    if (v6)
    {
      *(*(this + 540) + 4 * (v7 >> 5)) |= 1 << v7;
      v8 = this + 4640;
    }

    BlueFin::GlSetBase::Remove(v8, v7);
    BlueFin::GlSetIterator::operator++(&v24);
  }

  v24 = *(this + 4088);
  memcpy(v28, *(this + 510), 4 * v24);
  v26 = 0;
  v25 = 0;
  v27 = v28[0];
  for (result = BlueFin::GlSetIterator::operator++(&v24); v25 != v24; result = BlueFin::GlSetIterator::operator++(&v24))
  {
    v10 = v26;
    BlueFin::GlMeSrdSatMgr::GetSvid(*(this + 1), v26, v20);
    if (v20[0] - 76 > 0x3E)
    {
LABEL_10:
      BlueFin::GlSatCarrId::GlSatCarrId(v22, v10, 0);
    }

    else
    {
      v11 = 0;
      while (BlueFin::GlMeSrdSatMgr::GetNumSignals(*(this + 1), v10) > v11)
      {
        if (!BlueFin::GlMeSrdSatMgr::GetSignalIndex(*(this + 1), v10, v11++))
        {
          goto LABEL_10;
        }
      }

      BlueFin::GlSatCarrId::GlSatCarrId(v22, v10, 0);
      BlueFin::GlSatCarrId::GlSatCarrId(v20, v10, 3);
      v22[0] = v20[0];
      v23 = v21;
    }

    BlueFin::GlMeSrdSatMgr::GetSvid(*(this + 1), v10, v20);
    if (v20[0] - 1 < 0x20 || (BlueFin::GlMeSrdSatMgr::GetSvid(*(this + 1), v10, &v19), v19 - 66 < 0xA))
    {
      v13 = 0;
      while (BlueFin::GlMeSrdSatMgr::GetNumSignals(*(this + 1), v10) > v13)
      {
        if (!BlueFin::GlMeSrdSatMgr::GetSignalIndex(*(this + 1), v10, v13++))
        {
          goto LABEL_19;
        }
      }

      BlueFin::GlSatCarrId::GlSatCarrId(v20, v10, 3);
      v22[0] = v20[0];
      v23 = v21;
    }

LABEL_19:
    if (*(this + 16 * BlueFin::GlMeSrdSatMgr::GetTrackChannel(*(this + 1), v22) + 16) >= 4u)
    {
      v15 = *this;
      BlueFin::GlMeSrdSatMgr::GetSignalId(*(this + 1), v22, v20);
      LODWORD(v16) = *(this + 1812);
      v17 = v16;
      v18 = (*(**(this + 3) + 992))();
      if (((*(*v15 + 40))(v15, v20, v18, v17) & 1) == 0)
      {
        *(*(this + 580) + 4 * ((v22[0] + 100 * v23) >> 5)) |= 1 << (v22[0] + 100 * v23);
      }
    }
  }

  return result;
}

unint64_t BlueFin::GlMeSrdSatTrackMgr::GetSetSatIdToKill@<X0>(BlueFin::GlMeSrdSatTrackMgr *this@<X0>, uint64_t a2@<X8>)
{
  BlueFin::GlSatCarrIdSet::GetSatIdSetAnyCarrier((this + 4640), a2);
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x57);
  }

  result = BlueFin::GlSatCarrIdSet::GetSatIdSetAnyCarrier((this + 4400), &v24);
  if (!*v24)
  {
    if (v25 < 2uLL)
    {
      return result;
    }

    v5 = v25 - 1;
    v6 = v24 + 1;
    while (!*v6++)
    {
      if (!--v5)
      {
        return result;
      }
    }
  }

  BlueFin::GlSatCarrIdSet::GetSatIdSetAnyCarrier((this + 4400), &v24);
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x57);
  }

  BlueFin::GlSatCarrIdSet::GetSatIdSetSignalIndex(this + 4000, 0, &v20);
  BlueFin::GlSatCarrIdSet::GetSatIdSetSignalIndex(this + 4000, 2, &v17);
  v24 = v26;
  v25 = 4;
  v26[1] = 0;
  v26[0] = 0;
  BlueFin::GlSetBase::OperatorBinaryAnd(&v20, &v24, &v17);
  BlueFin::GlSatCarrIdSet::GetSatIdSetSignalIndex(this + 4000, 2, &v17);
  BlueFin::GlSatCarrIdSet::GetSatIdSetSignalIndex(this + 4000, 3, &v13);
  v20 = &v22;
  v21 = 4;
  v23 = 0;
  v22 = 0;
  BlueFin::GlSetBase::OperatorBinaryAnd(&v17, &v20, &v13);
  BlueFin::GlSetBase::operator|=(&v24, &v20);
  BlueFin::GlSatCarrIdSet::GetSatIdSetAnyCarrier((this + 4400), &v17);
  v20 = &v22;
  v21 = 4;
  v23 = 0;
  v22 = 0;
  BlueFin::GlSetBase::OperatorBinaryAnd(&v24, &v20, &v17);
  BlueFin::GlSatCarrIdSet::GetSatIdSetSignalIndex(this + 4640, 0, &v13);
  BlueFin::GlSatCarrIdSet::GetSatIdSetSignalIndex(this + 4640, 2, &v9);
  v17 = v19;
  v18 = 4;
  v19[1] = 0;
  v19[0] = 0;
  BlueFin::GlSetBase::OperatorBinaryAnd(&v13, &v17, &v9);
  BlueFin::GlSatCarrIdSet::GetSatIdSetSignalIndex(this + 4640, 2, &v9);
  BlueFin::GlSatCarrIdSet::GetSatIdSetSignalIndex(this + 4640, 3, v8);
  v13 = &v15;
  v14 = 4;
  v16 = 0;
  v15 = 0;
  BlueFin::GlSetBase::OperatorBinaryAnd(&v9, &v13, v8);
  BlueFin::GlSetBase::operator|=(&v17, &v13);
  v9 = &v11;
  v10 = 4;
  v12 = 0;
  v11 = 0;
  BlueFin::GlSetBase::OperatorBinaryInversion(&v17, &v9);
  v13 = &v15;
  v14 = 4;
  v16 = 0;
  v15 = 0;
  BlueFin::GlSetBase::OperatorBinaryAnd(&v20, &v13, &v9);
  v9 = &v11;
  v10 = 4;
  v12 = 0;
  v11 = 0;
  BlueFin::GlSetBase::OperatorBinaryInversion(&v13, &v9);
  result = BlueFin::GlSetBase::operator&=(a2, &v9);
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    return BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x57);
  }

  return result;
}

unsigned __int8 *BlueFin::GlMeSrdAcqMgrSm::KillAndReleaseSatInPostSearch(unsigned __int8 *result, uint64_t a2)
{
  v3 = result;
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!*v4)
  {
    if (v5 < 2)
    {
      return result;
    }

    v7 = v5 - 1;
    v8 = v4 + 1;
    while (!*v8++)
    {
      if (!--v7)
      {
        return result;
      }
    }
  }

  v10 = v5;
  memcpy(v14, v4, 4 * v5);
  v12 = 0;
  v11 = 0;
  v13 = v14[0];
  for (result = BlueFin::GlSetIterator::operator++(&v10); v11 != v10; result = BlueFin::GlSetIterator::operator++(&v10))
  {
    v6 = v12;
    BlueFin::GlSetBase::Remove((v3 + 13920), v12);
    BlueFin::GlMeSrdSatMgr::KillSat((v3 + 3520), v6);
  }

  return result;
}

unsigned __int8 *BlueFin::GlMeSrdAcqMgrSm::KillAndReleaseSatInTrack(unsigned __int8 *result, uint64_t a2)
{
  v3 = result;
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!*v4)
  {
    if (v5 < 2)
    {
      return result;
    }

    v7 = v5 - 1;
    v8 = v4 + 1;
    while (!*v8++)
    {
      if (!--v7)
      {
        return result;
      }
    }
  }

  v10 = v5;
  memcpy(v14, v4, 4 * v5);
  *v12 = 0;
  v11 = 0;
  v13 = v14[0];
  for (result = BlueFin::GlSetIterator::operator++(&v10); v11 != v10; result = BlueFin::GlSetIterator::operator++(&v10))
  {
    v6 = v12[0];
    BlueFin::GlMeSrdSatTrackMgr::RemoveSat(v3 + 1794, v12[0]);
    BlueFin::GlMeSrdSatMgr::KillSat((v3 + 3520), v6);
  }

  return result;
}

BOOL BlueFin::GlBigArray::Has(BlueFin::GlBigArray *this, int a2)
{
  v2 = a2 - *(this + 14);
  if (v2 >= *(this + 15))
  {
    DeviceFaultNotify("glinc_array.h", 313, "EnsureValidHandle", "handle - m_usMinHandle < m_usNumHandles");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glinc_array.h", 313, "handle - m_usMinHandle < m_usNumHandles");
  }

  return *(*(this + 1) + 2 * v2) != -1;
}

unsigned __int8 *BlueFin::GlMeSrdSatTrackMgr::GetSetSvidListTrackingOrAided@<X0>(BlueFin::GlMeSrdSatTrackMgr *this@<X0>, uint64_t a2@<X8>)
{
  BlueFin::GlSetBase::GlSetBase(&v9, v10, 0x10u, this + 530);
  v17 = &v19;
  v18 = 16;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  BlueFin::GlSetBase::OperatorBinaryInversion(&v9, &v17);
  BlueFin::GlSetBase::operator=(&v9, &v17);
  v10[0] = v19;
  v10[1] = v20;
  v10[2] = v21;
  v10[3] = v22;
  BlueFin::GlSetBase::GlSetBase(&v11, v12, 0x10u, this + 500);
  v17 = &v19;
  v18 = 16;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(&v11, &v17, &v9);
  BlueFin::GlSetBase::operator=(&v11, &v17);
  v12[0] = v19;
  v12[1] = v20;
  v12[2] = v21;
  v12[3] = v22;
  BlueFin::GlSetBase::GlSetBase(&v13, v14, 0x10u, &v11);
  v17 = &v19;
  v18 = 16;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  BlueFin::GlSetBase::OperatorBinaryOr(&v13, &v17, this + 540);
  BlueFin::GlSetBase::operator=(&v13, &v17);
  v14[0] = v19;
  v14[1] = v20;
  v14[2] = v21;
  v14[3] = v22;
  BlueFin::GlSetBase::GlSetBase(&v7, v8, 0x10u, this + 580);
  v17 = &v19;
  v18 = 16;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  BlueFin::GlSetBase::OperatorBinaryInversion(&v7, &v17);
  BlueFin::GlSetBase::operator=(&v7, &v17);
  v8[0] = v19;
  v8[1] = v20;
  v8[2] = v21;
  v8[3] = v22;
  v4 = BlueFin::GlSetBase::GlSetBase(v15, v16, 0x10u, &v13);
  v17 = &v19;
  v18 = 16;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(v4, &v17, &v7);
  v5 = BlueFin::GlSetBase::operator=(v15, &v17);
  v16[0] = v19;
  v16[1] = v20;
  v16[2] = v21;
  v16[3] = v22;
  BlueFin::GlSatCarrIdSet::GetSatIdSetPrimaryCarrier(v5, &v17);
  if ((*(**(this + 3) + 264))())
  {
    BlueFin::GlSatCarrIdSet::GetSatIdSetAnyCarrier(v15, &v13);
    BlueFin::GlSetBase::operator=(&v17, &v13);
    v19 = v14[0];
  }

  return BlueFin::GlMeSrdSatMgr::GetSvidSetFromSatidSet(*(this + 1), &v17, a2);
}

unsigned __int8 *BlueFin::GlSatCarrIdSet::GetSatIdSetPrimaryCarrier@<X0>(BlueFin::GlSatCarrIdSet *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 12) = 0;
  *a2 = a2 + 12;
  *(a2 + 8) = 4;
  *(a2 + 20) = 0;
  v7 = *(this + 8);
  memcpy(v11, *this, 4 * v7);
  v9 = 0;
  v8 = 0;
  v10 = v11[0];
  for (result = BlueFin::GlSetIterator::operator++(&v7); v8 != v7; result = BlueFin::GlSetIterator::operator++(&v7))
  {
    BlueFin::GlSatCarrId::GlSatCarrId(v5, v9);
    if (v6 == 3 || v6 == 0)
    {
      *(*a2 + ((v5[0] >> 3) & 0x1C)) |= 1 << v5[0];
    }
  }

  return result;
}

unsigned __int8 *BlueFin::GlMeSrdAcqMgrSm::UpdatePostSearchMgr(BlueFin::GlMeSrdAcqMgrSm *this)
{
  v5 = *(this + 13928);
  memcpy(v9, *(this + 1740), 4 * v5);
  v7 = 0;
  v6 = 0;
  v8 = v9[0];
  result = BlueFin::GlSetIterator::operator++(&v5);
  if (v6 != v5)
  {
    while (1)
    {
      v3 = v7;
      if (((*(*(this + 485) + ((v7 >> 3) & 0x1C)) >> (v7 & 0x1F)) & 1) != 0 || !BlueFin::GlMeSrdSatMgr::GetLastActiveMs((this + 3520), v7))
      {
        break;
      }

      v4 = *(this + 5790);
      if ((v4 - BlueFin::GlMeSrdSatMgr::GetLastActiveMs((this + 3520), v3)) > 8000)
      {
        GlCustomLog(12, "SatId %u in PostSearchMgr for too GlIntS32, killing\n");
LABEL_9:
        BlueFin::GlSetBase::Remove(this + 13920, v3);
        BlueFin::GlMeSrdSatMgr::KillSat((this + 3520), v3);
      }

LABEL_10:
      result = BlueFin::GlSetIterator::operator++(&v5);
      if (v6 == v5)
      {
        return result;
      }
    }

    if ((*(this + 24956) & 2) == 0 || BlueFin::GlMeSrdSatPostSearchMgr::GetSearchMgrSource((this + 13920), v3))
    {
      goto LABEL_10;
    }

    GlCustomLog(12, "SatId %u kill GPS 2DBIT due to clock model update.\n");
    goto LABEL_9;
  }

  return result;
}

void BlueFin::GlMeSrdAcqMgrSm::UpdateSvidToSearchForMgrs(BlueFin::GlMeSrdAcqMgrSm *this)
{
  v3 = this + 21604;
  BlueFin::GlMeSrdSatTrackMgr::GetSetSvidListTrackingOrAided((this + 14352), &__src);
  BlueFin::GlSetBase::GlSetBase(&v334, v336, 8u, &__src);
  *v337 = &v339;
  LOBYTE(v338) = 8;
  v339 = 0u;
  v340 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(&v334, v337, this + 2896);
  BlueFin::GlSetBase::operator=(&v334, v337);
  v336[0] = v339;
  v336[1] = v340;
  if ((*(v3 + 838) & 0x22) != 0)
  {
    v4 = 110;
  }

  else
  {
    v4 = 126;
  }

  v331 = v333;
  v332 = 8;
  v333[0] = xmmword_298A323EC;
  v333[1] = *algn_298A323FC;
  v328 = v330;
  v329 = 8;
  v330[0] = xmmword_298A3240C;
  v330[1] = unk_298A3241C;
  v325 = v327;
  v326 = 8;
  v327[0] = xmmword_298A3244C;
  v327[1] = unk_298A3245C;
  v322 = v324;
  v323 = 8;
  v321[0] = xmmword_298A3246C;
  v321[1] = unk_298A3247C;
  v318[0] = xmmword_298A3248C;
  v324[0] = BlueFin::GlSvIdSet::csm_aulBeidouGeoSvIds;
  v324[1] = unk_298A324BC;
  v319 = v321;
  v320 = 8;
  v316 = v318;
  v317 = 8;
  v318[1] = unk_298A3249C;
  v5 = *(this + 5);
  *v337 = v4;
  (*(*v5 + 72))(&v363);
  v6 = BlueFin::GlSetBase::GlSetBase(&v367, &v369, 8u, &v363);
  *v337 = &v339;
  LOBYTE(v338) = 8;
  v339 = 0u;
  v340 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(v6, v337, this + 2896);
  BlueFin::GlSetBase::operator=(&v367, v337);
  v369 = v339;
  v370 = v340;
  BlueFin::GlSvIdSet::operator~(&v334, &v359);
  BlueFin::GlSetBase::GlSetBase(&__src, &v345, 8u, &v367);
  *v337 = &v339;
  LOBYTE(v338) = 8;
  v339 = 0u;
  v340 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(&__src, v337, &v359);
  BlueFin::GlSetBase::operator=(&__src, v337);
  v345 = v339;
  v346 = v340;
  BlueFin::GlSvIdSet::operator~(&v331, &v355);
  BlueFin::GlSetBase::GlSetBase(&v314, v315, 8u, &__src);
  *v337 = &v339;
  LOBYTE(v338) = 8;
  v339 = 0u;
  v340 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(&v314, v337, &v355);
  BlueFin::GlSetBase::operator=(&v314, v337);
  v315[0] = v339;
  v315[1] = v340;
  v7 = *(this + 5);
  *v337 = v4;
  (*(*v7 + 72))(&v367);
  BlueFin::GlSetBase::GlSetBase(&__src, &v345, 8u, &v367);
  *v337 = &v339;
  LOBYTE(v338) = 8;
  v339 = 0u;
  v340 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(&__src, v337, this + 2896);
  BlueFin::GlSetBase::operator=(&__src, v337);
  v345 = v339;
  v346 = v340;
  BlueFin::GlSvIdSet::operator~(&v331, &v363);
  BlueFin::GlSetBase::GlSetBase(&v312, v313, 8u, &__src);
  *v337 = &v339;
  LOBYTE(v338) = 8;
  v339 = 0u;
  v340 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(&v312, v337, &v363);
  BlueFin::GlSetBase::operator=(&v312, v337);
  v313[0] = v339;
  v313[1] = v340;
  v8 = (*(**(this + 5) + 64))(*(this + 5));
  v9 = BlueFin::GlSetBase::GlSetBase(&v363, &v365, 8u, v8);
  *v337 = &v339;
  LOBYTE(v338) = 8;
  v339 = 0u;
  v340 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(v9, v337, this + 2896);
  BlueFin::GlSetBase::operator=(&v363, v337);
  v365 = v339;
  v366 = v340;
  BlueFin::GlSvIdSet::operator~(&v334, &v359);
  v10 = BlueFin::GlSetBase::GlSetBase(&v367, &v369, 8u, &v363);
  *v337 = &v339;
  LOBYTE(v338) = 8;
  v339 = 0u;
  v340 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(v10, v337, &v359);
  BlueFin::GlSetBase::operator=(&v367, v337);
  v369 = v339;
  v370 = v340;
  BlueFin::GlSvIdSet::operator~(&v314, &v355);
  BlueFin::GlSetBase::GlSetBase(&__src, &v345, 8u, &v367);
  *v337 = &v339;
  LOBYTE(v338) = 8;
  v339 = 0u;
  v340 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(&__src, v337, &v355);
  BlueFin::GlSetBase::operator=(&__src, v337);
  v345 = v339;
  v346 = v340;
  BlueFin::GlSvIdSet::operator~(&v331, &v352);
  BlueFin::GlSetBase::GlSetBase(&v308, &v310, 8u, &__src);
  *v337 = &v339;
  LOBYTE(v338) = 8;
  v339 = 0u;
  v340 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(&v308, v337, &v352);
  BlueFin::GlSetBase::operator=(&v308, v337);
  v310 = v339;
  v311 = v340;
  v11 = BlueFin::GlSetBase::GlSetBase(&v367, &v369, 8u, this + 1733);
  *v337 = &v339;
  LOBYTE(v338) = 8;
  v339 = 0u;
  v340 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(v11, v337, this + 2896);
  BlueFin::GlSetBase::operator=(&v367, v337);
  v369 = v339;
  v370 = v340;
  BlueFin::GlSvIdSet::operator~(&v334, &v363);
  BlueFin::GlSetBase::GlSetBase(&__src, &v345, 8u, &v367);
  *v337 = &v339;
  LOBYTE(v338) = 8;
  v339 = 0u;
  v340 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(&__src, v337, &v363);
  BlueFin::GlSetBase::operator=(&__src, v337);
  v345 = v339;
  v346 = v340;
  BlueFin::GlSvIdSet::operator~(&v331, &v359);
  BlueFin::GlSetBase::GlSetBase(&v304, &v306, 8u, &__src);
  *v337 = &v339;
  LOBYTE(v338) = 8;
  v339 = 0u;
  v340 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(&v304, v337, &v359);
  BlueFin::GlSetBase::operator=(&v304, v337);
  v306 = v339;
  v307 = v340;
  BlueFin::GlSvIdSet::operator~(&v314, &v363);
  BlueFin::GlSvIdSet::operator~(&v308, &v359);
  v12 = BlueFin::GlSetBase::GlSetBase(&v367, &v369, 8u, &v363);
  *v337 = &v339;
  LOBYTE(v338) = 8;
  v339 = 0u;
  v340 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(v12, v337, &v359);
  BlueFin::GlSetBase::operator=(&v367, v337);
  v369 = v339;
  v370 = v340;
  BlueFin::GlSvIdSet::operator~(&v334, &v355);
  BlueFin::GlSetBase::GlSetBase(&__src, &v345, 8u, &v367);
  *v337 = &v339;
  LOBYTE(v338) = 8;
  v339 = 0u;
  v340 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(&__src, v337, &v355);
  BlueFin::GlSetBase::operator=(&__src, v337);
  v345 = v339;
  v346 = v340;
  BlueFin::GlSetBase::GlSetBase(&v301, &v302, 8u, &__src);
  *v337 = &v339;
  LOBYTE(v338) = 8;
  v339 = 0u;
  v340 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(&v301, v337, this + 2896);
  BlueFin::GlSetBase::operator=(&v301, v337);
  v302 = v339;
  v303 = v340;
  v269 = v3;
  v270 = this;
  if (*(v3 + 389) >= 0x2711u)
  {
    v13 = BlueFin::GlSetBase::GlSetBase(&v367, &v369, 8u, &v314);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryOr(v13, v337, &v308);
    BlueFin::GlSetBase::operator=(&v367, v337);
    v369 = v339;
    v370 = v340;
    BlueFin::GlSetBase::GlSetBase(&__src, &v345, 8u, &v367);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryOr(&__src, v337, &v304);
    BlueFin::GlSetBase::operator=(&__src, v337);
    v345 = v339;
    v346 = v340;
    BlueFin::GlSetBase::operator|=(&v301, &__src);
    BlueFin::GlSetBase::GlSetBase(&v359, &v361, 8u, &v314);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&v359, v337, &v319);
    BlueFin::GlSetBase::operator=(&v359, v337);
    v361 = v339;
    v362 = v340;
    BlueFin::GlSetBase::GlSetBase(&v355, &v357, 8u, &v308);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&v355, v337, &v319);
    BlueFin::GlSetBase::operator=(&v355, v337);
    v357 = v339;
    v358 = v340;
    v14 = BlueFin::GlSetBase::GlSetBase(&v363, &v365, 8u, &v359);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryOr(v14, v337, &v355);
    v15 = BlueFin::GlSetBase::operator=(&v363, v337);
    v365 = v339;
    v366 = v340;
    BlueFin::GlSvIdSet::operator~(v15, &v367);
    BlueFin::GlSetBase::GlSetBase(&__src, &v345, 8u, &v301);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&__src, v337, &v367);
    BlueFin::GlSetBase::operator=(&__src, v337);
    v345 = v339;
    v346 = v340;
    BlueFin::GlSetBase::operator=(&v301, &__src);
    v302 = v345;
    v303 = v346;
    if (!(*(**(this + 8) + 1208))() || *(v3 + 837) || (v3[3645] & 1) != 0)
    {
      goto LABEL_11;
    }

    if (BlueFin::QHsm::isIn(this, BlueFin::GlMeSrdAcqMgrSm::assisted))
    {
      v16 = *(v3 + 389);
      v17 = "GlMeSrdAcqMgrSm::UpdateSvidToSearchForMgrs: m_ulLastLms: %u Enable 6PPM Acquisition in Assisted Mode\n";
    }

    else
    {
      if (!BlueFin::QHsm::isIn(this, BlueFin::GlMeSrdAcqMgrSm::autonomous))
      {
        goto LABEL_11;
      }

      v16 = *(v3 + 389);
      if (v16 < 0x7531)
      {
        goto LABEL_12;
      }

      if ((BlueFin::GlSetBase::Cnt(&v334) & 0xFC) != 0)
      {
LABEL_11:
        LODWORD(v16) = *(v3 + 389);
LABEL_12:
        if (v16 >> 3 <= 0x55E && (*(**(this + 8) + 1208))(*(this + 8)) && *(v3 + 837))
        {
          v18 = 0;
          v19 = &v334[4 * v335 - 4];
          do
          {
            if (*v19)
            {
              v20 = *v19 - (((*v19 >> 1) & 0x5B6DB6DB) + ((*v19 >> 2) & 0x9249249));
              v18 = ((v20 + (v20 >> 3)) & 0xC71C71C7) + v18 - 63 * (((v20 + (v20 >> 3)) & 0xC71C71C7) / 0x3F);
            }

            v19 -= 4;
          }

          while (v19 >= v334);
          if ((v18 & 0xFC) == 0)
          {
            GlCustomLog(15, "GlMeSrdAcqMgrSm::UpdateSvidToSearchForMgrs: m_ulLastLms: %u 6PPM Plan Reorder Blind Search\n", *(v3 + 389));
            v21 = BlueFin::GlSetBase::GlSetBase(&v367, &v369, 8u, &v314);
            *v337 = &v339;
            LOBYTE(v338) = 8;
            v339 = 0u;
            v340 = 0u;
            BlueFin::GlSetBase::OperatorBinaryOr(v21, v337, &v308);
            BlueFin::GlSetBase::operator=(&v367, v337);
            v369 = v339;
            v370 = v340;
            BlueFin::GlSetBase::GlSetBase(&__src, &v345, 8u, &v367);
            *v337 = &v339;
            LOBYTE(v338) = 8;
            v339 = 0u;
            v340 = 0u;
            BlueFin::GlSetBase::OperatorBinaryOr(&__src, v337, &v304);
            BlueFin::GlSetBase::operator=(&__src, v337);
            v345 = v339;
            v346 = v340;
            BlueFin::GlSetBase::operator&=(&v301, &__src);
          }
        }

        goto LABEL_21;
      }

      v17 = "GlMeSrdAcqMgrSm::UpdateSvidToSearchForMgrs: m_ulLastLms: %u Enable 6PPM Acquisition in Autonomous Mode\n";
    }

    v3[3645] = 1;
    GlCustomLog(15, v17, v16);
    goto LABEL_11;
  }

LABEL_21:
  BlueFin::GlSetBase::GlSetBase(&v297, &v299, 8u, &v314);
  BlueFin::GlSetBase::GlSetBase(&v293, &v295, 8u, &v314);
  BlueFin::GlSetBase::GlSetBase(&v289, &v291, 8u, &v301);
  BlueFin::GlSetBase::GlSetBase(&v285, &v287, 8u, &v301);
  BlueFin::GlSetBase::GlSetBase(&__src, &v345, 8u, this + 1478);
  *v337 = &v339;
  LOBYTE(v338) = 8;
  v339 = 0u;
  v340 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(&__src, v337, this + 2896);
  BlueFin::GlSetBase::operator=(&__src, v337);
  v345 = v339;
  v346 = v340;
  BlueFin::GlSvIdSet::operator~(&v334, &v367);
  BlueFin::GlSetBase::GlSetBase(&v281, &v283, 8u, &__src);
  *v337 = &v339;
  LOBYTE(v338) = 8;
  v339 = 0u;
  v340 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(&v281, v337, &v367);
  BlueFin::GlSetBase::operator=(&v281, v337);
  v283 = v339;
  v284 = v340;
  v277 = &v279;
  v278 = 8;
  v279 = 0u;
  v280 = 0u;
  v22 = v3;
  if (v3[3408] != 1 || (v3[3352] & 2) != 0)
  {
    goto LABEL_89;
  }

  v369 = BlueFin::GlSvIdSet::csm_aulGlSvIdSet[0];
  v367 = &v369;
  v368 = 8;
  v370 = *algn_298A323DC;
  v23 = *(this + 5);
  *v337 = 46;
  (*(*v23 + 72))(&v363);
  BlueFin::GlSetBase::GlSetBase(&__src, &v345, 8u, &v367);
  *v337 = &v339;
  LOBYTE(v338) = 8;
  v339 = 0u;
  v340 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(&__src, v337, &v363);
  BlueFin::GlSetBase::operator=(&__src, v337);
  v345 = v339;
  v346 = v340;
  v367 = &v369;
  v368 = 8;
  v369 = 0u;
  v370 = 0u;
  v337[0] = v344;
  memcpy(&v338, __src, 4 * v344);
  *&v337[2] = 0;
  v337[1] = 0;
  *&v337[4] = v338;
  BlueFin::GlSetIterator::operator++(v337);
  if (v337[1] == v337[0])
  {
    v24 = 0;
    goto LABEL_77;
  }

  v259 = 0;
  HIDWORD(v1) = 1083129856;
  v25.f64[0] = NAN;
  v25.f64[1] = NAN;
  v266 = vnegq_f64(v25);
  v263 = 1;
  do
  {
    v26 = *(this + 5);
    v27 = v337[2];
    LOBYTE(v363) = v337[2];
    HIDWORD(v363) = 0;
    v364 = 575;
    if (v337[2] - 189 >= 0xFFFFFF44)
    {
      v28 = BlueFin::GlSvId::s_aucSvId2gnss[v337[2]];
      if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v28] == 255)
      {
        HIDWORD(v363) = -1;
      }

      else
      {
        v364 = BlueFin::GlSignalId::s_ausGnss2signalId[v28] + v337[2] - BlueFin::GlSvId::s_aucGnss2minSvId[v28];
      }
    }

    v29 = (*(*v26 + 80))(v26, &v363);
    if (v29)
    {
      v32 = *(v29 + 24);
      v30.i32[0] = *(v3 + 389);
      v33 = v30.u64[0];
      v34 = -v33;
      *v30.i64 = -(v33 - v32 * 1000.0);
      v35 = -(v34 + v32 * 1000.0);
      if (*v30.i64 < 0.0)
      {
        *v30.i64 = v35;
      }

      *v31.i64 = *v30.i64 + trunc(*v30.i64 * 2.32830644e-10) * -4294967300.0;
      v36 = vbslq_s8(v266, v31, v30);
      if (*v30.i64 > 4294967300.0)
      {
        v30.i64[0] = v36.i64[0];
      }

      if (*v30.i64 < -4294967300.0)
      {
        *v36.i64 = -*v30.i64;
        *v30.i64 = -(*v30.i64 - trunc(*v30.i64 * -2.32830644e-10) * -4294967300.0);
        *v30.i64 = -*vbslq_s8(v266, v30, v36).i64;
      }

      if (*v30.i64 < 0.0)
      {
        v37 = --*v30.i64;
      }

      else
      {
        v37 = *v30.i64;
      }

      if (v37 <= 0x7CF)
      {
        *(v367 + 4 * (v27 >> 5)) |= 1 << v27;
      }

      v38 = *(v29 + 140);
      if ((v38 & 0xFFFFFFFE) == 8)
      {
        if ((*(v29 + 86) & 4) != 0 && v37 >> 3 <= 0x270)
        {
          v39 = *(v29 + 40);
          v40 = v39 < 23.0 && v37 > 0x3E8;
          if (v40 || v39 < 20.0)
          {
            *(v277 + (v27 >> 5)) |= 1 << v27;
            LODWORD(v42) = *(v29 + 112);
            v43 = this + 25016;
LABEL_54:
            BlueFin::GlSetBase::Remove(v43, v42);
          }
        }
      }

      else if (v38 == 10)
      {
        if ((*(v29 + 86) & 4) != 0)
        {
          v30.i32[0] = *(v3 + 389);
          v44 = v30.u64[0];
          v45 = -v44;
          *v30.i64 = -(v44 - v32 * 1000.0);
          v46 = -(v45 + v32 * 1000.0);
          if (*v30.i64 >= 0.0)
          {
            v46 = *v30.i64;
          }

          if (v46 < 1000.0)
          {
            v47 = *(v29 + 40);
            if (v47 <= 23.0)
            {
              if (v47 >= 20.0)
              {
                LODWORD(v259) = v259 + 1;
              }

              else
              {
                v42 = *(v29 + 112);
                if ((*(*(this + 3127) + ((v42 >> 3) & 0x1C)) >> (v42 & 0x1F)))
                {
                  *(v277 + (v27 >> 5)) |= 1 << v27;
                  v43 = this + 25016;
                  goto LABEL_54;
                }
              }
            }

            else
            {
              ++HIDWORD(v259);
            }
          }
        }
      }

      else if (v38 == 11 && v3[3447] != 1)
      {
        v263 = 0;
      }
    }

    BlueFin::GlSetIterator::operator++(v337);
  }

  while (v337[1] != v337[0]);
  if (HIDWORD(v259))
  {
    v48 = 1;
  }

  else
  {
    v48 = v259 > 1;
  }

  v24 = v48;
  if (v263)
  {
LABEL_77:
    if (v3[3447] == 1 && *(v3 + 389) <= 0x7530u)
    {
      v50 = 0;
      v51 = (v367 + 4 * v368 - 4);
      do
      {
        if (*v51)
        {
          v52 = *v51 - (((*v51 >> 2) & 0x9249249) + ((*v51 >> 1) & 0x5B6DB6DB));
          v50 = ((v52 + (v52 >> 3)) & 0xC71C71C7) + v50 - 63 * (((v52 + (v52 >> 3)) & 0xC71C71C7) / 0x3F);
        }

        --v51;
      }

      while (v51 >= v367);
      v49 = v50 < 3u;
    }

    else
    {
      v49 = 0;
    }

    if ((v24 | v49))
    {
      bzero(v277, ((4 * v278 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    }

    v359 = &v361;
    LOBYTE(v360) = 4;
    v361 = 0uLL;
    BlueFin::GlSetBase::OperatorBinaryInversion(this + 11248, &v359);
    v363 = &v365;
    LOBYTE(v364) = 4;
    v365 = 0uLL;
    BlueFin::GlSetBase::OperatorBinaryAnd(this + 11216, &v363, &v359);
    BlueFin::GlMeSrdSatMgr::GetSvidSetFromSatidSet(this + 440, &v363, v337);
    BlueFin::GlSetBase::operator|=(&v277, v337);
    BlueFin::GlSetBase::operator&=(&v277, this + 23168);
  }

  else
  {
    bzero(v277, ((4 * v278 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  }

LABEL_89:
  v273 = &v275;
  v274 = 8;
  v367 = &v369;
  v368 = 8;
  v369 = xmmword_298A323EC;
  v370 = *algn_298A323FC;
  v275 = 0u;
  v276 = 0u;
  if (v3[3448] != 1)
  {
    goto LABEL_130;
  }

  v53 = *(this + 5);
  *v337 = 46;
  (*(*v53 + 72))(&v359);
  BlueFin::GlSatCarrIdSet::GetSatIdSetAnyCarrier((this + 18352), v337);
  BlueFin::GlMeSrdSatMgr::GetSvidSetFromSatidSet(*(this + 1795), v337, &v352);
  BlueFin::GlSvIdSet::operator~(&v352, &v355);
  v54 = BlueFin::GlSetBase::GlSetBase(&v363, &v365, 8u, &v359);
  *v337 = &v339;
  LOBYTE(v338) = 8;
  v339 = 0u;
  v340 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(v54, v337, &v355);
  BlueFin::GlSetBase::operator=(&v363, v337);
  v365 = v339;
  v366 = v340;
  BlueFin::GlSvIdSet::operator~(&v367, &v350);
  BlueFin::GlSetBase::GlSetBase(&__src, &v345, 8u, &v363);
  *v337 = &v339;
  LOBYTE(v338) = 8;
  v339 = 0u;
  v340 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(&__src, v337, &v350);
  BlueFin::GlSetBase::operator=(&__src, v337);
  v345 = v339;
  v346 = v340;
  BlueFin::GlSetBase::operator|=(&v273, &__src);
  BlueFin::GlSetBase::operator&=(&v273, this + 23168);
  if (!*v273)
  {
    if (v274 < 2uLL)
    {
      goto LABEL_130;
    }

    v75 = v274 - 1;
    v76 = v273 + 4;
    while (!*v76++)
    {
      if (!--v75)
      {
        goto LABEL_130;
      }
    }
  }

  BlueFin::GlSetBase::GlSetBase(&v363, &v365, 8u, &v273);
  v55 = this;
  if ((*(**(this + 8) + 32))(*(this + 8)))
  {
    v56 = 4;
  }

  else
  {
    v56 = 100;
  }

  LODWORD(v1) = *(v3 + 389);
  LOBYTE(__src) = v274;
  memcpy(&v344, v273, 4 * v274);
  WORD1(__src) = 0;
  BYTE1(__src) = 0;
  HIDWORD(__src) = v344;
  BlueFin::GlSetIterator::operator++(&__src);
  if (BYTE1(__src) != __src)
  {
    v57 = 0;
    v58 = v1;
    v267 = v56;
    do
    {
      if (v57 >= v56)
      {
        v74 = BYTE2(__src);
        goto LABEL_123;
      }

      v59 = 0;
      *v337 = &v339;
      LOBYTE(v338) = 19;
      v339 = 0u;
      v340 = 0u;
      v341 = 0u;
      memset(v342, 0, sizeof(v342));
      v60 = BYTE2(__src);
      v61 = BYTE2(__src) >> 5;
      v62 = 1 << (BYTE2(__src) & 0x1F);
      v63 = BYTE2(__src);
      v64 = BYTE2(__src) - 189;
      v65 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType;
      do
      {
        if (v59 > 1u)
        {
          if (v59 == 2)
          {
            v66 = *(v55 + 2938);
LABEL_108:
            if ((v62 & *(v66 + 4 * v61)) == 0)
            {
              goto LABEL_115;
            }

            goto LABEL_109;
          }

          if (v59 == 3 && (v62 & *(*(v55 + 2914) + 4 * v61)) == 0)
          {
            v66 = *(v55 + 2920);
            goto LABEL_108;
          }
        }

        else
        {
          if (!v59)
          {
            v66 = *(v55 + 2926);
            goto LABEL_108;
          }

          if (v59 == 1)
          {
            v66 = *(v55 + 2932);
            goto LABEL_108;
          }
        }

LABEL_109:
        LOBYTE(v359) = v63;
        HIDWORD(v359) = v59;
        if (v64 >= 0xFFFFFF44)
        {
          v67 = BlueFin::GlSvId::s_aucSvId2gnss[v60];
          if (v65[v67] != 255)
          {
            v360 = BlueFin::GlSignalId::s_ausGnss2signalId[v67] + v60 - BlueFin::GlSvId::s_aucGnss2minSvId[v67] + BlueFin::GlSvId::s_aucGnss2numSvId[v67] * v59;
            if (v360 <= 0x23Eu)
            {
              v68 = v55;
              v69 = *(v55 + 5);
              v70 = (*(**(v68 + 10) + 24))(*(v68 + 10));
              if ((*(*v69 + 40))(v69, &v359, v70, v58))
              {
                *(*v337 + 4 * (v360 >> 5)) |= 1 << v360;
                ++v57;
              }

              v55 = v270;
            }
          }
        }

LABEL_115:
        ++v59;
        v65 += 7;
      }

      while (v59 != 4);
      v22 = v3;
      v56 = v267;
      if (**v337)
      {
        goto LABEL_124;
      }

      if (v338 < 2uLL)
      {
LABEL_121:
        v74 = v60;
LABEL_123:
        BlueFin::GlSetBase::Remove(&v273, v74);
        goto LABEL_124;
      }

      v71 = v338 - 1;
      v72 = (*v337 + 4);
      while (!*v72++)
      {
        if (!--v71)
        {
          goto LABEL_121;
        }
      }

LABEL_124:
      BlueFin::GlSetIterator::operator++(&__src);
    }

    while (BYTE1(__src) != __src);
  }

LABEL_130:
  BlueFin::GlSetBase::Add(&v273, v270 + 2944);
  bzero(*(v270 + 2944), ((4 * v22[1956] + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  if (v22[3447] == 1)
  {
    BlueFin::GlSvIdSet::operator~(&v334, &v350);
    BlueFin::GlSetBase::GlSetBase(&v352, &v353, 8u, v270 + 2896);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&v352, v337, &v350);
    BlueFin::GlSetBase::operator=(&v352, v337);
    v353 = v339;
    v354 = v340;
    BlueFin::GlSvIdSet::operator~(&v316, v349);
    BlueFin::GlSetBase::GlSetBase(&v355, &v357, 8u, &v352);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&v355, v337, v349);
    BlueFin::GlSetBase::operator=(&v355, v337);
    v357 = v339;
    v358 = v340;
    BlueFin::GlSvIdSet::operator~(&v328, v348);
    BlueFin::GlSetBase::GlSetBase(&v359, &v361, 8u, &v355);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&v359, v337, v348);
    BlueFin::GlSetBase::operator=(&v359, v337);
    v361 = v339;
    v362 = v340;
    BlueFin::GlSvIdSet::operator~(&v325, v347);
    v78 = BlueFin::GlSetBase::GlSetBase(&v363, &v365, 8u, &v359);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(v78, v337, v347);
    BlueFin::GlSetBase::operator=(&v363, v337);
    v365 = v339;
    v366 = v340;
    BlueFin::GlSvIdSet::operator~(&v319, v272);
    v79 = BlueFin::GlSetBase::GlSetBase(&v367, &v369, 8u, &v363);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(v79, v337, v272);
    BlueFin::GlSetBase::operator=(&v367, v337);
    v369 = v339;
    v370 = v340;
    BlueFin::GlSvIdSet::operator~(&v331, v271);
    BlueFin::GlSetBase::GlSetBase(&__src, &v345, 8u, &v367);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&__src, v337, v271);
    BlueFin::GlSetBase::operator=(&__src, v337);
    v345 = v339;
    v346 = v340;
    BlueFin::GlSetBase::operator=(&v289, &__src);
    v291 = v345;
    v292 = v346;
    BlueFin::GlSvIdSet::operator~(&v334, &v363);
    v80 = BlueFin::GlSetBase::GlSetBase(&v367, &v369, 8u, v270 + 2896);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(v80, v337, &v363);
    BlueFin::GlSetBase::operator=(&v367, v337);
    v369 = v339;
    v370 = v340;
    BlueFin::GlSvIdSet::operator~(&v331, &v359);
    BlueFin::GlSetBase::GlSetBase(&__src, &v345, 8u, &v367);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&__src, v337, &v359);
    BlueFin::GlSetBase::operator=(&__src, v337);
    v345 = v339;
    v346 = v340;
    BlueFin::GlSetBase::operator=(&v285, &__src);
    v287 = v345;
    v288 = v346;
    v81 = (*(**(v270 + 5) + 64))(*(v270 + 5));
    v82 = BlueFin::GlSetBase::GlSetBase(&v363, &v365, 8u, v81);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    v22 = v3;
    BlueFin::GlSetBase::OperatorBinaryAnd(v82, v337, v270 + 2896);
    BlueFin::GlSetBase::operator=(&v363, v337);
    v365 = v339;
    v366 = v340;
    BlueFin::GlSvIdSet::operator~(&v334, &v359);
    v83 = BlueFin::GlSetBase::GlSetBase(&v367, &v369, 8u, &v363);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(v83, v337, &v359);
    BlueFin::GlSetBase::operator=(&v367, v337);
    v369 = v339;
    v370 = v340;
    BlueFin::GlSvIdSet::operator~(&v331, &v355);
    BlueFin::GlSetBase::GlSetBase(&__src, &v345, 8u, &v367);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&__src, v337, &v355);
    BlueFin::GlSetBase::operator=(&__src, v337);
    v345 = v339;
    v346 = v340;
    BlueFin::GlSetBase::operator=(&v297, &__src);
    v299 = v345;
    v300 = v346;
  }

  if (v22[3647] == 1)
  {
    v345 = xmmword_298A3244C;
    __src = &v345;
    LOBYTE(v344) = 8;
    v346 = unk_298A3245C;
    v367 = &v369;
    v368 = 8;
    v369 = BlueFin::GlSvIdSet::csm_aulBeidouGeoSvIds;
    v370 = unk_298A324BC;
    v363 = &v365;
    LOBYTE(v364) = 8;
    v365 = xmmword_298A3246C;
    v366 = unk_298A3247C;
    v359 = &v361;
    LOBYTE(v360) = 8;
    v361 = xmmword_298A3248C;
    v362 = unk_298A3249C;
    BlueFin::GlSvIdSet::operator~(&v359, v349);
    BlueFin::GlSetBase::GlSetBase(&v350, v351, 8u, &v297);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&v350, v337, v349);
    BlueFin::GlSetBase::operator=(&v350, v337);
    v351[0] = v339;
    v351[1] = v340;
    BlueFin::GlSvIdSet::operator~(&v363, v348);
    BlueFin::GlSetBase::GlSetBase(&v352, &v353, 8u, &v350);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&v352, v337, v348);
    BlueFin::GlSetBase::operator=(&v352, v337);
    v353 = v339;
    v354 = v340;
    BlueFin::GlSvIdSet::operator~(&v367, v347);
    BlueFin::GlSetBase::GlSetBase(&v355, &v357, 8u, &v352);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&v355, v337, v347);
    BlueFin::GlSetBase::operator=(&v355, v337);
    v357 = v339;
    v358 = v340;
    BlueFin::GlSetBase::operator=(&v304, &v355);
    v306 = v357;
    v307 = v358;
    BlueFin::GlSvIdSet::operator~(&v304, v337);
    BlueFin::GlSetBase::operator&=(&v297, v337);
    BlueFin::GlSvIdSet::operator~(&v367, v337);
    BlueFin::GlSetBase::operator&=(&v297, v337);
    BlueFin::GlSvIdSet::operator~(&__src, v337);
    BlueFin::GlSetBase::operator&=(&v297, v337);
    v84 = v270;
  }

  else
  {
    v84 = v270;
    if (!*v304)
    {
      if (v305 < 2uLL)
      {
        goto LABEL_141;
      }

      v85 = v305 - 1;
      v86 = v304 + 4;
      while (!*v86++)
      {
        if (!--v85)
        {
          goto LABEL_141;
        }
      }
    }

    if (*(v22 + 837) == 3)
    {
      __src = &v345;
      LOBYTE(v344) = 4;
      v345 = 0uLL;
      BlueFin::GlSetBase::OperatorBinaryAnd(v270 + 13736, &__src, v270 + 485);
      BlueFin::GlMeSrdSatMgr::GetSvidSetFromSatidSet(v270 + 440, &__src, v337);
      BlueFin::GlSetBase::operator=(&v304, v337);
      v306 = v339;
      v307 = v340;
      BlueFin::GlSvIdSet::operator~(&v304, v337);
      BlueFin::GlSetBase::operator&=(&v297, v337);
    }
  }

LABEL_141:
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x4F);
    if (BlueFin::GlUtils::m_ucEnabled)
    {
      BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x4F);
    }
  }

  if (v22[3648] == 1)
  {
    v363 = &v365;
    LOBYTE(v364) = 8;
    v365 = BlueFin::GlSvIdSet::csm_aulGlSvIdSet[0];
    v366 = *algn_298A323DC;
    v88 = BlueFin::GlSetBase::GlSetBase(&v367, &v369, 8u, &v363);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryOr(v88, v337, &v328);
    BlueFin::GlSetBase::operator=(&v367, v337);
    v369 = v339;
    v370 = v340;
    BlueFin::GlSetBase::GlSetBase(&__src, &v345, 8u, &v312);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&__src, v337, &v367);
    BlueFin::GlSetBase::operator=(&__src, v337);
    v345 = v339;
    v346 = v340;
    BlueFin::GlSetBase::operator=(&v293, &__src);
    v295 = v345;
    v296 = v346;
  }

  v89 = *(v84 + 1740);
  v90 = *(v84 + 13928);
  if (*v89)
  {
LABEL_147:
    v337[0] = *(v84 + 13928);
    memcpy(&v338, v89, 4 * v90);
    *&v337[2] = 0;
    v337[1] = 0;
    *&v337[4] = v338;
    BlueFin::GlSetIterator::operator++(v337);
    while (v337[1] != v337[0])
    {
      v91 = v337[2];
      BlueFin::GlMeSrdSatMgr::GetSvid(v84 + 440, v337[2], &__src);
      SearchMgrSource = BlueFin::GlMeSrdSatPostSearchMgr::GetSearchMgrSource((v84 + 13920), v91);
      if (SearchMgrSource > 5)
      {
        if (SearchMgrSource <= 7)
        {
          if (SearchMgrSource == 6)
          {
            v93 = &v304;
          }

          else
          {
            v93 = &v308;
          }

          goto LABEL_165;
        }

        if (SearchMgrSource == 8)
        {
          v93 = &v285;
          goto LABEL_165;
        }

        if (SearchMgrSource == 9)
        {
          v93 = &v289;
          goto LABEL_165;
        }
      }

      else
      {
        if (SearchMgrSource > 3)
        {
          if (SearchMgrSource == 4)
          {
            v93 = &v293;
          }

          else
          {
            v93 = &v297;
          }

          goto LABEL_165;
        }

        if (!SearchMgrSource)
        {
          v93 = &v277;
          goto LABEL_165;
        }

        if (SearchMgrSource == 1)
        {
          v93 = &v281;
LABEL_165:
          BlueFin::GlSetBase::Remove(v93, __src);
        }
      }

      BlueFin::GlSetIterator::operator++(v337);
    }
  }

  else if (v90 >= 2)
  {
    v94 = v90 - 1;
    v95 = v89 + 1;
    do
    {
      if (*v95++)
      {
        goto LABEL_147;
      }
    }

    while (--v94);
  }

  if (*v273)
  {
LABEL_173:
    BlueFin::GlSvIdSet::operator~(&v273, v337);
    BlueFin::GlSetBase::operator&=(&v297, v337);
    BlueFin::GlSetBase::operator&=(&v308, v337);
    BlueFin::GlSetBase::operator&=(&v293, v337);
    BlueFin::GlSetBase::operator&=(&v289, v337);
    BlueFin::GlSetBase::operator&=(&v285, v337);
    BlueFin::GlSetBase::operator&=(&v281, v337);
    BlueFin::GlSetBase::operator&=(&v304, v337);
  }

  else
  {
    if (v274 >= 2uLL)
    {
      v97 = v274 - 1;
      v98 = v273 + 4;
      do
      {
        if (*v98++)
        {
          goto LABEL_173;
        }
      }

      while (--v97);
    }

    bzero(v273, ((4 * v274 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  }

  if (v22[3447] == 1)
  {
    if ((v22[3389] & 1) == 0)
    {
      BlueFin::GlSvIdSet::operator~(&v328, v337);
      BlueFin::GlSetBase::operator&=(&v297, v337);
    }

    bzero(v293, ((4 * v294 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    bzero(v281, ((4 * v282 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    v100 = v308;
    v101 = v309;
LABEL_183:
    v102 = 4 * v101 + 0x3FFFFFFFCLL;
LABEL_184:
    bzero(v100, (v102 & 0x3FFFFFFFCLL) + 4);
    goto LABEL_185;
  }

  if (v22[3396] != 1)
  {
    if (v22[3388] == 1)
    {
      bzero(v297, ((4 * v298 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
      bzero(v304, ((4 * v305 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
      bzero(v308, ((4 * v309 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
      bzero(v293, ((4 * v294 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
      bzero(v289, ((4 * v290 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
      v100 = v277;
      v101 = v278;
      goto LABEL_183;
    }

    BlueFin::GlSetBase::GlSetBase(&__src, &v345, 8u, &v314);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&__src, v337, &v328);
    BlueFin::GlSetBase::operator=(&__src, v337);
    v345 = v339;
    v346 = v340;
    if (!*__src)
    {
      if (v344 < 2uLL)
      {
LABEL_314:
        if ((v22[3390] & 1) == 0)
        {
          BlueFin::GlSvIdSet::operator~(&v331, v337);
          BlueFin::GlSetBase::operator&=(&v289, v337);
        }

        BlueFin::GlSvIdSet::operator~(&v328, v337);
        BlueFin::GlSetBase::operator&=(&v285, v337);
        if (((*(**(v84 + 8) + 1224))() & 1) == 0 && ((*(**(v84 + 8) + 1200))(*(v84 + 8)) & 1) == 0 && ((*(**(v84 + 8) + 1232))(*(v84 + 8)) & 1) == 0)
        {
          BlueFin::GlSvIdSet::operator~(&v325, v337);
          BlueFin::GlSetBase::operator&=(&v285, v337);
        }

        if ((v22[3392] & 1) != 0 || v22[3648] == 1)
        {
          if (*(v22 + 837) != 3 || ((*(**(v84 + 10) + 32))(*(v84 + 10)) & 1) != 0)
          {
LABEL_406:
            if ((v22[3389] & 1) == 0)
            {
              BlueFin::GlSvIdSet::operator~(&v328, v337);
              BlueFin::GlSetBase::operator&=(&v297, v337);
              BlueFin::GlSvIdSet::operator~(&v328, v337);
              BlueFin::GlSetBase::operator&=(&v308, v337);
              BlueFin::GlSvIdSet::operator~(&v328, v337);
              BlueFin::GlSetBase::operator&=(&v304, v337);
            }

            goto LABEL_185;
          }

          BlueFin::GlSetBase::GlSetBase(&v359, &v361, 8u, &v319);
          *v337 = &v339;
          LOBYTE(v338) = 8;
          v339 = 0u;
          v340 = 0u;
          BlueFin::GlSetBase::OperatorBinaryOr(&v359, v337, &v322);
          BlueFin::GlSetBase::operator=(&v359, v337);
          v361 = v339;
          v362 = v340;
          v167 = BlueFin::GlSetBase::GlSetBase(&v363, &v365, 8u, &v359);
          *v337 = &v339;
          LOBYTE(v338) = 8;
          v339 = 0u;
          v340 = 0u;
          BlueFin::GlSetBase::OperatorBinaryOr(v167, v337, &v325);
          BlueFin::GlSetBase::operator=(&v363, v337);
          v365 = v339;
          v366 = v340;
          v168 = BlueFin::GlSetBase::GlSetBase(&v367, &v369, 8u, &v363);
          *v337 = &v339;
          LOBYTE(v338) = 8;
          v339 = 0u;
          v340 = 0u;
          BlueFin::GlSetBase::OperatorBinaryOr(v168, v337, &v331);
          BlueFin::GlSetBase::operator=(&v367, v337);
          v369 = v339;
          v370 = v340;
          BlueFin::GlSetBase::GlSetBase(&__src, &v345, 8u, &v367);
          *v337 = &v339;
          LOBYTE(v338) = 8;
          v339 = 0u;
          v340 = 0u;
          BlueFin::GlSetBase::OperatorBinaryOr(&__src, v337, &v316);
          BlueFin::GlSetBase::operator=(&__src, v337);
          v345 = v339;
          v346 = v340;
          BlueFin::GlSvIdSet::operator~(&__src, v337);
          BlueFin::GlSetBase::operator&=(&v289, v337);
          BlueFin::GlSvIdSet::operator~(&v316, v337);
          BlueFin::GlSetBase::operator&=(&v297, v337);
          v169 = &v308;
        }

        else
        {
          v169 = &v293;
        }

        bzero(*v169, ((4 * *(v169 + 8) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
        goto LABEL_406;
      }

      v164 = v344 - 1;
      v165 = __src + 4;
      while (!*v165++)
      {
        if (!--v164)
        {
          goto LABEL_314;
        }
      }
    }

    BlueFin::GlSvIdSet::operator~(&v328, v337);
    BlueFin::GlSetBase::operator&=(&v289, v337);
    goto LABEL_314;
  }

  bzero(v297, ((4 * v298 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  bzero(v308, ((4 * v309 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  bzero(v293, ((4 * v294 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  bzero(v285, ((4 * v286 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  bzero(v277, ((4 * v278 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  bzero(v281, ((4 * v282 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  bzero(v304, ((4 * v305 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  BlueFin::GlSvIdSet::operator~(&v334, &v363);
  v160 = BlueFin::GlSetBase::GlSetBase(&v367, &v369, 8u, &v363);
  *v337 = &v339;
  LOBYTE(v338) = 8;
  v339 = 0u;
  v340 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(v160, v337, v84 + 2896);
  BlueFin::GlSetBase::operator=(&v367, v337);
  v369 = v339;
  v370 = v340;
  BlueFin::GlSvIdSet::operator~(&v273, &v359);
  BlueFin::GlSetBase::GlSetBase(&__src, &v345, 8u, &v367);
  *v337 = &v339;
  LOBYTE(v338) = 8;
  v339 = 0u;
  v340 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(&__src, v337, &v359);
  BlueFin::GlSetBase::operator=(&__src, v337);
  v345 = v339;
  v346 = v340;
  BlueFin::GlSetBase::operator=(&v289, &__src);
  v291 = v345;
  v292 = v346;
  if ((v22[3390] & 1) == 0)
  {
    BlueFin::GlSvIdSet::operator~(&v331, v337);
    BlueFin::GlSetBase::operator&=(&v289, v337);
  }

  if (v22[3398] == 1 && v22[3397] == 1)
  {
    bzero(v289, ((4 * v290 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  }

  if (*v22 == 1)
  {
    v100 = v289;
    v102 = 4 * v290 + 0x3FFFFFFFCLL;
    goto LABEL_184;
  }

LABEL_185:
  if ((v22[3447] & 1) == 0)
  {
    v103 = (v84 + 3880);
    if (*v277)
    {
      goto LABEL_187;
    }

    if (v278 >= 2uLL)
    {
      v161 = v278 - 1;
      v162 = v277 + 4;
      while (!*v162++)
      {
        if (!--v161)
        {
          goto LABEL_326;
        }
      }

LABEL_187:
      v363 = &v365;
      LOBYTE(v364) = 4;
      v365 = 0uLL;
      BlueFin::GlSetBase::OperatorBinaryAnd(v270 + 11216, &v363, v103);
      v104 = 0;
      v105 = v363 + v364 - 1;
      do
      {
        if (*v105)
        {
          v106 = *v105 - (((*v105 >> 2) & 0x9249249) + ((*v105 >> 1) & 0x5B6DB6DB));
          v104 = ((v106 + (v106 >> 3)) & 0xC71C71C7) + v104 - 63 * (((v106 + (v106 >> 3)) & 0xC71C71C7) / 0x3F);
        }

        --v105;
      }

      while (v105 >= v363);
      if (v104 <= 2u && v104 < *(v84 + 11400))
      {
        v107 = 0;
        v108 = v277 + 4 * v278 - 4;
        do
        {
          if (*v108)
          {
            v109 = *v108 - (((*v108 >> 1) & 0x5B6DB6DB) + ((*v108 >> 2) & 0x9249249));
            v107 = ((v109 + (v109 >> 3)) & 0xC71C71C7) + v107 - 63 * (((v109 + (v109 >> 3)) & 0xC71C71C7) / 0x3F);
          }

          --v108;
        }

        while (v108 >= v277);
        if (v104 < v107)
        {
          bzero(v289, ((4 * v290 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
          bzero(v285, ((4 * v286 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
          bzero(v293, ((4 * v294 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
          bzero(v281, ((4 * v282 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
          bzero(v308, ((4 * v309 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
          BlueFin::GlSetBase::GlSetBase(&v359, &v361, 4u, v270 + 1561);
          *v337 = &v339;
          LOBYTE(v338) = 4;
          v339 = 0uLL;
          BlueFin::GlSetBase::OperatorBinaryInversion(v103, v337);
          v355 = &v357;
          v356 = 4;
          v357 = 0uLL;
          BlueFin::GlSetBase::OperatorBinaryAnd(v270 + 12488, &v355, v337);
          BlueFin::GlMeSrdSatMgr::GetSvidSetFromSatidSet(v270 + 440, &v359, v337);
          if (BlueFin::GlUtils::m_ucEnabled)
          {
            BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x4F);
          }

          v337[0] = 1;
          *&v337[4] = 0;
          LOWORD(v338) = 0;
          StrategyId = BlueFin::GlMeSrdSearchMgrBase::GetStrategyId((v270 + 11088), v337);
          v367 = &v369;
          v368 = 8;
          v369 = BlueFin::GlSvIdSet::csm_aulGlSvIdSet[0];
          v370 = *algn_298A323DC;
          BlueFin::GlSetBase::GlSetBase(&__src, &v345, 8u, &v277);
          *v337 = &v339;
          LOBYTE(v338) = 8;
          v339 = 0u;
          v340 = 0u;
          BlueFin::GlSetBase::OperatorBinaryAnd(&__src, v337, &v367);
          BlueFin::GlSetBase::operator=(&__src, v337);
          v110 = 0;
          v345 = v339;
          v346 = v340;
          v111 = __src + 4 * v344 - 4;
          do
          {
            if (*v111)
            {
              v112 = *v111 - (((*v111 >> 2) & 0x9249249) + ((*v111 >> 1) & 0x5B6DB6DB));
              v110 = ((v112 + (v112 >> 3)) & 0xC71C71C7) + v110 - 63 * (((v112 + (v112 >> 3)) & 0xC71C71C7) / 0x3F);
            }

            --v111;
          }

          while (v111 >= __src);
          v113 = 0;
          v114 = v277 + 4 * v278 - 4;
          do
          {
            if (*v114)
            {
              v115 = *v114 - (((*v114 >> 1) & 0x5B6DB6DB) + ((*v114 >> 2) & 0x9249249));
              v113 = ((v115 + (v115 >> 3)) & 0xC71C71C7) + v113 - 63 * (((v115 + (v115 >> 3)) & 0xC71C71C7) / 0x3F);
            }

            --v114;
          }

          while (v114 >= v277);
          if (v110 != v113)
          {
            DeviceFaultNotify("glmesrd_acq_mgr_sm.cpp", 858, "UpdateSvidToSearchForReactivity", "(rSet2DbitSearch & GlSvIdSet::Gnss(GNSS_GPS)).Cnt() == rSet2DbitSearch.Cnt()");
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_acq_mgr_sm.cpp", 858, "(rSet2DbitSearch & GlSvIdSet::Gnss(GNSS_GPS)).Cnt() == rSet2DbitSearch.Cnt()");
          }

          v257 = 0;
          v116.f64[0] = NAN;
          v116.f64[1] = NAN;
          v260 = 0x8000000080000000;
          v265 = 255;
          v264 = 255;
          v268 = vnegq_f64(v116);
          while (1)
          {
LABEL_210:
            v117 = 0;
            v118 = v359 + 4 * v360 - 4;
            do
            {
              if (*v118)
              {
                v119 = *v118 - (((*v118 >> 2) & 0x9249249) + ((*v118 >> 1) & 0x5B6DB6DB));
                v117 = ((v119 + (v119 >> 3)) & 0xC71C71C7) + v117 - 63 * (((v119 + (v119 >> 3)) & 0xC71C71C7) / 0x3F);
              }

              --v118;
            }

            while (v118 >= v359);
            if (v117 < 3u)
            {
              goto LABEL_325;
            }

            v120 = 0;
            v121 = v277 + 4 * v278 - 4;
            do
            {
              if (*v121)
              {
                v122 = *v121 - (((*v121 >> 1) & 0x5B6DB6DB) + ((*v121 >> 2) & 0x9249249));
                v120 = ((v122 + (v122 >> 3)) & 0xC71C71C7) + v120 - 63 * (((v122 + (v122 >> 3)) & 0xC71C71C7) / 0x3F);
              }

              --v121;
            }

            while (v121 >= v277);
            v120 = v120;
            if (v120 >= 2 * (StrategyId != 250))
            {
              v120 = 2 * (StrategyId != 250);
            }

            if (!v120)
            {
              goto LABEL_325;
            }

            v262 = v120;
            v337[0] = v360;
            memcpy(&v338, v359, 4 * v360);
            *&v337[2] = 0;
            v337[1] = 0;
            *&v337[4] = v338;
            BlueFin::GlSetIterator::operator++(v337);
            v123 = 0;
            v124 = 0;
            if (v337[1] != v337[0])
            {
              v124 = 0;
              v123 = 0;
              do
              {
                v125 = v337[2];
                if ((*(*v103 + ((*&v337[2] >> 3) & 0x1C)) >> (v337[2] & 0x1F)))
                {
                  ActiveBsId = BlueFin::GlMeSrdSatMgr::GetActiveBsId((v270 + 3520), v337[2]);
                }

                else
                {
                  ActiveBsId = BlueFin::GlMeSrdSatMgr::GetStartupBsId((v270 + 3520), v337[2]);
                }

                v127 = ActiveBsId;
                BlueFin::GlMeSrdSatMgr::GetSvid(v270 + 440, v125, &v367);
                LOBYTE(__src) = v367;
                HIDWORD(__src) = 0;
                LOWORD(v344) = 575;
                if (v367 - 189 >= 0xFFFFFF44)
                {
                  v128 = BlueFin::GlSvId::s_aucSvId2gnss[v367];
                  if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v128] == 255)
                  {
                    HIDWORD(__src) = -1;
                  }

                  else
                  {
                    LOWORD(v344) = BlueFin::GlSignalId::s_ausGnss2signalId[v128] + v367 - BlueFin::GlSvId::s_aucGnss2minSvId[v128];
                  }
                }

                v129 = (*(**(v270 + 9) + 40))(*(v270 + 9), *(v270 + 8), v127, &__src);
                v130 = (*(**(v270 + 9) + 56))(*(v270 + 9), *(v270 + 8), v127, &__src);
                if ((v124 + v129) >= 0xFFFF)
                {
                  v124 = 0xFFFF;
                }

                else
                {
                  v124 += v129;
                }

                if ((v123 + v130) >= 0xFF)
                {
                  v123 = 255;
                }

                else
                {
                  v123 += v130;
                }

                BlueFin::GlSetIterator::operator++(v337);
              }

              while (v337[1] != v337[0]);
            }

            v132 = *(v270 + 8);
            v131 = *(v270 + 9);
            v337[0] = 1;
            *&v337[4] = 0;
            LOWORD(v338) = 0;
            v261 = (*(*v131 + 40))(v131, v132, StrategyId, v337);
            v134 = *(v270 + 8);
            v133 = *(v270 + 9);
            v337[0] = 1;
            *&v337[4] = 0;
            LOWORD(v338) = 0;
            v135 = (*(*v133 + 56))(v133, v134, StrategyId, v337);
            v137 = (*(**(v270 + 9) + 32))(*(v270 + 9), *(v270 + 8));
            *v137.i64 = v136 * 0.8;
            *v138.i64 = *v137.i64 + trunc(*v137.i64 * 2.32830644e-10) * -4294967300.0;
            v139 = vbslq_s8(v268, v138, v137);
            if (*v137.i64 > 4294967300.0)
            {
              v137.i64[0] = v139.i64[0];
            }

            if (*v137.i64 < -4294967300.0)
            {
              *v139.i64 = -*v137.i64;
              *v137.i64 = -(*v137.i64 - trunc(*v137.i64 * -2.32830644e-10) * -4294967300.0);
              *v137.i64 = -*vbslq_s8(v268, v137, v139).i64;
            }

            if (*v137.i64 < 0.0)
            {
              v140 = --*v137.i64;
            }

            else
            {
              LOWORD(v140) = *v137.i64;
            }

            v142 = (*(**(v270 + 8) + 56))(*(v270 + 8));
            *v142.i64 = v141 * 0.8;
            *v143.i64 = *v142.i64 + trunc(*v142.i64 * 2.32830644e-10) * -4294967300.0;
            v144 = vbslq_s8(v268, v143, v142);
            if (*v142.i64 > 4294967300.0)
            {
              v142.i64[0] = v144.i64[0];
            }

            if (*v142.i64 < -4294967300.0)
            {
              *v144.i64 = -*v142.i64;
              *v142.i64 = -(*v142.i64 - trunc(*v142.i64 * -2.32830644e-10) * -4294967300.0);
              *v142.i64 = -*vbslq_s8(v268, v142, v144).i64;
            }

            if (v124 + (v261 * v262) <= v140)
            {
              if (*v142.i64 < 0.0)
              {
                v145 = --*v142.i64;
              }

              else
              {
                LOBYTE(v145) = *v142.i64;
              }

              if (v123 + (v135 * v262) <= v145)
              {
LABEL_325:
                BlueFin::GlMeSrdSatMgr::GetSvidSetFromSatidSet(v270 + 440, &v359, v337);
                BlueFin::GlSetBase::operator=(&v297, v337);
                v299 = v339;
                v300 = v340;
                goto LABEL_326;
              }
            }

            if (*v355)
            {
              goto LABEL_255;
            }

            if (v356 >= 2u)
            {
              break;
            }

LABEL_261:
            v150 = v360;
            v151 = v359;
            if ((v257 & 1) == 0)
            {
              v337[0] = v360;
              memcpy(&v338, v359, 4 * v360);
              *&v337[2] = 0;
              v337[1] = 0;
              *&v337[4] = v338;
              BlueFin::GlSetIterator::operator++(v337);
              if (v337[1] != v337[0])
              {
                do
                {
                  if ((*(*v103 + ((*&v337[2] >> 3) & 0x1C)) >> (v337[2] & 0x1F)))
                  {
                    v152 = v337[2];
                    ActiveTimeMs = BlueFin::GlMeSrdSatMgr::GetActiveTimeMs((v270 + 3520), v337[2], *(v269 + 389));
                    BlueFin::GlMeSrdSatMgr::GetSvid(v270 + 440, v152, &__src);
                    if (__src - 1 >= 0x20)
                    {
                      v154 = ActiveTimeMs;
                    }

                    else
                    {
                      v154 = ActiveTimeMs + 10000;
                    }

                    v155 = v260;
                    if (v154 > v260)
                    {
                      v155 = v154;
                    }

                    v156 = v264;
                    if (v154 > v260)
                    {
                      v156 = v152;
                    }

                    v157 = v154 <= SHIDWORD(v260);
                    if (v154 > SHIDWORD(v260))
                    {
                      v155 = HIDWORD(v260);
                    }

                    LODWORD(v260) = v155;
                    if (v154 <= SHIDWORD(v260))
                    {
                      v154 = HIDWORD(v260);
                    }

                    v158 = v265;
                    if (!v157)
                    {
                      v156 = v265;
                    }

                    v264 = v156;
                    if (!v157)
                    {
                      v158 = v152;
                    }

                    HIDWORD(v260) = v154;
                    v265 = v158;
                  }

                  BlueFin::GlSetIterator::operator++(v337);
                }

                while (v337[1] != v337[0]);
                v150 = v360;
                v151 = v359;
              }
            }

            v337[0] = v150;
            memcpy(&v338, v151, 4 * v150);
            *&v337[2] = 0;
            v337[1] = 0;
            *&v337[4] = v338;
            BlueFin::GlSetIterator::operator++(v337);
            if (v337[1] != v337[0])
            {
              while (*&v337[2] == v265 || *&v337[2] == v264)
              {
                BlueFin::GlSetIterator::operator++(v337);
                if (v337[1] == v337[0])
                {
                  goto LABEL_292;
                }
              }

              BlueFin::GlSetBase::Remove(&v359, *&v337[2]);
              BlueFin::GlMeSrdSatMgr::GetSvidSetFromSatidSet(v270 + 440, &v359, &__src);
              if (BlueFin::GlUtils::m_ucEnabled)
              {
                BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x4F);
              }
            }

LABEL_292:
            v257 = 1;
          }

          v147 = v356 - 1;
          v148 = v355 + 4;
          while (!*v148++)
          {
            if (!--v147)
            {
              goto LABEL_261;
            }
          }

LABEL_255:
          v337[0] = v356;
          memcpy(&v338, v355, 4 * v356);
          *&v337[2] = 0;
          v337[1] = 0;
          *&v337[4] = v338;
          BlueFin::GlSetIterator::operator++(v337);
          v146 = *&v337[2];
          BlueFin::GlSetBase::Remove(&v359, *&v337[2]);
          BlueFin::GlSetBase::Remove(&v355, v146);
          BlueFin::GlMeSrdSatMgr::GetSvidSetFromSatidSet(v270 + 440, &v359, &__src);
          if (BlueFin::GlUtils::m_ucEnabled)
          {
            BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x4F);
          }

          goto LABEL_210;
        }
      }
    }

LABEL_326:
    *v337 = &v339;
    LOBYTE(v338) = 4;
    v339 = 0uLL;
    BlueFin::GlSetBase::OperatorBinaryAnd(v270 + 12176, v337, v103);
    __src = &v345;
    LOBYTE(v344) = 4;
    v345 = 0uLL;
    BlueFin::GlSetBase::OperatorBinaryAnd(v270 + 12488, &__src, v103);
    v170 = 0;
    v171 = (*v337 + 4 * v338 - 4);
    v22 = v269;
    do
    {
      if (*v171)
      {
        v172 = *v171 - (((*v171 >> 2) & 0x9249249) + ((*v171 >> 1) & 0x5B6DB6DB));
        v170 = ((v172 + (v172 >> 3)) & 0xC71C71C7) + v170 - 63 * (((v172 + (v172 >> 3)) & 0xC71C71C7) / 0x3F);
      }

      --v171;
    }

    while (v171 >= *v337);
    if (v170 <= 4u)
    {
      v173 = 0;
      v174 = v293 + 4 * v294 - 4;
      do
      {
        if (*v174)
        {
          v175 = *v174 - (((*v174 >> 1) & 0x5B6DB6DB) + ((*v174 >> 2) & 0x9249249));
          v173 = ((v175 + (v175 >> 3)) & 0xC71C71C7) + v173 - 63 * (((v175 + (v175 >> 3)) & 0xC71C71C7) / 0x3F);
        }

        --v174;
      }

      while (v174 >= v293);
      if (v173 > 4u)
      {
        goto LABEL_346;
      }
    }

    v176 = 0;
    v177 = __src + 4 * v344 - 4;
    do
    {
      if (*v177)
      {
        v178 = *v177 - (((*v177 >> 2) & 0x9249249) + ((*v177 >> 1) & 0x5B6DB6DB));
        v176 = ((v178 + (v178 >> 3)) & 0xC71C71C7) + v176 - 63 * (((v178 + (v178 >> 3)) & 0xC71C71C7) / 0x3F);
      }

      --v177;
    }

    while (v177 >= __src);
    if (v176 <= 2u)
    {
      v179 = 0;
      v180 = v297 + 4 * v298 - 4;
      do
      {
        if (*v180)
        {
          v181 = *v180 - (((*v180 >> 1) & 0x5B6DB6DB) + ((*v180 >> 2) & 0x9249249));
          v179 = ((v181 + (v181 >> 3)) & 0xC71C71C7) + v179 - 63 * (((v181 + (v181 >> 3)) & 0xC71C71C7) / 0x3F);
        }

        --v180;
      }

      while (v180 >= v297);
      if (v179 >= 3u)
      {
LABEL_346:
        if (*(v269 + 389) >> 4 <= 0x752u)
        {
          bzero(v289, ((4 * v290 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
        }

        bzero(v285, ((4 * v286 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
        bzero(v308, ((4 * v309 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
      }
    }

    v84 = v270;
  }

  BlueFin::GlSvIdSet::operator~(&v322, v337);
  BlueFin::GlSetBase::operator&=(&v277, v337);
  if (((*(**(v84 + 8) + 256))() & 1) == 0 && ((*(**(v84 + 8) + 264))(*(v84 + 8)) & 1) == 0)
  {
    BlueFin::GlSvIdSet::operator~(&v319, &v367);
    BlueFin::GlSetBase::GlSetBase(&__src, &v345, 8u, &v289);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&__src, v337, &v367);
    BlueFin::GlSetBase::operator=(&__src, v337);
    v345 = v339;
    v346 = v340;
    BlueFin::GlSetBase::operator=(&v289, &__src);
    v291 = v345;
    v292 = v346;
    BlueFin::GlSvIdSet::operator~(&v319, &v367);
    BlueFin::GlSetBase::GlSetBase(&__src, &v345, 8u, &v285);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&__src, v337, &v367);
    BlueFin::GlSetBase::operator=(&__src, v337);
    v345 = v339;
    v346 = v340;
    BlueFin::GlSetBase::operator=(&v285, &__src);
    v287 = v345;
    v288 = v346;
    BlueFin::GlSvIdSet::operator~(&v319, &v367);
    BlueFin::GlSetBase::GlSetBase(&__src, &v345, 8u, &v297);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&__src, v337, &v367);
    BlueFin::GlSetBase::operator=(&__src, v337);
    v345 = v339;
    v346 = v340;
    BlueFin::GlSetBase::operator=(&v297, &__src);
    v299 = v345;
    v300 = v346;
    BlueFin::GlSvIdSet::operator~(&v319, &v367);
    BlueFin::GlSetBase::GlSetBase(&__src, &v345, 8u, &v308);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&__src, v337, &v367);
    BlueFin::GlSetBase::operator=(&__src, v337);
    v345 = v339;
    v346 = v340;
    BlueFin::GlSetBase::operator=(&v308, &__src);
    v310 = v345;
    v311 = v346;
    BlueFin::GlSvIdSet::operator~(&v319, &v367);
    BlueFin::GlSetBase::GlSetBase(&__src, &v345, 8u, &v293);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&__src, v337, &v367);
    BlueFin::GlSetBase::operator=(&__src, v337);
    v345 = v339;
    v346 = v340;
    BlueFin::GlSetBase::operator=(&v293, &__src);
    v295 = v345;
    v296 = v346;
    BlueFin::GlSvIdSet::operator~(&v319, &v367);
    BlueFin::GlSetBase::GlSetBase(&__src, &v345, 8u, &v277);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&__src, v337, &v367);
    BlueFin::GlSetBase::operator=(&__src, v337);
    v345 = v339;
    v346 = v340;
    BlueFin::GlSetBase::operator=(&v277, &__src);
    v279 = v345;
    v280 = v346;
    BlueFin::GlSvIdSet::operator~(&v319, &v367);
    v84 = v270;
    BlueFin::GlSetBase::GlSetBase(&__src, &v345, 8u, &v281);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&__src, v337, &v367);
    BlueFin::GlSetBase::operator=(&__src, v337);
    v345 = v339;
    v346 = v340;
    BlueFin::GlSetBase::operator=(&v281, &__src);
    v283 = v345;
    v284 = v346;
  }

  if ((*(**(v84 + 8) + 832))(*(v84 + 8), 9))
  {
    __src = &v345;
    LOBYTE(v344) = 8;
    v345 = 0u;
    v346 = 0u;
    if (((*(**(v84 + 8) + 1224))(*(v84 + 8)) & 1) == 0 && ((*(**(v84 + 10) + 40))(*(v84 + 10)) & 1) == 0)
    {
      v182 = *(v22 + 1653);
      v183 = __src;
      if (*(v22 + 1653))
      {
        v184 = *(v84 + 3114) + 4;
        do
        {
          v185 = *(v184 - 4);
          if (v185 - 76 <= 0x3E && (*(v184 + 2) & 0x10) == 0)
          {
            *(v183 + ((v185 >> 3) & 0x1C)) |= 1 << v185;
          }

          v184 += 8;
          --v182;
        }

        while (v182);
      }

      if (*v183)
      {
        goto LABEL_363;
      }

      if (v344 >= 2uLL)
      {
        v194 = v344 - 1;
        v195 = v183 + 1;
        while (!*v195++)
        {
          if (!--v194)
          {
            goto LABEL_368;
          }
        }

LABEL_363:
        BlueFin::GlSvIdSet::operator~(&__src, &v363);
        v186 = BlueFin::GlSetBase::GlSetBase(&v367, &v369, 8u, &v289);
        *v337 = &v339;
        LOBYTE(v338) = 8;
        v339 = 0u;
        v340 = 0u;
        BlueFin::GlSetBase::OperatorBinaryAnd(v186, v337, &v363);
        BlueFin::GlSetBase::operator=(&v367, v337);
        v369 = v339;
        v370 = v340;
        BlueFin::GlSetBase::operator=(&v289, &v367);
        v291 = v369;
        v292 = v370;
        BlueFin::GlSvIdSet::operator~(&__src, &v363);
        v187 = BlueFin::GlSetBase::GlSetBase(&v367, &v369, 8u, &v285);
        *v337 = &v339;
        LOBYTE(v338) = 8;
        v339 = 0u;
        v340 = 0u;
        BlueFin::GlSetBase::OperatorBinaryAnd(v187, v337, &v363);
        BlueFin::GlSetBase::operator=(&v367, v337);
        v369 = v339;
        v370 = v340;
        BlueFin::GlSetBase::operator=(&v285, &v367);
        v287 = v369;
        v288 = v370;
        BlueFin::GlSvIdSet::operator~(&__src, &v363);
        v188 = BlueFin::GlSetBase::GlSetBase(&v367, &v369, 8u, &v297);
        *v337 = &v339;
        LOBYTE(v338) = 8;
        v339 = 0u;
        v340 = 0u;
        BlueFin::GlSetBase::OperatorBinaryAnd(v188, v337, &v363);
        BlueFin::GlSetBase::operator=(&v367, v337);
        v369 = v339;
        v370 = v340;
        BlueFin::GlSetBase::operator=(&v297, &v367);
        v299 = v369;
        v300 = v370;
        BlueFin::GlSvIdSet::operator~(&__src, &v363);
        v189 = BlueFin::GlSetBase::GlSetBase(&v367, &v369, 8u, &v308);
        *v337 = &v339;
        LOBYTE(v338) = 8;
        v339 = 0u;
        v340 = 0u;
        BlueFin::GlSetBase::OperatorBinaryAnd(v189, v337, &v363);
        BlueFin::GlSetBase::operator=(&v367, v337);
        v369 = v339;
        v370 = v340;
        BlueFin::GlSetBase::operator=(&v308, &v367);
        v310 = v369;
        v311 = v370;
        BlueFin::GlSvIdSet::operator~(&__src, &v363);
        v190 = BlueFin::GlSetBase::GlSetBase(&v367, &v369, 8u, &v293);
        *v337 = &v339;
        LOBYTE(v338) = 8;
        v339 = 0u;
        v340 = 0u;
        BlueFin::GlSetBase::OperatorBinaryAnd(v190, v337, &v363);
        BlueFin::GlSetBase::operator=(&v367, v337);
        v369 = v339;
        v370 = v340;
        BlueFin::GlSetBase::operator=(&v293, &v367);
        v295 = v369;
        v296 = v370;
        BlueFin::GlSvIdSet::operator~(&__src, &v363);
        v191 = BlueFin::GlSetBase::GlSetBase(&v367, &v369, 8u, &v277);
        *v337 = &v339;
        LOBYTE(v338) = 8;
        v339 = 0u;
        v340 = 0u;
        BlueFin::GlSetBase::OperatorBinaryAnd(v191, v337, &v363);
        BlueFin::GlSetBase::operator=(&v367, v337);
        v369 = v339;
        v370 = v340;
        BlueFin::GlSetBase::operator=(&v277, &v367);
        v279 = v369;
        v280 = v370;
        BlueFin::GlSvIdSet::operator~(&__src, &v363);
        v192 = BlueFin::GlSetBase::GlSetBase(&v367, &v369, 8u, &v281);
        *v337 = &v339;
        LOBYTE(v338) = 8;
        v339 = 0u;
        v340 = 0u;
        BlueFin::GlSetBase::OperatorBinaryAnd(v192, v337, &v363);
        BlueFin::GlSetBase::operator=(&v367, v337);
        v369 = v339;
        v370 = v340;
        BlueFin::GlSetBase::operator=(&v281, &v367);
        v283 = v369;
        v284 = v370;
        BlueFin::GlSvIdSet::operator~(&__src, &v363);
        v84 = v270;
        v193 = BlueFin::GlSetBase::GlSetBase(&v367, &v369, 8u, &v304);
        *v337 = &v339;
        LOBYTE(v338) = 8;
        v339 = 0u;
        v340 = 0u;
        BlueFin::GlSetBase::OperatorBinaryAnd(v193, v337, &v363);
        BlueFin::GlSetBase::operator=(&v367, v337);
        v369 = v339;
        v370 = v340;
        BlueFin::GlSetBase::operator=(&v304, &v367);
        v306 = v369;
        v307 = v370;
      }
    }
  }

LABEL_368:
  if ((*(**(v84 + 8) + 832))(*(v84 + 8), 10))
  {
    __src = &v345;
    LOBYTE(v344) = 8;
    v345 = 0u;
    v346 = 0u;
    v197 = *(v22 + 1653);
    if (!*(v22 + 1653))
    {
      goto LABEL_380;
    }

    v198 = *(v84 + 3114) + 4;
    do
    {
      v199 = *(v198 - 4);
      v200 = v199 - 1 >= 0x20 && v199 - 66 > 9;
      if (!v200 && (*(v198 + 3) & 1) != 0)
      {
        *(&v345 + ((v199 >> 3) & 0x1C)) |= 1 << v199;
      }

      v198 += 8;
      --v197;
    }

    while (v197);
    if (!v345)
    {
LABEL_380:
      v209 = 0;
      while (!*(&v345 + v209 + 4))
      {
        v209 += 4;
        if (v209 == 28)
        {
          goto LABEL_383;
        }
      }
    }

    BlueFin::GlSvIdSet::operator~(&__src, &v363);
    v201 = BlueFin::GlSetBase::GlSetBase(&v367, &v369, 8u, &v289);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(v201, v337, &v363);
    BlueFin::GlSetBase::operator=(&v367, v337);
    v369 = v339;
    v370 = v340;
    BlueFin::GlSetBase::operator=(&v289, &v367);
    v291 = v369;
    v292 = v370;
    BlueFin::GlSvIdSet::operator~(&__src, &v363);
    v202 = BlueFin::GlSetBase::GlSetBase(&v367, &v369, 8u, &v285);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(v202, v337, &v363);
    BlueFin::GlSetBase::operator=(&v367, v337);
    v369 = v339;
    v370 = v340;
    BlueFin::GlSetBase::operator=(&v285, &v367);
    v287 = v369;
    v288 = v370;
    BlueFin::GlSvIdSet::operator~(&__src, &v363);
    v203 = BlueFin::GlSetBase::GlSetBase(&v367, &v369, 8u, &v297);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(v203, v337, &v363);
    BlueFin::GlSetBase::operator=(&v367, v337);
    v369 = v339;
    v370 = v340;
    BlueFin::GlSetBase::operator=(&v297, &v367);
    v299 = v369;
    v300 = v370;
    BlueFin::GlSvIdSet::operator~(&__src, &v363);
    v204 = BlueFin::GlSetBase::GlSetBase(&v367, &v369, 8u, &v308);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(v204, v337, &v363);
    BlueFin::GlSetBase::operator=(&v367, v337);
    v369 = v339;
    v370 = v340;
    BlueFin::GlSetBase::operator=(&v308, &v367);
    v310 = v369;
    v311 = v370;
    BlueFin::GlSvIdSet::operator~(&__src, &v363);
    v205 = BlueFin::GlSetBase::GlSetBase(&v367, &v369, 8u, &v293);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(v205, v337, &v363);
    BlueFin::GlSetBase::operator=(&v367, v337);
    v369 = v339;
    v370 = v340;
    BlueFin::GlSetBase::operator=(&v293, &v367);
    v295 = v369;
    v296 = v370;
    BlueFin::GlSvIdSet::operator~(&__src, &v363);
    v206 = BlueFin::GlSetBase::GlSetBase(&v367, &v369, 8u, &v277);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(v206, v337, &v363);
    BlueFin::GlSetBase::operator=(&v367, v337);
    v369 = v339;
    v370 = v340;
    BlueFin::GlSetBase::operator=(&v277, &v367);
    v279 = v369;
    v280 = v370;
    BlueFin::GlSvIdSet::operator~(&__src, &v363);
    v207 = BlueFin::GlSetBase::GlSetBase(&v367, &v369, 8u, &v281);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(v207, v337, &v363);
    BlueFin::GlSetBase::operator=(&v367, v337);
    v369 = v339;
    v370 = v340;
    BlueFin::GlSetBase::operator=(&v281, &v367);
    v283 = v369;
    v284 = v370;
    BlueFin::GlSvIdSet::operator~(&__src, &v363);
    v84 = v270;
    v208 = BlueFin::GlSetBase::GlSetBase(&v367, &v369, 8u, &v304);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(v208, v337, &v363);
    BlueFin::GlSetBase::operator=(&v367, v337);
    v369 = v339;
    v370 = v340;
    BlueFin::GlSetBase::operator=(&v304, &v367);
    v306 = v369;
    v307 = v370;
  }

LABEL_383:
  if ((*(**(v84 + 8) + 32))(*(v84 + 8)))
  {
    BlueFin::GlSetBase::GlSetBase(&v355, &v357, 8u, &v319);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryOr(&v355, v337, &v322);
    BlueFin::GlSetBase::operator=(&v355, v337);
    v357 = v339;
    v358 = v340;
    BlueFin::GlSetBase::GlSetBase(&v359, &v361, 8u, &v355);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryOr(&v359, v337, &v325);
    BlueFin::GlSetBase::operator=(&v359, v337);
    v361 = v339;
    v362 = v340;
    v210 = BlueFin::GlSetBase::GlSetBase(&v363, &v365, 8u, &v359);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryOr(v210, v337, &v331);
    v211 = BlueFin::GlSetBase::operator=(&v363, v337);
    v365 = v339;
    v366 = v340;
    BlueFin::GlSvIdSet::operator~(v211, &v367);
    BlueFin::GlSetBase::GlSetBase(&__src, &v345, 8u, &v289);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&__src, v337, &v367);
    BlueFin::GlSetBase::operator=(&__src, v337);
    v345 = v339;
    v346 = v340;
    BlueFin::GlSetBase::operator=(&v289, &__src);
    v291 = v345;
    v292 = v346;
    BlueFin::GlSetBase::GlSetBase(&v355, &v357, 8u, &v319);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryOr(&v355, v337, &v322);
    BlueFin::GlSetBase::operator=(&v355, v337);
    v357 = v339;
    v358 = v340;
    BlueFin::GlSetBase::GlSetBase(&v359, &v361, 8u, &v355);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryOr(&v359, v337, &v325);
    BlueFin::GlSetBase::operator=(&v359, v337);
    v361 = v339;
    v362 = v340;
    v212 = BlueFin::GlSetBase::GlSetBase(&v363, &v365, 8u, &v359);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryOr(v212, v337, &v331);
    v213 = BlueFin::GlSetBase::operator=(&v363, v337);
    v365 = v339;
    v366 = v340;
    BlueFin::GlSvIdSet::operator~(v213, &v367);
    BlueFin::GlSetBase::GlSetBase(&__src, &v345, 8u, &v285);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&__src, v337, &v367);
    BlueFin::GlSetBase::operator=(&__src, v337);
    v345 = v339;
    v346 = v340;
    BlueFin::GlSetBase::operator=(&v285, &__src);
    v287 = v345;
    v288 = v346;
    BlueFin::GlSetBase::GlSetBase(&v355, &v357, 8u, &v319);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryOr(&v355, v337, &v322);
    BlueFin::GlSetBase::operator=(&v355, v337);
    v357 = v339;
    v358 = v340;
    BlueFin::GlSetBase::GlSetBase(&v359, &v361, 8u, &v355);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryOr(&v359, v337, &v325);
    BlueFin::GlSetBase::operator=(&v359, v337);
    v361 = v339;
    v362 = v340;
    v214 = BlueFin::GlSetBase::GlSetBase(&v363, &v365, 8u, &v359);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryOr(v214, v337, &v331);
    v215 = BlueFin::GlSetBase::operator=(&v363, v337);
    v365 = v339;
    v366 = v340;
    BlueFin::GlSvIdSet::operator~(v215, &v367);
    BlueFin::GlSetBase::GlSetBase(&__src, &v345, 8u, &v308);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&__src, v337, &v367);
    BlueFin::GlSetBase::operator=(&__src, v337);
    v345 = v339;
    v346 = v340;
    BlueFin::GlSetBase::operator=(&v308, &__src);
    v310 = v345;
    v311 = v346;
    BlueFin::GlSetBase::GlSetBase(&v355, &v357, 8u, &v319);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryOr(&v355, v337, &v322);
    BlueFin::GlSetBase::operator=(&v355, v337);
    v357 = v339;
    v358 = v340;
    BlueFin::GlSetBase::GlSetBase(&v359, &v361, 8u, &v355);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryOr(&v359, v337, &v325);
    BlueFin::GlSetBase::operator=(&v359, v337);
    v361 = v339;
    v362 = v340;
    v216 = BlueFin::GlSetBase::GlSetBase(&v363, &v365, 8u, &v359);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryOr(v216, v337, &v331);
    v217 = BlueFin::GlSetBase::operator=(&v363, v337);
    v365 = v339;
    v366 = v340;
    BlueFin::GlSvIdSet::operator~(v217, &v367);
    BlueFin::GlSetBase::GlSetBase(&__src, &v345, 8u, &v277);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&__src, v337, &v367);
    BlueFin::GlSetBase::operator=(&__src, v337);
    v345 = v339;
    v346 = v340;
    BlueFin::GlSetBase::operator=(&v277, &__src);
    v279 = v345;
    v280 = v346;
    BlueFin::GlSetBase::GlSetBase(&v355, &v357, 8u, &v319);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryOr(&v355, v337, &v322);
    BlueFin::GlSetBase::operator=(&v355, v337);
    v357 = v339;
    v358 = v340;
    BlueFin::GlSetBase::GlSetBase(&v359, &v361, 8u, &v355);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryOr(&v359, v337, &v325);
    BlueFin::GlSetBase::operator=(&v359, v337);
    v361 = v339;
    v362 = v340;
    v218 = BlueFin::GlSetBase::GlSetBase(&v363, &v365, 8u, &v359);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryOr(v218, v337, &v331);
    v219 = BlueFin::GlSetBase::operator=(&v363, v337);
    v365 = v339;
    v366 = v340;
    BlueFin::GlSvIdSet::operator~(v219, &v367);
    BlueFin::GlSetBase::GlSetBase(&__src, &v345, 8u, &v281);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&__src, v337, &v367);
    BlueFin::GlSetBase::operator=(&__src, v337);
    v345 = v339;
    v346 = v340;
    BlueFin::GlSetBase::operator=(&v281, &__src);
    v283 = v345;
    v284 = v346;
    BlueFin::GlSetBase::GlSetBase(&v355, &v357, 8u, &v319);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryOr(&v355, v337, &v322);
    BlueFin::GlSetBase::operator=(&v355, v337);
    v357 = v339;
    v358 = v340;
    BlueFin::GlSetBase::GlSetBase(&v359, &v361, 8u, &v355);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryOr(&v359, v337, &v325);
    BlueFin::GlSetBase::operator=(&v359, v337);
    v361 = v339;
    v362 = v340;
    v220 = BlueFin::GlSetBase::GlSetBase(&v363, &v365, 8u, &v359);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryOr(v220, v337, &v331);
    v221 = BlueFin::GlSetBase::operator=(&v363, v337);
    v365 = v339;
    v366 = v340;
    BlueFin::GlSvIdSet::operator~(v221, &v367);
    BlueFin::GlSetBase::GlSetBase(&__src, &v345, 8u, &v297);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&__src, v337, &v367);
    BlueFin::GlSetBase::operator=(&__src, v337);
    v345 = v339;
    v346 = v340;
    BlueFin::GlSetBase::operator=(&v297, &__src);
    v299 = v345;
    v300 = v346;
    BlueFin::GlSetBase::GlSetBase(&v355, &v357, 8u, &v319);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryOr(&v355, v337, &v322);
    BlueFin::GlSetBase::operator=(&v355, v337);
    v357 = v339;
    v358 = v340;
    BlueFin::GlSetBase::GlSetBase(&v359, &v361, 8u, &v355);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryOr(&v359, v337, &v325);
    BlueFin::GlSetBase::operator=(&v359, v337);
    v361 = v339;
    v362 = v340;
    v222 = BlueFin::GlSetBase::GlSetBase(&v363, &v365, 8u, &v359);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryOr(v222, v337, &v331);
    v223 = BlueFin::GlSetBase::operator=(&v363, v337);
    v365 = v339;
    v366 = v340;
    v22 = v269;
    BlueFin::GlSvIdSet::operator~(v223, &v367);
    BlueFin::GlSetBase::GlSetBase(&__src, &v345, 8u, &v293);
    *v337 = &v339;
    v84 = v270;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&__src, v337, &v367);
    BlueFin::GlSetBase::operator=(&__src, v337);
    v345 = v339;
    v346 = v340;
    BlueFin::GlSetBase::operator=(&v293, &__src);
    v295 = v345;
    v296 = v346;
  }

  if ((*(**(v84 + 8) + 256))(*(v84 + 8)) && ((*(**(v84 + 10) + 32))(*(v84 + 10)) & 1) == 0)
  {
    BlueFin::GlSvIdSet::operator~(&v319, &v367);
    BlueFin::GlSetBase::GlSetBase(&__src, &v345, 8u, &v289);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&__src, v337, &v367);
    BlueFin::GlSetBase::operator=(&__src, v337);
    v345 = v339;
    v346 = v340;
    BlueFin::GlSetBase::operator=(&v289, &__src);
    v291 = v345;
    v292 = v346;
    BlueFin::GlSvIdSet::operator~(&v319, &v367);
    BlueFin::GlSetBase::GlSetBase(&__src, &v345, 8u, &v285);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&__src, v337, &v367);
    BlueFin::GlSetBase::operator=(&__src, v337);
    v345 = v339;
    v346 = v340;
    BlueFin::GlSetBase::operator=(&v285, &__src);
    v287 = v345;
    v288 = v346;
    BlueFin::GlSvIdSet::operator~(&v319, &v367);
    BlueFin::GlSetBase::GlSetBase(&__src, &v345, 8u, &v297);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&__src, v337, &v367);
    BlueFin::GlSetBase::operator=(&__src, v337);
    v345 = v339;
    v346 = v340;
    BlueFin::GlSetBase::operator=(&v297, &__src);
    v299 = v345;
    v300 = v346;
    BlueFin::GlSvIdSet::operator~(&v319, &v367);
    BlueFin::GlSetBase::GlSetBase(&__src, &v345, 8u, &v308);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&__src, v337, &v367);
    BlueFin::GlSetBase::operator=(&__src, v337);
    v345 = v339;
    v346 = v340;
    BlueFin::GlSetBase::operator=(&v308, &__src);
    v310 = v345;
    v311 = v346;
    BlueFin::GlSvIdSet::operator~(&v319, &v367);
    BlueFin::GlSetBase::GlSetBase(&__src, &v345, 8u, &v293);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&__src, v337, &v367);
    BlueFin::GlSetBase::operator=(&__src, v337);
    v345 = v339;
    v346 = v340;
    BlueFin::GlSetBase::operator=(&v293, &__src);
    v295 = v345;
    v296 = v346;
    BlueFin::GlSvIdSet::operator~(&v319, &v367);
    BlueFin::GlSetBase::GlSetBase(&__src, &v345, 8u, &v277);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&__src, v337, &v367);
    BlueFin::GlSetBase::operator=(&__src, v337);
    v345 = v339;
    v346 = v340;
    BlueFin::GlSetBase::operator=(&v277, &__src);
    v279 = v345;
    v280 = v346;
    BlueFin::GlSvIdSet::operator~(&v319, &v367);
    v84 = v270;
    BlueFin::GlSetBase::GlSetBase(&__src, &v345, 8u, &v281);
    *v337 = &v339;
    LOBYTE(v338) = 8;
    v339 = 0u;
    v340 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&__src, v337, &v367);
    BlueFin::GlSetBase::operator=(&__src, v337);
    v345 = v339;
    v346 = v340;
    BlueFin::GlSetBase::operator=(&v281, &__src);
    v283 = v345;
    v284 = v346;
  }

  if ((*(**(v84 + 8) + 264))(*(v84 + 8)))
  {
    if ((*(**(v84 + 8) + 1208))(*(v84 + 8)))
    {
      BlueFin::GlSvIdSet::operator~(&v319, &v367);
      BlueFin::GlSetBase::GlSetBase(&__src, &v345, 8u, &v289);
      *v337 = &v339;
      LOBYTE(v338) = 8;
      v339 = 0u;
      v340 = 0u;
      BlueFin::GlSetBase::OperatorBinaryAnd(&__src, v337, &v367);
      BlueFin::GlSetBase::operator=(&__src, v337);
      v345 = v339;
      v346 = v340;
      BlueFin::GlSetBase::operator=(&v289, &__src);
      v291 = v345;
      v292 = v346;
      BlueFin::GlSvIdSet::operator~(&v319, &v367);
      BlueFin::GlSetBase::GlSetBase(&__src, &v345, 8u, &v285);
      *v337 = &v339;
      v84 = v270;
      LOBYTE(v338) = 8;
      v339 = 0u;
      v340 = 0u;
      BlueFin::GlSetBase::OperatorBinaryAnd(&__src, v337, &v367);
      BlueFin::GlSetBase::operator=(&__src, v337);
      v345 = v339;
      v346 = v340;
      BlueFin::GlSetBase::operator=(&v285, &__src);
      v287 = v345;
      v288 = v346;
    }

    if ((v22[3646] & 1) == 0)
    {
      *v337 = &v339;
      LOBYTE(v338) = 8;
      v339 = 0u;
      v340 = 0u;
      for (i = 52; i != 66; ++i)
      {
        *(&v339 + (i >> 5)) |= 1 << i;
      }

      v225 = v298;
      if (v298)
      {
        if (v298 >= 8u)
        {
          v226 = 8;
        }

        else
        {
          v226 = v298;
        }

        if ((v339 & *v297) != 0)
        {
          v225 = 1;
        }

        else
        {
          v227 = 0;
          while (v226 - 1 != v227)
          {
            v228 = *(v297 + v227 + 1);
            v229 = *(&v339 + ++v227);
            if ((v229 & v228) != 0)
            {
              goto LABEL_409;
            }
          }

          v227 = v226;
LABEL_409:
          v225 = v227 < v226;
        }
      }

      v345 = BlueFin::GlSvIdSet::csm_aulGlSvIdSet[0];
      v230 = *(v22 + 837);
      if (v230 == 1 || v225)
      {
        v231 = 3000;
      }

      else
      {
        v231 = 0;
      }

      if (v230)
      {
        v232 = v231;
      }

      else
      {
        v232 = 6000;
      }

      __src = &v345;
      LOBYTE(v344) = 8;
      v346 = *algn_298A323DC;
      v233 = BlueFin::GlSetBase::GlSetBase(&v363, &v365, 8u, &v297);
      *v337 = &v339;
      LOBYTE(v338) = 8;
      v339 = 0u;
      v340 = 0u;
      BlueFin::GlSetBase::OperatorBinaryOr(v233, v337, &v304);
      BlueFin::GlSetBase::operator=(&v363, v337);
      v365 = v339;
      v366 = v340;
      v234 = BlueFin::GlSetBase::GlSetBase(&v367, &v369, 8u, &v363);
      *v337 = &v339;
      LOBYTE(v338) = 8;
      v339 = 0u;
      v340 = 0u;
      BlueFin::GlSetBase::OperatorBinaryAnd(v234, v337, &__src);
      BlueFin::GlSetBase::operator=(&v367, v337);
      v369 = v339;
      v370 = v340;
      if (*v367)
      {
LABEL_417:
        BlueFin::GlSetBase::GlSetBase(&v359, &v361, 8u, &v334);
        *v337 = &v339;
        LOBYTE(v338) = 8;
        v339 = 0u;
        v340 = 0u;
        BlueFin::GlSetBase::OperatorBinaryAnd(&v359, v337, &__src);
        BlueFin::GlSetBase::operator=(&v359, v337);
        v361 = v339;
        v362 = v340;
        v84 = v270;
        if (*v359)
        {
          goto LABEL_428;
        }

        if (v360 >= 2uLL)
        {
          v235 = v360 - 1;
          v236 = v359 + 4;
          do
          {
            if (*v236++)
            {
              goto LABEL_428;
            }
          }

          while (--v235);
        }

        v238 = *(v22 + 389);
LABEL_429:
        GlCustomLog(14, "Lms %u: thd %u Remove Gal Satellites from assisted search list\n", v238, v232);
        BlueFin::GlSvIdSet::operator~(&v319, &v363);
        v242 = BlueFin::GlSetBase::GlSetBase(&v367, &v369, 8u, &v297);
        *v337 = &v339;
        LOBYTE(v338) = 8;
        v339 = 0u;
        v340 = 0u;
        BlueFin::GlSetBase::OperatorBinaryAnd(v242, v337, &v363);
        BlueFin::GlSetBase::operator=(&v367, v337);
        v369 = v339;
        v370 = v340;
        BlueFin::GlSetBase::operator=(&v297, &v367);
        v299 = v369;
        v300 = v370;
        BlueFin::GlSvIdSet::operator~(&v319, &v363);
        v243 = BlueFin::GlSetBase::GlSetBase(&v367, &v369, 8u, &v308);
        *v337 = &v339;
        LOBYTE(v338) = 8;
        v339 = 0u;
        v340 = 0u;
        BlueFin::GlSetBase::OperatorBinaryAnd(v243, v337, &v363);
        BlueFin::GlSetBase::operator=(&v367, v337);
        v369 = v339;
        v370 = v340;
        BlueFin::GlSetBase::operator=(&v308, &v367);
        v310 = v369;
        v311 = v370;
        BlueFin::GlSvIdSet::operator~(&v319, &v363);
        v244 = BlueFin::GlSetBase::GlSetBase(&v367, &v369, 8u, &v304);
        *v337 = &v339;
        v84 = v270;
        LOBYTE(v338) = 8;
        v339 = 0u;
        v340 = 0u;
        BlueFin::GlSetBase::OperatorBinaryAnd(v244, v337, &v363);
        BlueFin::GlSetBase::operator=(&v367, v337);
        v369 = v339;
        v370 = v340;
        BlueFin::GlSetBase::operator=(&v304, &v367);
        v306 = v369;
        v307 = v370;
      }

      else
      {
        if (v368 >= 2uLL)
        {
          v239 = v368 - 1;
          v240 = (v367 + 4);
          do
          {
            if (*v240++)
            {
              goto LABEL_417;
            }
          }

          while (--v239);
        }

        v84 = v270;
LABEL_428:
        v238 = *(v22 + 389);
        if (v238 < v232)
        {
          goto LABEL_429;
        }

        v22[3646] = 1;
        v245 = BlueFin::GlSetBase::GlSetBase(&v363, &v365, 8u, &v297);
        *v337 = &v339;
        LOBYTE(v338) = 8;
        v339 = 0u;
        v340 = 0u;
        BlueFin::GlSetBase::OperatorBinaryOr(v245, v337, &v304);
        BlueFin::GlSetBase::operator=(&v363, v337);
        v365 = v339;
        v366 = v340;
        v246 = BlueFin::GlSetBase::GlSetBase(&v367, &v369, 8u, &v363);
        *v337 = &v339;
        LOBYTE(v338) = 8;
        v339 = 0u;
        v340 = 0u;
        BlueFin::GlSetBase::OperatorBinaryAnd(v246, v337, &v319);
        BlueFin::GlSetBase::operator=(&v367, v337);
        v369 = v339;
        v370 = v340;
        BlueFin::GlMeSrdAidingMgr::ForceAidingRefresh(v84 + 240, &v367);
      }
    }
  }

  v247 = v84;
  BlueFin::GlSetBase::operator=(v84 + 10864, &v289);
  v248 = v292;
  *(v84 + 10876) = v291;
  *(v84 + 10892) = v248;
  BlueFin::GlMeSrdSearchMgrBase::RemoveInvalidSvId((v247 + 10608), (v247 + 10864));
  BlueFin::GlSetBase::operator=(v84 + 10384, &v285);
  v249 = v288;
  *(v84 + 10396) = v287;
  *(v84 + 10412) = v249;
  BlueFin::GlMeSrdSearchMgrBase::RemoveInvalidSvId((v247 + 10128), (v247 + 10384));
  BlueFin::GlSetBase::operator=(v84 + 12616, &v297);
  v250 = v300;
  *(v84 + 12628) = v299;
  *(v84 + 12644) = v250;
  BlueFin::GlMeSrdSearchMgrBase::RemoveInvalidSvId((v247 + 12360), (v247 + 12616));
  BlueFin::GlSetBase::operator=(v84 + 12928, &v308);
  v251 = v311;
  *(v84 + 12940) = v310;
  *(v84 + 12956) = v251;
  BlueFin::GlMeSrdSearchMgrBase::RemoveInvalidSvId((v247 + 12672), (v247 + 12928));
  BlueFin::GlSetBase::operator=(v84 + 12304, &v293);
  v252 = v296;
  *(v84 + 12316) = v295;
  *(v84 + 12332) = v252;
  BlueFin::GlMeSrdSearchMgrBase::RemoveInvalidSvId((v247 + 12048), (v247 + 12304));
  BlueFin::GlSetBase::operator=(v84 + 11344, &v277);
  v253 = v280;
  *(v84 + 11356) = v279;
  *(v84 + 11372) = v253;
  BlueFin::GlMeSrdSearchMgrBase::RemoveInvalidSvId((v247 + 11088), (v247 + 11344));
  BlueFin::GlSetBase::operator=(v84 + 11824, &v281);
  v254 = v284;
  *(v84 + 11836) = v283;
  *(v84 + 11852) = v254;
  BlueFin::GlMeSrdSearchMgrBase::RemoveInvalidSvId((v247 + 11568), (v247 + 11824));
  BlueFin::GlSetBase::operator=(v84 + 13240, &v273);
  v255 = v276;
  *(v84 + 13252) = v275;
  *(v84 + 13268) = v255;
  BlueFin::GlMeSrdSearchMgrBase::RemoveInvalidSvId((v247 + 12984), (v247 + 13240));
  BlueFin::GlSetBase::operator=(v84 + 13864, &v304);
  v256 = v307;
  *(v84 + 13876) = v306;
  *(v84 + 13892) = v256;
  BlueFin::GlMeSrdSearchMgrBase::RemoveInvalidSvId((v247 + 13608), (v247 + 13864));
}

double BlueFin::GlMeSrdSearchMgrBase::RemoveInvalidSvId(BlueFin::GlMeSrdSearchMgrBase *this, BlueFin::GlSvIdSet *a2)
{
  v70[0] = xmmword_298A323EC;
  v70[1] = *algn_298A323FC;
  v67[0] = xmmword_298A3242C;
  v67[1] = unk_298A3243C;
  v64[0] = BlueFin::GlSvIdSet::csm_aulBeidouGeoSvIds;
  v64[1] = unk_298A324BC;
  v36 = xmmword_298A3244C;
  v68 = v70;
  v69 = 8;
  v65 = v67;
  v66 = 8;
  v62 = v64;
  v63 = 8;
  v34 = &v36;
  LOBYTE(v35) = 8;
  *v37 = unk_298A3245C;
  BlueFin::GlSvIdSet::operator~(&v62, &v56);
  BlueFin::GlSetBase::GlSetBase(&__src, v61, 8u, &v34);
  v38 = &v40;
  LOBYTE(v39) = 8;
  v40 = 0u;
  v41 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(&__src, &v38, &v56);
  BlueFin::GlSetBase::operator=(&__src, &v38);
  v61[0] = v40;
  v61[1] = v41;
  v58[0] = xmmword_298A3246C;
  v58[1] = unk_298A3247C;
  v55[0] = xmmword_298A3248C;
  v56 = v58;
  v57 = 8;
  v53 = v55;
  v54 = 8;
  v55[1] = unk_298A3249C;
  LOBYTE(v38) = 1;
  HIDWORD(v38) = 0;
  LOWORD(v39) = 0;
  if (BlueFin::GlMeSrdSearchMgrBase::GetStrategyId(this, &v38) == 250)
  {
    v42 = v44;
    v43 = 8;
    v44[0] = BlueFin::GlSvIdSet::csm_aulGlSvIdSet[0];
    v44[1] = *algn_298A323DC;
    BlueFin::GlSetBase::GlSetBase(&v45, v46, 8u, &v42);
    v38 = &v40;
    LOBYTE(v39) = 8;
    v40 = 0u;
    v41 = 0u;
    BlueFin::GlSetBase::OperatorBinaryOr(&v45, &v38, &v65);
    BlueFin::GlSetBase::operator=(&v45, &v38);
    v46[0] = v40;
    v46[1] = v41;
    BlueFin::GlSetBase::GlSetBase(&v47, &v49, 8u, &v45);
    v38 = &v40;
    LOBYTE(v39) = 8;
    v40 = 0u;
    v41 = 0u;
    BlueFin::GlSetBase::OperatorBinaryOr(&v47, &v38, &v53);
    BlueFin::GlSetBase::operator=(&v47, &v38);
    v49 = v40;
    v50 = v41;
    BlueFin::GlSvIdSet::operator~(&v47, &v51);
    BlueFin::GlSetBase::GlSetBase(&v34, &v36, 8u, a2);
    v38 = &v40;
    LOBYTE(v39) = 8;
    v40 = 0u;
    v41 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&v34, &v38, &v51);
    BlueFin::GlSetBase::operator=(&v34, &v38);
    v36 = v40;
    *v37 = v41;
    BlueFin::GlSetBase::operator=(a2, &v34);
    *(a2 + 12) = v36;
    *(a2 + 28) = *v37;
  }

  LOBYTE(v38) = 52;
  HIDWORD(v38) = 0;
  LOWORD(v39) = 147;
  if (BlueFin::GlMeSrdSearchMgrBase::GetStrategyId(this, &v38) == 250)
  {
    v47 = &v49;
    LOBYTE(v48) = 8;
    v49 = xmmword_298A3240C;
    v50 = unk_298A3241C;
    BlueFin::GlSvIdSet::operator~(&v47, &v51);
    BlueFin::GlSetBase::GlSetBase(&v34, &v36, 8u, a2);
    v38 = &v40;
    LOBYTE(v39) = 8;
    v40 = 0u;
    v41 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&v34, &v38, &v51);
    BlueFin::GlSetBase::operator=(&v34, &v38);
    v36 = v40;
    *v37 = v41;
    BlueFin::GlSetBase::operator=(a2, &v34);
    *(a2 + 12) = v36;
    *(a2 + 28) = *v37;
  }

  LOBYTE(v38) = v60;
  memcpy(&v39, __src, 4 * v60);
  WORD1(v38) = 0;
  BYTE1(v38) = 0;
  HIDWORD(v38) = v39;
  BlueFin::GlSetIterator::operator++(&v38);
  LOBYTE(v51) = BYTE2(v38);
  HIDWORD(v51) = 0;
  v52 = 575;
  if (BYTE2(v38) - 189 >= 0xFFFFFF44)
  {
    v4 = BlueFin::GlSvId::s_aucSvId2gnss[BYTE2(v38)];
    if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v4] == 255)
    {
      HIDWORD(v51) = -1;
    }

    else
    {
      v52 = BlueFin::GlSignalId::s_ausGnss2signalId[v4] + BYTE2(v38) - BlueFin::GlSvId::s_aucGnss2minSvId[v4];
    }
  }

  if (BlueFin::GlMeSrdSearchMgrBase::GetStrategyId(this, &v51) == 250)
  {
    v5 = *(this + 3);
    v6 = *(v5 + 976);
    if (!*v6)
    {
      v8 = *(v5 + 984);
      if (v8 < 2)
      {
LABEL_22:
        BlueFin::GlSvIdSet::operator~(&__src, &v51);
        BlueFin::GlSetBase::GlSetBase(&v34, &v36, 8u, a2);
        v38 = &v40;
        LOBYTE(v39) = 8;
        v40 = 0u;
        v41 = 0u;
        BlueFin::GlSetBase::OperatorBinaryAnd(&v34, &v38, &v51);
        BlueFin::GlSetBase::operator=(&v34, &v38);
        v36 = v40;
        *v37 = v41;
        BlueFin::GlSetBase::operator=(a2, &v34);
        *(a2 + 12) = v36;
        *(a2 + 28) = *v37;
        goto LABEL_23;
      }

      v9 = v8 - 1;
      v10 = v6 + 1;
      while (!*v10++)
      {
        if (!--v9)
        {
          goto LABEL_22;
        }
      }
    }
  }

  LOBYTE(v34) = v60;
  memcpy(&v35, __src, 4 * v60);
  WORD1(v34) = 0;
  BYTE1(v34) = 0;
  HIDWORD(v34) = v35;
  BlueFin::GlSetIterator::operator++(&v34);
  LOBYTE(v47) = BYTE2(v34);
  HIDWORD(v47) = 3;
  v48 = 575;
  if (BYTE2(v34) - 189 >= 0xFFFFFF44)
  {
    v7 = BlueFin::GlSvId::s_aucSvId2gnss[BYTE2(v34)];
    if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v7 + 21] == 255)
    {
      HIDWORD(v47) = -1;
    }

    else
    {
      v48 = BlueFin::GlSignalId::s_ausGnss2signalId[v7] + BYTE2(v34) - BlueFin::GlSvId::s_aucGnss2minSvId[v7] + 3 * BlueFin::GlSvId::s_aucGnss2numSvId[v7];
    }
  }

  if (BlueFin::GlMeSrdSearchMgrBase::GetStrategyId(this, &v47) == 250)
  {
    v12 = *(this + 3);
    v13 = *(v12 + 976);
    if (*v13)
    {
      goto LABEL_22;
    }

    v22 = *(v12 + 984);
    if (v22 >= 2)
    {
      v23 = v22 - 1;
      v24 = v13 + 1;
      do
      {
        if (*v24++)
        {
          goto LABEL_22;
        }
      }

      while (--v23);
    }
  }

LABEL_23:
  LOBYTE(v38) = v63;
  memcpy(&v39, v62, 4 * v63);
  WORD1(v38) = 0;
  BYTE1(v38) = 0;
  HIDWORD(v38) = v39;
  BlueFin::GlSetIterator::operator++(&v38);
  LOBYTE(v51) = BYTE2(v38);
  HIDWORD(v51) = 0;
  v52 = 575;
  if (BYTE2(v38) - 189 >= 0xFFFFFF44)
  {
    v14 = BlueFin::GlSvId::s_aucSvId2gnss[BYTE2(v38)];
    if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v14] == 255)
    {
      HIDWORD(v51) = -1;
    }

    else
    {
      v52 = BlueFin::GlSignalId::s_ausGnss2signalId[v14] + BYTE2(v38) - BlueFin::GlSvId::s_aucGnss2minSvId[v14];
    }
  }

  if (BlueFin::GlMeSrdSearchMgrBase::GetStrategyId(this, &v51) == 250)
  {
    v15 = *(this + 3);
    v16 = *(v15 + 976);
    if (!*v16)
    {
      v18 = *(v15 + 984);
      if (v18 < 2)
      {
LABEL_45:
        BlueFin::GlSvIdSet::operator~(&v62, &v51);
        BlueFin::GlSetBase::GlSetBase(&v34, &v36, 8u, a2);
        v38 = &v40;
        LOBYTE(v39) = 8;
        v40 = 0u;
        v41 = 0u;
        BlueFin::GlSetBase::OperatorBinaryAnd(&v34, &v38, &v51);
        BlueFin::GlSetBase::operator=(&v34, &v38);
        v36 = v40;
        *v37 = v41;
        BlueFin::GlSetBase::operator=(a2, &v34);
        *(a2 + 12) = v36;
        *(a2 + 28) = *v37;
        goto LABEL_46;
      }

      v19 = v18 - 1;
      v20 = v16 + 1;
      while (!*v20++)
      {
        if (!--v19)
        {
          goto LABEL_45;
        }
      }
    }
  }

  LOBYTE(v34) = v63;
  memcpy(&v35, v62, 4 * v63);
  WORD1(v34) = 0;
  BYTE1(v34) = 0;
  HIDWORD(v34) = v35;
  BlueFin::GlSetIterator::operator++(&v34);
  LOBYTE(v47) = BYTE2(v34);
  HIDWORD(v47) = 3;
  v48 = 575;
  if (BYTE2(v34) - 189 >= 0xFFFFFF44)
  {
    v17 = BlueFin::GlSvId::s_aucSvId2gnss[BYTE2(v34)];
    if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v17 + 21] == 255)
    {
      HIDWORD(v47) = -1;
    }

    else
    {
      v48 = BlueFin::GlSignalId::s_ausGnss2signalId[v17] + BYTE2(v34) - BlueFin::GlSvId::s_aucGnss2minSvId[v17] + 3 * BlueFin::GlSvId::s_aucGnss2numSvId[v17];
    }
  }

  if (BlueFin::GlMeSrdSearchMgrBase::GetStrategyId(this, &v47) == 250)
  {
    v26 = *(this + 3);
    v27 = *(v26 + 976);
    if (!*v27)
    {
      v30 = *(v26 + 984);
      if (v30 < 2)
      {
        goto LABEL_46;
      }

      v31 = v30 - 1;
      v32 = v27 + 1;
      while (!*v32++)
      {
        if (!--v31)
        {
          goto LABEL_46;
        }
      }
    }

    goto LABEL_45;
  }

LABEL_46:
  LOBYTE(v38) = -117;
  HIDWORD(v38) = 0;
  LOWORD(v39) = 453;
  if (BlueFin::GlMeSrdSearchMgrBase::GetStrategyId(this, &v38) == 250 || (v28 = *(this + 4), LOBYTE(v34) = -117, ((*(*v28 + 472))(v28, &v34) & 1) == 0))
  {
    BlueFin::GlSvIdSet::operator~(&v56, &v51);
    BlueFin::GlSetBase::GlSetBase(&v34, &v36, 8u, a2);
    v38 = &v40;
    LOBYTE(v39) = 8;
    v40 = 0u;
    v41 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&v34, &v38, &v51);
    BlueFin::GlSetBase::operator=(&v34, &v38);
    v36 = v40;
    *v37 = v41;
    BlueFin::GlSetBase::operator=(a2, &v34);
    *(a2 + 12) = v36;
    *(a2 + 28) = *v37;
  }

  LOBYTE(v38) = 33;
  HIDWORD(v38) = 0;
  LOWORD(v39) = 128;
  if (BlueFin::GlMeSrdSearchMgrBase::GetStrategyId(this, &v38) == 250)
  {
    BlueFin::GlSvIdSet::operator~(&v68, &v51);
    BlueFin::GlSetBase::GlSetBase(&v34, &v36, 8u, a2);
    v38 = &v40;
    LOBYTE(v39) = 8;
    v40 = 0u;
    v41 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&v34, &v38, &v51);
    BlueFin::GlSetBase::operator=(&v34, &v38);
    v36 = v40;
    *v37 = v41;
    BlueFin::GlSetBase::operator=(a2, &v34);
    *(a2 + 12) = v36;
    result = v37[0];
    *(a2 + 28) = *v37;
  }

  return result;
}

uint64_t BlueFin::GlMeSrdSearchMgrBase::GetStrategyId(BlueFin::GlMeSrdSearchMgrBase *this, const BlueFin::GlSignalId *a2)
{
  v3 = BlueFin::GlSvId::s_aucSvId2gnss[*a2];
  v4 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(a2 + 1) - *(a2 + 1) + v3];
  result = 250;
  if (v4 <= 6)
  {
    if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(a2 + 1) - *(a2 + 1) + v3] > 2u)
    {
      if (v4 - 4 >= 2)
      {
        if (v4 == 3)
        {
          return *(this + 11);
        }

        if (v4 == 6)
        {
          if (*a2 - 81 > 0x34)
          {
            return *(this + 13);
          }

          else
          {
            return *(this + 12);
          }
        }

        return result;
      }

      return *(this + 16);
    }

    if (v4 - 1 < 2)
    {
      return *(this + 16);
    }

    if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(a2 + 1) - *(a2 + 1) + v3])
    {
      return result;
    }

LABEL_18:
    if (v3 == 1)
    {
      return *(this + 15);
    }

    else
    {
      return *(this + 10);
    }
  }

  if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(a2 + 1) - *(a2 + 1) + v3] >= 0xCu)
  {
    if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(a2 + 1) - *(a2 + 1) + v3] <= 0xCu)
    {
      goto LABEL_18;
    }

    if (v4 - 13 < 2)
    {
      return *(this + 17);
    }

    if (v4 == 15 || v4 == 255)
    {
LABEL_28:
      DeviceFaultNotify("glmesrd_search_mgr_base.cpp", 618, "GetStrategyId", "0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_search_mgr_base.cpp", 618, "0");
    }
  }

  else
  {
    if (v4 - 7 < 2)
    {
      return *(this + 16);
    }

    if (v4 == 11)
    {
      return *(this + 14);
    }

    if (v4 - 9 < 2)
    {
      goto LABEL_28;
    }
  }

  return result;
}

uint64_t BlueFin::GlMeSrdAsicConfig::IsConstellationSupported(uint64_t a1, _BYTE *a2)
{
  v2 = *a2;
  if (v2 < 0xBD)
  {
    v3 = 6;
  }

  else
  {
    v3 = 7;
  }

  if (v2 >= 0xAF)
  {
    v4 = v3;
  }

  else
  {
    v4 = 5;
  }

  if (v2 >= 0x8B)
  {
    v5 = v4;
  }

  else
  {
    v5 = 4;
  }

  if (v2 >= 0x4C)
  {
    v6 = v5;
  }

  else
  {
    v6 = 3;
  }

  if (v2 >= 0x42)
  {
    v7 = v6;
  }

  else
  {
    v7 = 2;
  }

  if (v2 >= 0x34)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1;
  }

  if (v2 < 0x21)
  {
    v8 = 0;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7;
  }

  return (*(*a1 + 464))(a1, v9);
}

uint64_t BlueFin::GlMeSrdAidingMgr::SelectAiding2Refresh(int **this)
{
  BlueFin::GlMeSrdAidingMgr::SelectRefreshDue2ClockModel(this);
  BlueFin::GlMeSrdAidingMgr::SelectRefreshDue2AidingChanges(this);
  BlueFin::GlMeSrdAidingMgr::SelectRefreshDue2Time(this);
  BlueFin::GlMeSrdAidingMgr::SelectRefreshDue2AidingOverride(this);
  BlueFin::GlMeSrdAidingMgr::SelectRefreshDue2AidIdUnMap(this);

  return BlueFin::GlSetBase::operator&=((this + 148), (this + 98));
}

uint64_t BlueFin::GlMeSrdAidingMgr::SelectRefreshDue2ClockModel(int **this)
{
  v2 = (*(**this + 64))(*this);
  BlueFin::GlSetBase::GlSetBase(&v10, v11, 8u, v2);
  v5 = &v6[4];
  v6[0] = 8;
  memset(&v6[4], 0, 32);
  BlueFin::GlSetBase::OperatorBinaryAnd(&v10, &v5, this + 98);
  BlueFin::GlSetBase::operator=(&v10, &v5);
  v11[0] = *&v6[4];
  v11[1] = *&v6[20];
  v5 = &unk_2A1F0E1A0;
  *v6 = 0;
  *&v6[8] = 0x36A7C5AC00000000;
  *&v6[16] = 0;
  *&v6[24] = 2139095039;
  *&v6[32] = 0;
  v7 = 2139095039;
  v8 = 0;
  v9 = 0x36A7C5AC7F7FFFFFLL;
  result = (*(**this + 96))(*this, &v5, *(this + 6));
  if (vabds_f32(*(this + 292), *&v6[8]) <= 0.00000001)
  {
    v4 = *v6;
    if (*v6 == *(this + 293))
    {
      return result;
    }
  }

  else
  {
    v4 = *v6;
  }

  *(this + 292) = *&v6[8];
  *(this + 293) = v4;
  *(this + 1176) = 1;
  return BlueFin::GlSetBase::Add((this + 148), &v10);
}

BOOL BlueFin::GlMeSrdAidingMgr::RefreshAiding(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v4 = v1;
  v26 = *MEMORY[0x29EDCA608];
  v5 = (v1 + 784);
  v6 = (v1 + 1432);
  v7 = BlueFin::GlSetBase::operator&=(v1 + 1432, v1 + 784);
  BlueFin::GlSetBase::operator|=(v7, v4 + 1184);
  v8 = BlueFin::GlMeSrdAidingMgr::PackTcxoAiding(v4, v24, v25);
  v11 = BlueFin::GlMeSrdAidingMgr::PackSvIdAiding(v4, &v24[v8], &v25[9 * v8], v9, v10) + v8;
  if (v11 >= 0xCC)
  {
    v22 = "ulNumAiding <= _DIM(otaAiding_l)";
    DeviceFaultNotify("glmesrd_aiding_mgr.cpp", 333, "RefreshAiding", "ulNumAiding <= _DIM(otaAiding_l)");
    v23 = 333;
    goto LABEL_21;
  }

  if (v11 > (*(**(v4 + 16) + 392))(*(v4 + 16)))
  {
    v22 = "ulNumAiding <= m_rAsicConfigIfc.GetMaxAidIndex()";
    DeviceFaultNotify("glmesrd_aiding_mgr.cpp", 334, "RefreshAiding", "ulNumAiding <= m_rAsicConfigIfc.GetMaxAidIndex()");
    v23 = 334;
LABEL_21:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_aiding_mgr.cpp", v23, v22);
  }

  if (v11)
  {
    BlueFin::GlMeSrdAidingMgr::SendAidingBatch(v3, v11, v24, v25);
  }

  if (BlueFin::GlSetBase::HasAll(v6, v5))
  {
    if (!**v5)
    {
      v12 = *(v4 + 792);
      if (v12 < 2)
      {
LABEL_11:
        if (!**v6)
        {
          v18 = *(v4 + 1440);
          if (v18 < 2)
          {
            goto LABEL_13;
          }

          v19 = v18 - 1;
          v20 = *v6 + 1;
          while (!*v20++)
          {
            if (!--v19)
            {
              goto LABEL_13;
            }
          }
        }
      }

      else
      {
        v13 = v12 - 1;
        v14 = *v5 + 1;
        while (!*v14++)
        {
          if (!--v13)
          {
            goto LABEL_11;
          }
        }
      }
    }

    bzero(*(v4 + 1432), ((4 * *(v4 + 1440) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  }

LABEL_13:
  result = v11 != 0;
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlMeSrdAidingMgr::PackTcxoAiding(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (*(a1 + 1176) != 1)
  {
    return 0;
  }

  *(a1 + 1176) = 0;
  BlueFin::GlMeSrdAidingMgr::FormatGpsTcxoAidingForEsw(a1, a3);
  *a2 = 0;
  BlueFin::GlMeSrdAidingMgr::FormatGlnsTcxoAidingForEsw(a1, a3 + 36);
  a2[1] = 1;
  BlueFin::GlMeSrdAidingMgr::FormatBdsPosTcxoAidingForEsw(a1, a3 + 72);
  a2[2] = 2;
  *(a1 + 28) = *(a1 + 24);
  return 3;
}

uint64_t BlueFin::GlMeAcqWindowProvider::mskfGetCbGoodQuality(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  v3 = *(a1 + 8);
  v5 = 0x3FF0000000000000;
  v6 = 0;
  return BlueFin::GlMeMiniKF::mskfGetCbGoodQuality(v3 + 9344, a2, &v6, a3, &v5, 0);
}

uint64_t BlueFin::GlMeMiniKF::mskfGetCbGoodQuality(uint64_t a1, unsigned int a2, double *a3, _DWORD *a4, double *a5, unsigned int a6)
{
  BlueFin::GlMeMiniKF::GenerateClockModFlags(a1, -1, &v29);
  if (a6 <= 1 && (v29 & 4) != 0)
  {
    LODWORD(v12) = *(a1 + 216);
    v13 = (a2 - v12) / 1000.0;
    if (v13 > 600.0)
    {
      return 0;
    }

    v28 = *(a1 + 120) - v13 * *(a1 + 24);
    v25[0] = 1;
    v26 = 0;
    v27 = 0;
    *a3 = BlueFin::GlSystemTime::getSubBitAndEpochTime(&v28, v25, 1u);
    v14 = *(a1 + 136);
  }

  else
  {
    if ((a6 & 0xFFFFFFFD) != 0 || (v29 & 0x80) == 0)
    {
      if ((v29 & 0x400) != 0 && (a6 == 3 || !a6))
      {
        LODWORD(v12) = *(a1 + 484);
        v20 = (a2 - v12) / 1000.0;
        *a4 |= 0x400u;
        if (v20 <= 600.0)
        {
          v28 = *(a1 + 376) - v20 * *(a1 + 24);
          v25[0] = -117;
          v26 = 0;
          v27 = 453;
          *a3 = BlueFin::GlSystemTime::getSubEpochTime(&v28, v25, 1u);
          v21 = *(a1 + 392);
          v22 = v20;
          v23 = *(a1 + 40);
          v24 = (sqrtf(v21) + (fabsf(v22) * sqrtf(v23)));
          *a5 = v24;
          if (v24 <= 0.001)
          {
            return 1;
          }
        }
      }

      return 0;
    }

    LODWORD(v12) = *(a1 + 344);
    v13 = (a2 - v12) / 1000.0;
    if (v13 > 600.0)
    {
      return 0;
    }

    v28 = *(a1 + 248) - v13 * *(a1 + 24);
    v25[0] = 52;
    v26 = 0;
    v27 = 147;
    *a3 = BlueFin::GlSystemTime::getSubBitAndEpochTime(&v28, v25, 1u);
    v14 = *(a1 + 264);
  }

  v15 = v14;
  v16 = v13;
  v17 = *(a1 + 40);
  v18 = (sqrtf(v15) + (fabsf(v16) * sqrtf(v17)));
  *a5 = v18;
  if (v18 < 0.001)
  {
    *a4 |= 0x4A6u;
    return 1;
  }

  return 0;
}

uint64_t BlueFin::GlMeMiniKF::GenerateClockModFlags@<X0>(uint64_t this@<X0>, int a2@<W1>, unsigned int *a3@<X8>)
{
  *a3 = 0;
  if (a2 == -1 || *(this + 64) == a2)
  {
    if (*(this + 104))
    {
      v3 = 16;
      *a3 = 16;
    }

    else
    {
      v3 = 0;
    }

    if (a2 == -1)
    {
LABEL_10:
      v4 = *(this + 200);
      v3 |= (4 * v4) & 8 | (v4 >> 2) & 6;
      if ((v4 & 0x1A) != 0)
      {
        *a3 = v3;
      }

      if (a2 == -1)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v3 = 0;
  }

  if (*(this + 160) == a2)
  {
    goto LABEL_10;
  }

LABEL_13:
  if (*(this + 288) != a2)
  {
    goto LABEL_17;
  }

LABEL_14:
  v5 = *(this + 328);
  v3 = v3 & 0xFFFFFE1F | (((v5 >> 1) & 1) << 8) | (32 * ((v5 >> 3) & 1)) & 0xFFFFFF3F | (((v5 >> 4) & 1) << 7) | (((v5 >> 5) & 1) << 6);
  if ((v5 & 0x3A) != 0)
  {
    *a3 = v3;
  }

  if (a2 != -1)
  {
LABEL_17:
    if (*(this + 416) != a2)
    {
      return this;
    }
  }

  if ((~*(this + 456) & 6) == 0)
  {
    *a3 = v3 | 0x400;
  }

  return this;
}

BOOL BlueFin::GlMeWinMgr::GetMeAcqWindow(uint64_t a1, const BlueFin::GlSignalId *a2, uint64_t a3, _BYTE *a4, uint64_t a5, unsigned __int8 *a6, int8x16_t a7, double a8, int8x16_t a9, int8x16_t a10)
{
  v10 = *a9.i64;
  v17 = a1 + 0x2000;
  if (*a7.i64 == 0.0)
  {
    *a7.i64 = BlueFin::GlMeMsmtMgr::GetCurrTimeLms(*(a1 + 8), a7, a8, a9, a10);
  }

  if (*(v17 + 1664) - 1 > 3 || *(v17 + 1666) - 1 >= 4)
  {
    v18 = (v17 + 1667);
    *(v17 + 1667) = 0;
  }

  else
  {
    v18 = (v17 + 1667);
    *(v17 + 1667) = 1;
    *a4 &= ~1u;
  }

  v235[0] = *a2;
  v236 = 0;
  v237 = 575;
  if (v235[0] - 189 >= 0xFFFFFF44)
  {
    v19 = BlueFin::GlSvId::s_aucSvId2gnss[v235[0]];
    if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v19] == 255)
    {
      v236 = -1;
    }

    else
    {
      v237 = BlueFin::GlSignalId::s_ausGnss2signalId[v19] + v235[0] - BlueFin::GlSvId::s_aucGnss2minSvId[v19];
    }
  }

  v178 = a7;
  if ((*a4 & 0x20) != 0)
  {
    v20 = v235;
  }

  else
  {
    v20 = a2;
  }

  SigMeas = BlueFin::GlMeMsmtMgr::GetSigMeas(*(a1 + 8), v20, *a7.i64, 0);
  v223[0] = 0;
  v224 = 7;
  v225 = 0;
  v226 = xmmword_298A31A60;
  v227 = 0;
  v228 = 0;
  v233 = 0;
  v234 = 0xBF80000000000000;
  v231 = 0;
  v232 = 0;
  v229 = 0;
  v230 = 0;
  BlueFin::GlMeSatAidMgr::GetSatAid(a1 + 320, a2, v223, *v178.i64);
  v25 = v22;
  v177 = a3;
  if (v22)
  {
    v26 = v22[4];
    v27 = *(v22 + 10) < 0.001;
  }

  else
  {
    v27 = 0;
    v26 = 0.0;
  }

  if (a6)
  {
    v28 = *a6;
LABEL_19:
    v176 = v28;
    goto LABEL_32;
  }

  v203 = 0;
  LODWORD(v214) = 0;
  v185 = 0x3FF0000000000000;
  *v23.i64 = *v178.i64 + trunc(*v178.i64 * 2.32830644e-10) * -4294967300.0;
  v29.f64[0] = NAN;
  v29.f64[1] = NAN;
  v30 = vnegq_f64(v29);
  v31 = vbslq_s8(v30, v23, v178);
  if (*v178.i64 <= 4294967300.0)
  {
    v31.i64[0] = v178.i64[0];
  }

  if (*v31.i64 < -4294967300.0)
  {
    *v24.i64 = -*v31.i64;
    *v31.i64 = -(*v31.i64 - trunc(*v31.i64 * -2.32830644e-10) * -4294967300.0);
    *v31.i64 = -*vbslq_s8(v30, v31, v24).i64;
  }

  if (*v31.i64 < 0.0)
  {
    v32 = --*v31.i64;
  }

  else
  {
    v32 = *v31.i64;
  }

  CbGoodQuality = BlueFin::GlMeMiniKF::mskfGetCbGoodQuality(a1 + 9312, v32, &v203, &v214, &v185, 0);
  v34 = *a2;
  if (v34 < 0x34)
  {
    v176 = CbGoodQuality;
    goto LABEL_32;
  }

  v176 = (v34 > 0x41) & CbGoodQuality;
  if (v34 <= 0x41 && ((CbGoodQuality ^ 1) & 1) == 0)
  {
    v28 = v214 >> 7;
    goto LABEL_19;
  }

LABEL_32:
  v35 = 0.0;
  if (!v25 || (v36 = *a2, v36 < 0x34))
  {
    v39 = 0;
LABEL_45:
    v175 = 1;
    goto LABEL_46;
  }

  if (v36 <= 0x41 && *(v17 + 1632) == 1)
  {
    LOBYTE(v203) = 0;
    HIDWORD(v203) = 7;
    v204 = 0;
    v205 = xmmword_298A31A60;
    v206 = 0;
    v207 = 0;
    v212 = 0;
    v213 = 0xBF80000000000000;
    v210 = 0;
    v211 = 0;
    v208 = 0;
    v209 = 0;
    BlueFin::GlMeSatAidMgr::GetSatAid(a1 + 320, (a1 + 9808), &v203, *v178.i64);
    if (!v37 || *(v25 + 3) == 4 || *(v37 + 12) == 4)
    {
      goto LABEL_89;
    }

    v38 = *(a1 + 9816) - *v178.i64;
    if (v38 < 0.0)
    {
      v38 = -v38;
    }

    if (v38 >= 180000.0 || *(v37 + 40) >= 0.001 || !v27)
    {
LABEL_89:
      v39 = 0;
    }

    else
    {
      v35 = (*(v37 + 32) - v26) * 1000.0;
      v39 = 1;
    }

    v36 = *a2;
  }

  else
  {
    v39 = 0;
  }

  if (v36 - 139 > 0x23)
  {
    goto LABEL_45;
  }

  if (*(v17 + 1656) != 1)
  {
    goto LABEL_45;
  }

  LOBYTE(v203) = 0;
  HIDWORD(v203) = 7;
  v204 = 0;
  v205 = xmmword_298A31A60;
  v206 = 0;
  v207 = 0;
  v212 = 0;
  v213 = 0xBF80000000000000;
  v210 = 0;
  v211 = 0;
  v208 = 0;
  v209 = 0;
  BlueFin::GlMeSatAidMgr::GetSatAid(a1 + 320, (a1 + 9832), &v203, *v178.i64);
  if (!v84 || *(v25 + 3) == 4 || *(v84 + 12) == 4)
  {
    goto LABEL_45;
  }

  v85 = *(a1 + 9840) - *v178.i64;
  if (v85 < 0.0)
  {
    v85 = -v85;
  }

  if (v85 >= 180000.0 || *(v84 + 40) >= 0.001 || !v27)
  {
    goto LABEL_45;
  }

  v175 = 0;
  v35 = (*(v84 + 32) - v26) * 1000.0;
LABEL_46:
  v214 = &unk_2A1F0E1A0;
  v215 = 0;
  v216 = 0x36A7C5AC00000000;
  v217 = 0;
  v219 = 0;
  v218 = 3.4028e38;
  v220 = 2139095039;
  v221 = 0;
  v222 = 0x36A7C5AC7F7FFFFFLL;
  if (a5)
  {
    v40 = *(a5 + 16);
    v215 = *(a5 + 8);
    v216 = v40;
    v217 = *(a5 + 24);
    v41 = *(a5 + 32);
    v219 = *(a5 + 40);
    LODWORD(v40) = *(a5 + 48);
    v218 = v41;
    v220 = v40;
    v42 = *(a5 + 64);
    v221 = *(a5 + 56);
    v222 = v42;
    goto LABEL_56;
  }

  v43 = *v178.i64;
  if (*v178.i64 > 0.0)
  {
    v44 = 0.5;
LABEL_54:
    v45 = (v43 + v44);
    goto LABEL_55;
  }

  if (*v178.i64 < 0.0)
  {
    v44 = -0.5;
    v43 = *v178.i64;
    goto LABEL_54;
  }

  v45 = 0;
LABEL_55:
  BlueFin::GlMeClkModMgr::GetClkMod((a1 + 144), &v214, v45);
LABEL_56:
  BlueFin::GlMeAcqWinComputer::GlMeAcqWinComputer(&v203, SigMeas, v25, &v214, a1 + 16);
  v185 = &off_2A1F0E398;
  v186 = 0;
  v187 = -1;
  v188 = 575;
  v189 = 0;
  v190 = 0;
  v191 = xmmword_298A339D0;
  v192 = 2139095039;
  v193 = 0.0;
  v194 = 2139095039;
  v195 = 0;
  v196 = 1.79769313e308;
  v197 = -1;
  v198 = -1;
  v200 = 0;
  v201 = 0;
  v199 = 0;
  v202 = 0;
  if ((*a4 & 0x20) != 0)
  {
    v46 = v235;
  }

  else
  {
    v46 = a2;
  }

  IsDspNavBitQuality = BlueFin::GlMeMsmtMgr::IsDspNavBitQuality(*(a1 + 8), v46);
  v48 = v215 & 0x84;
  if (*(v17 + 1664) - 1 > 3 || *(v17 + 1666) - 1 >= 4)
  {
    v49 = 0;
    v50 = 0;
  }

  else
  {
    v49 = 1;
    v50 = 1;
  }

  *v18 = v49;
  BlueFin::GlMeAcqWinComputer::ComputeAcqWin(&v203, &v185, a4, IsDspNavBitQuality, v48 != 0, v50, a2, *v178.i64, *(a1 + 120));
  LODWORD(v201) = *(a1 + 9120);
  if ((*(SigMeas + 12) & 0x20) != 0)
  {
    v190 |= 0x100u;
  }

  v184 = 3.4028e38;
  v53 = *a2;
  v54 = v53 > 0x33;
  if (v53 > 0x33)
  {
    v198 = -1;
    v197 = -1;
    if (v53 > 0x41)
    {
      v54 = 0;
      v56 = &loc_298A2E000;
      goto LABEL_119;
    }

    v183 = -1;
    v55 = v39 & v176;
    if ((v39 & v176) == 1)
    {
      BlueFin::GlMeSatAidMgr::GetSatAid(a1 + 320, (a1 + 9808), 0, *v178.i64);
      v56 = &loc_298A2E000;
      v57 = (v35 + *(a1 + 9816)) * 0.001;
      v59 = 1.0 - *(v58 + 44);
      v60 = v193 < v57;
      *v61.i64 = (v57 - v193) * v59;
      *v62.i64 = *v61.i64 - trunc(*v61.i64 * 0.5) * 2.0;
      v63.f64[0] = NAN;
      v63.f64[1] = NAN;
      v64 = vnegq_f64(v63);
      v65 = 2.0 - *vbslq_s8(v64, v62, v61).i64;
      *v66.i64 = (v193 - v57) * v59;
      *v67.i64 = *v66.i64 + trunc(*v66.i64 * 0.5) * -2.0;
      v68 = vbslq_s8(v64, v67, v66).u64[0];
      if (v60)
      {
        v69 = v65;
      }

      else
      {
        v69 = *&v68;
      }

      EpochPerSymbol = BlueFin::GlSignalId::GetEpochPerSymbol(a2);
      if (*(a2 + 4) >= 0x23Fu)
      {
        v167 = "IsValid()";
        v168 = 679;
        DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
      }

      else
      {
        if (BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a2 + 1) - *(a2 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a2]])
        {
          v71 = v69 / ((BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a2 + 1) - *(a2 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a2]] * EpochPerSymbol) * 0.001);
          if (v71 <= 0.0)
          {
            if (v71 >= 0.0)
            {
              LOBYTE(v109) = 0;
LABEL_105:
              v83 = 0;
              goto LABEL_106;
            }

            v72 = -0.5;
          }

          else
          {
            v72 = 0.5;
          }

          v109 = (v71 + v72);
          goto LABEL_105;
        }

        v167 = "ucMsPerEpoch != 0";
        v168 = 686;
        DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
      }

      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v168, v167);
    }

    if ((v176 & 1) != 0 || (v180 = 0.0, AidSysTm = BlueFin::GlMeSatAidMgr::GetAidSysTm(a1 + 320, &v180, 1, a5, v193 * 1000.0, 1000.0, v52), !v25))
    {
      v83 = 0;
      LOBYTE(v109) = -1;
      v56 = &loc_298A2E000;
      goto LABEL_106;
    }

    v74 = AidSysTm;
    v56 = &loc_298A2E000;
    if ((v180 + *(v25 + 10)) >= 0.005)
    {
      v83 = 0;
      LOBYTE(v109) = -1;
      goto LABEL_106;
    }

    v75 = v25[4];
    v76 = *(v25 + *(a2 + 1) + 14);
    v77 = BlueFin::GlSignalId::GetEpochPerSymbol(a2);
    if (*(a2 + 4) >= 0x23Fu)
    {
      v173 = "IsValid()";
      v174 = 679;
      DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
    }

    else
    {
      if (BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a2 + 1) - *(a2 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a2]])
      {
        *v78.i64 = v74 + v75 + v76 / 299792458.0;
        v80 = 0.5;
        *v79.i64 = *v78.i64 + trunc(*v78.i64 * 0.5) * -2.0;
        v81.f64[0] = NAN;
        v81.f64[1] = NAN;
        v82 = *vbslq_s8(vnegq_f64(v81), v79, v78).i64 / ((BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a2 + 1) - *(a2 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a2]] * v77) * 0.001);
        if (v82 <= 0.0)
        {
          if (v82 >= 0.0)
          {
            LOBYTE(v109) = 0;
LABEL_170:
            v83 = 1;
LABEL_106:
            GlnsStrPhsInSym = BlueFin::GlMeMsmtMgr::GetGlnsStrPhsInSym(*(a1 + 8), a2, &v185, &v183);
            if ((v55 & 1) == 0)
            {
              if (GlnsStrPhsInSym)
              {
                LOBYTE(v109) = v183;
              }

              else if ((v83 & 1) == 0)
              {
                LOBYTE(v109) = -1;
                LOBYTE(v197) = -1;
                if ((v190 & 0x80) == 0)
                {
                  goto LABEL_116;
                }

                goto LABEL_112;
              }
            }

            LOBYTE(v197) = v109;
            if (v109 == 0xFF)
            {
              LOBYTE(v109) = -1;
              if ((v190 & 0x80) == 0)
              {
                goto LABEL_116;
              }
            }

            else
            {
              v190 |= 0x80u;
              if ((v109 & 1) == 0)
              {
                goto LABEL_116;
              }
            }

LABEL_112:
            if ((v109 + 1) <= 0xC7u)
            {
              v87 = v109 + 1;
            }

            else
            {
              v87 = v109 + 57;
            }

            LOBYTE(v197) = v87;
            v51 = v193;
            v193 = v193 + ((1.0 - *(&v191 + 1)) * 0.01);
LABEL_116:
            v53 = *a2;
            if (!*a2)
            {
              goto LABEL_218;
            }

            goto LABEL_117;
          }

          v80 = -0.5;
        }

        v109 = (v82 + v80);
        goto LABEL_170;
      }

      v173 = "ucMsPerEpoch != 0";
      v174 = 686;
      DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
    }

    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v174, v173);
  }

  v198 = -1;
  v197 = -1;
  v56 = &loc_298A2E000;
  if (!v53)
  {
    goto LABEL_218;
  }

LABEL_117:
  if (v53 >= 0x21)
  {
    if (v53 < 0x42)
    {
      goto LABEL_173;
    }

LABEL_119:
    if (v53 <= 0x4B)
    {
      goto LABEL_120;
    }

    if (v53 - 139 > 0x23)
    {
      goto LABEL_173;
    }

    if ((*a4 & 0x20) != 0 && *(a2 + 1) >= 1)
    {
      v193 = a8 / 299792458.0 + v193;
    }

    LOBYTE(v88) = BYTE1(v197);
    v183 = BYTE1(v197);
    if ((v175 | v176 ^ 1))
    {
      goto LABEL_144;
    }

    BlueFin::GlMeSatAidMgr::GetSatAid(a1 + 320, (a1 + 9832), 0, *v178.i64);
    v89 = v35 + *(a1 + 9840);
    v90 = v56[54];
    v91 = v89 * v90;
    v93 = 1.0 - *(v92 + 44);
    if (v193 >= v91)
    {
      v94 = fmod((v193 - v91) * v93, 0.1);
    }

    else
    {
      v94 = 0.1 - fmod((v91 - v193) * v93, 0.1);
    }

    v95 = BlueFin::GlSignalId::GetEpochPerSymbol(a2);
    if (*(a2 + 4) >= 0x23Fu)
    {
      v171 = "IsValid()";
      v172 = 679;
      DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
    }

    else
    {
      if (BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a2 + 1) - *(a2 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a2]])
      {
        v96 = v94 / ((BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a2 + 1) - *(a2 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a2]] * v95) * v90);
        if (v96 <= 0.0)
        {
          if (v96 >= 0.0)
          {
            LOBYTE(v88) = 0;
            goto LABEL_144;
          }

          v97 = -0.5;
        }

        else
        {
          v97 = 0.5;
        }

        v88 = (v96 + v97);
LABEL_144:
        GalSecCodePhsInSym = BlueFin::GlMeMsmtMgr::GetGalSecCodePhsInSym(*(a1 + 8), a2, &v185, &v183);
        v100 = v183;
        if (!GalSecCodePhsInSym)
        {
          v100 = -1;
        }

        if (((v175 | v176 ^ 1) & 1) == 0)
        {
          v100 = v88;
        }

        BYTE1(v197) = v100;
        v101 = v193 * 1000.0;
        v102 = BlueFin::GlMeSatAidMgr::GetAidSysTm(a1 + 320, &v184, v54, &v214, v193 * 1000.0, 1000.0, v99);
        if (v25)
        {
          v103 = v25[4];
          v104 = *(v25 + *(a2 + 1) + 14);
          LOBYTE(v180) = *a2;
          v181 = 0;
          v182 = 575;
          if (LOBYTE(v180) - 189 >= 0xFFFFFF44)
          {
            v105 = BlueFin::GlSvId::s_aucSvId2gnss[LOBYTE(v180)];
            if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v105] == 255)
            {
              v181 = -1;
            }

            else
            {
              v182 = BlueFin::GlSignalId::s_ausGnss2signalId[v105] + LOBYTE(v180) - BlueFin::GlSvId::s_aucGnss2minSvId[v105];
            }
          }

          BlueFin::GlMeMsmtMgr::GetSigMeas(*(a1 + 8), &v180, v101, 0);
          v51 = 299792458.0;
          v52 = v102 + v103;
          v102 = v102 + v103 + v104 / 299792458.0;
        }

        if (BYTE1(v197) != 255)
        {
          v190 |= 0x400u;
        }

        if (!v25)
        {
          goto LABEL_172;
        }

        v51 = v218;
        if (v218 >= 0.0005)
        {
          goto LABEL_172;
        }

        v51 = v184;
        if (v184 >= 0.0005)
        {
          goto LABEL_172;
        }

        v106 = v102 + 604800.0;
        if (v102 >= 0.0)
        {
          v106 = v102;
        }

        v107 = fmod(v106, 0.1);
        if (*(a2 + 1))
        {
          v51 = v56[54];
        }

        else
        {
          v51 = 0.004;
        }

        v108 = v107 / v51;
        if (v108 <= 0.0)
        {
          if (v108 >= 0.0)
          {
            LOBYTE(v110) = 0;
LABEL_171:
            BYTE1(v197) = v110;
            v190 |= 0x400u;
LABEL_172:
            v53 = *a2;
            goto LABEL_173;
          }

          v51 = -0.5;
        }

        else
        {
          v51 = 0.5;
        }

        v110 = (v108 + v51);
        goto LABEL_171;
      }

      v171 = "ucMsPerEpoch != 0";
      v172 = 686;
      DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
    }

    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v172, v171);
  }

LABEL_120:
  if ((*a4 & 0x20) != 0 && *(a2 + 1) == 2)
  {
    v51 = v193;
    v193 = a8 / 299792458.0 + v193;
  }

LABEL_173:
  if (v53 - 76 > 0x3E)
  {
    goto LABEL_218;
  }

  v111 = *(a2 + 1);
  if (!v111)
  {
    goto LABEL_218;
  }

  v112 = v193 * 1000.0;
  v113 = BlueFin::GlMeSatAidMgr::GetAidSysTm(a1 + 320, &v184, v54, &v214, v193 * 1000.0, v51, v52);
  if (v25)
  {
    v114 = v113 + -14.0;
    v115 = v114 >= 0.0 ? v114 : v114 + 604800.0;
    v116 = v25[4];
    v117 = *(v25 + v111 + 14);
    LOBYTE(v180) = v53;
    v181 = 0;
    v182 = 575;
    v118 = BlueFin::GlSvId::s_aucSvId2gnss[v53];
    if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v118] == 255)
    {
      v181 = -1;
    }

    else
    {
      v182 = BlueFin::GlSignalId::s_ausGnss2signalId[v118] + v53 - BlueFin::GlSvId::s_aucGnss2minSvId[v118];
    }

    BlueFin::GlMeMsmtMgr::GetSigMeas(*(a1 + 8), &v180, v112, 0);
    if (v218 < 0.0005 && v184 < 0.0005)
    {
      v119 = 0.1;
      if (*(a2 + 1) != 2)
      {
        v119 = 18.0;
      }

      v120 = dbl_298A3AD60[*(a2 + 1) == 2];
      v121 = fmod(v115 + v116 + v117 / 299792458.0, v119) / v120;
      if (v121 <= 0.0)
      {
        if (v121 >= 0.0)
        {
          LOWORD(v123) = 0;
LABEL_192:
          HIWORD(v197) = v123;
          v190 |= 0x1000u;
          goto LABEL_193;
        }

        v122 = -0.5;
      }

      else
      {
        v122 = 0.5;
      }

      v123 = (v121 + v122);
      goto LABEL_192;
    }
  }

LABEL_193:
  v124 = v190;
  if ((v190 & 0x1000) == 0 && BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(a2 + 1) - *(a2 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a2]] == 13)
  {
    B1cL1cSecCodePhsInSym = BlueFin::GlMeMsmtMgr::GetB1cL1cSecCodePhsInSym(*(a1 + 8), a2, &v185, &v197 + 1);
    v124 = v190;
    if (B1cL1cSecCodePhsInSym)
    {
      v124 = v190 | 0x1000;
      v190 |= 0x1000u;
    }
  }

  if ((v124 & 0x1000) == 0)
  {
    LOBYTE(v180) = *a2;
    v181 = 0;
    v182 = 575;
    if (LOBYTE(v180) - 189 >= 0xFFFFFF44)
    {
      v126 = BlueFin::GlSvId::s_aucSvId2gnss[LOBYTE(v180)];
      if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v126] == 255)
      {
        v181 = -1;
      }

      else
      {
        v182 = BlueFin::GlSignalId::s_ausGnss2signalId[v126] + LOBYTE(v180) - BlueFin::GlSvId::s_aucGnss2minSvId[v126];
      }
    }

    v127 = BlueFin::GlMeMsmtMgr::GetSigMeas(*(a1 + 8), &v180, v193 * 1000.0, 0);
    if (v127)
    {
      if ((~*(v127 + 12) & 0x22) == 0)
      {
        v128 = *(a2 + 1);
        if ((*a4 & 0x20) != 0)
        {
          if (v128 == 2)
          {
            v129 = v10 / 299792458.0;
            v130 = a8 / 299792458.0;
            v193 = a8 / 299792458.0 + v193 - v10 / 299792458.0;
            goto LABEL_209;
          }
        }

        else if (v128 == 2)
        {
          v129 = v10 / 299792458.0;
          v130 = a8 / 299792458.0;
LABEL_209:
          v132 = *(v127 + 64);
          v131 = (v127 + 64);
          v133 = v129 + v132 - v130;
          v134 = 0.1;
          v135 = v56[54];
          goto LABEL_211;
        }

        v136 = *(v127 + 64);
        v131 = (v127 + 64);
        v133 = v10 / 299792458.0 + v136;
        v134 = 18.0;
        v135 = 0.01;
LABEL_211:
        *v131 = v133;
        v137 = fmod(v133, v134) / v135;
        if (v137 <= 0.0)
        {
          if (v137 >= 0.0)
          {
            LOWORD(v139) = 0;
LABEL_217:
            HIWORD(v197) = v139;
            v190 |= 0x1000u;
            goto LABEL_218;
          }

          v138 = -0.5;
        }

        else
        {
          v138 = 0.5;
        }

        v139 = (v137 + v138);
        goto LABEL_217;
      }
    }
  }

LABEL_218:
  v140 = v193 * 1000.0;
  v141 = BlueFin::GlMeSatAidMgr::GetAidSysTm(a1 + 320, &v184, v54, &v214, v193 * 1000.0, 1000.0, v52);
  v196 = v141;
  if (!v25)
  {
    goto LABEL_267;
  }

  v142 = *v25;
  if (v142 >= 0x34 && v142 <= 0x41 && v184 > 0.0005)
  {
    HIBYTE(v195) = 0;
  }

  LODWORD(v143) = *(a2 + 1);
  v144 = v141 + v25[4] + *(v25 + v143 + 14) / 299792458.0;
  v196 = v144;
  v145 = *a2;
  if (v144 < 0.0)
  {
    v144 = v144 + dbl_298A3AD70[(v145 - 52) < 0xE];
    v196 = v144;
  }

  v146 = BlueFin::GlSvId::s_aucSvId2gnss[v145];
  if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v143 - v143 + v146] == 1 && *(v25 + 10) < 0.0000001 && v184 < 0.0000001)
  {
    LOBYTE(v180) = v145;
    v181 = 0;
    v182 = 575;
    if ((v145 - 189) >= 0xFFFFFF44)
    {
      if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v146] == 255)
      {
        v181 = -1;
      }

      else
      {
        v182 = BlueFin::GlSignalId::s_ausGnss2signalId[v146] + v145 - BlueFin::GlSvId::s_aucGnss2minSvId[v146];
      }
    }

    BlueFin::GlMeMsmtMgr::GetSigMeas(*(a1 + 8), &v180, v140, 0);
    if (*(a2 + 4) >= 0x23Fu)
    {
      v169 = "IsValid()";
      v170 = 679;
      DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
    }

    else
    {
      v143 = *(a2 + 1);
      v145 = *a2;
      v146 = BlueFin::GlSvId::s_aucSvId2gnss[*a2];
      if (BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v143 - v143 + v146])
      {
        v147 = v56[54];
        v148 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v143 - v143 + v146] * v147;
        v144 = v196;
        v149 = fmod(v196, v148);
        v152 = (1.0 - *(&v191 + 1));
        v153 = v193 + v152 * (v148 - v149);
        v193 = v153;
        *v154.i64 = vabdd_f64(v153, *v178.i64 * v147);
        if (*v154.i64 > v148 * 0.5)
        {
          *v154.i64 = (v148 * 0.5 + *v154.i64) / v148;
          *v151.i64 = *v154.i64 + trunc(*v154.i64 * 2.32830644e-10) * -4294967300.0;
          v155.f64[0] = NAN;
          v155.f64[1] = NAN;
          v156 = vnegq_f64(v155);
          v151.i64[0] = vbslq_s8(v156, v151, v154).u64[0];
          if (*v154.i64 > 4294967300.0)
          {
            v154.i64[0] = v151.i64[0];
          }

          if (*v154.i64 < -4294967300.0)
          {
            *v150.i64 = -*v154.i64;
            *v154.i64 = -(*v154.i64 - trunc(*v154.i64 * -2.32830644e-10) * -4294967300.0);
            *v154.i64 = -*vbslq_s8(v156, v154, v150).i64;
          }

          if (*v154.i64 < 0.0)
          {
            v157 = --*v154.i64;
          }

          else
          {
            v157 = *v154.i64;
          }

          v158 = v148 * v157 * v152;
          v159 = 1.0;
          if (v153 - *v178.i64 * v147 >= 0.0)
          {
            v159 = -1.0;
          }

          v193 = v153 + v159 * v158;
        }

        v190 |= 0x800u;
        goto LABEL_246;
      }

      v169 = "ucMsPerEpoch != 0";
      v170 = 686;
      DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
    }

    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v170, v169);
  }

LABEL_246:
  if (v218 < 0.0005 && v184 < 0.0005)
  {
    v160 = (v145 - 1) >= 0x20 && (v145 - 66) >= 0xA;
    v161 = !v160;
    if (v143 == 3 && v161)
    {
      v162 = fmod(v144, 18.0) / 0.01;
      if (v162 <= 0.0)
      {
        if (v162 >= 0.0)
        {
          LOWORD(v164) = 0;
LABEL_262:
          v198 = v164;
          v190 |= 0x2000u;
          goto LABEL_263;
        }

        v163 = -0.5;
      }

      else
      {
        v163 = 0.5;
      }

      v164 = (v162 + v163);
      goto LABEL_262;
    }
  }

LABEL_263:
  if ((v190 & 0x2000) == 0 && BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v143 - v143 + v146] == 14 && BlueFin::GlMeMsmtMgr::GetB1cL1cSecCodePhsInSym(*(a1 + 8), a2, &v185, &v198))
  {
    v190 |= 0x2000u;
  }

LABEL_267:
  BlueFin::GlMeAcqWin::operator=(v177, &v185);
  if ((v165 + 8) != a2)
  {
    *(v165 + 8) = *a2;
    *(v165 + 12) = *(a2 + 1);
    *(v165 + 16) = *(a2 + 4);
  }

  *(v165 + 24) = *v178.i64 * v56[54];
  if ((*a4 & 4) != 0 && BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    (*(*v165 + 24))(v165, 0, 0);
  }

  return v25 != 0;
}