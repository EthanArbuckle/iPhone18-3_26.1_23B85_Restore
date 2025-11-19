void sub_29881FF28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void FireCallback::GlEngCbOnLTOFileRead(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (FireCallback::pInstance)
  {
    v11 = *(FireCallback::pInstance + 632);
    if (v11)
    {
      v15 = a1;
      v14 = a2;
      v13 = a3;
      (*(*v11 + 48))(v11, &v15, &v14, &v13);
      return;
    }

    v12 = "fcb,fEngCbOnLTOFileReadCb,nullptr";
  }

  else
  {
    v12 = "fcb,GlEngCbOnLTOFileRead,nullptr";
  }

  FireDeviceLog::DeviceLogBase(2, v12, a3, a4, a5, a6, a7, a8, a9);
}

BlueFin::GlDbgCodec *BlueFin::GlDbgProxyGlEngCbOnLTOFileRead(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*a1 + 656))(a1);

  return BlueFin::GlDbgProxy::HalGlEngCbOnLTOFileRead(v5, a2, a3);
}

uint64_t BlueFin::GlPeLtoMgr::deserializeLtoGnssSigType(BlueFin::GlPeLtoMgr *this, BlueFin::GlSysLogEntry *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v7 = &unk_2A1F10688;
  v8 = 7;
  memset(v9, 0, 62);
  result = BlueFin::GlPeLtoGnssSignalTypeInterface::Deserialize(&v7, a2);
  if (result)
  {
    AbbrevGnssName = BlueFin::GlGnss::GetAbbrevGnssName(v8);
    GlCustomLog(14, "LtoMgr: read LTO %s Signal Type Info from NVMEM!\n", AbbrevGnssName);
    v5 = v8;
    if (v8 == 4)
    {
      (*(**(this + 14) + 248))(*(this + 14), v9, 63);
    }

    else
    {
      if (v8)
      {
        result = 0;
        goto LABEL_8;
      }

      (*(**(this + 14) + 240))(*(this + 14), v9, 32);
    }

    BlueFin::GlPeLtoFileContentStorageMgr::UpdateLtoToStore(this + 1648, v5, v9);
    result = 1;
  }

LABEL_8:
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlPeLtoGnssSignalTypeInterface::Deserialize(BlueFin::GlPeLtoGnssSignalTypeInterface *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 130 || *(a2 + 12) != 1)
  {
    return 0;
  }

  U8 = BlueFin::GlSysLogEntry::GetU8(a2);
  v7 = BlueFin::GlImplGnss::m_aucImplGnssTable[U8];
  *(this + 2) = v7;
  if ((v7 | 4) != 4)
  {
    return 0;
  }

  if (U8 == 5)
  {
    v8 = 63;
  }

  else
  {
    v8 = 0;
  }

  if (U8)
  {
    v9 = v8;
  }

  else
  {
    v9 = 32;
  }

  if (v9)
  {
    v10 = this + 12;
    do
    {
      *v10++ = BlueFin::GlSysLogEntry::GetU8(a2);
      --v9;
    }

    while (v9);
  }

  return 1;
}

uint64_t BlueFin::GlPeLtoMgr::DeserializeLto(BlueFin::GlPeLtoMgr *this, BlueFin::GlSysLogEntry *a2)
{
  v2 = *(a2 + 2);
  if (v2 > 124)
  {
    if (v2 > 127)
    {
      switch(v2)
      {
        case 128:
          return BlueFin::GlPeLtoMgr::deserializeLtoGnssAltNav(this, a2);
        case 129:
          return BlueFin::GlPeLtoMgr::deserializeLtoGpsQzsL1CaIscAltNav(this, a2);
        case 130:
          return BlueFin::GlPeLtoMgr::deserializeLtoGnssSigType(this, a2);
      }

      return 0;
    }

    if (v2 == 125)
    {
      return BlueFin::GlPeLtoMgr::deserializeLtoGnssGpsTimeoffs(this, a2);
    }

    else if (v2 == 126)
    {
      return BlueFin::GlPeLtoMgr::deserializeLtoGnssL5Health(this, a2);
    }

    else
    {
      return BlueFin::GlPeLtoMgr::deserializeLtoGnssL5HealthInfo(this, a2);
    }
  }

  else
  {
    if (v2 <= 121)
    {
      switch(v2)
      {
        case 'w':
          return BlueFin::GlPeLtoMgr::deserializeLtoSlice(this, a2);
        case 'x':
          return BlueFin::GlPeLtoFileContentStorageMgr::DeserializeLtoInfo((this + 1648), a2);
        case 'y':
          return BlueFin::GlPeLtoMgr::deserializeLtoAlm(this, a2);
      }

      return 0;
    }

    if (v2 == 122)
    {
      return BlueFin::GlPeLtoMgr::deserializeLtoUtc(this, a2);
    }

    else if (v2 == 123)
    {
      return BlueFin::GlPeLtoMgr::deserializeLtoSysTime(this, a2);
    }

    else
    {
      return BlueFin::GlPeLtoMgr::deserializeLtoIono(this, a2);
    }
  }
}

uint64_t BlueFin::GlPeLtoMgr::deserializeLtoGnssAltNav(BlueFin::GlPeLtoMgr *this, BlueFin::GlSysLogEntry *a2)
{
  v11 = &unk_2A1F105F8;
  v12 = 7;
  v13[0] = -1;
  v14 = -1;
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v15 = 0;
  v18[0] = -1;
  v19 = 0;
  v20 = 0;
  v21[0] = -1;
  v22 = -1;
  v24 = 0;
  v23 = 0;
  v25 = 0;
  v4 = BlueFin::GlPeLtoGnssAltNavInterface::Deserialize(&v11, a2);
  result = 0;
  if (v4)
  {
    result = 0;
    if (v12 > 3)
    {
      if (v12 == 4)
      {
        v6 = v18;
        BlueFin::GlPeLtoMgr::UpdateBdsClkErrTgd(this, v18, 0, 1);
      }

      else
      {
        if (v12 != 5)
        {
          return result;
        }

        v6 = v21;
        BlueFin::GlPeLtoMgr::UpdateNonL1ClkErrTgd(this, v3, v21, 0, 1);
      }
    }

    else
    {
      v6 = v13;
      if (v12)
      {
        if (v12 != 3)
        {
          return result;
        }

        if (v14 == 1)
        {
          v7 = v13;
        }

        else
        {
          v7 = 0;
        }

        BlueFin::GlPeLtoMgr::UpdateQzsNonL1ClkErrTgd(this, v3, v7, 0, 1);
      }

      else
      {
        if (v14 == 1)
        {
          v8 = v13;
        }

        else
        {
          v8 = 0;
        }

        BlueFin::GlPeLtoMgr::UpdateNonL1ClkErrTgd(this, v3, v8, 0, 1);
      }
    }

    v9 = *v6 + 1;
    AbbrevGnssName = BlueFin::GlGnss::GetAbbrevGnssName(v12);
    GlCustomLog(14, "LtoMgr: read LTO (%s %d) AltNav Info from NVMEM!\n", AbbrevGnssName, v9);
    return 1;
  }

  return result;
}

uint64_t BlueFin::GlPeBdsEphMgr::SetLtoAltNavData(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (v2 > 0x3E)
  {
    return 0;
  }

  v5 = *(a2 + 1);
  v6 = a1 + 20 * *a2;
  if (v5 == 2)
  {
    v7 = 17436;
  }

  else
  {
    v7 = 16176;
  }

  v8 = v6 + v7;
  result = BlueFin::GlPeBdsAltNavData::IsBetterThan(a2, (v6 + v7));
  if (result)
  {
    if (v8 != a2)
    {
      *v8 = v2;
      *(v8 + 4) = v5;
      *(v8 + 8) = *(a2 + 1);
    }

    *(v8 + 16) = a2[16];
    return 1;
  }

  return result;
}

uint64_t BlueFin::GlPeLtoMgr::UpdateBdsClkErrTgd(uint64_t result, unsigned __int8 *a2, char a3, int a4)
{
  v51 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v6 = a2;
    v7 = result;
    v8 = 0;
    v35 = result + 1648;
    v36 = off_2A1F10790;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v37 = vnegq_f64(v9);
    while (1)
    {
      v10 = *v6;
      if (v10 != 255 && *(v6 + 1) && v10 <= 0x3E)
      {
        break;
      }

LABEL_31:
      if (v8 <= 0x3D)
      {
        ++v8;
        v6 += 16;
        if (!a4)
        {
          continue;
        }
      }

      goto LABEL_33;
    }

    v45 = &unk_2A1F10778;
    v46 = 6;
    v49 = 0;
    *&v48[15] = 0;
    v50 = 0;
    *v48 = *v6;
    v47 = a3;
    if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      (v36)(&v45, 0, 0);
    }

    if ((a3 & 1) == 0)
    {
      v11 = *v6;
      if (v11 <= 0x3E)
      {
        v12 = *(v6 + 1);
        if (v12 == 1)
        {
          v13 = 22;
          v14 = 21676;
LABEL_15:
          v15 = v35 + v14 + 16 * v11;
          *(v7 + 26464) |= 1 << v13;
          if (v6 != v15)
          {
            *v15 = v11;
            *(v15 + 4) = v12;
            *(v15 + 8) = *(v6 + 1);
          }

          goto LABEL_17;
        }

        if (v12 == 2)
        {
          v13 = 23;
          v14 = 22684;
          goto LABEL_15;
        }
      }
    }

LABEL_17:
    v16 = *(v7 + 88);
    if (!*(v16 + 644))
    {
      goto LABEL_28;
    }

    BlueFin::GlPeTimeManager::GetTime(v16, 1, &v38);
    v40 = &off_2A1F0E4D0;
    v41 = 0;
    BlueFin::GlPeGnssTime::GetBds(&v38, &v40);
    v17 = *(v6 + 7);
    v18 = 300 * *(v6 + 4);
    *v19.i64 = v18;
    v38.n128_u64[0] = &off_2A1F0E4D0;
    *v20.i64 = v18 - trunc(v18);
    v21 = *vbslq_s8(v37, v20, v19).i64;
    if (v21 >= 1.0)
    {
      DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
    }

    v22 = v21 * 4294967300.0 + 0.5;
    v23 = v22;
    if (v22 >= 4294967300.0)
    {
      v23 = -1;
    }

    v24 = v18 + 604800 * v17;
    v38.n128_u32[2] = v23;
    v38.n128_u32[3] = v24 + 820108814;
    v38.n128_u64[0] = &off_2A1F0E4D0;
    v43 = v23;
    v44 = v24;
    v25 = (v40[4])(&v40);
    v42[0] = v41;
    v42[1] = v25;
    BlueFin::GlTimePoint::resolveAmbiguity(&v43, v42, 0x27500000u);
    result = (v40[3])(&v40, v44);
    v26 = v41;
    v27 = HIDWORD(v41);
    v28 = result | v43;
    if (result | v43)
    {
      if (v41 < __PAIR64__(result, v43))
      {
        v27 = (__PAIR64__(result - HIDWORD(v41), v43) - v41) >> 32;
        v26 = v43 - v41;
        v28 = 1;
      }

      else
      {
        v28 = 0;
        v27 = (v41 - __PAIR64__(result, v43)) >> 32;
        v26 = v41 - v43;
      }
    }

    v29 = v26 * 2.32830644e-10 + v27;
    if ((v28 & ((v27 | v26) != 0)) != 0)
    {
      v29 = -v29;
    }

    if (v29 <= 604800.0)
    {
LABEL_28:
      v30 = (v10 + 76);
      v38.n128_u8[0] = *v6;
      v38.n128_u32[1] = *(v6 + 1);
      v38.n128_u64[1] = *(v6 + 1);
      v39 = a3;
      BlueFin::GlPeBdsEphMgr::SetLtoAltNavData(*(*(v7 + 80) + 7384), &v38);
      v33 = "BDS_B1C";
      if (*(v6 + 1) == 1)
      {
        v33 = "BDS_B2A";
      }

      v32 = *(v6 + 5) * 5.82076609e-11 * 299792458.0;
      v31 = *(v6 + 6) * 5.82076609e-11 * 299792458.0;
      result = GlCustomLog(14, "Update %s: SVID:%d (TGD: %e(m) ISC: %e(m)) \n", v33, v30, v32, v31);
    }

    goto LABEL_31;
  }

LABEL_33:
  v34 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlPeLtoGpsQzsL1CaIscAltNavInterface::Deserialize(BlueFin::GlPeLtoGpsQzsL1CaIscAltNavInterface *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 129 || *(a2 + 12) != 1)
  {
    return 0;
  }

  v6 = BlueFin::GlImplGnss::m_aucImplGnssTable[BlueFin::GlSysLogEntry::GetU8(a2)];
  *(this + 2) = v6;
  if (v6 != 3 && v6 != 0)
  {
    return 0;
  }

  *(this + 12) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(this + 7) = BlueFin::GlSysLogEntry::GetS16(a2);
  return 1;
}

uint64_t BlueFin::GlPeLtoMgr::UpdateQzsNonL1ClkErrTgd(uint64_t result, uint64_t a2, unsigned __int8 *a3, char a4, int a5)
{
  v41 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v7 = a3;
    v8 = result;
    v9 = 0;
    v27 = off_2A1F10790;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v28 = vnegq_f64(v10);
    do
    {
      if (*v7 <= 9u && *(v7 + 1) == 1)
      {
        v36 = &unk_2A1F10778;
        v37 = 3;
        v11 = *(v7 + 1);
        v39 = *v7;
        v40 = v11;
        v38 = a4;
        if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
        {
          v27(&v36);
        }

        if ((a4 & 1) == 0)
        {
          BlueFin::GlPeLtoFileContentStorageMgr::UpdateLtoToStore(v8 + 1648, 3, v7);
        }

        result = *(v8 + 88);
        if (!*(result + 2576))
        {
          goto LABEL_21;
        }

        BlueFin::GlPeTimeManager::GetTime(result, 1, &v29);
        v32 = &off_2A1F0B5F0;
        v33 = 0;
        BlueFin::GlPeGnssTime::GetGps(&v29, &v32);
        v12 = *(v7 + 15);
        v13 = 300 * *(v7 + 10);
        *v14.i64 = v13;
        v29.n128_u64[0] = &off_2A1F0B5F0;
        *v15.i64 = v13 - trunc(v13);
        v16 = *vbslq_s8(v28, v15, v14).i64;
        if (v16 >= 1.0)
        {
          DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
        }

        v17 = v16 * 4294967300.0 + 0.5;
        v18 = v17;
        if (v17 >= 4294967300.0)
        {
          v18 = -1;
        }

        v29.n128_u32[2] = v18;
        v29.n128_u32[3] = v13 + 604800 * v12;
        v29.n128_u64[0] = &off_2A1F0B5F0;
        v35 = __PAIR64__(v29.n128_u32[3], v18);
        v19 = (v32[4])(&v32);
        v34[0] = v33;
        v34[1] = v19;
        BlueFin::GlTimePoint::resolveAmbiguity(&v35, v34, 0x24EA0000u);
        result = (v32[3])(&v32, HIDWORD(v35));
        v20 = v33;
        v21 = HIDWORD(v33);
        v22 = result | v35;
        if (result | v35)
        {
          if (v33 < __PAIR64__(result, v35))
          {
            v21 = (__PAIR64__(result - HIDWORD(v33), v35) - v33) >> 32;
            v20 = v35 - v33;
            v22 = 1;
          }

          else
          {
            v22 = 0;
            v21 = (v33 - __PAIR64__(result, v35)) >> 32;
            v20 = v33 - v35;
          }
        }

        v23 = v20 * 2.32830644e-10 + v21;
        if ((v22 & ((v21 | v20) != 0)) != 0)
        {
          v23 = -v23;
        }

        if (v23 <= 604800.0)
        {
LABEL_21:
          v24 = *(v7 + 1);
          v29 = *v7;
          v30 = v24;
          LOBYTE(v31) = a4;
          HIBYTE(v31) = 1;
          if (v29.n128_u8[0] <= 9uLL)
          {
            v25 = *(*(v8 + 80) + 7376) + 36 * v29.n128_u8[0] + 2072;
            result = BlueFin::GlPeGpsQzssAltNavData::IsBetterThan(&v29, v25);
            if (result)
            {
              *v25 = v29;
              *(v25 + 16) = v30;
              *(v25 + 32) = v31;
            }
          }
        }
      }

      if (v9 > 8)
      {
        break;
      }

      ++v9;
      v7 += 32;
    }

    while (!a5);
  }

  v26 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlPeLtoMgr::deserializeLtoGnssL5HealthInfo(BlueFin::GlPeLtoMgr *this, BlueFin::GlSysLogEntry *a2)
{
  v2 = *(a2 + 2) == 127 && *(a2 + 12) == 1;
  v3 = v2;
  if (v2)
  {
    U32 = BlueFin::GlSysLogEntry::GetU32(a2);
    GlCustomLog(14, "LtoMgr: read LTO L5Health Info from NVMEM!\n", &unk_2A1F105B0);
    v5 = U32;
    if (!U32)
    {
      for (i = 0; i != 28; i += 4)
      {
        if (v5 <= *(this + i + 988))
        {
          v5 = *(this + i + 988);
        }
      }
    }

    v7 = *(this + 15);
    if ((v7 + 2272) != (this + 1600))
    {
      *(v7 + 2272) = *(this + 100);
    }

    *(this + 5452) = v5;
    *(v7 + 2288) = v5;
    *(this + 6616) |= 0x8000u;
  }

  return v3;
}

uint64_t BlueFin::GlPeTimeManager::GetTime@<X0>(BlueFin::GlPeTimeManager *this@<X0>, const BlueFin::GlGalTime *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v10 = 0.0;
  v9 = *(a2 + 1);
  BlueFin::GlPeTimeManager::dateTimeToLms(this, 3, &v9, &v10);
  v7 = v10;

  return BlueFin::GlPeTimeManager::commonGnssToLms(this, v7, a3, a4);
}

uint64_t BlueFin::GlPeLtoMgr::deserializeLtoGnssL5Health(BlueFin::GlPeLtoMgr *this, BlueFin::GlSysLogEntry *a2)
{
  v6 = &unk_2A1F10568;
  v7 = 7;
  v8[0] = -1;
  v9 = 0xFFFFFFFFLL;
  v3 = BlueFin::GlPeLtoGnssL5HealthDataInterface::Deserialize(&v6, a2);
  if (v3)
  {
    AbbrevGnssName = BlueFin::GlGnss::GetAbbrevGnssName(v7);
    GlCustomLog(14, "LtoMgr: read LTO (%s %d) L5Health from NVMEM!\n", AbbrevGnssName, v8[0] + 1);
    BlueFin::GlPeLtoMgr::UpdateGnssL5Health(this, v7, v8, 1, 1);
  }

  return v3;
}

uint64_t BlueFin::GlPeLtoGnssL5HealthDataInterface::Deserialize(BlueFin::GlPeLtoGnssL5HealthDataInterface *this, BlueFin::GlSysLogEntry *a2)
{
  v2 = *(a2 + 2) == 126 && *(a2 + 12) == 1;
  v3 = v2;
  if (v2)
  {
    *(this + 2) = BlueFin::GlImplGnss::m_aucImplGnssTable[BlueFin::GlSysLogEntry::GetU8(a2)];
    *(this + 12) = BlueFin::GlSysLogEntry::GetU8(a2);
    *(this + 4) = BlueFin::GlSysLogEntry::GetS8(a2);
    *(this + 10) = BlueFin::GlSysLogEntry::GetU16(a2);
    *(this + 11) = BlueFin::GlSysLogEntry::GetU16(a2);
  }

  return v3;
}

uint64_t BlueFin::GlPeTimeManager::SetUncmprsdSystemOffset(_DWORD *a1, unsigned int *a2)
{
  v2 = a2[1];
  if (*a2 == -1 || v2 == -1)
  {
    return 0;
  }

  v6 = &a1[5 * v2 + 1171];
  if (v6 != a2)
  {
    *v6 = *a2;
    a1[5 * v2 + 1172] = v2;
    LOWORD(a1[5 * v2 + 1173]) = *(a2 + 4);
    *&a1[5 * v2 + 1174] = *(a2 + 3);
  }

  if (!a1[644])
  {
    result = 0;
    *(a1 + a2[1] + 3100) = 1;
    return result;
  }

  v7 = "<->";
  v8 = *a2;
  if (v8 >= 4)
  {
    if (v8 == 5)
    {
      v11 = "NIC";
    }

    else
    {
      v11 = "<->";
    }

    if (v8 == 4)
    {
      v9 = "BDS";
    }

    else
    {
      v9 = v11;
    }
  }

  else
  {
    v9 = off_29EEB4488[v8];
  }

  v12 = a2[1];
  if (v12 >= 4)
  {
    if (v12 == 5)
    {
      v7 = "NIC";
    }

    if (v12 == 4)
    {
      v7 = "BDS";
    }
  }

  else
  {
    v7 = off_29EEB4488[v12];
  }

  GlCustomLog(14, "GlPeTimeManager::SetUncmprsdSystemOffset(%u): Received UncmprsdSystemOffset:  From:%s  To:%s  GpsToa: [%d %u]  A0(ns):%.2lf\n", a1[642], v9, v7, *(a2 + 4), a2[3], a2[4] * 0.01);
  BlueFin::GlPeTimeManager::GetTime(a1, 1, v67);
  v68 = &off_2A1F0B5F0;
  v69 = 0;
  BlueFin::GlPeGnssTime::GetGps(v67, &v68);
  v13 = a2[3];
  *v14.i64 = v13;
  v15 = *(a2 + 4);
  v64 = &off_2A1F0B5F0;
  *v16.i64 = v13 - trunc(v13);
  v17.f64[0] = NAN;
  v17.f64[1] = NAN;
  v18 = *vbslq_s8(vnegq_f64(v17), v16, v14).i64;
  if (v18 >= 1.0)
  {
    DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
  }

  v19 = v18 * 4294967300.0 + 0.5;
  v20 = v19;
  if (v19 >= 4294967300.0)
  {
    v20 = -1;
  }

  v65 = v20;
  v66 = v13 + 604800 * v15;
  v64 = &off_2A1F0B5F0;
  v67[0].n128_u64[0] = __PAIR64__(v66, v20);
  v21 = (v68[4])(&v68);
  v54 = __PAIR64__(v21, v69);
  BlueFin::GlTimePoint::resolveAmbiguity(v67, &v54, 0x24EA0000u);
  v22 = (v68[3])(&v68, v67[0].n128_u32[1]);
  v65 = v67[0].n128_u32[0];
  v66 = v22;
  v23 = v69;
  v24 = HIDWORD(v69);
  v25 = v22 | v67[0].n128_u8[0];
  if (__PAIR64__(v67[0].n128_u32[0], v22))
  {
    if (v69 < __PAIR64__(v22, v67[0].n128_u32[0]))
    {
      v24 = (__PAIR64__(v22 - HIDWORD(v69), v67[0].n128_u32[0]) - v69) >> 32;
      v23 = v67[0].n128_u32[0] - v69;
      v25 = 1;
    }

    else
    {
      v25 = 0;
      v24 = (v69 - __PAIR64__(v22, v67[0].n128_u32[0])) >> 32;
      v23 = v69 - v67[0].n128_u32[0];
    }
  }

  v26 = v23 * 2.32830644e-10 + v24;
  if ((v25 & ((v24 | v23) != 0)) != 0)
  {
    v26 = -v26;
  }

  if (v26 > 1512000.0)
  {
    v27 = a1[642];
    GlCustomLog(13, "GlPeTimeManager::SetUncmprsdSystemOffset(%u): data too old:  AgeWk:%.0lf  ThreshWk:%.1lf\n");
    return 0;
  }

  v28 = *a2;
  if (v28 >= 6 || ((0x3Bu >> v28) & 1) == 0)
  {
    v40 = a1[642];
    GlCustomLog(13, "GlPeTimeManager::SetUncmprsdSystemOffset(%u): From Time system is not supported by the build\n");
    return 0;
  }

  v29 = a2[1];
  if (v29 >= 6 || ((0x3Bu >> v29) & 1) == 0)
  {
    v41 = a1[642];
    GlCustomLog(13, "GlPeTimeManager::SetUncmprsdSystemOffset(%u): To Time system is not supported by the build\n");
    return 0;
  }

  v30 = qword_298A45EC0[v28];
  v31 = qword_298A45EC0[v29];
  v32 = a2[4];
  BlueFin::GlPeTimeManager::GetTime(a1, &v64, 1, v67);
  result = 0;
  v33 = *a2;
  if (*a2 > 2)
  {
    switch(v33)
    {
      case 3u:
        v54 = &off_2A1F0E480;
        v55 = 0;
        Gal = BlueFin::GlPeGnssTime::GetGal(v67, &v54);
        v35 = (v54[4])(&v54, Gal);
        break;
      case 4u:
        v54 = &off_2A1F0E4D0;
        v55 = 0;
        Bds = BlueFin::GlPeGnssTime::GetBds(v67, &v54);
        v36 = (v54[4])(&v54, Bds);
        break;
      case 5u:
        v54 = &off_2A1F0DFC8;
        v55 = 0;
        Nic = BlueFin::GlPeGnssTime::GetNic(v67, &v54);
        v35 = (v54[4])(&v54, Nic);
        break;
      default:
        return result;
    }
  }

  else if (v33)
  {
    if (v33 == 1)
    {
      v54 = &off_2A1F0E430;
      v55 = 0;
      Glns = BlueFin::GlPeGnssTime::GetGlns(v67, &v54);
      v35 = (v54[4])(&v54, Glns);
    }

    else
    {
      if (v33 != 2)
      {
        return result;
      }

      Utc = BlueFin::GlPeGnssTime::GetUtc(v67, &v54);
      v35 = (v54[4])(&v54, Utc);
    }
  }

  else
  {
    v54 = &off_2A1F0B5F0;
    v55 = 0;
    Gps = BlueFin::GlPeGnssTime::GetGps(v67, &v54);
    v35 = (v54[4])(&v54, Gps);
  }

  LODWORD(v37) = v55;
  *v36.i64 = v37 * 2.32830644e-10 + v35;
  *v39.i64 = *v36.i64 + trunc(*v36.i64 * 2.32830644e-10) * -4294967300.0;
  v47.f64[0] = NAN;
  v47.f64[1] = NAN;
  v48 = vnegq_f64(v47);
  v49 = vbslq_s8(v48, v39, v36);
  if (*v36.i64 > 4294967300.0)
  {
    v36.i64[0] = v49.i64[0];
  }

  if (*v36.i64 < -4294967300.0)
  {
    *v38.i64 = -*v36.i64;
    *v36.i64 = -(*v36.i64 - trunc(*v36.i64 * -2.32830644e-10) * -4294967300.0);
    v36 = vbslq_s8(v48, v36, v38);
    *v36.i64 = -*v36.i64;
  }

  if (*v36.i64 < 0.0)
  {
    v50 = --*v36.i64;
  }

  else
  {
    v50 = *v36.i64;
  }

  v56[0] = BlueFin::GlImplGnss::m_aucEnabledGnssTable[v30];
  v61 = BlueFin::GlImplGnss::m_aucEnabledGnssTable[v31];
  v62 = v50 / 0x93A80;
  v57 = (v50 % 0x93A80) >> 4;
  *v36.i64 = v32 * -1.0e-11 / 2.91038305e-11;
  *v49.i64 = *v36.i64 + trunc(*v36.i64 * 2.32830644e-10) * -4294967300.0;
  v51.f64[0] = NAN;
  v51.f64[1] = NAN;
  v52 = vnegq_f64(v51);
  v49.i64[0] = vbslq_s8(v52, v49, v36).u64[0];
  if (*v36.i64 > 4294967300.0)
  {
    v36.i64[0] = v49.i64[0];
  }

  if (*v36.i64 < -4294967300.0)
  {
    *v38.i64 = -*v36.i64;
    *v36.i64 = -(*v36.i64 - trunc(*v36.i64 * -2.32830644e-10) * -4294967300.0);
    *v36.i64 = -*vbslq_s8(v52, v36, v38).i64;
  }

  if (*v36.i64 < 0.0)
  {
    v53 = --*v36.i64;
  }

  else
  {
    v53 = *v36.i64;
  }

  v58 = v53;
  v59 = 0;
  v60 = 0;
  v63 = 0x80;
  return BlueFin::GlPeTimeManager::SetGnssTimeModel(a1, v56, 0.0005);
}

uint64_t BlueFin::GlPeLtoMgr::UpdateGnssGpsTimeOffsetsJavd(uint64_t a1, unsigned __int16 *a2, char a3)
{
  result = *(a1 + 88);
  if (*(result + 2576))
  {
    BlueFin::GlPeTimeManager::GetTime(result, 1, v23);
    v24 = &off_2A1F0B5F0;
    v25 = 0;
    BlueFin::GlPeGnssTime::GetGps(v23, &v24);
    v7 = *a2;
    v8 = *(a2 + 1);
    *v9.i64 = v8;
    v23[0].n128_u64[0] = &off_2A1F0B5F0;
    *v10.i64 = v8 - trunc(v8);
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v12 = *vbslq_s8(vnegq_f64(v11), v10, v9).i64;
    if (v12 >= 1.0)
    {
      DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
    }

    v13 = v12 * 4294967300.0 + 0.5;
    v14 = v13;
    if (v13 >= 4294967300.0)
    {
      v14 = -1;
    }

    v23[0].n128_u32[2] = v14;
    v23[0].n128_u32[3] = v8 + 604800 * v7;
    v23[0].n128_u64[0] = &off_2A1F0B5F0;
    v27 = __PAIR64__(v23[0].n128_u32[3], v14);
    v15 = (v24[4])(&v24);
    v26[0] = v25;
    v26[1] = v15;
    BlueFin::GlTimePoint::resolveAmbiguity(&v27, v26, 0x24EA0000u);
    result = (v24[3])(&v24, HIDWORD(v27));
    v16 = v25;
    v17 = HIDWORD(v25);
    v18 = result | v27;
    if (result | v27)
    {
      if (v25 < __PAIR64__(result, v27))
      {
        v17 = (__PAIR64__(result - HIDWORD(v25), v27) - v25) >> 32;
        v16 = v27 - v25;
        v18 = 1;
      }

      else
      {
        v18 = 0;
        v17 = (v25 - __PAIR64__(result, v27)) >> 32;
        v16 = v25 - v27;
      }
    }

    v19 = v16 * 2.32830644e-10 + v17;
    if ((v18 & ((v17 | v16) != 0)) != 0)
    {
      v19 = -v19;
    }

    if (v19 <= 1512000.0)
    {
      v20 = *(a2 + 2) / 100.0;
      v21 = *(a1 + 112);
      *(v21 + 920) = 1;
      *(v21 + 996) = v20;
    }
  }

  if ((a3 & 1) == 0)
  {
    v22 = *a2;
    *(a1 + 20100) = *(a2 + 2);
    *(a1 + 20092) = v22;
    *(a1 + 26464) |= 0x200u;
  }

  return result;
}

uint64_t BlueFin::GlPeLtoMgr::deserializeLtoGnssGpsTimeoffs(BlueFin::GlPeLtoMgr *this, BlueFin::GlSysLogEntry *a2)
{
  v14 = &unk_2A1F10520;
  v15 = 7;
  v16 = 0;
  v17 = 0;
  result = BlueFin::GlPeLtoGnssGpsTimeoffsDataInterface::Deserialize(&v14, a2);
  if (result)
  {
    switch(v15)
    {
      case 3u:
        *v18 = v16;
        *&v18[4] = v17;
        BlueFin::GlPeLtoMgr::UpdateGnssGpsTimeOffsetsJavd(this, v18, 0);
        goto LABEL_9;
      case 4u:
        v9 = v16;
        v10 = v17;
        v11 = HIDWORD(v17);
        v12 = *(this + 11);
        *v18 = 0x400000000;
        *&v18[8] = v16;
        v19 = v17;
        BlueFin::GlPeTimeManager::SetUncmprsdSystemOffset(v12, v18);
        *(this + 10052) = v9;
        *(this + 5027) = v10;
        *(this + 5028) = v11;
        v8 = *(this + 6616) | 0x400;
        goto LABEL_7;
      case 5u:
        v4 = v16;
        v5 = v17;
        v6 = HIDWORD(v17);
        v7 = *(this + 11);
        *v18 = 0x300000000;
        *&v18[8] = v16;
        v19 = v17;
        BlueFin::GlPeTimeManager::SetUncmprsdSystemOffset(v7, v18);
        *(this + 10040) = v4;
        *(this + 5021) = v5;
        *(this + 5022) = v6;
        v8 = *(this + 6616) | 0x100;
LABEL_7:
        *(this + 6616) = v8;
LABEL_9:
        AbbrevGnssName = BlueFin::GlGnss::GetAbbrevGnssName(v15);
        GlCustomLog(14, "LtoMgr: read LTO %s to GPS Timeoffsets from NVMEM!\n", AbbrevGnssName);
        return 1;
    }

    return 0;
  }

  return result;
}

