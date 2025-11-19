uint64_t BlueFin::stSkfTestParam::GetDynModeOverride(uint64_t a1, int *a2)
{
  if (!strcmp((a1 + 1220), "DYN_AUTOMATIC"))
  {
    v5 = 0;
  }

  else if (!strcmp((a1 + 1220), "DYN_PEDESTRIAN"))
  {
    v5 = 1;
  }

  else if (!strcmp((a1 + 1220), "DYN_VEHICLE"))
  {
    v5 = 2;
  }

  else
  {
    if (strcmp((a1 + 1220), "DYN_CYCLING"))
    {
      return 0;
    }

    v5 = 3;
  }

  *a2 = v5;
  return 1;
}

uint64_t BlueFin::GlPeKF::InitializeKF(BlueFin::GlPeKF *this, int8x16_t a2, int8x16_t a3)
{
  *(this + 804) = 0;
  *(this + 14528) = 0;
  v4 = this + 57152;
  *(this + 28576) = 0;
  *(this + 57248) = 0;
  *(this + 74) = 0;
  *(this + 14289) = 0;
  *(this + 7149) = 0;
  *(this + 7150) = 0;
  *(this + 7148) = 0;
  *(this + 28604) = 0;
  BlueFin::GlPeKF::resetDtsIfGood(this, a2, a3);
  *(this + 193) = 0;
  result = BlueFin::GlPeMsmtMgr::Init_IntPr(*(v4 + 482));
  *(v4 + 1014) |= 8u;
  return result;
}

double BlueFin::GlPeTimeManager::lmsToLegacyGlStruct(unsigned int *a1, unsigned int a2, int a3, uint64_t a4, double a5)
{
  if (a2 == 2)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    v7 = 16;
  }

  else
  {
    if (a2 > 1)
    {
      DeviceFaultNotify("glpe_timemgr.cpp", 7490, "lmsToLegacyGlStruct", "0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timemgr.cpp", 7490, "0");
    }

    *(a4 + 8) = 0;
    *a4 = 0;
    v7 = 12;
  }

  *(a4 + v7) = -1;
  BlueFin::GlPeTimeManager::GetTime(a1, a5, a3, v72);
  v71 = 0;
  v70 = &off_2A1F0B5F0;
  v69 = 0;
  v68 = &off_2A1F0E430;
  v63 = 0;
  v62 = &unk_2A1F11310;
  v8 = 432000 - BlueFin::GlWeekTowTime::m_ucCurrentLs;
  v64 = 1980;
  v65 = v8 / 0x15180 + 1;
  LOBYTE(v66) = 1;
  BYTE1(v66) = v8 / 0x15180 + 1;
  BYTE2(v66) = v8 % 0x15180 / 0xE10;
  HIBYTE(v66) = (2185 * (v8 - 3600 * ((1193047 * v8) >> 32))) >> 17;
  v67 = v8 - 60 * ((71582789 * v8) >> 32);
  if (!a2)
  {
    Gps = BlueFin::GlPeGnssTime::GetGps(v72, &v70);
    v10 = Gps;
    LODWORD(Gps) = v71;
    LODWORD(v71) = 0;
    *v19.i64 = *&Gps * 2.32830644e-10;
    *v61 = 0;
    v60 = 0;
    BlueFin::GlPeTimeMgrUtil::BreakDownFracSec(&v61[1], v19, v61, &v60, v20, 2.32830644e-10, v21, v22);
    if (v10 == 4294967300.0)
    {
      v17 = -1;
    }

    else if (v10 >= 0.5)
    {
      *v23.i64 = v10 + 0.5;
      *v24.i64 = v10 + 0.5 - trunc((v10 + 0.5) * 2.32830644e-10) * 4294967300.0;
      v46.f64[0] = NAN;
      v46.f64[1] = NAN;
      v24.i64[0] = vbslq_s8(vnegq_f64(v46), v24, v23).u64[0];
      if (v10 + 0.5 > 4294967300.0)
      {
        v23.i64[0] = v24.i64[0];
      }

      v17 = *v23.i64;
    }

    else
    {
      v17 = 1;
    }

    *a4 = (v70[4])(&v70) / 0x93A80;
    v47 = (v70[4])(&v70);
    LODWORD(v48) = v71;
    *v41.i64 = v48 * 2.32830644e-10 + (v47 % 0x93A80);
    goto LABEL_51;
  }

  if (a2 == 1)
  {
    Glns = BlueFin::GlPeGnssTime::GetGlns(v72, &v68);
    v10 = Glns;
    LODWORD(Glns) = v69;
    LODWORD(v69) = 0;
    *v11.i64 = *&Glns * 2.32830644e-10;
    *v61 = 0;
    v60 = 0;
    BlueFin::GlPeTimeMgrUtil::BreakDownFracSec(&v61[1], v11, v61, &v60, v12, 2.32830644e-10, v13, v14);
    if (v10 == 4294967300.0)
    {
      v17 = -1;
    }

    else if (v10 >= 0.5)
    {
      *v15.i64 = v10 + 0.5;
      *v16.i64 = v10 + 0.5 - trunc((v10 + 0.5) * 2.32830644e-10) * 4294967300.0;
      v32.f64[0] = NAN;
      v32.f64[1] = NAN;
      v16.i64[0] = vbslq_s8(vnegq_f64(v32), v16, v15).u64[0];
      if (v10 + 0.5 > 4294967300.0)
      {
        v15.i64[0] = v16.i64[0];
      }

      v17 = *v15.i64;
    }

    else
    {
      v17 = 1;
    }

    v35 = BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs && BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent != 0 && HIDWORD(v69) == BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent;
    *a4 = ((v68[4])(&v68) - v35) / 0x7861F80 + 1;
    v38 = BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs && BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent != 0 && HIDWORD(v69) == BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent;
    v39 = 0;
    *(a4 + 2) = ((203613265 * (((v68[4])(&v68) - v38) % 0x7861F80)) >> 44) + 1;
    if (BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs && BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent)
    {
      v39 = HIDWORD(v69) == BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent;
    }

    v40 = (v68[4])(&v68);
    if (v39)
    {
      v45 = 10799.0;
    }

    else
    {
      v45 = (v40 % 0x15180);
    }

    LODWORD(v42) = v69;
    *v41.i64 = v45 + v42 * 2.32830644e-10;
LABEL_51:
    *v41.i64 = *v41.i64 * 1000.0 + 0.1;
    *v44.i64 = *v41.i64 + trunc(*v41.i64 * 2.32830644e-10) * -4294967300.0;
    v49.f64[0] = NAN;
    v49.f64[1] = NAN;
    v50 = vnegq_f64(v49);
    v44.i64[0] = vbslq_s8(v50, v44, v41).u64[0];
    if (*v41.i64 > 4294967300.0)
    {
      v41.i64[0] = v44.i64[0];
    }

    if (*v41.i64 < -4294967300.0)
    {
      *v43.i64 = -*v41.i64;
      *v41.i64 = -(*v41.i64 - trunc(*v41.i64 * -2.32830644e-10) * -4294967300.0);
      *v41.i64 = -*vbslq_s8(v50, v41, v43).i64;
    }

    if (*v41.i64 < 0.0)
    {
      v51 = --*v41.i64;
    }

    else
    {
      v51 = *v41.i64;
    }

    v52 = v51 + v61[1];
    v53 = &v60;
    *(a4 + 4) = v52;
    v54 = v61;
    v55 = 12;
    v56 = 10;
    v57 = 8;
    goto LABEL_63;
  }

  Utc = BlueFin::GlPeGnssTime::GetUtc(v72, &v62);
  v10 = Utc;
  LODWORD(Utc) = v63;
  *v61 = 0;
  *v26.i64 = *&Utc * 2.32830644e-10;
  v60 = 0;
  BlueFin::GlPeTimeMgrUtil::BreakDownFracSec(&v61[1], v26, v61, &v60, v27, 2.32830644e-10, v28, v29);
  v31.i32[1] = 1106247679;
  if (v10 == 4294967300.0)
  {
    v17 = -1;
  }

  else
  {
    v31.i64[0] = 0.5;
    if (v10 >= 0.5)
    {
      *v31.i64 = v10 + 0.5;
      *v30.i64 = v10 + 0.5 - trunc((v10 + 0.5) * 2.32830644e-10) * 4294967300.0;
      v58.f64[0] = NAN;
      v58.f64[1] = NAN;
      v30.i64[0] = vbslq_s8(vnegq_f64(v58), v30, v31).u64[0];
      if (v10 + 0.5 > 4294967300.0)
      {
        v31.i64[0] = v30.i64[0];
      }

      v17 = *v31.i64;
    }

    else
    {
      v17 = 1;
    }
  }

  *a4 = v64;
  v31.i32[0] = v66;
  *(a4 + 2) = vmovl_u8(*v31.i8).u64[0];
  v53 = v61;
  *(a4 + 10) = v67;
  v54 = &v61[1];
  v55 = 16;
  v56 = 14;
  v57 = 12;
LABEL_63:
  *(a4 + v57) = *v54;
  *(a4 + v56) = *v53;
  *(a4 + v55) = v17;
  return v10;
}

_WORD *BlueFin::GlPeTimeMgrUtil::BreakDownFracSec(_WORD *this, int8x16_t a2, unsigned __int16 *a3, unsigned __int16 *a4, unsigned __int16 *a5, double a6, int8x16_t a7, int8x16_t a8)
{
  if (*a2.i64 >= 0.999999999)
  {
    v10 = 999999999;
  }

  else
  {
    *a2.i64 = *a2.i64 * 1000000000.0 + 0.5;
    *a8.i64 = *a2.i64 + trunc(*a2.i64 * 2.32830644e-10) * -4294967300.0;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v9 = vnegq_f64(v8);
    a8.i64[0] = vbslq_s8(v9, a8, a2).u64[0];
    if (*a2.i64 > 4294967300.0)
    {
      a2.i64[0] = a8.i64[0];
    }

    if (*a2.i64 < -4294967300.0)
    {
      *a7.i64 = -*a2.i64;
      *a2.i64 = -(*a2.i64 - trunc(*a2.i64 * -2.32830644e-10) * -4294967300.0);
      *a2.i64 = -*vbslq_s8(v9, a2, a7).i64;
    }

    if (*a2.i64 < 0.0)
    {
      v10 = --*a2.i64;
    }

    else
    {
      v10 = *a2.i64;
    }
  }

  *this = v10 / 0xF4240;
  v11 = v10 % 0xF4240;
  *a3 = v11 / 0x3E8;
  *a4 = v11 % 0x3E8;
  return this;
}

uint64_t BlueFin::GlPeRqHdlr::LogGL007(uint64_t a1, const char *a2, uint64_t a3, int a4, int a5)
{
  v8 = *(a1 + 48);
  v14 = *(a3 + 4072);
  v9 = *(a3 + 4088);
  v10 = *(a3 + 4144);
  v11 = (*(**(a1 + 8) + 152))(*(a1 + 8));
  v12 = "Valid";
  if (!a5)
  {
    v12 = "Invalid";
  }

  return GlCustomLog(14, "GL007[%hu]%s Lat=%10.6f Lon=%11.6f Alt=%3.0f EstAcc=%3.0f ReqAcc=%3d AccMask=%3u %s\n", v8, a2, *&v14, *(&v14 + 1), v9, v10, v11, a4, v12);
}

uint64_t BlueFin::GlPePlatfStatMgr::SetOscOff(uint64_t this, double a2, double a3)
{
  v3 = *(this + 1313);
  if (a2 >= 0.000000002)
  {
    v5 = 0;
  }

  else
  {
    if (*(this + 1313))
    {
      *(this + 1312) = 1;
      v4 = (a2 - *(this + 1320)) * (a2 - *(this + 1320)) * 0.5;
      if (v4 > *(this + 1328))
      {
        *(this + 1328) = v4;
      }
    }

    *(this + 1320) = a2;
    v5 = 1;
  }

  *(this + 1313) = v5;
  v6 = *(this + 1240);
  if (v6)
  {
    v7 = *(v6 + 80);
    *(this + 200) = v7;
    v8 = *(v6 + 221);
    if (*(this + 196) != v8)
    {
      *(this + 196) = v8;
      *(this + 232) = 1;
    }
  }

  if (v5 != v3)
  {
    *(this + 232) = 1;
  }

  return this;
}

uint64_t BlueFin::GlPeReqBag::SetPlatfStat(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v6 = (a1 + 3233);
  v7 = *(a1 + 3233);
  *(a1 + 3233) = 0;
  do
  {
    result = *(a1 + v4);
    if (result)
    {
      result = (*(*result + 144))(result, a2);
    }

    v4 += 8;
  }

  while (v4 != 576);
  *v6 = v7;
  return result;
}

