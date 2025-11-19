unint64_t BlueFin::GlPeSvHealthHelper::OnBlocklistIntegrityInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, unsigned __int8 a26)
{
  v40 = *MEMORY[0x29EDCA608];
  result = BlueFin::GlGnssSetIterator::GlGnssSetIterator(&v39, &BlueFin::GlPeSvHealthHelper::s_otAllSvs);
  v29 = a25;
  for (i = a26; a25 != 6 || a26 != 14; i = a26)
  {
    v37 = v29;
    v38 = i;
    v32 = 1 << (i - 1);
    v33 = BlueFin::GlImplGnss::m_aucEnabledGnssTable[v29];
    if ((*(a2 + 8 + 8 * v33) & v32) != 0)
    {
      if ((*(a2 + 72 + 8 * v33) & v32) != 0)
      {
        BlueFin::GlGnssSet::Add(a1 + 2496, &v37);
        v34 = BlueFin::GNSS2STR(v29);
        GlCustomLog(14, "SVHM: Health(%s,%2d):  Set as Blocklist!\n", v34, i);
      }

      else
      {
        BlueFin::GlGnssSet::Remove(a1 + 2496, &v37);
      }
    }

    result = BlueFin::GlGnssSetIterator::operator++(&v39);
    v29 = a25;
  }

  v36 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t *BlueFin::GlPeSvHealthHelper::SetTimeout(uint64_t a1, unsigned int *a2, int a3)
{
  result = BlueFin::GlPeSvHealthData::SetTimeout(a1, a2, a3);
  *(a1 + 2272) = 1;
  return result;
}

double BlueFin::GlPeSvHealthMgr::GetSvHealthStatusChanged(BlueFin::GlPeSvHealthMgr *this, BlueFin::GlSvIdSet *a2, BlueFin::GlSvIdSet *a3)
{
  BlueFin::GlSvIdSet::operator~(this + 368, v7);
  BlueFin::GlSetBase::GlSetBase(v8, &v9, 8u, v7);
  v11 = &v13;
  v12 = 8;
  v13 = 0u;
  v14 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(v8, &v11, this + 380);
  BlueFin::GlSetBase::operator=(v8, &v11);
  v9 = v13;
  *v10 = v14;
  BlueFin::GlSetBase::operator=(a3, v8);
  *(a3 + 12) = v9;
  *(a3 + 28) = *v10;
  BlueFin::GlSetBase::GlSetBase(v8, &v9, 8u, this + 368);
  v11 = &v13;
  v12 = 8;
  v13 = 0u;
  v14 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(v8, &v11, this + 380);
  BlueFin::GlSetBase::operator=(v8, &v11);
  v9 = v13;
  *v10 = v14;
  BlueFin::GlSetBase::operator=(a2, v8);
  *(a2 + 12) = v9;
  result = v10[0];
  *(a2 + 28) = *v10;
  return result;
}

uint64_t BlueFin::GlPeGnssL5HealthData::PrepareLtoL5HealthUpdate(BlueFin::GlPeGnssL5HealthData *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, unsigned int a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char *a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  v62 = 0;
  a61 = *MEMORY[0x29EDCA608];
  a57 = &a36;
  do
  {
    v63 = &a57[v62];
    v64 = &a57[v62];
    *(v64 + 12) = 0;
    *v63 = v64 + 12;
    v63[8] = 2;
    v62 += 24;
  }

  while (v62 != 168);
  for (i = 0; i != 7; ++i)
  {
    BlueFin::GlGnssSet::SetAll(&a36, i);
  }

  for (result = BlueFin::GlGnssSetIterator::GlGnssSetIterator(&vars0, &a36); a31 != 6 || a32 != 14; result = BlueFin::GlGnssSetIterator::operator++(&vars0))
  {
    v70 = a31;
    v71 = a32;
    if (!a32)
    {
      DeviceFaultNotify("glpe_svhealthmgr.cpp", 1228, "PrepareLtoL5HealthUpdate", "*otCurGnss.otGnssId != INVALID_GNSS_ID");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_svhealthmgr.cpp", 1228, "*otCurGnss.otGnssId != INVALID_GNSS_ID");
    }

    L5HealthData = BlueFin::GlPeGnssL5HealthData::getL5HealthData(this, &v70);
    if (L5HealthData)
    {
      if (*(L5HealthData + 4) == 2)
      {
        *L5HealthData = 0;
        *(L5HealthData + 8) = 0;
      }
    }
  }

  v69 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _GLOBAL__sub_I_glpe_svhealthmgr_cpp()
{
  v0 = 0;
  qword_2A18BAC68 = &BlueFin::GlPeSvHealthHelper::s_otAllSvs;
  do
  {
    v1 = qword_2A18BAC68 + v0;
    v2 = qword_2A18BAC68 + v0;
    *(v2 + 12) = 0;
    *v1 = v2 + 12;
    *(v1 + 8) = 2;
    v0 += 24;
  }

  while (v0 != 168);
  return __cxa_atexit(BlueFin::GlGnssSet::~GlGnssSet, &BlueFin::GlPeSvHealthHelper::s_otAllSvs, &dword_29879A000);
}

uint64_t BlueFin::GlPeSvIdConverter::SvId2PossibleGnss(BlueFin::GlPeGloFcnOsnMgr **a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  *a3 = 7;
  *(a3 + 4) = 0;
  *a4 = 7;
  *(a4 + 4) = 0;
  v4 = *a2;
  if (!*a2)
  {
    return 0;
  }

  if (v4 < 0x21)
  {
    v6 = 0u;
LABEL_12:
    v12 = v4 - BlueFin::GlSvId::s_aucGnss2minSvId[v6] + 1;
    *a3 = v6;
    *(a3 + 4) = v12;
    return 1;
  }

  if (v4 < 0x34)
  {
    v6 = 1u;
    goto LABEL_12;
  }

  if (v4 >= 0x42)
  {
    if (v4 >= 0x4C)
    {
      if (v4 >= 0x8B)
      {
        if (v4 >= 0xAF)
        {
          if (v4 >= 0xBD)
          {
            return 0;
          }

          v6 = 6u;
        }

        else
        {
          v6 = 5u;
        }
      }

      else
      {
        v6 = 4u;
      }
    }

    else
    {
      v6 = 3u;
    }

    goto LABEL_12;
  }

  v8 = *a1;
  if (!v8)
  {
    v6 = 2u;
    goto LABEL_12;
  }

  *v13 = 0;
  result = BlueFin::GlPeGloFcnOsnMgr::GetPossibleOsnsForFcn(v8, (v4 - 59), &v13[1], v13);
  if (result)
  {
    v10 = v13[1];
    *a3 = 2;
    *(a3 + 4) = v10;
    if (result == 2)
    {
      v11 = v13[0];
      *a4 = 2;
      *(a4 + 4) = v11;
    }
  }

  return result;
}

uint64_t BlueFin::GlPeSvVisibilityCacheData::SerializeImpl(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v24 = *MEMORY[0x29EDCA608];
  if (v3 >= 2)
  {
    DeviceFaultNotify("glpe_svvisibilitycache.cpp", 98, "SerializeImpl", "ucVersion >= 1 && ucVersion <= 1");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_svvisibilitycache.cpp", 98, "ucVersion >= 1 && ucVersion <= 1");
  }

  v4 = v2;
  v5 = v1;
  v20 = 84;
  v21 = 1;
  v22 = 0x1000000000000;
  v19 = &unk_2A1F092C0;
  v23 = 1;
  BlueFin::GlSysLogEntry::PutU8(&v19, 12);
  for (i = 0; i != 96; i += 8)
  {
    BlueFin::GlSysLogEntry::PutU8(&v19, *(&BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + *(*(v5 + 128) + i)));
    BlueFin::GlSysLogEntry::PutU8(&v19, *(*(v5 + 128) + i + 1));
    BlueFin::GlSysLogEntry::PutU32(&v19, *(*(v5 + 128) + i + 4));
  }

  v7 = (*(*(v5 + 8) + 32))(v5 + 8);
  BlueFin::GlSysLogEntry::PutU32(&v19, v7 / 0x93A80);
  v11 = (*(*(v5 + 8) + 32))(v5 + 8);
  LODWORD(v10) = *(v5 + 16);
  *v11.i64 = (v10 * 2.32830644e-10 + (v9 % 0x93A80)) * 1000.0;
  *v12.i64 = *v11.i64 + trunc(*v11.i64 * 2.32830644e-10) * -4294967300.0;
  v13.f64[0] = NAN;
  v13.f64[1] = NAN;
  v14 = vnegq_f64(v13);
  *&v15 = vbslq_s8(v14, v12, v11).u64[0];
  if (*v11.i64 > 4294967300.0)
  {
    *v11.i64 = v15;
  }

  if (*v11.i64 < -4294967300.0)
  {
    *v8.i64 = -*v11.i64;
    *v11.i64 = -(*v11.i64 - trunc(*v11.i64 * -2.32830644e-10) * -4294967300.0);
    *v11.i64 = -*vbslq_s8(v14, v11, v8).i64;
  }

  if (*v11.i64 < 0.0)
  {
    v16 = --*v11.i64;
  }

  else
  {
    v16 = *v11.i64;
  }

  BlueFin::GlSysLogEntry::PutU32(&v19, v16);
  BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v19, v4, 4);
  v17 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t BlueFin::GlPeSvVisibilityCache::Serialize(BlueFin::GlPeSvVisibilityCache *this, BlueFin::GlPeEngineCallBacks *a2)
{
  result = BlueFin::GlPeSvVisibilityCache::GetSvVisibilityArraySize(this);
  if (result >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = result;
    do
    {
      if (v6 >= 0xA)
      {
        v8 = *(this + 204);
      }

      else
      {
        v8 = (*(this + 204) + v5);
      }

      result = (*(v8[1] + 32))();
      if (result >= 0x93A80 && (a2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1))
      {
        result = (*(*v8 + 24))(v8, a2, 0);
      }

      ++v6;
      v5 += 160;
    }

    while (v7 != v6);
  }

  return result;
}

uint64_t BlueFin::GlPeSvVisibilityCache::GetSvVisibilityArraySize(BlueFin::GlPeSvVisibilityCache *this)
{
  v1 = *(this + 9);
  if (v1 >= 0)
  {
    v2 = v1 + 1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  if (v2 >= 1)
  {
    if (v1 > 8)
    {
      return (v1 + 1);
    }

    else if ((*(*(*(this + 204) + 160 * *(this + 9) + 168) + 32))() >= 0x93A80)
    {
      return 10;
    }
  }

  return v3;
}

uint64_t BlueFin::GlPeSvVisibilityCache::Deserialize(BlueFin::GlPeSvVisibilityCache *this, BlueFin::GlSysLogEntry *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v29 = 0;
  a28 = *MEMORY[0x29EDCA608];
  var10[0] = &unk_2A1F10AF0;
  var10[1] = &off_2A1F0B5F0;
  var10[2] = 0;
  a21 = &a9;
  do
  {
    v30 = &var10[v29];
    *(v30 + 16) = -256;
    *(v30 + 9) = 0;
    ++v29;
  }

  while (v29 != 12);
  BlueFin::GlPeSvVisibilityCacheData::Deserialize(var10, a2);
  result = BlueFin::GlPeSvVisibilityCache::SetSvVisibilityArrayElmt(this, var10);
  *(this + 10) = -1;
  *(this + 16) = 0;
  v32 = *(this + 210);
  *(v32 + 8) = 0;
  *v32 = 0;
  v33 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlPeSvVisibilityCacheData::Deserialize(BlueFin::GlPeSvVisibilityCacheData *this, BlueFin::GlSysLogEntry *a2)
{
  v2 = *(a2 + 2) == 84 && *(a2 + 12) == 1;
  v3 = v2;
  if (!v2)
  {
    return v3;
  }

  U8 = BlueFin::GlSysLogEntry::GetU8(a2);
  if (U8)
  {
    v7 = U8;
    v8 = 0;
    do
    {
      v9 = *(&BlueFin::GlImplGnss::m_aucFromImplSvIdToEnabledSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + BlueFin::GlSysLogEntry::GetU8(a2));
      v10 = BlueFin::GlSysLogEntry::GetU8(a2);
      U32 = BlueFin::GlSysLogEntry::GetU32(a2);
      if (v9)
      {
        v12 = v8 == 12;
      }

      else
      {
        v12 = 1;
      }

      if (!v12)
      {
        v13 = *(this + 16) + 8 * v8;
        *v13 = v9;
        *(v13 + 1) = v10;
        *(v13 + 4) = U32;
        ++v8;
      }

      --v7;
    }

    while (v7);
  }

  v14 = BlueFin::GlSysLogEntry::GetU32(a2);
  *v15.i64 = BlueFin::GlSysLogEntry::GetU32(a2) * 0.001;
  *v16.i64 = *v15.i64 - trunc(*v15.i64);
  v17.f64[0] = NAN;
  v17.f64[1] = NAN;
  v18 = *vbslq_s8(vnegq_f64(v17), v16, v15).i64;
  if (v18 < 0.0 || v18 >= 1.0)
  {
    v23 = "dFracSec >= 0.0 && dFracSec < 1.0";
    DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
    v24 = "glpe_timepoint.h";
    v25 = 173;
    goto LABEL_27;
  }

  v20 = v18 * 4294967300.0 + 0.5;
  v21 = v20;
  if (v20 >= 4294967300.0)
  {
    v21 = -1;
  }

  *(this + 4) = v21;
  *(this + 5) = *v15.i64 + 604800 * v14;
  if (*(a2 + 11) != *(a2 + 10))
  {
    v23 = "otEntry.DataSize() == otEntry.ReadIdx()";
    DeviceFaultNotify("glpe_svvisibilitycache.cpp", 201, "Deserialize", "otEntry.DataSize() == otEntry.ReadIdx()");
    v24 = "glpe_svvisibilitycache.cpp";
    v25 = 201;
LABEL_27:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v24, v25, v23);
  }

  return v3;
}

uint64_t BlueFin::GlPeSvVisibilityCache::SetSvVisibilityArrayElmt(BlueFin::GlPeSvVisibilityCache *this, const BlueFin::GlPeSvVisibilityCacheData *a2)
{
  v4 = *(this + 9);
  if (v4 < 0)
  {
LABEL_6:
    if (v4 < 9)
    {
      v13 = v4 + 1;
    }

    else
    {
      v13 = 0;
    }

    *(this + 9) = v13;
    v14 = *(this + 204) + 160 * v13;

    return BlueFin::GlPeSvVisibilityCacheData::operator=(v14, a2);
  }

  else
  {
    v5 = 0;
    while (1)
    {
      v6 = *(this + 204) + v5;
      v7 = *(v6 + 8);
      v6 += 8;
      v8 = (*(v7 + 32))(v6);
      LODWORD(v9) = *(v6 + 8);
      v10 = v9 * 2.32830644e-10 + v8;
      result = (*(*(a2 + 1) + 32))(a2 + 8);
      LODWORD(v12) = *(a2 + 4);
      if (vabdd_f64(v10, v12 * 2.32830644e-10 + result) < 1.0)
      {
        break;
      }

      v5 += 160;
      if (v5 == 1600)
      {
        LOWORD(v4) = *(this + 9);
        goto LABEL_6;
      }
    }
  }

  return result;
}

uint64_t BlueFin::GlPeSvVisibilityCacheData::operator=(uint64_t result, uint64_t a2)
{
  *(result + 16) = *(a2 + 16);
  v2 = *(a2 + 128);
  v3 = *(result + 128);
  v4 = 12;
  do
  {
    *v3 = *v2;
    *(v3 + 4) = *(v2 + 4);
    v3 += 8;
    v2 += 8;
    --v4;
  }

  while (v4);
  return result;
}

void BlueFin::GlPeSvVisibilityCache::GetSvIdByRank(BlueFin::GlPeSvVisibilityCache *this@<X0>, unsigned int a2@<W1>, _BYTE *a3@<X8>)
{
  v39 = *MEMORY[0x29EDCA608];
  if (!*(*(this + 1) + 2576) || (*(this + 16) & 1) != 0)
  {
    goto LABEL_45;
  }

  v34 = a2;
  v35 = a3;
  v4 = 0;
  v5 = 10;
  v6 = 360.0;
  for (i = 20; i != 1620; i += 160)
  {
    BlueFin::GlPeTimeManager::GetTime(*(this + 1), 1, &v38);
    v36 = &off_2A1F0B5F0;
    v37 = 0;
    BlueFin::GlPeGnssTime::GetGps(&v38, &v36);
    v8 = (*(this + 204) + i);
    v9 = v37;
    v10 = HIDWORD(v37);
    v12 = *(v8 - 1);
    v11 = *v8;
    if (*(v8 - 1))
    {
      v14 = HIDWORD(v37) - v11;
      if (HIDWORD(v37) > v11 || (HIDWORD(v37) == v11 ? (v15 = v37 >= v12) : (v15 = 0), v15))
      {
        v13 = 0;
        v10 = (__PAIR64__(v14, v37) - v12) >> 32;
        v9 = v37 - v12;
      }

      else
      {
        v10 = (__PAIR64__(v11 - HIDWORD(v37), v12) - v37) >> 32;
        v9 = v12 - v37;
        v13 = 1;
      }
    }

    else
    {
      v13 = 0;
    }

    HIDWORD(v16) = 1039138815;
    v17 = v9 * 2.32830644e-10 + v10;
    v18 = -v17;
    if ((v13 & ((v10 | v9) != 0)) != 0)
    {
      v19 = -v17;
    }

    else
    {
      v19 = v9 * 2.32830644e-10 + v10;
    }

    if (v19 > 0.0 && v19 < v6)
    {
      v21 = (*(*(v8 - 3) + 32))(v8 - 3);
      LODWORD(v22) = *(v8 - 1);
      HIDWORD(v16) = 1039138815;
      v18 = v22 * 2.32830644e-10;
      if (v18 + (v21 % 0x93A80) != 0.0 && (*(*(*(this + 204) + i - 12) + 32))() >= 0x93A80)
      {
        v6 = v19;
        v5 = v4;
      }
    }

    ++v4;
  }

  a3 = v35;
  a2 = v34;
  if (v5 == 10)
  {
    goto LABEL_45;
  }

  v23 = 0;
  v24 = *(*(this + 204) + 160 * v5 + 128);
  LODWORD(v25) = -1;
  do
  {
    while (1)
    {
      v26 = (v24 + 8 * v23);
      v27 = *v26;
      if (!*v26)
      {
        goto LABEL_42;
      }

      LOBYTE(v18) = v26[1];
      LODWORD(v16) = *(v26 + 1);
      v16 = *&v16;
      v18 = *&v18 + v16 * -0.001;
      if (v25 != -1)
      {
        break;
      }

      LODWORD(v25) = 0;
      v38.n128_f64[0] = v18;
      **(this + 210) = v27;
      if (++v23 == 12)
      {
        goto LABEL_44;
      }
    }

    v16 = v38.n128_f64[v25];
    if (v16 <= v18)
    {
      if ((v25 & 0x80000000) == 0)
      {
        v28 = v25;
        v16 = v38.n128_f64[v25];
        if (v16 > v18)
        {
LABEL_36:
          v31 = (v28 + 1);
          v38.n128_f64[v31] = v18;
          v29 = (*(this + 210) + v31);
        }

        else
        {
          v29 = *(this + 210);
          v30 = &v38.n128_f64[v25 + 1];
          while (1)
          {
            *v30 = v16;
            v29[v28 + 1] = v29[v28];
            if (!v28)
            {
              break;
            }

            --v28;
            v16 = *(v30 - 2);
            --v30;
            if (v16 > v18)
            {
              goto LABEL_36;
            }
          }

          v38.n128_f64[0] = v18;
        }

        *v29 = v27;
      }

      LODWORD(v25) = v25 + 1;
    }

    else
    {
      v25 = v25 + 1;
      v38.n128_f64[v25] = v18;
      *(*(this + 210) + v25) = v27;
    }

LABEL_42:
    ++v23;
  }

  while (v23 != 12);
  if (v25 == -1)
  {
    goto LABEL_45;
  }

LABEL_44:
  *(this + 16) = 1;
LABEL_45:
  v32 = 0;
  if (a2 <= 0xB && (*(this + 16) & 1) != 0)
  {
    v32 = *(*(this + 210) + a2);
  }

  *a3 = v32;
  v33 = *MEMORY[0x29EDCA608];
}

uint64_t BlueFin::GlPeTowAssistMgr::SetAsstTime(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 > 0x20 || !a3)
  {
    v11 = "pastTowAssist && ucNumSatsTotal <= MAX_TOW_ASSIST_SVS";
    DeviceFaultNotify("glpe_towassistmgr.cpp", 51, "SetAsstTime", "pastTowAssist && ucNumSatsTotal <= MAX_TOW_ASSIST_SVS");
    v12 = 51;
    goto LABEL_19;
  }

  LODWORD(v4) = a2;
  BlueFin::GlArray::Clear(a1 + 16);
  *(a1 + 376) = 0x7FFFFFFF;
  if (v4)
  {
    v4 = v4;
    v6 = (a3 + 4);
    while (1)
    {
      v7 = *(v6 - 4);
      if (v7 > 0x3F || (*(v6 - 1) & 0xC000) != 0 || *v6 > 1u || v6[1] > 1u || v6[2] >= 4u)
      {
        break;
      }

      if (v7 <= 0x1F)
      {
        v8 = v7 + 1;
        v9 = BlueFin::GlArray::Add((a1 + 16), v7 + 1);
        if (v9)
        {
          *v9 = *(v6 - 4);
          *v9 = v8;
        }
      }

      v6 += 8;
      if (!--v4)
      {
        goto LABEL_14;
      }
    }

    v11 = "pTowAsst->ucSatId <= MAX_SATID && pTowAsst->usTlmMessage <= MAX_TLM_MESSAGE && pTowAsst->ucAntiSpoof <= MAX_BOOL && pTowAsst->ucAlert <= MAX_BOOL && pTowAsst->ucTLMreserved <= MAX_TLM_RESERVED";
    DeviceFaultNotify("glpe_towassistmgr.cpp", 57, "SetAsstTime", "pTowAsst->ucSatId <= MAX_SATID && pTowAsst->usTlmMessage <= MAX_TLM_MESSAGE && pTowAsst->ucAntiSpoof <= MAX_BOOL && pTowAsst->ucAlert <= MAX_BOOL && pTowAsst->ucTLMreserved <= MAX_TLM_RESERVED");
    v12 = 57;
LABEL_19:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_towassistmgr.cpp", v12, v11);
  }

LABEL_14:
  if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    (*(*(a1 + 8) + 24))(a1 + 8, 0, 0);
  }

  return 1;
}

uint64_t BlueFin::GlPeSbasEphemeris::GlPeSbasEphemeris(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 8) = 2065;
  *(a1 + 32) = 0u;
  *(a1 + 16) = a1 + 32;
  *(a1 + 24) = vdup_n_s32(0xFF9222FF);
  *(a1 + 48) = 0u;
  *a1 = &unk_2A1F10B38;
  BlueFin::GlPeSbasEphemeris::PutCmpUnsignedField(a1, 0, (*a2 + 1));
  if (a3)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  (*(*a1 + 216))(a1, 1, v6);
  v7 = *(a2 + 4);
  v8 = (*(*a1 + 232))(a1, 33) * v7;
  v9 = (*(*a1 + 232))(a1, 33);
  (*(*a1 + 216))(a1, 33, v8 % 0x15180 / v9);
  (*(*a1 + 216))(a1, 4, *(a2 + 8));
  (*(*a1 + 224))(a1, 34, *(a2 + 12));
  (*(*a1 + 224))(a1, 35, *(a2 + 16));
  (*(*a1 + 224))(a1, 36, *(a2 + 20));
  (*(*a1 + 224))(a1, 37, *(a2 + 24));
  (*(*a1 + 224))(a1, 38, *(a2 + 28));
  (*(*a1 + 224))(a1, 39, *(a2 + 32));
  (*(*a1 + 224))(a1, 40, *(a2 + 36));
  (*(*a1 + 224))(a1, 41, *(a2 + 40));
  (*(*a1 + 224))(a1, 42, *(a2 + 44));
  (*(*a1 + 224))(a1, 10, *(a2 + 48));
  (*(*a1 + 224))(a1, 9, *(a2 + 52));
  v10 = *(*a1 + 216);
  if (*(a2 + 2))
  {
    v10(a1, 43, 1);
    (*(*a1 + 216))(a1, 44, v8 / 0x15180uLL);
    v11 = *(a2 + 2);
  }

  else
  {
    v10(a1, 43, 0);
    (*(*a1 + 216))(a1, 44, 0);
    v11 = 0;
  }

  (*(*a1 + 216))(a1, 28, v11);
  (*(*a1 + 216))(a1, 2, 0);
  return a1;
}

uint64_t BlueFin::GlPeSbasEphemeris::GetFctS(BlueFin::GlPeSbasEphemeris *this, const BlueFin::GlPeGnssTime *a2)
{
  BlueFin::GlPeEphemeris::GetEphTime(this, a2, v12);
  v13 = &off_2A1F0B5F0;
  v14 = 0;
  Gps = BlueFin::GlPeGnssTime::GetGps(v12, &v13);
  v6 = (v13[4])(&v13, Gps);
  LODWORD(v5) = v14;
  *v6.i64 = v5 * 2.32830644e-10 + v4;
  *v7.i64 = *v6.i64 + trunc(*v6.i64 * 2.32830644e-10) * -4294967300.0;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v9 = vnegq_f64(v8);
  *&v10 = vbslq_s8(v9, v7, v6).u64[0];
  if (*v6.i64 > 4294967300.0)
  {
    *v6.i64 = v10;
  }

  if (*v6.i64 < -4294967300.0)
  {
    *v3.i64 = -*v6.i64;
    *v6.i64 = -(*v6.i64 - trunc(*v6.i64 * -2.32830644e-10) * -4294967300.0);
    *v6.i64 = -*vbslq_s8(v9, v6, v3).i64;
  }

  if (*v6.i64 < 0.0)
  {
    return --*v6.i64;
  }

  else
  {
    return *v6.i64;
  }
}

double BlueFin::GlPeSbasEphemeris::ComputeAgeS(BlueFin::GlPeSbasEphemeris *this, const BlueFin::GlPeGnssTime *a2)
{
  v31 = &off_2A1F0B5F0;
  v32 = 0;
  Gps = BlueFin::GlPeGnssTime::GetGps(a2, &v31);
  (v31[4])(&v31, Gps);
  if ((*(*this + 80))(this))
  {
    v5 = (*(*this + 192))(this, 33);
    v6 = (*(*this + 232))(this, 33) * v5;
    LOBYTE(v5) = (*(*this + 192))(this, 44);
    v7 = (*(*this + 192))(this, 28);
    v10 = v5;
    v11 = v7;
  }

  else
  {
    LOWORD(v26) = 2065;
    v28 = v30;
    v29 = vdup_n_s32(0xFF9222FF);
    v12 = *(this + 3);
    v30[0] = *(this + 2);
    v30[1] = v12;
    v25 = &unk_2A1F10B38;
    BlueFin::GlPeSbasEphemeris::SetEphTime(&v25, a2);
    v13 = (v25[24])(&v25, 33);
    v6 = (v25[29])(&v25, 33) * v13;
    v10 = (*(v28 + 6) >> 9) & 7;
    HIDWORD(v14) = *(v28 + 6);
    LODWORD(v14) = *(v28 + 7);
    v11 = (v14 >> 9) >> 22;
  }

  v15 = (86400 * v10) + v6;
  *v8.i64 = v15;
  v25 = &off_2A1F0B5F0;
  *v9.i64 = v15 - trunc(v15);
  v16.f64[0] = NAN;
  v16.f64[1] = NAN;
  v8.i64[0] = vbslq_s8(vnegq_f64(v16), v9, v8).i64[0];
  if (*v8.i64 >= 1.0)
  {
    DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
  }

  v17 = *v8.i64 * 4294967300.0 + 0.5;
  v18 = v17;
  if (v17 >= 4294967300.0)
  {
    v18 = -1;
  }

  v26 = v18;
  v27 = v15 + 604800 * v11;
  v25 = &off_2A1F0B5F0;
  v34 = v18;
  v35 = v27;
  v19 = (v31[4])(&v31);
  v33[0] = v32;
  v33[1] = v19;
  BlueFin::GlTimePoint::resolveAmbiguity(&v34, v33, 0x24EA0000u);
  v20 = (v31[3])(&v31, v35);
  v21 = v32;
  v22 = HIDWORD(v32);
  v23 = v20 | v34;
  if (v20 | v34)
  {
    if (v32 < __PAIR64__(v20, v34))
    {
      v22 = (__PAIR64__(v20 - HIDWORD(v32), v34) - v32) >> 32;
      v21 = v34 - v32;
      v23 = 1;
    }

    else
    {
      v23 = 0;
      v22 = (v32 - __PAIR64__(v20, v34)) >> 32;
      v21 = v32 - v34;
    }
  }

  result = v21 * 2.32830644e-10 + v22;
  if ((v23 & ((v22 | v21) != 0)) != 0)
  {
    return -result;
  }

  return result;
}

uint64_t BlueFin::GlPeSbasEphemeris::SetEphTime(BlueFin::GlPeSbasEphemeris *this, const BlueFin::GlPeGnssTime *a2)
{
  result = (*(*this + 80))(this);
  if ((result & 1) == 0)
  {
    v22 = &off_2A1F0B5F0;
    v23 = 0;
    Gps = BlueFin::GlPeGnssTime::GetGps(a2, &v22);
    v6 = (v22[4])(&v22, Gps) / 0x93A80;
    v10 = (v22[4])(&v22);
    LODWORD(v9) = v23;
    *v10.i64 = v9 * 2.32830644e-10 + (v8 % 0x93A80);
    *v11.i64 = *v10.i64 + trunc(*v10.i64 * 2.32830644e-10) * -4294967300.0;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v13 = vnegq_f64(v12);
    *&v14 = vbslq_s8(v13, v11, v10).u64[0];
    if (*v10.i64 > 4294967300.0)
    {
      *v10.i64 = v14;
    }

    if (*v10.i64 < -4294967300.0)
    {
      *v7.i64 = -*v10.i64;
      *v10.i64 = -(*v10.i64 - trunc(*v10.i64 * -2.32830644e-10) * -4294967300.0);
      *v10.i64 = -*vbslq_s8(v13, v10, v7).i64;
    }

    if (*v10.i64 < 0.0)
    {
      v15 = --*v10.i64;
    }

    else
    {
      v15 = *v10.i64;
    }

    v16 = (v15 / 86400);
    v17 = (*(*this + 192))(this, 33);
    v18 = v15 % 86400 - (*(*this + 232))(this, 33) * v17;
    if (v18 < 43201)
    {
      if (v18 <= -43200)
      {
        v19 = v15 + 86399;
        v20 = v19 >= 0x2A2FF;
        v21 = v19 < 0x2A2FF;
        if (v20)
        {
          v16 = (v16 - 1);
        }

        else
        {
          v16 = 6;
        }

        LOWORD(v6) = v6 - v21;
      }
    }

    else if (v16 == 6)
    {
      LOWORD(v6) = v6 + 1;
      v16 = 0;
    }

    else
    {
      v16 = (v16 + 1);
    }

    (*(*this + 216))(this, 43, 1);
    (*(*this + 216))(this, 44, v16);
    return (*(*this + 216))(this, 28, v6);
  }

  return result;
}

uint64_t BlueFin::GlPeSbasEphemeris::GetCmpUnsignedField(BlueFin::GlPeSbasEphemeris *this, int a2)
{
  v2 = *(this + 2);
  if (a2 > 27)
  {
    if (a2 > 42)
    {
      if (a2 == 43)
      {
        return (v2[6] >> 12) & 1;
      }

      else
      {
        if (a2 != 44)
        {
          goto LABEL_20;
        }

        return (v2[6] >> 9) & 7;
      }
    }

    else if (a2 == 28)
    {
      HIDWORD(v4) = v2[6];
      LODWORD(v4) = v2[7];
      return (v4 >> 9) >> 22;
    }

    else
    {
      if (a2 != 33)
      {
        goto LABEL_20;
      }

      return (*v2 >> 12) & 0x1FFF;
    }
  }

  else if (a2 > 1)
  {
    if (a2 == 2)
    {
      return (v2[7] >> 30) & 1;
    }

    else
    {
      if (a2 != 4)
      {
        goto LABEL_20;
      }

      return (*v2 >> 8) & 0xF;
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        return (*v2 >> 25) & 3;
      }

LABEL_20:
      DeviceFaultNotify("glpe_waasmgr.cpp", 343, "GetCmpUnsignedField", "0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_waasmgr.cpp", 343, "0");
    }

    return *v2 >> 27;
  }
}

float BlueFin::GlPeSbasEphemeris::GetAccuracyM(BlueFin::GlPeSbasEphemeris *this)
{
  v1 = (*(*this + 192))(this, 4);
  if (v1 <= 0xEu)
  {
    return BlueFin::GlPeSbasEphemeris::GetUraM(unsigned char)::afUraTbl[v1 & 0xF];
  }

  else
  {
    return 8192.0;
  }
}

unint64_t BlueFin::GlPeSbasEphemeris::isSignedField(BlueFin::GlPeSbasEphemeris *this, unsigned int a2)
{
  if (a2 >= 0x2D || ((0x1FFE10000617uLL >> a2) & 1) == 0)
  {
    DeviceFaultNotify("glpe_waasmgr.cpp", 372, "isSignedField", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_waasmgr.cpp", 372, "0");
  }

  return (0x7FC00000600uLL >> a2) & 1;
}

uint64_t BlueFin::GlPeSbasEphemeris::GetCmpSignedField(BlueFin::GlPeSbasEphemeris *this, int a2)
{
  v2 = *(this + 2);
  if (a2 > 36)
  {
    if (a2 <= 39)
    {
      if (a2 == 37)
      {
        return ((v2[3] << 13) >> 15);
      }

      if (a2 == 38)
      {
        HIDWORD(v7) = v2[3];
        LODWORD(v7) = v2[4];
        return ((v7 >> 2) >> 15);
      }

      else
      {
        HIDWORD(v3) = v2[4];
        LODWORD(v3) = v2[5];
        return ((v3 >> 17) >> 14);
      }
    }

    switch(a2)
    {
      case '(':
        return ((2 * v2[5]) >> 22);
      case ')':
        return ((v2[5] << 11) >> 22);
      case '*':
        return ((v2[5] << 21) >> 22);
    }

LABEL_25:
    DeviceFaultNotify("glpe_waasmgr.cpp", 396, "GetCmpSignedField", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_waasmgr.cpp", 396, "0");
  }

  if (a2 <= 33)
  {
    if (a2 == 9)
    {
      return ((v2[6] << 11) >> 24);
    }

    if (a2 == 10)
    {
      HIDWORD(v6) = v2[5];
      LODWORD(v6) = v2[6];
      return ((v6 >> 1) >> 20);
    }

    goto LABEL_25;
  }

  if (a2 == 34)
  {
    HIDWORD(v10) = *v2;
    LODWORD(v10) = v2[1];
    v8 = v10 >> 8;
  }

  else
  {
    if (a2 != 35)
    {
      HIDWORD(v5) = v2[2];
      LODWORD(v5) = v2[3];
      return ((v5 >> 12) >> 7);
    }

    HIDWORD(v9) = v2[1];
    LODWORD(v9) = v2[2];
    v8 = v9 >> 10;
  }

  return (v8 >> 2);
}

uint64_t *BlueFin::GlPeSbasEphemeris::PutCmpUnsignedField(BlueFin::GlPeSbasEphemeris *this, unsigned int a2, unsigned int a3)
{
  v5 = *(this + 2);
  v6 = 4 * *(this + 9);
  v11 = 0;
  BlueFin::GlBitBuffer::Initialize(v10, v5, v6);
  if (a2 >= 0x2D || ((0x1FFE10000617uLL >> a2) & 1) == 0)
  {
    DeviceFaultNotify("glpe_waasmgr.cpp", 428, "PutCmpUnsignedField", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_waasmgr.cpp", 428, "0");
  }

  v7 = dword_298A413B0[a2];
  v8 = byte_298A41464[a2];
  BlueFin::GlBitBuffer::Position(v10, v7);
  return BlueFin::GlBitBuffer::PutU(v10, a3, v8);
}

uint64_t *BlueFin::GlPeSbasEphemeris::PutCmpSignedField(BlueFin::GlPeSbasEphemeris *this, int a2, int a3)
{
  v5 = *(this + 2);
  v6 = 4 * *(this + 9);
  v11 = 0;
  BlueFin::GlBitBuffer::Initialize(v10, v5, v6);
  if (a2 > 36)
  {
    if (a2 <= 39)
    {
      if (a2 == 37)
      {
        v7 = 17;
        v8 = 109;
      }

      else if (a2 == 38)
      {
        v7 = 17;
        v8 = 126;
      }

      else
      {
        v7 = 18;
        v8 = 143;
      }

      goto LABEL_24;
    }

    switch(a2)
    {
      case '(':
        v7 = 10;
        v8 = 161;
        goto LABEL_24;
      case ')':
        v7 = 10;
        v8 = 171;
        goto LABEL_24;
      case '*':
        v7 = 10;
        v8 = 181;
        goto LABEL_24;
    }

LABEL_25:
    DeviceFaultNotify("glpe_waasmgr.cpp", 450, "PutCmpSignedField", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_waasmgr.cpp", 450, "0");
  }

  if (a2 <= 33)
  {
    if (a2 == 9)
    {
      v7 = 8;
      v8 = 203;
      goto LABEL_24;
    }

    if (a2 == 10)
    {
      v7 = 12;
      v8 = 191;
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  if (a2 == 34)
  {
    v7 = 30;
    v8 = 24;
  }

  else if (a2 == 35)
  {
    v7 = 30;
    v8 = 54;
  }

  else
  {
    v7 = 25;
    v8 = 84;
  }

LABEL_24:
  BlueFin::GlBitBuffer::Position(v10, v8);
  return BlueFin::GlBitBuffer::PutU(v10, a3 + (0xFFFFFFFFuLL >> (32 - v7)) + 1, v7);
}

uint64_t BlueFin::GlPeSbasEphemeris::GetIntegerScaleFactor(BlueFin::GlPeSbasEphemeris *this, unsigned int a2)
{
  if (a2 > 0x2C)
  {
    goto LABEL_6;
  }

  if (((1 << a2) & 0x180010000017) != 0)
  {
    return 1;
  }

  if (a2 != 33)
  {
LABEL_6:
    DeviceFaultNotify("glpe_waasmgr.cpp", 467, "GetIntegerScaleFactor", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_waasmgr.cpp", 467, "0");
  }

  return 16;
}

double BlueFin::GlPeSbasEphemeris::GetFloatingScaleFactor(BlueFin::GlPeSbasEphemeris *this, int a2)
{
  if (a2 > 36)
  {
    if (a2 > 39)
    {
      if (a2 == 40 || a2 == 41)
      {
        return 0.0000125;
      }

      if (a2 == 42)
      {
        return 0.0000625;
      }

      return 1.0;
    }

    if (a2 == 37 || a2 == 38)
    {
      return 0.000625;
    }

    else
    {
      return 0.004;
    }
  }

  else
  {
    if (a2 <= 33)
    {
      if (a2 == 9)
      {
        return 9.09494702e-13;
      }

      if (a2 != 10)
      {
        result = 16.0;
        if (a2 == 33)
        {
          return result;
        }

        return 1.0;
      }

      return 4.65661287e-10;
    }

    if (a2 == 34 || a2 == 35)
    {
      return 0.08;
    }

    else
    {
      return 0.4;
    }
  }
}

uint64_t BlueFin::GlPeSbasEphemeris::GetSatClkInfo(BlueFin::GlPeEphemeris *a1, uint64_t a2, double *a3, double *a4)
{
  v7 = (*(*a1 + 64))(a1, a2, 1);
  ScaledFloatingField = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 10);
  *a3 = ScaledFloatingField + BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 9) * v7;
  *a4 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 9);
  return 1;
}

uint64_t BlueFin::GlPeSbasEphemeris::GetPvt(BlueFin::GlPeEphemeris *a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = (*(*a1 + 64))(a1, a2, 1);
  ScaledFloatingField = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 10);
  v32 = ScaledFloatingField + BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 9) * v7;
  v9 = v7 - v32;
  v10 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 34);
  v11 = v10 + BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 37) * v9;
  v12 = v11 + BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 40) * (v9 * v9);
  v13 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 35);
  v14 = v13 + BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 38) * v9;
  v15 = v14 + BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 41) * (v9 * v9);
  v16 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 36);
  v17 = v16 + BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 39) * v9;
  v18 = v17 + BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 42) * (v9 * v9);
  v19 = v12 + v15 * 0.0000729211515 * a4;
  v20 = v15 + v12 * -0.0000729211515 * a4;
  if (a4 == 0.0)
  {
    v20 = v15;
    v19 = v12;
  }

  *a3 = v19;
  *(a3 + 8) = v20;
  *(a3 + 16) = v18;
  v21 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 37);
  v22 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 40);
  v23 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 38);
  v24 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 41);
  v25 = v21 + v22 * v9;
  v26 = v23 + v24 * v9;
  if (a4 == 0.0)
  {
    v27 = v26;
  }

  else
  {
    v27 = v26 + v25 * -0.0000729211515 * a4;
  }

  if (a4 == 0.0)
  {
    v28 = v25;
  }

  else
  {
    v28 = v25 + v26 * 0.0000729211515 * a4;
  }

  v29 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 39);
  v30 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 42);
  *(a3 + 24) = v28;
  *(a3 + 32) = v27;
  *(a3 + 40) = v29 + v30 * v9;
  *(a3 + 48) = v32;
  *(a3 + 56) = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 9);
  *(a3 + 64) = (*(*a1 + 152))(a1);
  return 1;
}