uint64_t BlueFin::GlPeTimeManager::SetGnssTimeModel(BlueFin::GlPeTimeManager *this, unsigned __int8 *a2, float a3)
{
  v85[0] = &unk_2A1F18678;
  v88 = 4295000000.0;
  v87 = 0uLL;
  v85[1] = &off_2A1F0B5F0;
  v86 = 0;
  if (*(this + 644))
  {
    BlueFin::GlPeTimeManager::GetTime(this, 1, v84);
    v69 = &off_2A1F0B5F0;
    v70 = 0;
    BlueFin::GlPeGnssTime::GetGps(v84, &v69);
    v86 = v70;
  }

  v87 = *a2;
  v88 = a3;
  if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    (*(v85[0] + 24))(v85, 0, 0);
  }

  result = 0;
  v7 = *a2;
  if (v7 != 4 && v7 != 8)
  {
    v8 = a2[11];
    if (v8 != 4 && v8 != 8)
    {
      v9 = BlueFin::GlImplGnss::m_aucImplGnssTable[a2[11]];
      v10 = BlueFin::GlPeGnssTime::Gnss2TimeSystem(BlueFin::GlImplGnss::m_aucImplGnssTable[*a2]);
      v11 = BlueFin::GlPeGnssTime::Gnss2TimeSystem(v9);
      if (v11 == v10)
      {
        return 0;
      }

      v12 = v11;
      if (!*(this + 644))
      {
        result = 1;
        *(this + v12 + 3100) = 1;
        *(this + 16 * v12 + 3108) = *a2;
        return result;
      }

      v13 = *(a2 + 1);
      v14 = *(a2 + 4);
      v15 = a2[10];
      Time = BlueFin::GlPeTimeManager::GetTime(this, 1, v84);
      v17 = *(a2 + 6);
      v18 = 16 * *(a2 + 1);
      Time.n128_f64[0] = v18;
      __x = Time;
      if (v10 > 2)
      {
        if (v10 == 3)
        {
          v69 = &off_2A1F0E480;
          v70 = 0;
          BlueFin::GlPeGnssTime::GetGal(v84, &v69);
          v78 = &off_2A1F0E480;
          *v37.i64 = *__x.i64 - trunc(*__x.i64);
          v38.f64[0] = NAN;
          v38.f64[1] = NAN;
          v39 = *vbslq_s8(vnegq_f64(v38), v37, __x).i64;
          if (v39 >= 1.0)
          {
            DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
          }

          v40 = v39 * 4294967300.0 + 0.5;
          v41 = v40;
          if (v40 >= 4294967300.0)
          {
            v41 = -1;
          }

          v79 = v41;
          v80 = v18 + 604800 * v17 + 619315200;
          v78 = &off_2A1F0E480;
          v91 = v41;
          v92 = v18 + 604800 * v17;
          v42 = (v69[4])(&v69);
          v89 = v70;
          v90 = v42;
          BlueFin::GlTimePoint::resolveAmbiguity(&v91, &v89, 0x93A80000);
          v43 = (v69[3])(&v69, v92);
          v82 = v91;
          v83 = v43;
          v81 = &off_2A1F0E480;
          v21 = (v69[4])(&v69);
          v22 = (v81[4])(&v81);
        }

        else if (v10 == 4)
        {
          v69 = &off_2A1F0E4D0;
          v70 = 0;
          BlueFin::GlPeGnssTime::GetBds(v84, &v69);
          v78 = &off_2A1F0E4D0;
          *v23.i64 = *__x.i64 - trunc(*__x.i64);
          v24.f64[0] = NAN;
          v24.f64[1] = NAN;
          v25 = *vbslq_s8(vnegq_f64(v24), v23, __x).i64;
          if (v25 >= 1.0)
          {
            DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
          }

          v26 = v25 * 4294967300.0 + 0.5;
          v27 = v26;
          if (v26 >= 4294967300.0)
          {
            v27 = -1;
          }

          v79 = v27;
          v80 = v18 + 604800 * v17 + 820108814;
          v78 = &off_2A1F0E4D0;
          v91 = v27;
          v92 = v18 + 604800 * v17;
          v28 = (v69[4])(&v69);
          v89 = v70;
          v90 = v28;
          BlueFin::GlTimePoint::resolveAmbiguity(&v91, &v89, 0x27500000u);
          v29 = (v69[3])(&v69, v92);
          v82 = v91;
          v83 = v29;
          v81 = &off_2A1F0E4D0;
          v21 = (v69[4])(&v69);
          v22 = (v81[4])(&v81);
        }

        else
        {
          v69 = &off_2A1F0DFC8;
          v70 = 0;
          BlueFin::GlPeGnssTime::GetNic(v84, &v69);
          v78 = &off_2A1F0DFC8;
          *v49.i64 = *__x.i64 - trunc(*__x.i64);
          v50.f64[0] = NAN;
          v50.f64[1] = NAN;
          v51 = *vbslq_s8(vnegq_f64(v50), v49, __x).i64;
          if (v51 >= 1.0)
          {
            DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
          }

          v52 = v51 * 4294967300.0 + 0.5;
          v53 = v52;
          if (v52 >= 4294967300.0)
          {
            v53 = -1;
          }

          v79 = v53;
          v80 = v18 + 604800 * v17 + 619315200;
          v78 = &off_2A1F0DFC8;
          v91 = v53;
          v92 = v18 + 604800 * v17;
          v54 = (v69[4])(&v69);
          v89 = v70;
          v90 = v54;
          BlueFin::GlTimePoint::resolveAmbiguity(&v91, &v89, 0x24EA0000u);
          v55 = (v69[3])(&v69, v92);
          v82 = v91;
          v83 = v55;
          v81 = &off_2A1F0DFC8;
          v21 = (v69[4])(&v69);
          v22 = (v81[4])(&v81);
        }
      }

      else if (v10)
      {
        if (v10 != 1)
        {
          v69 = &unk_2A1F11310;
          v70 = 0;
          v44 = 432000 - BlueFin::GlWeekTowTime::m_ucCurrentLs;
          v71 = 1980;
          v72 = v44 / 0x15180 + 1;
          v73 = 1;
          v74 = v44 / 0x15180 + 1;
          v75 = v44 % 0x15180 / 0xE10;
          v76 = (2185 * (v44 - 3600 * ((1193047 * v44) >> 32))) >> 17;
          v77 = v44 - 60 * ((71582789 * v44) >> 32);
          Utc = BlueFin::GlPeGnssTime::GetUtc(v84, &v69);
          v46 = (v69[4])(&v69, Utc);
          LODWORD(v47) = v70;
          v48 = (v47 * 2.32830644e-10 + v46 - (*__x.i64 + v17 * 604800.0));
LABEL_38:
          v56 = v15 * 3.38813179e-21;
          if (v48 >= 0)
          {
            v57 = v48;
          }

          else
          {
            v57 = -v48;
          }

          v58 = 5.0;
          if (v57 < 0x15180)
          {
            v58 = 2.0;
          }

          if (a3 != 4295000000.0)
          {
            v58 = a3 * 1000.0;
          }

          v59 = v13 * 2.91038305e-11 + v14 * 4.4408921e-16 * v48;
          v60 = (v48 * v48);
          v61 = v59 + v56 * v60;
          if (v12 >= v10)
          {
            v62 = v10;
          }

          else
          {
            v62 = v12;
          }

          if (v12 <= v10)
          {
            v63 = v10;
          }

          else
          {
            v63 = v12;
          }

          v64 = -(v59 + v56 * v60);
          if (v12 < v10)
          {
            v64 = v61;
          }

          v65 = v63 + ~v62 + (((11 - v62) * v62) >> 1);
          *(this + v65 + 401) = v64;
          v66 = "<->";
          *(this + v65 + 832) = v58 * 0.001;
          if (v10 >= 4)
          {
            if (v10 == 5)
            {
              v67 = "NIC";
            }

            else
            {
              v67 = "<->";
            }

            if (v10 == 4)
            {
              v67 = "BDS";
            }
          }

          else
          {
            v67 = off_29EEB4488[v10];
          }

          if (v12 >= 4)
          {
            if (v12 == 5)
            {
              v66 = "NIC";
            }

            if (v12 == 4)
            {
              v66 = "BDS";
            }
          }

          else
          {
            v66 = off_29EEB4488[v12];
          }

          GlCustomLog(14, "GlPeTimeManager::SetGnssTimeModel(%u): Accepted time model  from:%s  to:%s  A0(ns):%.1lf  A0_unc(ns):%.0f\n", *(this + 642), v67, v66, v64 * 1000000000.0, ((v58 * 0.001) * 1000.0));
          BlueFin::GlPeTimeManager::updateConversionTable(this);
          return 1;
        }

        v69 = &off_2A1F0E430;
        v70 = 0;
        BlueFin::GlPeGnssTime::GetGlns(v84, &v69);
        v19 = (((795365 * v18) >> 32) >> 4) - v17 + 8 * v17;
        v20 = fmod(*__x.i64, 86400.0);
        BlueFin::GlGlnsTime::GlGlnsTime(&v81, (v19 / 0x5B5 + 1), (v19 % 0x5B5 + 1), v20);
        v21 = (v69[4])(&v69);
        v22 = (v81[4])(&v81);
      }

      else
      {
        v69 = &off_2A1F0B5F0;
        v70 = 0;
        BlueFin::GlPeGnssTime::GetGps(v84, &v69);
        v78 = &off_2A1F0B5F0;
        *v30.i64 = *__x.i64 - trunc(*__x.i64);
        v31.f64[0] = NAN;
        v31.f64[1] = NAN;
        v32 = *vbslq_s8(vnegq_f64(v31), v30, __x).i64;
        if (v32 >= 1.0)
        {
          DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
        }

        v33 = v32 * 4294967300.0 + 0.5;
        v34 = v33;
        if (v33 >= 4294967300.0)
        {
          v34 = -1;
        }

        v79 = v34;
        v80 = v18 + 604800 * v17;
        v78 = &off_2A1F0B5F0;
        v91 = v34;
        v92 = v80;
        v35 = (v69[4])(&v69);
        v89 = v70;
        v90 = v35;
        BlueFin::GlTimePoint::resolveAmbiguity(&v91, &v89, 0x24EA0000u);
        v36 = (v69[3])(&v69, v92);
        v82 = v91;
        v83 = v36;
        v81 = &off_2A1F0B5F0;
        v21 = (v69[4])(&v69);
        v22 = (v81[4])(&v81);
      }

      v48 = v21 - v22;
      goto LABEL_38;
    }
  }

  return result;
}

uint64_t BlueFin::GlPeLtoMgr::deserializeLtoIono(BlueFin::GlPeLtoMgr *this, BlueFin::GlSysLogEntry *a2)
{
  v8 = &unk_2A1F104D8;
  v9 = 7;
  v10 = 0;
  result = BlueFin::GlPeLtoIonoDataInterface::Deserialize(&v8, a2);
  if (result)
  {
    AbbrevGnssName = BlueFin::GlGnss::GetAbbrevGnssName(v9);
    GlCustomLog(14, "LtoMgr: read LTO (%s) IONO from NVMEM!\n", AbbrevGnssName);
    if (v9 == 5)
    {
      v7 = HIDWORD(v9);
      GlCustomLog(15, "GAL IONO(%s): ", "LTO");
      GlCustomLog(15, "%d, %d, %d\n", v10, SWORD1(v10), SWORD2(v10));
      *(this + 5017) = v10;
      *(this + 10036) = WORD2(v10);
      *(this + 5019) = v7;
      v6 = 128;
      goto LABEL_6;
    }

    if (!v9)
    {
      v5 = HIDWORD(v9);
      BlueFin::GlPeIonoMgr::SetLtoIono(*(this + 10) + 71232, &v10, HIDWORD(v9), 0);
      *(this + 2507) = v10;
      *(this + 5016) = v5;
      v6 = 64;
LABEL_6:
      *(this + 6616) |= v6;
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t BlueFin::GlPeLtoIonoDataInterface::Deserialize(BlueFin::GlPeLtoIonoDataInterface *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 124 || *(a2 + 12) != 1)
  {
    return 0;
  }

  *(this + 2) = BlueFin::GlImplGnss::m_aucImplGnssTable[BlueFin::GlSysLogEntry::GetU8(a2)];
  *(this + 3) = BlueFin::GlSysLogEntry::GetU32(a2);
  v6 = *(this + 2);
  if (v6 == 5)
  {
    *(this + 8) = BlueFin::GlSysLogEntry::GetS16(a2);
    *(this + 9) = BlueFin::GlSysLogEntry::GetS16(a2);
    *(this + 10) = BlueFin::GlSysLogEntry::GetS16(a2);
    return 1;
  }

  if (!v6)
  {
    *(this + 16) = BlueFin::GlSysLogEntry::GetS8(a2);
    *(this + 17) = BlueFin::GlSysLogEntry::GetS8(a2);
    *(this + 18) = BlueFin::GlSysLogEntry::GetS8(a2);
    *(this + 19) = BlueFin::GlSysLogEntry::GetS8(a2);
    *(this + 20) = BlueFin::GlSysLogEntry::GetS8(a2);
    *(this + 21) = BlueFin::GlSysLogEntry::GetS8(a2);
    *(this + 22) = BlueFin::GlSysLogEntry::GetS8(a2);
    *(this + 23) = BlueFin::GlSysLogEntry::GetS8(a2);
    return 1;
  }

  return 0;
}

void BlueFin::GlPeTimeManager::SetGalGpsSystemOffset(BlueFin::GlPeTimeManager *this, const BlueFin::GlPeGalGpsOffsetData *a2, int a3)
{
  BlueFin::GlPeGalTimeMgr::SetGpsOffset((this + 2336), a2);
  v6 = *(this + 2432);
  *(this + 2432) = 0;
  if (v6 == 1)
  {
    BlueFin::GlPeTimeManager::updateConversionTable(this);
    if ((a3 & 1) == 0 && BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      (*(*a2 + 24))(a2, 0, 0);
    }
  }

  v7 = *(a2 + 2);
  if (v7)
  {
    v8 = *(a2 + 10);
    v9 = *(a2 + 11);
    v10 = *(a2 + 24);
    v11 = v8 == 0xFFFF && v9 == 0xFFFF;
    if (!v11 || v10 != 255 || *(a2 + 25) != 63)
    {
      v12 = *(this + 642);
      if (v12 == -7200001)
      {
        v12 = 0;
      }

      v13 = BlueFin::GlPeTimeManager::m_acNavDataSourceImage[v7];
      v16 = v9 * 4.4408921e-16 * 1000000000.0;
      v14 = 78;
      if (a3)
      {
        v15 = 89;
      }

      else
      {
        v15 = 78;
      }

      if (v6)
      {
        v14 = 89;
      }

      GlCustomLog(15, "GlPeTimeManager::SetGalGpsSystemOffset(%u): Updated:%c  FromNvMem:%c  Source:%s  GalWeek:%d  GalTowS:%u  GPS{A0(ns):%.1lf  A1(ns/s):%.1lf  WN:%d  Tog(s):%.0lf}\n", v12, v14, v15, v13, *(a2 + 6), *(a2 + 4) / 0x3E8u, v8 * 2.91038305e-11 * 1000000000.0, v16, *(a2 + 25), v10 * 3600.0);
    }
  }
}

void BlueFin::GlPeLtoMgr::UpdateGalSysTimeOffsets(uint64_t a1, int *a2, _DWORD *a3)
{
  v17 = &unk_2A1F18450;
  v19 = 0;
  v6 = *a2;
  v20 = 0;
  v21 = v6;
  v22 = *(a2 + 2);
  v18 = 3;
  v19 = (*(*a3 + 32))(a3) / 0x93A80;
  v10 = (*(*a3 + 32))(a3);
  LODWORD(v9) = a3[2];
  *v10.i64 = (v9 * 2.32830644e-10 + (v8 % 0x93A80)) * 1000.0;
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

  v20 = v15;
  BlueFin::GlPeTimeManager::SetGalGpsSystemOffset(*(a1 + 88), &v17, 0);
  v16 = *a2;
  *(a1 + 20040) = *(a2 + 2);
  *(a1 + 20036) = v16;
  *(a1 + 26464) |= 8u;
}

uint64_t BlueFin::GlPeTimeManager::SetBdsSystemOffsets(int8x8_t *a1, int a2, __int16 a3, int a4, __int16 *a5, char a6)
{
  if (a2 == 4)
  {
    v8 = a1[321].i32[0];
    v9 = a5[1];
    v22 = a5[3] * 1.0e-10 * 1000000000.0;
    return GlCustomLog(15, "GlPeTimeManager::SetBdsSystemOffsets(%u): Hardcoded values disallowed. GPS_A0(ns):%.1lf  GLO_A0(ns):%.1lf\n");
  }

  else
  {
    v23 = &unk_2A1F18320;
    v27 = 0;
    v28 = 0;
    v24 = a3;
    v25 = a4;
    v26 = a2;
    if (&v27 != a5)
    {
      v27 = *a5;
      v28 = *(a5 + 2);
    }

    BlueFin::GlPeBdsTimeMgr::SetSystemOffsets(a1 + 268, &v23);
    v13 = a1[269].i32[1];
    a1[269].i32[1] = v13 & 0xFFFFFFE3;
    if ((v13 & 0x1C) != 0)
    {
      BlueFin::GlPeTimeManager::updateConversionTable(a1);
      if ((a6 & 1) == 0)
      {
        if (BlueFin::GlUtils::m_pInstance)
        {
          if (*(BlueFin::GlUtils::m_pInstance + 1122) == 1)
          {
            (*(v23 + 3))(&v23, 0, 0);
          }
        }
      }
    }

    v14 = a1[321].i32[0];
    v15 = BlueFin::GlPeTimeManager::m_acNavDataSourceImage[a2];
    v16 = a5[1] * 1.0e-10 * 1000000000.0;
    v17 = *a5 * 1.0e-10 * 1000000000.0;
    v18 = a5[3] * 1.0e-10 * 1000000000.0;
    v19 = a5[2] * 1.0e-10 * 1000000000.0;
    v20 = a5[5] * 1.0e-10 * 1000000000.0;
    v21 = a5[4];
    return GlCustomLog(15, "GlPeTimeManager::SetBdsSystemOffsets(%u): Updated:%c  FromNvMem:%c  Source:%s  BdsWeek:%d  BdsFctS:%u  GPS{A0(ns):%.1lf  A1(ns/s):%.1lf}  GLO{A0(ns):%.1lf  A1(ns/s):%.1lf}  GAL{A0(ns):%.1lf  A1(ns/s):%.1lf}\n");
  }
}

BOOL BlueFin::GlPeBdsTimeMgr::SetSystemOffset(int8x8_t *this, int8x8_t *a2)
{
  v4 = BlueFin::GlPeBdsTimeMgr::acceptSystemOffsetUpdate(this, a2);
  v5 = v4;
  if (v4)
  {
    v6 = a2[1].i32[0];
    if (v6 > 2)
    {
      if (v6 == 3)
      {
        if (&this[14] == a2)
        {
          v15 = 3;
          goto LABEL_16;
        }

        v7 = 18;
        v8 = 17;
        v9 = 33;
        v10 = 16;
        v11 = 62;
        v12 = 15;
        goto LABEL_15;
      }

      if (v6 != 4)
      {
        goto LABEL_22;
      }

      if (&this[19] == a2)
      {
        v15 = 4;
        goto LABEL_16;
      }

      v7 = 23;
      v8 = 22;
      v9 = 43;
      v10 = 21;
      v11 = 82;
      v12 = 20;
    }

    else
    {
      if (v6 != 1)
      {
        if (v6 == 2)
        {
          if (&this[9] == a2)
          {
            v15 = 2;
            goto LABEL_16;
          }

          v7 = 13;
          v8 = 12;
          v9 = 23;
          v10 = 11;
          v11 = 42;
          v12 = 10;
          goto LABEL_15;
        }

LABEL_22:
        DeviceFaultNotify("glpe_bdstimemgr.cpp", 646, "SetSystemOffset", "false");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_bdstimemgr.cpp", 646, "false");
      }

      if (&this[4] == a2)
      {
        v15 = 1;
        goto LABEL_16;
      }

      v7 = 8;
      v8 = 7;
      v9 = 13;
      v10 = 6;
      v11 = 22;
      v12 = 5;
    }

LABEL_15:
    this[v12].i32[0] = v6;
    this->i16[v11] = a2[1].i16[2];
    v13 = a2[2].i32[1];
    this[v10].i32[0] = a2[2].i32[0];
    this->i32[v9] = v13;
    v14 = a2[4];
    this[v8] = a2[3];
    this[v7] = v14;
    v15 = a2[1].i32[0];
LABEL_16:
    this[1] = vorr_s8(this[1], vdup_n_s32(1 << BlueFin::GlPeBdsTimeMgr::timeSystemToDataType(v4, v15)));
  }

  return v5;
}

BOOL BlueFin::GlPeBdsTimeMgr::SetSystemOffsets(int8x8_t *this, const BlueFin::GlPeBdsSysOffsetsData *a2)
{
  v9 = &unk_2A1F18350;
  v4 = *(a2 + 12);
  v11 = *(a2 + 4);
  v10 = 2;
  v5 = *(a2 + 11) * 1.0e-10;
  v12 = v4;
  v13 = v5;
  v14 = *(a2 + 10) * 1.0e-10;
  BlueFin::GlPeBdsTimeMgr::SetSystemOffset(this, &v9);
  v10 = 3;
  v6 = *(a2 + 12);
  v13 = *(a2 + 13) * 1.0e-10;
  v14 = v6 * 1.0e-10;
  BlueFin::GlPeBdsTimeMgr::SetSystemOffset(this, &v9);
  v10 = 4;
  v7 = *(a2 + 14);
  v13 = *(a2 + 15) * 1.0e-10;
  v14 = v7 * 1.0e-10;
  return BlueFin::GlPeBdsTimeMgr::SetSystemOffset(this, &v9);
}

double BlueFin::GlPeLtoMgr::UpdateBdsSysTimeOffsets(uint64_t a1, __int16 a2, int a3, __int16 *a4)
{
  v7 = a1 + 20042;
  BlueFin::GlPeTimeManager::SetBdsSystemOffsets(*(a1 + 88), 3, a2, a3, a4, 0);
  v8 = a4[4];
  v9 = a4[5];
  result = *a4;
  *v7 = *a4;
  *(v7 + 8) = v8;
  *(v7 + 10) = v9;
  *(v7 + 12) = a2;
  *(a1 + 26464) |= 0x10u;
  return result;
}

uint64_t BlueFin::GlPeLtoMgr::deserializeLtoSysTime(BlueFin::GlPeLtoMgr *this, BlueFin::GlSysLogEntry *a2)
{
  v3 = this + 24576;
  v4 = *(this + 6615);
  v17 = &unk_2A1F10490;
  v18 = 7;
  v19 = 0u;
  v20 = 0u;
  v21 = 0;
  result = BlueFin::GlPeLtoSysTimeDataInterface::Deserialize(&v17, a2);
  if (!result)
  {
    return result;
  }

  AbbrevGnssName = BlueFin::GlGnss::GetAbbrevGnssName(v18);
  GlCustomLog(14, "LtoMgr: read LTO SysTime (%s) from NVMEM!\n", AbbrevGnssName);
  switch(v18)
  {
    case 5u:
      v10 = v4 % 0x93A80;
      *v7.i64 = v10;
      v14 = &off_2A1F0E480;
      *v8.i64 = v10 - trunc(v10);
      v11.f64[0] = NAN;
      v11.f64[1] = NAN;
      v7.i64[0] = vbslq_s8(vnegq_f64(v11), v8, v7).i64[0];
      if (*v7.i64 < 1.0)
      {
        v12 = *v7.i64 * 4294967300.0 + 0.5;
        v13 = v12;
        if (v12 >= 4294967300.0)
        {
          v13 = -1;
        }

        v15 = v13;
        v16 = v10 + 604800 * (v4 / 0x93A80 - 1024) + 619315200;
        v14 = &off_2A1F0E480;
        BlueFin::GlPeLtoMgr::UpdateGalSysTimeOffsets(this, &v20 + 1, &v14);
        return 1;
      }

      goto LABEL_15;
    case 4u:
      *v7.i64 = v4;
      *v8.i64 = v4 - trunc(v4);
      v9.f64[0] = NAN;
      v9.f64[1] = NAN;
      if (*vbslq_s8(vnegq_f64(v9), v8, v7).i64 < 1.0)
      {
        BlueFin::GlPeLtoMgr::UpdateBdsSysTimeOffsets(this, SHIWORD(v21), v4 - 820108814, &v20 + 5);
        return 1;
      }

LABEL_15:
      DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
    case 2u:
      BlueFin::GlPeTimeManager::SetGlnsAsst(*(this + 11), 3, &v19);
      *(this + 1251) = v19;
      *(this + 5008) = v20;
      *(v3 + 472) |= 0x20u;
      return 1;
  }

  return 0;
}

uint64_t BlueFin::GlPeTimeManager::SetGlnsAsst(BlueFin::GlPeTimeManager *a1, int a2, char *a3)
{
  BlueFin::GlPeGlnTimeMgr::SetAsst(a1 + 192, a2, a3);
  if (*(a1 + 435) == 1)
  {
    BlueFin::GlPeTimeManager::updateLeapSecFromGlnsKp(a1);
  }

  BlueFin::GlPeTimeManager::updateConversionTable(a1);
  return 1;
}

uint64_t BlueFin::GlPeGlnTimeMgr::stTauMgr::Update(uint64_t result, int a2, int a3, double a4)
{
  v5 = result;
  if (!a2)
  {
    *result = 768;
    *(result + 16) = 257;
    *(result + 8) = a4;
    *(result + 24) = a4;
    *(result + 32) = a3;
    return GlCustomLog(15, "GlPeGlnTimeMgr::UpdateTau%s:  Set from assistance   Tau%s:%.1fns\n", (result + 36), (result + 36), a4 * 1000000000.0);
  }

  v6 = *(result + 16);
  if ((*result & 1) == 0)
  {
    v8 = *(result + 8);
    if (vabdd_f64(a4, v8) * 1000000000.0 <= 50.0)
    {
      v8 = a4 * 0.3 + v8 * 0.7;
      *(result + 8) = v8;
      v10 = *(result + 1);
      if (v10 <= 2)
      {
        *(result + 1) = v10 + 1;
      }
    }

    else if (!*(result + 1) || (v9 = *(result + 1) - 1, (*(result + 1) = v9) == 0))
    {
      *(result + 8) = a4;
      *(result + 16) = 0;
      return result;
    }

    *(result + 16) = 1;
    if (!v6)
    {
      goto LABEL_15;
    }

LABEL_14:
    if (vabdd_f64(*(v5 + 24), v8) * 1000000000.0 < 5.0)
    {
      return result;
    }

    goto LABEL_15;
  }

  *(result + 1) = 0;
  *(result + 8) = a4;
  result = GlCustomLog(15, "GlPeGlnTimeMgr::UpdateTau%s:  Initialized  Tau%s:%.1fns\n", (result + 36), (result + 36), a4 * 1000000000.0);
  *v5 = 0;
  v7 = *(v5 + 1);
  *(v5 + 16) = *(v5 + 1) != 0;
  if (!v7)
  {
    return result;
  }

  v8 = *(v5 + 8);
  if (v6)
  {
    goto LABEL_14;
  }

LABEL_15:
  *(v5 + 17) = 1;
  *(v5 + 24) = v8;
  *(v5 + 32) = a3;
  return result;
}

uint64_t BlueFin::GlPeGlnTimeMgr::TauGpsMgr::Update(uint64_t result, unsigned int a2, int a3, double a4)
{
  if (*(result + 46))
  {

    return BlueFin::GlPeGlnTimeMgr::stTauMgr::Update(result, a2, a3, a4);
  }

  else if (a2 <= 2)
  {
    v5 = (a4 * 1000000000.0);
    *(result + 46) = 1;
    *(result + 48) = v5;
    v6 = v5 * 0.000000001;
    *result = 768;
    *(result + 8) = v6;
    *(result + 16) = 257;
    *(result + 24) = v6;
    *(result + 32) = a3;
    return GlCustomLog(15, "GlPeGlnTimeMgr::Update TauGps initialized  InitialValue:%.1fns\n", v6 * 1000000000.0);
  }

  return result;
}

void BlueFin::GlPeGlnTimeMgr::SetAsst(uint64_t a1, int a2, char *a3)
{
  v8 = &unk_2A1F18508;
  v12 = 0;
  v13 = 0.0;
  v14 = 0;
  v16 = 0.0;
  v17 = 0.0;
  memset(v15, 0, sizeof(v15));
  v9 = *a3;
  v10 = *(a3 + 1);
  v11 = a2;
  v3 = *(a3 + 1);
  if (v3 != 0x7FFFFFFF)
  {
    v12 = 1;
    v13 = vcvtd_n_f64_s32(v3, 0x1FuLL);
  }

  v4 = *(a3 + 2);
  if (v4 != 0x7FFFFFFF)
  {
    v14 = 1;
    *v15 = vcvtd_n_f64_s32(v4, 0x1EuLL);
  }

  if (a3[12])
  {
    v15[8] = 1;
    v15[9] = a3[13];
  }

  if (a3[14])
  {
    v15[10] = 1;
    v5 = vcvtd_n_f64_s32(*(a3 + 8), 0xAuLL);
    v6 = vcvtd_n_f64_s32(*(a3 + 9), 0x10uLL);
    v16 = v5;
    v17 = v6;
  }

  v7 = BlueFin::GlPeGlnTimeMgr::initializeTimeData(a1, &v8, 0);
  if (BlueFin::GlUtils::m_pInstance)
  {
    if (*(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      (*(v8 + 3))(&v8, 0, 0, v7);
    }
  }
}

uint64_t BlueFin::GlPeTimeManager::SetBdsUtcModel(BlueFin::GlPeTimeManager *a1, int a2, int a3, uint64_t *a4, int a5)
{
  v16 = &unk_2A1F182F0;
  v19 = 0;
  v20 = 0;
  v17 = a3;
  v18 = a2;
  if (&v19 != a4)
  {
    v19 = *a4;
    v20 = *(a4 + 2);
  }

  BlueFin::GlPeBdsTimeMgr::SetUtcModel(a1 + 2144, &v16);
  v10 = *(a1 + 539);
  *(a1 + 539) = v10 & 0xFFFFFF9F;
  if ((v10 & 0x20) != 0)
  {
    BlueFin::GlPeTimeManager::updateConversionTable(a1);
    if ((a5 & 1) == 0 && BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      (*(v16 + 3))(&v16, 0, 0);
    }

    v11 = 89;
  }

  else
  {
    v11 = 78;
  }

  v12 = *(a1 + 642);
  if (v12 == -7200001)
  {
    v12 = 0;
  }

  v15 = vcvtd_n_f64_s32(*(a4 + 1), 0x1EuLL) * 1000000000.0;
  v13 = 78;
  if (a5)
  {
    v13 = 89;
  }

  return GlCustomLog(15, "GlPeTimeManager::SetBdsUtcModel(%u): Updated:%c  FromNvMem:%c  Source:%s  BdsWeek:%d  A0(ns):%.1lf  A1(ns/s):%.1lf  DeltaTls:%d  DeltaTlsf:%d  DN:%d  WNlsf:%d\n", v12, v11, v13, BlueFin::GlPeTimeManager::m_acNavDataSourceImage[a2], a3, v15, *a4 * 8.8817842e-16 * 1000000000.0, *(a4 + 8), *(a4 + 11), *(a4 + 10), *(a4 + 9));
}

double BlueFin::GlPeLtoMgr::UpdateBdsUtcModel(uint64_t a1, int a2, uint64_t a3)
{
  v4 = a2;
  v6 = a1 + 19992;
  BlueFin::GlPeTimeManager::SetBdsUtcModel(*(a1 + 88), 3, a2, a3, 0);
  result = *a3;
  *(a1 + 19984) = *a3;
  *v6 = *(a3 + 8);
  *(v6 + 4) = v4;
  *(a1 + 26464) |= 4u;
  return result;
}

uint64_t BlueFin::GlPeLtoUtcDataInterface::Deserialize(BlueFin::GlPeLtoUtcDataInterface *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 122 || *(a2 + 12) != 1)
  {
    return 0;
  }

  v6 = BlueFin::GlImplGnss::m_aucImplGnssTable[BlueFin::GlSysLogEntry::GetU8(a2)];
  *(this + 2) = v6;
  switch(v6)
  {
    case 5:
      goto LABEL_9;
    case 4:
      *(this + 7) = BlueFin::GlSysLogEntry::GetS32(a2);
      *(this + 8) = BlueFin::GlSysLogEntry::GetS32(a2);
      *(this + 36) = BlueFin::GlSysLogEntry::GetS8(a2);
      *(this + 37) = BlueFin::GlSysLogEntry::GetU8(a2);
      *(this + 38) = BlueFin::GlSysLogEntry::GetU8(a2);
      *(this + 39) = BlueFin::GlSysLogEntry::GetS8(a2);
      *(this + 20) = BlueFin::GlSysLogEntry::GetU16(a2);
      return 1;
    case 0:
LABEL_9:
      *(this + 3) = BlueFin::GlSysLogEntry::GetS32(a2);
      *(this + 4) = BlueFin::GlSysLogEntry::GetS32(a2);
      *(this + 20) = BlueFin::GlSysLogEntry::GetU8(a2);
      *(this + 21) = BlueFin::GlSysLogEntry::GetU8(a2);
      *(this + 22) = BlueFin::GlSysLogEntry::GetS8(a2);
      *(this + 23) = BlueFin::GlSysLogEntry::GetU8(a2);
      *(this + 24) = BlueFin::GlSysLogEntry::GetS8(a2);
      *(this + 25) = BlueFin::GlSysLogEntry::GetS8(a2);
      return 1;
  }

  return 0;
}

uint64_t BlueFin::GlPeGpsTimeMgr::GetFctOfFutureLS(BlueFin::GlPeGpsTimeMgr *this, const BlueFin::GlGpsTime *a2)
{
  if (!*(this + 18))
  {
    return 0;
  }

  if (BlueFin::GlPeGpsTimeMgr::isExpired(this, a2) || !*(this + 108))
  {
    return 0;
  }

  v4 = (*(*a2 + 32))(a2) / 0x93A80;
  v5 = v4 - *(this + 107);
  if (v5 >= 0)
  {
    v6 = v4 - *(this + 107);
  }

  else
  {
    v6 = *(this + 107) - v4;
  }

  v7 = v5 + 256;
  if (v5 >= -127)
  {
    v7 = v4 - *(this + 107);
  }

  if (v5 >= 128)
  {
    v8 = v5 - 256;
  }

  else
  {
    v8 = v7;
  }

  if (v6 == 128)
  {
    v8 = 0;
  }

  return *(this + 109) + 86400 * *(this + 108) + 604800 * (v4 - v8);
}

uint64_t BlueFin::GlPeGpsTimeMgr::GetDeltaUTCSec(BlueFin::GlPeGpsTimeMgr *this, const BlueFin::GlGpsTime *a2, int *a3)
{
  v14 = 0.0;
  UtcTime = BlueFin::GlPeGpsTimeMgr::getUtcTime(this, a2, &v14);
  if (UtcTime)
  {
    v6 = (*(*a2 + 32))(a2);
    LODWORD(v7) = *(a2 + 2);
    v8 = fmod(v7 * 2.32830644e-10 + (v6 % 0x93A80), 86400.0);
    v9 = v8 - v14;
    v10 = 0.5;
    if (v9 <= 0.0)
    {
      v10 = -0.5;
      if (v9 >= 0.0)
      {
        v12 = 0;
        goto LABEL_9;
      }
    }

    v11 = (v9 + v10);
    *a3 = v11;
    if (v11 >= 43201)
    {
      v12 = v11 - 86400;
LABEL_9:
      *a3 = v12;
      return UtcTime;
    }

    if (v11 <= -43201)
    {
      v12 = v11 + 86400;
      goto LABEL_9;
    }
  }

  return UtcTime;
}

uint64_t BlueFin::GlPeGpsUtcModel::computeUtcSysOffsetS(uint64_t this, const BlueFin::GlGpsTime *a2)
{
  v2 = vcvtd_n_f64_s32(*(this + 36), 0x1EuLL);
  if (a2)
  {
    v4 = this;
    v5 = (*(*a2 + 32))(a2);
    LODWORD(v6) = *(a2 + 2);
    *&v7 = v6 * 2.32830644e-10;
    v8 = *&v7 + (v5 % 0x93A80);
    LOBYTE(v7) = *(v4 + 40);
    v9 = v8 + v7 * -4096.0;
    this = (*(*a2 + 32))(a2);
    v10 = (this / 0x93A80) - *(v4 + 41);
    if (v10 >= 0)
    {
      v11 = (this / 0x93A80) - *(v4 + 41);
    }

    else
    {
      v11 = *(v4 + 41) - (this / 0x93A80);
    }

    v12 = v10 + 256;
    if (v10 >= -127)
    {
      v12 = (this / 0x93A80) - *(v4 + 41);
    }

    if (v10 >= 128)
    {
      v13 = v10 - 256;
    }

    else
    {
      v13 = v12;
    }

    if (v11 == 128)
    {
      v13 = 0;
    }

    v14 = v2 + *(v4 + 32) * 8.8817842e-16 * (v9 + v13 * 604800.0);
  }

  return this;
}

uint64_t BlueFin::GlPeGpsTimeMgr::getUtcTime(BlueFin::GlPeGpsTimeMgr *this, const BlueFin::GlGpsTime *a2, double *a3)
{
  if (!*(this + 18))
  {
    return 0;
  }

  if (BlueFin::GlPeGpsTimeMgr::isExpired(this, a2) || !*(this + 108))
  {
    return 0;
  }

  v6 = ((*(*a2 + 32))(a2) / 0x93A80) - *(this + 107);
  if (v6 >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = -v6;
  }

  v8 = v6 + 256;
  if (v6 >= -127)
  {
    v8 = v6;
  }

  if (v6 >= 128)
  {
    v9 = v6 - 256;
  }

  else
  {
    v9 = v8;
  }

  if (v7 == 128)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  v11 = (*(*a2 + 32))(a2);
  LODWORD(v12) = *(a2 + 2);
  v13 = v12 * 2.32830644e-10 + (v11 % 0x93A80);
  v14 = v13;
  if (v10 > 0)
  {
    v16 = v14 < 21600 && *(this + 108) == 7 && v10 == 1;
    v17 = this + 106;
    v18 = this + 109;
    if (!v16)
    {
      v20 = 0;
      v21 = this + 109;
      goto LABEL_36;
    }

    v20 = 1;
    goto LABEL_35;
  }

  if (v10)
  {
    v20 = 0;
    v17 = this + 106;
    v18 = this + 109;
LABEL_35:
    v21 = v17;
    goto LABEL_36;
  }

  v22 = 86400 * *(this + 108);
  v23 = __OFSUB__(v14, v22);
  v24 = v14 - v22;
  if ((v24 < 0) ^ v23 | (v24 == 0))
  {
    v25 = 1;
  }

  else
  {
    v25 = 0;
  }

  if (v24 < 0)
  {
    v24 = -v24;
  }

  v20 = v24 >> 5 < 0x2A3;
  v17 = this + 106;
  v18 = this + 109;
  v21 = this + 109;
  if ((v25 | v20))
  {
    goto LABEL_35;
  }

LABEL_36:
  v26 = *v21;
  BlueFin::GlPeGpsUtcModel::computeUtcSysOffsetS(this + 64, a2);
  v28 = v27 + v26;
  if (v20)
  {
    v29 = *v18 + 86400 - *v17;
    v30 = fmod(v13 - v28 + -43200.0, 86400.0);
    if (v30 < 0.0)
    {
      v30 = v30 + 86400.0;
    }

    v31 = fmod(v30 + 43200.0, v29);
    goto LABEL_42;
  }

  v32 = fmod(v13 - v28, 86400.0);
  *a3 = v32;
  if (v32 < 0.0)
  {
    v31 = v32 + 86400.0;
LABEL_42:
    *a3 = v31;
  }

  return 1;
}

uint64_t BlueFin::GlPeTimeManager::UpdateLeapSecFromGpsUtcModel(BlueFin::GlPeTimeManager *this)
{
  if (!*(this + 644))
  {
    return 0;
  }

  BlueFin::GlPeTimeManager::GetTime(this, 1, v5);
  v6[0] = &off_2A1F0B5F0;
  v6[1] = 0;
  BlueFin::GlPeGnssTime::GetGps(v5, v6);
  v5[0].n128_u32[0] = 0;
  DeltaUTCSec = BlueFin::GlPeGpsTimeMgr::GetDeltaUTCSec((this + 64), v6, v5);
  result = 0;
  if (DeltaUTCSec)
  {
    v4 = 0x80;
    BlueFin::GlPeGpsTimeMgr::GetFutureLS((this + 64), v6, &v4);
    return BlueFin::GlPeTimeManager::updateLeapSeconds(this, v5[0].n128_u8[0], 4, 0, v4);
  }

  return result;
}

uint64_t BlueFin::GlPeTimeManager::SetGpsUtcModel(int8x16_t *this, int8x16_t *a2, double a3, int8x16_t a4)
{
  result = BlueFin::GlPeGpsTimeMgr::updateModelIfBetter(this + 4, a2, 0, a3, a4);
  v6 = this[11].u8[0];
  this[11].i8[0] = 0;
  if (v6 == 1)
  {

    return BlueFin::GlPeTimeManager::UpdateLeapSecFromGpsUtcModel(this);
  }

  return result;
}

BOOL BlueFin::GlPeAlmMgr::SetAsstAlm(BlueFin::GlPeAlmMgr *this, const BlueFin::GlPeAlmanac *a2)
{
  v5 = *(a2 + 23);
  if (*(*(this + 56) + 2576))
  {
    v6 = v5 == 2;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v32 = 7;
    v33 = 0;
    LODWORD(v26) = -65536;
    v27 = 0;
    LODWORD(v28) = 0;
    memset(v29, 0, 66);
    *&v29[68] = -1;
    LOBYTE(v30) = 0;
    if (BlueFin::GlPeAlmMgr::GetAlm(this, *(a2 + 26), *(a2 + 108), &v26, 1, 1))
    {
      BlueFin::GlPeTimeManager::GetTime(*(this + 56), 1, v38);
      v39[0] = &off_2A1F0B5F0;
      v39[1] = 0;
      *v7.i64 = BlueFin::GlPeGnssTime::GetGps(v38, v39);
      BlueFin::GlPeAlmanac::GetToa(&v26, v39, v38, v7, v8);
      v9 = (*(v38[0].n128_u64[0] + 32))(v38);
      LODWORD(v2) = v38[0].n128_u32[2];
      BlueFin::GlPeAlmanac::GetToa(a2, v39, &v36, v10, v11);
      v12 = (*(v36 + 32))(&v36);
      if (v2 * 2.32830644e-10 + v9 > (v37 | 0x3DEFFFFF00000000uLL) * 2.32830644e-10 + v12)
      {
        return 0;
      }
    }

    v5 = *(a2 + 23);
  }

  v26 = &unk_2A1F0E890;
  v13 = *(a2 + 26);
  v34 = v13;
  v14 = *(a2 + 108);
  v35 = *(a2 + 108);
  LODWORD(v27) = *a2;
  v28 = *(a2 + 1);
  *v29 = *(a2 + 4);
  v15 = *(a2 + 40);
  *&v29[8] = *(a2 + 24);
  *&v29[24] = v15;
  v16 = *(a2 + 72);
  *&v29[40] = *(a2 + 56);
  *&v29[56] = v16;
  v30 = *(a2 + 44);
  v31 = v5;
  LOBYTE(v32) = *(a2 + 96);
  if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    BlueFin::GlPeAlmanacData::SerializeImpl();
    v13 = *(a2 + 26);
    v14 = *(a2 + 108);
  }

  AlmReference = BlueFin::GlPeAlmMgr::getAlmReference(this, v13, v14);
  v18 = *(a2 + 5) * *(a2 + 5);
  v19 = v18 >= 7078137.0;
  if (v18 < 7078137.0)
  {
    v22 = BlueFin::GNSS2STR(*(a2 + 26));
    v23 = *(a2 + 23);
    if (v23 > 4)
    {
      v24 = "INV";
    }

    else
    {
      v24 = BlueFin::GlPeAlmanac::GetSourceStr(void)const::aacSourceStr[v23];
    }

    GlCustomLog(11, "GlPeAlmMgr::SetAsstAlm:Rejected Alm %s %02d  Source:%s  Reason:Invalid ASqrt(%.0lf)\n", v22, *(a2 + 108), v24, *(a2 + 5));
  }

  else
  {
    BlueFin::GlPeAlmanac::operator=(AlmReference, a2);
    v20 = *(a2 + 108);
    if ((v20 - 64) <= 0xFFFFFFC0)
    {
      DeviceFaultNotify("glgnss.h", 115, "Add", "rtGnssId.ucGnssId >= MIN_GNSS_ID && rtGnssId.ucGnssId <= MAX_GNSS_ID");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glgnss.h", 115, "rtGnssId.ucGnssId >= MIN_GNSS_ID && rtGnssId.ucGnssId <= MAX_GNSS_ID");
    }

    v21 = *(this + 54) + 48 * *(a2 + 26);
    *(*(v21 + 24) + ((v20 >> 3) & 0x1C)) |= 1 << v20;
    BlueFin::GlSetBase::Remove(v21, v20);
    *(this + 36712) = 0;
  }

  return v19;
}

BOOL BlueFin::GlPeLtoMgr::UpdateSbasAlmanac(BlueFin::GlPeLtoMgr *this, __int16 a2, int a3, double a4)
{
  v23 = 1;
  v24 = a3 - 119;
  v10[0] = a3;
  v10[1] = 0;
  v11 = 0;
  v12 = 0;
  v13 = xmmword_298A404C0;
  v15 = 0;
  v16 = 0;
  v14 = 0x40B95D8000000000;
  v17 = a4 * -0.0174532925;
  v18 = 0;
  v19 = 0;
  v20 = a2;
  v21 = 4;
  v22 = 0;
  result = BlueFin::GlPeAlmMgr::SetAsstAlm((*(this + 10) + 34112), v10);
  if ((a3 - 120) <= 0x3E)
  {
    v8 = (this + 12 * (a3 - 120) + 19740);
    *v8 = a3;
    v9 = a4;
    v8[1] = v9;
  }

  return result;
}

uint64_t BlueFin::GlPeTimeManager::GetTime@<X0>(BlueFin::GlPeTimeManager *this@<X0>, const BlueFin::GlGlnsTime *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v10 = 0.0;
  v9 = *(a2 + 1);
  BlueFin::GlPeTimeManager::dateTimeToLms(this, 1, &v9, &v10);
  v7 = v10;

  return BlueFin::GlPeTimeManager::commonGnssToLms(this, v7, a3, a4);
}

BOOL BlueFin::GlPeAlmMgr::SetAsstAlm(uint64_t a1, unsigned __int16 *a2, int a3)
{
  v14 = &off_2A1F0E430;
  v15 = 0;
  if (BlueFin::GlPeTimeManager::TimeKnown(*(a1 + 448), 1, 0x3938700u))
  {
    BlueFin::GlPeTimeManager::GetTime(*(a1 + 448), 1, v11);
    v12 = &off_2A1F0E430;
    v13 = 0;
    BlueFin::GlPeGnssTime::GetGlns(v11, &v12);
    v7.i64[0] = v13;
  }

  else
  {
    v8 = *(a1 + 448);
    if (*(v8 + 248) != 1)
    {
      return 0;
    }

    BlueFin::GlGlnsTime::GlGlnsTime(v11, *(v8 + 249), *(v8 + 250), 0.0);
    v7.i64[0] = v11[0].n128_i64[1];
  }

  v15 = v7.i64[0];
  if (a3)
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  return BlueFin::GlPeAlmMgr::ApplyDecodedGlonassAlmanac(a1, &v14, a2, v9, v7, v6);
}

BOOL BlueFin::GlPeAlmMgr::SetAsstAlm(BlueFin::GlPeTimeManager **a1, unsigned __int8 *a2, unsigned int a3, double a4, double a5, int8x16_t a6, int8x16_t a7)
{
  v7.i64[1] = 0;
  v68 = 0u;
  v67 = 0u;
  v66 = 0u;
  v65 = 0u;
  v70 = -1;
  v71 = 0;
  v72 = 5;
  v8 = *a2;
  v9 = v8 + 1;
  v73 = v8 + 1;
  if (v8 >= 0x24)
  {
    v47 = "IS_GALILEO_GNSSID(ucGnssId)";
    DeviceFaultNotify("glpe_almmgr.cpp", 495, "Import", "IS_GALILEO_GNSSID(ucGnssId)");
    v48 = "glpe_almmgr.cpp";
    v49 = 495;
    goto LABEL_39;
  }

  v11 = *(a2 + 5) * 0.001953125 + 5440.7074;
  v12 = *(a2 + 2);
  *v7.i64 = v11 * v11;
  v13 = v11 >= 8192.0;
  if (v11 * v11 < 7078137.0)
  {
    v13 = 1;
  }

  v14 = *(a2 + 9);
  if (v12 > 0x3FF || v13 || (v14 - 4096) < 0xE000u)
  {
    if (v12 <= 0x3FF)
    {
      v40 = "";
    }

    else
    {
      v40 = "toa ";
    }

    if (v13)
    {
      v41 = "Asqrt ";
    }

    else
    {
      v41 = "";
    }

    if ((v14 - 4096) >= 0xE000u)
    {
      v42 = "";
    }

    else
    {
      v42 = "a_f1 ";
    }

    GlCustomLog(14, "Reject GAL Alm %d [ %s%s%s%s%s%s%s%s]\n", v9, "", v40, v41, "", "", "", "", v42);
    return 0;
  }

  v17 = 4 * (a3 != 0);
  v62[0] = v9;
  v18 = a2[22] & 3;
  v69 = a2[22] & 3;
  v62[1] = a2[23];
  v7.i16[0] = *(a2 + 1);
  v63 = v7.u64[0] * 0.0000152587891 + 0.0;
  *v7.i64 = v12 * 600.0;
  *a7.i64 = *v7.i64 + trunc(*v7.i64 * 2.32830644e-10) * -4294967300.0;
  v19.f64[0] = NAN;
  v19.f64[1] = NAN;
  v20 = vnegq_f64(v19);
  a7.i64[0] = vbslq_s8(v20, a7, v7).u64[0];
  if (*v7.i64 > 4294967300.0)
  {
    v7.i64[0] = a7.i64[0];
  }

  if (*v7.i64 < -4294967300.0)
  {
    *a6.i64 = -*v7.i64;
    *v7.i64 = -(*v7.i64 - trunc(*v7.i64 * -2.32830644e-10) * -4294967300.0);
    *v7.i64 = -*vbslq_s8(v20, v7, a6).i64;
  }

  if (*v7.i64 < 0.0)
  {
    v21 = --*v7.i64;
  }

  else
  {
    v21 = *v7.i64;
  }

  v64 = v21;
  *v22.i64 = BlueFin::GlPeAlmanac::deltaI_semicircles_to_i0_rad(v62, vcvtd_n_f64_s32(*(a2 + 3), 0xEuLL));
  *v23.i64 = *(a2 + 4) * 3.6572952e-10;
  *&v65 = v22.i64[0];
  *(&v65 + 1) = v23.i64[0];
  *v22.i64 = *(a2 + 6) * 0.0000958737992;
  *&v66 = v11;
  *(&v66 + 1) = v22.i64[0];
  *v23.i64 = *(a2 + 8) * 0.0000958737992;
  v24 = vcvtd_n_f64_s32(*(a2 + 10), 0x13uLL);
  *&v67 = *(a2 + 7) * 0.0000958737992;
  *(&v67 + 1) = v23.i64[0];
  *&v68 = v24;
  *(&v68 + 1) = v14 * 3.63797881e-12;
  v70 = v17;
  v71 = 0;
  v60 = &off_2A1F0B5F0;
  v61 = 0;
  v25 = a1[56];
  v26 = *(v25 + 644);
  v27 = v26 != 0;
  if (v26)
  {
    *v22.i64 = v21;
    v57 = &off_2A1F0E480;
    *v23.i64 = v21 - trunc(v21);
    v28.f64[0] = NAN;
    v28.f64[1] = NAN;
    v29 = vbslq_s8(vnegq_f64(v28), v23, v22);
    if (*v29.i64 < 1.0)
    {
      v30 = *v29.i64 * 4294967300.0 + 0.5;
      if (v30 >= 4294967300.0)
      {
        v31 = -1;
      }

      else
      {
        v31 = v30;
      }

      v58 = v31;
      v59 = v21 + 604800 * v18 + 619315200;
      v56 = 0;
      v57 = &off_2A1F0E480;
      v55 = &off_2A1F0E480;
      if (a3)
      {
        *v29.i64 = (a3 % 0x93A80);
        v53 = &off_2A1F0B5F0;
        *v23.i64 = *v29.i64 - trunc(*v29.i64);
        v32.f64[0] = NAN;
        v32.f64[1] = NAN;
        v29.i64[0] = vbslq_s8(vnegq_f64(v32), v23, v29).i64[0];
        if (*v29.i64 >= 1.0)
        {
          DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
        }

        v33 = *v29.i64 * 4294967300.0 + 0.5;
        v34 = v33;
        if (v33 >= 4294967300.0)
        {
          v34 = -1;
        }

        v54 = __PAIR64__(a3, v34);
        v53 = &off_2A1F0B5F0;
        BlueFin::GlPeTimeManager::GetTime(v25, &v53, 1, v50);
        v51 = &off_2A1F0E480;
        v52 = 0;
        Gal = BlueFin::GlPeGnssTime::GetGal(v50, &v51);
        v36 = (v57[4])(&v57, Gal);
        v75 = v58;
        v76 = v36;
        v37 = (v51[4])(&v51);
        v74[0] = v52;
        v74[1] = v37;
        BlueFin::GlTimePoint::resolveAmbiguity(&v75, v74, 0x24EA00u);
        v38 = (v51[3])(&v51, v76);
        v39 = v75;
      }

      else
      {
        BlueFin::GlPeTimeManager::GetTime(v25, 1, v50);
        v53 = &off_2A1F0E480;
        v54 = 0;
        v43 = BlueFin::GlPeGnssTime::GetGal(v50, &v53);
        v44 = (v57[4])(&v57, v43);
        v51 = __PAIR64__(v44, v58);
        v45 = (v53[4])(&v53);
        v75 = v54;
        v76 = v45;
        BlueFin::GlTimePoint::resolveAmbiguity(&v51, &v75, 0x24EA00u);
        v38 = (v53[3])(&v53, HIDWORD(v51));
        v39 = v51;
      }

      v56 = __PAIR64__(v38, v39);
      BlueFin::GlPeTimeManager::GetTime(a1[56], &v55, 1, v50);
      v53 = &off_2A1F0B5F0;
      v54 = 0;
      BlueFin::GlPeGnssTime::GetGps(v50, &v53);
      v61 = v54;
      v69 = ((v60[4])(&v60) / 0x93A80);
      v64 = (v60[4])(&v60) % 0x93A80;
      BlueFin::GlPeAlmMgr::SetAsstAlm(a1, v62);
      return v27;
    }

    v47 = "dFracSec >= 0.0 && dFracSec < 1.0";
    DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
    v48 = "glpe_timepoint.h";
    v49 = 173;
LABEL_39:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v48, v49, v47);
  }

  return v27;
}

