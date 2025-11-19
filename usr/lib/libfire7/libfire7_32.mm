uint64_t BlueFin::GlPeLsqSubsets::RecurseLsqSubsets(uint64_t result, const void **a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v4 = *(a3 + 32);
    v5 = *(a3 + 64);
    v12[3] = *(a3 + 48);
    v12[4] = v5;
    v13 = *(a3 + 80);
    v6 = *(a3 + 16);
    v12[0] = *a3;
    v12[1] = v6;
    v12[2] = v4;
    if (BYTE1(v12[0]) != LOBYTE(v12[0]))
    {
      v8 = result;
      v9 = a4 - 1;
      do
      {
        BlueFin::GlSetBase::GlSetBase(v10, v11, 0x13u, a2);
        if (WORD1(v12[0]) >= 0x23Fu)
        {
          DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
        }

        BlueFin::GlSetBase::Remove(v10, SWORD1(v12[0]));
        BlueFin::GlSetIterator::operator++(v12);
        BlueFin::GlPeLsqSubsets::RunLsqSubset(v8, v10, 1, 1, 0, 0);
        result = BlueFin::GlPeLsqSubsets::RecurseLsqSubsets(v8, v10, v12, v9);
      }

      while (BYTE1(v12[0]) != LOBYTE(v12[0]));
    }
  }

  return result;
}

uint64_t BlueFin::GlPeNavUtil::PackSkfMeas_ADR_SignalId(uint64_t a1, uint64_t a2, BlueFin::GlSignalId *a3, int a4)
{
  PeMeas = BlueFin::GlPeMsmtMgr::GetPeMeas(*(a1 + 8), a3, 0);
  v9 = PeMeas;
  v10 = *(PeMeas + 110);
  if ((v10 & 1) == 0 && *(PeMeas + 111) != 1)
  {
    return 0;
  }

  v11 = -7200001;
  v12 = *(a1 + 8);
  if (*v12 == -7200001 || (v13 = *(v12 + 4), v13 == -7200001))
  {
    result = 0;
    *(a2 + 20) = -7200001;
    return result;
  }

  v15 = *v12 - v13;
  *(a2 + 20) = v15;
  if (v15 == -7200001)
  {
    return 0;
  }

  v16 = *(v9 + 113);
  if (a4 || !v10 || (*(v9 + 113)) && (a4 != 1 || !v10 || (*(v9 + 113) & 1) == 0) && a4 != 3 && (a4 != 2 || !*(v9 + 111)))
  {
    return 0;
  }

  MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(v12, a3, 0, 0);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 24) = -1;
  *(a2 + 48) = 0;
  *(a2 + 50) = 0;
  *(a2 + 32) = 0;
  *(a2 + 36) = -1;
  *(a2 + 40) = 575;
  *(a2 + 44) = 10;
  v18 = *(a1 + 8);
  v19 = *v18;
  *(a2 + 16) = *v18;
  if (v19 != -7200001)
  {
    v20 = v18[1];
    v21 = v19 - v20;
    if (v20 == -7200001)
    {
      v11 = -7200001;
    }

    else
    {
      v11 = v21;
    }
  }

  *(a2 + 20) = v11;
  if ((a2 + 32) != a3)
  {
    *(a2 + 32) = *a3;
    *(a2 + 36) = *(a3 + 1);
    *(a2 + 40) = *(a3 + 4);
  }

  v22 = *(MeMeas + 25);
  *a2 = *(v9 + 16);
  *(a2 + 8) = v22;
  if (*(v9 + 113) == 1)
  {
    *(a2 + 8) = v22 + 0.0025;
  }

  if (*(v9 + 111) == 1)
  {
    *(a2 + 8) = *(MeMeas + 31);
  }

  result = 1;
  *(a2 + 48) = 1;
  return result;
}

double BlueFin::GlPeNavUtil::ComputeBc(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v8 = a5;
  v15 = *a3;
  v16 = *(a3 + 2);
  v9 = 0.0;
  BlueFin::GlPeNavUtil::ComputeRangeResidVec(a1, a2, &v15, a4, a5, a6, a7, 1, a8, 1);
  if ((v8 & 1) == 0 && v18)
  {
    v10 = (v17 + 8);
    v11 = 0.0;
    v12 = v18;
    do
    {
      v13 = *v10++;
      v11 = v11 + v13;
      --v12;
    }

    while (v12);
    return v11 / v18;
  }

  return v9;
}

BlueFin::GlPeNavUtil *BlueFin::GlPeNavUtil::RecurseComputeDops(BlueFin::GlPeNavUtil *result, const BlueFin::GlSvIdSet *a2, uint64_t a3, _DWORD *a4, uint64_t a5, int a6, double a7)
{
  v11 = result;
  if (a6 < 1)
  {
    result = BlueFin::GlPeNavUtil::ComputeDops(result, a2);
    if (*(&v19 + 3) > a7)
    {
      *a4 = 1;
    }
  }

  else
  {
    v12 = *(a3 + 48);
    v18 = *(a3 + 32);
    v19 = v12;
    v20 = *(a3 + 64);
    v21 = *(a3 + 80);
    v13 = *(a3 + 16);
    *v16 = *a3;
    v17 = v13;
    if (HIBYTE(v16[0]) != LOBYTE(v16[0]) && !*a4)
    {
      v14 = (a6 - 1);
      do
      {
        BlueFin::GlSetBase::GlSetBase(v22, v23, 8u, a2);
        BlueFin::GlSetBase::Remove(v22, LOBYTE(v16[1]));
        BlueFin::GlSetIterator::operator++(v16);
        result = BlueFin::GlPeNavUtil::RecurseComputeDops(v11, v22, v16, a4, a5, v14, a7);
      }

      while (HIBYTE(v16[0]) != LOBYTE(v16[0]) && *a4 == 0);
    }
  }

  return result;
}

uint64_t BlueFin::GlPeNavUtil::GetIntegrityGeometry(BlueFin::GlPeNavUtil *a1, BlueFin::GlSignalIdSet *this, _DWORD *a3, double a4, uint64_t a5, uint64_t a6)
{
  v11 = 0;
  *a3 = 0;
  while (1)
  {
    v12 = v11;
    if (v11 > 2u)
    {
      break;
    }

    BlueFin::GlSignalIdSet::GetSvIdSet(this, &__src);
    v16[0] = v15;
    memcpy(v19, __src, 4 * v15);
    v17 = 0;
    v16[1] = 0;
    v18 = v19[0];
    BlueFin::GlSetIterator::operator++(v16);
    BlueFin::GlSignalIdSet::GetSvIdSet(this, &__src);
    BlueFin::GlPeNavUtil::RecurseComputeDops(a1, &__src, v16, a3, a6, v12, a4);
    v11 = v12 + 1;
    if (*a3)
    {
      return (v12 - 1);
    }
  }

  LOWORD(v12) = 3;
  return (v12 - 1);
}

unsigned __int8 *BlueFin::GlPeNavUtil::ComputeCrossTrackElevMask(BlueFin::GlPeNavUtil *this, float a2, const void **a3, int **a4)
{
  BlueFin::GlSetBase::GlSetBase(&__src, v26, 0x13u, a3);
  v28 = &v30;
  LOBYTE(v29) = 19;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  memset(v33, 0, 28);
  BlueFin::GlSetBase::OperatorBinaryOr(&__src, &v28, a4);
  BlueFin::GlSetBase::operator=(&__src, &v28);
  v26[1] = v31;
  v26[2] = v32;
  *v27 = v33[0];
  *&v27[12] = *(v33 + 12);
  v26[0] = v30;
  LOBYTE(v28) = v25;
  memcpy(&v29, __src, 4 * v25);
  WORD1(v28) = 0;
  BYTE1(v28) = 0;
  HIDWORD(v28) = v29;
  result = BlueFin::GlSetIterator::operator++(&v28);
  if (BYTE1(v28) != v28)
  {
    while (1)
    {
      if (WORD1(v28) >= 0x23FuLL)
      {
        v21 = "usIndex < NUM_SIGNAL_IDS";
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        v22 = "glsignalid.h";
        v23 = 578;
        goto LABEL_28;
      }

      v9 = *(this + 1);
      v10 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * WORD1(v28);
      v11 = *v10;
      LODWORD(v10) = v10[1];
      v12 = SWORD1(v28);
      LOBYTE(__src) = v11;
      HIDWORD(__src) = v10;
      v25 = WORD1(v28);
      PeMeas = BlueFin::GlPeMsmtMgr::GetPeMeas(v9, &__src, 0);
      v14 = PeMeas;
        ;
      }

      while (i <= -3.14159265)
      {
        i = i + 6.28318531;
      }

      v16 = fabs(i);
      if (v16 > 1.57079633)
      {
        v16 = 3.14159265 - v16;
      }

      v17 = (v16 * 57.2957795 + -0.1);
      if (v17 < -29 || (v17 / 30) >= 4)
      {
        v21 = "!(iIdx < 0 || iIdx >= _DIM(iMasksDeg))";
        DeviceFaultNotify("glpe_navutil.cpp", 1270, "ComputeCrossTrackElevMask", "!(iIdx < 0 || iIdx >= _DIM(iMasksDeg))");
        v22 = "glpe_navutil.cpp";
        v23 = 1270;
LABEL_28:
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v22, v23, v21);
      }

      if (*(PeMeas + 104) < (dword_298A44290[v17 / 30] + (dword_298A44290[v17 / 30 + 1] - dword_298A44290[v17 / 30]) / 30.0 * (v17 % 30)))
      {
        BlueFin::GlSetBase::Remove(a3, v12);
      }

      if (v17 <= 39)
      {
        break;
      }

      if (v17 >= 0x32)
      {
        v19 = v17 * -1.5 + 135.0;
        goto LABEL_21;
      }

      v20 = 60;
LABEL_22:
      if (v20 > *(v14 + 104))
      {
        BlueFin::GlSetBase::Remove(a4, v12);
      }

      result = BlueFin::GlSetIterator::operator++(&v28);
      if (BYTE1(v28) == v28)
      {
        return result;
      }
    }

    v19 = v17 * 1.5;
LABEL_21:
    v20 = v19;
    goto LABEL_22;
  }

  return result;
}