uint64_t BlueFin::GlPeSbasEphemeris::GetApproximateElevation(_DWORD *a1, uint64_t a2, double *a3)
{
  v15 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0;
  if ((BlueFin::GlPeEphemeris::isExpired(a1, a2) & 1) != 0 || !(*(*a1 + 112))(a1, a2, &v10, 0.0))
  {
    LOBYTE(v8) = -90;
    return v8;
  }

  v6 = ((*(&v10 + 1) * a3[1] + *&v10 * *a3 + *&v11 * a3[2]) / 2.6894e14 + -0.24) * 90.0;
  if (v6 > 0.0)
  {
    v7 = 0.5;
LABEL_9:
    v8 = (v6 + v7);
    goto LABEL_10;
  }

  if (v6 < 0.0)
  {
    v7 = -0.5;
    goto LABEL_9;
  }

  v8 = 0;
LABEL_10:
  if (v8 <= -90)
  {
    v8 = -90;
  }

  if (v8 >= 90)
  {
    LOBYTE(v8) = 90;
  }

  return v8;
}

uint64_t BlueFin::GlPeSbasEphemeris::GetGnssId@<X0>(BlueFin::GlPeSbasEphemeris *this@<X0>, _BYTE *a2@<X8>)
{
  result = (*(*this + 192))(this, 0);
  *a2 = result;
  return result;
}

uint64_t BlueFin::GlPeSbasEphemeris::GetSrc(BlueFin::GlPeSbasEphemeris *this)
{
  v1 = (*(*this + 144))(this);
  if (v1 >= 4)
  {
    DeviceFaultNotify("glpe_waasmgr.cpp", 588, "GetSrc", "false");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_waasmgr.cpp", 588, "false");
  }

  return dword_298A3A830[v1];
}

uint64_t BlueFin::GlPeLegacySbasEph::SerializeImpl(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v32 = *MEMORY[0x29EDCA608];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = 3;
  }

  if (v4 >= 4)
  {
    DeviceFaultNotify("glpe_waasmgr.cpp", 655, "SerializeImpl", "ucVersion == 1 || ucVersion == 2 || ucVersion == 3");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_waasmgr.cpp", 655, "ucVersion == 1 || ucVersion == 2 || ucVersion == 3");
  }

  v5 = v2;
  v28 = 38;
  v29 = v4;
  v30 = 0x1000000000000;
  v27 = &unk_2A1F092C0;
  v31 = v4;
  v6 = v1 + 24;
  BlueFin::GlSysLogEntry::PutU8(&v27, (**(v1 + 24) >> 27) | 0x20);
  BlueFin::GlSysLogEntry::PutU8(&v27, (~**v6 & 0xF00) != 0);
  HIDWORD(v7) = *(*v6 + 24);
  LODWORD(v7) = *(*v6 + 28);
  BlueFin::GlSysLogEntry::PutU16(&v27, (v7 >> 9) >> 22);
  v8 = *(*v6 + 24);
  v9 = (*(*(v6 - 16) + 192))(v6 - 16, 33);
  v10 = (*(*(v6 - 16) + 232))(v6 - 16, 33);
  BlueFin::GlSysLogEntry::PutU32(&v27, (86400 * ((v8 >> 9) & 7) + v10 * v9) >> 4);
  BlueFin::GlSysLogEntry::PutU8(&v27, BYTE1(**v6) & 0xF);
  v11 = (*(*(v6 - 16) + 192))(v6 - 16, 4);
  if (v11 <= 0xEu)
  {
    v12 = BlueFin::GlPeSbasEphemeris::GetUraM(unsigned char)::afUraTbl[v11 & 0xF];
  }

  else
  {
    v12 = 8192.0;
  }

  BlueFin::GlSysLogEntry::PutF32(&v27, v12);
  ScaledFloatingField = BlueFin::GlPeEphemeris::GetScaledFloatingField((v6 - 16), 34);
  BlueFin::GlSysLogEntry::PutD64(&v27, ScaledFloatingField);
  v14 = BlueFin::GlPeEphemeris::GetScaledFloatingField((v6 - 16), 35);
  BlueFin::GlSysLogEntry::PutD64(&v27, v14);
  v15 = BlueFin::GlPeEphemeris::GetScaledFloatingField((v6 - 16), 36);
  BlueFin::GlSysLogEntry::PutD64(&v27, v15);
  v16 = BlueFin::GlPeEphemeris::GetScaledFloatingField((v6 - 16), 37);
  BlueFin::GlSysLogEntry::PutF32(&v27, v16);
  v17 = BlueFin::GlPeEphemeris::GetScaledFloatingField((v6 - 16), 38);
  BlueFin::GlSysLogEntry::PutF32(&v27, v17);
  v18 = BlueFin::GlPeEphemeris::GetScaledFloatingField((v6 - 16), 39);
  BlueFin::GlSysLogEntry::PutF32(&v27, v18);
  v19 = BlueFin::GlPeEphemeris::GetScaledFloatingField((v6 - 16), 40);
  BlueFin::GlSysLogEntry::PutF32(&v27, v19);
  v20 = BlueFin::GlPeEphemeris::GetScaledFloatingField((v6 - 16), 41);
  BlueFin::GlSysLogEntry::PutF32(&v27, v20);
  v21 = BlueFin::GlPeEphemeris::GetScaledFloatingField((v6 - 16), 42);
  BlueFin::GlSysLogEntry::PutF32(&v27, v21);
  v22 = BlueFin::GlPeEphemeris::GetScaledFloatingField((v6 - 16), 10);
  BlueFin::GlSysLogEntry::PutD64(&v27, v22);
  v23 = BlueFin::GlPeEphemeris::GetScaledFloatingField((v6 - 16), 9);
  BlueFin::GlSysLogEntry::PutD64(&v27, v23);
  if (v4 == 2)
  {
    Src = BlueFin::GlPeSbasEphemeris::GetSrc((v6 - 16));
    goto LABEL_12;
  }

  if (v4 == 3)
  {
    Src = BlueFin::GlPeEphemeris::GetEphDataSrc((v6 - 16));
LABEL_12:
    BlueFin::GlSysLogEntry::PutU8(&v27, Src);
  }

  BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v27, v5, 4);
  v25 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t BlueFin::GlPeLegacySbasEph::Deserialize(BlueFin::GlPeLegacySbasEph *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 38 || *(a2 + 12) - 4 < 0xFFFFFFFD)
  {
    return 0;
  }

  S8 = BlueFin::GlSysLogEntry::GetS8(a2);
  if ((S8 - 52) <= 0xECu)
  {
    DeviceFaultNotify("glpe_waasmgr.cpp", 699, "Deserialize", "IS_SBAS_SVID(*otSvId)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_waasmgr.cpp", 699, "IS_SBAS_SVID(*otSvId)");
  }

  v6 = S8;
  U8 = BlueFin::GlSysLogEntry::GetU8(a2);
  BlueFin::GlPeSbasEphemeris::PutCmpUnsignedField((this + 8), 0, v6 - 32);
  BlueFin::GlPeSbasEphemeris::PutCmpUnsignedField((this + 8), 1u, 0);
  U16 = BlueFin::GlSysLogEntry::GetU16(a2);
  BlueFin::GlPeSbasEphemeris::PutCmpUnsignedField((this + 8), 0x1Cu, U16);
  v9 = *(this + 3);
  HIDWORD(v10) = *(v9 + 24);
  LODWORD(v10) = *(v9 + 28);
  BlueFin::GlPeSbasEphemeris::PutCmpUnsignedField((this + 8), 0x2Bu, ((v10 >> 9) & 0xFFC00000) != 0);
  U32 = BlueFin::GlSysLogEntry::GetU32(a2);
  v12 = U32 / 0x15180;
  BlueFin::GlPeSbasEphemeris::PutCmpUnsignedField((this + 8), 0x21u, (U32 % 0x15180) >> 4);
  BlueFin::GlPeSbasEphemeris::PutCmpUnsignedField((this + 8), 0x2Cu, v12);
  v13 = BlueFin::GlSysLogEntry::GetU8(a2);
  BlueFin::GlPeSbasEphemeris::PutCmpUnsignedField((this + 8), 4u, v13);
  BlueFin::GlSysLogEntry::GetF32(a2);
  *v14.i64 = BlueFin::GlSysLogEntry::GetD64(a2) / 0.08;
  *v15.i64 = *v14.i64 + trunc(*v14.i64 * 2.32830644e-10) * -4294967300.0;
  v16.f64[0] = NAN;
  v16.f64[1] = NAN;
  v17 = vnegq_f64(v16);
  v18 = vbslq_s8(v17, v15, v14);
  if (*v14.i64 > 4294967300.0)
  {
    v14.i64[0] = v18.i64[0];
  }

  v78 = v17;
  if (*v14.i64 < -4294967300.0)
  {
    *v18.i64 = -*v14.i64;
    *v14.i64 = -(*v14.i64 - trunc(*v14.i64 * -2.32830644e-10) * -4294967300.0);
    *v14.i64 = -*vbslq_s8(v17, v14, v18).i64;
  }

  if (*v14.i64 < 0.0)
  {
    v19 = --*v14.i64;
  }

  else
  {
    v19 = *v14.i64;
  }

  BlueFin::GlPeSbasEphemeris::PutCmpSignedField((this + 8), 34, v19);
  *v20.i64 = BlueFin::GlSysLogEntry::GetD64(a2) / 0.08;
  *v21.i64 = *v20.i64 + trunc(*v20.i64 * 2.32830644e-10) * -4294967300.0;
  v22 = vbslq_s8(v78, v21, v20);
  if (*v20.i64 > 4294967300.0)
  {
    v20.i64[0] = v22.i64[0];
  }

  if (*v20.i64 < -4294967300.0)
  {
    *v22.i64 = -*v20.i64;
    *v20.i64 = -(*v20.i64 - trunc(*v20.i64 * -2.32830644e-10) * -4294967300.0);
    v23.f64[0] = NAN;
    v23.f64[1] = NAN;
    *v20.i64 = -*vbslq_s8(vnegq_f64(v23), v20, v22).i64;
  }

  if (*v20.i64 < 0.0)
  {
    v24 = --*v20.i64;
  }

  else
  {
    v24 = *v20.i64;
  }

  BlueFin::GlPeSbasEphemeris::PutCmpSignedField((this + 8), 35, v24);
  *v25.i64 = BlueFin::GlSysLogEntry::GetD64(a2) / 0.4;
  *v26.i64 = *v25.i64 + trunc(*v25.i64 * 2.32830644e-10) * -4294967300.0;
  v27.f64[0] = NAN;
  v27.f64[1] = NAN;
  v28 = vnegq_f64(v27);
  v29 = vbslq_s8(v28, v26, v25);
  if (*v25.i64 > 4294967300.0)
  {
    v25.i64[0] = v29.i64[0];
  }

  v79 = v28;
  if (*v25.i64 < -4294967300.0)
  {
    *v29.i64 = -*v25.i64;
    *v25.i64 = -(*v25.i64 - trunc(*v25.i64 * -2.32830644e-10) * -4294967300.0);
    *v25.i64 = -*vbslq_s8(v28, v25, v29).i64;
  }

  if (*v25.i64 < 0.0)
  {
    v30 = --*v25.i64;
  }

  else
  {
    v30 = *v25.i64;
  }

  BlueFin::GlPeSbasEphemeris::PutCmpSignedField((this + 8), 36, v30);
  *v31.i64 = BlueFin::GlSysLogEntry::GetF32(a2) / 0.000625;
  *v32.i64 = *v31.i64 + trunc(*v31.i64 * 2.32830644e-10) * -4294967300.0;
  v33 = vbslq_s8(v79, v32, v31);
  if (*v31.i64 > 4294967300.0)
  {
    v31.i64[0] = v33.i64[0];
  }

  if (*v31.i64 < -4294967300.0)
  {
    *v33.i64 = -*v31.i64;
    *v31.i64 = -(*v31.i64 - trunc(*v31.i64 * -2.32830644e-10) * -4294967300.0);
    v34.f64[0] = NAN;
    v34.f64[1] = NAN;
    *v31.i64 = -*vbslq_s8(vnegq_f64(v34), v31, v33).i64;
  }

  if (*v31.i64 < 0.0)
  {
    v35 = --*v31.i64;
  }

  else
  {
    v35 = *v31.i64;
  }

  BlueFin::GlPeSbasEphemeris::PutCmpSignedField((this + 8), 37, v35);
  *v36.i64 = BlueFin::GlSysLogEntry::GetF32(a2) / 0.000625;
  *v37.i64 = *v36.i64 + trunc(*v36.i64 * 2.32830644e-10) * -4294967300.0;
  v38.f64[0] = NAN;
  v38.f64[1] = NAN;
  v39 = vnegq_f64(v38);
  v40 = vbslq_s8(v39, v37, v36);
  if (*v36.i64 > 4294967300.0)
  {
    v36.i64[0] = v40.i64[0];
  }

  v80 = v39;
  if (*v36.i64 < -4294967300.0)
  {
    *v40.i64 = -*v36.i64;
    *v36.i64 = -(*v36.i64 - trunc(*v36.i64 * -2.32830644e-10) * -4294967300.0);
    *v36.i64 = -*vbslq_s8(v39, v36, v40).i64;
  }

  if (*v36.i64 < 0.0)
  {
    v41 = --*v36.i64;
  }

  else
  {
    v41 = *v36.i64;
  }

  BlueFin::GlPeSbasEphemeris::PutCmpSignedField((this + 8), 38, v41);
  *v42.i64 = BlueFin::GlSysLogEntry::GetF32(a2) / 0.004;
  *v43.i64 = *v42.i64 + trunc(*v42.i64 * 2.32830644e-10) * -4294967300.0;
  v44 = vbslq_s8(v80, v43, v42);
  if (*v42.i64 > 4294967300.0)
  {
    v42.i64[0] = v44.i64[0];
  }

  if (*v42.i64 < -4294967300.0)
  {
    *v44.i64 = -*v42.i64;
    *v42.i64 = -(*v42.i64 - trunc(*v42.i64 * -2.32830644e-10) * -4294967300.0);
    v45.f64[0] = NAN;
    v45.f64[1] = NAN;
    *v42.i64 = -*vbslq_s8(vnegq_f64(v45), v42, v44).i64;
  }

  if (*v42.i64 < 0.0)
  {
    v46 = --*v42.i64;
  }

  else
  {
    v46 = *v42.i64;
  }

  BlueFin::GlPeSbasEphemeris::PutCmpSignedField((this + 8), 39, v46);
  *v47.i64 = BlueFin::GlSysLogEntry::GetF32(a2) / 0.0000125;
  *v48.i64 = *v47.i64 + trunc(*v47.i64 * 2.32830644e-10) * -4294967300.0;
  v49.f64[0] = NAN;
  v49.f64[1] = NAN;
  v50 = vnegq_f64(v49);
  v51 = vbslq_s8(v50, v48, v47);
  if (*v47.i64 > 4294967300.0)
  {
    v47.i64[0] = v51.i64[0];
  }

  v81 = v50;
  if (*v47.i64 < -4294967300.0)
  {
    *v51.i64 = -*v47.i64;
    *v47.i64 = -(*v47.i64 - trunc(*v47.i64 * -2.32830644e-10) * -4294967300.0);
    *v47.i64 = -*vbslq_s8(v50, v47, v51).i64;
  }

  if (*v47.i64 < 0.0)
  {
    v52 = --*v47.i64;
  }

  else
  {
    v52 = *v47.i64;
  }

  BlueFin::GlPeSbasEphemeris::PutCmpSignedField((this + 8), 40, v52);
  *v53.i64 = BlueFin::GlSysLogEntry::GetF32(a2) / 0.0000125;
  *v54.i64 = *v53.i64 + trunc(*v53.i64 * 2.32830644e-10) * -4294967300.0;
  v55 = vbslq_s8(v81, v54, v53);
  if (*v53.i64 > 4294967300.0)
  {
    v53.i64[0] = v55.i64[0];
  }

  if (*v53.i64 < -4294967300.0)
  {
    *v55.i64 = -*v53.i64;
    *v53.i64 = -(*v53.i64 - trunc(*v53.i64 * -2.32830644e-10) * -4294967300.0);
    v56.f64[0] = NAN;
    v56.f64[1] = NAN;
    *v53.i64 = -*vbslq_s8(vnegq_f64(v56), v53, v55).i64;
  }

  if (*v53.i64 < 0.0)
  {
    v57 = --*v53.i64;
  }

  else
  {
    v57 = *v53.i64;
  }

  BlueFin::GlPeSbasEphemeris::PutCmpSignedField((this + 8), 41, v57);
  *v58.i64 = BlueFin::GlSysLogEntry::GetF32(a2) / 0.0000625;
  *v59.i64 = *v58.i64 + trunc(*v58.i64 * 2.32830644e-10) * -4294967300.0;
  v60.f64[0] = NAN;
  v60.f64[1] = NAN;
  v61 = vnegq_f64(v60);
  v62 = vbslq_s8(v61, v59, v58);
  if (*v58.i64 > 4294967300.0)
  {
    v58.i64[0] = v62.i64[0];
  }

  v82 = v61;
  if (*v58.i64 < -4294967300.0)
  {
    *v62.i64 = -*v58.i64;
    *v58.i64 = -(*v58.i64 - trunc(*v58.i64 * -2.32830644e-10) * -4294967300.0);
    *v58.i64 = -*vbslq_s8(v61, v58, v62).i64;
  }

  if (*v58.i64 < 0.0)
  {
    v63 = --*v58.i64;
  }

  else
  {
    v63 = *v58.i64;
  }

  BlueFin::GlPeSbasEphemeris::PutCmpSignedField((this + 8), 42, v63);
  *v64.i64 = BlueFin::GlSysLogEntry::GetD64(a2) * 2147483650.0;
  *v65.i64 = *v64.i64 + trunc(*v64.i64 * 2.32830644e-10) * -4294967300.0;
  v66 = vbslq_s8(v82, v65, v64);
  if (*v64.i64 > 4294967300.0)
  {
    v64.i64[0] = v66.i64[0];
  }

  if (*v64.i64 < -4294967300.0)
  {
    *v66.i64 = -*v64.i64;
    *v64.i64 = -(*v64.i64 - trunc(*v64.i64 * -2.32830644e-10) * -4294967300.0);
    v67.f64[0] = NAN;
    v67.f64[1] = NAN;
    *v64.i64 = -*vbslq_s8(vnegq_f64(v67), v64, v66).i64;
  }

  if (*v64.i64 < 0.0)
  {
    v68 = --*v64.i64;
  }

  else
  {
    v68 = *v64.i64;
  }

  BlueFin::GlPeSbasEphemeris::PutCmpSignedField((this + 8), 10, v68);
  *v69.i64 = BlueFin::GlSysLogEntry::GetD64(a2) * 1.09951163e12;
  *v71.i64 = *v69.i64 + trunc(*v69.i64 * 2.32830644e-10) * -4294967300.0;
  v72.f64[0] = NAN;
  v72.f64[1] = NAN;
  v73 = vnegq_f64(v72);
  *&v74 = vbslq_s8(v73, v71, v69).u64[0];
  if (*v69.i64 > 4294967300.0)
  {
    *v69.i64 = v74;
  }

  if (*v69.i64 < -4294967300.0)
  {
    *v70.i64 = -*v69.i64;
    *v69.i64 = -(*v69.i64 - trunc(*v69.i64 * -2.32830644e-10) * -4294967300.0);
    *v69.i64 = -*vbslq_s8(v73, v69, v70).i64;
  }

  if (*v69.i64 < 0.0)
  {
    v75 = --*v69.i64;
  }

  else
  {
    v75 = *v69.i64;
  }

  BlueFin::GlPeSbasEphemeris::PutCmpSignedField((this + 8), 9, v75);
  v76 = *(a2 + 12);
  if (v76 == 2)
  {
    v77 = BlueFin::GlSysLogEntry::GetU8(a2) - 1;
LABEL_86:
    BlueFin::GlPeSbasEphemeris::PutCmpUnsignedField((this + 8), 1u, v77);
    goto LABEL_87;
  }

  if (v76 >= 3)
  {
    v77 = BlueFin::GlSysLogEntry::GetU8(a2);
    goto LABEL_86;
  }

LABEL_87:
  if (!U8)
  {
    BlueFin::GlPeSbasEphemeris::PutCmpUnsignedField((this + 8), 4u, 0xFu);
  }

  return 1;
}

int32x2_t BlueFin::GlPeSbasMgr::MakeEphemerisObj(uint64_t a1, uint64_t a2, int a3)
{
  v3 = (a2 + 32);
  if (a3 == 1)
  {
    v4 = &unk_2A1F10B38;
    *v3 = 0u;
    *(a2 + 48) = 0u;
    v5 = 8;
    v6 = 17;
  }

  else
  {
    v4 = &unk_2A1F0F470;
    *(a2 + 92) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *v3 = 0u;
    *(a2 + 48) = 0u;
    v5 = 19;
    v6 = 18;
  }

  *(a2 + 8) = v6;
  *(a2 + 9) = v5;
  *(a2 + 16) = v3;
  result = vdup_n_s32(0xFF9222FF);
  *(a2 + 24) = result;
  *a2 = v4;
  return result;
}

void BlueFin::GlPeSbasMgr::HandleMsg(BlueFin::GlPeSbasMgr *this, const BlueFin::GlDataSubFrmMeas *a2)
{
  if (*(a2 + 8) - 52 <= 0xFFFFFFEC)
  {
    v66 = "IS_SBAS_SVID(*rotSbasBlock.otSvId)";
    DeviceFaultNotify("glpe_waasmgr.cpp", 857, "HandleMsg", "IS_SBAS_SVID(*rotSbasBlock.otSvId)");
    v67 = 857;
    goto LABEL_58;
  }

  if ((*(this + 3944) & 1) == 0)
  {
    v2 = *(this + 3);
    if (*(v2 + 44) != -1)
    {
      v3 = vcvt_f32_f64(*(v2 + 112));
      *(this + 150) = v3;
      __asm
      {
        FMOV            V1.2S, #5.0
        FMOV            V2.2S, #-20.0
      }

      *(this + 149) = vmla_f32(_D2, _D1, vrndm_f32(vdiv_f32(v3, _D1)));
      *(this + 3944) = 1;
    }
  }

  v10 = *(a2 + 36);
  *(this + 540) = *(a2 + 20);
  *(this + 556) = v10;
  v11 = *(*(this + 2) + 2568);
  v12 = *(a2 + 8);
  v13 = v12 - 32;
  v80 = v12 - 32;
  v14 = v12 - 33;
  if (v14 >= 0x13)
  {
    v66 = "ucIdx < _DIM(m_aotMsgData)";
    DeviceFaultNotify("glpe_waasmgr.cpp", 878, "HandleMsg", "ucIdx < _DIM(m_aotMsgData)");
    v67 = 878;
LABEL_58:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_waasmgr.cpp", v67, v66);
  }

  v15 = this + 16 * v14;
  v16 = *(v15 + 378);
  if (!v16 || (v11 - v16) >> 5 >= 0x753)
  {
    v17 = v15 + 1512;
    v18 = *(this + 135);
    v19 = *(v15 + 380) + 1;
    v17[1] = v11;
    v17[2] = v19;
    v20 = (v18 >> 18) & 0x3F;
    if (v20 <= 0xB)
    {
      if (v20)
      {
        if (v20 == 9)
        {
          v76 = 2065;
          v77 = v79;
          v78 = vdup_n_s32(0xFF9222FF);
          memset(v79, 0, sizeof(v79));
          v75 = &unk_2A1F10B38;
          v17[3] = v11;
          v36 = this;
          BlueFin::GlPeSbasEphemeris::PutCmpUnsignedField(&v75, 0, v13);
          BlueFin::GlPeSbasEphemeris::PutCmpUnsignedField(&v75, 1u, 0);
          HIDWORD(v37) = *(v36 + 135);
          LODWORD(v37) = *(v36 + 136);
          BlueFin::GlPeSbasEphemeris::PutCmpUnsignedField(&v75, 0x21u, (v37 >> 29) & 0x1FFF);
          if (BlueFin::GlPeTimeManager::TimeKnown(*(v36 + 2), 0, 0x200B20u))
          {
            BlueFin::GlPeSbasEphemeris::PutCmpUnsignedField(&v75, 0x2Bu, 0);
            BlueFin::GlPeTimeManager::GetTime(*(v36 + 2), 1, v74);
            BlueFin::GlPeSbasEphemeris::SetEphTime(&v75, v74);
          }

          BlueFin::GlPeSbasEphemeris::PutCmpUnsignedField(&v75, 4u, (*(v36 + 136) >> 25) & 0xF);
          HIDWORD(v38) = *(v36 + 136);
          LODWORD(v38) = *(v36 + 137);
          BlueFin::GlPeSbasEphemeris::PutCmpUnsignedField(&v75, 0x22u, (v38 >> 27) & 0x3FFFFFFF);
          HIDWORD(v38) = *(v36 + 137);
          LODWORD(v38) = *(v36 + 138);
          BlueFin::GlPeSbasEphemeris::PutCmpUnsignedField(&v75, 0x23u, (v38 >> 29) & 0x3FFFFFFF);
          BlueFin::GlPeSbasEphemeris::PutCmpUnsignedField(&v75, 0x24u, (*(v36 + 138) >> 4) & 0x1FFFFFF);
          HIDWORD(v38) = *(v36 + 138);
          LODWORD(v38) = *(v36 + 139);
          BlueFin::GlPeSbasEphemeris::PutCmpUnsignedField(&v75, 0x25u, (v38 >> 19) & 0x1FFFF);
          BlueFin::GlPeSbasEphemeris::PutCmpUnsignedField(&v75, 0x26u, (*(v36 + 139) >> 2) & 0x1FFFF);
          HIDWORD(v38) = *(v36 + 139);
          LODWORD(v38) = *(v36 + 140);
          BlueFin::GlPeSbasEphemeris::PutCmpUnsignedField(&v75, 0x27u, (v38 >> 16) & 0x3FFFF);
          BlueFin::GlPeSbasEphemeris::PutCmpUnsignedField(&v75, 0x28u, *(v36 + 140) >> 6);
          HIDWORD(v38) = *(v36 + 140);
          LODWORD(v38) = *(v36 + 141);
          BlueFin::GlPeSbasEphemeris::PutCmpUnsignedField(&v75, 0x29u, (v38 >> 28) & 0x3FF);
          BlueFin::GlPeSbasEphemeris::PutCmpUnsignedField(&v75, 0x2Au, (*(v36 + 141) >> 18) & 0x3FF);
          BlueFin::GlPeSbasEphemeris::PutCmpUnsignedField(&v75, 0xAu, (*(v36 + 141) >> 6) & 0xFFF);
          HIDWORD(v38) = *(v36 + 141);
          LODWORD(v38) = *(v36 + 142);
          BlueFin::GlPeSbasEphemeris::PutCmpUnsignedField(&v75, 9u, (v38 >> 30));
          BlueFin::GlPeSbasEphemeris::PutCmpUnsignedField(&v75, 1u, 0);
          (*(*v36 + 376))(v36, &v75, 0);
        }
      }

      else
      {
        v63 = this;
        (*(*this + 336))(this, &v80);
        *v17 = v11;
        *(v63 + 3944) = 0;
        *(v63 + 987) = -1;
        memcpy(v63 + 692, &BlueFin::GlPeSbasMgr::m_InitIonoData, 0x300uLL);
      }
    }

    else if (v20 == 12)
    {
      v39 = *(this + 136);
      v40 = ((__PAIR64__(v18, v39) >> 26) & 0xFFFFFF);
      *(this + 1464) = 1;
      if ((v18 & 0x20000) != 0)
      {
        v40 = ((__PAIR64__(v18, v39) >> 26) & 0x7FFFFF | 0xFF800000);
      }

      *(this + 184) = v40 * 8.8817842e-16;
      v41 = *(this + 137);
      v42 = __PAIR64__(v39, v41) >> 26;
      v43 = v42;
      if (v42 < 0)
      {
        v43 = --v42;
      }

      *(this + 185) = v43 * 9.31322575e-10;
      *(this + 367) = (v41 >> 6) & 0xFF000;
      *(this + 372) = (v41 >> 10);
      *(this + 373) = ((v41 << 22) >> 31) & 0xFFFFFF80 | (v41 >> 2) & 0x7F;
      v44 = *(this + 138);
      *(this + 374) = (__PAIR64__(v41, v44) >> 26);
      *(this + 375) = (v44 >> 18) & 7;
      *(this + 376) = ((v44 << 14) >> 31) & 0xFFFFFF80 | (v44 >> 10) & 0x7F;
      *(this + 377) = (v44 >> 7) & 7;
    }

    else
    {
      v73 = this;
      if (v20 == 18)
      {
        v45 = (v18 >> 10) & 0xF;
        *(this + 987) = (v18 >> 8) & 3;
        if (v45 <= 8)
        {
          v46 = 0;
          v47 = 0;
          v48 = 0;
          v49 = 0;
          v50 = 0;
          v51 = 1717986919 * (40 * v45 - *(this + 299) - 180);
          v52 = (v51 >> 33) + (v51 >> 63);
          v69 = this + 1320;
          v68 = this + 1208;
          v71 = 16 * v45;
          v72 = this + 992;
          v53 = 24;
          v54 = this + 8 * v45 + 1324;
          do
          {
            v55 = v69[v54[v46]];
            v70 = v52;
            if (v55 >= 1)
            {
              v56 = *(this + 298);
              v57 = v52 & 0xF;
              v58 = v52;
              v59 = v68;
              do
              {
                if (!v49)
                {
                  v48 = BlueFin::GlPeSbasMgr::wbits(v73, v53, 4);
                  this = v73;
                  v53 += 4;
                  v49 = 8;
                }

                v60 = v59[28 * v54[v46]] - v56;
                if ((v60 + 4) <= 0x35 && v58 <= 9)
                {
                  v62 = v60 / 5;
                  if ((v48 & v49) != 0)
                  {
                    *&v72[20 * v62 + 2 * v57] = (v71 | (v47 << 8)) + v50;
                    if ((v47 + 1) == 15)
                    {
                      ++v50;
                      v47 = 0;
                    }

                    else
                    {
                      ++v47;
                    }
                  }

                  else
                  {
                    *&v72[20 * v62 + 2 * v57] = 255;
                  }
                }

                v49 >>= 1;
                ++v59;
                --v55;
              }

              while (v55);
            }

            v52 = v70 + 1;
            ++v46;
          }

          while (v46 != 8);
        }
      }

      else if (v20 == 26)
      {
        if (((*(this + 141) >> 5) & 3) == *(this + 987))
        {
          v21 = (v18 >> 14) & 0xF;
          if (v21 <= 8)
          {
            v22 = (v18 >> 10) & 0xF;
            v23 = this + 572;
            v24 = this + 632;
            v25 = -195;
            v26 = (this + 632);
            do
            {
              *(v26 - 15) = BlueFin::GlPeSbasMgr::wbits(v73, v25 + 217, 9);
              *v26++ = BlueFin::GlPeSbasMgr::wbits(v73, v25 + 226, 4);
              v25 += 13;
            }

            while (v25);
            v27 = 0;
            v28 = (v73 + 992);
            v29 = v73 + 692;
            do
            {
              v30 = 0;
              v31 = v28;
              v32 = v28;
              do
              {
                v34 = *v32++;
                v33 = v34;
                if ((v22 | (16 * v21)) == v34)
                {
                  v35 = v33 >> 8;
                  v29[v30] = *&v23[4 * v35];
                  *(v31 - 100) = *&v24[4 * v35];
                }

                ++v30;
                v31 = v32;
              }

              while (v30 != 10);
              ++v27;
              v28 += 10;
              v29 += 10;
            }

            while (v27 != 10);
          }
        }

        else
        {
          v64 = this + 792;
          v65 = 10;
          do
          {
            memset_pattern16(v64, &unk_298A414A0, 0x14uLL);
            v64 += 20;
            --v65;
          }

          while (v65);
        }
      }
    }
  }
}

uint64_t BlueFin::GlPeSbasMgr::wbits(BlueFin::GlPeSbasMgr *this, unsigned int a2, int a3)
{
  v3 = (a2 << 19) & 0xFF000000;
  v4 = a2 - (v3 >> 19);
  v5 = v4 + a3;
  if ((v4 + a3) <= 32)
  {
    return (*(this + (a2 >> 5) + 135) & (0xFFFFFFFF >> v4)) >> -v5;
  }

  else
  {
    return ((*(this + (a2 >> 5) + 135) & (0xFFFFFFFF >> v4)) << v5) + (*(this + (v3 >> 24) + 136) >> -v5);
  }
}