uint64_t BlueFin::stTimeOfAsstPos::GetAgeS(BlueFin::stTimeOfAsstPos *this, BlueFin::GlPeTimeManager *a2, int8x16_t a3, int8x16_t a4)
{
  if (*this == 1)
  {
    if (*(a2 + 644))
    {
      BlueFin::GlPeTimeManager::GetTime(a2, 1, v15);
      v16 = &off_2A1F0B5F0;
      v17 = 0;
      BlueFin::GlPeGnssTime::GetGps(v15, &v16);
      v7 = v17;
      v8 = HIDWORD(v17);
      v10 = *(this + 6);
      v9 = *(this + 7);
      if (*(this + 3))
      {
        v13 = HIDWORD(v17) - v9;
        if (v17 < __PAIR64__(v9, v10))
        {
          v8 = (__PAIR64__(v9 - HIDWORD(v17), v10) - v17) >> 32;
          v7 = v10 - v17;
          v11 = 1;
        }

        else
        {
          v11 = 0;
          v8 = (__PAIR64__(v13, v17) - v10) >> 32;
          v7 = v17 - v10;
        }
      }

      else
      {
        v11 = 0;
      }

      *a3.i64 = v7 * 2.32830644e-10 + v8;
      if ((v11 & ((v8 | v7) != 0)) != 0)
      {
        *a3.i64 = -*a3.i64;
      }

      goto LABEL_16;
    }

    return 0xFFFFFFFFLL;
  }

  if (*this != 2)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(a2 + 642);
  if (v5 == -7200001)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = v5;
  if (v5 <= 0xFF9222FE)
  {
    v6 = v5;
  }

  *a3.i64 = (v6 - *(this + 1)) * 0.001;
LABEL_16:
  if (*a3.i64 < 0.0)
  {
    return 0;
  }

  *a4.i64 = *a3.i64 - trunc(*a3.i64 * 2.32830644e-10) * 4294967300.0;
  v14.f64[0] = NAN;
  v14.f64[1] = NAN;
  a4.i64[0] = vbslq_s8(vnegq_f64(v14), a4, a3).u64[0];
  if (*a3.i64 > 4294967300.0)
  {
    a3.i64[0] = a4.i64[0];
  }

  return *a3.i64;
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t std::__function::__func<std::function<void ()(std::vector<std::string> &&)>,std::allocator<void ()(std::vector<std::string> &&)>,void ()(std::vector<std::string>)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

BOOL BlueFin::GnssConstellationMaskHelper::HasAny(void *a1, int a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  else if (*a1)
  {
    return 1;
  }

  else
  {
    v4 = 0;
    v5 = a1 + 1;
    v2 = 1;
    do
    {
      v6 = -1;
      v7 = v5;
      while (v6 != 6)
      {
        v8 = *v7++;
        ++v6;
        if (v8)
        {
          if (v6 <= 6)
          {
            return v2;
          }

          break;
        }
      }

      v2 = ++v4 < a2;
      if (v4 == a2)
      {
        break;
      }

      v5 += 8;
    }

    while (!a1[8 * v4]);
  }

  return v2;
}

uint64_t BlueFin::GlPeTimeManager::GetRtcCurTimeEstimate(BlueFin::GlPeTimeManager *this, uint64_t a2)
{
  if (!*(this + 644) || *(this + 704) == -1 || *(this + 354) == 4294967300.0)
  {
    return 0;
  }

  v4 = 1;
  BlueFin::GlPeTimeManager::GetTime(this, *(this + 353), 1, v9);
  BlueFin::GlPeTimeManager::GetTime(this, *(this + 353), 1, v8);
  v5 = BlueFin::GlPeGnssTime::operator-(v8, this + 2808);
  v6 = v10;
  *a2 = v5 * 1000.0;
  *(a2 + 8) = v6;
  return v4;
}

uint64_t BlueFin::GlPeTimeManager::GetRtcCurFreqEstimate(uint64_t a1, double *a2)
{
  if (*(a1 + 3652) == -7200001)
  {
    if (*(a1 + 3648))
    {
      return 0;
    }

    result = (*(*(a1 + 3656) + 32))();
    if (!result)
    {
      return result;
    }
  }

  v5 = *(a1 + 3680);
  if (v5 == 1.79769313e308 || (*(a1 + 3648) & 1) != 0)
  {
    return 0;
  }

  *a2 = *(a1 + 3672) * 1000000000.0;
  a2[1] = v5;
  return 1;
}

char *BlueFin::GlPeNmeaGen::FormatNmeaUNC(uint64_t a1, void *a2, uint64_t a3, BlueFin::GlFormat *this, int a5)
{
  if (*(a3 + 2576))
  {
    v6 = *(a3 + 2736);
    if (v6 == 4294967300.0)
    {
      v6 = *(a3 + 2632);
    }
  }

  else
  {
    v6 = 4294967300.0;
  }

  v7 = a5;
  v8 = this + a5 - 1;
  if (v8 <= this)
  {
    v7 = 0;
  }

  v9 = a2[520];
  v10 = a2[872];
  v11 = a2[870];
  BlueFin::GlFormat::glsnprintf(this, v7, "$PGLOR,%d,UNC,%s,%.3lf,%.1lf,%.1lf,%.2lf,%.2lf,%.1lf,%.1lf,%.1lf", this, 1, a1 + 1767, *&v6, a2[518], v9, a2[873], v10, a2[869], v11, a2[871]);

  return BlueFin::GlPeNmeaGen::nmeaAddChksum(this, v8, v12);
}

char *BlueFin::GlPeNmeaGen::FormatNmeaSAT(uint64_t a1, uint64_t a2, BlueFin::GlFormat *a3, int a4)
{
  v5 = *(a1 + 1736);
  if (*(a1 + 329))
  {
    v6 = 0;
    v7 = 7;
    do
    {
      v6 += BlueFin::GlSetBase::Cnt(v5);
      v5 = (v5 + 24);
      --v7;
    }

    while (v7);
    v9 = v6;
  }

  else
  {
    v11 = v5 + 8;
    v12 = 7;
    do
    {
      v13 = *(v11 - 1);
      v14 = *v11;
      v11 += 24;
      bzero(v13, ((4 * v14 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
      --v12;
    }

    while (v12);
    v15 = *(a1 + 1552) + 4;
    v16 = 100;
    do
    {
      *(v15 - 4) = 8;
      *v15 = 0;
      *(v15 + 4) = 0;
      v15 += 12;
      --v16;
    }

    while (v16);
    if (*(a2 + 44) >= 1)
    {
      v9 = 0;
      v17 = 0;
      while (1)
      {
        v18 = v17;
        v19 = (a2 + 48 + 40 * v17);
        v20 = v19[2];
        if (v20 >= 8)
        {
          break;
        }

        v21 = v19[3];
        v22 = v21 - 1;
        v23 = BlueFin::GlImplGnss::m_aucImplGnssTable[v20];
        v67 = v23;
        v68 = v21;
        if (BlueFin::GlGnssSet::Has(a1 + 1568, &v67))
        {
          v26.i64[0] = 0x8000000080000000;
          v26.i64[1] = 0x8000000080000000;
          if (!v9)
          {
LABEL_77:
            v62 = "pSatsMsg";
            DeviceFaultNotify("glpe_nmeagen.cpp", 3778, "FormatNmeaSAT", "pSatsMsg");
            v63 = 3778;
LABEL_76:
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_nmeagen.cpp", v63, v62);
          }

          v27 = 0;
          while (1)
          {
            v28 = (*(a1 + 1552) + 12 * v27);
            if (v23 == BlueFin::GlImplGnss::m_aucImplGnssTable[*v28] && v28[1] == v21)
            {
              break;
            }

            if (v9 <= ++v27)
            {
              goto LABEL_77;
            }
          }
        }

        else
        {
          BlueFin::GlGnssSet::Add(a1 + 1568, &v67);
          v28 = (*(a1 + 1552) + 12 * v9);
          *v28 = 8;
          v28[4] = 0;
          ++v9;
          *(v28 + 2) = (16 * (*(a2 + 6136 + 4 * v19[1] - 4) & 3)) & 0xBF | (((*(a2 + 5624 + 8 * v19[2]) >> v22) & 1) << 6);
          v26.i64[0] = 0x8000000080000000;
          v26.i64[1] = 0x8000000080000000;
        }

        v30 = v19[34];
        if (v30 == 3 || v30 == 0)
        {
          *v24.i32 = *(a2 + 7440 + 4 * v18) + 0.5;
          *v25.i32 = *v24.i32 + (truncf(*v24.i32 * 2.3283e-10) * -4295000000.0);
          v32 = vbslq_s8(v26, v25, v24);
          if (*v24.i32 > 4295000000.0)
          {
            v24.i32[0] = v32.i32[0];
          }

          if (*v24.i32 < -4295000000.0)
          {
            *v32.i32 = -*v24.i32;
            *v24.i32 = -(*v24.i32 - (truncf(*v24.i32 * -2.3283e-10) * -4295000000.0));
            *v24.i32 = -*vbslq_s8(v26, v24, v32).i32;
          }

          if (*v24.i32 < 0.0)
          {
            v33 = --*v24.i32;
          }

          else
          {
            LOWORD(v33) = *v24.i32;
          }

          *(v28 + 1) = v33;
        }

        v34 = v19[2];
        *v28 = v34;
        v28[1] = v19[3];
        v28[4] = *v19;
        v35 = byte_298A448F4[v30];
        *(v28 + 2) |= (((*(a2 + 5112 + (v30 << 6) + 8 * v34) >> v22) & 1) << (v35 + 1)) | (((*(a2 + 4600 + (v30 << 6) + 8 * v34) >> v22) & 1) << v35) | (((*(a2 + 5816 + (v30 << 6) + 8 * v34) >> v22) & 1) << (v30 + 15)) | (((*(a2 + 6072 + 8 * v34) >> v22) & 1) << 18) | (((*(a2 + 5368 + (v30 << 6) + 8 * v34) >> v22) & 1) << (v35 + 3)) | (((*(a2 + 4856 + (v30 << 6) + 8 * v34) >> v22) & 1) << (v35 + 2));
        v17 = v18 + 1;
        if (*(a2 + 44) <= (v18 + 1))
        {
          goto LABEL_38;
        }
      }

      v62 = "rotSvInfo.ucImplGnss < NUM_IMPL_GNSS";
      DeviceFaultNotify("glpe_nmeagen.cpp", 3748, "FormatNmeaSAT", "rotSvInfo.ucImplGnss < NUM_IMPL_GNSS");
      v63 = 3748;
      goto LABEL_76;
    }

    v9 = 0;
  }

LABEL_38:
  v36 = a3 + a4 - 1;
  v37 = a3 + a4;
  if (v36 <= a3)
  {
    v38 = 0;
  }

  else
  {
    v38 = a4;
  }

  v39 = BlueFin::GlFormat::glsnprintf(a3, v38, "$PGLOR,%d,SAT", v8, 2);
  v42 = (a3 + v39);
  v66 = ((v9 + 5) / 6);
  if (((v9 + 5) / 6))
  {
    if (v36 <= v42)
    {
      v43 = 0;
    }

    else
    {
      v43 = (v37 - v42);
    }

    v42 = (v42 + BlueFin::GlFormat::glsnprintf((a3 + v39), v43, ",%d,%d", v41, ((v9 + 5) / 6), *(a1 + 329) + 1));
  }

  v44 = 6 * *(a1 + 329);
  if (v9 > v44)
  {
    v45 = 0;
    do
    {
      v46 = (*(a1 + 1552) + 12 * v44);
      v47 = *v46;
      if (v47 > 7)
      {
        v48 = 120;
      }

      else
      {
        v48 = dword_298A449C8[v47];
      }

      if (v36 <= v42)
      {
        v49 = 0;
      }

      else
      {
        v49 = (v37 - v42);
      }

      v51 = (v42 + BlueFin::GlFormat::glsnprintf(v42, v49, ",%c%02d,", v41, v48, v46[1]));
      if (v46[4] && *(v46 + 1) >= 1)
      {
        if (v36 <= v51)
        {
          v52 = 0;
        }

        else
        {
          v52 = (v37 - v51);
        }

        v51 = (v51 + BlueFin::GlFormat::glsnprintf(v51, v52, "%02d", v50, *(v46 + 1)));
      }

      v53 = *(v46 + 2);
      if (v53 >> 15)
      {
        v54 = 3;
      }

      else if (v53 <= 0x7FF)
      {
        v54 = v53 > 0x7F;
      }

      else
      {
        v54 = 2;
      }

      if (v36 <= v51)
      {
        v55 = 0;
      }

      else
      {
        v55 = (v37 - v51);
      }

      v56 = BlueFin::GlFormat::glsnprintf(v51, v55, off_29EEB4170[v54], v50, *(v46 + 2));
      if (v9 <= ++v44)
      {
        break;
      }

      v42 = (v51 + v56);
    }

    while (v45++ < 5);
  }

  result = BlueFin::GlPeNmeaGen::nmeaAddChksum(a3, v36, v40);
  v59 = *(a1 + 329);
  v60 = v66 <= (v59 + 1);
  if (v66 > (v59 + 1))
  {
    v61 = v59 + 1;
  }

  else
  {
    v61 = 0;
  }

  *(a1 + 329) = v61;
  *(a1 + 330) = v60;
  return result;
}

uint64_t BlueFin::GlPeNmeaGen::FormatNmeaSVC(uint64_t result, uint64_t a2, BlueFin::GlFormat *this, const char *a4)
{
  v5 = result;
  v38[0] = 0;
  __src = v37;
  v36 = 8;
  memset(v37, 0, sizeof(v37));
  v6 = *(a2 + 44);
  if (v6 < 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = (a2 + 84);
    v10 = &BlueFin::GlImplGnss::m_aucFromImplSvIdToEnabledSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion;
    do
    {
      result = *(v9 - 34);
      if (result != 4 && result != 8)
      {
        result = BlueFin::GlImplGnss::m_aucImplGnssTable[*(v9 - 34)];
        if (*(v5 + 1760) == result)
        {
          result = *(v9 - 2);
          if (result == *(v5 + 1764))
          {
            result = *(v5 + 1765);
            if (result <= v7)
            {
              result = (result + 4);
              if (result > v7)
              {
                v12 = v10[*(v9 - 35)];
                *(v37 + ((v12 >> 3) & 0x1C)) |= 1 << v12;
                v13 = v8;
                *(v38 + v8 + 4) = *(v9 - 1);
                result = *v9;
                ++v8;
                *(v38 + v13) = result;
              }
            }

            ++v7;
          }
        }
      }

      v9 += 40;
      --v6;
    }

    while (v6);
    if (LODWORD(v37[0]))
    {
      goto LABEL_17;
    }
  }

  v27 = 0;
  while (!*(v37 + v27 + 4))
  {
    v27 += 4;
    if (v27 == 28)
    {
      if (*(v5 + 1760) || *(v5 + 1764))
      {
        *this = 0;
        goto LABEL_37;
      }

      break;
    }
  }

LABEL_17:
  v14 = this + a4;
  v15 = v14 - 1;
  if (v14 - 1 <= this)
  {
    v16 = 0;
  }

  else
  {
    v16 = a4;
  }

  v17 = (this + BlueFin::GlFormat::glsnprintf(this, v16, "$PGLOR,%d,SVC,", a4, 2));
  if (v15 <= v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = (v14 - v17);
  }

  v19 = BlueFin::GNSS2ABBREVSTR(*(v5 + 1760));
  v21 = BlueFin::GlFormat::glsnprintf(v17, v18, "%s,%d,%d,%d,%02d", v20, v19, *(v5 + 1764), (v7 + 3) >> 2, (*(v5 + 1765) >> 2) + 1, v7);
  v30 = v36;
  memcpy(v34, __src, 4 * v36);
  v32 = 0;
  v31 = 0;
  v33 = v34[0];
  BlueFin::GlSetIterator::operator++(&v30);
  if (v31 != v30)
  {
    v24 = 0;
    v25 = (v17 + v21);
    do
    {
      if (v15 <= v25)
      {
        v26 = 0;
      }

      else
      {
        v26 = (v14 - v25);
      }

      v25 = (v25 + BlueFin::GlFormat::glsnprintf(v25, v26, ",%03d,%4s,%4s", v23, v32, BlueFin::stPeSigMeasKF::m_aacSvUseCodeImage[*(v38 + v24 + 4)], BlueFin::stPeSigMeasKF::m_aacSvUseCodeImage[*(v38 + v24)]));
      ++v24;
      BlueFin::GlSetIterator::operator++(&v30);
    }

    while (v31 != v30);
  }

  result = BlueFin::GlPeNmeaGen::nmeaAddChksum(this, v14 - 1, v22);
LABEL_37:
  v28 = (*(v5 + 1765) + 4);
  *(v5 + 1765) += 4;
  if (v28 >= v7)
  {
    *(v5 + 1765) = 0;
    v29 = ++*(v5 + 1764);
    if (v29 >= 3)
    {
      *(v5 + 1760) = *(v5 + 1760) + 1;
      *(v5 + 1764) = 0;
    }
  }

  return result;
}

const char *BlueFin::GNSS2ABBREVSTR(unsigned int a1)
{
  if (a1 < 5)
  {
    return off_29EEB38C0[a1];
  }

  v2 = "<->";
  if (a1 == 6)
  {
    v2 = "NIC";
  }

  if (a1 == 5)
  {
    return "GAL";
  }

  else
  {
    return v2;
  }
}

char *BlueFin::GlPeNmeaGen::FormatNmeaSIO(BlueFin::GlPeNmeaGen *this, const BlueFin::GlPePlatfStat *a2, char *a3, const char *a4)
{
  v4 = a3;
  BlueFin::GlFormat::glsnprintf(a2, a3, "$PGLOR,%d,SIO,TxERR,%d,RxERR,%d,TxCNT,%u,RxCNT,%u,MLFRMPKT,%u,DTMS,%u,DTIN,%u,%u,DTOUT,%u,%u,HATMD,%d", a4, 2, *(this + 2), *(this + 3), *(this + 4), *(this + 5), *(this + 3), *(this + 6), *(this + 7), *(this + 9), *(this + 8), *(this + 10), *(this + 40));

  return BlueFin::GlPeNmeaGen::nmeaAddChksum(a2, a2 + v4 - 1, v6);
}

char *BlueFin::GlPeNmeaGen::FormatNmeaHLA(uint64_t a1, uint64_t a2, BlueFin::GlFormat *this, const char *a4)
{
  v6 = a2 + 4096;
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

  v10 = BlueFin::GlFormat::glsnprintf(this, v9, "$PGLOR,%d,HLA,%s,", a4, 2, a1 + 1767);
  v12 = this + v10;
  if ((*(a2 + 7024) & 4) != 0)
  {
    if (v8 <= v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = (v7 - v12);
    }

    v15 = *(a2 + 7036);
    if (*(v6 + 2936))
    {
      v16 = BlueFin::GlFormat::glsnprintf((this + v10), v13, "L,%1d,Al,%d,", v11, *(a2 + 7036), *(a2 + 7034));
      goto LABEL_16;
    }

    v79 = *(a2 + 7036);
    v14 = "L,%1d,Al,,";
  }

  else
  {
    if (v8 <= v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = (v7 - v12);
    }

    v14 = "L,,Al,,";
  }

  v16 = BlueFin::GlFormat::glsnprintf((this + v10), v13, v14, v11, v79, v91);
LABEL_16:
  v18 = &v12[v16];
  if (v8 <= v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = (v7 - v18);
  }

  if ((*(a2 + 7024) & 0x10) != 0)
  {
    v80 = *(a2 + 7064);
    v20 = "A,%d,";
  }

  else
  {
    v20 = "A,,";
  }

  v22 = (v18 + BlueFin::GlFormat::glsnprintf(v18, v19, v20, v17, v80));
  if ((*(a2 + 7024) & 0x20) != 0 && (v23 = *(a2 + 7072), v23 <= 2))
  {
    if (v8 <= v22)
    {
      v24 = 0;
    }

    else
    {
      v24 = (v7 - v22);
    }

    v25 = BlueFin::GlFormat::glsnprintf(v22, v24, "H,%d,%c,", v21, *(a2 + 7068), byte_298A449A7[v23]);
  }

  else
  {
    if (v8 <= v22)
    {
      v27 = 0;
    }

    else
    {
      v27 = (v7 - v22);
    }

    v25 = BlueFin::GlFormat::glsnprintf(v22, v27, "H,,,", v21, v81, v92);
  }

  v28 = (v22 + v25);
  if (v8 <= v28)
  {
    v29 = 0;
  }

  else
  {
    v29 = (v7 - v28);
  }

  if ((*(a2 + 7024) & 0x40) != 0)
  {
    v82 = *(a2 + 7076);
    v30 = "M,%1d,";
  }

  else
  {
    v30 = "M,,";
  }

  v32 = (v28 + BlueFin::GlFormat::glsnprintf(v28, v29, v30, v26, v82));
  if (v8 <= v32)
  {
    v33 = 0;
  }

  else
  {
    v33 = (v7 - v32);
  }

  if ((*(a2 + 7024) & 0x80) != 0)
  {
    v83 = *(a2 + 7080);
    v34 = "Ac,%1d,";
  }

  else
  {
    v34 = "Ac,,";
  }

  v36 = (v32 + BlueFin::GlFormat::glsnprintf(v32, v33, v34, v31, v83));
  if (v8 <= v36)
  {
    v37 = 0;
  }

  else
  {
    v37 = (v7 - v36);
  }

  if (*(a2 + 7025))
  {
    v84 = *(a2 + 7084);
    v38 = "Gr,%1d,";
  }

  else
  {
    v38 = "Gr,,";
  }

  v40 = (v36 + BlueFin::GlFormat::glsnprintf(v36, v37, v38, v35, v84));
  if ((*(a2 + 7025) & 2) != 0 && (v41 = *(a2 + 7092), v41 <= 2))
  {
    if (v8 <= v40)
    {
      v42 = 0;
    }

    else
    {
      v42 = (v7 - v40);
    }

    v43 = BlueFin::GlFormat::glsnprintf(v40, v42, "S,%.1f,%c,", v39, *(a2 + 7088), byte_298A449A7[v41]);
  }

  else
  {
    if (v8 <= v40)
    {
      v45 = 0;
    }

    else
    {
      v45 = (v7 - v40);
    }

    v43 = BlueFin::GlFormat::glsnprintf(v40, v45, "S,,,", v39, v85, v93);
  }

  v46 = (v40 + v43);
  if ((*(a2 + 7025) & 4) != 0 && (v47 = *(a2 + 7100), v47 <= 2))
  {
    if (v8 <= v46)
    {
      v48 = 0;
    }

    else
    {
      v48 = (v7 - v46);
    }

    v49 = BlueFin::GlFormat::glsnprintf(v46, v48, "Sx,%.1f,%c,", v44, *(a2 + 7096), byte_298A449A7[v47]);
  }

  else
  {
    if (v8 <= v46)
    {
      v51 = 0;
    }

    else
    {
      v51 = (v7 - v46);
    }

    v49 = BlueFin::GlFormat::glsnprintf(v46, v51, "Sx,,,", v44, v86, v94);
  }

  v52 = (v46 + v49);
  if (v8 <= v52)
  {
    v53 = 0;
  }

  else
  {
    v53 = (v7 - v52);
  }

  if ((*(a2 + 7025) & 0x10) != 0)
  {
    v87 = *(a2 + 7104);
    v54 = "T,%1d,";
  }

  else
  {
    v54 = "T,,";
  }

  v56 = (v52 + BlueFin::GlFormat::glsnprintf(v52, v53, v54, v50, v87));
  if (v8 <= v56)
  {
    v57 = 0;
  }

  else
  {
    v57 = (v7 - v56);
  }

  if ((*(a2 + 7025) & 0x20) != 0)
  {
    v88 = *(a2 + 7108);
    v58 = "Tr,%d,";
  }

  else
  {
    v58 = "Tr,,";
  }

  v60 = (v56 + BlueFin::GlFormat::glsnprintf(v56, v57, v58, v55, v88));
  if (v8 <= v60)
  {
    v61 = 0;
  }

  else
  {
    v61 = (v7 - v60);
  }

  if ((*(a2 + 7025) & 0x40) != 0)
  {
    v89 = *(a2 + 7112);
    v62 = "Mn,%1d,";
  }

  else
  {
    v62 = "Mn,,";
  }

  v64 = (v60 + BlueFin::GlFormat::glsnprintf(v60, v61, v62, v59, v89));
  if (v8 <= v64)
  {
    v65 = 0;
  }

  else
  {
    v65 = (v7 - v64);
  }

  if ((*(a2 + 7026) & 8) != 0)
  {
    v90 = *(a2 + 7116);
    v66 = "Ap,%1d,";
  }

  else
  {
    v66 = "Ap,,";
  }

  v68 = (v64 + BlueFin::GlFormat::glsnprintf(v64, v65, v66, v63, v90));
  if (v8 <= v68)
  {
    v69 = 0;
  }

  else
  {
    v69 = (v7 - v68);
  }

  if (*(v6 + 3024))
  {
    v70 = BlueFin::GlFormat::glsnprintf(v68, v69, "Ta,%1d,%c,%c", v67, *(v6 + 3024), byte_298A449A7[*(a2 + 7124)], byte_298A449A7[*(a2 + 7128)]);
  }

  else
  {
    v70 = BlueFin::GlFormat::glsnprintf(v68, v69, "Ta,%1d,,", v67, 0, v95);
  }

  v72 = (v68 + v70);
  if (v8 <= v72)
  {
    v73 = 0;
  }

  else
  {
    v73 = (v7 - v72);
  }

  v74 = (v72 + BlueFin::GlFormat::glsnprintf(v72, v73, ",Aa,%1d,", v71, *(a2 + 7132)));
  if (v8 <= v74)
  {
    v76 = 0;
  }

  else
  {
    v76 = (v7 - v74);
  }

  BlueFin::GlFormat::glsnprintf(v74, v76, "Ga,%1d,", v75, *(a2 + 7136));

  return BlueFin::GlPeNmeaGen::nmeaAddChksum(this, v7 - 1, v77);
}

char *BlueFin::GlPeNmeaGen::FormatNmeaCTX(uint64_t a1, int a2, BlueFin::GlFormat *this, const char *a4, unsigned int *a5)
{
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

  v10 = BlueFin::GlFormat::glsnprintf(this, v9, "$PGLOR,%d,CTX,%s,", a4, 3, a1 + 1767);
  v12 = this + v10;
  v13 = *(a5 + 4);
  LODWORD(v14) = v13[4];
  if (v14 == 7)
  {
    v14 = 1;
  }

  else
  {
    v14 = v14;
  }

  v15 = v13[2];
  v16 = v13[3];
  if (v8 <= v12)
  {
    v17 = 0;
  }

  else
  {
    v17 = (v7 - v12);
  }

  v19 = &v12[BlueFin::GlFormat::glsnprintf((this + v10), v17, "E,%1d,%1d,", v11, v14, v13[5])];
  if (v8 <= v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = (v7 - v19);
  }

  if (*a5)
  {
    v21 = BlueFin::GlFormat::glsnprintf(v19, v20, "%1d,%1d,", v18, *a5, a5[1]);
  }

  else
  {
    v21 = BlueFin::GlFormat::glsnprintf(v19, v20, ",,", v18, v31, v33);
  }

  v23 = (v19 + v21);
  if (v8 <= v23)
  {
    v24 = 0;
  }

  else
  {
    v24 = (v7 - v23);
  }

  v25 = (v23 + BlueFin::GlFormat::glsnprintf(v23, v24, "V,%1d,%1d,", v22, v15, v16));
  if (*(a5 + 24))
  {
    if (v8 <= v25)
    {
      v27 = 0;
    }

    else
    {
      v27 = (v7 - v25);
    }

    BlueFin::GlFormat::glsnprintf(v25, v27, "S,%f,%f,%d", v26, *(a5 + 1), *(a5 + 2), *(a5 + 24));
  }

  else
  {
    if (v8 <= v25)
    {
      v29 = 0;
    }

    else
    {
      v29 = (v7 - v25);
    }

    BlueFin::GlFormat::glsnprintf(v25, v29, "S,,,", v26, v32, v34);
  }

  return BlueFin::GlPeNmeaGen::nmeaAddChksum(this, v7 - 1, v28);
}

char *BlueFin::GlPeNmeaGen::FormatNmeaLSQ(char *result, uint64_t a2, BlueFin::GlFormat *this, const char *a4)
{
  v5 = (a2 + 4096);
  v6 = a4 - 1;
  v7 = this + v6;
  if ((*(a2 + 7152) & 0x80000000) == 0)
  {
    if (v7 > this)
    {
      v9 = a4;
    }

    else
    {
      v9 = 0;
    }

    v10 = BlueFin::GlFormat::glsnprintf(this, v9, "$PGLOR,%d,LSQ,%s,", a4, 1, result + 1767);
    v12 = (this + v10);
    if (v5[3056])
    {
      v13 = fabs(*(a2 + 7160));
      v14 = fabs(*(a2 + 7168));
      v15 = v13;
      v16 = v14;
      v17 = (v13 - v15) * 60.0;
      v18 = v17;
      v19 = ((v17 - v18) * 1000000.0);
      v20 = (v14 - v16) * 60.0;
      v21 = v20;
      v22 = ((v20 - v21) * 1000000.0);
      v23 = v7 + 1;
      if (v7 <= v12)
      {
        v24 = 0;
      }

      else
      {
        v24 = (v7 + 1 - v12);
      }

      v25 = 83;
      if (*(a2 + 4072) >= 0.0)
      {
        v25 = 78;
      }

      v27 = (v12 + BlueFin::GlFormat::glsnprintf((this + v10), v24, "%02d%02d.%06d,%c,", v11, v15, v18, v19, v25));
      if (v7 <= v27)
      {
        v28 = 0;
      }

      else
      {
        v28 = (v23 - v27);
      }

      v29 = 87;
      if (*(a2 + 4080) >= 0.0)
      {
        v29 = 69;
      }

      v12 = (v27 + BlueFin::GlFormat::glsnprintf(v27, v28, "%03d%02d.%06d,%c,%.1f,%.1f,", v26, v16, v21, v22, v29, *(a2 + 7176), *(a2 + 7180)));
      if (v7 <= v12)
      {
        v30 = 0;
      }

      else
      {
        v30 = (v23 - v12);
      }

      if (v5[3088])
      {
        v31 = BlueFin::GlFormat::glsnprintf(v12, v30, "%.1f,%.1f,%.1f,", v11, *(a2 + 7188), *(a2 + 7192), *(a2 + 7196));
LABEL_31:
        v34 = (v12 + v31);
        if (v7 <= v34)
        {
          v35 = 0;
        }

        else
        {
          v35 = (v23 - v34);
        }

        if (v5[3116])
        {
          v36 = BlueFin::GlFormat::glsnprintf(v34, v35, "%.1f,%.1f,", v32, *(a2 + 7216), *(a2 + 7220));
        }

        else
        {
          v36 = BlueFin::GlFormat::glsnprintf(v34, v35, ",,", v32, v54, v59);
        }

        v38 = (v34 + v36);
        if (v7 <= v38)
        {
          v39 = 0;
        }

        else
        {
          v39 = (v23 - v38);
        }

        if (v5[3128])
        {
          v40 = BlueFin::GlFormat::glsnprintf(v38, v39, "%.1f,%.1f,", v37, *(a2 + 7228), *(a2 + 7232));
        }

        else
        {
          v40 = BlueFin::GlFormat::glsnprintf(v38, v39, ",,", v37, v55, v60);
        }

        v42 = (v38 + v40);
        if (v7 <= v42)
        {
          v43 = 0;
        }

        else
        {
          v43 = (v23 - v42);
        }

        if (v5[3104])
        {
          v44 = BlueFin::GlFormat::glsnprintf(v42, v43, "%.1f,%.1f,", v41, *(a2 + 7204), *(a2 + 7208));
        }

        else
        {
          v44 = BlueFin::GlFormat::glsnprintf(v42, v43, ",,", v41, v56, v61);
        }

        v46 = (v42 + v44);
        if (v7 <= v46)
        {
          v47 = 0;
        }

        else
        {
          v47 = (v23 - v46);
        }

        v48 = (v46 + BlueFin::GlFormat::glsnprintf(v46, v47, "%02d,", v45, *(a2 + 7236)));
        v50 = *(a2 + 7244);
        if (v7 <= v48)
        {
          v51 = 0;
        }

        else
        {
          v51 = (v23 - v48);
        }

        if (v50 == 0.0)
        {
          BlueFin::GlFormat::glsnprintf(v48, v51, ",", v49, v57, v62);
        }

        else
        {
          BlueFin::GlFormat::glsnprintf(v48, v51, "%.1f,%.1f", v49, *(a2 + 7240), v50);
        }

        return BlueFin::GlPeNmeaGen::nmeaAddChksum(this, v7, v52);
      }

      v33 = ",,,";
    }

    else
    {
      v23 = v7 + 1;
      if (v7 <= v12)
      {
        v30 = 0;
      }

      else
      {
        v30 = (v7 + 1 - v12);
      }

      v33 = ",,,,,,,,,";
    }

    v31 = BlueFin::GlFormat::glsnprintf(v12, v30, v33, v11, v53, v58, v63);
    goto LABEL_31;
  }

  if (v7 > this && (v6 & 0x8000000000000000) == 0)
  {
    *this = 0;
  }

  return result;
}

char *BlueFin::GlPeNmeaGen::FormatNmeaPWR(uint64_t a1, unsigned __int16 *a2, uint64_t a3, BlueFin::GlFormat *a4, int a5)
{
  v9 = *(*(a1 + 1832) + 140);
  v10 = *(a2 + 20);
  v11 = 0.0;
  if (v10)
  {
    v12 = v9 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    goto LABEL_15;
  }

  if (v9 == 805371913 || v9 == 1006829577)
  {
    v14 = *(a2 + 6);
    v15 = *(a2 + 25);
    v16 = 6097;
    v14.i32[1] = *(a2 + 26);
    v14.i64[1] = *(a2 + 42);
    v17 = vmulq_s32(v14, xmmword_298A44910);
    v18 = *(a2 + 23);
    v19 = 86;
LABEL_13:
    v21 = vaddvq_s32(v17) + v15 * v16 + v18 * v19;
LABEL_14:
    v11 = v21 / (v10 * 1000.0);
    goto LABEL_15;
  }

  if (v9 == 805502985)
  {
    v20 = *(a2 + 6);
    v15 = *(a2 + 25);
    v16 = 5795;
    v20.i32[1] = *(a2 + 26);
    v20.i64[1] = *(a2 + 42);
    v17 = vmulq_s32(v20, xmmword_298A44920);
    v18 = *(a2 + 23);
    v19 = 62;
    goto LABEL_13;
  }

  if ((v9 & 0xF000FFFE) == 0x30000010 || (v9 & 0xF000FFFE) == 805306382)
  {
    v21 = 2400 * *(a2 + 24) + 4100 * *(a2 + 25) + 10630 * *(a2 + 26) + 1000 * *(a2 + 21) + 100 * *(a2 + 23);
    goto LABEL_14;
  }

LABEL_15:
  GlCustomLog(14, "MCU_PWR: HwVersion 0x%x, %.3fmA, Total(%u), InIdle(%u) InLP(%u) InSl(%u) In26Mhz(%u) In52MHz(%u) In100MHz(%u)\n", v9, v11, v10, *(a2 + 21), *(a2 + 22), *(a2 + 23), *(a2 + 24), *(a2 + 25), *(a2 + 26));
  v22 = *(a2 + 3);
  if ((*(*(a1 + 1832) + 88) - 39) > 1)
  {
    BlueFin::GlFormat::glsnprintf(a4, a5, "$PGLOR,%d,PWR,mA,%.1f,RFTm,%u,OscTm,%u,MeasTm,%u,UTC,%s,GNSSmA,%.1f,CPUTm,%u,COPTm,%u,COPMargTm,%u,SrchTm,%u,TrkTm,%u,RpcTm,%u,McuTotalTm,%u,McuSleepTm,%u,McuIdleTm,%u,Mcu26Tm,%u,Mcu52Tm,%u,McuTurboTm,%u", *(a2 + 24), 6, (v11 + v22), *a2, a2[2], a2[5], a1 + 1767, v22, a2[4], a2[24], *(a2 + 108), a2[25], a2[26], a2[27], *(a2 + 20), *(a2 + 23), *(a2 + 21), *(a2 + 24), *(a2 + 25), *(a2 + 26));
  }

  else
  {
    BlueFin::GlFormat::glsnprintf(a4, a5, "$PGLOR,%d,PWR,mA_PMU,%.2f,RFTm,%u,OscTm,%u,MeasTm,%u,UTC,%s,CpuETm,%u,CpuLmTm,%u,Cop0Tm,%u,Cop1Tm,%u,COPMargTm,%u,SrchTm,%u,Trk0Tm,%u,Trk1Tm,%u,RpcTm,%u,CpuClk,%u,DspClk,%u,IdleClk,%u,Temp,%.1f,DspLoad,%.2f,SrchMcm,%u", a2[33], 9, v22, *a2, a2[2], a2[5], a1 + 1767, a2[4], a2[30], a2[24], a2[31], *(a2 + 108), a2[25], a2[26], a2[32], a2[27], a2[33], a2[34], a2[35], *(a2 + 18), *(a2 + 19), *(a2 + 28));
  }

  return BlueFin::GlPeNmeaGen::nmeaAddChksum(a4, a4 + a5 - 1, v23);
}

char *BlueFin::GlPeNmeaGen::FormatNmeaAGC(uint64_t a1, uint64_t a2, uint64_t a3, BlueFin::GlFormat *this, int a5)
{
  v9 = this + a5;
  v10 = v9 - 1;
  if (v9 - 1 <= this)
  {
    v11 = 0;
  }

  else
  {
    v11 = a5;
  }

  v12 = BlueFin::GlFormat::glsnprintf(this, v11, "$PGLOR,%d,AGC", this, 3);
  v15 = this + v12;
  if (!*(a2 + 251))
  {
    v18 = *(a1 + 1832);
    v19 = *(v18 + 88);
    if ((v19 - 36) >= 5 && v19 != 34)
    {
      if (v10 <= v15)
      {
        v30 = 0;
      }

      else
      {
        v30 = (v9 - v15);
      }

      v60 = (*(a2 + 260) + *(a2 + 264));
      v61 = (*(a2 + 268) + *(a2 + 272));
      v56 = (*(a2 + 252) + *(a2 + 256));
      v31 = ",G,%.1lf,R,%.1lf,B,%.1lf,EA5,,AL1,,AL5,,LTE,,PM1,,PM5,";
      goto LABEL_33;
    }

    v20 = *(v18 + 48);
    if (v10 <= v15)
    {
      v21 = 0;
    }

    else
    {
      v21 = (v9 - v15);
    }

    v23 = &v15[BlueFin::GlFormat::glsnprintf((this + v12), v21, ",G,%.1lf", v14, (*(a2 + 252) + *(a2 + 256)))];
    if (v10 <= v23)
    {
      v24 = 0;
    }

    else
    {
      v24 = (v9 - v23);
    }

    v26 = (v23 + BlueFin::GlFormat::glsnprintf(v23, v24, ",R,%.1lf", v22, (*(a2 + 260) + *(a2 + 264))));
    if (v20 <= 5 && ((1 << v20) & 0x26) != 0)
    {
      if (v10 <= v26)
      {
        v27 = 0;
      }

      else
      {
        v27 = (v9 - v26);
      }

      v28 = BlueFin::GlFormat::glsnprintf(v26, v27, ",B,%.1lf", v25, (*(a2 + 268) + *(a2 + 272)));
    }

    else
    {
      if (v10 <= v26)
      {
        v32 = 0;
      }

      else
      {
        v32 = (v9 - v26);
      }

      v28 = BlueFin::GlFormat::glsnprintf(v26, v32, ",B,", v25, v57);
    }

    v33 = (v26 + v28);
    if (v20 <= 8 && ((1 << v20) & 0x1B4) != 0)
    {
      if (v10 <= v33)
      {
        v34 = 0;
      }

      else
      {
        v34 = (v9 - v33);
      }

      v58 = (*(a2 + 276) + *(a2 + 280));
      v35 = ",E5A,%.1lf";
    }

    else
    {
      if (v10 <= v33)
      {
        v34 = 0;
      }

      else
      {
        v34 = (v9 - v33);
      }

      v35 = ",E5A,";
    }

    v37 = (v33 + BlueFin::GlFormat::glsnprintf(v33, v34, v35, v29, *&v58));
    if (v10 <= v37)
    {
      v38 = 0;
    }

    else
    {
      v38 = (v9 - v37);
    }

    v40 = (v37 + BlueFin::GlFormat::glsnprintf(v37, v38, ",AL1,%.1lf", v36, *(a2 + 252)));
    if (v20 <= 8 && ((1 << v20) & 0x1B4) != 0)
    {
      if (v10 <= v40)
      {
        v41 = 0;
      }

      else
      {
        v41 = (v9 - v40);
      }

      v59 = *(a2 + 276);
      v42 = ",AL5,%.1lf";
    }

    else
    {
      if (v10 <= v40)
      {
        v41 = 0;
      }

      else
      {
        v41 = (v9 - v40);
      }

      v42 = ",AL5,";
    }

    v43 = 0;
    v45 = (v40 + BlueFin::GlFormat::glsnprintf(v40, v41, v42, v39, *&v59));
    v46 = (a2 + 296);
    v47 = &byte_298A449A4;
    while (1)
    {
      v48 = *(a2 + 320);
      v49 = *v47++;
      if (v48 == v49)
      {
        v50 = 64665;
      }

      else if (v48 != 1 || (v53 = v46[3]) == 0 || (v50 = *v46 - v53, v50 < 1))
      {
        if (v10 <= v45)
        {
          v54 = 0;
        }

        else
        {
          v54 = (v9 - v45);
        }

        v52 = BlueFin::GlFormat::glsnprintf(v45, v54, ",%s,", v44, off_29EEB4158[v43], *&v60);
        goto LABEL_67;
      }

      if (v10 <= v45)
      {
        v51 = 0;
      }

      else
      {
        v51 = (v9 - v45);
      }

      v52 = BlueFin::GlFormat::glsnprintf(v45, v51, ",%s,%.1lf", v44, off_29EEB4158[v43], (v50 / 64.665));
LABEL_67:
      v45 = (v45 + v52);
      ++v43;
      ++v46;
      if (v43 == 3)
      {
        goto LABEL_68;
      }
    }
  }

  v16 = *(a3 + 49);
  if ((v16 - 1) < 0x20)
  {
    if (v10 <= v15)
    {
      v17 = 0;
    }

    else
    {
      v17 = (v9 - v15);
    }

    BlueFin::GlFormat::glsnprintf((this + v12), v17, ",G,%.1lf", v14, (*(a2 + 252) + *(a2 + 256)));
    goto LABEL_68;
  }

  if ((v16 - 52) < 0xE)
  {
    if (v10 <= v15)
    {
      v30 = 0;
    }

    else
    {
      v30 = (v9 - v15);
    }

    v31 = ",R,";
LABEL_33:
    BlueFin::GlFormat::glsnprintf((this + v12), v30, v31, v14, *&v56, *&v60, *&v61);
  }

LABEL_68:

  return BlueFin::GlPeNmeaGen::nmeaAddChksum(this, v9 - 1, v13);
}

BOOL BlueFin::GlPeNmeaGen::ToNmeaId(uint64_t a1, int *a2, _DWORD *a3, _BYTE *a4)
{
  *a3 = 6;
  *a4 = 0;
  v7 = *a2;
  v8 = *(a1 + 1832);
  IsGnssSupportedForReport = BlueFin::GlPeNmeaGen::IsGnssSupportedForReport(v8, *a2);
  result = 0;
  if (IsGnssSupportedForReport)
  {
    if (v7 >= 7)
    {
      DeviceFaultNotify("glpe_nmeagen.cpp", 922, "ToNmeaId", "0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_nmeagen.cpp", 922, "0");
    }

    v11 = *(a2 + 4);
    *a3 = dword_298A449AC[v7];
    if (*(v8 + 26256) == 1)
    {
      v12 = v11 + 64;
      if (v7 != 2)
      {
        v12 = v11;
      }

      v13 = v11 + 32;
      if (v7 != 1)
      {
        v13 = v12;
      }
    }

    else
    {
      v14 = BlueFin::GlImplGnss::m_aucEnabledGnssTable[v7];
      v15 = v11 - 56;
      v16 = v11 + 64;
      v17 = v11 + 100;
      if (v7 != 5)
      {
        v17 = v11;
      }

      v13 = v11 + 32;
      if (v14 != 1)
      {
        v13 = v17;
      }

      if (v14 == 2)
      {
        v13 = v16;
      }

      if (v14 == 5)
      {
        v13 = v15;
      }
    }

    *a4 = v13;
    return *a3 != 6;
  }

  return result;
}

BlueFin::GlGnssIdSet *BlueFin::GlGnssIdSet::GlGnssIdSet(BlueFin::GlGnssIdSet *this, char a2, char a3)
{
  *(this + 12) = 0;
  *this = this + 12;
  *(this + 8) = 2;
  if (a3)
  {
    DeviceFaultNotify("glgnss.cpp", 60, "GlGnssIdSet", "(ulWord0 & 0x1) == 0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glgnss.cpp", 60, "(ulWord0 & 0x1) == 0");
  }

  BlueFin::GlSetBase::SetULong(this, 0, a3);
  BlueFin::GlSetBase::SetULong(this, 1u, a2);
  return this;
}

uint64_t BlueFin::GlPeNmeaGsvSatsNum::GetNmeaSignalID(uint64_t a1, int a2, unsigned int a3)
{
  result = 0;
  v8 = 151520769;
  v7 = 1;
  v6 = 50659329;
  if (a2 <= 2)
  {
    if (a2 >= 2)
    {
      if (a2 != 2)
      {
        return result;
      }

      if (!a3)
      {
        v5 = &v7;
        return *v5;
      }

      return 0;
    }
  }

  else
  {
    if (a2 > 4)
    {
      if (a2 == 5)
      {
        if (a3 < 3)
        {
          v4 = &__const__ZN7BlueFin18GlPeNmeaGsvSatsNum15GetNmeaSignalIDENS_6teGNSSENS_13GlSignalIndexE_aucGalNmeaSigId;
          goto LABEL_18;
        }
      }

      else
      {
        if (a2 != 6)
        {
          return result;
        }

        if (a3 <= 2)
        {
          v4 = &__const__ZN7BlueFin18GlPeNmeaGsvSatsNum15GetNmeaSignalIDENS_6teGNSSENS_13GlSignalIndexE_aucNicNmeaSigId;
          goto LABEL_18;
        }
      }

      return 0;
    }

    if (a2 != 3)
    {
      if (a3 < 4)
      {
        v4 = &v6;
LABEL_18:
        v5 = v4 + a3;
        return *v5;
      }

      return 0;
    }
  }

  if (a3 < 4)
  {
    v4 = &v8;
    goto LABEL_18;
  }

  return 0;
}

char *BlueFin::GlPeNmeaGen::FormatNmeaFIX(BlueFin::GlPeNmeaGen *this, int a2, unsigned int a3, BlueFin::GlFormat *a4, int a5)
{
  BlueFin::GlFormat::glsnprintf(a4, a5, "$PGLOR,%d,FIX,%.1f,%.1f", a4, 1, (a2 + 10) * 0.001, a3 * 0.001);

  return BlueFin::GlPeNmeaGen::nmeaAddChksum(a4, a4 + a5 - 1, v7);
}

uint64_t BlueFin::GlPeReqBag::SetFixStatus(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v99 = *MEMORY[0x29EDCA608];
  v59 = v4 + 4096;
  v64 = &unk_2A1F13AA0;
  v65 = (v1 + 3233);
  v7 = v1 + 20128;
  v66 = *(v1 + 3233);
  *(v1 + 3233) = 0;
  bzero(v67, 0x1CF8uLL);
  v8 = 0;
  v9 = 0;
  memset(v73, 248, sizeof(v73));
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  do
  {
    v10 = *(v6 + v8);
    if (v10)
    {
      v11 = *(v10 + 8);
      if (*(v11 + 16) == 12)
      {
        v9 |= *(*v3 + 4 * (*(v11 + 24) >> 5)) >> (*(v11 + 24) & 0x1F);
      }
    }

    v8 += 8;
  }

  while (v8 != 576);
  for (i = 0; i != 72; ++i)
  {
    v13 = *(v6 + 8 * i);
    if (!v13)
    {
      continue;
    }

    v14 = v13[1];
    v15 = *v3;
    if (!**v3)
    {
      v16 = *(v3 + 8);
      if (v16 < 2)
      {
        goto LABEL_17;
      }

      v17 = v16 - 1;
      v18 = v15 + 1;
      while (!*v18++)
      {
        if (!--v17)
        {
          goto LABEL_17;
        }
      }
    }

    if (((v15[*(v14 + 24) >> 5] >> (*(v14 + 24) & 0x1F)) & 1) != 0 || (v9 & 1) != 0 && *(v14 + 16) == 12)
    {
LABEL_17:
      (*(*v13 + 24))(v13, v5);
    }

    if (*(v14 + 16) != 13)
    {
      continue;
    }

    (*(**(v6 + 8 * i) + 248))(*(v6 + 8 * i), v67, v5);
    v20 = *(v6 + 8 * i);
    v21 = *(v20[1] + 172);
    if (*(v7 + 128) != 1)
    {
      if ((v21 & 0x38) != 0)
      {
        continue;
      }

      goto LABEL_25;
    }

    if ((v21 & 8) != 0 || (v21 & 0x38) == 0)
    {
      if ((v21 & 8) != 0)
      {
        (*(*v20 + 72))(v20, v7, 0);
        continue;
      }

LABEL_25:
      v22 = *(v7 + 16);
      v60 = *v7;
      v61 = v22;
      v23 = *(v7 + 48);
      v62 = *(v7 + 32);
      v63 = v23;
      BYTE4(v60) = 0;
      v61 = 0uLL;
      *(&v60 + 1) = 0;
      LOWORD(v62) = -1;
      DWORD1(v62) = 0;
      (*(*v20 + 72))(v20, &v60, 0);
      continue;
    }
  }

  if (v5)
  {
    v24 = *(v7 + 540);
    if (*(v7 + 536) - v24 <= 0x12D)
    {
      BlueFin::GlBitBuffer::Limit(v6 + 20640, v24);
      BlueFin::GlBitBuffer::Position(v6 + 20640, 0x12Eu);
      v25 = *(v7 + 540);
      v26 = *(v7 + 548) + v25;
      *(v7 + 548) = v26;
      v27 = *(v7 + 532);
      v28 = v26 >= v27;
      v29 = v26 - v27;
      if (v28)
      {
        *(v7 + 548) = v29;
      }

      *(v7 + 540) = *(v7 + 536) - v25;
      *(v7 + 536) = v27;
      *(v7 + 552) = 0;
    }

    BlueFin::GlBitBuffer::PutU((v6 + 20640), 1u, 1u);
    BlueFin::GlBitBuffer::PutU((v6 + 20640), *(v5 + 4048), 1u);
    BlueFin::GlBitBuffer::PutU((v6 + 20640), *(v59 + 96), 1u);
    BlueFin::GlBitBuffer::PutU((v6 + 20640), *(v59 + 112), 1u);
    BlueFin::GlBitBuffer::PutU((v6 + 20640), *(v6 + 3252) + *v5, 0x20u);
    v30 = *(v5 + 4144);
    if (v30 > 0.0)
    {
      v31 = 0.5;
      goto LABEL_38;
    }

    if (v30 < 0.0)
    {
      v31 = -0.5;
LABEL_38:
      v32 = (v30 + v31);
    }

    else
    {
      v32 = 0;
    }

    BlueFin::GlBitBuffer::PutU((v6 + 20640), v32, 0x10u);
    v33 = *(v5 + 4072) * 23860929.0;
    if (v33 > 0.0)
    {
      v34 = 0.5;
      goto LABEL_44;
    }

    if (v33 < 0.0)
    {
      v34 = -0.5;
LABEL_44:
      v35 = (v33 + v34);
    }

    else
    {
      v35 = 0;
    }

    BlueFin::GlBitBuffer::PutU((v6 + 20640), v35, 0x20u);
    v36 = *(v5 + 4080) * 11930464.0;
    if (v36 > 0.0)
    {
      v37 = 0.5;
      goto LABEL_50;
    }

    if (v36 < 0.0)
    {
      v37 = -0.5;
LABEL_50:
      v38 = (v36 + v37);
    }

    else
    {
      v38 = 0;
    }

    BlueFin::GlBitBuffer::PutU((v6 + 20640), v38, 0x20u);
    v39 = *(v5 + 4088);
    if (v39 > 0.0)
    {
      v40 = 0.5;
      goto LABEL_56;
    }

    if (v39 < 0.0)
    {
      v40 = -0.5;
LABEL_56:
      v41 = (v39 + v40);
    }

    else
    {
      v41 = 0;
    }

    BlueFin::GlBitBuffer::PutU((v6 + 20640), v41 + 0x10000, 0x10u);
    v42 = *(v5 + 4200) * 63.0;
    if (v42 > 0.0)
    {
      v43 = 0.5;
      goto LABEL_62;
    }

    if (v42 < 0.0)
    {
      v43 = -0.5;
LABEL_62:
      v44 = (v42 + v43);
    }

    else
    {
      v44 = 0;
    }

    BlueFin::GlBitBuffer::PutU((v6 + 20640), v44, 0x10u);
    v45 = *(v5 + 4216) * 91.0;
    if (v45 > 0.0)
    {
      v46 = 0.5;
      goto LABEL_68;
    }

    if (v45 < 0.0)
    {
      v46 = -0.5;
LABEL_68:
      v47 = (v45 + v46);
    }

    else
    {
      v47 = 0;
    }

    BlueFin::GlBitBuffer::PutU((v6 + 20640), v47 + 0x10000, 0x10u);
    BlueFin::GlBitBuffer::PutU((v6 + 20640), *(v7 + 70), 1u);
    BlueFin::GlBitBuffer::PutU((v6 + 20640), *(v7 + 69), 1u);
    v48 = *(v7 + 104) * 100.0;
    v49 = v48;
    if (v48 > 0.0)
    {
      v50 = 0.5;
      goto LABEL_74;
    }

    if (v48 < 0.0)
    {
      v50 = -0.5;
LABEL_74:
      v51 = (v49 + v50);
    }

    else
    {
      v51 = 0;
    }

    BlueFin::GlBitBuffer::PutU((v6 + 20640), v51, 0x10u);
    BlueFin::GlBitBuffer::PutU((v6 + 20640), *(v7 + 108), 0x20u);
    BlueFin::GlBitBuffer::PutU((v6 + 20640), *(v6 + 20244), 0x20u);
    BlueFin::GlBitBuffer::PutU((v6 + 20640), *(v6 + 20240), 0x20u);
    v52 = *(v7 + 120) * 1000.0;
    v53 = v52;
    if (v52 > 0.0)
    {
      v54 = 0.5;
      goto LABEL_80;
    }

    if (v52 < 0.0)
    {
      v54 = -0.5;
LABEL_80:
      v55 = (v53 + v54);
    }

    else
    {
      v55 = 0;
    }

    BlueFin::GlBitBuffer::PutU((v6 + 20640), v55 + 2000000, 0x18u);
    GlCustomLog(15, "AppendPreviousPosition %d\n", *v5);
  }

  if (*(v7 + 128) == 1)
  {
    *(v7 + 32) = 0u;
    *(v7 + 48) = 0u;
    *v7 = 0u;
    *(v7 + 16) = 0u;
    *(v7 + 128) = 0;
  }

  *(v7 + 4) = v68 != 0;
  *(v6 + 20136) = v69;
  *(v6 + 20144) = v70;
  result = BlueFin::GlPeReqBag::GetAvgOfTop4Cn0(v67);
  *(v7 + 32) = result;
  *(v7 + 36) = 0;
  if (v71)
  {
    v57 = v72 / 1.9438445;
    *(v7 + 36) = v57;
  }

  *v7 = *(v6 + 3252) + v67[0];
  *(v7 + 128) = 1;
  *v65 = v66;
  v58 = *MEMORY[0x29EDCA608];
  return result;
}

void std::__function::__func<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_0,std::allocator<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_0>,void ()(BlueFin::GL_FIX_STATUS const*)>::operator()(DeviceCommon *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a2 + 4072;
  v4 = *(a1 + 1);
  DeviceCommon::GetMachContinuousTime(a1);
  v12 = v11;
  if (*(v2 + 4048))
  {
    v13 = (*(v2 + 7008) & 7) != 4;
    if ((*(v2 + 7008) & 7) == 4)
    {
      v26 = *(v2 + 4088);
      FireDeviceLog::DeviceLogBase(6, "#fgd,ParrotedHULA,NOGNSS,lat,%.8lf,lon.%.8lf,alt,%.1lf,discarded", v5, v6, v7, v8, v9, v10, *(v2 + 4072));
    }

    if (*(v2 + 4144) <= 0.0)
    {
      v20 = *(v2 + 4144);
      FireDeviceLog::DeviceLogBase(6, "#fgd,fix.bPosValid,%d,fix.dEstErr,%.3lf", v5, v6, v7, v8, v9, v10, *(v2 + 4048));
      v13 = 0;
    }

    if (*(v2 + 4160) <= 0.0)
    {
      v21 = *(v2 + 4160);
      FireDeviceLog::DeviceLogBase(6, "#fgd,fix.bPosValid,%d,fix.dEstErrAlt,%.3lf", v5, v6, v7, v8, v9, v10, *(v2 + 4048));
      v13 = 0;
    }

    if (*(v3 + 2880) <= 0.0)
    {
      v22 = *(v3 + 2880);
      FireDeviceLog::DeviceLogBase(6, "#fgd,fix.bPosValid,%d,fix.dPosUncertaintySemiMajorAxis,%.3lf", v5, v6, v7, v8, v9, v10, *(v2 + 4048));
      v13 = 0;
    }

    if (*(v2 + 6960) <= 0.0)
    {
      v23 = *(v2 + 6960);
      FireDeviceLog::DeviceLogBase(6, "#fgd,fix.bPosValid,%d,fix.dPosUncertaintySemiMinorAxis,%.3lf", v5, v6, v7, v8, v9, v10, *(v2 + 4048));
      v13 = 0;
    }

    v14 = *(v2 + 4072);
    v15 = *(v2 + 4080);
    v16 = fabs(v14);
    if (v16 < 0.0000001 && fabs(v15) < 0.0000001)
    {
      v24 = *(v2 + 4080);
      FireDeviceLog::DeviceLogBase(6, "#fgd,NullIsland,fix.dLat,%.7lf,fix.dLon,%.7lf", v5, v6, v7, v8, v9, v10, *(v2 + 4072));
      v13 = 0;
      v14 = *(v2 + 4072);
      v15 = *(v2 + 4080);
      v16 = fabs(v14);
    }

    if (v15 < -180.0 || v16 > 90.0 || v15 > 180.0)
    {
      FireDeviceLog::DeviceLogBase(6, "#fgd,fix.dLat,%.7lf,fix.dLon,%.7lf", v5, v6, v7, v8, v9, v10, SLOBYTE(v14));
      v17 = *(v2 + 4088);
      if (v17 > -500.0 && v17 < 1000000.0)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v17 = *(v2 + 4088);
      if (v17 > -500.0 && v17 < 1000000.0)
      {
        if (v13)
        {
          if ((*(v2 + 7008) & 3) != 0)
          {
            *(v4 + 328) = v12;
            FireDeviceLog::DeviceLogBase(6, "#fgd,received GPS fix,fLastFixWithGnssContentTime,%f", v5, v6, v7, v8, v9, v10, SLOBYTE(v12));
            goto LABEL_31;
          }

          if (vabdd_f64(v12, *(v4 + 328)) <= 6.0)
          {
LABEL_31:
            operator new();
          }

          v25 = *(v4 + 328);
          FireDeviceLog::DeviceLogBase(6, "#fgd,Drop DR fix, as its outside the propogation window,kFixProgationTime,%.2f,fLastFixWithGnssContentTime,%.2f,currentMct,%.2f", v5, v6, v7, v8, v9, v10, 0);
        }

LABEL_28:
        operator new();
      }
    }

    v19 = LOBYTE(v17);
    v18 = "#fgd,fix.dAlt,%.3lf";
  }

  else
  {
    v18 = "#fgd,no fix";
  }

  FireDeviceLog::DeviceLogBase(6, v18, v5, v6, v7, v8, v9, v10, v19);
  goto LABEL_28;
}

void sub_298847AD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, void *__p, uint64_t a27, uint64_t a28, uint64_t a29)
{
  if (v30)
  {
    MEMORY[0x29C292F70](v30, v29);
  }

  _Unwind_Resume(exception_object);
}

uint64_t convertGlTimeValidityToTtdataQuality(int a1, int *a2)
{
  result = 0;
  *a2 = 0;
  if (a1 <= 2)
  {
    if (a1 < 2)
    {
      return 1;
    }

    if (a1 != 2)
    {
      return result;
    }

LABEL_10:
    *a2 = a1;
    return 1;
  }

  if ((a1 - 5) < 2)
  {
    a1 = 5;
    goto LABEL_10;
  }

  if (a1 == 3 || a1 == 4)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t BlueFin::GlPeRqHdlrGnssMeasData::SetFixStatus(uint64_t a1, unsigned int *a2)
{
  v4 = (a1 + 175744);
  v5 = *(a1 + 8);
  if (*(a1 + 175752))
  {
    v6 = *v4 + 300;
    result = (*(*v5 + 184))(*(a1 + 8));
    if (v6 <= result)
    {
      return result;
    }

    v8 = v4[2] + 1;
  }

  else
  {
    v8 = 1;
  }

  v9 = *a2;
  v4[1] = *a2;
  v4[2] = v8;
  v10 = *(a1 + 68);
  if (v10 >= 1)
  {
    for (i = 0; i != v10; ++i)
    {
      v12 = a1 + 72 + 392 * i;
      if (*(v12 + 10) == 3)
      {
        v13 = *(v12 + 8);
        v14 = (a2 + 13);
        v15 = 100;
        while (*(v14 - 3) != (v13 - 41) || *v14 - 1 > 0x59)
        {
          v14 += 20;
          if (!--v15)
          {
            goto LABEL_14;
          }
        }

        *(v12 + 8) = v13 | (*(v14 - 1) << 8);
      }

LABEL_14:
      ;
    }
  }

  v16 = *(*(a1 + 56) + 8);
  if (v16[644])
  {
    v17 = (a1 + 39276);
    v28 = &off_2A1F0B5F0;
    v29 = 0;
    BlueFin::GlPeTimeManager::GetTime(v16, v9, 1, v27);
    Gps = BlueFin::GlPeGnssTime::GetGps(v27, &v28);
    v19 = (v28[4])(&v28) / 0x93A80uLL;
    v20 = (v28[4])(&v28);
    v20.n128_u32[0] = v29;
    v22 = 0x41CDCD6500000000;
    *(a1 + 39312) = 0;
    *(a1 + 39320) = Gps * 1000.0;
    v23 = -604800000000000 * v19 - 1000000000 * (v21 % 0x93A80) - (v20.n128_u64[0] * 2.32830644e-10 * 1000000000.0) + 1000000 * *a2;
    *(a1 + 39304) = v23;
    if (v23 >= 1)
    {
      DeviceFaultNotify("glpe_reqhdlr_gnss_meas_data.cpp", 1082, "SetFixStatus", "m_oMeasData.otClock.sllFullBiasNs<=0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_reqhdlr_gnss_meas_data.cpp", 1082, "m_oMeasData.otClock.sllFullBiasNs<=0");
    }

    *v17 = 28;
    if (*(a2 + 4272))
    {
      v24 = a2[1056];
      LOWORD(v22) = *(a2 + 2128);
      v25 = v22;
      *v17 = 124;
    }

    else
    {
      v24 = 0.0;
      v25 = 0.0;
    }

    *(a1 + 39328) = v24;
    *(a1 + 39336) = v25;
  }

  if (v5[12])
  {
    BlueFin::GlPeGnssSvsInfoMgr::Report((a1 + 108864));
  }

  if (BlueFin::GlPeRqHdlrGnssMeasData::UpdateAgcInfo(a1))
  {
    v26 = v5[13];
    if (v26)
    {
      v26(v5, a1 + 39808);
    }
  }

  return BlueFin::GlRequestImplGnssMeasData::OnMeasData(v5, a1 + 64);
}

void BlueFin::GlPeGnssSvsInfoMgr::Report(BlueFin::GlPeGnssSvsInfoMgr *this)
{
  v2 = *(this + 7);
  *v2 = 0;
  bzero(v2 + 2, 0xD7A0uLL);
  v3 = *(this + 7);
  *(v3 + 55208) = -1;
  *(v3 + 55216) = 0u;
  *(v3 + 55232) = 0u;
  *(v3 + 55248) = 0u;
  *(*(this + 7) + 55264) = 0;
  v4 = *(*(this + 8) + 60960);
  if (v4)
  {
    v5 = *(*(this + 9) + 26344);
    v6 = *(v4 + 4048);
    v7 = *(v4 + 4088);
    v61 = *(v4 + 4072);
    v62 = v7;
    BlueFin::lla2ecef(&v61, v60);
    v8 = 0;
    v47 = vdupq_n_s64(0x41CDCD6500000000uLL);
    v48 = vdupq_n_s64(0x41B1DE784A000000uLL);
LABEL_3:
    v49 = *(*(this + 5) + 2568);
    BlueFin::GlSetBase::GlSetBase(&__src, v59, 8u, (*(this + 8354) + 56 * v8));
    v52 = v58;
    memcpy(v56, __src, 4 * v58);
    v54 = 0;
    v53 = 0;
    v55 = v56[0];
    while (1)
    {
      BlueFin::GlSetIterator::operator++(&v52);
      if (v53 == v52)
      {
        if (++v8 == 10)
        {
          goto LABEL_46;
        }

        goto LABEL_3;
      }

      if ((*(*(this + 8275) + ((v54 >> 3) & 0x1C)) >> (v54 & 0x1F)))
      {
        v9 = v54;
        BlueFin::GlSetBase::Remove(this + 66200, v54);
        v10 = (*(this + 8274) + 368 * v9);
        if (*v10 != 8)
        {
          if (!v6 || (v65[0] = 0.0, v11 = *(v10 + 5), v50 = *(v10 + 6), v51 = v11, v12 = (*(*(*(this + 8) + 6856) + 48))(*(this + 8) + 6856), (*(*v12 + 80))(v12, &v50, v60, &v61, 0, 0, 0, v65), v5 <= v65[0]))
          {
            memcpy((*(this + 7) + 368 * **(this + 7) + 8), v10, 0x170uLL);
            v13 = *(this + 7);
            v14 = *v13;
            v15 = *(*(this + 8) + 60960);
            if (v15)
            {
              if (*(v15 + 4048))
              {
                if (*(v15 + 6952) < 40000.0)
                {
                  v16 = &v13[92 * v14];
                  v17 = *(v16 + 212);
                  if (v17)
                  {
                    v18 = 0;
                    v19 = &v13[92 * v14 + 58];
                    while (2)
                    {
                      if (BYTE4(v19[-1].f64[0]))
                      {
                        goto LABEL_28;
                      }

                      v20 = BlueFin::GlImplGnss::m_aucImplGnssTable[v16[2]];
                      LODWORD(v50) = v20;
                      BYTE4(v50) = *(v16 + 12);
                      v65[0] = 0.0;
                      if (!BlueFin::GlPeGnssSvsInfoMgr::getSvAzEl(*(*(this + 8) + 60960), v20, BYTE4(v50), v65, &v64) || v65[0] <= 0.0)
                      {
                        goto LABEL_28;
                      }

                      BlueFin::GlPeSvIdConverter::Gnss2SvId((*(this + 4) + 119744), &v50, &v63);
                      v21 = (*(*(*(this + 8) + 6856) + 112))(*(this + 8) + 6856, &v63);
                      if (v21)
                      {
                        v22 = v21;
                        v23 = *v21 ? (*(v21 + 20) * (v49 - *v21)) * 0.001 : 0.0;
                        v24 = *(v21 + 4);
                        if (v24)
                        {
                          if (*(v22 + 9) == 1)
                          {
                            v25 = *(v22 + 12);
                            v26 = *(v22 + 16);
                            v27 = LODWORD(v19[-1].f64[0]);
                            if (v27 > 0xA)
                            {
                              goto LABEL_33;
                            }

                            if (((1 << v27) & 0x548) != 0)
                            {
                              v28 = 1.79327032;
                              goto LABEL_26;
                            }

                            if (v27 == 4)
                            {
                              if ((v63 + 67) < 0x44u || (v30 = BlueFin::GlSvId::s_aucSvId2gnss[v63], v31 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v30], v31 == -1) || (BlueFin::GlSignalId::s_ausGnss2signalId[v30] + v63 - BlueFin::GlSvId::s_aucGnss2minSvId[v30]) >= 0x23Fu)
                              {
                                DeviceFaultNotify("glsignalid.h", 651, "GetRfCarrierFrqHz", "IsValid()");
                                __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 651, "IsValid()");
                              }

                              v32 = BlueFin::GlSignalId::s_adSignalType2ctrFreqHz[v31];
                              if (v30 == 2)
                              {
                                v33 = (v63 - 59);
                                if (v63 - 52 >= 0xE)
                                {
                                  v33 = -8.0;
                                }

                                v32 = v32 + v33 * 562500.0;
                              }

                              v28 = 2.48194818e18 / (v32 * v32);
                            }

                            else
                            {
                              if (v27 == 5)
                              {
                                v28 = 1.01843279;
                                goto LABEL_26;
                              }

LABEL_33:
                              v28 = 1.0;
                              if (v27 == 2)
                              {
                                v28 = 1.64694444;
                              }
                            }

LABEL_26:
                            v29.f64[0] = v25;
                            v29.f64[1] = v28 * (v23 + v26);
                            *v19 = vmulq_f64(vdivq_f64(v29, v48), v47);
                            LODWORD(v19[-1].f64[1]) = BlueFin::GlPeAtmosDelays::GlPeIonoSrc2GlGnssIonoDelaySrc(v24);
                            BYTE4(v19[-1].f64[0]) = 1;
                          }
                        }
                      }

                      v17 = *(v16 + 212);
LABEL_28:
                      ++v18;
                      v19 = (v19 + 40);
                      if (v18 >= v17)
                      {
                        v13 = *(this + 7);
                        v14 = *v13;
                        break;
                      }

                      continue;
                    }
                  }
                }
              }
            }

            v34 = v14 + 1;
            *v13 = v34;
            if (v34 >= 0x96)
            {
              break;
            }
          }
        }
      }
    }

    GlCustomLog(11, "GlPeGnssSvsInfoMgr reports SvInfo array full (%d >= %d), no more output.\n", v34, 150);
LABEL_46:
    v35 = *(this + 4);
    v36 = *(this + 7);
    v37 = v35[29935];
    if ((v37 & 8) != 0 && v35[17838])
    {
      v38 = v35 + 17824;
      v39 = 1;
    }

    else
    {
      v38 = v35 + 17808;
      if ((v37 & 0x40) != 0)
      {
        v40 = v35[17886];
        v41 = v40 == 0;
        v42 = v35 + 17872;
        v39 = 2 * (v40 != 0);
        if (!v41)
        {
          v38 = v42;
        }
      }

      else
      {
        v39 = 0;
      }
    }

    v43 = 0;
    *(v36 + 55208) = v39;
    do
    {
      *(v36 + 55216 + v43 * 4) = *&v38[v43 + 2];
      v43 += 2;
    }

    while (v43 != 8);
    for (i = 0; i != 4; ++i)
    {
      *(v36 + 55248 + i * 4) = v38[i + 10];
    }

    *(v36 + 55264) = 1000000000 * v38[15];
    v45 = *(*(this + 6) + 96);
    if (v45)
    {
      v46 = *(this + 8355);
      v45();
    }
  }
}

void std::__function::__func<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_3,std::allocator<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_3>,void ()(BlueFin::GlGnssSvInfoData const*,BlueFin::GlTimeConversionInfo const*)>::operator()(uint64_t a1, int32x4_t **a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = *(a1 + 8);
  if (*(v9 + 184) && (*(v9 + 153) & 1) != 0)
  {
    v102 = *a2;
    v100 = *a3;
    FireDeviceLog::DeviceLogBase(6, "handleSvInfoResponse", a3, a4, a5, a6, a7, a8, v91);
    v17 = *(v9 + 128);
    for (i = *(v9 + 136); i != v17; std::allocator_traits<std::allocator<gnss::SvInfo>>::destroy[abi:ne200100]<gnss::SvInfo,0>(i))
    {
      i -= 17;
    }

    *(v9 + 136) = v17;
    if (v102->i32[0])
    {
      v18 = 0;
      i64 = v102[3].i64;
      v107 = &v102[15].u32[2];
      v101 = vdupq_n_s64(0x7FF8000000000000uLL);
      v106 = v9;
      while (1)
      {
        BYTE5(v109) = 0;
        BYTE6(v109) = 127;
        *(&v109 + 1) = 0x7FF8000000000000;
        v110 = 0;
        v112 = 0u;
        v111[0] = 0;
        *(&v114 + 1) = v101.i64[1];
        *__p = 0uLL;
        *(&v115 + 1) = 0;
        HIBYTE(v116) = 0;
        v104 = v18;
        v20 = &v102[23 * v18].i64[1];
        v21 = *v20;
        if (*v20 > 4)
        {
          break;
        }

        if (!v21)
        {
          v22 = 0;
          v24 = 1;
          goto LABEL_26;
        }

        if (v21 == 2)
        {
          LODWORD(v109) = 2;
          BYTE4(v109) = *(v20 + 4);
          v25 = (*(v20 + 5) - 7);
          v22 = v25 < 0xF2;
          if (v25 >= 0xF2)
          {
            BYTE6(v109) = *(v20 + 5);
          }

          else
          {
            BYTE6(v109) = 0;
            FireDeviceLog::DeviceLogBase(2, "svinfo,forcing slot %d to unhealthy due to out-of-range FCN %d", v10, v11, v12, v13, v14, v15, *(v20 + 4));
          }

          BYTE5(v109) = 1;
          goto LABEL_29;
        }

        if (v21 != 3)
        {
          goto LABEL_22;
        }

        v22 = 0;
        LODWORD(v109) = 16;
        v23 = *(v20 + 4) - 64;
LABEL_28:
        BYTE4(v109) = v23;
LABEL_29:
        v26 = *(v20 + 8);
        if (v26 <= 5)
        {
          v110 = 0x30004020100uLL >> (8 * v26);
        }

        v27 = 0;
        v103 = i64;
        v28 = 4;
        do
        {
          v29 = *(i64 - 2);
          v31 = *(i64 - 1);
          v30 = *i64;
          v32 = v111[0];
          v33 = v27 - v111[0];
          v34 = (v27 - v111[0]) >> 5;
          v35 = v34 + 1;
          if ((v34 + 1) >> 59)
          {
            std::vector<GnssHal::ExtensionsFire::RecoveryPoint>::__throw_length_error[abi:ne200100]();
          }

          if (-v111[0] >> 4 > v35)
          {
            v35 = -v111[0] >> 4;
          }

          if (-v111[0] >= 0x7FFFFFFFFFFFFFE0uLL)
          {
            v36 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v36 = v35;
          }

          if (v36)
          {
            if (!(v36 >> 59))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v37 = v34;
          v38 = 32 * v34;
          *v38 = *(i64 - 3) * 1000000000.0;
          *(v38 + 8) = v29;
          *(v38 + 16) = v31;
          *(v38 + 24) = v30;
          v27 = 32 * v34 + 32;
          v39 = (v38 - 32 * v37);
          memcpy(v39, v111[0], v33);
          v111[0] = v39;
          *&v112 = 0;
          if (v32)
          {
            operator delete(v32);
          }

          v111[1] = v27;
          i64 += 4;
          --v28;
        }

        while (v28);
        v113 = *(v20 + 144);
        *&v114 = *(v20 + 160);
        *&v115 = *(v20 + 168);
        v40 = *(v20 + 176);
        if (v40 == 2)
        {
          v41 = 2;
        }

        else
        {
          v41 = v40 == 1;
        }

        BYTE8(v115) = v41;
        v42 = *(v20 + 180);
        if (v42 == 2)
        {
          v43 = 2;
        }

        else
        {
          v43 = v42 == 1;
        }

        BYTE10(v115) = v43;
        v44 = *(v20 + 184);
        v45 = v44 == 1;
        if (v44 == 2)
        {
          v45 = 2;
        }

        BYTE12(v115) = v45;
        v46 = *(v20 + 188);
        if (v46 == 2)
        {
          v47 = 2;
        }

        else
        {
          v47 = v46 == 1;
        }

        BYTE14(v115) = v47;
        v48 = *(v20 + 192);
        if (v48 == 2)
        {
          v49 = 2;
        }

        else
        {
          v49 = v48 == 1;
        }

        LOBYTE(v116) = v49;
        if (*(v20 + 196))
        {
          v50 = v22;
        }

        else
        {
          v50 = 1;
        }

        if ((v50 & 1) == 0)
        {
          if (v44 != 2 || v109 == 32)
          {
            v52 = *(v20 + 200);
            if (v52 == 2)
            {
              v51 = 2;
            }

            else
            {
              v51 = v52 == 1;
            }
          }

          else
          {
            v51 = 2;
          }

          BYTE13(v115) = v51;
        }

        if (v22)
        {
          LOBYTE(v116) = 2;
        }

        if (*(v20 + 204))
        {
          v53 = 0;
          v54 = v107;
          do
          {
            v55 = *(v54 - 8);
            if (v55 > 5)
            {
              if (v55 <= 8)
              {
                if (v55 == 8)
                {
                  v56 = 9;
                }

                else
                {
                  v56 = 0;
                }

                if (v55 == 7)
                {
                  v56 = 8;
                }

                v57 = v55 == 6;
                v58 = 7;
LABEL_98:
                if (v57)
                {
                  v59 = v58;
                }

                else
                {
                  v59 = v56;
                }

                if (*(v54 - 28))
                {
                  v60 = *(v54 - 6);
                  if ((v60 - 3) < 6)
                  {
                    FireDeviceLog::DeviceLogBase(2, "svinfo,unexpected IonoSrc,%d", v10, v11, v12, v13, v14, v15, *(v54 - 6));
                    goto LABEL_104;
                  }

                  if ((v60 - 1) >= 2)
                  {
                    if (v60 == 9)
                    {
                      v61 = 2;
                    }

                    else
                    {
LABEL_104:
                      v61 = 0;
                    }
                  }

                  else
                  {
                    v61 = 1;
                  }

                  v62 = *(v54 - 2);
                  v63 = *(v54 - 1);
                }

                else
                {
                  v61 = 0;
                  v62 = 0x7FF8000000000000;
                  v63 = 0x7FF8000000000000;
                }

                v64 = *v54;
                v65 = __p[0];
                v66 = (__p[1] - __p[0]) >> 5;
                v67 = v66 + 1;
                if ((v66 + 1) >> 59)
                {
                  std::vector<GnssHal::ExtensionsFire::RecoveryPoint>::__throw_length_error[abi:ne200100]();
                }

                v68 = -__p[0];
                if (-__p[0] >> 4 > v67)
                {
                  v67 = v68 >> 4;
                }

                if (v68 >= 0x7FFFFFFFFFFFFFE0)
                {
                  v69 = 0x7FFFFFFFFFFFFFFLL;
                }

                else
                {
                  v69 = v67;
                }

                if (v69)
                {
                  if (!(v69 >> 59))
                  {
                    operator new();
                  }

                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                v70 = 32 * v66;
                *v70 = v59;
                *(v70 + 4) = v61;
                *(v70 + 8) = v62;
                *(v70 + 16) = v63;
                *(v70 + 24) = v64;
                v71 = 32 * v66 + 32;
                v72 = (v70 - 32 * ((__p[1] - __p[0]) >> 5));
                memcpy(v72, __p[0], __p[1] - __p[0]);
                __p[0] = v72;
                if (v65)
                {
                  operator delete(v65);
                }

                __p[1] = v71;
                goto LABEL_124;
              }

              if (v55 != 9)
              {
                if (v55 == 11)
                {
                  v56 = 6;
                }

                else
                {
                  v56 = 0;
                }

                v57 = v55 == 10;
                v58 = 10;
                goto LABEL_98;
              }
            }

            else
            {
              if (v55 > 2)
              {
                if (v55 == 5)
                {
                  v56 = 5;
                }

                else
                {
                  v56 = 0;
                }

                if (v55 == 4)
                {
                  v56 = 4;
                }

                v57 = v55 == 3;
                v58 = 3;
                goto LABEL_98;
              }

              if (v55)
              {
                if (v55 == 2)
                {
                  v56 = 2;
                }

                else
                {
                  v56 = 0;
                }

                v57 = v55 == 1;
                v58 = 1;
                goto LABEL_98;
              }
            }

            FireDeviceLog::DeviceLogBase(3, "#Warning,sv band corr,unexpected band,%d", v10, v11, v12, v13, v14, v15, *(v54 - 8));
LABEL_124:
            ++v53;
            v54 += 10;
          }

          while (v53 < *(v20 + 204));
        }

        v74 = v106[17];
        v73 = v106[18];
        if (v74 >= v73)
        {
          v76 = v106[16];
          v77 = 0xF0F0F0F0F0F0F0F1 * ((v74 - v76) >> 3) + 1;
          if (v77 > 0x1E1E1E1E1E1E1E1)
          {
            std::vector<GnssHal::ExtensionsFire::RecoveryPoint>::__throw_length_error[abi:ne200100]();
          }

          v78 = 0xF0F0F0F0F0F0F0F1 * ((v73 - v76) >> 3);
          if (2 * v78 > v77)
          {
            v77 = 2 * v78;
          }

          if (v78 >= 0xF0F0F0F0F0F0F0)
          {
            v79 = 0x1E1E1E1E1E1E1E1;
          }

          else
          {
            v79 = v77;
          }

          if (v79)
          {
            if (v79 <= 0x1E1E1E1E1E1E1E1)
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v80 = 8 * ((v74 - v76) >> 3);
          *v80 = v109;
          *(v80 + 16) = v110;
          *(v80 + 24) = *v111;
          v81 = v112;
          *(&v112 + 1) = 0;
          *(v80 + 40) = v81;
          *(v80 + 104) = v116;
          *(v80 + 88) = v115;
          *(v80 + 72) = v114;
          *(v80 + 56) = v113;
          *(v80 + 112) = *__p;
          *(v80 + 128) = 0;
          v82 = v80 - (v74 - v76);
          if (v76 != v74)
          {
            v83 = v76;
            v84 = 8 * ((v74 - v76) >> 3) - (v74 - v76);
            do
            {
              v85 = *v83;
              *(v84 + 16) = *(v83 + 16);
              *v84 = v85;
              *(v84 + 32) = 0;
              *(v84 + 40) = 0;
              *(v84 + 24) = 0;
              *(v84 + 24) = *(v83 + 3);
              *(v84 + 40) = v83[5];
              v83[3] = 0;
              v83[4] = 0;
              v86 = v83[6];
              v83[5] = 0;
              v83[6] = 0;
              *(v84 + 48) = v86;
              v87 = *(v83 + 7);
              v88 = *(v83 + 9);
              v89 = *(v83 + 11);
              *(v84 + 104) = *(v83 + 52);
              *(v84 + 88) = v89;
              *(v84 + 72) = v88;
              *(v84 + 56) = v87;
              *(v84 + 120) = 0;
              *(v84 + 128) = 0;
              *(v84 + 112) = 0;
              *(v84 + 112) = *(v83 + 7);
              *(v84 + 128) = v83[16];
              v83[14] = 0;
              v83[15] = 0;
              v83[16] = 0;
              v83 += 17;
              v84 += 136;
            }

            while (v83 != v74);
            do
            {
              std::allocator_traits<std::allocator<gnss::SvInfo>>::destroy[abi:ne200100]<gnss::SvInfo,0>(v76);
              v76 += 17;
            }

            while (v76 != v74);
            v76 = v106[16];
          }

          v75 = v80 + 136;
          v106[16] = v82;
          v106[17] = v80 + 136;
          v106[18] = 0;
          i64 = v103;
          if (v76)
          {
            operator delete(v76);
          }
        }

        else
        {
          *(v74 + 16) = v110;
          *v74 = v109;
          *(v74 + 32) = 0;
          *(v74 + 40) = 0;
          *(v74 + 24) = 0;
          *(v74 + 24) = *v111;
          *(v74 + 40) = 0;
          *(&v112 + 1) = 0;
          *(v74 + 48) = 0;
          *(v74 + 104) = v116;
          *(v74 + 88) = v115;
          *(v74 + 72) = v114;
          *(v74 + 56) = v113;
          *(v74 + 112) = 0;
          *(v74 + 120) = 0;
          *(v74 + 128) = 0;
          *(v74 + 112) = *__p;
          *(v74 + 128) = 0;
          v75 = v74 + 136;
          v106[17] = v74 + 136;
          i64 = v103;
        }

        v106[17] = v75;
LABEL_144:
        if (*(&v112 + 1))
        {
          MEMORY[0x29C292F70](*(&v112 + 1), 0x1000C40AC4F46D1);
        }

        v18 = v104 + 1;
        i64 += 46;
        v107 += 92;
        if (v104 + 1 >= v102->u32[0])
        {
          goto LABEL_150;
        }
      }

      if (v21 == 5)
      {
        v22 = 0;
        LODWORD(v109) = 4;
      }

      else
      {
        if (v21 == 6)
        {
          v22 = 0;
          v24 = 8;
        }

        else
        {
          if (v21 != 7)
          {
LABEL_22:
            FireDeviceLog::DeviceLogBase(2, "svinfo,unexpected constellation,%d", v10, v11, v12, v13, v14, v15, *v20);
            goto LABEL_144;
          }

          v22 = 0;
          v24 = 32;
        }

LABEL_26:
        LODWORD(v109) = v24;
      }

      v23 = *(v20 + 4);
      goto LABEL_28;
    }

LABEL_150:
    if (*v100)
    {
      operator new();
    }

    v98 = v102[3453].u32[2];
    v99 = v102[3453].u32[3];
    v96 = v102[3453].u32[0];
    v97 = v102[3453].u32[1];
    v94 = v102[3452].i64[0];
    v95 = v102[3452].i64[1];
    v93 = v102[3451];
    v92 = v102[3454].i64[0];
    FireDeviceLog::DeviceLogBase(6, "klobuchar,%d,time,ns,%llu,alpha,%.3e,%.3e,%.3e,%.3e,beta,%d,%d,%d,%d", v10, v11, v12, v13, v14, v15, v102[3450].i32[2]);
    if ((v102[3450].i32[2] - 1) <= 1)
    {
      v90 = v102[3454].i64[0];
      v108 = vcvtq_f32_s32(v102[3453]);
      v105 = vcvt_hight_f32_f64(vcvt_f32_f64(v102[3451]), v102[3452]);
      operator new();
    }
  }

  else
  {

    FireDeviceLog::DeviceLogBase(2, "handleSvInfoResponse,null", a3, a4, a5, a6, a7, a8, a9);
  }
}

void FireCallback::GlReqOnGnssSvInfoData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (FireCallback::pInstance)
  {
    v10 = *(FireCallback::pInstance + 312);
    if (v10)
    {
      v12 = a3;
      v13 = a2;
      (*(*v10 + 48))(v10, &v13, &v12);
      return;
    }

    v11 = "fcb,fReqOnGnssSvInfoDataCb,nullptr";
  }

  else
  {
    v11 = "fcb,GlReqOnGnssSvInfoData,nullptr";
  }

  FireDeviceLog::DeviceLogBase(2, v11, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t BlueFin::GlDbgProxyGlReqOnGnssAgcInfoData(uint64_t a1, unsigned int *a2)
{
  v3 = (*(*a1 + 112))(a1);
  v4 = *(v3 + 8);

  return BlueFin::GlDbgProxy::HalGlReqOnGnssAgcInfoData(v4, v3, a2);
}

BOOL BlueFin::GlPeRqHdlrGnssMeasData::UpdateAgcInfo(BlueFin::GlPeRqHdlrGnssMeasData *this)
{
  v1 = (*(*(this + 7) + 88) + 28672);
  v2 = *(*(*(this + 7) + 88) + 32152);
  *(this + 9952) = 0;
  if (v2)
  {
    v3 = (v1[847] + v1[848]);
    *(this + 4978) = v3;
    *(this + 9954) = 0;
    v4 = (v1[853] + v1[854]);
    *(this + 4980) = v4;
    *(this + 9958) = 1;
    *(this + 4982) = (v1[849] + v1[850]);
    *(this + 9962) = 2;
    *(this + 4988) = (v1[851] + v1[852]);
    *(this + 9974) = 5;
    *(this + 4984) = v3;
    *(this + 9966) = 3;
    *(this + 4986) = v4;
    *(this + 9970) = 4;
    *(this + 4990) = v3;
    *(this + 9978) = 6;
    *(this + 4992) = v4;
    *(this + 9982) = 7;
    *(this + 9952) = 8;
  }

  return v2 != 0;
}

unsigned __int8 *BlueFin::GlPeFixStatus::UpdateSvAzEl(unsigned __int8 *this)
{
  if (*(this + 22) >= 1)
  {
    v12 = v1;
    v13 = v2;
    v3 = this;
    v4 = 0;
    v5 = *(this + 980);
    v6 = BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion;
    v7 = this + 54;
    do
    {
      v11 = *(&BlueFin::GlImplGnss::m_aucFromImplSvIdToEnabledSvId + 256 * v6 + *(v7 - 5));
      if (v11 - 1 <= 0xBB)
      {
        this = BlueFin::GlPeSatAidInfo::GetAidBySvId(v5 + 32, &v11);
        v6 = BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion;
        if (this)
        {
          v8 = *(this + 37);
          *(v7 - 1) = v8;
          v9 = *(this + 36);
          if (v9 == 360)
          {
            v9 = 0;
          }

          *v7 = v9;
          if (v8 == 1 && v9 == 0)
          {
            *(v7 - 1) = 2;
          }
        }

        else
        {
          *(v7 - 1) = 1;
        }
      }

      ++v4;
      v7 += 20;
    }

    while (v4 < *(v3 + 22));
  }

  return this;
}

void FireConfig::LearnedL5GroupDelay::injectCurrentEstimate(FireConfig::LearnedL5GroupDelay *this, double a2, double a3, int a4)
{
  v6 = -662.517;
  if (a4)
  {
    v6 = -648.985;
  }

  v7 = a2 - v6;
  if (!FireResourceMgr::fInstance)
  {
    operator new();
  }

  v8 = (*(**(FireResourceMgr::fInstance + 40) + 72))(*(FireResourceMgr::fInstance + 40));
  FireDeviceLog::DeviceLogBase(4, "#nv_group_delay,incoming estimate,%.2f,%.2f,static,%.2f, L5 NF enabled,%d", v9, v10, v11, v12, v13, v14, SLOBYTE(v7));
  if (a3 < 0.25 && a3 >= 0.0)
  {
    if (!FireResourceMgr::fInstance)
    {
      operator new();
    }

    v15 = (*(**(FireResourceMgr::fInstance + 8) + 40))(*(FireResourceMgr::fInstance + 8));
    v57 = *(this + 2) > 0.0;
    FireDeviceLog::DeviceLogBase(6, "#ca,L5GD,update,%d,valid,%d,%d", v16, v17, v18, v19, v20, v21, *(this + 24));
    if ((*(this + 24) & 1) == 0 && a3 > 0.0 && *(this + 2) > 0.0)
    {
      v31 = *this;
      v30 = *(this + 1);
      v62 = v7;
      v63 = v30;
      LODWORD(v64) = (v15 - v31 + 0.5) & ~((v15 - v31 + 0.5) >> 31);
      if (!FireResourceMgr::fInstance)
      {
        operator new();
      }

      (*(**(FireResourceMgr::fInstance + 40) + 48))(*(FireResourceMgr::fInstance + 40), &v62);
      FireDeviceLog::DeviceLogBase(5, "#ca,L5GD,val,%.2f,recall,%.2f,m,age,%d,sec", v32, v33, v34, v35, v36, v37, SLOBYTE(v62));
      *(this + 24) = 1;
    }

    if ((FireConfig::LearnedL5GroupDelay::passesCrossCheckToCalibration(v22, v7, a3, v8, v23, v24, v25, v26, v27, v28, v29) & 1) == 0)
    {
      FireDeviceLog::DeviceLogBase(4, "#nv_group_delay,estimate fails cross-check to calibration,estimate,%.2f,%.2f,calibration,%.2f", v38, v39, v40, v41, v42, v43, SLOBYTE(v7));
      return;
    }

    v44 = *(this + 2);
    if (v44 <= 0.0)
    {
      goto LABEL_21;
    }

    v45 = v15 - *this;
    if (v45 < 0.0)
    {
      v45 = 0.0;
    }

    v46 = v44 + v45 / 3600.0 * 0.1;
    v55 = v46;
    FireDeviceLog::DeviceLogBase(4, "#nv_group_delay,aged unc,%.2f,hrs,%.2f", v38, v39, v40, v41, v42, v43, SLOBYTE(v55));
    if (v46 > a3)
    {
      v47 = *(this + 2);
LABEL_21:
      v58 = *this;
      FireDeviceLog::DeviceLogBase(4, "#nv_group_delay,updating store,old,%.2f,%.2f,%.2f,new,%.2f,%.2f,%.2f,oldAgeHours,%.3f", v38, v39, v40, v41, v42, v43, *(this + 1));
      *this = v15;
      *(this + 1) = v7;
      *(this + 2) = a3;
      if (a3 <= 0.0)
      {
        FireDeviceLog::DeviceLogBase(1, "#nv_group_delay,tried to store invalid data", v48, v49, v50, v51, v52, v53, v56);
        DeviceFaultNotify("FireConfig.cpp", 456, "storeToNv", "#nv_group_delay,tried to store invalid data");
      }

      else
      {
        v67 = 0;
        v66 = 0u;
        v65 = 0u;
        v62 = v15;
        v63 = v7;
        v64 = a3;
        if (!FireResourceMgr::fInstance)
        {
          operator new();
        }

        v54 = *(FireResourceMgr::fInstance + 24);
        __p = 0;
        v60 = 0;
        v61 = 0;
        std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, &v62, &v68, 64);
        (*(*v54 + 32))(v54, 3, &__p);
        if (__p)
        {
          v60 = __p;
          operator delete(__p);
        }
      }
    }
  }
}

void sub_29884B0E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<gnss::ReceiverBandCorrections>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__tree<std::__value_type<std::pair<gnss::SatelliteSystem,unsigned short>,gnss::FireGnssDevice::PhaseTrackingState>,std::__map_value_compare<std::pair<gnss::SatelliteSystem,unsigned short>,std::__value_type<std::pair<gnss::SatelliteSystem,unsigned short>,gnss::FireGnssDevice::PhaseTrackingState>,std::less<std::pair<gnss::SatelliteSystem,unsigned short>>,true>,std::allocator<std::__value_type<std::pair<gnss::SatelliteSystem,unsigned short>,gnss::FireGnssDevice::PhaseTrackingState>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::pair<gnss::SatelliteSystem,unsigned short>,gnss::FireGnssDevice::PhaseTrackingState>,std::__map_value_compare<std::pair<gnss::SatelliteSystem,unsigned short>,std::__value_type<std::pair<gnss::SatelliteSystem,unsigned short>,gnss::FireGnssDevice::PhaseTrackingState>,std::less<std::pair<gnss::SatelliteSystem,unsigned short>>,true>,std::allocator<std::__value_type<std::pair<gnss::SatelliteSystem,unsigned short>,gnss::FireGnssDevice::PhaseTrackingState>>>::destroy(*a1);
    std::__tree<std::__value_type<std::pair<gnss::SatelliteSystem,unsigned short>,gnss::FireGnssDevice::PhaseTrackingState>,std::__map_value_compare<std::pair<gnss::SatelliteSystem,unsigned short>,std::__value_type<std::pair<gnss::SatelliteSystem,unsigned short>,gnss::FireGnssDevice::PhaseTrackingState>,std::less<std::pair<gnss::SatelliteSystem,unsigned short>>,true>,std::allocator<std::__value_type<std::pair<gnss::SatelliteSystem,unsigned short>,gnss::FireGnssDevice::PhaseTrackingState>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

uint64_t BlueFin::GlBitBuffer::Limit(uint64_t this, unsigned int a2)
{
  if (*(this + 20) < a2)
  {
    DeviceFaultNotify("glutl_bitbuffer.cpp", 116, "Limit", "ulNewLimit <= m_ulCapacity");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_bitbuffer.cpp", 116, "ulNewLimit <= m_ulCapacity");
  }

  *(this + 24) = a2;
  v2 = *(this + 28);
  if (v2 > a2)
  {
    *(this + 28) = a2;
    v2 = a2;
  }

  v3 = *(this + 40) == 1 && *(this + 32) <= v2;
  *(this + 40) = v3;
  return this;
}

uint64_t BlueFin::GlPeRangeAidGen::RecomputeAidingNow(_DWORD *a1, int a2, uint64_t a3, _OWORD **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a3;
  if (a1[4838] < a2)
  {
    a1[4838] = a2;
  }

  if (!a3)
  {
    v10 = *(*a1 + 2568);
  }

  v16 = v8;
  v17 = v9;
  v13 = v15;
  v14 = 8;
  memset(v15, 0, sizeof(v15));
  if (a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = &v13;
  }

  return BlueFin::GlPeRangeAidGen::update(a1, v10, v11, a5, a5, a6, a7, a8);
}

uint64_t BlueFin::GlDbgProxyGlReqOnGnssMeasData(uint64_t a1, unsigned int *a2)
{
  v3 = (*(*a1 + 112))(a1);
  v4 = *(v3 + 8);

  return BlueFin::GlDbgProxy::HalGlReqOnGnssMeasData(v4, v3, a2);
}

uint64_t BlueFin::GlRequestImplGnssMeasData::OnMeasData(uint64_t result, uint64_t a2)
{
  v3 = result;
  v5[0] = &unk_2A1F14500;
  v5[1] = a2;
  if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    result = off_2A1F14518(v5);
  }

  v4 = *(v3 + 80);
  if (v4)
  {
    return v4(v3, a2);
  }

  return result;
}

uint64_t BlueFin::GlDbgProxy::HalGlReqOnGnssMeasData(uint64_t a1, uint64_t (**this)(BlueFin::GlDbgRequest *, unsigned int *), unsigned int *a3)
{
  result = BlueFin::GlDbgRequest::Id(this, 0);
  v9 = result;
  if (!*(a1 + 808))
  {
    *(a1 + 580) = 1;
    if (*(a1 + 576) == 1)
    {
      BlueFin::GlDbgCodec::WriteStart(a1, 561);
      if ((*(*a1 + 120))(a1))
      {
        BlueFin::GlDbgCodec::Write(a1, &v9);
      }

      if ((*(*a1 + 120))(a1))
      {
        *(a1 + 572) = 2;
        BlueFin::GlDbgCodec::Rvw(a1, a3);
      }

      result = (*(*a1 + 32))(a1, 1);
    }

    v7 = this[5];
    if (v7)
    {
      result = v7(this, a3);
    }

    *(a1 + 580) = 1;
    if (*(a1 + 576) == 1)
    {
      BlueFin::GlDbgCodec::WriteFinal(a1, 561);
      if ((*(*a1 + 120))(a1))
      {
        BlueFin::GlDbgCodec::Write(a1, &v9);
      }

      v8 = *(*a1 + 32);

      return v8(a1, 1);
    }
  }

  return result;
}

void std::__function::__func<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_2,std::allocator<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_2>,void ()(BlueFin::GlGnssData const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = *(a1 + 8);
  if (*(v9 + 184) && (*(v9 + 153) & 1) != 0)
  {
    v10 = *a2;
    FireDeviceLog::DeviceLogBase(6, "handleRawMeasResponse", a3, a4, a5, a6, a7, a8, v11);
    operator new();
  }

  FireDeviceLog::DeviceLogBase(2, "handleRawMeasResponse,nullptr", a3, a4, a5, a6, a7, a8, a9);
}

void sub_29884D4BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t *a46, uint64_t a47)
{
  if (a45)
  {
    MEMORY[0x29C292F70](a45, 0x1000C400A747E1ELL);
  }

  std::unique_ptr<gnss::TimeConversionInfo>::reset[abi:ne200100](&a46, 0);
  std::unique_ptr<gnss::MeasurementReport>::reset[abi:ne200100]((v47 - 176), 0);
  v49 = a47;
  a47 = 0;
  if (v49)
  {
    MEMORY[0x29C292F70](v49, 0x1000C4043D32D5CLL);
  }

  std::__tree<std::__value_type<std::pair<gnss::SatelliteSystem,unsigned short>,gnss::FireGnssDevice::PhaseTrackingState>,std::__map_value_compare<std::pair<gnss::SatelliteSystem,unsigned short>,std::__value_type<std::pair<gnss::SatelliteSystem,unsigned short>,gnss::FireGnssDevice::PhaseTrackingState>,std::less<std::pair<gnss::SatelliteSystem,unsigned short>>,true>,std::allocator<std::__value_type<std::pair<gnss::SatelliteSystem,unsigned short>,gnss::FireGnssDevice::PhaseTrackingState>>>::destroy(*(v47 - 248));
  _Unwind_Resume(a1);
}

void FireCallback::GlReqOnGnssMeasData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (FireCallback::pInstance)
  {
    v10 = *(FireCallback::pInstance + 248);
    if (v10)
    {
      v12 = a2;
      (*(*v10 + 48))(v10, &v12);
      return;
    }

    v11 = "fcb,fReqOnGnssMeasDataCb,nullptr";
  }

  else
  {
    v11 = "fcb,GlReqOnGnssMeasData,nullptr";
  }

  FireDeviceLog::DeviceLogBase(2, v11, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t BlueFin::GlPeReqBag::GetAvgOfTop4Cn0(uint64_t a1)
{
  v18[1] = *MEMORY[0x29EDCA608];
  v18[0] = -1;
  v1 = *(a1 + 44);
  v2 = v1 - 1;
  if (v1 >= 1)
  {
    v3 = 0;
    if (v2 >= 0x63)
    {
      v2 = 99;
    }

    else
    {
      v2 = v2;
    }

    v4 = v2 + 1;
    while (1)
    {
      v5 = a1 + 48 + 40 * v3;
      if (*(v5 + 2) <= 7u && *(v5 + 3) && *v5)
      {
        break;
      }

LABEL_22:
      if (++v3 == v4)
      {
        goto LABEL_23;
      }
    }

    v6 = *(v5 + 20);
    v7 = v6;
    if (v6 <= 0.0)
    {
      if (v6 >= 0.0)
      {
        LOWORD(v9) = 0;
        goto LABEL_15;
      }

      v8 = v7 + -0.5;
    }

    else
    {
      v8 = v7 + 0.5;
    }

    v9 = v8;
LABEL_15:
    for (i = 0; i != 4; ++i)
    {
      v11 = v18[0].i16[i];
      if (v9 <= v11)
      {
        v12 = v18[0].i16[i];
      }

      else
      {
        v12 = v9;
      }

      v18[0].i16[i] = v12;
      if (v9 >= v11)
      {
        LOWORD(v9) = v11;
      }
    }

    goto LABEL_22;
  }

LABEL_23:
  v13 = vcgtz_s16(v18[0]);
  if (vmaxv_u16(v13))
  {
    v14 = vcnt_s8((vaddv_s16(vand_s8(v13, 0x8000400020001)) & 0xF));
    v14.i16[0] = vaddlv_u8(v14);
    v15 = vaddv_s16(vmax_s16(v18[0], 0)) / v14.i32[0];
  }

  else
  {
    LOWORD(v15) = -1;
  }

  v16 = *MEMORY[0x29EDCA608];
  return v15;
}

uint64_t BlueFin::GlPeReqBag::InitializeReqIdReportingSet(uint64_t a1, uint64_t a2, uint64_t a3)
{
  bzero(*a3, ((4 * *(a3 + 8) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  for (i = 0; i != 576; i += 8)
  {
    result = *(a1 + i);
    if (result)
    {
      result = (*(*result + 344))(result, a2);
      if (result)
      {
        v8 = *(*(a1 + i) + 48);
        *(*a3 + 4 * (v8 >> 5)) |= 1 << v8;
      }
    }
  }

  return result;
}

uint64_t BlueFin::GlPeReqBag::Cleanup(uint64_t this)
{
  if (*(this + 3233) == 1)
  {
    v1 = this;
    v2 = 0;
    v3 = (this + 3233);
    v32 = *(this + 1312);
    v33 = (this + 3233);
    *(this + 3233) = 0;
    do
    {
      v4 = *(v1 + 8 * v2);
      if (v4)
      {
        (*(*v4 + 288))(v4);
        v35 = &unk_2A1F13AA0;
        v36 = v3;
        LOBYTE(v37) = *(v1 + 3233);
        *(v1 + 3233) = 0;
        v5 = *(v1 + 8 * v2);
        if (v5)
        {
          if ((*(*v5 + 296))(v5))
          {
            v6 = *(*(*(v1 + 8 * v2) + 8) + 16);
            BlueFin::GlSetBase::Remove(v1 + 624, v2);
            GlCustomLog(13, "RequestDone ");
            v7 = *(*(v1 + 8 * v2) + 8);
            (*(*v7 + 136))(v7, 13);
            v8 = *(v1 + 8 * v2);
            v9 = v8[1];
            v10 = v9[4];
            if (v10 == 1)
            {
              v11 = (*(*v9 + 400))(v8[1]);
              v8 = *(v1 + 8 * v2);
              if (v11)
              {
                (*(*v8[1] + 408))(v8[1]);
                v12 = 0;
                v8 = *(v1 + 8 * v2);
              }

              else
              {
                v12 = 0;
              }

              v13 = 1;
            }

            else
            {
              v13 = v10 == 2;
              v12 = v10 == 0;
            }

            if ((*(*v8 + 328))(v8))
            {
              *(v1 + 3264) = 0;
            }

            (***(v1 + 8 * v2))(*(v1 + 8 * v2));
            if (v6 == 12)
            {
              v14 = BlueFin::GlUtils::m_pInstance;
              ++*(BlueFin::GlUtils::m_pInstance + 1088);
              v15 = (*(**v14 + 48))();
              v14[273] = v15;
              *(v1 + 20688) = v15;
            }

            v16 = *(v1 + 8 * v2);
            v17 = (*(**(v1 + 616) + 96))(*(v1 + 616));
            if (v17)
            {
              v17(v16);
            }

            v18 = 0;
            *(v1 + 8 * v2) = 0;
            v19 = *(v1 + 1312);
            *(v1 + 1312) = v19 & ~(1 << v6);
            while (1)
            {
              v20 = *(v1 + v18);
              if (v20)
              {
                if (*(*(v20 + 8) + 16) == v6)
                {
                  break;
                }
              }

              v18 += 8;
              if (v18 == 576)
              {
                goto LABEL_25;
              }
            }

            *(v1 + 1312) = v19 | (1 << v6);
          }

          else
          {
            v13 = 0;
            v12 = 0;
          }

LABEL_25:
          BlueFin::GlPeReqBag::DetermineEarliestPositionRequestTimeout(v1);
          if (v13)
          {
            v34 = 45;
            v21 = *(v1 + 584);
            v22 = *(v21 + 32);
            v23 = *(v21 + 8);
            *(v21 + 32) = v23;
            do
            {
              v38 = 0;
              if (BlueFin::patch_dispatch(v23, v21, &v34, &v38))
              {
                v23 = v38;
              }

              else
              {
                v23 = (*(v21 + 32))(v21, &v34);
              }

              *(v21 + 32) = v23;
            }

            while (v23);
            *(v21 + 32) = v22;
          }

          if (v12)
          {
            v34 = 65;
            v24 = *(v1 + 584);
            v25 = *(v24 + 32);
            v26 = *(v24 + 8);
            *(v24 + 32) = v26;
            do
            {
              v38 = 0;
              if (BlueFin::patch_dispatch(v26, v24, &v34, &v38))
              {
                v26 = v38;
              }

              else
              {
                v26 = (*(v24 + 32))(v24, &v34);
              }

              *(v24 + 32) = v26;
            }

            while (v26);
            *(v24 + 32) = v25;
          }
        }

        *v36 = v37;
      }

      ++v2;
    }

    while (v2 != 72);
    this = (*(**(v1 + 576) + 1096))(*(v1 + 576));
    if (this)
    {
      this = (*(**(v1 + 576) + 1112))(*(v1 + 576));
      v27 = *(v1 + 1312);
      if ((this & 1) == 0)
      {
        v28 = (v27 & 0x2000) != 0 || (v27 & 0x1000) != 0;
LABEL_48:
        if ((v32 & 0xC) == 0 || (v27 & 4) != 0 || v28 | (v27 >> 3) & 1)
        {
          if (v32 == v27)
          {
            goto LABEL_59;
          }

          v35 = &v36 + 1;
          LOBYTE(v36) = 3;
          HIDWORD(v36) = v27;
          v37 = 0;
          BlueFin::GlSetBase::Remove(&v35, 12);
          this = BlueFin::GlSetBase::Remove(&v35, 13);
          if ((v32 & 1) == 0 || *v35)
          {
            goto LABEL_59;
          }

          if (v36 >= 2uLL)
          {
            v29 = v36 - 1;
            v30 = v35 + 1;
            do
            {
              if (*v30++)
              {
                goto LABEL_59;
              }
            }

            while (--v29);
          }
        }

        this = BlueFin::GlReqSm::StartWarmStandBy(*(v1 + 584));
LABEL_59:
        *v33 = 1;
        return this;
      }
    }

    else
    {
      v27 = *(v1 + 1312);
    }

    v28 = 1;
    goto LABEL_48;
  }

  return this;
}

uint64_t BlueFin::GlPeRqHdlrPosPeriodic::Cleanup(BlueFin::GlPeRqHdlrPosPeriodic *this)
{
  if ((*(this + 20) & 1) != 0 || *(this + 24) == 1)
  {
    *(this + 19) = 1;
    (*(*this + 272))(this, *(this + 40), *(this + 41));
    v3 = &unk_2A1F13C98;
    v4 = *(this + 24);
    if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      off_2A1F13CB0(&v3);
    }
  }

  return BlueFin::GlPeRqHdlr::Cleanup(this);
}

uint64_t BlueFin::GlPeRqHdlr::Cleanup(uint64_t this)
{
  v1 = this;
  v13 = *MEMORY[0x29EDCA608];
  if ((*(this + 20) & 1) != 0 || *(this + 19) == 1)
  {
    *(this + 19) = 1;
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    *__s = 0u;
    v7 = 0u;
    BlueFin::GlPeNmeaGen::FormatNmeaEND(**(this + 56), *(this + 8), *(BlueFin::GlUtils::m_pInstance + 1092) - *(*(this + 8) + 28), *(this + 32), *(this + 48), __s, 100);
    GlCustomLog(20, "GL_NMEA[%d][%s", *(v1 + 48), __s);
    v2 = strlen(__s);
    BlueFin::GlPeRqHdlr::OnNmea(v1, __s, v2, v3);
    this = *(v1 + 8);
    v4 = *(this + 56);
    if (v4)
    {
      this = v4();
    }

    BlueFin::GlPeFirstFix::m_bReqTimeOutReached = 0;
  }

  v5 = *MEMORY[0x29EDCA608];
  return this;
}

uint64_t BlueFin::GlPeReqBag::DetermineEarliestPositionRequestTimeout(uint64_t this)
{
  v1 = this;
  v2 = 0;
  v30 = (this + 3233);
  v31 = *(this + 3233);
  v3 = -1;
  *(this + 3233) = 0;
  *(this + 1316) = -1;
  v4 = -1;
  v5 = -1;
  do
  {
    v6 = *(v1 + 8 * v2);
    if (!v6)
    {
      goto LABEL_34;
    }

    this = *(v6 + 8);
    v7 = *(this + 16);
    if (v7 > 0xD)
    {
      goto LABEL_24;
    }

    v8 = 1 << v7;
    if ((v8 & 0x10F) != 0)
    {
      if (*(v1 + 3236) == 1 && *(v1 + 3252) == -1)
      {
        v23 = 1000 * *(this + 22);
        v24 = *(this + 28);
        v12 = v23 >= v24;
        v25 = v23 - v24;
        if (v12)
        {
          v18 = v25;
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v9 = *(v6 + 36);
        if (v9 == -1)
        {
          v13 = -1;
        }

        else
        {
          v10 = *(this + 28);
          v11 = *(v6 + 32) + v9;
          v12 = v10 >= v11;
          v13 = v10 - v11;
          if (v13 != 0 && v12)
          {
            v13 = -1;
          }
        }

        v17 = v13 + 1000 * *(this + 22);
        v18 = v17 & ~(v17 >> 31);
      }

      if (v18 < v3)
      {
        *(v1 + 1316) = v2;
        this = (*(*this + 136))(this, 143);
        v3 = v18;
      }

      goto LABEL_34;
    }

    if ((v8 & 0x3000) != 0)
    {
      if (*(v1 + 3236) == 1 && *(v1 + 3252) == -1)
      {
        v27 = 1000 * *(this + 22);
        v28 = *(this + 28);
        v12 = v27 >= v28;
        v29 = v27 - v28;
        if (v12)
        {
          v15 = v29;
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v14 = *(this + 28) - *(BlueFin::GlUtils::m_pInstance + 1092) + 1000 * *(this + 22);
        v15 = v14 & ~(v14 >> 31);
      }

      if (v15 < v3 && v15 != 0)
      {
        *(v1 + 1316) = v2;
        this = (*(*this + 136))(this, 14);
        v3 = v15;
      }
    }

    else
    {
LABEL_24:
      v19 = *(v6 + 36);
      if (v19 == -1)
      {
        v22 = -1;
      }

      else
      {
        v20 = *(this + 28);
        v21 = *(v6 + 32) + v19;
        v12 = v20 >= v21;
        v22 = v20 - v21;
        if (v22 != 0 && v12)
        {
          v22 = -1;
        }
      }

      v26 = (v22 + 1000 * *(this + 22)) & ~((v22 + 1000 * *(this + 22)) >> 31);
      if (v26 < v5)
      {
        v5 = v26;
        v4 = v2;
      }
    }

LABEL_34:
    ++v2;
  }

  while (v2 != 72);
  if ((*(v1 + 1316) & 0x80000000) != 0 && v4 != -1)
  {
    *(v1 + 1316) = v4;
  }

  *v30 = v31;
  return this;
}

uint64_t BlueFin::GlPeRqHdlrGnssMeasData::Cleanup(uint64_t this)
{
  if ((*(this + 20) & 1) != 0 || *(this + 24) == 1)
  {
    *(this + 19) = 1;
  }

  return BlueFin::GlPeRqHdlr::Cleanup(this);
}

void *BlueFin::GlReqSm::UpdateSatAiding(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, unsigned __int8 a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, uint64_t a19, _OWORD *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = MEMORY[0x2A1C7C4A8](a1);
  v69 = v68;
  v70 = v67;
  STACK[0x24D8] = *MEMORY[0x29EDCA608];
  BlueFin::GlSignalIdSet::GetSvIdSet((*(v67 + 6320) + 8), &a20);
  v74 = *(v70 + 6304);
  v75 = *(v70 + 54900);
  if (*(v74 + 60933) == 1)
  {
    v76 = *(v74 + 60934);
    if (*(v74 + 60935) > v75)
    {
      LOBYTE(v75) = *(v74 + 60935);
    }

    *(v70 + 54900) = v75;
    if (v76)
    {
      v77 = 4;
    }

    else
    {
      v77 = 5;
    }
  }

  else if (v75 < 1)
  {
    v77 = 5;
  }

  else
  {
    *(v70 + 54900) = v75 - 1;
    v77 = 5;
    LOBYTE(v75) = v75 - 1;
  }

  if (!v75)
  {
    if (*(v74 + 60928) < 0x1Fu)
    {
      goto LABEL_20;
    }

    v78 = *(v74 + 57432);
    if (*(v78 + 1988))
    {
      v77 = 1;
      goto LABEL_21;
    }

    v79 = *(v78 + 8) - 1;
    if (v79 < 3)
    {
      v77 = dword_298A4509C[v79];
      goto LABEL_21;
    }

    if (BlueFin::GlPeKF::IsVdrValid(v74))
    {
      if ((*(*(v74 + 17184) + 336))(v74 + 17184))
      {
        v77 = 6;
      }

      else
      {
        v77 = 0;
      }
    }

    else
    {
LABEL_20:
      v77 = 0;
    }
  }

LABEL_21:
  BlueFin::GlPeRangeAidGen::RecomputeAidingNow(*(v70 + 6312), 0, v69, &a20, v77, v71, v72, v73);
  v80 = (*(**(*(v70 + 6264) + 32) + 88))(*(*(v70 + 6264) + 32));
  a19 = (*(**(*(v70 + 6264) + 32) + 96))(*(*(v70 + 6264) + 32));
  v81 = v80(8832);
  v82 = v81;
  a18 = v81;
  if (!v81)
  {
    DeviceFaultNotify("glmemalloc.h", 74, "GlStackAlloc", "m_ptr != nullptr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmemalloc.h", 74, "m_ptr != nullptr");
  }

  v83 = BlueFin::GlSatAidInfo::GlSatAidInfo(v81);
  BlueFin::GlSatAidInfo::operator=(v83, *(v70 + 6312) + 320);
  v84 = *(v70 + 6288);
  BlueFin::GlReqSm::SatelliteSelection(v70, (v84 + 119904), 0, 0);
  v85 = 0;
  v86 = 0;
  v87 = 91;
  do
  {
    v88 = v82[1101];
    v89 = *(v88 + v85);
    if (*(v88 + v85))
    {
      if ((*(*(v84 + 119904) + 4 * (v89 >> 5)) >> (v89 & 0x1F)))
      {
        if (v89 - 76 <= 0x3E && *(v70 + 54040) == 1)
        {
          *(v88 + v85) = 0;
          GlCustomLog(14, "UpdateSatAiding: removed aiding for BDS Svid: %d %s\n", 0, "T");
        }

        else if (*(v88 + v85 + 24))
        {
          ++v86;
        }
      }

      else
      {
        *(v88 + v85) = 0;
      }
    }

    v85 += 96;
    --v87;
  }

  while (v87);
  BlueFin::GlPeSatAidInfo::GlPeSatAidInfo(&a26);
  v90 = *(v70 + 6320);
  if (*(v90 + 18816) == 1 && BlueFin::GlSetBase::Cnt((v90 + 37288)))
  {
    v91 = *v90 != -7200001 && *v90 >> 5 > 0x270u;
    if (!v91 && v86 == 0)
    {
      v93 = *(v82 + 4);
      v94 = v82[3];
      v95 = *(v82 + 8);
      v96 = *(v82 + 9);
      a63 = v82[1];
      a64 = v93;
      a65 = v94;
      a66 = v95;
      a67 = v96;
      v97 = xmmword_298A31960;
      v98 = xmmword_298A31970;
      v99 = xmmword_298A31980;
      v100 = xmmword_298A31990;
      v101 = xmmword_298A319A0;
      v102 = xmmword_298A319B0;
      v103 = xmmword_298A319C0;
      v104 = xmmword_298A319D0;
      v105 = STACK[0x2468];
      v106 = 96;
      v107 = vdupq_n_s64(0x5BuLL);
      v108 = vdupq_n_s64(0x10uLL);
      do
      {
        if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v107, v104)), *v97.i8), *v97.i8).u8[0])
        {
          *v105 = 0;
        }

        if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), *&v104)), *&v97), *&v97).i8[1])
        {
          v105[96] = 0;
        }

        if (vuzp1_s8(vuzp1_s16(*&v97, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), *&v103))), *&v97).i8[2])
        {
          v105[192] = 0;
          v105[288] = 0;
        }

        if (vuzp1_s8(*&v97, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), *&v102)), *&v97)).i32[1])
        {
          v105[384] = 0;
        }

        if (vuzp1_s8(*&v97, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), *&v102)), *&v97)).i8[5])
        {
          v105[480] = 0;
        }

        if (vuzp1_s8(*&v97, vuzp1_s16(*&v97, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), *&v101)))).i8[6])
        {
          v105[576] = 0;
          v105[672] = 0;
        }

        if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), v100)), *v97.i8), *v97.i8).u8[0])
        {
          v105[768] = 0;
        }

        if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), *&v100)), *&v97), *&v97).i8[1])
        {
          v105[864] = 0;
        }

        if (vuzp1_s8(vuzp1_s16(*&v97, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), *&v99))), *&v97).i8[2])
        {
          v105[960] = 0;
          v105[1056] = 0;
        }

        if (vuzp1_s8(*&v97, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), *&v98)), *&v97)).i32[1])
        {
          v105[1152] = 0;
        }

        if (vuzp1_s8(*&v97, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), *&v98)), *&v97)).i8[5])
        {
          v105[1248] = 0;
        }

        if (vuzp1_s8(*&v97, vuzp1_s16(*&v97, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), *&v97)))).i8[6])
        {
          v105[1344] = 0;
          v105[1440] = 0;
        }

        v102 = vaddq_s64(v102, v108);
        v103 = vaddq_s64(v103, v108);
        v104 = vaddq_s64(v104, v108);
        v101 = vaddq_s64(v101, v108);
        v100 = vaddq_s64(v100, v108);
        v99 = vaddq_s64(v99, v108);
        v98 = vaddq_s64(v98, v108);
        v105 += 1536;
        v97 = vaddq_s64(v97, v108);
        v106 -= 16;
      }

      while (v106);
      a16 = v70 + 42688;
      a17 = *(v70 + 42727) + 1;
      if (*(v70 + 42726) > a17)
      {
        do
        {
          a15 = BlueFin::GlArrayIterator::Next(&a16);
          BlueFin::GlPeSatAidInfo::Add(&a26, &a15);
          v110 = v109;
          AidBySvId = BlueFin::GlPeSatAidInfo::GetAidBySvId(v70 + 33568, &a15);
          if (!v110 || !AidBySvId)
          {
            DeviceFaultNotify("glpe_reqsm_aiding.cpp", 3088, "UpdateSatAiding", "potSatAid != nullptr && potIniSatAid != nullptr");
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_reqsm_aiding.cpp", 3088, "potSatAid != nullptr && potIniSatAid != nullptr");
          }

          BlueFin::GlSatAid::operator=(v110, AidBySvId);
        }

        while (a17 < *(a16 + 38));
      }

      v82 = &a62;
    }
  }

  BlueFin::GlReqSm::sendMeSatAiding(v70, v82);
  GlCustomLog(15, "GlReqSm::UpdateSatAiding:\n");
  GlCustomLog(15, "           LMS:%10u\n", *(v82 + 9));
  GlCustomLog(15, "    GpsSysTmMs: %16.6lf   GpsSysTmUncMs:%12.6lf\n", *(v82 + 1) * 1000.0, *(v82 + 4) * 1000.0);
  GlCustomLog(15, "   GlnsSysTmMs: %16.6lf  GlnsSysTmUncMs:%12.6lf\n", *(v82 + 3) * 1000.0, *(v82 + 8) * 1000.0);
  GlCustomLog(15, "               SvId  RcvdST(ms)  Unc(ms)  Dpplr(ppb) Unc(ppb)  ProbLOS  SatAidFlags\n");
  v112 = 0;
  v113 = 91;
  do
  {
    v114 = v82[1101];
    v115 = *(v114 + v112);
    if (*(v114 + v112))
    {
      v116 = v114 + v112;
      v117 = *(v116 + 32) * 1000.0;
      v118 = *(v116 + 40) * 1000.0;
      v119 = *(v116 + 44) * 1000000000.0;
      v120 = *(v116 + 48) * 1000000000.0;
      v121 = *(v116 + 92);
      v122 = *(v116 + 24);
      v123 = *(v116 + 74);
      v124 = 69;
      if ((v122 & 0x80) == 0)
      {
        v124 = 101;
      }

      vars0 = v124;
      vars8 = v123;
      v125 = 65;
      if ((v122 & 0x40) == 0)
      {
        v125 = 97;
      }

      v126 = 82;
      if ((v122 & 0x20) == 0)
      {
        v126 = 114;
      }

      v134 = v126;
      v135 = v125;
      v127 = 68;
      if ((v122 & 0x10) == 0)
      {
        v127 = 100;
      }

      if ((v122 & 8) != 0)
      {
        v128 = 84;
      }

      else
      {
        v128 = 116;
      }

      v133 = v127;
      if ((v122 & 4) != 0)
      {
        v129 = 66;
      }

      else
      {
        v129 = 98;
      }

      if ((v122 & 2) != 0)
      {
        v130 = 67;
      }

      else
      {
        v130 = 99;
      }

      GlCustomLog(15, "        SATAID: %02d  %+10.6lf  %8.6lf  %+9.3f  %8.6lf  %.3f  %c%c%c%c%c%c%c %d\n", v115, v117, v118, v119, v120, v121, v130, v129, v128, v133, v134, v135, vars0, vars8);
    }

    v112 += 96;
    --v113;
  }

  while (v113);
  result = BlueFin::GlStackAlloc<BlueFin::GlSatAidInfo>::~GlStackAlloc(&a18);
  v132 = __OFSUB__(*MEMORY[0x29EDCA608], STACK[0x24D8]);
  return result;
}