int8x16_t BlueFin::GlPeLtoMgr::UpdateBdsAlmanac(uint64_t a1, unsigned __int8 *a2, int8x16_t result, double a4, int8x16_t a5, int8x16_t a6, double a7, int8x16_t a8)
{
  if (*(*(a1 + 88) + 2576))
  {
    v40 = 7;
    v41 = 0;
    v30 = -65536;
    v31 = 0;
    v32 = 0;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0;
    v38 = -1;
    v39 = 0;
    if (BlueFin::GlPeAlmanac::Import(&v30, a2, 4, 4, 0, a4, a5, a6, a7, a8))
    {
      *result.i64 = v32;
      v27 = &off_2A1F0E4D0;
      *v10.i64 = v32 - trunc(v32);
      v11.f64[0] = NAN;
      v11.f64[1] = NAN;
      result.i64[0] = vbslq_s8(vnegq_f64(v11), v10, result).i64[0];
      if (*result.i64 >= 1.0)
      {
        DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
      }

      v12 = *result.i64 * 4294967300.0 + 0.5;
      v13 = v12;
      if (v12 >= 4294967300.0)
      {
        v13 = -1;
      }

      v28 = v13;
      v29 = v32 + 604800 * v37 + 820108814;
      v27 = &off_2A1F0E4D0;
      BlueFin::GlPeTimeManager::GetTime(*(a1 + 88), 1, v21);
      v22 = &off_2A1F0E4D0;
      v23 = 0;
      Bds = BlueFin::GlPeGnssTime::GetBds(v21, &v22);
      v15 = (v27[4])(&v27, Bds);
      v43 = v28;
      v44 = v15;
      v16 = (v22[4])(&v22);
      v42[0] = v23;
      v42[1] = v16;
      BlueFin::GlTimePoint::resolveAmbiguity(&v43, v42, 0x93A8000u);
      v17 = (v22[3])(&v22, v44);
      v25 = v43;
      v26 = v17;
      v24 = &off_2A1F0E4D0;
      BlueFin::GlPeTimeManager::GetTime(*(a1 + 88), &v24, 1, v21);
      v22 = &off_2A1F0B5F0;
      v23 = 0;
      Gps = BlueFin::GlPeGnssTime::GetGps(v21, &v22);
      v37 = ((v22[4])(&v22, Gps) / 0x93A80);
      v32 = (v22[4])(&v22) % 0x93A80;
      BlueFin::GlPeAlmMgr::SetAsstAlm((*(a1 + 80) + 34112), &v30);
      if (*a2 <= 0x3EuLL)
      {
        v19 = a1 + 36 * *a2;
        v20 = *(a2 + 8);
        result = *a2;
        *(v19 + 16624) = *(a2 + 1);
        *(v19 + 16608) = result;
        *(v19 + 16640) = v20;
      }
    }
  }

  return result;
}

uint64_t BlueFin::GlPeTimeManager::GetTime@<X0>(BlueFin::GlPeTimeManager *this@<X0>, const BlueFin::GlBdsTime *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v10 = 0.0;
  v9 = *(a2 + 1);
  BlueFin::GlPeTimeManager::dateTimeToLms(this, 4, &v9, &v10);
  v7 = v10;

  return BlueFin::GlPeTimeManager::commonGnssToLms(this, v7, a3, a4);
}

__n128 BlueFin::GlPeLtoMgr::UpdateQzssAlmanac(uint64_t a1, unsigned __int8 *a2, double a3, double a4, int8x16_t a5, int8x16_t a6, double a7, int8x16_t a8)
{
  v23 = 7;
  v24 = 0;
  v13 = -65536;
  v14 = 0;
  v15 = 0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0;
  v21 = -1;
  v22 = 0;
  if (BlueFin::GlPeAlmanac::Import(&v13, a2, 3, 4, 0, a4, a5, a6, a7, a8))
  {
    BlueFin::GlPeAlmMgr::SetAsstAlm((*(a1 + 80) + 34112), &v13);
  }

  if (*a2 <= 0x3EuLL)
  {
    v11 = a1 + 36 * *a2;
    result = *a2;
    v12 = *(a2 + 1);
    *(v11 + 16280) = *(a2 + 8);
    *(v11 + 16248) = result;
    *(v11 + 16264) = v12;
  }

  return result;
}

__n128 BlueFin::GlPeLtoMgr::UpdateGpsAlmanac(uint64_t a1, unsigned __int8 *a2, double a3, double a4, int8x16_t a5, int8x16_t a6, double a7, int8x16_t a8)
{
  v23 = 7;
  v24 = 0;
  v13 = -65536;
  v14 = 0;
  v15 = 0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0;
  v21 = -1;
  v22 = 0;
  if (BlueFin::GlPeAlmanac::Import(&v13, a2, 0, 4, 0, a4, a5, a6, a7, a8))
  {
    BlueFin::GlPeAlmMgr::SetAsstAlm((*(a1 + 80) + 34112), &v13);
  }

  if (*a2 <= 0x3EuLL)
  {
    v11 = a1 + 36 * *a2;
    result = *a2;
    v12 = *(a2 + 1);
    *(v11 + 14360) = *(a2 + 8);
    *(v11 + 14328) = result;
    *(v11 + 14344) = v12;
  }

  return result;
}

uint64_t BlueFin::GlPeAlmanac::Import(BlueFin::GlPeAlmanac *this, unsigned __int8 *a2, int a3, int a4, int8x16_t a5, double a6, int8x16_t a7, int8x16_t a8, double a9, int8x16_t a10)
{
  v12 = 0;
  v13 = 7078137;
  *(this + 26) = a3;
  v14 = *a2;
  *(this + 108) = v14 + 1;
  v15 = 10000;
  if (a3 >= 3)
  {
    if (a3 > 3)
    {
      if (a3 == 4)
      {
        if (v14 <= 0x3E)
        {
          *this = (v14 + 1);
          a5.i16[0] = *(a2 + 1);
          *a5.i64 = a5.u64[0] * 0.000000476837158 + 0.0;
          v16 = *a5.i64 <= 0.0625 && *a5.i64 >= 0.0;
          v15 = 0x2000;
          v12 = 1;
          goto LABEL_27;
        }

        return 0;
      }

      if (a3 == 5)
      {
        DeviceFaultNotify("glpe_almmgr.cpp", 429, "Import", "0");
        v18 = 429;
      }

      else
      {
        v16 = 0;
        if (a3 != 6)
        {
          goto LABEL_27;
        }

        DeviceFaultNotify("glpe_almmgr.cpp", 434, "Import", "0");
        v18 = 434;
      }

LABEL_81:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_almmgr.cpp", v18, "0");
    }

    if (v14 > 9)
    {
      return 0;
    }

    goto LABEL_14;
  }

  if (a3)
  {
    if (a3 != 1)
    {
      v16 = 0;
      if (a3 != 2)
      {
        goto LABEL_27;
      }

      DeviceFaultNotify("glpe_almmgr.cpp", 394, "Import", "0");
      v18 = 394;
      goto LABEL_81;
    }

    if (v14 > 0x12)
    {
      return 0;
    }

LABEL_14:
    *this = (v14 - 63);
    v15 = 10000;
    v12 = 1;
    v16 = 1;
    goto LABEL_27;
  }

  if (v14 > 0x1F)
  {
    return 0;
  }

  v13 = 6400900;
  *this = (v14 + 1);
  a5.i16[0] = *(a2 + 1);
  *a5.i64 = a5.u64[0] * 0.000000476837158 + 0.0;
  v16 = *a5.i64 <= 0.03 && *a5.i64 >= 0.0;
  v17 = *(a2 + 4) * 1.14290475e-11;
  v12 = v17 >= -0.00000198862815 && v17 <= 0.0;
  v15 = 0x2000;
LABEL_27:
  *a10.i64 = vcvtd_n_f64_u32(*(a2 + 3), 0xBuLL);
  *a5.i64 = *a10.i64 + trunc(*a10.i64 * 2.32830644e-10) * -4294967300.0;
  v19.f64[0] = NAN;
  v19.f64[1] = NAN;
  v20 = vnegq_f64(v19);
  v21 = vbslq_s8(v20, a5, a10);
  if (*a10.i64 <= 4294967300.0)
  {
    v21.i64[0] = a10.i64[0];
  }

  if (*v21.i64 < -4294967300.0)
  {
    *a7.i64 = -*v21.i64;
    *v21.i64 = -(*v21.i64 - trunc(*v21.i64 * -2.32830644e-10) * -4294967300.0);
    v21 = vbslq_s8(v20, v21, a7);
    *v21.i64 = -*v21.i64;
  }

  if (*v21.i64 < 0.0)
  {
    v22 = --*v21.i64;
  }

  else
  {
    v22 = *v21.i64;
  }

  v23 = v22 + 1;
  v24 = a2[4];
  v26 = v23 > v15 || v13 > v23 * v23;
  v27 = *(a2 + 2);
  v28 = (v27 - 0x800000) >> 24;
  v29 = (HIDWORD(v27) - 0x800000) >> 24;
  v30 = *(a2 + 6);
  v31 = *(a2 + 15);
  v32 = *(a2 + 14);
  v33 = (v30 - 0x800000) >> 24;
  v34 = (v31 - 1024) >> 11;
  v35 = (v32 - 1024) >> 11;
  if (v24 > 0x93 || v28 != 255 || v29 != 255 || v26 || (v30 - 0x800000) >> 24 != 255 || v34 < 0x1F || v35 < 0x1F || !v16 || !v12)
  {
    if ((a2[4] > 0x93u || v28 != 255 || (HIDWORD(v27) - 0x800000) >> 24 != 255 || v26) && a2[4] > 0x93u)
    {
      v47 = "toa ";
    }

    else
    {
      v47 = "";
    }

    v61 = v47;
    v48 = v12;
    v49 = v16;
    v50 = BlueFin::GNSS2STR(a3);
    v51 = "Asqrt ";
    if (!v26)
    {
      v51 = "";
    }

    v52 = "omega0 ";
    if (v28 >= 0xFF)
    {
      v52 = "";
    }

    v53 = "omega ";
    if (v29 >= 0xFF)
    {
      v53 = "";
    }

    v54 = "M0 ";
    if (v33 >= 0xFF)
    {
      v54 = "";
    }

    v55 = "a_f0 ";
    if (v34 >= 0x1F)
    {
      v55 = "";
    }

    v56 = "a_f1 ";
    if (v35 >= 0x1F)
    {
      v56 = "";
    }

    v57 = "e ";
    if (v49)
    {
      v57 = "";
    }

    v58 = "omega_dot ";
    if (v48)
    {
      v58 = "";
    }

    GlCustomLog(14, "Reject Alm %s %d [ %s%s%s%s%s%s%s%s%s]\n", v50, *(this + 108), v61, v51, v52, v53, v54, v55, v56, v57, v58);
    return 0;
  }

  *(this + 44) = a2[32];
  *(this + 1) = *(a2 + 17);
  v21.i16[0] = *(a2 + 1);
  *v21.i64 = v21.u64[0];
  v36 = 0.06;
  if (v14 - 5 < 5)
  {
    v36 = 0.0;
  }

  if (a3 != 3)
  {
    v36 = 0.0;
  }

  *(this + 1) = v36 + *v21.i64 * 0.000000476837158;
  *v21.i64 = v24 * 4096.0;
  *a8.i64 = *v21.i64 + trunc(*v21.i64 * 2.32830644e-10) * -4294967300.0;
  v37.f64[0] = NAN;
  v37.f64[1] = NAN;
  v38 = vnegq_f64(v37);
  a8.i64[0] = vbslq_s8(v38, a8, v21).u64[0];
  if (*v21.i64 > 4294967300.0)
  {
    v21.i64[0] = a8.i64[0];
  }

  v60 = a10.i64[0];
  v59 = v27;
  v39 = v32;
  if (*v21.i64 < -4294967300.0)
  {
    *a7.i64 = -*v21.i64;
    *v21.i64 = -(*v21.i64 - trunc(*v21.i64 * -2.32830644e-10) * -4294967300.0);
    *v21.i64 = -*vbslq_s8(v38, v21, a7).i64;
  }

  if (*v21.i64 < 0.0)
  {
    v41 = --*v21.i64;
  }

  else
  {
    v41 = *v21.i64;
  }

  *(this + 4) = v41;
  v42 = BlueFin::GlPeAlmanac::deltaI_semicircles_to_i0_rad(this, vcvtd_n_f64_s32(*(a2 + 3), 0x13uLL));
  v43.i64[0] = v59;
  v43.i64[1] = SHIDWORD(v59);
  v44.f64[0] = v30;
  v45 = *(a2 + 4) * 1.14290475e-11;
  *(this + 3) = v42;
  *(this + 4) = v45;
  *(this + 5) = v60;
  v44.f64[1] = v31;
  *(this + 3) = vmulq_f64(vcvtq_f64_s64(v43), vdupq_n_s64(0x3E9921FB54442D19uLL));
  *(this + 4) = vmulq_f64(v44, xmmword_298A3B2D0);
  *(this + 10) = v39 * 3.63797881e-12;
  *(this + 23) = a4;
  *(this + 96) = 0;
  return 1;
}