uint64_t BlueFin::MinnowEswRpcSatEncImp::esw_sat_rpc_add_carrier(uint64_t a1, uint64_t a2, unsigned int a3, int a4, char a5, char a6, unsigned int a7, unsigned int a8, char a9, __int16 a10, char a11, char a12)
{
  v17 = a3;
  v30 = *MEMORY[0x29EDCA608];
  if ((*(**(a1 + 8) + 384))(*(a1 + 8)) <= a3)
  {
    v26 = "sat_id < m_rAsicConfigIfc.GetMaxNumSats()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_minnow.cpp", 153, "esw_sat_rpc_add_carrier", "sat_id < m_rAsicConfigIfc.GetMaxNumSats()");
    v27 = 153;
    goto LABEL_11;
  }

  v20 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v28, v29, 1800, v20);
  BlueFin::GlStream::PutU08(v28, v17);
  if (!a4)
  {
    v26 = "sv_id != INVALID_SVID";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_minnow.cpp", 160, "esw_sat_rpc_add_carrier", "sv_id != INVALID_SVID");
    v27 = 160;
    goto LABEL_11;
  }

  BlueFin::GlStream::PutU08(v28, a4);
  BlueFin::GlStream::PutU08(v28, a5);
  BlueFin::GlStream::PutU08(v28, a6);
  BlueFin::GlStream::CarpPutBits(v28, a7 & 1, 1u, 8u);
  BlueFin::GlStream::CarpPutBits(v28, (a7 >> 1) & 1, 1u, 8u);
  BlueFin::GlStream::CarpPutBits(v28, (a7 >> 2) & 1, 1u, 8u);
  BlueFin::GlStream::CarpPutBits(v28, (a7 >> 3) & 1, 1u, 8u);
  BlueFin::GlStream::CarpPutBits(v28, (a7 >> 4) & 1, 1u, 8u);
  BlueFin::GlStream::CarpPutBits(v28, (a7 >> 5) & 1, 1u, 8u);
  BlueFin::GlStream::CarpPutBits(v28, (a7 >> 6) & 1, 1u, 8u);
  BlueFin::GlStream::CarpPutBits(v28, (a7 >> 7) & 1, 1u, 8u);
  if ((*(**(a1 + 8) + 736))())
  {
    BlueFin::GlStream::CarpPutBits(v28, 1u, 1u, 8u);
    v21 = 0;
  }

  else
  {
    BlueFin::GlStream::CarpPutBits(v28, (a7 >> 8) & 1, 1u, 8u);
    v21 = (a7 >> 9) & 1;
  }

  BlueFin::GlStream::CarpPutBits(v28, v21, 1u, 8u);
  BlueFin::GlStream::CarpPutBits(v28, 0, 6u, 8u);
  BlueFin::GlStream::PutU08(v28, 0);
  BlueFin::GlStream::PutU08(v28, 0);
  BlueFin::GlStream::PutU32(v28, a8);
  BlueFin::GlStream::PutU08(v28, a9);
  BlueFin::GlStream::PutU08(v28, a11);
  BlueFin::GlStream::PutU08(v28, a12);
  BlueFin::GlStream::PutU08(v28, 0);
  Offset = BlueFin::GlStream::GetOffset(v28);
  BlueFin::GlMeSrdTransaction::Add(a2, 6, 0xCu, v29, Offset);
  v23 = *(a2 + 32);
  result = (*(**(a1 + 8) + 416))();
  if (result < v23)
  {
    v26 = "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_minnow.cpp", 211, "esw_sat_rpc_add_carrier", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    v27 = 211;
LABEL_11:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_minnow.cpp", v27, v26);
  }

  v25 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::MinnowEswRpcSatEncImp::esw_sat_rpc_remove_carrier(uint64_t a1, uint64_t a2, unsigned int a3, char a4)
{
  v5 = a3;
  v17 = *MEMORY[0x29EDCA608];
  if ((*(**(a1 + 8) + 384))(*(a1 + 8)) <= a3)
  {
    v13 = "sat_id < m_rAsicConfigIfc.GetMaxNumSats()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_minnow.cpp", 218, "esw_sat_rpc_remove_carrier", "sat_id < m_rAsicConfigIfc.GetMaxNumSats()");
    v14 = 218;
    goto LABEL_6;
  }

  v8 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v15, v16, 1800, v8);
  BlueFin::GlStream::PutU08(v15, v5);
  BlueFin::GlStream::PutU08(v15, a4);
  Offset = BlueFin::GlStream::GetOffset(v15);
  BlueFin::GlMeSrdTransaction::Add(a2, 6, 0xDu, v16, Offset);
  v10 = *(a2 + 32);
  result = (*(**(a1 + 8) + 416))();
  if (result < v10)
  {
    v13 = "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_minnow.cpp", 227, "esw_sat_rpc_remove_carrier", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    v14 = 227;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_minnow.cpp", v14, v13);
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::MinnowEswRpcRmEncImp::esw_rm_rpc_set_limits(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x29EDCA608];
  v6 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v12, v13, 1800, v6);
  BlueFin::GlStream::PutU08(v12, *a3);
  BlueFin::GlStream::PutU08(v12, *(a3 + 1));
  BlueFin::GlStream::PutU08(v12, *(a3 + 2));
  for (i = 0; i != 4; ++i)
  {
    BlueFin::GlStream::PutU08(v12, *(a3 + 3 + i));
  }

  BlueFin::GlStream::PutU08(v12, *(a3 + 7));
  BlueFin::GlStream::PutU08(v12, *(a3 + 8));
  BlueFin::GlStream::PutU08(v12, *(a3 + 9));
  BlueFin::GlStream::PutU08(v12, *(a3 + 10));
  BlueFin::GlStream::PutU08(v12, 0);
  BlueFin::GlStream::CarpPutBits(v12, *(a3 + 11) & 3, 2u, 8u);
  BlueFin::GlStream::CarpPutBits(v12, (*(a3 + 11) >> 2) & 3, 2u, 8u);
  BlueFin::GlStream::CarpPutBits(v12, (*(a3 + 11) >> 4) & 3, 2u, 8u);
  BlueFin::GlStream::CarpPutBits(v12, *(a3 + 11) >> 6, 2u, 8u);
  BlueFin::GlStream::CarpPutBits(v12, *(a3 + 12) & 7, 3u, 8u);
  BlueFin::GlStream::CarpPutBits(v12, (*(a3 + 11) >> 11) & 7, 3u, 8u);
  BlueFin::GlStream::CarpPutBits(v12, (*(a3 + 11) >> 14) & 1, 1u, 8u);
  BlueFin::GlStream::CarpPutBits(v12, 0, 1u, 8u);
  BlueFin::GlStream::PutU08(v12, 0);
  BlueFin::GlStream::PutU08(v12, 0);
  Offset = BlueFin::GlStream::GetOffset(v12);
  BlueFin::GlMeSrdTransaction::Add(a2, 5, 1u, v13, Offset);
  v9 = *(a2 + 32);
  result = (*(**(a1 + 8) + 416))();
  if (result < v9)
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_minnow.cpp", 319, "esw_rm_rpc_set_limits", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_minnow.cpp", 319, "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
  }

  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::MinnowEswRpcSatEncImp::esw_sat_rpc_set_grid_ctrl(uint64_t a1, uint64_t a2, char a3, char a4, unsigned int *a5)
{
  v8 = a2;
  v16 = *MEMORY[0x29EDCA608];
  v10 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v14, v15, 1800, v10);
  BlueFin::GlStream::PutU08(v14, a3);
  BlueFin::GlStream::PutU08(v14, a4);
  BlueFin::GlStream::PutU16(v14, 0);
  BlueFin::GlStream::PutU32(v14, *a5);
  Offset = BlueFin::GlStream::GetOffset(v14);
  BlueFin::GlMeSrdTransaction::Add(v8, 6, 0xBu, v15, Offset);
  LODWORD(v8) = v8[16];
  result = (*(**(a1 + 8) + 416))();
  if (result < v8)
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_minnow.cpp", 428, "esw_sat_rpc_set_grid_ctrl", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_minnow.cpp", 428, "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::MinnowEswRpcJdEncImp::esw_jd_rpc_set_grid_config_lut(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v6 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v15, v16, 1800, v6);
  for (i = 0; i != 8; ++i)
  {
    BlueFin::GlStream::PutU08(v15, *(a3 + i));
  }

  BlueFin::GlStream::PutU32(v15, *(a3 + 8));
  v8 = (a3 + 22);
  v9 = 32;
  do
  {
    BlueFin::GlStream::PutU16(v15, *(v8 - 5));
    BlueFin::GlStream::PutU16(v15, *(v8 - 4));
    BlueFin::GlStream::PutU32(v15, *(v8 - 3));
    BlueFin::GlStream::PutU16(v15, *(v8 - 1));
    v10 = *v8;
    v8 += 6;
    BlueFin::GlStream::PutU16(v15, v10);
    --v9;
  }

  while (v9);
  Offset = BlueFin::GlStream::GetOffset(v15);
  BlueFin::GlMeSrdTransaction::Add(a2, 4, 0x12u, v16, Offset);
  v12 = *(a2 + 32);
  result = (*(**(a1 + 8) + 416))();
  if (result < v12)
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_minnow.cpp", 457, "esw_jd_rpc_set_grid_config_lut", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_minnow.cpp", 457, "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
  }

  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::MinnowEswRpcJdEncImp::esw_jd_rpc_tm_set_iq_dump_buffer(uint64_t a1, uint64_t a2, char *a3)
{
  v14 = *MEMORY[0x29EDCA608];
  v6 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v12, v13, 1800, v6);
  BlueFin::GlStream::PutU08(v12, *a3);
  for (i = 1; i != 6; ++i)
  {
    BlueFin::GlStream::PutU08(v12, a3[i]);
  }

  BlueFin::GlStream::PutU08(v12, a3[6]);
  BlueFin::GlStream::PutU08(v12, a3[7]);
  BlueFin::GlStream::PutU08(v12, a3[8]);
  BlueFin::GlStream::PutU08(v12, a3[9]);
  BlueFin::GlStream::PutU08(v12, a3[10]);
  BlueFin::GlStream::PutU08(v12, a3[11]);
  Offset = BlueFin::GlStream::GetOffset(v12);
  BlueFin::GlMeSrdTransaction::Add(a2, 4, 0x13u, v13, Offset);
  v9 = *(a2 + 32);
  result = (*(**(a1 + 8) + 416))();
  if (result < v9)
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_minnow.cpp", 483, "esw_jd_rpc_tm_set_iq_dump_buffer", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_minnow.cpp", 483, "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
  }

  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::MinnowEswRpcJdEncImp::esw_jd_rpc_wipe_aid_set_all(uint64_t a1, uint64_t a2, int a3, unsigned __int8 *a4, uint64_t a5)
{
  LODWORD(v7) = a3;
  v23 = *MEMORY[0x29EDCA608];
  v10 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v21, v22, 1800, v10);
  BlueFin::GlStream::PutU08(v21, v7);
  if (v7)
  {
    v7 = v7;
    v11 = v7;
    while (1)
    {
      v13 = *a4++;
      v12 = v13;
      if (v13 >= 0xCB)
      {
        break;
      }

      BlueFin::GlStream::PutU08(v21, v12);
      if (!--v11)
      {
        v14 = (a5 + 8);
        do
        {
          BlueFin::GlStream::PutU16(v21, *(v14 - 4));
          BlueFin::GlStream::PutU08(v21, *(v14 - 6));
          BlueFin::GlStream::PutU08(v21, 0);
          BlueFin::GlStream::PutU32(v21, *(v14 - 1));
          BlueFin::GlStream::PutU32(v21, *v14);
          BlueFin::GlStream::PutU32(v21, v14[1]);
          BlueFin::GlStream::PutU32(v21, v14[2]);
          v14 += 5;
          --v7;
        }

        while (v7);
        goto LABEL_7;
      }
    }

    v19 = "bAidIdInRange";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_minnow.cpp", 552, "esw_jd_rpc_wipe_aid_set_all", "bAidIdInRange");
    v20 = 552;
LABEL_10:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_minnow.cpp", v20, v19);
  }

LABEL_7:
  Offset = BlueFin::GlStream::GetOffset(v21);
  BlueFin::GlMeSrdTransaction::Add(a2, 4, 0xDu, v22, Offset);
  v16 = *(a2 + 32);
  result = (*(**(a1 + 8) + 416))();
  if (result < v16)
  {
    v19 = "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_minnow.cpp", 568, "esw_jd_rpc_wipe_aid_set_all", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    v20 = 568;
    goto LABEL_10;
  }

  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::MinnowEswRpcGcmEncImp::esw_gcm_rpc_gpio_set(uint64_t a1, uint64_t a2, int a3, char a4)
{
  v16 = *MEMORY[0x29EDCA608];
  if (a3 >= 27)
  {
    v12 = "pin < _4777_GPIO_MAX";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_minnow.cpp", 604, "esw_gcm_rpc_gpio_set", "pin < _4777_GPIO_MAX");
    v13 = 604;
    goto LABEL_6;
  }

  v5 = a3;
  v6 = a2;
  v8 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v14, v15, 1800, v8);
  BlueFin::GlStream::PutU08(v14, v5);
  BlueFin::GlStream::PutU08(v14, a4);
  Offset = BlueFin::GlStream::GetOffset(v14);
  BlueFin::GlMeSrdTransaction::Add(v6, 0, 5u, v15, Offset);
  LODWORD(v6) = v6[16];
  result = (*(**(a1 + 8) + 416))();
  if (result < v6)
  {
    v12 = "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_minnow.cpp", 614, "esw_gcm_rpc_gpio_set", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    v13 = 614;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_minnow.cpp", v13, v12);
  }

  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::MinnowEswRpcGcmEncImp::esw_gcm_rpc_gpio_configure(uint64_t a1, uint64_t a2, char *a3)
{
  v14 = *MEMORY[0x29EDCA608];
  if (*a3 >= 27)
  {
    v10 = "config->pin < _4777_GPIO_MAX";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_minnow.cpp", 619, "esw_gcm_rpc_gpio_configure", "config->pin < _4777_GPIO_MAX");
    v11 = 619;
    goto LABEL_6;
  }

  v4 = a2;
  v6 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v12, v13, 1800, v6);
  BlueFin::GlStream::PutU08(v12, *a3);
  BlueFin::GlStream::PutU08(v12, a3[4]);
  BlueFin::GlStream::PutU08(v12, a3[8]);
  BlueFin::GlStream::PutU08(v12, 0);
  Offset = BlueFin::GlStream::GetOffset(v12);
  BlueFin::GlMeSrdTransaction::Add(v4, 0, 4u, v13, Offset);
  LODWORD(v4) = v4[16];
  result = (*(**(a1 + 8) + 416))();
  if (result < v4)
  {
    v10 = "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_minnow.cpp", 630, "esw_gcm_rpc_gpio_configure", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    v11 = 630;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_minnow.cpp", v11, v10);
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::MinnowEswRpcGcmEncImp::esw_gcm_rpc_set_blanking(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v13 = *MEMORY[0x29EDCA608];
  v6 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v11, v12, 1800, v6);
  BlueFin::GlStream::CarpPutBits(v11, *a3 & 3, 2u, 8u);
  BlueFin::GlStream::CarpPutBits(v11, (*a3 >> 2) & 1, 1u, 8u);
  BlueFin::GlStream::CarpPutBits(v11, (*a3 >> 3) & 1, 1u, 8u);
  BlueFin::GlStream::CarpPutBits(v11, (*a3 >> 4) & 3, 2u, 8u);
  BlueFin::GlStream::CarpPutBits(v11, *a3 >> 6, 2u, 8u);
  BlueFin::GlStream::PutU08(v11, a3[4]);
  if ((*(**(a1 + 8) + 912))() == 40)
  {
    BlueFin::GlStream::CarpPutBits(v11, a3[8] & 7, 3u, 8u);
    BlueFin::GlStream::CarpPutBits(v11, (a3[8] >> 3) & 7, 3u, 8u);
    BlueFin::GlStream::CarpPutBits(v11, 0, 2u, 8u);
  }

  else
  {
    BlueFin::GlStream::PutU08(v11, 0);
  }

  BlueFin::GlStream::PutU08(v11, 0);
  BlueFin::GlStream::PutU32(v11, *(a3 + 3));
  BlueFin::GlStream::PutU32(v11, *(a3 + 4));
  BlueFin::GlStream::PutU32(v11, *(a3 + 5));
  BlueFin::GlStream::PutU32(v11, *(a3 + 6));
  Offset = BlueFin::GlStream::GetOffset(v11);
  BlueFin::GlMeSrdTransaction::Add(a2, 0, 0xBu, v12, Offset);
  v8 = *(a2 + 32);
  result = (*(**(a1 + 8) + 416))();
  if (result < v8)
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_minnow.cpp", 663, "esw_gcm_rpc_set_blanking", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_minnow.cpp", 663, "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::MinnowEswRpcHrmEncImp::esw_hrm_rpc_set_get_multiple(BlueFin::MinnowEswRpcHrmEncImp *this, BlueFin::GlMeSrdTransaction *a2, unsigned int a3, int a4, unsigned int a5, char a6, char a7, unsigned int *a8)
{
  LODWORD(v12) = a4;
  v28 = *MEMORY[0x29EDCA608];
  v16 = (*(**(a2 + 3) + 40))(*(a2 + 3));
  BlueFin::GlStream::GlStream(v26, v27, 1800, v16);
  BlueFin::GlStream::PutU08(v26, v12);
  BlueFin::GlStream::PutU08(v26, a5);
  BlueFin::GlStream::PutU08(v26, a6);
  BlueFin::GlStream::PutU08(v26, a7);
  BlueFin::GlStream::PutU32(v26, a3);
  if (v12)
  {
    v12 = v12;
    v17 = a8;
    v18 = v12;
    do
    {
      v19 = *v17;
      v17 = (v17 + 2);
      BlueFin::GlStream::PutU16(v26, v19);
      --v18;
    }

    while (v18);
    if (a5 > 1)
    {
      v20 = (a8 + 2 * v12);
      do
      {
        v21 = *v20++;
        BlueFin::GlStream::PutU32(v26, v21);
        --v12;
      }

      while (v12);
    }
  }

  Offset = BlueFin::GlStream::GetOffset(v26);
  BlueFin::GlMeSrdTransaction::Add(a2, 2, 8u, v27, Offset);
  v23 = *(a2 + 16);
  result = (*(**(this + 1) + 416))();
  if (result < v23)
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_minnow.cpp", 720, "esw_hrm_rpc_set_get_multiple", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_minnow.cpp", 720, "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
  }

  v25 = *MEMORY[0x29EDCA608];
  return result;
}

unsigned int *BlueFin::MinnowEswRpcJdEncImp::AddDelayControl(BlueFin::GlStream *this, uint64_t a2, int a3)
{
  v5 = *(a2 + 4);
  v6 = *(a2 + 2);
  v7 = (v6 << 14) & 0x30000 | (((v6 >> 4) & 3) << 20) | ((v6 & 3) << 12);
  v8 = v6 & 0x3C0;
  v9 = *a2 & 0xF00;
  v10 = *a2 & 0xF0;
  v11 = *a2 & 0xF;
  if (v9 == 3840)
  {
    v9 = 16128;
  }

  v12 = v9 >> 8;
  if (v10 == 240)
  {
    v13 = 4032;
  }

  else
  {
    v13 = 4 * v10;
  }

  v14 = v13 & 0xFFFC0FFF | ((v12 & 0x3F) << 12);
  if (v11 == 15)
  {
    v11 = 63;
  }

  v15 = v14 | v11;
  v16 = *(a2 + 5);
  v17 = (v14 >> 6) | (a3 << 12);
  if (*(a2 + 5))
  {
    v18 = 2;
  }

  else
  {
    v18 = 3;
  }

  if (*(a2 + 5))
  {
    v19 = 28;
  }

  else
  {
    v19 = 56;
  }

  if (*(a2 + 5))
  {
    v20 = ((v15 & 0x3F) << 12) | 0xFFF;
  }

  else
  {
    v20 = 0x3FFFF;
  }

  if (v16)
  {
    v21 = v17;
  }

  else
  {
    v21 = v15;
  }

  if (v16)
  {
    v22 = v7 >> 4;
  }

  else
  {
    v22 = v7;
  }

  if (v16)
  {
    v23 = v8 >> 2;
  }

  else
  {
    v23 = v8;
  }

  v24 = *(a2 + 14) << v18;
  v25 = *(a2 + 7);
  v26 = *(a2 + 10);
  v29 = *(a2 + 8);
  v30 = *(a2 + 12);
  v27 = (16 * v5) | (4 * v5) | (v5 << 6) | (v5 << 8) | (v5 << 10) | v5;
  BlueFin::GlStream::PutU32(this, v20);
  BlueFin::GlStream::PutU32(this, v21);
  BlueFin::GlStream::PutU32(this, v22);
  BlueFin::GlStream::PutU16(this, v23);
  BlueFin::GlStream::PutU16(this, v27);
  BlueFin::GlStream::PutU08(this, v24 & v19);
  BlueFin::GlStream::PutU08(this, *(a2 + 6));
  BlueFin::GlStream::PutU08(this, v25);
  BlueFin::GlStream::PutU08(this, v26);
  BlueFin::GlStream::PutU16(this, v29);

  return BlueFin::GlStream::PutU16(this, v30);
}

unsigned int *BlueFin::MinnowEswRpcJdEncImp::AddGpConstComToStream(BlueFin::GlStream *this, uint64_t a2, int a3)
{
  for (i = 6; i != 118; i += 16)
  {
    BlueFin::MinnowEswRpcJdEncImp::AddDelayControl(this, a2 + i, a3);
  }

  BlueFin::GlStream::PutU32(this, *(a2 + 120));
  BlueFin::GlStream::PutU08(this, *a2);
  BlueFin::GlStream::PutU08(this, *(a2 + 1));
  BlueFin::GlStream::PutU08(this, *(a2 + 2));
  BlueFin::GlStream::PutU08(this, *(a2 + 3));
  BlueFin::GlStream::PutU08(this, *(a2 + 4));
  BlueFin::GlStream::PutU08(this, *(a2 + 5));
  v7 = *(a2 + 124);

  return BlueFin::GlStream::PutU16(this, v7);
}

uint64_t BlueFin::MinnowEswRpcJdEncImp::esw_jd_rpc_mc_gp_set_all(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v14 = *MEMORY[0x29EDCA608];
  v6 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v12, v13, 1800, v6);
  BlueFin::GlStream::PutU16(v12, *a3);
  BlueFin::GlStream::PutU08(v12, *(a3 + 2));
  BlueFin::GlStream::PutU08(v12, 0);
  BlueFin::GlStream::PutU16(v12, a3[6]);
  BlueFin::GlStream::PutU16(v12, a3[2]);
  BlueFin::GlStream::PutU16(v12, a3[4]);
  BlueFin::GlStream::PutU08(v12, *(a3 + 10));
  BlueFin::GlStream::PutU08(v12, *(a3 + 6));
  BlueFin::MinnowEswRpcJdEncImp::AddGpConstComToStream(v12, (a3 + 8), *(a3 + 10));
  BlueFin::GlStream::PutU08(v12, *(a3 + 144));
  BlueFin::GlStream::PutU08(v12, *(a3 + 145));
  BlueFin::GlStream::PutU08(v12, 0);
  BlueFin::GlStream::PutU08(v12, 0);
  BlueFin::GlStream::PutU08(v12, *(a3 + 147));
  BlueFin::GlStream::PutU08(v12, *(a3 + 148));
  BlueFin::GlStream::PutU08(v12, 0);
  BlueFin::GlStream::PutU08(v12, 0);
  BlueFin::GlStream::PutU08(v12, *(a3 + 150));
  BlueFin::GlStream::PutU08(v12, *(a3 + 151));
  BlueFin::GlStream::PutU08(v12, 0);
  BlueFin::GlStream::PutU08(v12, 0);
  BlueFin::GlStream::PutU32(v12, *(a3 + 39));
  BlueFin::CarpEswRpcJdEncImp::AddGpModeToStream(v12, (a3 + 80));
  BlueFin::CarpEswRpcJdEncImp::AddGpModeToStream(v12, (a3 + 83));
  BlueFin::CarpEswRpcJdEncImp::AddGpModeToStream(v12, (a3 + 86));
  BlueFin::CarpEswRpcJdEncImp::AddGpModeToStream(v12, (a3 + 89));
  BlueFin::MinnowEswRpcJdEncImp::AddGpConstComToStream(v12, (a3 + 92), *(a3 + 10));
  BlueFin::GlStream::PutU08(v12, *(a3 + 312));
  BlueFin::GlStream::PutU08(v12, *(a3 + 313));
  BlueFin::GlStream::PutU08(v12, 0);
  BlueFin::GlStream::PutU08(v12, 0);
  BlueFin::GlStream::PutU32(v12, *(a3 + 79));
  BlueFin::CarpEswRpcJdEncImp::AddGpModeToStream(v12, (a3 + 160));
  BlueFin::CarpEswRpcJdEncImp::AddGpModeToStream(v12, (a3 + 163));
  BlueFin::MinnowEswRpcJdEncImp::AddGpConstComToStream(v12, (a3 + 166), *(a3 + 10));
  BlueFin::GlStream::PutU08(v12, *(a3 + 460));
  BlueFin::GlStream::PutU08(v12, *(a3 + 461));
  BlueFin::GlStream::PutU08(v12, 0);
  BlueFin::GlStream::PutU08(v12, 0);
  for (i = 0; i != 28; i += 2)
  {
    BlueFin::GlStream::PutU32(v12, *&a3[i + 232]);
  }

  BlueFin::CarpEswRpcJdEncImp::AddGpModeToStream(v12, (a3 + 260));
  BlueFin::CarpEswRpcJdEncImp::AddGpModeToStream(v12, (a3 + 263));
  BlueFin::CarpEswRpcJdEncImp::AddGpModeToStream(v12, (a3 + 266));
  BlueFin::CarpEswRpcJdEncImp::AddGpModeToStream(v12, (a3 + 269));
  BlueFin::MinnowEswRpcJdEncImp::AddGpConstComToStream(v12, (a3 + 272), *(a3 + 10));
  BlueFin::GlStream::PutU08(v12, *(a3 + 672));
  BlueFin::GlStream::PutU08(v12, *(a3 + 673));
  BlueFin::GlStream::PutU08(v12, 0);
  BlueFin::GlStream::PutU08(v12, 0);
  BlueFin::GlStream::PutU08(v12, *(a3 + 675));
  BlueFin::GlStream::PutU08(v12, *(a3 + 676));
  BlueFin::GlStream::PutU08(v12, 0);
  BlueFin::GlStream::PutU08(v12, 0);
  BlueFin::GlStream::PutU08(v12, *(a3 + 678));
  BlueFin::GlStream::PutU08(v12, *(a3 + 679));
  BlueFin::GlStream::PutU08(v12, 0);
  BlueFin::GlStream::PutU08(v12, 0);
  BlueFin::GlStream::PutU32(v12, *(a3 + 171));
  BlueFin::GlStream::PutU16(v12, a3[344]);
  BlueFin::GlStream::PutU08(v12, *(a3 + 690));
  BlueFin::GlStream::PutU08(v12, *(a3 + 691));
  BlueFin::MinnowEswRpcJdEncImp::AddDelayControl(v12, (a3 + 346), *(a3 + 10));
  BlueFin::CarpEswRpcJdEncImp::AddGpModeToStream(v12, (a3 + 354));
  BlueFin::CarpEswRpcJdEncImp::AddGpModeToStream(v12, (a3 + 357));
  BlueFin::MinnowEswRpcJdEncImp::AddGpConstComToStream(v12, (a3 + 360), *(a3 + 10));
  BlueFin::GlStream::PutU08(v12, *(a3 + 848));
  BlueFin::GlStream::PutU08(v12, *(a3 + 849));
  BlueFin::GlStream::PutU08(v12, 0);
  BlueFin::GlStream::PutU08(v12, 0);
  BlueFin::GlStream::PutU08(v12, *(a3 + 851));
  BlueFin::GlStream::PutU08(v12, *(a3 + 852));
  BlueFin::GlStream::PutU08(v12, 0);
  BlueFin::GlStream::PutU08(v12, 0);
  BlueFin::GlStream::PutU08(v12, *(a3 + 854));
  BlueFin::GlStream::PutU08(v12, *(a3 + 855));
  BlueFin::GlStream::PutU08(v12, 0);
  BlueFin::GlStream::PutU08(v12, 0);
  BlueFin::GlStream::PutU32(v12, *(a3 + 215));
  BlueFin::CarpEswRpcJdEncImp::AddGpModeToStream(v12, (a3 + 432));
  BlueFin::CarpEswRpcJdEncImp::AddGpModeToStream(v12, (a3 + 435));
  BlueFin::CarpEswRpcJdEncImp::AddGpModeToStream(v12, (a3 + 438));
  BlueFin::CarpEswRpcJdEncImp::AddGpModeToStream(v12, (a3 + 441));
  BlueFin::GlStream::PutU08(v12, *(a3 + 888));
  BlueFin::GlStream::PutU08(v12, *(a3 + 889));
  BlueFin::GlStream::PutU16(v12, a3[445]);
  BlueFin::GlStream::PutU16(v12, a3[446]);
  BlueFin::GlStream::PutU08(v12, 0);
  BlueFin::GlStream::PutU08(v12, 0);
  Offset = BlueFin::GlStream::GetOffset(v12);
  BlueFin::GlMeSrdTransaction::Add(a2, 4, 0xFu, v13, Offset);
  v9 = *(a2 + 32);
  result = (*(**(a1 + 8) + 416))();
  if (result < v9)
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_minnow.cpp", 1089, "esw_jd_rpc_mc_gp_set_all", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_minnow.cpp", 1089, "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
  }

  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::MinnowEswRpcStmEncImp::esw_stm_rpc_adc_capture_request(BlueFin::MinnowEswRpcStmEncImp *this, BlueFin::GlMeSrdTransaction *a2, char a3)
{
  v4 = a2;
  v12 = *MEMORY[0x29EDCA608];
  v6 = (*(**(a2 + 3) + 40))(*(a2 + 3));
  BlueFin::GlStream::GlStream(v10, v11, 1800, v6);
  BlueFin::GlStream::PutU08(v10, a3);
  BlueFin::GlStream::PutU08(v10, 0);
  BlueFin::GlStream::PutU08(v10, 0);
  BlueFin::GlStream::PutU08(v10, 0);
  Offset = BlueFin::GlStream::GetOffset(v10);
  BlueFin::GlMeSrdTransaction::Add(v4, 1, 2u, v11, Offset);
  LODWORD(v4) = v4[16];
  result = (*(**(this + 1) + 416))();
  if (result < v4)
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_minnow.cpp", 1102, "esw_stm_rpc_adc_capture_request", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_minnow.cpp", 1102, "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::MinnowEswRpcGcmEncImp::esw_gcm_rpc_standby(BlueFin::MinnowEswRpcGcmEncImp *this, BlueFin::GlMeSrdTransaction *a2, char a3)
{
  v13 = *MEMORY[0x29EDCA608];
  v6 = (*(**(a2 + 3) + 40))(*(a2 + 3));
  BlueFin::GlStream::GlStream(v11, v12, 1800, v6);
  BlueFin::GlStream::PutU08(v11, a3);
  Offset = BlueFin::GlStream::GetOffset(v11);
  BlueFin::GlMeSrdTransaction::Add(a2, 0, 0xDu, v12, Offset);
  v8 = *(a2 + 16);
  result = (*(**(this + 1) + 416))();
  if (result < v8)
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_minnow.cpp", 1114, "esw_gcm_rpc_standby", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_minnow.cpp", 1114, "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlPeEnvironmentMonitor::GetEnvironmentGNSSSignalStr(uint64_t this, double *a2, double *a3)
{
  v3 = 0;
  v4 = (this + 1272);
  v5 = 0.0;
  while (1)
  {
    v6 = v4[v3];
    if (v6 < 5.0)
    {
      break;
    }

    v5 = v5 + v6;
    if (++v3 == 4)
    {
      v7 = v5 * 0.25;
      v8 = 3;
LABEL_7:
      *a2 = v7;
      v9 = vabds_f32(*v4, v4[v8]);
      goto LABEL_8;
    }
  }

  if (v3)
  {
    v7 = v5 / v3;
    v8 = v3 - 1;
    goto LABEL_7;
  }

  *a2 = 0.0;
  v9 = 0.0;
LABEL_8:
  *a3 = v9;
  return this;
}

uint64_t BlueFin::GlPeEnvMonitorData::SerializeImpl()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v13 = *MEMORY[0x29EDCA608];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = 2;
  }

  if (v3 >= 3)
  {
    DeviceFaultNotify("glpe_environmentmonitor.cpp", 432, "SerializeImpl", "ucVersion >= 1 && ucVersion <= 2");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_environmentmonitor.cpp", 432, "ucVersion >= 1 && ucVersion <= 2");
  }

  v4 = v1;
  v5 = v0;
  if (v1 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v9 = 68;
    v10 = v3;
    v11 = 0x1000000000000;
    v8 = &unk_2A1F092C0;
    v12 = v3;
    BlueFin::GlSysLogEntry::PutU8(&v8, *(v0 + 8));
    BlueFin::GlSysLogEntry::PutF32(&v8, *(v5 + 12));
    BlueFin::GlSysLogEntry::PutF32(&v8, *(v5 + 16));
    BlueFin::GlSysLogEntry::PutF32(&v8, *(v5 + 20));
    BlueFin::GlSysLogEntry::PutF32(&v8, *(v5 + 24));
    BlueFin::GlSysLogEntry::PutD64(&v8, *(v5 + 40));
    if (v3 == 2)
    {
      BlueFin::GlSysLogEntry::PutD64(&v8, *(v5 + 32));
    }

    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v8, v4, 4);
  }

  v6 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t BlueFin::GlPeEnvironmentMonitor::Serialize(uint64_t a1)
{
  v2 = *(a1 + 1320);
  v3 = *(a1 + 1288);
  v4 = *(a1 + 1304);
  return BlueFin::GlPeEnvMonitorData::SerializeImpl();
}

uint64_t BlueFin::GlPeNavGnssBlocked::IndoorHyst(uint64_t this, unsigned int a2, unsigned int a3)
{
  if (a2 > 8 || a3 >= 3)
  {
    v4 = 0;
    *(this + 108) = (*(this + 108) + 1);
    goto LABEL_9;
  }

  if (*(this + 1) != 1)
  {
    v4 = 0;
    v5 = *(this + 108);
    *(this + 108) = (v5 + 1);
    if (v5 != -1)
    {
      goto LABEL_9;
    }

LABEL_8:
    v4 = *(this + 84);
    goto LABEL_9;
  }

  v3 = *(this + 112);
  *(this + 108) = 0;
  *(this + 112) = v3 + 1;
  if (v3 == -1)
  {
    goto LABEL_8;
  }

  v4 = 1;
LABEL_9:
  *(this + 84) = v4;
  return this;
}

BOOL BlueFin::GlPeNavGnssBlocked::IsParkingGarage(BlueFin::GlPeNavGnssBlocked *this, int a2)
{
  if (*(this + 21) != 1)
  {
    return 0;
  }

  v2 = *(this + 10);
  v4 = (*(this + 23) * ((a2 - v2) / 0x3E8)) < *(this + 54) || *(this + 46) > v2;
  return *(this + 9) < *(this + 31) && v4 || *(*(this + 28) + 8) == 3;
}

BOOL BlueFin::ecef2lla(double *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v3 != 0.0 || *a1 != 0.0;
  if (v4)
  {
    v7 = BlueFin::GlPeConvUtilCache::m_potThis;
    if (v2 == *BlueFin::GlPeConvUtilCache::m_potThis && v3 == *(BlueFin::GlPeConvUtilCache::m_potThis + 8) && a1[2] == *(BlueFin::GlPeConvUtilCache::m_potThis + 16))
    {
      *a2 = *(BlueFin::GlPeConvUtilCache::m_potThis + 24);
      *(a2 + 16) = *(v7 + 40);
    }

    else
    {
      v8 = sqrt(v3 * v3 + v2 * v2);
      v9 = a1[2];
      v10 = sqrt(v8 * 6356752.0 * (v8 * 6356752.0) + v9 * 6378137.0 * (v9 * 6378137.0));
      v11 = v9 + v9 * 6378137.0 / v10 * (v9 * 6378137.0 / v10 * (v9 * 6378137.0 / v10)) * 42841.3672;
      v12 = v8 + v8 * 6356752.0 / v10 * (v8 * 6356752.0 / v10 * (v8 * 6356752.0 / v10)) * -42697.6728;
      v13 = sqrt(v12 * v12 + v11 * v11);
      v14 = v11 / v13;
      v15 = v12 / v13;
      v16 = atan(v11 / v12) * 57.2957795;
      *a2 = v16;
      v17 = v8 / v15 + -1.0 / sqrt(v14 * v14 * 4.0408298e13 + v15 * v15 * 4.068063e13) * 4.068063e13;
      *(a2 + 16) = v17;
      v18 = atan2(v3, v2) * 57.2957795;
      *(a2 + 8) = v18;
      *(v7 + 32) = v18;
      *(v7 + 40) = v17;
      *v7 = v2;
      *(v7 + 8) = a1[1];
      *(v7 + 16) = a1[2];
      *(v7 + 24) = v16;
    }
  }

  return v4;
}

double BlueFin::iono_delay(uint64_t a1, double *a2, float *a3, int a4, float a5, float a6)
{
  if (a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = &BlueFin::ionoDataDefault;
  }

  if (a5 < 0.0)
  {
    a5 = a5 + 360.0;
  }

  v9 = a6;
  v10 = v9 * 0.00555555556;
  v11 = v9 < 0.1;
  v12 = 0.000555555564;
  if (!v11)
  {
    v12 = v10;
  }

  v13 = v12;
  v14 = a5 * 0.0174532925;
  v15 = *a2 * 0.00555555556;
  v16 = a2[1] * 0.00555555556;
  v17 = v13;
  v18 = 0.0137 / (v13 + 0.11) + -0.022;
  v19 = v15 + v18 * cosf(v14);
  v20 = 0.416;
  if (v19 <= 0.416)
  {
    v20 = v19;
    if (v19 < -0.416)
    {
      v20 = -0.416;
    }
  }

  v21 = v18 * sinf(v14);
  v22 = v16 + v21 / cos(v20 * 3.14159265);
  v23 = v20 + cos((v22 + -1.617) * 3.14159265) * 0.064;
  v24 = fabs(v23);
  if (a4)
  {
    v23 = v24;
  }

  LODWORD(v24) = *(a1 + 4);
  v25 = *&v24 * 0.001 + v22 * 43200.0 - floor((*&v24 * 0.001 + v22 * 43200.0) / 86400.0) * 86400.0;
  v26 = v8[4] + v8[5] * v23 + v23 * v8[6] * v23 + v23 * (v23 * v8[7]) * v23;
  if (v26 < 72000.0)
  {
    v26 = 72000.0;
  }

  v27 = (v25 + -50400.0) * 6.28318531 / v26;
  if (fabs(v27) >= 1.57)
  {
    v29 = 0.000000005;
  }

  else
  {
    v28 = *v8 + v8[1] * v23 + v23 * v8[2] * v23 + v23 * (v23 * v8[3]) * v23;
    if (v28 < 0.0)
    {
      v28 = 0.0;
    }

    v29 = v28 * (v27 * v27 * -0.5 + 1.0 + v27 * (v27 * (v27 * v27)) / 24.0) + 0.000000005;
  }

  return ((0.53 - v17) * ((0.53 - v17) * 16.0) * (0.53 - v17) + 1.0) * v29 * 299792458.0;
}