BOOL BlueFin::GlPeNavUtil::RunBdsDivergenceDetection(uint64_t a1, BlueFin::GlSignalIdSet *this, __int128 *a3, uint64_t a4, double a5, double a6)
{
  BlueFin::GlSignalIdSet::GetSvIdSet(this, &v34);
  v48 = &v50;
  v49 = 8;
  v50 = 0u;
  v51 = 0u;
  for (i = 1; i != 33; ++i)
  {
    *(&v50 + (i >> 5)) |= 1 << i;
  }

  v12 = BlueFin::GlSetBase::GlSetBase(&v57, v59, 8u, &v34);
  v36 = &v38;
  LOBYTE(v37) = 8;
  v38 = 0u;
  v39 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(v12, &v36, &v48);
  BlueFin::GlSetBase::operator=(&v57, &v36);
  v59[0] = v38;
  v59[1] = v39;
  BlueFin::GlSignalIdSet::GetSvIdSet(this, &v34);
  v48 = &v50;
  v49 = 8;
  v50 = 0u;
  v51 = 0u;
  for (j = 76; j != 139; ++j)
  {
    *(&v50 + (j >> 5)) |= 1 << j;
  }

  v14 = BlueFin::GlSetBase::GlSetBase(&v54, v56, 8u, &v34);
  v36 = &v38;
  LOBYTE(v37) = 8;
  v38 = 0u;
  v39 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(v14, &v36, &v48);
  BlueFin::GlSetBase::operator=(&v54, &v36);
  v15 = 0;
  v56[0] = v38;
  v56[1] = v39;
  v16 = (v54 + 4 * v55 - 4);
  do
  {
    if (*v16)
    {
      v17 = *v16 - (((*v16 >> 1) & 0x5B6DB6DB) + ((*v16 >> 2) & 0x9249249));
      v15 = ((v17 + (v17 >> 3)) & 0xC71C71C7) + v15 - 63 * (((v17 + (v17 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    --v16;
  }

  while (v16 >= v54);
  if (v15 < 5u)
  {
    return 0;
  }

  v18 = 0;
  v19 = (v57 + 4 * v58 - 4);
  do
  {
    if (*v19)
    {
      v20 = *v19 - (((*v19 >> 1) & 0x5B6DB6DB) + ((*v19 >> 2) & 0x9249249));
      v18 = ((v20 + (v20 >> 3)) & 0xC71C71C7) + v18 - 63 * (((v20 + (v20 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    --v19;
  }

  while (v19 >= v57);
  if (v18 < 5u)
  {
    return 0;
  }

  v48 = &v50;
  v49 = 19;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  memset(v53, 0, sizeof(v53));
  BlueFin::GlSignalIdSet::GetSignalIdSet(this, 0, &v36);
  BlueFin::GlSetBase::operator=(&v48, &v36);
  v51 = v39;
  v52 = v40;
  *v53 = v41[0];
  *&v53[12] = *(v41 + 12);
  v50 = v38;
  v42 = &v44;
  v43 = 19;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  memset(v47, 0, sizeof(v47));
  BlueFin::GlSignalIdSet::GetSignalIdSet(this, 4, &v36);
  BlueFin::GlSetBase::operator=(&v42, &v36);
  v45 = v39;
  v46 = v40;
  *v47 = v41[0];
  *&v47[12] = *(v41 + 12);
  v44 = v38;
  v34 = *a3;
  v35 = *(a3 + 2);
  BlueFin::GlPeNavUtil::ComputeRangeResidVec(a1, &v48, &v34, a4, 0, 0, 0, 1, 0, 1);
  v32 = *a3;
  v33 = *(a3 + 2);
  BlueFin::GlPeNavUtil::ComputeRangeResidVec(a1, &v42, &v32, a4, 0, 0, 0, 1, 0, 1);
  result = 0;
  if (DWORD2(v34) >= 5 && v37 >= 5)
  {
    BlueFin::SKFVector::Median(&v34, v21, v22, v23);
    v26 = v25;
    BlueFin::SKFVector::Median(&v36, v27, v28, v29);
    v31 = v26 - v30;
    if (v31 < 0.0)
    {
      v31 = -v31;
    }

    return v31 > a6;
  }

  return result;
}

uint64_t BlueFin::GlPeKfBiasData::SerializeImpl(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v16 = *MEMORY[0x29EDCA608];
  if (v3 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (v3 >= 2)
  {
    DeviceFaultNotify("glpe_navutil.cpp", 1456, "SerializeImpl", "ucVersion == 1");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_navutil.cpp", 1456, "ucVersion == 1");
  }

  v5 = v2;
  v6 = v1;
  if (v2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v12 = 113;
    v13 = v4;
    v14 = 0x1000000000000;
    v11 = &unk_2A1F09520;
    v15 = v4;
    BlueFin::GlSysLogEntry::PutU32(&v11, *(v1 + 16));
    v8 = *(v6 + 8);
    v7 = v6 + 8;
    BlueFin::GlSysLogEntry::PutF32(&v11, *v8);
    BlueFin::GlSysLogEntry::PutF32(&v11, *(*v7 + 4));
    BlueFin::GlSysLogEntry::PutF32(&v11, *(*v7 + 8));
    BlueFin::GlSysLogEntry::PutF32(&v11, *(*v7 + 12));
    BlueFin::GlSysLogEntry::PutF32(&v11, *(*v7 + 16));
    BlueFin::GlSysLogEntry::PutF32(&v11, *(*v7 + 20));
    BlueFin::GlSysLogEntry::PutF32(&v11, *(*v7 + 24));
    BlueFin::GlSysLogEntry::PutF32(&v11, *(*v7 + 28));
    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v11, v5, 4);
  }

  v9 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t BlueFin::GlPePolaroidGnssKF::Polaroid(BlueFin::GlPePolaroidGnssKF *this, double a2, int a3, double a4, int a5, const BlueFin::GlSignalId *a6, float a7, int a8)
{
  v8 = fabs(a2);
  if (a4 >= 64.0 && (a4 >= 400.0 || a4 * 3.0 >= v8))
  {
    goto LABEL_26;
  }

  v10 = *this;
  if (a3 > 4)
  {
    a8 = 1;
  }

  if (a5 < 3001)
  {
    a8 = 1;
  }

  if (v10 > 400.0)
  {
    a8 = 1;
  }

  if (!a8)
  {
    v10 = 400.0;
  }

  if (v8 > 400.0)
  {
    return 1;
  }

  if (a2 >= 0.0)
  {
    if (v8 > v10)
    {
      return 1;
    }
  }

  else if (a2 * a2 > a7 * 9.0 || v8 > v10)
  {
    return 1;
  }

LABEL_26:
  v14 = a2;
  BlueFin::GlPePolaroidGnssKF::UpdateFilter(this, 0, v14, a6);
  return 0;
}

void BlueFin::PESmoothTrackStatus::update(uint64_t a1, uint64_t a2, int a3)
{
  v4 = (*(a1 + 1) + 1);
  if (v4 <= 9)
  {
    v5 = *a1;
  }

  else
  {
    v4 = 0;
    v5 = 1;
    *a1 = 1;
  }

  *(a1 + 248 + 4 * v4) = a3;
  v6 = a1 + 8;
  v7 = a1 + 8 + 24 * v4;
  *v7 = *a2;
  *(v7 + 16) = *(a2 + 16);
  *(a1 + 1) = v4;
  if (v4 < 9)
  {
    v8 = v4 + 1;
  }

  else
  {
    v8 = 0;
  }

  if ((v5 & 1) != 0 && (v8 & 0x80) == 0 && (a3 - *(a1 + 248 + 4 * v8)) < 0x2EE1 && (v9 = (v6 + 24 * v8), BlueFin::lla2ned(a2, v9, 0, &v23), v10 = sqrt(v24 * v24 + v23 * v23), v10 >= 10.0))
  {
    BlueFin::lla2ned((v6 + 24 * *(a1 + 1)), v9, 0, &v23);
    v11 = atan2(v24, v23);
    v12 = 0;
    if (v8 <= 8u)
    {
      v13 = v8 + 1;
    }

    else
    {
      v13 = 0;
    }

    v14 = 0.0;
    do
    {
      if (v13 == v8)
      {
        break;
      }

      BlueFin::lla2ned((v6 + 24 * v13), v9, 0, &v21);
      v16 = v21;
      v15 = v22;
      v17 = atan2(v22, v21);
      v14 = v14 + sqrt(v16 * v16 + v15 * v15) * sin(v11 - v17);
      ++v12;
      v18 = (v13 + 1) <= 9 ? v13 + 1 : 0;
      v19 = *(a1 + 1) == v13;
      v13 = v18;
    }

    while (!v19);
    if (v12 >= 1)
    {
      v14 = v14 / v12;
    }

    *(a1 + 2) = v14 <= 10.0;
    v20 = v11 * 57.2957795;
    *(a1 + 4) = v20;
  }

  else
  {
    *(a1 + 2) = 0;
  }
}

float BlueFin::GlPePosInfo::CalculateSpeedFromDeltaPos(uint64_t a1, uint64_t a2, _DWORD *a3, float *a4)
{
  v8 = *a4;
  v9 = *a4;
  if (*(a1 + 480))
  {
    v10 = *(a1 + 488);
    BlueFin::lla2ned((a1 + 456), a2, 0, &v17);
    v11 = (*a3 - *(a1 + 480)) * 0.001;
    v9 = v8;
    if (v11 > 0.0)
    {
      v12 = sqrt(v18 * v18 + v17 * v17);
      v13 = v12 / v11;
      v14 = v8 + v8;
      if ((v8 + v8) < 3.0)
      {
        v14 = 3.0;
      }

      if (v13 >= v14)
      {
        v15 = 1;
        v9 = v8;
      }

      else
      {
        v9 = ((1.0 - (2.0 / (v10 + 3))) * *(a1 + 484)) + (v13 * (2.0 / (v10 + 3)));
        v15 = *(a1 + 488) + 1;
      }

      *(a1 + 484) = v9;
      if (v15 >= *(a1 + 492))
      {
        v15 = *(a1 + 492);
      }

      *(a1 + 488) = v15;
    }
  }

  if (v8 <= 0.5)
  {
    *(a1 + 480) = 0xBF80000000000000;
    *(a1 + 488) = 1;
  }

  else
  {
    *(a1 + 456) = *a2;
    *(a1 + 472) = *(a2 + 16);
    *(a1 + 480) = *a3;
    if (*(a1 + 484) < 0.0)
    {
      *(a1 + 484) = v8;
    }
  }

  result = (v8 * 0.25) + (v9 * 0.75);
  *a4 = result;
  return result;
}

double BlueFin::GlPePosInfo::CalculateSpeedFromDeltaPosSwimming(uint64_t a1, double *a2, int *a3, float *a4)
{
  if (*(a1 + 480))
  {
    BlueFin::lla2ned((a1 + 456), a2, 0, &v15);
    v8 = *a3;
    v9 = (*a3 - *(a1 + 480)) * 0.001;
    v10 = *a4;
    if (v9 > 0.0)
    {
      v11 = sqrt(v16 * v16 + v15 * v15);
      v12 = v11 / v9;
      if (v10 >= v12)
      {
        v10 = v12;
      }

      v13 = *(a1 + 484);
      if (v13 >= 0.0)
      {
        v10 = (v13 * 0.967) + (v10 * 0.033);
      }

      *a4 = v10;
    }

    *(a1 + 484) = v10;
  }

  else
  {
    v8 = *a3;
  }

  *(a1 + 456) = *a2;
  result = a2[2];
  *(a1 + 472) = result;
  *(a1 + 480) = v8;
  return result;
}

uint64_t BlueFin::GlPePosReport::SerializeImpl(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v4 = v3;
  v5 = v1;
  v24 = *MEMORY[0x29EDCA608];
  if (v3 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    if (v2)
    {
      v6 = v2;
    }

    else
    {
      v6 = 5;
    }

    if (v6 >= 6)
    {
      DeviceFaultNotify("glpe_posreport.cpp", 128, "SerializeImpl", "ucVersion >= 1 && ucVersion <= 5");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_posreport.cpp", 128, "ucVersion >= 1 && ucVersion <= 5");
    }

    v20 = 92;
    v21 = v6;
    v22 = 0x1000000000000;
    v19 = &unk_2A1F092C0;
    v23 = v6;
    if (*(v1 + 56) == 1)
    {
      DeviceFaultNotify("glpe_posreport.cpp", 131, "SerializeImpl", "!m_bHaveOptionalSection");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_posreport.cpp", 131, "!m_bHaveOptionalSection");
    }

    BlueFin::GlSysLogEntry::PutU8(&v19, 0);
    BlueFin::GlSysLogEntry::PutU8(&v19, *(v5 + 60));
    BlueFin::GlSysLogEntry::PutU32(&v19, *(v5 + 8));
    BlueFin::GlSysLogEntry::PutD64(&v19, *(v5 + 64));
    BlueFin::GlSysLogEntry::PutD64(&v19, *(v5 + 72));
    BlueFin::GlSysLogEntry::PutD64(&v19, *(v5 + 80));
    BlueFin::GlSysLogEntry::PutS16(&v19, *(v5 + 88));
    if (v6 > 3)
    {
      if (v6 == 4)
      {
        for (i = 0; i != 64; i += 8)
        {
          BlueFin::GlSysLogEntry::PutU64(&v19, *(v5 + 96 + i));
        }

        for (j = 0; j != 64; j += 8)
        {
          BlueFin::GlSysLogEntry::PutU64(&v19, *(v5 + 352 + j));
        }
      }

      else
      {
        BlueFin::GlSysLogEntry::PutU8(&v19, 4);
        v12 = 0;
        v13 = v5 + 96;
        do
        {
          for (k = 0; k != 64; k += 8)
          {
            BlueFin::GlSysLogEntry::PutU64(&v19, *(v13 + k));
          }

          ++v12;
          v13 += 64;
        }

        while (v12 != 4);
        v15 = 0;
        v16 = v5 + 352;
        do
        {
          for (m = 0; m != 64; m += 8)
          {
            BlueFin::GlSysLogEntry::PutU64(&v19, *(v16 + m));
          }

          ++v15;
          v16 += 64;
        }

        while (v15 != 4);
      }
    }

    else
    {
      for (n = 0; n != 64; n += 8)
      {
        BlueFin::GlSysLogEntry::PutU32(&v19, *(v5 + 96 + n));
      }

      for (ii = 0; ii != 64; ii += 8)
      {
        BlueFin::GlSysLogEntry::PutU32(&v19, *(v5 + 352 + ii));
      }
    }

    BlueFin::GlSysLogEntry::PutD64(&v19, *(v5 + 608));
    BlueFin::GlSysLogEntry::PutD64(&v19, *(v5 + 616));
    if (v6 >= 2)
    {
      BlueFin::GlSysLogEntry::PutU16(&v19, *(v5 + 16));
      BlueFin::GlSysLogEntry::PutD64(&v19, *(v5 + 24));
      BlueFin::GlSysLogEntry::PutU16(&v19, *(v5 + 32));
      BlueFin::GlSysLogEntry::PutU8(&v19, *(v5 + 34));
      BlueFin::GlSysLogEntry::PutU8(&v19, *(v5 + 35));
      BlueFin::GlSysLogEntry::PutU8(&v19, *(v5 + 36));
      BlueFin::GlSysLogEntry::PutU8(&v19, *(v5 + 37));
      BlueFin::GlSysLogEntry::PutD64(&v19, *(v5 + 40));
      BlueFin::GlSysLogEntry::PutD64(&v19, *(v5 + 48));
    }

    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v19, v4, 4);
    result = 1;
  }

  else
  {
    result = 0;
  }

  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlPePosReport::Deserialize(BlueFin::GlPePosReport *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 92 || *(a2 + 12) - 6 < 0xFFFFFFFB)
  {
    return 0;
  }

  U8 = BlueFin::GlSysLogEntry::GetU8(a2);
  *(this + 56) = U8 != 0;
  if (U8)
  {
    DeviceFaultNotify("glpe_posreport.cpp", 215, "Deserialize", "!m_bHaveOptionalSection");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_posreport.cpp", 215, "!m_bHaveOptionalSection");
  }

  *(this + 15) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(this + 2) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(this + 8) = BlueFin::GlSysLogEntry::GetD64(a2);
  *(this + 9) = BlueFin::GlSysLogEntry::GetD64(a2);
  *(this + 10) = BlueFin::GlSysLogEntry::GetD64(a2);
  S16 = BlueFin::GlSysLogEntry::GetS16(a2);
  *(this + 6) = 0u;
  v7 = this + 96;
  *(this + 44) = S16;
  v8 = this + 352;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 37) = 0u;
  v9 = *(a2 + 12);
  if (v9 > 3)
  {
    if (v9 == 4)
    {
      for (i = 0; i != 64; i += 8)
      {
        *&v7[i] = BlueFin::GlSysLogEntry::GetU64(a2);
      }

      for (j = 0; j != 64; j += 8)
      {
        *&v8[j] = BlueFin::GlSysLogEntry::GetU64(a2);
      }
    }

    else
    {
      v14 = BlueFin::GlSysLogEntry::GetU8(a2);
      if (v14)
      {
        v15 = 0;
        v16 = v14;
        do
        {
          for (k = 0; k != 64; k += 8)
          {
            *&v7[k] = BlueFin::GlSysLogEntry::GetU64(a2);
          }

          ++v15;
          v7 += 64;
        }

        while (v15 != v16);
        for (m = 0; m != v16; ++m)
        {
          for (n = 0; n != 64; n += 8)
          {
            *&v8[n] = BlueFin::GlSysLogEntry::GetU64(a2);
          }

          v8 += 64;
        }
      }
    }
  }

  else
  {
    for (ii = 0; ii != 64; ii += 8)
    {
      *&v7[ii] = BlueFin::GlSysLogEntry::GetU32(a2);
    }

    for (jj = 0; jj != 64; jj += 8)
    {
      *&v8[jj] = BlueFin::GlSysLogEntry::GetU32(a2);
    }
  }

  *(this + 76) = BlueFin::GlSysLogEntry::GetD64(a2);
  *(this + 77) = BlueFin::GlSysLogEntry::GetD64(a2);
  if (*(a2 + 12) == 1)
  {
    *(this + 8) = 0;
    *(this + 5) = 0;
    *(this + 3) = 0;
    *(this + 30) = 0;
    D64 = 4287767300.0;
  }

  else
  {
    *(this + 8) = BlueFin::GlSysLogEntry::GetU16(a2);
    *(this + 3) = BlueFin::GlSysLogEntry::GetD64(a2);
    *(this + 16) = BlueFin::GlSysLogEntry::GetU16(a2);
    *(this + 34) = BlueFin::GlSysLogEntry::GetU8(a2);
    *(this + 35) = BlueFin::GlSysLogEntry::GetU8(a2);
    *(this + 36) = BlueFin::GlSysLogEntry::GetU8(a2);
    *(this + 37) = BlueFin::GlSysLogEntry::GetU8(a2);
    *(this + 5) = BlueFin::GlSysLogEntry::GetD64(a2);
    D64 = BlueFin::GlSysLogEntry::GetD64(a2);
  }

  *(this + 6) = D64;
  BlueFin::GlSysLogEntry::CheckConsumed(a2, 303);
  return 1;
}

void BlueFin::computeResidual(double *a1, double *a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v7 = a5;
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = sqrt((v9 - a2[1]) * (v9 - a2[1]) + (*a1 - *a2) * (*a1 - *a2) + (v10 - a2[2]) * (v10 - a2[2]));
  v12 = log(v11 / 10.0);
  v13 = 1.0;
  if (v11 <= 0.0)
  {
    v12 = 1.0;
  }

  if (v12 >= 1.0)
  {
    v13 = v12;
  }

  v14 = (a3 + 32);
  v15 = (a4 + 16);
  v16 = 0.0;
  do
  {
    v17 = v8 - *(v15 - 2);
    v18 = v9 - *(v15 - 1);
    v19 = *v15;
    v15 += 3;
    v20 = v13 * *v14 * (*(v14 - 1) - sqrt(v18 * v18 + v17 * v17 + (v10 - v19) * (v10 - v19)));
    v16 = v16 + v20 * v20;
    v14 += 6;
    --v7;
  }

  while (v7);
}

uint64_t BlueFin::stRtdMgr::add(uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 800);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = result;
    do
    {
      v7 = *v6;
      v6 += 6;
      if (*a2 == v7)
      {

        return BlueFin::stRtdMgr::updateWlanSta(result, v5, a2);
      }

      ++v5;
    }

    while (v4 != v5);
    if (v4 > 15)
    {
      return result;
    }
  }

  *(result + 800) = v4 + 1;
  if ((v4 & 0x80000000) == 0)
  {
    result = BlueFin::stRtdMgr::updateWlanSta(result, v4, a2);
    if ((result & 1) == 0)
    {
      --*(v3 + 800);
    }
  }

  return result;
}

uint64_t BlueFin::stRtdMgr::updateWlanSta(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 32);
  if (v3 < 0.0)
  {
    v3 = 0.0;
  }

  v4 = *(a3 + 40);
  v5 = 0;
  if (v4 <= -10.0)
  {
    v6 = v4 >= -80.0 && v3 <= 50.0;
    if (v6 && v3 >= 0.1)
    {
      v7 = a1 + 48 * a2;
      v8 = *(v7 + 32);
      v10 = *(a3 + 16);
      v9 = *(a3 + 32);
      *v7 = *a3;
      *(v7 + 16) = v10;
      *(v7 + 32) = v9;
      if (*(v7 + 8) == 0.0)
      {
        return 0;
      }

      else
      {
        v11 = a1 + 2 * a2;
        v12 = *(v11 + 768);
        v13 = v3 + (v8 * v12++);
        *(v7 + 32) = v13 / v12;
        *(v11 + 768) = v12;
        return 1;
      }
    }
  }

  return v5;
}

uint64_t BlueFin::stRtdMgr::RtdCompute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, int a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, __int16 a22, uint64_t a23, unint64_t a24, unint64_t a25, double a26, uint64_t a27, uint64_t a28, int8x16_t a29, uint64_t a30, uint64_t a31, int a32)
{
  v24 = MEMORY[0x2A1C7C4A8](a1);
  STACK[0x12F8] = *MEMORY[0x29EDCA608];
  if (*(v24 + 800) >= 3)
  {
    v26 = v25;
    v27 = v24;
    v28 = *(v24 + 800);
    v29 = 32;
    v30 = v28;
    do
    {
      if (*(v24 + v29) < 0.0)
      {
        goto LABEL_60;
      }

      v29 += 48;
      --v30;
    }

    while (v30);
    bzero(&STACK[0xEA0], 0x300uLL);
    v31 = 0;
    v32 = 0;
    do
    {
      if (*(v27 + v31 + 820) >= 4u)
      {
        v32 |= (v26 - *(v27 + v31 + 824)) >> 3 < 0x271;
      }

      v31 += 8;
    }

    while (v31 != 32);
    v33 = *(v27 + 852);
    v34 = v27 + 820 + 8 * v33;
    *(v34 + 4) = v26;
    *v34 = v28;
    if (((v33 + 1) & 0xFC) != 0)
    {
      v35 = 0;
    }

    else
    {
      v35 = v33 + 1;
    }

    *(v27 + 852) = v35;
    v36 = v28;
    if (v32)
    {
      if (v28 < 4u)
      {
        if (v28)
        {
          v37 = v28;
          v38 = &STACK[0xECC];
          v39 = (v27 + 36);
          v40 = 0.0;
          v41 = v28;
          do
          {
            v43 = *(v39 - 1);
            v42 = *v39;
            if (*v39 <= 1.0)
            {
              v42 = 1.0;
            }

            *(v38 - 3) = v42;
            *v38 = v42;
            if (v43 > 25.0)
            {
              v42 = v42 + (v43 + -25.0);
              *v38 = v42;
            }

            v40 = v40 + v42;
            v38 += 12;
            v39 += 12;
            --v41;
          }

          while (v41);
          if (v40 > 0.00001)
          {
            v44 = &STACK[0xECC];
            do
            {
              *v44 = *v44 / v40;
              v44 += 12;
              --v37;
            }

            while (v37);
          }
        }

        goto LABEL_60;
      }

      v61 = 0;
      v62 = (v27 + 32);
      v63 = -1.0;
      v64 = -1;
      v65 = v28;
      do
      {
        v66 = *v62;
        v62 += 12;
        v67 = v66;
        if (v66 > v63)
        {
          v63 = v67;
          v64 = v61;
        }

        ++v61;
      }

      while (v28 != v61);
      v36 = 0;
      v68 = v64;
      v69 = (v27 + 40);
      v70 = 0.0;
      do
      {
        if (v68)
        {
          v71 = *(v69 - 2);
          if (v71 <= 30.0)
          {
            v72 = &STACK[0xEA0] + 6 * v36;
            *v72 = *(v69 - 2);
            v73 = *(v69 - 1);
            v74 = *v69;
            if (v73 <= 1.0)
            {
              v73 = 1.0;
            }

            v72[2] = *(v69 - 2);
            *(v72 + 3) = v71;
            *(v72 + 4) = v73;
            *(v72 + 10) = v74;
            *(v72 + 11) = v73;
            v70 = v73 + (v70 + v73);
            ++v36;
          }
        }

        v69 += 12;
        --v68;
        --v65;
      }

      while (v65);
      if (v70 > 0.0 && v36 != 0)
      {
        v76 = v36;
        v77 = &STACK[0xECC];
        do
        {
          *v77 = *v77 / v70;
          v77 += 12;
          --v76;
        }

        while (v76);
      }

      if (v36 < 3u)
      {
        goto LABEL_60;
      }
    }

    else if (v28)
    {
      v45 = 0;
      v46 = 0;
      v47 = 0.0;
      do
      {
        v48 = v27 + 48 * v45;
        v50 = *(v48 + 8);
        v51 = *(v48 + 16);
        v49 = v48 + 8;
        v52 = *(v49 + 16);
        if (v46 < 1)
        {
LABEL_33:
          v55 = &STACK[0xEA0] + 6 * v46;
          *v55 = v50;
          *(v55 + 1) = v51;
          v57 = *(v49 + 24);
          v56 = *(v49 + 28);
          if (v56 <= 1.0)
          {
            v56 = 1.0;
          }

          *(v55 + 2) = v52;
          *(v55 + 3) = v57;
          *(v55 + 4) = v56;
          v58 = *(&STACK[0xEA0] + 6 * v45 + 4);
          *(v55 + 10) = *(v49 + 32);
          *(v55 + 11) = v58;
          v47 = v47 + v58;
          ++v46;
        }

        else
        {
          LOWORD(v53) = 0;
          v54 = (&STACK[0xEA0] + 6 * v46);
          while (*v54 != v50 || v54[1] != v51 || v54[2] != v52)
          {
            v53 = (v53 + 1);
            if (v53 >= v46)
            {
              goto LABEL_33;
            }
          }
        }

        ++v45;
      }

      while (v45 != v28);
      if (v46 >= 1)
      {
        v36 = v46;
        if (v47 < 0.0)
        {
          goto LABEL_62;
        }

        v59 = v46;
        v60 = &STACK[0xECC];
        do
        {
          *v60 = *v60 / v47;
          v60 += 12;
          --v59;
        }

        while (v59);
      }

      v36 = v46;
    }

LABEL_62:
    v172 = *&STACK[0xEA0];
    v173 = STACK[0xEB0];
    if (v36 > 1)
    {
      v80 = v36;
      bzero(&a17, 0x2A0uLL);
      v81 = (&a17 | 0x10);
      v82 = &STACK[0xEA0];
      v83 = v80;
      do
      {
        BlueFin::lla2ned(v82, &v172, 0, &STACK[0x1290]);
        *(v81 - 1) = *&STACK[0x1290];
        *v81 = STACK[0x12A0];
        v81 += 3;
        v82 += 6;
        --v83;
      }

      while (v83);
      v166 = v26;
      v170 = 0;
      STACK[0x11F0] = 0;
      STACK[0x1200] = 0;
      STACK[0x11F8] = 0;
      *&STACK[0x11B0] = vdupq_n_s64(0x3F847AE147AE147BuLL);
      STACK[0x11C0] = 0x3F847AE147AE147BLL;
      STACK[0x11D0] = 0;
      STACK[0x11E0] = 0;
      STACK[0x11D8] = 0;
      memset(v174, 0, sizeof(v174));
      v84 = 0uLL;
      *&STACK[0x1290] = 0u;
      *&STACK[0x12A0] = 0u;
      *&STACK[0x12B0] = 0u;
      *&STACK[0x12C0] = 0u;
      STACK[0x12D0] = 0;
      STACK[0x1270] = 0;
      STACK[0x1280] = 0;
      STACK[0x1278] = 0;
      v85 = 1.0;
      STACK[0x1250] = 0;
      STACK[0x1260] = 0;
      STACK[0x1258] = 0;
      STACK[0x1238] = 0;
      v169 = 200;
      v86 = 0;
      STACK[0x1248] = 0;
      STACK[0x1240] = 0;
      STACK[0x1210] = 0;
      STACK[0x1220] = 0;
      STACK[0x1218] = 0;
      while (1)
      {
        *&STACK[0x12D8] = *&STACK[0x11F0];
        STACK[0x12E8] = STACK[0x1200];
        v175 = v84;
        vars0 = v86;
        BlueFin::computeResidual(&v175, v174, &STACK[0xEA0], &a17, v80);
        v87 = 0;
        STACK[0x1228] = v88;
        v89 = &STACK[0x1290];
        do
        {
          v90 = *(&STACK[0x11F0] + v87);
          *(&STACK[0x11F0] + v87) = v90 + *(&STACK[0x11B0] + v87) * v85;
          *v89 = *&STACK[0x11F0];
          v89[2] = STACK[0x1200];
          v91 = STACK[0x1200];
          v175 = *&STACK[0x11F0];
          vars0 = v91;
          BlueFin::computeResidual(&v175, v174, &STACK[0xEA0], &a17, v80);
          *(&STACK[0x1210] + v87) = v92;
          *(&STACK[0x11F0] + v87) = v90;
          v87 += 8;
          v89 += 3;
        }

        while (v87 != 24);
        v93 = 0;
        v94 = *&STACK[0x1210];
        for (i = 1; i != 4; ++i)
        {
          if (*(&STACK[0x1210] + i) < v94)
          {
            v93 = i;
            v94 = *(&STACK[0x1210] + i);
          }
        }

        v96 = v170 + 4;
        v97 = &loc_298A2E000;
        if (v170 + 3 <= 498)
        {
          do
          {
            v98 = *&STACK[0x1210];
            while (1)
            {
              v99 = 0;
              v171 = v96;
              for (j = 1; j != 4; ++j)
              {
                if (v98 < *(&STACK[0x1210] + j))
                {
                  v98 = *(&STACK[0x1210] + j);
                  v99 = j;
                }
              }

              v101 = 0;
              v102 = 3 * v99;
              v103 = &STACK[0x1290];
              do
              {
                v104 = 0;
                v105 = 0.0;
                do
                {
                  v105 = v105 + *&v103[v104];
                  v104 += 3;
                }

                while (v104 != 12);
                *(&STACK[0x1238] + v101) = (v105 - *(&STACK[0x1290] + v101 + v102)) / 3.0;
                ++v101;
                ++v103;
              }

              while (v101 != 3);
              v106 = 0;
              v107 = &STACK[0x1290] + v102;
              do
              {
                *(&STACK[0x1270] + v106 * 8) = *(&STACK[0x1238] + v106 * 8) + *(&STACK[0x1238] + v106 * 8) - *&v107[v106];
                ++v106;
              }

              while (v106 != 3);
              v108 = STACK[0x1280];
              v175 = *&STACK[0x1270];
              vars0 = v108;
              BlueFin::computeResidual(&v175, v174, &STACK[0xEA0], &a17, v80);
              v110 = *&v109;
              if (*&v109 < v94)
              {
                v167 = *&v109;
                for (k = 0; k != 24; k += 8)
                {
                  *(&STACK[0x1250] + k) = *(&STACK[0x1238] + k) + (*(&STACK[0x1270] + k) - *(&STACK[0x1238] + k)) * 2.0;
                }

                v126 = STACK[0x1260];
                v175 = *&STACK[0x1250];
                vars0 = v126;
                BlueFin::computeResidual(&v175, v174, &STACK[0xEA0], &a17, v80);
                v96 = v171 + 2;
                v110 = v167;
                if (v167 < v127)
                {
                  goto LABEL_108;
                }

                goto LABEL_109;
              }

              v111 = vdupq_lane_s64(v109, 0);
              v112 = vandq_s8(vuzp1q_s32(vcgtq_f64(*&STACK[0x1210], v111), vcgtq_f64(*&STACK[0x1220], v111)), xmmword_298A34030);
              v112.i32[0] = vaddvq_s32(v112);
              v113 = vcnt_s8(*v112.i8);
              v113.i16[0] = vaddlv_u8(v113);
              if (v113.i32[0] > 1u)
              {
                break;
              }

              if (v113.i8[0])
              {
                v168 = v110;
                for (m = 0; m != 24; m += 8)
                {
                  *(&STACK[0x1250] + m) = *(&STACK[0x1238] + m) + (*(&STACK[0x1270] + m) - *(&STACK[0x1238] + m)) * 0.5;
                }

                v129 = STACK[0x1260];
                v175 = *&STACK[0x1250];
                vars0 = v129;
                BlueFin::computeResidual(&v175, v174, &STACK[0xEA0], &a17, v80);
                v96 = v171 + 2;
                v110 = v168;
                if (v127 > v168)
                {
                  goto LABEL_108;
                }

LABEL_109:
                *v107 = *&STACK[0x1250];
                v107[2] = STACK[0x1260];
                *(&STACK[0x1210] + v99) = v127;
                v110 = v127;
                goto LABEL_112;
              }

              for (n = 0; n != 3; ++n)
              {
                *(&STACK[0x1250] + n * 8) = *(&STACK[0x1238] + n * 8) + (*&v107[n] - *(&STACK[0x1238] + n * 8)) * 0.5;
              }

              v115 = STACK[0x1260];
              v175 = *&STACK[0x1250];
              vars0 = v115;
              BlueFin::computeResidual(&v175, v174, &STACK[0xEA0], &a17, v80);
              v110 = v116;
              if (*(&STACK[0x1210] + v99) >= v116)
              {
                v96 = v171 + 2;
                *v107 = *&STACK[0x1250];
                v130 = STACK[0x1260];
                goto LABEL_111;
              }

              v117 = 0;
              v118 = &STACK[0x1290];
              v119 = &STACK[0x1290] + 3 * v93;
              do
              {
                for (ii = 0; ii != 3; ++ii)
                {
                  v121 = (*&v118[ii] + *&v119[ii]) * 0.5;
                  *&v118[ii] = v121;
                  *(&STACK[0x11D0] + ii * 8) = v121;
                }

                v122 = STACK[0x11E0];
                v175 = *&STACK[0x11D0];
                vars0 = v122;
                BlueFin::computeResidual(&v175, v174, &STACK[0xEA0], &a17, v80);
                *(&STACK[0x1210] + v117++) = v123;
                v118 += 3;
              }

              while (v117 != 4);
              v93 = 0;
              v98 = *&STACK[0x1210];
              v124 = 1;
              v94 = *&STACK[0x1210];
              do
              {
                if (*(&STACK[0x1210] + v124) < v94)
                {
                  v93 = v124;
                  v94 = *(&STACK[0x1210] + v124);
                }

                ++v124;
              }

              while (v124 != 4);
              v96 = v171 + 6;
              if (v171 + 5 > 498)
              {
                v97 = &loc_298A2E000;
                goto LABEL_123;
              }
            }

            v96 = v171 + 1;
LABEL_108:
            *v107 = *&STACK[0x1270];
            v130 = STACK[0x1280];
LABEL_111:
            v107[2] = v130;
            *(&STACK[0x1210] + v99) = v110;
LABEL_112:
            if (v110 < v94)
            {
              v93 = v99;
              v94 = v110;
            }

            if (v169-- <= 1)
            {
              v97 = &loc_298A2E000;
              if (v96 <= 500)
              {
                v132 = 0;
                v133 = 0.0;
                do
                {
                  v133 = v133 + *(&STACK[0x1210] + v132) + *(&STACK[0x1210] + v132 + 8);
                  v132 += 16;
                }

                while (v132 != 32);
                v134 = 0;
                v135 = vdupq_lane_s64(COERCE__INT64(v133 * 0.25), 0);
                v136 = 0.0;
                do
                {
                  v137 = vsubq_f64(*(&STACK[0x1210] + v134), v135);
                  v138 = vmulq_f64(v137, v137);
                  v136 = v136 + v138.f64[0] + v138.f64[1];
                  v134 += 16;
                }

                while (v134 != 32);
                v169 = 200;
                if (v136 <= 0.003)
                {
                  break;
                }
              }
            }

            else
            {
              v97 = &loc_298A2E000;
            }
          }

          while (v96 < 500);
        }

LABEL_123:
        v139 = &STACK[0x1290] + 3 * v93;
        *&STACK[0x11D0] = *v139;
        STACK[0x11E0] = v139[2];
        if (v96 > 500)
        {
          break;
        }

        v140 = 0;
        v141 = *(&STACK[0x1210] + v93);
        v142 = v96 + 1;
        while (1)
        {
          v85 = v97[54];
          v143 = *(&STACK[0x11B0] + v140) * v85;
          v144 = *(&STACK[0x11D0] + v140) + v143;
          *(&STACK[0x11D0] + v140) = v144;
          v145 = STACK[0x11E0];
          v175 = *&STACK[0x11D0];
          vars0 = v145;
          BlueFin::computeResidual(&v175, v174, &STACK[0xEA0], &a17, v80);
          if (v146 < v141)
          {
            break;
          }

          v147 = v144 - v143 - v143;
          *(&STACK[0x11D0] + v140) = v147;
          v148 = STACK[0x11E0];
          v175 = *&STACK[0x11D0];
          vars0 = v148;
          BlueFin::computeResidual(&v175, v174, &STACK[0xEA0], &a17, v80);
          if (v149 < v141)
          {
            ++v142;
            break;
          }

          *(&STACK[0x11D0] + v140) = v143 + v147;
          v140 += 8;
          v142 += 2;
          if (v140 == 24)
          {
            goto LABEL_131;
          }
        }

        v170 = v142;
        *&STACK[0x11F0] = *&STACK[0x11D0];
        STACK[0x1200] = STACK[0x11E0];
        v84 = *&STACK[0x11F0];
        v86 = STACK[0x1200];
      }

LABEL_131:
      v150 = STACK[0x11E0];
      *&STACK[0x1210] = *&STACK[0x11D0];
      STACK[0x1220] = v150;
      BlueFin::ned2lla(&v172, &STACK[0x1210], &STACK[0x1290]);
      v26 = v166;
      if (*(v27 + 808))
      {
        v151 = STACK[0x1290];
        v152 = STACK[0x1298];
        v153 = *&STACK[0x12A0];
        bzero(&a19, 0xDE0uLL);
        LOBYTE(STACK[0x1290]) = 10;
        v154 = BlueFin::GlExtSensorType::Get(&STACK[0x1290]);
        v155 = v153;
        a17 = v154;
        a18 = 2;
        a22 = 1;
        a24 = v151;
        a25 = v152;
        a26 = v155;
        a32 = 3;
        __asm { FMOV            V0.2D, #3.0 }

        a29 = _Q0;
        a31 = 0x402E000000000000;
        *(v27 + 816) = v166;
        BlueFin::GlPeHula::Update(*(v27 + 808), &a17, _Q0, v159, v160, v161, v162, v163, v164, v165);
        STACK[0x1290] = &unk_2A1F121F8;
        STACK[0x1298] = &a17;
        if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
        {
          off_2A1F12210(&STACK[0x1290]);
        }

        BlueFin::GlExtSensDataIf::OutputDebugMsg(&a17);
        bzero(v27, 0x322uLL);
      }
    }

    if ((v26 - *(v27 + 816)) >> 4 >= 0x753)
    {
      bzero(v27, 0x322uLL);
    }

    result = 1;
    goto LABEL_61;
  }

LABEL_60:
  result = 0;
LABEL_61:
  _VF = __OFSUB__(*MEMORY[0x29EDCA608], STACK[0x12F8]);
  return result;
}

uint64_t BlueFin::GlPeMiniEphMgr::remove(BlueFin::GlPeMiniEphMgr *this, int a2)
{
  v3 = *(this + 192 * a2 + 32);
  if (v3 >= 0xBD)
  {
    DeviceFaultNotify("glpe_satpos.cpp", 1008, "remove", "ucSvId <= MAX_SVID");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_satpos.cpp", 1008, "ucSvId <= MAX_SVID");
  }

  *(this + v3 + 17504) = 91;
  v4 = this + 8;

  return BlueFin::GlSetBase::Remove(v4, a2);
}

BOOL BlueFin::GlPeSatPos::IsCached(BlueFin::GlPeTimeMgrUtil *a1, unsigned __int8 *a2, int8x16_t a3, int8x16_t a4, int8x16_t a5, double a6, int8x16_t a7)
{
  v9 = BlueFin::GlPeTimeMgrUtil::DoubleToLms(a1, a3, a4, a5, a6, a7);
  v13 = *a2;
  if (v13 >= 0xBD)
  {
    DeviceFaultNotify("glpe_satpos.cpp", 942, "IsMiniEphAvailable", "*rotSvId <= MAX_SVID");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_satpos.cpp", 942, "*rotSvId <= MAX_SVID");
  }

  v14 = *(a1 + v13 + 17512);
  if (v14 > 0x5A)
  {
    return 0;
  }

  v10.i64[0] = *(a1 + 24 * v14 + 8);
  *v12.i64 = *v10.i64 + trunc(*v10.i64 * 2.32830644e-10) * -4294967300.0;
  v16.f64[0] = NAN;
  v16.f64[1] = NAN;
  v17 = vnegq_f64(v16);
  v12.i64[0] = vbslq_s8(v17, v12, v10).u64[0];
  if (*v10.i64 > 4294967300.0)
  {
    v10.i64[0] = v12.i64[0];
  }

  if (*v10.i64 < -4294967300.0)
  {
    *v11.i64 = -*v10.i64;
    *v10.i64 = -(*v10.i64 - trunc(*v10.i64 * -2.32830644e-10) * -4294967300.0);
    *v10.i64 = -*vbslq_s8(v17, v10, v11).i64;
  }

  if (*v10.i64 < 0.0)
  {
    v18 = --*v10.i64;
  }

  else
  {
    v18 = *v10.i64;
  }

  v19 = v9 - v18;
  if (v19 < 0)
  {
    v19 = -v19;
  }

  return v19 < 0x3A99;
}

BOOL BlueFin::GlPeSatPos::GetSatPos(uint64_t a1, unsigned __int8 *a2, uint64_t a3, double *a4, int8x16_t a5, int8x16_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a1 + 17720);
  v20 = 7;
  v21 = 0;
  BlueFin::GlPeSvIdConverter::SvId2Gnss((v12 + 119744), a2, &v20, a5, a6);
  result = 0;
  if (v21 - 1 <= 0x3E)
  {
    v13 = *(a1 + 17720);
    v14 = *a4;
    v22 = v21;
    Mgr = BlueFin::GlPeGnssEphemerisMgr::GetMgr((v13 + 384), v20);
    if (Mgr)
    {
      v16 = Mgr;
      v17 = (*(*Mgr + 112))(Mgr, &v22, 1);
      if (v17)
      {
        v18 = v17;
        if (!(*(*v16 + 72))(v16, v17, 0, *(a3 + 16)) && ((*(*v18 + 112))(v18, a3, a8, v14) & 1) != 0)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

void *BlueFin::GlPeSatPos::GetSatClkInfo(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, double a5)
{
  result = BlueFin::GlPeGnssEphemerisMgr::GetMgr((*(a1 + 17720) + 384), *a2);
  if (result)
  {
    result = (*(*result + 112))(result, a2 + 1, 1);
    if (result)
    {
      v11 = result;
      BlueFin::GlPeTimeManager::GetTime(*(a1 + 17728), a5, 0, v12);
      return (*(*v11 + 120))(v11, v12, a3, a4);
    }
  }

  return result;
}

double BlueFin::GlPeSlowFilter::GetSpdSmoothCoeff(BlueFin::GlPeSlowFilter *this, char a2, unsigned int a3, unsigned int a4, double a5)
{
  if (a5 < 0.417 || (a2 & 1) != 0 || *(this + 6) == 0.0)
  {
    *(this + 14) = a3;
    return 1.0;
  }

  else
  {
    result = 0.5;
    if (a4 >= 0x1F)
    {
      v6 = *(this + 14);
      result = 0.1;
      if (v6)
      {
        v7 = a3 >= v6;
        v8 = a3 - v6;
        if (v8 != 0 && v7 && v8 >> 5 <= 0x752)
        {
          v9 = v8 * 0.001;
          if (v9 < 10.0)
          {
            return fmax(v9 / -10.0 + 1.0, 0.1);
          }
        }
      }
    }
  }

  return result;
}

double BlueFin::SmoothThresh(BlueFin *this, double a2, double a3, double a4)
{
  if (a4 > a3)
  {
    return 1024.0;
  }

  v4 = 1.0;
  if (a4 < a2)
  {
    return v4;
  }

  v6 = (a4 - a2) / (a3 - a2) * 10.0;
  v7 = vcvtmd_s64_f64(v6);
  return (1 << v7) + ((1 << vcvtpd_s64_f64(v6)) - (1 << v7)) * (v6 - v7);
}

float BlueFin::GlPeUrbanPosAsstRegion::unpackRegion(int *a1, uint64_t a2, float a3, float a4)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = v5 - 0x7FFF;
  v8 = HIWORD(v5) - 0x7FFF;
  v9 = (*a1 >> 12) & 0xFFF;
  if ((*a1 & 0x10000000) != 0)
  {
    v10 = 25;
  }

  else
  {
    v10 = 15;
  }

  if ((v6 & 0x20000000) != 0)
  {
    v10 = 35;
  }

  if ((v6 & 0x40000000) != 0)
  {
    v10 = 60;
  }

  if (v6 >= 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = v10 - 5;
  }

  v12 = a3;
  v13 = (-v7 / 6367456.73 + a3 * 0.0174532925) * 57.2957795;
  v14 = a4;
  v15 = a3 * 0.0174532925;
  v16 = (-v8 / (cosf(v15) * 6367456.73) + a4 * 0.0174532925) * 57.2957795;
  if (v16 > 180.0)
  {
    v16 = 360.0 - v16;
  }

  *a2 = v13;
  *(a2 + 4) = v16;
  v17 = v9 / 10.0;
  *(a2 + 8) = v11;
  *(a2 + 12) = v17;
  if (fabs(v17 + -239.6) < 1.0 && v11 == 45 && *(a2 + 20) == 1 && (*(a2 + 22) & 1) == 0 && fabs(v12 + -47.614338) < 0.0001 && fabs(v14 + 122.332742) < 0.0001)
  {
    *(a2 + 8) = 1117126656;
  }

  result = (v6 & 0xFFF);
  *(a2 + 16) = result;
  *(a2 + 20) = (v6 & 0x2000000) != 0;
  *(a2 + 21) = (v6 & 0x4000000) != 0;
  *(a2 + 22) = (v6 & 0x8000000) != 0;
  return result;
}

uint64_t BlueFin::UrbanPosAsstRegionExt::UrbanPosAsstRegionExt(uint64_t a1, uint64_t a2)
{
  *(a1 + 240) = 0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  v5 = *(a2 + 8);
  v4 = *(a2 + 12);
  *a1 = v5;
  if (v4 < 0.0 || (v6 = v4, v4 >= 360.0))
  {
    v6 = fmodf(v4, 360.0);
    if (v6 < 0.0)
    {
      v6 = v6 + 360.0;
    }
  }

  v7 = v6 * 0.017453;
  *(a1 + 4) = v6 * 0.017453;
  *(a1 + 8) = *(a2 + 20);
  *(a1 + 9) = *(a2 + 21);
  *(a1 + 11) = 0;
  v8 = *(a2 + 16);
  *(a1 + 12) = v8;
  *(a1 + 32) = vcvtq_f64_f32(*a2);
  v9 = __sincosf_stret(v6 * 0.017453);
  *(a1 + 16) = v9.__cosval;
  *(a1 + 20) = LODWORD(v9.__sinval);
  if ((v7 > 1.58 || v7 < 1.56) && (v7 > 4.72 || v7 < 4.71))
  {
    *(a1 + 24) = v9.__sinval / v9.__cosval;
  }

  v10 = v5 * v9.__cosval;
  v11 = v5 * v9.__sinval;
  v12 = (v5 * v9.__cosval) * 0.6;
  v13 = (v5 * v9.__sinval) * 0.6;
  v14 = v9.__cosval * v8;
  v15 = v9.__sinval * v8;
  v16 = -(v5 * v9.__cosval);
  *(a1 + 152) = (v5 * v9.__sinval);
  *(a1 + 160) = v16;
  *(a1 + 168) = 0;
  v17 = (v5 * v9.__sinval) + (v9.__cosval * v8);
  *(a1 + 176) = v17;
  *(a1 + 184) = ((v9.__sinval * v8) - (v5 * v9.__cosval));
  *(a1 + 192) = 0;
  *(a1 + 200) = -(v5 * v9.__sinval);
  *(a1 + 208) = (v5 * v9.__cosval);
  *(a1 + 216) = 0;
  *(a1 + 224) = (v9.__cosval * v8);
  *(a1 + 232) = (v9.__sinval * v8);
  *(a1 + 240) = 0;
  if (v4 < 0.0 || v4 > 90.0)
  {
    if (v4 <= 90.0 || v4 > 180.0)
    {
      if (v4 <= 180.0 || v4 > 270.0)
      {
        v18 = 0.0;
        if (v4 <= 270.0)
        {
          v16 = 0.0;
          v23 = 0.0;
          v17 = 0.0;
          v19 = 0.0;
          v20 = 0.0;
          v21 = 0.0;
          v22 = 0.0;
        }

        else
        {
          v16 = 0.0;
          v23 = 0.0;
          v17 = 0.0;
          v19 = 0.0;
          v20 = 0.0;
          v21 = 0.0;
          v22 = 0.0;
          if (v4 < 360.0)
          {
            v17 = v14 - v11;
            v19 = v15 - v12;
            v18 = (v9.__sinval * v8) - (v5 * v9.__cosval);
            v22 = v14 - v13;
            v16 = v5 * v9.__cosval;
            v23 = v5 * v9.__sinval;
            v20 = (v5 * v9.__cosval) * 0.6;
            v21 = (v5 * v9.__sinval) * 0.6;
          }
        }
      }

      else
      {
        v18 = v10 + v15;
        v19 = v12 + v15;
        v20 = -v12;
        v21 = v13 + v14;
        v23 = (v5 * v9.__sinval) + (v9.__cosval * v8);
        v17 = -(v5 * v9.__sinval);
        v22 = -v13;
      }
    }

    else
    {
      v23 = v14 - v11;
      v20 = v15 - v12;
      v18 = v5 * v9.__cosval;
      v21 = v14 - v13;
      v16 = (v9.__sinval * v8) - (v5 * v9.__cosval);
      v17 = v5 * v9.__sinval;
      v19 = (v5 * v9.__cosval) * 0.6;
      v22 = (v5 * v9.__sinval) * 0.6;
    }
  }

  else
  {
    v18 = -(v5 * v9.__cosval);
    v16 = v10 + v15;
    v19 = -v12;
    v20 = v12 + v15;
    v21 = -v13;
    v22 = v13 + v14;
    v23 = -(v5 * v9.__sinval);
  }

  *(a1 + 56) = v23;
  *(a1 + 64) = v18;
  *(a1 + 72) = 0;
  *(a1 + 80) = v17;
  *(a1 + 88) = v16;
  *(a1 + 96) = 0;
  *(a1 + 104) = v21;
  *(a1 + 112) = v19;
  *(a1 + 120) = 0;
  *(a1 + 128) = v22;
  *(a1 + 136) = v20;
  *(a1 + 144) = 0;
  return a1;
}

BlueFin::UrbanPosAsstRegionExt *BlueFin::UrbanPosAsstRegionExt::UrbanPosAsstRegionExt(BlueFin::UrbanPosAsstRegionExt *this, double a2, double a3, float a4, float a5, float a6, float a7, unsigned int a8)
{
  *(this + 136) = 0u;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *this = a7;
  v16 = a6 >= 0.0 && a6 < 360.0;
  v17 = a6;
  if (!v16)
  {
    v17 = fmodf(a6, 360.0);
    if (v17 < 0.0)
    {
      v17 = v17 + 360.0;
    }
  }

  v18 = v17 * 0.017453;
  v19 = *&vshl_u16((*&vdup_n_s16(a8) & 0xFF00FF00FF00FFLL), 0xFFFCFFFDFFFEFFFFLL) & 0xFF01FF01FF01FF01;
  *(this + 1) = v18;
  *(this + 2) = vuzp1_s8(v19, v19).u32[0];
  *(this + 3) = a5;
  *(this + 4) = a2;
  *(this + 5) = a3;
  *(this + 6) = a4;
  v20 = __sincosf_stret(v18);
  *(this + 4) = LODWORD(v20.__cosval);
  *(this + 20) = LODWORD(v20.__sinval);
  if ((v18 > 1.58 || v18 < 1.56) && (v18 > 4.72 || v18 < 4.71))
  {
    *(this + 6) = v20.__sinval / v20.__cosval;
  }

  v21 = v20.__cosval * a7;
  v22 = v20.__sinval * a7;
  v23 = (v20.__cosval * a7) * 0.6;
  v24 = (v20.__sinval * a7) * 0.6;
  v25 = v20.__cosval * a5;
  v26 = v20.__sinval * a5;
  v27 = -(v20.__cosval * a7);
  *(this + 19) = (v20.__sinval * a7);
  *(this + 20) = v27;
  *(this + 21) = 0;
  v28 = (v20.__cosval * a5) + (v20.__sinval * a7);
  *(this + 22) = v28;
  *(this + 23) = ((v20.__sinval * a5) - (v20.__cosval * a7));
  *(this + 24) = 0;
  *(this + 25) = -(v20.__sinval * a7);
  *(this + 26) = (v20.__cosval * a7);
  *(this + 27) = 0;
  *(this + 28) = (v20.__cosval * a5);
  *(this + 29) = (v20.__sinval * a5);
  *(this + 30) = 0;
  if (a6 < 0.0 || a6 > 90.0)
  {
    if (a6 <= 90.0 || a6 > 180.0)
    {
      if (a6 <= 180.0 || a6 > 270.0)
      {
        v29 = 0.0;
        if (a6 <= 270.0)
        {
          v27 = 0.0;
          v34 = 0.0;
          v28 = 0.0;
          v30 = 0.0;
          v31 = 0.0;
          v32 = 0.0;
          v33 = 0.0;
        }

        else
        {
          v27 = 0.0;
          v34 = 0.0;
          v28 = 0.0;
          v30 = 0.0;
          v31 = 0.0;
          v32 = 0.0;
          v33 = 0.0;
          if (a6 < 360.0)
          {
            v28 = v25 - v22;
            v30 = v26 - v23;
            v29 = (v20.__sinval * a5) - (v20.__cosval * a7);
            v33 = v25 - v24;
            v27 = v20.__cosval * a7;
            v34 = v20.__sinval * a7;
            v31 = (v20.__cosval * a7) * 0.6;
            v32 = (v20.__sinval * a7) * 0.6;
          }
        }
      }

      else
      {
        v29 = v26 + v21;
        v30 = v26 + v23;
        v31 = -v23;
        v32 = v25 + v24;
        v34 = (v20.__cosval * a5) + (v20.__sinval * a7);
        v28 = -(v20.__sinval * a7);
        v33 = -v24;
      }
    }

    else
    {
      v34 = v25 - v22;
      v31 = v26 - v23;
      v29 = v20.__cosval * a7;
      v32 = v25 - v24;
      v27 = (v20.__sinval * a5) - (v20.__cosval * a7);
      v28 = v20.__sinval * a7;
      v30 = (v20.__cosval * a7) * 0.6;
      v33 = (v20.__sinval * a7) * 0.6;
    }
  }

  else
  {
    v29 = -(v20.__cosval * a7);
    v27 = v26 + v21;
    v30 = -v23;
    v31 = v26 + v23;
    v32 = -v24;
    v33 = v25 + v24;
    v34 = -(v20.__sinval * a7);
  }

  *(this + 7) = v34;
  *(this + 8) = v29;
  *(this + 9) = 0;
  *(this + 10) = v28;
  *(this + 11) = v27;
  *(this + 12) = 0;
  *(this + 13) = v32;
  *(this + 14) = v30;
  *(this + 15) = 0;
  *(this + 16) = v33;
  *(this + 17) = v31;
  *(this + 18) = 0;
  return this;
}

uint64_t BlueFin::UrbanPosAsstRegionExt::operator=(uint64_t a1, uint64_t a2)
{
  BlueFin::UrbanPosAsstRegionExt::UrbanPosAsstRegionExt(&v10, a2);
  *a1 = v10;
  *(a1 + 8) = v11;
  *(a1 + 9) = v12;
  *(a1 + 11) = 0;
  v3 = v15;
  *(a1 + 32) = v14;
  *(a1 + 48) = v3;
  v4 = v17;
  *(a1 + 64) = v16;
  *(a1 + 80) = v4;
  v5 = v19;
  *(a1 + 96) = v18;
  *(a1 + 112) = v5;
  v6 = v21;
  *(a1 + 128) = v20;
  *(a1 + 144) = v6;
  v7 = v23;
  *(a1 + 160) = v22;
  *(a1 + 176) = v7;
  v8 = v25;
  *(a1 + 192) = v24;
  *(a1 + 208) = v8;
  *(a1 + 224) = v26;
  *(a1 + 240) = v27;
  *(a1 + 12) = v13;
  return a1;
}

uint64_t BlueFin::UrbanPosAsstRegionExt::isAngleWithinRange(BlueFin::UrbanPosAsstRegionExt *this, int a2, double a3)
{
  if (a2)
  {
      ;
    }

      ;
    }

    v4 = fabs(i);
    v5 = v4 > 5.498 || v4 < 0.785;
    v6 = v5 | *(this + 8) ^ 1;
    if (!v5 && (*(this + 8) & 1) == 0)
    {
      v6 = v4 >= 2.35659265;
      if (v4 > 3.92659265)
      {
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

uint64_t BlueFin::UrbanPosAsstRegionExt::isOkToUse(BlueFin::UrbanPosAsstRegionExt *this, double *a2, int a3, _BYTE *a4, int a5, double a6)
{
  if (*(this + 11))
  {

    return BlueFin::UrbanPosAsstRegionExt::isAngleWithinRange(this, a3, a6);
  }

  else
  {
    BlueFin::lla2ned(a2, this + 4, 0, v12);
    return BlueFin::UrbanPosAsstRegionExt::isNedPosInside(this, v12, a3, a4, a5, a6);
  }
}

uint64_t BlueFin::UrbanPosAsstRegionExt::isNedPosInside(uint64_t a1, double *a2, int a3, _BYTE *a4, int a5, double a6)
{
  *a4 = 0;
  v6 = *a2;
  v7 = a2[1];
  v8 = 56;
  if (a5)
  {
    v8 = 104;
  }

  v9 = 64;
  if (a5)
  {
    v9 = 112;
  }

  v10 = 80;
  if (a5)
  {
    v10 = 128;
  }

  v11 = 88;
  if (a5)
  {
    v11 = 136;
  }

  if (v7 < *(a1 + v9) || v7 > *(a1 + v11) || v6 < *(a1 + v8) || v6 > *(a1 + v10))
  {
    return 0;
  }

  v16 = *(a1 + 4);
  if (v16 > 0.01 && v16 < 6.27 && (v16 < 3.13 || v16 >= 3.15) && fabsf(*(a1 + 16)) >= 0.01)
  {
    v17 = *(a1 + 152);
    if (a5)
    {
      v17 = v17 * 0.6;
      v18 = *(a1 + 160) * 0.6;
      v19 = vdupq_n_s64(0x3FE3333333333333uLL);
      v20 = vmlaq_f64(vmulq_f64(*(a1 + 224), vdupq_n_s64(0x3FD999999999999AuLL)), v19, *(a1 + 176));
      v21 = vmulq_f64(*(a1 + 200), v19);
    }

    else
    {
      v18 = *(a1 + 160);
      v20 = *(a1 + 176);
      v21 = *(a1 + 200);
    }

    v22 = v6 - v17;
    v23 = v7 - v18;
    v24 = (v20.f64[1] - v18) * v23 + (v20.f64[0] - v17) * v22;
    v25 = (v20.f64[1] - v18) * (v20.f64[1] - v18) + (v20.f64[0] - v17) * (v20.f64[0] - v17);
    if (v24 < 0.0 || v24 > v25)
    {
      return 0;
    }

    v27 = v21.f64[0] - v17;
    v28 = v21.f64[1] - v18;
    v29 = v28 * v23 + v27 * v22;
    if (v29 < 0.0 || v29 > v28 * v28 + v27 * v27)
    {
      return 0;
    }
  }

  *a4 = 1;
  return BlueFin::UrbanPosAsstRegionExt::isAngleWithinRange(a1, a3, a6);
}

uint64_t BlueFin::UrbanPosAsstRegionExt::findCenterline(uint64_t a1, uint64_t a2, double *a3)
{
  *a3 = 0.0;
  a3[1] = 0.0;
  a3[2] = 0.0;
  v3 = *a2;
  v4 = *(a1 + 56);
  v5 = *(a1 + 80);
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vcgeq_f64(v5, *a2), vcgeq_f64(*a2, v4))))))
  {
    return 0;
  }

  v7 = *(a1 + 4);
  if (v7 > 0.01 && v7 < 6.27 && (v7 < 3.13 || v7 >= 3.15))
  {
    if ((v7 > 1.58 || v7 < 1.56) && (v7 > 4.72 || v7 < 4.71))
    {
      v10 = *(a1 + 24);
      if (fabsf(v10) <= 0.00001)
      {
        return 0;
      }

      v11 = v10;
      *&v8 = *(a2 + 8) >> 64;
      v3.f64[0] = v3.f64[1] / v11;
    }

    else
    {
      v9 = vaddq_f64(v4, v5).f64[0];
      *&v8 = *(a2 + 8) >> 64;
      v3.f64[0] = 0.5 * v9;
    }
  }

  else
  {
    v8 = vmuld_lane_f64(0.5, vaddq_f64(v4, v5), 1);
  }

  *a3 = v3.f64[0];
  a3[1] = v8;
  result = 1;
  a3[2] = 0.0;
  return result;
}

uint64_t BlueFin::UrbanPosAsstRegionExt::getXtrackPos(uint64_t a1, double *a2, uint64_t a3)
{
  v14 = 0uLL;
  v15 = 0;
  BlueFin::lla2ned(a2, (a1 + 32), 0, v13);
  Centerline = BlueFin::UrbanPosAsstRegionExt::findCenterline(a1, v13, v14.f64);
  if (Centerline)
  {
    v6 = *(a1 + 4);
    if (v6 <= 1.58 && v6 >= 1.56 || v6 <= 4.72 && v6 >= 4.71 || v6 <= 0.01 || v6 >= 6.27 || v6 >= 3.13 && v6 < 3.15)
    {
      v11 = v14;
      v12 = v15;
    }

    else
    {
      v8 = vcvtq_f64_f32(*(a1 + 16));
      v11 = vmlaq_n_f64(v14, v8, -(v14.f64[0] - v13[0]) * v8.f64[0]);
      v12 = 0;
    }

    BlueFin::ned2lla((a1 + 32), v11.f64, &v9);
    *a3 = v9;
    *(a3 + 16) = v10;
  }

  return Centerline;
}

void BlueFin::GlPeShrimpKf::DoInitNoneGnss(BlueFin::GlPeShrimpKf *this, const BlueFin::GlPeNavGnssState *a2)
{
  BlueFin::GlPeShrimpKf::SetInsLla(this, a2 + 1);
  *(this + 669) = *(this + 573);
  *(this + 335) = *(this + 287);
  v4 = (*(a2 + 20) * *(a2 + 20)) * 0.5;
  v5 = *(this + 83);
  *(v5[1] + 8) = v4;
  *(v5[2] + 16) = v4;
  *(v5[3] + 24) = (*(a2 + 21) * *(a2 + 21));
  v6 = *this;
  *(this + *(*this - 24) + 88) = *(a2 + 11);
  *(v5[7] + 56) = (*(a2 + 24) * *(a2 + 24));
  *(this + *(v6 - 24) + 152) = *(a2 + 19);
  *(v5[8] + 64) = (*(a2 + 40) * *(a2 + 40));
  v7 = *(this + 654);
  if (*(v7 + 584) != 1)
  {
    return;
  }

  if (*(a2 + 240) == 1)
  {
    *(this + 665) = sqrt(*(a2 + 14) * *(a2 + 14) + *(a2 + 13) * *(a2 + 13));
  }

  v8 = *(a2 + 51);
  if (v8)
  {
    if (BlueFin::GlPeShrimpKf::IsNotTurning(this, 1.0))
    {
      LOBYTE(v8) = 0;
      if (*(a2 + 46) >= 0.174532925 || *(a2 + 35) >= 1.0)
      {
        goto LABEL_23;
      }

      if (v7[80] >= *v7 && *(this + 649) == 1)
      {
        v9 = (this + 608);
        v10 = 3;
        while (1)
        {
          v11 = *v9;
          if (*v9 < 0.0)
          {
            v11 = -*v9;
          }

          if (v11 >= 0.5)
          {
            break;
          }

          v12 = *(v9 - 4);
          if (v12 < 0.0)
          {
            v12 = -v12;
          }

          if (v12 >= 0.5)
          {
            break;
          }

          v13 = *(v9 - 8) - *(this + 80);
          if (v13 < 0.0)
          {
            v13 = -v13;
          }

          if (v13 >= 0.5)
          {
            break;
          }

          ++v9;
          if (!--v10)
          {
            LOBYTE(v8) = *(this + 4904) ^ 1;
            goto LABEL_23;
          }
        }
      }
    }

    LOBYTE(v8) = 0;
  }

LABEL_23:
  if (v7[81] >= v7[1])
  {
    *(this + 4904) = 1;
    *(this + 609) = 0;
    *(this + 611) = 0;
    *(this + 610) = 0;
  }

  else
  {
    if ((v8 & 1) == 0)
    {
      return;
    }

    *(this + 4904) = 0;
    *(this + 4872) = *(a2 + 104);
    *(this + 611) = *(a2 + 15);
  }

  v14.f64[0] = *(v7 + 97);
  *(this + 579) = *(v7 + 85) * 0.0174532925;
  v14.f64[1] = *(v7 + 109);
  *(this + 290) = vmulq_f64(v14, vdupq_n_s64(0x3F91DF46A2529D34uLL));
  v48 = 0;
  v16 = *(v7 + 41);
  v46[0] = *(v7 + 29);
  v15 = v46[0];
  v46[1] = v16;
  v47 = *(v7 + 53);
  v17 = v47;
  BlueFin::QuaternionD::rotateV1toV2(this + 293, v46, BlueFin::GlPeShrimpKf::Design::GRAVITY_VEC);
  *&v45[16] = 0x100000003;
  v45[0] = 0.0;
  v45[4] = 0.0;
  v45[8] = -9.81;
  *v44 = v15;
  *&v44[4] = v16;
  v44[16] = 0x100000003;
  v44[8] = v17;
  v43 = 0;
  v36 = BlueFin::QuaternionD::conj((this + 4688));
  v37 = v18;
  v38 = v19;
  v39 = v20;
  BlueFin::QuaternionD::rotVec(&v36, v45, v42);
  BlueFin::Matrix::operator-(v44, v42, &v36);
  v21 = v40;
  v22 = v41;
  *(this + 576) = v36;
  *(this + 577) = v21;
  *(this + 578) = v22;
  v23 = *this;
  v24 = this + *(*this - 24);
  *(v24 + 104) = *(this + 4872);
  *(v24 + 15) = *(this + 611);
  *(this + 2) = 1;
  *(this + 1217) = *(this + *(v23 - 24) + 200);
  *(this + 612) = 0;
  v36 = BlueFin::QuaternionD::conj((this + 4688));
  v37 = v25;
  v38 = v26;
  v39 = v27;
  BlueFin::QuaternionD::qnb2Eul(&v36, &v35, &v34, &v33);
  if (!*(this + 1212))
  {
    v36 = 1.0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    *(this + 602) = BlueFin::QuaternionD::operator*(&v36, this + 586);
    *(this + 603) = v28;
    *(this + 604) = v29;
    *(this + 605) = v30;
  }

  v31 = *(this + 654);
  v32 = *(this + 83);
  *(v32[17] + 136) = v31[86] * 0.00030461742;
  *(v32[18] + 144) = v31[98] * 0.00030461742;
  *(v32[19] + 152) = v31[110] * 0.00030461742;
}

void *BlueFin::GlPeShrimpKf::SaveAprioriState(BlueFin::GlPeShrimpKf *this)
{
  BlueFin::GlPeShrimpKf::stReducedNavState::stReducedNavState(v8, this + *(*this - 24), this + 4608, this + 4632, this + 301, this + 293, this + 656);
  v2 = v8[1];
  *(this + 56) = v8[0];
  *(this + 72) = v2;
  v3 = v8[3];
  *(this + 88) = v8[2];
  *(this + 104) = v3;
  *(this + 15) = v9;
  *(this + 8) = v10;
  v4 = v13;
  *(this + 152) = v12;
  *(this + 168) = v4;
  v5 = v15;
  *(this + 184) = v14;
  *(this + 200) = v5;
  v6 = v17;
  *(this + 216) = v16;
  *(this + 18) = v11;
  *(this + 232) = v6;
  *(this + 248) = v18;
  result = BlueFin::SKFVector::Clone((this + 264), v19);
  *(this + 228) = v19[96];
  return result;
}

uint64_t BlueFin::GlPeShrimpKf::ApplyCrossTrackPosMeas(BlueFin::GlPeShrimpKf *this, double a2, double a3, double a4, int a5)
{
  v12[0] = v13;
  v12[1] = 0x1500000015;
  v13[0] = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0;
  v9 = __sincos_stret(a4);
  *&v13[1] = -v9.__sinval;
  v13[2] = *&v9.__cosval;
  return BlueFin::GlPeShrimpKf::MeasUpdateINS(this, v12, 18, a2, a3 * a3, 3.0, v10, a5);
}

void BlueFin::GlPeShrimpKf::ApplyYawMeas(BlueFin::GlPeShrimpKf *this, double a2, double a3)
{
  v73 = 0.0;
  v74 = 0.0;
  v40 = BlueFin::QuaternionD::conj((this + 4816));
  v41 = v6;
  *&v42[0] = v7;
  *(&v42[0] + 1) = v8;
  v61 = BlueFin::QuaternionD::operator*(this + 586, &v40);
  v62 = v9;
  v63 = v10;
  v64 = v11;
  v40 = BlueFin::QuaternionD::conj(&v61);
  v41 = v12;
  *&v42[0] = v13;
  *(&v42[0] + 1) = v14;
  BlueFin::QuaternionD::qnb2Eul(&v40, &v74, &v73, &v72);
  v16 = v73;
  v15 = v74;
  v71 = 0x300000003;
  v17 = __sincos_stret(a2);
  v18 = __sincos_stret(v16);
  v19 = __sincos_stret(v15);
  v61 = v17.__cosval * v18.__cosval;
  v62 = v17.__sinval * v18.__cosval;
  v63 = -v18.__sinval;
  v65 = v17.__cosval * (v19.__sinval * v18.__sinval) - v19.__cosval * v17.__sinval;
  v66 = v17.__sinval * (v19.__sinval * v18.__sinval) + v19.__cosval * v17.__cosval;
  v67 = v19.__sinval * v18.__cosval;
  v68 = v17.__cosval * (v19.__cosval * v18.__sinval) + v19.__sinval * v17.__sinval;
  v69 = v17.__sinval * (v19.__cosval * v18.__sinval) - v19.__sinval * v17.__cosval;
  v70 = v19.__cosval * v18.__cosval;
  v50.f64[0] = BlueFin::QuaternionD::conj((this + 4816));
  v50.f64[1] = v20;
  v51 = v21;
  v52 = v22;
  BlueFin::QuaternionD::q2Rot(&v50, &v40);
  BlueFin::Matrix::operator*(&v40, &v61, v60);
  v57 = 0x3FF0000000000000uLL;
  v58 = 0;
  v59 = 0;
  if ((BlueFin::QuaternionD::rot2Q(&v57, v60) & 1) == 0)
  {
    DeviceFaultNotify("glpe_shrimpkf.cpp", 2066, "ApplyYawMeas", "otQnb_.rot2Q(otCnb_)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_shrimpkf.cpp", 2066, "otQnb_.rot2Q(otCnb_)");
  }

  v54.f64[0] = BlueFin::QuaternionD::operator*(this + 586, v57.f64);
  v54.f64[1] = v23;
  v55 = v24;
  v56 = v25;
  BlueFin::QuaternionD::normalize(&v54);
  BlueFin::QuaternionD::q2Rot(&v54, &v50);
  v41 = 0x1500000015;
  memset(v42, 0, sizeof(v42));
  v43 = 0;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v40 = COERCE_DOUBLE(v42);
  v44 = 0x3FF0000000000000;
  BlueFin::GlPeShrimpKf::MeasUpdateINS(this, &v40, 15, (v50.f64[1] - v53) * 0.5, a3 * a3, 5.0, v26, 1);
  v75 = BlueFin::QuaternionD::conj((this + 4816));
  v76 = v27;
  v77 = v28;
  v78 = v29;
  v36[0] = BlueFin::QuaternionD::operator*(this + 586, &v75);
  v36[1] = v30;
  v36[2] = v31;
  v36[3] = v32;
  v75 = BlueFin::QuaternionD::conj(v36);
  v76 = v33;
  v77 = v34;
  v78 = v35;
  BlueFin::QuaternionD::qnb2Eul(&v75, &v39, &v38, &v37);
}

double BlueFin::GlPeShrimpKf::GetVelVeh(BlueFin::GlPeShrimpKf *this, BlueFin::Matrix *a2)
{
  if (*(this + 2) == 2)
  {
    v34 = v5;
    v35 = v4;
    v36 = v2;
    v37 = v3;
    v8 = (this + *(*this - 24));
    v9 = v8[14];
    v10 = v8[15];
    v25[0] = v8[13];
    v25[4] = v9;
    *&v25[16] = 0x100000003;
    v25[8] = v10;
    v27 = BlueFin::QuaternionD::conj((this + 4816));
    v28 = v11;
    v29 = v12;
    v30 = v13;
    v26[0] = BlueFin::QuaternionD::operator*(this + 586, &v27);
    v26[1] = v14;
    v26[2] = v15;
    v26[3] = v16;
    v27 = BlueFin::QuaternionD::conj(v26);
    v28 = v17;
    v29 = v18;
    v30 = v19;
    BlueFin::QuaternionD::rotVec(&v27, v25, a2);
    v33 = 0;
    v20 = *(this + 624);
    v27 = *(this + 623);
    v31 = v20;
    v32 = *(this + 625);
    BlueFin::QuaternionD::rotVec(this + 602, &v27, v26);
    v27 = *v26;
    v31 = v26[4];
    v33 = 0x100000003;
    v32 = v26[8];
    BlueFin::vcross(&v27, v26);
    v23[0] = v24;
    v23[1] = 0x300000000;
    memset(v24, 0, sizeof(v24));
    BlueFin::SKFVector::mult(v23, v26, (this + 5264));
    v21 = v23[0];
    *a2 = *a2 - *(v23[0] + 8);
    *(a2 + 4) = *(a2 + 4) - *(v21 + 16);
    result = *(a2 + 8) - *(v21 + 24);
    *(a2 + 8) = result;
  }

  return result;
}

uint64_t BlueFin::GlPeShrimpKf::DoInitTiltSensor(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if ((a4 - *(a1 + 4856)) * 0.001 <= 0.0)
  {
    DeviceFaultNotify("glpe_shrimpkf.cpp", 1280, "DoInitTiltSensor", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_shrimpkf.cpp", 1280, "0");
  }

  v5 = **a1;

  return v5();
}

void BlueFin::GlPeShrimpKf::DoInitDoneSensor(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = (a4 - *(a1 + 4856));
  if (v4 * 0.001 <= 0.0)
  {
    DeviceFaultNotify("glpe_shrimpkf.cpp", 1291, "DoInitDoneSensor", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_shrimpkf.cpp", 1291, "0");
  }

  (**a1)(a1, a3, a2, v4 * 0.001);

  BlueFin::GlPeShrimpKf::PropKf(a1);
}

void BlueFin::GlPeShrimpKf::PropKf(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v148 = *MEMORY[0x29EDCA608];
  BlueFin::BigMatrixDim<21,21>::BigMatrixDim(&v133, 21, 21);
  BlueFin::QuaternionD::q2Rot((v6 + 4688), v131);
  v7 = v5[1];
  v124 = *v5;
  v128 = v7;
  v8 = v5[2];
  v130 = 0x100000003;
  v129 = v8;
  v144 = 0;
  BlueFin::QuaternionD::rotVec((v6 + 4688), &v124, v143);
  BlueFin::vcross(v143, v136);
  v9 = 0;
  v10 = 0;
  v11 = v134;
  v12 = v134 + 9;
  do
  {
    v13 = (v11[v10 + 4] + 72);
    v14 = v12[v10];
    v15 = v9;
    for (i = 17; i != 20; ++i)
    {
      *v13 = -*(v136 + v15);
      v17 = -*&v131[v15];
      v13[3] = v17;
      *(v14 + 8 * i) = v17;
      v15 += 8;
      ++v13;
    }

    *(*(v11 + ((8 * v10) | 0x60)) + ((8 * v10) | 0x60)) = 0xBEE4F8B588E368F1;
    *(v11[v10 + 17] + 8 * v10 + 136) = 0xBF1A36E2EB1C432DLL;
    ++v10;
    v9 += 32;
  }

  while (v10 != 3);
  *(v11[1] + 32) = 0x3FF0000000000000;
  *(v11[2] + 40) = 0x3FF0000000000000;
  *(v11[3] + 48) = 0x3FF0000000000000;
  *(v11[7] + 64) = 0x3FF0000000000000;
  BlueFin::BigMatrixDim<21,21>::BigMatrixDim(v131, (v6 + 656));
  v18 = *(v6 + 672);
  v19 = *(v6 + 676);
  if (v18 != v19 || __PAIR64__(v19, v18) != v135)
  {
    goto LABEL_130;
  }

  if (v18 < 1)
  {
    goto LABEL_61;
  }

  v20 = v18 + 1;
  v21 = v132;
  v22 = 1;
  do
  {
    v23 = 0;
    v24 = v134;
    v25 = *(v21 + 8 * v22);
    v26 = *(*(v6 + 664) + 8 * v22) + 72;
    do
    {
      v27 = 0;
      v28 = 0.0;
      do
      {
        v28 = v28 + *(v26 + v27) * *(v24[v23 + 4] + 72 + v27);
        v27 += 8;
      }

      while (v27 != 24);
      *(v25 + 8 * (v23 + 4)) = *(v25 + 8 * (v23 + 4)) + v3 * v28;
      ++v23;
    }

    while (v23 != 3);
    ++v22;
  }

  while (v22 != v20);
  if (v18 != v135 || v18 != HIDWORD(v135))
  {
    goto LABEL_130;
  }

  v29 = 1;
  do
  {
    v30 = 0;
    v31 = v134;
    v32 = *(v21 + 8 * v29);
    v33 = *(*(v6 + 664) + 8 * v29) + 96;
    do
    {
      v34 = 0;
      v35 = 0.0;
      do
      {
        v35 = v35 + *(v33 + v34) * *(v31[v30 + 4] + 96 + v34);
        v34 += 8;
      }

      while (v34 != 24);
      *(v32 + 8 * (v30 + 4)) = *(v32 + 8 * (v30 + 4)) + v3 * v35;
      ++v30;
    }

    while (v30 != 3);
    ++v29;
  }

  while (v29 != v20);
  if (v18 != v135 || v18 != HIDWORD(v135))
  {
LABEL_130:
    DeviceFaultNotify("glpe_matrix.h", 553, "mult_sparse_add", "otA.m_NbRows == otA.m_NbCols && otA.m_NbRows == otB.m_NbRows && otA.m_NbCols == otB.m_NbCols");
    v123 = 553;
    goto LABEL_132;
  }

  v36 = 1;
  do
  {
    v37 = 0;
    v38 = v134;
    v39 = *(v21 + 8 * v36);
    v40 = *(*(v6 + 664) + 8 * v36) + 136;
    do
    {
      v41 = 0;
      v42 = 0.0;
      do
      {
        v42 = v42 + *(v40 + v41) * *(v38[v37 + 9] + 136 + v41);
        v41 += 8;
      }

      while (v41 != 24);
      *(v39 + 8 * (v37 + 9)) = *(v39 + 8 * (v37 + 9)) + v3 * v42;
      ++v37;
    }

    while (v37 != 3);
    ++v36;
  }

  while (v36 != v20);
  if (v18 != v135 || v18 != HIDWORD(v135))
  {
    goto LABEL_128;
  }

  v43 = *(v6 + 664);
  v44 = v134;
  v45 = 1;
  do
  {
    v46 = *(v43 + 8 * v45);
    v47 = *(v21 + 8 * v45);
    for (j = 96; j != 120; j += 8)
    {
      *(v47 + j) = *(v47 + j) + *(v46 + j) * v3 * *(v44[j / 8] + j);
    }

    ++v45;
  }

  while (v45 != v20);
  if (v18 != v135 || v18 != HIDWORD(v135))
  {
    goto LABEL_128;
  }

  v50 = *(v6 + 664);
  v51 = v134;
  v52 = 1;
  do
  {
    v53 = *(v50 + 8 * v52);
    v54 = *(v21 + 8 * v52);
    for (k = 136; k != 160; k += 8)
    {
      *(v54 + k) = *(v54 + k) + *(v53 + k) * v3 * *(v51[k / 8] + k);
    }

    ++v52;
  }

  while (v52 != v20);
  if (v18 != v135 || v18 != HIDWORD(v135))
  {
    goto LABEL_128;
  }

  v57 = *(v6 + 664);
  v58 = v134 + 1;
  v59 = 1;
  do
  {
    v60 = 0;
    v61 = *(v21 + 8 * v59) + 8;
    v62 = *(v57 + 8 * v59) + 32;
    do
    {
      *(v61 + v60) = *(v61 + v60) + *(v62 + v60) * v3 * *(v58[v60 / 8] + v60 + 32);
      v60 += 8;
    }

    while (v60 != 24);
    ++v59;
  }

  while (v59 != v20);
  if (v18 != v135 || v18 != HIDWORD(v135))
  {
LABEL_128:
    DeviceFaultNotify("glpe_matrix.h", 594, "mult_sparse_diag_add", "otA.m_NbRows == otA.m_NbCols && otA.m_NbRows == otB.m_NbRows && otA.m_NbCols == otB.m_NbCols");
    v123 = 594;
    goto LABEL_132;
  }

  v64 = v134[7];
  v65 = v20 - 1;
  v66 = (v21 + 8);
  v67 = (*(v6 + 664) + 8);
  do
  {
    v69 = *v67++;
    v68 = v69;
    v70 = *v66++;
    *(v70 + 56) = *(v70 + 56) + *(v68 + 64) * v3 * *(v64 + 64);
    --v65;
  }

  while (v65);
LABEL_61:
  BlueFin::BigMatrixDim<21,21>::BigMatrixDim(&v124, v131);
  v71 = v135;
  if (v135 != HIDWORD(v135) || v135 != v126 || HIDWORD(v135) != v127)
  {
LABEL_131:
    DeviceFaultNotify("glpe_matrix.h", 573, "mult_sparse_add", "otA.m_NbRows == otA.m_NbCols && otA.m_NbRows == otB.m_NbRows && otA.m_NbCols == otB.m_NbCols");
    v123 = 573;
LABEL_132:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.h", v123, "otA.m_NbRows == otA.m_NbCols && otA.m_NbRows == otB.m_NbRows && otA.m_NbCols == otB.m_NbCols");
  }

  if (v135 >= 1)
  {
    v74 = v135 + 1;
    v75 = v132;
    v76 = 1;
    do
    {
      v77 = 0;
      v78 = v134;
      v79 = v125 + 72;
      do
      {
        v80 = 0;
        v81 = 0.0;
        do
        {
          v81 = v81 + *(v78[v77 + 4] + 72 + v80) * *(*(v79 + v80) + 8 * v76);
          v80 += 8;
        }

        while (v80 != 24);
        *(*(v75 + 8 * (v77 + 4)) + 8 * v76) = *(*(v75 + 8 * (v77 + 4)) + 8 * v76) + v3 * v81;
        ++v77;
      }

      while (v77 != 3);
      ++v76;
    }

    while (v76 != v74);
    if (v71 != v126 || v71 != v127)
    {
      goto LABEL_131;
    }

    v82 = 1;
    do
    {
      v83 = 0;
      v84 = v134;
      v85 = v125 + 96;
      do
      {
        v86 = 0;
        v87 = 0.0;
        do
        {
          v87 = v87 + *(v84[v83 + 4] + 96 + v86) * *(*(v85 + v86) + 8 * v82);
          v86 += 8;
        }

        while (v86 != 24);
        *(*(v75 + 8 * (v83 + 4)) + 8 * v82) = *(*(v75 + 8 * (v83 + 4)) + 8 * v82) + v3 * v87;
        ++v83;
      }

      while (v83 != 3);
      ++v82;
    }

    while (v82 != v74);
    if (v71 != v126 || v71 != v127)
    {
      goto LABEL_131;
    }

    v88 = 1;
    do
    {
      v89 = 0;
      v90 = v134;
      v91 = v125 + 136;
      do
      {
        v92 = 0;
        v93 = 0.0;
        do
        {
          v93 = v93 + *(v90[v89 + 9] + 136 + v92) * *(*(v91 + v92) + 8 * v88);
          v92 += 8;
        }

        while (v92 != 24);
        *(*(v75 + 8 * (v89 + 9)) + 8 * v88) = *(*(v75 + 8 * (v89 + 9)) + 8 * v88) + v3 * v93;
        ++v89;
      }

      while (v89 != 3);
      ++v88;
    }

    while (v88 != v74);
    if (v71 != v126 || v71 != v127)
    {
      goto LABEL_129;
    }

    v94 = v134;
    v95 = v125;
    v96 = 1;
    do
    {
      for (m = 96; m != 120; m += 8)
      {
        *(*(v75 + m) + 8 * v96) = *(*(v75 + m) + 8 * v96) + *(v94[m / 8] + m) * v3 * *(*(v95 + m) + 8 * v96);
      }

      ++v96;
    }

    while (v96 != v74);
    if (v71 != v126 || v71 != v127)
    {
      goto LABEL_129;
    }

    v98 = v134;
    v99 = v125;
    v100 = 1;
    do
    {
      for (n = 136; n != 160; n += 8)
      {
        *(*(v75 + n) + 8 * v100) = *(*(v75 + n) + 8 * v100) + *(v98[n / 8] + n) * v3 * *(*(v99 + n) + 8 * v100);
      }

      ++v100;
    }

    while (v100 != v74);
    if (v71 != v126 || v71 != v127)
    {
      goto LABEL_129;
    }

    v102 = v125 + 32;
    v103 = v134 + 1;
    v104 = 1;
    do
    {
      for (ii = 0; ii != 24; ii += 8)
      {
        *(*(v75 + 8 + ii) + 8 * v104) = *(*(v75 + 8 + ii) + 8 * v104) + *(v103[ii / 8] + ii + 32) * v3 * *(*(v102 + ii) + 8 * v104);
      }

      ++v104;
    }

    while (v104 != v74);
    if (v71 != v126 || v71 != v127)
    {
LABEL_129:
      DeviceFaultNotify("glpe_matrix.h", 609, "mult_sparse_diag_add", "otA.m_NbRows == otA.m_NbCols && otA.m_NbRows == otB.m_NbRows && otA.m_NbCols == otB.m_NbCols");
      v123 = 609;
      goto LABEL_132;
    }

    v106 = v134[7];
    v107 = v74 - 1;
    v108 = (*(v75 + 56) + 8);
    v109 = (*(v125 + 64) + 8);
    do
    {
      v110 = *v109++;
      *v108 = *v108 + *(v106 + 64) * v3 * v110;
      ++v108;
      --v107;
    }

    while (v107);
  }

  BlueFin::BigMatrix::Clone((v6 + 656), v131);
  BlueFin::QuaternionD::q2Rot((v6 + 4688), v143);
  v136[2] = 0.0;
  v136[1] = 0.0;
  v146 = 0;
  v147 = 0;
  v111 = *(v6 + 5232);
  v112 = v111[65] * v111[65];
  v113 = v111[66] * v111[66];
  v136[0] = v111[64] * v111[64];
  v136[4] = 0.0;
  v137 = v112;
  v138 = 0;
  v140 = 0;
  v139 = v145;
  v141 = v113;
  v142 = 0x300000003;
  BlueFin::Matrix::RotateCovMatrix(v136, v143);
  v137 = v137 + 0.01;
  v141 = v141 + 0.01;
  v114 = *(v6 + 664);
  *(v114[4] + 32) = *(v114[4] + 32) + (v136[0] + 0.01) * v3 * v3;
  *(v114[5] + 40) = *(v114[5] + 40) + v137 * v3 * v3;
  *(v114[6] + 48) = *(v114[6] + 48) + v141 * v3 * v3;
  v115 = *(v6 + 5232);
  v116 = v115[113] * 0.0174532925 * (v115[113] * 0.0174532925) + 0.0000761543549;
  v117 = v115[114] * 0.0174532925 * (v115[114] * 0.0174532925) + 0.0000761543549;
  v118 = v115[115] * 0.0174532925 * (v115[115] * 0.0174532925) + 0.0000761543549;
  *(v114[9] + 72) = *(v114[9] + 72) + v116 * v3 * v3;
  *(v114[10] + 80) = *(v114[10] + 80) + v117 * v3 * v3;
  *(v114[11] + 88) = *(v114[11] + 88) + v118 * v3 * v3;
  *(v114[12] + 96) = v3 * 0.000000025 + *(v114[12] + 96);
  *(v114[13] + 104) = v3 * 0.000000025 + *(v114[13] + 104);
  *(v114[14] + 112) = v3 * 0.000000025 + *(v114[14] + 112);
  *(v114[17] + 136) = v3 * 0.00000000121846968 + *(v114[17] + 136);
  *(v114[18] + 144) = v3 * 0.00000000121846968 + *(v114[18] + 144);
  *(v114[19] + 152) = v3 * 0.00000000121846968 + *(v114[19] + 152);
  if (!*(*(v6 + 5240) + 84))
  {
    *(v114[1] + 8) = *(v114[1] + 8) + v3 * 0.199809;
    *(v114[2] + 16) = *(v114[2] + 16) + v3 * 0.199809;
    *(v114[3] + 24) = *(v114[3] + 24) + v3 * 0.799236;
    v119 = *(v6 + 5552) / *(v6 + 5576);
    if (*(v6 + 5768) / *(v6 + 5792) >= v119)
    {
      v119 = *(v6 + 5768) / *(v6 + 5792);
    }

    if (v119 > 10.0 && v119 > 1.0)
    {
      v119 = 10.0;
    }

    if (v117 >= v116)
    {
      v116 = v117;
    }

    if (v118 >= v116)
    {
      v116 = v118;
    }

    v121 = v116 * (v119 * v119) * v3 * v3;
    *(v114[15] + 120) = *(v114[15] + 120) + v121;
    *(v114[16] + 128) = *(v114[16] + 128) + v121;
  }

  *(v114[20] + 160) = *(v114[20] + 160) + v3 * 0.000001;
  *(v114[21] + 168) = *(v114[21] + 168) + v3 * 0.000025;
  v122 = *MEMORY[0x29EDCA608];
}

void BlueFin::GlPeShrimpKf::GnssUpdate(BlueFin::GlPeShrimpKf *this, const BlueFin::GlPeNavGnssState *a2)
{
  v505 = *MEMORY[0x29EDCA608];
  v5 = *(*(this + 653) + 8);
  if (v5 == 3)
  {
    if ((*(this + 48) & 1) == 0)
    {
      v6 = (this + 16);
LABEL_7:
      *v6 = 0x3FB999999999999ALL;
      v7 = 1;
      v8 = 12.5;
      v9 = 10;
      v10 = 1.5;
      goto LABEL_10;
    }

LABEL_6:
    v7 = 1;
    goto LABEL_11;
  }

  v6 = (this + 16);
  v7 = *(this + 48);
  if (v5 == 2)
  {
    if ((*(this + 48) & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (!*(this + 48))
  {
    goto LABEL_11;
  }

  v7 = 0;
  *v6 = 0x3FD999999999999ALL;
  v9 = 3;
  v10 = 2.0;
  v8 = 83.3000031;
LABEL_10:
  *(this + 3) = v10;
  *(this + 32) = v9;
  *(this + 5) = v8;
LABEL_11:
  *(this + 48) = v7;
  v11 = *(a2 + 50);
  if (v11 == *(this + 1215))
  {
    v398 = "ulIntervalMs > 0";
    DeviceFaultNotify("glpe_shrimpkf.cpp", 1331, "GnssUpdate", "ulIntervalMs > 0");
    v399 = 1331;
    goto LABEL_374;
  }

  v12 = (this + 544);
  if ((*(a2 + 240) & 1) == 0)
  {
    *(this + 163) = 0;
    *v12 = 0u;
    *(this + 35) = 0u;
    *(this + 38) = 0u;
    *(this + 39) = 0u;
    *(this + 634) = 0u;
    goto LABEL_28;
  }

  v13 = *(this + 163);
  if (v13)
  {
    v14 = v11 - v13;
    if (!v14 || v14 >= 0x5DC)
    {
      *(this + 163) = 0;
      *v12 = 0u;
      *(this + 35) = 0u;
      *(this + 38) = 0u;
      *(this + 39) = 0u;
      *(this + 634) = 0u;
    }
  }

  v15 = sqrt(*(a2 + 14) * *(a2 + 14) + *(a2 + 13) * *(a2 + 13));
  v16 = *(a2 + 32);
  v17 = v15 - *(this + 68);
  *(this + 80) = *(this + 80) + (v15 - *(this + 80)) * 0.899999976;
  v18 = *(this + 648);
  if (v18 <= 0)
  {
    *(this + 68) = v15;
    *(this + 72) = v16;
    v23 = v18 + 1;
    *(this + 76) = v17;
LABEL_26:
    *(this + 648) = v23;
    goto LABEL_27;
  }

  v19 = v18 + 1;
  v20 = v18 + 0xFFFFFFFFLL;
  v21 = (this + 8 * v18 + 608);
  do
  {
    v22 = 8 * v20;
    *(v21 - 8) = *(v12 + v22);
    *(v21 - 4) = *(this + v22 + 576);
    *v21-- = *(this + v22 + 608);
    --v19;
    --v20;
  }

  while (v19 > 1);
  *(this + 68) = v15;
  *(this + 72) = v16;
  *(this + 76) = v17;
  *(this + 648) = v18 + 1;
  if ((v18 + 1) == 4)
  {
    *(this + 649) = 1;
LABEL_25:
    v23 = 3;
    goto LABEL_26;
  }

  if ((v18 + 1) >= 4)
  {
    goto LABEL_25;
  }

LABEL_27:
  *(this + 163) = v11;
LABEL_28:
  v24 = (this + 4688);
  *&v498[0] = BlueFin::QuaternionD::conj((this + 4720));
  *(&v498[0] + 1) = v25;
  *&v498[1] = v26;
  *(&v498[1] + 1) = v27;
  *(this + 598) = BlueFin::QuaternionD::operator*(this + 586, v498);
  *(this + 599) = v28;
  *(this + 600) = v29;
  *(this + 601) = v30;
  v31 = *(this + 294);
  v409[0] = *(this + 293);
  v409[1] = v31;
  v32 = *(this + 2);
  if (v32 == 2)
  {
    *(this + 2656) = 0;
    if (*(*(this + 654) + 162) < **(this + 654) || *(this + *(*this - 24) + 240) == 1 && *(this + 629) >= 6.0822)
    {
      v44 = (this + 4688);
      v45 = 0;
    }

    else
    {
      v44 = (this + 4688);
      (*(*this + 24))(this, a2);
      v45 = 1;
      *(this + 5312) = 1;
    }

    *(this + 5312) = v45 & *(a2 + 240);
    v46 = *(this + 657);
    v47 = *v46;
    if (*v46 != 1)
    {
      *(this + 2426) = 1;
    }

    v48 = *this;
    v49 = *this;
    v50 = *(*this - 24);
    if ((*(this + 5818) & 1) != 0 || (v51 = (this + v50), v52 = *(this + v50 + 200), v53 = *(this + 655), (v52 - *(v53 + 100)) * 0.001 <= 40.0) || *(v53 + 84) == 1 || !BlueFin::GlPeShrimpKf::IsNotTurning(this, 3.0) || (*(*(this + 654) + 162) < **(this + 654) || *(v51 + 240) == 1 && *(this + 629) >= 6.0822) && sqrt(v51[14] * v51[14] + v51[13] * v51[13]) >= 1.5)
    {
LABEL_98:
      v129 = *(a2 + 51);
      v24 = v44;
      if (*(this + 5818) == 1 && v129)
      {
        v130 = *(a2 + 20);
        v131 = *(a2 + 21);
        BlueFin::lla2ned(a2 + 1, (this + *(*this - 24) + 8), 0, v498);
        v132 = v498[0];
        v2 = *&v498[1];
        *(&v498[0] + 1) = 0x1500000015;
        *&v498[0] = &v498[1];
        memset(&v498[2], 0, 160);
        *&v498[1] = 0;
        *(&v498[1] + 1) = 0x3FF0000000000000;
        *&v498[11] = *(this + *(*this - 24) + 104);
        v133 = v130 * v130;
        BlueFin::GlPeShrimpKf::MeasUpdateINS(this, v498, 0, *&v132, v133, 5.0, v134, 0);
        v135 = *&v498[0];
        bzero((*&v498[0] + 8), 8 * SDWORD2(v498[0]));
        *(v135 + 16) = 0x3FF0000000000000;
        *(v135 + 160) = *(this + *(*this - 24) + 112);
        BlueFin::GlPeShrimpKf::MeasUpdateINS(this, v498, 1, *(&v132 + 1), v133, 5.0, v136, 0);
        v137 = *&v498[0];
        bzero((*&v498[0] + 8), 8 * SDWORD2(v498[0]));
        *(v137 + 24) = 0x3FF0000000000000;
        *(v137 + 160) = *(this + *(*this - 24) + 120);
        BlueFin::GlPeShrimpKf::MeasUpdateINS(this, v498, 2, v2, v131 * v131, 5.0, v138, 0);
        *(this + 5313) = 1;
        v129 = *(a2 + 51);
      }

      if (v129 == 3)
      {
        BlueFin::GlPeShrimpKf::ApplyYawMeas(this, *(a2 + 44), *(a2 + 46));
      }

      (*(*this + 32))(this);
      if (*(*(this + 654) + 162) >= **(this + 654) && (*(this + *(*this - 24) + 240) != 1 || *(this + 629) < 6.0822))
      {
        (*(*this + 40))(this);
        v140 = *(this + 654);
        v141 = v140[80] * 0.0174532925;
        if (v141 >= 2.22044605e-16)
        {
          v142 = v140[92] * 0.0174532925;
          if (v142 >= 2.22044605e-16)
          {
            v143 = v140[104] * 0.0174532925;
            if (v143 >= 2.22044605e-16)
            {
              v144 = v140[79] * 0.0174532925 - *(this + 579);
              *(&v498[0] + 1) = 0x1500000015;
              *&v498[0] = &v498[1];
              memset(&v498[9] + 8, 0, 40);
              memset(&v498[1], 0, 136);
              *(&v498[9] + 1) = 0x3FF0000000000000;
              BlueFin::GlPeShrimpKf::MeasUpdateINS(this, v498, 8, v144, v141 * v141, 5.0, v139, 0);
              v145 = *(*(this + 654) + 728) * 0.0174532925 - *(this + 580);
              v146 = *&v498[0];
              bzero((*&v498[0] + 8), 8 * SDWORD2(v498[0]));
              *(v146 + 144) = 0x3FF0000000000000;
              BlueFin::GlPeShrimpKf::MeasUpdateINS(this, v498, 9, v145, v142 * v142, 5.0, v147, 0);
              v2 = *(*(this + 654) + 824) * 0.0174532925 - *(this + 581);
              v148 = *&v498[0];
              bzero((*&v498[0] + 8), 8 * SDWORD2(v498[0]));
              *(v148 + 152) = 0x3FF0000000000000;
              BlueFin::GlPeShrimpKf::MeasUpdateINS(this, v498, 10, v2, v143 * v143, 5.0, v149, 0);
            }
          }
        }
      }

      *&v498[0] = 0;
      v422[0] = 0;
      ExtAlt = BlueFin::GlPeAltMgr::GetExtAlt(*(this + 656), (this + *(*this - 24) + 8), v498, v422);
      switch(ExtAlt)
      {
        case 4:
          v161 = *(this + 653);
          v162 = *(v161 + 20) == 1 && (*(v161 + 16) & 0xFFFFFFFE) == 2;
          v199 = *(this + 655);
          v200 = *(v199 + 8);
          v201 = *this;
          if (v200)
          {
            v202 = *this;
            v203 = (*(this + *(v201 - 24) + 200) - v200) >> 5 < 0x271;
          }

          else
          {
            v203 = 0;
          }

          v204 = *this;
          if (BlueFin::GlSetBase::Cnt((this + *(v201 - 24) + 264)) >= 0xB && !v203 && (*(v199 + 1) & 1) == 0)
          {
            v205 = *(v199 + 2) < 1 ? 1 : *(v199 + 45);
            if ((v162 & v205) == 1)
            {
              v154 = *v498;
              v155 = v422[0];
              v156 = 7.0;
              goto LABEL_115;
            }
          }

          break;
        case 2:
          v154 = *v498;
          v155 = v422[0];
          v156 = 3.0;
          goto LABEL_115;
        case 1:
          v154 = *v498;
          v155 = v422[0];
          v156 = 5.0;
LABEL_115:
          BlueFin::GlPeShrimpKf::ApplyAltMeas(this, v154, *&v155, v156, v151, v152, v153);
          break;
      }

      if (*(this + 5312) & 1) != 0 || (*(this + 5314))
      {
        v158 = *(a2 + 13);
        v157 = *(a2 + 14);
        *(this + 665) = sqrt(v157 * v157 + v158 * v158);
        *(this + 1256) = *(a2 + 50);
        v159 = *(this + 2);
        if (v159 == 2 && !*(this + 5816))
        {
          goto LABEL_130;
        }

        if (sqrt((v157 - *(this + 610)) * (v157 - *(this + 610)) + (v158 - *(this + 609)) * (v158 - *(this + 609))) > *(this + 3))
        {
          if (*(this + 5328) || *(this + 5348) || *(this + 5349))
          {
            v160 = 3;
          }

          else
          {
            v160 = *(this + 5816) - 1;
          }

          *(this + 5816) = v160;
        }
      }

      else
      {
        v159 = *(this + 2);
      }

      if (v159 != 2)
      {
LABEL_135:
        *&v429 = 0;
        BlueFin::GlPeShrimpKf::GetVelVeh(this, v422);
        v168 = *(this + 5602);
        *(this + *(this + 5601) + 701) = -*v424 / sqrt(v2);
        v169 = *(this + 5601);
        if (v169 == 19)
        {
          v170 = 0;
        }

        else
        {
          v170 = v169 + 1;
        }

        *(this + 5601) = v170;
        if (v168 == 20)
        {
          *(this + 5600) = v170;
        }

        else
        {
          *(this + 5602) = v168 + 1;
        }

        v171 = *(this + 5386);
        *(this + *(this + 5385) + 674) = -*&v425 / sqrt(v444[4]);
        v172 = *(this + 5385);
        if (v172 == 19)
        {
          v173 = 0;
        }

        else
        {
          v173 = v172 + 1;
        }

        *(this + 5385) = v173;
        if (v171 == 20)
        {
          *(this + 5384) = v173;
        }

        else
        {
          *(this + 5386) = v171 + 1;
        }

        v174 = this + *(*this - 24);
        v498[0] = *(v174 + 8);
        v498[1] = *(v174 + 3);
        v498[3] = *(v174 + 104);
        *&v498[4] = *(v174 + 15);
        DWORD2(v498[4]) = *(v174 + 44);
        v175 = *(v174 + 19);
        *&v498[5] = *(v174 + 11);
        *(&v498[5] + 1) = v175;
        v176 = *(this + 289);
        v498[6] = *(this + 288);
        v498[7] = v176;
        v177 = *(this + 301);
        v498[8] = *(this + 290);
        v498[9] = v177;
        v178 = *v44;
        v179 = *(v44 + 1);
        v498[10] = *(this + 302);
        v498[11] = v178;
        v498[2] = 0uLL;
        v498[12] = v179;
        v499 = v501;
        v500 = 0x1500000000;
        memset(v501, 0, sizeof(v501));
        memset(v502, 0, sizeof(v502));
        v504 = 1;
        if (*(this + 457) == 1)
        {
          v503 = 1;
          BlueFin::lla2ned(v498, this + 7, 0, &v438);
          *(&v498[1] + 8) = v438;
          *(&v498[2] + 1) = v439;
          v498[3] = vsubq_f64(v498[3], *(this + 104));
          *&v498[4] = *&v498[4] - *(this + 15);
          v180 = vsubq_f64(v498[6], *(this + 152));
          v498[5] = vsubq_f64(v498[5], *(this + 136));
          v498[6] = v180;
          v181 = vsubq_f64(v498[7], *(this + 168));
          v182 = vsubq_f64(v498[8], *(this + 184));
          memset(v498, 0, 24);
          v498[7] = v181;
          v498[8] = v182;
          *&v438 = BlueFin::QuaternionD::conj((this + 200));
          *(&v438 + 1) = v183;
          *&v439 = v184;
          *(&v439 + 1) = v185;
          *&v498[9] = BlueFin::QuaternionD::operator*(&v498[9], &v438);
          *(&v498[9] + 1) = v186;
          *&v498[10] = v187;
          *(&v498[10] + 1) = v188;
          *&v438 = BlueFin::QuaternionD::conj((this + 232));
          *(&v438 + 1) = v189;
          *&v439 = v190;
          *(&v439 + 1) = v191;
          v192 = BlueFin::QuaternionD::operator*(&v498[11], &v438);
          *&v498[11] = v192;
          if (v503)
          {
            *(this + 5048) = v498[3];
            *(this + 633) = *&v498[4];
            v196 = v498[5];
            *(this + 319) = v498[6];
            v197 = *(&v498[8] + 1);
            *(this + 640) = *&v498[7];
            *(this + 634) = v192;
            *(this + 635) = v193;
            *(this + 636) = v194;
            *(this + 637) = v195;
            v198 = v498[10];
            *(this + 5128) = v498[9];
            *(this + 5144) = v198;
            *(this + 5160) = *(&v498[1] + 8);
            *(this + 647) = *(&v498[2] + 1);
            *(this + 324) = *(&v498[7] + 8);
            *(this + 650) = v197;
            *(this + 5208) = v196;
          }
        }

        goto LABEL_197;
      }

LABEL_130:
      v163 = 0;
      v445 = 0x100000003;
      do
      {
        v164 = &v498[v163];
        v498[v163 + 1] = 0uLL;
        *v164 = &v498[v163 + 1];
        *(v164 + 1) = 0x1500000000;
        v164[2] = 0uLL;
        v164[3] = 0uLL;
        v164[4] = 0uLL;
        v164[5] = 0uLL;
        v164[6] = 0uLL;
        v164[7] = 0uLL;
        v164[8] = 0uLL;
        v164[9] = 0uLL;
        v163 += 12;
        v164[10] = 0uLL;
        v164[11] = 0uLL;
      }

      while (v163 != 36);
      BlueFin::GlPeShrimpKf::GetVehConstraintHVec(this, v498);
      v165 = 0;
      v422[1] = 0x1500000015;
      v423 = 0u;
      memset(v424, 0, sizeof(v424));
      v425 = 0u;
      v426 = 0u;
      v427 = 0u;
      v428 = 0u;
      v429 = 0u;
      v430 = 0u;
      v431 = 0u;
      v422[0] = &v423;
      v166 = &v442;
      v432 = 0u;
      do
      {
        BlueFin::GlPeShrimpKf::KalmanGain(this, *&v498[v165], v422[0]);
        v166->f64[0] = v167;
        v166 += 2;
        v165 += 12;
      }

      while (v165 != 36);
      v2 = v444[0];
      goto LABEL_135;
    }

    if (v47 == 1 && *(this + 4852) == 1)
    {
      *(this + 2426) = 256;
    }

    if (*(this + 4853) == 1)
    {
      *v422 = *(v46 + 3);
      *&v423 = *(v46 + 8);
      BlueFin::lla2ned(v422, (this + *(v49 - 24) + 8), 0, v498);
      if (sqrt(vaddvq_f64(vmulq_f64(*(v498 + 8), *(v498 + 8)))) >= 1000.0)
      {
        goto LABEL_98;
      }

      v48 = *this;
    }

    BlueFin::lla2ned((this + *(v48 - 24) + 32), (this + *(v48 - 24) + 8), 0, v498);
    *&v424[0] = *(&v498[0] + 1);
    v422[0] = *&v498[0];
    *&v429 = 0x100000003;
    *&v425 = *&v498[1];
    *&v498[0] = BlueFin::QuaternionD::conj((this + 232));
    *(&v498[0] + 1) = v120;
    *&v498[1] = v121;
    *(&v498[1] + 1) = v122;
    *&v438 = BlueFin::QuaternionD::operator*(this + 25, v498);
    *(&v438 + 1) = v123;
    *&v439 = v124;
    *(&v439 + 1) = v125;
    v445 = 0;
    BlueFin::QuaternionD::rotVec(&v438, v422, &v442);
    v2 = v444[0];
    v126 = *(this + *(*this - 24) + 180);
    *&v498[0] = &v498[1];
    *(&v498[0] + 1) = 0x1500000015;
    memset(&v498[2] + 8, 0, 152);
    *&v498[1] = 0;
    v127 = __sincos_stret(v126);
    *(&v498[1] + 1) = -v127.__sinval;
    *&v498[2] = v127.__cosval;
    BlueFin::GlPeShrimpKf::MeasUpdateINS(this, v498, 18, v2, 0.01, 3.0, v128, 0);
    goto LABEL_98;
  }

  if (v32 != 1)
  {
    if (!v32)
    {
      BlueFin::GlPeShrimpKf::DoInitNoneGnss(this, a2);
      goto LABEL_197;
    }

    v398 = "false";
    DeviceFaultNotify("glpe_shrimpkf.cpp", 1372, "GnssUpdate", "false");
    v399 = 1372;
LABEL_374:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_shrimpkf.cpp", v399, v398);
  }

  BlueFin::GlPeShrimpKf::DoInitNoneGnss(this, a2);
  v33 = *(this + 1212);
  if (!v33)
  {
    if (*(*(this + 653) + 8) == 3)
    {
      goto LABEL_55;
    }

    if (!BlueFin::GlPeShrimpKf::IsNotTurning(this, 2.0))
    {
      goto LABEL_55;
    }

    v34 = this + *(*this - 24);
    if ((*(v34 + 50) - *(this + 1217)) >> 4 > 0x752)
    {
      goto LABEL_55;
    }

    *&v498[8] = 0;
    v35 = *(this + 616);
    *&v498[0] = *(this + 615);
    *&v498[2] = v35;
    *&v498[4] = *(this + 617);
    BlueFin::QuaternionD::rotVec(this + 602, v498, v422);
    *(&v443 + 1) = *(this + 618);
    *&v442.f64[0] = v422[0];
    v442.f64[1] = *v424;
    *&v443 = 0;
    if (sqrt(v442.f64[1] * v442.f64[1] + v442.f64[0] * v442.f64[0]) <= 0.8)
    {
      goto LABEL_55;
    }

    v36 = sqrt(*(v34 + 14) * *(v34 + 14) + *(v34 + 13) * *(v34 + 13)) - *(this + 629);
    v37 = -v36;
    if (v36 >= 0.0)
    {
      v37 = v36;
    }

    if (v37 <= 1.0)
    {
LABEL_55:
      v33 = 0;
    }

    else
    {
      *v498 = v36;
      memset(v498 + 8, 0, 24);
      v422[0] = 0x3FF0000000000000;
      v422[1] = 0;
      v423 = 0uLL;
      BlueFin::QuaternionD::rotateV1toV2(v422, v442.f64, v498);
      *(this + 602) = BlueFin::QuaternionD::operator*(v422, this + 602);
      *(this + 603) = v38;
      *(this + 604) = v39;
      *(this + 605) = v40;
      *&v438 = BlueFin::QuaternionD::conj((this + 4816));
      *(&v438 + 1) = v41;
      *&v439 = v42;
      *(&v439 + 1) = v43;
      BlueFin::QuaternionD::qnb2Eul(&v438, v434.f64, v447.f64, &v471);
      v33 = 1;
      *(this + 1212) = 1;
    }
  }

  if (*(a2 + 20) < 15.0 && *(a2 + 32) < 1.0 && *(a2 + 51))
  {
    v54 = *(a2 + 13);
    v55 = *(a2 + 14);
    v56 = *(a2 + 15);
    v57 = sqrt(v54 * v54 + v55 * v55);
    v493 = 0;
    v492 = 0;
    v58 = *(this + 609);
    v59 = *(this + 610);
    v490 = v54 - v58;
    v491 = v55 - v59;
    v60 = sqrt(v491 * v491 + v490 * v490);
    v61 = *this;
    v62 = (this + *(*this - 24));
    v63 = v62[14];
    v406 = v62[15];
    v486 = v62[13] - v58;
    v487 = v63 - v59;
    v489 = 0;
    v488 = 0;
    v64 = sqrt(v487 * v487 + v486 * v486);
    v65 = vabdd_f64(v60, v64);
    if (v65 > *(this + 612))
    {
      *(this + 612) = v65;
    }

    v407 = v65;
    v66 = atan2(v55, v54);
    v67 = *(this + 3);
    if (v57 > v67 && BlueFin::GlPeShrimpKf::IsNotTurning(this, 2.0) && *(a2 + 46) < 0.174532925)
    {
        ;
      }

        ;
      }

      v69 = fabs(i) >= 0.174532925;
    }

    else
    {
      v69 = 1;
    }

    *(this + 614) = v66;
    if (v33 == 2)
    {
      v70 = (*(this + *(v61 - 24) + 200) - *(this + 1256)) > 0x927BF || v69;
      if (v70)
      {
        if (v407 <= 5.0)
        {
          goto LABEL_164;
        }

LABEL_78:
        *(this + 2) = 0;
        goto LABEL_197;
      }

      v498[1] = 0uLL;
      *v498 = v54;
      *(v498 + 1) = v55;
      v423 = 0uLL;
      v422[0] = 0x3FF0000000000000;
      v422[1] = 0;
      v442 = 0x3FF0000000000000uLL;
      v443 = 0uLL;
      BlueFin::QuaternionD::rotateV1toV2(&v442, v498, v422);
      v471 = 0.0;
      BlueFin::QuaternionD::qnb2Eul(&v442, v434.f64, v447.f64, &v471);
      v71 = v471;
      *(this + *(*this - 24) + 176) = v71;
      *&v438 = BlueFin::QuaternionD::conj((this + 4816));
      *(&v438 + 1) = v72;
      *&v439 = v73;
      *(&v439 + 1) = v74;
      BlueFin::QuaternionD::qnb2Eul(&v438, v434.f64, v447.f64, &v471);
      *&v438 = BlueFin::QuaternionD::conj(&v442);
      *(&v438 + 1) = v75;
      *&v439 = v76;
      *(&v439 + 1) = v77;
      *(this + 586) = BlueFin::QuaternionD::operator*(&v438, this + 602);
      *(this + 587) = v78;
      *(this + 588) = v79;
      *(this + 589) = v80;
      *&v438 = BlueFin::QuaternionD::conj((this + 4688));
      *(&v438 + 1) = v81;
      *&v439 = v82;
      *(&v439 + 1) = v83;
      BlueFin::QuaternionD::qnb2Eul(&v438, v434.f64, v447.f64, &v471);
      v84 = *this;
      v85 = this + *(*this - 24);
      *(v85 + 104) = *(a2 + 104);
      *(v85 + 15) = *(a2 + 15);
      *(this + 2) = 2;
    }

    else
    {
      if (v407 > 5.0)
      {
        goto LABEL_78;
      }

      if (v33 != 1)
      {
        goto LABEL_164;
      }

      v86 = v64 <= v67;
      if (v60 <= v67)
      {
        v86 = 1;
      }

      if (v86 || v69)
      {
        goto LABEL_164;
      }

      v443 = 0uLL;
      v442.f64[0] = v54;
      v442.f64[1] = v55;
      v439 = 0uLL;
      v438 = 0x3FF0000000000000uLL;
      v434 = 0x3FF0000000000000uLL;
      v435 = 0uLL;
      BlueFin::QuaternionD::rotateV1toV2(&v434, v442.f64, &v438);
      *&v454 = 0;
      v453[0] = 0.0;
      v452[0] = 0.0;
      BlueFin::QuaternionD::qnb2Eul(&v434, &v454, v453, v452);
      v87 = v452[0];
      *(this + *(*this - 24) + 176) = v87;
      v447 = 0x3FF0000000000000uLL;
      v449 = 0;
      v448 = 0;
      BlueFin::QuaternionD::rotateV1toV2(&v447, &v486, &v490);
      v471 = BlueFin::QuaternionD::operator*(v447.f64, this + 586);
      v472 = v88;
      v473 = v89;
      v474 = v90;
      v470[0] = BlueFin::QuaternionD::operator*(v434.f64, &v471);
      v470[1] = v91;
      v470[2] = v92;
      v470[3] = v93;
      v463 = BlueFin::QuaternionD::conj(v470);
      v464 = v94;
      v465 = v95;
      v466 = v96;
      *&v498[8] = 0;
      *&v498[0] = 0x3FF0000000000000;
      *&v498[2] = 0;
      *&v498[4] = 0;
      BlueFin::QuaternionD::rotVec(&v463, v498, v422);
      v97 = v422[0];
      v98 = *v424;
      v99 = *&v425;
      v463 = BlueFin::QuaternionD::conj((this + 4816));
      v464 = v100;
      v465 = v101;
      v466 = v102;
      *&v498[8] = 0;
      *&v498[0] = 0x3FF0000000000000;
      *&v498[2] = 0;
      *&v498[4] = 0;
      BlueFin::QuaternionD::rotVec(&v463, v498, v422);
      v103 = v98 * *v424 + *&v97 * *v422 + v99 * *&v425;
      if (fabs(v103) <= 0.7)
      {
        *(this + 1212) = 0;
        goto LABEL_164;
      }

      if (v103 < 0.0)
      {
        v447 = 0uLL;
        v448 = 0;
        v449 = 0x3FF0000000000000;
        *(this + 602) = BlueFin::QuaternionD::operator*(v447.f64, this + 602);
        *(this + 603) = v104;
        *(this + 604) = v105;
        *(this + 605) = v106;
      }

      *(this + 1212) = 2;
      *&v498[0] = BlueFin::QuaternionD::conj((this + 4816));
      *(&v498[0] + 1) = v107;
      *&v498[1] = v108;
      *(&v498[1] + 1) = v109;
      BlueFin::QuaternionD::qnb2Eul(v498, &v454, v453, v452);
      *&v498[0] = BlueFin::QuaternionD::conj(&v434);
      *(&v498[0] + 1) = v110;
      *&v498[1] = v111;
      *(&v498[1] + 1) = v112;
      *(this + 586) = BlueFin::QuaternionD::operator*(v498, this + 602);
      *(this + 587) = v113;
      *(this + 588) = v114;
      *(this + 589) = v115;
      *&v498[0] = BlueFin::QuaternionD::conj((this + 4688));
      *(&v498[0] + 1) = v116;
      *&v498[1] = v117;
      *(&v498[1] + 1) = v118;
      BlueFin::QuaternionD::qnb2Eul(v498, &v454, v453, v452);
      v84 = *this;
      v119 = this + *(*this - 24);
      *(v119 + 104) = *(a2 + 104);
      *(v119 + 15) = *(a2 + 15);
      *(this + 2) = 2;
    }

    *(this + *(v84 - 24) + 204) = 1;
    *(this + *(v84 - 24) + 241) = 1;
    *(this + *(v84 - 24) + 240) = 1;
    *(this + 609) = v54;
    *(this + 610) = v55;
    *(this + 611) = v56;
    *(this + 1254) = *(a2 + 50);
    *(this + *(v84 - 24) + 196) = 0;
LABEL_164:
    if (*(this + 2) == 1 && *(this + 612) < 2.0)
    {
      v206 = *(this + 3);
      v207 = v60 <= v206;
      if (v64 <= v206)
      {
        v207 = 1;
      }

      if (!v69 && !v207)
      {
        v404 = v60;
        v405 = v56;
        v403 = v60 - v64;
        v483 = 0x3FF0000000000000uLL;
        v485 = 0;
        v484 = 0;
        BlueFin::QuaternionD::rotateV1toV2(&v483, &v486, &v490);
        *(this + 586) = BlueFin::QuaternionD::operator*(v483.f64, this + 586);
        *(this + 587) = v208;
        *(this + 588) = v209;
        *(this + 589) = v210;
        v482[3] = 0.0;
        v482[2] = 0.0;
        v482[0] = v54;
        v482[1] = v55;
        v481[0] = 1.0;
        memset(&v481[1], 0, 24);
        v478 = 0x3FF0000000000000uLL;
        v480 = 0;
        v479 = 0;
        BlueFin::QuaternionD::rotateV1toV2(&v478, v482, v481);
        *(this + 602) = BlueFin::QuaternionD::operator*(v478.f64, this + 586);
        *(this + 603) = v211;
        *(this + 604) = v212;
        *(this + 605) = v213;
        v471 = v486;
        v475 = v487;
        v214 = *(this + 611);
        v477 = 0x100000003;
        v476 = v406 - v214;
        v470[16] = 0.0;
        BlueFin::QuaternionD::rotVec(v483.f64, &v471, v470);
        v215.f64[0] = v470[0];
        v216 = v214 + v470[8];
        v217 = this + *(*this - 24);
        v215.f64[1] = v470[4];
        *(v217 + 104) = vaddq_f64(*(this + 4872), v215);
        *(v217 + 15) = v216;
        v469 = 0.0;
        v468 = 0.0;
        v467 = 0.0;
        *&v498[0] = BlueFin::QuaternionD::conj((this + 4688));
        *(&v498[0] + 1) = v218;
        *&v498[1] = v219;
        *(&v498[1] + 1) = v220;
        BlueFin::QuaternionD::qnb2Eul(v498, &v469, &v468, &v467);
        BlueFin::QuaternionD::q2Rot(this + 293, &v463);
        v462 = 0x300000003;
        v454 = xmmword_298A436D0;
        v221 = __sincos_stret(v468);
        v455 = -v221.__sinval;
        v456 = 0;
        v222 = __sincos_stret(v469);
        cosval = v222.__cosval;
        v458 = v221.__cosval * v222.__sinval;
        v459 = 0;
        sinval = v221.__sinval;
        v461 = v221.__cosval * v222.__cosval;
        v453[16] = 0.0;
        BlueFin::Matrix::mult(v453, &v463, &v454);
        v223 = &v498[1] + 8;
        v498[1] = xmmword_298A44780;
        *&v498[0] = &v498[2];
        *(&v498[0] + 1) = v502;
        *&v502[0] = 0;
        for (j = 8; j != 56; j += 8)
        {
          *(*(&v498[0] + 1) + j) = v223;
          v223 += 48;
        }

        BlueFin::BigMatrix::Clone(v498, 6, 6);
        v225 = *(&v498[0] + 1);
        v226 = *(*(&v498[0] + 1) + 8);
        v226[1] = v453[0];
        v226[2] = v453[1];
        v226[3] = v453[2];
        v227 = v225[2];
        v227[1] = v453[4];
        v227[2] = v453[5];
        v227[3] = v453[6];
        v228 = v225[3];
        v228[1] = v453[8];
        v228[2] = v453[9];
        v228[3] = v453[10];
        *(v225[4] + 32) = 0x3FF0000000000000;
        *(v225[5] + 40) = 0x3FF0000000000000;
        *(v225[6] + 48) = 0x3FF0000000000000;
        v229 = *(this + 654);
        v230 = v229[29];
        v231 = v229[30];
        v232 = v229[41];
        v233 = v229[42];
        v234 = v229[53];
        v235 = v229[54];
        *&v452[16] = 0x100000003;
        v452[0] = 0.0;
        v452[4] = 0.0;
        v452[8] = -9.81;
        v401 = v230;
        *v451 = v230;
        v402 = v232;
        *&v451[4] = v232;
        v451[16] = 0x100000003;
        v400 = v234;
        *&v451[8] = v234;
        BlueFin::Matrix::mult(v450, 0, &v463, v452);
        BlueFin::Matrix::operator-(v451, v450, v422);
        v236 = v422[0];
        v237 = *v424;
        v238 = *&v425;
        BlueFin::BigMatrixDim<4,4>::BigMatrixDim(&v447, 4, 4);
        v239 = v447.f64[1];
        *(*(*&v447.f64[1] + 8) + 8) = v231 * v231 + *&v236 * *&v236;
        *(*(*&v239 + 16) + 16) = v233 * v233 + v237 * v237;
        *(*(*&v239 + 24) + 24) = v235 * v235 + v238 * v238;
        *(*(*&v239 + 32) + 32) = (*(a2 + 46) * *(a2 + 46));
        v240 = &v443 + 8;
        v443 = xmmword_298A44790;
        *&v442.f64[0] = v444;
        *&v442.f64[1] = &v446;
        v446 = 0;
        for (k = 8; k != 56; k += 8)
        {
          *(*&v442.f64[1] + k) = v240;
          v240 += 32;
        }

        BlueFin::BigMatrix::Clone(&v442, 6, 4);
        v242.f64[0] = v402;
        v243 = v400;
        v244 = sqrt(v242.f64[0] * v242.f64[0] + v243 * v243);
        v245 = v243 * v243 + v401 * v401 + v242.f64[0] * v242.f64[0];
        v246 = v442.f64[1];
        v247 = *(*&v442.f64[1] + 8);
        *(v247 + 16) = v400 / (v244 * v244);
        *(v247 + 24) = -v402 / (v244 * v244);
        v248 = *(*&v246 + 16);
        v248->f64[1] = v244 / v245;
        v242.f64[1] = v400;
        v248[1] = vdivq_f64(vmulq_n_f64(v242, -v401), vdupq_lane_s64(COERCE__INT64(v245 * v244), 0));
        *(*(*&v246 + 24) + 32) = 0x3FF0000000000000;
        *(*(*&v246 + 32) + 8) = 0x3FF0000000000000;
        *(*(*&v246 + 40) + 16) = 0x3FF0000000000000;
        *(*(*&v246 + 48) + 24) = 0x3FF0000000000000;
        v249 = &v439 + 8;
        v439 = xmmword_298A44790;
        *&v438 = &v440;
        *(&v438 + 1) = &v441;
        v441 = 0;
        for (m = 8; m != 56; m += 8)
        {
          *(*(&v438 + 1) + m) = v249;
          v249 += 32;
        }

        BlueFin::BigMatrix::mult(&v438, v498, &v442);
        v251 = &v435 + 8;
        v435 = xmmword_298A447A0;
        *&v434.f64[0] = &v436;
        *&v434.f64[1] = &v437;
        v437 = 0;
        for (n = 8; n != 40; n += 8)
        {
          *(*&v434.f64[1] + n) = v251;
          v251 += 48;
        }

        BlueFin::BigMatrix::mult(&v434, &v447, 1, &v438);
        v253 = &v423 + 8;
        v423 = xmmword_298A44780;
        v422[0] = v424;
        v422[1] = &v433;
        v433 = 0;
        for (ii = 8; ii != 56; ii += 8)
        {
          *(v422[1] + ii) = v253;
          v253 += 48;
        }

        BlueFin::BigMatrix::mult(v422, &v438, &v434);
        v415 = BlueFin::QuaternionD::conj((this + 4816));
        v416 = v255;
        v417 = v256;
        v418 = v257;
        BlueFin::QuaternionD::qnb2Eul(&v415, &v469, &v468, &v467);
        *(this + 1212) = 2;
        v415 = v407 * 0.5 * (v407 * 0.5);
        v416 = 0;
        v419 = 0;
        v420 = v415;
        v421 = 0x200000002;
        BlueFin::QuaternionD::rotVec(v483.f64, &v471, v411);
        v414 = 0x200000002;
        v412 = 0;
        v413 = 0;
        BlueFin::Matrix::RotateCovMatrix(&v415, v411);
        v258 = *(this + 83);
        v259 = v258[4];
        v260 = *(v259 + 32);
        if (v415 >= v260)
        {
          v260 = v415;
        }

        *(v259 + 32) = v260;
        v261 = v258[5];
        v262 = *(v261 + 40);
        HIDWORD(v263) = HIDWORD(v420);
        if (v420 >= v262)
        {
          v262 = v420;
        }

        *(v261 + 40) = v262;
        LODWORD(v262) = *(this + *(*this - 24) + 200);
        LODWORD(v263) = *(this + 1217);
        v264 = (*&v262 - v263) * 0.001;
        v265 = v258[9];
        v266 = *(v265 + 72);
        v267 = v422[1];
        if (v266 >= v264 * *(*(v422[1] + 1) + 8))
        {
          v266 = v264 * *(*(v422[1] + 1) + 8);
        }

        *(v265 + 72) = v266;
        v268 = v258[10];
        v269 = *(v268 + 80);
        v270 = *(v267 + 2);
        if (v269 >= v264 * *(v270 + 16))
        {
          v269 = v264 * *(v270 + 16);
        }

        *(v268 + 80) = v269;
        v271 = v258[11];
        v272 = *(v271 + 88);
        v273 = v403;
        v274 = v404;
        v275 = atan2f(fabsf(v273), v274);
        v276 = v275 + v275;
        if (*(a2 + 46) >= v276)
        {
          v276 = *(a2 + 46);
        }

        v277 = (v276 * v276);
        if (v272 <= v277)
        {
          v278 = v277;
        }

        else
        {
          v278 = v272;
        }

        *(v271 + 88) = v278;
        v279 = v258[15];
        v280 = *(v279 + 120);
        if (v280 >= v264 * *(v270 + 16))
        {
          v280 = v264 * *(v270 + 16);
        }

        *(v279 + 120) = v280;
        v281 = v258[16];
        if (*(v281 + 128) > v277)
        {
          v277 = *(v281 + 128);
        }

        *(v281 + 128) = v277;
        v494 = BlueFin::QuaternionD::conj((this + 4816));
        v495 = v282;
        v496 = v283;
        v497 = v284;
        v24 = (this + 4688);
        v410[0] = BlueFin::QuaternionD::operator*(this + 586, &v494);
        v410[1] = v285;
        v410[2] = v286;
        v410[3] = v287;
        v494 = BlueFin::QuaternionD::conj(v410);
        v495 = v288;
        v496 = v289;
        v497 = v290;
        BlueFin::QuaternionD::qnb2Eul(&v494, &v469, &v468, &v467);
        v291 = *this;
        v292 = v467;
        *(this + *(*this - 24) + 176) = v292;
        *(this + 2) = 2;
        *(this + *(v291 - 24) + 204) = 1;
        *(this + *(v291 - 24) + 241) = 1;
        *(this + *(v291 - 24) + 240) = 1;
        *(this + 609) = v54;
        *(this + 610) = v55;
        *(this + 611) = v405;
        *(this + 1254) = *(a2 + 50);
        *(this + *(v291 - 24) + 196) = 0;
      }
    }
  }

LABEL_197:
  *&v498[0] = BlueFin::QuaternionD::conj(v409);
  *(&v498[0] + 1) = v293;
  *&v498[1] = v294;
  *(&v498[1] + 1) = v295;
  v447.f64[0] = BlueFin::QuaternionD::operator*(v24, v498);
  v447.f64[1] = v296;
  v448 = v297;
  v449 = v298;
  *(this + 594) = BlueFin::QuaternionD::operator*(v447.f64, this + 594);
  *(this + 595) = v299;
  *(this + 596) = v300;
  *(this + 597) = v301;
  *(this + 295) = *(this + 293);
  *(this + 296) = *(this + 294);
  v302 = *(this + 83);
  v303 = *this;
  v304 = sqrt(*(v302[9] + 72) + *(v302[10] + 80) + *(v302[11] + 88) + *(v302[15] + 120) + *(v302[16] + 128));
  *(this + *(*this - 24) + 184) = v304;
  v305 = *(v302[1] + 8) + *(v302[2] + 16);
  *(this + *(v303 - 24) + 80) = sqrtf(v305);
  v306 = *(v302[3] + 24);
  *(this + *(v303 - 24) + 84) = sqrtf(v306);
  v307 = sqrt(*(v302[4] + 32) + *(v302[5] + 40));
  *(this + *(v303 - 24) + 128) = v307;
  v308 = sqrt(*(v302[6] + 48));
  *(this + *(v303 - 24) + 140) = v308;
  v309 = this + *(v303 - 24);
  *(v309 + 2) = *(v309 + 8);
  *(v309 + 6) = *(v309 + 3);
  *(this + *(v303 - 24) + 180) = *(this + *(v303 - 24) + 176);
  v310 = sqrt(*(v302[7] + 56));
  *(this + *(v303 - 24) + 96) = v310;
  v311 = sqrt(*(v302[8] + 64));
  *(this + *(v303 - 24) + 160) = v311;
  v312 = (this + *(v303 - 24));
  v313 = v312[13];
  v314 = v312[14];
  v315 = v312[15];
  *&v498[8] = 0x100000003;
  *&v498[0] = 0;
  *&v498[2] = 0;
  *&v498[4] = 0;
  BlueFin::GlPeShrimpKf::GetVelVeh(this, v498);
  v470[0] = 0.0;
  if (!*(this + 2))
  {
    v324 = 0;
    v325 = 0;
    goto LABEL_223;
  }

  v316 = *(this + 654);
  if (*(v316 + 586))
  {
    v317 = 10;
  }

  else
  {
    v317 = 0;
  }

  if (*(v316 + 592))
  {
    v318 = 10;
  }

  else
  {
    v318 = v317;
  }

  if (!*(this + 5040))
  {
    v318 = 10;
  }

  if (*(this + 5041))
  {
    v319 = 10;
  }

  else
  {
    v319 = v318;
  }

  *(this + 5040) = 0;
  if (fabs(*(this + 576)) > 2.943 || fabs(*(this + 577)) > 2.943 || fabs(*(this + 578)) > 2.943)
  {
    v319 = 20;
  }

  v442.f64[0] = 0.0;
  *&v438 = 0;
  v422[0] = COERCE_BLUEFIN_SKFVECTOR_(BlueFin::QuaternionD::conj((this + 4784)));
  v422[1] = v320;
  *&v423 = v321;
  *(&v423 + 1) = v322;
  BlueFin::QuaternionD::qnb2Eul(v422, v442.f64, &v438, v470);
  v323 = fabs(v442.f64[0] * 57.2957795);
  if (v323 <= 10.0 && fabs(*&v438 * 57.2957795) <= 10.0)
  {
    v324 = 0;
LABEL_222:
    v325 = v319;
    goto LABEL_223;
  }

  v324 = 0;
  v325 = 13;
  if (v323 <= 25.0 && *(this + 2) == 2)
  {
    if (fabs(*&v438 * 57.2957795) > 45.0)
    {
      v324 = 0;
      goto LABEL_223;
    }

    v324 = 1024;
    goto LABEL_222;
  }

LABEL_223:
  v326 = *(this + 653);
  if (*(v326 + 24) == 2)
  {
    *(v326 + 24) = 0;
    v325 = 23;
  }

  if (*(this + 2) == 2)
  {
    v463 = 0.0;
    *&v454 = 0;
    v453[0] = 0.0;
    v422[0] = COERCE_BLUEFIN_SKFVECTOR_(BlueFin::QuaternionD::conj((this + 4816)));
    v422[1] = v327;
    *&v423 = v328;
    *(&v423 + 1) = v329;
    v408 = v24;
    v442.f64[0] = BlueFin::QuaternionD::operator*(v24, v422);
    v442.f64[1] = v330;
    *&v443 = v331;
    *(&v443 + 1) = v332;
    v422[0] = COERCE_BLUEFIN_SKFVECTOR_(BlueFin::QuaternionD::conj(&v442));
    v422[1] = v333;
    *&v423 = v334;
    *(&v423 + 1) = v335;
    BlueFin::QuaternionD::qnb2Eul(v422, &v463, &v454, v453);
    if (fabs(*&v454) <= 0.785398163)
    {
      v336 = v325;
    }

    else
    {
      v336 = 12;
    }

    v337 = *(this + 5818);
    if ((v337 & 1) == 0 && sqrt(v314 * v314 + v313 * v313 + v315 * v315) > *(this + 5))
    {
      v336 = 15;
    }

    v338 = *(this + 655);
    v339 = *this;
    v340 = *(v338 + 84);
    if (v340 == 1)
    {
      v341 = *(this + *(*this - 24) + 200);
      IsParkingGarage = BlueFin::GlPeNavGnssBlocked::IsParkingGarage(v338, v341);
      v343 = *v498;
      if (!IsParkingGarage && *v498 < *(v338 + 128))
      {
        ++*(this + 5345);
        v341 = *(this + *(v339 - 24) + 200);
      }

      if (!BlueFin::GlPeNavGnssBlocked::IsParkingGarage(v338, v341) && *(v338 + 133) == 1)
      {
        v345 = v341 - *(this + 1254);
        v346 = 1.0;
        if (v345 <= 0x493DF)
        {
          v346 = v345 / 300000.0;
        }

        v347 = *(v338 + 136);
        v344 = v343;
        v348 = v344;
        if (v347 != 0.0 && *(this + 665) - v346 * v347 >= v348 || (v349 = *(v338 + 140), v349 != 0.0) && *(this + 665) + v346 * v349 <= v348)
        {
          ++*(this + 5346);
        }
      }
    }

    else
    {
      v343 = *v498;
    }

    if (BlueFin::GlPeNavGnssBlocked::IsParkingGarage(v338, *(this + *(v339 - 24) + 200)) && v343 > *(v338 + 124))
    {
      ++*(this + 5347);
    }

    if (v340 != 1)
    {
      *(this + 5345) = 0;
      *(this + 5347) = 0;
    }

    v350 = *(this + 5315);
    if (!v337 || *(this + 5315))
    {
      BlueFin::lla2ned(this + 573, this + 669, 0, &v471);
      v422[0] = *&v471;
      *&v424[0] = v472;
      *&v429 = 0x100000003;
      *&v425 = v473;
      v445 = 0;
      *&v438 = BlueFin::QuaternionD::conj((this + 4816));
      *(&v438 + 1) = v351;
      *&v439 = v352;
      *(&v439 + 1) = v353;
      v434.f64[0] = BlueFin::QuaternionD::operator*(v408, &v438);
      v434.f64[1] = v354;
      *&v435 = v355;
      *(&v435 + 1) = v356;
      *&v438 = BlueFin::QuaternionD::conj(&v434);
      *(&v438 + 1) = v357;
      *&v439 = v358;
      *(&v439 + 1) = v359;
      BlueFin::QuaternionD::rotVec(&v438, v422, &v442);
      v360 = v442.f64[0];
      if (v442.f64[0] >= -1.0)
      {
        if (v442.f64[0] > 0.0)
        {
          *(this + 5328) = 0;
          *(this + 1333) = 0;
        }
      }

      else
      {
        ++*(this + 5328);
        v361 = v360;
        *(this + 1333) = *(this + 1333) + v361;
      }

      v362 = sqrt(vaddvq_f64(vmulq_f64(*(this + *(*this - 24) + 104), *(this + *(*this - 24) + 104))));
      if (v362 <= 30.0)
      {
        v363 = v362;
      }

      else
      {
        v363 = 30.0;
      }

      if (v470[0] * v363 >= 0.0)
      {
        v364 = v470[0] * v363;
      }

      else
      {
        v364 = -(v470[0] * v363);
      }

      if (BlueFin::GlPeShrimpKf::IsNotTurning(this, 1.0))
      {
        if (*(this + 2) == 2 && !*(this + 5816) && (v365 = v444[0], fabs(v444[0]) >= fmax(v364, 1.2)))
        {
          ++*(this + 5336);
          v366 = v365;
          *(this + 1335) = *(this + 1335) + v366;
        }

        else if (*(this + 5336) && v444[0] * *(this + 1335) < 0.0)
        {
          *(this + 5336) = 0;
          *(this + 1335) = 0;
        }
      }

      *(this + 669) = *(this + 573);
      *(this + 335) = *(this + 287);
      v367 = fmax(v363 * 0.03, 0.5);
      if (BlueFin::GlPeShrimpKf::IsNotTurning(this, 1.0))
      {
        v368 = fabs(*&v498[2]);
        if (v368 >= v367)
        {
          ++*(this + 5348);
        }

        else if (v368 < 0.5)
        {
          *(this + 5348) = 0;
        }
      }

      if (fabs(*&v498[4]) >= v367)
      {
        v369 = *(this + 5349) + 1;
      }

      else
      {
        v369 = 0;
      }

      *(this + 5349) = v369;
    }

    if (*(this + 5350) <= 3u)
    {
      v325 = v336;
    }

    else
    {
      v325 = 16;
    }

    v370 = *(this + 654);
    v372 = *(this + 83);
    v373 = (v370[86] + *(v372[17] + 136)) * 49.0;
    if (v373 < 0.0225)
    {
      v373 = 0.0225;
    }

    v371 = -(v370[85] - *(this + 579) * 57.2957795);
    if (v371 * v371 > v373)
    {
      goto LABEL_292;
    }

    v374 = -(v370[97] - *(this + 580) * 57.2957795);
    v375 = v374 * v374;
    v376 = (v370[98] + *(v372[18] + 144)) * 49.0;
    if (v376 < 0.0225)
    {
      v376 = 0.0225;
    }

    if (v375 > v376)
    {
      goto LABEL_292;
    }

    v377 = -(v370[109] - *(this + 581) * 57.2957795);
    v378 = v377 * v377;
    v379 = (v370[110] + *(v372[19] + 152)) * 49.0;
    if (v379 < 0.0225)
    {
      v379 = 0.0225;
    }

    if (v378 <= v379)
    {
      *(this + 5344) = 0;
    }

    else
    {
LABEL_292:
      ++*(this + 5344);
    }

    BlueFin::GlPeShrimpNhcMonitor::RunDetector(this + 5384);
    BlueFin::GlPeShrimpNhcMonitor::RunDetector(this + 5600);
    v380 = *(this + 653);
    if ((*(v380 + 8) - 1) <= 1 && *(v380 + 12) == 1)
    {
      v325 = 17;
    }

    v381 = *(this + 5314);
    if (*(this + 5312) == 1)
    {
      *(this + 5376) = 0;
      if (v381)
      {
        v382 = 0;
LABEL_301:
        v383 = 1;
        goto LABEL_310;
      }
    }

    else
    {
      if (*(this + 5314))
      {
        v382 = 0;
        *(this + 5376) = 0;
        goto LABEL_301;
      }

      v384 = *(this + 655);
      if (*(v384 + 21) == 1)
      {
        v385 = BlueFin::GlPeNavGnssBlocked::PublishIndoorPropagation(v384, *(this + *(*this - 24) + 200));
        *(this + 5376) = !v385;
        if (!v385)
        {
          goto LABEL_309;
        }
      }

      else
      {
        *(this + 5376) = 0;
      }
    }

    if (*(this + 2) == 2)
    {
      v383 = 0;
      v382 = *(this + 5816) != 0;
      goto LABEL_310;
    }

LABEL_309:
    v383 = 0;
    v382 = 1;
LABEL_310:
    *(this + 5376) = v382;
    if (v350)
    {
      if (v324 || !*(this + 5818))
      {
        if ((v324 & 0x400) != 0)
        {
          *(this + 5817) = 261;
        }
      }

      else
      {
        if (!*(this + 5328) && !*(this + 5348) && !*(this + 5349))
        {
          --*(this + 5817);
        }

        if (!*(this + 5817))
        {
          *(this + 5818) = 0;
        }

        *(this + 5345) = 0;
        *(this + 5347) = 0;
        *(this + 669) = *(this + 573);
        *(this + 335) = *(this + 287);
        *(this + 5376) = 0;
      }

      if (*(this + 5336) < 8u)
      {
        goto LABEL_334;
      }

      v387 = *(this + 1335);
      if (v387 < 0.0)
      {
        v387 = -v387;
      }

      if (v387 < 20.0 && *(this + 5348) <= 9u)
      {
LABEL_334:
        if (*(this + 5328) >= 0xAu && *(this + 1333) <= -30.0)
        {
          v325 = 22;
        }
      }

      else
      {
        v325 = 21;
      }
    }

    else if (*(this + 5818))
    {
      if ((v324 & 0x400) != 0)
      {
        v386 = 5;
      }

      else
      {
        v386 = 3;
      }

      *(this + 5817) = v386;
      *(this + 5345) = 0;
      *(this + 5347) = 0;
      *(this + 669) = *(this + 573);
      *(this + 335) = *(this + 287);
      *(this + 5376) = 0;
    }

    else if ((v383 & 1) == 0)
    {
      v388 = *(this + 1333);
      if ((v388 > -15.0 || *(this + 5328) < 5u) && v388 > -30.0)
      {
        v391 = 0;
      }

      else
      {
        v391 = 2;
      }

      if (*(this + 5345))
      {
        v391 |= 4u;
      }

      if (*(this + 5346))
      {
        v391 |= 8u;
      }

      if (*(this + 5347))
      {
        v391 |= 0x10u;
      }

      if (*(this + 5348) > 2u)
      {
        v391 |= 0x40u;
      }

      if (*(this + 5349) > *(this + 32))
      {
        v391 |= 0x80u;
      }

      if (*(this + 5344) > 4u)
      {
        v391 |= 0x800u;
      }

      if (*(this + 5376))
      {
        v391 |= 0x100u;
      }

      v392 = *(this + 83);
      v393 = sqrt(*(v392[4] + 32) + *(v392[5] + 40));
      if (sqrt(*(v392[1] + 8) + *(v392[2] + 16)) > 55.0 || v393 > 4.5)
      {
        v391 |= 0x200u;
      }

      v395 = v391 | v324;
      if (v395)
      {
        *(this + 5818) = 1;
        if ((v395 & 0x400) != 0)
        {
          v396 = 5;
        }

        else
        {
          v396 = 3;
        }

        *(this + 5817) = v396;
      }
    }
  }

  if (v325)
  {
    BlueFin::GlPeShrimpKf::ResetINS(this, v325);
  }

  *(this + 1215) = *(this + *(*this - 24) + 200);
  *(this + 1216) = *(this + 1214);
  v397 = *MEMORY[0x29EDCA608];
}

uint64_t BlueFin::GlPeShrimpKf::KalmanGain(uint64_t this, const BlueFin::SKFVector *a2, BlueFin::SKFVector *a3)
{
  v20 = *MEMORY[0x29EDCA608];
  v3 = *(this + 676);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = 1;
    v6 = 0x10000;
    v7 = *(this + 676);
    do
    {
      if (*(a2 + (v6 >> 16)) != 0.0)
      {
        v19[v4++] = v5;
      }

      ++v5;
      v6 += 0x10000;
      --v7;
    }

    while (v7);
    v8 = v3 + 1;
    v9 = v4;
    v10 = 1;
    do
    {
      while (v4 < 1)
      {
        *(a3 + v10++) = 0;
        if (v10 == v8)
        {
          goto LABEL_15;
        }
      }

      v11 = 0.0;
      v12 = v19;
      v13 = v4;
      do
      {
        v14 = *v12++;
        v11 = v11 + *(*(*(this + 664) + 8 * v10) + 8 * v14) * *(a2 + v14);
        --v13;
      }

      while (v13);
      *(a3 + v10++) = v11;
    }

    while (v10 != v8);
    v15 = 0.0;
    v16 = v19;
    do
    {
      v17 = *v16++;
      v15 = v15 + *(a3 + v17) * *(a2 + v17);
      --v9;
    }

    while (v9);
  }

LABEL_15:
  v18 = *MEMORY[0x29EDCA608];
  return this;
}

uint64_t BlueFin::GlPeShrimpKf::MeasUpdateINS(BlueFin::GlPeShrimpKf *this, uint64_t a2, int a3, double a4, long double a5, double a6, uint64_t a7, int a8)
{
  v8 = *(this + 169);
  if (*(a2 + 8) != v8)
  {
    v96 = "otH.GetLen() == iRSize";
    DeviceFaultNotify("glpe_shrimpkf.cpp", 1655, "MeasUpdateINS", "otH.GetLen() == iRSize");
    v97 = 1655;
    goto LABEL_33;
  }

  if (v8 != *(this + 168))
  {
    v96 = "iRSize == m_P.GetRowSize()";
    DeviceFaultNotify("glpe_shrimpkf.cpp", 1656, "MeasUpdateINS", "iRSize == m_P.GetRowSize()");
    v97 = 1656;
    goto LABEL_33;
  }

  if (v8 >= 22)
  {
    v96 = "iRSize <= BIG_MATR_MAX_COL_DIM";
    DeviceFaultNotify("glpe_shrimpkf.cpp", 1657, "MeasUpdateINS", "iRSize <= BIG_MATR_MAX_COL_DIM");
    v97 = 1657;
    goto LABEL_33;
  }

  v124[1] = 0x1500000015;
  memset(v125, 0, sizeof(v125));
  v124[0] = v125;
  BlueFin::GlPeShrimpKf::KalmanGain(this, *a2, v125);
  v16 = v15;
  if (!a8)
  {
LABEL_14:
    BlueFin::SKFVectorDim<21>::SKFVectorDim(&v122, v124);
    v19 = v123;
    if (v123 >= 1)
    {
      v20 = v122;
      v21 = v123 + 1;
      v22 = (v122 + 8);
      do
      {
        *v22 = 1.0 / (v16 + a5) * *v22;
        ++v22;
        --v19;
      }

      while (v19);
      v23 = v21 - 1;
      v24 = (*(this + 549) + 8);
      v25 = (v20 + 8);
      do
      {
        v26 = *v25++;
        *v24 = *v24 + v26 * a4;
        ++v24;
        --v23;
      }

      while (v23);
    }

    if (v8 >= 1)
    {
      v27 = *(this + 83);
      v28 = v122;
      v29 = v8 + 1;
      v30 = (v27 + 8);
      v31 = v124[0] + 8;
      v32 = 1;
      v33 = 8;
      do
      {
        v34 = (*(v27 + 8 * v32) + v33);
        v35 = v31;
        v36 = v30;
        v37 = v8;
        do
        {
          v38 = *v35++;
          v39 = *v34 - *(v28 + 8 * v32) * v38;
          *v34++ = v39;
          v40 = *v36++;
          *(v40 + 8 * v32) = v39;
          --v37;
        }

        while (v37);
        ++v32;
        --v8;
        ++v30;
        v31 += 8;
        v33 += 8;
      }

      while (v32 != v29);
    }

    if (BlueFin::GlUtils::m_ucEnabled)
    {
      BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
    }

    v41 = *(this + 549);
    v42 = *(v41 + 24);
    v126 = *(v41 + 8);
    v127 = v42;
    BlueFin::ned2lla(this + 573, &v126, &v107);
    BlueFin::GlPeShrimpKf::SetInsLla(this, &v107);
    v43 = *this;
    v44 = this + *(*this - 24);
    v45 = *(this + 549);
    v46 = *(v44 + 15) + *(v45 + 48);
    *(v44 + 104) = vaddq_f64(*(v44 + 104), *(v45 + 32));
    *(v44 + 15) = v46;
    *(this + *(v43 - 24) + 88) = *(this + *(v43 - 24) + 88) + *(v45 + 56);
    *(this + *(v43 - 24) + 152) = *(this + *(v43 - 24) + 152) + *(v45 + 64);
    v47 = *(this + 578) + *(v45 + 112);
    *(this + 288) = vaddq_f64(*(this + 288), *(v45 + 96));
    *(this + 578) = v47;
    v48 = *(this + 581) + *(v45 + 152);
    *(this + 4632) = vaddq_f64(*(this + 4632), *(v45 + 136));
    *(this + 581) = v48;
    *(this + 582) = *(v45 + 160) + *(this + 582);
    *(*(this + 658) + 8) = *(v45 + 168) + *(*(this + 658) + 8);
    *v121 = 0x3FF0000000000000;
    __asm { FMOV            V1.2D, #0.5 }

    v98 = _Q1;
    *&v121[8] = vmulq_f64(*(v45 + 72), _Q1);
    *&v121[24] = *(v45 + 88) * 0.5;
    *(this + 586) = BlueFin::QuaternionD::operator*(v121, this + 586);
    *(this + 587) = v54;
    *(this + 588) = v55;
    *(this + 589) = v56;
    v57 = vmulq_f64(*(*(this + 549) + 120), v98);
    *v121 = xmmword_298A436D0;
    *&v121[16] = v57;
    *(this + 602) = BlueFin::QuaternionD::operator*(v121, this + 602);
    *(this + 603) = v58;
    *(this + 604) = v59;
    *(this + 605) = v60;
    v118 = 0.0;
    v119 = 0.0;
    v107 = BlueFin::QuaternionD::conj((this + 4816));
    v108 = v61;
    v109 = v62;
    v110 = v63;
    *&v126 = BlueFin::QuaternionD::operator*(this + 586, &v107);
    *(&v126 + 1) = v64;
    v127 = v65;
    v128 = v66;
    v107 = BlueFin::QuaternionD::conj(&v126);
    v108 = v67;
    v109 = v68;
    v110 = v69;
    BlueFin::QuaternionD::qnb2Eul(&v107, &v120, &v119, &v118);
    v70 = v119;
    v117 = 0x300000003;
    v71 = __sincos_stret(v118);
    v72 = __sincos_stret(v70);
    v107 = v72.__cosval * v71.__cosval;
    v108 = v72.__cosval * v71.__sinval;
    v109 = -v72.__sinval;
    v111 = v72.__sinval * 0.0 * v71.__cosval - v71.__sinval;
    v112 = v71.__cosval + v72.__sinval * 0.0 * v71.__sinval;
    v113 = v72.__cosval * 0.0;
    v114 = v72.__sinval * v71.__cosval + v71.__sinval * 0.0;
    v115 = v72.__sinval * v71.__sinval + v71.__cosval * -0.0;
    cosval = v72.__cosval;
    v104 = 0x3FF0000000000000uLL;
    v105 = 0;
    v106 = 0;
    if (BlueFin::QuaternionD::rot2Q(&v104, &v107))
    {
      v100 = BlueFin::QuaternionD::conj((this + 4688));
      v101 = v73;
      v102 = v74;
      v103 = v75;
      v99[0] = BlueFin::QuaternionD::conj(&v104);
      v99[1] = v76;
      v99[2] = v77;
      v99[3] = v78;
      *&v126 = BlueFin::QuaternionD::operator*(&v100, v99);
      *(&v126 + 1) = v79;
      v127 = v80;
      v128 = v81;
      *(this + 602) = BlueFin::QuaternionD::conj(&v126);
      *(this + 603) = v82;
      *(this + 604) = v83;
      *(this + 605) = v84;
      BlueFin::QuaternionD::normalize(this + 301);
      *&v126 = BlueFin::QuaternionD::conj((this + 4816));
      *(&v126 + 1) = v85;
      v127 = v86;
      v128 = v87;
      v100 = BlueFin::QuaternionD::operator*(this + 586, &v126);
      v101 = v88;
      v102 = v89;
      v103 = v90;
      *&v126 = BlueFin::QuaternionD::conj(&v100);
      *(&v126 + 1) = v91;
      v127 = v92;
      v128 = v93;
      BlueFin::QuaternionD::qnb2Eul(&v126, &v120, &v119, &v118);
      v94 = v118;
      *(this + *(*this - 24) + 176) = v94;
      bzero((*(this + 549) + 8), 8 * *(this + 1100));
      return 1;
    }

    v96 = "otQnv_.rot2Q(otCnv_)";
    DeviceFaultNotify("glpe_shrimpkf.cpp", 1826, "MeasUpdateINS", "otQnv_.rot2Q(otCnv_)");
    v97 = 1826;
LABEL_33:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_shrimpkf.cpp", v97, v96);
  }

  v17 = a4 / sqrt(v15 + a5);
  if (v17 < 0.0)
  {
    v17 = -v17;
  }

  if ((a3 - 6) < 0xFFFFFFFD || v17 < a6)
  {
    if (v17 < a6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v18 = *(this + *(*this - 24) + 200);
    if ((v18 - *(this + 1254)) >> 4 < 0x753 || (v18 - *(this + 1255)) > 0x7530)
    {
      goto LABEL_14;
    }

    if (v17 < fmax(a6, 5.0))
    {
      a5 = exp(v17 / fmin(a6, 5.0)) * a5;
      goto LABEL_14;
    }
  }

  return 0;
}

void BlueFin::GlPeShrimpKf::SetInsLla(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 4584) = *a2;
  *(a1 + 4592) = v5;
  v6 = a2[2];
  *(a1 + 4600) = v6;
  v7 = *(a1 + 4656);
  if (v7 == 0.0)
  {
    v9 = (a1 + *(*a1 - 24));
    v9[1] = v4;
    v9[2] = v5;
    v9[3] = v6;
  }

  else
  {
    v14 = v2;
    v15 = v3;
    v8 = a1 + *(*a1 - 24);
    v12 = vmulq_n_f64(*(v8 + 104), v7);
    v13 = v7 * *(v8 + 120);
    BlueFin::ned2lla((a1 + 4584), v12.f64, &v10);
    *(v8 + 8) = v10;
    *(v8 + 24) = v11;
  }
}

BlueFin::GlPeShrimpKf *BlueFin::GlPeShrimpKf::ApplyZupt(BlueFin::GlPeShrimpKf *this, const BlueFin::GlPeNavGnssState *a2, uint64_t a3, uint64_t a4)
{
  v8 = 10.0;
  if (!*(a2 + 240))
  {
    v8 = 5.0;
  }

  v9 = (this + *(*this - 24));
  v10 = v9[13];
  if (sqrt(v9[14] * v9[14] + v10 * v10) <= v8 * *(v9 + 32))
  {
    v33 = v7;
    v34 = v6;
    v35 = v4;
    v36 = v5;
    v11 = this;
    v19 = 0x1500000015;
    v20 = 0;
    v18 = &v20;
    v22 = 0;
    v21 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0;
    v23 = 0x3FF0000000000000;
    BlueFin::GlPeShrimpKf::MeasUpdateINS(this, &v18, 3, -v10, 0.0004, 5.0, a4, 0);
    v12 = -*(v11 + *(*v11 - 24) + 112);
    v13 = v18;
    bzero(v18 + 1, 8 * v19);
    v13[5] = 0x3FF0000000000000;
    BlueFin::GlPeShrimpKf::MeasUpdateINS(v11, &v18, 4, v12, 0.0004, 5.0, v14, 0);
    v15 = -*(v11 + *(*v11 - 24) + 120);
    v16 = v18;
    bzero(v18 + 1, 8 * v19);
    v16[6] = 0x3FF0000000000000;
    return BlueFin::GlPeShrimpKf::MeasUpdateINS(v11, &v18, 5, v15, 0.0004, 5.0, v17, 0);
  }

  return this;
}

uint64_t BlueFin::GlPeShrimpKf::ApplyAltMeas(BlueFin::GlPeShrimpKf *this, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9[0] = &v10;
  v9[1] = 0x1500000015;
  v10 = 0;
  v11 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0;
  v12 = 0xBFF0000000000000;
  v7 = fmax(a3, 1.0);
  return BlueFin::GlPeShrimpKf::MeasUpdateINS(this, v9, 2, a2 - *(this + *(*this - 24) + 24), v7 * v7, a4, a7, 1);
}

double BlueFin::GlPeShrimpKf::GetVehConstraintHVec(uint64_t a1, _DWORD *a2)
{
  v31 = 0;
  BlueFin::GlPeShrimpKf::GetVelVeh(a1, v30);
  if (HIDWORD(v31) != 1 || v31 != 3)
  {
    DeviceFaultNotify("glpe_shrimpkf.cpp", 2226, "GetVehConstraintHVec", "otVv.GetColSize() == 1 && otVv.GetRowSize() == 3");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_shrimpkf.cpp", 2226, "otVv.GetColSize() == 1 && otVv.GetRowSize() == 3");
  }

  v36 = 0;
  v5 = *(a1 + 4992);
  v33[0] = *(a1 + 4984);
  v34 = v5;
  v35 = *(a1 + 5000);
  BlueFin::QuaternionD::rotVec((a1 + 4816), v33, v32);
  v33[0] = *v32;
  v34 = v32[4];
  v36 = 0x100000003;
  v35 = v32[8];
  BlueFin::vcross(v33, v32);
  v28[1] = 0x300000003;
  v29[0] = 0;
  v28[0] = v29;
  v29[1] = v30[0];
  v29[2] = v30[4];
  v29[3] = v30[8];
  BlueFin::MatSkewCross::MatSkewCross(&v27, v28);
  v26[0] = BlueFin::QuaternionD::conj((a1 + 4816));
  v26[1] = v6;
  v26[2] = v7;
  v26[3] = v8;
  v22[0] = BlueFin::QuaternionD::operator*((a1 + 4688), v26);
  v22[1] = v9;
  v22[2] = v10;
  v22[3] = v11;
  v23.f64[0] = BlueFin::QuaternionD::conj(v22);
  v23.f64[1] = v12;
  v24 = v13;
  v25 = v14;
  BlueFin::QuaternionD::q2Rot(&v23, v26);
  v15 = 0;
  v16 = 1;
  do
  {
    a2[2] = 21;
    v17 = *a2;
    *(v17 + 168) = 0;
    *(v17 + 152) = 0u;
    *(v17 + 136) = 0u;
    *(v17 + 120) = 0u;
    *(v17 + 104) = 0u;
    *(v17 + 88) = 0u;
    *(v17 + 72) = 0u;
    *(v17 + 56) = 0u;
    *(v17 + 40) = 0u;
    *(v17 + 24) = 0u;
    *(v17 + 8) = 0u;
    v18 = *a2;
    *(v18 + 32) = *&v26[v15];
    *(v18 + 48) = v26[v15 + 2];
    *(*a2 + 72) = BlueFin::MatSkewCross::operator()(&v27, v16, 1);
    *(*a2 + 80) = BlueFin::MatSkewCross::operator()(&v27, v16, 2);
    *(*a2 + 88) = BlueFin::MatSkewCross::operator()(&v27, v16, 3);
    *(*a2 + 120) = -BlueFin::MatSkewCross::operator()(&v27, v16, 2);
    v19 = BlueFin::MatSkewCross::operator()(&v27, v16, 3);
    v20 = *a2;
    a2 += 48;
    *(v20 + 128) = -v19;
    result = -*&v32[v15];
    *(v20 + 168) = result;
    v15 += 4;
    ++v16;
  }

  while (v15 != 12);
  return result;
}

uint64_t BlueFin::GlPeShrimpKf::ApplyVehConstraint(BlueFin::GlPeShrimpKf *this)
{
  v15[24] = *MEMORY[0x29EDCA608];
  v12[16] = 0.0;
  BlueFin::GlPeShrimpKf::GetVelVeh(this, v12);
  for (i = 0; i != 144; i += 48)
  {
    v3 = &v13[i];
    *&v13[i + 4] = 0uLL;
    *v3 = &v13[i + 4];
    *(v3 + 1) = 0x1500000000;
    *(v3 + 2) = 0uLL;
    *(v3 + 3) = 0uLL;
    *(v3 + 4) = 0uLL;
    *(v3 + 5) = 0uLL;
    *(v3 + 6) = 0uLL;
    *(v3 + 7) = 0uLL;
    *(v3 + 8) = 0uLL;
    *(v3 + 9) = 0uLL;
    *(v3 + 10) = 0uLL;
    *(v3 + 11) = 0uLL;
  }

  BlueFin::GlPeShrimpKf::GetVehConstraintHVec(this, v13);
  BlueFin::GlPeShrimpKf::MeasUpdateINS(this, &v14, 6, -v12[4], *(this + 2) * *(this + 2), 5.0, v4, 0);
  v6 = *(this + 655);
  v7 = this + *(*this - 24);
  if (*(v6 + 21) != 1 || (IsParkingGarage = BlueFin::GlPeNavGnssBlocked::IsParkingGarage(v6, *(v7 + 50)), v9 = 6.0, IsParkingGarage))
  {
    v9 = sqrt(vaddvq_f64(vmulq_f64(*(v7 + 104), *(v7 + 104)))) * 0.2;
  }

  if (v9 < *(this + 2))
  {
    v9 = *(this + 2);
  }

  result = BlueFin::GlPeShrimpKf::MeasUpdateINS(this, v15, 7, -v12[8], v9 * v9, 5.0, v5, 0);
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

void BlueFin::GlPeShrimpKf::ApplyNoTurnConstraint(BlueFin::GlPeShrimpKf *this)
{
  v32 = BlueFin::QuaternionD::conj((this + 4816));
  v33 = v2;
  v34 = v3;
  v35 = v4;
  v50[0] = BlueFin::QuaternionD::operator*(this + 590, &v32);
  v50[1] = v5;
  v50[2] = v6;
  v50[3] = v7;
  v48 = 0.0;
  v49 = 0.0;
  v46 = 0.0;
  v32 = BlueFin::QuaternionD::conj(v50);
  v33 = v8;
  v34 = v9;
  v35 = v10;
  BlueFin::QuaternionD::qnb2Eul(&v32, &v49, &v48, &v46);
  v32 = BlueFin::QuaternionD::conj((this + 4816));
  v33 = v11;
  v34 = v12;
  v35 = v13;
  v43.f64[0] = BlueFin::QuaternionD::operator*(this + 586, &v32);
  v43.f64[1] = v14;
  v44 = v15;
  v45 = v16;
  v32 = BlueFin::QuaternionD::conj(&v43);
  v33 = v17;
  v34 = v18;
  v35 = v19;
  BlueFin::QuaternionD::qnb2Eul(&v32, &v49, &v48, &v47);
  v21 = v48;
  v20 = v49;
  v42 = 0x300000003;
  v22 = __sincos_stret(v46);
  v23 = __sincos_stret(v21);
  v24 = __sincos_stret(v20);
  v32 = v23.__cosval * v22.__cosval;
  v33 = v23.__cosval * v22.__sinval;
  v34 = -v23.__sinval;
  v36 = v24.__sinval * v23.__sinval * v22.__cosval - v24.__cosval * v22.__sinval;
  v37 = v24.__sinval * v23.__sinval * v22.__sinval + v24.__cosval * v22.__cosval;
  v38 = v24.__sinval * v23.__cosval;
  v39 = v24.__cosval * v23.__sinval * v22.__cosval + v24.__sinval * v22.__sinval;
  v40 = v24.__cosval * v23.__sinval * v22.__sinval - v24.__sinval * v22.__cosval;
  v41 = v24.__cosval * v23.__cosval;
  v43 = 0x3FF0000000000000uLL;
  v44 = 0;
  v45 = 0;
  BlueFin::QuaternionD::rot2Q(&v43, &v32);
  v31[0] = BlueFin::QuaternionD::conj(&v43);
  v31[1] = v25;
  v31[2] = v26;
  v31[3] = v27;
  *(this + 586) = BlueFin::QuaternionD::operator*(v31, this + 602);
  *(this + 587) = v28;
  *(this + 588) = v29;
  *(this + 589) = v30;
}

void BlueFin::GlPeShrimpKf::PropStates(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a1 + *(*a1 - 24);
  v8 = *(v7 + 120);
  v17 = *(v7 + 104);
  v9 = *(a1 + 4704);
  v19[0] = *(a1 + 4688);
  v19[1] = v9;
  (*(v6 + 8))();
  (*(*a1 + 16))(a1, v19, a1 + 4688, a4, a2);
  v10 = a1 + *(*a1 - 24);
  __asm { FMOV            V1.2D, #0.5 }

  v16 = vmulq_n_f64(vmulq_f64(vaddq_f64(v17, *(v10 + 104)), _Q1), a2.n128_f64[0]);
  _Q1.f64[0] = (v8 + *(v10 + 120)) * 0.5 * a2.n128_f64[0];
  v20 = v16;
  v21 = _Q1.f64[0];
  BlueFin::ned2lla((a1 + 4584), v20.f64, v22);
  BlueFin::GlPeShrimpKf::SetInsLla(a1, v22);
}

float64_t BlueFin::GlPeShrimpKf::PropAttitude(uint64_t a1, uint64_t a2, double a3)
{
  v4 = *(a2 + 16);
  v8 = *a2;
  v9 = v4;
  v5 = *(a1 + 4648);
  v8 = vsubq_f64(v8, *(a1 + 4632));
  *&v9 = *&v4 - v5;
  BlueFin::QuaternionD::gyroIntegration(a1 + 4688, &v8, a3);
  BlueFin::QuaternionD::normalize((a1 + 4688));
  result = v8.f64[0];
  v7 = v9;
  *(a1 + 4984) = v8;
  *(a1 + 5000) = v7;
  return result;
}

double BlueFin::GlPeShrimpKf::PropVelocity(uint64_t a1, float64x2_t *a2, float64x2_t *this, double *a4, double a5)
{
  BlueFin::QuaternionD::q2Rot(this, v36);
  BlueFin::QuaternionD::q2Rot(a2, v35);
  v9 = *a4;
  v10 = a4[1];
  v30[16] = 0x100000003;
  v31[0] = v9;
  v32 = v10;
  v11 = a4[2];
  v34 = 0x100000003;
  v33 = v11;
  v12 = *(a1 + 4616);
  v13 = *(a1 + 4624);
  v30[0] = *(a1 + 4608);
  v30[4] = v12;
  v30[8] = v13;
  BlueFin::Matrix::operator+=(v36, v35);
  BlueFin::Matrix::operator-=(v31, v30);
  v14 = v32;
  *(a1 + 4920) = *(a1 + 4920) + v31[0] * a5;
  *(a1 + 4928) = *(a1 + 4928) + v14 * a5;
  *(a1 + 4936) = *(a1 + 4936) + v33 * a5;
  v15 = v34;
  if (v34 >= 1)
  {
    v16 = 0;
    v17 = HIDWORD(v34);
    v18 = v31;
    do
    {
      v19 = v18;
      v20 = v17;
      if (v17 >= 1)
      {
        do
        {
          *v19 = *v19 * 0.5;
          ++v19;
          --v20;
        }

        while (v20);
      }

      ++v16;
      v18 += 4;
    }

    while (v16 != v15);
  }

  BlueFin::Matrix::mult(v28, v36, v31);
  v21 = v28[0];
  v22 = v28[4];
  *(a1 + 4952) = *(a1 + 4952) + v28[0] * a5;
  *(a1 + 4960) = *(a1 + 4960) + v22 * a5;
  v23 = v29;
  *(a1 + 4968) = *(a1 + 4968) + v29 * a5;
  *(a1 + 4664) = v21;
  *(a1 + 4672) = v22;
  v24 = v23 + 9.81;
  *(a1 + 4680) = v24;
  v25 = (a1 + *(*a1 - 24));
  v26 = v25[14] + v22 * a5;
  result = v25[15] + v24 * a5;
  v25[13] = v25[13] + v21 * a5;
  v25[14] = v26;
  v25[15] = result;
  return result;
}

double BlueFin::GlPeShrimpKf::PropClock(BlueFin::GlPeShrimpKf *this, double a2)
{
  *(this + *(*this - 24) + 88) = *(this + *(*this - 24) + 88) + *(this + *(*this - 24) + 152) * a2;
  if (*(this + 5819) == 1)
  {
    v2 = fmax((*(this + 1455) * *(this + 1455)) * 0.5, 4.0);
  }

  else
  {
    v2 = 0.09;
  }

  v3 = a2 * a2 * v2;
  v4 = *(this + 83);
  v6 = *(v4 + 56);
  v5 = *(v4 + 64);
  v7 = *(v6 + 56) + v3 * a2 / 3.0;
  v8 = v3 * 0.5 + *(v6 + 64);
  *(v6 + 56) = v7 + a2;
  *(v6 + 64) = v8;
  result = *(v5 + 64) + v2 * a2;
  *(v5 + 56) = v8;
  *(v5 + 64) = result;
  return result;
}

uint64_t BlueFin::GlPeShrimpNhcMonitor::RunDetector(uint64_t this)
{
  if (*(this + 2) == 20)
  {
    v1 = this;
    *(this + 168) = 0;
    for (i = 19; i != 9; --i)
    {
      v3 = BlueFin::GlPeShrimpNhcMonitor::at(v1, i);
      *(v1 + 168) = *(v1 + 168) + *v3 * *v3;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 1;
    do
    {
      this = BlueFin::GlPeShrimpNhcMonitor::at(v1, v4);
      if (*this < 0.0)
      {
        ++v6;
      }

      v8 = v7;
      if (v4 <= 0x12)
      {
        do
        {
          v9 = *BlueFin::GlPeShrimpNhcMonitor::at(v1, v8);
          this = BlueFin::GlPeShrimpNhcMonitor::at(v1, v4);
          if (v9 > *this)
          {
            ++v5;
          }

          else
          {
            --v5;
          }

          ++v8;
        }

        while (v8 != 20);
      }

      ++v4;
      ++v7;
    }

    while (v4 != 20);
    if (v5 >= 0)
    {
      v10 = v5;
    }

    else
    {
      v10 = -v5;
    }

    *(v1 + 176) = (v10 - 1) / 30.822;
    v11 = v6 >= 0x10 && v5 < 0 || v6 < 5 && v5 > 0;
    *(v1 + 180) = v11;
  }

  return this;
}

uint64_t BlueFin::GlPeShrimpNhcMonitor::at(BlueFin::GlPeShrimpNhcMonitor *this, unsigned int a2)
{
  if (*(this + 2) <= a2)
  {
    DeviceFaultNotify("glpe_shrimpkf.h", 86, "at", "idx < size()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_shrimpkf.h", 86, "idx < size()");
  }

  return this + 8 * ((*this + a2) % 0x14) + 8;
}

double BlueFin::GlPeShrimpKf::stReducedNavState::stReducedNavState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, __int128 *a6, uint64_t a7)
{
  *a1 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 24);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = *(a2 + 104);
  *(a1 + 64) = *(a2 + 120);
  *(a1 + 72) = *(a2 + 176);
  *(a1 + 80) = *(a2 + 88);
  *(a1 + 88) = *(a2 + 152);
  *(a1 + 96) = *a3;
  *(a1 + 112) = *(a3 + 16);
  *(a1 + 120) = *a4;
  *(a1 + 136) = *(a4 + 16);
  v7 = a5[1];
  *(a1 + 144) = *a5;
  *(a1 + 160) = v7;
  v8 = *a6;
  v9 = a6[1];
  *(a1 + 224) = 0u;
  *(a1 + 176) = v8;
  *(a1 + 192) = v9;
  *(a1 + 208) = a1 + 224;
  *&result = 0x1500000000;
  *(a1 + 216) = 0x1500000000;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 256;
  if (a7)
  {
    v11 = *(a7 + 20);
    if (v11 != *(a7 + 16))
    {
      DeviceFaultNotify("glpe_shrimpkf.h", 373, "stReducedNavState", "potP->GetColSize() == potP->GetRowSize()");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_shrimpkf.h", 373, "potP->GetColSize() == potP->GetRowSize()");
    }

    *(a1 + 216) = v11;
    if (v11 >= 1)
    {
      v12 = *(a7 + 8);
      v13 = 1;
      do
      {
        result = *(*(v12 + 8 * v13) + 8 * v13);
        *(a1 + 224 + 8 * v13++) = result;
      }

      while (v11 >= v13);
    }
  }

  return result;
}

BlueFin::BigMatrix *BlueFin::BigMatrixDim<21,21>::BigMatrixDim(BlueFin::BigMatrix *this, const BlueFin::BigMatrix *a2)
{
  v3 = this + 24;
  *(this + 1) = xmmword_298A43FA0;
  *this = this + 32;
  *(this + 1) = this + 3560;
  *(this + 445) = 0;
  for (i = 8; i != 176; i += 8)
  {
    *(*(this + 1) + i) = v3;
    v3 += 168;
  }

  BlueFin::BigMatrix::Clone(this, a2);
  return this;
}

uint64_t BlueFin::GlPeTurnDetector::DoWaitForTurn(uint64_t this, double a2)
{
    ;
  }

    ;
  }

  v4 = *(this + 16);
  v3 = (this + 16);
  if (v4 >= i)
  {
    v4 = i;
  }

  if (i < *(this + 24))
  {
    i = *(this + 24);
  }

  *v3 = v4;
  *(this + 24) = i;
  if (v4 >= -0.785398163)
  {
    if (i <= 0.785398163)
    {
      return this;
    }

    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  *v3 = 0.0;
  *(this + 24) = 0;
  *this = 2;
  *(this + 4) = v5;
  *(this + 8) = a2;
  return this;
}

uint64_t BlueFin::GlPeTurnDetector::DoTurnIdentified(uint64_t result, uint64_t a2, int a3, double a4)
{
  v4 = *(result + 4);
  if (!v4)
  {
    DeviceFaultNotify("glpe_turndetector.cpp", 86, "DoTurnIdentified", "m_eDirection != NONE");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_turndetector.cpp", 86, "m_eDirection != NONE");
  }

    ;
  }

    ;
  }

  if (v4 == 1 && i >= 0.0)
  {
    ++*(result + 32);
LABEL_12:
    *result = 1;
    *(result + 40) = a3;
    *(result + 48) = *a2;
    *(result + 64) = *(a2 + 16);
    goto LABEL_13;
  }

  if (v4 == 2 && i <= 0.0)
  {
    ++*(result + 36);
    goto LABEL_12;
  }

LABEL_13:
  *(result + 8) = a4;
  return result;
}

uint64_t BlueFin::GlPeTurnDetector::Update(uint64_t result, uint64_t a2, int a3, double a4)
{
  v5 = *result;
  if (*result == 2)
  {

    return BlueFin::GlPeTurnDetector::DoTurnIdentified(result, a2, a3, a4);
  }

  else if (v5 == 1)
  {

    return BlueFin::GlPeTurnDetector::DoWaitForTurn(result, a4);
  }

  else
  {
    if (v5)
    {
      DeviceFaultNotify("glpe_turndetector.cpp", 128, "Update", "false");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_turndetector.cpp", 128, "false");
    }

    *(result + 8) = a4;
    *result = 1;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 16) = 0;
  }

  return result;
}

double BlueFin::GlPeTightPolaroid::stInnovData::Norm(BlueFin::GlPeTightPolaroid::stInnovData *this)
{
  v1 = *(this + 3);
  if (v1 == 0.0 || (v2 = *(this + 4), v2 == 0.0))
  {
    DeviceFaultNotify("glpe_prawnkf.h", 149, "Norm", "IsValid()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_prawnkf.h", 149, "IsValid()");
  }

  v3 = v1 + v2;
  return *(this + 2) / sqrtf(v3);
}

uint64_t BlueFin::GlPeMeasList::push_back(uint64_t result, uint64_t a2)
{
  v2 = *(result + 800);
  if (v2 >= 0x64)
  {
    DeviceFaultNotify("glpe_prawnkf.h", 74, "push_back", "m_nMeas < _DIM(m_pastSkfMeas)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_prawnkf.h", 74, "m_nMeas < _DIM(m_pastSkfMeas)");
  }

  *(result + 800) = v2 + 1;
  *(result + 8 * v2) = a2;
  return result;
}

void BlueFin::GlPePrawnKf::Reset(uint64_t a1, int a2)
{
  v3 = (a1 + 0x2000);
  BlueFin::GlPeShrimpKf::ResetINS(a1, a2);
  bzero(*(a1 + 10840), ((4 * v3[2656] + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  bzero(*(a1 + 10928), ((4 * v3[2744] + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  v3[2912] = 1;
}

void BlueFin::GlPePrawnKf::ComputePosition(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v339 = *MEMORY[0x29EDCA608];
  if ((*(v2 + 3) & 4) == 0)
  {
    DeviceFaultNotify("glpe_prawnkf.cpp", 696, "ComputePosition", "rotSettings.Has(TCKF_ENABLE)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_prawnkf.cpp", 696, "rotSettings.Has(TCKF_ENABLE)");
  }

  v4 = v1;
  v5 = *v1;
  *(v1 + *(*v1 - 24) + 256) &= ~1u;
  *(v1 + *(v5 - 24) + 256) &= ~2u;
  v270 = v1 + 5042;
  *(v1 + 5042) = 1;
  if (*(v1 + 8) != 2)
  {
    *(v1 + *(v5 - 24) + 200) = **(v1 + 5840);
    goto LABEL_309;
  }

  v6 = v3;
  v268 = v2;
  if (sqrt(*(v1 + 4960) * *(v1 + 4960) + *(v1 + 4952) * *(v1 + 4952) + (*(v1 + 4968) + 9.81) * (*(v1 + 4968) + 9.81)) > 2.943)
  {
    *(v1 + 5043) = 1;
  }

  v269 = (v1 + 10848);
  *(v1 + *(v5 - 24) + 200) = **(v1 + 5840);
  v7 = (*(v1 + *(v5 - 24) + 200) - *(v1 + 4860)) * 0.001;
  BlueFin::GlPeShrimpKf::PropClock(v1, v7);
  if (*(v4 + 8))
  {
    *(v4 + 4656) = *(v4 + 4656) + v7 + (*(v4 + 4856) - *(v4 + 4864)) * -0.001;
  }

  v271 = v6;
  v8 = &v333;
  v9 = 5600;
  do
  {
    *(v8 - 8) = 0;
    *(v8 - 1) = -1;
    *v8 = 575;
    v8 += 7;
    v9 -= 56;
  }

  while (v9);
  v10 = *(v4 + 5840);
  v11 = (v4 + *(*v4 - 24));
  BlueFin::GlSetBase::operator=(v11 + 264, v10 + 184);
  *(v11 + 276) = *(v10 + 196);
  v12 = *(v10 + 212);
  v13 = *(v10 + 228);
  v14 = *(v10 + 244);
  v11[21] = v10[16];
  *(v11 + 308) = v13;
  *(v11 + 324) = v14;
  *(v11 + 292) = v12;
  BlueFin::GlSetBase::GlSetBase(__src, &__src[12], 0x13u, (v4 + *(*v4 - 24) + 264));
  BlueFin::GlPeNavMeasSelect::GlPeNavMeasSelect(&v334, *(v4 + 5848), *(v4 + 5840));
  BlueFin::GlPeNavMeasSelect::RemoveTimeFail(&v334, __src);
  BlueFin::GlPeNavMeasSelect::RemoveHighUra(&v334, __src);
  LODWORD(v272) = __src[8];
  memcpy(&v273, *__src, 4 * __src[8]);
  HIDWORD(v272) = v273;
  BlueFin::GlSetIterator::operator++(&v272);
  while (BYTE1(v272) != v272)
  {
    if (WORD1(v272) >= 0x23FuLL)
    {
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
    }

    v15 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * WORD1(v272);
    v16 = *v15;
    LODWORD(v15) = v15[1];
    LOBYTE(v296) = v16;
    HIDWORD(v296) = v15;
    *v297 = WORD1(v272);
    MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(*(v4 + 5840), &v296, 0, 0);
    PeMeas = BlueFin::GlPeMsmtMgr::GetPeMeas(*(v4 + 5840), &v296, 0);
    if ((MeMeas[13] & 0x80) != 0 || *(MeMeas + 27) * 1000000000.0 > 999.0 || (BlueFin::stPeSigMeasKF::IsPRValidForNav(PeMeas) & 1) == 0)
    {
      BlueFin::GlSetBase::Remove(__src, *v297);
    }

    BlueFin::GlSetIterator::operator++(&v272);
  }

  v19 = (v4 + *(*v4 - 24));
  BlueFin::GlSetBase::operator=(v19 + 264, __src);
  v20 = 0;
  v21 = v327;
  v22 = v329[0];
  *(v19 + 308) = v328;
  *(v19 + 324) = v22;
  v19[21] = *(v329 + 12);
  *(v19 + 276) = *&__src[12];
  *(v19 + 292) = v21;
  v23 = *(v4 + 5840);
  v24 = *(*v4 - 24);
  do
  {
    v25 = &v335[v20 - 8];
    v25[12] = 0;
    *(v25 + 4) = -1;
    *(v25 + 10) = 575;
    v20 += 24;
  }

  while (v20 != 2400);
  v26 = v4 + v24;
  v272 = &v274;
  LOBYTE(v273) = 19;
  v274 = 0u;
  v275 = 0u;
  v276 = 0u;
  memset(v277, 0, 28);
  v27 = *(v4 + v24 + 272);
  __src[0] = v27;
  memcpy(&__src[8], *(v26 + 264), 4 * v27);
  *&__src[2] = 0;
  __src[1] = 0;
  *&__src[4] = *&__src[8];
  BlueFin::GlSetIterator::operator++(__src);
  if (__src[1] != __src[0])
  {
    v28 = &v334;
    do
    {
      if (*&__src[2] >= 0x23FuLL)
      {
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
      }

      v29 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * *&__src[2];
      v30 = *v29;
      LODWORD(v29) = v29[1];
      LOBYTE(v296) = v30;
      HIDWORD(v296) = v29;
      *v297 = *&__src[2];
      if ((*(*(v23 + 8) + ((*&__src[2] >> 3) & 0x1FFC)) >> (__src[2] & 0x1F)))
      {
        if (v28 - &v334 >= 2400)
        {
          DeviceFaultNotify("glpe_prawnkf.cpp", 156, "SortSignalIdsByCN0", "(pLastPrMeas - astPrMeasCNoForSort) < GL_CHANNELS");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_prawnkf.cpp", 156, "(pLastPrMeas - astPrMeasCNoForSort) < GL_CHANNELS");
        }

        v31 = BlueFin::GlPeMsmtMgr::GetMeMeas(v23, &v296, 0, 0);
        if ((v28 + 12) != &v296)
        {
          *(v28 + 12) = v296;
          *(v28 + 4) = HIDWORD(v296);
          *(v28 + 10) = *v297;
        }

        *v28 = *(v31 + 29);
        v28 += 3;
      }

      BlueFin::GlSetIterator::operator++(__src);
    }

    while (__src[1] != __src[0]);
    if (v28 != &v334)
    {
      v32 = (-85 * ((v28 - &v334) >> 3));
      if (v32 > 1)
      {
        for (i = 1; i != v32; ++i)
        {
          v34 = &v335[24 * i - 8];
          if (*(v34 - 3) < *v34)
          {
            v35 = i - 1;
            if (i != 1)
            {
              v36 = 0;
              do
              {
                v37 = (v35 + v36) / 2;
                if (*&v335[24 * v37 - 8] >= *v34)
                {
                  v36 = v37 + 1;
                }

                else
                {
                  v35 = (v35 + v36) / 2;
                }
              }

              while (v36 != v35);
            }

            *__src = *v34;
            *&__src[16] = *(v34 + 2);
            v38 = &v335[24 * v35 - 8];
            memmove(v335 + 24 * v35 + 16, v38, 24 * (i - v35));
            *v38 = *__src;
            v38[2] = *&__src[16];
          }
        }
      }

      v39 = v272;
      v40 = 20;
      do
      {
        *(v39 + (*&v335[v40 - 8] >> 5)) |= 1 << *&v335[v40 - 8];
        if (&v335[v40 - 4] == v28)
        {
          break;
        }

        v41 = v40 + 4;
        v40 += 24;
      }

      while (v41 < 1177);
    }
  }

  v42 = (v4 + *(*v4 - 24));
  BlueFin::GlSetBase::operator=(v42 + 264, &v272);
  v43 = v277[0];
  *(v42 + 308) = v276;
  *(v42 + 324) = v43;
  v42[21] = *(v277 + 12);
  v44 = v275;
  *(v42 + 276) = v274;
  *(v42 + 292) = v44;
  v45 = (v4 + *(*v4 - 24));
  BlueFin::GlSetBase::operator=((v45 + 22), v45 + 264);
  *(v45 + 424) = v45[21];
  v46 = *(v45 + 324);
  *(v45 + 396) = *(v45 + 308);
  *(v45 + 412) = v46;
  v47 = *(v45 + 292);
  *(v45 + 364) = *(v45 + 276);
  *(v45 + 380) = v47;
  v48 = v4 + *(*v4 - 24);
  *(v48 + 56) = *(v48 + 8);
  *(v48 + 72) = *(v48 + 24);
  v49 = *(v271 + 55);
  if (*v49)
  {
    v50 = 1;
  }

  else
  {
    v51 = v271[448];
    v52 = v51 >= 2;
    v53 = v51 - 2;
    if (v52)
    {
      v54 = v49 + 1;
      do
      {
        v55 = *v54++;
        v50 = v55 != 0;
        if (v55)
        {
          v56 = 1;
        }

        else
        {
          v56 = v53 == 0;
        }

        --v53;
      }

      while (!v56);
    }

    else
    {
      v50 = 0;
    }
  }

  v269[256] = v50;
  BlueFin::GlPeNavMeasSelect::GlPeNavMeasSelect(&v334, *(v4 + 5848), *(v4 + 5840));
  v57 = *v4;
  v58 = sqrt(*(v4 + *(*v4 - 24) + 112) * *(v4 + *(*v4 - 24) + 112) + *(v4 + *(*v4 - 24) + 104) * *(v4 + *(*v4 - 24) + 104)) * 3.0;
  if (v58 < 7.5)
  {
    v58 = 7.5;
  }

  v338 = v58;
  v59 = (v4 + *(v57 - 24));
  v60 = *(v4 + 5240);
  v61 = *(v60 + 2) >= 1 && *(v60 + 45) == 0;
  v62 = **(v4 + 5856);
  v63 = v59[11];
  v64 = v59[19];
  v65 = (*(v57 + 120))(v4);
  BlueFin::GlPeNavMeasSelect::SelectRr(&v334, v4 + 5832, (v59 + 44), (v59 + 1), v62, v59 + 104, v61, v65, 0);
  BlueFin::GlPeNavMeasSelect::SelectPr(&v334, (v4 + 5832), (v4 + *(*v4 - 24) + 264), 0);
  bzero(*(v4 + 10840), ((4 * *v269 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  bzero(*(v4 + 10928), ((4 * v269[88] + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  v66 = v4 + *(*v4 - 24);
  bzero(__src, 0x328uLL);
  v334 = COERCE_DOUBLE(&v335[4]);
  v335[0] = 19;
  memset(&v335[4], 0, 48);
  memset(v336, 0, sizeof(v336));
  v67 = *(*(v4 + 5224) + 8);
  LOBYTE(v272) = *(v66 + 360);
  memcpy(&v273, *(v66 + 352), 4 * v272);
  WORD1(v272) = 0;
  BYTE1(v272) = 0;
  HIDWORD(v272) = v273;
  BlueFin::GlSetIterator::operator++(&v272);
  if (BYTE1(v272) != v272)
  {
    v68 = 0;
    v69 = v67 - 1;
    v70 = v332;
    do
    {
      v71 = WORD1(v272);
      if (WORD1(v272) >= 0x23FuLL)
      {
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
      }

      v72 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * WORD1(v272);
      v73 = *v72;
      LODWORD(v72) = v72[1];
      LOBYTE(v296) = v73;
      HIDWORD(v296) = v72;
      *v297 = WORD1(v272);
      BlueFin::GlPeNavUtil::PackSkfMeas_RR_SignalId(v4 + 5832, v70, &v296, v69 < 2);
      *(*&v334 + ((v71 >> 3) & 0x1FFC)) |= 1 << v71;
      BlueFin::GlSetIterator::operator++(&v272);
      if (BYTE1(v272) == v272)
      {
        break;
      }

      v70 += 7;
      v52 = v68++ >= 0x31;
    }

    while (!v52);
  }

  BlueFin::GlSetBase::operator=(v66 + 352, &v334);
  v74 = *v336;
  *(v66 + 396) = *&v335[36];
  *(v66 + 412) = v74;
  *(v66 + 424) = *&v336[12];
  v75 = *&v335[20];
  *(v66 + 364) = *&v335[4];
  *(v66 + 380) = v75;
  v76 = BlueFin::GlSetBase::Cnt((v66 + 352));
  v77 = &v332[7 * v76];
  if (100 - v76 >= 0x32)
  {
    v78 = 50;
  }

  else
  {
    v78 = 100 - v76;
  }

  v334 = COERCE_DOUBLE(&v335[4]);
  v335[0] = 19;
  memset(&v335[4], 0, 48);
  memset(v336, 0, sizeof(v336));
  LOBYTE(v272) = *(v66 + 272);
  memcpy(&v273, *(v66 + 264), 4 * v272);
  WORD1(v272) = 0;
  BYTE1(v272) = 0;
  HIDWORD(v272) = v273;
  BlueFin::GlSetIterator::operator++(&v272);
  if (v76 != 100 && BYTE1(v272) != v272)
  {
    v79 = 1;
    v80 = &v332[7 * v76];
    do
    {
      v81 = WORD1(v272);
      if (WORD1(v272) >= 0x23FuLL)
      {
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
      }

      v82 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * WORD1(v272);
      v83 = *v82;
      LODWORD(v82) = v82[1];
      LOBYTE(v296) = v83;
      HIDWORD(v296) = v82;
      *v297 = WORD1(v272);
      v84 = (*(*v4 + 248))(v4);
      BlueFin::GlPeNavUtil::PackSkfMeas_PR_SignalId(v4 + 5832, v80, &v296, v84);
      *(*&v334 + ((v81 >> 3) & 0x1FFC)) |= 1 << v81;
      BlueFin::GlSetIterator::operator++(&v272);
      if (BYTE1(v272) == v272)
      {
        break;
      }

      v80 += 7;
      v193 = v78 > v79++;
    }

    while (v193);
  }

  BlueFin::GlSetBase::operator=(v66 + 264, &v334);
  v85 = *v336;
  *(v66 + 308) = *&v335[36];
  *(v66 + 324) = v85;
  *(v66 + 336) = *&v336[12];
  v86 = *&v335[20];
  *(v66 + 276) = *&v335[4];
  *(v66 + 292) = v86;
  v87 = -1227133513 * ((&v77[7 * BlueFin::GlSetBase::Cnt((v66 + 264))] - v332) >> 3);
  if (v87)
  {
    v88 = &v332[7 * v87];
    v89 = v332;
    do
    {
      BlueFin::GlPeMeasList::push_back(__src, v89);
      v89 += 7;
    }

    while (v89 < v88);
  }

  bzero(&v272, 0x328uLL);
  BlueFin::GlPeShrimpKf::SaveAprioriState(v4);
  v90 = *(v4 + 11128);
  if (v90 && *v90 == 1 && ((*(v90 + 3) & 1) != 0 || *(v4 + 8752) > 3.0))
  {
    v91 = *v4;
    v92 = *(v4 + *(*v4 - 24) + 200);
    *(v4 + 11136) = v92;
    *(v4 + 5820) = *(v90 + 8);
    if (!v92)
    {
LABEL_81:
      v93 = 0;
      goto LABEL_84;
    }
  }

  else
  {
    *(v4 + 5820) = 0;
    v92 = *(v4 + 11136);
    v91 = *v4;
    if (!v92)
    {
      goto LABEL_81;
    }
  }

  v93 = (*(v4 + *(v91 - 24) + 200) - v92) >> 3 < 0x753;
LABEL_84:
  *(v270 + 777) = v93;
  if (*(*(v4 + 5240) + 44) == 1 && BlueFin::GlSetBase::Cnt((v4 + *(v91 - 24) + 264)) < 2)
  {
    goto LABEL_178;
  }

  v94 = v4 + *(v91 - 24);
  if (v92)
  {
    v267 = (*(v94 + 200) - v92) >> 3 < 0x753;
  }

  else
  {
    v267 = 0;
  }

  v280 = v282;
  v281 = 19;
  memset(v282, 0, sizeof(v282));
  bzero(&v272, 0x328uLL);
  for (j = 0; j != 4000; j += 40)
  {
    v99 = &v335[j - 8];
    *v99 = 0;
    *(v99 + 1) = -1;
    *(v99 + 4) = 575;
    *(v99 + 3) = 0;
    *(v99 + 4) = 0;
    *(v99 + 2) = 0;
  }

  v296 = &v297[8];
  *v297 = 0x3200000000;
  memset(&v297[8], 0, 408);
  v294 = v295 + 2;
  *&v295[0] = 0x3200000000;
  memset(v295 + 8, 0, 408);
  v290 = v292;
  v291 = 0x3200000000;
  memset(v292, 0, sizeof(v292));
  v293 = 0;
  *&v288 = v289;
  *(&v288 + 1) = 0x3200000000;
  memset(v289, 0, sizeof(v289));
  if (!v330)
  {
    goto LABEL_132;
  }

  v100 = 0;
  v101 = &__src[8 * v331];
  do
  {
    v102 = *v101;
    v323 = xmmword_298A43FD0;
    v321 = &v324;
    v322 = v325;
    v325[0] = 0;
    v325[1] = &v323 + 8;
    if (*(v102 + 24) == -1)
    {
      v103 = 263361;
    }

    else
    {
      v103 = 1217;
    }

    v319[0] = v320;
    v319[1] = 0x100000000;
    v320[0] = 0;
    v320[1] = 0;
    v317[0] = v318;
    v317[1] = 0x100000000;
    v318[0] = 0;
    v318[1] = 0;
    v314[0] = v315;
    v314[1] = 0xC00000000;
    memset(v315, 0, sizeof(v315));
    v316 = 0;
    v104 = *(v94 + 88);
    v105 = **(v4 + 8728);
    v106 = *(v94 + 208);
    v107 = *(v94 + 216);
    v108 = *(v94 + 224);
    v109 = *(v94 + 232);
    v302[0] = v314;
    v302[1] = v94 + 8;
    v302[2] = v104;
    v303 = v105;
    v304 = 3;
    v305 = v103;
    v306 = v94 + 104;
    v307 = 0;
    v308 = v94 + 152;
    v309 = v106;
    v310 = v107;
    v311 = v108;
    v312 = v109;
    v313 = xmmword_298A44280;
    v298[0] = v319;
    v298[1] = v317;
    v298[2] = &v321;
    v299 = 0u;
    v300 = 0u;
    v301 = 0u;
    if ((*(**(v4 + 7344) + 16))(*(v4 + 7344), v302, v298, v102, &BlueFin::GlSet128::BIT0))
    {
      DeviceFaultNotify("glpe_prawnkf.cpp", 505, "ComputeInnov", "m_rotComputeZRH.Compute(otInp, otOut, potSkfMeas, GlSet128::BIT0) == SKF_ZRH_OK");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_prawnkf.cpp", 505, "m_rotComputeZRH.Compute(otInp, otOut, potSkfMeas, GlSet128::BIT0) == SKF_ZRH_OK");
    }

    v110 = *(v319[0] + 8) - *(v317[0] + 8);
    v113 = *(v102 + 32);
    v112 = v102 + 32;
    v111 = v113;
    v114 = *(v112 + 12);
    v115 = *(*(v4 + 8736) + 8);
    v116 = v322[1];
    v117 = v114 == 0;
    v118 = 32;
    v119 = 8;
    if (v114)
    {
      v120 = 32;
    }

    else
    {
      v120 = 8;
    }

    v121 = 16;
    if (!v117)
    {
      v119 = 16;
      v121 = 40;
    }

    v122 = 24;
    if (v117)
    {
      v118 = 24;
    }

    v123 = 48;
    if (v117)
    {
      v123 = 40;
    }

    else
    {
      v122 = 48;
    }

    v124 = 64;
    if (v117)
    {
      v124 = 56;
    }

    v125 = *(v115 + v120);
    v126 = *(v116 + v119);
    v127 = *(v116 + v118);
    v128 = *(v116 + v123);
    v129 = *(v116 + v124);
    v130 = (*(v125 + v120) * v126 + 0.0 + *(v125 + v121) * v127 + *(v125 + v122) * v128 + *(v125 + v124) * v129) * v126 + 0.0 + (*(*(v115 + v121) + v120) * v126 + 0.0 + *(*(v115 + v121) + v121) * v127 + *(*(v115 + v121) + v122) * v128 + *(*(v115 + v121) + v124) * v129) * v127;
    v131 = *(v115 + v122);
    v132 = *(v115 + v124);
    v133 = v130 + (*(v131 + v120) * v126 + 0.0 + *(v131 + v121) * v127 + *(v131 + v122) * v128 + *(v131 + v124) * v129) * v128 + (*(v132 + v120) * v126 + 0.0 + *(v132 + v121) * v127 + *(v132 + v122) * v128 + *(v132 + v124) * v129) * v129;
    v134 = *(v112 - 24) * *(v112 - 24);
    v283[0] = v111;
    v285 = *(v112 + 8);
    v284 = *(v112 + 4);
    *&v286 = v110;
    *(&v286 + 1) = v133;
    v287 = v134;
    v135 = &v335[40 * v100 - 8];
    *v135 = v111;
    *(v135 + 1) = v284;
    *(v135 + 4) = v285;
    *(v135 + 1) = v286;
    *(v135 + 4) = v287;
    v136 = *(v112 + 12);
    if (v136 == 2)
    {
      v138 = &v288;
      v139 = &v290;
      goto LABEL_114;
    }

    if (v136)
    {
      DeviceFaultNotify("glpe_prawnkf.cpp", 444, "PrePolaroidRun", "false");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_prawnkf.cpp", 444, "false");
    }

    v137 = BlueFin::GlPeMsmtMgr::GetMeMeas(*(v4 + 7336), v112, 0, 0);
    v138 = &v294;
    if ((*(v137 + 5) - 1) < 2)
    {
      v139 = &v296;
LABEL_114:
      BlueFin::SKFVector::AddLen(v139);
      v140 = BlueFin::GlPeTightPolaroid::stInnovData::Norm(v283);
      if (v140 < 0.0)
      {
        v140 = -v140;
      }

      *(*v139 + *(v139 + 2)) = v140;
    }

    if (v110 < 0.0)
    {
      v110 = -v110;
    }

    BlueFin::SKFVector::AddLen(v138);
    *&(*v138)[2 * *(v138 + 2)] = v110;
    v101 += 8;
    ++v100;
  }

  while (v101 != &__src[8 * v331 + 8 * v330]);
  if (*v297 > 2)
  {
    BlueFin::SKFVector::Median(&v294, v95, v96, v97);
    *(v4 + 8760) = v141;
    BlueFin::SKFVector::Median(&v296, v142, v143, v144);
    if (v145 >= 1.5)
    {
      v146 = v145;
    }

    else
    {
      v146 = 1.5;
    }

    *(v4 + 8744) = v146;
    if (v146 > 5.0 && *(v4 + 8760) > 400.0 && sqrt(BlueFin::SKFVector::Var(&v296)) < v146 * 0.1)
    {
      v147 = v146 + v146 * 0.1;
      goto LABEL_131;
    }

    if (!v267)
    {
      v147 = 5.0;
      if (v146 <= 5.0)
      {
        v147 = v146;
      }

LABEL_131:
      *(v4 + 8744) = v147;
    }
  }

LABEL_132:
  if (v291 >= 3)
  {
    BlueFin::SKFVector::Median(&v288, v95, v96, v97);
    *(v4 + 8768) = v148;
    BlueFin::SKFVector::Median(&v290, v149, v150, v151);
    v153 = *(v4 + 7352);
    v154 = 1.0;
    if ((*(v153 + 16) & 0xFFFFFFFE) == 2 && (*(v153 + 8) - 3) < 3)
    {
      v154 = 0.5;
    }

    if (v152 >= v154)
    {
      v155 = v152;
    }

    else
    {
      v155 = v154;
    }

    *(v4 + 8752) = v155;
    if (v155 > 5.0 && *(v4 + 8768) > 30.0 && sqrt(BlueFin::SKFVector::Var(&v290)) < v155 * 0.1)
    {
      v156 = v155 + v155 * 0.1;
      goto LABEL_146;
    }

    if (!v267)
    {
      v156 = 5.0;
      if (v155 <= 5.0)
      {
        v156 = v155;
      }

LABEL_146:
      *(v4 + 8752) = v156;
    }
  }

  v157 = v330;
  v158 = 1;
  if (v330)
  {
    v159 = 0;
    v160 = v331;
    v161 = &__src[8 * v331];
    do
    {
      v162 = *v161;
      v163 = *(*v161 + 44);
      if (v163)
      {
        if (v163 != 2)
        {
          DeviceFaultNotify("glpe_prawnkf.cpp", 293, "RunPolaroid", "(pMeas->eMeasType == SKF_MEAS_PR) || (pMeas->eMeasType == SKF_MEAS_RR)");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_prawnkf.cpp", 293, "(pMeas->eMeasType == SKF_MEAS_PR) || (pMeas->eMeasType == SKF_MEAS_RR)");
        }
      }

      else
      {
        v164 = &v335[40 * v159 - 8];
        LOBYTE(v296) = *v164;
        HIDWORD(v296) = *(v164 + 1);
        *v297 = *(v164 + 4);
        *&v297[8] = *(v164 + 1);
        *&v297[24] = *(v164 + 4);
        if (__PAIR64__(HIDWORD(v296), v296) != __PAIR64__(*(v162 + 36), *(v162 + 32)))
        {
          DeviceFaultNotify("glpe_prawnkf.cpp", 298, "RunPolaroid", "otInnov.m_otSignalId == pMeas->otSignalId");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_prawnkf.cpp", 298, "otInnov.m_otSignalId == pMeas->otSignalId");
        }

        v165 = BlueFin::GlPeTightPolaroid::stInnovData::Norm(&v296);
        v166 = BlueFin::GlPeMsmtMgr::GetMeMeas(*(v4 + 7336), (v162 + 32), 0, 0);
        if (v165 >= 0.0)
        {
          v167 = v165;
        }

        else
        {
          v167 = -v165;
        }

        v168 = *(v4 + 8744);
        if (v167 <= v168 || v165 >= -5.0 && v165 < -v168 && (*(v166 + 5) - 1) <= 1)
        {
          BlueFin::GlPeMeasList::push_back(&v272, v162);
          *&v280[4 * (*(v162 + 40) >> 5)] |= 1 << *(v162 + 40);
        }

        if (fabs(*&v297[8]) > 400.0)
        {
          *(*(v4 + 10840) + 4 * (*(v162 + 40) >> 5)) |= 1 << *(v162 + 40);
        }

        v160 = v331;
        v157 = v330;
      }

      v161 += 8;
      ++v159;
    }

    while (v161 != &__src[8 * v160 + 8 * v157]);
    v158 = v157 == 0;
  }

  else
  {
    v157 = 0;
  }

  v169 = *(v271 + 55);
  if (*v169)
  {
LABEL_168:
    *(v4 + 8776) = 0;
  }

  else
  {
    v206 = v271[448];
    if (v206 >= 2)
    {
      v207 = v206 - 1;
      v208 = v169 + 1;
      do
      {
        if (*v208++)
        {
          goto LABEL_168;
        }
      }

      while (--v207);
    }

    if (*(*(v4 + 7352) + 16) != 6)
    {
      ++*(v4 + 8776);
    }
  }

  if (!v158)
  {
    v178 = 0;
    v179 = &__src[8 * v331];
    if (v267)
    {
      v180 = 1.0;
    }

    else
    {
      v180 = 0.5;
    }

    while (1)
    {
      v181 = *v179;
      if ((*(*v179 + 44) & 0xFFFFFFFD) != 0)
      {
        DeviceFaultNotify("glpe_prawnkf.cpp", 341, "RunPolaroid", "(pMeas->eMeasType == SKF_MEAS_PR) || (pMeas->eMeasType == SKF_MEAS_RR)");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_prawnkf.cpp", 341, "(pMeas->eMeasType == SKF_MEAS_PR) || (pMeas->eMeasType == SKF_MEAS_RR)");
      }

      v182 = BlueFin::GlPeMsmtMgr::GetPeMeas(*(v4 + 7336), (v181 + 32), 0);
      if (*(v181 + 44) != 2)
      {
        goto LABEL_208;
      }

      v183 = *(v181 + 40);
      v184 = *&v280[4 * (v183 >> 5)];
      v185 = *(v182 + 110);
      v186 = *(v182 + 113);
      v187 = &v335[40 * v178 - 8];
      LOBYTE(v294) = *v187;
      HIDWORD(v294) = *(v187 + 1);
      LOWORD(v295[0]) = *(v187 + 4);
      *(v295 + 8) = *(v187 + 1);
      *(&v295[1] + 1) = *(v187 + 4);
      if (__PAIR64__(HIDWORD(v294), v294) != __PAIR64__(*(v181 + 36), *(v181 + 32)))
      {
        DeviceFaultNotify("glpe_prawnkf.cpp", 352, "RunPolaroid", "otInnov.m_otSignalId == pMeas->otSignalId");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_prawnkf.cpp", 352, "otInnov.m_otSignalId == pMeas->otSignalId");
      }

      v188 = 1 << (v183 & 0x1F);
      v189 = v185 & (v186 ^ 1);
      v190 = *(v4 + 8776);
      if (!v190)
      {
        break;
      }

      v191 = v188 & v184;
      if (v190 > 2)
      {
        if (v191)
        {
          v194 = BlueFin::GlPeTightPolaroid::stInnovData::Norm(&v294);
          if (v194 < 0.0)
          {
            v194 = -v194;
          }

          v193 = v194 > *(v4 + 8752);
          if ((v193 & v189) == 0)
          {
            goto LABEL_199;
          }
        }

        else if ((v189 & 1) == 0)
        {
          goto LABEL_208;
        }

        goto LABEL_203;
      }

      if (v191)
      {
        v192 = BlueFin::GlPeTightPolaroid::stInnovData::Norm(&v294);
        if (v192 < 0.0)
        {
          v192 = -v192;
        }

        v193 = v192 > v180 * *(v4 + 8752);
LABEL_199:
        if (v193)
        {
          goto LABEL_208;
        }

LABEL_207:
        BlueFin::GlPeMeasList::push_back(&v272, v181);
      }

LABEL_208:
      v179 += 8;
      ++v178;
      v157 = v330;
      if (v179 == &__src[8 * v331 + 8 * v330])
      {
        goto LABEL_170;
      }
    }

    if ((v189 & 1) == 0)
    {
      goto LABEL_208;
    }

    if ((v188 & *(*(v271 + 55) + 4 * (v183 >> 5))) != 0)
    {
LABEL_203:
      v195 = BlueFin::GlPeTightPolaroid::stInnovData::Norm(&v294);
      if (v195 < 0.0)
      {
        v195 = -v195;
      }

      v196 = *(v4 + 8752) + *(v4 + 8752);
    }

    else
    {
      BlueFin::GlSignalIdSet::GetSvIdSet(v271 + 440, &v296);
      if (((*(v296 + ((*(v181 + 32) >> 3) & 0x1C)) >> (*(v181 + 32) & 0x1F)) & 1) == 0)
      {
        goto LABEL_208;
      }

      v195 = BlueFin::GlPeTightPolaroid::stInnovData::Norm(&v294);
      if (v195 < 0.0)
      {
        v195 = -v195;
      }

      v196 = *(v4 + 8752);
    }

    if (v195 < v196)
    {
      goto LABEL_207;
    }

    goto LABEL_208;
  }

LABEL_170:
  if (v157 && (v271[241] & 1) != 0)
  {
    v170 = 0;
    v171 = &v333 + 1;
    do
    {
      if (*v171 == 2)
      {
        BlueFin::GlPeMeasList::GetRrSignalIds(&v334, &v272);
        if ((*(*&v334 + 4 * (*(v171 - 2) >> 5)) >> (*(v171 - 1) & 0x1F)))
        {
          BlueFin::GlSignalIdSet::GetSvIdSet(v271 + 440, &v296);
          if ((*(v296 + ((*(v171 - 12) >> 3) & 0x1C)) >> (*(v171 - 3) & 0x1F)))
          {
            *(v171 - 9) = *(v171 - 9) / 3.0;
          }
        }
      }

      ++v170;
      v171 += 14;
    }

    while (v170 < v330);
  }

LABEL_178:
  v172 = *(v4 + 5848);
  LODWORD(v296) = 0;
  *v297 = &v297[12];
  v297[8] = 8;
  memset(&v297[12], 0, 32);
  *&v297[48] = xmmword_298A41DA0;
  *&v297[64] = vdup_n_s32(0x42C60000u);
  *&v297[72] = 1120272384;
  BlueFin::stDops::stDops(&v334, &v296);
  v337 = v172;
  v173 = *(v4 + *(*v4 - 24) + 200);
  BlueFin::GlPeMeasList::GetPrSignalIds(&v294, &v272);
  BlueFin::GlSignalIdSet::GetSvIdSet(&v294, &v290);
  *&v288 = *(v4 + *(*v4 - 24) + 88);
  LODWORD(v321) = **(v4 + 5856);
  LODWORD(v314[0]) = 0;
  BlueFin::GlPeDops::GetDops();
  v174 = *(v4 + *(*v4 - 24) + 200);
  BlueFin::GlPeMeasList::GetRrSignalIds(&v290, &v272);
  BlueFin::GlSignalIdSet::GetSvIdSet(&v290, &v288);
  v321 = *(v4 + *(*v4 - 24) + 88);
  LODWORD(v314[0]) = **(v4 + 5856);
  LODWORD(v302[0]) = 0;
  BlueFin::GlPeDops::GetDops();
  v176 = *(*(v4 + 5240) + 8);
  if (v176)
  {
    v177 = (*(v4 + *(*v4 - 24) + 200) - v176) >> 4 < 0x271;
  }

  else
  {
    v177 = 0;
  }

  v197 = *(v4 + 5024);
  if (v197)
  {
    v197 = (*(v4 + *(*v4 - 24) + 200) - v197) > 0x3A98;
  }

  v198 = *(*(v4 + 5224) + 16);
  if (v198 == 6)
  {
    goto LABEL_325;
  }

  if ((v198 & 0xFFFFFFFE) != 2)
  {
    v177 = 0;
  }

  if (v177)
  {
LABEL_325:
    if (*&v297[52] >= 2.0)
    {
      v199 = v278;
      if (v278)
      {
        v200 = v279;
        v201 = &v272 + v279;
        do
        {
          if (!*(*v201 + 11))
          {
            v279 = ++v200;
            v278 = --v199;
          }

          ++v201;
        }

        while (v201 != &v272 + v200 + v199);
      }
    }

    v175.n128_u32[0] = DWORD1(v295[3]);
    if (*(&v295[3] + 1) >= 2.0)
    {
      if (v278)
      {
        v202 = 0;
        v203 = (&v272 + v279);
        v204 = 8 * v278;
        do
        {
          v205 = *v203++;
          if (*(v205 + 44) == 2)
          {
            ++v202;
          }

          v204 -= 8;
        }

        while (v204);
      }

      else
      {
        v202 = 0;
      }

      v278 -= v202;
    }
  }

  else
  {
    v175.n128_u32[0] = DWORD1(v295[3]);
  }

  if ((v198 == 1) | v197 & 1 && v175.n128_f32[0] >= 5.0)
  {
    v210 = v279;
    v211 = &v272 + v279;
    if (v278)
    {
      v212 = 0;
      v213 = 8 * v278;
      v214 = (&v272 + v279);
      do
      {
        v215 = *v214++;
        if (*(v215 + 44) == 2)
        {
          ++v212;
        }

        v213 -= 8;
      }

      while (v213);
    }

    else
    {
      v212 = 0;
    }

    v216 = v278 - v212;
    v278 = v216;
    if (!v216)
    {
      v197 = 0;
    }

    if (v197 == 1)
    {
      do
      {
        if (!*(*v211 + 11))
        {
          v279 = ++v210;
          v278 = --v216;
        }

        ++v211;
      }

      while (v211 != &v272 + v210 + v216);
    }
  }

  v217 = *(v4 + 5232);
  v218 = v217[81];
  v219 = *v217;
  v220 = *v4;
  if (v218 >= v219)
  {
    v223 = *v4;
    v222 = v268;
    if (*(v4 + *(v220 - 24) + 240) == 1)
    {
      v175.n128_u64[0] = *(v4 + 5032);
      v221 = v175.n128_f64[0] < 6.0822;
    }

    else
    {
      v221 = 1;
    }
  }

  else
  {
    v221 = 0;
    v222 = v268;
  }

  (*(v220 + 440))(v4, &v272, v222, v221, v175);
  BlueFin::GlPeMeasList::GetPrSignalIds(&v334, &v272);
  v224 = (v4 + *(*v4 - 24));
  BlueFin::GlSetBase::operator=(v224 + 264, &v334);
  v224[21] = *&v336[12];
  v225 = *&v335[20];
  v226 = *v336;
  *(v224 + 308) = *&v335[36];
  *(v224 + 324) = v226;
  *(v224 + 276) = *&v335[4];
  *(v224 + 292) = v225;
  BlueFin::GlPeMeasList::GetRrSignalIds(&v334, &v272);
  v227 = v4 + *(*v4 - 24);
  BlueFin::GlSetBase::operator=(v227 + 352, &v334);
  v228 = *&v335[20];
  v229 = *v336;
  *(v227 + 396) = *&v335[36];
  *(v227 + 412) = v229;
  *(v227 + 424) = *&v336[12];
  *(v227 + 364) = *&v335[4];
  *(v227 + 380) = v228;
  if ((BlueFin::CheckCovMat(v4 + 656) & 1) == 0)
  {
    BlueFin::GlPeShrimpKf::ResetINS(v4, 18);
  }

  if (*(v4 + 8) == 2 && !*(v270 + 774))
  {
    if (*(v4 + *(*v4 - 24) + 240))
    {
      v230 = 16;
    }

    else
    {
      v230 = 0;
    }

    if ((*(*v4 + 96))(v4) >= 0x15 && *(*(v4 + 5240) + 2) < 1)
    {
      v230 |= 4u;
    }

    if ((*(*v4 + 96))(v4) <= 0x5A)
    {
      v231 = v230;
    }

    else
    {
      v231 = v230 | 2;
    }

    v232 = *(*(v4 + 5240) + 8);
    if (v232)
    {
      v231 |= 32 * ((*(v4 + *(*v4 - 24) + 200) - v232) >> 5 < 0x753);
    }

    v233 = *v4;
    v234 = v4 + *(*v4 - 24);
    v235 = *(v234 + 241);
    v236 = *(v234 + 8);
    *&v238 = *(v234 + 24);
    v237 = *(v234 + 176);
    v334 = sqrt(*(v234 + 112) * *(v234 + 112) + *(v234 + 104) * *(v234 + 104));
    *&v335[40] = v238;
    *(&v238 + 1) = v236;
    v239 = *(v234 + 200);
    v240 = v231 & 0xFFFFFFF7;
    if (v235)
    {
      v241 = 8;
    }

    else
    {
      v241 = 0;
    }

    *v335 = v236;
    *&v335[16] = v238;
    *&v335[32] = *(&v236 + 1);
    *&v335[48] = v237;
    *v336 = v239;
    *&v336[4] = v237;
    *&v336[8] = v241 | v240;
    v242 = (*(v233 + 280))(v4);
    BlueFin::GlPeGnssNavUpa::SetUrbanPosAssist(v242, &v334, &v296);
    if (v297[32] == 1)
    {
      v243 = (*(*v4 + 280))(v4);
      v244 = BlueFin::GlPeGnssNavUpa::UnravelHeadingRad(v243, *(v4 + *(*v4 - 24) + 176), *&v297[36]);
        ;
      }

        ;
      }

      if (k < 0.0)
      {
        k = -k;
      }

      if (k >= 1.57079633)
      {
        DeviceFaultNotify("glpe_prawnkf.cpp", 1243, "ApplyXtc", "ABS(AngleDiffRad(GetHeadingRad(), dSegmentHdgRad)) < 90.0*D2R");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_prawnkf.cpp", 1243, "ABS(AngleDiffRad(GetHeadingRad(), dSegmentHdgRad)) < 90.0*D2R");
      }

      *((*(*v4 + 280))(v4) + 1) = 1;
      *(v270 + 3752) = 257;
      v246 = *(v4 + *(*v4 - 24) + 200);
      *(v4 + 11112) = v244;
      *(v4 + 11120) = v246;
      v247 = 0.0174532925;
      if (*&v297[40] <= 0.0174532925)
      {
        v247 = *&v297[40];
      }

      BlueFin::GlPeShrimpKf::ApplyYawMeas(v4, v244, v247);
    }

    if (v296 == 1 && v297[32] == 1)
    {
      BlueFin::lla2ned(v297, (v4 + *(*v4 - 24) + 8), 0, &v294);
      v248 = v294;
      v249 = *v295;
      v250 = *&v297[36];
      v251 = __sincosf_stret(*&v297[36]);
      v252 = *&v297[24];
      if (*&v297[24] >= *&v297[28])
      {
        v252 = *&v297[28];
      }

      BlueFin::GlPeShrimpKf::ApplyCrossTrackPosMeas(v4, v249 * v251.__cosval - *&v248 * v251.__sinval, v252, v250, 0);
    }
  }

  if (*(v270 + 273) != 1 || (v253 = *(v4 + 11136)) != 0 && (*(v4 + *(*v4 - 24) + 200) - v253) >> 3 < 0x753 || *(v4 + 8760) >= 400.0)
  {
    bzero(*(v4 + 10840), ((4 * *v269 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    bzero(*(v4 + 10928), ((4 * v269[88] + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  }

  else
  {
    v254 = *(v4 + 5840);
    BlueFin::GlSetBase::GlSetBase(&v294, v295 + 1, 0x13u, (v4 + *(*v4 - 24) + 264));
    v334 = COERCE_DOUBLE(&v335[4]);
    v335[0] = 19;
    memset(&v335[4], 0, 48);
    memset(v336, 0, sizeof(v336));
    BlueFin::GlSetBase::OperatorBinaryInversion(&v294, &v334);
    BlueFin::GlSetBase::operator=(&v294, &v334);
    *(&v295[1] + 4) = *&v335[20];
    *(&v295[2] + 4) = *&v335[36];
    *(&v295[3] + 4) = *v336;
    v295[4] = *&v336[12];
    *(v295 + 4) = *&v335[4];
    BlueFin::GlSignalIdSet::setSignalIdLimits(&v294);
    BlueFin::GlSetBase::GlSetBase(&v296, &v297[4], 0x13u, (v254 + 184));
    v334 = COERCE_DOUBLE(&v335[4]);
    v335[0] = 19;
    memset(&v335[4], 0, 48);
    memset(v336, 0, sizeof(v336));
    BlueFin::GlSetBase::OperatorBinaryAnd(&v296, &v334, &v294);
    BlueFin::GlSetBase::operator=(&v296, &v334);
    *&v297[20] = *&v335[20];
    *&v297[36] = *&v335[36];
    *&v297[52] = *v336;
    *&v297[64] = *&v336[12];
    *&v297[4] = *&v335[4];
    LOBYTE(v290) = v297[0];
    memcpy(&v291, v296, 4 * v297[0]);
    WORD1(v290) = 0;
    BYTE1(v290) = 0;
    HIDWORD(v290) = v291;
    BlueFin::GlSetIterator::operator++(&v290);
    while (BYTE1(v290) != v290)
    {
      v294 = v295 + 1;
      LOBYTE(v295[0]) = 19;
      memset(v295 + 4, 0, 64);
      v295[4] = 0u;
      if (WORD1(v290) >= 0x23FuLL)
      {
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
      }

      v255 = *(&BlueFin::GlSignalId::s_aotIndex2signalId + 2 * WORD1(v290) + 1);
      v256 = WORD1(v290) >> 5;
      v257 = 1 << SBYTE2(v290);
      *(v295 + v256 + 1) |= 1 << SBYTE2(v290);
      if (!v255)
      {
        v258 = *v4;
        v259 = v4 + *(*v4 - 24);
        v288 = *(v259 + 8);
        v289[0] = *(v259 + 24);
        v260 = v4 + *(v258 - 24);
        v261 = *(v260 + 88);
        v262 = *(v260 + 208);
        v263 = *(v260 + 216);
        v264 = *(v260 + 224);
        v265 = *(v260 + 232);
        BlueFin::GlPeNavUtil::ComputeRangeResidVec(v4 + 5832, &v294, &v288, **(v4 + 5856), 0, 0, 0, 1, 0, 1);
        if (fabs(*(*&v334 + 8)) > 600.0)
        {
          *(*(v4 + 10928) + 4 * v256) |= v257;
        }
      }

      BlueFin::GlSetIterator::operator++(&v290);
    }
  }

LABEL_309:
  v266 = *MEMORY[0x29EDCA608];
}

uint64_t BlueFin::GlPeMeasList::GetRrSignalIds(uint64_t this, uint64_t a2)
{
  *(this + 12) = 0u;
  *this = this + 12;
  *(this + 8) = 19;
  *(this + 28) = 0u;
  *(this + 44) = 0u;
  *(this + 60) = 0u;
  *(this + 72) = 0u;
  v2 = *(a2 + 800);
  if (v2)
  {
    v3 = a2 + 8 * *(a2 + 804);
    v4 = 8 * v2;
    do
    {
      if (*(*v3 + 44) == 2)
      {
        *(this + 12 + 4 * (*(*v3 + 40) >> 5)) |= 1 << *(*v3 + 40);
      }

      v3 += 8;
      v4 -= 8;
    }

    while (v4);
  }

  return this;
}

uint64_t BlueFin::GlPeMeasList::GetPrSignalIds(uint64_t this, uint64_t a2)
{
  *(this + 12) = 0u;
  *this = this + 12;
  *(this + 8) = 19;
  *(this + 28) = 0u;
  *(this + 44) = 0u;
  *(this + 60) = 0u;
  *(this + 72) = 0u;
  v2 = *(a2 + 800);
  if (v2)
  {
    v3 = a2 + 8 * *(a2 + 804);
    v4 = 8 * v2;
    do
    {
      if (!*(*v3 + 44))
      {
        *(this + 12 + 4 * (*(*v3 + 40) >> 5)) |= 1 << *(*v3 + 40);
      }

      v3 += 8;
      v4 -= 8;
    }

    while (v4);
  }

  return this;
}

uint64_t BlueFin::GlPePrawnKf::GetTimeSinceResetMs(BlueFin::GlPePrawnKf *this)
{
  if (*(this + 2) == 2)
  {
    return (**(this + 730) - *(this + 1254));
  }

  else
  {
    return 4287767295;
  }
}

uint64_t non-virtual thunk toBlueFin::GlPePrawnKf::GetTimeSinceResetMs(BlueFin::GlPePrawnKf *this)
{
  if (*(this - 1456) == 2)
  {
    return (**(this + 1) - *(this - 204));
  }

  else
  {
    return 4287767295;
  }
}

uint64_t BlueFin::GlPePrawnKf::GetTimeSinceFullFixMs(BlueFin::GlPePrawnKf *this)
{
  if (*(this + 2) == 2)
  {
    return 0;
  }

  else
  {
    return 4287767295;
  }
}

uint64_t non-virtual thunk toBlueFin::GlPePrawnKf::GetTimeSinceFullFixMs(BlueFin::GlPePrawnKf *this)
{
  if (*(this - 1456) == 2)
  {
    return 0;
  }

  else
  {
    return 4287767295;
  }
}

uint64_t BlueFin::GlPePrawnKf::GetTimeFullFixMs(BlueFin::GlPePrawnKf *this)
{
  if (*(this + 2) == 2)
  {
    return *(this + *(*this - 24) + 200);
  }

  else
  {
    return 4287767295;
  }
}

uint64_t non-virtual thunk toBlueFin::GlPePrawnKf::GetTimeFullFixMs(BlueFin::GlPePrawnKf *this)
{
  if (*(this - 1456) == 2)
  {
    return *(this + *(*(this - 729) - 24) - 5632);
  }

  else
  {
    return 4287767295;
  }
}

void BlueFin::GlPePrawnKf::GetInfoForPosHulaSource(BlueFin::GlPePrawnKf *this, unsigned int *a2, unsigned __int8 *a3, BOOL *a4, BOOL *a5)
{
  *a2 = 5000;
  *a3 = 3;
  *a4 = 0;
  *a5 = 0;
}

void non-virtual thunk toBlueFin::GlPePrawnKf::GetInfoForPosHulaSource(BlueFin::GlPePrawnKf *this, unsigned int *a2, unsigned __int8 *a3, BOOL *a4, BOOL *a5)
{
  *a2 = 5000;
  *a3 = 3;
  *a4 = 0;
  *a5 = 0;
}

double BlueFin::GlPePrawnKf::GetStP(BlueFin::GlPePrawnKf *this, double *a2, double *a3, double *a4)
{
  v4 = *(this + 83);
  v6 = *(v4 + 8);
  v5 = *(v4 + 16);
  *a2 = *(v6 + 8);
  *a3 = *(v6 + 16);
  result = *(v5 + 16);
  *a4 = result;
  return result;
}

double non-virtual thunk toBlueFin::GlPePrawnKf::GetStP(BlueFin::GlPePrawnKf *this, double *a2, double *a3, double *a4)
{
  v4 = *(this - 646);
  v6 = *(v4 + 8);
  v5 = *(v4 + 16);
  *a2 = *(v6 + 8);
  *a3 = *(v6 + 16);
  result = *(v5 + 16);
  *a4 = result;
  return result;
}

uint64_t BlueFin::GlPePrawnKf::IsExtLocAvailable(BlueFin::GlPePrawnKf *this, char a2)
{
  v4 = *(this + 905);
  v5 = (*(*this + 184))(this);
  v6 = (*(*this + 216))(this);
  if (BlueFin::GlPeExtLoc::IsPosLocMeasAvailable(v4, v5, v6, a2))
  {
    v7 = *(*(this + 905) + 136);
    if (v7)
    {
      v8 = *(v7 + 3009) ^ 1;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

BOOL BlueFin::GlPePrawnKf::IsFirstFixConditionForExtLoc(BlueFin::GlPePrawnKf *this)
{
  v2 = *(this + 2);
  v3 = (*(*this + 96))(this);
  result = v3 == 1 || v2 == 2;
  if (v2 == 2 && v3 != 1)
  {
    v6 = *(this + *(*this - 24) + 200);
    return (v6 - (*(*this + 120))(this)) >> 4 > 0x36A;
  }

  return result;
}

float BlueFin::GlPePrawnKf::Update(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (*(a1 + 2) != 2)
  {
    v38 = "IsKfInit()";
    DeviceFaultNotify("glpe_prawnkf.cpp", 985, "Update", "IsKfInit()");
    v39 = 985;
    goto LABEL_34;
  }

  if (!*(a2 + 800))
  {
    v28 = 0;
    goto LABEL_29;
  }

  v40 = 0;
  v6 = (a2 + 8 * *(a2 + 804));
  v42 = a1 + 573;
  v41 = a1 + 583;
  do
  {
    v7 = *v6;
    if ((*(*v6 + 48) & 1) == 0)
    {
      v38 = "(*it)->bValid";
      DeviceFaultNotify("glpe_prawnkf.cpp", 990, "Update", "(*it)->bValid");
      v39 = 990;
      goto LABEL_34;
    }

    v87[0] = v88;
    v87[1] = 0x100000000;
    v88[0] = 0;
    v88[1] = 0;
    v85[0] = v86;
    v85[1] = 0x100000000;
    v86[0] = 0;
    v86[1] = 0;
    v83[0] = v84;
    v83[1] = 0x100000000;
    v84[0] = 0;
    v84[1] = 0;
    v81[0] = v82;
    v81[1] = 0xD00000000;
    memset(v82, 0, sizeof(v82));
    *v75 = xmmword_298A442E0;
    v73 = &v75[16];
    v74 = v80;
    v80[0] = 0;
    v80[1] = &v75[8];
    if (*(v7 + 24) == -1)
    {
      v8 = 394305;
    }

    else
    {
      v8 = 132161;
    }

    v9 = a1 + *(*a1 - 24);
    v10 = *(v9 + 88);
    v11 = *a1[732];
    v12 = *(v9 + 208);
    v13 = *(v9 + 216);
    v14 = *(v9 + 224);
    v15 = *(v9 + 232);
    v16 = a1[582];
    v60[0] = v81;
    v60[1] = v42;
    v60[2] = v10;
    v61 = v11;
    v62 = 3;
    v63 = v8;
    v64 = v9 + 104;
    v65 = v41;
    v66 = v9 + 152;
    v67 = v12;
    v68 = v13;
    v69 = v14;
    v70 = v15;
    v71 = v16;
    v72 = 0x4008000000000000;
    v56[0] = v87;
    v56[1] = v85;
    v56[2] = &v73;
    v56[3] = v83;
    v57 = 0uLL;
    v58 = 0uLL;
    v59 = 0;
    if ((*(*a1[731] + 16))(a1[731], v60, v56))
    {
      v38 = "m_rotComputeZRH.Compute(otInp, otOut, *it, GlSet128::BIT0) == SKF_ZRH_OK";
      DeviceFaultNotify("glpe_prawnkf.cpp", 1005, "Update", "m_rotComputeZRH.Compute(otInp, otOut, *it, GlSet128::BIT0) == SKF_ZRH_OK");
      v39 = 1005;
      goto LABEL_34;
    }

    v17 = *(v87[0] + 8);
    v18 = *(v85[0] + 8);
    v19 = *(v83[0] + 8);
    v20 = *v6;
    v21 = *(*v6 + 44);
    if (v21)
    {
      if (v21 == 2)
      {
        v22 = 0;
        v23 = 12;
        goto LABEL_13;
      }

      v38 = "false";
      DeviceFaultNotify("glpe_prawnkf.cpp", 1021, "Update", "false");
      v39 = 1021;
LABEL_34:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_prawnkf.cpp", v39, v38);
    }

    v23 = 11;
    v21 = 1;
    v22 = 1;
LABEL_13:
    *(a1 + *(*a1 - 24) + 256) |= v21;
    if (*&v75[4] != 13)
    {
      v38 = "otH.GetColSize() == (IsStateEnabled(ID_STATE_GITO) ? KF_STATE_GITO : KF_MAX_STATE)";
      DeviceFaultNotify("glpe_prawnkf.cpp", 1025, "Update", "otH.GetColSize() == (IsStateEnabled(ID_STATE_GITO) ? KF_STATE_GITO : KF_MAX_STATE)");
      v39 = 1025;
      goto LABEL_34;
    }

    if (*v75 != 1)
    {
      v38 = "otH.GetRowSize() == 1";
      DeviceFaultNotify("glpe_prawnkf.cpp", 1026, "Update", "otH.GetRowSize() == 1");
      v39 = 1026;
      goto LABEL_34;
    }

    v44[1] = 0x1500000015;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v44[0] = &v45;
    v24 = *(v74 + 1);
    if ((a4 & 1) == 0)
    {
      *(&v45 + 1) = v24[1];
      v25 = v24[5];
      *&v46 = v24[3];
      *(&v46 + 1) = v25;
      *&v47 = v24[2];
      *(&v47 + 1) = v24[4];
      v26 = v24[13];
      *&v48 = v24[6];
      *&v55 = v26;
    }

    *(&v48 + 1) = v24[7];
    *&v49 = v24[8];
    if (BlueFin::GlPeShrimpKf::MeasUpdateINS(a1, v44, v23, v17 - v18, v19, 5.0, v20, 0))
    {
      if (v22)
      {
        LOBYTE(v40) = v40 + 1;
      }

      else
      {
        ++BYTE4(v40);
      }
    }

    ++v6;
  }

  while (v6 != (a2 + 8 * *(a2 + 804) + 8 * *(a2 + 800)));
  v28 = v40 > 2u || BYTE4(v40) > 2u;
LABEL_29:
  v29 = a1[731];
  LODWORD(v73) = 0;
  v74 = &v75[4];
  v75[0] = 8;
  *&v75[4] = 0u;
  v76 = 0u;
  v77 = xmmword_298A41DA0;
  v78 = vdup_n_s32(0x42C60000u);
  v79 = 1120272384;
  BlueFin::stDops::stDops(v44, &v73);
  *(&v49 + 1) = v29;
  v30 = *(a1 + *(*a1 - 24) + 200);
  BlueFin::GlPeMeasList::GetPrSignalIds(v81, a2);
  BlueFin::GlSignalIdSet::GetSvIdSet(v81, v60);
  v56[0] = *(a1 + *(*a1 - 24) + 88);
  LODWORD(v87[0]) = *a1[732];
  LODWORD(v85[0]) = 0;
  BlueFin::GlPeDops::GetDops();
  *(a1 + 5314) = v28;
  *(a1 + 5315) = *(&v77 + 1) <= 3.0;
  v31 = *a1;
  v32 = a1[83];
  v33 = *(v32[1] + 8) + *(v32[2] + 16);
  *(a1 + *(*a1 - 24) + 80) = sqrtf(v33);
  v34 = *(v32[3] + 24);
  *(a1 + *(v31 - 24) + 84) = sqrtf(v34);
  v35 = *(v32[4] + 32) + *(v32[5] + 40);
  *(a1 + *(v31 - 24) + 128) = sqrtf(v35);
  v36 = *(v32[6] + 48);
  result = sqrtf(v36);
  *(a1 + *(v31 - 24) + 140) = result;
  return result;
}

double BlueFin::GlPePrawnKf::GetXtcTaHdg(BlueFin::GlPePrawnKf *this, double *a2, unsigned int *a3)
{
  result = *(this + 1389);
  *a2 = result;
  *a3 = *(this + 2780);
  return result;
}

double non-virtual thunk toBlueFin::GlPePrawnKf::GetXtcTaHdg(BlueFin::GlPePrawnKf *this, double *a2, unsigned int *a3)
{
  result = *(this + 660);
  *a2 = result;
  *a3 = *(this + 1322);
  return result;
}

void BlueFin::GlPePrawnKf::GetSlowFilter(BlueFin::GlPePrawnKf *this)
{
  DeviceFaultNotify("glpe_prawnkf.h", 264, "GetSlowFilter", "false");
  __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_prawnkf.h", 264, "false");
}

{
  DeviceFaultNotify("glpe_prawnkf.h", 265, "GetSlowFilter", "false");
  __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_prawnkf.h", 265, "false");
}

float BlueFin::GlPePrawnKf::GetEstPosErr(BlueFin::GlPePrawnKf *this)
{
  result = 6378100.0;
  if (*(this + 2) == 2 && (*(this + 5818) & 1) == 0 && (*(*(this + 653) + 8) - 3) <= 3)
  {
    return *(this + *(*this - 24) + 80);
  }

  return result;
}

double BlueFin::GlPePrawnKf::GetInfoForPdrCalibration(uint64_t *a1, uint64_t a2, double *a3, uint64_t a4, double *a5, double *a6)
{
  v9 = *a1;
  v10 = a1 + *(*a1 - 24);
  *a2 = *(v10 + 8);
  *(a2 + 16) = *(v10 + 3);
  *a3 = (*(v9 + 304))();
  v11 = *a1;
  *a5 = *(a1 + *(*a1 - 24) + 176);
  result = *(a1 + *(v11 - 24) + 184);
  *a6 = result;
  return result;
}

void non-virtual thunk toBlueFin::GlPePrawnKf::GetSlowFilter(BlueFin::GlPePrawnKf *this)
{
  DeviceFaultNotify("glpe_prawnkf.h", 264, "GetSlowFilter", "false");
  __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_prawnkf.h", 264, "false");
}

{
  DeviceFaultNotify("glpe_prawnkf.h", 265, "GetSlowFilter", "false");
  __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_prawnkf.h", 265, "false");
}

BOOL non-virtual thunk toBlueFin::GlPePrawnKf::GetQbv(BlueFin::GlPePrawnKf *this, BlueFin::QuaternionD *a2)
{
  *a2 = *(this - 1016);
  *(a2 + 1) = *(this - 1000);
  return *(this - 1456) == 2 && (*(this - 14) & 1) == 0 && (*(*(this - 76) + 8) - 3) < 4;
}

BOOL non-virtual thunk toBlueFin::GlPePrawnKf::GetAccBias(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 - 1224);
  *(a2 + 16) = *(a1 - 1208);
  return *(a1 - 5824) == 2 && (*(a1 - 14) & 1) == 0 && (*(*(a1 - 608) + 8) - 3) < 4;
}

double non-virtual thunk toBlueFin::GlPePrawnKf::GetInfoForPdrCalibration(uint64_t a1, uint64_t a2, double *a3, uint64_t a4, double *a5, double *a6)
{
  v8 = (a1 - 5832);
  v9 = *(a1 - 5832);
  v10 = a1 - 5832 + *(v9 - 24);
  *a2 = *(v10 + 8);
  *(a2 + 16) = *(v10 + 24);
  *a3 = (*(v9 + 304))(a1 - 5832);
  v11 = *v8;
  *a5 = *(v8 + *(*v8 - 24) + 176);
  result = *(v8 + *(v11 - 24) + 184);
  *a6 = result;
  return result;
}

float virtual thunk toBlueFin::GlPePrawnKf::GetEstPosErr(BlueFin::GlPePrawnKf *this)
{
  v1 = this + *(*this - 32);
  result = 6378100.0;
  if (*(v1 + 2) == 2 && (v1[5818] & 1) == 0 && (*(*(v1 + 653) + 8) - 3) <= 3)
  {
    return *&v1[*(*v1 - 24) + 80];
  }

  return result;
}

void *BlueFin::GlPeSubsetsKf::GlPeSubsetsKf(void *this)
{
  *this = this + 4;
  this[1] = this + 4;
  this[2] = this + 361;
  v1 = 160;
  v2 = vdupq_n_s32(0x43C80000u);
  do
  {
    v3 = (*this + v1);
    v3[-10].i64[0] = 0;
    v3[-10].i64[1] = 0;
    *(&v3[-8] + 4) = 0uLL;
    v3[-9].i64[0] = 0;
    v3[-9].i64[1] = v3[-8].i64 + 4;
    v3[-8].i8[0] = 19;
    *(&v3[-7] + 4) = 0uLL;
    *(&v3[-6] + 4) = 0uLL;
    *(&v3[-5] + 4) = 0uLL;
    *(&v3[-4] + 4) = 0uLL;
    v3[-3] = 0uLL;
    v3[-2] = v2;
    v3[-1] = v2;
    v3->i8[0] = 0;
    v1 += 168;
  }

  while (v1 != 3016);
  return this;
}

uint64_t BlueFin::GlPeLocationHubCb::OnTimerSet(uint64_t this, unsigned int a2)
{
  if ((a2 & 0x80000000) == 0)
  {
    v2 = *(this + 8);
    *(v2 + 168) = v2;
    this = BlueFin::GlTimer::arm((v2 + 136), 55, 0, a2);
    *(v2 + 160) = 1;
  }

  return this;
}

uint64_t BlueFin::GlPeLocationHubCb::OnLog(uint64_t a1, int a2, const char *a3)
{
  switch(a2)
  {
    case 1:
      v4 = 15;
      break;
    case 4:
      v4 = 11;
      break;
    case 2:
      v4 = 14;
      break;
    default:
      (*(*a1 + 72))(a1, 2, "Using Wrong loggging level", "/Library/Caches/com.apple.xbs/Sources/FIREGPS7/proprietary/deliverables/gll_dev/glposeng/req_mgr/glpe_location_hub_mgr.cpp", 74);
      v4 = 8;
      break;
  }

  return BlueFin::GlUtils::SysLogForce(BlueFin::GlUtils::m_pInstance, v4, "%s", a3);
}

uint64_t BlueFin::GlPeLocationHubCb::OnLhStart(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (*(v4 + 200) != 1)
  {
    (*(*a2 + 24))(a2);
    v4 = *(a1 + 8);
  }

  v5 = *(v4 + 128);
  v6 = *(v5 + 88);
  if (v6 > 0x22)
  {
    goto LABEL_19;
  }

  if (((1 << v6) & 0x255504C40) != 0)
  {
    v7 = 1;
    goto LABEL_6;
  }

  if (v6 == 34)
  {
    v7 = (*(v5 + 92) & 3) != 0;
  }

  else
  {
LABEL_19:
    v7 = 0;
  }

LABEL_6:
  (*(*a2 + 40))(a2, v7);
  v8 = *(*(a1 + 8) + 128);
  if (*(v8 + 11567) == 1)
  {
    (*(*a2 + 64))(a2);
    v8 = *(*(a1 + 8) + 128);
  }

  v9 = *(v8 + 156);
  v12 = v8 + 144;
  v10 = *(v8 + 144);
  v11 = *(v12 + 4);
  v13 = *(v12 + 4) == 0xFF;
  if (*(v12 + 4) == 0xFF)
  {
    v14 = 3;
  }

  else
  {
    v14 = 2;
  }

  if ((~v11 & 0x7F) == 0)
  {
    v13 = v14;
  }

  if ((~v11 & 0xF) != 0)
  {
    v15 = v13;
  }

  else
  {
    v15 = v13 | 4u;
  }

  (*(*a2 + 16))(a2, v9, 4294959103, v15, (v10 << 22 >> 31) & 0xF);
  return 1;
}

uint64_t BlueFin::GlPeLocationHubCb::OnResource(uint64_t result, int a2, int a3)
{
  if (a2 == 1)
  {
    v3 = *(*(result + 8) + 112);
    if (a3)
    {
      v4 = *(v3 + 72);
      if (v4 && (*(v3 + 296) & 1) == 0)
      {
        result = v4(*(v3 + 8), 0);
        if (!result)
        {
          *(v3 + 296) = 1;
        }
      }
    }

    else
    {
      v5 = *(v3 + 80);
      if (v5)
      {
        result = v5(*(v3 + 8), 0);
        *(v3 + 296) = 0;
      }
    }
  }

  return result;
}

uint64_t BlueFin::GlPeLocationHubCb::OnLhStop(uint64_t result, int a2, const char *a3, const char *a4, int a5)
{
  if (a2)
  {
    v5 = result;
    BlueFin::GlUtils::SysLogForce(BlueFin::GlUtils::m_pInstance, 2, "LH FAILED: %s AT %s:%d\n", a3, a4, a5);
    v6 = (*(*(v5 + 8) + 120) + 126184);

    return BlueFin::GlQueue::putFIFO(v6, 67, 0);
  }

  return result;
}

uint64_t BlueFin::GlPeLocationHubCb::OnPatchRead(BlueFin::GlPeLocationHubCb *this, unsigned __int8 *a2, int a3)
{
  v8 = a3;
  v3 = *(*(this + 1) + 112);
  v4 = *(v3 + 264);
  if (v4)
  {
    v5 = v4(*(v3 + 8), a2, &v8);
    v6 = v8;
    if ((v5 & 1) == 0)
    {
      return -1;
    }
  }

  else
  {
    return -1;
  }

  return v6;
}

uint64_t BlueFin::GlPeLocationHubCb::OnPatchClose(uint64_t this)
{
  v1 = *(*(this + 8) + 112);
  v2 = *(v1 + 264);
  if (v2)
  {
    return v2(*(v1 + 8), 0, 0);
  }

  return this;
}

uint64_t BlueFin::GlPeLocationHubCb::OnGnssTurnedOn(BlueFin::GlPeLocationHubCb *this, int a2)
{
  v2 = *(*(this + 1) + 120);
  if (a2)
  {
    result = BlueFin::GlQueue::putFIFO((v2 + 126184), 52, 0);
    *(v2 + 126254) = 1;
  }

  else
  {

    return BlueFin::GlQueue::putFIFO((v2 + 126184), 54, 0);
  }

  return result;
}

__int16 *BlueFin::GlPeLocationHubCb::OnGnssData(__int16 *this, unsigned __int8 *a2, unsigned int a3)
{
  v3 = a3;
  v4 = a2;
  v5 = this;
  if (a3 >= 0x10D)
  {
    if (a3 >= 1)
    {
      do
      {
        v7 = v3;
        if (v3 >= 0x10Cu)
        {
          v8 = 268;
        }

        else
        {
          v8 = v3;
        }

        BlueFin::GlReqSm::ReceiveChipData((*(*(v5 + 1) + 120) + 126144), v4, v8);
        this = BlueFin::GlReqSm::ProcessChipData((*(*(v5 + 1) + 120) + 126144), v9);
        v3 -= 268;
        v4 += 268;
      }

      while (v7 > 0x10C);
    }
  }

  else
  {
    v6 = (*(*(this + 1) + 120) + 126144);

    return BlueFin::GlReqSm::ReceiveChipData(v6, a2, a3);
  }

  return this;
}

uint64_t BlueFin::GlPeLocationHubCb::OnSensorData(uint64_t this, unsigned __int8 *a2, unsigned int a3)
{
  if (a3)
  {
    v4 = *(this + 8);
    v5 = (v4 + 213);
    v6 = a3;
    v7 = *(v4 + 204);
    do
    {
      v9 = *a2++;
      v8 = v9;
      if (v7 <= 1)
      {
        if (v7)
        {
          if (v7 == 1)
          {
            if (v8 == 93)
            {
              goto LABEL_21;
            }

            v7 = 1;
          }
        }

        else
        {
          if (v8 == 91)
          {
            v7 = 2;
            goto LABEL_53;
          }

          v7 = 0;
        }
      }

      else
      {
        switch(v7)
        {
          case 2:
            if (v8 <= 0x14 && (v8 & 3) == 0)
            {
              *(v4 + 208) = v8 - 3;
              *(v4 + 210) = 0;
              *(v4 + 212) = v8;
              v7 = 3;
            }

            else
            {
LABEL_21:
              v7 = 0;
            }

LABEL_53:
            *(v4 + 204) = v7;
            break;
          case 3:
            *(v4 + 212) += v8;
            v13 = *(v4 + 210);
            *(v4 + 210) = v13 + 1;
            v5[v13] = v8;
            if (*(v4 + 208) == (v13 + 1))
            {
              v7 = 4;
              goto LABEL_53;
            }

            v7 = 3;
            break;
          case 4:
            if (*(v4 + 212) != v8)
            {
              goto LABEL_52;
            }

            v19 = 1;
            v20 = v21;
            v10 = *v5;
            if (v10 > 5)
            {
              if (*v5 > 0x12u)
              {
                if (v10 == 19)
                {
                  v11 = 0;
                  v21[0] = 8;
                }

                else
                {
                  if (v10 != 80)
                  {
                    goto LABEL_52;
                  }

                  v11 = 0;
                  v21[0] = 10;
                }

                goto LABEL_44;
              }

              if (v10 != 6)
              {
                if (v10 != 16)
                {
                  goto LABEL_52;
                }

LABEL_35:
                v21[0] = 2;
                v11 = 1;
                goto LABEL_44;
              }

              v11 = 0;
              v14 = 4;
            }

            else
            {
              if (*v5 <= 2u)
              {
                if (v10 != 1)
                {
                  if (v10 == 2)
                  {
                    v11 = 0;
                    v21[0] = 1;
                    goto LABEL_44;
                  }

LABEL_52:
                  v7 = 1;
                  goto LABEL_53;
                }

                v11 = 0;
                v21[0] = 0;
LABEL_44:
                v21[1] = *(v4 + 214);
                v15 = *(v4 + 208);
                if (v15 != 5)
                {
                  if (v15 == 9)
                  {
                    LODWORD(v22) = *(v4 + 218);
                  }

                  else
                  {
                    if (v15 != 17)
                    {
                      goto LABEL_52;
                    }

                    if (v11)
                    {
                      v16 = (*(v4 + 218) * -180.0) / 3.14159265;
                      *&v22 = v16;
                      v17 = (*(v4 + 222) * -180.0) / 3.14159265;
                      *(&v22 + 1) = v17;
                      v18 = (*(v4 + 226) * -180.0) / 3.14159265;
                      v23 = v18;
                    }

                    else
                    {
                      v22 = *(v4 + 218);
                      v23 = *(v4 + 226);
                    }
                  }
                }

                this = (*(**(v4 + 120) + 352))(*(v4 + 120), &v19);
                goto LABEL_52;
              }

              if (v10 != 3)
              {
                if (v10 != 4)
                {
                  goto LABEL_52;
                }

                goto LABEL_35;
              }

              v11 = 0;
              v14 = 3;
            }

            v21[0] = v14;
            goto LABEL_44;
        }
      }

      --v6;
    }

    while (v6);
  }

  return this;
}

uint64_t BlueFin::GlPeMeasFilter::UpdateRng(uint64_t result, unsigned int a2, unsigned __int8 *a3, int a4, int a5, char a6, double a7, double a8)
{
  v8 = *(result + 24);
  if (a5)
  {
    v9 = *(result + 8);
    v10 = v9 + 500;
    if (v9 + 500 >= a2)
    {
      v11 = 0;
    }

    else
    {
      v11 = *(result + 8);
    }

    v12 = -((a2 - v11) * a8);
    v13 = *a3;
    if (v13 < 0x42)
    {
      v14 = 1;
    }

    else
    {
      v14 = a6;
    }

    if (v13 >= 0x34)
    {
      a6 = v14;
    }
  }

  else
  {
    if (*(result + 36))
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 12) = 0;
      *(result + 16) = 1;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 36) = 0;
      return result;
    }

    v12 = a8 * -1000.0;
    v9 = *(result + 8);
    v10 = v9 + 500;
  }

  v15 = a7 * 1000.0;
  v16 = *(result + 16);
  if (v16 > 59)
  {
    v17 = 1;
  }

  else
  {
    v17 = a6;
  }

  v18 = v10 < a2 && v9 + 5000 >= a2;
  if (!v18 || (v17 & 1) != 0 || (a4 - *(result + 32)) >= 0x9C5)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 12) = 0;
    v16 = 1;
    *(result + 16) = 1;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 36) = 0;
    if (v17)
    {
      return result;
    }

    if (v9 >= a2)
    {
      v8 = 0.0;
    }

    goto LABEL_28;
  }

  if (v16 > 2)
  {
    v21 = v12 * 299792458.0 / 1000.0;
    if ((a5 & 1) == 0)
    {
      v21 = v21 + v8 * -299792458.0 / 1000.0;
    }

    v22 = v21;
    if (v22 <= 262140.0)
    {
      if (v22 >= -262140.0)
      {
        goto LABEL_40;
      }

      v23 = 524290.0;
    }

    else
    {
      v23 = -524290.0;
    }

    v22 = v22 + v23;
LABEL_40:
    v24 = (v22 * -1000.0) / 299792458.0;
    v25 = *result + v24;
    v26 = 1.0;
    if (v25 <= 1.0)
    {
      if (v25 >= 0.0)
      {
LABEL_44:
        v27 = v15 - floor(v15);
        if (vabdd_f64(v27, v25) > 0.5)
        {
          if (v27 <= v25)
          {
            v27 = v27 + 1.0;
          }

          else
          {
            v25 = v25 + 1.0;
          }
        }

        v19 = v25 * (1.0 - (1.0 / v16)) + (1.0 / v16) * v27;
        if (v19 >= 1.0)
        {
          v19 = v19 + -1.0;
        }

        goto LABEL_29;
      }
    }

    else
    {
      v26 = -1.0;
    }

    v25 = v25 + v26;
    goto LABEL_44;
  }

LABEL_28:
  v19 = v15 - floor(v15);
LABEL_29:
  *result = v19;
  *(result + 8) = a2;
  v20 = v12 + v8;
  if (!a5)
  {
    v20 = v12;
  }

  *(result + 24) = v20;
  *(result + 36) = a5;
  *(result + 32) = a4;
  *(result + 16) = v16 + 1;
  return result;
}

char *BlueFin::GlPeNmeaGen::FormatNmeaGNS(uint64_t a1, uint64_t a2, BlueFin::GlFormat *this, const char *a4)
{
  v6 = this + a4 - 1;
  *this = 0;
  v7 = *(a2 + 4274);
  if (!*(a2 + 4048) || (*(a2 + 4068) & 8) != 0)
  {
    if (v6 > this)
    {
      v25 = a4;
    }

    else
    {
      v25 = 0;
    }

    v27 = (this + BlueFin::GlFormat::glsnprintf(this, v25, "$GNGNS,%s,", a4, a1 + 1767));
    v28 = v6 + 1;
    if (v6 <= v27)
    {
      v29 = 0;
    }

    else
    {
      v29 = (v6 + 1 - v27);
    }

    if (*(a2 + 4049))
    {
      v62 = *(a2 + 4096);
      v64 = *(a2 + 4112);
      v60 = *(a2 + 4120);
      v58 = v7;
      v30 = ",,,,%c%c%c%c%c%c,%02d,%.1f,%.1f,%.1f,,";
    }

    else
    {
      v60 = *(a2 + 4120);
      v58 = v7;
      v30 = ",,,,%c%c%c%c%c%c,%02d,%.1f,,,,";
    }

    v31 = BlueFin::GlFormat::glsnprintf(v27, v29, v30, v26, 78, 78, 78, 78, 78, 78, v58, v60, v62, *&v64);
  }

  else
  {
    v8 = *(a2 + 4072);
    v9 = fabs(v8);
    v10 = fabs(*(a2 + 4080));
    v11 = v9;
    v12 = v10;
    v13 = (v9 - v11) * 60.0;
    v14 = v13;
    v15 = (v13 - v14) * 1000000.0;
    v16 = (v10 - v12) * 60.0;
    v69 = v16;
    v70 = v12;
    v17 = (v16 - v69) * 1000000.0;
    v18 = 78;
    if (v7 < 1)
    {
      v20 = 69;
      v24 = 78;
      v66 = 78;
      v67 = 78;
      v68 = 78;
    }

    else
    {
      if (*(a2 + 5624))
      {
        v19 = 68;
      }

      else
      {
        v19 = 78;
      }

      if (*(a2 + 4280))
      {
        v20 = 65;
      }

      else
      {
        v20 = v19;
      }

      if (*(a2 + 4296))
      {
        v21 = 65;
      }

      else
      {
        v21 = 78;
      }

      v68 = v21;
      if (*(a2 + 4328))
      {
        v22 = 65;
      }

      else
      {
        v22 = 78;
      }

      v67 = v22;
      if (*(a2 + 4320))
      {
        v23 = 65;
      }

      else
      {
        v23 = 78;
      }

      v66 = v23;
      if (*(a2 + 4304))
      {
        v24 = 65;
      }

      else
      {
        v24 = 78;
      }

      if (*(a2 + 4336))
      {
        v18 = 65;
      }

      else
      {
        v18 = 78;
      }
    }

    v33 = v17;
    v34 = *(a2 + 4060);
    if (v34 == 7 || v34 == 4)
    {
      v20 = 77;
    }

    if (v6 > this)
    {
      v35 = a4;
    }

    else
    {
      v35 = 0;
    }

    v52 = v11;
    v36 = 83;
    if (v8 >= 0.0)
    {
      v36 = 78;
    }

    v37 = BlueFin::GlFormat::glsnprintf(this, v35, "$GNGNS,%s,%02d%02d.%06d,%c,", a4, a1 + 1767, v52, v14, v15, v36);
    v39 = this + v37;
    v28 = v6 + 1;
    if (v6 <= v39)
    {
      v40 = 0;
    }

    else
    {
      v40 = (v6 + 1 - v39);
    }

    v41 = 87;
    if (*(a2 + 4080) >= 0.0)
    {
      v41 = 69;
    }

    v43 = &v39[BlueFin::GlFormat::glsnprintf((this + v37), v40, "%03d%02d.%06d,%c,%c%c%c%c%c%c,%02d,", v38, v70, v69, v33, v41, v20, v68, v67, v66, v24, v18, v7)];
    if (v6 <= v43)
    {
      v44 = 0;
    }

    else
    {
      v44 = (v28 - v43);
    }

    v27 = (v43 + BlueFin::GlFormat::glsnprintf(v43, v44, "%.1f,%.1f,%.1f,", v42, *(a2 + 4120), *(a2 + 4096), *(a2 + 4112)));
    if (v6 <= v27)
    {
      v46 = 0;
    }

    else
    {
      v46 = (v28 - v27);
    }

    if (*(a2 + 5624))
    {
      v31 = BlueFin::GlFormat::glsnprintf(v27, v46, "%.1f,%04d", v45, *(a2 + 7300), *(a2 + 7296), v54, v55, v56, v57, v59, v61, v63, v65);
    }

    else
    {
      v31 = BlueFin::GlFormat::glsnprintf(v27, v46, ",", v45, v51, v53, v54, v55, v56, v57, v59, v61, v63, v65);
    }
  }

  v47 = (v27 + v31);
  if (v6 <= v47)
  {
    v48 = 0;
  }

  else
  {
    v48 = (v28 - v47);
  }

  BlueFin::GlFormat::glsnprintf(v47, v48, ",%c", v32, 86);

  return BlueFin::GlPeNmeaGen::nmeaAddChksum(this, v6, v49);
}

char *BlueFin::GlPeNmeaGen::FormatNmeaRID(BlueFin::GlPeNmeaGen *this, BlueFin::GlFormat *a2, int a3, const char *a4)
{
  v6 = *(*(this + 229) + 88);
  if (v6 <= 0x28)
  {
    v7 = BlueFin::ulRfType2AsicNumber[v6];
  }

  else
  {
    v7 = 0;
  }

  BlueFin::GlFormat::glsnprintf(a2, a3, "$PGLOR,%d,RID,%u,%d,%d,%d,%u", a4, 0, v7, 162, 20, 25, 643487);

  return BlueFin::GlPeNmeaGen::nmeaAddChksum(a2, a2 + a3 - 1, v8);
}

char *BlueFin::GlPeNmeaGen::FormatNmeaNVM(BlueFin::GlPeNmeaGen *this, BlueFin::GlFormat *a2, int a3, const char *a4, int a5)
{
  for (i = 0; i != 6; ++i)
  {
    v8 = BlueFin::GlPeNmeaGen::FormatNmeaNVM(char *,short,unsigned int,unsigned int)::pcIdentifier[i];
    v9 = __const__ZN7BlueFin11GlPeNmeaGen13FormatNmeaNVMEPcsjj_aulCheck[i];
    if ((v9 & a4) != 0)
    {
      v10 = -32;
    }

    else
    {
      v10 = 0;
    }

    v15[i] = v10 + v8;
    if ((v9 & a5) != 0)
    {
      v11 = -32;
    }

    else
    {
      v11 = 0;
    }

    v14[i] = v11 + v8;
  }

  BlueFin::GlFormat::glsnprintf(a2, a3, "$PGLOR,%d,NVM,%s,%s", a4, 0, v15, v14);
  return BlueFin::GlPeNmeaGen::nmeaAddChksum(a2, a2 + a3 - 1, v12);
}

char *BlueFin::GlPeNmeaGen::FormatNmeaPFM(BlueFin::GlPeNmeaGen *this, const BlueFin::GlPePlatfStat *a2, BlueFin::GlFormat *a3, const char *a4)
{
  v6 = a3 + a4 - 1;
  if (v6 <= a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a4;
  }

  v8 = BlueFin::GlFormat::glsnprintf(a3, v7, "$PGLOR,%d,PFM,HAL,%c,%d,%d,%d,%d,RF,%c,%d,%.1f,%.0f,", a4, 2, str_104_0[*a2], *(a2 + 2), *(a2 + 3), *(a2 + 4), *(a2 + 5), str_104_0[*(a2 + 41)], *(a2 + 84), *(a2 + 44), *(a2 + 48));
  v9 = a3 + v8;
  if (v6 > v9)
  {
    v10 = v6 - v9 + 1;
  }

  else
  {
    v10 = 0;
  }

  v12 = &v9[BlueFin::GlPeNmeaGen::FormatNmeaPFM_Rtc(v8, a2, (a3 + v8), v10)];
  if (v6 > v12)
  {
    v13 = (v6 - v12 + 1);
  }

  else
  {
    v13 = 0;
  }

  v14 = BlueFin::GlFormat::glsnprintf(v12, v13, ",STO,%c,LTO,%c,SW,%c,", v11, str_104_0[*(a2 + 52)], str_104_0[*(a2 + 53)], str_104_0[*(a2 + 54)]);
  v15 = (v12 + v14);
  if (v6 > v15)
  {
    v16 = v6 - v15 + 1;
  }

  else
  {
    v16 = 0;
  }

  v17 = BlueFin::GlPeNmeaGen::FormatNmeaPFM_Cntin(v14, a2, v15, v16);
  v18 = (v15 + v17);
  if (v6 > v18)
  {
    v19 = v6 - v18 + 1;
  }

  else
  {
    v19 = 0;
  }

  BlueFin::GlPeNmeaGen::FormatNmeaPFM_Osc(v17, a2, v18, v19);

  return BlueFin::GlPeNmeaGen::nmeaAddChksum(a3, v6, v20);
}

uint64_t BlueFin::GlPeNmeaGen::FormatNmeaPFM_Rtc(BlueFin::GlPeNmeaGen *this, const BlueFin::GlPePlatfStat *a2, BlueFin::GlFormat *a3, const char *a4)
{
  v6 = a3 + a4;
  v7 = v6 - 1;
  v8 = *(a2 + 51);
  if (v6 - 1 <= a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = a4;
  }

  v10 = BlueFin::GlFormat::glsnprintf(a3, v9, "RTC,", a4);
  v12 = (a3 + v10);
  if (*(a2 + 196) == 1)
  {
    if (v7 <= v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = (v6 - v12);
    }

    v12 = (v12 + BlueFin::GlFormat::glsnprintf((a3 + v10), v13, "%.1f", v11, (*(a2 + 50) * 1000000.0)));
  }

  if (v8 == 2)
  {
    LODWORD(v14) = 70;
  }

  else
  {
    LODWORD(v14) = 45;
  }

  if (v8 == 1)
  {
    v14 = 80;
  }

  else
  {
    v14 = v14;
  }

  if (v7 <= v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = (v6 - v12);
  }

  return v12 + BlueFin::GlFormat::glsnprintf(v12, v15, ",%c", v11, v14) - a3;
}

unint64_t BlueFin::GlPeNmeaGen::FormatNmeaPFM_Cntin(BlueFin::GlPeNmeaGen *this, const BlueFin::GlPePlatfStat *a2, BlueFin::GlFormat *a3, const char *a4)
{
  if ((*(a2 + 55) - 8) < 0xFFFFFFF9)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(a2 + 55);
  }

  if (v4 != 3)
  {
    return BlueFin::GlFormat::glsnprintf(a3, a4, BlueFin::GlPeNmeaGen::FormatNmeaPFM_Cntin(BlueFin::GlPePlatfStat const&,char *,short)::paCntinStrings[v4], a4, *(a2 + 56));
  }

  v5 = *(a2 + 57);
  if (v5 >= 8)
  {
    v5 = 8;
  }

  return BlueFin::GlFormat::glsnprintf(a3, a4, "CNTIN,NM,%s,", a4, BlueFin::GlPeNmeaGen::FormatNmeaPFM_Cntin(BlueFin::GlPePlatfStat const&,char *,short)::paCntinErrors[v5]);
}

uint64_t BlueFin::GlPeNmeaGen::FormatNmeaPFM_Osc(BlueFin::GlPeNmeaGen *this, const BlueFin::GlPePlatfStat *a2, BlueFin::GlFormat *a3, const char *a4)
{
  v6 = a3 + a4;
  v7 = v6 - 1;
  if (v6 - 1 <= a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = a4;
  }

  v9 = BlueFin::GlFormat::glsnprintf(a3, v8, "OSC,", a4);
  v11 = a3 + v9;
  if (*(a2 + 59))
  {
    v12 = *(a2 + 60);
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a2 + 61);
  if (v7 <= v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = (v6 - v11);
  }

  v16 = &v11[BlueFin::GlFormat::glsnprintf((a3 + v9), v14, "%c,", v10, str_125[*(a2 + 59)])];
  if (v7 <= v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = (v6 - v16);
  }

  v18 = BlueFin::GlFormat::glsnprintf(v16, v17, "%c,", v15, str_125[v12]);
  v20 = v16 + v18;
  if (v12 && v13)
  {
    if (v7 <= v20)
    {
      v21 = 0;
    }

    else
    {
      v21 = (v6 - v20);
    }

    LODWORD(v20) = v20 + BlueFin::GlFormat::glsnprintf((v16 + v18), v21, "%c", v19, str_125[v13]);
  }

  return (v20 - a3);
}

char *BlueFin::GlPeNmeaGen::FormatNmeaFTS(uint64_t a1, uint64_t a2, BlueFin::GlFormat *this, const char *a4)
{
  v148 = *MEMORY[0x29EDCA608];
  v7 = this + a4;
  v8 = v7 - 1;
  if (v7 - 1 <= this)
  {
    v9 = 0;
  }

  else
  {
    v9 = a4;
  }

  v10 = BlueFin::GlFormat::glsnprintf(this, v9, "$PGLOR,%d,FTS,", a4, 11);
  v11 = *(a2 + 12);
  if ((v11 - 1) >= 0x20)
  {
    if ((v11 - 52) >= 0xE)
    {
      if ((v11 - 33) >= 0x13)
      {
        if ((v11 - 66) >= 0xA)
        {
          v13 = v11 - 76;
          v14 = v11 - 139;
          if ((v11 - 175) < 0xE)
          {
            v12 = 6;
          }

          else
          {
            v12 = 7;
          }

          if (v14 < 0x24)
          {
            v12 = 5;
          }

          if (v13 < 0x3F)
          {
            v12 = 4;
          }
        }

        else
        {
          v12 = 3;
        }
      }

      else
      {
        v12 = 1;
      }
    }

    else
    {
      v12 = 2;
    }
  }

  else
  {
    v12 = 0;
  }

  v15 = (this + v10);
  v16 = BlueFin::GNSS2CHARCODE(v12);
  v18 = *(a2 + 320);
  if (v18 == 3)
  {
    v19 = 65;
  }

  else if (v18 == 4)
  {
    v19 = 67;
  }

  else
  {
    v19 = v16;
  }

  if (*a2)
  {
    v20 = *(a2 + 12);
    if ((*(a2 + 12) - 52) > 0xDu)
    {
      v21 = BlueFin::GlSvId::s_aucSvId2prn[v20];
    }

    else
    {
      v21 = (v20 - 59);
    }

    if (v8 <= v15)
    {
      v31 = 0;
    }

    else
    {
      v31 = (v7 - v15);
    }

    v33 = (v15 + BlueFin::GlFormat::glsnprintf(v15, v31, "%d,", v17, v21));
    if (*(a2 + 14) && *(a2 + 206))
    {
      if (v8 <= v33)
      {
        v34 = 0;
      }

      else
      {
        v34 = (v7 - v33);
      }

      v35 = *(a2 + 56);
      if (*(a2 + 16))
      {
        v36 = BlueFin::GlFormat::glsnprintf(v33, v34, "%.1lf,%.1lf,dBm,%.1lf,%.1lf,%.1lf,%.1lf,dBHz,", v32, *(a2 + 24) + v35, v35 + *(a2 + 32), v35 + *(a2 + 40), v35 + *(a2 + 48), *(a2 + 40), *(a2 + 48));
        goto LABEL_99;
      }

      v140 = v35 + *(a2 + 40);
      v144 = *(a2 + 40);
      v130 = *(a2 + 24) + v35;
      v38 = "%.1lf,,dBm,%.1lf,,%.1lf,,dBHz,";
    }

    else
    {
      if (v8 <= v33)
      {
        v34 = 0;
      }

      else
      {
        v34 = (v7 - v33);
      }

      v38 = ",,dBm,,,,,dBHz,";
    }

    v36 = BlueFin::GlFormat::glsnprintf(v33, v34, v38, v32, *&v130, *&v140, v144);
LABEL_99:
    v57 = (v33 + v36);
    if (v8 <= v57)
    {
      v58 = 0;
    }

    else
    {
      v58 = (v7 - v57);
    }

    if (*(a2 + 64))
    {
      v59 = BlueFin::GlFormat::glsnprintf(v57, v58, "%.1lf,%.1lf,", v37, *(a2 + 72) * 1000000000.0, *(a2 + 80) * 1000000000.0);
    }

    else
    {
      v59 = BlueFin::GlFormat::glsnprintf(v57, v58, ",,", v37, v131, v142);
    }

    v61 = (v57 + v59);
    if (v8 <= v61)
    {
      v62 = 0;
    }

    else
    {
      v62 = (v7 - v61);
    }

    if (*(a2 + 120))
    {
      v63 = BlueFin::GlFormat::glsnprintf(v61, v62, "%.1lf,", v60, *(a2 + 128) * 1000000.0);
    }

    else
    {
      v63 = BlueFin::GlFormat::glsnprintf(v61, v62, ",", v60, v134);
    }

    v65 = (v61 + v63);
    v66 = *(a2 + 100);
    if (*(*(a1 + 1832) + 136) == 1)
    {
      GlCustomLog(20, "<FTCW> CNTIN was requested, etCntInStatus (%d) \n", *(a2 + 100));
      v66 = *(a2 + 100);
      if (v66)
      {
        v67 = 0;
      }

      else
      {
        v67 = 3;
      }
    }

    else
    {
      v67 = 0;
    }

    if (v8 <= v65)
    {
      v68 = 0;
    }

    else
    {
      v68 = (v7 - v65);
    }

    if (v66 > 5)
    {
      v69 = BlueFin::GlFormat::glsnprintf(v65, v68, ",", v64, v135);
    }

    else
    {
      v69 = BlueFin::GlFormat::glsnprintf(v65, v68, "%s,", v64, (&off_29EEB4128[v67])[v66]);
    }

    v71 = v65 + v69;
    if (v8 <= v71)
    {
      v72 = 0;
    }

    else
    {
      v72 = (v7 - v71);
    }

    if (*(a2 + 104))
    {
      v73 = BlueFin::GlFormat::glsnprintf((v65 + v69), v72, "%.1lf,", v70, *(a2 + 112) * 1000000000.0);
    }

    else
    {
      v73 = BlueFin::GlFormat::glsnprintf((v65 + v69), v72, ",", v70, v136);
    }

    v75 = &v71[v73];
    v76 = *(a2 + 96);
    if (v8 <= v75)
    {
      v77 = 0;
    }

    else
    {
      v77 = (v7 - v75);
    }

    if (v76 && *(a2 + 14))
    {
      v78 = BlueFin::GlFormat::glsnprintf(v75, v77, "%d,%d,%.2lf,", v74, *(a2 + 92), v76, 100.0 - *(a2 + 92) * 100.0 / v76);
    }

    else
    {
      v78 = BlueFin::GlFormat::glsnprintf(v75, v77, ",,,", v74, v137, v143, v145);
    }

    v80 = (v75 + v78);
    if (v8 <= v80)
    {
      v81 = 0;
    }

    else
    {
      v81 = (v7 - v80);
    }

    v83 = (v80 + BlueFin::GlFormat::glsnprintf(v80, v81, "%u,", v79, *(a2 + 200)));
    v84 = *(a2 + 12);
    v85 = (v84 - 1);
    if (*(a2 + 152))
    {
      if (v85 >= 0x20)
      {
        if ((v84 - 52) < 0xE)
        {
          if (v8 <= v83)
          {
            v86 = 0;
          }

          else
          {
            v86 = (v7 - v83);
          }

          v87 = ",,";
          goto LABEL_159;
        }

        if ((v84 - 52) > 0xFFECu || (v84 - 76) > 0xFFF5u || (v84 - 139) > 0x23u)
        {
          goto LABEL_160;
        }
      }
    }

    else if (v85 >= 0x20)
    {
      if ((v84 - 52) < 0xE)
      {
        if (v8 <= v83)
        {
          v86 = 0;
        }

        else
        {
          v86 = (v7 - v83);
        }

        v88 = *(a2 + 164);
        v89 = *(a2 + 168);
        goto LABEL_158;
      }

      if ((v84 - 33) < 0x13 || (v84 - 66) < 0xAu)
      {
        goto LABEL_241;
      }

      if ((v84 - 76) < 0x3F)
      {
        if (v8 <= v83)
        {
          v86 = 0;
        }

        else
        {
          v86 = (v7 - v83);
        }

        v88 = *(a2 + 172);
        v89 = *(a2 + 176);
        goto LABEL_158;
      }

      if ((v84 - 139) > 0x23)
      {
LABEL_241:
        if (v8 <= v83)
        {
          v86 = 0;
        }

        else
        {
          v86 = (v7 - v83);
        }

        v87 = ",";
        goto LABEL_159;
      }
    }

    if (v8 <= v83)
    {
      v86 = 0;
    }

    else
    {
      v86 = (v7 - v83);
    }

    v88 = *(a2 + 156);
    v89 = *(a2 + 160);
LABEL_158:
    v138 = (v88 + v89);
    v87 = "%.1lf,";
LABEL_159:
    v83 = (v83 + BlueFin::GlFormat::glsnprintf(v83, v86, v87, v82, *&v138));
LABEL_160:
    if (v8 <= v83)
    {
      v90 = 0;
    }

    else
    {
      v90 = (v7 - v83);
    }

    v92 = (v83 + BlueFin::GlFormat::glsnprintf(v83, v90, "%c,", v82, 67));
    if (v8 <= v92)
    {
      v93 = 0;
    }

    else
    {
      v93 = (v7 - v92);
    }

    v94 = BlueFin::GlFormat::glsnprintf(v92, v93, "%c,", v91, v19);
    v96 = v92 + v94;
    v97 = *(a2 + 4);
    if (v97 != 5 && v97 != 3)
    {
      if (v8 <= v96)
      {
        v101 = 0;
      }

      else
      {
        v101 = (v7 - v96);
      }

      v102 = ",,";
      v103 = (v92 + v94);
      goto LABEL_190;
    }

    v98 = *(a2 + 304);
    if (v8 <= v96)
    {
      v99 = 0;
    }

    else
    {
      v99 = (v7 - v96);
    }

    if (v98 == 1)
    {
      v104 = 80;
    }

    else
    {
      if (v98 == 2)
      {
        v100 = ",";
LABEL_181:
        v106 = &v96[BlueFin::GlFormat::glsnprintf((v92 + v94), v99, v100, v95, *&v139)];
        if (v8 <= v106)
        {
          v107 = 0;
        }

        else
        {
          v107 = (v7 - v106);
        }

        v108 = BlueFin::GlFormat::glsnprintf(v106, v107, "%0.1lf,", v105, *(a2 + 308));
        v110 = *(a2 + 312);
        if (v110 == 0.0 && *(a2 + 304) != 1)
        {
          goto LABEL_191;
        }

        v103 = (v106 + v108);
        if (v8 <= v103)
        {
          v101 = 0;
        }

        else
        {
          v101 = (v7 - v103);
        }

        v139 = v110;
        v102 = "%0.1lf";
LABEL_190:
        BlueFin::GlFormat::glsnprintf(v103, v101, v102, v95, *&v139);
LABEL_191:
        v111 = *MEMORY[0x29EDCA608];

        return BlueFin::GlPeNmeaGen::nmeaAddChksum(this, v7 - 1, v109);
      }

      v104 = 70;
    }

    v139 = *&v104;
    v100 = "%c,";
    goto LABEL_181;
  }

  v147 = 0;
  v146 = 0;
  if (v19 == 82)
  {
    v22 = *(a2 + 12);
    v23 = v22 - 52;
    LODWORD(v24) = (v22 - 59);
    if (v23 >= 0xE)
    {
      v24 = 4294967288;
    }

    else
    {
      v24 = v24;
    }

    BlueFin::GlFormat::glsnprintf(&v146, 0xA, "(%d)", v17, v24);
  }

  if (*(a2 + 204))
  {
    v25 = *(a2 + 224);
    if (v25 >= -118.5 && *(*(a1 + 1832) + 26014) != 1 || (v26 = *(a2 + 208), v26 == 1.79769313e308) || (v27 = *(a2 + 216), v27 == 1.79769313e308))
    {
      if (v8 <= v15)
      {
        v39 = 0;
      }

      else
      {
        v39 = (v7 - v15);
      }

      v29 = BlueFin::GlFormat::glsnprintf(v15, v39, "CW,%.1lf,dBm,,,ppb,%c%s,", v17, *&v25, v19, &v146);
    }

    else
    {
      if (v8 <= v15)
      {
        v28 = 0;
      }

      else
      {
        v28 = (v7 - v15);
      }

      v29 = BlueFin::GlFormat::glsnprintf(v15, v28, "CW,%.1lf,dBm,%.0lf,%.1lf,ppb,%c%s,", v17, v25 + 0.05, v26 * 1000000000.0 + 0.5, v27 * 1000000000.0 + 0.05, v19, &v146);
    }
  }

  else
  {
    if (v8 <= v15)
    {
      v40 = 0;
    }

    else
    {
      v40 = (v7 - v15);
    }

    v29 = BlueFin::GlFormat::glsnprintf(v15, v40, "CW,,dBm,,,ppb,%c%s,", v17, v19, &v146);
  }

  v41 = (v15 + v29);
  v42 = *(a2 + 100);
  if (*(*(a1 + 1832) + 136) == 1)
  {
    GlCustomLog(20, "<FTCW> CNTIN was requested, etCntInStatus (%d) \n", *(a2 + 100));
    v42 = *(a2 + 100);
    if (v42)
    {
      v43 = 0;
    }

    else
    {
      v43 = 3;
    }
  }

  else
  {
    v43 = 0;
  }

  if (v8 <= v41)
  {
    v44 = 0;
  }

  else
  {
    v44 = (v7 - v41);
  }

  if (v42 > 5)
  {
    v45 = BlueFin::GlFormat::glsnprintf(v41, v44, ",", v30, v129);
  }

  else
  {
    v45 = BlueFin::GlFormat::glsnprintf(v41, v44, "%s,", v30, (&off_29EEB4128[v43])[v42]);
  }

  v47 = (v41 + v45);
  if (*(a2 + 104))
  {
    if (v8 <= v47)
    {
      v48 = 0;
    }

    else
    {
      v48 = (v7 - v47);
    }

    v47 = (v47 + BlueFin::GlFormat::glsnprintf(v47, v48, "%.1lf", v46, *(a2 + 112) * 1000000000.0));
  }

  if (!*(a2 + 204))
  {
    if (v8 <= v47)
    {
      v52 = 0;
    }

    else
    {
      v52 = (v7 - v47);
    }

    v53 = ",,dBHz,,ppb";
LABEL_210:
    v55 = BlueFin::GlFormat::glsnprintf(v47, v52, v53, v46, *&v132, *&v141);
    goto LABEL_211;
  }

  v49 = *(a2 + 208);
  if (v49 != 1.79769313e308 && *(a2 + 216) != 1.79769313e308)
  {
    v50 = *(a2 + 12);
    if ((v50 - 52) < 0xE || (v51 = *(a2 + 320), v51 == 4))
    {
      if (v8 <= v47)
      {
        v52 = 0;
      }

      else
      {
        v52 = (v7 - v47);
      }

      v132 = *(a2 + 224) + 174.0;
      v141 = v49 * 1000000000.0 + 0.5;
    }

    else
    {
      v113 = dbl_298A44900[v51 == 3];
      if ((v50 - 76) < 0x3F)
      {
        v113 = 128114.95;
      }

      if (v8 <= v47)
      {
        v52 = 0;
      }

      else
      {
        v52 = (v7 - v47);
      }

      v114 = *(a2 + 224) + 174.0;
      v115 = v49 * 1000000000.0 + 0.5;
      v116 = v115 - v113;
      if (!*(a2 + 136))
      {
        v115 = v116;
      }

      v132 = *(a2 + 224) + 174.0;
      v141 = v115;
    }

    v53 = ",%.1lf,dBHz,%.0lf,ppb";
    goto LABEL_210;
  }

  if (v8 <= v47)
  {
    v54 = 0;
  }

  else
  {
    v54 = (v7 - v47);
  }

  v55 = BlueFin::GlFormat::glsnprintf(v47, v54, ",%.1lf,dBHz,,ppb", v46, *(a2 + 224) + 174.0, *&v141);
LABEL_211:
  v117 = (v47 + v55);
  v118 = *(a2 + 12);
  v119 = v118 - 1;
  if (*(a2 + 152))
  {
    if (v8 <= v117)
    {
      v120 = 0;
    }

    else
    {
      v120 = (v7 - v117);
    }

    if (v119 >= 0x20 && (v118 - 139) > 0x23)
    {
      goto LABEL_217;
    }

    goto LABEL_222;
  }

  if (v119 < 0x20)
  {
    goto LABEL_219;
  }

  if ((v118 - 52) < 0xE)
  {
    if (v8 <= v117)
    {
      v120 = 0;
    }

    else
    {
      v120 = (v7 - v117);
    }

    v122 = *(a2 + 164);
    v123 = *(a2 + 168);
    goto LABEL_223;
  }

  if ((v118 - 33) >= 0x13 && (v118 - 66) >= 0xA)
  {
    if ((v118 - 76) < 0x3F)
    {
      if (v8 <= v117)
      {
        v120 = 0;
      }

      else
      {
        v120 = (v7 - v117);
      }

      v122 = *(a2 + 172);
      v123 = *(a2 + 176);
      goto LABEL_223;
    }

    if ((v118 - 139) <= 0x23)
    {
LABEL_219:
      if (v8 <= v117)
      {
        v120 = 0;
      }

      else
      {
        v120 = (v7 - v117);
      }

LABEL_222:
      v122 = *(a2 + 156);
      v123 = *(a2 + 160);
LABEL_223:
      v133 = (v122 + v123);
      v121 = ",%.1lf";
      goto LABEL_224;
    }
  }

  if (v8 <= v117)
  {
    v120 = 0;
  }

  else
  {
    v120 = (v7 - v117);
  }

LABEL_217:
  v121 = ",";
LABEL_224:
  v124 = (v117 + BlueFin::GlFormat::glsnprintf(v117, v120, v121, v56, *&v133));
  if (v8 <= v124)
  {
    v126 = 0;
  }

  else
  {
    v126 = (v7 - v124);
  }

  BlueFin::GlFormat::glsnprintf(v124, v126, ",%c", v125, 67);
  result = BlueFin::GlPeNmeaGen::nmeaAddChksum(this, v7 - 1, v127);
  v128 = *MEMORY[0x29EDCA608];
  return result;
}