uint64_t BlueFin::GlPeLtoMgr::deserializeLtoSlice(BlueFin::GlPeLtoMgr *this, BlueFin::GlSysLogEntry *a2)
{
  v87 = *MEMORY[0x29EDCA608];
  if (*(a2 + 2) != 119)
  {
    goto LABEL_28;
  }

  v3 = (this + 1648);
  v79 = &unk_2A1F106E8;
  memset(v82, 0, 76);
  v4 = *(this + 412);
  if (v4 == 2)
  {
    goto LABEL_28;
  }

  if (v4 != 1)
  {
    if (v4)
    {
      goto LABEL_72;
    }

    v5 = BlueFin::GlPeLtoSliceInterface::Deserialize(&v79, a2);
    if (v80)
    {
      v6 = 0;
    }

    else
    {
      v6 = v5;
    }

    if (v6 == 1)
    {
      if (HIDWORD(v80) < 6 && ((0x3Du >> SBYTE4(v80)) & 1) != 0)
      {
        v7 = v3 + qword_298A40708[HIDWORD(v80)];
        *(this + 207) = v7;
        if (v81)
        {
          v8 = BYTE4(v81);
          v9 = *(v7 + 2);
          v10 = v9 >= 7 ? 0 : 0xE243F0A181320uLL >> (8 * v9);
          if ((v10 & 0x3Fu) >= BYTE4(v81))
          {
            *v7 = v81;
            v7[4] = v8;
            v7[5] = 0;
            v11 = 1;
            *v3 = 1;
            goto LABEL_29;
          }
        }
      }

      else
      {
        *(this + 207) = 0;
      }
    }

    goto LABEL_28;
  }

  v12 = BlueFin::GlPeLtoSliceInterface::Deserialize(&v79, a2);
  if (v80 == 1)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if ((v13 & 1) == 0)
  {
    *(this + 412) = 0;
    v22 = *(this + 207);
    if (v22)
    {
      BlueFin::GlPeLtoSlice::Clear(v22);
    }

    goto LABEL_28;
  }

  v14 = *(this + 207);
  if (!v14 || (v15 = *(v14 + 5), v16 = *(v14 + 4), v15 >= v16))
  {
LABEL_28:
    v11 = 0;
    goto LABEL_29;
  }

  v17 = *(v14 + 16) + 76 * *(v14 + 5);
  if (v17 == v82)
  {
    v21 = *(this + 207);
  }

  else
  {
    *v17 = *v82;
    v18 = *&v82[16];
    v19 = *&v82[32];
    v20 = *&v82[48];
    *(v17 + 60) = *&v82[60];
    *(v17 + 32) = v19;
    *(v17 + 48) = v20;
    *(v17 + 16) = v18;
    LOBYTE(v15) = *(v14 + 5);
    v21 = *(this + 207);
    v16 = *(v21 + 4);
  }

  *(v14 + 5) = v15 + 1;
  if (*(v21 + 5) < v16)
  {
    goto LABEL_72;
  }

  *(this + 207) = 0;
  *(this + 412) = 0;
  BlueFin::GlPeTimeManager::GetTime(*(this + 11), 1, v83);
  v79 = &off_2A1F0B5F0;
  v80 = 0;
  Gps = BlueFin::GlPeGnssTime::GetGps(v83, &v79);
  v31 = (v79[4])(&v79, Gps);
  LODWORD(v30) = v80;
  *v31.i64 = v30 * 2.32830644e-10 + v29;
  *v32.i64 = *v31.i64 + trunc(*v31.i64 * 2.32830644e-10) * -4294967300.0;
  v33.f64[0] = NAN;
  v33.f64[1] = NAN;
  v34 = vnegq_f64(v33);
  *&v35 = vbslq_s8(v34, v32, v31).u64[0];
  if (*v31.i64 > 4294967300.0)
  {
    *v31.i64 = v35;
  }

  if (*v31.i64 < -4294967300.0)
  {
    *v28.i64 = -*v31.i64;
    *v31.i64 = -(*v31.i64 - trunc(*v31.i64 * -2.32830644e-10) * -4294967300.0);
    *v31.i64 = -*vbslq_s8(v34, v31, v28).i64;
  }

  if (*v31.i64 < 0.0)
  {
    v36 = --*v31.i64;
  }

  else
  {
    v36 = *v31.i64;
  }

  v37 = v21[2];
  LOBYTE(v80) = (16 * v37) | 2;
  BYTE1(v80) = 19;
  v81 = &v82[8];
  *v82 = vdup_n_s32(0xFF9222FF);
  memset(&v82[8], 0, 76);
  v79 = &unk_2A1F0F470;
  v38 = *v21;
  if (!*(v21 + 4))
  {
    *(this + v37 + 240) = v38;
    v68 = *v21;
    goto LABEL_69;
  }

  v39 = 0;
  v40 = 0;
  v41 = 0;
  v70 = v36 - v38;
  v71 = v36;
  v42.f64[0] = NAN;
  v42.f64[1] = NAN;
  v69 = vnegq_f64(v42);
  do
  {
    v43 = BYTE1(v80);
    if (BYTE1(v80))
    {
      v44 = v81;
      v45 = (*(v21 + 2) + v39);
      do
      {
        v46 = *v45++;
        *v44++ = v46;
        --v43;
      }

      while (v43);
    }

    v47 = v37;
    v48 = v37 == 0;
    v49 = v80;
    (v79[17])(v78, &v79);
    v77 = v49 >> 4;
    CmpUnsignedField = BlueFin::GlPeGpsEphemerisBase::GetCmpUnsignedField(&v79, 28);
    v51 = (v79[24])(&v79, 18);
    v52 = (v79[29])(&v79, 18);
    updated = BlueFin::GlPeLtoMgr::UpdateEphemeris(this, &v79, v48, v71, v70);
    v54 = v52 * v51;
    if (updated)
    {
      BlueFin::GlGnssSet::Remove(this + 26496, &v77);
      AbbrevGnssName = BlueFin::GlGnss::GetAbbrevGnssName(v77);
      GlCustomLog(14, "LtoMgr: read LTO (%s %d) from NVMEM! Trunc Wn: %d Toe: %ds\n", AbbrevGnssName, v78[0], CmpUnsignedField, v52 * v51);
      goto LABEL_60;
    }

    v58 = BlueFin::GlPeEphemeris::TimeToExpirationS(&v79, v83);
    if (v77 == 5 && (v78[0] == 18 || v78[0] == 14))
    {
      if (BlueFin::GlPeLtoEphemeris::GetCurveFitIntervalS(&v79) >> 5 <= 0x2A2 || v58 != 0)
      {
        goto LABEL_58;
      }
    }

    else if (v58)
    {
LABEL_58:
      v59 = 70;
      goto LABEL_59;
    }

    BlueFin::GlGnssSet::Add(this + 26496, &v77);
    v59 = 84;
LABEL_59:
    v60 = BlueFin::GlGnss::GetAbbrevGnssName(v77);
    GlCustomLog(14, "LtoMgr: read LTO (%s %d) from NVMEM, but rejected by EphMgr! Exp: %c\n", v60, v78[0], v59);
LABEL_60:
    if (!v41)
    {
      *v56.i64 = v54;
      v74 = &off_2A1F0B5F0;
      *v57.i64 = v54 - trunc(v54);
      v56.i64[0] = vbslq_s8(v69, v57, v56).i64[0];
      if (*v56.i64 >= 1.0)
      {
        DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
      }

      v61 = *v56.i64 * 4294967300.0 + 0.5;
      v62 = v61;
      if (v61 >= 4294967300.0)
      {
        v62 = -1;
      }

      v75 = v62;
      v76 = v54 + 604800 * CmpUnsignedField;
      v73 = 0;
      v74 = &off_2A1F0B5F0;
      v72 = &off_2A1F0B5F0;
      v63 = BlueFin::GlPeGnssTime::GetGps(v83, &v72);
      v64 = (v74[4])(&v74, v63);
      v85 = v75;
      v86 = v64;
      v65 = (v72[4])(&v72);
      v84[0] = v73;
      v84[1] = v65;
      BlueFin::GlTimePoint::resolveAmbiguity(&v85, v84, 0x24EA0000u);
      v66 = (v72[3])(&v72, v86);
      v66.n128_u32[0] = v85;
      v41 = (v66.n128_u64[0] * 2.32830644e-10 + v67);
    }

    BlueFin::GlGnssSet::Add(this + 1216, &v77);
    ++v40;
    v39 += 76;
    v37 = v47;
  }

  while (v40 < *(v21 + 4));
  v37 = v21[2];
  v68 = *v21;
  *(this + v37 + 240) = *v21;
  if (!v41)
  {
LABEL_69:
    v41 = v68 + 10800;
  }

  if (*(this + v37 + 247) < v41)
  {
    *(this + v37 + 247) = v41;
  }

LABEL_72:
  v11 = 1;
LABEL_29:
  v23 = (this + 26443);
  if (*(this + 26443) != 0 && (*v23 != *(this + 200) || *(this + 26451) != *(this + 201)))
  {
    BlueFin::GlPeLtoMgr::SetLtoDigest(this, v23, 0);
    BlueFin::GlPeLtoMgr::UpdateDigest(this);
    *(this + 410) = *(this + 6615);
  }

  v25 = *MEMORY[0x29EDCA608];
  return v11;
}

uint64_t BlueFin::GlGnssSet::Remove(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  if (*a2 > 6 || (v4 = *(a2 + 4), (v4 - 1) >= 0x3F))
  {
    DeviceFaultNotify("glgnss.cpp", 279, "Remove", "rtGnss.isValid()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glgnss.cpp", 279, "rtGnss.isValid()");
  }

  v5 = *(a1 + 168) + 24 * v3;

  return BlueFin::GlSetBase::Remove(v5, v4);
}

BOOL BlueFin::GlPeGloEphMgr::processCandidateEphemeris(BlueFin::GlPeGloEphMgr *this, const BlueFin::GlPeEphemeris *a2, char a3)
{
  v5 = BlueFin::GlPeEphemerisMgr::processCandidateEphemeris(this, a2, a3);
  if (v5 && *(this + 68))
  {
    (*(*a2 + 136))(&v12, a2);
    v6 = v12;
    v7 = *(a2 + 8) & 0xF;
    if (v7 == 1)
    {
      v8 = 4;
    }

    else
    {
      if (v7 != 2 || !(*(*a2 + 192))(a2, 35))
      {
        return v5;
      }

      v8 = 36;
    }

    v9 = (*(*a2 + 208))(a2, v8);
    if (v9 != 248)
    {
      v10 = *(this + 68);
      *(v10 + 20 * v9 + 572) = -7200001;
      *(v10 + 16 * v6 + 700) = -7200001;
    }
  }

  return v5;
}

uint64_t BlueFin::GlPeLtoEphemeris::GetOrbitType(BlueFin::GlPeLtoEphemeris *this)
{
  ScaledFloatingField = BlueFin::GlPeEphemeris::GetScaledFloatingField(this, 22);
  if (BlueFin::GlPeEphemeris::GetScaledFloatingField(this, 17) <= 6000.0)
  {
    return 2;
  }

  else
  {
    return ScaledFloatingField > 0.314159265;
  }
}

uint64_t BlueFin::GlPeEphemerisMgr::CompareLtoBeGeometricRange(uint64_t a1, unsigned __int8 *a2, double *a3, double *a4)
{
  v19 = 0;
  if (!BlueFin::GlPeLtoMgr::GetLtoDataAgeS(*(a1 + 32), *(a1 + 12), *(*(a1 + 16) + 2568), &v19) || v19 < 604800)
  {
    return 2;
  }

  v9 = *(a1 + 24);
  if (*(v9 + 44) == -1)
  {
    return 2;
  }

  v10 = *(v9 + 88);
  v11 = *(v9 + 96);
  v12 = *(v9 + 104);
  v13 = ((v19 / 0xA8C0u) & 0x1FFFE);
  v14 = vabdd_f64(sqrt((a3[1] - v11) * (a3[1] - v11) + (*a3 - v10) * (*a3 - v10) + (a3[2] - v12) * (a3[2] - v12)), sqrt((a4[1] - v11) * (a4[1] - v11) + (*a4 - v10) * (*a4 - v10) + (a4[2] - v12) * (a4[2] - v12)));
  v15 = v14 >= v13;
  if (v14 < v13)
  {
    v16 = "<";
  }

  else
  {
    v16 = ">=";
  }

  v17 = BlueFin::GNSS2STR(*(a1 + 12));
  GlCustomLog(14, "CompareLtoBEGeoRng(%s,%d): deltaRng:%.1f m %s %.1f m\n", v17, *a2, v14, v16, v13);
  return v15;
}

uint64_t BlueFin::GlPeEphemerisMgr::validateLtoWithBE(BlueFin::GlPeEphemerisMgr *this, const BlueFin::GlPeEphemeris *a2, const BlueFin::GlPeEphemeris *a3)
{
  v6 = (*(*a2 + 144))(a2);
  v7 = (*(*a3 + 144))(a3);
  if ((v6 == 2) == (v7 == 2))
  {
    v15 = "bEphA_is_LTO != bEphB_is_LTO";
    DeviceFaultNotify("glpe_ephmgr.cpp", 2238, "validateLtoWithBE", "bEphA_is_LTO != bEphB_is_LTO");
    v16 = 2238;
    goto LABEL_37;
  }

  v8 = v7;
  if (v6 == 2)
  {
    v9 = a2;
  }

  else
  {
    v9 = a3;
  }

  if (v7 == 2)
  {
    v10 = a2;
  }

  else
  {
    v10 = a3;
  }

  if ((*(v10 + 8) & 0xF) != 1)
  {
    v15 = "rotBE.GetFormat() == GlPeEphemeris::FORMAT_NATIVE";
    DeviceFaultNotify("glpe_ephmgr.cpp", 2243, "validateLtoWithBE", "rotBE.GetFormat() == GlPeEphemeris::FORMAT_NATIVE");
    v16 = 2243;
LABEL_37:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ephmgr.cpp", v16, v15);
  }

  result = (*(*v9 + 40))(v9);
  if (!result)
  {
    return result;
  }

  result = (*(*v10 + 40))(v10);
  if (!result || (*(v10 + 8) & 0xF0) == 0x20 && *(*(this + 2) + 2589))
  {
    return result;
  }

  (*(*v9 + 136))(&v28 + 1, v9);
  result = (*(*v10 + 136))(&v28, v10);
  if (BYTE1(v28) != v28)
  {
    return result;
  }

  BlueFin::GlPeTimeManager::GetTime(*(this + 2), 1, v27);
  result = BlueFin::GlPeEphemeris::isExpired(v10, v27);
  if (result)
  {
    return result;
  }

  result = BlueFin::GlPeEphemeris::isExpired(v9, v27);
  if (result)
  {
    return result;
  }

  if (v6 == 2)
  {
    result = (*(*a3 + 184))(a3);
    if (!result)
    {
      return result;
    }
  }

  if (v8 == 2)
  {
    result = (*(*a2 + 184))(a2);
    if (!result)
    {
      return result;
    }
  }

  v26 = 0;
  memset(v24, 0, sizeof(v24));
  v25 = 0;
  v23 = 0;
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  result = (*(*v10 + 112))(v10, v27, v21, 0.0);
  if (!result)
  {
    return result;
  }

  result = (*(*v9 + 112))(v9, v27, v24, 0.0);
  if (!result)
  {
    return result;
  }

  v12 = (*(*this + 400))(this, &v28 + 1, v24, v21);
  if (v12 != 1)
  {
    if (!v12)
    {
      BlueFin::GlPeLtoMgr::GetBadSvSet(*(this + 4), *(this + 3), 0, v20);
      if ((*(*v20 + ((BYTE1(v28) >> 3) & 0x1C)) >> (BYTE1(v28) & 0x1F)))
      {
        BlueFin::GlPeLtoMgr::RemoveSvFromBadSet(*(this + 4), *(this + 3), BYTE1(v28), 0);
        BlueFin::GNSS2STR(*(this + 3));
        GlCustomLog(14, "rehabilitate the suspected LTO(%s,%d)!\n");
      }
    }

    goto LABEL_40;
  }

  BlueFin::GlPeLtoMgr::GetBadSvSet(*(this + 4), *(this + 3), 1, v20);
  if (((*(*v20 + ((BYTE1(v28) >> 3) & 0x1C)) >> (BYTE1(v28) & 0x1F)) & 1) == 0)
  {
    v13 = *(this + 4);
    v14 = *(this + 3);
    if ((*(v13 + 1636) & 4) != 0)
    {
      goto LABEL_30;
    }

    LOBYTE(v20[0]) = BYTE1(v28);
    BlueFin::GlGnssSet::Add(v13 + 576, v14, v20);
  }

  v14 = *(this + 3);
LABEL_30:
  if (v14 == 4)
  {
    (*(*this + 288))(this, &v28 + 1, 0);
    BlueFin::GNSS2STR(*(this + 3));
    GlCustomLog(14, "SuspectBE did not match Lto (%s,%d), mark Lto Bad, suspected bad decode BE.\n");
  }

  else
  {
    if ((*(*v10 + 184))(v10))
    {
      BlueFin::GNSS2STR(*(this + 3));
      GlCustomLog(14, "suspected Lto (%s,%d)\n");
    }

    else
    {
      BlueFin::GlGnssIdSet::Add(this + 48, &v28 + 1);
      BlueFin::GlGnssIdSet::Add(this + 54, &v28 + 1);
      BlueFin::GNSS2STR(*(this + 3));
      GlCustomLog(14, "SuspectBE did not match Lto (%s,%d), mark Lto Bad, requiring verification of BE.\n");
    }

    BlueFin::GlPeRangeAidGen::RemoveSvFromEph(*(this + 10), *(this + 3), BYTE1(v28));
  }

LABEL_40:
  result = (*(*this + 408))(this, &v28 + 1, v24, v21);
  if (result == 1)
  {
    BlueFin::GlPeLtoMgr::GetBadSvSet(*(this + 4), *(this + 3), 1, v20);
    if (((*(*v20 + ((BYTE1(v28) >> 3) & 0x1C)) >> (BYTE1(v28) & 0x1F)) & 1) == 0)
    {
      v17 = *(this + 4);
      if ((*(v17 + 1636) & 4) == 0)
      {
        v18 = *(this + 3);
        LOBYTE(v20[0]) = BYTE1(v28);
        BlueFin::GlGnssSet::Add(v17 + 576, v18, v20);
      }
    }

    v19 = BlueFin::GNSS2STR(*(this + 3));
    return GlCustomLog(14, "suspected Lto (%s,%d) because range exceeds limit\n", v19, BYTE1(v28));
  }

  return result;
}

BOOL BlueFin::GlPeEphemerisMgr::CompareLtoBEPos(uint64_t a1, unsigned __int8 *a2, double *a3, double *a4)
{
  v5 = a3[1] - a4[1];
  v6 = a3[2] - a4[2];
  v7 = v5 * v5 + (*a3 - *a4) * (*a3 - *a4) + v6 * v6;
  v8 = vabdd_f64(a3[6], a4[6]) * 299792458.0;
  v9 = v8 >= 70.0 || v7 >= 40000.0;
  v10 = BlueFin::GNSS2STR(*(a1 + 12));
  GlCustomLog(14, "CompareLtoBEPos(%s,%d): deltaPos:%.1f m  deltaClk:%.1f m\n", v10, *a2, sqrt(v7), v8);
  return v9;
}

uint64_t *BlueFin::GlPeLtoEphemeris::PutCmpUnsignedField(BlueFin::GlPeLtoEphemeris *this, signed int a2, unsigned int a3)
{
  v6 = *(this + 2);
  v7 = 4 * *(this + 9);
  v14 = 0;
  BlueFin::GlBitBuffer::Initialize(v13, v6, v7);
  if (a2 > 34)
  {
    if (a2 == 35)
    {
      v11 = 580;
LABEL_14:
      BlueFin::GlBitBuffer::Position(v13, v11);
      v8 = a3;
      v9 = 1;
      return BlueFin::GlBitBuffer::PutU(v13, v8, v9);
    }

    if (a2 != 36)
    {
      if (a2 == 37)
      {
        BlueFin::GlBitBuffer::Position(v13, 0x1DCu);
        v8 = a3;
        v9 = 23;
        return BlueFin::GlBitBuffer::PutU(v13, v8, v9);
      }

      return BlueFin::GlPeGpsEphemerisBase::PutCmpUnsignedField(this, a2, a3);
    }

    v10 = 581;
LABEL_16:
    BlueFin::GlBitBuffer::Position(v13, v10);
    v8 = a3;
    v9 = 4;
    return BlueFin::GlBitBuffer::PutU(v13, v8, v9);
  }

  if (a2 == 32)
  {
    v10 = 565;
    goto LABEL_16;
  }

  if (a2 == 33)
  {
    v11 = 569;
    goto LABEL_14;
  }

  if (a2 != 34)
  {
    return BlueFin::GlPeGpsEphemerisBase::PutCmpUnsignedField(this, a2, a3);
  }

  BlueFin::GlBitBuffer::Position(v13, 0x23Au);
  v8 = a3;
  v9 = 10;
  return BlueFin::GlBitBuffer::PutU(v13, v8, v9);
}