double BlueFin::PropagatePosWithTS(double *a1, double *a2, double a3, double a4)
{
  v7 = __sincos_stret(a3);
  v6.f64[0] = v7.__cosval;
  v6.f64[1] = v7.__sinval;
  v12 = vmulq_n_f64(vmulq_n_f64(v6, a4), *a2);
  v13 = 0;
  BlueFin::ned2lla(a1, v12.f64, &v10);
  *a1 = v10;
  result = v11;
  a1[2] = v11;
  return result;
}

void BlueFin::greatCircleDistAndCourse(double *a1, double *a2, double *a3, double *a4)
{
  v6 = *a1;
  if (*a1 > 89.9)
  {
    v7 = 3.14159265;
    v8 = (90.0 - *a2) * 0.0174532925 * 1800.0 / 3.14159265;
    if (v8 <= 0.0)
    {
      v9 = 0.0;
      if (v8 < 0.0)
      {
        v9 = ceil(v8 + -0.5);
      }
    }

    else
    {
      v9 = floor(v8 + 0.5);
    }

    *a3 = v9 / 572.957795;
    goto LABEL_27;
  }

  if (v6 < -89.9)
  {
    v10 = (*a2 + 90.0) * 0.0174532925 * 1800.0 / 3.14159265;
    if (v10 <= 0.0)
    {
      v11 = 0.0;
      if (v10 < 0.0)
      {
        v11 = ceil(v10 + -0.5);
      }
    }

    else
    {
      v11 = floor(v10 + 0.5);
    }

    *a3 = v11 / 572.957795;
    goto LABEL_26;
  }

  v12 = *a2 * 0.0174532925;
  v13 = a1[1] * 0.0174532925;
  if (*a2 <= 89.9 && *a2 >= -89.9)
  {
    v14 = a2[1] * 0.0174532925;
  }

  else
  {
    v14 = 0.0;
  }

  v35 = v6 * 0.0174532925;
  v15 = __sincos_stret(v6 * 0.0174532925);
  v16 = __sincos_stret(v12);
  v17 = v15.__cosval * v16.__cosval * cos(v13 - v14) + v15.__sinval * v16.__sinval;
  v18 = 1.0;
  if (v17 <= 1.0)
  {
    v18 = v17;
    if (v17 < -1.0)
    {
      v18 = -1.0;
    }
  }

  v19 = acos(v18);
  *a3 = v19;
  v20 = v19 * 1800.0 / 3.14159265;
  if (v20 <= 0.0)
  {
    v21 = 0.0;
    if (v20 < 0.0)
    {
      v21 = ceil(v20 + -0.5);
    }
  }

  else
  {
    v21 = floor(v20 + 0.5);
  }

  if (v21 / 572.957795 == 0.0)
  {
    *a3 = 0.0;
LABEL_26:
    v7 = 0.0;
LABEL_27:
    *a4 = v7;
    return;
  }

  v22 = v15.__cosval * sin(v19);
  v23 = v22 * 1800.0 / 3.14159265;
  if (v23 <= 0.0)
  {
    v24 = 0.0;
    if (v23 < 0.0)
    {
      v24 = ceil(v23 + -0.5);
    }
  }

  else
  {
    v24 = floor(v23 + 0.5);
  }

  if (v24 / 572.957795 == 0.0)
  {
    v25 = 0.00174532925;
  }

  else
  {
    v25 = v22;
  }

  v26 = (v16.__sinval - v15.__sinval * cos(v19)) / v25;
  v27 = 0.0;
  if (v26 < 1.0)
  {
    v27 = 3.14159265;
    if (v26 > -1.0)
    {
      v27 = acos(v26);
    }
  }

  *a4 = v27;
  v28 = *a3 * 1800.0 / 3.14159265;
  if (v28 <= 0.0)
  {
    v29 = 0.0;
    if (v28 < 0.0)
    {
      v29 = ceil(v28 + -0.5);
    }
  }

  else
  {
    v29 = floor(v28 + 0.5);
  }

  *a3 = v29 / 572.957795;
  v30 = (v14 - v13) * 1800.0 / 3.14159265;
  if (v30 <= 0.0)
  {
    v31 = 0.0;
    if (v30 < 0.0)
    {
      v31 = ceil(v30 + -0.5);
    }
  }

  else
  {
    v31 = floor(v30 + 0.5);
  }

  if (v31 / 572.957795 == 0.0)
  {
    v7 = 0.0;
    if (v12 < v35)
    {
      v7 = 3.14159265;
    }

    goto LABEL_27;
  }

  v32 = *a4 * 1800.0 / 3.14159265;
  if (v32 <= 0.0)
  {
    v33 = 0.0;
    if (v32 < 0.0)
    {
      v33 = ceil(v32 + -0.5);
    }
  }

  else
  {
    v33 = floor(v32 + 0.5);
  }

  v34 = v33 / 572.957795;
  *a4 = v33 / 572.957795;
  if (sin(v14 - v13) < 0.0 && v34 >= 0.00174532925)
  {
    v7 = 6.28318531 - v34;
    goto LABEL_27;
  }
}

uint64_t BlueFin::GlUtcTime::fct2CtFctS(BlueFin::GlUtcTime *this, int a2)
{
  if (BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent - 1 >= a2 + BlueFin::GlWeekTowTime::m_ucCurrentLs)
  {
    v2 = BlueFin::GlWeekTowTime::m_ucCurrentLs;
  }

  else
  {
    v2 = BlueFin::GlWeekTowTime::m_ucNextLs;
  }

  return a2 + v2;
}

uint64_t BlueFin::GlUtcTime::ctFct2fctS(BlueFin::GlUtcTime *this)
{
  v1 = *(this + 3);
  if (BlueFin::GlWeekTowTime::m_ulCtFctOfNextLs - 1 >= v1)
  {
    v2 = &BlueFin::GlWeekTowTime::m_ucCurrentLs;
  }

  else
  {
    v2 = &BlueFin::GlWeekTowTime::m_ucNextLs;
  }

  return v1 - *v2;
}

uint64_t BlueFin::FMatrix::FMatrix(uint64_t result, float *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 17);
  if (v4 != *(a4 + 68))
  {
    DeviceFaultNotify("glpe_matrix.cpp", 91, "FMatrix", "mLeft.m_NbCols == mRight.m_NbCols");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.cpp", 91, "mLeft.m_NbCols == mRight.m_NbCols");
  }

  v5 = *(a2 + 16);
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = *(a4 + 64);
    do
    {
      if (v7 >= 1)
      {
        v8 = 0;
        v9 = a4;
        do
        {
          v10 = 0.0;
          if (v4 >= 1)
          {
            v11 = a2;
            v12 = v9;
            v13 = v4;
            do
            {
              v14 = *v11++;
              v15 = v14;
              v16 = *v12++;
              v10 = v10 + (v15 * v16);
              --v13;
            }

            while (v13);
          }

          *(result + 16 * v6 + 4 * v8++) = v10;
          v9 += 4;
        }

        while (v8 != v7);
      }

      ++v6;
      a2 += 4;
    }

    while (v6 != v5);
  }

  *(result + 64) = v5;
  *(result + 68) = *(a4 + 64);
  return result;
}

uint64_t BlueFin::Matrix::Matrix(uint64_t this, const BlueFin::BigMatrix *a2)
{
  v2 = *(a2 + 4);
  if (v2 >= 5)
  {
    v11 = "otBigMatrix.GetRowSize() <= MAX_MATR_DIM";
    DeviceFaultNotify("glpe_matrix.cpp", 250, "Matrix", "otBigMatrix.GetRowSize() <= MAX_MATR_DIM");
    v12 = 250;
    goto LABEL_12;
  }

  v3 = *(a2 + 5);
  if (v3 >= 5)
  {
    v11 = "otBigMatrix.GetColSize() <= MAX_MATR_DIM";
    DeviceFaultNotify("glpe_matrix.cpp", 251, "Matrix", "otBigMatrix.GetColSize() <= MAX_MATR_DIM");
    v12 = 251;
LABEL_12:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.cpp", v12, v11);
  }

  *(this + 128) = v2;
  *(this + 132) = v3;
  if (v2 >= 1)
  {
    v4 = 0;
    v5 = *(a2 + 1) + 8;
    v6 = this;
    do
    {
      if (v3 >= 1)
      {
        v7 = (*(v5 + 8 * v4) + 8);
        v8 = v3;
        v9 = v6;
        do
        {
          v10 = *v7++;
          *v9++ = v10;
          --v8;
        }

        while (v8);
      }

      ++v4;
      v6 += 32;
    }

    while (v4 != v2);
  }

  return this;
}

uint64_t BlueFin::Matrix::mult(uint64_t this, BOOL a2, const BlueFin::Matrix *a3, const BlueFin::Matrix *a4)
{
  v4 = *(a3 + 32);
  if (v4 != *(a4 + 32))
  {
    DeviceFaultNotify("glpe_matrix.cpp", 359, "mult", "mLeft.m_NbRows == mRight.m_NbRows");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.cpp", 359, "mLeft.m_NbRows == mRight.m_NbRows");
  }

  v5 = *(a3 + 33);
  v6 = *(a4 + 33);
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      if (v6 >= 1)
      {
        v8 = 0;
        v9 = a4;
        do
        {
          v10 = 0.0;
          if (v4 >= 1)
          {
            v11 = a3;
            v12 = v9;
            v13 = v4;
            do
            {
              v14 = *v11;
              v11 = (v11 + 32);
              v15 = v14;
              v16 = *v12;
              v12 += 4;
              v10 = v10 + v15 * v16;
              --v13;
            }

            while (v13);
          }

          *(this + 32 * i + 8 * v8++) = v10;
          v9 = (v9 + 8);
        }

        while (v8 != v6);
      }

      a3 = (a3 + 8);
    }
  }

  *(this + 128) = v5;
  *(this + 132) = v6;
  return this;
}

double BlueFin::Matrix::RotateCovMatrix(BlueFin::Matrix *this, BlueFin::Matrix *a2)
{
  if (*(this + 33) != *(a2 + 33) || *(this + 32) != *(a2 + 32))
  {
    DeviceFaultNotify("glpe_matrix.cpp", 600, "RotateCovMatrix", "this->GetColSize() == otR.GetColSize() && this->GetRowSize() == otR.GetRowSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.cpp", 600, "this->GetColSize() == otR.GetColSize() && this->GetRowSize() == otR.GetRowSize()");
  }

  v12 = 0;
  v10 = 0.0;
  BlueFin::Matrix::mult(v11, this, 1, a2, 0.0);
  BlueFin::Matrix::mult(v9, a2, v11);
  if (v9 != this)
  {
    v5 = v9[5];
    *(this + 4) = v9[4];
    *(this + 5) = v5;
    v6 = v9[7];
    *(this + 6) = v9[6];
    *(this + 7) = v6;
    v7 = v9[1];
    *this = v9[0];
    *(this + 1) = v7;
    v8 = v9[3];
    *(this + 2) = v9[2];
    *(this + 3) = v8;
    result = v10;
    *(this + 16) = v10;
  }

  return result;
}

uint64_t BlueFin::Matrix::operator-@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 132);
  if (v3 != *(result + 132) || (v4 = *(a2 + 128), v4 != *(result + 128)))
  {
    DeviceFaultNotify("glpe_matrix.cpp", 657, "operator-", "bCond");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.cpp", 657, "bCond");
  }

  if (v4 >= 1)
  {
    v5 = 0;
    v6 = a3;
    do
    {
      v7 = result;
      v8 = a2;
      v9 = v6;
      v10 = v3;
      if (v3 >= 1)
      {
        do
        {
          v11 = *v7++;
          v12 = v11;
          v13 = *v8++;
          *v9++ = v12 - v13;
          --v10;
        }

        while (v10);
      }

      ++v5;
      v6 += 4;
      a2 += 32;
      result += 32;
    }

    while (v5 != v4);
  }

  *(a3 + 128) = v4;
  *(a3 + 132) = v3;
  return result;
}

_DWORD *BlueFin::BigMatrix::Clone(_DWORD *this, const BlueFin::BigMatrix *a2)
{
  v2 = *(a2 + 4);
  v3 = *(a2 + 5);
  this[4] = v2;
  this[5] = v3;
  if (v2 > this[6] || (v4 = this, v3 > this[7]))
  {
    DeviceFaultNotify("glpe_matrix.cpp", 803, "Clone", "m_NbRows <= m_NbMaxRows && m_NbCols <= m_NbMaxCols");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.cpp", 803, "m_NbRows <= m_NbMaxRows && m_NbCols <= m_NbMaxCols");
  }

  if (v2 >= 1)
  {
    v6 = 1;
    do
    {
      this = memcpy((*(*(v4 + 8) + 8 * v6) + 8), (*(*(a2 + 1) + 8 * v6) + 8), 8 * *(v4 + 20));
    }

    while (v6++ < *(v4 + 16));
  }

  return this;
}

void BlueFin::BigMatrix::AddRow(BlueFin::BigMatrix *this)
{
  v2 = *(this + 4);
  if (v2 >= *(this + 6))
  {
    DeviceFaultNotify("glpe_matrix.cpp", 965, "AddRow", "bCond");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.cpp", 965, "bCond");
  }

  v3 = v2 + 1;
  *(this + 4) = v3;
  v4 = 8 * *(this + 5);
  v5 = (*(*(this + 1) + 8 * v3) + 8);

  bzero(v5, v4);
}

uint64_t BlueFin::BigMatrix::mult_sym(uint64_t this, BOOL a2, const BlueFin::BigMatrix *a3, const BlueFin::BigMatrix *a4)
{
  if (this == a3)
  {
    v20 = "this != &mLeft";
    DeviceFaultNotify("glpe_matrix.cpp", 1097, "mult_sym", "this != &mLeft");
    v21 = 1097;
    goto LABEL_22;
  }

  if (this == a4)
  {
    v20 = "this != &mRight";
    DeviceFaultNotify("glpe_matrix.cpp", 1098, "mult_sym", "this != &mRight");
    v21 = 1098;
    goto LABEL_22;
  }

  v4 = *(a3 + 4);
  if (v4 != *(a4 + 4))
  {
    v20 = "mLeft.m_NbRows == mRight.m_NbRows";
    DeviceFaultNotify("glpe_matrix.cpp", 1101, "mult_sym", "mLeft.m_NbRows == mRight.m_NbRows");
    v21 = 1101;
    goto LABEL_22;
  }

  v5 = *(a3 + 5);
  if (v5 != *(a4 + 5))
  {
    v20 = "mLeft.m_NbCols == mRight.m_NbCols";
    DeviceFaultNotify("glpe_matrix.cpp", 1103, "mult_sym", "mLeft.m_NbCols == mRight.m_NbCols");
    v21 = 1103;
LABEL_22:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.cpp", v21, v20);
  }

  if (v5 > *(this + 24) || v5 > *(this + 28))
  {
    v20 = "mLeft.m_NbCols <= m_NbMaxRows && mRight.m_NbCols <= m_NbMaxCols";
    DeviceFaultNotify("glpe_matrix.cpp", 1104, "mult_sym", "mLeft.m_NbCols <= m_NbMaxRows && mRight.m_NbCols <= m_NbMaxCols");
    v21 = 1104;
    goto LABEL_22;
  }

  if (v5 >= 1)
  {
    v6 = v5 + 1;
    v7 = 1;
    do
    {
      if (v7 <= v5)
      {
        v8 = *(this + 8);
        v9 = *(v8 + 8 * v7);
        v10 = *(a4 + 1) + 8;
        v11 = *(a3 + 1) + 8;
        v12 = v7;
        do
        {
          v13 = 0.0;
          if (v4 >= 1)
          {
            v14 = v11;
            v15 = v10;
            v16 = (v4 + 1) - 1;
            do
            {
              v17 = *v14++;
              v18 = *(v17 + 8 * v7);
              v19 = *v15++;
              v13 = v13 + v18 * *(v19 + 8 * v12);
              --v16;
            }

            while (v16);
          }

          *(v9 + 8 * v12) = v13;
          *(*(v8 + 8 * v12++) + 8 * v7) = v13;
        }

        while (v12 != v6);
      }

      ++v7;
    }

    while (v7 != v6);
  }

  *(this + 16) = v5;
  *(this + 20) = v5;
  return this;
}

BOOL BlueFin::BigMatrix::RemoveRow(BlueFin::BigMatrix *this, int a2)
{
  v2 = *(this + 4);
  v5 = a2 > 0 && v2 != 1 && v2 >= a2;
  if (v5)
  {
    *(this + 4) = v2 - 1;
    if (v2 > a2)
    {
      v6 = *(this + 5);
      v7 = a2;
      do
      {
        if (v6 >= 1)
        {
          v8 = (*(*(this + 1) + 8 * v7) + 8);
          v9 = (*(*(this + 1) + 8 * v7 + 8) + 8);
          v10 = (v6 + 1) - 1;
          do
          {
            v11 = *v9++;
            *v8++ = v11;
            --v10;
          }

          while (v10);
        }

        ++v7;
      }

      while (v2 > v7);
    }
  }

  return v5;
}

BOOL BlueFin::BigMatrix::inv(BlueFin::BigMatrix *this, BlueFin::BigMatrix *a2, const double *__src)
{
  v22[21] = *MEMORY[0x29EDCA608];
  v3 = *(this + 4);
  if (v3 != *(this + 5))
  {
    DeviceFaultNotify("glpe_matrix.cpp", 1352, "inv", "bCond");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.cpp", 1352, "bCond");
  }

  if (__src)
  {
    if (v3 > 0)
    {
      memcpy(v22, __src, 8 * v3);
      BlueFin::BigMatrix::Null(a2, v3, v3);
      goto LABEL_7;
    }

    BlueFin::BigMatrix::Null(a2, v3, v3);
    goto LABEL_26;
  }

  result = BlueFin::BigMatrix::choldci(this, *(this + 4), v22);
  if (result)
  {
    BlueFin::BigMatrix::Null(a2, v3, v3);
    if (v3 >= 1)
    {
LABEL_7:
      v7 = 0;
      v8 = *(a2 + 1);
      do
      {
        v9 = 0;
        v10 = *(a2 + 1);
        do
        {
          if (v9 == v7)
          {
            v11 = 1.0;
          }

          else
          {
            v11 = 0.0;
          }

          if (v9)
          {
            v12 = v9;
            do
            {
              v11 = v11 - *(*(*(this + 1) + 8 * v9 + 8) + 8 * v12) * *(*(v10 + 8 * v12) + 8 * v7 + 8);
              v13 = v12-- <= 1;
            }

            while (!v13);
          }

          v14 = v11 * v22[v9++];
          *(*(v8 + 8 * v9) + 8 * v7 + 8) = v14;
        }

        while (v9 != v3);
        ++v7;
        v15 = 8 * v3 + 8;
        v16 = v8 + v15;
        v17 = v3;
        do
        {
          v18 = *(v8 + 8 * v17);
          v19 = *(v18 + 8 * v7);
          if (v17 < v3)
          {
            v20 = 0;
            do
            {
              v19 = v19 - *(*(*(this + 1) + v15 + 8 * v20) + 8 * v17) * *(*(v16 + 8 * v20) + 8 * v7);
              ++v20;
            }

            while (v3 > v17 + v20);
          }

          *(v18 + 8 * v7) = v19 * v22[v17 - 1];
          v16 -= 8;
          v15 -= 8;
          v13 = v17-- <= 1;
        }

        while (!v13);
      }

      while (v7 != v3);
    }

LABEL_26:
    result = 1;
  }

  v21 = *MEMORY[0x29EDCA608];
  return result;
}

void *BlueFin::MatSkewCross::MatSkewCross(void *this, const BlueFin::SKFVector *a2)
{
  *this = a2;
  if (*(a2 + 2) != 3)
  {
    DeviceFaultNotify("glpe_matrix.cpp", 1563, "MatSkewCross", "m_vect.GetLen() == 3");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.cpp", 1563, "m_vect.GetLen() == 3");
  }

  return this;
}

double BlueFin::MatSkewCross::operator()(uint64_t a1, int a2, int a3)
{
  if (a2 >= 4)
  {
    v5 = "r <= 3";
    DeviceFaultNotify("glpe_matrix.cpp", 1578, "operator()", "r <= 3");
    v6 = 1578;
    goto LABEL_25;
  }

  if (a3 >= 4)
  {
    v5 = "c <= 3";
    DeviceFaultNotify("glpe_matrix.cpp", 1579, "operator()", "c <= 3");
    v6 = 1579;
LABEL_25:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.cpp", v6, v5);
  }

  if (a2 == 1 && a3 == 2)
  {
    v3 = *(**a1 + 24);
    return -v3;
  }

  if (a2 == 1 && a3 == 3)
  {
    return *(**a1 + 16);
  }

  if (a2 == 2 && a3 == 3)
  {
    v3 = *(**a1 + 8);
    return -v3;
  }

  if (a2 == 2 && a3 == 1)
  {
    return *(**a1 + 24);
  }

  if (a2 == 3 && a3 == 1)
  {
    v3 = *(**a1 + 16);
    return -v3;
  }

  result = 0.0;
  if (a2 == 3 && a3 == 2)
  {
    return *(**a1 + 8);
  }

  return result;
}

void BlueFin::BigMatrix_F::AddRow(BlueFin::BigMatrix_F *this)
{
  v2 = *(this + 486);
  if (v2 >= 21)
  {
    DeviceFaultNotify("glpe_matrix.cpp", 1790, "AddRow", "bCond");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.cpp", 1790, "bCond");
  }

  *(this + 486) = v2 + 1;
  v3 = 4 * *(this + 487);
  v4 = this + 84 * v2;

  bzero(v4, v3);
}

uint64_t *BlueFin::SKFVector::SortAscen(uint64_t *this)
{
  v1 = *(this + 2);
  if (v1 >= 2)
  {
    v2 = *this;
    v3 = v1 + 1;
    v4 = *this + 16;
    v5 = 2;
    v6 = 3;
    do
    {
      v7 = *(v2 + 8 * v5);
      v8 = v4;
      v9 = v6;
      while (1)
      {
        v10 = *(v2 + 8 * (v9 - 2));
        if (v10 <= v7)
        {
          break;
        }

        *v8-- = v10;
        if (--v9 <= 2)
        {
          v11 = 1;
          goto LABEL_8;
        }
      }

      v11 = v9 - 1;
LABEL_8:
      *(v2 + 8 * v11) = v7;
      ++v5;
      ++v6;
      v4 += 8;
    }

    while (v5 != v3);
  }

  return this;
}

uint64_t *BlueFin::SKFVector::mult(uint64_t *this, const BlueFin::Matrix *a2, const BlueFin::SKFVector *a3)
{
  v3 = *(a2 + 33);
  if (v3 != *(a3 + 2))
  {
    v16 = "rhs.GetColSize() == lhs.GetLen()";
    DeviceFaultNotify("glpe_matrix.cpp", 2159, "mult", "rhs.GetColSize() == lhs.GetLen()");
    v17 = 2159;
    goto LABEL_12;
  }

  v4 = *(a2 + 32);
  if (*(this + 3) < v4)
  {
    v16 = "m_MaxLen >= rhs.GetRowSize()";
    DeviceFaultNotify("glpe_matrix.cpp", 2160, "mult", "m_MaxLen >= rhs.GetRowSize()");
    v17 = 2160;
LABEL_12:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.cpp", v17, v16);
  }

  *(this + 2) = v4;
  if (v4 >= 1)
  {
    v5 = *this;
    v6 = v4 + 1;
    v7 = *a3 + 8;
    v8 = 1;
    do
    {
      v9 = 0.0;
      if (v3 >= 1)
      {
        v10 = a2;
        v11 = v7;
        v12 = (v3 + 1) - 1;
        do
        {
          v13 = *v10;
          v10 = (v10 + 8);
          v14 = v13;
          v15 = *v11++;
          v9 = v9 + v14 * v15;
          --v12;
        }

        while (v12);
      }

      *(v5 + 8 * v8++) = v9;
      a2 = (a2 + 32);
    }

    while (v8 != v6);
  }

  return this;
}

double BlueFin::SKFVector::dot(BlueFin::SKFVector *this, const BlueFin::SKFVector *a2)
{
  v2 = *(this + 2);
  if (v2 != *(a2 + 2))
  {
    DeviceFaultNotify("glpe_matrix.cpp", 2175, "dot", "this->GetLen() == lhs.GetLen()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.cpp", 2175, "this->GetLen() == lhs.GetLen()");
  }

  if (v2 < 1)
  {
    return 0.0;
  }

  v3 = (*a2 + 8);
  v4 = (*this + 8);
  result = 0.0;
  do
  {
    v6 = *v4++;
    v7 = v6;
    v8 = *v3++;
    result = result + v7 * v8;
    --v2;
  }

  while (v2);
  return result;
}

double BlueFin::vcross@<D0>(BlueFin *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 33) != 1 || *(this + 32) != 3)
  {
    DeviceFaultNotify("glpe_matrix.cpp", 2207, "vcross", "rotVect.GetColSize() == 1 && rotVect.GetRowSize() == 3");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.cpp", 2207, "rotVect.GetColSize() == 1 && rotVect.GetRowSize() == 3");
  }

  result = *(this + 8);
  v5 = *this;
  v6 = -*this;
  v7 = *(this + 4);
  *(a2 + 128) = 0x300000003;
  *a2 = 0;
  *(a2 + 8) = -result;
  *(a2 + 16) = v7;
  *(a2 + 32) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = v6;
  *(a2 + 64) = -v7;
  *(a2 + 72) = v5;
  *(a2 + 80) = 0;
  return result;
}

double BlueFin::QuaternionD::normalize(float64x2_t *this)
{
  v1 = *this;
  v2 = this[1];
  v3 = vmulq_f64(v1, v1);
  v4 = vmulq_f64(v2, v2);
  v5 = vaddq_f64(vaddq_f64(vaddq_f64(v3, vdupq_laneq_s64(v3, 1)), v4), vdupq_laneq_s64(v4, 1)).f64[0];
  if (v5 <= 0.0)
  {
    DeviceFaultNotify("glpe_quaternionD.cpp", 51, "normalize", "s > 0.0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_quaternionD.cpp", 51, "s > 0.0");
  }

  result = 1.0;
  if (v5 != 1.0)
  {
    result = sqrt(v5);
    v7 = vdupq_lane_s64(*&result, 0);
    *this = vdivq_f64(v1, v7);
    this[1] = vdivq_f64(v2, v7);
  }

  return result;
}

double BlueFin::QuaternionD::conj(BlueFin::QuaternionD *this)
{
  result = *this;
  v2 = -*(this + 1);
  v3 = -*(this + 2);
  v4 = -*(this + 3);
  return result;
}

void BlueFin::QuaternionD::gyroIntegration(uint64_t a1, float64x2_t *a2, double a3)
{
  v4 = a3 * 0.5;
  cosval = 0.0;
  v11 = vmulq_n_f64(*a2, v4);
  v12 = v4 * a2[1].f64[0];
  v5 = BlueFin::QuaternionD::normalize(&cosval);
  v6 = __sincosf_stret(v5);
  cosval = v6.__cosval;
  v11 = vmulq_n_f64(v11, v6.__sinval);
  v12 = v12 * v6.__sinval;
  *a1 = BlueFin::QuaternionD::operator*(a1, &cosval);
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
}

float64_t BlueFin::QuaternionD::operator*(double *a1, double *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a2[2];
  v9 = a2[3];
  v10 = *a1 * v5 + v3 * *a2 - v7 * v8 + v6 * v9;
  v12.f64[0] = *a1 * *a2 - v3 * v5 - v6 * v8 - v7 * v9;
  v12.f64[1] = v10;
  v13 = v5 * v7 + v6 * v4 + v2 * v8 - v3 * v9;
  v14 = v7 * v4 - v6 * v5 + v3 * v8 + v2 * v9;
  BlueFin::QuaternionD::normalize(&v12);
  return v12.f64[0];
}

double BlueFin::QuaternionD::q2Rot@<D0>(float64x2_t *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 128) = 0x300000003;
  v2 = *this;
  _Q1 = this[1];
  v4 = this->f64[1];
  _D5 = _Q1.f64[1];
  __asm { FMLS            D4, D5, V1.D[1] }

  v11 = -this->f64[0];
  v12 = vmuld_lane_f64(v11, _Q1, 1);
  *a2 = _D4;
  *(a2 + 8) = v12 + v4 * _Q1.f64[0] + v12 + v4 * _Q1.f64[0];
  v13 = vmuld_lane_f64(v4, _Q1, 1);
  *(a2 + 16) = v13 + v2.f64[0] * _Q1.f64[0] + v13 + v2.f64[0] * _Q1.f64[0];
  v14 = vmuld_lane_f64(v2.f64[0], _Q1, 1);
  __asm { FMLS            D7, D5, V1.D[1] }

  *(a2 + 32) = v14 + v4 * _Q1.f64[0] + v14 + v4 * _Q1.f64[0];
  *(a2 + 40) = _D7;
  v16 = vmuld_lane_f64(v11, v2, 1);
  *(a2 + 48) = v16 + _Q1.f64[0] * _Q1.f64[1] + v16 + _Q1.f64[0] * _Q1.f64[1];
  v17 = vdupq_lane_s64(*&_Q1.f64[0], 0);
  v17.f64[0] = v11;
  v18 = vmlaq_f64(vmulq_f64(_Q1, v17), vzip2q_s64(_Q1, v2), vextq_s8(v2, v2, 8uLL));
  *(a2 + 64) = vaddq_f64(v18, v18);
  __asm { FMLA            D0, D5, V1.D[1] }

  *(a2 + 80) = result;
  return result;
}

uint64_t BlueFin::QuaternionD::rot2Q(float64x2_t *this, const BlueFin::Matrix *a2)
{
  v2 = *a2 + 1.0;
  v3 = *(a2 + 5);
  v4 = *(a2 + 10);
  v5 = v2 + v3 + v4;
  if (v5 > 0.01)
  {
    v6 = sqrt(v5) * 0.5;
    this->f64[0] = v6;
    v7 = v6 * 4.0;
    this->f64[1] = (*(a2 + 9) - *(a2 + 6)) / v7;
    this[1].f64[0] = (*(a2 + 2) - *(a2 + 8)) / v7;
    v8 = *(a2 + 4) - *(a2 + 1);
LABEL_8:
    v16 = v8 / v7;
    v17 = 3;
LABEL_9:
    this->f64[v17] = v16;
    BlueFin::QuaternionD::normalize(this);
    return 1;
  }

  v9 = v2 - v3 - v4;
  if (v9 > 0.01)
  {
    v10 = sqrt(v9) * 0.5;
    this->f64[1] = v10;
    v7 = v10 * 4.0;
    this->f64[0] = (*(a2 + 9) - *(a2 + 6)) / v7;
    this[1].f64[0] = (*(a2 + 1) + *(a2 + 4)) / v7;
    v11 = *(a2 + 2);
    v12 = *(a2 + 8);
LABEL_7:
    v8 = v11 + v12;
    goto LABEL_8;
  }

  v13 = 1.0 - *a2;
  v14 = v13 + v3 - v4;
  if (v14 > 0.01)
  {
    v15 = sqrt(v14) * 0.5;
    this[1].f64[0] = v15;
    v7 = v15 * 4.0;
    this->f64[0] = (*(a2 + 2) - *(a2 + 8)) / v7;
    this->f64[1] = (*(a2 + 1) + *(a2 + 4)) / v7;
    v11 = *(a2 + 6);
    v12 = *(a2 + 9);
    goto LABEL_7;
  }

  v19 = v13 - v3 + v4;
  if (v19 > 0.01)
  {
    v20 = sqrt(v19) * 0.5;
    this[1].f64[1] = v20;
    v21 = v20 * 4.0;
    this->f64[0] = (*(a2 + 4) - *(a2 + 1)) / v21;
    this->f64[1] = (*(a2 + 2) + *(a2 + 8)) / v21;
    v16 = (*(a2 + 6) + *(a2 + 9)) / v21;
    v17 = 2;
    goto LABEL_9;
  }

  return 0;
}

void BlueFin::QuaternionD::qnb2Eul(BlueFin::QuaternionD *this, long double *a2, long double *a3, long double *a4)
{
  v4 = *this;
  v5 = *(this + 1);
  v6 = *(this + 2);
  v7 = *(this + 3);
  if (fabs(v4 * v4 + v5 * v5 + v6 * v6 + v7 * v7 + -1.0) >= 0.01)
  {
    DeviceFaultNotify("glpe_quaternionD.cpp", 176, "qnb2Eul", "FABS_D(mag() - 1.0) < 1e-2");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_quaternionD.cpp", 176, "FABS_D(mag() - 1.0) < 1e-2");
  }

  *a3 = asin((v4 * v6 + v5 * v7) * -2.0);
  v11 = *(this + 2);
  v12 = *(this + 1);
  v13 = v11 * *(this + 3) - *this * v12;
  *a2 = atan2(v13 + v13, (v11 * v11 + v12 * v12) * -2.0 + 1.0);
  v14 = *(this + 2);
  v15 = *(this + 3);
  v16 = *(this + 1) * v14 - *this * v15;
  *a4 = atan2(v16 + v16, (v15 * v15 + v14 * v14) * -2.0 + 1.0);
}

uint64_t BlueFin::QuaternionD::rotateV1toV2(float64x2_t *a1, double *a2, double *a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = v4 * v4 + v3 * v3 + v5 * v5;
  if (v6 != 0.0 && v6 != 1.0)
  {
    v6 = sqrt(v6);
    v3 = v3 / v6;
    v4 = v4 / v6;
    v5 = v5 / v6;
  }

  if (v6 < 0.000001)
  {
    return 0;
  }

  v9 = *a3;
  v8 = a3[1];
  v10 = a3[2];
  v11 = v8 * v8 + v9 * v9 + v10 * v10;
  if (v11 != 0.0 && v11 != 1.0)
  {
    v11 = sqrt(v11);
    v9 = v9 / v11;
    v8 = v8 / v11;
    v10 = v10 / v11;
  }

  if (v11 < 0.000001)
  {
    return 0;
  }

  v14 = v4 * v8 + v3 * v9 + v5 * v10;
  if (v14 >= -0.999999)
  {
    a1->f64[0] = v14 + 1.0;
    a1->f64[1] = v4 * v10 - v5 * v8;
    v15 = v5 * v9 - v3 * v10;
    v3 = v3 * v8 - v4 * v9;
    a1[1].f64[0] = v15;
LABEL_19:
    a1[1].f64[1] = v3;
    goto LABEL_20;
  }

  a1->f64[0] = 0.0;
  if (fabs(v3) >= fabs(v4))
  {
    a1->f64[1] = -v5;
    a1[1].f64[0] = 0.0;
    goto LABEL_19;
  }

  a1->f64[1] = 0.0;
  a1[1].f64[0] = -v5;
  a1[1].f64[1] = v4;
LABEL_20:
  BlueFin::QuaternionD::normalize(a1);
  return 1;
}

uint64_t BlueFin::GlEngineImplStd::GlEngineImplStd(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13)
{
  *a1 = &unk_2A1F11360;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 40) = a9;
  *(a1 + 48) = a10;
  *(a1 + 56) = 0xBC00000064;
  *(a1 + 64) = 16843009;
  *(a1 + 68) = 257;
  BlueFin::GlPeObjFactory::GlPeObjFactory(a1 + 72, (a1 + 40));
  *(a1 + 264) = &unk_2A1F116F0;
  *(a1 + 272) = a1;
  *(a1 + 280) = a2;
  *(a1 + 288) = a3;
  *(a1 + 296) = a4;
  *(a1 + 304) = a5;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0;
  *(a1 + 400) = a6;
  *(a1 + 408) = a7;
  *(a1 + 416) = a8;
  *(a1 + 424) = 0;
  *(a1 + 432) = a9;
  *(a1 + 440) = a10;
  *(a1 + 448) = &unk_2A1F11788;
  *(a1 + 456) = a1 + 264;
  *(a1 + 464) = a11;
  *(a1 + 568) = 0;
  *(a1 + 545) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 576) = 1;
  *(a1 + 584) = 0;
  *(a1 + 592) = 0;
  *(a1 + 600) = a1 + 264;
  *(a1 + 608) = 0;
  *(a1 + 612) = 0;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0;
  *(a1 + 696) = &unk_2A1F0C1D8;
  *(a1 + 704) = v20;
  *(a1 + 712) = a1 + 264;
  BlueFin::GlComStressImpl::GlComStressImpl(a1 + 720, a1 + 696);
  *(a1 + 4368) = 0u;
  *(a1 + 4386) = 0;
  *(a1 + 4384) = 1;
  *(a1 + 4388) = 0;
  *(a1 + 4396) = 0;
  *(a1 + 4400) = 0x100000010;
  *(a1 + 4924) = 0;
  bzero((a1 + 4408), 0x203uLL);
  *(a1 + 488) = BlueFin::GlEngineImplStd::cbOnSoftAssert;
  *(a1 + 496) = a1;
  *(a1 + 376) = a12;
  (*(*a1 + 712))(a1, a13);
  return a1;
}

void sub_2989D9C54(_Unwind_Exception *a1)
{
  *v2 = v3;
  BlueFin::GlComStressImpl::~GlComStressImpl((v1 + 720));
  _Unwind_Resume(a1);
}

uint64_t BlueFin::GlEngineImplStd::cbOnSoftAssert(uint64_t this, void *a2)
{
  if (this && *(this + 32) == 1)
  {
    v2 = *(this + 24) + 155648;
    v3 = *(*(this + 24) + 158168);
    *(*(this + 24) + 158168) = 2;
    if (v3 != 2)
    {
      *(v2 + 2536) = 1;
    }
  }

  return this;
}