uint64_t BlueFin::GlSatAidInfo::operator=(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 8800) = *(a2 + 8800);
  v5 = 91;
  do
  {
    BlueFin::GlSatAid::operator=(*(a1 + 8808) + v4, *(a2 + 8808) + v4);
    v4 += 96;
    --v5;
  }

  while (v5);
  return a1;
}

BOOL BlueFin::GlPeEphemerisMgr::isEphemerisGoodForNav(uint64_t a1, _BYTE *a2)
{
  v4 = (*(*a1 + 368))(a1);
  result = 0;
  if ((v4[8] & 0xF) != 0)
  {
    v5 = v4;
    if ((*(*v4 + 40))(v4))
    {
      if (((*(*(a1 + 384) + ((*a2 >> 3) & 0x1C)) >> (*a2 & 0x1F)) & 1) == 0 || (v6 = (*(*a1 + 368))(a1, a2), (*(*v6 + 184))(v6)))
      {
        if ((*(*v5 + 144))(v5) != 2)
        {
          return 1;
        }

        BlueFin::GlPeLtoMgr::GetBadSvSet(*(a1 + 32), *(a1 + 12), 0, v8);
        if (((*(*v8 + ((*a2 >> 3) & 0x1C)) >> (*a2 & 0x1F)) & 1) == 0)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t BlueFin::GlPeLtoEphemeris::GetSrc(BlueFin::GlPeLtoEphemeris *this)
{
  if ((*(this + 8) & 0xF) == 2)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

unsigned __int8 *BlueFin::GlPeElAzCache::Get(unsigned __int8 *result, unsigned __int8 *a2)
{
  v2 = *a2;
  if (((*(*(result + 152) + ((v2 >> 3) & 0x1C)) >> (v2 & 0x1F)) & 1) == 0)
  {
    return 0;
  }

  v3 = result[1264];
  if (!result[1264])
  {
    return 0;
  }

  while (*result != v2)
  {
    result += 12;
    if (!--v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t BlueFin::GlPeTimeMgrUtil::DoubleToLms(BlueFin::GlPeTimeMgrUtil *this, int8x16_t a2, int8x16_t a3, int8x16_t a4, double a5, int8x16_t a6)
{
  result = 4287767294;
  if (*a2.i64 >= 0.0)
  {
    *a2.i64 = floor(*a2.i64 + 0.5);
    if (*a2.i64 <= 4287767290.0)
    {
      *a2.i64 = *a2.i64 + 0.1;
      *a3.i64 = *a2.i64 - trunc(*a2.i64 * 2.32830644e-10) * 4294967300.0;
      v7.f64[0] = NAN;
      v7.f64[1] = NAN;
      a3.i64[0] = vbslq_s8(vnegq_f64(v7), a3, a2).u64[0];
      if (*a2.i64 > 4294967300.0)
      {
        a2.i64[0] = a3.i64[0];
      }

      return *a2.i64;
    }
  }

  else
  {
    *a2.i64 = ceil(*a2.i64 + -0.5);
    if (*a2.i64 >= -7200000.0)
    {
      *a2.i64 = *a2.i64 + 4294967300.0 + 0.1;
      *a6.i64 = *a2.i64 + trunc(*a2.i64 * 2.32830644e-10) * -4294967300.0;
      v8.f64[0] = NAN;
      v8.f64[1] = NAN;
      v9 = vnegq_f64(v8);
      a6.i64[0] = vbslq_s8(v9, a6, a2).u64[0];
      if (*a2.i64 > 4294967300.0)
      {
        a2.i64[0] = a6.i64[0];
      }

      if (*a2.i64 < -4294967300.0)
      {
        *a4.i64 = -*a2.i64;
        *a2.i64 = -(*a2.i64 - trunc(*a2.i64 * -2.32830644e-10) * -4294967300.0);
        *a2.i64 = -*vbslq_s8(v9, a2, a4).i64;
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

    else
    {
      return 4287767296;
    }
  }

  return result;
}

uint64_t BlueFin::GlPeGnssSvsInfoMgr::getIndex(unsigned int *a1, unsigned int a2, unsigned __int8 a3)
{
  v3 = BlueFin::GlImplGnss::m_aucEnabledGnssTable[a2];
  if ((*a1 >> v3))
  {
    if (a2 > 6 || !a3 || ((0xE243F0A181320uLL >> (8 * a2)) & 0x3F) < a3)
    {
      DeviceFaultNotify("glpe_reqhdlr_gnss_meas_svsinfo.cpp", 699, "getIndex", "(rotGnss.eGnss < NUM_GNSS) && (ucGnssId >= MIN_GNSS_ID && ucGnssId <= GlGnssId::MaxGnssId(rotGnss.eGnss))");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_reqhdlr_gnss_meas_svsinfo.cpp", 699, "(rotGnss.eGnss < NUM_GNSS) && (ucGnssId >= MIN_GNSS_ID && ucGnssId <= GlGnssId::MaxGnssId(rotGnss.eGnss))");
    }

    v4 = a1[BlueFin::GlPeGnssSvsInfoMgr::m_aeImplGnss2Supported[v3] + 1] + a3 - 1;
  }

  else
  {
    LOWORD(v4) = -1;
  }

  return v4;
}

uint64_t BlueFin::GlPeNmeaGsvSatsNum::Update(uint64_t this, uint8x8_t a2, uint16x8_t a3)
{
  v3 = 0;
  a2.i32[0] = *this;
  a3.i32[0] = 196611;
  a3.i16[2] = 3;
  a3.i16[3] = 3;
  v4 = vshr_n_u16(*&vaddw_u8(a3, a2), 2uLL);
  v4.i32[0] = vuzp1_s8(v4, v4).u32[0];
  *(this + 9) = v4.i32[0];
  *(this + 4) = 0;
  *(this + 5) = v4.i32[0];
  *(this + 14) = -1;
  do
  {
    v5 = *(this + v3 + 4);
    v6 = *(this + v3 + 5) + v5;
    *(this + v3 + 5) = v6;
    v7 = *(this + 13);
    if (v5 <= v7 && v7 < v6)
    {
      *(this + 14) = v3;
    }

    ++v3;
  }

  while (v3 != 4);
  *(this + 16) = 4 * (v7 - *(this + 4 + *(this + 14)));
  return this;
}

float BlueFin::GlSatAid::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 92) = *(a2 + 92);
  for (i = 56; i != 72; i += 4)
  {
    result = *(a2 + i);
    *(a1 + i) = result;
  }

  return result;
}

uint64_t BlueFin::GlReqSm::ConstellationAware(BlueFin::GlReqSm *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, BlueFin::GlSetBase *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  a28 = *MEMORY[0x29EDCA608];
  v28 = this + 53248;
  if (*(this + 54556))
  {
    v29 = 1;
  }

  else
  {
    v31 = 0;
    v32 = *(*(this + 786) + 120012);
    v33 = v32 == 1;
    v34 = v32 != 1;
    if (v33)
    {
      v35 = 10;
    }

    else
    {
      v35 = 22;
    }

    if (v33)
    {
      v36 = 10;
    }

    else
    {
      v36 = 30;
    }

    v37 = *(*(this + 784) + 278);
    v50[0] = v36;
    if (v37)
    {
      v38 = v35;
    }

    else
    {
      v38 = 0;
    }

    v50[1] = 4 * v34;
    v50[2] = v38;
    v51 = 0;
    do
    {
      v39 = &v52 + v31;
      *(&v52 + v31 + 12) = 0;
      *v39 = &v52 + v31 + 12;
      v39[8] = 2;
      v31 += 24;
    }

    while (v31 != 168);
    for (i = 0; i != 7; ++i)
    {
      BlueFin::GlPeAlmMgr::GetValidity(*(this + 786) + 34112, i, 0, &v49);
      v41 = BlueFin::GlGnssSet::operator()(&v52, i);
      BlueFin::GlSetBase::operator|=(v41, &v49);
    }

    v42 = 0;
    v43 = *(this + 786);
    do
    {
      BlueFin::GlSetBase::operator|=(&v52 + v42, *(v43 + 120968) + v42);
      v42 += 24;
    }

    while (v42 != 168);
    v44 = 0;
    v28[1308] = 1;
    while (1)
    {
      v45 = BlueFin::GlGnssSet::operator()(&v52, v44);
      if (v50[v44] > BlueFin::GlSetBase::Cnt(v45))
      {
        break;
      }

      if (++v44 == 7)
      {
        goto LABEL_23;
      }
    }

    v28[1308] = 0;
LABEL_23:
    v46 = v36 <= BlueFin::GlSetBase::Cnt(&v52) && v38 <= BlueFin::GlSetBase::Cnt(&a9);
    v28[1309] = v46;
    v29 = v28[1308];
  }

  v47 = *MEMORY[0x29EDCA608];
  return v29 & 1;
}

uint64_t BlueFin::GlReqSm::sendMeSatAiding(BlueFin::GlReqSm *this, const BlueFin::GlSatAidInfo *a2)
{
  BlueFin::GlReqSm::AutoSelectSatForIQDump(this, a2);
  if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    (*(*a2 + 24))(a2, 0, 0);
  }

  v4 = *(**(this + 39) + 240);

  return v4();
}

uint64_t BlueFin::GlReqSm::AutoSelectSatForIQDump(uint64_t this, const BlueFin::GlSatAidInfo *a2)
{
  v41 = *MEMORY[0x29EDCA608];
  if (*(this + 54902) == 1)
  {
    v2 = 0;
    v33 = *(this + 6272);
    v3 = *(v33 + 48);
    v4 = (this + 33504);
    v5 = v3 >= 9;
    memset(&v40[80], 0, 44);
    v6 = 0x1F4u >> v3;
    v7 = !v5;
    v8 = v7 & v6;
    memset(v40, 0, 320);
    memset(v38, 0, 91);
    v9 = 91;
    v10 = *(a2 + 1101);
    do
    {
      if (*v10 && v2 <= 0x5A)
      {
        *(v38 + v2) = *v10;
        v40[v2++] = -*(v10 + 74);
      }

      v10 += 96;
      --v9;
    }

    while (v9);
    v39[0] = 0;
    v11 = v2;
    if (v2 >= 2)
    {
      for (i = 1; i != v2; v39[v15] = i++)
      {
        v13 = v40[i];
        v14 = i;
        while (1)
        {
          v15 = v14;
          v16 = v39[v14 - 1];
          if (v40[v16] <= v13)
          {
            break;
          }

          v39[v15] = v16;
          v14 = v15 - 1;
          if (v15 == 1)
          {
            v15 = 0;
            break;
          }
        }
      }
    }

    v32 = this;
    if (v2)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = v39;
      do
      {
        v22 = *v21++;
        v23 = *(v38 + v22);
        LOBYTE(v34) = *(v38 + v22);
        if (!v8 || BlueFin::GlSettingsImpl::DoesSvSupportBand5(v33, &v34))
        {
          if ((v23 - 1) <= 0x1F && v17 <= 2)
          {
            *(*v4 + ((v23 >> 3) & 0x1C)) |= 1 << v23;
            ++v17;
            goto LABEL_37;
          }

          if ((v23 - 81) <= 0x34 && v20 == 0)
          {
            v20 = 1;
            *(*v4 + 4 * (v23 >> 5)) |= 1 << v23;
LABEL_37:
            if (++v18 == 5)
            {
              break;
            }

            goto LABEL_38;
          }

          if ((v23 - 139) <= 0x23 && v19 == 0)
          {
            v19 = 1;
            *(*v4 + 4 * (v23 >> 5)) |= 1 << v23;
            goto LABEL_37;
          }
        }

LABEL_38:
        --v11;
      }

      while (v11);
    }

    if (!**v4)
    {
      v27 = v4[8];
      if (v27 < 2)
      {
LABEL_47:
        this = GlCustomLog(126, "IQDUMP_LIST NO SVs selected\n");
        goto LABEL_48;
      }

      v28 = v27 - 1;
      v29 = (*v4 + 4);
      while (!*v29++)
      {
        if (!--v28)
        {
          goto LABEL_47;
        }
      }
    }

    GlCustomLog(126, "IQDUMP_LIST ");
    LOBYTE(v34) = v4[8];
    memcpy(&v35, *v4, 4 * v34);
    WORD1(v34) = 0;
    BYTE1(v34) = 0;
    HIDWORD(v34) = v35;
    BlueFin::GlSetIterator::operator++(&v34);
    while (BYTE1(v34) != v34)
    {
      GlCustomLog(126, " %3d   ", BYTE2(v34));
      BlueFin::GlSetIterator::operator++(&v34);
    }

    GlCustomLog(126, "\n");
    v34 = &v36;
    LOBYTE(v35) = 3;
    v36 = 0;
    v37 = 0;
    this = (*(**(v32 + 312) + 784))();
    *(v32 + 54902) = 0;
  }

LABEL_48:
  v31 = *MEMORY[0x29EDCA608];
  return this;
}

uint64_t BlueFin::GlMeSrdAidingMgr::GetAidIdSvIdSet@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 12) = 0u;
  *a2 = a2 + 12;
  *(a2 + 8) = 8;
  *(a2 + 28) = 0u;
  v4 = this + 2632;
  v5 = *(this + 2666) + 1;
  if (*(this + 2664) > v5)
  {
    do
    {
      this = BlueFin::GlSignalIdArrayIterator::Next(&v4, v3);
      *(*a2 + ((v3[0] >> 3) & 0x1C)) |= 1 << v3[0];
    }

    while (v5 < *(v4 + 32));
  }

  return this;
}

BlueFin::GlMeClkModMgr *BlueFin::GlMeWinMgr::SetSatAidInfo(BlueFin::GlMeWinMgr *this, const BlueFin::GlSatAidInfo *a2)
{
  BlueFin::GlMeSatAidMgr::SetSatAidInfo((this + 320), a2);
  result = BlueFin::GlSetBase::Cnt((this + 9248));
  *(this + 9858) = result;
  v5 = *(a2 + 9);
  if (v5)
  {
    v13 = &unk_2A1F0E1A0;
    v14 = 0;
    v15 = 0x36A7C5AC00000000;
    SubBitAndEpochTime = 0.0;
    v17 = 3.4028e38;
    v18 = 0.0;
    v19 = 2139095039;
    v20 = 0;
    v21 = 0x36A7C5AC7F7FFFFFLL;
    v12 = *(a2 + 1) - v5 * 0.001;
    v9[0] = 1;
    v10 = 0;
    v11 = 0;
    SubBitAndEpochTime = BlueFin::GlSystemTime::getSubBitAndEpochTime(&v12, v9, 1u);
    HIDWORD(v14) = *(a2 + 9);
    v17 = *(a2 + 4);
    v12 = *(a2 + 3) - HIDWORD(v14) * 0.001;
    v9[0] = 52;
    v10 = 0;
    v11 = 147;
    v18 = BlueFin::GlSystemTime::getSubBitAndEpochTime(&v12, v9, 1u);
    v6 = *(a2 + 9);
    HIDWORD(v14) = v6;
    v7 = *(a2 + 8);
    v19 = LODWORD(v7);
    if (v17 < 0.001)
    {
      LODWORD(v14) = v14 | 2;
    }

    if (v17 < 0.0005)
    {
      LODWORD(v14) = v14 | 4;
    }

    if (v17 < 0.00015152)
    {
      LODWORD(v14) = v14 | 8;
    }

    if (v7 < 0.001)
    {
      LODWORD(v14) = v14 | 0x20;
    }

    if (v7 < 0.0005)
    {
      LODWORD(v14) = v14 | 0x80;
    }

    if (v7 < 0.00030333)
    {
      LODWORD(v14) = v14 | 0x100;
    }

    if (v7 < 10.0)
    {
      v8 = v14;
      if ((v14 & 0x22) == 2)
      {
        v8 = v14 | 0x20;
        LODWORD(v14) = v14 | 0x20;
        v19 = 973279855;
      }

      if ((v8 & 0x108) == 8)
      {
        v8 |= 0x100u;
        LODWORD(v14) = v8;
        v19 = 973279855;
      }

      if ((v8 & 0x22) == 0x20)
      {
        v8 |= 2u;
        LODWORD(v14) = v8;
        v17 = 0.0005;
      }

      if ((v8 & 0x108) == 0x100)
      {
        LODWORD(v14) = v8 | 8;
        v17 = 0.0005;
      }
    }

    return BlueFin::GlMeClkModMgr::SetClkModFromPe((this + 144), v6, &v13);
  }

  return result;
}

BlueFin::GlMeClkModMgr *BlueFin::GlMeClkModMgr::SetClkModFromPe(BlueFin::GlMeClkModMgr *this, int a2, BlueFin::GlMeClkMod *a3)
{
  v4 = this;
  v5 = *(a3 + 2);
  if ((v5 & 0x10) != 0)
  {
    *(a3 + 2) = v5 & 0xFFFFFED5;
    this = BlueFin::GlMeClkModMgr::SetClkMod(this, a3, 0);
    if (*(a3 + 5) <= 0.000000025)
    {
      *(v4 + 96) = 1;
    }

    *(v4 + 25) = a2;
  }

  else if ((v5 & 0x12A) != 0)
  {

    return BlueFin::GlMeClkModMgr::SetClkMod(this, a3, 0);
  }

  return this;
}

unint64_t BlueFin::GlMeSrdAcqMgr::NewAidingAvailable(BlueFin::GlMeSrdAcqMgr *this)
{
  if ((*(this + 104) & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_acq_mgr.cpp", 435, "NewAidingAvailable", "m_bAllocated");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_acq_mgr.cpp", 435, "m_bAllocated");
  }

  v4 = 67;
  v1 = *(this + 1);
  v2 = *(v1 + 32);
  result = *(v1 + 8);
  *(v1 + 32) = result;
  do
  {
    v5 = 0;
    if (BlueFin::patch_dispatch(result, v1, &v4, &v5))
    {
      result = v5;
    }

    else
    {
      result = (*(v1 + 32))(v1, &v4);
    }

    *(v1 + 32) = result;
  }

  while (result);
  *(v1 + 32) = v2;
  return result;
}

unsigned __int8 *BlueFin::GlMeSrdSatMgr::GetSvidSetFromSatidSet@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 12) = 0u;
  *a3 = a3 + 12;
  *(a3 + 8) = 8;
  *(a3 + 28) = 0u;
  v7 = *(a2 + 8);
  memcpy(v11, *a2, 4 * v7);
  *v9 = 0;
  v8 = 0;
  v10 = v11[0];
  for (result = BlueFin::GlSetIterator::operator++(&v7); v8 != v7; result = BlueFin::GlSetIterator::operator++(&v7))
  {
    BlueFin::GlMeSrdSatMgr::GetSvid(a1, v9[0], &v6);
    *(*a3 + ((v6 >> 3) & 0x1C)) |= 1 << v6;
  }

  return result;
}

uint64_t BlueFin::GlMeSrdAcqMgrSm::IsFirstFix(BlueFin::GlMeSrdAcqMgrSm *this)
{
  v1 = (this + 23160);
  if (*(this + 24997) == 1)
  {
    if (*v1 < 0x7531)
    {
      v3 = 1;
    }

    else
    {
      v14 = 0.0;
      (*(**(this + 5) + 48))(*(this + 5));
      v13 = 0.0;
      (*(**(this + 5) + 48))(*(this + 5), *v1, &v13, 1);
      v5[0] = &unk_2A1F0E1A0;
      v5[1] = 0;
      v6 = 0x36A7C5AC00000000;
      v7 = 0;
      v8 = 2139095039;
      v9 = 0;
      v10 = 2139095039;
      v11 = 0;
      v12 = 0x36A7C5AC7F7FFFFFLL;
      (*(**(this + 5) + 96))(*(this + 5), v5, *v1);
      if (fminf(v14, v13) >= 0.00000005 || *(&v6 + 1) >= 0.00000001)
      {
        v3 = *(v1 + 1837);
      }

      else
      {
        v3 = 0;
        *(v1 + 1837) = 0;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

unsigned __int8 *BlueFin::GlMeAcqWindowProvider::GetAidSvLstBySrc@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 8);
  v5 = *a2;
  return BlueFin::GlMeSatAidMgr::GetAidSvLstBySrc(v3 + 352, &v5, a3);
}

uint64_t BlueFin::GlSetBase::OperatorBinaryXor(uint64_t this, int **a2, int **a3)
{
  v3 = *(this + 8);
  v4 = *(a3 + 8);
  if (v3 != v4 || *(a2 + 8) != v4)
  {
    DeviceFaultNotify("glutl_set.cpp", 517, "OperatorBinaryXor", "m_ucUlongSize == otRightOperand.m_ucUlongSize && otResult.m_ucUlongSize == otRightOperand.m_ucUlongSize");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_set.cpp", 517, "m_ucUlongSize == otRightOperand.m_ucUlongSize && otResult.m_ucUlongSize == otRightOperand.m_ucUlongSize");
  }

  if (*(this + 8))
  {
    v6 = *this;
    v7 = *a3;
    v8 = *a2;
    do
    {
      v10 = *v6++;
      v9 = v10;
      v11 = *v7++;
      *v8++ = v11 ^ v9;
      --v3;
    }

    while (v3);
  }

  return this;
}

double BlueFin::GlMeSatAidMgr::GetAidSysTm(uint64_t a1, _DWORD *a2, int a3, uint64_t a4, double a5, double a6, double a7)
{
  v7 = 8;
  if (a3)
  {
    v7 = 24;
  }

  v8 = *(a1 + v7);
  LODWORD(a7) = *(a1 + 36);
  v9 = *&a7;
  if (a2)
  {
    v10 = 16;
    if (a3)
    {
      v10 = 32;
    }

    *a2 = *(a1 + v10);
  }

  v11 = (a5 - v9) / 1000.0;
  if (a4 && *(a4 + 20) < 0.00000001)
  {
    v11 = v11 * (1.0 - *(a4 + 16));
  }

  result = v8 + v11;
  if (a3)
  {
    if (result < 0.0)
    {
      result = result + 86400.0;
    }

    if (result >= 86400.0)
    {
      v13 = -86400.0;
      return result + v13;
    }
  }

  else
  {
    if (result < 0.0)
    {
      result = result + 604800.0;
    }

    if (result >= 604800.0)
    {
      v13 = -604800.0;
      return result + v13;
    }
  }

  return result;
}

void BlueFin::GlMeClkModMgr::GetClkMod(BlueFin::GlMeClkModMgr *this, BlueFin::GlMeClkMod *a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(this + 4);
  *(a2 + 2) = v5;
  v6 = *(this + 5);
  *(a2 + 3) = v6;
  v7 = *(this + 6);
  *(a2 + 4) = v7;
  v8 = *(this + 7);
  *(a2 + 5) = v8;
  v9 = *(this + 4);
  *(a2 + 3) = v9;
  v10 = *(this + 10);
  *(a2 + 8) = v10;
  v11 = *(this + 6);
  *(a2 + 5) = v11;
  v12 = *(this + 14);
  *(a2 + 12) = v12;
  v13 = *(this + 8);
  *(a2 + 7) = v13;
  v14 = *(this + 9);
  *(a2 + 8) = v14;
  if (!v5)
  {
    *(a2 + 3) = a3;
    return;
  }

  v16 = *(this + 18);
  v17 = *(v16 + 9856) - 1;
  if (v17 <= 3u && *(v16 + 9858) - 1 <= 3)
  {
    *(v16 + 9859) = 1;
    goto LABEL_97;
  }

  *(v16 + 9859) = 0;
  v99 = 0.0;
  v98 = 0;
  v97 = 1.0;
  if ((*(**(this + 16) + 40))(*(this + 16), a3, &v99, &v98, &v97, 0))
  {
    v18 = v98;
    *(a2 + 2) |= v98;
    if ((v18 & 2) == 0)
    {
      if ((v18 & 0x20) == 0)
      {
        if ((v18 & 0x400) != 0)
        {
          v96 = v99;
          v93[0] = -117;
          v94 = 0;
          v95 = 453;
          *(a2 + 7) = BlueFin::GlSystemTime::getSubEpochTime(&v96, v93, 1u);
          v19 = v97;
          *(a2 + 16) = v19;
          v20 = *(this + 29);
          v22 = (*(**(this + 16) + 80))(*(this + 16));
          *v22.i64 = v21 * 0.001;
          *v23.i64 = *v22.i64 - trunc(*v22.i64 * 2.32830644e-10) * 4294967300.0;
          v24.f64[0] = NAN;
          v24.f64[1] = NAN;
          v25 = vbslq_s8(vnegq_f64(v24), v23, v22);
          if (*v22.i64 > 4294967300.0)
          {
            v22.i64[0] = v25.i64[0];
          }

          if (v20 == -1)
          {
            if (*v22.i64 < -4294967300.0)
            {
              *v25.i64 = -*v22.i64;
              *v22.i64 = -(*v22.i64 - trunc(*v22.i64 * -2.32830644e-10) * -4294967300.0);
              v90.f64[0] = NAN;
              v90.f64[1] = NAN;
              *v22.i64 = -*vbslq_s8(vnegq_f64(v90), v22, v25).i64;
            }

            if (*v22.i64 < 0.0)
            {
              v27 = --*v22.i64;
            }

            else
            {
              v27 = *v22.i64;
            }
          }

          else
          {
            if (*v22.i64 < -4294967300.0)
            {
              *v25.i64 = -*v22.i64;
              *v22.i64 = -(*v22.i64 - trunc(*v22.i64 * -2.32830644e-10) * -4294967300.0);
              v26.f64[0] = NAN;
              v26.f64[1] = NAN;
              *v22.i64 = -*vbslq_s8(vnegq_f64(v26), v22, v25).i64;
            }

            if (*v22.i64 < 0.0)
            {
              v27 = --*v22.i64;
            }

            else
            {
              v27 = *v22.i64;
            }

            if (v27 <= v20)
            {
              v27 = v20;
            }
          }

          *(this + 29) = v27;
        }

        goto LABEL_77;
      }

      v96 = *(a2 + 5);
      v93[0] = 52;
      v94 = 0;
      v95 = 147;
      SubEpochTime = BlueFin::GlSystemTime::getSubEpochTime(&v96, v93, 0);
      v96 = v99;
      v93[0] = 52;
      v94 = 0;
      v95 = 147;
      v33 = BlueFin::GlSystemTime::getSubEpochTime(&v96, v93, 0);
      *(a2 + 5) = SubEpochTime;
      v96 = v99;
      v93[0] = 52;
      v94 = 0;
      v95 = 147;
      v34 = BlueFin::GlSystemTime::getSubBitTime(&v96, v93, 0) + *(a2 + 5);
      *(a2 + 5) = v34;
      if (SubEpochTime - v33 <= 0.0005)
      {
        if (SubEpochTime - v33 >= -0.0005)
        {
LABEL_52:
          v51 = *(this + 28);
          v53 = (*(**(this + 16) + 72))(*(this + 16));
          *v53.i64 = v52 * 0.001;
          *v54.i64 = *v53.i64 - trunc(*v53.i64 * 2.32830644e-10) * 4294967300.0;
          v55.f64[0] = NAN;
          v55.f64[1] = NAN;
          v56 = vbslq_s8(vnegq_f64(v55), v54, v53);
          if (*v53.i64 > 4294967300.0)
          {
            v53.i64[0] = v56.i64[0];
          }

          if (v51 == -1)
          {
            if (*v53.i64 < -4294967300.0)
            {
              *v56.i64 = -*v53.i64;
              *v53.i64 = -(*v53.i64 - trunc(*v53.i64 * -2.32830644e-10) * -4294967300.0);
              v59.f64[0] = NAN;
              v59.f64[1] = NAN;
              *v53.i64 = -*vbslq_s8(vnegq_f64(v59), v53, v56).i64;
            }

            if (*v53.i64 < 0.0)
            {
              v58 = --*v53.i64;
            }

            else
            {
              v58 = *v53.i64;
            }
          }

          else
          {
            if (*v53.i64 < -4294967300.0)
            {
              *v56.i64 = -*v53.i64;
              *v53.i64 = -(*v53.i64 - trunc(*v53.i64 * -2.32830644e-10) * -4294967300.0);
              v57.f64[0] = NAN;
              v57.f64[1] = NAN;
              *v53.i64 = -*vbslq_s8(vnegq_f64(v57), v53, v56).i64;
            }

            if (*v53.i64 < 0.0)
            {
              v58 = --*v53.i64;
            }

            else
            {
              v58 = *v53.i64;
            }

            if (v58 <= v51)
            {
              v58 = v51;
            }
          }

          *(this + 28) = v58;
          v96 = *(a2 + 5);
          v93[0] = 52;
          v94 = 0;
          v95 = 147;
          SubBitAndEpochTime = BlueFin::GlSystemTime::getSubBitAndEpochTime(&v96, v93, 1u);
          *(a2 + 5) = SubBitAndEpochTime;
          if ((v98 & 0x80) != 0)
          {
            v61 = *(this + 28);
            *(this + 27) = v61;
            *(this + 29) = v61;
            if ((*(a2 + 8) & 8) != 0)
            {
              v96 = SubBitAndEpochTime;
              v93[0] = 1;
              v94 = 0;
              v95 = 0;
              SubBitTime = BlueFin::GlSystemTime::getSubBitTime(&v96, v93, 1u);
              v96 = *(a2 + 3);
              v93[0] = 1;
              v94 = 0;
              v95 = 0;
              v63 = BlueFin::GlSystemTime::getSubEpochTime(&v96, v93, 1u);
              v96 = *(a2 + 5);
              v93[0] = 1;
              v94 = 0;
              v95 = 0;
              v64 = BlueFin::GlSystemTime::getSubEpochTime(&v96, v93, 1u);
              v65 = v64 - v63;
              if (v64 - v63 < 0.0)
              {
                v65 = -(v64 - v63);
              }

              if (v65 > 0.0005)
              {
                if (v64 <= v63)
                {
                  SubBitTime = SubBitTime + -0.001;
                }

                else
                {
                  SubBitTime = SubBitTime + 0.001;
                }
              }

              v96 = v63 + SubBitTime;
              v93[0] = 1;
              v94 = 0;
              v95 = 0;
              SubBitAndEpochTime = BlueFin::GlSystemTime::getSubBitAndEpochTime(&v96, v93, 1u);
            }

            *(a2 + 3) = SubBitAndEpochTime;
            v96 = SubBitAndEpochTime;
            v93[0] = -117;
            v94 = 0;
            v95 = 453;
            *(a2 + 7) = BlueFin::GlSystemTime::getSubEpochTime(&v96, v93, 1u);
          }

          goto LABEL_77;
        }

        v35 = 0.001;
      }

      else
      {
        v35 = -0.001;
      }

      *(a2 + 5) = v34 + v35;
      goto LABEL_52;
    }

    v96 = *(a2 + 3);
    v93[0] = 1;
    v94 = 0;
    v95 = 0;
    v28 = BlueFin::GlSystemTime::getSubEpochTime(&v96, v93, 1u);
    v96 = v99;
    v93[0] = 1;
    v94 = 0;
    v95 = 0;
    v29 = BlueFin::GlSystemTime::getSubEpochTime(&v96, v93, 1u);
    *(a2 + 3) = v28;
    v96 = v99;
    v93[0] = 1;
    v94 = 0;
    v95 = 0;
    v30 = BlueFin::GlSystemTime::getSubBitTime(&v96, v93, 1u) + *(a2 + 3);
    *(a2 + 3) = v30;
    if (v28 - v29 <= 0.0005)
    {
      if (v28 - v29 >= -0.0005)
      {
LABEL_27:
        v36 = *(this + 27);
        v38 = (*(**(this + 16) + 64))(*(this + 16));
        *v38.i64 = v37 * 0.001;
        *v39.i64 = *v38.i64 - trunc(*v38.i64 * 2.32830644e-10) * 4294967300.0;
        v40.f64[0] = NAN;
        v40.f64[1] = NAN;
        v41 = vbslq_s8(vnegq_f64(v40), v39, v38);
        if (*v38.i64 > 4294967300.0)
        {
          v38.i64[0] = v41.i64[0];
        }

        if (v36 == -1)
        {
          if (*v38.i64 < -4294967300.0)
          {
            *v41.i64 = -*v38.i64;
            *v38.i64 = -(*v38.i64 - trunc(*v38.i64 * -2.32830644e-10) * -4294967300.0);
            v44.f64[0] = NAN;
            v44.f64[1] = NAN;
            *v38.i64 = -*vbslq_s8(vnegq_f64(v44), v38, v41).i64;
          }

          if (*v38.i64 < 0.0)
          {
            v43 = --*v38.i64;
          }

          else
          {
            v43 = *v38.i64;
          }
        }

        else
        {
          if (*v38.i64 < -4294967300.0)
          {
            *v41.i64 = -*v38.i64;
            *v38.i64 = -(*v38.i64 - trunc(*v38.i64 * -2.32830644e-10) * -4294967300.0);
            v42.f64[0] = NAN;
            v42.f64[1] = NAN;
            *v38.i64 = -*vbslq_s8(vnegq_f64(v42), v38, v41).i64;
          }

          if (*v38.i64 < 0.0)
          {
            v43 = --*v38.i64;
          }

          else
          {
            v43 = *v38.i64;
          }

          if (v43 <= v36)
          {
            v43 = v36;
          }
        }

        *(this + 27) = v43;
        *(this + 28) = v43;
        v96 = *(a2 + 3);
        v93[0] = 1;
        v94 = 0;
        v95 = 0;
        v45 = BlueFin::GlSystemTime::getSubBitAndEpochTime(&v96, v93, 1u);
        *(a2 + 3) = v45;
        v96 = v45;
        v93[0] = -117;
        v94 = 0;
        v95 = 453;
        *(a2 + 7) = BlueFin::GlSystemTime::getSubEpochTime(&v96, v93, 1u);
        *(this + 29) = *(this + 27);
        if (*(a2 + 9))
        {
          v96 = *(a2 + 3);
          v93[0] = 52;
          v94 = 0;
          v95 = 147;
          v47 = BlueFin::GlSystemTime::getSubBitTime(&v96, v93, 1u);
          v96 = *(a2 + 3);
          v93[0] = 52;
          v94 = 0;
          v95 = 147;
          v48 = BlueFin::GlSystemTime::getSubEpochTime(&v96, v93, 1u);
          v96 = *(a2 + 5);
          v93[0] = 52;
          v94 = 0;
          v95 = 147;
          v49 = BlueFin::GlSystemTime::getSubEpochTime(&v96, v93, 1u);
          v50 = v49 - v48;
          if (v49 - v48 < 0.0)
          {
            v50 = -(v49 - v48);
          }

          if (v50 > 0.0005)
          {
            if (v49 <= v48)
            {
              v47 = v47 + 0.001;
            }

            else
            {
              v47 = v47 + -0.001;
            }
          }

          v96 = v49 + v47;
          v93[0] = 52;
          v94 = 0;
          v95 = 147;
          v46 = BlueFin::GlSystemTime::getSubBitAndEpochTime(&v96, v93, 1u);
        }

        else
        {
          v46 = *(a2 + 3);
        }

        *(a2 + 5) = v46;
        goto LABEL_77;
      }

      v31 = 0.001;
    }

    else
    {
      v31 = -0.001;
    }

    *(a2 + 3) = v30 + v31;
    goto LABEL_27;
  }

LABEL_77:
  v66 = *(a2 + 2);
  if ((v66 & 2) != 0)
  {
    v67 = *(this + 27);
    if (v67 == -1)
    {
      v91 = "m_ulBitMeasTimeStampLsGps != INVALID_TIMESTAMP";
      DeviceFaultNotify("glme_clkmodmgr.cpp", 241, "GetClkMod", "m_ulBitMeasTimeStampLsGps != INVALID_TIMESTAMP");
      v92 = 241;
      goto LABEL_123;
    }

    v68 = v3 * 0.001;
    if ((v68 - v67) >= 600.0)
    {
      v66 &= 0xFFFFFFF9;
      *(a2 + 2) = v66;
    }
  }

  if ((v66 & 0x20) != 0)
  {
    v69 = *(this + 28);
    if (v69 == -1)
    {
      v91 = "m_ulBitMeasTimeStampLsGlns != INVALID_TIMESTAMP";
      DeviceFaultNotify("glme_clkmodmgr.cpp", 256, "GetClkMod", "m_ulBitMeasTimeStampLsGlns != INVALID_TIMESTAMP");
      v92 = 256;
      goto LABEL_123;
    }

    v70 = v3 * 0.001;
    if ((v70 - v69) >= 600.0)
    {
      v66 &= 0xFFFFFF5F;
      *(a2 + 2) = v66;
    }
  }

  if ((v66 & 0x422) == 0x400)
  {
    if (*(this + 29) != -1)
    {
      v74 = (*(**(this + 16) + 80))(*(this + 16));
      *v74.i64 = v73 * 0.001;
      *v75.i64 = *v74.i64 + trunc(*v74.i64 * 2.32830644e-10) * -4294967300.0;
      v76.f64[0] = NAN;
      v76.f64[1] = NAN;
      v77 = vnegq_f64(v76);
      *&v78 = vbslq_s8(v77, v75, v74).u64[0];
      if (*v74.i64 > 4294967300.0)
      {
        *v74.i64 = v78;
      }

      if (*v74.i64 < -4294967300.0)
      {
        *v72.i64 = -*v74.i64;
        *v74.i64 = -(*v74.i64 - trunc(*v74.i64 * -2.32830644e-10) * -4294967300.0);
        *v74.i64 = -*vbslq_s8(v77, v74, v72).i64;
      }

      if (*v74.i64 < 0.0)
      {
        v79 = --*v74.i64;
      }

      else
      {
        v79 = *v74.i64;
      }

      v71 = v3 * 0.001;
      if ((v71 - v79) >= 30.0)
      {
        *(a2 + 2) &= ~0x400u;
      }

      goto LABEL_96;
    }

    v91 = "m_ulEpochMeasTimeStampLsGal != INVALID_TIMESTAMP";
    DeviceFaultNotify("glme_clkmodmgr.cpp", 273, "GetClkMod", "m_ulEpochMeasTimeStampLsGal != INVALID_TIMESTAMP");
    v92 = 273;
LABEL_123:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_clkmodmgr.cpp", v92, v91);
  }

LABEL_96:
  v6 = *(a2 + 3);
  v9 = *(a2 + 3);
  v7 = *(a2 + 4);
  v8 = *(a2 + 5);
  v10 = *(a2 + 8);
  v11 = *(a2 + 5);
  v12 = *(a2 + 12);
  v13 = *(a2 + 7);
  LODWORD(v14) = *(a2 + 16);
  v16 = *(this + 18);
  v17 = *(v16 + 9856) - 1;
LABEL_97:
  v80 = v16 + 0x2000;
  v81 = (v3 - v6) / 1000.0;
  *(a2 + 3) = v3;
  v82 = v7;
  *(a2 + 3) = v9 - v81 * v7;
  v83 = v81;
  v84 = fabsf(v83);
  v85 = v10 + (v84 * v8);
  *(a2 + 8) = v85;
  *(a2 + 5) = v11 - v81 * v82;
  v86 = v12 + (v84 * v8);
  *(a2 + 12) = v86;
  *(a2 + 7) = v13 - v81 * v82;
  *(a2 + 16) = *&v14 + (v84 * v8);
  if (v17 > 3u || *(v80 + 1666) - 1 > 3)
  {
    *(v80 + 1667) = 0;
    v8 = v8 + (v84 * 5.0e-10);
    *(a2 + 5) = v8;
  }

  else
  {
    *(v80 + 1667) = 1;
  }

  v87 = *(this + 23);
  if (v8 > v87)
  {
    *(a2 + 5) = v87;
    v8 = v87;
  }

  v88 = (8 * (v85 < 0.00015152)) | ((v86 < 0.00030333) << 8) | (16 * (v8 < 0.000005)) | *(a2 + 2) & 0xFFFFFEE7;
  *(a2 + 2) = v88;
  v89 = v86;
  if (v85 > 0.001 || v89 > 0.001)
  {
    if (v85 > 0.001)
    {
      v88 &= 0xFFFFFFF9;
    }

    if (v89 > 0.001)
    {
      v88 &= 0xFFFFFF5F;
    }

    *(a2 + 2) = v88;
  }
}

uint64_t BlueFin::GlReqSm::TurnOffDataBitsIfNotNeeded(uint64_t this, double a2, int8x16_t a3)
{
  if ((*(*(this + 6272) + 26223) & 1) == 0)
  {
    v3 = this;
    v16 = v18;
    v17 = 8;
    v4 = 0uLL;
    memset(v18, 0, sizeof(v18));
    v5 = *(this + 6280);
    if (v5[644])
    {
      this = BlueFin::GlPeGnssTime::GetConversionTable((v5 + 652));
      *v4.i64 = *(this + 60);
      a3.i64[0] = 0x3F747AE147AE147BLL;
      v6 = *v4.i64 >= 0.005;
      v5 = *(v3 + 6280);
    }

    else
    {
      v6 = 1;
    }

    if (*(v3 + 4942))
    {
      v7 = 0;
      v8 = 0;
      v9 = v5[642];
      do
      {
        v15 = *(*(v3 + 4944) + v7);
        if (v15 - 175 >= 0xFFFFFFDC && !v6)
        {
          v10 = *(v3 + 6288);
          v21 = 7;
          v22 = 0;
          this = BlueFin::GlPeSvIdConverter::SvId2Gnss((v10 + 119744), &v15, &v21, v4, a3);
          v19 = v21;
          v20 = v22;
          if (v22 - 1 <= 0x3E)
          {
            this = BlueFin::GlPeAsstMgr::IsEphValid(*(v3 + 6288), &v15, v9, v4, a3);
            if (this)
            {
              this = BlueFin::GlPeAsstMgr::EphBeExpirationS(*(v3 + 6288), &v19, 1);
              if (this >= 0x3D)
              {
                *(v16 + ((v15 >> 3) & 0x1C)) |= 1 << v15;
              }
            }
          }
        }

        ++v8;
        v7 += 8;
      }

      while (v8 < *(v3 + 4942));
      if (*(v3 + 4942))
      {
        v11 = v16;
        v12 = *(v3 + 4942);
        v13 = (*(v3 + 4944) + 4);
        do
        {
          v14 = *(v13 - 2);
          if (v14)
          {
            *v13 = *v13 & 0xFFFFFFFD | (2 * (((*(v11 + ((v14 >> 3) & 0x1C)) >> (v14 & 0x1F)) & 1) == 0));
          }

          v13 += 2;
          --v12;
        }

        while (v12);
      }
    }
  }

  return this;
}

uint64_t BlueFin::GlReqSm::ReorderSigAidBasedOnSatAidElvAndLimitChannels(BlueFin::GlReqSm *this)
{
  v2 = 0;
  v81 = *MEMORY[0x29EDCA608];
  v3 = *(this + 789);
  v4 = this + 53562;
  memset(v80, 0, 364);
  do
  {
    v5 = &v79[v2];
    *v5 = 0;
    *(v5 + 1) = -1;
    *(v5 + 4) = 575;
    v2 += 12;
  }

  while (v2 != 1092);
  v6 = *(this + 784);
  v63 = *(v6 + 272);
  v7 = *(*(this + 805) + 32);
  v8 = *(v6 + 48);
  if ((v8 - 4) >= 5 && v8 != 2)
  {
    v64 = 0;
    goto LABEL_30;
  }

  if (*(v6 + 88) <= 38)
  {
    if (*(*(this + 786) + 120012) != 1 && v7 != 0)
    {
      BlueFin::GlSignalIdSet::GetSvIdSet((*(this + 790) + 184), v69);
      v65 = v67;
      v66 = 8;
      memset(v67, 0, sizeof(v67));
      for (i = 52; i != 66; ++i)
      {
        *(v67 + (i >> 5)) |= 1 << i;
      }

      BlueFin::GlSvIdSet::operator~(&v65, v68);
      BlueFin::GlSetBase::GlSetBase(&v70, v72, 8u, v69);
      v73 = &v75;
      v74 = 8;
      v75 = 0u;
      v76 = 0u;
      BlueFin::GlSetBase::OperatorBinaryAnd(&v70, &v73, v68);
      BlueFin::GlSetBase::operator=(&v70, &v73);
      v12 = 0;
      v72[0] = v75;
      v13 = (v70 + 4 * v71 - 4);
      v72[1] = v76;
      do
      {
        if (*v13)
        {
          v14 = *v13 - (((*v13 >> 1) & 0x5B6DB6DB) + ((*v13 >> 2) & 0x9249249));
          v12 = ((v14 + (v14 >> 3)) & 0xC71C71C7) + v12 - 63 * (((v14 + (v14 >> 3)) & 0xC71C71C7) / 0x3F);
        }

        --v13;
      }

      while (v13 >= v70);
      if (v12 >= 0xDu)
      {
        BlueFin::GlSignalIdSet::GetSignalIdSet(*(this + 790) + 184, 4, 2, &v77);
        if (*v77)
        {
LABEL_21:
          v15 = 15;
LABEL_28:
          v4[1322] = v15;
          goto LABEL_29;
        }

        if (v78 >= 2uLL)
        {
          v16 = v78 - 1;
          v17 = (v77 + 4);
          do
          {
            if (*v17++)
            {
              goto LABEL_21;
            }
          }

          while (--v16);
        }
      }
    }

    if (v4[1322])
    {
      v15 = v4[1322] - 1;
      goto LABEL_28;
    }
  }

LABEL_29:
  v64 = 1;
LABEL_30:
  if (!*(this + 6254))
  {
    BlueFin::GlMeSignalAidInfo::operator=(this + 6240, this + 4928);
  }

  v61 = *(*(this + 784) + 277);
  v77 = v3 + 9152;
  v78 = *(v3 + 9191) + 1;
  if (*(v3 + 9190) <= v78)
  {
    if ((v7 & 1) == 0)
    {
      goto LABEL_62;
    }

    v19 = 0;
    goto LABEL_56;
  }

  v19 = 0;
  v20 = 0;
  do
  {
    v21 = BlueFin::GlArrayIterator::Next(&v77);
    LOBYTE(v73) = v21;
    AidBySvId = BlueFin::GlPeSatAidInfo::GetAidBySvId(v3 + 32, &v73);
    if (AidBySvId)
    {
      v23 = *(this + 3127);
      if (*(this + 3127))
      {
        v24 = *(this + 782);
        while (1)
        {
          v25 = *v24;
          v24 += 4;
          if (v25 == v21)
          {
            break;
          }

          if (!--v23)
          {
            goto LABEL_50;
          }
        }

        if (!v7 || *(AidBySvId + 37) >= 3 && (*(AidBySvId + 3) != 4) | (v21 - 33 < 0x13) & v61)
        {
          if (v21 - 189 >= 0xFFFFFF44)
          {
            v28 = BlueFin::GlSvId::s_aucSvId2gnss[v21];
            if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v28] == 255)
            {
              v27 = 575;
              v26 = -1;
            }

            else
            {
              v26 = 0;
              v27 = BlueFin::GlSignalId::s_ausGnss2signalId[v28] + v21 - BlueFin::GlSvId::s_aucGnss2minSvId[v28];
            }
          }

          else
          {
            v26 = 0;
            v27 = 575;
          }

          v29 = &v79[12 * v19];
          *v29 = v21;
          *(v29 + 1) = v26;
          *(v29 + 4) = v27;
          *(v80 + v19++) = -*(AidBySvId + 37);
          if (*(AidBySvId + 3) != 4)
          {
            ++v20;
          }
        }
      }
    }

LABEL_50:
    ;
  }

  while (v78 < *(v77 + 38));
  if ((v7 & 1) == 0)
  {
LABEL_57:
    if (v19 >= 0x12u && *(*(this + 788) + 60928) >= 0x1Fu)
    {
      goto LABEL_59;
    }

LABEL_62:
    result = BlueFin::GlMeSignalAidInfo::operator=(this + 4928, this + 6240);
    goto LABEL_120;
  }

  if (v20 <= 0xBu)
  {
LABEL_56:
    if (*(*(this + 784) + 26321))
    {
      goto LABEL_59;
    }

    goto LABEL_57;
  }

LABEL_59:
  GlCustomLog(14, "SigAid sorted(%d), (%d) (%d) (%d) ", v19, *(this + 3127), 18, v63);
  GlCustomLog(14, "Blind disabled  ");
  v4[990] = *v4 ^ 1;
  *(this + 2471) = 0;
  BlueFin::GlSortFloats(v80, v19, &v77, v30);
  v31 = *(this + 788);
  if ((*(v31 + 60665) & 1) != 0 || (*(*(v31 + 17184) + 72))() >= 0x1389)
  {
    v32 = 3.0;
  }

  else
  {
    v32 = 45.0;
  }

  if (v19)
  {
    v34 = 0;
    v35 = v19;
    v36 = &v77;
    v37 = v19;
    while (1)
    {
      v38 = *v36++;
      v39 = *(v80 + v38);
      LOBYTE(v73) = v79[12 * v38];
      v40 = v73;
      if ((*v4 & 1) == 0 && (v73 - 1) >= 0x20u && (v73 - 52) > 0xDu)
      {
        goto LABEL_88;
      }

      if (v73 - 76 > 0x3E || ((1 << (v73 - 76)) & 0x7C0000000000001FLL) == 0)
      {
        v48 = (v73 - 52);
        v49 = v48 >= 0xED && v61 == 0;
        if (v49 || v48 <= 0xD && v4[1322] && v32 > -v39)
        {
          goto LABEL_88;
        }
      }

      else
      {
        v43 = *(this + 784);
        if (*(v43 + 26341) != 1 || *(v43 + 26294) == 1 && *(v43 + 88) >= 37)
        {
          goto LABEL_88;
        }
      }

      if (((v34 < 0x24) & ~v64) == 0 && v39 > -3.0)
      {
        result = GlCustomLog(14, "%c (%d)\n", 84, v34);
        goto LABEL_120;
      }

      GlCustomLog(14, "%d ", v73);
      v44 = *(this + 2471);
      if (v44 < *(this + 4940) && *(&BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + v40))
      {
        v45 = *(this + 618);
        *(this + 2471) = v44 + 1;
        v46 = v45 + 8 * v44;
        *v46 = v40;
        *(v46 + 4) = 14;
      }

      v47 = v34 + 1;
      if (v64 && BlueFin::GlSettingsImpl::DoesSvSupportBand5(*(this + 784), &v73))
      {
        v47 = v34 + 2;
      }

      if (v47 >= v63)
      {
        result = GlCustomLog(14, "%c (%d)\n", 84, v47);
        goto LABEL_120;
      }

      v34 = v47;
LABEL_88:
      if (!--v37)
      {
        result = GlCustomLog(14, "%c (%d)\n", 70, v34);
        v50 = 0;
        v51 = *(this + 2471);
        v62 = &BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion;
        while (1)
        {
          v52 = v79[12 * *(&v77 + v50)];
          if (v51)
          {
            v53 = *(this + 618);
            v54 = v51;
            while (1)
            {
              v55 = *v53;
              v53 += 4;
              if (v55 == v52)
              {
                break;
              }

              if (!--v54)
              {
                goto LABEL_102;
              }
            }
          }

          else
          {
LABEL_102:
            v56 = (v52 - 76) > 0x3E || ((1 << (v52 - 76)) & 0x7C0000000000001FLL) == 0;
            if (v56 || (v57 = *(this + 784), *(v57 + 26341) == 1) && (*(v57 + 26294) != 1 || *(v57 + 88) < 37) && v34 <= 0x23)
            {
              LOBYTE(v73) = v79[12 * *(&v77 + v50)];
              if (v51 < *(this + 4940) && v62[v52])
              {
                v58 = *(this + 618) + 8 * v51++;
                *(this + 2471) = v51;
                *v58 = v52;
                *(v58 + 4) = 14;
              }

              v59 = v34 + 1;
              if (v64)
              {
                result = BlueFin::GlSettingsImpl::DoesSvSupportBand5(*(this + 784), &v73);
                if (result)
                {
                  v59 = v34 + 2;
                }
              }

              v34 = v59;
              if (v59 >= v63)
              {
                goto LABEL_120;
              }
            }
          }

          if (++v50 == v35)
          {
            goto LABEL_120;
          }
        }
      }
    }
  }

  result = GlCustomLog(14, "%c (%d)\n", 70, 0);
LABEL_120:
  v60 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlReqSm::UpdateMPF(uint64_t this)
{
  v1 = *(this + 4942);
  if (*(this + 4942))
  {
    v2 = *(*(this + 6272) + 160);
    v3 = (*(this + 4944) + 4);
    do
    {
      *v3 = *v3 & 0xFFFFFF7F | (((*v2 >> 12) & 1) << 7);
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  return this;
}

uint64_t BlueFin::GlReqSm::AddSignalTypeFlag(BlueFin::GlReqSm *this, BlueFin::GlMeSignalAidInfo *a2)
{
  v65 = *MEMORY[0x29EDCA608];
  v4 = *(this + 784);
  v5 = *(v4 + 1024);
  v64[0] = *(v4 + 1008);
  v64[1] = v5;
  v6 = *(v4 + 48);
  v8 = v6 == 8 || (v6 & 0xFFFFFFFD) == 5;
  if (*(v4 + 88) < 39)
  {
    v9 = 0;
  }

  else
  {
    v9 = BlueFin::GlPeTimeManager::TimeKnown(*(this + 785), 0, 1u);
    v4 = *(this + 784);
  }

  v10 = *(v4 + 26294) == 1 && *(v4 + 88) > 36;
  v11 = *(v4 + 26295) == 1 && *(v4 + 88) > 37;
  v12 = **(v4 + 26232);
  v13 = *(v4 + 26300);
  v14 = *(*(this + 788) + 60928);
  if ((v12 & 0x800) != 0 && v13 == 1)
  {
    v15 = 0;
    LOBYTE(v16) = 0;
  }

  else
  {
    v16 = (v6 < 9) & (0x1F4u >> v6);
    v17 = v14 >= 0x1F;
    v18 = v14 < 0x1F;
    v19 = !v17 && v11;
    v20 = !v17 && v10;
    v21 = !v17 && v9;
    v22 = !v17 && v8;
    v23 = v13 == 2;
    v13 = v13 != 2 || v18;
    if (v23)
    {
      v24 = v19;
    }

    else
    {
      v24 = v11;
    }

    if (v23)
    {
      v25 = v20;
    }

    else
    {
      v25 = v10;
    }

    if (v23)
    {
      v26 = v21;
    }

    else
    {
      v26 = v9;
    }

    if (v23)
    {
      v27 = v22;
    }

    else
    {
      v27 = v8;
    }

    if ((v12 & 0x800) != 0)
    {
      v11 = v24;
    }

    else
    {
      v13 = 1;
    }

    if ((v12 & 0x800) != 0)
    {
      v10 = v25;
      v9 = v26;
      v15 = v27;
    }

    else
    {
      v15 = v8;
    }
  }

  v62 = this;
  v28 = *(this + 13722);
  if (v28 == 1)
  {
    v15 = 0;
    v29 = 0;
  }

  else
  {
    v29 = v16;
  }

  if (v28 == 2)
  {
    v30 = 0;
  }

  else
  {
    v30 = v13;
  }

  if (v28 == 2)
  {
    v11 = 0;
    v10 = 0;
  }

  v58 = v10;
  v31 = v28 != 2 && v9;
  v32 = v28 != 2 && v15;
  if (*(a2 + 14))
  {
    v33 = 0;
    v34 = 0;
    v57 = *(v62 + 789);
    v59 = v29;
    v60 = v10 | v30 ^ 1;
    v61 = v31 && v11;
    v35 = 4;
    v36 = BlueFin::GlSvId::s_aucSvId2gnss;
    do
    {
      v37 = *(a2 + 2);
      v38 = *(v37 + v35 - 4);
      v63 = *(v37 + v35 - 4);
      v39 = v36[v38];
      if (v39 == 4)
      {
        v40 = 0;
      }

      else
      {
        v40 = v30;
      }

      if (v40 == 1)
      {
        *(v37 + v35) |= 0x100u;
      }

      if (v39 > 3)
      {
        if (v39 != 4)
        {
          if (v39 == 5)
          {
            v43 = *(v37 + v35) | 0x600;
LABEL_101:
            *(v37 + v35) = v43;
            goto LABEL_108;
          }

LABEL_89:
          v43 = *(v37 + v35) & 0xFEFFF9FF;
          goto LABEL_101;
        }

        v45 = v30;
        v46 = v32;
        v47 = v36;
        v48 = v34;
        if ((v60 & 1) == 0)
        {
          *(v37 + v35) |= 0x100000u;
        }

        v49 = *(v62 + 784);
        if (BlueFin::GlSettingsImpl::DoesSvSupportBand5(v49, &v63))
        {
          v50 = *(v49 + 88);
          v51 = *(v37 + v35) | 0x400;
          v34 = v48;
          v52 = v48 >= 0xA && v50 <= 38;
          v53 = v58;
          if (v52)
          {
            v53 = 0;
          }

          if (v53)
          {
            v34 = (v48 + 1);
            v54 = *(v37 + v35) & 0xFFFEFAFF | 0x10400;
          }

          else
          {
            v54 = *(v37 + v35) & 0xFFFEFBFF | 0x400;
          }

          *(v37 + v35) = v54;
        }

        else
        {
          *(v37 + v35) &= 0xFFFEFBFF;
          v34 = v48;
        }

        v36 = v47;
        v32 = v46;
        v30 = v45;
        v29 = v59;
      }

      else
      {
        if (v39)
        {
          if (v39 != 3)
          {
            goto LABEL_89;
          }

          v41 = *(v37 + v35) | 0x400;
          *(v37 + v35) = v41;
          if (!v61)
          {
            v43 = v41 & 0xFEFFFFFF;
            goto LABEL_101;
          }

LABEL_77:
          AidBySvId = BlueFin::GlPeSatAidInfo::GetAidBySvId(v57 + 32, &v63);
          if (AidBySvId && (*(AidBySvId + 3) | 2) == 3 && (AidBySvId[24] & 8) != 0 && BlueFin::GlPeAsstMgr::EphBeExpirationS(*(v62 + 786), AidBySvId + 1, 1) >= 0x2D1)
          {
            *(*(a2 + 2) + v35) = *(*(a2 + 2) + v35) & 0xFEFFFEFF | 0x1000000;
          }

          goto LABEL_108;
        }

        v44 = *(v64 + v38 - 1);
        if (v44 == 2)
        {
          goto LABEL_108;
        }

        if (v44 != 4)
        {
          if (v44 == 3)
          {
            v43 = *(v37 + v35) | 0x400;
            goto LABEL_101;
          }

          goto LABEL_89;
        }

        *(v37 + v35) |= 0x400u;
        if (v61)
        {
          goto LABEL_77;
        }
      }

LABEL_108:
      if (v32)
      {
        if ((v29 & 1) == 0)
        {
          goto LABEL_115;
        }
      }

      else
      {
        *(*(a2 + 2) + v35) &= ~0x200u;
        if ((v29 & 1) == 0)
        {
LABEL_115:
          *(*(a2 + 2) + v35) &= ~0x400u;
          if (v31)
          {
            goto LABEL_112;
          }

LABEL_111:
          *(*(a2 + 2) + v35) &= ~0x1000000u;
          goto LABEL_112;
        }
      }

      if (!v31)
      {
        goto LABEL_111;
      }

LABEL_112:
      ++v33;
      v35 += 8;
    }

    while (v33 < *(a2 + 14));
  }

  if ((v29 & 1) == 0)
  {
    BlueFin::GlMeSignalAidInfo::RemoveConstellation(a2, 6);
  }

  v55 = *MEMORY[0x29EDCA608];

  return BlueFin::GlMeSignalAidInfo::RemoveAllNullSignals(a2);
}

uint64_t BlueFin::GlMeSrdAcqMgrSm::UpdateSignalAiding(BlueFin::GlMeSrdAcqMgrSm *this)
{
  v8 = 66;
  v2 = *(this + 4);
  v3 = *(this + 1);
  *(this + 4) = v3;
  do
  {
    v9 = 0;
    if (BlueFin::patch_dispatch(v3, this, &v8, &v9))
    {
      v3 = v9;
    }

    else
    {
      v3 = (*(this + 4))(this, &v8);
    }

    *(this + 4) = v3;
  }

  while (v3);
  *(this + 4) = v2;
  v4.n128_f64[0] = BlueFin::GlMeSrdAidingMgr::SetSignalAiding((this + 240), this + 2896, this + 2926, this + 2932, this + 2938, this + 2914, this + 2920);
  v5 = 0;
  v6 = this + 23080;
  do
  {
    result = (*(**&v6[v5] + 48))(*&v6[v5], v4);
    v5 += 8;
  }

  while (v5 != 80);
  return result;
}

uint64_t BlueFin::GlSetBase::Add(uint64_t this, int **a2)
{
  v2 = *(this + 8);
  if (v2 != *(a2 + 8))
  {
    DeviceFaultNotify("glutl_set.cpp", 573, "Add", "m_ucUlongSize == otSet.m_ucUlongSize");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_set.cpp", 573, "m_ucUlongSize == otSet.m_ucUlongSize");
  }

  if (*(this + 8))
  {
    v3 = *a2;
    v4 = *this;
    do
    {
      v5 = *v3++;
      *v4++ |= v5;
      --v2;
    }

    while (v2);
  }

  return this;
}

uint64_t BlueFin::GlSignalIdSet::setSignalIdLimits(BlueFin::GlSignalIdSet *this)
{
  ULong = BlueFin::GlSetBase::GetULong(this, 0);
  result = BlueFin::GlSetBase::SetULong(this, 0, ULong);
  v4 = (32 * (*(this + 8) & 0x3F) - 1);
  if (v4 >= 0x240)
  {
    v5 = 575;
    v6 = 575;
    do
    {
      v7 = (v6 >> 5);
      v8 = v6 & 0x1F;
      if ((v6 & 0x1F) != 0)
      {
        v9 = BlueFin::GlSetBase::GetULong(this, (v6 >> 5));
        result = BlueFin::GlSetBase::SetULong(this, v7, v9 & ~(-1 << v8));
        v5 -= v8;
      }

      else
      {
        result = BlueFin::GlSetBase::SetULong(this, (v6 >> 5), 0);
      }

      v6 = v5 + 32;
      v5 = (v5 + 32);
    }

    while (v5 < v4);
  }

  return result;
}

unsigned __int8 *BlueFin::GlSignalIdSet::RemoveSvIds(BlueFin::GlSignalIdSet *this, const BlueFin::GlSvIdSet *a2)
{
  v10 = *(a2 + 8);
  memcpy(v14, *a2, 4 * v10);
  v12 = 0;
  v11 = 0;
  v13 = v14[0];
  for (result = BlueFin::GlSetIterator::operator++(&v10); v11 != v10; result = BlueFin::GlSetIterator::operator++(&v10))
  {
    v4 = 0;
    v5 = v12;
    v6 = v12 - 189;
    v7 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType;
    do
    {
      if (v6 >= 0xFFFFFF44)
      {
        v8 = BlueFin::GlSvId::s_aucSvId2gnss[v5];
        if (v7[v8] != 255)
        {
          v9 = BlueFin::GlSignalId::s_ausGnss2signalId[v8] + v5 - BlueFin::GlSvId::s_aucGnss2minSvId[v8] + BlueFin::GlSvId::s_aucGnss2numSvId[v8] * v4;
          if (v9 <= 0x23Eu)
          {
            BlueFin::GlSetBase::Remove(this, v9);
          }
        }
      }

      ++v4;
      v7 += 7;
    }

    while (v4 != 4);
  }

  return result;
}

uint64_t BlueFin::GlArrayIterator::Next(BlueFin::GlArrayIterator *this)
{
  v2 = *(this + 8);
  v3 = *this;
  if (v2 >= *(v3 + 38))
  {
    v7 = "HasNext()";
    DeviceFaultNotify("glutl_array.cpp", 172, "Next", "HasNext()");
    v8 = 172;
    goto LABEL_6;
  }

  v4 = *(v3 + 24);
  *(this + 8) = v2 + 1;
  v5 = *(v3 + 36) + *(v4 + v2);
  if (((*(*v3 + 40))(v3, v5) & 1) == 0)
  {
    v7 = "m_potArray->Has(handle)";
    DeviceFaultNotify("glutl_array.cpp", 174, "Next", "m_potArray->Has(handle)");
    v8 = 174;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_array.cpp", v8, v7);
  }

  return v5;
}

uint64_t BlueFin::GlArray::Remove(BlueFin::GlArray *this, int a2)
{
  v2 = a2;
  result = BlueFin::GlArray::EnsureValidHandle(this, a2);
  v5 = *(this + 2);
  v6 = (v2 - *(this + 36));
  if (*(v5 + v6) != 255)
  {
    v7 = *(this + 39) + 1;
    *(this + 39) = v7;
    v8 = *(this + 38);
    if (v8 > v7)
    {
      v9 = *(this + 3);
      v10 = v7;
      v11 = (v9 + v7);
      v12 = v10 + 1;
      while (*v11 != v6)
      {
        ++v11;
        if (v8 == v12++)
        {
          goto LABEL_9;
        }
      }

      v14 = *(v5 + v6);
      *v11 = *(v9 + v10);
      *(*(this + 3) + *(this + 39)) = v14;
      v5 = *(this + 2);
    }

LABEL_9:
    *(v5 + v6) = -1;
  }

  return result;
}

uint64_t BlueFin::GlPeGloFcnOsnMgr::GetPossibleOsnsForFcn(BlueFin::GlPeGloFcnOsnMgr *this, int a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  *a3 = 0;
  *a4 = 0;
  v8 = 1;
  while (1)
  {
    v9 = v8;
    if (BlueFin::GlPeGloFcnOsnMgr::OSN2FCN(this, v8) == a2)
    {
      break;
    }

    ++v8;
    if (v9 >= 0x18)
    {
      v10 = 0;
      v8 = 25;
      goto LABEL_6;
    }
  }

  *a3 = v8;
  v10 = 1;
LABEL_6:
  while (v8 <= 0x17u)
  {
    if (BlueFin::GlPeGloFcnOsnMgr::OSN2FCN(this, ++v8) == a2)
    {
      *a4 = v8;
      return (v10 + 1);
    }
  }

  return v10;
}

BOOL BlueFin::GlPeEphemeris::Kepler(BlueFin::GlPeEphemeris *this, double *a2, double *a3, double *a4)
{
  v7 = 0;
  v8 = *this;
  *a3 = *this;
  while (1)
  {
    v9 = v8 - *this;
    v10 = *a2;
    v11 = v9 - v10 * sin(v8);
    v8 = v8 - v11;
    *a3 = v8;
    v12 = fabs(v11);
    if (v12 < 0.00000001)
    {
      break;
    }

    if (v7++ > 0x12)
    {
      GlCustomLog(14, "GlPeEphMgr::Kepler did not converge in %d iterations\n", 20);
      return v12 < 0.00000001;
    }
  }

  return v12 < 0.00000001;
}

double BlueFin::GlPeSatPosUtil::svvis(BlueFin::Matrix *a1, float64x2_t *a2, float64x2_t *a3, double *a4, const BlueFin::Matrix *a5, BlueFin::Matrix *a6, float *a7, float *a8)
{
  v38 = 0;
  v8 = v37;
  if (a5)
  {
    v9 = a5;
  }

  else
  {
    v9 = v37;
  }

  v10 = vsubq_f64(*a2, *a3);
  v11 = a2[1].f64[0] - a3[1].f64[0];
  v12 = sqrt(vaddvq_f64(vmulq_f64(v10, v10)) + v11 * v11);
  if (v12 == 0.0)
  {
    DeviceFaultNotify("glpe_satposif.h", 177, "svrange", "dGeometricRangeM != 0.0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_satposif.h", 177, "dGeometricRangeM != 0.0");
  }

  v16 = a1;
  v17 = v11 * (1.0 / v12);
  if (a5)
  {
    v8 = a5;
  }

  *(v8 + 16) = 0x300000001;
  *v9 = vmulq_n_f64(v10, 1.0 / v12);
  *(v8 + 2) = v17;
  if (a6 || a7 || a8)
  {
    v36 = 0;
    v18 = *a4;
    if (!*(a1 + 32) || vabdd_f64(*&v18, *(a1 + 17)) >= 0.001 || vabdd_f64(a4[1], *(a1 + 18)) >= 0.001 || vabdd_f64(a4[2], *(a1 + 19)) >= 100.0)
    {
      v19 = a4[1] * 0.0174532925;
      v20 = __sincos_stret(*&v18 * 0.0174532925);
      v21 = __sincos_stret(v19);
      v35[0] = -(v20.__sinval * v21.__cosval);
      v35[1] = -(v20.__sinval * v21.__sinval);
      v35[2] = v20.__cosval;
      v35[4] = -v21.__sinval;
      v35[5] = v21.__cosval;
      v35[6] = 0.0;
      v35[8] = -(v20.__cosval * v21.__cosval);
      v35[9] = -(v20.__cosval * v21.__sinval);
      v18 = 0x300000003;
      v35[10] = -v20.__sinval;
      v36 = 0x300000003;
      v16 = v35;
    }

    v34 = 0;
    if (a6)
    {
      v22 = a6;
    }

    else
    {
      v22 = v33;
    }

    BlueFin::Matrix::mult(v22, v9, 1, v16, *&v18);
    if (a8)
    {
      if (a6)
      {
        v23 = a6;
      }

      else
      {
        v23 = v33;
      }

      v24 = *(v23 + 32) == 1;
      v25 = 64;
      if (v24)
      {
        v25 = 16;
      }

      v26 = *(v22 + v25);
      *a8 = asinf(-v26) * 57.296;
    }

    if (a7)
    {
      v27 = v33;
      if (a6)
      {
        v27 = a6;
      }

      v24 = *(v27 + 32) == 1;
      v28 = 32;
      if (v24)
      {
        v28 = 8;
      }

      v29 = *(v22 + v28);
      v30 = *v22;
      v31 = atan2f(v29, v30);
      *a7 = fmodf(v31 + 6.2832, 6.2832) * 57.296;
    }
  }

  return v12;
}

uint64_t BlueFin::GlPeGloFcnOsnMgr::checkForDuplicateOsns(uint64_t this, int a2, unsigned int a3)
{
  v4 = this;
  v5 = a3;
  v6 = this + 20 * a3 + 432;
  v7 = a3 - 7;
  v8 = (this + 448);
  v9 = -7;
  v10 = 14;
  do
  {
    if (v5)
    {
      v11 = *(v8 - 1);
      if (v11)
      {
        if ((a2 - *(v8 - 3)) >= BlueFin::GlPeGloFcnOsnMgr::m_aulMaxFcnToOsnMs[v11])
        {
          goto LABEL_13;
        }

        v12 = *(v8 - 8);
        if (v12 != *(v6 + 8))
        {
          goto LABEL_14;
        }

        v13 = *(v6 + 12);
        if (v11 == 1 && v13 == 1)
        {
          v18 = *(v8 - 8);
          v14 = (*(**(v4 + 8) + 312))(*(v4 + 8), &v18);
          v15 = "";
          if (v14)
          {
            (*(**(v4 + 8) + 288))(*(v4 + 8), &v18, 0);
            v15 = " and reported a bad decode";
          }

          *(v6 + 12) = 0;
          *(v6 + 16) = 1;
          *(v8 - 1) = 0;
          *v8 = 1;
          this = GlCustomLog(12, "FCN2OSN: LMS:%u  FCN:%+d  Msg: Duplicate OSN %d found on two verified SVs! Reset both caches%s.  CmpFCN:%d  CmpSrc:%d\n", a2, v7, *(v6 + 8), v15, v9, 0);
        }

        else
        {
          this = GlCustomLog(13, "FCN2OSN: LMS:%u  FCN:%+d  Msg: Duplicate OSN %d found on unverified data. NewDataSrc:%d  CmpFCN:%d  CmpSrc:%d\n", a2, v7, v12, v13, v9, v11);
          v16 = *(v8 - 1);
          if (*(v6 + 12) == 1)
          {
            if (v16 == 1)
            {
              goto LABEL_14;
            }

LABEL_13:
            *(v8 - 1) = 0;
            goto LABEL_14;
          }

          if (v16 == 1)
          {
            *(v6 + 12) = 0;
            if (*(v8 - 1) == 1)
            {
              goto LABEL_14;
            }
          }

          else
          {
            *(v6 + 16) = 1;
          }

          *v8 = 1;
        }
      }
    }

LABEL_14:
    v8 += 20;
    --v5;
    ++v9;
    --v10;
  }

  while (v10);
  return this;
}

uint64_t BlueFin::GlPeGnssL5HealthData::getL5HealthData(uint64_t a1, unsigned int *a2)
{
  v8[7] = *MEMORY[0x29EDCA608];
  v8[0] = a1;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = a1 + 384;
  v8[4] = a1 + 504;
  v8[5] = a1 + 1260;
  v8[6] = a1 + 1692;
  v2 = *a2;
  if (v2 > 6 || (v3 = *(a2 + 4), v3 - 1 > 0x3E) || (v4 = v8[v2]) == 0)
  {
LABEL_19:
    result = 0;
    goto LABEL_20;
  }

  result = 0;
  if (v2 > 2)
  {
    if (v2 > 4)
    {
      if (v2 == 5)
      {
        v6 = 36;
      }

      else
      {
        v6 = 14;
      }
    }

    else
    {
      if (v2 != 3)
      {
        goto LABEL_21;
      }

      v6 = 10;
    }

LABEL_18:
    if (v3 <= v6)
    {
LABEL_21:
      result = v4 + 12 * *(a2 + 4) - 12;
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  switch(v2)
  {
    case 0:
      v6 = 32;
      goto LABEL_18;
    case 1:
      v6 = 19;
      goto LABEL_18;
    case 2:
      v6 = 24;
      goto LABEL_18;
  }

LABEL_20:
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlPeAlmMgr::GetSatPos(double a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  if (*(a3 + 104) == 1)
  {
    a5 = 1;
  }

  if (fabs(a1) <= 15724800.0)
  {
    v7 = 1;
  }

  else
  {
    v7 = a5;
  }

  if (v7 == 1)
  {
    v9 = a3 + 8;
    v10 = *(a3 + 8);
    v11 = __sincos_stret(*(a3 + 24));
    v12 = __sincos_stret(*(v9 + 48));
    v13 = *(v9 + 32) * *(v9 + 32);
    v33 = sqrt(v13 * (1.0 - v10 * v10) * 3.986005e14);
    v35 = *(v9 + 56) + sqrt(3.986005e14 / (v13 * (v13 * v13))) * a1;
    v34 = 0.0;
    BlueFin::GlPeEphemeris::Kepler(&v35, v9, &v34, v14);
    v15 = __sincos_stret(v34);
    v16 = *v9;
    v17 = 1.0 - v16 * v16;
    v18 = atan2(v15.__sinval * sqrt(v17), v15.__cosval - *v9);
    v19 = v18 + *(v9 + 48);
    v20 = v13 * (v17 / (v16 * cos(v18) + 1.0));
    v21 = __sincos_stret(v19);
    v22 = v21.__cosval * v20;
    v23 = v21.__sinval * v20;
    v24 = *(v9 + 24) + -0.0000729211515;
    LODWORD(v25) = *(v9 + 8);
    v26 = __sincos_stret(*(v9 + 40) + v24 * a1 + v25 * -0.0000729211515);
    v27 = v22 * v26.__cosval - v11.__cosval * v23 * v26.__sinval;
    v28 = v11.__cosval * v23 * v26.__cosval + v22 * v26.__sinval;
    *a4 = v27;
    *(a4 + 8) = v28;
    v29 = -3.986005e14 / v33 * (v21.__sinval + v16 * v12.__sinval);
    v30 = v11.__cosval * (-3.986005e14 / v33 * (v21.__cosval + v16 * v12.__cosval));
    *(a4 + 16) = v11.__sinval * v23;
    *(a4 + 24) = v30 * v26.__sinval + v26.__cosval * v29 - v24 * v28;
    *(a4 + 32) = v26.__sinval * v29 - v26.__cosval * v30 + v24 * v27;
    *(a4 + 40) = -(v30 * v11.__sinval) / v11.__cosval;
    v31 = *(v9 + 72);
    *(a4 + 48) = *(v9 + 64) + v31 * a1;
    *(a4 + 56) = v31;
    *(a4 + 64) = 4;
  }

  return v7;
}

BOOL BlueFin::GlGnssSet::Missing(uint64_t a1, int *a2)
{
  if (*a2 > 6 || (v2 = *(a2 + 4), (v2 - 1) >= 0x3F))
  {
    DeviceFaultNotify("glgnss.cpp", 293, "Missing", "rtGnss.isValid()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glgnss.cpp", 293, "rtGnss.isValid()");
  }

  return ((*(*(*(a1 + 168) + 24 * *a2) + ((v2 >> 3) & 0x1C)) >> (v2 & 0x1F)) & 1) == 0;
}

uint64_t BlueFin::GlPeAsstMgr::computeAzElCommon(uint64_t *a1, unsigned int *a2, unsigned int a3, __int128 *a4, uint64_t a5, _DWORD *a6, float *a7)
{
  if (a6)
  {
    *a6 = 0;
  }

  if (a7)
  {
    *a7 = -90.0;
  }

  if (!*(*a1 + 2576))
  {
    return 0;
  }

  v26 = 0uLL;
  v27 = 0;
  v24 = 0uLL;
  v25 = 0;
  if (!a4)
  {
    if (*(a1 + 25) != -1)
    {
      v26 = *(a1 + 9);
      v27 = a1[20];
      v24 = *(a1 + 21);
      v25 = a1[23];
      goto LABEL_10;
    }

    return 0;
  }

  v26 = *a4;
  v27 = *(a4 + 2);
  BlueFin::ecef2lla(&v26, &v24);
LABEL_10:
  if (a3 == -7200001)
  {
    a3 = *(*a1 + 2568);
  }

  v23 = 0.0;
  BlueFin::GlPeSvIdConverter::Gnss2SvId((a1 + 14968), a2, &v21);
  BlueFin::GlPeTimeManager::GetAvgFlightTimeMs(*a1, &v21, &v23, &v22);
  v13 = a3;
  if (a3 <= 0xFF9222FE)
  {
    v13 = a3;
  }

  v20 = 0;
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  v14 = a1[4];
  v17 = v23 * 0.001;
  v15 = (*(*v14 + 40))(v14, a2, &v17, a5, v18, v13 - v23);
  if (v15)
  {
    (*(*a1[4] + 80))(a1[4], v18, &v26, &v24, 0, 0, a6, a7);
    if (*a7 < 0.0)
    {
      (*(*a1[4] + 64))(a1[4], &v21, *a7);
    }
  }

  return v15;
}

uint64_t BlueFin::GlPeTimeManager::GetAvgFlightTimeMs(uint64_t result, unsigned __int8 *a2, uint64_t *a3, int *a4)
{
  v4 = *a2;
  v5 = BlueFin::GlSvId::s_aucSvId2gnss[v4];
  if (v5 <= 2)
  {
    if (!BlueFin::GlSvId::s_aucSvId2gnss[v4])
    {
      v11 = 12000;
      v10 = 0x4053400000000000;
      goto LABEL_19;
    }

    if (v5 != 1)
    {
      if (v5 != 2)
      {
        return result;
      }

      v11 = 11000;
      v10 = 0x4052400000000000;
      goto LABEL_19;
    }

    v11 = 12000;
LABEL_18:
    v10 = 0x4060200000000000;
    goto LABEL_19;
  }

  if (BlueFin::GlSvId::s_aucSvId2gnss[v4] > 4u)
  {
    if (v5 == 5)
    {
      v11 = 11000;
      v10 = 0x4055C00000000000;
      goto LABEL_19;
    }

    if (v5 != 6)
    {
      return result;
    }

LABEL_13:
    v11 = 11000;
    goto LABEL_18;
  }

  if (v5 == 3)
  {
    v11 = 22000;
    goto LABEL_18;
  }

  if (v5 != 4)
  {
    return result;
  }

  v6 = *(result + 40);
  v7 = v4 >> 5;
  v8 = *(*(v6 + 8) + 4 * (v4 >> 5));
  v9 = 1 << (v4 & 0x1F);
  if ((v9 & v8) != 0)
  {
    goto LABEL_13;
  }

  v10 = qword_298A45D00[(v9 & *(*(v6 + 56) + 4 * v7)) == 0];
  v11 = 11000;
LABEL_19:
  *a3 = v10;
  *a4 = v11;
  return result;
}

_BYTE *BlueFin::GlPeGnssSatPos::GlPeGnssSatPos(_BYTE *a1, uint64_t a2, unsigned int *a3, int a4, char a5, uint64_t a6, double a7, double a8)
{
  *a1 = 0;
  v19 = a5;
  Mgr = BlueFin::GlPeGnssEphemerisMgr::GetMgr((a2 + 384), a4);
  if (Mgr)
  {
    v14 = Mgr;
    v15 = (*(*Mgr + 112))(Mgr, &v19, 1);
    if (v15)
    {
      v16 = v15;
      if (!(*(*v14 + 72))(v14, v15, 0, a7))
      {
        BlueFin::GlPeTimeManager::GetTime(a3, a7, 0, v18);
        *a1 = (*(*v16 + 112))(v16, v18, a6, a8);
      }
    }
  }

  return a1;
}

uint64_t BlueFin::GlPeSatPos::GetSatPosInternal(BlueFin::GlPeTimeMgrUtil *DefaultAlmSatPos, unsigned __int8 *a2, double *a3, int *a4, uint64_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, int8x16_t a9, int8x16_t a10)
{
  v14 = DefaultAlmSatPos;
  v15 = *a4;
  v43 = a6;
  if ((*a4 & 0x20) != 0)
  {
    *a9.i64 = *a6.i64 + trunc(*a6.i64 * 2.32830644e-10) * -4294967300.0;
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    v17 = vnegq_f64(v16);
    v18 = vbslq_s8(v17, a9, a6).u64[0];
    if (*a6.i64 <= 4294967300.0)
    {
      v19 = *a6.i64;
    }

    else
    {
      v19 = *&v18;
    }

    if (v19 < -4294967300.0)
    {
      *a8.i64 = -v19;
      *a6.i64 = -(v19 - trunc(v19 * -2.32830644e-10) * -4294967300.0);
      v19 = -*vbslq_s8(v17, a6, a8).i64;
    }

    if (v19 < 0.0)
    {
      v20 = --v19;
    }

    else
    {
      v20 = v19;
    }

    DefaultAlmSatPos = BlueFin::GlPeAlmMgr::GetDefaultAlmSatPos(*(DefaultAlmSatPos + 2215) + 34112, (a2 + 4), v20, a5);
    if (DefaultAlmSatPos)
    {
      return 1;
    }

    v15 = *a4;
    a6 = v43;
  }

  v21 = v15;
  if ((v15 & 0x4A) != 0)
  {
    v22 = *(v14 + 2215);
    v23 = *a3;
    if ((v15 & 0x80) == 0 && (*(v22 + 120021) & 1) == 0)
    {
      v24 = *a2;
      if (v24 >= 0xBD)
      {
        DeviceFaultNotify("glpe_satpos.cpp", 390, "getMiniEph", "*rtSvID <= MAX_SVID");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_satpos.cpp", 390, "*rtSvID <= MAX_SVID");
      }

      v25 = *(v14 + v24 + 17512);
      if (v25 <= 0x5A)
      {
        v26 = *(v14 + 24 * v25 + 8);
        if (((*a6.i64 - v26) + 15000) <= 0x6F54)
        {
          v27 = v14 + 192 * v25 + 40;
          *(a5 + 64) = *(v27 + 12);
          v28 = (v26 + 15000.0 - *a6.i64) / 15000.0;
          v29 = v28 * 0.5 * (v28 + -1.0);
          v30 = *(v27 + 32) + v28 * *(v27 + 40) + v29 * *(v27 + 48);
          v31 = *(v27 + 56) + v28 * *(v27 + 64) + v29 * *(v27 + 72);
          v32 = *(v27 + 80) + v28 * *(v27 + 88) + v29 * *(v27 + 96);
          v33 = v30 + v31 * 0.0000729211515 * v23;
          if (v23 != 0.0)
          {
            v31 = v31 + v30 * -0.0000729211515 * v23;
            v30 = v33;
          }

          *a5 = v30;
          *(a5 + 8) = v31;
          *(a5 + 16) = v32;
          v34 = 0.0;
          v35 = 0.0;
          v36 = 0.0;
          if ((v21 & 0x10) == 0)
          {
            v36 = *(v27 + 104) + v28 * *(v27 + 112) + v29 * *(v27 + 120);
            v35 = *(v27 + 128) + v28 * *(v27 + 136) + v29 * *(v27 + 144);
            v34 = *(v27 + 152) + v28 * *(v27 + 160) + v29 * *(v27 + 168);
            if (v23 != 0.0)
            {
              v37 = v36 * -0.0000729211515;
              v36 = v36 + v35 * 0.0000729211515 * v23;
              v35 = v35 + v37 * v23;
            }
          }

          *(a5 + 24) = v36;
          *(a5 + 32) = v35;
          *(a5 + 40) = v34;
          *(a5 + 48) = *(v27 + 176) + v28 * *(v27 + 184);
          *(a5 + 56) = *(v27 + 184) * 0.0666666667;
          return 1;
        }
      }
    }

    DefaultAlmSatPos = BlueFin::GlPeGnssSatPos::GlPeGnssSatPos(&v44, v22, *(v14 + 2216), *(a2 + 1), a2[8], a5, *a6.i64, v23);
    if (v44)
    {
      return 1;
    }

    v15 = *a4;
    a6 = v43;
  }

  if ((v15 & 4) == 0)
  {
    return 0;
  }

  v39 = *(v14 + 2215);
  v40 = *(a2 + 1);
  v41 = a2[8];
  v42 = BlueFin::GlPeTimeMgrUtil::DoubleToLms(DefaultAlmSatPos, a6, a7, a8, *a9.i64, a10);
  return BlueFin::GlPeAlmMgr::GetSatPos(v39 + 34112, v40, v41, v42, a5);
}

uint64_t BlueFin::GlPeSatPos::GetSatPos(BlueFin::GlPeTimeMgrUtil *a1, uint64_t a2, double *a3, int *a4, uint64_t a5, double a6)
{
  BlueFin::GlPeSvIdConverter::Gnss2SvId((*(a1 + 2215) + 119744), a2, &v21);
  if (!v21)
  {
    return 0;
  }

  v18[0] = v21;
  v19 = *a2;
  v20 = *(a2 + 4);
  *v12.i64 = a6;
  return BlueFin::GlPeSatPos::GetSatPosInternal(a1, v18, a3, a4, a5, v12, v13, v14, v15, v16);
}

void BlueFin::GlPeRangeAidGen::AddRngAid(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, double a5)
{
  if ((*(*(a1 + 19032) + ((*a2 >> 3) & 0x1C)) >> (*a2 & 0x1F)))
  {
    return;
  }

  BlueFin::GlPeSatAidInfo::Add(a1 + 32, a2);
  if (!v10)
  {
    return;
  }

  v11 = v10;
  v77 = 0;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0;
  v12 = *a1;
  v64 = 0.0;
  BlueFin::GlPeTimeManager::GetAvgFlightTimeMs(v12, a2, &v64, v62);
  v13 = v64 * 0.001;
  v71 = v64 * 0.001;
  if ((*(**(a1 + 8) + 24))(*(a1 + 8), a2))
  {
    *v11 = *a2;
    *(v11 + 4) = *a3;
    *(v11 + 8) = *(a3 + 4);
    *(v11 + 24) |= 0x100u;
    *(v11 + 72) = 0;
    *(v11 + 12) = 0;
    return;
  }

  v14 = (*(**(a1 + 8) + 32))(*(a1 + 8), a2, &v71, a4, &v72, a5 + v13 * -1000.0);
  if ((v14 & 1) == 0)
  {
    goto LABEL_48;
  }

  if (v76 == 4 && (**(*(a1 + 18056) + 160) & 4) == 0)
  {
    v20 = *a2 - 1;
    v21 = *(a1 + 18272 + 4 * v20);
    v22 = v21;
    *v16.i64 = v21;
    if (v21 <= 0xFF9222FE)
    {
      v22 = v21;
    }

    if (v21 == -1 || (v23 = a5 - v22, v16.i64[0] = 0x41224F8000000000, v23 > 600000.0))
    {
      *v15.i64 = a5;
      *(a1 + 18272 + 4 * v20) = BlueFin::GlPeTimeMgrUtil::DoubleToLms(v14, v15, v16, v17, v18, v19);
    }

    else if (v23 > 300000.0)
    {
LABEL_48:
      BlueFin::GlPeSatAidInfo::Remove(a1 + 32, a2);
      return;
    }
  }

  v69 = 0uLL;
  v70 = 0.0;
  v24 = *(a1 + 18048);
  if (*(v24 + 100) == -1)
  {
    v55 = "bGotXYZ";
    DeviceFaultNotify("glpe_raidgen.cpp", 974, "AddRngAid", "bGotXYZ");
    v56 = 974;
    goto LABEL_51;
  }

  v69 = *(v24 + 144);
  v25 = *(v24 + 160);
  v70 = v25;
  v67 = *(v24 + 168);
  v68 = *(v24 + 184);
  v66 = 0;
  v63 = 0;
  v61 = 0;
  v57 = v69;
  v26 = vsubq_f64(v72, v69);
  v27 = vmulq_f64(v26, v26);
  v28 = (*&v73 - v25) * (*&v73 - v25);
  v29 = 1;
  while (1)
  {
    v71 = sqrt(vaddvq_f64(v27) + v28) / 299792458.0;
    (*(**(a1 + 8) + 32))(*(a1 + 8), a2, &v71, a4, &v72, a5 + v71 * -1000.0);
    if ((v29 & 1) == 0)
    {
      break;
    }

    v29 = 0;
    v30 = vsubq_f64(v72, v57);
    v27 = vmulq_f64(v30, v30);
    v28 = (*&v73 - v25) * (*&v73 - v25);
  }

  v35 = (*(**(a1 + 8) + 80))(*(a1 + 8), &v72, &v69, &v67, &v64, v62, &v61 + 4, &v61);
  v36 = 0;
  *(v11 + 32) = -(v35 + *&v75 * -299792458.0);
  v37 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType;
  v38 = BlueFin::GlSvId::s_aucSvId2gnss[*a2];
  do
  {
    if (*(*(a1 + 18056) + v38 + 256) >> v36)
    {
      v58[0] = *a2;
      v59 = v36;
      v60 = 575;
      if (v58[0] - 189 >= 0xFFFFFF44)
      {
        v39 = BlueFin::GlSvId::s_aucSvId2gnss[v58[0]];
        if (v37[v39] == 255)
        {
          v59 = -1;
        }

        else
        {
          v60 = BlueFin::GlSignalId::s_ausGnss2signalId[v39] + v58[0] - BlueFin::GlSvId::s_aucGnss2minSvId[v39] + v36 * BlueFin::GlSvId::s_aucGnss2numSvId[v39];
        }
      }

      *v31.i32 = BlueFin::GlPeComputeZRH::getCarrierBasedBiases(*(a1 + 19360), v58, *(*a1 + 2568), &v67, (v11 + 16), *(&v61 + 1), *&v61);
      *(v11 + 4 * v36 + 56) = -*v31.i32;
    }

    ++v36;
    v37 += 7;
  }

  while (v36 != 4);
  *v31.i64 = v64 * *(&v73 + 1) + v65.f64[0] * v74.f64[0] + v65.f64[1] * v74.f64[1] - *(&v75 + 1) * 299792458.0;
  *v31.i32 = *v31.i64;
  *v31.i32 = -*v31.i32;
  *(v11 + 44) = v31.i32[0];
  v71 = v35 / 299792458.0;
  if ((v76 - 1) < 3)
  {
    goto LABEL_31;
  }

  if (v76 != 4)
  {
    if (v76 == 5)
    {
LABEL_31:
      v40 = *(a1 + 18048);
      v41 = *(v40 + 80);
      v42 = *(v40 + 88);
      (*(**(a1 + 8) + 32))(*(a1 + 8), a2, &v71, a4, &v72, a5 + -1000.0);
      (*(**(a1 + 8) + 80))(*(a1 + 8), &v72, &v69, &v67, &v64, 0, 0, 0);
      v43 = vmulq_f64(v65, v74);
      v44 = v64 * *(&v73 + 1) + v43.f64[0] + v43.f64[1];
      (*(**(a1 + 8) + 32))(*(a1 + 8), a2, &v71, a4, &v72, a5 + 1000.0);
      (*(**(a1 + 8) + 80))(*(a1 + 8), &v72, &v69, &v67, &v64, v62, &v61 + 4, &v61);
      v45 = vmulq_f64(v65, v74);
      v46 = (v64 * *(&v73 + 1) + v45.f64[0] + v45.f64[1] - v44) * -0.5;
      v47 = *(v11 + 24) | 0x20;
      v48 = __sincos_stret(*&v61 * 0.0174532925);
      *v31.i32 = (v42 * v48.__sinval + v48.__cosval * v41) / 299792458.0;
      *(v11 + 40) = v31.i32[0];
      *v31.i64 = sqrt(v42 * v42 + v41 * v41) * 0.00019 / 299792458.0;
      *v31.i32 = *v31.i64;
      *(v11 + 48) = v31.i32[0];
      *(v11 + 24) = v47;
      v31.i32[0] = *(v11 + 44);
      goto LABEL_32;
    }

    v55 = "false";
    DeviceFaultNotify("glpe_raidgen.cpp", 1086, "AddRngAid", "false");
    v56 = 1086;
LABEL_51:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_raidgen.cpp", v56, v55);
  }

  *(v11 + 40) = 980151802;
  *(v11 + 48) = 869711765;
  v47 = *(v11 + 24) & 0xFFFFFFDF;
  *(v11 + 24) = v47;
  v46 = 0.0;
LABEL_32:
  *(v11 + 32) = *(v11 + 32) / 299792458.0;
  v49 = *v31.i32 / 299790000.0;
  *(v11 + 44) = *v31.i32 / 299790000.0;
  *v31.i32 = v46 / 299790000.0;
  *(v11 + 52) = v46 / 299790000.0;
  *v32.i64 = fabsf(v49);
  if (*v32.i64 > 0.000003 || (*v31.i64 = fabsf(*v31.i32), v32.i64[0] = 0x3E312E0BE826D695, *v31.i64 > 0.000000004))
  {
    if (v76 == 1)
    {
      BlueFin::GlPeAsstMgr::MarkUnverified(*(a1 + 18048), a2, v31, v32);
    }

    goto LABEL_48;
  }

  v50 = 0.5;
  *v32.i64 = *(&v61 + 1) + 0.5;
  *v34.i64 = *v32.i64 + trunc(*v32.i64 * 2.32830644e-10) * -4294967300.0;
  v51.f64[0] = NAN;
  v51.f64[1] = NAN;
  v52 = vnegq_f64(v51);
  v34.i64[0] = vbslq_s8(v52, v34, v32).u64[0];
  if (*v32.i64 > 4294967300.0)
  {
    v32.i64[0] = v34.i64[0];
  }

  if (*v32.i64 < -4294967300.0)
  {
    *v33.i64 = -*v32.i64;
    *v32.i64 = -(*v32.i64 - trunc(*v32.i64 * -2.32830644e-10) * -4294967300.0);
    *v32.i64 = -*vbslq_s8(v52, v32, v33).i64;
  }

  if (*v32.i64 < 0.0)
  {
    v53 = --*v32.i64;
  }

  else
  {
    LOWORD(v53) = *v32.i64;
  }

  *(v11 + 72) = v53;
  if (*&v61 < 0.0)
  {
    v50 = -0.5;
  }

  *(v11 + 74) = (v50 + *&v61);
  *v11 = *a2;
  *(v11 + 4) = *a3;
  *(v11 + 8) = *(a3 + 4);
  *(v11 + 20) = 0;
  v54 = v76;
  if (v76 == 2)
  {
    v54 = 1;
  }

  *(v11 + 12) = v54;
  *(v11 + 24) = v47 | 0xDE;
}

uint64_t BlueFin::GlArray::Add(BlueFin::GlArray *this, int a2)
{
  v2 = a2;
  BlueFin::GlArray::EnsureValidHandle(this, a2);
  v4 = v2 - *(this + 36);
  v5 = *(this + 2);
  v6 = v4;
  v7 = *(v5 + v4);
  if (v7 == 255)
  {
    v9 = *(this + 39);
    if (v9 == 255)
    {
      return 0;
    }

    else
    {
      if (v9 >= *(this + 38))
      {
        DeviceFaultNotify("glutl_array.cpp", 88, "Add", "m_ucStackTop < m_ucNumSlots");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_array.cpp", 88, "m_ucStackTop < m_ucNumSlots");
      }

      *(v5 + v4) = *(*(this + 3) + *(this + 39));
      *(*(this + 3) + (*(this + 39))--) = v4;
      BlueFin::GlArray::EnsureValidSlot(this, *(*(this + 2) + v4));
      v10 = *(this + 8);
      v11 = *(this + 1);
      v12 = v10 * *(*(this + 2) + v6);
      bzero((v11 + v12), v10);
      return v11 + v12;
    }
  }

  else
  {
    BlueFin::GlArray::EnsureValidSlot(this, v7);
    return *(this + 1) + *(this + 8) * *(*(this + 2) + v6);
  }
}

double BlueFin::GlPeSatAidInfo::Add(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a2;
  BlueFin::GlArray::EnsureValidHandle(a1 + 9120, v4);
  v5 = *(*(a1 + 9136) + v4 - *(a1 + 9156));
  v6 = BlueFin::GlArray::Add((a1 + 9120), *a2);
  if (v6)
  {
    if (v5 == 255)
    {
      *v6 = 0;
      *(v6 + 4) = 7;
      *(v6 + 8) = 0;
      *&result = 4;
      *(v6 + 12) = xmmword_298A31A60;
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      *(v6 + 80) = 0;
      *(v6 + 88) = 0xBF80000000000000;
      *(v6 + 64) = 0;
      *(v6 + 72) = 0;
      *(v6 + 48) = 0;
      *(v6 + 56) = 0;
    }
  }

  return result;
}

void *BlueFin::GlPeSatPos::SatMarkedUnhealthy(uint64_t a1, unsigned __int8 *a2, int8x16_t a3, int8x16_t a4)
{
  v5 = *(a1 + 17720);
  v8 = 7;
  v9 = 0;
  BlueFin::GlPeSvIdConverter::SvId2Gnss((v5 + 119744), a2, &v8, a3, a4);
  v6 = v9;
  if (v9 - 1 > 0x3E)
  {
    return 0;
  }

  result = BlueFin::GlPeGnssEphemerisMgr::GetMgr((*(a1 + 17720) + 384), v8);
  if (result)
  {
    return ((*(*(*(*result + 144))(result) + ((v6 >> 3) & 0x1C)) >> (v6 & 0x1F)) & 1);
  }

  return result;
}

uint64_t BlueFin::GlPeSatPos::GetSatPos(BlueFin::GlPeTimeMgrUtil *a1, unsigned __int8 *a2, double *a3, int *a4, uint64_t a5, int8x16_t a6, int8x16_t a7)
{
  v10 = a6.i64[0];
  v13 = *(a1 + 2215);
  v22 = 7;
  LOBYTE(v23) = 0;
  BlueFin::GlPeSvIdConverter::SvId2Gnss((v13 + 119744), a2, &v22, a6, a7);
  result = 0;
  v20 = v23;
  if (v23 - 1 <= 0x3E)
  {
    v21 = v22;
    LOBYTE(v22) = *a2;
    v23 = v21;
    v24 = v20;
    v14.i64[0] = v10;
    return BlueFin::GlPeSatPos::GetSatPosInternal(a1, &v22, a3, a4, a5, v14, v15, v16, v17, v18);
  }

  return result;
}

double BlueFin::GlPeComputeZRH::getCarrierBasedBiases(void *a1, unsigned __int8 *a2, unsigned int a3, __int128 *a4, _DWORD *a5, float a6, float a7)
{
  InterSystemHwBiasM = BlueFin::GlPeGnssHwBiasMgr::GetInterSystemHwBiasM(a1[541], a2, 0, 0);
  v15 = BlueFin::GlPeGnssTime::Gnss2TimeSystem(BlueFin::GlSvId::s_aucSvId2gnss[*a2]);
  if (a7 >= 0.0)
  {
    SystemConversionS = BlueFin::GlPeTimeManager::GetSystemConversionS(a1[536], v15);
    v18 = SystemConversionS - BlueFin::GlPeTimeManager::GetSystemConversionS(a1[536], 0);
    v19 = v18 / 0.001;
    if (v18 / 0.001 <= 0.0)
    {
      v20 = 0.0;
      if (v18 / 0.001 < 0.0)
      {
        v20 = ceil(v19 + -0.5);
      }
    }

    else
    {
      v20 = floor(v19 + 0.5);
    }

    v21 = (v18 + v20 * -0.001) * 299792458.0;
    BlueFin::GlPeComputeZRH::GetAtmosDelay(a1, a2, a3, a4, a6, a7, v17, 0, 0, a5);
    return v22 + v21 + InterSystemHwBiasM - (*(*a1 + 88))(a1, a2, 0);
  }

  return InterSystemHwBiasM;
}

double BlueFin::GlPeTimeManager::GetSystemConversionS(uint64_t a1, int a2)
{
  v4 = *(BlueFin::GlPeGnssTime::GetConversionTable((a1 + 2608)) + 8 * a2);
  v6 = *(a1 + 2616);
  if (a2 == 1 || v6 != 1)
  {
    result = -v4;
    if (a2 == 1 && v6 != 1)
    {
      LOBYTE(v5) = *(a1 + 4872);
      v5 = 10800.0 - *&v5;
      result = result - v5;
    }

    if (a2 != 2 && v6 == 2)
    {
      LOBYTE(v5) = *(a1 + 4872);
      result = result - *&v5;
      goto LABEL_16;
    }
  }

  else
  {
    LOBYTE(v5) = *(a1 + 4872);
    v5 = 10800.0 - *&v5;
    result = v5 - v4;
  }

  if (a2 == 2 && v6 != 2)
  {
    LOBYTE(v5) = *(a1 + 4872);
    result = result + *&v5;
  }

  if (a2 != 4 && v6 == 4)
  {
    return result + -14.0;
  }

LABEL_16:
  if (v6 != 4 && a2 == 4)
  {
    return result + 14.0;
  }

  return result;
}

double BlueFin::BdNavMsgMgr::setEphemerisConstants(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  v5 = v4 * v4;
  *a1 = v4 * v4;
  if (v4 * v4 == 0.0)
  {
    v6 = *(a2 + 80);
  }

  else
  {
    v6 = 19964980.4 / (v4 * v5) + *(a2 + 80);
  }

  v8 = *(a2 + 64);
  v7 = *(a2 + 72);
  v9 = v8 * (v8 * v8);
  v10 = v8 * (v8 * v9);
  *(a1 + 8) = v6;
  *(a1 + 16) = v8 * v8 * 3.0 + 1.0 + v8 * v9 * 5.0 + v8 * v10 * 7.0;
  *(a1 + 24) = v9 * 4.0 + v8 * 2.0 + v10 * 6.0;
  *(a1 + 32) = -(v8 * v9 * 28.3333333 + v8 * v8 * 4.5 + v8 * v10 * 96.8333333);
  *(a1 + 40) = -(v10 * 52.0 + v9 * 10.6666667);
  *(a1 + 48) = v8 * v10 * 247.975 + v8 * v9 * 26.0416667;
  v11 = v8 * v10 * -163.401389;
  *(a1 + 56) = v10 * 64.8;
  *(a1 + 64) = v11;
  *(a1 + 72) = -(v9 * 8.0 + v8 * 2.0 + v10 * 18.0);
  *(a1 + 80) = -(v8 * v9 * 12.5 + v8 * v8 * 4.5 + v8 * v10 * 24.5);
  *(a1 + 88) = v10 * 78.0 + v9 * 10.6666667;
  *(a1 + 96) = v8 * v10 * 151.083333 + v8 * v9 * 26.0416667;
  *(a1 + 104) = -(v10 * 64.8);
  *(a1 + 112) = v11;
  v12 = 1.0 - v8 * v8;
  *(a1 + 120) = v12;
  *(a1 + 128) = v5 * v12;
  v13 = sqrt(v12);
  *(a1 + 136) = v13;
  *(a1 + 144) = v12 * v13;
  *(a1 + 152) = __sincos_stret(v7);
  v14 = *(a2 + 104);
  LODWORD(v15) = *(a2 + 8);
  v16 = v15;
  *(a1 + 168) = *(a2 + 96) - v14 * v16;
  *(a1 + 176) = v14 + -0.00007292115;
  result = v16 * 0.00007292115;
  *(a1 + 184) = v16 * 0.00007292115;
  *(a1 + 192) = v4 * (v8 * -4.44280763e-10);
  return result;
}

float *BlueFin::GlPeComputeZRH::GetAtmosDelay(void *a1, unsigned __int8 *a2, unsigned int a3, __int128 *a4, float a5, float a6, uint64_t a7, char a8, uint64_t a9, _DWORD *a10)
{
  *v55 = 0;
  v54 = 0;
  v52 = 0;
  v53 = 0;
  result = (*(*a1 + 112))(a1);
  if (!result)
  {
    if (a3 <= 0xFF9222FE)
    {
      v26 = a3;
    }

    else
    {
      v26 = a3;
    }

    v57 = 0.0;
    v56 = 0;
    v27 = a1[537];
    *v19.i64 = v26;
    *v20.i64 = a3;
    v24 = BlueFin::GlPeTimeMgrUtil::DoubleToLms(0, v19, v20, v21, v22, v23);
    if ((*(v27 + 48509) & 2) != 0)
    {
      v31 = *(a4 + 2);
      v59 = *a4;
      v60 = v31;
      if (BlueFin::GlPeIONXMgr::GetIonoDelayInMeter(v27 + 384, v26, &v59, &v57, &v58, a6 * 0.0174532925, a5 * 0.0174532925))
      {
        HIDWORD(v52) = 9;
        v32 = v57;
        v55[0] = v32;
        goto LABEL_13;
      }

      v27 = a1[537];
      if (!v27)
      {
        DeviceFaultNotify("glpe_computezrh.cpp", 1913, "CalcLowCostIonoDelay", "false");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_computezrh.cpp", 1913, "false");
      }
    }

    *v28.i64 = v26;
    BlueFin::GlPeIonoMgr::GetIonoDelay(v27, a4, &v56, v28, a5, a6, v29, v30);
    *&v33 = v33;
    v55[0] = *&v33;
    HIDWORD(v52) = 1;
    if (v56 <= 5)
    {
      HIDWORD(v52) = dword_298A41D88[v56];
    }

LABEL_13:
    BlueFin::GlPeUnbTropoModel::getTropoDelayInMeters((a1 + 4348), a6);
    v54 = v34;
    HIBYTE(v53) = 1;
    result = &v52;
    if (v24)
    {
      goto LABEL_3;
    }

    goto LABEL_14;
  }

  v24 = *result;
  if (*result)
  {
LABEL_3:
    v25 = (result[5] * (a3 - v24)) * 0.001;
    goto LABEL_15;
  }

LABEL_14:
  v25 = 0.0;
LABEL_15:
  v35 = *(result + 1);
  v36 = 0.0;
  if (v35)
  {
    v36 = (v25 + result[4]);
  }

  *a10 = v35;
  if ((a8 & 1) == 0)
  {
    v37 = *a2;
    v38 = BlueFin::GlSvId::s_aucSvId2gnss[v37];
    v39 = 1.0;
    if (v38 == 2)
    {
      v39 = BlueFin::GlPeComputeZRH::m_dGlnsIonoFactor[(v37 - 59) + 7];
    }

    v40 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(a2 + 1) - *(a2 + 1) + v38] - 1;
    if (v40 <= 0xB && ((0x8BBu >> v40) & 1) != 0)
    {
      v39 = dbl_298A41D28[v40];
    }

    v36 = v36 * v39;
  }

  v41 = *(result + 9);
  v42 = 0.0;
  if (v41 == 1)
  {
    v42 = result[3];
  }

  v43 = a1[2];
  if (v43)
  {
    v44 = *(a2 + 4);
    v45 = v43 + 56 * v44;
    v46 = *(v45 + 12);
    v47 = *(v45 + 24);
    v48 = *(v45 + 40);
    v49 = *(a2 + 1);
    if (v46)
    {
      v50 = (a3 - v46) * 0.001;
      if (v50 > 0.0 && v50 < 60.0)
      {
        v47 = (v42 - *(v45 + 16)) / v50;
        v48 = (v36 - *(v45 + 32)) / v50;
      }
    }

    *v45 = *a2;
    *(v45 + 4) = v49;
    *(v45 + 8) = v44;
    *(v45 + 12) = a3;
    *(v45 + 16) = v42;
    *(v45 + 24) = v47;
    *(v45 + 32) = v36;
    *(v45 + 40) = v48;
    *(v45 + 48) = v35;
  }

  return result;
}

uint64_t BlueFin::GlPeIONXMgr::GetIonoDelayInMeter(uint64_t a1, unsigned int a2, double *a3, double *a4, void *a5, double a6, double a7)
{
  v7 = 0;
  if (a6 >= 0.0 && (*(a1 + 25) & 1) != 0)
  {
    v12 = a6;
    v13 = a7;
    BlueFin::GlPeIONXMgr::GetIppLla(a3, v20, v12, v13, *(a1 + 72), *(a1 + 76));
    if (*(a1 + 24) == 1)
    {
      v19 = 0.0;
      v7 = 0;
      if (BlueFin::GlPeIONXMgr::FindBestFitTec(a1, v20, a2, &v19))
      {
        v14 = v19;
        v15 = *(a1 + 72) / (*(a1 + 72) + *(a1 + 76));
        v16 = cosf(v12);
        *a4 = ((v14 * (1.0 / sqrtf(1.0 - ((v16 * v15) * (v16 * v15))))) * 0.16237);
        *a5 = 0;
        v17 = *a4;
        v7 = 1;
      }

      if (BlueFin::GlUtils::m_ucEnabled)
      {
        BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x47);
      }
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

double BlueFin::GlPeIONXMgr::GetIppLla@<D0>(double *a1@<X1>, uint64_t a2@<X8>, float a3@<S0>, float a4@<S1>, float a5@<S2>, float a6@<S3>)
{
  *(a2 + 16) = 0;
  v11 = 1.5708 - a3;
  v12 = cosf(a3);
  v13 = asinf((v12 * a5) / (a5 + a6));
  v14 = __sincosf_stret(v11 - v13);
  v15 = *a1;
  v16 = __sincosf_stret(v15 * 0.017453);
  v17 = __sincosf_stret(a4);
  v18 = asinf((v17.__cosval * (v14.__sinval * v16.__cosval)) + (v16.__sinval * v14.__cosval)) * 57.296;
  *a2 = v18;
  v19 = a1[1];
  v20 = cosf(v18 * 0.017453);
  result = (v19 + (asinf((v17.__sinval * v14.__sinval) / v20) * 57.296));
  *(a2 + 8) = result;
  return result;
}

uint64_t BlueFin::GlPeComputeZRH::GetAtmosDelayCacheSlot(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 1568);
  if (!*(a1 + 1568))
  {
    return 0;
  }

  v3 = 0;
  for (result = a1 + 1572; *(result + 8) != *a2; result += 24)
  {
    if (++v3 >= v2)
    {
      return 0;
    }
  }

  return result;
}

uint64_t BlueFin::GlPeIONXMgr::FindBestFitTec(uint64_t a1, double *a2, unsigned int a3, float *a4)
{
  BlueFin::GlPeTimeManager::GetTime(*(a1 + 8), a3, 1, v25);
  v23 = &off_2A1F0B5F0;
  v24 = 0;
  Gps = BlueFin::GlPeGnssTime::GetGps(v25, &v23);
  v8 = (v23[4])(&v23, Gps);
  v10 = *(a1 + 32);
  if (v10 > 4)
  {
    DeviceFaultNotify("glpe_ionxmgr.cpp", 484, "FindBestFitTec", "m_stIONXTecOpt.usNumTecSets <= GL_MAX_IONEX_SETS");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ionxmgr.cpp", 484, "m_stIONXTecOpt.usNumTecSets <= GL_MAX_IONEX_SETS");
  }

  if (!*(a1 + 32))
  {
    return 0;
  }

  v11 = 0;
  LODWORD(v9) = v24;
  v12 = v9 * 2.32830644e-10 + v8;
  v13 = v12;
  v14 = *(a1 + 28);
  v15 = *(a1 + 46176);
  for (i = v15; ; i += 2880)
  {
    v17 = *i - v13;
    if (*i < v13)
    {
      goto LABEL_8;
    }

    if (*i == v13)
    {
      break;
    }

    v18 = v11 - 1;
    if ((v11 - 1) <= 2u && v17 < v14)
    {
      goto LABEL_12;
    }

LABEL_8:
    if (v10 == ++v11)
    {
      return 0;
    }
  }

  v17 = v14 >> 1;
  v18 = v11;
LABEL_12:
  result = 0;
  if (v18 != 5 && v11 != 5)
  {
    v22 = 0;
    v20 = *a2;
    v21 = a2[1];
    result = BlueFin::GlPeIONXMgr::InterpolTecs(a1, v15[2880 * v18], *&v15[2880 * v18 + 2874], &v22 + 1, *a2, v21, v12);
    if (result)
    {
      result = BlueFin::GlPeIONXMgr::InterpolTecs(a1, v15[2880 * v11], *&v15[2880 * v11 + 2874], &v22, v20, v21, v12);
      if (result)
      {
        *a4 = ((1.0 - (v17 / v14)) * *&v22) + (*(&v22 + 1) * (v17 / v14));
        return 1;
      }
    }
  }

  return result;
}

uint64_t BlueFin::GlPeIONXMgr::InterpolTecs(float *a1, unsigned int a2, uint64_t a3, float *a4, double a5, double a6, float a7)
{
  v7 = a1[11];
  v8 = a1[13];
  v9 = a1[14];
  v10 = a1[16];
  v11 = ((a1[15] - v9) / v10);
  v12 = a6;
  v13 = ((a7 - a2) / 240.0) + v12;
  v14 = a5;
  v15 = (v14 - v7) / v8;
  v16 = (v13 - v9) / v10;
  v17 = v15;
  v18 = v16;
  v19 = v11 - 1;
  if (v16 + 1 < v11)
  {
    v19 = v18 + 1;
  }

  v20 = 0;
  if ((v17 & 0x80000000) == 0 && (v18 & 0x80000000) == 0 && ((a1[12] - v7) / v8) - 1 > v17 && v11 > v18)
  {
    v21 = a3 + 200 * (v17 + 1) + 36;
    v22 = v15 - v17;
    v23 = v16 - v18;
    *a4 = a1[17] * (((((v22 * (1.0 - v23)) * *(v21 + 2 * v18)) + (((1.0 - v22) * (1.0 - v23)) * *(a3 + 200 * v17 + 36 + 2 * v18))) + (((1.0 - v22) * v23) * *(a3 + 200 * v17 + 36 + 2 * v19))) + ((v22 * v23) * *(v21 + 2 * v19)));
    return 1;
  }

  return v20;
}

float BlueFin::GlPeUnbTropoModel::getTropoDelayInMeters(BlueFin::GlPeUnbTropoModel *this, float a2)
{
  v5[0] = 0;
  v5[1] = 0;
  v2 = a2 * 0.017453;
  BlueFin::GlPeUnbTropoModel::getDryAndWetDelayViaUNBabcMappingFunction(this, *(this + 2), *(this + 3), a2 * 0.017453, *this, *(this + 1), v5, v5 + 1);
  v3 = *v5;
  if (v2 <= 1.57079633 && v2 > 0.0)
  {
    sinf(v2);
  }

  return v3;
}

float BlueFin::GlPeUnbTropoModel::getDryAndWetDelayViaUNBabcMappingFunction(BlueFin::GlPeUnbTropoModel *this, float a2, float a3, float a4, float a5, float a6, float *a7, float *a8)
{
  v14 = 1.0;
  if (a4 <= 1.5708)
  {
    v14 = 0.0;
    if (a4 > 0.0)
    {
      v14 = sinf(a4);
    }
  }

  v15 = cosf(a5);
  v16 = ((((a6 * -0.026855) * 0.001) + 1.1897) + (v15 * 0.10664)) / 1000.0;
  *a7 = (((v16 / 1.0033) + 1.0) / (v14 + (v16 / (v14 + (0.0035716 / (v14 + 0.082456)))))) * a2;
  v17 = ((((a6 * -0.035348) * 0.001) + 0.6112) + (v15 * -0.01526)) / 1000.0;
  result = (((v17 / 1.0017) + 1.0) / (v14 + (v17 / (v14 + (0.0018576 / (v14 + 0.062741)))))) * a3;
  *a8 = result;
  return result;
}

float BlueFin::GlPeGnssHwBiasMgr::GetFullSatHwBiasM(BlueFin::GlPeGnssHwBiasMgr *this, const BlueFin::GlSignalId *a2, int8x16_t a3, int8x16_t a4)
{
  *v6.i64 = BlueFin::GlPeGnssHwBiasMgr::GetTgd(this, a2, a3, a4);
  v7.i64[0] = 0x41B1DE784A000000;
  v8 = *v6.i64 * 299792458.0;
  v9 = BlueFin::GlSvId::s_aucSvId2gnss[*a2];
  v10 = *(this + 20);
  v11 = *(v10 + 120012);
  v12 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(a2 + 1) - *(a2 + 1) + v9];
  v13 = 0.0;
  if (BlueFin::GlSvId::s_aucSvId2gnss[*a2] > 3u)
  {
    switch(v9)
    {
      case 4:
        v29 = 7;
        v30[0] = 0;
        BlueFin::GlPeSvIdConverter::SvId2Gnss((v10 + 119744), a2, &v29, v6, v7);
        v21 = *(*(this + 20) + 7384);
        if (v12 == 13)
        {
          v28 = 0.0;
          v20.n128_u64[0] = 0;
          if (v11 != 1 && v21 != 0)
          {
            (*(*v21 + 48))(v21, v30, 5, &v28, v20);
            v20.n128_f32[0] = v28;
          }

          return -v20.n128_f32[0];
        }

        if (v12 == 8)
        {
          if (v11 != 1)
          {
            v25 = *a2;
            if (BlueFin::GlSvId::s_aucSvId2gnss[v25] == 4 && *(a2 + 1) == 2)
            {
              v13 = BlueFin::GlPeGnssHwBiasMgr::GetHardcodedTgd(BlueFin::GlSignalId const&,BOOL)const::afTgdB2apInMeters[v25 - 76];
            }

            v28 = 0.0;
            if (v21 && (*(*v21 + 48))(v21, v30, 7, &v28))
            {
              v13 = v28;
            }
          }

          return -v13;
        }

        if (v12 != 6)
        {
          return v13;
        }

        break;
      case 5:
        if (v12 == 4)
        {
          v18 = -1.7032;
          return v8 * v18;
        }

        if (v12 == 5)
        {
          v18 = -1.7933;
          return v8 * v18;
        }

        if (v12 != 11)
        {
          return v13;
        }

        break;
      case 6:
        v18 = -4.48702911;
        return v8 * v18;
      default:
        return v13;
    }

    goto LABEL_27;
  }

  if (BlueFin::GlSvId::s_aucSvId2gnss[*a2])
  {
    if (v9 != 2)
    {
      if (v9 != 3)
      {
        return v13;
      }

      goto LABEL_5;
    }

LABEL_27:
    v20.n128_f32[0] = v8;
    return -v20.n128_f32[0];
  }

LABEL_5:
  v29 = 7;
  v30[0] = 0;
  BlueFin::GlPeSvIdConverter::SvId2Gnss((v10 + 119744), a2, &v29, v6, v7);
  Mgr = BlueFin::GlPeGnssEphemerisMgr::GetMgr((*(this + 20) + 384), v9);
  v17 = Mgr;
  v28 = 0.0;
  if (Mgr)
  {
    if ((*(*Mgr + 48))(Mgr, v30, 1, &v28))
    {
      *v16.i64 = v8 - v28;
      *v16.i32 = *v16.i64;
      *v16.i32 = fabsf(*v16.i32);
      if (*v16.i32 <= 1.0)
      {
        v8 = v28;
      }
    }
  }

  if (v12 <= 1)
  {
    if (v12)
    {
      v18 = -1.6469;
      return v8 * v18;
    }

    v15.i64[0] = 0;
    if (v11 != 1)
    {
      HardcodedIsc = BlueFin::GlPeGnssHwBiasMgr::GetHardcodedIsc(this, a2, 0, v15, v16);
      v27 = 0.0;
      if (v17)
      {
        v23 = (*(*v17 + 48))(v17, v30, 2, &v27);
        goto LABEL_35;
      }

      goto LABEL_37;
    }

    return *v15.i64 - v8;
  }

  if (v12 == 2)
  {
    v15.i64[0] = 0;
    if (v11 != 1)
    {
      HardcodedIsc = BlueFin::GlPeGnssHwBiasMgr::GetHardcodedIsc(this, a2, 0, v15, v16);
      v27 = 0.0;
      if (v17)
      {
        v23 = (*(*v17 + 48))(v17, v30, 4, &v27);
LABEL_35:
        if (v23)
        {
          HardcodedIsc = v27;
        }
      }

LABEL_37:
      *v15.i64 = HardcodedIsc;
    }

    return *v15.i64 - v8;
  }

  if (v12 == 14)
  {
    goto LABEL_27;
  }

  return v13;
}

float BlueFin::GlPeGnssHwBiasMgr::GetSatHwBiasM(BlueFin::GlPeGnssHwBiasMgr *this, const BlueFin::GlSignalId *a2, int a3, int8x16_t a4, int8x16_t a5)
{
  v8 = *(*(this + 20) + 120012);
  if ((*(*(this + 310) + 4 * (*(a2 + 4) >> 5)) >> (*(a2 + 4) & 0x1F)))
  {
    v9 = *(this + *(a2 + 4) + 44);
    if (!a3)
    {
      return v9;
    }
  }

  else
  {
    *a4.i32 = BlueFin::GlPeGnssHwBiasMgr::GetFullSatHwBiasM(this, a2, a4, a5);
    v9 = *a4.i32;
    v10 = *(a2 + 4);
    *(this + v10 + 44) = a4.i32[0];
    *(*(this + 310) + 4 * (v10 >> 5)) |= 1 << v10;
    if (!a3)
    {
      return v9;
    }
  }

  if (v8 == 1)
  {
    return v9;
  }

  v11 = BlueFin::GlSvId::s_aucSvId2gnss[*a2];
  v12 = *(a2 + 1);
  v13 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v12 - v12 + v11];
  v30 = 0.0;
  if (!v11)
  {
    goto LABEL_9;
  }

  if (v11 != 4)
  {
    if (v11 != 3)
    {
      goto LABEL_24;
    }

LABEL_9:
    v14 = *(this + 20);
    v28 = 7;
    v29[0] = 0;
    BlueFin::GlPeSvIdConverter::SvId2Gnss((v14 + 119744), a2, &v28, a4, a5);
    Mgr = BlueFin::GlPeGnssEphemerisMgr::GetMgr((*(this + 20) + 384), v11);
    v16 = Mgr;
    if (v12 == 3 && Mgr)
    {
      (*(*Mgr + 48))(Mgr, v29, 2, &v30);
      goto LABEL_24;
    }

    if (v13 == 2)
    {
      *a4.i64 = BlueFin::GlPeGnssHwBiasMgr::GetHardcodedIsc(this, a2, 1, a4, a5);
      *a4.i32 = *a4.i64;
      v30 = *a4.i32;
      v27 = 0.0;
      if (v16)
      {
        if ((*(*v16 + 48))(v16, v29, 4, &v27))
        {
          v19 = v27;
          goto LABEL_20;
        }
      }
    }

    goto LABEL_24;
  }

  v17 = *(this + 20);
  v28 = 7;
  v29[0] = 0;
  BlueFin::GlPeSvIdConverter::SvId2Gnss((v17 + 119744), a2, &v28, a4, a5);
  v18 = *(*(this + 20) + 7384);
  if (v12 != 2)
  {
    if (v12 == 3 && v18)
    {
      (*(*v18 + 48))(v18, v29, 6, &v30);
    }

    goto LABEL_24;
  }

  v27 = 0.0;
  *a4.i64 = BlueFin::GlPeGnssHwBiasMgr::GetHardcodedIsc(this, a2, 1, a4, a5);
  *a4.i32 = *a4.i64;
  v30 = -*a4.i32;
  if (v18 && (*(*v18 + 48))(v18, v29, 8, &v27))
  {
    v19 = -v27;
LABEL_20:
    v30 = v19;
  }

LABEL_24:
  *a4.i32 = v30;
  v9 = v9 + v30;
  if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(a2 + 1) - *(a2 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a2]] == 2)
  {
    *v20.i64 = BlueFin::GlPeGnssHwBiasMgr::GetHardcodedIsc(this, a2, 0, a4, a5);
    v21 = BlueFin::GlSvId::s_aucSvId2gnss[*a2];
    v22 = *v20.i64;
    v23 = *(this + 20);
    v28 = 7;
    v29[0] = 0;
    BlueFin::GlPeSvIdConverter::SvId2Gnss((v23 + 119744), a2, &v28, v20, v24);
    v25 = BlueFin::GlPeGnssEphemerisMgr::GetMgr((*(this + 20) + 384), v21);
    v30 = 0.0;
    if (v25 && (*(*v25 + 48))(v25, v29, 4, &v30))
    {
      v22 = v30;
    }

    return v9 - v22;
  }

  return v9;
}

double BlueFin::GlPeGnssHwBiasMgr::GetTgd(uint64_t a1, unsigned __int8 *a2, int8x16_t a3, int8x16_t a4)
{
  v5 = *(a1 + 160);
  v11 = 7;
  v12 = 0;
  BlueFin::GlPeSvIdConverter::SvId2Gnss((v5 + 119744), a2, &v11, a3, a4);
  v6 = 0.0;
  if (v12 - 1 <= 0x3E)
  {
    v10 = v12;
    Mgr = BlueFin::GlPeGnssEphemerisMgr::GetMgr((*(a1 + 160) + 384), v11);
    if (Mgr)
    {
      v8 = (*(*Mgr + 112))(Mgr, &v10, 1);
      if (v8)
      {
        return (*(*v8 + 104))(v8);
      }
    }
  }

  return v6;
}

uint64_t BlueFin::GlPeGpsEphMgr::GetLtoAltNavData(uint64_t a1, unsigned __int8 *a2, int a3, float *a4)
{
  v4 = *a2;
  if ((v4 - 33) < 0xE0u)
  {
    return 0;
  }

  v6 = v4 - 1;
  if (a3 != 2)
  {
    return BlueFin::GlPeGpsQzssAltNavData::GetLtoAltNavData(a1 + 36 * v6 + 5624, v4, a3, a4);
  }

  v7 = a1 + 6 * v6 + 6776;
  if (v4 != (*v7 + 1))
  {
    return 0;
  }

  v8 = *(v7 + 2) * 2.91038305e-11 * 299792458.0;
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

double BlueFin::GlPeGnssHwBiasMgr::GetHardcodedIsc(BlueFin::GlPeTimeManager **this, const BlueFin::GlSignalId *a2, int a3, int8x16_t a4, int8x16_t a5)
{
  v5 = *a2;
  v6 = BlueFin::GlSvId::s_aucSvId2gnss[v5];
  v7 = *(a2 + 1);
  v8 = 0.0;
  if (v6 <= 3)
  {
    if (BlueFin::GlSvId::s_aucSvId2gnss[v5])
    {
      if (v6 != 3)
      {
        return v8;
      }

      if (v7 == 2)
      {
        v9 = v5 - 66;
        if (a3)
        {
          v10 = &BlueFin::GlPeGnssHwBiasMgr::GetHardcodedIsc(BlueFin::GlSignalId const&,BOOL)const::afIscQzssL5IInMeters;
        }

        else
        {
          v10 = &BlueFin::GlPeGnssHwBiasMgr::GetHardcodedIsc(BlueFin::GlSignalId const&,BOOL)const::afIscQzssL5QInMeters;
        }

        return v10[v9];
      }

      goto LABEL_21;
    }

    if (v7 == 2)
    {
      v9 = v5 - 1;
      if (a3)
      {
        v10 = &BlueFin::GlPeGnssHwBiasMgr::GetHardcodedIsc(BlueFin::GlSignalId const&,BOOL)const::afIscL5IInMeters;
      }

      else
      {
        v10 = &BlueFin::GlPeGnssHwBiasMgr::GetHardcodedIsc(BlueFin::GlSignalId const&,BOOL)const::afIscL5QInMeters;
      }

      return v10[v9];
    }

    if (v7)
    {
LABEL_21:
      if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v7 - v7 + BlueFin::GlSvId::s_aucSvId2gnss[v5]] == 1)
      {
        Tgd = BlueFin::GlPeGnssHwBiasMgr::GetTgd(this, a2, a4, a5);
        v12 = -0.6469;
        return Tgd * v12 * 299792458.0;
      }

      return v8;
    }

    BlueFin::GlPeTimeManager::GetTime(this[18], 1, v17);
    v18[0] = &off_2A1F0B5F0;
    v18[1] = 0;
    Gps = BlueFin::GlPeGnssTime::GetGps(v17, v18);
    if ((*(v18[0] + 32))(v18, Gps) < 0x4769B080)
    {
      return v8;
    }

    return BlueFin::GlPeGnssHwBiasMgr::GetHardcodedIsc(BlueFin::GlSignalId const&,BOOL)const::afIscL1CAInMeters[v5 - 1];
  }

  if (v6 == 4)
  {
    if (v7 != 2 || a3 == 0)
    {
      return v8;
    }

    return BlueFin::GlPeGnssHwBiasMgr::GetHardcodedIsc(BlueFin::GlSignalId const&,BOOL)const::afIscBdsB2adIInMeters[v5 - 76];
  }

  if (v6 == 5 && v7 >= 1)
  {
    Tgd = BlueFin::GlPeGnssHwBiasMgr::GetTgd(this, a2, a4, a5);
    if (v7 == 1)
    {
      v12 = -0.7032;
    }

    else
    {
      v12 = -0.7933;
    }

    return Tgd * v12 * 299792458.0;
  }

  return v8;
}

uint64_t BlueFin::GlPeGpsQzssAltNavData::GetLtoAltNavData(uint64_t a1, unsigned __int8 a2, int a3, float *a4)
{
  if ((*a1 + 1) != a2)
  {
    return 0;
  }

  if (a3 == 1)
  {
    v4 = *(a1 + 22);
    goto LABEL_14;
  }

  if (a3 == 3)
  {
    if (*(a1 + 26))
    {
      v5 = *(a1 + 28) * 2.91038305e-11 * 299792458.0;
      v6 = -v5;
      if (v5 >= 0.0)
      {
        v6 = *(a1 + 28) * 2.91038305e-11 * 299792458.0;
      }

      if (v6 > 29.9792458)
      {
        v5 = 0.0;
      }

      goto LABEL_15;
    }

    return 0;
  }

  if (a3 != 4)
  {
    return 0;
  }

  v4 = *(a1 + 24);
LABEL_14:
  v5 = v4 * 2.91038305e-11 * 299792458.0;
LABEL_15:
  *a4 = v5;
  return 1;
}