uint64_t BlueFin::GlPeClkCalibrateMgr::GetValidClkCalibrateParams(uint64_t a1, int a2, unsigned int a3)
{
  result = 0;
  v6 = a2;
  v7 = a3;
  if (!a2 && a3 - 1 <= 0x1F)
  {
    if (BlueFin::GlGnssSet::Has(a1 + 1152, &v6))
    {
      return *(a1 + 1120) + 32 * (a3 - 1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t BlueFin::GlPeClkCalibrateMgr::ApplyClockCalibrationParameters(BlueFin::GlPeClkCalibrateMgr *this, BlueFin::GlPeLtoEphemeris *a2, unsigned int a3, int a4)
{
  v8 = *(a2 + 8) >> 4;
  (*(*a2 + 136))(&v49, a2);
  v52 = v8;
  v9 = v49;
  v53 = v49;
  ValidClkCalibrateParams = BlueFin::GlPeClkCalibrateMgr::GetValidClkCalibrateParams(this, v8, v49);
  if (!ValidClkCalibrateParams)
  {
    return 1;
  }

  *v11.i64 = (a3 % 0x93A80);
  v49 = &off_2A1F0B5F0;
  *v12.i64 = *v11.i64 - trunc(*v11.i64);
  v14.f64[0] = NAN;
  v14.f64[1] = NAN;
  v15 = vnegq_f64(v14);
  v16 = vbslq_s8(v15, v12, v11);
  if (*v16.i64 >= 1.0)
  {
    goto LABEL_39;
  }

  v17 = ValidClkCalibrateParams;
  v18 = *v16.i64 * 4294967300.0 + 0.5;
  v19 = v18;
  if (v18 >= 4294967300.0)
  {
    v19 = -1;
  }

  v50 = v19;
  v51 = a3;
  v49 = &off_2A1F0B5F0;
  v20 = *(ValidClkCalibrateParams + 28);
  v21 = *(ValidClkCalibrateParams + 24);
  *v16.i64 = v21;
  *v13.i64 = v21 - trunc(v21);
  v22 = *vbslq_s8(v15, v13, v16).i64;
  if (v22 >= 1.0)
  {
LABEL_39:
    DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
  }

  v23 = v22 * 4294967300.0 + 0.5;
  v24 = v23;
  if (v23 >= 4294967300.0)
  {
    v24 = -1;
  }

  LODWORD(v46) = v24;
  HIDWORD(v46) = v21 + 604800 * v20;
  v54[0] = v19;
  v54[1] = a3;
  BlueFin::GlTimePoint::resolveAmbiguity(&v46, v54, 0x24EA0000u);
  v28 = (v49[3])(&v49, HIDWORD(v46));
  v47 = v46;
  v48 = v26;
  v27 = v46;
  v46 = &off_2A1F0B5F0;
  *v28.i64 = v27 * 2.32830644e-10 + v26;
  *v29.i64 = *v28.i64 + trunc(*v28.i64 * 2.32830644e-10) * -4294967300.0;
  v30.f64[0] = NAN;
  v30.f64[1] = NAN;
  v31 = vnegq_f64(v30);
  *&v32 = vbslq_s8(v31, v29, v28).u64[0];
  if (*v28.i64 > 4294967300.0)
  {
    *v28.i64 = v32;
  }

  if (*v28.i64 < -4294967300.0)
  {
    *v25.i64 = -*v28.i64;
    *v28.i64 = -(*v28.i64 - trunc(*v28.i64 * -2.32830644e-10) * -4294967300.0);
    *v28.i64 = -*vbslq_s8(v31, v28, v25).i64;
  }

  if (*v28.i64 < 0.0)
  {
    v33 = --*v28.i64;
  }

  else
  {
    v33 = *v28.i64;
  }

  v34 = a3 - v33;
  if ((a3 - v33) > 604800)
  {
    return 2;
  }

  if (v34 > a4)
  {
    return 3;
  }

  if (v34 < -7200)
  {
    return 4;
  }

  if (a4 >> 8 < 0x2A3)
  {
    return 5;
  }

  v36 = (*(*a2 + 192))(a2, 4);
  result = 6;
  if (v36 >= 0xF)
  {
    v37 = 6;
  }

  else
  {
    v37 = 0;
  }

  if (v36 <= 0xE)
  {
    (*(*a2 + 224))(a2, 10, v17[4]);
    (*(*a2 + 224))(a2, 9, v17[5]);
    v38 = (v46[4])(&v46);
    (*(*a2 + 216))(a2, 34, v38 / 0x93A80uLL);
    v39 = v17[6];
    v40 = (*(*a2 + 232))(a2, 7);
    (*(*a2 + 216))(a2, 7, v39 / v40);
    (*(*a2 + 216))(a2, 33, 1);
    v41 = (v34 * 4.0) / 86400.0;
    if (v41 >= 0.0)
    {
      v43 = 0;
      while (BlueFin::GlPeGpsEphemerisBase::GetUraM(unsigned char)::afUraTbl[v43] < v41)
      {
        if (++v43 == 15)
        {
          LOBYTE(v43) = 2;
          break;
        }
      }

      if (v43 >= 6u)
      {
        v42 = 6;
      }

      else
      {
        v42 = v43;
      }
    }

    else
    {
      v42 = 2;
    }

    (*(*a2 + 216))(a2, 4, v42);
    BlueFin::GlGnssSet::Add(this + 1344, &v52);
    v44 = BlueFin::GNSS2STR(v8);
    v45 = (v46[4])(&v46);
    GlCustomLog(14, "ApplyCalibrationParameters LTO (%s,%d)(%d,%d)\n", v44, v9, v45 / 0x93A80, v17[6]);
    return v37;
  }

  return result;
}

uint64_t BlueFin::GlPeLtoFileContentStorageMgr::DeserializeLtoInfo(BlueFin::GlPeLtoFileContentStorageMgr *this, BlueFin::GlSysLogEntry *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v11 = 0uLL;
  v10 = &unk_2A1F10730;
  v3 = BlueFin::GlPeLtoInfoInterface::Deserialize(&v10, a2);
  if (v3)
  {
    v6 = &v8;
    v7 = 3;
    v8 = -1;
    v9 = -1;
    BlueFin::GlPeLtoFileContentStorageMgr::Clear(this, &v6);
    if ((this + 24795) != &v11)
    {
      *(this + 24795) = v11;
    }

    *(this + 6203) = v12;
  }

  v4 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t BlueFin::GlPeLtoInfoInterface::Deserialize(BlueFin::GlPeLtoInfoInterface *this, BlueFin::GlSysLogEntry *a2)
{
  v2 = *(a2 + 2) == 120 && *(a2 + 12) == 1;
  v3 = v2;
  if (v2)
  {
    BlueFin::GlSysLogEntry::GetBuffer(a2, this + 8, 0x10u);
    *(this + 6) = BlueFin::GlSysLogEntry::GetU32(a2);
    BlueFin::GlSysLogEntry::CheckConsumed(a2, 382);
  }

  return v3;
}

BlueFin::stTimeOfAsstPos *BlueFin::stTimeOfAsstPos::stTimeOfAsstPos(BlueFin::stTimeOfAsstPos *this, BlueFin::GlPeTimeManager *a2, const BlueFin::GlGpsTime *a3, unsigned int a4)
{
  *this = 0;
  *(this + 1) = 0xC15B773FC0000000;
  *(this + 2) = &off_2A1F0B5F0;
  *(this + 3) = 0;
  if ((*(*a3 + 32))(a3) < 0x93A80 || (v8 = (*(*a3 + 32))(a3), v9 = *(a3 + 2), v9 * 2.32830644e-10 + (v8 % 0x93A80) == 0.0))
  {
    *(this + 1) = 0;
    if ((*(*a3 + 32))(a3) < 0x93A80 && (v11 = (*(*a3 + 32))(a3), LODWORD(v12) = *(a3 + 2), v12 * 2.32830644e-10 + (v11 % 0x93A80) == 0.0) && (v13 = *(a2 + 642), v13 != -7200001))
    {
      v10 = v13;
      if (v13 <= 0xFF9222FE)
      {
        v10 = v13;
      }
    }

    else
    {
      v14 = (*(*a3 + 32))(a3);
      LODWORD(v15) = *(a3 + 2);
      v10 = *(this + 1) + (v15 * 2.32830644e-10 + v14) * 1000.0;
    }
  }

  else
  {
    if (!*(a2 + 644))
    {
      v17 = *(a3 + 3);
      *(this + 6) = v9;
      *(this + 7) = v17;
      *this = 1;
      v10 = *(this + 1);
      goto LABEL_10;
    }

    BlueFin::GlPeTimeManager::GetTime(a2, a3, 1, v18);
    v10 = *&v18[2];
  }

  *this = 2;
LABEL_10:
  *(this + 1) = v10 - (1000 * a4);
  return this;
}

uint64_t BlueFin::GlPeAsstPosData::Deserialize(BlueFin::GlPeAsstPosData *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 45)
  {
    return 0;
  }

  v3 = *(a2 + 12);
  if (v3 - 9 < 0xFFFFFFF8)
  {
    return 0;
  }

  if (v3 >= 7)
  {
    BlueFin::GlSysLogEntry::GetU32(a2);
  }

  *(this + 1) = BlueFin::GlSysLogEntry::GetD64(a2);
  *(this + 2) = BlueFin::GlSysLogEntry::GetD64(a2);
  *(this + 3) = BlueFin::GlSysLogEntry::GetD64(a2);
  *(this + 4) = BlueFin::GlSysLogEntry::GetD64(a2);
  *(this + 5) = BlueFin::GlSysLogEntry::GetD64(a2);
  S32 = BlueFin::GlSysLogEntry::GetS32(a2);
  U32 = BlueFin::GlSysLogEntry::GetU32(a2);
  if (BlueFin::GlSysLogEntry::GetU32(a2) - 1 <= 0x3FE)
  {
    v15 = "ulGpsWeekMod == 0 || ulGpsWeekMod >= 1024";
    DeviceFaultNotify("glpe_asstposmgr.cpp", 188, "Deserialize", "ulGpsWeekMod == 0 || ulGpsWeekMod >= 1024");
    v16 = "glpe_asstposmgr.cpp";
    v17 = 188;
    goto LABEL_23;
  }

  *v8.i64 = U32 * 0.001;
  *v9.i64 = *v8.i64 - trunc(*v8.i64);
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  v9.i64[0] = vbslq_s8(vnegq_f64(v10), v9, v8).i64[0];
  if (*v9.i64 < 0.0 || *v9.i64 >= 1.0)
  {
    v15 = "dFracSec >= 0.0 && dFracSec < 1.0";
    DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
    v16 = "glpe_timepoint.h";
    v17 = 173;
    goto LABEL_23;
  }

  v12 = *v9.i64 * 4294967300.0 + 0.5;
  v13 = v12;
  if (v12 >= 4294967300.0)
  {
    v13 = -1;
  }

  *(this + 14) = v13;
  *(this + 60) = *v8.i64 + 604800 * S32;
  if (*(a2 + 12) < 3u || (*(this + 16) = BlueFin::GlSysLogEntry::GetU16(a2), *(a2 + 12) <= 3u))
  {
    *(this + 17) = 1;
    *(this + 72) = 0;
  }

  else
  {
    *(this + 17) = BlueFin::GlSysLogEntry::GetU16(a2);
    v14 = *(a2 + 12);
    *(this + 72) = 0;
    if (v14 >= 8)
    {
      *(this + 72) = BlueFin::GlSysLogEntry::GetU16(a2) != 0;
    }
  }

  if (*(a2 + 11) != *(a2 + 10))
  {
    v15 = "otEntry.DataSize() == otEntry.ReadIdx()";
    DeviceFaultNotify("glpe_asstposmgr.cpp", 215, "Deserialize", "otEntry.DataSize() == otEntry.ReadIdx()");
    v16 = "glpe_asstposmgr.cpp";
    v17 = 215;
LABEL_23:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v16, v17, v15);
  }

  return 1;
}

uint64_t BlueFin::GlPeAsstPosMgr::Deserialize(BlueFin::GlPeTimeManager **this, BlueFin::GlSysLogEntry *a2, int a3, unsigned int a4)
{
  v18 = &unk_2A1F0E928;
  v19 = 0u;
  v20 = 0u;
  v21 = 0;
  v22 = &off_2A1F0B5F0;
  v23 = xmmword_298A3B550;
  v24 = 0;
  if ((BlueFin::GlPeAsstPosData::Deserialize(&v18, a2) & 1) == 0)
  {
    DeviceFaultNotify("glpe_asstposmgr.cpp", 601, "Deserialize", "otAsstPosData.Deserialize(rtEntry)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_asstposmgr.cpp", 601, "otAsstPosData.Deserialize(rtEntry)");
  }

  BlueFin::stTimeOfAsstPos::stTimeOfAsstPos(v17, this[37], &v22, 0);
  if (a3 && (*(this + 313) & 1) == 0)
  {
    GlCustomLog(14, "GlPeAsstPosMgr:: Calling addRandomPosError from Deserialize\n");
    v10 = &unk_2A1F0E928;
    v11 = v19;
    v12 = v20;
    v13 = v21;
    v14 = &off_2A1F0B5F0;
    v15 = v23;
    v16 = v24;
    return BlueFin::GlPeAsstPosMgr::addRandomPosError(this, &v10, a4, 1);
  }

  else
  {
    if (a4)
    {
      BlueFin::stTimeOfAsstPos::operator+=(v17, -a4);
      GlCustomLog(14, "GlPeAsstPosMgr::processAssistance - forced age %u seconds\n", a4);
    }

    return BlueFin::GlPeAsstPosMgr::processAssistance(this, &v19, SDWORD2(v23), SHIDWORD(v23), v17, 1, v24, v7, v8);
  }
}

BOOL BlueFin::GlPeReqBag::IsEnhancedEmergencyReqReallyExpiring(BlueFin::GlPeReqBag *this)
{
  v2 = 0;
  v14 = this + 3233;
  v15 = *(this + 3233);
  *(this + 3233) = 0;
  v3 = 1;
  do
  {
    v4 = *(this + v2);
    if (v4)
    {
      v5 = *(v4 + 8);
      if (v5[4] == 1)
      {
        if ((*(*v5 + 400))(v5))
        {
          v6 = *(this + v2);
          v7 = *(v6 + 36);
          v8 = *(v6 + 8);
          if (v7 == -1)
          {
            v12 = 1001;
          }

          else
          {
            v9 = *(v8 + 28);
            v10 = *(v6 + 32) + v7;
            v11 = v10 >= v9;
            v12 = v10 - v9 + 1000;
            if (!v11)
            {
              v12 = 1001;
            }
          }

          if (v12 > 1000 * *(v8 + 22))
          {
            break;
          }
        }
      }
    }

    v3 = v2++ < 0x47;
  }

  while (v2 != 72);
  *v14 = v15;
  return v3;
}

uint64_t BlueFin::GlPeComputeZRH::RecomputeIntegers()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v42 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v0;
  *&v89[5550] = *MEMORY[0x29EDCA608];
  result = BlueFin::GlPeMsmtMgr::Init_IntPr(*(v0 + 4320));
  v10 = *v7;
  if (!**v7)
  {
    v15 = v7[8];
    if (v15 < 2)
    {
      goto LABEL_41;
    }

    v16 = v15 - 1;
    v17 = v10 + 1;
    while (!*v17++)
    {
      if (!--v16)
      {
        goto LABEL_41;
      }
    }
  }

  v11 = &v88;
  v12 = 5600;
  do
  {
    *(v11 - 8) = 0;
    *(v11 - 1) = -1;
    *v11 = 575;
    v11 += 7;
    v12 -= 56;
  }

  while (v12);
  v82 = &v84;
  v13 = 4;
  v83 = 4;
  v84 = 0uLL;
  LODWORD(v67) = v7[8];
  memcpy(&v68, v10, 4 * v67);
  HIDWORD(v67) = v68;
  BlueFin::GlSetIterator::operator++(&v67);
  if (BYTE1(v67) == v67)
  {
    v14 = &v84;
  }

  else
  {
    v19 = v89;
    do
    {
      if (WORD1(v67) >= 0x23FuLL)
      {
        goto LABEL_42;
      }

      v20 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * WORD1(v67);
      v21 = *v20;
      LODWORD(v20) = v20[1];
      LOBYTE(v70) = v21;
      HIDWORD(v70) = v20;
      LOWORD(v71) = WORD1(v67);
      PeMeas = BlueFin::GlPeMsmtMgr::GetPeMeas(*(v8 + 4320), &v70, 0);
      *(v19 - 50) = 0;
      *(v19 - 42) = 0;
      *(v19 - 30) = 0xFFFFFFFF00000000;
      *(v19 - 1) = 0;
      *v19 = 0;
      *(v19 - 18) = 0;
      *(v19 - 14) = -1;
      *(v19 - 5) = 575;
      *(v19 - 34) = v42;
      if (v19 - 18 != &v70)
      {
        *(v19 - 18) = v70;
        *(v19 - 14) = HIDWORD(v70);
        *(v19 - 5) = v71;
      }

      *(v19 - 50) = *(PeMeas + 24);
      *(v19 - 6) = 0;
      *(v19 - 22) = *(PeMeas + 92);
      v65 = &v66[4];
      v66[0] = 4;
      *&v66[4] = 0;
      *&v66[12] = 0;
      BlueFin::GlSetBase::OperatorLeftShift(&v82, &v65, 1u);
      BlueFin::GlSetBase::operator=(&v82, &v65);
      v84 = *&v66[4];
      v14 = v82;
      *v82 |= 1u;
      BlueFin::GlSetIterator::operator++(&v67);
      v19 += 56;
    }

    while (BYTE1(v67) != v67);
    v13 = v83;
  }

  v80[1] = 0x700000007;
  memset(v81, 0, 32);
  v81[3] = 0u;
  v80[0] = v81;
  v81[2] = v3;
  v23 = **(v8 + 4336);
  v70 = v80;
  v71 = v5;
  v72 = 0;
  v73 = v23;
  v74 = 0x400C900000001;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0x4008000000000000;
  v67 = v69;
  v68 = 0x6400000000;
  bzero(v69, 0x328uLL);
  v65 = &v66[8];
  *v66 = 0x6400000000;
  bzero(&v66[8], 0x328uLL);
  v61 = &v62;
  v62 = v64;
  v63 = 8;
  memset(v64, 0, 32);
  v57[0] = &v67;
  v57[1] = &v65;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v24 = BlueFin::GlSetBase::Cnt(v7);
  v25 = 0;
  v26 = (v14 + 4 * v13 - 4);
  do
  {
    if (*v26)
    {
      v27 = *v26 - (((*v26 >> 1) & 0x5B6DB6DB) + ((*v26 >> 2) & 0x9249249));
      v25 = ((v27 + (v27 >> 3)) & 0xC71C71C7) + v25 - 63 * (((v27 + (v27 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    v26 = (v26 - 4);
  }

  while (v26 >= v14);
  if (v24 != v25)
  {
    v39 = "rotSignalIdSet.Cnt() == otIndexSet.Cnt()";
    DeviceFaultNotify("glpe_computezrh.cpp", 2440, "RecomputeIntegers", "rotSignalIdSet.Cnt() == otIndexSet.Cnt()");
    v40 = "glpe_computezrh.cpp";
    v41 = 2440;
    goto LABEL_43;
  }

  if ((BlueFin::GlSetBase::Highest(&v82) & 0xFFFFFFFCuLL) >= 0x64)
  {
    v39 = "(GlIntU32)otIndexSet.Highest() < _DIM(aotSkfMeas)";
    DeviceFaultNotify("glpe_computezrh.cpp", 2441, "RecomputeIntegers", "(GlIntU32)otIndexSet.Highest() < _DIM(aotSkfMeas)");
    v40 = "glpe_computezrh.cpp";
    v41 = 2441;
LABEL_43:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v40, v41, v39);
  }

  (*(*v8 + 16))(v8, &v70, v57, v85, &v82);
  BlueFin::GlSetBase::GlSetBase(&__src, v56, 0x13u, v7);
  if ((*&v62[(v87 >> 3) & 0x1C] >> (v87 & 0x1F)))
  {
    bzero(__src, ((4 * v55 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    bzero(v82, ((4 * v83 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    v49 = v7[8];
    memcpy(v53, *v7, 4 * v49);
    v51 = 0;
    v50 = 0;
    v52 = v53[0];
    BlueFin::GlSetIterator::operator++(&v49);
    if (v50 != v49)
    {
      v28 = v85;
      while (v51 < 0x23FuLL)
      {
        v29 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v51;
        v30 = *v29;
        LODWORD(v29) = v29[1];
        v46[0] = v30;
        v47 = v29;
        v48 = v51;
        if ((*&v62[(v30 >> 3) & 0x1C] >> (v30 & 0x1F)))
        {
          GlCustomLog(14, "Failed to calculate integer for svId %d\n", v30);
        }

        else
        {
          v31 = BlueFin::GlPeMsmtMgr::GetPeMeas(*(v8 + 4320), v46, 0);
          *v28 = 0u;
          *(v28 + 20) = 0xFFFFFFFF00000000;
          *(v28 + 24) = 0;
          v28[50] = 0;
          v28[32] = 0;
          *(v28 + 9) = -1;
          *(v28 + 20) = 575;
          *(v28 + 4) = v42;
          if (v28 + 32 != v46)
          {
            v28[32] = v46[0];
            *(v28 + 9) = v47;
            *(v28 + 20) = v48;
          }

          *v28 = *(v31 + 24);
          *(v28 + 11) = 0;
          *(v28 + 7) = *(v31 + 92);
          v43 = &v45;
          LOBYTE(v44) = 4;
          v45 = 0uLL;
          BlueFin::GlSetBase::OperatorLeftShift(&v82, &v43, 1u);
          BlueFin::GlSetBase::operator=(&v82, &v43);
          v84 = v45;
          *v82 |= 1u;
          v28 += 56;
          *(__src + (v48 >> 5)) |= 1 << v48;
        }

        BlueFin::GlSetIterator::operator++(&v49);
        if (v50 == v49)
        {
          goto LABEL_33;
        }
      }

      goto LABEL_42;
    }

LABEL_33:
    (*(*v8 + 16))(v8, &v70, v57, v85, &v82);
  }

  v49 = v55;
  memcpy(v53, __src, 4 * v55);
  v51 = 0;
  v50 = 0;
  v52 = v53[0];
  result = BlueFin::GlSetIterator::operator++(&v49);
  if (v50 != v49)
  {
    v32 = &v86;
    while (v51 < 0x23FuLL)
    {
      v33 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v51;
      v34 = *v33;
      if ((*&v62[(v34 >> 3) & 0x1C] >> (v34 & 0x1F)))
      {
        GlCustomLog(14, "Failed to calculate integer for svId %d\n", *v33);
      }

      else
      {
        v35 = v33[1];
        v36 = *v32;
        v37 = *(v8 + 4320);
        LOBYTE(v43) = v34;
        HIDWORD(v43) = v35;
        v44 = v51;
        *(BlueFin::GlPeMsmtMgr::AccessPeMeas(v37, &v43, 0) + 88) = v36;
      }

      result = BlueFin::GlSetIterator::operator++(&v49);
      v32 += 14;
      if (v50 == v49)
      {
        goto LABEL_41;
      }
    }

LABEL_42:
    v39 = "usIndex < NUM_SIGNAL_IDS";
    DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
    v40 = "glsignalid.h";
    v41 = 578;
    goto LABEL_43;
  }

LABEL_41:
  v38 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlPeLatLonRegionSet::disabledRegion(BlueFin::GlPeLatLonRegionSet *this, float a2, float a3)
{
  v6 = a2;
  if (a2 > 0.0)
  {
    v7 = 0.5;
LABEL_6:
    v8 = (v6 + v7);
    goto LABEL_7;
  }

  if (a2 < 0.0)
  {
    v7 = -0.5;
    goto LABEL_6;
  }

  v8 = 0;
LABEL_7:
  v9 = v8 - *(this + 10);
  if ((v9 & 0x8000) != 0)
  {
    return 0;
  }

  v10 = v9;
  if (v10 >= *(this + 6))
  {
    return 0;
  }

  v11 = *(*(*this + 40))(this, v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *((*(*this + 40))(this, v10) + 2);
  if (v12 <= (v11 - 1))
  {
    return 0;
  }

  v15 = (v11 - 1) + 1;
  for (i = (*(this + 2) + 12 * (v11 - 1) + 6); ; i += 6)
  {
    v17 = *(i - 3);
    v18 = *(i - 3);
    LOWORD(v13) = *(i - 2);
    *&v19 = LODWORD(v13);
    v20 = ((v17 >> 9) - 50) + (*&v19 * 0.0001);
    LOWORD(v19) = *i;
    v13 = v20 + (v19 * 0.0001);
    LOWORD(v14) = *(i - 1);
    v21 = LODWORD(v14);
    v22 = -(v18 + (v21 * 0.0001));
    if ((v17 & 0x100) == 0)
    {
      v22 = v18 + (v21 * 0.0001);
    }

    LOWORD(v21) = i[1];
    v14 = v22 + (LODWORD(v21) * 0.0001);
    v23 = v22 >= a3 || v14 <= a3;
    v24 = !v23 && v20 < a2;
    v25 = !v24 || v13 <= a2;
    if (!v25 && (~i[2] & 0xF) == 0)
    {
      break;
    }

    if (v12 == v15++)
    {
      return 0;
    }
  }

  return 1;
}

BOOL BlueFin::GlPeKF::IsDrEnabled(BlueFin::GlPeKF *this)
{
  BlueFin::GlPeKF::SensorMask(this, &v7);
  if (!*v7)
  {
    if (v8 < 2uLL)
    {
      return 0;
    }

    v4 = v8 - 1;
    v5 = v7 + 1;
    while (!*v5++)
    {
      if (!--v4)
      {
        return 0;
      }
    }
  }

  v2 = *(this + 579);
  return v2 && (v2 == 1 || (*(*(*(this + 7617) + 160) + 2) & 1) != 0);
}

BOOL BlueFin::GlPeExtLoc::GetExtLocMeasCount(BlueFin::GlPeExtLoc *this)
{
  v1 = *(this + 17);
  if (!v1)
  {
    return 0;
  }

  if (*(v1 + 3008) != 1)
  {
    return 0;
  }

  v2 = *(v1 + 3040);
  v3 = *(v1 + 3048);
  if (v2 * v2 + v3 * v3 >= 160000.0 || *(v1 + 3009) == 1 && *(this + 13) != 1)
  {
    return 0;
  }

  result = 0;
  if (v2 > 0.0 && v2 < 100000.0 && v3 > 0.0)
  {
    return v3 < 100000.0;
  }

  return result;
}

uint64_t BlueFin::GlPeNavGnssKF::IsExtLocAvailable(BlueFin::GlPeNavGnssKF *this, char a2)
{
  v4 = *(this + 282);
  v5 = (*(*this + 128))(this);
  v6 = (*(*this + 160))(this);
  if (BlueFin::GlPeExtLoc::IsPosLocMeasAvailable(v4, v5, v6, a2))
  {
    v7 = *(*(this + 282) + 136);
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

uint64_t BlueFin::stDops::stDops(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  BlueFin::GlSetBase::GlSetBase((a1 + 8), (a1 + 20), 8u, (a2 + 8));
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

__n128 BlueFin::stInitPos::stInitPos(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = &off_2A1F0B5F0;
  result = *(a2 + 64);
  *(a1 + 64) = result;
  *(a1 + 80) = *(a2 + 80);
  return result;
}

uint64_t BlueFin::GlPeNavUtil::ComputeDops(BlueFin::GlPeNavUtil *this, const BlueFin::GlSvIdSet *a2)
{
  v3 = *(this + 2);
  LODWORD(v7[0]) = 0;
  v7[1] = v9;
  v8 = 8;
  memset(v9, 0, 32);
  *&v9[9] = xmmword_298A41DA0;
  v10 = vdup_n_s32(0x42C60000u);
  v11 = 1120272384;
  BlueFin::stDops::stDops(v12, v7);
  v13 = v3;
  v4 = this + *(*this - 24);
  v5 = *(v4 + 50);
  v7[0] = *(v4 + 11);
  return BlueFin::GlPeDops::GetDops();
}

void BlueFin::lla2ned(double *a1@<X0>, double *a2@<X1>, int a3@<W2>, double *a4@<X8>)
{
  if (a3)
  {
    BlueFin::lla2ecef(a1, &v33);
    v7 = v33;
    v8 = v34;
    v9 = cosval;
    BlueFin::lla2ecef(a2, &v33);
    v10 = v33;
    v11 = v34;
    v12 = cosval;
    v46[0] = (v7 + v33) * 0.5;
    v46[1] = (v8 + v34) * 0.5;
    v46[2] = (v9 + cosval) * 0.5;
    v43 = 0.0;
    v44 = 0.0;
    v45 = 0;
    v13 = BlueFin::ecef2lla(v46, &v43);
    v14 = 0.0;
    v15 = 0.0;
    if (v13)
    {
      v30 = v7;
      v16 = v44 * 0.0174532925;
      v17 = __sincos_stret(v43 * 0.0174532925);
      v18 = __sincos_stret(v16);
      v33 = -(v17.__sinval * v18.__cosval);
      v34 = -(v17.__sinval * v18.__sinval);
      cosval = v17.__cosval;
      v36 = -v18.__sinval;
      v37 = v18.__cosval;
      v38 = 0;
      v39 = -(v17.__cosval * v18.__cosval);
      v40 = -(v17.__cosval * v18.__sinval);
      v42 = 0x300000003;
      v41 = -v17.__sinval;
      v32[0] = v30 - v10;
      v32[1] = v8 - v11;
      *&v32[16] = 0x300000001;
      v32[2] = v9 - v12;
      BlueFin::Matrix::mult(v31, &v33, 1, v32, v30 - v10);
      v15 = *v31;
      v14 = *&v31[4];
    }

    v19 = a1[2];
    v20 = a2[2];
  }

  else
  {
    v21 = *a1;
    v22 = a1[1];
    v23 = *a2;
    v24 = a2[1];
    v19 = a1[2];
    v20 = a2[2];
    v25 = ((v19 + v20) * 0.5 + 6367426.73) * 0.0174532925;
    v26 = cos((*a1 + *a2) * 0.5 * 0.0174532925) * v25;
    v27 = v22 - v24;
    if (vabdd_f64(v22, v24) > 180.0)
    {
      v28 = v27 / 360.0;
      if (v27 / 360.0 <= 0.0)
      {
        v29 = 0.0;
        if (v27 / 360.0 < 0.0)
        {
          v29 = ceil(v28 + -0.5);
        }
      }

      else
      {
        v29 = floor(v28 + 0.5);
      }

      v27 = v27 + v29 * -360.0;
    }

    v15 = (v21 - v23) * v25;
    v14 = v26 * v27;
  }

  *a4 = v15;
  a4[1] = v14;
  a4[2] = v20 - v19;
}

double BlueFin::Matrix::mult(BlueFin::Matrix *this, const BlueFin::Matrix *a2, BOOL a3, const BlueFin::Matrix *a4, double result)
{
  v5 = *(a2 + 33);
  if (v5 != *(a4 + 33))
  {
    DeviceFaultNotify("glpe_matrix_olympic.cpp", 61, "mult", "mLeft.m_NbCols == mRight.m_NbCols");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix_olympic.cpp", 61, "mLeft.m_NbCols == mRight.m_NbCols");
  }

  v6 = *(a2 + 32);
  v7 = *(a4 + 32);
  if (v5 == 3 && v6 == 1 && v7 == 3)
  {
    v19 = *(a2 + 1);
    v20 = *(a2 + 2);
    v21 = *a2 * *(a4 + 4) + *(a4 + 5) * v19;
    v22 = *a2 * *(a4 + 8) + *(a4 + 9) * v19;
    v23 = *a2 * *a4 + *(a4 + 1) * v19 + *(a4 + 2) * v20;
    v24 = v21 + *(a4 + 6) * v20;
    result = v22 + *(a4 + 10) * v20;
    *(this + 16) = 0x300000001;
    *this = v23;
    *(this + 1) = v24;
    *(this + 2) = result;
  }

  else
  {
    if (v6 >= 1)
    {
      for (i = 0; i != v6; ++i)
      {
        if (v7 >= 1)
        {
          v11 = 0;
          v12 = a4;
          do
          {
            result = 0.0;
            if (v5 >= 1)
            {
              v13 = a2;
              v14 = v12;
              v15 = v5;
              do
              {
                v16 = *v13;
                v13 = (v13 + 8);
                v17 = v16;
                v18 = *v14++;
                result = result + v17 * v18;
                --v15;
              }

              while (v15);
            }

            *(this + 4 * i + v11++) = result;
            v12 = (v12 + 32);
          }

          while (v11 != v7);
        }

        a2 = (a2 + 32);
      }
    }

    *(this + 32) = v6;
    *(this + 33) = *(a4 + 32);
  }

  return result;
}

uint64_t BlueFin::Matrix::operator+=(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 132);
  if (v2 != *(result + 132) || (v3 = *(a2 + 128), v3 != *(result + 128)))
  {
    DeviceFaultNotify("glpe_matrix.cpp", 473, "operator+=", "otMatrix.m_NbCols == m_NbCols && otMatrix.m_NbRows == m_NbRows");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.cpp", 473, "otMatrix.m_NbCols == m_NbCols && otMatrix.m_NbRows == m_NbRows");
  }

  if (v3 >= 1)
  {
    v4 = 0;
    v5 = result;
    do
    {
      v6 = a2;
      v7 = v5;
      v8 = v2;
      if (v2 >= 1)
      {
        do
        {
          v9 = *v6++;
          *v7 = v9 + *v7;
          ++v7;
          --v8;
        }

        while (v8);
      }

      ++v4;
      v5 += 4;
      a2 += 32;
    }

    while (v4 != v3);
  }

  return result;
}

uint64_t BlueFin::Matrix::operator/=(uint64_t result, double a2)
{
  if (a2 == 0.0)
  {
    DeviceFaultNotify("glpe_matrix.cpp", 568, "operator/=", "dValue != 0.0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.cpp", 568, "dValue != 0.0");
  }

  v2 = *(result + 128);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(result + 132);
    v5 = result;
    v6 = 1.0 / a2;
    do
    {
      v7 = v5;
      v8 = v4;
      if (v4 >= 1)
      {
        do
        {
          *v7 = v6 * *v7;
          ++v7;
          --v8;
        }

        while (v8);
      }

      ++v3;
      v5 += 4;
    }

    while (v3 != v2);
  }

  return result;
}

uint64_t BlueFin::Matrix::operator*@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 132);
  if (v3 != *(a2 + 128))
  {
    DeviceFaultNotify("glpe_matrix.cpp", 285, "operator*", "bCond");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.cpp", 285, "bCond");
  }

  v4 = *(result + 128);
  v5 = *(a2 + 132);
  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      if (v5 >= 1)
      {
        v7 = 0;
        v8 = a2;
        do
        {
          v9 = 0.0;
          if (v3 >= 1)
          {
            v10 = result;
            v11 = v8;
            v12 = v3;
            do
            {
              v13 = *v10++;
              v14 = v13;
              v15 = *v11;
              v11 += 4;
              v9 = v9 + v14 * v15;
              --v12;
            }

            while (v12);
          }

          *(a3 + 32 * i + 8 * v7++) = v9;
          ++v8;
        }

        while (v7 != v5);
      }

      result += 32;
    }
  }

  *(a3 + 128) = v4;
  *(a3 + 132) = v5;
  return result;
}

uint64_t BlueFin::GlPeKfPool::GetSlowFilter(BlueFin::GlPeKfPool *this)
{
  return (*(**(this + 4656) + 200))();
}

{
  return (*(**(this + 4656) + 200))();
}

uint64_t BlueFin::GlPeNavGnssKF::GetSlowFilter(BlueFin::GlPeNavGnssKF *this)
{
  return this + 2640;
}

{
  return this + 2640;
}

BOOL BlueFin::GlPeNavGnssKF::IsAdrUsed(BlueFin::GlPeNavGnssKF *this)
{
  v1 = this + *(*this - 24);
  v2 = *(v1 + 55);
  if (*v2)
  {
    return 1;
  }

  v4 = v1[448];
  v5 = v4 >= 2;
  v6 = v4 - 2;
  if (!v5)
  {
    return 0;
  }

  v7 = v2 + 1;
  do
  {
    v8 = *v7++;
    result = v8 != 0;
    if (v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = v6 == 0;
    }

    --v6;
  }

  while (!v9);
  return result;
}

BOOL BlueFin::GlPeExtLoc::GetExtSensStatus(uint64_t a1, uint64_t a2, char a3, int a4, int a5)
{
  *(a2 + 112) = 0;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v5 = *(a1 + 136);
  if (!v5)
  {
    return v5 != 0;
  }

  if ((*(v5 + 3008) == 1 && vaddvq_f64(vmulq_f64(*(v5 + 3040), *(v5 + 3040))) < 160000.0 || (v9 = *(a1 + 8), v9 == 4) || v9 == 2) && (a3 & 1) == 0)
  {
    *(a2 + 12) = *(v5 + 3072);
    v11 = *(v5 + 3032);
    v10 = 4;
    if (v11 > -990.0 && *(v5 + 3064) > 0.0)
    {
      *(a2 + 8) = 1;
      *(a2 + 10) = v11;
    }
  }

  else
  {
    v10 = 0;
  }

  if (*(v5 + 1161) == 1)
  {
    *(a2 + 40) = *(v5 + 1112);
    v10 |= 0x10u;
  }

  v12 = *(a1 + 144);
  if (*(v12 + 34) == 1 && *(v12 + 32) == 1)
  {
    v13 = (1.0 - pow(*v12 * 100.0 / *(v12 + 8), 0.190263)) * 44330.77;
    if (v13 <= 0.0)
    {
      if (v13 >= 0.0)
      {
        LOWORD(v16) = 0;
LABEL_21:
        *(a2 + 92) = v16;
        v10 |= 0x80000u;
        goto LABEL_22;
      }

      v14 = v13;
      v15 = -0.5;
    }

    else
    {
      v14 = v13;
      v15 = 0.5;
    }

    v16 = (v14 + v15);
    goto LABEL_21;
  }

LABEL_22:
  if (*(v5 + 2985) == 1)
  {
    v17 = *(v5 + 2944);
    if (v17 <= 0.0)
    {
      if (v17 >= 0.0)
      {
        LOWORD(v20) = 0;
LABEL_29:
        *(a2 + 44) = v20;
        *(a2 + 48) = 2;
        v10 |= 0x20u;
        goto LABEL_30;
      }

      v18 = v17;
      v19 = -0.5;
    }

    else
    {
      v18 = v17;
      v19 = 0.5;
    }

    v20 = (v18 + v19);
    goto LABEL_29;
  }

LABEL_30:
  if (*(v5 + 4224) == 1)
  {
    *(a2 + 52) = *(v5 + 4216);
    v10 |= 0x40u;
  }

  v21 = v10 | 0x180;
  if (a4)
  {
    *(a2 + 56) = 0x100000001;
    *a2 = v21;
  }

  else
  {
    *(a2 + 56) = 0;
    *a2 = v21;
    if (a5)
    {
      v22 = *(v5 + 2986);
      *(a2 + 60) = v22 & 1;
      if ((v22 & 2) != 0)
      {
        *(a2 + 56) = 1;
      }
    }
  }

  v23 = *(v5 + 188);
  *(a2 + 108) = v23;
  *(a2 + 112) = v23;
  if (*(v5 + 1225) == 1)
  {
    v24 = *(v5 + 1184);
    *(a2 + 64) = v24;
    *(a2 + 68) = 2;
    v21 = v10 | 0x380;
    *a2 = v10 | 0x380;
  }

  if (*(v5 + 1281) == 1)
  {
    v25 = *(v5 + 1240);
    *(a2 + 72) = v25;
    *(a2 + 76) = 2;
    v21 |= 0x400u;
    *a2 = v21;
  }

  if (*(v5 + 4204) == 1)
  {
    *(a2 + 80) = *(v5 + 4200);
    v21 |= 0x1000u;
    *a2 = v21;
  }

  if (*(v5 + 4177) == 1)
  {
    *(a2 + 84) = *(v5 + 4144);
    v21 |= 0x2000u;
    *a2 = v21;
  }

  v26 = *(v5 + 4272);
  *(a2 + 88) = v26;
  if (v26)
  {
    v21 |= 0x4000u;
    *a2 = v21;
  }

  v27 = *(v5 + 3231);
  *(a2 + 96) = v27;
  if (*(v5 + 3230) == 1)
  {
    v28 = *(v5 + 3228);
    if (*(v5 + 3228))
    {
      v29 = 2;
    }

    else
    {
      v29 = v27;
    }

    v30 = *(v5 + 3229);
    if (*(v5 + 3229))
    {
      v27 = 2;
    }

    *(a2 + 100) = v29;
    *(a2 + 104) = v27;
    if (v28 & 1) != 0 || (v30)
    {
      if (v28)
      {
        v31 = v21 | 0x20000;
      }

      else
      {
        v31 = v21;
      }

      if (v30)
      {
        v31 |= 0x40000u;
      }

      *a2 = v31;
    }
  }

  else
  {
    *(a2 + 100) = 0;
    *(a2 + 104) = 0;
  }

  return v5 != 0;
}

double BlueFin::GlPeNavUtil::AdjustBc(BlueFin::GlPeNavUtil *this, float a2)
{
  if (a2 <= -0.00000011921)
  {
    DeviceFaultNotify("glpe_navutil.cpp", 1116, "AdjustBc", "fMaxAbsBc > 0.0 - FLT_EPSILON");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_navutil.cpp", 1116, "fMaxAbsBc > 0.0 - FLT_EPSILON");
  }

  v2 = a2;
  v3 = (this + *(*this - 24));
  v4 = v3[11] / 299792.458;
  result = -a2;
  if (v4 < result || v4 >= v2)
  {
    if (v4 <= 0.0)
    {
      v7 = 0.0;
      if (v4 < 0.0)
      {
        v7 = ceil(v4 + -0.5);
      }
    }

    else
    {
      v7 = floor(v4 + 0.5);
    }

    result = (v4 - v7) * 299792.458;
    v3[11] = result;
  }

  return result;
}

void BlueFin::GlPeFixStatus::SetPosition(BlueFin::GlPeFixStatus *this, uint64_t a2, uint64_t a3, int a4, int a5, double a6, int8x16_t a7, double a8, int8x16_t a9, int8x16_t a10, int8x16_t a11)
{
  v128 = *MEMORY[0x29EDCA608];
  v13 = this + 4072;
  v14 = *(a2 + 8);
  *(this + 4048) = v14;
  *(this + 4049) = *(a2 + 9);
  *(this + 4050) = 0;
  *(this + 4192) = *(a2 + 80);
  *(this + 4208) = *(a2 + 68);
  *(this + 4088) = *(a2 + 32);
  *(this + 513) = *(a2 + 48);
  *(this + 1028) = *(a2 + 56);
  *(this + 259) = vcvtq_f64_f32(*(a2 + 780));
  *(this + 520) = *(a2 + 788);
  *(this + 515) = *(a2 + 764);
  v15 = vcvtq_f64_f32(*(a2 + 768));
  *(this + 258) = vextq_s8(v15, v15, 8uLL);
  v16 = *(a2 + 16);
  *(this + 4072) = v16;
  *(this + 525) = *(a2 + 72) * 1.9438445;
  *(this + 527) = *(a2 + 60) * 57.2957795 - floor(*(a2 + 60) * 57.2957795 / 360.0) * 360.0;
  v17 = *(this + 981);
  *(this + 4051) = *(v17 + 2589) == 0;
  *(this + 4176) = *(v17 + 2588);
  *(this + 7408) = *(a2 + 1364);
  if (v14 == 1)
  {
    *a7.i64 = *(a2 + 744) + *(a2 + 752) * 1000.0;
    *a9.i64 = floor(*a7.i64);
    *a11.i64 = *a9.i64 + trunc(*a9.i64 * 2.32830644e-10) * -4294967300.0;
    v18.f64[0] = NAN;
    v18.f64[1] = NAN;
    v19 = vnegq_f64(v18);
    a11.i64[0] = vbslq_s8(v19, a11, a9).u64[0];
    if (*a9.i64 > 4294967300.0)
    {
      a9.i64[0] = a11.i64[0];
    }

    if (*a9.i64 < -4294967300.0)
    {
      *a10.i64 = -*a9.i64;
      *a9.i64 = -(*a9.i64 - trunc(*a9.i64 * -2.32830644e-10) * -4294967300.0);
      *a9.i64 = -*vbslq_s8(v19, a9, a10).i64;
    }

    if (*a9.i64 < 0.0)
    {
      v20 = --*a9.i64;
    }

    else
    {
      v20 = *a9.i64;
    }

    *(this + 1042) = v20;
    *v16.i64 = (*a7.i64 - v20) * 1000.0 + 0.5;
    *a7.i64 = *v16.i64 + trunc(*v16.i64 * 2.32830644e-10) * -4294967300.0;
    v21 = vbslq_s8(v19, a7, v16);
    if (*v16.i64 > 4294967300.0)
    {
      v16.i64[0] = v21.i64[0];
    }

    if (*v16.i64 < -4294967300.0)
    {
      *v21.i64 = -*v16.i64;
      *v16.i64 = -(*v16.i64 - trunc(*v16.i64 * -2.32830644e-10) * -4294967300.0);
      v22.f64[0] = NAN;
      v22.f64[1] = NAN;
      *v16.i64 = -*vbslq_s8(vnegq_f64(v22), v16, v21).i64;
    }

    if (*v16.i64 < 0.0)
    {
      v23 = --*v16.i64;
    }

    else
    {
      LOWORD(v23) = *v16.i64;
    }

    *(this + 3444) = v23;
    if (v23 == 1000)
    {
      *(this + 3444) = 0;
      *(this + 1042) = v20 + 1;
    }

    v24 = *(a2 + 748);
    if (v24 <= 1)
    {
      v24 = 1;
    }

    *(this + 1043) = v24;
  }

  *(this + 2137) = *(a2 + 106);
  *(this + 4052) = 0;
  *(this + 1014) = 0;
  *(this + 529) = *(a2 + 1024);
  *(this + 7312) = *(a2 + 1080);
  *(this + 7350) = *(a2 + 1081);
  if (a5)
  {
    *this = *(a2 + 12);
  }

  BlueFin::GlPeFixStatus::SetTime(this);
  LODWORD(v25) = *(this + 22);
  if (v25 >= 1)
  {
    v26 = 0;
    v27 = this + 51;
    do
    {
      v28 = *(v27 - 1);
      if (v28 != 4 && v28 != 8)
      {
        v30 = BlueFin::GlImplGnss::m_aucImplGnssTable[*(v27 - 1)];
        v31 = *v27;
        LODWORD(v127[0]) = v30;
        BYTE4(v127[0]) = v31;
        v32 = (v31 - 64) < 0xC1u || v28 == 8;
        if (!v32 && (Mgr = BlueFin::GlPeGnssEphemerisMgr::GetMgr((*(this + 1264) + 384), v30)) != 0 && (v34 = (*(*Mgr + 112))(Mgr, v127 + 4, 1)) != 0)
        {
          v35 = (*(*v34 + 152))(v34);
          if ((v35 - 1) >= 3)
          {
            LODWORD(v25) = 0;
          }

          else
          {
            LODWORD(v25) = v35;
          }
        }

        else
        {
          LODWORD(v25) = 0;
        }

        *(this + *(v27 - 2) + 1533) = v25;
        LOWORD(v25) = *(this + 22);
      }

      ++v26;
      v27 += 40;
    }

    while (v26 < v25);
  }

  v36 = 1.0;
  if (*(a2 + 792) >= 1.0 || !*(this + 4048))
  {
    v36 = *(a2 + 792);
  }

  *(this + 863) = v36;
  *(this + 523) = *(a2 + 752);
  v37 = *(this + 1017) & 0xFFFFFFF8 | *(a2 + 81) & 3;
  if (*(this + 518) >= 50.0 || (*(a2 + 92) & 1) != 0 || *(a2 + 93) == 1)
  {
    v37 |= 4u;
  }

  v38 = v37 & 0xFFFFFE07;
  if (*(a2 + 94))
  {
    v39 = 32;
  }

  else
  {
    v39 = 0;
  }

  if (*(a2 + 95))
  {
    v40 = 64;
  }

  else
  {
    v40 = 0;
  }

  v41 = v40 | v39;
  if (*(a2 + 104))
  {
    v42 = 8;
  }

  else
  {
    v42 = 0;
  }

  v43 = v41 | v42 | v38;
  if (*(a2 + 1064))
  {
    v44 = 16;
  }

  else
  {
    v44 = 0;
  }

  v45 = v43 | v44;
  if (*(*(this + 1264) + 120012) == 1)
  {
    v45 |= 0x100u;
  }

  v46 = v45 & 0xFFFFF3FF;
  if (*(a2 + 1347))
  {
    v47 = 2048;
  }

  else
  {
    v47 = 0;
  }

  if (*(a2 + 1345))
  {
    v48 = 1024;
  }

  else
  {
    v48 = 0;
  }

  v49 = v46 | v47 | v48;
  *(this + 1017) = v49 & 0xFFFFFDFF;
  if (*(a2 + 1344) == 1)
  {
    *(this + 1017) = v49 | 0x200;
  }

  v50 = 0;
  *(this + 919) = *(a2 + 1352);
  v13[3288] = *(a2 + 1360);
  *(this + 1016) = *(a2 + 4);
  v51 = this + 4856;
  v52 = this + 5368;
  do
  {
    v53 = (this + v50 + 4856);
    v54 = *(a2 + v50 + 112);
    v55 = *(a2 + v50 + 128);
    v56 = *(a2 + v50 + 160);
    v53[2] = *(a2 + v50 + 144);
    v53[3] = v56;
    *v53 = v54;
    v53[1] = v55;
    v57 = (this + v50 + 5368);
    v58 = *(a2 + v50 + 368);
    v59 = *(a2 + v50 + 384);
    v60 = *(a2 + v50 + 416);
    v57[2] = *(a2 + v50 + 400);
    v57[3] = v60;
    *v57 = v58;
    v57[1] = v59;
    v50 += 64;
  }

  while (v50 != 256);
  v61 = *(a2 + 672);
  v62 = *(a2 + 688);
  v63 = *(a2 + 704);
  v64 = *(a2 + 720);
  *(this + 5656) = v63;
  *(this + 5672) = v64;
  *(this + 5624) = v61;
  *(this + 5640) = v62;
  *(this + 3648) = *(a2 + 736);
  *(this + 1825) = *(a2 + 740) * 0.001;
  if (*(this + 10152))
  {
    v65 = 2;
  }

  else
  {
    v65 = 3;
  }

  *(this + 1015) = v65;
  if ((*(a2 + 8) & 1) != 0 && !*(a2 + 106) && (*(a2 + 96) & 4) != 0)
  {
    *(this + 1015) = 7;
  }

  *(this + 2137) = 0;
  v66 = this + 4280;
  v13[3276] = 0;
  v67 = this + 4344;
  v68.i64[1] = 0;
  *(this + 4280) = 0u;
  *(this + 4296) = 0u;
  *(this + 4312) = 0u;
  *(this + 4328) = 0u;
  *(this + 4344) = 0u;
  *(this + 4360) = 0u;
  *(this + 4376) = 0u;
  *(this + 4392) = 0u;
  *(this + 4408) = 0u;
  *(this + 4424) = 0u;
  *(this + 4440) = 0u;
  *(this + 4456) = 0u;
  *(this + 4472) = 0u;
  *(this + 4488) = 0u;
  *(this + 4504) = 0u;
  *(this + 4520) = 0u;
  *(this + 4536) = 0u;
  *(this + 4552) = 0u;
  *(this + 4568) = 0u;
  *(this + 4584) = 0u;
  if (*(this + 4048) && v25 >= 1)
  {
    v69 = 0;
    v25 = v25;
    v70 = this + 49;
    do
    {
      v71 = v70[33];
      v72 = v70[1];
      v73 = 1 << (v70[2] - 1);
      if ((v73 & (*&v52[64 * v71 + 8 * v72] | *&v51[64 * v71 + 8 * v72])) != 0)
      {
        *(this + 2137) = ++v69;
        *&v66[8 * v72] |= v73;
        *&v67[64 * v71 + 8 * v72] |= v73;
        if (*(this + *v70 + 1533) == 2)
        {
          v13[3276] = 1;
        }
      }

      v70 += 40;
      --v25;
    }

    while (v25);
  }

  v74 = *(this + 982);
  v75 = *(v74 + 2);
  v76 = *(v74 + 10);
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
  }

  *(this + 1056) = (v75 * 0.000000001 * 1000000000.0 + 0.5);
  *v68.i64 = v76 * 0.000000001 * 1000000000.0 + 0.5;
  *v64.i64 = *v68.i64 + trunc(*v68.i64 * 2.32830644e-10) * -4294967300.0;
  v77.f64[0] = NAN;
  v77.f64[1] = NAN;
  v78 = vnegq_f64(v77);
  v64.i64[0] = vbslq_s8(v78, v64, v68).u64[0];
  if (*v68.i64 > 4294967300.0)
  {
    v68.i64[0] = v64.i64[0];
  }

  if (*v68.i64 < -4294967300.0)
  {
    *v63.i64 = -*v68.i64;
    *v68.i64 = -(*v68.i64 - trunc(*v68.i64 * -2.32830644e-10) * -4294967300.0);
    *v68.i64 = -*vbslq_s8(v78, v68, v63).i64;
  }

  if (*v68.i64 < 0.0)
  {
    v79 = --*v68.i64;
  }

  else
  {
    LOWORD(v79) = *v68.i64;
  }

  *(this + 2128) = v79;
  v80 = *this;
  if (*this <= 0xFF9222FE)
  {
    v80 = *this;
  }

  BlueFin::GlPeTimeManager::lmsToLegacyGlStruct(*(this + 981), 0, 1, this + 24, v80);
  v81 = *this;
  if (*this <= 0xFF9222FE)
  {
    v81 = *this;
  }

  BlueFin::GlPeTimeManager::lmsToLegacyGlStruct(*(this + 981), 2u, 1, this + 4, v81);
  v82 = *(a2 + 780);
  *(this + 869) = v82;
  *(this + 870) = v82;
  *(this + 871) = 0;
  v83 = *(a2 + 1040);
  v84 = *(a2 + 1048);
  if (v83 >= 0.0001 || v84 >= 0.0001)
  {
    v85 = *(a2 + 1056);
    v86 = v83 + v84;
    v87 = (v83 + v84) * 0.5;
    v88 = sqrt(v85 * v85 + (v84 - v83) * 0.25 * (v84 - v83));
    v89 = sqrt(v87 + v88);
    v90 = atan2(v85, v84 - v89 * v89) * -57.2957795 + 90.0;
    if (v90 < 0.0)
    {
      v90 = v90 + 360.0;
    }

    if (v90 >= 180.0)
    {
      v90 = v90 + -180.0;
    }

    *(this + 871) = v90;
    v91 = 1.0;
    v92 = sqrt((v82 * v82) / v86);
    if (v86 >= 1.0e-12)
    {
      v91 = v92;
    }

    v93 = v89 * v91;
    v94 = sqrt(v87 - v88) * v91 * 1.49759996;
    *(this + 869) = v93 * 1.49759996;
    if (v87 <= v88)
    {
      v94 = 0.0;
    }

    *(this + 870) = v94;
  }

  *(this + 872) = fmin(sqrtf(*(a2 + 64)) * 57.2957795, 180.0);
  *(this + 873) = sqrtf(*(a2 + 76));
  v95 = (*(a2 + 744) + 1000 * *(a2 + 748));
  *(this + 874) = v95;
  if (v95 < 0.001)
  {
    v95 = 0.001;
  }

  *(this + 875) = v95;
  *(this + 876) = *(a2 + 96);
  v96 = *(a2 + 1076);
  *(this + 7284) = *(a2 + 1068);
  *(this + 1823) = v96;
  v98 = *(a2 + 880);
  v97 = *(a2 + 896);
  v99 = *(a2 + 912);
  *(this + 443) = *(a2 + 864);
  *(this + 892) = v99;
  *(this + 445) = v97;
  *(this + 444) = v98;
  v100 = *(a2 + 800);
  v101 = *(a2 + 816);
  v102 = *(a2 + 832);
  *(this + 442) = *(a2 + 848);
  *(this + 441) = v102;
  *(this + 440) = v101;
  *(this + 439) = v100;
  *(this + 1787) = *(a2 + 920);
  if (*(this + 4048))
  {
    if ((*(this + 10200) & 1) == 0)
    {
      BlueFin::GlPeFixStatus::UpdateAccumDist(this, this + 10160, a3, a4);
    }

    *(this + 529) = *(this + 2548);
  }

  v13[3080] = -1;
  v13[3112] = -1;
  v103 = *(a2 + 928);
  v104 = *(a2 + 968);
  if (v103 != 0 && v104 > 400.0)
  {
    v103 = 0;
    v105 = 0;
  }

  else
  {
    v105 = *(a2 + 960);
  }

  v13[3080] = v103;
  v13[3112] = v105;
  *(this + 895) = *(a2 + 936);
  *(this + 896) = *(a2 + 944);
  *(this + 897) = *(a2 + 952);
  *(this + 1798) = v104;
  *(this + 1799) = *(a2 + 972);
  *(this + 1797) = *(a2 + 964);
  v13[3128] = *(a2 + 976);
  *(this + 1801) = *(a2 + 980);
  *(this + 1802) = *(a2 + 984);
  v13[3140] = *(a2 + 988);
  *(this + 902) = *(a2 + 992);
  v13[3152] = *(a2 + 1000);
  *(this + 1807) = *(a2 + 1004);
  *(this + 1808) = *(a2 + 1008);
  *(this + 3618) = *(a2 + 1012);
  *(this + 905) = *(a2 + 1016);
  *(this + 913) = *(a2 + 84);
  memset(v127, 0, sizeof(v127));
  v106 = *(this + 22);
  if (v106 > 0)
  {
    v107 = 0;
    v108 = 40 * v106;
    v109 = 7440;
    do
    {
      v110 = this + v107;
      v111 = *(this + v107 + 52);
      if (v111 == 1)
      {
        v112 = 1 << (v110[51] - 1);
        if (*(v110 + 27))
        {
          goto LABEL_127;
        }
      }

      else
      {
        v112 = 1 << (v110[51] - 1);
        if (v111 < 5)
        {
          goto LABEL_127;
        }
      }

      if (*(this + v109) <= 7.0)
      {
LABEL_127:
        v110[48] = 0;
        v113 = this + v107;
        *(v113 + 68) = 0xFF38000000000000;
        *(v113 + 19) = 0;
        *(v113 + 40) = 0;
        v114 = *(this + v107 + 82);
        v115 = *(this + v107 + 50);
        *&v51[64 * v114 + 8 * v115] &= ~v112;
        *&v52[64 * v114 + 8 * v115] &= ~v112;
        *&v67[64 * v114 + 8 * v115] &= ~v112;
        goto LABEL_128;
      }

      *(v127 + *(this + v107 + 50)) |= v112;
LABEL_128:
      v107 += 40;
      v109 += 4;
    }

    while (v108 != v107);
  }

  for (i = 0; i != 4; ++i)
  {
    *&v66[i * 16] = vandq_s8(*&v66[i * 16], v127[i]);
  }

  v13[3337] = 0;
  if (*(*(this + 1265) + 26342) == 1 && (*(this + 10297) & 1) == 0)
  {
    if (*(this + 4048))
    {
      v117 = 0;
      v118 = *(this + 540);
      v119 = *(this + 535);
      v120 = 63;
      do
      {
        v117 += v118 & 1;
        v118 >>= 1;
        --v120;
      }

      while (v120);
      v121 = 0;
      v122 = 32;
      do
      {
        v121 += v119 & 1;
        v119 >>= 1;
        --v122;
      }

      while (v122);
      if ((v117 < v121 || *(this + 518) >= 10.1) && *this < 0x1D0D8u)
      {
        *(this + 4048) = 0;
        ++*(this + 10298);
      }

      else
      {
        *(this + 10297) = 1;
      }
    }

    v123 = *(this + 10298);
    if (v123 >= 3)
    {
      *(this + 10297) = 1;
    }

    v13[3337] = v123;
  }

  v124 = *MEMORY[0x29EDCA608];
}

uint64_t BlueFin::GlPeRqHdlrPosPeriodic::UpdateFixStatus(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5)
{
  v10 = *(a2 + 4048);
  *(a1 + 168) = v10;
  if (v10 || (*(a2 + 4068) & 0x10) != 0 && !*(a1 + 96))
  {
    v11 = (*(**(a1 + 8) + 152))(*(a1 + 8));
    v12 = v11;
    if (v11 <= 400)
    {
      v13 = 400;
    }

    else
    {
      v13 = v11;
    }

    *(a1 + 92) = v13;
    v14 = *(*(a1 + 8) + 22);
    v15 = *(a1 + 72);
    GllStartupType = BlueFin::GlPeKF::GetGllStartupType(*(*(a1 + 56) + 16));
    v17 = GllStartupType;
    if (a3)
    {
      DynamicAccyMask = 2000;
      GlCustomLog(14, "AccyMask[%hu]PER (server returned position)Periodic %s Current %dm\n", *(a1 + 48), off_29EEB41D0[GllStartupType], 2000);
    }

    else if (v12 == -1)
    {
      v42 = BlueFin::GlPeKF::GetGllStartupType(*(*(a1 + 56) + 16));
      v20 = *(*(*(a1 + 56) + 16) + 1608);
      if (v20 >= 0)
      {
        v21 = *(*(*(a1 + 56) + 16) + 1608);
      }

      else
      {
        v21 = -v20;
      }

      ReqSmartMaskAccyM_Startup = BlueFin::GlPeRqHdlr::GetReqSmartMaskAccyM_Startup(a1, &v42);
      DynamicAccyMask = ReqSmartMaskAccyM_Startup;
      v41 = -1;
      v23 = *(a1 + 96);
      v40 = *(a1 + 92);
      if (v23)
      {
        if (*(a1 + 108))
        {
          if ((*(a1 + 109) & 1) == 0)
          {
            *(a1 + 109) = 1;
            GlCustomLog(14, "AccyMask[%hu]PER SmartMask latched at %dm\n", *(a1 + 48), ReqSmartMaskAccyM_Startup);
          }
        }

        else
        {
          DynamicAccyMask = *(a1 + 112);
          GlCustomLog(14, "AccyMask[%hu]PER SmartMask not latched. Holding at %dm\n", *(a1 + 48), DynamicAccyMask);
        }
      }

      else
      {
        v40 = ReqSmartMaskAccyM_Startup;
        v25 = *(*(*(a1 + 56) + 16) + 16824);
        if (v25 != -7200001)
        {
          v26 = *(a1 + 36);
          if (v26 == -1)
          {
            v15 = 1;
          }

          else
          {
            v27 = *(*(a1 + 8) + 28);
            v28 = *(a1 + 32);
            v29 = v28 + v26;
            v30 = v29 >= v27;
            v31 = v29 - v27;
            if (!v30)
            {
              v31 = 1;
            }

            v32 = v28 - v25;
            if (v32 >= v31)
            {
              v15 = v31;
            }

            else
            {
              v15 = v32;
            }
          }
        }

        BlueFin::GlPeRqHdlr::GetDynAccyMask_ToutForSmartphoneFF(a1, &v42, v15, &v40, &v41);
        if (v41 == -1)
        {
          v33 = *(a1 + 48);
          v38 = off_29EEB41D0[v42];
          GlCustomLog(14, "AccyMask[%hu]PER before FF Smartphone %s Current %dm\n");
        }

        else
        {
          v36 = *(a1 + 48);
          v37 = off_29EEB41D0[v42];
          GlCustomLog(14, "AccyMask[%hu]PER before FF Smartphone %s Current %dm set at %hds\n");
        }

        *(a1 + 112) = DynamicAccyMask;
      }

      if (v21 > 0x5DC || (*(*a1 + 16))(a1, v41, v15, 0))
      {
        DynamicAccyMask = v40;
        *(a1 + 112) = v40;
      }

      if (DynamicAccyMask <= 100)
      {
        v34 = 100;
      }

      else
      {
        v34 = DynamicAccyMask;
      }

      if ((*(*(*(*(a1 + 56) + 16) + 60936) + 32) & 0x20000000) != 0)
      {
        DynamicAccyMask = v34;
      }
    }

    else if (v12)
    {
      v24 = *(a1 + 88);
      if (v24 != *(a1 + 92))
      {
        v24 = v12;
        if ((*(*a1 + 16))(a1, v14, v15, 0))
        {
          v24 = *(a1 + 92);
        }
      }

      GlCustomLog(14, "AccyMask[%hu]PER Periodic %s Current %dm\n", *(a1 + 48), off_29EEB41D0[v17], v24);
      DynamicAccyMask = v24;
    }

    else
    {
      DynamicAccyMask = *(a1 + 88);
      if (DynamicAccyMask != *(a1 + 92))
      {
        DynamicAccyMask = BlueFin::GlPeKF::GetDynamicAccyMask(*(*(a1 + 56) + 16), *(a1 + 88), v15, *(a1 + 96));
        if ((*(*a1 + 16))(a1, 30, v15, 0))
        {
          DynamicAccyMask = *(a1 + 92);
        }
      }

      GlCustomLog(14, "AccyMask[%hu]PER PND %s Current %dm\n", *(a1 + 48), off_29EEB41D0[v17], DynamicAccyMask);
    }

    if (*(a2 + 4144) >= DynamicAccyMask + 0.01)
    {
      v35 = 0;
      *(a1 + 168) = 0;
      *(a1 + 88) = DynamicAccyMask;
    }

    else
    {
      *(a1 + 168) = 1;
      ++*(a1 + 96);
      if ((a3 & 1) == 0)
      {
        ++*(a1 + 160);
        if (*(a2 + 6912) == 2)
        {
          ++*(a1 + 164);
        }
      }

      if (DynamicAccyMask == *(a1 + 92))
      {
        *(a1 + 88) = v12;
      }

      *(a1 + 100) = *a2;
      v39 = BlueFin::GlPeKF::GetGllStartupType(*(*(a1 + 56) + 16));
      if (*(a2 + 4144) < BlueFin::GlPeRqHdlr::GetReqSmartMaskAccyM_Startup(a1, &v39) + 0.01)
      {
        *(a1 + 108) = 1;
      }

      if ((*(*(*(*(a1 + 56) + 16) + 60960) + 10200) & 1) == 0)
      {
        BlueFin::GlPeFixStatus::UpdateAccumDist(a2, a1 + 120, a4, a5);
      }

      v35 = *(a1 + 168);
    }

    *(a1 + 172) = *(a1 + 152);
    return BlueFin::GlPeRqHdlr::LogGL007(a1, "PER", a2, DynamicAccyMask, v35);
  }

  else
  {
    result = BlueFin::GlPeRqHdlr::LogGL007(a1, "per", a2, *(a1 + 88), 0);
    *(a1 + 172) = *(a1 + 152);
  }

  return result;
}

double BlueFin::GlPeTimeManager::GetUtcTime@<D0>(BlueFin::GlPeTimeManager *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(this + 1201);
  if (v4 != -7200001 && v4 == a2)
  {
    result = *(this + 606);
    *(a3 + 8) = result;
    *a3 = &unk_2A1F11310;
    *(a3 + 16) = *(this + 1214);
    *(a3 + 20) = *(this + 1215);
    *(a3 + 24) = *(this + 4864);
  }

  else
  {
    BlueFin::GlPeTimeManager::GetTime(this, a2, 1, v7);
    *a3 = &unk_2A1F11310;
    *(a3 + 8) = 0;
    BlueFin::GlUtcTime::breakdownFct(a3);
    return BlueFin::GlPeGnssTime::GetUtc(v7, a3);
  }

  return result;
}

uint64_t BlueFin::GlPeRqHdlr::GetReqSmartMaskAccyM_Startup(uint64_t a1, _DWORD *a2)
{
  result = (*(**(a1 + 8) + 392))(*(a1 + 8), 1);
  if ((*a2 | 2) == 2)
  {
    v5 = *(**(a1 + 8) + 392);

    return v5();
  }

  return result;
}

uint64_t BlueFin::GlPeGnssTime::GetConversionTable(BlueFin::GlPeGnssTime *this)
{
  result = BlueFin::GlPeGnssTime::m_potConversionTable;
  if (!BlueFin::GlPeGnssTime::m_potConversionTable)
  {
    DeviceFaultNotify("glpe_timemgr.h", 194, "GetConversionTable", "m_potConversionTable != nullptr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timemgr.h", 194, "m_potConversionTable != nullptr");
  }

  return result;
}

BOOL BlueFin::GlPeAsstPosMgr::processAssistance(uint64_t a1, __int128 *a2, int a3, int a4, BlueFin::stTimeOfAsstPos *this, char a6, int a7, double a8, int8x16_t a9)
{
  v84 = *MEMORY[0x29EDCA608];
  v12.i64[1] = 0;
  memset(v58, 0, sizeof(v58));
  v62 = 0;
  v63 = 0xC15B773FC0000000;
  v64 = &off_2A1F0B5F0;
  v65 = 0;
  v66 = 0u;
  memset(v67, 0, sizeof(v67));
  if (v58 == a2)
  {
    v12.i64[0] = 0;
  }

  else
  {
    *&v58[16] = *(a2 + 2);
    *v58 = *a2;
    v12 = *(a2 + 24);
    *&v58[24] = v12;
  }

  v59 = a3;
  v60 = a4;
  v61 = a6;
  if (&v62 != this)
  {
    v62 = *this;
    a9.i64[0] = *(this + 1);
    v13 = *(this + 3);
    v63 = a9.i64[0];
    v65 = v13;
  }

  v68 = a7;
  if (a4 == 2 && (a6 & 1) == 0)
  {
    v76 = 0u;
    v77 = 0u;
    v75 = &unk_2A1F0E928;
    v80 = 0.0;
    v78 = 0;
    v79 = &off_2A1F0B5F0;
    v83 = 0;
    if (&v76 != a2)
    {
      v14 = a2[1];
      v76 = *a2;
      v77 = v14;
      v78 = *(a2 + 4);
    }

    v81 = a3;
    v82 = 2;
    BlueFin::stTimeOfAsstPos::GetTime(this, *(a1 + 296), &v69);
    v80 = v69.f64[1];
    v83 = a7;
    if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      (*(v75 + 3))(&v75, 0, 0);
    }

    v12.i64[0] = *&v58[24];
  }

  if (*(*(a1 + 296) + 2568) == -7200001)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(*(a1 + 296) + 2568);
  }

  if (*v12.i64 <= 0.0)
  {
    *&v58[24] = 0x40A7700000000000;
    GlCustomLog(12, "GlPeAsstPosMgr(%u): New position: Warning: Using default horizontal accuracy (%.1lfkm)\n", v15, 3.0);
  }

  v12.i64[0] = *&v58[32];
  if (*&v58[32] <= 0.0)
  {
    *&v58[32] = 0x4072C00000000000;
    GlCustomLog(12, "GlPeAsstPosMgr(%u): New position: Warning: Using default vertical accuracy (%.1lfkm)\n", v15, 0.3);
  }

  AgeS = BlueFin::stTimeOfAsstPos::GetAgeS(&v62, *(a1 + 296), v12, a9);
  v18 = AgeS;
  v19 = *&v58[24];
  if (AgeS != -1)
  {
    v20 = *&v58[24] + (25 * AgeS);
    *&v58[24] = v20;
    v19 = 540000.0;
    if (v20 <= 540000.0)
    {
      v19 = v20;
    }

    else
    {
      GlCustomLog(13, "GlPeAsstPosMgr(%u): New position: Aged HorAcc (%.1lfkm) being capped at %dkm\n", v15, v20 * 0.001, 540);
      *&v58[24] = 0x41207AC000000000;
    }

    v21 = *&v58[32] + (5 * v18);
    *&v58[32] = v21;
    if (v21 > 30000.0)
    {
      GlCustomLog(13, "GlPeAsstPosMgr(%u): New position: Aged VerAcc (%.1lfkm) being capped at %dkm\n", v15, v21 * 0.001, 30);
      *&v58[32] = 0x40DD4C0000000000;
      v19 = *&v58[24];
    }
  }

  *(v67 + 8) = *v58;
  *(&v67[1] + 1) = *&v58[16];
  v22 = v60;
  v24 = v19 >= 400.0 || v60 != 1;
  v25 = *(a1 + 44);
  v26 = 1;
  if (v25 != -1 && v24)
  {
    v26 = v19 <= *(a1 + 24);
  }

  if (v60 == 2 && (a6 & 1) == 0)
  {
    BlueFin::stProcessedAsstPos::operator=(a1 + 144, v58);
    v25 = *(a1 + 44);
  }

  if (v26)
  {
    if (v25 == -1)
    {
      v39 = "Accepted because this is the first position into the manager";
    }

    else
    {
      if (v25 == 2)
      {
        v27 = !v24;
        if (v22 == 2)
        {
          v27 = 1;
        }

        if ((v27 & 1) == 0)
        {
          BlueFin::lla2ned((a1 + 112), v67 + 1, 0, v69.f64);
          v29 = sqrt(vaddvq_f64(vmulq_f64(v69, v69)));
          v30 = *(a1 + 24);
          v31 = "Rejected";
          v32 = *&v58[24] + v29 <= v30;
          if (*&v58[24] + v29 <= v30)
          {
            v31 = "Accepted";
          }

          v33 = "outside";
          if (*&v58[24] + v29 <= v30)
          {
            v33 = "within";
          }

          BlueFin::GlFormat::glsnprintf(&v75, 0x78, "%s because new region is %s current AGNSS region (HorzDelta:%.1lfkm, CurHorAcc:%.1lfkm)", v28, v31, v33, v29 * 0.001, v30 * 0.001);
          goto LABEL_64;
        }
      }

      if (v24)
      {
        BlueFin::GlFormat::glsnprintf(&v75, 0x78, "Accepted because the HorAcc <= current HorAcc (%.1lfkm)", v17, *(a1 + 24) * 0.001);
LABEL_63:
        v32 = 1;
        goto LABEL_64;
      }

      v39 = "Accepted because position is from KF and HorAcc < 400m";
    }

    BlueFin::GlFormat::glsnprintf(&v75, 0x78, v39, v17);
    goto LABEL_63;
  }

  if (v22 != 2 || v25 == 2)
  {
    BlueFin::GlFormat::glsnprintf(&v75, 0x78, "Rejected because new HorAcc is not improved over current HorAcc (%.1lfkm)", v17, *(a1 + 24) * 0.001);
    v32 = 0;
  }

  else
  {
    BlueFin::lla2ned((a1 + 112), v67 + 1, 0, v69.f64);
    v35 = sqrt(vaddvq_f64(vmulq_f64(v69, v69)));
    v36 = *(a1 + 24);
    v37 = "Rejected";
    v32 = v36 + v35 > *&v58[24];
    if (v36 + v35 > *&v58[24])
    {
      v37 = "Accepted";
    }

    v38 = "within";
    if (v36 + v35 > *&v58[24])
    {
      v38 = "outside";
    }

    BlueFin::GlFormat::glsnprintf(&v75, 0x78, "%s because current region is %s new AGNSS region (HorzDelta:%.1lfkm, CurHorAcc:%.1lfkm)", v34, v37, v38, v35 * 0.001, v36 * 0.001);
  }

LABEL_64:
  if (*(*(a1 + 296) + 2568) == -7200001)
  {
    v40 = 0;
  }

  else
  {
    v40 = *(*(a1 + 296) + 2568);
  }

  GlCustomLog(14, "GlPeAsstPosMgr(%u): New position: LLA:[%+.5lf %+.5lf %.0lf]  HorzUnc:%.1lfkm  VertUnc:%.1lfkm\n", v40, *v58, *&v58[8], *&v58[16], *&v58[24] * 0.001, *&v58[32] * 0.001);
  v73 = &off_2A1F0B5F0;
  v74 = 0;
  if (v62 == 1)
  {
    v41 = v65;
  }

  else
  {
    v42 = *(a1 + 296);
    if (!v42[644])
    {
      goto LABEL_72;
    }

    BlueFin::GlPeTimeManager::GetTime(v42, -7199999.0, 1, &v69);
    v71 = &off_2A1F0B5F0;
    v72 = 0;
    BlueFin::GlPeGnssTime::GetGps(&v69, &v71);
    v41 = v72;
  }

  v74 = v41;
LABEL_72:
  GlCustomLog(14, "GlPeAsstPosMgr(%u): New position: TimeTagOfUpdate:[", v40);
  v43 = (v73[4])(&v73);
  LODWORD(v44) = v74;
  if (v44 * 2.32830644e-10 + v43 <= 0.0)
  {
    GlCustomLog(14, "GpsTime:<unknown>");
  }

  else
  {
    v45 = (v73[4])(&v73);
    v46 = (v73[4])(&v73);
    LODWORD(v47) = v74;
    GlCustomLog(14, "GpsWk:%d  GpsTowS:%.1lf", v45 / 0x93A80, v47 * 2.32830644e-10 + (v46 % 0x93A80));
  }

  GlCustomLog(14, "]");
  v50 = BlueFin::stTimeOfAsstPos::GetAgeS(&v62, *(a1 + 296), v48, v49);
  GlCustomLog(14, "  Age:");
  if (v50 == -1)
  {
    GlCustomLog(14, "<unknown>");
  }

  else if (v50 > 0xE0F)
  {
    if (v50 >> 7 >= 0x2A3)
    {
      GlCustomLog(14, "%.1fdays");
    }

    else
    {
      GlCustomLog(14, "%.1fhrs");
    }
  }

  else
  {
    GlCustomLog(14, "%us", v50);
  }

  v51 = __const__ZN7BlueFin14GlPeAsstPosMgr10SetUserDynENS_9GlUserDynE_acUserDynImage[v59 + 1];
  GlCustomLog(14, "  UserDyn:%s  Src:%s\n", v51, off_29EEB3608[v60 + 1]);
  GlCustomLog(14, "GlPeAsstPosMgr(%u): New position: Result: %s\n", v40, &v75);
  BlueFin::lla2ecef(v67 + 1, &v69);
  v66 = v69;
  *&v67[0] = v70;
  if (a7)
  {
    if (v60 != 2)
    {
      DeviceFaultNotify("glpe_asstposmgr.cpp", 796, "processAssistance", "otNewPos.m_eSrc == GLPE_ASST_POS_SRC_ASST");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_asstposmgr.cpp", 796, "otNewPos.m_eSrc == GLPE_ASST_POS_SRC_ASST");
    }

    v52 = *(a1 + 288);
    if ((v52 + 57312) != v58)
    {
      v53 = *&v58[16];
      *(v52 + 57312) = *v58;
      *(v52 + 57328) = v53;
      *(v52 + 57344) = *&v58[32];
    }

    *(v52 + 57360) = v65;
    *(v52 + 57368) = v59;
    *(v52 + 57372) = 2;
    *(v52 + 57376) = v68;
  }

  if (v32)
  {
    v54 = BlueFin::stProcessedAsstPos::operator=(a1, v58);
    if (v60 != 1 && v60 != 4)
    {
      *(a1 + 312) = 1;
    }

    BlueFin::GlPeKF::SetAsstPos(*(a1 + 288), a1, v54, v55);
  }

  v56 = *MEMORY[0x29EDCA608];
  return v32;
}

void BlueFin::GlPeKF::SetAsstPos(uint64_t a1, uint64_t *a2, int8x16_t a3, int8x16_t a4)
{
  v6 = a1 + 60952;
  AgeS = BlueFin::stTimeOfAsstPos::GetAgeS((a2 + 7), *(a1 + 60968), a3, a4);
  BlueFin::stTimeOfAsstPos::GetTime((a2 + 7), *(v6 + 16), v34);
  BlueFin::GlPeTimeManager::GetTime(*(v6 + 16), 1, v31);
  v32 = &off_2A1F0B5F0;
  v33 = 0;
  BlueFin::GlPeGnssTime::GetGps(v31, &v32);
  v11 = v33;
  v12 = HIDWORD(v33);
  v14 = *(a1 + 144);
  v13 = *(a1 + 148);
  if (*(a1 + 144))
  {
    v16 = HIDWORD(v33) - v13;
    if (v33 < __PAIR64__(v13, v14))
    {
      v12 = (__PAIR64__(v13 - HIDWORD(v33), v14) - v33) >> 32;
      v11 = v14 - v33;
      v15 = 1;
    }

    else
    {
      v15 = 0;
      v12 = (__PAIR64__(v16, v33) - v14) >> 32;
      v11 = v33 - v14;
    }
  }

  else
  {
    v15 = 0;
  }

  *v8.i64 = v11 * 2.32830644e-10 + v12;
  if ((v15 & ((v12 | v11) != 0)) != 0)
  {
    *v8.i64 = -*v8.i64;
  }

  *v10.i64 = *v8.i64 + trunc(*v8.i64 * 2.32830644e-10) * -4294967300.0;
  v17.f64[0] = NAN;
  v17.f64[1] = NAN;
  v18 = vnegq_f64(v17);
  v10.i64[0] = vbslq_s8(v18, v10, v8).u64[0];
  if (*v8.i64 > 4294967300.0)
  {
    v8.i64[0] = v10.i64[0];
  }

  if (*v8.i64 < -4294967300.0)
  {
    *v9.i64 = -*v8.i64;
    *v8.i64 = -(*v8.i64 - trunc(*v8.i64 * -2.32830644e-10) * -4294967300.0);
    *v8.i64 = -*vbslq_s8(v18, v8, v9).i64;
  }

  if (*v8.i64 < 0.0)
  {
    v19 = --*v8.i64;
  }

  else
  {
    v19 = *v8.i64;
  }

  if (*(a1 + 160) != 1 || v19 >= 0x259)
  {
    if (AgeS <= 0xE0F)
    {
      if (*(a2 + 48) == 1)
      {
        *(v6 + 536) = 0;
      }

      else if (*(a2 + 11) == 2)
      {
        *(v6 + 537) = 1;
      }
    }

    v20 = *a2;
    v21 = a2[1];
    *(a1 + 80) = *a2;
    *(a1 + 88) = v21;
    v22 = a2[2];
    v23 = *(a2 + 3);
    *(a1 + 96) = v22;
    v24 = v23;
    if (v24 < 3000.0)
    {
      v24 = 3000.0;
    }

    *(a1 + 104) = v24;
    if (v24 >= 100000.0)
    {
      v25 = 0;
      v26 = *(a2 + 11);
      if (v26 == 1)
      {
        v27 = 2;
      }

      else
      {
        v27 = *(a2 + 11);
      }
    }

    else
    {
      if (AgeS < 0xE10)
      {
        v25 = 1;
      }

      else
      {
        v25 = 3;
      }

      v26 = *(a2 + 11);
      v27 = v26;
    }

    *(a1 + 160) = v27;
    *(a1 + 144) = v35;
    v28 = *(a2 + 10);
    *(a1 + 152) = v25;
    *(a1 + 156) = v28;
    *(a1 + 40) = v20;
    *(a1 + 48) = v21;
    *(a1 + 56) = v22;
    v29 = *(a2 + 4);
    if (v29 > 100.0)
    {
      v29 = 100.0;
    }

    *(a1 + 64) = v29;
    *(a1 + 72) = v26;
    if (v26 == 2)
    {
      BlueFin::GlPeKF::AdjustAltSigmaForSimulation(a1);
      v25 = *(a1 + 152);
    }

    *(a1 + 1086) = v25 != 1;
    v30 = *(*v6 + 40);
    *(a1 + 1098) = v30 == 2;
    *(a1 + 1090) = v30 == 3;
  }
}

void BlueFin::stTimeOfAsstPos::GetTime(BlueFin::stTimeOfAsstPos *this@<X0>, BlueFin::GlPeTimeManager *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = &off_2A1F0B5F0;
  *(a3 + 8) = 0;
  if (*this == 1)
  {
    v4 = *(this + 3);
    goto LABEL_6;
  }

  if (*this != 2)
  {
    return;
  }

  if (*(a2 + 644))
  {
    BlueFin::GlPeTimeManager::GetTime(a2, *(this + 1), 1, v14);
    v15 = &off_2A1F0B5F0;
    v16 = 0;
    BlueFin::GlPeGnssTime::GetGps(v14, &v15);
    v4 = v16;
LABEL_6:
    *(a3 + 8) = v4;
    return;
  }

  v5 = *(this + 1);
  if (v5 < 604800000.0)
  {
    v6 = v5 * 0.001;
    v7 = fmod(v5 * 0.001, 604800.0);
    *v9.i64 = v7 + 604800.0;
    if (v7 >= 0.0)
    {
      *v9.i64 = v7;
    }

    v14[0] = &off_2A1F0B5F0;
    *v8.i64 = *v9.i64 - trunc(*v9.i64);
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v8.i64[0] = vbslq_s8(vnegq_f64(v10), v8, v9).i64[0];
    if (*v8.i64 < 0.0 || *v8.i64 >= 1.0)
    {
      DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
    }

    v12 = *v8.i64 * 4294967300.0 + 0.5;
    v13 = v12;
    if (v12 >= 4294967300.0)
    {
      v13 = -1;
    }

    *(a3 + 8) = v13;
    *(a3 + 12) = *v9.i64 + 604800 * ((v6 / 604800.0) - (v7 < 0.0));
  }
}

uint64_t BlueFin::GlPeLtoEphemeris::GetFcn(BlueFin::GlPeLtoEphemeris *this, signed __int8 *a2)
{
  if ((*(this + 8) & 0xF0) != 0x20)
  {
    return 0;
  }

  result = (*(*this + 192))(this, 35);
  if (result)
  {
    *a2 = (*(*this + 208))(this, 36);
    return 1;
  }

  return result;
}

uint64_t BlueFin::GlGnssSet::operator|@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = 0;
  *(a3 + 168) = a3;
  do
  {
    v7 = *(a3 + 168) + v6;
    *(v7 + 12) = 0;
    *v7 = v7 + 12;
    *(v7 + 8) = 2;
    v6 += 24;
  }

  while (v6 != 168);
  for (i = 0; i != 168; i += 24)
  {
    v9 = *(a2 + 168);
    BlueFin::GlSetBase::GlSetBase(v11, v12, 2u, (*(a1 + 168) + i));
    v13 = &v15;
    v14 = 2;
    v15 = 0;
    BlueFin::GlSetBase::OperatorBinaryOr(v11, &v13, (v9 + i));
    BlueFin::GlSetBase::operator=(v11, &v13);
    *v12 = v15;
    result = BlueFin::GlSetBase::operator=(*(a3 + 168) + i, v11);
    *(result + 12) = *v12;
  }

  return result;
}

unint64_t BlueFin::GlPeStartupMgr::updateTimeToEphemeris(unint64_t this)
{
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    v1 = this;
    this = BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0xD);
    if (this)
    {
      v2 = 0;
      v3 = *(*v1 + 120968);
      v4 = 7;
      do
      {
        this = BlueFin::GlSetBase::Cnt(v3);
        v2 += this;
        v3 = (v3 + 24);
        --v4;
      }

      while (v4);
      v5 = v2;
      if (v2 >= 2u)
      {
        if (v2 >= 0xCu)
        {
          v5 = 12;
        }

        v6 = (v5 - 1);
        if (v1[v6 + 14] == -7200001)
        {
          v7 = BlueFin::GlUtils::m_pInstance;
          v8 = &v1[v6 + 14];
          do
          {
            if (*v8 != -7200001)
            {
              break;
            }

            *v8-- = *(v7 + 1092) - v1[10];
            v9 = __OFSUB__(v5--, 1);
          }

          while (!((v5 < 0) ^ v9 | (v5 == 0)));
        }
      }
    }
  }

  return this;
}

uint64_t BlueFin::GlDineCtrl::SetLowSignalStrengthMode(BlueFin::GlDineCtrl *this, int a2)
{
  v3 = "Disabled";
  if (a2)
  {
    v3 = "Enabled";
  }

  GlCustomLog(15, "GlDineCtrl::SetLowSignalStrengthMode(%s)\n", v3);
  v4 = *(*(this + 3644) + 64);

  return v4();
}

unsigned __int8 *BlueFin::GlPeNavGnssMeasMgr::UpdateNavMeas(int32x2_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v8 = **&a1[1];
  *v86 = &v86[12];
  v86[8] = 8;
  memset(&v86[12], 0, 32);
  if ((*(*v6 + 1056))(v6))
  {
    memset(__src, 0, 24);
    v9 = a1[2];
    if (*(*&v9 + 100) != -1)
    {
      *v80 = *(*&v9 + 144);
      *&v80[16] = *(*&v9 + 160);
      if (BlueFin::ecef2lla(v80, __src))
      {
        BlueFin::GlPeAlmMgr::Invisible(*&a1[2] + 34112, 0, v8, __src, v86, 0, v10, v11, v75, v76, *__src, *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[88], *&__src[104], *&__src[120], v78, v79, v80[0], *&v80[4], *&v80[8], v80[12], *&v80[16], *&v80[32], *&v80[48], *&v80[64], *&v80[80], v81, v82, v83, v84, v85[0], v85[1], v85[2], v85[3], v85[4], *v86, *&v86[16], *&v86[32], v87, v88, v89, v90, v91);
      }
    }
  }

  BlueFin::GlSignalIdSet::GetSvIdSet(a2, __src);
  v12 = a1[1];
  v80[0] = *(*&v12 + 104);
  memcpy(&v80[8], *(*&v12 + 96), 4 * v80[0]);
  *&v80[2] = 0;
  v80[1] = 0;
  *&v80[4] = *&v80[8];
  result = BlueFin::GlSetIterator::operator++(v80);
  if (v80[1] != v80[0])
  {
    while (*&v80[2] < 0x23FuLL)
    {
      v14 = a1[1];
      v15 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * *&v80[2];
      v16 = *v15;
      LODWORD(v15) = v15[1];
      LOBYTE(v92) = v16;
      v93 = v15;
      LOWORD(v94) = *&v80[2];
      BlueFin::GlPeMsmtMgr::GetMeMeas(v14, &v92, 0, 1u);
      result = BlueFin::GlSetIterator::operator++(v80);
      if (v80[1] == v80[0])
      {
        goto LABEL_8;
      }
    }

LABEL_83:
    v72 = "usIndex < NUM_SIGNAL_IDS";
    DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
    v73 = "glsignalid.h";
    v74 = 578;
    goto LABEL_84;
  }

LABEL_8:
  if ((*(*(*a1 + 160) + 1) & 1) == 0 || (*(a2 + 189) & 4) == 0)
  {
    BlueFin::GlPeNavMeasUtil::processNewMeas(&a1[280], a2, a3);
    BlueFin::GlSetBase::GlSetBase((&v84 + 8), v85 + 1, 0x13u, (*&a1[1] + 184));
    LOBYTE(v92) = v85[0];
    memcpy(&v94, *(&v84 + 1), 4 * LOBYTE(v85[0]));
    HIWORD(v92) = 0;
    BYTE1(v92) = 0;
    v93 = v94;
    for (result = BlueFin::GlSetIterator::operator++(&v92); BYTE1(v92) != v92; result = BlueFin::GlSetIterator::operator++(&v92))
    {
      if (HIWORD(v92) >= 0x23FuLL)
      {
        goto LABEL_83;
      }

      v17 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * HIWORD(v92);
      v18 = *v17;
      LODWORD(v17) = v17[1];
      BYTE8(v87) = v18;
      HIDWORD(v87) = v17;
      LOWORD(v88) = HIWORD(v92);
      MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(*&a1[1], (&v87 + 8), 0, 0);
      v80[0] = *MeMeas;
      v20 = *(MeMeas + 1);
      *&v80[8] = *(MeMeas + 4);
      *&v80[4] = v20;
      *&v80[12] = *(MeMeas + 3);
      v21 = *(MeMeas + 4);
      v23 = *(MeMeas + 1);
      v22 = *(MeMeas + 2);
      *&v80[48] = *(MeMeas + 3);
      *&v80[64] = v21;
      *&v80[16] = v23;
      *&v80[32] = v22;
      v24 = *(MeMeas + 8);
      v26 = *(MeMeas + 5);
      v25 = *(MeMeas + 6);
      v82 = *(MeMeas + 7);
      v83 = v24;
      *&v80[80] = v26;
      v81 = v25;
      PeMeas = BlueFin::GlPeMsmtMgr::GetPeMeas(*&a1[1], (&v87 + 8), 0);
      v28 = *PeMeas;
      v29 = *(PeMeas + 16);
      *&__src[32] = *(PeMeas + 32);
      *__src = v28;
      *&__src[16] = v29;
      __src[40] = *(PeMeas + 40);
      v30 = *(PeMeas + 44);
      *&__src[48] = *(PeMeas + 48);
      *&__src[44] = v30;
      v31 = *(PeMeas + 80);
      v32 = *(PeMeas + 68);
      *&__src[52] = *(PeMeas + 52);
      *&__src[68] = v32;
      *&__src[80] = v31;
      *&__src[96] = *(PeMeas + 96);
      v33 = *(PeMeas + 100);
      *&__src[114] = *(PeMeas + 114);
      *&__src[100] = v33;
      if ((*(**a1 + 1056))())
      {
        v34 = (1 << (BYTE8(v87) & 0x1F)) & *(*v86 + ((BYTE8(v87) >> 3) & 0x1C));
        v35 = "NOT Visible!";
        if (v34)
        {
          v36 = 10;
        }

        else
        {
          v35 = "Visible";
          v36 = 15;
        }

        GlCustomLog(v36, "StrictAssert:  SVID %d is %s\n", BYTE8(v87), v35);
        if (v34)
        {
          v72 = "bIsVisible";
          DeviceFaultNotify("glpe_navgnssmeasmgr.cpp", 126, "UpdateNavMeas", "bIsVisible");
          v73 = "glpe_navgnssmeasmgr.cpp";
          v74 = 126;
LABEL_84:
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v73, v74, v72);
        }
      }

      HIWORD(v76) = **(a3 + 32);
      DWORD1(v87) = 0;
      BlueFin::GlPeNavMeasUtil::processEl(&a1[280], &v87 + 8, a2, &v76 + 7, &v87 + 1);
      if (v37 <= 0.0)
      {
        if (v37 >= 0.0)
        {
          LOWORD(v39) = 0;
          goto LABEL_23;
        }

        v38 = v37 + -0.5;
      }

      else
      {
        v38 = v37 + 0.5;
      }

      v39 = v38;
LABEL_23:
      *&__src[104] = v39;
      if (*(&v87 + 1) <= 0.0)
      {
        if (*(&v87 + 1) >= 0.0)
        {
          LOWORD(v41) = 0;
          goto LABEL_29;
        }

        v40 = *(&v87 + 1) + -0.5;
      }

      else
      {
        v40 = *(&v87 + 1) + 0.5;
      }

      v41 = v40;
LABEL_29:
      *&__src[106] = v41;
      v42 = *(a3 + 32);
      if (SHIWORD(v76) > *v42 && *(&v81 + 3) < 0.0000000149999995 && (v80[12] & 2) != 0 && *&v80[48])
      {
        *v42 = HIWORD(v76);
      }

      if (v37 < 5.0 && *(a2 + 176) >> 5 <= 0x752u)
      {
        *&__src[96] &= 0xFFFFFFC9;
        *&__src[128] = 1285;
        __src[110] = 0;
      }

      BlueFin::GlPeProbation::UpdateProbationInfo(a1 + 9, v80, __src, (a2 + 88), v8);
      BlueFin::GlPeSvVisibilityCache::UpdateVisibilityInfo(&a1[64], v80, __src, v8, v43, v44, v45, v46, v75, *(&v75 + 1), v76, *(&v76 + 1), *__src, *&__src[8], *&__src[16], *&__src[24]);
      if (BlueFin::GlPeTimeManager::GetSystemConversionUncUs(*&a1[4], BlueFin::GlSvId::s_aucSvId2gnss[BYTE8(v87)]) > 0.01)
      {
        *&__src[96] &= ~4u;
        if (!__src[128])
        {
          __src[128] = 19;
        }
      }

      BlueFin::GlPeMsmtMgr::SetPeMeas(*&a1[1], __src, 0);
    }

    v47 = *(a2 + 188);
    if ((v47 & 0x1000) == 0)
    {
      goto LABEL_61;
    }

    *v80 = &v80[12];
    v80[8] = 19;
    memset(&v80[12], 0, 76);
    BlueFin::GlSetBase::GlSetBase(__src, &__src[12], 0x13u, (*&a1[1] + 8));
    LOBYTE(v92) = __src[8];
    memcpy(&v94, *__src, 4 * __src[8]);
    HIWORD(v92) = 0;
    BYTE1(v92) = 0;
    v93 = v94;
    result = BlueFin::GlSetIterator::operator++(&v92);
    if (BYTE1(v92) == v92)
    {
      goto LABEL_88;
    }

    v48 = 0;
    do
    {
      if (HIWORD(v92) >= 0x23FuLL)
      {
        goto LABEL_83;
      }

      v49 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * HIWORD(v92);
      v50 = *v49;
      LODWORD(v49) = v49[1];
      BYTE8(v87) = v50;
      HIDWORD(v87) = v49;
      LOWORD(v88) = HIWORD(v92);
      if (BlueFin::GlSvId::s_aucSvId2gnss[v50] == 4)
      {
        *(*v80 + ((HIWORD(v92) >> 3) & 0x1FFC)) |= 1 << SBYTE2(v92);
      }

      else
      {
        v51 = BlueFin::GlPeMsmtMgr::AccessPeMeas(*&a1[1], (&v87 + 8), 0);
        v48 += BlueFin::stPeSigMeasKF::IsPRValidForNav(v51);
      }

      result = BlueFin::GlSetIterator::operator++(&v92);
    }

    while (BYTE1(v92) != v92);
    if (v48 < 6u)
    {
LABEL_88:
      if (**v80)
      {
        goto LABEL_51;
      }

      if (v80[8] >= 2uLL)
      {
        v55 = v80[8] - 1;
        v56 = (*v80 + 4);
        while (!*v56++)
        {
          if (!--v55)
          {
            goto LABEL_60;
          }
        }

LABEL_51:
        result = BlueFin::GlSetBase::operator==(v80, __src);
        if ((result & 1) == 0)
        {
          LOBYTE(v92) = v80[8];
          memcpy(&v94, *v80, 4 * v80[8]);
          HIWORD(v92) = 0;
          BYTE1(v92) = 0;
          v93 = v94;
          result = BlueFin::GlSetIterator::operator++(&v92);
          if (BYTE1(v92) != v92)
          {
            while (HIWORD(v92) < 0x23FuLL)
            {
              v52 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * HIWORD(v92);
              v53 = *v52;
              LODWORD(v52) = v52[1];
              BYTE8(v87) = v53;
              HIDWORD(v87) = v52;
              LOWORD(v88) = HIWORD(v92);
              v54 = BlueFin::GlPeMsmtMgr::AccessPeMeas(*&a1[1], (&v87 + 8), 0);
              *(v54 + 96) &= 0xFFFFFFC9;
              *(v54 + 128) = 7967;
              result = BlueFin::GlSetIterator::operator++(&v92);
              if (BYTE1(v92) == v92)
              {
                goto LABEL_60;
              }
            }

            goto LABEL_83;
          }
        }
      }
    }

LABEL_60:
    v47 = *(a2 + 188);
LABEL_61:
    if ((v47 & 0x80000) != 0 && *(a2 + 176) <= 0x7CFu)
    {
      *__src = &__src[12];
      __src[8] = 19;
      memset(&__src[12], 0, 76);
      v58 = a1[1];
      v80[0] = *(*&v58 + 16);
      memcpy(&v80[8], *(*&v58 + 8), 4 * v80[0]);
      *&v80[2] = 0;
      v80[1] = 0;
      *&v80[4] = *&v80[8];
      BlueFin::GlSetIterator::operator++(v80);
      while (v80[1] != v80[0])
      {
        v59 = *&v80[2];
        if (*&v80[2] >= 0x23FuLL)
        {
          goto LABEL_83;
        }

        v60 = a1[1];
        v61 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * *&v80[2];
        v62 = *v61;
        LODWORD(v61) = v61[1];
        LOBYTE(v92) = v62;
        v93 = v61;
        LOWORD(v94) = *&v80[2];
        v63 = BlueFin::GlPeMsmtMgr::GetPeMeas(v60, &v92, 0);
        if (BlueFin::stPeSigMeasKF::IsPRValidForNav(v63))
        {
          *(*__src + ((v59 >> 3) & 0x1FFC)) |= 1 << v59;
        }

        BlueFin::GlSetIterator::operator++(v80);
      }

      v64 = a1[6];
      v92 = 0;
      v94 = v96;
      v95 = 8;
      memset(v96, 0, 32);
      v97 = xmmword_298A41DA0;
      v98 = vdup_n_s32(0x42C60000u);
      v99 = 1120272384;
      BlueFin::stDops::stDops(v80, &v92);
      *&v80[88] = v64;
      v65 = **&a1[1];
      BlueFin::GlSignalIdSet::GetSvIdSetBySignalIndex(__src, 2, &v87 + 8);
      DWORD1(v87) = 0;
      BlueFin::GlPeDops::GetDops();
      v66 = *(&v97 + 1);
      result = BlueFin::GlSignalIdSet::GetSvIdSetBySignalIndex(__src, 2, v80);
      v67 = 0;
      v68 = (*v80 + 4 * v80[8] - 4);
      do
      {
        if (*v68)
        {
          v69 = *v68 - (((*v68 >> 2) & 0x9249249) + ((*v68 >> 1) & 0x5B6DB6DB));
          v67 = ((v69 + (v69 >> 3)) & 0xC71C71C7) + v67 - 63 * (((v69 + (v69 >> 3)) & 0xC71C71C7) / 0x3F);
        }

        --v68;
      }

      while (v68 >= *v80);
      if (v66 < 3.0 && v67 > 5u)
      {
        v71 = 2;
      }

      else
      {
        v71 = 0;
      }

      *(*a1 + 26300) = v71;
    }

    else
    {
      *(*a1 + 26300) = 0;
    }

    if (**(a3 + 32))
    {
      return (*(**&a1[6] + 56))(*&a1[6]);
    }
  }

  return result;
}

unsigned __int8 *BlueFin::GlSignalIdSet::GetPrimarySignalSvIdSet@<X0>(unsigned __int8 *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 12) = 0u;
  v2 = a2 + 12;
  *a2 = a2 + 12;
  *(a2 + 8) = 8;
  *(a2 + 28) = 0u;
  v3 = *this;
  v4 = this[8];
  if (!**this)
  {
    if (v4 < 2)
    {
      return this;
    }

    v8 = v4 - 1;
    v9 = v3 + 1;
    while (!*v9++)
    {
      if (!--v8)
      {
        return this;
      }
    }
  }

  v11 = this[8];
  memcpy(v15, v3, 4 * v4);
  v13 = 0;
  v12 = 0;
  v14 = v15[0];
  for (this = BlueFin::GlSetIterator::operator++(&v11); v12 != v11; this = BlueFin::GlSetIterator::operator++(&v11))
  {
    if (v13 >= 0x23FuLL)
    {
      DeviceFaultNotify("glsignalid.h", 594, "GetSignalIndexFromIndex", "usIndex < NUM_SIGNAL_IDS");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 594, "usIndex < NUM_SIGNAL_IDS");
    }

    v5 = *(&BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v13 + 1);
    if (v5 == 3 || v5 == 0)
    {
      v7 = *(&BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v13);
      *(v2 + ((v7 >> 3) & 0x1C)) |= 1 << v7;
    }
  }

  return this;
}

uint64_t BlueFin::GlPeMsmtMgr::Init_IntPr(uint64_t this)
{
  v1 = *(this + 18792);
  v4 = v1 + 1152;
  v5 = *(v1 + 1186) + 1;
  if (*(v1 + 1184) > v5)
  {
    v2 = this;
    do
    {
      BlueFin::GlSignalIdArrayIterator::Next(&v4, v3);
      this = BlueFin::GlSignalIdArray::Get(*(v2 + 18792), v3);
      *(this + 232) = -1;
    }

    while (v5 < *(v4 + 32));
  }

  return this;
}

uint64_t BlueFin::GlPeKFAltAsst::altAsstFirstFix(uint64_t a1, uint64_t a2, double *a3, unsigned int a4)
{
  if (*(a1 + 2) != 1)
  {
    return 0;
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1157234688;
  v7 = *a3;
  v8 = a3[1];
  if (BlueFin::GlPeLatLonRegionSet::disabledRegion(&BlueFin::GlPeKFAltAsst::m_otCityFine, v7, v8))
  {
    return 0;
  }

  Region = BlueFin::GlPeLatLonRegionSet::findRegion(&BlueFin::GlPeKFAltAsst::m_otCityFine, v7, v8);
  if ((Region & 0x8000) != 0)
  {
    v16 = *a3;
    v18 = 0.5;
    if (*a3 <= 0.0 && (v18 = -0.5, v16 >= 0.0))
    {
      v19 = 39;
    }

    else
    {
      v19 = ((v16 + v18) + 39);
      if (v19 > 0x65)
      {
        return 0;
      }
    }

    v20 = (qword_2A18BAD08 + 4 * v19);
    if (!*v20)
    {
      return 0;
    }

    v21 = a4 * 0.0000089993;
    v22 = v20[1];
    if (v22 > (*v20 - 1))
    {
      v23 = *v20 - 1;
      *v11.i64 = floor(fabs(v16) / 15.0);
      *v12.i64 = *v11.i64 - trunc(*v11.i64 * 2.32830644e-10) * 4294967300.0;
      v24.f64[0] = NAN;
      v24.f64[1] = NAN;
      v25 = vnegq_f64(v24);
      v12.i64[0] = vbslq_s8(v25, v12, v11).u64[0];
      if (*v11.i64 > 4294967300.0)
      {
        v11.i64[0] = v12.i64[0];
      }

      v26 = *v11.i64;
      v27 = (qword_2A18BACF8 + 12 * (*v20 - 1) + 4);
      do
      {
        v28 = *(v27 - 2);
        v29 = *(v27 - 2);
        v25.i16[0] = *(v27 - 1);
        *&v30 = v25.u32[0];
        v31 = ((v28 >> 9) - 50) + (*&v30 * 0.0001);
        LOWORD(v30) = v27[1];
        *v25.i32 = v31 + (v30 * 0.0001);
        LOWORD(v13) = *v27;
        v32 = LODWORD(v13);
        v33 = -(v29 + (v32 * 0.0001));
        if ((v28 & 0x100) == 0)
        {
          v33 = v29 + (v32 * 0.0001);
        }

        LOWORD(v32) = v27[2];
        v13 = v33 + (LODWORD(v32) * 0.0001);
        if (v33 >= v8 || v13 <= v8)
        {
          if (v31 >= v7 || *v25.i32 <= v7)
          {
            v36 = v7 - *v25.i32;
            if (v31 <= v7)
            {
              v37 = v36;
            }

            else
            {
              v37 = v31 - v7;
            }

            v38 = v33 - v8;
            v39 = v8 - v13;
            if (v33 <= v8)
            {
              v38 = v39;
            }

            *v25.i32 = v38 * flt_298A43DAC[v26];
            v13 = *v25.i32 + (v37 * 0.4);
            if (v37 <= *v25.i32)
            {
              v40 = *v25.i32 + (v37 * 0.4);
            }

            else
            {
              v40 = v37 + (*v25.i32 * 0.4);
            }
          }

          else
          {
            v41 = v33 - v8;
            if (v33 <= v8)
            {
              v41 = v8 - v13;
            }

            *v25.i32 = flt_298A43DAC[v26];
            v40 = v41 * *v25.i32;
          }
        }

        else if (*v25.i32 >= v7)
        {
          v40 = v31 - v7;
        }

        else
        {
          v40 = v7 - *v25.i32;
        }

        v27 += 6;
        if (v40 < v21)
        {
          v21 = v40;
          Region = v23;
        }

        ++v23;
      }

      while (v22 != v23);
    }

    if ((Region & 0x8000) != 0)
    {
      return 0;
    }

    v14 = *(qword_2A18BACF8 + 12 * Region + 10);
    v15 = fminf((5 * (v14 & 0xF) + 5) + ((v21 * 111120.0) * 0.067), 400.0);
  }

  else
  {
    v14 = *(qword_2A18BACF8 + 12 * Region + 10);
    v15 = (5 * (v14 & 0xF) + 5);
    v16 = *a3;
  }

  v17 = *(a3 + 1);
  *a2 = v16;
  *(a2 + 8) = v17;
  *(a2 + 16) = ((v14 >> 4) - 100);
  *(a2 + 24) = v15;
  return 1;
}

BlueFin::SKFVector *BlueFin::GlPeHula::GetHulaMeas(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = (a1 + 3016);
  v7 = a2[14];
  v8 = *(a2 + 11);
  v9 = a2[24];
  v11 = *(a3 + 8);
  v10 = *(a3 + 16);
  if (*(a1 + 3008) != 1 || (v12 = *(a1 + 3040), v13 = *(a1 + 3048), v12 * v12 + v13 * v13 >= 160000.0))
  {
LABEL_12:
    v18 = *a2;
    if ((~*a2 & 0xC0) == 0 && *(a1 + 3072) >= 2)
    {
      *v10 = 0;
      goto LABEL_50;
    }

    if ((v18 & 0x44) == 0x40)
    {
      v19 = *(a1 + 3120);
      if (v19 < 0x1F5)
      {
        v22 = 0;
      }

      else
      {
        v20 = v7 - v19;
        v21 = v19 >= v7;
        v22 = v19 - v7;
        if (!v21)
        {
          v22 = v20;
        }

        v23 = *(a1 + 4216);
        if (v23 != 1 && v23 != 6)
        {
          v24 = (v18 & 0x100) != 0 ? 2011 : 12000;
          if (v22 >= v24 && !((*a2 >> 14) & 1))
          {
            goto LABEL_44;
          }
        }
      }

      v26 = *(a1 + 3040);
      v27 = *(a1 + 3048);
      v75 = *(a1 + 3056);
      if ((~v18 & 0x401) != 0)
      {
        v8 = 0.0;
      }

      if (v22 >= 0x3E8)
      {
        v22 = 1000;
      }

      v28 = v8 * v22 / 1000.0;
      v29 = v26 + v28;
      v30 = v27 + v28;
      if ((v18 & 8) != 0)
      {
        goto LABEL_41;
      }

      if (v29 > *(a1 + 3080) * 3.0)
      {
LABEL_44:
        *(a1 + 3008) = 0;
        *(a1 + 3040) = vdupq_n_s64(0x412E848000000000uLL);
        *v11 = 0;
        *v10 = 1;
        goto LABEL_50;
      }

      if (v9 > 0xA || *(a1 + 3072) - 4 >= 0xFFFFFFFE)
      {
LABEL_41:
        *(a1 + 3040) = v29;
        *(a1 + 3048) = v30;
      }

      else
      {
        v70 = *(a1 + 3072);
        v31 = *(a1 + 3032);
        v77 = *v6;
        v78 = v31;
        BlueFin::lla2ned(a2 + 13, &v77, 0, &v79);
        v32 = sqrt(v80 * v80 + v79 * v79);
        *(a1 + 3040) = v29;
        *(a1 + 3048) = v30;
        *(a1 + 3056) = v75;
        *(a1 + 3072) = v70;
        if (v32 > 200.0)
        {
          goto LABEL_44;
        }
      }

      *v10 = 0;
    }

    else
    {
      *v10 = 0;
      *(a1 + 3008) = 0;
    }

    *v11 = 1;
    if ((*a2 & 4) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_44;
  }

  if (v12 < 0.0 || v13 < 0.0)
  {
    if (*v10)
    {
      goto LABEL_49;
    }

    v14 = *(a1 + 3016);
    v15 = *(a1 + 3024);
LABEL_48:
    GlCustomLog(14, "WARNING: INVALID External location input is REJECTED: lla (%.6lf,%.6lf,%.1lf) unc (%.1lf,%.1lf)\n", v14, v15, *(a1 + 3032), *(a1 + 3040), v13);
    goto LABEL_49;
  }

  v14 = *(a1 + 3016);
  v15 = *(a1 + 3024);
  v16 = v15 == 0.0 && v14 == 0.0;
  v17 = *v10;
  if (fabs(v14) > 90.0 || v16 || fabs(v15) > 180.0)
  {
    if (*v10)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  if ((*v10 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_49:
  *(a1 + 3008) = 0;
  *(a1 + 3040) = vdupq_n_s64(0x412E848000000000uLL);
  *v10 = 1;
  *v11 = 0;
LABEL_50:
  v33 = a2[14];
  v34 = *a2;
  v69 = *(a2 + 17);
  v71 = *(a2 + 16);
  BlueFin::SKFVectorDim<100>::SKFVectorDim(&v79, (a1 + 1296));
  result = BlueFin::SKFVectorDim<100>::SKFVectorDim(&v77, (a1 + 2120));
  v36 = LODWORD(v80);
  if (LODWORD(v80) != DWORD2(v77))
  {
    DeviceFaultNotify("glpe_hula.cpp", 3557, "HulaHdgMeasQA", "otInputHdgDeg.GetLen() == otInputHdgRmseDeg.GetLen()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_hula.cpp", 3557, "otInputHdgDeg.GetLen() == otInputHdgRmseDeg.GetLen()");
  }

  *(a1 + 2985) = 0;
  *(a1 + 2128) = 0;
  *(a1 + 1304) = 0;
  if ((v34 & 1) != 0 && v36 && v33 - *(a1 + 2960) <= *(a1 + 5144))
  {
    *&v75 = v76;
    *(&v75 + 1) = 0x6400000000;
    bzero(v76, 0x328uLL);
    v72 = v74;
    v73 = 0x6400000000;
    bzero(v74, 0x328uLL);
    if (v36 >= 1)
    {
      v37 = v36 + 1;
      v38 = 1;
      do
      {
        v39 = *(v77 + 8 * v38);
        if (v39 >= 0.0)
        {
          v40 = *(*&v79 + 8 * v38) - floor(*(*&v79 + 8 * v38) / 360.0) * 360.0;
          if ((v34 & 0x800) == 0)
          {
            goto LABEL_66;
          }

          if (((v39 <= 30.0) & (v34 >> 5)) != 0)
          {
            goto LABEL_66;
          }

            ;
          }

          while (i <= -3.14159265)
          {
            i = i + 6.28318531;
          }

          if (i * 57.2957795 * (i * 57.2957795) <= fmax(v39 * v39 + v69 * 3282.80635, 9.0) * 16.0)
          {
LABEL_66:
            BlueFin::SKFVector::AddLen(&v75);
            *(v75 + 8 * SDWORD2(v75)) = v40;
            v42 = *(v77 + 8 * v38);
            BlueFin::SKFVector::AddLen(&v72);
            *&v72[8 * v73] = v42;
          }
        }

        ++v38;
      }

      while (v38 != v37);
    }

    result = BlueFin::GlPeHula::HulaHdgCombine(a1, &v75, &v72);
    *(a1 + 2985) = result;
  }

  v43 = a2[14];
  v44 = *(a2 + 1);
  v45 = *(a2 + 10);
  v46 = *a2;
  v47 = *(a2 + 4);
  v48 = *(a2 + 10);
  *(a1 + 1161) = 0;
  v49 = *(a1 + 1120);
  if (v49 >= 0.0)
  {
    if ((v43 - *(a1 + 1136)) >= 0x2BF21)
    {
      *(a1 + 1120) = 0xBFF0000000000000;
      *(a1 + 1162) = 0;
      v50 = (a1 + 1163);
LABEL_99:
      *v50 = 0;
      goto LABEL_100;
    }

    if ((v46 & 4) != 0)
    {
      goto LABEL_100;
    }

    if ((v46 & 0x2000) != 0)
    {
      v53 = v48 + v48;
      if (v49 >= v53 || (v46 & 8) != 0)
      {
        v53 = *(a1 + 1120);
      }

      if ((v46 & 0x8000) != 0)
      {
        v53 = *(a1 + 1120);
      }

      if (v48 < 25.0)
      {
        v48 = 25.0;
      }

      v61 = (v48 * v48) + v53 * v53;
      v51 = *(a1 + 1112);
      v62 = v51 - v47;
      if (v62 * v62 < v61 * 9.0)
      {
        goto LABEL_96;
      }

      if ((v46 & 0x10) != 0 || v62 <= 0.0 || v62 >= 1000.0)
      {
        goto LABEL_100;
      }

      v52 = v46 & 0x8000;
    }

    else
    {
      v51 = *(a1 + 1112);
      v52 = v46 & 0x8000;
      v53 = *(a1 + 1120);
    }

    v54 = v51 - v45;
    v55 = 100.0;
    if (v53 >= 100.0 || (v46 & 8) != 0)
    {
      v55 = v53;
    }

    if (!v52)
    {
      v53 = v55;
    }

    v57 = v44 * 1.9 * (v44 * 1.9) + v53 * v53;
    v58 = *(a1 + 1176) - 1;
    v59 = 0.0;
    if (v58 <= 2)
    {
      v59 = dbl_298A43BD8[v58];
    }

    if (v54 * v54 >= v57 * v59)
    {
      goto LABEL_100;
    }

LABEL_96:
    *(a1 + 1161) = 1;
    if (a2[24])
    {
      v63 = *(a3 + 24);
      *v63 = *(a1 + 1112);
      *(v63 + 8) = v49;
      *(v63 + 44) = 3;
      *(v63 + 16) = *(a1 + 1136);
      *(v63 + 48) = 1;
      *(a1 + 1162) = 1;
    }

    v50 = *a3;
    goto LABEL_99;
  }

LABEL_100:
  v64 = *(a2 + 11);
  v65 = *(a2 + 18);
  *(a1 + 1225) = 0;
  if (v46)
  {
    v66 = *(a1 + 1192);
    if (v66 > 0.00001 && (v43 - *(a1 + 1200)) <= *(a1 + 5144))
    {
      if ((v46 & 0x800) == 0)
      {
        goto LABEL_109;
      }

      v67 = v65 + v66 * v66;
      v68 = (*(a1 + 1184) - v64) * (*(a1 + 1184) - v64);
      if (v68 <= v67 * 9.0)
      {
        goto LABEL_109;
      }

      if (v67 < 0.25)
      {
        v67 = 0.25;
      }

      if ((v46 & 0x1000) != 0 || v68 <= v67 * 9.0)
      {
LABEL_109:
        *(a1 + 1225) = 1;
      }
    }
  }

  *(a1 + 1281) = 0;
  if (v46)
  {
    if (*(a1 + 1248) >= 0.0 && v43 - *(a1 + 1256) <= *(a1 + 5144))
    {
      *(a1 + 1281) = 1;
    }

    *(v6 + 1161) = 0;
    if (*(a1 + 4148) >= 0.0 && v43 - *(a1 + 4152) <= *(a1 + 5144) && fabsf(*(a1 + 4144)) <= 120.0)
    {
      *(v6 + 1161) = 1;
    }
  }

  else
  {
    *(v6 + 1161) = 0;
  }

  return result;
}

unsigned __int8 *BlueFin::GlPeVlss::UpdateVlssEnabledStatus(BlueFin::GlPeVlss *this, const BlueFin::GlPeMsmtMgr *a2)
{
  v51 = &v53;
  v52 = 19;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  memset(v56, 0, 28);
  if (BlueFin::GlSetBase::Cnt((a2 + 96)) >= 5)
  {
    v4 = *(this + 3);
    if ((v4 + 1) < 0x12C)
    {
      v5 = v4 + 1;
    }

    else
    {
      v5 = 300;
    }

    *(this + 3) = v5;
  }

  v46 = *(a2 + 104);
  memcpy(v50, *(a2 + 12), 4 * v46);
  v48 = 0;
  v47 = 0;
  v49 = v50[0];
  BlueFin::GlSetIterator::operator++(&v46);
  if (v47 == v46)
  {
    BlueFin::GlSetBase::operator=(this + 16, &v51);
    v6 = v53;
    *(this + 44) = v54;
    v7 = v56[0];
    *(this + 60) = v55;
    *(this + 76) = v7;
    *(this + 88) = *(v56 + 12);
    *(this + 28) = v6;
    v8 = 1700;
    v9 = -300;
    goto LABEL_36;
  }

  v41 = 0;
  v10 = 0;
  v11 = this + 104;
  v12 = 1700;
  v13 = -300;
  do
  {
    v14 = v48;
    if (v48 >= 0x23FuLL)
    {
LABEL_55:
      v38 = "usIndex < NUM_SIGNAL_IDS";
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      v39 = "glsignalid.h";
      v40 = 578;
      goto LABEL_56;
    }

    v15 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v48;
    v16 = *v15;
    LODWORD(v15) = v15[1];
    v43[0] = v16;
    v44 = v15;
    v45 = v48;
    MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(a2, v43, 0, 1u);
    if (MeMeas && (*(MeMeas + 3) & 0xC000) == 0x4000 && !*(MeMeas + 1) && (v16 - 1) <= 0xBB)
    {
      v18 = vcvtps_s32_f32(*(MeMeas + 29) * 10.0);
      if (v18 > v13)
      {
        v13 = v18;
      }

      if (v12 >= v18)
      {
        v12 = v18;
      }

      if ((*(*(this + 2) + 4 * (v14 >> 5)) >> (v14 & 0x1F)))
      {
        v19 = (*&v11[2 * v14] - v18);
        if (v19 < 0)
        {
          v19 = -v19;
        }

        if (v19 >= 0x32)
        {
          v20 = 50;
        }

        else
        {
          v20 = v19;
        }

        v21 = v41;
        v22 = v20 + v41;
        if (v19 >= 1)
        {
          v21 = v22;
        }

        v41 = v21;
      }

      *&v11[2 * v14] = v18;
      v10 = 1;
      *(v51 + (v14 >> 5)) |= 1 << (v14 & 0x1F);
    }

    BlueFin::GlSetIterator::operator++(&v46);
  }

  while (v47 != v46);
  BlueFin::GlSetBase::operator=(this + 16, &v51);
  v23 = v53;
  *(this + 44) = v54;
  v24 = v56[0];
  *(this + 60) = v55;
  *(this + 76) = v24;
  *(this + 88) = *(v56 + 12);
  *(this + 28) = v23;
  if ((v10 & 1) != 0 && *(this + 3) <= 0x12Bu)
  {
    v8 = v12;
    v9 = v13;
    if (v41 >= (v13 - v8))
    {
      v25 = (v13 - v8);
    }

    else
    {
      v25 = v41;
    }

    *(this + 2) = (*(this + 2) * 0.9) + (v25 * 0.1);
  }

  else
  {
    v8 = v12;
    v9 = v13;
  }

LABEL_36:
  if (*(this + 2) >= 40.0)
  {
    BlueFin::GlPeVlss::SetFadingStatusAuto(this, 2u);
  }

  if (*(this + 3) >= 0xFu && !*(this + 1))
  {
    BlueFin::GlPeVlss::SetFadingStatusAuto(this, 1u);
  }

  if (*this != 2)
  {
    v26 = *(this + 1);
    if (v26)
    {
      if (v26 < 3)
      {
        *this = v26;
        goto LABEL_45;
      }

      v38 = "rotFadingStatus == GLPE_FADING_NOT_KNOWN || rotFadingStatus == GLPE_FADING_NONE || rotFadingStatus == GLPE_FADING_DETECTED";
      DeviceFaultNotify("glpe_vlss.cpp", 44, "SetFadingStatus", "rotFadingStatus == GLPE_FADING_NOT_KNOWN || rotFadingStatus == GLPE_FADING_NONE || rotFadingStatus == GLPE_FADING_DETECTED");
      v39 = "glpe_vlss.cpp";
      v40 = 44;
LABEL_56:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v39, v40, v38);
    }
  }

LABEL_45:
  v46 = *(a2 + 104);
  memcpy(v50, *(a2 + 12), 4 * v46);
  v48 = 0;
  v47 = 0;
  v49 = v50[0];
  result = BlueFin::GlSetIterator::operator++(&v46);
  if (v47 != v46)
  {
    v29 = 0;
    *&v28 = 0;
    v42 = v28;
    do
    {
      if (v48 >= 0x23FuLL)
      {
        goto LABEL_55;
      }

      v30 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v48;
      v31 = *v30;
      LODWORD(v30) = v30[1];
      v43[0] = v31;
      v44 = v30;
      v45 = v48;
      v32 = BlueFin::GlPeMsmtMgr::GetMeMeas(a2, v43, 0, 1u);
      if (v32 && (*(v32 + 3) & 0xC000) == 0x4000)
      {
        ++v29;
        v33 = v42;
        *&v33 = *&v42 + *(v32 + 29);
        v42 = v33;
      }

      result = BlueFin::GlSetIterator::operator++(&v46);
    }

    while (v47 != v46);
    if (v29)
    {
      v34.f32[0] = v29;
      v35 = vdup_n_s32(0x3DCCCCCDu);
      v36.f32[0] = v34.f32[0];
      v36.f32[1] = (v9 - v8);
      v37 = vmul_f32(v36, v35);
      v35.i32[0] = v42;
      v35.i32[0] = vdiv_f32(v35, v34).u32[0];
      v35.i32[1] = v37.i32[1];
      *(this + 157) = vmla_f32(vmul_f32(*(this + 1256), vdup_n_s32(0x3F666666u)), vdup_n_s32(0x3DCCCCD0u), v35);
      *(this + 316) = (*(this + 316) * 0.9) + (v34.f32[0] * 0.1);
    }
  }

  return result;
}

BOOL BlueFin::GlPeNavGnssKF::IsFirstFixConditionForExtLoc(BlueFin::GlPeNavGnssKF *this)
{
  v2 = ((*(*this + 64))(this) / (*(this + 546) * 1000.0));
  v3 = *(this + *(*this - 24) + 200);
  v4 = (v3 - (*(*this + 80))(this)) >> 4;
  return v2 == 1 || v4 > 0x36A;
}

uint64_t BlueFin::GlPeDops::GetDops()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v4 = v3;
  v111 = v5;
  v113 = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = v0;
  v15 = v14;
  v165 = *MEMORY[0x29EDCA608];
  v16 = BlueFin::GlSetBase::Cnt(v9);
  if (v16 >= 12)
  {
    v17 = 12;
  }

  else
  {
    v17 = v16;
  }

  v18 = *v4;
  v19 = (v18 >> 3) & 1;
  v20 = 2000.0;
  if ((v18 & 0x10) != 0)
  {
    v20 = 10.0;
  }

  v21 = v2;
  v22 = fmaxf(v21, 10.0);
  if (v16 > 11)
  {
    v22 = 2000.0;
    LOBYTE(v19) = 0;
  }

  if ((v18 & 2) == 0)
  {
    v22 = 2000.0;
    LOBYTE(v19) = 0;
  }

  if ((v18 & 8) != 0)
  {
    v23 = v19;
  }

  else
  {
    v22 = v20;
    v23 = (v18 & 0x10) >> 4;
  }

  if ((v18 & 0x10) != 0)
  {
    v24 = v20;
  }

  else
  {
    v24 = v22;
  }

  if ((v18 & 0x10) != 0)
  {
    v25 = (v18 & 0x10) >> 4;
  }

  else
  {
    v25 = v23;
  }

  BlueFin::GlSetBase::operator=(v13 + 8, v10);
  v26 = *(v10 + 12);
  *(v13 + 36) = *(v10 + 28);
  *(v13 + 20) = v26;
  v27 = vdupq_n_s32(0x42C60000u);
  *(v13 + 60) = v27;
  *(v13 + 76) = v27.i64[0];
  *(v13 + 56) = v24;
  if (v16 > 2)
  {
    v30 = 0;
    *v119 = 0;
    v116[0] = 0;
    v31 = &v114;
    v32 = &v118;
    v33 = vdupq_n_s64(0x15uLL);
    do
    {
      v34 = vaddq_s64(vdupq_n_s64(v31), xmmword_298A41900);
      v35 = vorrq_s8(vdupq_n_s64(v30), xmmword_298A319D0);
      if (vmovn_s64(vcgtq_u64(v33, v35)).u8[0])
      {
        *(v32 - 1) = v34.i64[0];
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x15uLL), v35)).i32[1])
      {
        *v32 = v34.i64[1];
      }

      v30 += 2;
      v31 += 42;
      v32 += 2;
    }

    while (v30 != 22);
    v108 = v17;
    v110 = v15;
    v36 = &v146 + 8;
    v146 = xmmword_298A436A0;
    v144 = &v147;
    v145 = &v148;
    v148 = 0;
    for (i = 1; i != 13; ++i)
    {
      v145[i] = v36;
      v36 += 64;
    }

    BlueFin::BigMatrix::Clone(&v144, 12, 8);
    v38 = *v4;
    LOBYTE(v152[0]) = *(v10 + 8);
    memcpy(&v153, *v10, 4 * LOBYTE(v152[0]));
    HIWORD(v152[0]) = 0;
    BYTE1(v152[0]) = 0;
    LODWORD(v152[1]) = v153;
    BlueFin::GlSetIterator::operator++(v152);
    if (BYTE1(v152[0]) != LOBYTE(v152[0]))
    {
      v55 = 0;
      while (1)
      {
        v56 = *(v13 + 88);
        LOBYTE(v162[0]) = BYTE2(v152[0]);
        if (!(*(*v56 + 128))(v56, v162, (v55 + 1), &v144))
        {
          break;
        }

        BlueFin::GlSetIterator::operator++(v152);
        if (BYTE1(v152[0]) == LOBYTE(v152[0]) || v55++ >= 0xB)
        {
          goto LABEL_57;
        }
      }

      if (v55)
      {
        goto LABEL_57;
      }
    }

    v162[0] = v163;
    v162[1] = 0xC00000000;
    memset(v163, 0, sizeof(v163));
    v164 = 0;
    *&v159 = v160;
    *(&v159 + 1) = 0xC00000000;
    memset(v160, 0, sizeof(v160));
    v161 = 0;
    v141[0] = v142;
    v141[1] = 0x800000000;
    memset(v142, 0, sizeof(v142));
    v143 = 0;
    v39 = *v111;
    v40 = *v113;
    v132[0] = v141;
    v132[1] = v8;
    v132[2] = v39;
    v133 = v40;
    v134 = 5;
    v135 = v38 & 0x20 | 0x81;
    v136 = 0u;
    v137 = 0u;
    v138 = 0u;
    v139 = 0u;
    v140 = 0x4008000000000000;
    v128[0] = v162;
    v128[1] = &v159;
    v128[2] = &v144;
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    v125 = v127;
    v126 = 4;
    v127[1] = 0;
    v127[0] = 0;
    v41 = BlueFin::GlSetBase::Cnt(v10);
    if (v41 >= 0xC)
    {
      v42 = 12;
    }

    else
    {
      v42 = v41;
    }

    BlueFin::GlSetBase::SetAllLower(&v125, v42);
    for (j = 0; j != 168; j += 14)
    {
      v44 = &v152[j];
      *(v44 + 32) = 0;
      v44[9] = NAN;
      *(v44 + 20) = 575;
    }

    v120 = *(v10 + 8);
    memcpy(v124, *v10, 4 * v120);
    v122 = 0;
    v121 = 0;
    v123 = v124[0];
    BlueFin::GlSetIterator::operator++(&v120);
    if (v121 != v120)
    {
      v45 = 0;
      v46 = &v156[3] + 2;
      do
      {
        v47 = v122;
        v48 = v122;
        *(v46 - 50) = 0u;
        *(v46 - 30) = 0xFFFFFFFF00000000;
        *(v46 - 22) = -1;
        *(v46 - 1) = 0;
        *(v46 - 6) = 0;
        *(v46 - 34) = v12;
        if ((v48 - 189) >= 0xFFFFFF44)
        {
          v51 = v47;
          v52 = BlueFin::GlSvId::s_aucSvId2gnss[v47];
          if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v52] == 255)
          {
            v50 = 575;
            v49 = -1;
          }

          else
          {
            v49 = 0;
            v50 = BlueFin::GlSignalId::s_ausGnss2signalId[v52] + v51 - BlueFin::GlSvId::s_aucGnss2minSvId[v52];
          }
        }

        else
        {
          v49 = 0;
          v50 = 575;
        }

        *(v46 - 18) = v48;
        *(v46 - 14) = v49;
        *(v46 - 5) = v50;
        *(v46 - 2) = 1;
        BlueFin::GlSetIterator::operator++(&v120);
        if (v45 > 0xA)
        {
          break;
        }

        ++v45;
        v46 += 56;
      }

      while (v121 != v120);
    }

    if ((*(**(v13 + 88) + 16))(*(v13 + 88), v132, v128, v152, &v125))
    {
      v152[0] = 0.0;
      v153 = &v155;
      v154 = 8;
      v155 = 0u;
      *v156 = 0u;
      *&v156[5] = xmmword_298A41DA0;
      v157 = vdup_n_s32(0x42C60000u);
      v158 = 1120272384;
      BlueFin::stDops::operator=(v13, v152);
      v53 = v110;
      v54 = v13;
    }

    else
    {
LABEL_57:
      if (v108 <= 1)
      {
        v58 = 1;
      }

      else
      {
        v58 = v108;
      }

      v59 = &v117;
      v60 = (v145 + 1);
      do
      {
        v62 = *v60++;
        v61 = v62;
        v63 = v62[1];
        v64 = *v59++;
        v64[1] = v63;
        v65 = v61[3];
        v64[2] = v65;
        v66 = v61[7];
        v64[3] = v66;
        v67 = v61[5];
        v64[4] = v67;
        v68 = v61[8];
        v64[5] = v68;
        --v58;
      }

      while (v58);
      BlueFin::BigMatrix_F::ReShape(v115, v108, 5);
      if ((v25 & (v16 < 12)) == 1)
      {
        BlueFin::BigMatrix_F::AddRow(v115);
        *(v116[v119[0]] + 12) = 10.0 / v24;
      }

      v69 = *v4;
      if (*v4)
      {
        v70 = 5;
      }

      else
      {
        v70 = 4;
        BlueFin::BigMatrix_F::ReShape(v115, v119[0], 4);
      }

      v71 = 0;
      *v151 = 0;
      v149[0] = 0;
      v72 = &v143 + 4;
      v73 = &v150;
      v74 = vdupq_n_s64(0x15uLL);
      do
      {
        v75 = vaddq_s64(vdupq_n_s64(v72), xmmword_298A41900);
        v76 = vorrq_s8(vdupq_n_s64(v71), xmmword_298A319D0);
        if (vmovn_s64(vcgtq_u64(v74, v76)).u8[0])
        {
          *(v73 - 1) = v75.i64[0];
        }

        if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x15uLL), v76)).i32[1])
        {
          *v73 = v75.i64[1];
        }

        v71 += 2;
        v72 += 168;
        v73 += 2;
      }

      while (v71 != 22);
      BlueFin::BigMatrix_F::mult_sym(&v144, 1, v115, v115);
      v77 = v151[1];
      if (v151[1] != v70)
      {
        DeviceFaultNotify("glpe_dops.cpp", 104, "Solve", "otHtH.GetColSize() == cNumStates");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_dops.cpp", 104, "otHtH.GetColSize() == cNumStates");
      }

      if (BlueFin::BigMatrix_F::choldci(&v144, v151[1], v152))
      {
        v109 = v69;
        v78 = 0;
        v79 = 0;
        v112 = v70;
        v80 = v162 + 4 * v70;
        v81 = &v149[v70 + 1];
        v82 = 1;
        v83 = v77 - v70;
        do
        {
          bzero(v162, 4 * v77);
          v84 = v78;
          v85 = v82;
          v86 = v79;
          do
          {
            if (v86 == v79)
            {
              v87 = 1.0;
            }

            else
            {
              v87 = 0.0;
            }

            if (v86)
            {
              v88 = v86 + 1;
              v89 = (v149[v86 + 1] + v84);
              v90 = v85;
              do
              {
                v91 = *v89--;
                v87 = v87 - (v91 * *(v162 + (v90-- - 2)));
              }

              while (v90 > 1);
            }

            else
            {
              v88 = 1;
            }

            *(v162 + v86) = v87 * v152[v86];
            ++v85;
            v84 += 4;
            v86 = v88;
          }

          while (v88 != v77);
          v92 = v81;
          v93 = v83;
          v94 = v80;
          v95 = v112;
          do
          {
            v96 = v95 - 1;
            v97 = *(v162 + v95 - 1);
            v98 = v92;
            v99 = v93;
            v100 = v94;
            if (v95 < v77)
            {
              do
              {
                v101 = *v98++;
                v102 = *(v101 + 4 * v95);
                LODWORD(v101) = *v100++;
                v97 = v97 - (v102 * *&v101);
                --v99;
              }

              while (v99);
            }

            *(v162 + v96) = v97 * v152[v96];
            --v94;
            ++v93;
            --v92;
            --v95;
          }

          while (v96 > v79);
          v160[v79 - 4] = *(v162 + v79);
          ++v79;
          ++v82;
          v78 += 4;
        }

        while (v79 != v77);
        v105.f32[0] = *&v159 + *(&v159 + 1);
        v103 = sqrtf(*(&v159 + 3));
        v104 = sqrtf(v160[0]);
        v105.i32[1] = v159;
        v106 = vdupq_n_s32(0x42C60000u);
        if ((v109 & 1) == 0)
        {
          v104 = 99.0;
        }

        v105.i64[1] = *(&v159 + 4);
        v54 = v13;
        *(v13 + 60) = vminnmq_f32(vsqrtq_f32(v105), v106);
        *(v13 + 76) = fminf(v103, 99.0);
        *(v13 + 80) = fminf(v104, 99.0);
      }

      else
      {
        v54 = v13;
      }

      v53 = v110;
    }

    result = BlueFin::stDops::stDops(v53, v54);
    v107 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v28 = *MEMORY[0x29EDCA608];

    return BlueFin::stDops::stDops(v15, v13);
  }

  return result;
}