uint64_t BlueFin::GlEngineImplStd::Dispose(BlueFin::GlEngineImplStd *this, void (*a2)(void *))
{
  *(this + 33) = 1;
  result = BlueFin::GlPeTimerMgr::StopAllRequests(this + 600);
  if (*(this + 32) == 1)
  {
    v4 = *(this + 3);
    GlCustomLog(12, "GL_REQ StopAllRequests\n");
    BlueFin::GlReqSm::StopAllRequests((v4 + 126144), 0);
    result = BlueFin::GlEngineImplStd::DisposeComponents(this, 1, v5, v6);
  }

  else if (*(this + 546))
  {
    v7 = BlueFin::GlUtils::m_pInstance;
    ++*(BlueFin::GlUtils::m_pInstance + 1088);
    v7[273] = (*(**v7 + 48))();
    result = BlueFin::GlComStressTestMgr::StopRequest(this + 87, *(this + 546));
  }

  if (*(this + 560) == 1)
  {
    v8 = *(this + 43);
    if (v8)
    {
      result = v8(*(this + 34), 0);
      *(this + 560) = 0;
    }
  }

  BlueFin::GlEngineDebug::m_pInstance = 0;
  return result;
}

void (**BlueFin::GlEngineImplStd::DisposeComponents(void (**this)(void), const char *a2, uint64_t a3, const char *a4))(void)
{
  v4 = a2;
  v5 = this;
  v28 = *MEMORY[0x29EDCA608];
  memset(v27, 0, sizeof(v27));
  v6 = this[3];
  if (!v6)
  {
    v9 = 0;
    v8 = 0;
    v11 = 2;
LABEL_37:
    v18 = BlueFin::GlUtils::m_pInstance;
    if (BlueFin::GlUtils::m_pInstance)
    {
      *(BlueFin::GlUtils::m_pInstance + 1552) = 0u;
      *(v18 + 1536) = 0u;
      *(v18 + 1520) = 0u;
      *(v18 + 1504) = 0u;
      *(v18 + 1488) = 0u;
      *(v18 + 1472) = 0u;
      *(v18 + 1456) = 0u;
      *(v18 + 1440) = 0u;
      *(v18 + 1424) = 0u;
      *(v18 + 1408) = 0u;
      *(v18 + 1392) = 0u;
      *(v18 + 1376) = 0u;
      *(v18 + 1360) = 0u;
      *(v18 + 1344) = 0u;
      *(v18 + 1328) = 0u;
      *(v18 + 1312) = 0u;
      *(v18 + 1296) = 0u;
      *(v18 + 1280) = 0u;
      *(v18 + 1264) = 0u;
      *(v18 + 1248) = 0u;
      v19 = *(v18 + 1092);
      *(v18 + 1236) = v19;
      *(v18 + 1232) = v19 + 59950;
    }

    goto LABEL_39;
  }

  v7 = this[1];
  if (!v7)
  {
    v25 = "m_ptGlSettingsImpl != nullptr";
    DeviceFaultNotify("glengine_std.cpp", 672, "DisposeComponents", "m_ptGlSettingsImpl != nullptr");
    v26 = 672;
    goto LABEL_62;
  }

  if (!this[2])
  {
    v25 = "m_ptGlEventPump != nullptr";
    DeviceFaultNotify("glengine_std.cpp", 673, "DisposeComponents", "m_ptGlEventPump != nullptr");
    v26 = 673;
    goto LABEL_62;
  }

  if (!BlueFin::GlUtils::m_pInstance)
  {
    v25 = "GlUtils::m_pInstance != nullptr";
    DeviceFaultNotify("glengine_std.cpp", 674, "DisposeComponents", "GlUtils::m_pInstance != nullptr");
    v26 = 674;
LABEL_62:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glengine_std.cpp", v26, v25);
  }

  v8 = 0;
  v9 = *(v7 + 25964);
  v10 = *(v6 + 2);
  v11 = 2;
  if (v10 > 2)
  {
    if (v10 <= 4)
    {
      if (v10 == 3)
      {
        BlueFin::GlFormat::glsnprintf(v27, 0x1FF, "Abnormal GlEngine stop. User abort", a4);
        GlCustomLog(10, "%s!\n", v27);
        v8 = 0;
        v11 = 4;
      }

      else
      {
        v8 = 0;
        v11 = 5;
      }

      goto LABEL_30;
    }

    if (v10 != 5)
    {
      if (v10 == 6)
      {
        GlCustomLog(10, "Abnormal GlEngine stop. ASIC Communication failure while waiting for standby ack\n");
        v8 = 1;
      }

      goto LABEL_30;
    }

    BlueFin::GlFormat::glsnprintf(v27, 0x1FF, "Abnormal GlEngine stop. ASIC mismatch hence communication has broken down!  Expected %d", a4, *(v7 + 22));
    GlCustomLog(10, "%s\n", v27);
    GlCustomLog(11, "Please verify configuration settings for your hardware.\n");
LABEL_29:
    v8 = 0;
    v11 = 1;
    goto LABEL_30;
  }

  switch(v10)
  {
    case 0:
      v11 = 0;
      v8 = 0;
      break;
    case 1:
      v12 = v6 + 372736;
      v13 = *(v7 + 22);
      if (v13 <= 0x28)
      {
        v14 = BlueFin::ulRfType2AsicNumber[v13];
      }

      else
      {
        v14 = 0;
      }

      if (*(v12 + 2181))
      {
        v15 = "normal operation";
      }

      else if (*(v12 + 2182))
      {
        v15 = "initialization";
      }

      else
      {
        v15 = "HAL init";
      }

      BlueFin::GlFormat::glsnprintf(v27, 0x1FF, "Abnormal GlEngine stop. ASIC (%u) communication failure during stage %s", a4, v14, v15);
      GlCustomLog(10, "%s\n", v27);
      GlCustomLog(11, "Please verify configuration settings for your hardware.\n");
      GlCustomLog(11, "This could indicate a problem in the HAL transport layer.\n");
      goto LABEL_29;
    case 2:
      BlueFin::GlFormat::glsnprintf(v27, 0x1FF, "Abnormal GlEngine stop. Initial time estimate was bad", a4);
      GlCustomLog(10, "%s\n", v27);
      v8 = 0;
      v11 = 3;
      break;
  }

LABEL_30:
  BlueFin::GlPosEng::Dispose(v5[3], a2);
  v16 = v5[10];
  if (v16)
  {
    (v16)(v5[3]);
    v17 = v5[10];
    v5[3] = 0;
    if (v17)
    {
      (v17)(v5[2]);
    }
  }

  else
  {
    v5[3] = 0;
  }

  v5[2] = 0;
  this = BlueFin::GlPeObjFactory::Dispose(v5 + 9);
  BlueFin::GlPeObjFactory::m_potGlPeObjFactory = 0;
  v18 = BlueFin::GlUtils::m_pInstance;
  if (BlueFin::GlUtils::m_pInstance)
  {
    this = *(BlueFin::GlUtils::m_pInstance + 8);
    if (this)
    {
      this = (*(*this + 32))(this, 0);
    }

    goto LABEL_37;
  }

LABEL_39:
  if (v4)
  {
    this = v5[1];
    if (this && *(v5 + 4409) == 1)
    {
      v20 = v5[10];
      if (v20)
      {
        this = v20();
        v18 = BlueFin::GlUtils::m_pInstance;
      }

      v5[1] = 0;
      *(v5 + 4409) = 0;
    }

    if (v18 && *(v5 + 4408) == 1)
    {
      this = BlueFin::GlPeObjFactory::DisposeGlUtils((v5 + 9));
      *(v5 + 4408) = 0;
    }
  }

  v21 = *(v5 + 560);
  if ((v21 & ~v9 & 1) != 0 || (v8 & v9 & v21) != 0)
  {
    v11 = v8 ? 0 : v11;
    v22 = v5[43];
    if (v22)
    {
      this = (v22)(v5[34], 0);
      *(v5 + 560) = 0;
    }
  }

  if (v4)
  {
    v23 = v5[36];
    if (v23)
    {
      this = (v23)(v5[34], v11, v27);
    }
  }

  *(v5 + 32) = 0;
  v24 = *MEMORY[0x29EDCA608];
  return this;
}

uint64_t BlueFin::GlEngineImplStd::SetCbOnResource(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 336) = a2;
  *(result + 344) = a3;
  return result;
}

uint64_t BlueFin::GlEngineImplStd::PauseRequest(uint64_t a1, uint64_t a2)
{
  if (!a2 || *(a2 + 16) != 12)
  {
    return 0;
  }

  result = 1;
  *(a2 + 136) = 1;
  return result;
}

uint64_t BlueFin::GlEngineImplStd::ResumeRequest(uint64_t a1, uint64_t a2, int a3)
{
  if (!a2 || *(a2 + 16) != 12)
  {
    return 0;
  }

  *(a2 + 136) = 0;
  *(a2 + 116) = a3;
  return 1;
}

unint64_t BlueFin::GlEngineImplStd::BypassLteFilter(unint64_t this, int a2)
{
  v2 = *(this + 24);
  if (v2 && *(this + 32) == 1)
  {
    v3 = a2;
    v4 = 70;
    if (a2)
    {
      v4 = 84;
    }

    GlCustomLog(15, "GlPosEng::BypassLteFilter: %c\n", v4);

    return BlueFin::GlReqSm::BypassLteFilter((v2 + 126144), v3);
  }

  return this;
}

uint64_t BlueFin::GlEngineImplStd::SetLteFilter(uint64_t a1, int a2, unsigned int a3)
{
  if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = a2;
  }

  if (a3 < 3 == v3)
  {
    return 1;
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    if ((v5[22] - 39) > 1)
    {
      return 2;
    }

    (*(*v5 + 376))(v5);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    if (*(a1 + 32) == 1)
    {
      GlCustomLog(15, "GlPosEng::UpdateLteFilter: \n");
      BlueFin::GlReqSm::UpdateLteFilter((v6 + 126144));
    }
  }

  return 0;
}

uint64_t *BlueFin::GlEngineImplStd::ToggleNotchFilterConfiguration(uint64_t *result, unsigned __int8 *a2, uint64_t a3)
{
  v3 = result[3];
  v4 = *(result + 32);
  if (v3)
  {
    if (result[4])
    {
      return BlueFin::GlReqSm::ToggleNotchFilterConfig(v3 + 126144, a2, a3);
    }
  }

  else if (result[4])
  {
    return result;
  }

  return BlueFin::GlPeTimerMgr::UpdateExpirationTime(result + 75, 100000000, 0);
}

uint64_t *BlueFin::GlEngineImplStd::SetBlankingConfigOnTheFly(uint64_t *result, int *a2)
{
  v2 = result[3];
  v3 = *(result + 32);
  if (v2)
  {
    if (result[4])
    {
      return BlueFin::GlReqSm::SetBlankingConfigOnTheFly(v2 + 126144, a2);
    }
  }

  else if (result[4])
  {
    return result;
  }

  return BlueFin::GlPeTimerMgr::UpdateExpirationTime(result + 75, 100000000, 0);
}

uint64_t *BlueFin::GlEngineImplStd::FlushBreadcrumbs(BlueFin::GlEngineImplStd *this)
{
  if (*(this + 32) != 1)
  {
    return BlueFin::GlPeTimerMgr::UpdateExpirationTime(this + 75, 100000000, 0);
  }

  result = *(this + 3);
  if (result)
  {
    return (*(*result + 392))();
  }

  return result;
}

uint64_t *BlueFin::GlEngineImplStd::ModifyBreadcrumbSelfWakeupTime(uint64_t *this)
{
  if ((this[4] & 1) == 0)
  {
    return BlueFin::GlPeTimerMgr::UpdateExpirationTime(this + 75, 100000000, 0);
  }

  return this;
}

uint64_t *BlueFin::GlEngineImplStd::GetBatchedLocation(BlueFin::GlEngineImplStd *this)
{
  if (*(this + 32) != 1)
  {
    return BlueFin::GlPeTimerMgr::UpdateExpirationTime(this + 75, 100000000, 0);
  }

  result = *(this + 3);
  if (result)
  {
    return (*(*result + 400))();
  }

  return result;
}

uint64_t BlueFin::GlEngineImplStd::SetRfLoss_dB_Ap(BlueFin::GlEngineImplStd *this, float a2)
{
  result = *(this + 1);
  if (result)
  {
    return (*(*result + 64))(a2);
  }

  return result;
}

uint64_t BlueFin::GlEngineImplStd::SetRfLoss_dB_Ap_L5(BlueFin::GlEngineImplStd *this, float a2)
{
  result = *(this + 1);
  if (result)
  {
    return (*(*result + 72))(a2);
  }

  return result;
}

uint64_t BlueFin::GlEngineImplStd::SetRfLoss_dB_Cp(BlueFin::GlEngineImplStd *this, float a2)
{
  result = *(this + 1);
  if (result)
  {
    return (*(*result + 80))(a2);
  }

  return result;
}

uint64_t BlueFin::GlEngineImplStd::SetRfLoss_dB_Cp_L5(BlueFin::GlEngineImplStd *this, float a2)
{
  result = *(this + 1);
  if (result)
  {
    return (*(*result + 88))(a2);
  }

  return result;
}

unint64_t BlueFin::GlEngineImplStd::SetL5HardwareDelayInMeters(BlueFin::GlPosEng **this, __n128 a2)
{
  if (*(this + 32) == 1 && this[3])
  {
    return BlueFin::GlPosEng::UpdateL5HardwareDelayInMeters(this[3], a2.n128_f32[0]);
  }

  result = this[1];
  if (result)
  {
    return (*(*result + 256))(a2);
  }

  return result;
}

unint64_t BlueFin::GlEngineImplStd::SetL5DeltaHardwareDelayInMeters(BlueFin::GlPosEng **this, __n128 a2)
{
  if (*(this + 32) == 1 && this[3])
  {
    return BlueFin::GlPosEng::UpdateL5DeltaHardwareDelayInMeters(this[3], a2.n128_f32[0]);
  }

  result = this[1];
  if (result)
  {
    return (*(*result + 264))(a2);
  }

  return result;
}

uint64_t *BlueFin::GlEngineImplStd::ComDacData(BlueFin::GlEngineImplStd *this, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void (**a19)(BlueFin::GlGpsTime *__hidden this), uint64_t a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, __int128 a25, __int128 a26, __int128 a27, __int128 a28, uint64_t a29, uint64_t a30, BlueFin::GlRequestImpl *a31, int a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, char a56, int a57, char a58)
{
  if (*(this + 32) == 1)
  {
    v61 = BlueFin::GlUtils::m_pInstance;
    ++*(BlueFin::GlUtils::m_pInstance + 1088);
    v61[273] = (*(**v61 + 48))();
    v69 = *(*(this + 3) + 40);
    if (v69)
    {
      (*(*v69 + 192))(v69, a2, a3);
    }

    return BlueFin::GlEngineImplStd::CommonAPIcode(this, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58);
  }

  else
  {
    v71 = (this + 600);

    return BlueFin::GlPeTimerMgr::UpdateExpirationTime(v71, 100000000, 0);
  }
}

uint64_t *BlueFin::GlEngineImplStd::ChipData_GRABSNQ_643487(BlueFin::GlEngineImplStd *this, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void (**a19)(BlueFin::GlGpsTime *__hidden this), uint64_t a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, __int128 a25, __int128 a26, __int128 a27, __int128 a28, uint64_t a29, uint64_t a30, BlueFin::GlRequestImpl *a31, int a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, char a56, int a57, char a58)
{
  v58 = a3;
  if (*(this + 32) == 1)
  {
    if (!a2)
    {
      DeviceFaultNotify("glengine_std.cpp", 1428, "ChipData_GRABSNQ_643487", "pcData != nullptr");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glengine_std.cpp", 1428, "pcData != nullptr");
    }

    v61 = *(this + 3);
    *(v61 + 179704) = 0;
    *(v61 + 374918) = 1;
    if ((*(*(v61 + 16) + 25964) & 1) == 0)
    {
      BlueFin::GlReqSm::ReceiveChipData((v61 + 126144), a2, a3);
    }

    return BlueFin::GlEngineImplStd::CommonAPIcode(this, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58);
  }

  else if (*(this + 546))
  {
    v63 = BlueFin::GlUtils::m_pInstance;
    ++*(BlueFin::GlUtils::m_pInstance + 1088);
    v63[273] = (*(**v63 + 48))();

    return BlueFin::GlComStressTestMgr::ChipData_GRABSNQ_643487(this + 696, a2, v58);
  }

  else
  {
    v64 = (this + 600);

    return BlueFin::GlPeTimerMgr::UpdateExpirationTime(v64, 100000000, 0);
  }
}

uint64_t *BlueFin::GlEngineImplStd::RefFreqStatus(BlueFin::GlEngineImplStd *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void (**a19)(BlueFin::GlGpsTime *__hidden this), uint64_t a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, __int128 a25, __int128 a26, __int128 a27, __int128 a28, uint64_t a29, uint64_t a30, BlueFin::GlRequestImpl *a31, int a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, char a56, int a57, char a58)
{
  if (!a2)
  {
    DeviceFaultNotify("glengine_std.cpp", 1641, "RefFreqStatus", "pFreqStat != nullptr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glengine_std.cpp", 1641, "pFreqStat != nullptr");
  }

  if (*(a2 + 8) == 4)
  {
    BlueFin::GlEngineImplStd::LoadComponents(this, 0);
  }

  if (*(this + 32) == 1)
  {
    v60 = BlueFin::GlUtils::m_pInstance;
    ++*(BlueFin::GlUtils::m_pInstance + 1088);
    v60[273] = (*(**v60 + 48))();
    GlCustomLog(14, "GlEngine::RefFreqStatus(%d, %d)[%d, 0x%x] %u\n", *a2, *(a2 + 4), *(a2 + 8), *(a2 + 12), *(a2 + 16));
    BlueFin::GlPosEng::SetRefFreqStatus(*(this + 3), a2);

    return BlueFin::GlEngineImplStd::CommonAPIcode(this, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58);
  }

  else
  {

    return BlueFin::GlPeTimerMgr::UpdateExpirationTime(this + 75, 100000000, 0);
  }
}

uint64_t *BlueFin::GlEngineImplStd::DisableBeidou(BlueFin::GlEngineImplStd *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void (**a19)(BlueFin::GlGpsTime *__hidden this), uint64_t a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, __int128 a25, __int128 a26, __int128 a27, __int128 a28, uint64_t a29, uint64_t a30, BlueFin::GlRequestImpl *a31, int a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, char a56, int a57, char a58)
{
  if (*(this + 32) == 1)
  {
    v60 = BlueFin::GlUtils::m_pInstance;
    ++*(BlueFin::GlUtils::m_pInstance + 1088);
    v60[273] = (*(**v60 + 48))();
    v61 = 70;
    if (a2)
    {
      v61 = 84;
    }

    GlCustomLog(14, "GlEngine::DisableBeidou (%c)\n", v61);
    v69 = *(this + 3);
    *(v69 + 180184) = a2;
    *(*(v69 + 132464) + 56216) = a2;

    return BlueFin::GlEngineImplStd::CommonAPIcode(this, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58);
  }

  else
  {
    v71 = (this + 600);

    return BlueFin::GlPeTimerMgr::UpdateExpirationTime(v71, 100000000, 0);
  }
}

uint64_t *BlueFin::GlEngineImplStd::SetDutyCycleMinMaxBlockParams(BlueFin::GlEngineImplStd *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void (**a19)(BlueFin::GlGpsTime *__hidden this), uint64_t a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, __int128 a25, __int128 a26, __int128 a27, __int128 a28, uint64_t a29, uint64_t a30, BlueFin::GlRequestImpl *a31, int a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, char a56, int a57, char a58)
{
  if (*(this + 32) == 1)
  {
    v62 = BlueFin::GlUtils::m_pInstance;
    ++*(BlueFin::GlUtils::m_pInstance + 1088);
    v62[273] = (*(**v62 + 48))();
    if (a2)
    {
      GlCustomLog(14, "GlEngine::SetDutyCycleMinMaxBlockParameters(Min %d,Max %d)\n");
    }

    else
    {
      GlCustomLog(14, "GlEngine::SetDutyCycleMinMaxBlockParameters to Asic Defaults\n");
    }

    (*(**(*(this + 3) + 126456) + 144))(*(*(this + 3) + 126456), a2, a3, a4);

    return BlueFin::GlEngineImplStd::CommonAPIcode(this, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58);
  }

  else
  {
    v63 = (this + 600);

    return BlueFin::GlPeTimerMgr::UpdateExpirationTime(v63, 100000000, 0);
  }
}

uint64_t *BlueFin::GlEngineImplStd::SetMeasurementIntervalAdjustment(BlueFin::GlEngineImplStd *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void (**a19)(BlueFin::GlGpsTime *__hidden this), uint64_t a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, __int128 a25, __int128 a26, __int128 a27, __int128 a28, uint64_t a29, uint64_t a30, BlueFin::GlRequestImpl *a31, int a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, char a56, int a57, char a58)
{
  if (*(this + 32) == 1)
  {
    v60 = BlueFin::GlUtils::m_pInstance;
    ++*(BlueFin::GlUtils::m_pInstance + 1088);
    v60[273] = (*(**v60 + 48))();
    GlCustomLog(14, "GlEngine::SetMeasurementIntervalAdjustment to ---\n");
    BlueFin::GlReqSm::SetMIAdjustmentFromApi(*(this + 3) + 126144, a2);

    return BlueFin::GlEngineImplStd::CommonAPIcode(this, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58);
  }

  else
  {
    v69 = (this + 600);

    return BlueFin::GlPeTimerMgr::UpdateExpirationTime(v69, 100000000, 0);
  }
}

uint64_t *BlueFin::GlEngineImplStd::SetUserSpecifiedDwellPeriodMs(BlueFin::GlEngineImplStd *this, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void (**a19)(BlueFin::GlGpsTime *__hidden this), uint64_t a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, __int128 a25, __int128 a26, __int128 a27, __int128 a28, uint64_t a29, uint64_t a30, BlueFin::GlRequestImpl *a31, int a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, char a56, int a57, char a58)
{
  if (*(this + 32) == 1)
  {
    v61 = BlueFin::GlUtils::m_pInstance;
    ++*(BlueFin::GlUtils::m_pInstance + 1088);
    v61[273] = (*(**v61 + 48))();
    BlueFin::GlReqSm::SetDwellPeriodMs((*(this + 3) + 126144), a2, a3);

    return BlueFin::GlEngineImplStd::CommonAPIcode(this, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58);
  }

  else
  {
    v70 = (this + 600);

    return BlueFin::GlPeTimerMgr::UpdateExpirationTime(v70, 100000000, 0);
  }
}

uint64_t *BlueFin::GlEngineImplStd::DisarmWaitForUserTimer(BlueFin::GlEngineImplStd *this, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void (**a19)(BlueFin::GlGpsTime *__hidden this), uint64_t a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, __int128 a25, __int128 a26, __int128 a27, __int128 a28, uint64_t a29, uint64_t a30, BlueFin::GlRequestImpl *a31, int a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, char a56, int a57, char a58)
{
  if (*(this + 32) == 1)
  {
    v60 = BlueFin::GlUtils::m_pInstance;
    ++*(BlueFin::GlUtils::m_pInstance + 1088);
    v60[273] = (*(**v60 + 48))();
    *(*(this + 3) + 157940) = a2;

    return BlueFin::GlEngineImplStd::CommonAPIcode(this, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58);
  }

  else
  {
    v69 = (this + 600);

    return BlueFin::GlPeTimerMgr::UpdateExpirationTime(v69, 100000000, 0);
  }
}

uint64_t *BlueFin::GlEngineImplStd::SetUserSpecifiedMeasurementIntervalSec(BlueFin::GlEngineImplStd *this, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void (**a19)(BlueFin::GlGpsTime *__hidden this), uint64_t a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, __int128 a25, __int128 a26, __int128 a27, __int128 a28, uint64_t a29, uint64_t a30, BlueFin::GlRequestImpl *a31, int a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, char a56, int a57, char a58)
{
  if (*(this + 32) == 1)
  {
    v61 = BlueFin::GlUtils::m_pInstance;
    ++*(BlueFin::GlUtils::m_pInstance + 1088);
    v61[273] = (*(**v61 + 48))();
    BlueFin::GlReqSm::SetMeasurementIntervalSec((*(this + 3) + 126144), a2, a3);

    return BlueFin::GlEngineImplStd::CommonAPIcode(this, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58);
  }

  else
  {
    v70 = (this + 600);

    return BlueFin::GlPeTimerMgr::UpdateExpirationTime(v70, 100000000, 0);
  }
}

BOOL BlueFin::GlEngineImplStd::SetFixStatus(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v46 = *MEMORY[0x29EDCA608];
  if (*(v1 + 32) == 1)
  {
    v3 = v2;
    if (!v2)
    {
      DeviceFaultNotify("glengine_std.cpp", 2480, "SetFixStatus", "pFixStatus != nullptr");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glengine_std.cpp", 2480, "pFixStatus != nullptr");
    }

    v4 = v1;
    v5 = BlueFin::GlUtils::m_pInstance;
    ++*(BlueFin::GlUtils::m_pInstance + 1088);
    v5[273] = (*(**v5 + 48))();
    v6 = *(v4[1] + 828);
    v7 = " - ignored";
    if ((v6 & 0x1000) == 0)
    {
      v7 = "";
    }

    GlCustomLog(15, "GlEngine::SetFixStatus%s\n", v7);
    if ((v6 & 0x1000) != 0)
    {
      fixed = 0;
    }

    else
    {
      v15 = v4[3];
      memcpy(__dst, v3, 0x1CF8uLL);
      memset(&__dst[927], 248, 24);
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      fixed = BlueFin::GlReqSm::SetAsstFixStatus(v15 + 126144, __dst, 1);
    }

    BlueFin::GlEngineImplStd::CommonAPIcode(v4, v8, v9, v10, v11, v12, v13, v14, v19, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], *&__dst[11], *&__dst[13], *&__dst[15], *&__dst[17], *&__dst[19], *&__dst[21], *&__dst[23], *&__dst[25], __dst[27], __dst[28], __dst[29], __dst[30], __dst[31], __dst[32], __dst[33], __dst[34], __dst[35], __dst[36], __dst[37], __dst[38], __dst[39], __dst[40], __dst[41], __dst[42], __dst[43], __dst[44], __dst[45], __dst[46], __dst[47], __dst[48], __dst[49], __dst[50], __dst[51], __dst[52], __dst[53], SBYTE4(__dst[53]), __dst[54], SBYTE4(__dst[54]));
  }

  else
  {
    fixed = 0;
  }

  v17 = *MEMORY[0x29EDCA608];
  return fixed;
}

uint64_t BlueFin::GlEngineImplStd::SetPpsPlatformTime(uint64_t a1, unsigned __int16 *a2)
{
  v2 = (a2 != 0) & *(a1 + 32);
  if (v2 == 1)
  {
    GlCustomLog(15, "GlEngineImplStd::SetPpsPlatformTime: (%d-%d-%d %02d:%02d:%02d.%03d%03d)\n", *a2, a2[1], a2[2], a2[3], a2[4], a2[5], a2[6], a2[7]);
    v5 = *(a1 + 24);
    BlueFin::GlPeHula::SetPpsPlatformTime(v5 + 362848, a2, v6, v7, v8);
    v9 = *a2;
    *(v5 + 132528) = *(a2 + 4);
    *(v5 + 132512) = v9;
  }

  return v2;
}

uint64_t *BlueFin::GlEngineImplStd::InitCpuLoad(BlueFin::GlEngineImplStd *this, uint64_t a2, uint64_t a3, char *__source, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void (**a19)(BlueFin::GlGpsTime *__hidden this), uint64_t a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, __int128 a25, __int128 a26, __int128 a27, __int128 a28, uint64_t a29, uint64_t a30, BlueFin::GlRequestImpl *a31, int a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, char a56, int a57, char a58)
{
  *(this + 64) = a2;
  if (*(this + 32) == 1)
  {

    return BlueFin::GlEngineImplStd::CommonAPIcode(this, a2, a3, __source, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58);
  }

  else
  {
    v60 = *(this + 1);
    if (!v60 || (*(v60 + 25868) = a3, !__source) || (result = strlcpy((v60 + 25870), __source, 0x50uLL), (*(this + 32) & 1) == 0))
    {

      return BlueFin::GlPeTimerMgr::UpdateExpirationTime(this + 75, 100000000, 0);
    }
  }

  return result;
}

uint64_t *BlueFin::GlEngineImplStd::NotifyCurrentMachTimeSec(uint64_t *this, int a2)
{
  if (*(this + 32) != 1)
  {
    return BlueFin::GlPeTimerMgr::UpdateExpirationTime(this + 75, 100000000, 0);
  }

  *(this[3] + 125892) = a2;
  return this;
}

BlueFin::GlFormat *BlueFin::GlEngineImplStd::ReportDump(BlueFin::GlEngineImplStd *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v53 = *MEMORY[0x29EDCA608];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  *__s = 0u;
  v38 = 0u;
  v5 = *(this + 3);
  if (!v5)
  {
    v13 = 0;
    v31 = 0;
    v14 = (this + 4411);
    *(this + 4411) = 0;
    v15 = "";
    v10 = __s;
    v16 = -7200001;
    goto LABEL_26;
  }

  BlueFin::GlPeNmeaGen::FormatNmeaSIO((v5 + 157952), __s, 0x100, a4);
  if (__s[0])
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 1;
    v10 = __s;
    while (1)
    {
      v11 = __s[v6];
      if (v11 == 42)
      {
        __s[v6] = 0;
      }

      else if (v11 == 44)
      {
        if (v8 == 2)
        {
          v10 = &__s[v9];
        }

        else if (v8 >= 3)
        {
          if (v7 == 2)
          {
            __s[v6] = 46;
          }

          else
          {
            if (v7 == 1)
            {
              v7 = 0;
              __s[v6] = 59;
              goto LABEL_17;
            }

            __s[v6] = 61;
            v7 = 2;
            if (v8 == 15 || v8 == 18)
            {
              goto LABEL_17;
            }
          }

          v7 = 1;
        }

LABEL_17:
        ++v8;
      }

      v6 = v9;
      if (strlen(__s) <= v9++)
      {
        goto LABEL_22;
      }
    }
  }

  v10 = __s;
LABEL_22:
  v17 = *(this + 3);
  v16 = *(v17 + 123784);
  v31 = *(v17 + 245344);
  if (v16 == -7200001 || (v18 = *(v17 + 245424), v32 = *(v18 + 16), memcpy(v36, *(v18 + 8), 4 * v32), v34 = 0, v33 = 0, v35 = v36[0], BlueFin::GlSetIterator::operator++(&v32), v33 == v32))
  {
    v13 = 0;
    v14 = (this + 4411);
    *(this + 4411) = 0;
LABEL_25:
    v15 = (*(**(v17 + 40) + 680))(*(v17 + 40), &v32, 256);
    goto LABEL_26;
  }

  LODWORD(v13) = 0;
  do
  {
    v13 = (v13 + 1);
    BlueFin::GlSetIterator::operator++(&v32);
  }

  while (v33 != v32);
  v14 = (this + 4411);
  *(this + 4411) = 0;
  if (v17)
  {
    goto LABEL_25;
  }

  v15 = "";
LABEL_26:
  if (BlueFin::GlUtils::m_pInstance)
  {
    v19 = (*(BlueFin::GlUtils::m_pInstance + 1092) - *(BlueFin::GlUtils::m_pInstance + 1236));
  }

  else
  {
    v19 = 0xFFFFFFFFLL;
  }

  v20 = v10;
  v21 = *(this + 3);
  if (v21)
  {
    v22 = *(v21 + 126160);
    v23 = *(v21 + 126168);
    v24 = *(v21 + 126248);
    v25 = (*(BlueFin::GlUtils::m_pInstance + 1092) - *(v21 + 180984));
    v26 = BlueFin::GlReqSm::ReportDump((v21 + 126144));
  }

  else
  {
    v22 = "";
    v25 = 0xFFFFFFFFLL;
    v23 = "";
    v24 = 0xFFFFFFFFLL;
    v26 = "";
  }

  if (v16 == -7200001)
  {
    v27 = 0xFFFFFFFFLL;
  }

  else
  {
    v27 = v16;
  }

  v28 = 89;
  if (!v31)
  {
    v28 = 78;
  }

  BlueFin::GlFormat::glsnprintf(v14, 0x1FF, "FIX=%c;FNUM=%d;SAT=%d;%s;LMS=%d;NOW=%d;%s;PE_PREVSTATE=%s;PE_STATE=%s;PE_MAX_DELAY=%d;LASTDATAMS=%d;REQSM=%s", a4, v28, v31, v13, v15, v27, v19, v20, v23, v22, v24, v25, v26);
  v29 = *MEMORY[0x29EDCA608];
  return v14;
}

unint64_t BlueFin::GlEngineImplStd::SetEngineType(uint64_t a1, int a2, uint64_t a3, const char *a4)
{
  if (*(a1 + 4928))
  {
    DeviceFaultNotify("glengine_std.cpp", 2842, "SetEngineType", "m_eEngineType == GL_ENGINE_TYPE_UNSET");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glengine_std.cpp", 2842, "m_eEngineType == GL_ENGINE_TYPE_UNSET");
  }

  *(a1 + 4928) = a2;
  v4 = "unset";
  if (a2 == 2)
  {
    v4 = "hairtail";
  }

  if (a2 == 1)
  {
    v4 = "sardine";
  }

  return BlueFin::GlFormat::glsnprintf(&BlueFin::GlVersion::m_acVersionString, 0x100, "@(#)Broadcom GLL ver. 162.20.25 643487, 2025/Sep/18, 11:13:58, build_job_id:2748, %s://depot/client/core/rel/Olympic/OSX_20.24.559185.v8.0/...\n", a4, v4);
}

uint64_t *BlueFin::GlEngineImplStd::GetRadioRegisters(uint64_t *this, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void (**a19)(BlueFin::GlGpsTime *__hidden this), uint64_t a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, __int128 a25, __int128 a26, __int128 a27, __int128 a28, uint64_t a29, uint64_t a30, BlueFin::GlRequestImpl *a31, int a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, char a56, int a57, char a58)
{
  v58 = this;
  if (*(this + 32) == 1)
  {
    if (this[3])
    {
      v60 = BlueFin::GlUtils::m_pInstance;
      ++*(BlueFin::GlUtils::m_pInstance + 1088);
      v60[273] = (*(**v60 + 48))();
      GlCustomLog(15, "GlEngineImplStd::GetRadioRegisters\n");
      BlueFin::GlPosEng::GetRadioRegisters(v58[3], a2);

      return BlueFin::GlEngineImplStd::CommonAPIcode(v58, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58);
    }
  }

  else
  {
    v68 = this + 75;

    return BlueFin::GlPeTimerMgr::UpdateExpirationTime(v68, 100000000, 0);
  }

  return this;
}

void BlueFin::GlEngineImplStd::~GlEngineImplStd(BlueFin::GlEngineImplStd *this)
{
  *this = &unk_2A1F11360;
  *(this + 87) = &unk_2A1F0C1D8;
  BlueFin::GlComStressImpl::~GlComStressImpl((this + 720));
}

{
  *this = &unk_2A1F11360;
  *(this + 87) = &unk_2A1F0C1D8;
  BlueFin::GlComStressImpl::~GlComStressImpl((this + 720));

  JUMPOUT(0x29C292F70);
}

uint64_t BlueFin::GlPeEngineCallBacks::OnStop(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t BlueFin::GlPeEngineCallBacks::OnPrecTimerRq(BlueFin::GlPeEngineCallBacks *this)
{
  v1 = *(this + 11);
  if (v1)
  {
    return v1(*(this + 1));
  }

  else
  {
    return 0;
  }
}

uint64_t BlueFin::GlPeEngineCallBacks::OnDrControlMemDump(uint64_t this, unsigned int *a2)
{
  v2 = *(this + 56);
  if (v2)
  {
    return v2(*(this + 8), a2);
  }

  return this;
}

uint64_t BlueFin::GlPeEngineCallBacks::OnSysLogLine(uint64_t this, const char *a2)
{
  v2 = *(this + 112);
  if (v2)
  {
    return v2(*(this + 8), a2);
  }

  return this;
}

uint64_t BlueFin::GlPeEngineCallBacks::OnBurstMode(uint64_t this, int a2)
{
  v2 = *(this + 104);
  if (v2)
  {
    v3 = BlueFin::GlPeEngineCallBacks::OnBurstMode(BOOL)::bBurstModePrevious == a2;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    BlueFin::GlPeEngineCallBacks::OnBurstMode(BOOL)::bBurstModePrevious = a2;
    return v2(*(this + 8));
  }

  return this;
}

double BlueFin::GlPeEngineCallBacks::StoreMd5Record(BlueFin::GlPeEngineCallBacks *this)
{
  v1 = MEMORY[0x2A1C7C4A8](this);
  v12 = *MEMORY[0x29EDCA608];
  v2 = BlueFin::GlUtils::m_pInstance;
  v3 = BlueFin::GlUtils::m_pInstance + 1124;
  BlueFin::GlCryptoMd5::final(BlueFin::GlUtils::m_pInstance + 1124, 0, 0);
  v4 = 0;
  v8 = 51;
  v9 = 1;
  v10 = 0x1000000000000;
  v7 = &unk_2A1F092C0;
  v11 = 1;
  do
  {
    BlueFin::GlSysLogEntry::PutU8(&v7, *(v3 + v4++));
  }

  while (v4 != 16);
  BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v7, v1, 4);
  result = -3.59869635e230;
  *(v2 + 1140) = xmmword_298A32900;
  *(v2 + 1156) = 0;
  *(v2 + 1228) = 0;
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void BlueFin::GlPeEngineCallBacks::OnNvStgWrite(BlueFin::GlPeEngineCallBacks *this, int a2, uint64_t a3, uint64_t a4)
{
  v7 = BlueFin::GlUtils::m_pInstance;
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v8 = xmmword_298A32900;
      *(BlueFin::GlUtils::m_pInstance + 1140) = xmmword_298A32900;
      *(v7 + 1156) = 0;
      *(v7 + 1228) = 0;
      *(this + 78) = 4;
      v9 = 3;
      goto LABEL_14;
    }

    if (a2 == 5)
    {
      v8.n128_f64[0] = BlueFin::GlPeEngineCallBacks::StoreMd5Record(this);
      v9 = 5;
      goto LABEL_14;
    }
  }

  else
  {
    if (!a2)
    {
      v9 = 0;
      v8 = xmmword_298A32900;
      *(BlueFin::GlUtils::m_pInstance + 1140) = xmmword_298A32900;
      *(v7 + 1156) = 0;
      *(v7 + 1228) = 0;
      *(this + 78) = 1;
      goto LABEL_14;
    }

    if (a2 == 2)
    {
      v8.n128_f64[0] = BlueFin::GlPeEngineCallBacks::StoreMd5Record(this);
      v9 = 2;
      goto LABEL_14;
    }
  }

  v9 = *(this + 78);
  if (a4 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = a4;
  }

  BlueFin::GlCryptoMd5::update((BlueFin::GlUtils::m_pInstance + 1124), a3, v10 - 1);