double BlueFin::GlPeTimeManager::GetSystemConversionUncUs(uint64_t a1, unsigned int a2)
{
  v3 = BlueFin::GlPeGnssTime::Gnss2TimeSystem(a2);
  ConversionTable = BlueFin::GlPeGnssTime::GetConversionTable((a1 + 2608));
  v5 = 0.0;
  if (v3 - 1 <= 1)
  {
    LOBYTE(v5) = *(a1 + 2589);
    v5 = *&v5;
  }

  return *(ConversionTable + 4 * v3 + 48) + v5 * 1000000.0;
}

uint64_t BlueFin::GlPeGnssTime::Gnss2TimeSystem(unsigned int a1)
{
  if (a1 >= 7)
  {
    DeviceFaultNotify("glpe_timemgr.cpp", 302, "Gnss2TimeSystem", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timemgr.cpp", 302, "0");
  }

  return dword_298A45EA0[a1];
}

unsigned __int8 *BlueFin::GlPeNavGnssBlocked::SetGnssBlockedStatus(unsigned __int8 *result, double *a2, float *a3)
{
  v4 = result;
  v5 = *(result + 40);
  if (a2[3] > 0.5)
  {
    ++v5;
  }

  v6 = v5;
  if (v5 >= 10)
  {
    v5 = 10;
  }

  *(result + 40) = v5;
  v7 = **a2;
  if ((v7 & 1) == 0 || (v8 = a2, v6 <= 9) && a3[14003] < 20.0)
  {
    *result = 0;
    *(result + 2) = 20;
    result[6] = 0;
    *(result + 1) = 0x271000000000;
    *(result + 10) = 0;
    *(result + 22) = 0;
    *(result + 8) = 0;
    *(result + 9) = 0;
    *(result + 7) = 0x3FF0000000000000;
    *(result + 12) = *a3;
    return result;
  }

  *result = 1;
  if ((v7 & 0x200) != 0 || !*(result + 1))
  {
    v9 = 0;
    result[1] = 0;
  }

  else
  {
    v9 = *(result + 1) - 1;
  }

  *(result + 1) = v9;
  if ((v7 & 2) != 0 || (v10 = 15.5, BlueFin::GlSetBase::Cnt((a3 + 46)) <= 1))
  {
    v10 = 19.5;
  }

  v55 = *(a3 + 192);
  memcpy(v59, *(a3 + 23), 4 * v55);
  v57 = 0;
  v56 = 0;
  v58 = v59[0];
  result = BlueFin::GlSetIterator::operator++(&v55);
  if (v56 == v55)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0.0;
    v17 = -4.0;
    v18 = 0.0;
    v19 = 0.0;
  }

  else
  {
    v50 = v8;
    v20 = 0;
    v15 = 0;
    v21 = 0;
    v51 = 0.0;
    v17 = -4.0;
    v19 = 0.0;
    v18 = 0.0;
    do
    {
      v22 = v57;
      if (v57 >= 0x23FuLL)
      {
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
      }

      v23 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v57;
      v25 = v23[1];
      v52[0] = *v23;
      v24 = v52[0];
      v53 = v25;
      v54 = v57;
      MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(a3, v52, 0, 0);
      v52[0] = v24;
      v53 = v25;
      v54 = v22;
      PeMeas = BlueFin::GlPeMsmtMgr::GetPeMeas(a3, v52, 0);
      if (MeMeas)
      {
        v28 = *(MeMeas + 29);
        if (v28 > 22.0)
        {
          ++v20;
        }

        v29 = *(PeMeas + 104);
        if (v28 > v10)
        {
          if (v29 > v21)
          {
            v21 = *(PeMeas + 104);
          }

          if (v15)
          {
              ;
            }

            while (i <= -3.14159265)
            {
              i = i + 6.28318531;
            }

            ++v15;
            v31 = i;
            if (v19 <= v31)
            {
              v19 = v31;
            }

            if (v18 >= v31)
            {
              v18 = v31;
            }
          }

          else
          {
            v32 = *(PeMeas + 106) * 0.0174532925;
            v51 = v32;
            v15 = 1;
          }
        }

        if (v29 > 10 && v28 > v17)
        {
          v17 = *(MeMeas + 29);
        }
      }

      result = BlueFin::GlSetIterator::operator++(&v55);
    }

    while (v56 != v55);
    v16 = v20;
    v14 = (v21 - 1) < 0x19u;
    v8 = v50;
  }

  v34 = *(v4 + 7);
  v35 = 0.949999988;
  if (v34 < v16)
  {
    v35 = 0.5;
  }

  *v11.i64 = v16 * (1.0 - v35) + v35 * v34;
  if (*v11.i64 < 1.0)
  {
    *v11.i64 = 1.0;
  }

  if (*v11.i64 > 24.0)
  {
    *v11.i64 = 24.0;
  }

  *(v4 + 7) = v11.i64[0];
  *v11.i64 = *v11.i64 * 0.200000003 + 0.5;
  *v13.i64 = *v11.i64 + trunc(*v11.i64 * 2.32830644e-10) * -4294967300.0;
  v36.f64[0] = NAN;
  v36.f64[1] = NAN;
  v37 = vnegq_f64(v36);
  v13.i64[0] = vbslq_s8(v37, v13, v11).u64[0];
  if (*v11.i64 > 4294967300.0)
  {
    v11.i64[0] = v13.i64[0];
  }

  if (*v11.i64 < -4294967300.0)
  {
    *v12.i64 = -*v11.i64;
    *v11.i64 = -(*v11.i64 - trunc(*v11.i64 * -2.32830644e-10) * -4294967300.0);
    *v11.i64 = -*vbslq_s8(v37, v11, v12).i64;
  }

  if (*v11.i64 < 0.0)
  {
    v38 = --*v11.i64;
  }

  else
  {
    LOBYTE(v38) = *v11.i64;
  }

  v39 = v38;
  if ((v38 & 0xFC) == 0)
  {
    v39 = 3;
  }

  v40 = **v8;
  if ((v40 & 0x10) == 0)
  {
    v39 = 3;
  }

  if (v15 <= 1u || !v14 || (v19 - v18) >= 0.663225116)
  {
    if (v39 <= v15 || v17 >= 40.0)
    {
      goto LABEL_65;
    }

LABEL_71:
    v41 = 1;
    goto LABEL_72;
  }

  if (v17 < 40.0)
  {
    goto LABEL_71;
  }

LABEL_65:
  v41 = 0;
LABEL_72:
  v43 = v41 ^ 1;
  if (*(v8 + 5) >= 4.0)
  {
    v43 = 1;
  }

  if (v17 <= 22.0)
  {
    v43 = 1;
  }

  v44 = v41 & v43;
  if ((v40 & 0x40) != 0 || !v44 || (v40 & 0x100) != 0)
  {
    v45 = *a3;
    *(v4 + 12) = *a3;
  }

  else
  {
    v45 = *(v4 + 12);
  }

  if ((v40 & 6) != 0)
  {
    v46 = 10000;
  }

  else
  {
    v46 = 3000;
  }

  *(v4 + 3) = v46;
  if (v45 != 0.0)
  {
    v47 = *(v8 + 4);
    if (v47 - LODWORD(v45) > v46)
    {
      v4[45] = 0;
      if ((v4[1] & 1) == 0)
      {
        *(v4 + 10) = v45;
        v48 = v8[1];
        *(v4 + 1) = *v48;
        *(v4 + 4) = *(v48 + 2);
        *(v4 + 4) = vextq_s8(*(v8 + 3), *(v8 + 3), 8uLL);
      }

      v4[1] = 1;
      if ((v40 & 2) != 0)
      {
        v49 = 35;
      }

      else if ((v40 & 4) != 0)
      {
        v49 = 25;
      }

      else if ((v40 & 0x20) != 0)
      {
        v49 = 10;
      }

      else
      {
        v49 = 6;
      }

      *(v4 + 1) = v49;
      *(v4 + 2) = v49;
      *(v4 + 2) = v47;
    }
  }

  v4[44] = v44;
  return result;
}