LABEL_14:
  v11 = *(this + 18);
  if (v11)
  {
    v12 = *(this + 1);

    v11(v12, v9, a3, a4, v8);
  }
}

uint64_t BlueFin::GlPeEngineCallBacks::OnOscReadyForStorage(uint64_t result)
{
  v1 = *(result + 304);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

uint64_t BlueFin::GlPeUtilsCallbacks::OnSoftAssert(BlueFin::GlPeUtilsCallbacks *this, const char *a2)
{
  result = (*(**(this + 1) + 24))(*(this + 1));
  if (result)
  {
    result = (*(**(this + 1) + 32))(*(this + 1), a2);
  }

  v5 = *(this + 1);
  v6 = *(v5 + 224);
  if (v6)
  {
    v7 = *(v5 + 8);

    return v6(v7);
  }

  return result;
}

uint64_t BlueFin::GlPeLhEngineCallBacks::OnAsicData(uint64_t this, unsigned __int8 *a2)
{
  if ((*(*(this + 24) + 25964) & 1) == 0)
  {
    return (*(**(this + 8) + 16))(*(this + 8), a2);
  }

  return this;
}

uint64_t BlueFin::stPeStoredDoppler::SerializeImpl(uint64_t a1)
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
      v6 = 2;
    }

    if (v6 >= 3)
    {
      DeviceFaultNotify("glpe_msmtmgr.cpp", 200, "SerializeImpl", "ucVersion == 1 || ucVersion == 2");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_msmtmgr.cpp", 200, "ucVersion == 1 || ucVersion == 2");
    }

    v20 = 54;
    v21 = v6;
    v22 = 0x1000000000000;
    v19 = &unk_2A1F092C0;
    v23 = v6;
    v7 = BlueFin::GlSetBase::Cnt((v1 + 18440));
    if (v6 == 1)
    {
      BlueFin::GlSysLogEntry::PutU8(&v19, v7);
    }

    else
    {
      BlueFin::GlSysLogEntry::PutU16(&v19, v7);
    }

    if (BlueFin::GlSetBase::Cnt((v5 + 18440)))
    {
      v14 = *(v5 + 18448);
      memcpy(v18, *(v5 + 18440), 4 * v14);
      v16 = 0;
      v15 = 0;
      v17 = v18[0];
      BlueFin::GlSetIterator::operator++(&v14);
      while (v15 != v14)
      {
        v9 = v16;
        if (v16 >= 0x23FuLL)
        {
          DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
        }

        v10 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v16;
        v11 = *v10;
        if (v6 == 1)
        {
          v12 = *(&BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + v11);
        }

        else
        {
          v12 = v10[1];
          BlueFin::GlSysLogEntry::PutU8(&v19, *(&BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + v11));
        }

        BlueFin::GlSysLogEntry::PutU8(&v19, v12);
        BlueFin::GlSysLogEntry::PutD64(&v19, *(*(v5 + 18432) + 32 * v9 + 16) + *(v5 + 18528));
        BlueFin::GlSetIterator::operator++(&v14);
      }
    }

    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v19, v4, 4);
    result = 1;
  }

  else
  {
    result = 0;
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::stPeSigEnv::SerializeImpl(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v4 = v3;
  v5 = v1;
  v15 = *MEMORY[0x29EDCA608];
  if (v3 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    if (v2)
    {
      v6 = v2;
    }

    else
    {
      v6 = 2;
    }

    if (v6 >= 3)
    {
      DeviceFaultNotify("glpe_msmtmgr.cpp", 305, "SerializeImpl", "ucVersion >= 1 && ucVersion <= 2");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_msmtmgr.cpp", 305, "ucVersion >= 1 && ucVersion <= 2");
    }

    v11 = 58;
    v12 = v6;
    v13 = 0x1000000000000;
    v10 = &unk_2A1F092C0;
    v14 = v6;
    BlueFin::GlSysLogEntry::PutF32(&v10, *(v1 + 8));
    v7 = *(v5 + 12);
    if (v6 == 1)
    {
      v7 = v7 + -174.0;
    }

    BlueFin::GlSysLogEntry::PutF32(&v10, v7);
    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v10, v4, 4);
    result = 1;
  }

  else
  {
    result = 0;
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlPeMsmtMgr::AccessPropagatedMeMeas(BlueFin::GlPeMsmtMgr *this, const BlueFin::GlSignalId *a2)
{
  if (((*(*(this + 181) + 4 * (*(a2 + 4) >> 5)) >> (*(a2 + 4) & 0x1F)) & 1) == 0)
  {
    v3 = "m_PropMeas.otPropSignalIds.Has(rotSignalId)";
    DeviceFaultNotify("glpe_msmtmgr.cpp", 891, "AccessPropagatedMeMeas", "m_PropMeas.otPropSignalIds.Has(rotSignalId)");
    v4 = 891;
    goto LABEL_6;
  }

  result = BlueFin::GlSignalIdArray::Get(*(this + 36), a2);
  if (!result)
  {
    v3 = "pPropSigMeas != nullptr";
    DeviceFaultNotify("glpe_msmtmgr.cpp", 895, "AccessPropagatedMeMeas", "pPropSigMeas != nullptr");
    v4 = 895;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_msmtmgr.cpp", v4, v3);
  }

  return result;
}

uint64_t BlueFin::GlPeMsmtMgr::GetPropagatedMeMeas(BlueFin::GlPeMsmtMgr *this, const BlueFin::GlSignalId *a2)
{
  if (((*(*(this + 181) + 4 * (*(a2 + 4) >> 5)) >> (*(a2 + 4) & 0x1F)) & 1) == 0)
  {
    v3 = "m_PropMeas.otPropSignalIds.Has(rotSignalId)";
    DeviceFaultNotify("glpe_msmtmgr.cpp", 880, "GetPropagatedMeMeas", "m_PropMeas.otPropSignalIds.Has(rotSignalId)");
    v4 = 880;
    goto LABEL_6;
  }

  result = BlueFin::GlSignalIdArray::Get(*(this + 36), a2);
  if (!result)
  {
    v3 = "pPropSigMeas != nullptr";
    DeviceFaultNotify("glpe_msmtmgr.cpp", 884, "GetPropagatedMeMeas", "pPropSigMeas != nullptr");
    v4 = 884;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_msmtmgr.cpp", v4, v3);
  }

  return result;
}

unsigned __int8 *BlueFin::GlPeMsmtMgr::AccessMeMeas(BlueFin::GlSignalIdArray **this, const BlueFin::GlSignalId *a2, int a3, unsigned int a4)
{
  result = BlueFin::GlSignalIdArray::Get(this[2349], a2);
  if (result && (((*(this[1] + (*(a2 + 4) >> 5)) >> (*(a2 + 4) & 0x1F)) | a4) & 1) == 0)
  {
    result = 0;
  }

  if (!result && a3)
  {
    result = BlueFin::GlPeMsmtMgr::AccessPropagatedMeMeas(this, a2);
  }

  if (result && (*result != *a2 || *(result + 1) != *(a2 + 1)))
  {
    DeviceFaultNotify("glpe_msmtmgr.cpp", 808, "AccessMeMeas", "(potMeMeas->m_otSignalId == rotSignalId)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_msmtmgr.cpp", 808, "(potMeMeas->m_otSignalId == rotSignalId)");
  }

  return result;
}

double BlueFin::GlPeMsmtMgr::GetIniDoppler(BlueFin::GlPeMsmtMgr *this, const BlueFin::GlSignalId *a2)
{
  v2 = this + 36864;
  if (((*(*(this + 4661) + 4 * (*(a2 + 4) >> 5)) >> (*(a2 + 4) & 0x1F)) & 1) == 0)
  {
    v7 = "m_otIniDopp.otDoppSignalIds.Has(rotSignalId)";
    DeviceFaultNotify("glpe_msmtmgr.cpp", 1025, "GetIniDoppler", "m_otIniDopp.otDoppSignalIds.Has(rotSignalId)");
    v8 = 1025;
LABEL_10:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_msmtmgr.cpp", v8, v7);
  }

  v4 = BlueFin::GlSetBase::Cnt((this + 37288));
  v5 = v4;
  if (!v4)
  {
LABEL_7:
    v7 = "0";
    DeviceFaultNotify("glpe_msmtmgr.cpp", 1034, "GetIniDoppler", "0");
    v8 = 1034;
    goto LABEL_10;
  }

  v6 = *(v2 + 52);
  while (*v6 != *a2 || *(v6 + 1) != *(a2 + 1))
  {
    v6 += 32;
    if (!--v5)
    {
      goto LABEL_7;
    }
  }

  return *(v6 + 2);
}

double BlueFin::GlPeMsmtMgr::GetOscOffAdjustedInitDoppler(BlueFin::GlPeMsmtMgr *this, const BlueFin::GlSignalId *a2)
{
  IniDoppler = BlueFin::GlPeMsmtMgr::GetIniDoppler(this, a2);
  v4 = *(*(this + 2351) + 2);
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
  }

  return IniDoppler + v4 * -0.000000001;
}

BOOL BlueFin::GlPeTimerMgr::StartRequest(int *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == 7)
  {
    if (((*(*a2 + 184))(a2) & 0x80000000) != 0)
    {
      v5 = 5;
    }

    else if (a1[4] <= 7)
    {
      v6 = BlueFin::GlUtils::m_pInstance;
      if (BlueFin::GlUtils::m_pInstance && (++*(BlueFin::GlUtils::m_pInstance + 1088), v6[273] = (*(**v6 + 48))(), BlueFin::GlUtils::m_pInstance))
      {
        v12 = *(BlueFin::GlUtils::m_pInstance + 1092);
      }

      else
      {
        v12 = (*(**a1 + 56))();
      }

      if (v12 == -1)
      {
        if (BlueFin::GlUtils::m_pInstance)
        {
          v12 = *(BlueFin::GlUtils::m_pInstance + 1092);
        }

        else
        {
          v12 = -1;
        }
      }

      *(a2 + 28) = v12;
      v13 = a1[4];
      a1[4] = v13 + 1;
      *&a1[2 * v13 + 6] = a2;
      BlueFin::GlPeTimerMgr::Sort(a1, v7, v8, v9, v10, v11);
      v5 = 0;
    }

    else
    {
      v5 = 3;
    }

    v14 = *(a2 + 40);
    if (v14)
    {
      v14(a2, v5);
    }
  }

  return v2 == 7;
}

char *BlueFin::GlPeTimerMgr::Sort(BlueFin::GlPeTimerMgr *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6)
{
  v11 = *MEMORY[0x29EDCA608];
  v6 = (this + 16);
  result = BlueFin::GlStdLib::QsortImpl(this + 24, *(this + 4), 8u, BlueFin::EarlierTimeout, v10, a6);
  v8 = *v6;
  if (v8 >= 1)
  {
    do
    {
      if (*&v6[2 * v8])
      {
        break;
      }

      *v6 = --v8;
    }

    while ((v8 + 1) > 1);
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL BlueFin::GlPeTimerMgr::StopRequest(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == 7)
  {
    v4 = *(a1 + 16);
    if (v4 >= 1)
    {
      for (i = 24; ; i += 8)
      {
        v6 = *(a1 + i);
        if (v6 == a2)
        {
          break;
        }

        if (!--v4)
        {
          return v2 == 7;
        }
      }

      v7 = *(v6 + 56);
      if (v7)
      {
        v7();
        v6 = *(a1 + i);
      }

      BlueFin::GlRequestBase::Destroy(v6);
      *(a1 + i) = 0;
      if (i == 24)
      {
        *(a1 + 89) = 1;
      }

      BlueFin::GlPeTimerMgr::Sort(a1, v8, v9, v10, v11, v12);
    }
  }

  return v2 == 7;
}

uint64_t BlueFin::GlPeTimerMgr::StopAllRequests(uint64_t this)
{
  v1 = this;
  if (*(this + 16) >= 1)
  {
    v2 = 0;
    v3 = this + 24;
    do
    {
      v4 = *(v3 + 8 * v2);
      v5 = *(v4 + 56);
      if (v5)
      {
        v5();
        v4 = *(v3 + 8 * v2);
      }

      this = BlueFin::GlRequestBase::Destroy(v4);
      *(v3 + 8 * v2) = 0;
      if (!v2)
      {
        *(v1 + 89) = 1;
      }

      ++v2;
    }

    while (v2 < *(v1 + 16));
  }

  *(v1 + 16) = 0;
  return this;
}

uint64_t BlueFin::EarlierTimeout(BlueFin *this, _DWORD **a2, const void *a3)
{
  v3 = *this;
  v4 = *a2;
  if (*this)
  {
    v5 = v3[7];
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = 0;
    if (v4)
    {
LABEL_3:
      v6 = v4[7];
      if (v3)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  v6 = 0;
  if (v3)
  {
LABEL_4:
    v7 = (*(*v3 + 184))(*this) + v5;
    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

LABEL_8:
  v7 = 0;
  if (!v4)
  {
    goto LABEL_11;
  }

LABEL_9:
  v8 = (*(*v4 + 184))(v4);
  if (v3)
  {
    return (v7 - v6 - v8);
  }

LABEL_11:
  if (v3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v4 != 0;
  }
}

double BlueFin::GlPeObjFactory::GlPeObjFactory(uint64_t a1, _OWORD *a2)
{
  v2 = a2[1];
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  if (!*a1)
  {
    v4 = "m_otConfig.cbOnMemAlloc != nullptr";
    DeviceFaultNotify("glpeobjfact.cpp", 77, "GlPeObjFactory", "m_otConfig.cbOnMemAlloc != nullptr");
    v5 = 77;
    goto LABEL_6;
  }

  if (!*(a1 + 8))
  {
    v4 = "m_otConfig.cbOnMemFree != nullptr";
    DeviceFaultNotify("glpeobjfact.cpp", 78, "GlPeObjFactory", "m_otConfig.cbOnMemFree != nullptr");
    v5 = 78;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpeobjfact.cpp", v5, v4);
  }

  return result;
}

void (*BlueFin::GlPeObjFactory::Dispose(void (**this)(void)))(void)
{
  BlueFin::GlPeObjFactory::DisposeMePeSigMeas(this);
  BlueFin::GlPeObjFactory::DisposePropSigMeas(this);
  if (this[10])
  {
    v2 = this[1];
    if (v2)
    {
      v2();
      v3 = this[1];
      if (v3)
      {
        (v3)(this[11]);
      }
    }

    this[10] = 0;
    this[11] = 0;
  }

  if (this[12])
  {
    v4 = this[1];
    if (v4)
    {
      v4();
    }

    this[12] = 0;
  }

  if (this[13])
  {
    v5 = this[1];
    if (v5)
    {
      v5();
    }

    this[13] = 0;
  }

  if (this[14])
  {
    v6 = this[1];
    if (v6)
    {
      v6();
    }

    this[14] = 0;
  }

  if (this[15])
  {
    v7 = this[1];
    if (v7)
    {
      v7();
    }

    this[15] = 0;
  }

  if (this[16])
  {
    v8 = this[1];
    if (v8)
    {
      v8();
    }

    this[16] = 0;
  }

  if (this[18])
  {
    v9 = this[1];
    if (v9)
    {
      v9();
    }

    this[18] = 0;
  }

  if (this[17])
  {
    v10 = this[1];
    if (v10)
    {
      v10();
    }

    this[17] = 0;
  }

  if (this[19])
  {
    v11 = this[1];
    if (v11)
    {
      v11();
    }

    this[19] = 0;
  }

  BlueFin::GlPeObjFactory::DisposeMeGridMeas(this);
  result = this[20];
  if (result)
  {
    v13 = this[1];
    if (v13)
    {
      result = v13();
    }

    this[20] = 0;
  }

  return result;
}

uint64_t BlueFin::GlPeObjFactory::DisposeMePeSigMeas(BlueFin::GlPeObjFactory *this)
{
  v3 = (this + 32);
  result = *(this + 4);
  if (result)
  {
    v4 = *(this + 1);
    if (v4)
    {
      result = v4();
      v5 = *(this + 1);
      if (v5)
      {
        result = v5(*(this + 5));
        v6 = *(this + 1);
        if (v6)
        {
          result = v6(*(this + 6));
        }
      }
    }

    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
  }

  return result;
}

uint64_t BlueFin::GlPeObjFactory::DisposePropSigMeas(BlueFin::GlPeObjFactory *this)
{
  v3 = (this + 56);
  result = *(this + 7);
  if (result)
  {
    v4 = *(this + 1);
    if (v4)
    {
      result = v4();
      v5 = *(this + 1);
      if (v5)
      {
        result = v5(*(this + 8));
        v6 = *(this + 1);
        if (v6)
        {
          result = v6(*(this + 9));
        }
      }
    }

    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
  }

  return result;
}

uint64_t BlueFin::GlPeObjFactory::DisposeMeGridMeas(BlueFin::GlPeObjFactory *this)
{
  v3 = (this + 168);
  result = *(this + 21);
  if (result)
  {
    v4 = *(this + 1);
    if (v4)
    {
      result = v4();
      v5 = *(this + 1);
      if (v5)
      {
        result = v5(*(this + 22));
        v6 = *(this + 1);
        if (v6)
        {
          result = v6(*(this + 23));
        }
      }
    }

    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
  }

  return result;
}

uint64_t BlueFin::GlPeObjFactory::DisposeGlUtils(uint64_t this)
{
  if (BlueFin::GlUtils::m_pInstance)
  {
    v1 = this;
    if (BlueFin::GlUtils::sm_pfOnSysLogStopped)
    {
      this = BlueFin::GlUtils::sm_pfOnSysLogStopped(BlueFin::GlUtils::sm_pvOnSysLogStoppedContext);
      BlueFin::GlUtils::sm_pfOnSysLogStopped = 0;
      BlueFin::GlUtils::sm_pvOnSysLogStoppedContext = 0;
    }

    BlueFin::GlUtils::m_ucEnabled = 2;
    v2 = *(v1 + 8);
    if (v2)
    {
      this = v2(BlueFin::GlUtils::m_pInstance);
    }

    BlueFin::GlUtils::m_pInstance = 0;
  }

  return this;
}

uint64_t BlueFin::GlPosEng::Dispose(BlueFin::GlPosEng *this, const char *a2)
{
  BlueFin::GlUtils::Report("dispose", a2);
  BlueFin::GlPeStartupMgr::Dispose(this + 14);
  BlueFin::GlReqSm::~GlReqSm((this + 126144));
  v3 = *(this + 5);
  v4 = (*(**(this + 4) + 96))(*(this + 4));
  result = (*(*v3 + 16))(v3, v4);
  *(this + 5) = 0;
  return result;
}

uint64_t BlueFin::GlPosEng::SetDeathCause(uint64_t a1, int a2)
{
  result = GlCustomLog(12, "SetDeathCause(%d)\n", a2);
  if (!*(a1 + 8))
  {
    *(a1 + 8) = a2;
    v5 = *(a1 + 158168);
    if (a2)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    *(a1 + 158168) = v6;
    if (v5 != v6)
    {
      *(a1 + 158184) = 1;
    }

    if (a2 == 1 && (*(BlueFin::GlUtils::m_pInstance + 1121) & 1) == 0)
    {
      *(BlueFin::GlUtils::m_pInstance + 1120) = 0;
    }
  }

  return result;
}

unint64_t BlueFin::GlPosEng::AsicMismatch(BlueFin::GlPosEng *this)
{
  BlueFin::GlPosEng::SetDeathCause(this, 5);

  return BlueFin::GlMeSrdCtrlSm::BlankingConfigUpdated((this + 126144));
}

BOOL BlueFin::GlPosEng::ReqFreqUpdate(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 120);
  if (v2)
  {
    v2(*(v1 + 8));
  }

  return v2 != 0;
}

void *BlueFin::GlPosEng::SetInitialPosMicroNav(void *result, double *a2)
{
  if ((**(result[2] + 26232) & 2) != 0)
  {
    result = result[6];
    if (result)
    {
      return (*(*result + 64))(*a2, a2[1], a2[2], a2[3]);
    }
  }

  return result;
}

uint64_t BlueFin::GlPosEng::SetWaasDataSubFrmMeas(uint64_t a1, char *a2)
{
  if (!a2)
  {
    DeviceFaultNotify("glposeng.cpp", 994, "SetWaasDataSubFrmMeas", "potSbasBlock != 0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glposeng.cpp", 994, "potSbasBlock != 0");
  }

  v8 = &unk_2A1F09388;
  *&v15[4] = 0;
  v9 = *a2;
  if (a2[8] == 1)
  {
    v2 = *(a2 + 3);
  }

  else
  {
    v2 = -1;
  }

  v3 = *(a2 + 2);
  v13 = *(a2 + 1);
  v4 = HIBYTE(*(a2 + 4));
  v5 = v4 == 138;
  v6 = 2 * (v4 == 198);
  if (v5)
  {
    v6 = 1;
  }

  v10 = v6;
  v11 = *(a2 + 1);
  v12 = v2;
  v14 = v3;
  *v15 = 0;
  return (*(*a1 + 32))(a1, &v8);
}

void BlueFin::GlPosEng::SetGalileoDataPage(BlueFin::GlPosEng *this, BlueFin::GlGalileoINavPage *a2, int8x16_t a3, int8x16_t a4)
{
  if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    (*(*a2 + 24))(a2, 0, 0);
  }

  if (!*(a2 + 9))
  {
    v6 = *(this + 30948);
    v7 = *(a2 + 10);
    if (v7 < 0xB || v7 <= 0x3F && ((1 << v7) & 0x80000001001F0000) != 0)
    {
      BlueFin::GlPeTimeManager::SetGalileoDataPage(this + 15152, a2, a3, a4);
      BlueFin::GlPeReqBag::SetGalileoDataPage((this + 137024), a2);
      if (*(this + 374914) == 1)
      {
        if (*(a2 + 10) - 1 <= 4)
        {
          BlueFin::GlPeGalEphMgr::SetGalileoDataPage(*(this + 952), a2, v8, v9);
        }

        BlueFin::GlPeAlmMgr::SetGalileoDataPage((this + 34336), a2, v8, v9);
      }

      *(this + 374914) = 1;
      if (!v6 && *(this + 30948))
      {

        BlueFin::GlPosEng::OnInitialTime(this);
      }
    }
  }
}

void BlueFin::GlPosEng::SetDataBits(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    DeviceFaultNotify("glposeng.cpp", 1135, "SetDataBits", "pDataBits != 0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glposeng.cpp", 1135, "pDataBits != 0");
  }
}

uint64_t BlueFin::GlPosEng::EswPatchLoaded(BlueFin::GlPosEng *this)
{
  GlCustomLog(12, "GlReqSm::EswPatchLoaded!\n");

  return BlueFin::GlQueue::putFIFO((this + 126184), 61, 0);
}

uint64_t BlueFin::GlPosEng::SetAsicCfg(uint64_t a1, unsigned __int16 *a2)
{
  v46 = *MEMORY[0x29EDCA608];
  v4 = *(*(a1 + 16) + 11560);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = 0;
    while (1)
    {
      BlueFin::GlSettingsImpl::GetDbgParam(*(a1 + 16), v5, __dst, v45);
      if (*__dst == 0x6E6E61684378614DLL && *&__dst[8] == 7564389)
      {
        break;
      }

      v5 = ++v6;
      if (v4 <= v6)
      {
        goto LABEL_10;
      }
    }

    v8 = *(a1 + 16);
    *(v8 + 272) = atoi(v45);
  }

LABEL_10:
  *v45 = &unk_2A1F11B10;
  *&v45[8] = 0;
  memset(&v45[116], 0, 98);
  *&v45[216] = &v45[228];
  v45[224] = 2;
  *&v45[232] = 0;
  *&v45[228] = 0;
  *&v45[240] = 0;
  v45[258] = 0;
  *&v45[15] = 0;
  *&v45[244] = 0;
  *&v45[249] = 0;
  BlueFin::GlPeIf::stAsicCfg::operator=(&v45[8], a2);
  if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    (*(*v45 + 24))(v45, 0, 0);
  }

  v9 = *(a1 + 16);
  BlueFin::GlSetBase::operator=(v9 + 26232, (a2 + 104));
  *(v9 + 26244) = *(a2 + 110);
  __src = v34;
  v33 = 8;
  memset(v34, 0, sizeof(v34));
  v10 = a2[1];
  if (v10)
  {
    *__dst = &__dst[12];
    __dst[8] = 8;
    *&__dst[12] = BlueFin::GlSvIdSet::csm_aulGlSvIdSet[0];
    *&__dst[28] = *algn_298A323DC;
    BlueFin::GlSetBase::Add(&__src, __dst);
    v10 = a2[1];
  }

  if ((v10 & 2) != 0)
  {
    *__dst = &__dst[12];
    __dst[8] = 8;
    *&__dst[12] = xmmword_298A323EC;
    *&__dst[28] = *algn_298A323FC;
    BlueFin::GlSetBase::Add(&__src, __dst);
    v10 = a2[1];
  }

  if ((v10 & 4) != 0 && (*(*(*(a1 + 16) + 160) + 3) & 4) != 0)
  {
    *__dst = &__dst[12];
    __dst[8] = 8;
    *&__dst[12] = xmmword_298A3240C;
    *&__dst[28] = unk_298A3241C;
    BlueFin::GlSetBase::Add(&__src, __dst);
    v10 = a2[1];
  }

  if ((v10 & 8) != 0)
  {
    *__dst = &__dst[12];
    __dst[8] = 8;
    *&__dst[12] = xmmword_298A3242C;
    *&__dst[28] = unk_298A3243C;
    BlueFin::GlSetBase::Add(&__src, __dst);
    v10 = a2[1];
  }

  v11 = *(a1 + 16);
  if ((v10 & 0x20) != 0 && (*(*(v11 + 160) + 1) & 2) != 0)
  {
    *__dst = &__dst[12];
    __dst[8] = 8;
    *&__dst[12] = xmmword_298A3244C;
    *&__dst[28] = unk_298A3245C;
    BlueFin::GlSetBase::Add(&__src, __dst);
    v10 = a2[1];
    v11 = *(a1 + 16);
  }

  if ((v10 & 0x40) != 0 && (*(*(v11 + 160) + 1) & 4) != 0)
  {
    *__dst = &__dst[12];
    __dst[8] = 8;
    *&__dst[12] = xmmword_298A3246C;
    *&__dst[28] = unk_298A3247C;
    BlueFin::GlSetBase::Add(&__src, __dst);
    v10 = a2[1];
    v11 = *(a1 + 16);
  }

  if ((v10 & 0x80) != 0 && (*(*(v11 + 160) + 2) & 4) != 0)
  {
    *__dst = &__dst[12];
    __dst[8] = 8;
    *&__dst[12] = xmmword_298A3248C;
    *&__dst[28] = unk_298A3249C;
    BlueFin::GlSetBase::Add(&__src, __dst);
    v11 = *(a1 + 16);
  }

  if ((*(*(v11 + 160) + 2) & 8) != 0)
  {
    bzero(__src, ((4 * v33 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    *__dst = &__dst[12];
    __dst[8] = 8;
    *&__dst[12] = BlueFin::GlSvIdSet::csm_aulGlSvIdSet[0];
    *&__dst[28] = *algn_298A323DC;
    BlueFin::GlSetBase::Add(&__src, __dst);
    *__dst = &__dst[12];
    __dst[8] = 8;
    *&__dst[12] = xmmword_298A3246C;
    *&__dst[28] = unk_298A3247C;
    BlueFin::GlSetBase::Add(&__src, __dst);
  }

  v12 = BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion;
  if (BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion != 1)
  {
    __dst[0] = v33;
    memcpy(&__dst[8], __src, 4 * v33);
    *&__dst[2] = 0;
    __dst[1] = 0;
    *&__dst[4] = *&__dst[8];
    BlueFin::GlSetIterator::operator++(__dst);
    while (__dst[1] != __dst[0])
    {
      if (!*(&BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * v12 + __dst[2]))
      {
        BlueFin::GlSetBase::Remove(&__src, __dst[2]);
        v12 = BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion;
      }

      BlueFin::GlSetIterator::operator++(__dst);
    }
  }

  BlueFin::GlSvIdSet::GetStr(&__src, __dst, 256, 44, 1);
  GlCustomLog(13, "GLL Supported SVIDs:[%s]\n", __dst);
  BlueFin::GlSetBase::operator&=(&__src, *(a1 + 16) + 208);
  BlueFin::GlSettingsImpl::SetSvIdSupported(*(a1 + 16), &__src);
  v14 = *(a2 + 27);
  v13 = *(a2 + 28);
  v16 = *(a2 + 43);
  v15 = *(a2 + 44);
  v18 = *(a2 + 45);
  v17 = *(a2 + 46);
  v19 = *(a1 + 16);
  v20 = *(v19 + 944);
  v40 = *(v19 + 928);
  v41 = v20;
  v42 = *(v19 + 960);
  v43 = *(v19 + 976);
  if (*(v19 + 916))
  {
    v21 = 3;
    v14 = 0.0;
  }

  else
  {
    v22 = *(a2 + 66);
    v40 = *(a2 + 58);
    v41 = v22;
    v42 = *(a2 + 74);
    v43 = *(a2 + 82);
    v21 = 1;
  }

  if ((*(a2 + 49) - 39) >= 2 && *(v19 + 917) == 1 && (*(v19 + 25957) & 1) == 0)
  {
    v15 = *(v19 + 984);
    v21 = 3;
    v18 = v15;
  }

  v35[0] = 0.0;
  v35[1] = v16;
  v35[2] = v15;
  v35[3] = v14;
  v35[4] = v18;
  v35[5] = v15;
  v35[6] = v13;
  v35[7] = 0.0;
  v35[8] = v15;
  v36 = 0;
  v37 = 0;
  v38 = v17;
  v39 = 0;
  BlueFin::GlPeGnssHwBiasMgr::Initialize(*(a1 + 126112), v21, v35, &v40);
  v23 = *(a1 + 16);
  if (*(a2 + 49) && ((*(a1 + 374912) & 1) != 0 || !v23[22]))
  {
    (*(*v23 + 16))(v23);
    v24 = *(a2 + 50);
    v25 = *(a1 + 16);
    if (!v24)
    {
      v24 = v25[12];
    }

    (*(*v25 + 24))(v25, v24);
    (*(**(a1 + 16) + 32))(*(a1 + 16), *(a2 + 204));
    (*(**(a1 + 16) + 904))(*(a1 + 16), *(a2 + 248));
    v23 = *(a1 + 16);
  }

  for (i = 0; i != 7; ++i)
  {
    *(v23 + i + 256) = *(a2 + i + 4);
  }

  v27 = *(a1 + 16);
  v28 = *a2;
  if (v27[68] > v28)
  {
    v27[68] = v28;
  }

  result = (*(*v27 + 1032))(v27, *(a2 + 47));
  v30 = *(a1 + 16) + 24576;
  *(v30 + 1729) = *(a2 + 249);
  *(v30 + 1761) = *(a2 + 250);
  v31 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlPeAsicCfgData::SerializeImpl(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v15 = *MEMORY[0x29EDCA608];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = 6;
  }

  if (v4 >= 7)
  {
    DeviceFaultNotify("glposeng.cpp", 1433, "SerializeImpl", "ucVersion >= 1 && ucVersion <= 6");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glposeng.cpp", 1433, "ucVersion >= 1 && ucVersion <= 6");
  }

  v5 = v2;
  v6 = v1;
  if (v2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v11 = 27;
    v12 = v4;
    v13 = 0x1000000000000;
    v10 = &unk_2A1F092C0;
    v14 = v4;
    BlueFin::GlSysLogEntry::PutU16(&v10, *(v1 + 8));
    BlueFin::GlSysLogEntry::PutU16(&v10, *(v6 + 10));
    BlueFin::GlSysLogEntry::PutF32(&v10, *(v6 + 116));
    if (v4 >= 3)
    {
      BlueFin::GlSysLogEntry::PutF32(&v10, *(v6 + 120));
      if (v4 != 3)
      {
        BlueFin::GlSysLogEntry::PutF32(&v10, *(v6 + 180));
        BlueFin::GlSysLogEntry::PutF32(&v10, *(v6 + 184));
        BlueFin::GlSysLogEntry::PutF32(&v10, *(v6 + 188));
        if (v4 == 6)
        {
          BlueFin::GlSysLogEntry::PutF32(&v10, *(v6 + 192));
        }
      }
    }

    for (i = 0; i != 56; i += 4)
    {
      BlueFin::GlSysLogEntry::PutF32(&v10, *(v6 + 124 + i));
    }

    if (v4 > 1)
    {
      BlueFin::GlSysLogEntry::PutU32(&v10, *(v6 + 196));
      BlueFin::GlSysLogEntry::PutU32(&v10, *(v6 + 200));
      BlueFin::GlSysLogEntry::PutU8(&v10, *(v6 + 204));
    }

    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v10, v5, 4);
  }

  v8 = *MEMORY[0x29EDCA608];
  return 1;
}

BOOL BlueFin::GlPeAsicCfgData::Deserialize(BlueFin::GlPeAsicCfgData *this, BlueFin::GlSysLogEntry *a2)
{
  v2 = *(a2 + 12) - 1;
  if (v2 <= 5)
  {
    *(this + 4) = BlueFin::GlSysLogEntry::GetU16(a2);
    *(this + 5) = BlueFin::GlSysLogEntry::GetU16(a2);
    *(this + 29) = BlueFin::GlSysLogEntry::GetF32(a2);
    if (*(a2 + 12) >= 3u)
    {
      *(this + 30) = BlueFin::GlSysLogEntry::GetF32(a2);
      if (*(a2 + 12) >= 4u)
      {
        *(this + 45) = BlueFin::GlSysLogEntry::GetF32(a2);
        *(this + 46) = BlueFin::GlSysLogEntry::GetF32(a2);
        *(this + 47) = BlueFin::GlSysLogEntry::GetF32(a2);
        if (*(a2 + 12) >= 6u)
        {
          *(this + 48) = BlueFin::GlSysLogEntry::GetF32(a2);
        }
      }
    }

    for (i = 0; i != 56; i += 4)
    {
      *(this + i + 124) = BlueFin::GlSysLogEntry::GetF32(a2);
    }

    if (*(a2 + 12) <= 1u)
    {
      U8 = 0;
      *(this + 49) = 0;
      *(this + 50) = 0;
    }

    else
    {
      *(this + 49) = BlueFin::GlSysLogEntry::GetU32(a2);
      *(this + 50) = BlueFin::GlSysLogEntry::GetU32(a2);
      U8 = BlueFin::GlSysLogEntry::GetU8(a2);
    }

    *(this + 51) = U8;
  }

  return v2 < 6;
}

uint64_t BlueFin::GlPosEng::AsicStopped(BlueFin::GlPosEng *this)
{
  GlCustomLog(14, "GlPosEng::AsicStopped()\n");
  result = BlueFin::GlQueue::putFIFO((this + 126184), 18, 0);
  *(this + 374917) = 0;
  return result;
}

uint64_t BlueFin::GlPosEng::SetAsstEph(uint64_t a1, unsigned int *a2)
{
  *(a1 + 350216) = 1;
  BlueFin::GlPeGloEphemeris::GlPeGloEphemeris(v4, *(a1 + 7592) + 5856, a2, -8, 0, 0, 0);
  return BlueFin::GlReqSm::SetAsstEph((a1 + 126144), v4);
}

unint64_t BlueFin::GlPosEng::SetRefFreqStatus(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == 5)
  {
    v4 = *(a1 + 283720);
    if (*v4)
    {
LABEL_3:

      return GlCustomLog(14, "RefClkUncChange:: Ignored have measurements\n");
    }

    v6 = *(a1 + 283728);
    if (v6 >= 2)
    {
      v7 = v6 - 1;
      v8 = v4 + 1;
      do
      {
        if (*v8++)
        {
          goto LABEL_3;
        }
      }

      while (--v7);
    }

    v10 = *(a2 + 4);
    if (*(a1 + 170) >= v10)
    {
      return GlCustomLog(14, "RefClkUncChange:: Ignored Unc %u already above desired unc %u\n", *(a1 + 170), v10);
    }

    else
    {
      GlCustomLog(14, "RefClkUncChange:: Success Unc changed from %u to %u\n", *(a1 + 170), v10);
      *(a1 + 170) = *(a2 + 4);
      BlueFin::GlPeOscMgr::Serialize((a1 + 160), 0, v11, v12);

      return BlueFin::GlReqSm::SetOscOffsAiding(a1 + 126144, 1);
    }
  }

  else
  {
    result = BlueFin::GlPeCntinMgr::SetRefFreqStatus((a1 + 362560), a2);
    if (*(a2 + 8) == 4)
    {

      return BlueFin::GlReqSm::SetRefFreqStatus(a1 + 126144, a2);
    }
  }

  return result;
}

uint64_t BlueFin::GlPosEng::SetAsstPreciseTime(uint64_t a1, unsigned __int16 *a2, uint64_t a3, int8x16_t a4, double a5, int8x16_t a6)
{
  *(a1 + 350216) = 1;
  v19 = &unk_2A1F11310;
  v20 = 0;
  v9 = 432000 - BlueFin::GlWeekTowTime::m_ucCurrentLs;
  v21 = 1980;
  v22 = v9 / 0x15180 + 1;
  v23 = 1;
  v24 = v9 / 0x15180 + 1;
  v25 = v9 % 0x15180 / 0xE10;
  v26 = (2185 * (v9 - 3600 * ((1193047 * v9) >> 32))) >> 17;
  v27 = v9 - 60 * ((71582789 * v9) >> 32);
  a4.i16[0] = a2[5];
  LOWORD(a5) = a2[6];
  *&v10 = *&a5;
  *a4.i64 = a4.u64[0] + *&v10 * 0.001;
  LOWORD(v10) = a2[7];
  v11 = v10;
  a6.i64[0] = 0x3EB0C6F7A0B5ED8DLL;
  *a4.i64 = *a4.i64 + v11 * 0.000001;
  BlueFin::GlUtcTime::GlUtcTime(v14, *a2, *(a2 + 2), *(a2 + 4), *(a2 + 6), *(a2 + 8), a4, v11, a6);
  LODWORD(v12) = *(a2 + 4);
  v15 = v14[1];
  v16 = 2;
  v17 = 0x41EFF2445FE00000;
  v18 = v12;
  BlueFin::GlReqSm::SetSyncinPulseTime(a1 + 126144, &v15, a3);
  return 1;
}

float BlueFin::GlPeSensorsMgr::SetSensorsConfig(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    DeviceFaultNotify("glpe_sensmgr.h", 159, "SetSensorsConfig", "pSensorsConfig");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_sensmgr.h", 159, "pSensorsConfig");
  }

  return BlueFin::GlSensorsConfig::operator=(a1, a2);
}

uint64_t BlueFin::GlPosEng::SetDgpsData(BlueFin::GlPosEng *this, const char *a2, int a3)
{
  v3 = a3;
  GlCustomLog(14, "GlPosEng::SetDgpsData:: size %d\n", a3);
  v6[0] = &unk_2A1F09268;
  v6[1] = a2;
  v7 = v3;
  v8 = 0;
  if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    off_2A1F09280(v6);
  }

  return 1;
}

uint64_t BlueFin::GlPosEng::SetWlanInfo(uint64_t a1, uint64_t a2)
{
  GlCustomLog(15, "GlPosEng::SetWlanInfo(): MAC(%08X%08X)\n", *(a2 + 4), *a2);
  GlCustomLog(15, "GlPosEng::SetWlanInfo(): pos(%lf, %lf, %lf)\n", *(a2 + 8), *(a2 + 16), *(a2 + 24));
  GlCustomLog(15, "GlPosEng::SetWlanInfo(): dist = %f m unc %f m rssi %f dBm\n", *(a2 + 32), *(a2 + 36), *(a2 + 40));
  BlueFin::stRtdMgr::RtdUpdate(a1 + 195720, a2, *(a1 + 245908), v5, 0, 10000.0);
  return 1;
}

void BlueFin::GlPosEng::SetOnchipNvMemData(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 34);
  v6 = v4 < 10 && *(a1 + 170) > v4;
  if (v6)
  {
    BlueFin::GlPeOscMgr::SetOscOff((a1 + 160), (*(a2 + 32) * 0.000000001), (v4 * 0.000000001), 0);
    GlCustomLog(14, "Storing to NVMEM OscOffs from OnChip PVT %hd %hd unc\n", *(a2 + 32), *(a2 + 34));
  }

  BlueFin::GlPeTimeManager::GetTime((a1 + 121216), 1, &v21);
  if (v22 == -1 || v23 == 4294967300.0 || (UncUs = BlueFin::GlPeGnssTime::GetUncUs(&v21, 0), v8.i64[0] = 0x413EB36000000000, UncUs > 2012000.0))
  {
    BlueFin::GlPeTimeManager::SetCurrentAsicLms((a1 + 121216), *(a2 + 44));
    v9 = *(a2 + 40) / 0x3E8u;
    *v10.i64 = v9;
    v11 = *(a2 + 36);
    v26 = &off_2A1F0B5F0;
    *v12.i64 = v9 - trunc(v9);
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v14 = *vbslq_s8(vnegq_f64(v13), v12, v10).i64;
    if (v14 >= 1.0)
    {
      DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
    }

    v15 = v14 * 4294967300.0 + 0.5;
    v16 = v15;
    if (v15 >= 4294967300.0)
    {
      v16 = -1;
    }

    LODWORD(v27) = v16;
    HIDWORD(v27) = v9 + 604800 * v11;
    v26 = &off_2A1F0B5F0;
    LODWORD(v15) = *(a2 + 44);
    *&v21 = COERCE_DOUBLE(__PAIR64__(HIDWORD(v27), v16));
    LODWORD(v22) = 0;
    *(&v22 + 1) = *&v15;
    v23 = 1000000.0;
    v25 = 0;
    BlueFin::GlPeTimeManager::SetTime((a1 + 121216), &v21, 2u, &v25);
    GlCustomLog(14, "Storing to NVMEM time from OnChip PVT %hu %u\n", *(a2 + 36), *(a2 + 40));
    v17 = *(a2 + 24);
    if (v17 >= 400.0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v17 = *(a2 + 24);
    if (v17 >= 400.0)
    {
      if (!v6)
      {
        return;
      }

      goto LABEL_19;
    }
  }

  v21 = *a2;
  v18 = *&v21;
  v22 = *(a2 + 8);
  v20 = *&v22;
  HIDWORD(v19) = DWORD1(v22);
  v23 = v17;
  v24 = v17;
  LODWORD(v19) = *(a1 + 123784);
  LODWORD(v26) = 2;
  v27 = v19;
  v28 = &off_2A1F0B5F0;
  v29 = 0;
  BlueFin::GlPeAsstPosMgr::processAssistance(a1 + 280, &v21, 0, 4, &v26, 0, 0, v19, v8);
  GlCustomLog(14, "Storing to NVMEM POS from OnChip PVT %lf %lf %lf unc\n", v18, v20, v17);
LABEL_19:
  if (*(a1 + 374917) == 1)
  {
    BlueFin::GlNvMemImpl::Write((a1 + 350608));
  }
}

uint64_t BlueFin::GlPosEng::ReportIqData(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = a1 + 137024;
  do
  {
    result = *(v4 + v3);
    if (result)
    {
      result = (*(*result + 256))(result, a2);
    }

    v3 += 8;
  }

  while (v3 != 576);
  return result;
}

uint64_t BlueFin::GlPeModeChange::SerializeImpl(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v13 = *MEMORY[0x29EDCA608];
  if (v3 >= 2)
  {
    DeviceFaultNotify("glposeng.cpp", 2722, "SerializeImpl", "ucVersion == 1");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glposeng.cpp", 2722, "ucVersion == 1");
  }

  v4 = v2;
  v5 = v1;
  if (v2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v9 = 56;
    v10 = 1;
    v11 = 0x1000000000000;
    v8 = &unk_2A1F092C0;
    v12 = 1;
    BlueFin::GlSysLogEntry::PutU32(&v8, *(v1 + 8));
    BlueFin::GlSysLogEntry::PutU32(&v8, *(v5 + 12));
    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v8, v4, 4);
  }

  v6 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t BlueFin::GlPeModeChange::Deserialize(BlueFin::GlPeModeChange *this, BlueFin::GlSysLogEntry *a2)
{
  v2 = *(a2 + 2) == 56 && *(a2 + 12) == 1;
  v3 = v2;
  if (v2)
  {
    *(this + 2) = BlueFin::GlSysLogEntry::GetU32(a2);
    *(this + 3) = BlueFin::GlSysLogEntry::GetU32(a2);
    BlueFin::GlSysLogEntry::CheckConsumed(a2, 2759);
  }

  return v3;
}

BOOL BlueFin::GlPosEng::SetGpsTimeFromMeif (BlueFin::GlPosEng *this, int a2, unsigned int a3, int a4, unsigned int a5, int8x16_t a6, int8x16_t a7)
{
  *a6.i64 = a3 * 0.001;
  v16 = &off_2A1F0B5F0;
  *a7.i64 = *a6.i64 - trunc(*a6.i64);
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  a7.i64[0] = vbslq_s8(vnegq_f64(v7), a7, a6).i64[0];
  if (*a7.i64 < 0.0 || *a7.i64 >= 1.0)
  {
    DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
  }

  v9 = *a7.i64 * 4294967300.0 + 0.5;
  v10 = v9;
  if (v9 >= 4294967300.0)
  {
    v10 = -1;
  }

  v17 = v10;
  v18 = *a6.i64 + 604800 * a2;
  v16 = &off_2A1F0B5F0;
  v13[0] = v10;
  v13[1] = v18;
  v13[2] = 0;
  v14 = a5;
  v15 = (1000 * a4);
  v12 = 0;
  return BlueFin::GlPeTimeManager::SetTime((this + 121216), v13, 2u, &v12);
}

unint64_t BlueFin::GlPosEng::UpdateL5HardwareDelayInMeters(BlueFin::GlPosEng *this, float a2)
{
  GlCustomLog(15, "GlPosEng::UpdateL5HardwareDelayInMeters: \n");
  BlueFin::GlPeKF::UpdateL5BiasM((this + 184416), a2);

  return BlueFin::GlReqSm::UpdateL5HardwareDelayInMeters((this + 126144));
}

unint64_t BlueFin::GlPosEng::UpdateL5DeltaHardwareDelayInMeters(BlueFin::GlPosEng *this, float a2)
{
  GlCustomLog(15, "GlPosEng::UpdateL5DeltaHardwareDelayInMeters: \n");
  BlueFin::GlPeKF::UpdateDeltaL5BiasM((this + 184416), a2);

  return BlueFin::GlReqSm::UpdateL5DeltaHardwareDelayInMeters((this + 126144));
}

uint64_t BlueFin::GlPosEng::ReinitMeasEng(BlueFin::GlPosEng *this)
{
  v2 = *(this + 4);
  if (!v2)
  {
    DeviceFaultNotify("glposeng.cpp", 3247, "ReinitMeasEng", "m_pcbCallBacks");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glposeng.cpp", 3247, "m_pcbCallBacks");
  }

  v3 = *(this + 5);
  if (v3)
  {
    v4 = (*(*v2 + 96))(v2);
    (*(*v3 + 16))(v3, v4);
    *(this + 5) = 0;
  }

  return BlueFin::GlPosEng::InitMeasEng(this);
}

uint64_t BlueFin::GlPosEng::gnss2ConstellationType(unsigned int a1)
{
  if (a1 < 7)
  {
    return (a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t BlueFin::GlPosEng::GetSatelliteOrbitInfo(void *a1, char *a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, char a10, unsigned int a11, uint64_t a12, __n128 __src, int a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __int16 a19, int a20, char a21, int a22, int a23, char a24, int a25, int a26, int a27, int a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, char a39, __int16 a40, int a41, int a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LOWORD(v65) = 0;
  STACK[0x5B8] = *MEMORY[0x29EDCA608];
  if (!a2 || !a3)
  {
    goto LABEL_59;
  }

  vars8 = a1 + 15360;
  bzero(a2, 16 * a3);
  v68 = 0;
  STACK[0x588] = &a65;
  do
  {
    v69 = STACK[0x588] + v68;
    *(v69 + 12) = 0;
    *v69 = v69 + 12;
    *(v69 + 8) = 2;
    v68 += 24;
  }

  while (v68 != 168);
  v65 = 0;
  for (i = 0; i != 7; ++i)
  {
    Mgr = BlueFin::GlPeGnssEphemerisMgr::GetMgr(a1 + 76, i);
    if (Mgr)
    {
      v72 = Mgr;
      (*(*Mgr + 304))(&__src);
      a38 = __src.n128_i8[8];
      memcpy(&a42, __src.n128_u64[0], 4 * __src.n128_u8[8]);
      a40 = 0;
      a39 = 0;
      a41 = a42;
      while (1)
      {
        BlueFin::GlSetIterator::operator++(&a38);
        if (a39 == a38)
        {
          break;
        }

        LOBYTE(a9) = a40;
        v73 = (*(*v72 + 112))(v72, &a9, 1);
        if (v73)
        {
          a26 = i;
          LOBYTE(a27) = a9;
          if (v65 < a3)
          {
            v74 = &a2[16 * v65];
            *v74 = a9;
            v74[1] = BlueFin::GlPosEng::gnss2ConstellationType(i);
            *(v74 + 1) = 2;
            v75 = (*(*v73 + 144))(v73);
            if (v75 < 4)
            {
              v74[3] = 0x3040201u >> (8 * v75);
            }

            if ((*(*v73 + 40))(v73))
            {
              v76 = 1;
            }

            else
            {
              v76 = 2;
            }

            v74[4] = v76;
            v74[6] = 0;
            v74[5] = v74[3] == 4;
            *(v74 + 1) = 0;
            if (*(vars8 + 228))
            {
              v74[6] = 1;
              Time = BlueFin::GlPeTimeManager::GetTime((a1 + 15152), 1, &__src);
              v78 = (*(*v73 + 64))(v73, &__src, 1, Time);
              *(v74 + 2) = v78;
              if (v74[5])
              {
                __src.n128_u32[0] = 0;
                if (BlueFin::GlPeLtoMgr::GetLtoFileAgeS((a1 + 956), *(vars8 + 226), &__src))
                {
                  *(v74 + 3) = __src.n128_i32[0];
                  v74[6] |= 2u;
                }
              }
            }

            BlueFin::GlGnssSet::Add(&a65, &a26);
            ++v65;
          }
        }
      }
    }
  }

  BlueFin::GlGnssSet::operator~(&a65, &a38);
  for (j = 0; j != 7; ++j)
  {
    v80 = BlueFin::GlGnssSet::operator()(&a38, j);
    BlueFin::GlSetBase::GlSetBase(&a9, &a11, 2u, v80);
    LOBYTE(a26) = a10;
    memcpy(&a28, a9, 4 * a10);
    HIWORD(a26) = 0;
    BYTE1(a26) = 0;
    a27 = a28;
    while (1)
    {
      BlueFin::GlSetIterator::operator++(&a26);
      if (BYTE1(a26) == a26)
      {
        break;
      }

      v82 = BYTE2(a26);
      a23 = 7;
      a24 = 0;
      __src.n128_u32[0] = -65536;
      __src.n128_u64[1] = 0;
      a15 = 0u;
      a16 = 0u;
      a17 = 0u;
      a18 = 0u;
      a19 = 0;
      a14 = 0;
      a20 = -1;
      a21 = 0;
      Alm = BlueFin::GlPeAlmMgr::GetAlm((a1 + 4292), j, BYTE2(a26), &__src, 0, 1);
      if (v65 < a3 && Alm)
      {
        v85 = &a2[16 * v65];
        *v85 = v82;
        v85[1] = BlueFin::GlPosEng::gnss2ConstellationType(j);
        v86 = 1;
        *(v85 + 1) = 1;
        if (!a20)
        {
          v86 = 2;
          goto LABEL_35;
        }

        if (a20 == 1)
        {
          goto LABEL_35;
        }

        if (a20 == 4 || (a20 & 0xFFFFFFFE) == 2)
        {
          v86 = 5;
LABEL_35:
          v85[3] = v86;
        }

        if (a23 < 5 && ((0x1Du >> a23) & 1) != 0)
        {
          v87 = *&asc_298A41AFC[4 * a23];
        }

        else if (a23 == 5)
        {
          LOWORD(v87) = 31;
        }

        else
        {
          LOWORD(v87) = 255;
        }

        if ((v87 & __src.n128_u16[1]) != 0)
        {
          v88 = 2;
        }

        else
        {
          v88 = 1;
        }

        v85[4] = v88;
        *(v85 + 5) = 0;
        *(v85 + 1) = 0;
        if (*(vars8 + 228))
        {
          v89 = BlueFin::GlPeAlmMgr::Age((a1 + 4292), &__src);
          if (v89 != 0x7FFFFFFF)
          {
            *(v85 + 2) = v89;
            v85[6] |= 1u;
          }
        }

        ++v65;
      }
    }
  }

  if (v65)
  {
    v90 = 0;
    do
    {
      v91 = &a2[16 * v90];
      BlueFin::GlFormat::glsnprintf(&__src, 0x50, " %.2f", v81, v91[3]);
      BlueFin::GlFormat::glsnprintf(&a26, 0x50, " %.2f", v92, v91[2]);
      if ((*(v91 + 6) & 2) != 0)
      {
        p_src = &__src;
      }

      else
      {
        p_src = "NaN";
      }

      if (*(v91 + 6))
      {
        v94 = &a26;
      }

      else
      {
        v94 = "NaN";
      }

      GlCustomLog(15, "GetSatsOrbitInfo:: constell: %d, svid: %d, serverPredAvail: %d, serverPredAgeSec: %s, ephType: %d, ephSource: %d, ephHealth: %d, ephAgeSec: %s\n", *(v91 + 1), *v91, *(v91 + 5), p_src, *(v91 + 2), *(v91 + 3), *(v91 + 4), v94);
      ++v90;
    }

    while (v65 > v90);
  }

LABEL_59:
  v95 = STACK[0x5B8];
  v96 = *MEMORY[0x29EDCA608];
  return v65;
}

uint64_t BlueFin::GlPosEng::GetRadioRegisters(uint64_t this, unsigned int *a2)
{
  v2 = this;
  v36[63] = *MEMORY[0x29EDCA608];
  if ((*(*(this + 16) + 140) & 0xFEu) <= 0x11)
  {
    v36[0] = 0;
    this = (*(*this + 120))(this, v36, 2);
LABEL_3:
    v3 = *MEMORY[0x29EDCA608];
    return this;
  }

  v5 = *(a2 + 1);
  if (v5 > 3)
  {
    if (v5 == 4)
    {
      if (BlueFin::GlPeReqBag::GetCWRequest((this + 137024)))
      {
        v8 = 0;
        do
        {
          BlueFin::GlPeReqBag::GetFactoryTestStatus(v2 + 137024);
          if (LOWORD(v32[0]) != 255 && v34 != 0)
          {
            HIWORD(v36[0]) = ((v35 + 174.0 - v33) * 1000.0);
            BYTE4(v36[0]) = v32[0];
            BYTE5(v36[0]) = BlueFin::GlPosEng::GetRadioRegisters(unsigned int *)::BandTranslation[v8];
            v20 = 1;
            goto LABEL_31;
          }

          ++v8;
        }

        while (v8 != 5);
        v20 = 0;
      }

      else
      {
        BlueFin::GlSetBase::GlSetBase(&__src, v32, 0x13u, (v2 + 283720));
        v10 = 0;
        v11 = __src + 4 * v31 - 4;
        do
        {
          if (*v11)
          {
            v12 = *v11 - (((*v11 >> 1) & 0x5B6DB6DB) + ((*v11 >> 2) & 0x9249249));
            v10 = ((v12 + (v12 >> 3)) & 0xC71C71C7) + v10 - 63 * (((v12 + (v12 >> 3)) & 0xC71C71C7) / 0x3F);
          }

          --v11;
        }

        while (v11 >= __src);
        v10 = v10;
        if (v10 >= 0x7Cu)
        {
          v10 = 124;
        }

        v21 = v10;
        v25 = v31;
        memcpy(v29, __src, 4 * v31);
        v27 = 0;
        v26 = 0;
        v28 = v29[0];
        BlueFin::GlSetIterator::operator++(&v25);
        if (v26 != v25)
        {
          v13 = 4;
          do
          {
            if (v27 >= 0x23FuLL)
            {
              DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
              __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
            }

            v14 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v27;
            v15 = *v14;
            LODWORD(v14) = v14[1];
            v16 = v36 + v13;
            v22[0] = v15;
            v23 = v14;
            v24 = v27;
            MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas((v2 + 283712), v22, 0, 0);
            v18 = *MeMeas;
            *(v36 + v13) = v18;
            v16[1] = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(MeMeas + 1) - *(MeMeas + 1) + BlueFin::GlSvId::s_aucSvId2gnss[v18]];
            *(v16 + 1) = (*(MeMeas + 29) * 1000.0);
            BlueFin::GlSetIterator::operator++(&v25);
            if (v26 == v25)
            {
              break;
            }

            v19 = v13 >= 0x1F0;
            v13 += 4;
          }

          while (!v19);
        }

        v20 = v21;
      }

LABEL_31:
      LODWORD(v36[0]) = *(a2 + 2) | (v20 << 8);
      this = (*(*v2 + 120))(v2, v36, (v20 + 1));
    }

    goto LABEL_3;
  }

  v6 = *(**(this + 40) + 736);
  v7 = *MEMORY[0x29EDCA608];

  return v6();
}

uint64_t BlueFin::GlPosEng::OnSerialNumber(uint64_t this, uint64_t a2, unsigned int *a3)
{
  v3 = *(this + 32);
  v4 = *(v3 + 280);
  if (v4)
  {
    return v4(*(v3 + 8), a2, a3);
  }

  return this;
}

void BlueFin::GlPosEng::~GlPosEng(BlueFin::GlPosEng *this)
{
  v1 = this + 69632;
  *this = &unk_2A1F11960;
  BlueFin::GlPeConvUtilCache::m_potThis = 0;
  BlueFin::GlReqSm::~GlReqSm((this + 126144));
  *(v1 + 276) = &unk_2A1F0B5A8;
  v1[2232] = 0;
}

{
  *this = &unk_2A1F11960;
  BlueFin::GlPeConvUtilCache::m_potThis = 0;
  BlueFin::GlReqSm::~GlReqSm((this + 126144));

  JUMPOUT(0x29C292F60);
}

char *BlueFin::GlPeMeIfDummy::RequestDump(BlueFin::GlPeMeIfDummy *this, char *a2)
{
  result = a2;
  *a2 = 0;
  return result;
}

BlueFin::GlUtcTime *BlueFin::GlUtcTime::GlUtcTime(BlueFin::GlUtcTime *this, unsigned int a2, unsigned int a3, unsigned int a4, int a5, int a6, int8x16_t a7, double a8, int8x16_t a9)
{
  *this = &unk_2A1F11310;
  *(this + 1) = 0;
  v10 = a2 - 1980;
  if (a2 <= 0x7BC && (a2 != 1980 || a3 <= 1 && (a3 != 1 || a4 <= 5)))
  {
    v20 = "usYear > 1980 || (usYear == 1980 && (ucMonth > 1 || (ucMonth == 1 && ucDay > 5)))";
    DeviceFaultNotify("glpe_datetime.h", 1009, "GlUtcTime", "usYear > 1980 || (usYear == 1980 && (ucMonth > 1 || (ucMonth == 1 && ucDay > 5)))");
    v21 = "glpe_datetime.h";
    v22 = 1009;
LABEL_22:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v21, v22, v20);
  }

  *a9.i64 = *a7.i64 - trunc(*a7.i64);
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  v12 = *vbslq_s8(vnegq_f64(v11), a9, a7).i64;
  if (v12 < 0.0 || v12 >= 1.0)
  {
    v20 = "dFracSec >= 0.0 && dFracSec < 1.0";
    DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
    v21 = "glpe_timepoint.h";
    v22 = 173;
    goto LABEL_22;
  }

  v14 = v12 * 4294967300.0 + 0.5;
  v15 = v14;
  if (v14 >= 4294967300.0)
  {
    v15 = -1;
  }

  v16 = a2 - 1977;
  if (v10 >= 0)
  {
    v16 = a2 - 1980;
  }

  v17 = 3600 * a5 + 126230400 * (v16 >> 2) + 60 * a6 + *a7.i64 + 86400 * (BlueFin::GlWeekTowTime::s_aausSub4AndMonth2Nt[12 * (v10 - (v16 & 0xFFFFFFFC)) - 1 + a3] + (a4 - 1)) - 432000;
  if (BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent - 1 >= v17 + BlueFin::GlWeekTowTime::m_ucCurrentLs)
  {
    v18 = BlueFin::GlWeekTowTime::m_ucCurrentLs;
  }

  else
  {
    v18 = BlueFin::GlWeekTowTime::m_ucNextLs;
  }

  *(this + 2) = v15;
  *(this + 3) = v17 + v18;
  *this = &unk_2A1F11310;
  v23 = *a7.i64;
  BlueFin::GlUtcTime::breakdownFct(this);
  if (v23 >= 60.0)
  {
    --*(this + 3);
  }

  BlueFin::GlUtcTime::breakdownFct(this);
  return this;
}

float BlueFin::GlSensorsConfig::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 12);
  *(a1 + 12) = result;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  return result;
}

BOOL BlueFin::stSkfTestParam::InSatCommandedTimeRange(BlueFin::stSkfTestParam *this)
{
  v1 = *(this + 262);
  if (!v1)
  {
    DeviceFaultNotify("glpe_cst.h", 417, "InSatCommandedTimeRange", "m_potTimeMgr != nullptr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_cst.h", 417, "m_potTimeMgr != nullptr");
  }

  v2 = *(v1 + 2568);
  return *(this + 160) <= v2 && *(this + 161) >= v2;
}

uint64_t BlueFin::GlNvMemImpl::SetDataToIgnore(BlueFin::GlNvMemImpl *this, int a2, int a3)
{
  v4 = *(this + 2);
  v5 = v4 | a2;
  if (a3)
  {
    v5 = v4 & ~a2;
  }

  *(this + 2) = v5;
  v6 = BlueFin::GlNvMemImpl::ChangeState(this, 6);
  GlCustomLog(15, "NVMEM SetDataToIgnore(0x%x[0x%x])\n", *(this + 2), v4);
  GlCustomLog(15, "NVMEM SetDataToIgnore(");
  v7 = *(this + 2);
  if (v7)
  {
    v8 = 0;
    v9 = 1;
    do
    {
      if (((1 << v8) & v7) != 0)
      {
        if ((v9 & 1) == 0)
        {
          GlCustomLog(15, "|");
        }

        GlCustomLog(15, "%s", BlueFin::GlNvMemImpl::SetDataToIgnore(unsigned int,BOOL)::aacIgnoreFlags[v8]);
        v9 = 0;
        v7 = v7 & ~(1 << v8);
      }

      if (v8 > 0xD)
      {
        break;
      }

      ++v8;
    }

    while (v7);
  }

  else
  {
    GlCustomLog(15, "<nothing>");
  }

  GlCustomLog(15, ")\n");
  result = BlueFin::GlNvMemImpl::ChangeState(this, v6);
  if (*(this + 2) != v4)
  {

    return BlueFin::GlNvMemImpl::DetermineDataToIgnore(this);
  }

  return result;
}

uint64_t BlueFin::GlNvMemImpl::AddErrorToPos(uint64_t this, char a2)
{
  *(this + 11862) = a2;
  *(*(this + 32) + 370) = a2;
  return this;
}

uint64_t BlueFin::GlNvMemImpl::AlterOscValues(BlueFin::GlNvMemImpl *this, int a2, int a3)
{
  result = GlCustomLog(13, "GlNvMem::AlterOscValues(%d,%u)\n", a2, a3);
  *(this + 2967) = a2;
  *(this + 2968) = a3;
  return result;
}

uint64_t BlueFin::GlNvMemImpl::RecoverTimeFromNvRam(uint64_t this, unsigned int a2, double a3, unsigned int *a4, int8x16_t a5, int8x16_t a6)
{
  v6 = a4[1];
  if ((v6 & 0x8000) != 0)
  {
    a5.i32[0] = *a4;
    *a5.i64 = a5.u64[0] * 0.000140815973;
    v22 = &off_2A1F0B5F0;
    *a6.i64 = *a5.i64 - trunc(*a5.i64);
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    a6.i64[0] = vbslq_s8(vnegq_f64(v8), a6, a5).i64[0];
    if (*a6.i64 < 0.0 || *a6.i64 >= 1.0)
    {
      DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
    }

    v11 = this;
    v12 = v6 & 0x3FFF;
    v13 = *a6.i64 * 4294967300.0 + 0.5;
    v14 = v13;
    if (v13 >= 4294967300.0)
    {
      v14 = -1;
    }

    LODWORD(v23) = v14;
    HIDWORD(v23) = *a5.i64 + 604800 * v12;
    v22 = &off_2A1F0B5F0;
    GlCustomLog(14, "GlPosEng::AsicStarted: LMS:%u  Recovering time  GpsTimeFromLastRun:{Week:%d  TowS:%.3lf}  Elapsed Time(ms):%.0lf\n", a2, HIDWORD(v23) / 0x93A80, v14 * 2.32830644e-10 + (HIDWORD(v23) % 0x93A80), a3);
    v15 = 200000.0;
    if ((a4[1] & 0x4000) != 0)
    {
      v15 = 1.0;
    }

    v18 = v23;
    v19 = 0;
    v20 = a2;
    v21 = v15;
    this = BlueFin::GlPeTimeManager::RecoverTimeFromNvRam(*(v11 + 24), &v18);
    if (this)
    {
      *(v11 + 11919) = 1;
      v16 = *(v11 + 12);
      if (v16 == -1)
      {
        v17 = 4;
      }

      else
      {
        v17 = v16 | 4;
      }

      *(v11 + 12) = v17;
    }
  }

  return this;
}

uint64_t BlueFin::GlNvMemImpl::Write(BlueFin::GlNvMemImpl *this)
{
  if (*(this + 2973) == 1)
  {
    v2 = 3;
  }

  else
  {
    v2 = 5;
  }

  result = BlueFin::GlNvMemImpl::ChangeState(this, v2);
  v4 = result;
  if (*(this + 2973) == 3)
  {
    v5 = *(this + 2964);
    if (!v5)
    {
      return result;
    }

    if (v5 == 2)
    {
      v6 = *(this + 3);
      if (*(v6 + 642) >> 4 <= 0x176u)
      {
        result = BlueFin::GlPeTimeManager::GenerateTimeForNextSession(v6);
        if (!result)
        {
          return result;
        }
      }

      v7 = BlueFin::GlNvMemImpl::ChangeState(this, 4);
      BlueFin::GlNvMemImpl::ResetReader(this);
      BlueFin::GlNvMemImpl::DetermineDataToIgnore(this);
      v8 = *(this + 2);
      v9 = *(v8 + 136);
      if (v9)
      {
        v9(*(v8 + 8), this);
      }

      BlueFin::GlNvMemImpl::LoadComplete(this);
      BlueFin::GlNvMemImpl::ChangeState(this, v7);
    }
  }

  (*(**(this + 2) + 72))(*(this + 2), 0, 0, 0);
  v38 = &unk_2A1F11F88;
  HIDWORD(v39) = 0;
  LOBYTE(v40) = 0;
  *(&v40 + 4) = 8;
  LOBYTE(v39) = 1;
  if (!*(this + 2))
  {
    v12 = BlueFin::GlUtils::m_pInstance;
    if (!BlueFin::GlUtils::m_pInstance)
    {
      goto LABEL_19;
    }

    if (*(BlueFin::GlUtils::m_pInstance + 1122) != 1)
    {
      goto LABEL_17;
    }
  }

  BlueFin::GlNvMemImplData::SerializeImpl();
  v12 = BlueFin::GlUtils::m_pInstance;
  if (BlueFin::GlUtils::m_pInstance)
  {
LABEL_17:
    if (*(v12 + 1122) == 1)
    {
      (*(v38 + 3))(&v38, 0, 0);
    }
  }

LABEL_19:
  HIDWORD(v37) = 6;
  v13 = *(this + 2);
  if ((v13 & 0x40000) == 0)
  {
    BlueFin::GlPeTimeManager::SerializeTime(*(this + 3), *(this + 2));
    v13 = *(this + 2);
  }

  if ((v13 & 0x20000) == 0)
  {
    BlueFin::GlPeAsstMgr::SerializeAllEph(*(this + 4), 1, &v37 + 4, *(this + 2));
  }

  v14 = *(this + 9);
  if (*v14 != 1 || (v15 = *(this + 2), (v15 & 0x100000) == 0) || (*(*(this + 14) + 32) & 0x40) == 0)
  {
    BlueFin::GlPeOscMgr::Serialize(v14, *(this + 2), v10, v11);
    v15 = *(this + 2);
  }

  if ((v15 & 0x80000) == 0)
  {
    BlueFin::GlPeAlmMgr::SerializeAll(*(this + 7), *(this + 2));
    v15 = *(this + 2);
  }

  if ((~v15 & 0x200020) != 0)
  {
    BlueFin::GlPeLtoMgr::Serialize(*(this + 8), *(this + 2));
    v15 = *(this + 2);
  }

  if ((v15 & 0x800000) == 0)
  {
    v16 = *(this + 10);
    v17 = *(v16 + 48508);
    if ((v17 & 8) != 0 && *(v16 + 120))
    {
      v16 += 64;
    }

    else if ((v17 & 0x40) != 0)
    {
      v16 += (*(v16 + 312) != 0) << 8;
    }

    v35[0] = &unk_2A1F10338;
    v18 = 1;
    v19 = 40;
    do
    {
      v35[v18] = *(v16 + v18 * 8);
      *(v35 + v19) = *(v16 + v19);
      ++v18;
      v19 += 4;
    }

    while (v18 != 5);
    v36 = *(v16 + 56);
    if (v36 && BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      off_2A1F10350();
      v15 = *(this + 2);
    }
  }

  v20 = *(this + 2);
  if ((v15 & 0x1000000) != 0)
  {
    if ((v15 & 0x20000000) != 0)
    {
      goto LABEL_45;
    }
  }

  else
  {
    BlueFin::GlPeTimeManager::SerializeModels(*(this + 3), v20);
    v15 = *(this + 2);
    v20 = *(this + 2);
    if ((v15 & 0x20000000) != 0)
    {
LABEL_45:
      if ((v15 & 0x40000000) != 0)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }
  }

  if (v20 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    (*(*(*(this + 15) + 32) + 24))();
    v20 = *(this + 2);
    if ((*(this + 2) & 0x40000000) != 0)
    {
      goto LABEL_47;
    }

LABEL_46:
    BlueFin::GlPeRtiRequestor::Serialize(*(this + 16), v20);
    v21 = *(this + 2);
    goto LABEL_47;
  }

  v20 = 0;
  if ((v15 & 0x40000000) == 0)
  {
    goto LABEL_46;
  }

LABEL_47:
  BlueFin::GlPeEnvironmentMonitor::Serialize(*(this + 12) + 64);
  v22 = *(this + 11);
  if (*(this + 2))
  {
    goto LABEL_48;
  }

  if (BlueFin::GlUtils::m_pInstance)
  {
    if ((*(BlueFin::GlUtils::m_pInstance + 1122) & 1) == 0)
    {
      v24 = v22 + 56000;
      goto LABEL_57;
    }

LABEL_48:
    (*(*(v22 + 37440) + 24))();
    v23 = *(this + 2);
    v24 = *(this + 11) + 56000;
    if (v23)
    {
LABEL_60:
      (*(*v24 + 24))(v24, v23, 0);
      goto LABEL_61;
    }

LABEL_57:
    if (!BlueFin::GlUtils::m_pInstance || *(BlueFin::GlUtils::m_pInstance + 1122) != 1)
    {
      goto LABEL_61;
    }

    v23 = 0;
    goto LABEL_60;
  }

LABEL_61:
  BlueFin::GlPeOscMgr::UpdateCntinOffsetEstimate(*(this + 9));
  BlueFin::GlPeOscMgr::SerializeCntin(*(this + 9), *(this + 2));
  BlueFin::GlPeSvVisibilityCache::Serialize(*(this + 6), *(this + 2));
  v31 = *(this + 2);
  if ((v31 & 0x10000000) == 0)
  {
    BlueFin::GlPeClkCalibrateMgr::SerializeAll(*(this + 18), *(this + 2), v25, v26, v27, v28, v29, v30, v34, v35[0], v35[1], v35[2], v35[3], v35[4], v35[5], v35[6], v36, v37, v38, v39, v40, *(&v40 + 1), v41, v42, v43, v44, vars0, vars0_4);
    v31 = *(this + 2);
  }

  if ((v31 & 0x10000) == 0)
  {
    BlueFin::GlPeAsstPosMgr::Serialize(*(this + 5), *(this + 2), 1);
  }

  BlueFin::GlPeLtoMgr::SerializeLto(*(this + 8), *(this + 2));
  (*(**(this + 2) + 72))(*(this + 2), 2, 0, 0);
  v32 = *(BlueFin::GlUtils::m_pInstance + 1124);
  v33 = *(this + 3);
  *(v33 + 2565) = 1;
  *(v33 + 2566) = v32;
  BlueFin::GlPeTimeManager::saveNvRamAndRtc(v33, 0);
  (*(**(this + 2) + 72))(*(this + 2), 3, 0, 0);
  BlueFin::GlPeAsstPosMgr::Serialize(*(this + 5), *(this + 2), 0);
  (*(**(this + 2) + 72))(*(this + 2), 5, 0, 0);
  return BlueFin::GlNvMemImpl::ChangeState(this, v4);
}

uint64_t BlueFin::GlNvMemImpl::Delete(BlueFin::GlNvMemImpl *this)
{
  (*(**(this + 2) + 72))(*(this + 2), 0, 0, 0);
  v2 = *(**(this + 2) + 72);

  return v2();
}