uint64_t BlueFin::GlPeKF::FirstFixMgr(uint64_t a1, unsigned __int8 *a2, char a3, int a4)
{
  v7 = (a1 + 61460);
  v8 = a1 + 57160;
  if (*(a1 + 61160) > 400.0 || *(*(a1 + 61048) + 36) != 0)
  {
    *(a1 + 61152) = 0;
    *(a1 + 61160) = 0;
    *(a1 + 61196) = -1;
    *(a1 + 61168) = xmmword_298A419D0;
    *(a1 + 61200) = 0;
    *(a1 + 61202) = 0;
    *(a1 + 61184) = 0;
    *(a1 + 61188) = -1;
    *(a1 + 61192) = 575;
    BlueFin::lla2ned((a1 + 192), (a1 + 40), 0, &v80);
    v10 = *(&v80 + 1) * *(&v80 + 1) + *&v80 * *&v80;
    *(v8 + 4000) = 0x409F400000000000;
    if (v10 <= 1600000000.0)
    {
      v11 = *(a1 + 64);
      v12 = v11;
      if (v11 < 400.0)
      {
        v12 = 400.0;
      }

      v13 = sqrt((v11 * v11) + v10 * 0.00448900042);
      if (v12 < v13)
      {
        v13 = v12;
      }

      *(v8 + 4000) = v13;
    }

    *(v8 + 3992) = *(a1 + 56);
    *(v8 + 4036) = 3;
    *(v8 + 4008) = *(a1 + 768);
    *(v8 + 4040) = 1;
  }

  v80 = 0uLL;
  v81 = 0;
  v82 = vdup_n_s32(0x44FA0000u);
  v83 = -1;
  v14 = a1 + 17184 + *(*(a1 + 17184) - 24);
  *v84 = *(v14 + 8);
  *&v84[16] = *(v14 + 24);
  v15 = (a1 + 6848);
  if (*(v8 + 3768))
  {
    BlueFin::GlPeKFAltAsst::altAsstFromCitySetFine(v15, &v80, v84);
  }

  else
  {
    BlueFin::GlPeKFAltAsst::altAsstFirstFix(v15, &v80, v84, 0);
  }

  LOBYTE(v80) = 0;
  v84[0] = 0;
  LOBYTE(v73) = 0;
  BlueFin::GlPeNavGnssMeasMgr::CountNewValidGnssMeas(a1 + 14560, v7, &v80, v84, &v73, 0);
  v7[5] = BlueFin::GlPeExtLoc::GetExtLocMeasCount((a1 + 57152));
  if (*(v8 + 4040) == 1 && *(v8 + 4000) <= 400.0)
  {
    v7[3] = 1;
  }

  v16 = *(v8 + 228);
  v7[2] = v16 >> 5 < 0x271;
  if (*(v8 + 3768))
  {
    if (v16 >= 0x2EE1)
    {
      v17 = 0;
    }

    else
    {
      v17 = -1;
    }
  }

  else
  {
    v17 = v16 > 0x2EE0;
    if (v16 >= 0x2EE1)
    {
      v18 = 0;
    }

    else
    {
      v18 = -1;
    }

    if (v16 <= 0x736503F)
    {
      v17 = v18;
    }
  }

  v19 = v7[3];
  if (v19 >= 2)
  {
    LOBYTE(v19) = 1;
    v7[3] = 1;
  }

  *(a1 + 1108) = v17 - v19 + 5;
  if (v16 <= 0x2EE0)
  {
    v20 = 5;
  }

  else
  {
    v20 = 6;
  }

  *(a1 + 1107) = v20;
  GllStartupType = BlueFin::GlPeKF::GetGllStartupType(a1);
  v22 = 25000;
  if ((GllStartupType | 2) != 2)
  {
    if (*(*(v8 + 3840) + 120012) == 1)
    {
      v22 = 12000;
    }

    else
    {
      v22 = 25000;
    }
  }

  v23 = (a1 + 11224);
  if (*(v7 + 9) > v22 && (*v7 > 4 || v80 <= 0))
  {
    v20 = *(a1 + 1108);
  }

  v84[0] = 0;
  v24 = v7[48];
  v25 = *(v8 + 3872);
  if (v25)
  {
    v26 = *(v25 + 3008);
    if (v26)
    {
      v27 = *(v25 + 3064) > 0.0;
      v28 = *(v25 + 3016);
      v29 = *(v25 + 3024);
      v30 = *(v25 + 3032);
      v31 = *(v25 + 3120);
      *&v84[8] = v28;
      *&v84[16] = v29;
      v85[0] = v30;
      v32 = *(v25 + 3056);
      *&v85[1] = *(v25 + 3040);
      *&v85[3] = v32;
      v85[5] = *(v25 + 3072);
      LODWORD(v86) = v31;
      HIDWORD(v86) = v31;
      v84[0] = 1;
      v84[1] = v27;
      if ((v85[5] & 0xFFFFFFFE) == 2 && v23 != v84)
      {
        *v23 = 1;
        *(a1 + 11225) = v27;
        *(a1 + 11232) = v28;
        *(a1 + 11240) = v29;
        *(a1 + 11248) = v30;
        *(a1 + 11296) = v31;
        *(a1 + 11300) = v31;
        *(a1 + 11288) = v85[5];
        v33 = *&v85[3];
        *(a1 + 11256) = *&v85[1];
        *(a1 + 11272) = v33;
      }
    }

    else
    {
      v86 = 0;
      memset(v85, 0, sizeof(v85));
      *&v84[8] = 0u;
      v84[1] = 0;
    }

    if (v24 && v26 && LODWORD(v85[5]) == 2)
    {
      LODWORD(v85[5]) = 3;
      v26 = 1;
    }
  }

  else
  {
    v26 = 0;
    v84[1] = 0;
    *&v84[8] = 0u;
    memset(v85, 0, sizeof(v85));
    v86 = 0;
  }

  v34 = **(v8 + 3848);
  v35 = v34 - *(a1 + 11300);
  v36 = v35;
  if (v35 <= 0xFF9222FE)
  {
    v36 = v35;
  }

  v37 = *(a1 + 11296);
  v38 = (v34 - v37);
  if (v34 - v37 <= 0xFF9222FE)
  {
    v38 = (v34 - v37);
  }

  v39 = *v23;
  if (v39 == 1)
  {
    if (!v25)
    {
      DeviceFaultNotify("glpe_kf.cpp", 867, "FirstFixMgr", "m_pHula");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_kf.cpp", 867, "m_pHula");
    }

    v40 = 0;
    v41 = v25 + 4096;
    v42 = v36 * 0.001;
    v43 = *(v25 + 4216);
    __asm { FMOV            V2.2D, #1.0 }

    if (v43 > 5)
    {
      if (v43 > 7)
      {
        if (v43 == 8)
        {
          if (*(v41 + 128) == 1)
          {
            v40 = *(v41 + 130) ^ 1;
            goto LABEL_82;
          }

          goto LABEL_81;
        }

        if (v43 != 9)
        {
          goto LABEL_82;
        }

        if (*(v41 + 128) != 1)
        {
LABEL_81:
          v40 = 0;
          goto LABEL_82;
        }

        v40 = 0;
        v48 = 1.0;
        if (!*(v41 + 130))
        {
          v48 = 2.5;
        }

        __asm { FMOV            V2.2D, #1.0 }

        _Q2.f64[0] = v48;
LABEL_82:
        if ((v40 & 1) == 0 && v38 * 0.001 <= 180.0)
        {
          goto LABEL_85;
        }

        goto LABEL_84;
      }

      if (v43 == 6)
      {
LABEL_76:
        if (*(v41 + 128) == 1 && (*(v41 + 130) & 1) == 0)
        {
          v40 = 0;
          _Q2 = 0uLL;
          goto LABEL_82;
        }

        goto LABEL_81;
      }
    }

    else if (v43 <= 3)
    {
      if (v43 != 1)
      {
        if (v43 == 3)
        {
          if (*(v41 + 128) == 1 && (*(v41 + 130) & 1) == 0)
          {
            v40 = 0;
            __asm { FMOV            V2.2D, #2.5 }

            goto LABEL_82;
          }

          goto LABEL_81;
        }

        goto LABEL_82;
      }

      goto LABEL_76;
    }

    if (*(v41 + 128) == 1 && (*(v41 + 130) & 1) == 0)
    {
LABEL_84:
      v39 = 0;
      *v23 = 0;
LABEL_85:
      *(a1 + 11256) = vmlaq_n_f64(*(a1 + 11256), _Q2, v42);
      *(a1 + 11300) = v34;
      goto LABEL_86;
    }

    goto LABEL_81;
  }

  v34 = *(a1 + 11300);
LABEL_86:
  if ((v26 & 1) == 0 && v84 != v23 && v39)
  {
    v84[0] = v39;
    v84[1] = *(a1 + 11225);
    *&v84[8] = *(a1 + 11232);
    v85[0] = *(a1 + 11248);
    v86 = __PAIR64__(v34, v37);
    v85[5] = *(a1 + 11288);
    v49 = *(a1 + 11272);
    *&v85[1] = *(a1 + 11256);
    *&v85[3] = v49;
  }

  BlueFin::stInitPos::stInitPos(&v80, a1 + 192);
  if (*(a1 + 13152) == 1)
  {
    v50 = *(a1 + 13184);
    if (v50 < 400.0 && v50 < *v82.i32)
    {
      v80 = *(a1 + 13160);
      v81 = *(a1 + 13176);
      *v82.i32 = v50;
    }
  }

  if (*(*(v8 + 3776) + 26342) == 1)
  {
    v73 = v80;
    v74 = v81;
    BlueFin::GlPeKF::RunSysRangeDivergenceDetection(a1, &v73, *(v8 + 224), 0.0);
  }

  if ((a3 & 1) != 0 || *(v8 + 228) >= 0x2EE1u)
  {
    v51 = 17;
  }

  else
  {
    v51 = 16;
  }

  v52 = BlueFin::GlPeKF::InFlightMode(a1);
  v53 = v51 | 2;
  if (!v52)
  {
    v53 = v51;
  }

  if (*(v8 + 4000) <= 400.0)
  {
    v53 |= 4u;
  }

  v54 = v53 & 0xFFFFFFF7;
  if (v24)
  {
    v55 = 64;
  }

  else
  {
    v55 = 0;
  }

  if (a4)
  {
    v56 = 128;
  }

  else
  {
    v56 = 0;
  }

  if (v7[509])
  {
    v57 = 256;
  }

  else
  {
    v57 = 0;
  }

  v58 = v55 | v56 | v54 | (8 * (*(*(v8 + 3840) + 120012) == 1)) | v57;
  v59 = *(v8 + 224);
  v60 = *(a1 + 17184 + *(*(a1 + 17184) - 24) + 88);
  v61 = *(v8 + 3856);
  if ((*(v61 + 1312) & 6) != 0)
  {
    TimeTillTimeoutMs = BlueFin::GlPeReqBag::GetTimeTillTimeoutMs(v61, 0);
  }

  else
  {
    TimeTillTimeoutMs = -1;
  }

  v63 = *(*(v8 + 3888) + 36);
  *&v73 = &v80;
  *(&v73 + 1) = v84;
  LODWORD(v74) = v59;
  v75 = v60;
  v76 = v20;
  v77 = TimeTillTimeoutMs;
  v78 = v63;
  v79 = v58;
  v64 = **(v8 + 3848);
  BlueFin::GlPeComputeZRH::RecomputeIntegers();
  result = BlueFin::GlPeFirstFix::FirstFixMgr(a1 + 12200, &v73, a2);
  if ((v26 & result & a2[504]) == 1)
  {
    v66 = **(v8 + 3848);
    v67 = *(v8 + 128);
    if (v67)
    {
      *(v67 + 3009) = 1;
    }

    *v8 = 1;
    *(v8 + 52) = v66;
    return result;
  }

  if (!v26)
  {
    return result;
  }

  v68 = a2[506];
  if (a2[506])
  {
    if (v68 != 2)
    {
      if (v68 == 1)
      {
        v69 = **(v8 + 3848);
        v70 = *(v8 + 128);
        if (v70)
        {
          *(v70 + 3009) = 1;
        }

        *v8 = 1;
        *(v8 + 52) = v69;
      }

      goto LABEL_130;
    }

    v71 = 4;
  }

  else
  {
    v71 = 2;
  }

  *v8 = v71;
LABEL_130:
  if (a2[507] == 1)
  {
    *(*(v8 + 3872) + 1162) = 1;
    *(v8 + 7) = 1;
  }

  return result;
}