uint64_t BlueFin::GlNvMemImplData::SerializeImpl()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v3 = v1;
  v4 = v0;
  v13 = *MEMORY[0x29EDCA608];
  if (v2)
  {
    v5 = v2;
    if (v2 >= 6)
    {
      DeviceFaultNotify("glnvmem.cpp", 1245, "SerializeImpl", "ucVersion >= 1 && ucVersion <= 5");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glnvmem.cpp", 1245, "ucVersion >= 1 && ucVersion <= 5");
    }

    if (v1)
    {
LABEL_8:
      v9 = 28;
      v10 = v5;
      v11 = 0x1000000000000;
      v8 = &unk_2A1F092C0;
      v12 = v5;
      if (v5 < 5)
      {
        BlueFin::GlSysLogEntry::PutU32(&v8, *(v0 + 12));
        if (v5 < 2)
        {
          goto LABEL_14;
        }

        BlueFin::GlSysLogEntry::PutU8(&v8, *(v4 + 16));
        if (v5 == 2)
        {
          goto LABEL_14;
        }

        BlueFin::GlSysLogEntry::PutU8(&v8, *(v4 + 20));
        if (v5 != 4)
        {
          goto LABEL_14;
        }
      }

      else
      {
        BlueFin::GlSysLogEntry::PutU8(&v8, *(v0 + 8));
        BlueFin::GlSysLogEntry::PutU32(&v8, *(v4 + 12));
        BlueFin::GlSysLogEntry::PutU8(&v8, *(v4 + 16));
        BlueFin::GlSysLogEntry::PutU8(&v8, *(v4 + 20));
      }

      BlueFin::GlSysLogEntry::PutU32(&v8, *(v4 + 24));
LABEL_14:
      BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v8, v3, 4);
      goto LABEL_15;
    }
  }

  else
  {
    v5 = 5;
    if (v1)
    {
      goto LABEL_8;
    }
  }

  if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    goto LABEL_8;
  }

LABEL_15:
  v6 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t BlueFin::GlPeCachedAtmosDelays::Oldest(BlueFin::GlPeCachedAtmosDelays *this, double a2, double a3)
{
  v3 = *this;
  if (v3 < 2)
  {
    return 0;
  }

  else
  {
    v4 = 0;
    LODWORD(a3) = *(this + 1);
    v5 = (a2 - *&a3);
    v6 = (this + 28);
    for (i = 1; i != v3; ++i)
    {
      v8 = *v6;
      v6 += 6;
      v9 = (a2 - v8);
      if (v5 < v9)
      {
        v4 = i;
      }

      if (v5 <= v9)
      {
        v5 = v9;
      }
    }
  }

  return v4;
}

uint64_t BlueFin::GlPeCachedAtmosDelaysWriter::SerializeImpl()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v3 = v2;
  v4 = v0;
  v24 = *MEMORY[0x29EDCA608];
  if (v2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    if (v1 <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = v1;
    }

    if (v1 >= 2)
    {
      DeviceFaultNotify("glpe_atmosdelays.cpp", 188, "SerializeImpl", "ucVersion >= 1 && ucVersion <= 1");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_atmosdelays.cpp", 188, "ucVersion >= 1 && ucVersion <= 1");
    }

    v6 = **(v0 + 16);
    if ((v6 - 113) >= 0xFFFFFF90)
    {
      v7 = 0;
      v8 = 24 * v6;
      do
      {
        v20 = 117;
        v21 = v5;
        v22 = 0x1000000000000;
        v19 = &unk_2A1F09520;
        v23 = v5;
        BlueFin::GlSysLogEntry::PutU8(&v19, *(&BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + *(*(v4 + 16) + v7 + 12)));
        BlueFin::GlSysLogEntry::PutU32(&v19, *(v4 + 8));
        v9 = *(v4 + 16);
        v10 = v9 + v7;
        v11 = *(v9 + v7 + 4);
        v12 = 0.0;
        v13 = 0.0;
        if (v11)
        {
          v13 = (*(v10 + 24) * (*(v4 + 8) - v11)) * 0.001;
        }

        v14 = *(v10 + 8);
        if (v14)
        {
          v12 = v13 + *(v9 + v7 + 20);
        }

        BlueFin::GlSysLogEntry::PutU8(&v19, v14);
        BlueFin::GlSysLogEntry::PutF32(&v19, v12);
        v15 = *(v4 + 16) + v7;
        v16 = 0.0;
        if (*(v15 + 13) == 1)
        {
          v16 = *(v15 + 16);
        }

        BlueFin::GlSysLogEntry::PutF32(&v19, v16);
        BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v19, v3, 4);
        v7 += 24;
      }

      while (v8 != v7);
    }

    result = 1;
  }

  else
  {
    result = 0;
  }

  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlPeCachedAtmosDelaysWriter::Deserialize(BlueFin::GlPeCachedAtmosDelaysWriter *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 117 || *(a2 + 12) != 1)
  {
    v6 = "0";
    DeviceFaultNotify("glpe_atmosdelays.cpp", 214, "Deserialize", "0");
    v7 = 214;
    goto LABEL_9;
  }

  BlueFin::GlSysLogEntry::GetU8(a2);
  *(this + 2) = BlueFin::GlSysLogEntry::GetU32(a2);
  BlueFin::GlSysLogEntry::GetU8(a2);
  BlueFin::GlSysLogEntry::GetF32(a2);
  BlueFin::GlSysLogEntry::GetF32(a2);
  if (*(a2 + 11) != *(a2 + 10))
  {
    v6 = "otEntry.DataSize() == otEntry.ReadIdx()";
    DeviceFaultNotify("glpe_atmosdelays.cpp", 225, "Deserialize", "otEntry.DataSize() == otEntry.ReadIdx()");
    v7 = 225;
LABEL_9:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_atmosdelays.cpp", v7, v6);
  }

  return 1;
}

uint64_t BlueFin::GlPeComputeZRH::CalcIonoDelay(uint64_t a1, __int128 *a2, uint64_t a3, int8x16_t a4, float a5, float a6, double a7, int8x16_t a8)
{
  v12 = a4.i64[0];
  v29 = 0.0;
  v28 = 0;
  v14 = *(a1 + 4296);
  if ((*(v14 + 48509) & 2) != 0)
  {
    v15 = *(a2 + 2);
    v31 = *a2;
    v32 = v15;
    if (BlueFin::GlPeIONXMgr::GetIonoDelayInMeter(v14 + 384, *a4.i64, &v31, &v29, &v30, a6 * 0.0174532925, a5 * 0.0174532925))
    {
      if (a6 > 0.0)
      {
        v16 = v29;
        if (v29 > 0.0 && v16 / 0.162372455 * sinf(fmaxf(a6, 5.0) * 0.017453) < 330.0)
        {
          *(a3 + 4) = 9;
          v17 = v16;
          *(a3 + 16) = v17;
          return 0;
        }
      }
    }

    v14 = *(a1 + 4296);
    if (!v14)
    {
      return 0;
    }
  }

  a4.i64[0] = v12;
  BlueFin::GlPeIonoMgr::GetIonoDelay(v14, a2, &v28, a4, a5, a6, a7, a8);
  if (a6 <= 0.0 || (v19 = v18, v18 <= 0.0) || v18 / 0.162372455 * sinf(fmaxf(a6, 5.0) * 0.017453) >= 330.0)
  {
    BlueFin::GlPeIonoMgr::Clear(*(a1 + 4296));
    v23 = *(a1 + 4296);
    if (!v23)
    {
      return 0;
    }

    v20.i64[0] = v12;
    BlueFin::GlPeIonoMgr::GetIonoDelay(v23, a2, &v28, v20, a5, a6, v21, v22);
    v19 = v24;
  }

  v25 = v28;
  v26 = v19;
  *(a3 + 16) = v26;
  *(a3 + 4) = 1;
  if (v25 <= 5)
  {
    *(a3 + 4) = dword_298A41D88[v25];
  }

  return 0;
}

uint64_t BlueFin::stDnavState::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  BlueFin::GlSetBase::operator=(a1 + 72, a2 + 72);
  *(a1 + 84) = *(a2 + 84);
  v5 = *(a2 + 100);
  v6 = *(a2 + 116);
  v7 = *(a2 + 132);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 132) = v7;
  *(a1 + 116) = v6;
  *(a1 + 100) = v5;
  BlueFin::GlSetBase::operator=(a1 + 160, a2 + 160);
  *(a1 + 172) = *(a2 + 172);
  v8 = *(a2 + 188);
  v9 = *(a2 + 204);
  v10 = *(a2 + 220);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 220) = v10;
  *(a1 + 204) = v9;
  *(a1 + 188) = v8;
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 268) = *(a2 + 268);
  *(a1 + 272) = *(a2 + 272);
  return a1;
}

uint64_t BlueFin::GlPeDnav::Run(uint64_t a1, uint64_t a2, _BYTE *a3, BlueFin::GlSetBase *this, BlueFin::GlSetBase *a5, int a6, void *a7)
{
  v8 = a6;
  v114 = *MEMORY[0x29EDCA608];
  *(a1 + 268) = 0;
  *(a1 + 416) = *a7;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 280) = 0x4059000000000000;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 16) = 0xC158548D40000000;
  *(a1 + 24) = 6367427;
  *(a1 + 312) = 7;
  v14 = *(a1 + 304);
  *(v14 + 56) = 0;
  *(v14 + 40) = 0u;
  *(v14 + 24) = 0u;
  *(v14 + 8) = 0u;
  *(*(a1 + 304) + 56) = *(a1 + 416) * 0.299792458;
  *(a1 + 64) = *(a1 + 420) * 0.0898755179;
  if (a6)
  {
    *(a1 + 268) |= 2u;
  }

  v15 = BlueFin::GlSetBase::Cnt(this);
  v16 = BlueFin::GlSetBase::Cnt(a5);
  if (v16 >= 2)
  {
    v17 = -7;
  }

  else
  {
    v17 = -4;
  }

  v18 = v16 + v15;
  if (v15 < 4)
  {
    ++v18;
  }

  if (((v16 > 1) & v8) != 0)
  {
    v19 = -2;
  }

  else
  {
    v19 = 0;
  }

  if (v15 <= 3 && (v18 + v17) == v19)
  {
    *(a1 + 268) |= 1u;
    BlueFin::GlPeDnav::addAlMeasurement(a1, a2, a3, 0);
  }

  if ((BlueFin::GlPeDnav::Core(a1, a2, *a3, this, a5, 1.62176493e14) & 1) == 0)
  {
    goto LABEL_26;
  }

  if (BlueFin::GlSetBase::Cnt(this) <= 3)
  {
    *(a1 + 268) |= 1u;
    BlueFin::GlPeDnav::addAlMeasurement(a1, a2, a3, 0);
  }

  if ((BlueFin::GlPeDnav::Core(a1, a2, *a3, this, a5, 900000000.0) & 1) == 0)
  {
    goto LABEL_26;
  }

  if (BlueFin::GlSetBase::Cnt(this) <= 3)
  {
    BlueFin::GlPeDnav::addAlMeasurement(a1, a2, a3, 1);
  }

  if ((BlueFin::GlPeDnav::Core(a1, a2, *a3, this, a5, 9000000.0) & 1) == 0)
  {
LABEL_26:
    *(a1 + 416) = *a7;
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 288) = 0;
    *(a1 + 296) = 0;
    *(a1 + 280) = 0x4059000000000000;
    *(a1 + 16) = 0xC158548D40000000;
    *(a1 + 24) = 6367427;
    *(a1 + 312) = 7;
    v26 = *(a1 + 304);
    *(v26 + 56) = 0;
    *(v26 + 40) = 0u;
    *(v26 + 24) = 0u;
    *(v26 + 8) = 0u;
    *(*(a1 + 304) + 56) = *(a1 + 416) * 0.299792458;
    *(a1 + 64) = *(a1 + 420) * 0.0898755179;
    goto LABEL_27;
  }

  if (!a2)
  {
    v75 = "pastDNMeas";
    DeviceFaultNotify("glpe_dnav.cpp", 462, "DNavQA", "pastDNMeas");
    v76 = 462;
    goto LABEL_111;
  }

  v20 = *a3;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 24) = 6367427;
  *(a1 + 64) = 0x40A76BD9628CBD12;
  v110[1] = 0xC00000000;
  memset(v111, 0, sizeof(v111));
  v112 = 0;
  v107[1] = 0xC00000000;
  memset(v108, 0, sizeof(v108));
  v109 = 0;
  v110[0] = v111;
  v21 = *(a1 + 28);
  v99[0] = a1 + 304;
  v99[1] = a1;
  v99[2] = 0;
  v100 = v21;
  v101 = 0x4C000000001;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0x4008000000000000;
  v107[0] = v108;
  memset(v113, 0, 48);
  v96[0] = v110;
  v96[1] = v107;
  v96[2] = 0;
  v96[3] = 0;
  v96[4] = v113;
  v97 = 0u;
  v98 = 0u;
  v77 = v20;
  if (BlueFin::GlSetBase::Highest((a1 + 384)) >= v20)
  {
    v75 = "m_otMeasSet.Highest() < lDNMeasMaxNum";
    DeviceFaultNotify("glpe_dnav.cpp", 484, "DNavQA", "m_otMeasSet.Highest() < lDNMeasMaxNum");
    v76 = 484;
    goto LABEL_111;
  }

  if ((*(**(a1 + 424) + 16))(*(a1 + 424), v99, v96, a2, a1 + 384))
  {
    goto LABEL_27;
  }

  v87 = *(a1 + 392);
  memcpy(v91, *(a1 + 384), 4 * v87);
  v89 = 0;
  v88 = 0;
  v90 = v91[0];
  BlueFin::GlSetIterator::operator++(&v87);
  if (v88 == v87)
  {
    v24 = 0;
    v25 = 1;
    v22.i64[0] = 0x409F400000000000;
    v79 = v22;
    goto LABEL_37;
  }

  v29 = 0;
  v30 = v110[0];
  v25 = 1;
  v31 = v113;
  v32 = v107[0];
  v22.i64[0] = 0x409F400000000000;
  v79 = v22;
  do
  {
    v33 = a2 + 56 * v89;
    v34 = *(v33 + 44);
    v35 = (a1 + 248);
    if (v34)
    {
      if (v34 == 3)
      {
        v22.i64[0] = *(v33 + 8);
        v79 = v22;
        v29 = a2 + 56 * v89;
        goto LABEL_35;
      }

      v35 = (a1 + 256);
      if (v34 != 2)
      {
        goto LABEL_35;
      }
    }

    v36 = *(v30 + 8 * v89 + 8) - *(v32 + 8 * v89 + 8);
    *v35 = *v35 + v36 * v36;
    if (*v31 < -2.0)
    {
      v25 = 0;
    }

LABEL_35:
    BlueFin::GlSetIterator::operator++(&v87);
    ++v31;
  }

  while (v88 != v87);
  v24 = v29 != 0;
LABEL_37:
  *v22.i64 = sqrt(*(a1 + 248));
  *v23.i64 = *v22.i64 - trunc(*v22.i64 * 2.32830644e-10) * 4294967300.0;
  v37.f64[0] = NAN;
  v37.f64[1] = NAN;
  v23.i64[0] = vbslq_s8(vnegq_f64(v37), v23, v22).u64[0];
  if (*v22.i64 <= 4294967300.0)
  {
    v38 = *v22.i64;
  }

  else
  {
    v38 = *v23.i64;
  }

  if ((v25 & 1) == 0)
  {
    v53 = *(a1 + 268) & 0xFFFFFFEF;
    goto LABEL_108;
  }

  v39 = BlueFin::GlSetBase::Cnt((a1 + 72));
  v40 = BlueFin::GlSetBase::Cnt((a1 + 160));
  v41 = v40;
  if (v40 >= 2)
  {
    v42 = -7;
  }

  else
  {
    v42 = -4;
  }

  v43 = v40 + v39;
  if (v39 < 4)
  {
    ++v43;
  }

  if ((v40 > 1) & (*(a1 + 268) >> 1))
  {
    v44 = 2;
  }

  else
  {
    v44 = 0;
  }

  v45 = v43 + v42 + v44;
  if ((v45 & 0x80) != 0)
  {
    v75 = "cNdof >= 0";
    DeviceFaultNotify("glpe_dnav.cpp", 554, "DNavQA", "cNdof >= 0");
    v76 = 554;
    goto LABEL_111;
  }

  if (v24 != v39 < 4)
  {
    v75 = "bAltNeeded == bAltInMeasArray";
    DeviceFaultNotify("glpe_dnav.cpp", 558, "DNavQA", "bAltNeeded == bAltInMeasArray");
    v76 = 558;
    goto LABEL_111;
  }

  if (v39 < 4 != (*(a1 + 268) & 1))
  {
    v75 = "bAltNeeded == bAltUsed";
    DeviceFaultNotify("glpe_dnav.cpp", 559, "DNavQA", "bAltNeeded == bAltUsed");
    v76 = 559;
LABEL_111:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_dnav.cpp", v76, v75);
  }

  v46 = v40;
  v47 = vaddvq_f64(vmulq_f64(*(a1 + 40), *(a1 + 40)));
  v48 = v40 == 4 && v39 == 2;
  v49 = dbl_298A43620[(v43 + v42 + v44) < 3u];
  if (v48)
  {
    v49 = 9.0;
  }

  if (v47 < v49)
  {
    if (v39 < 3)
    {
      v54 = 0;
    }

    else
    {
      v93 = v95;
      v94 = 8;
      memset(v95, 0, 32);
      if (v77 >= 1)
      {
        v50 = v77;
        v51 = (a2 + 44);
        do
        {
          if (!*v51 && ((*(*(a1 + 72) + 4 * (*(v51 - 2) >> 5)) >> (*(v51 - 1) & 0x1F)) & 1) != 0)
          {
            *&v95[(*(v51 - 12) >> 3) & 0x1C] |= 1 << *(v51 - 12);
            v52 = *(v51 - 7);
          }

          v51 += 14;
          --v50;
        }

        while (v50);
      }

      v78 = v40;
      v55 = *(a1 + 424);
      v80 = 0;
      v81 = v83;
      v82 = 8;
      memset(v83, 0, sizeof(v83));
      v84 = xmmword_298A41DA0;
      v85 = vdup_n_s32(0x42C60000u);
      v86 = 1120272384;
      BlueFin::stDops::stDops(&v87, &v80);
      v56 = 0;
      v92 = v55;
      v57 = &v93[4 * v94 - 4];
      do
      {
        if (*v57)
        {
          v58 = *v57 - (((*v57 >> 2) & 0x9249249) + ((*v57 >> 1) & 0x5B6DB6DB));
          v56 = ((v58 + (v58 >> 3)) & 0xC71C71C7) + v56 - 63 * (((v58 + (v58 >> 3)) & 0xC71C71C7) / 0x3F);
        }

        --v57;
      }

      while (v57 >= v93);
      BlueFin::GlPeDops::GetDops();
      v60.i32[0] = DWORD1(v84);
      *v61.i32 = *(&v84 + 1) - (truncf(*(&v84 + 1) * 2.3283e-10) * 4295000000.0);
      v62.i64[0] = 0x8000000080000000;
      v62.i64[1] = 0x8000000080000000;
      v63 = vbslq_s8(v62, v61, v60);
      if (*(&v84 + 1) > 4295000000.0)
      {
        v60.i32[0] = v63.i32[0];
      }

      if (v39 == 3)
      {
        v41 = v78;
        if (*v60.i32 < -4295000000.0)
        {
          *v63.i32 = -*v60.i32;
          *v60.i32 = -(*v60.i32 - (truncf(*v60.i32 * -2.3283e-10) * -4295000000.0));
          v59.i64[0] = 0x8000000080000000;
          v59.i64[1] = 0x8000000080000000;
          v60 = vbslq_s8(v59, v60, v63);
          *v60.i32 = -*v60.i32;
        }

        if (*v60.i32 < 0.0)
        {
          v64 = --*v60.i32;
        }

        else
        {
          v64 = *v60.i32;
        }

        *v60.i64 = *v79.i64 + trunc(*v79.i64 * 2.32830644e-10) * -4294967300.0;
        v65.f64[0] = NAN;
        v65.f64[1] = NAN;
        v66 = vnegq_f64(v65);
        v67 = vbslq_s8(v66, v60, v79);
        if (*v79.i64 <= 4294967300.0)
        {
          v67.i64[0] = v79.i64[0];
        }

        if (*v67.i64 < -4294967300.0)
        {
          *v59.i64 = -*v67.i64;
          *v67.i64 = -(*v67.i64 - trunc(*v67.i64 * -2.32830644e-10) * -4294967300.0);
          *v67.i64 = -*vbslq_s8(v66, v67, v59).i64;
        }

        if (*v67.i64 < 0.0)
        {
          v68 = --*v67.i64;
        }

        else
        {
          v68 = *v67.i64;
        }

        v54 = v68 * v64;
      }

      else
      {
        v41 = v78;
        if (*v60.i32 < -4295000000.0)
        {
          *v63.i32 = -*v60.i32;
          *v60.i32 = -(*v60.i32 - (truncf(*v60.i32 * -2.3283e-10) * -4295000000.0));
          v69.i64[0] = 0x8000000080000000;
          v69.i64[1] = 0x8000000080000000;
          *v60.i32 = -*vbslq_s8(v69, v60, v63).i32;
        }

        if (*v60.i32 < 0.0)
        {
          v70 = --*v60.i32;
        }

        else
        {
          v70 = *v60.i32;
        }

        if (v38 <= 0x1E)
        {
          v71 = 30;
        }

        else
        {
          v71 = v38;
        }

        v54 = v70 * v71;
      }
    }

    v72 = 1;
    if (!v39)
    {
      v72 = 2;
    }

    if (!v46)
    {
      v72 = 0;
    }

    v73 = v45;
    if ((v45 & 0xFE) != 0)
    {
      v73 = 2;
    }

    v74 = dword_298A43670[3 * v72 + v73];
    if (v74 > v54)
    {
      v54 = v74;
    }

    *(a1 + 24) = v54;
    if (v41 >= 3)
    {
      *(a1 + 64) = fmax(fmin(sqrt(v47), 29.3796609), 2.99792458);
    }

    v53 = *(a1 + 268) | 0x20;
LABEL_108:
    *(a1 + 268) = v53;
  }

LABEL_27:
  v27 = *MEMORY[0x29EDCA608];
  return a1;
}

double BlueFin::GlPeDnav::addAlMeasurement(uint64_t a1, uint64_t a2, _BYTE *a3, int a4)
{
  if (!a2)
  {
    v8 = "pastDNMeas";
    DeviceFaultNotify("glpe_dnav.cpp", 715, "addAlMeasurement", "pastDNMeas");
    v9 = 715;
LABEL_15:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_dnav.cpp", v9, v8);
  }

  v4 = *a3;
  v5 = *a3;
  if (v4 < 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = *a3;
    v7 = a2;
    do
    {
      if (*(v7 + 44) == 3)
      {
        goto LABEL_10;
      }

      v7 += 56;
      --v4;
    }

    while (v4);
    if (v5 >= 0xE)
    {
      v8 = "i < DN_MEAS_ARR_LEN";
      DeviceFaultNotify("glpe_dnav.cpp", 730, "addAlMeasurement", "i < DN_MEAS_ARR_LEN");
      v9 = 730;
      goto LABEL_15;
    }
  }

  v7 = a2 + 56 * v6;
  *a3 = v5 + 1;
LABEL_10:
  result = 0.0;
  *(v7 + 50) = 0;
  *(v7 + 32) = 0;
  *(v7 + 36) = -1;
  *(v7 + 40) = 575;
  *v7 = xmmword_298A43630;
  *(v7 + 16) = xmmword_298A419D0;
  *(v7 + 44) = 3;
  *(v7 + 48) = 1;
  if (a4)
  {
    v12[0] = 0;
    v12[1] = 0;
    v13 = 0.0;
    v14 = vdup_n_s32(0x44FA0000u);
    v15 = -1;
    if (BlueFin::GlPeKFAltAsst::altAsstFirstFix(*(a1 + 432), v12, a1, 0x27100u))
    {
      result = v13;
      v11 = *v14.i32;
      *v7 = v13;
      *(v7 + 8) = v11;
    }
  }

  return result;
}

uint64_t BlueFin::GlPeDnav::Core(uint64_t a1, uint64_t a2, int a3, BlueFin::GlSetBase *this, uint64_t a5, double a6)
{
  v153 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    v87 = "pastDNMeas";
    DeviceFaultNotify("glpe_dnav.cpp", 197, "Core", "pastDNMeas");
    v88 = "glpe_dnav.cpp";
    v89 = 197;
    goto LABEL_81;
  }

  v12 = BlueFin::GlSetBase::Cnt(this);
  v13 = (BlueFin::GlSetBase::Cnt(a5) + v12 + (*(a1 + 268) & 1));
  v14 = *(a1 + 384);
  bzero(v14, ((4 * *(a1 + 392) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  if (a3 >= 1)
  {
    v15 = 0;
    v16 = *a5;
    v17 = *this;
    do
    {
      v18 = a2 + 56 * v15;
      v19 = *(v18 + 44);
      if (v19 == 3)
      {
        if ((*(a1 + 268) & 1) == 0)
        {
          goto LABEL_11;
        }

LABEL_10:
        *(v14 + (v15 >> 5)) |= 1 << v15;
        goto LABEL_11;
      }

      if (v19 == 2)
      {
        v20 = *(v18 + 40);
        v21 = *(v16 + 4 * (v20 >> 5));
      }

      else
      {
        if (v19)
        {
          goto LABEL_11;
        }

        v20 = *(v18 + 40);
        v21 = *(v17 + 4 * (v20 >> 5));
      }

      if ((v21 >> (v20 & 0x1F)))
      {
        goto LABEL_10;
      }

LABEL_11:
      ++v15;
    }

    while (a3 > v15);
  }

  if (v13 > 21)
  {
    v87 = "cNumMeas<=BIG_MATR_MAX_ROW_DIM";
    DeviceFaultNotify("glpe_dnav.cpp", 243, "Core", "cNumMeas<=BIG_MATR_MAX_ROW_DIM");
    v88 = "glpe_dnav.cpp";
    v89 = 243;
    goto LABEL_81;
  }

  if (v13 != BlueFin::GlSetBase::Cnt((a1 + 384)))
  {
    v87 = "cNumMeas==m_otMeasSet.Cnt()";
    DeviceFaultNotify("glpe_dnav.cpp", 244, "Core", "cNumMeas==m_otMeasSet.Cnt()");
    v88 = "glpe_dnav.cpp";
    v89 = 244;
    goto LABEL_81;
  }

  if (BlueFin::GlSetBase::Highest((a1 + 384)) >= a3)
  {
    v87 = "m_otMeasSet.Highest() < lDNMeasMaxNum";
    DeviceFaultNotify("glpe_dnav.cpp", 245, "Core", "m_otMeasSet.Highest() < lDNMeasMaxNum");
    v88 = "glpe_dnav.cpp";
    v89 = 245;
    goto LABEL_81;
  }

  v22 = BlueFin::GlSetBase::Cnt(this);
  v23 = v22;
  v92 = v22;
  v24 = BlueFin::GlSetBase::Cnt(a5);
  if (v23 <= 2 && v24 <= 2 && (v92 != 2 || v24 != 2))
  {
    v87 = "cNumFpr>DN_MIN_FPR || cNumRr>DN_MIN_RR || (cNumFpr==DN_MIN_FPR&&cNumRr==DN_MIN_RR)";
    DeviceFaultNotify("glpe_dnav.cpp", 252, "Core", "cNumFpr>DN_MIN_FPR || cNumRr>DN_MIN_RR || (cNumFpr==DN_MIN_FPR&&cNumRr==DN_MIN_RR)");
    v88 = "glpe_dnav.cpp";
    v89 = 252;
LABEL_81:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v88, v89, v87);
  }

  if (v92 == 1 || (v91 = v24 - 1, v24 == 1))
  {
    v87 = "cNumFpr!=1 && cNumRr!=1";
    DeviceFaultNotify("glpe_dnav.cpp", 253, "Core", "cNumFpr!=1 && cNumRr!=1");
    v88 = "glpe_dnav.cpp";
    v89 = 253;
    goto LABEL_81;
  }

  v90 = this;
  v25 = v24;
  if (v24 <= 1)
  {
    v26 = 4;
  }

  else
  {
    v26 = 7;
  }

  *(a1 + 264) = v26;
  v27 = &v143 + 8;
  v143 = xmmword_298A43640;
  v141 = &v144;
  v142 = &v145;
  v145 = 0;
  for (i = 1; i != 15; ++i)
  {
    v142[i] = v27;
    v27 += 56;
  }

  v29 = 0;
  v137 = v139;
  v138 = 0xE00000000;
  memset(v139, 0, sizeof(v139));
  v140 = 0;
  v133 = v135;
  *v134 = 0xE00000000;
  memset(v135, 0, sizeof(v135));
  v136 = 0;
  v129 = v131;
  v130 = 0xE00000000;
  memset(v131, 0, sizeof(v131));
  v132 = 0;
  v30 = a1 + 304;
  v31 = *(a1 + 28);
  v119 = a1 + 304;
  v120 = a1;
  v121 = 0;
  v122 = v31;
  v123 = 0x4C000000001;
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  v128 = 0x4008000000000000;
  v115[0] = &v133;
  v115[1] = &v129;
  v115[2] = &v141;
  v115[3] = &v137;
  v32 = (a1 + 280);
  v116 = 0u;
  v117 = 0u;
  v118 = 0;
  do
  {
    v113 = 0uLL;
    v114 = 0;
    v113 = *v120;
    v114 = *(v120 + 16);
    v33 = (*(**(a1 + 424) + 48))(*(a1 + 424));
    (*(*v33 + 104))(v33, &v113);
    if ((*(**(a1 + 424) + 16))(*(a1 + 424), &v119, v115, a2, a1 + 384))
    {
      goto LABEL_77;
    }

    if (v25 <= 1)
    {
      BlueFin::BigMatrix::ReShape(&v141, v13, *(a1 + 264));
    }

    v34 = v134[0];
    if (v92 <= 3 && v134[0] <= 11)
    {
      BlueFin::SKFVector::AddLen(&v133);
      *(v133 + v134[0]) = 0;
      BlueFin::SKFVector::AddLen(&v129);
      *&v129[8 * v130] = 0;
      BlueFin::SKFVector::AddLen(&v137);
      *&v137[8 * v138] = 0x42A78A9F83E7E45ALL;
      BlueFin::BigMatrix::AddRow(&v141);
      *(v142[v143] + 32) = 0x3FF0000000000000;
      *(a1 + 268) |= 4u;
      v34 = v134[0];
    }

    if (v91 <= 4 && v34 <= 11)
    {
      BlueFin::SKFVector::AddLen(&v133);
      *(v133 + v134[0]) = *(a1 + 416) * 0.299792458;
      BlueFin::SKFVector::AddLen(&v129);
      *&v129[8 * v130] = *(*(a1 + 304) + 56);
      BlueFin::SKFVector::AddLen(&v137);
      *&v137[8 * v138] = *(a1 + 420) * 0.0898755179;
      v35 = SDWORD1(v143);
      BlueFin::BigMatrix::AddRow(&v141);
      *(v142[v143] + 8 * v35) = 0x3FF0000000000000;
      *(a1 + 268) |= 8u;
    }

    if (v25 >= 2 && (*(a1 + 268) & 2) != 0 && v134[0] <= 10)
    {
      BlueFin::SKFVector::AddLen(&v133);
      *(v133 + v134[0]) = 0;
      BlueFin::SKFVector::AddLen(&v133);
      *(v133 + v134[0]) = 0;
      BlueFin::SKFVector::AddLen(&v129);
      *&v129[8 * v130] = 0;
      BlueFin::SKFVector::AddLen(&v129);
      *&v129[8 * v130] = 0;
      BlueFin::SKFVector::AddLen(&v137);
      *&v137[8 * v138] = 0x3FF0000000000000;
      BlueFin::SKFVector::AddLen(&v137);
      *&v137[8 * v138] = 0x3FF0000000000000;
      BlueFin::BigMatrix::AddRow(&v141);
      *(v142[v143] + 40) = 0x3FF0000000000000;
      BlueFin::BigMatrix::AddRow(&v141);
      *(v142[v143] + 48) = 0x3FF0000000000000;
    }

    v36 = v143;
    v37 = DWORD1(v143);
    if (v143 < SDWORD1(v143))
    {
      v87 = "otH.GetRowSize() >= otH.GetColSize()";
      DeviceFaultNotify("glpe_dnav.cpp", 333, "Core", "otH.GetRowSize() >= otH.GetColSize()");
      v88 = "glpe_dnav.cpp";
      v89 = 333;
      goto LABEL_81;
    }

    v38 = v138;
    v108 = v111;
    v109 = v138;
    v110 = 14;
    if (v138 >= 15)
    {
      v87 = "LEN >= len";
      DeviceFaultNotify("glpe_matrix.h", 497, "SKFVectorDim", "LEN >= len");
      v88 = "glpe_matrix.h";
      v89 = 497;
      goto LABEL_81;
    }

    v112 = 0;
    memset(v111, 0, sizeof(v111));
    v108 = v111;
    if (v138 >= 1)
    {
      v39 = (v137 + 8);
      v40 = &v111[8];
      do
      {
        v41 = *v39++;
        *v40++ = 1.0 / v41;
        --v38;
      }

      while (v38);
    }

    v105 = 0xC00000007;
    *&v103.f64[0] = &v106;
    *&v103.f64[1] = &v107;
    v42 = 8;
    v43 = &v105;
    v107 = 0;
    do
    {
      *(*&v103.f64[1] + v42) = v43;
      v43 += 12;
      v42 += 8;
    }

    while (v42 != 64);
    v104 = __PAIR64__(v36, v37);
    if (v36 >= 1)
    {
      v44 = v108;
      v45 = v142;
      v46 = v36 + 1;
      v47 = *&v103.f64[1] + 8;
      v48 = 1;
      do
      {
        if (v37 >= 1)
        {
          v49 = *&v44[8 * v48];
          v50 = (v45[v48] + 8);
          v51 = v47;
          v52 = (v37 + 1) - 1;
          do
          {
            v53 = *v50++;
            v54 = v49 * v53;
            v55 = *v51++;
            *(v55 + 8 * v48) = v54;
            --v52;
          }

          while (v52);
        }

        ++v48;
      }

      while (v48 != v46);
    }

    v56 = 0;
    v57 = v134[0];
    v100 = xmmword_298A43650;
    v98 = &v101;
    v99 = &v102;
    v102 = 0;
    do
    {
      v99[v56 + 1] = &v100 + v56 * 8 + 8;
      ++v56;
    }

    while (v56 != 12);
    BlueFin::BigMatrix::Clone(&v98, v57, 1);
    v58 = v134[0];
    if (v134[0] >= 1)
    {
      v59 = v99 + 1;
      v60 = (v129 + 8);
      v61 = v133 + 1;
      do
      {
        v62 = *v61++;
        v63 = v62;
        v64 = *v60++;
        v65 = v63 - v64;
        v66 = *v59++;
        *(v66 + 8) = v65;
        --v58;
      }

      while (v58);
    }

    v95 = xmmword_298A43660;
    v93 = &v96;
    v94 = &v97;
    v67 = 1;
    v68 = &v95 + 8;
    v97 = 0;
    do
    {
      v94[v67] = v68;
      v68 += 56;
      ++v67;
    }

    while (v67 != 8);
    BlueFin::BigMatrix::mult(&v93, &v103, &v98);
    v69 = v95;
    if (v95 >= 1)
    {
      v70 = v94 + 1;
      v71 = v146;
      do
      {
        v72 = *v70++;
        *v71++ = *(v72 + 8);
        --v69;
      }

      while (v69);
    }

    BlueFin::BigMatrix::mult_sym(&v93, &v103, &v141);
    if (!BlueFin::BigMatrix::cholsl(&v93, v146, v147.f64, 0, 0))
    {
      goto LABEL_77;
    }

    v73 = v148;
    *v32 = vaddq_f64(v147, *v32);
    *(a1 + 296) = v73 + *(a1 + 296);
    BlueFin::ecef2lla(v32->f64, a1);
    if (fabs(*(a1 + 16)) > 6367426.73)
    {
      goto LABEL_77;
    }

    v74 = *v30;
    *(*v30 + 32) = v149 + *(*v30 + 32);
    if (v25 >= 2)
    {
      v75 = *(v74 + 48);
      *(v74 + 40) = v150 + *(v74 + 40);
      *(v74 + 48) = v151 + v75;
      *(v74 + 56) = v152 + *(v74 + 56);
    }

    v76 = v147.f64[1] * v147.f64[1] + v147.f64[0] * v147.f64[0] + v148 * v148;
    if (v29 > 8)
    {
      break;
    }

    ++v29;
  }

  while (v76 >= a6);
  if (v76 >= a6)
  {
LABEL_77:
    result = 0;
  }

  else
  {
    *(a1 + 32) = *(v74 + 32);
    *(a1 + 40) = *(v74 + 40);
    *(a1 + 48) = *(v74 + 48);
    *(a1 + 56) = *(v74 + 56);
    *(a1 + 268) |= 0x10u;
    BlueFin::GlSetBase::operator=(a1 + 72, v90);
    *(a1 + 84) = *(v90 + 12);
    v77 = *(v90 + 28);
    v78 = *(v90 + 44);
    v79 = *(v90 + 60);
    *(a1 + 144) = *(v90 + 72);
    *(a1 + 132) = v79;
    *(a1 + 116) = v78;
    *(a1 + 100) = v77;
    BlueFin::GlSetBase::operator=(a1 + 160, a5);
    *(a1 + 172) = *(a5 + 12);
    v80 = *(a5 + 28);
    v81 = *(a5 + 44);
    v82 = *(a5 + 60);
    *(a1 + 232) = *(a5 + 72);
    *(a1 + 220) = v82;
    *(a1 + 204) = v81;
    *(a1 + 188) = v80;
    v83 = *(a1 + 16);
    v84 = 0x4103880000000000;
    if (v83 > 160000.0 || (v84 = 0xC08F400000000000, v83 < -1000.0))
    {
      *(a1 + 16) = v84;
      BlueFin::lla2ecef(a1, &v103);
      *v32 = v103;
      *(a1 + 296) = v104;
    }

    result = 1;
  }

  v86 = *MEMORY[0x29EDCA608];
  return result;
}