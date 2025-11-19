BOOL BlueFin::GlPeLsq::LsPos(uint64_t a1, uint64_t a2, uint64_t a3, double a4, int8x16_t a5)
{
  v24 = *MEMORY[0x29EDCA608];
  if (!*(a1 + 16))
  {
    DeviceFaultNotify("glpe_lsq.cpp", 1315, "LsPos", "m_potAlMeas != nullptr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_lsq.cpp", 1315, "m_potAlMeas != nullptr");
  }

  v8 = 0;
  v20 = v22;
  v21 = 19;
  memset(v22, 0, sizeof(v22));
  do
  {
    v9 = &v23[v8];
    v9[32] = 0;
    *(v9 + 9) = -1;
    *(v9 + 20) = 575;
    v8 += 56;
  }

  while (v8 != 896);
  v19 = 0;
  v16[1] = 0xC00000008;
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v10 = *(a2 + 24);
  v14 = *v10;
  v15 = v10[2];
  result = BlueFin::GlPeLsq::LsPosInit(a1, a2, &v20, &v19 + 1, v23, v15, a5);
  if (result)
  {
    result = BlueFin::GlPeLsq::LsPosCalc(a1, a2, &v20, &v19 + 1, v23, 16, a3, &v14, v16, &v19);
    if (result)
    {
      BlueFin::GlPeLsq::LsPosFinish(a1, a2, &v20, &v19 + 1, v23, v12, a3, &v14, v16, &v19);
      result = 1;
    }
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlMeSrdAidingMgr::FormatGlnsTcxoAidingForEsw(unsigned int *a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v9[0] = &unk_2A1F0E1A0;
  v9[1] = 0;
  v10 = 0x36A7C5AC00000000;
  v11 = 0;
  v12 = 2139095039;
  v13 = 0;
  v14 = 2139095039;
  v15 = 0;
  v16 = 0x36A7C5AC7F7FFFFFLL;
  (*(**a1 + 96))(*a1, v9, a1[6]);
  *(a2 + 12) = a1[6];
  *(a2 + 14) = 1;
  v6[0] = 59;
  v7 = 0;
  v8 = 154;
  result = BlueFin::GlMeSrdAsicUnitConverter::PpuToEswAidingFrequency(v6, -*&v10, v4);
  *a2 = result;
  return result;
}

void BlueFin::GlPeTimeManager::SetGlonassDataString(BlueFin::GlPeTimeManager *this, const BlueFin::GlGlonassDataString *a2, int8x16_t a3, int8x16_t a4)
{
  v4 = (*(a2 + 5) >> 27) & 0xF;
  if ((v4 - 1) < 5 || v4 == 14)
  {
    v48 = *(a2 + 8);
    v8 = *(this + 5);
    v46 = 7;
    v47 = 0;
    BlueFin::GlPeSvIdConverter::SvId2Gnss(v8, &v48, &v46, a3, a4);
    if (v46 > 6 || v47 - 1 > 0x3E || BlueFin::GlPeSvHealthHelper::IsUsable(*(this + 3) + 32, &v46))
    {
      v13 = *(this + 53);
      BlueFin::GlPeGlnTimeMgr::SetGlonassDataString((this + 192), a2, (*(this + 678) >> 1) & 1, v9, v10, v11, v12);
      v14 = v13 == -7200001 && *(this + 53) != -7200001;
      v45 = 0;
      v44 = 0;
      v43 = 0;
      v42 = 0;
      if (BlueFin::GlPeGlnTimeMgr::GetInitialTime((this + 192), &v45, &v44, &v43, &v42) && (*(this + 644) == 0 || v14))
      {
        LODWORD(v15) = v42;
        BlueFin::GlGlnsTime::GlGlnsTime(v40, v44, v43, v15 * 0.001);
        v39 = 0.0;
        v38 = 0;
        BlueFin::GlPeTimeManager::getFlightTimeMs(this, &v48, &v39, &v38);
        v16 = v38;
        v17 = v39 * 0.001;
        v18 = fabs(v39 * 0.001);
        v19 = v18 - trunc(v18);
        v20 = v19 * 4294967300.0 + 0.5;
        if (v38 <= 0x7D0)
        {
          v16 = 2000;
        }

        if (v20 >= 4294967300.0)
        {
          v21 = -1;
        }

        else
        {
          v21 = v20;
        }

        if (v19 < 0.0 || v19 >= 1.0)
        {
          v32 = "dFracSec >= 0.0 && dFracSec < 1.0";
          DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
          v33 = "glpe_timepoint.h";
          v34 = 173;
          goto LABEL_47;
        }

        v23 = v18;
        if (v17 < 0.0)
        {
          if (v41 < __PAIR64__(v23, v21))
          {
            if (v23 - HIDWORD(v41) != v41 > v21 || v21 != v41)
            {
              v32 = "!tDelta.isNegative()";
              DeviceFaultNotify("glpe_datetime.h", 425, "operator+=", "!tDelta.isNegative()");
              v33 = "glpe_datetime.h";
              v34 = 425;
LABEL_47:
              __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v33, v34, v32);
            }

            v25 = 0;
            LODWORD(v24) = 0;
          }

          else
          {
            v26 = v41 >= v21;
            LODWORD(v24) = v41 - v21;
            v27 = !v26;
            v25 = HIDWORD(v41) - v23 - v27;
          }
        }

        else
        {
          v24 = v41 + v21;
          v25 = HIDWORD(v41) + v23 + HIDWORD(v24);
        }

        v41 = __PAIR64__(v25, v24);
        LODWORD(v17) = v45;
        v35[0] = v24;
        v35[1] = v25;
        v35[2] = 1;
        v36 = *&v17;
        v37 = v16;
        if (*(this + 53) == -7200001)
        {
          v29 = 4;
        }

        else
        {
          v29 = 5;
        }

        BlueFin::GlPeTimeManager::SetTime(this, v35, v29, &v48);
      }

      if (*(this + 435) == 1)
      {
        BlueFin::GlPeTimeManager::updateLeapSecFromGlnsKp(this);
      }

      v30 = *(this + 345);
      *(this + 345) = 0;
      if ((v30 & 1) != 0 || (v31 = *(this + 401), *(this + 401) = 0, v31 == 1))
      {
        BlueFin::GlPeTimeManager::updateConversionTable(this);
      }
    }
  }
}

void BlueFin::GlPeGlnTimeMgr::SetGlonassDataString(BlueFin::GlPeGlnTimeMgr *this, const BlueFin::GlGlonassDataString *a2, int a3, float64x2_t a4, double a5, int8x16_t a6, int8x16_t a7)
{
  v7 = *(a2 + 5);
  v8 = (v7 >> 27) & 0xF;
  if ((v8 - 1) >= 5 && v8 != 14)
  {
    v68 = "WantsString(ucStringNum)";
    DeviceFaultNotify("glpe_glntimemgr.cpp", 413, "SetGlonassDataString", "WantsString(ucStringNum)");
    v69 = 413;
    goto LABEL_156;
  }

  v11 = *(a2 + 8);
  v12 = v11 - 52;
  if ((v11 - 52) > 0xD)
  {
    v68 = "ucIdx >= 0";
    DeviceFaultNotify("glpe_glntimemgr.cpp", 420, "SetGlonassDataString", "ucIdx >= 0");
    v69 = 420;
    goto LABEL_156;
  }

  v14 = **(this + 1);
  v15 = *(a2 + 9);
  v16 = *(this + 228) + 112 * v12;
  if (((v7 >> 27) & 0xF) <= 3)
  {
    if (v8 == 1)
    {
      *v16 = v7;
      *(v16 + 4) = *(a2 + 6);
      *(v16 + 8) = *(a2 + 7);
      *(*(this + 229) + 4 * (v12 >> 5)) |= 1 << v12;
      *(v16 + 36) = v14;
      *(v16 + 56) = *(a2 + 4);
      goto LABEL_54;
    }

    if (v8 != 2)
    {
      if (v8 != 3)
      {
        goto LABEL_54;
      }

      if ((v7 & 0x800) != 0)
      {
        v18 = -2;
      }

      else
      {
        v17 = *(v16 + 104);
        if (v17 > 1)
        {
LABEL_41:
          *(*(this + 235) + 4 * (v12 >> 5)) |= 1 << v12;
          *(v16 + 72) = *(a2 + 4);
          goto LABEL_54;
        }

        v18 = v17 + 1;
      }

      *(v16 + 104) = v18;
      goto LABEL_41;
    }

    if ((v7 & 0x4000000) != 0)
    {
      v29 = -2;
    }

    else
    {
      v28 = *(v16 + 104);
      if (v28 > 1)
      {
LABEL_44:
        *(*(this + 232) + 4 * (v12 >> 5)) |= 1 << v12;
        *(v16 + 64) = *(a2 + 4);
        goto LABEL_54;
      }

      v29 = v28 + 1;
    }

    *(v16 + 104) = v29;
    goto LABEL_44;
  }

  switch(v8)
  {
    case 4:
      *(v16 + 12) = v7;
      *(v16 + 16) = *(a2 + 6);
      *(v16 + 20) = *(a2 + 7);
      *(*(this + 238) + 4 * (v12 >> 5)) |= 1 << v12;
      *(v16 + 40) = v14;
      *(v16 + 80) = *(a2 + 4);
      break;
    case 5:
      *(v16 + 24) = v7;
      *(v16 + 28) = *(a2 + 6);
      *(v16 + 32) = *(a2 + 7);
      *(*(this + 241) + 4 * (v12 >> 5)) |= 1 << v12;
      *(v16 + 44) = v14;
      if ((*(v16 + 34) & 8) != 0)
      {
        *(v16 + 104) = -2;
      }

      else
      {
        v30 = *(v16 + 104);
        if (v30 <= 1)
        {
          *(v16 + 104) = v30 + 1;
          if (v30 < 0 || (a3 & 1) == 0)
          {
            goto LABEL_53;
          }

LABEL_47:
          *(this + 32) = 1;
          HIDWORD(v32) = *(v16 + 24);
          LODWORD(v32) = *(v16 + 28);
          v31 = v32 >> 16;
          v33 = (v32 >> 16) & 0x7FFFFFFF;
          if (v31 < 0)
          {
            v31 = -v33;
          }

          BlueFin::GlPeGlnTimeMgr::stTauMgr::Update(this + 192, 2, v14, vcvtd_n_f64_s32(v31, 0x1FuLL));
          HIDWORD(v35) = *(v16 + 28);
          LODWORD(v35) = *(v16 + 32);
          v34 = v35 >> 10;
          if (v34 < 0)
          {
            v36 = -((v34 >> 10) & 0x1FFFFF);
          }

          else
          {
            v36 = v34 >> 10;
          }

          BlueFin::GlPeGlnTimeMgr::TauGpsMgr::Update(this + 136, 2u, v14, vcvtd_n_f64_s32(v36, 0x1EuLL));
          goto LABEL_53;
        }

        if (a3)
        {
          goto LABEL_47;
        }
      }

LABEL_53:
      *(v16 + 88) = *(a2 + 4);
      break;
    case 0xE:
      *(v16 + 96) = *(a2 + 4);
      if ((*(a2 + 3) % 0x249F0u) >> 6 >= 0x753 && a3 != 0)
      {
        v20 = vdup_n_s32(v7);
        v21 = vshl_u32(v20, 0xFFFFFFFAFFFFFFF0);
        v22 = vceqz_s32(vand_s8(v20, 0x800004000000));
        v23 = vorr_s8(vand_s8(vand_s8(v21, 0x3FF000007FFLL), v22), vbic_s8(vneg_s32(vand_s8(v21, 0x1FF000003FFLL)), v22));
        v24.i64[0] = v23.i32[0];
        v24.i64[1] = v23.i32[1];
        a4 = vmulq_f64(vcvtq_f64_s64(v24), xmmword_298A45C40);
        *&a4.f64[0] = vcvt_f32_f64(a4);
        if (fabsf(*a4.f64) > 0.9 || *(a4.f64 + 1) < -0.0045 || *(a4.f64 + 1) > 0.0035)
        {
          v73 = *(this + 62);
          v74 = *(this + 63);
          v71 = v14;
          v72 = *(this + 241);
          v70 = v11;
          v42 = "GlPeGlnTimeMgr(%hu)[%u]:  [Invalid] Kp:%d  B1:%.6f B2:%.6f\n";
          goto LABEL_77;
        }

        v25 = v7 << 26;
        v26 = (v7 << 26) >> 30;
        v27 = *(this + 29);
        if ((v27 & 4) != 0)
        {
          v44 = *(this + 241);
          if ((*(this + 29) & 8) != 0)
          {
            if (v26 == v44)
            {
              *(this + 242) = 0;
            }

            else
            {
              v47 = ++*(this + 242);
              if (v47 >= 3)
              {
                *(this + 29) = v27 & 0xF7;
                *(this + 241) = v25 >> 30;
              }
            }
          }

          else if (v26 == v44)
          {
            *(this + 29) = v27 | 8;
            *(this + 242) = 0;
            v80 = 0;
            v79 = 0;
            v78 = 0;
            v77 = 0;
            if (BlueFin::GlPeGlnTimeMgr::GetInitialTime(this, &v80, &v79, &v78, &v77))
            {
              if (v79 && (v78 - 1462) >= 0xFA4Bu && v77 <= 0x5265BFF)
              {
                LODWORD(v45) = *(this + 9);
                BlueFin::GlGlnsTime::GlGlnsTime(v76, v79, v78, v45 * 0.001);
                BlueFin::GlTimeDelta::GlTimeDelta(v75, (v14 - v80) * 0.001);
                BlueFin::GlWeekTowTime::operator+=(v76, v75);
                BlueFin::GlPeGlnTimeMgr::serialize(this, 0, v76, 0);
                v46 = *(this + 241);
              }

              else
              {
                v57 = *(this + 25);
                v58 = *(this + 26);
                *(this + 24) &= 0xF3u;
                *(this + 25) = v57 & 0xF3;
                *(this + 26) = v58 & 0xF3;
              }
            }

            v59 = *(this + 62);
            v60 = *(this + 63);
            GlCustomLog(15, "GlPeGlnTimeMgr(%hu)[%u]:  [Verified] Kp:%d  B1:%.6f B2:%.6f\n");
          }

          else
          {
            *(this + 29) = v27 & 0xFB;
          }
        }

        else
        {
          *(this + 244) = 1;
          *(this + 31) = *&a4.f64[0];
          if (*(this + 240) != 1 || v26 != *(this + 241))
          {
            *(this + 243) = 1;
          }

          *(this + 240) = 1;
          *(this + 241) = v25 >> 30;
          *(this + 29) = v27 | 4;
          GlCustomLog(15, "GlPeGlnTimeMgr(%hu)[%u]:  [Unverified] Kp:%d  B1:%.6f B2:%.6f\n");
        }
      }

      break;
  }

LABEL_54:
  if (*(this + 5) != -7200001)
  {
    return;
  }

  v37 = *(v16 + 104);
  if (!*(v16 + 104))
  {
    v70 = v11;
    v71 = v14;
    v42 = "GlPeGlnTimeMgr(%hu)[%u]: SV health unknown so cannot use for time yet\n";
LABEL_77:
    v43 = 15;
LABEL_78:
    GlCustomLog(v43, v42, v70, v71, v72, *&v73, *&v74);
    return;
  }

  if ((v37 & 0x80) != 0)
  {
    BlueFin::GlSetBase::Remove(this + 1832, v11 - 52);
    BlueFin::GlSetBase::Remove(this + 1904, v11 - 52);
    BlueFin::GlSetBase::Remove(this + 1928, v11 - 52);
    v70 = v11;
    v71 = v14;
    v42 = "GlPeGlnTimeMgr(%hu)[%u]: SV not healthy so cannot use for time\n";
    goto LABEL_77;
  }

  if (v37 != 2)
  {
    v70 = v11;
    v71 = v14;
    v42 = "GlPeGlnTimeMgr(%hu)[%u]: SV health not verified so cannot use for time yet\n";
    goto LABEL_77;
  }

  if ((*(a2 + 5) & 1) == 0)
  {
    return;
  }

  a4.f64[0] = *(a2 + 4) * 1000.0 + 0.5;
  *a7.i64 = a4.f64[0] + trunc(a4.f64[0] * 2.32830644e-10) * -4294967300.0;
  v38.f64[0] = NAN;
  v38.f64[1] = NAN;
  v39 = vnegq_f64(v38);
  a7.i64[0] = vbslq_s8(v39, a7, a4).u64[0];
  if (a4.f64[0] > 4294967300.0)
  {
    a4.f64[0] = *a7.i64;
  }

  if (a4.f64[0] < -4294967300.0)
  {
    *a6.i64 = -a4.f64[0];
    a4.f64[0] = -(a4.f64[0] - trunc(a4.f64[0] * -2.32830644e-10) * -4294967300.0);
    a4.f64[0] = -*vbslq_s8(v39, a4, a6).i64;
  }

  v40 = *(a2 + 3);
  if (a4.f64[0] < 0.0)
  {
    v41 = --a4.f64[0];
  }

  else
  {
    v41 = a4.f64[0];
  }

  if (!v41)
  {
    v41 = BlueFin::GlPeGlnTimeMgr::computeLocalTimeStampMs(this, a2);
    if (!v41)
    {
      v71 = v14;
      v72 = v8;
      v70 = v11;
      v42 = "GlPeGlnTimeMgr(%hu)[%u]:  computeLocalTimeStampMs failed for string number %u\n";
      goto LABEL_95;
    }
  }

  if ((BlueFin::GlPeGlnTimeMgr::CheckGlonassStringTime(this, (v11 - 52), v8) & 1) == 0)
  {
    v71 = v14;
    v72 = v8;
    v70 = v11;
    v42 = "GlPeGlnTimeMgr(%hu)[%u]:  CheckGlonassStringTime failed for string number %u\n";
LABEL_95:
    v43 = 13;
    goto LABEL_78;
  }

  if (v8 <= 3)
  {
    if ((v8 - 2) < 2)
    {
      if ((*(this + 24) & 8) == 0)
      {
        BlueFin::GlPeGlnTimeMgr::ProcessString1(this, v15, v41, v40);
      }

LABEL_121:
      BlueFin::GlPeGlnTimeMgr::ProcessString4(this, v15, v41, v40);
LABEL_139:
      BlueFin::GlPeGlnTimeMgr::ProcessString5(this, v15, v41, v40);
      goto LABEL_140;
    }

    if (v8 == 1)
    {
      if ((*(this + 24) & 8) == 0)
      {
        v48 = 60000 * ((*(a2 + 5) >> 12) & 0x3F) + 3600000 * ((*(a2 + 5) >> 18) & 0x1F) + (((*(a2 + 5) << 20) >> 31) & 0x7530);
        if (v40 == v48)
        {
          BlueFin::GlPeGlnTimeMgr::ProcessSystemTime(this, v41, v40);
        }

        else
        {
          GlCustomLog(13, "GlPeGlnTimeMgr(%hu)[%u]:  System Time in string/ME mismatch: %u!=%u\n", v11, v14, v40, v48);
        }
      }

      BlueFin::GlSetBase::Remove(this + 1832, v11 - 52);
      goto LABEL_121;
    }

    goto LABEL_157;
  }

  if (v8 == 4)
  {
    if ((*(this + 24) & 8) == 0)
    {
      BlueFin::GlPeGlnTimeMgr::ProcessString1(this, v15, v41, v40);
      if (!*(this + 24))
      {
        goto LABEL_138;
      }
    }

    v53 = *(this + 25);
    if ((v53 & 8) != 0)
    {
      goto LABEL_138;
    }

    v54 = *(this + 8);
    if (v41 <= v54)
    {
      goto LABEL_138;
    }

    HIDWORD(v56) = *(a2 + 6);
    LODWORD(v56) = *(a2 + 7);
    v55 = v56 >> 5;
    if ((v55 >> 21) - 1462 <= 0xFFFFFA4A)
    {
      GlCustomLog(13, "GlPeGlnTimeMgr(%hu)[%u]:  Nt out of range:%hu\n");
LABEL_127:
      v63 = this + 1904;
LABEL_134:
      BlueFin::GlSetBase::Remove(v63, v11 - 52);
      return;
    }

    if (v41 - v54 >= 0x5265C00)
    {
      GlCustomLog(13, "GlPeGlnTimeMgr(%hu)[%u]:  DeltaAsicTimeMs on string 4 exceeded:%u\n");
      goto LABEL_127;
    }

    if (*(this + 25))
    {
      v61 = *(this + 20);
      if (v61 != v55 >> 21)
      {
        *(this + 25) = v53 & 0xF3;
        GlCustomLog(12, "GlPeGlnTimeMgr(%hu)[%u]:  NT mismatch detected!  %hu!=%hu\n", v11, v14, v61, v55 >> 21);
        goto LABEL_138;
      }

      v62 = v53 | 8;
    }

    else
    {
      *(this + 20) = v55 >> 21;
      *(this + 11) = v40;
      v62 = 4;
    }

    *(this + 25) = v62;
LABEL_138:
    BlueFin::GlSetBase::Remove(this + 1904, v11 - 52);
    goto LABEL_139;
  }

  if (v8 == 5)
  {
    if ((*(this + 24) & 8) == 0)
    {
      BlueFin::GlPeGlnTimeMgr::ProcessString1(this, v15, v41, v40);
    }

    if (!*(this + 25))
    {
      goto LABEL_154;
    }

    if (!*(this + 24))
    {
      goto LABEL_154;
    }

    v49 = *(this + 26);
    if ((v49 & 8) != 0)
    {
      goto LABEL_154;
    }

    v50 = *(this + 8);
    v51 = v41 - v50;
    if (v41 <= v50)
    {
      goto LABEL_154;
    }

    v52 = (*(a2 + 6) >> 10) & 0x1F;
    if ((v52 - 13) <= 0xFFFFFFF3)
    {
      GlCustomLog(13, "GlPeGlnTimeMgr(%hu)[%u]:  N4 out of range:%u\n");
LABEL_133:
      v63 = this + 1928;
      goto LABEL_134;
    }

    if (v51 >= 0x5265C00)
    {
      GlCustomLog(13, "GlPeGlnTimeMgr(%hu)[%u]:  DeltaAsicTimeMs on string 5 exceeded:%u\n");
      goto LABEL_133;
    }

    if (*(this + 26))
    {
      v64 = *(this + 48);
      if (v64 != v52)
      {
        *(this + 26) = v49 & 0xF3;
        GlCustomLog(12, "GlPeGlnTimeMgr(%hu)[%u]:  N4 mismatch detected!  %d!=%d\n", v11, v14, v64, v52);
        goto LABEL_154;
      }

      v65 = v49 | 8;
    }

    else
    {
      *(this + 48) = v52;
      *(this + 13) = v40;
      v65 = 4;
    }

    *(this + 26) = v65;
LABEL_154:
    BlueFin::GlSetBase::Remove(this + 1928, v11 - 52);
    BlueFin::GlPeGlnTimeMgr::ProcessString4(this, v15, v41, v40);
    goto LABEL_140;
  }

  if (v8 != 14)
  {
LABEL_157:
    v68 = "false";
    DeviceFaultNotify("glpe_glntimemgr.cpp", 806, "SetGlonassDataString", "false");
    v69 = 806;
LABEL_156:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_glntimemgr.cpp", v69, v68);
  }

LABEL_140:
  if ((*(this + 24) & 8) != 0 && (*(this + 25) & 8) != 0 && (*(this + 26) & 8) != 0 && *(this + 152) == 1)
  {
    v66 = *(this + 4);
    if (v66 == -7200001)
    {
      *(this + 4) = v14;
LABEL_149:
      v80 = 0;
      v79 = 0;
      v78 = 0;
      if (BlueFin::GlPeGlnTimeMgr::GetInitialTime(this, &v80, &v79, &v78, &v77))
      {
        LODWORD(v67) = *(this + 9);
        BlueFin::GlGlnsTime::GlGlnsTime(v76, v79, v78, v67 * 0.001);
        BlueFin::GlTimeDelta::GlTimeDelta(v75, (v14 - v80) * 0.001);
        BlueFin::GlWeekTowTime::operator+=(v76, v75);
        BlueFin::GlPeGlnTimeMgr::serialize(this, 0, v76, v66 != -7200001);
      }

      return;
    }

    if (*(this + 5) == -7200001 && (v14 - v66) >= 0x61A9)
    {
      *(this + 5) = v14;
      goto LABEL_149;
    }
  }
}

uint64_t BlueFin::GlPeSatAidInfo::GetAidRcvdSysTimeS(BlueFin::GlPeSatAidInfo *this, const BlueFin::GlSignalId *a2, const BlueFin::GlPeGnssTime *a3, double *a4, double *a5)
{
  v21 = *a2;
  v8 = *(a2 + 1);
  v9 = BlueFin::GlSvId::s_aucSvId2gnss[v21];
  result = BlueFin::GlPeSatAidInfo::GetAidBySvId(this, &v21);
  if (!result)
  {
    return result;
  }

  v11 = result;
  if ((*(result + 12) | 4) == 4 || *(result + 40) >= 0.0005)
  {
    return 0;
  }

  v12 = *(result + 4 * v8 + 56) / 299792458.0;
  if (v9 > 3)
  {
    switch(v9)
    {
      case 4:
        v19 = &off_2A1F0E4D0;
        v20 = 0;
        Bds = BlueFin::GlPeGnssTime::GetBds(a3, &v19);
        break;
      case 5:
        v19 = &off_2A1F0E480;
        v20 = 0;
        Bds = BlueFin::GlPeGnssTime::GetGal(a3, &v19);
        break;
      case 6:
        v19 = &off_2A1F0DFC8;
        v20 = 0;
        Bds = BlueFin::GlPeGnssTime::GetNic(a3, &v19);
        break;
      default:
        v14 = *a4;
LABEL_18:
        v15 = 604800.0;
        goto LABEL_19;
    }

LABEL_17:
    *a5 = Bds;
    v16 = (v19[4])(&v19);
    LODWORD(v17) = v20;
    v14 = v12 + *(v11 + 32) + v17 * 2.32830644e-10 + (v16 % 0x93A80);
    *a4 = v14;
    goto LABEL_18;
  }

  if (v9 != 2)
  {
    v19 = &off_2A1F0B5F0;
    v20 = 0;
    Bds = BlueFin::GlPeGnssTime::GetGps(a3, &v19);
    goto LABEL_17;
  }

  v19 = &off_2A1F0E430;
  v20 = 0;
  *a5 = BlueFin::GlPeGnssTime::GetGlns(a3, &v19);
  v14 = v12 + BlueFin::GlGlnsTime::getTodS(&v19) + *(v11 + 32);
  *a4 = v14;
  v15 = 86400.0;
LABEL_19:
  if (v14 >= 0.0)
  {
    v18 = v14 < v15;
  }

  else
  {
    v14 = v14 + v15;
    v18 = 0;
  }

  if (!v18)
  {
    if (v14 >= v15)
    {
      v14 = v14 - v15;
    }

    *a4 = v14;
  }

  return 1;
}

void BlueFin::GlMeSrdSatTrackMgr::OnReliableTransactionAck(int **this, void *a2)
{
  v3 = (this + 512);
  BlueFin::GlSetBase::Add((this + 648), this + 638);
  BlueFin::GlSetBase::Add((this + 668), this + 658);
  bzero(this[638], ((4 * v3[1016] + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  v4 = this[658];
  v5 = ((4 * v3[1176] + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4;

  bzero(v4, v5);
}

uint64_t BlueFin::GlMeAcqWindowProvider::SetBdsB1cSecCodeOffset(uint64_t this, unsigned int a2, int a3)
{
  v3 = *(this + 8);
  *(v3 + a2 + 10112) = a3 != -1;
  *(v3 + 4 * a2 + 10176) = a3;
  return this;
}

BOOL BlueFin::GLNFrameMgrUtils::Parity(BlueFin::GLNFrameMgrUtils *this, unsigned int *a2)
{
  v2 = 0;
  v3 = 0;
  v4 = &qword_298A39FC4;
  do
  {
    v5 = vand_s8(*v4, *(this + 4));
    v6 = v5.i32[0] ^ v4[-1].i32[1] & *this ^ v5.i32[1];
    v7 = v6 ^ HIWORD(v6) ^ ((v6 ^ HIWORD(v6)) >> 8);
    if ((0x6996u >> ((v7 ^ (v7 >> 4)) & 0xF)))
    {
      break;
    }

    v3 = v2 > 6;
    v4 = (v4 + 12);
    ++v2;
  }

  while (v2 != 8);
  return v3;
}

double BlueFin::GlPeGloEphemeris::computeTk(BlueFin::GlPeGloEphemeris *this, const BlueFin::GlGlnsTime *a2, BlueFin::GlGlnsTime *a3)
{
  *this = &off_2A1F0E430;
  *(this + 1) = 0;
  v6 = (*(*a2 + 192))(a2, 25);
  v7 = (*(*a2 + 192))(a2, 6);
  v8 = (*(*a2 + 232))(a2, 6);
  v9 = (*(*a2 + 192))(a2, 7);
  v10 = (*(*a2 + 232))(a2, 7);
  v11 = (*(*a2 + 192))(a2, 8);
  v12 = (*(*a2 + 232))(a2, 8);
  v14 = 3600 * v7 * v8 + 60 * v9 * v10 + v13 * v11;
  *v12.i64 = v14;
  v24 = v12;
  if ((*(*a2 + 80))(a2))
  {
    v16 = (*(*a2 + 192))(a2, 36);
    BlueFin::GlGlnsTime::GlGlnsTime(&v25, v16, v6, *v24.i64);
LABEL_10:
    result = v27;
    *(this + 1) = v27;
    return result;
  }

  v17.i64[1] = v24.i64[1];
  if (!v6)
  {
    BlueFin::GlGlnsTime::ResolveAmbiguity(a3, v24, &v25, v15);
    goto LABEL_10;
  }

  *v17.i64 = *v24.i64 - trunc(*v24.i64);
  v18.f64[0] = NAN;
  v18.f64[1] = NAN;
  v17.i64[0] = vbslq_s8(vnegq_f64(v18), v17, v24).i64[0];
  if (*v17.i64 >= 1.0)
  {
    DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
  }

  v19 = *v17.i64 * 4294967300.0 + 0.5;
  if (v19 >= 4294967300.0)
  {
    v20 = -1;
  }

  else
  {
    v20 = v19;
  }

  v25 = v20;
  v26 = v14 + 86400 * v6 - 86400;
  v21 = (*(*a3 + 32))(a3);
  v28[0] = *(a3 + 2);
  v28[1] = v21;
  BlueFin::GlTimePoint::resolveAmbiguity(&v25, v28, 0x7861F80u);
  v22 = (*(*a3 + 24))(a3, v26);
  *(this + 2) = v20;
  *(this + 3) = v22;
  return result;
}

unint64_t BlueFin::GlPeGloEphemeris::isSignedField(BlueFin::GlPeGloEphemeris *this, int a2)
{
  v2 = a2 - 2;
  if ((a2 - 2) >= 0x26 || ((0x37FFFFFFFDuLL >> v2) & 1) == 0)
  {
    DeviceFaultNotify("glpe_glnephmgr.cpp", 492, "isSignedField", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_glnephmgr.cpp", 492, "0");
  }

  return (0x40FFE04uLL >> v2) & 1;
}

double BlueFin::GlPeGloEphemeris::GetFloatingScaleFactor(BlueFin::GlPeGloEphemeris *this, int a2)
{
  result = 1.0;
  if ((a2 - 8) <= 0x14)
  {
    return dbl_298A3C588[(a2 - 8)];
  }

  return result;
}

uint64_t BlueFin::GlPeGloEphemeris::isTimeSet(BlueFin::GlPeGloEphemeris *this)
{
  result = (*(*this + 192))(this, 35);
  if (result)
  {
    return (*(*this + 192))(this, 25) != 0;
  }

  return result;
}

uint64_t BlueFin::GlGlnsTime::ResolveAmbiguity@<X0>(BlueFin::GlGlnsTime *this@<X0>, int8x16_t a2@<Q0>, uint64_t a3@<X8>, int8x16_t a4@<Q1>)
{
  *a4.i64 = *a2.i64 - trunc(*a2.i64);
  v5.f64[0] = NAN;
  v5.f64[1] = NAN;
  a4.i64[0] = vbslq_s8(vnegq_f64(v5), a4, a2).i64[0];
  v6 = *a4.i64 * 4294967300.0 + 0.5;
  v7 = v6;
  if (v6 >= 4294967300.0)
  {
    v7 = -1;
  }

  v15 = v7;
  if (*a4.i64 < 0.0 || *a4.i64 >= 1.0)
  {
    v12 = "dFracSec >= 0.0 && dFracSec < 1.0";
    DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
    v13 = 173;
    goto LABEL_11;
  }

  v16 = *a2.i64;
  if (*a2.i64 < 0.0)
  {
    v12 = "dCtFctS >= 0.0";
    DeviceFaultNotify("glpe_timepoint.h", 463, "GlTimePoint", "dCtFctS >= 0.0");
    v13 = 463;
LABEL_11:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", v13, v12);
  }

  v10 = (*(*this + 32))(this);
  v14[0] = *(this + 2);
  v14[1] = v10;
  BlueFin::GlTimePoint::resolveAmbiguity(&v15, v14, 0x15180u);
  result = (*(*this + 24))(this, v16);
  *(a3 + 8) = v15;
  *(a3 + 12) = result;
  *a3 = &off_2A1F0E430;
  return result;
}

uint64_t BlueFin::GlPeGloEphemeris::GetIntegerScaleFactor(BlueFin::GlPeGloEphemeris *this, int a2)
{
  if ((a2 - 2) >= 0x26 || ((0x37FBF001FDuLL >> (a2 - 2)) & 1) == 0)
  {
    DeviceFaultNotify("glpe_glnephmgr.cpp", 632, "GetIntegerScaleFactor", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_glnephmgr.cpp", 632, "0");
  }

  return dword_298A3C4F0[(a2 - 2)];
}

uint64_t BlueFin::GlPeNavMeasSelect::SelectRr(uint64_t result, uint64_t a2, BlueFin::GlSetBase *a3, uint64_t a4, int a5, int a6, int a7, int a8, BOOL a9)
{
  v13 = result;
  v14 = *(result + 36);
  if (!v14 || **(result + 24) != v14)
  {
    if (!**a3)
    {
      v30 = *(a3 + 8);
      if (v30 < 2)
      {
        goto LABEL_26;
      }

      v31 = v30 - 1;
      v32 = (*a3 + 4);
      while (!*v32++)
      {
        if (!--v31)
        {
          goto LABEL_26;
        }
      }
    }

    BlueFin::GlSetBase::GlSetBase(&v52, v53, 0x13u, a3);
    if ((*(v13 + 140) & 1) == 0)
    {
      BlueFin::GlPeNavMeasSelect::RemoveGhosts(v13, a2, a3, a9);
    }

    BlueFin::GlSetBase::GlSetBase(&v56, v57, 0x13u, a3);
    v48 = &v49[4];
    v49[0] = 19;
    memset(&v49[4], 0, 32);
    v50 = 0u;
    memset(v51, 0, 28);
    BlueFin::GlSetBase::OperatorBinaryInversion(&v56, &v48);
    BlueFin::GlSetBase::operator=(&v56, &v48);
    v57[1] = *&v49[20];
    v57[2] = v50;
    *v58 = v51[0];
    *&v58[12] = *(v51 + 12);
    v57[0] = *&v49[4];
    BlueFin::GlSignalIdSet::setSignalIdLimits(&v56);
    v15 = BlueFin::GlSetBase::GlSetBase(v59, &v59[12], 0x13u, &v52);
    v48 = &v49[4];
    v49[0] = 19;
    memset(&v49[4], 0, 32);
    v50 = 0u;
    memset(v51, 0, 28);
    BlueFin::GlSetBase::OperatorBinaryAnd(v15, &v48, &v56);
    BlueFin::GlSetBase::operator=(v59, &v48);
    v60 = *&v49[20];
    v61 = v50;
    v62[0] = v51[0];
    *(v62 + 12) = *(v51 + 12);
    *&v59[12] = *&v49[4];
    BlueFin::GlSetBase::operator=(&v52, v59);
    v53[1] = v60;
    v53[2] = v61;
    *v54 = v62[0];
    *&v54[12] = *(v62 + 12);
    v53[0] = *&v59[12];
    BlueFin::GlPeMsmtMgr::SetRrCode(*(v13 + 8), &v52, 16);
    LOBYTE(v48) = *(a3 + 8);
    v16 = *a3;
    memcpy(v49, *a3, 4 * v48);
    WORD1(v48) = 0;
    BYTE1(v48) = 0;
    HIDWORD(v48) = *v49;
    BlueFin::GlSetIterator::operator++(&v48);
    if (BYTE1(v48) != v48)
    {
      v45 = a7;
      v46 = a8;
      do
      {
        v17 = WORD1(v48);
        if (WORD1(v48) >= 0x23FuLL)
        {
          DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
        }

        v18 = *(v13 + 24);
        v19 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * WORD1(v48);
        v21 = v19[1];
        v59[0] = *v19;
        v20 = v59[0];
        *&v59[4] = v21;
        *&v59[8] = WORD1(v48);
        MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(v18, v59, 0, 0);
        v23 = *(v13 + 24);
        v59[0] = v20;
        *&v59[4] = v21;
        *&v59[8] = v17;
        v24 = BlueFin::GlPeMsmtMgr::AccessPeMeas(v23, v59, 0);
        v25 = v24;
        if (*(MeMeas + 27) > 0.000000015 || (v26 = MeMeas[40], !BlueFin::stPeSigMeasKF::IsRRValidForNav(v24)) || *(v13 + 140) == 1 && v26 == 5 * ((858993460 * v26) >> 32))
        {
          BlueFin::GlSetBase::Remove(a3, v17);
          *(v25 + 129) = 18;
        }

        BlueFin::GlSetIterator::operator++(&v48);
      }

      while (BYTE1(v48) != v48);
      v16 = *a3;
      a8 = v46;
      a7 = v45;
    }

    if (*v16)
    {
LABEL_17:
      *v59 = *a4;
      *&v59[16] = *(a4 + 16);
      v27 = *(v13 + 128);
      BlueFin::GlPeNavUtil::ComputeRrateResidVec(v13);
      if (a7)
      {
        BlueFin::GlPeNavGnssState::GlPeNavGnssState(&v49[16], (a2 + *(*a2 - 24)));
        v48 = &off_2A1F12F90;
        *&v49[16] = &unk_2A1F12FC8;
        *v49 = *(a2 + 8);
        v28 = BlueFin::GlSetBase::GlSetBase(v59, &v59[12], 0x13u, a3);
        BlueFin::GlSignalIdSet::GetSvIdSet(v28, v55);
        BlueFin::GlPeNavUtil::ComputeDops(&v48, v55);
        v29 = 2.5;
        if ((**(v13 + 24) - a8) > 0xC350)
        {
          v29 = 6.0;
        }

        if (v29 < *v58)
        {
          BlueFin::GlPeMsmtMgr::SetRrCode(*(v13 + 8), a3, 24);
          bzero(*a3, ((4 * *(a3 + 8) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
        }
      }

LABEL_26:
      BlueFin::GlSetBase::operator=(v13 + 40, a3);
      *(v13 + 52) = *(a3 + 12);
      v34 = *(a3 + 28);
      v35 = *(a3 + 44);
      v36 = *(a3 + 60);
      *(v13 + 112) = *(a3 + 72);
      *(v13 + 100) = v36;
      *(v13 + 84) = v35;
      *(v13 + 68) = v34;
      v37 = **(v13 + 24);
      *(v13 + 36) = v37;
      result = BlueFin::GlSetBase::Cnt(a3);
      if (result < 3)
      {
        return result;
      }

      goto LABEL_27;
    }

    v38 = *(a3 + 8);
    if (v38 >= 2)
    {
      v39 = v38 - 1;
      v40 = v16 + 1;
      do
      {
        if (*v40++)
        {
          goto LABEL_17;
        }
      }

      while (--v39);
    }

    BlueFin::GlSetBase::operator=(v13 + 40, a3);
    *(v13 + 52) = *(a3 + 12);
    v42 = *(a3 + 28);
    v43 = *(a3 + 44);
    v44 = *(a3 + 60);
    *(v13 + 112) = *(a3 + 72);
    *(v13 + 100) = v44;
    *(v13 + 84) = v43;
    *(v13 + 68) = v42;
    v37 = **(v13 + 24);
    *(v13 + 36) = v37;
    result = BlueFin::GlSetBase::Cnt(a3);
    if (result > 2)
    {
LABEL_27:
      *(v13 + 32) = v37;
    }
  }

  return result;
}

void BlueFin::GlPeNavGnssKF::PackSkfMeas_RR(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  *v83 = v8;
  v9 = v1;
  v10 = 0;
  v103[100] = *MEMORY[0x29EDCA608];
  do
  {
    v11 = &v102[v10 + 1200];
    *v11 = 0;
    *(v11 + 1) = -1;
    *(v11 + 4) = 575;
    v10 += 12;
  }

  while (v10 != 1200);
  for (i = 0; i != 1200; i += 12)
  {
    v13 = &v102[i];
    *v13 = 0;
    *(v13 + 5) = 575;
  }

  v14 = *(v1[281] + 8);
  if ((*(*v1 + 72))(v1) >= 0x2711 && BlueFin::GlSetBase::Cnt(v7) <= 3)
  {
    BlueFin::GlPeMsmtMgr::SetRrCode(*(v9 + 8), v7, 27);
    v15 = *v7;
    v16 = *MEMORY[0x29EDCA608];
    v17 = ((4 * *(v7 + 8) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4;

    bzero(v15, v17);
    return;
  }

  v82 = v3;
  v84 = v14 - 1;
  v96 = *(v7 + 8);
  memcpy(v100, *v7, 4 * v96);
  v98 = 0;
  v97 = 0;
  v99 = v100[0];
  BlueFin::GlSetIterator::operator++(&v96);
  v19 = 0;
  if (v97 != v96)
  {
    v19 = 0;
    v21 = v102;
    do
    {
      if (v98 >= 0x23FuLL)
      {
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
      }

      v22 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v98;
      v23 = *v22;
      LODWORD(v22) = v22[1];
      v93[0] = v23;
      v94 = v22;
      v95 = v98;
      v24 = *(v9 + 8);
      if (((*(*(v24 + 184) + ((v98 >> 3) & 0x1FFC)) >> (v98 & 0x1F)) & 1) == 0)
      {
        goto LABEL_65;
      }

      MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(v24, v93, 0, 0);
      PeMeas = BlueFin::GlPeMsmtMgr::GetPeMeas(*(v9 + 8), v93, 0);
      if (*(MeMeas + 27) >= 0.000000016 || (v27 = PeMeas, (BlueFin::stPeSigMeasKF::IsRRValidForNav(PeMeas) & 1) == 0))
      {
        v51 = BlueFin::GlSignalIdArray::Get(*(*(v9 + 8) + 18792), v93);
        if (v51)
        {
          *(v51 + 273) = 33;
        }

        goto LABEL_65;
      }

      v87 = &v89;
      v88 = 19;
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      memset(v92, 0, sizeof(v92));
      if ((*(*(v9 + 2248) + 8) - 3) >= 0xFFFFFFFE && (*(*(v9 + 2256) + 96) & 1) == 0 && BlueFin::GlSetBase::Cnt(v7) >= 5 && (*(v9 + 5596) & 1) == 0 && !(*(*v9 + 264))(v9))
      {
        *(v87 + (v95 >> 5)) |= 1 << v95;
        v28 = *(*v9 + 192);
        v29 = *v9 + 192;
        v30 = v9 + *(*v9 - 24);
        v85 = *(v30 + 8);
        v86 = *(v30 + 24);
        v31 = *(v9 + 88 + *(v29 - 216));
        v81 = **(v9 + 2240);
        v32 = v28(v9);
        v33 = (v9 + *(*v9 - 24));
        v34 = v33[52];
        v35 = v33[54];
        v36 = v33[56];
        v37 = v33[58];
        BlueFin::GlPeNavUtil::ComputeRangeResidVec(v9, &v87, &v85, v81, 0, 0, 0, 1, v32, 1);
        v38 = (*(*(v9 + *(*v9 - 24)) + 16))(v9 + *(*v9 - 24));
        v39 = fabs(*(v101[0] + 8));
        v40 = v38 * 1.5;
        if (v40 < 100.0)
        {
          v40 = 100.0;
        }

        if (v39 > v40)
        {
          v68 = BlueFin::GlSignalIdArray::Get(*(*(v9 + 8) + 18792), v93);
          if (v68)
          {
            *(v68 + 273) = 18;
          }

          goto LABEL_65;
        }
      }

      v41 = &v102[12 * v19 + 1200];
      v42 = v95;
      if (v41 != v93)
      {
        *v41 = v93[0];
        *(v41 + 1) = v94;
        *(v41 + 4) = v42;
      }

      *(v87 + (v42 >> 5)) |= 1 << v42;
      v43 = *v9;
      v44 = v9 + *(*v9 - 24);
      v85 = *(v44 + 8);
      v86 = *(v44 + 24);
      v45 = v9 + *(v43 - 24);
      v46 = *(v45 + 88);
      v47 = **(v9 + 2240);
      v48 = *(v45 + 152);
      BlueFin::GlPeNavUtil::ComputeRrateResidVec();
      if (!*v87)
      {
        if (v88 < 2uLL)
        {
LABEL_42:
          v55 = BlueFin::GlSignalIdArray::Get(*(*(v9 + 8) + 18792), v93);
          if (v55)
          {
            *(v55 + 273) = 18;
          }

          goto LABEL_65;
        }

        v52 = v88 - 1;
        v53 = v87 + 1;
        while (!*v53++)
        {
          if (!--v52)
          {
            goto LABEL_42;
          }
        }
      }

      v49 = *(MeMeas + 5);
      if (v49 == 4)
      {
        if ((*(*(v9 + 2248) + 8) - 1) >= 2)
        {
          v50 = 5.0;
        }

        else
        {
          v50 = 2.0;
        }
      }

      else
      {
        v50 = 2.0;
        if (v49 <= 2)
        {
          if ((*(*(v9 + 2248) + 8) - 1) > 4)
          {
            v56 = 0;
          }

          else
          {
            IsPRValidForNav = BlueFin::stPeSigMeasKF::IsPRValidForNav(v27);
            v56 = 0;
            if ((IsPRValidForNav & 1) == 0 && *(v27 + 52) <= 28)
            {
              v56 = sqrt(*(v9 + *(*v9 - 24) + 112) * *(v9 + *(*v9 - 24) + 112) + *(v9 + *(*v9 - 24) + 104) * *(v9 + *(*v9 - 24) + 104)) > 0.5;
            }
          }

          goto LABEL_46;
        }
      }

      v56 = 1;
LABEL_46:
      v57 = v93[0];
      v58 = v93[0] - 76;
      if (v93[0] - 134 >= 5 && v58 >= 5)
      {
        v60 = v50;
      }

      else
      {
        v60 = 10.0;
      }

      v61 = *(MeMeas + 29);
      v62 = (30.0 / fmaxf(fminf(v61, 40.0), 25.0));
      if (*(*(v9 + 2248) + 16) == 1)
      {
        v63 = 1.0;
      }

      else
      {
        v63 = v62;
      }

      v64 = *(v101[0] + 8);
      v65 = fabs(v64) * v63;
      *&v103[v19] = v65;
      if (v84 <= 1 && ((v94 - 1) < 3 || (v57 - 139) <= 0x23) && *(v27 + 18) < 0.000000016)
      {
        v65 = v65 * 0.5;
        *&v103[v19] = v65;
      }

      if (v56 || v58 <= 0x3E && ((1 << v58) & 0x7C0000000000001FLL) != 0)
      {
        *&v103[v19] = v60 * v65;
      }

      v66 = v64;
      *v21 = v66;
      v21[1] = ((v61 / -40.0) * (*(v27 + 52) / 90.0)) * (3.0 / (*(MeMeas + 27) * 1000000000.0));
      *(v21 + 5) = v95;
      *(v21 + 8) = (*(MeMeas + 5) - 1) < 2;
      v21 += 3;
      ++v19;
LABEL_65:
      BlueFin::GlSetIterator::operator++(&v96);
    }

    while (v97 != v96);
  }

  if (v19 >= v5)
  {
    v20 = v5;
  }

  else
  {
    v20 = v19;
  }

  if (v20 >= 2)
  {
    v69 = v101;
    BlueFin::GlSortDoubles(v103, v19, v101, v18);
    v70 = 0;
    v87 = &v89;
    v88 = 19;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    memset(v92, 0, sizeof(v92));
    v71 = *v83;
    while (0x6DB6DB6DB6DB6DB7 * ((v71 - *v83) >> 3) < v20)
    {
      v72 = &v102[12 * *v69 + 1200];
      if (BlueFin::GlPeNavUtil::PackSkfMeas_RR_SignalId(v9, v71, v72, v84 < 2))
      {
        v71 += 56;
        *(v87 + (v72[4] >> 5)) |= 1 << v72[4];
      }

      ++v70;
      ++v69;
      if (v20 == v70)
      {
        goto LABEL_85;
      }
    }

    if (v70 < v20)
    {
      v73 = v20 - v70;
      do
      {
        v74 = *v69++;
        v75 = BlueFin::GlSignalIdArray::Get(*(*(v9 + 8) + 18792), &v102[12 * v74 + 1200]);
        if (v75)
        {
          *(v75 + 273) = 43;
        }

        --v73;
      }

      while (v73);
    }

LABEL_85:
    BlueFin::GlSetBase::operator=(v7, &v87);
    v76 = v89;
    *(v7 + 28) = v90;
    v77 = *v92;
    *(v7 + 44) = v91;
    *(v7 + 60) = v77;
    *(v7 + 72) = *&v92[12];
    *(v7 + 12) = v76;
  }

  else
  {
    BlueFin::GlPeMsmtMgr::SetRrCode(*(v9 + 8), v7, 23);
    bzero(*v7, ((4 * *(v7 + 8) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  }

  if ((*(v82 + 1) & 0x40) != 0)
  {
    v78 = *(v9 + *(*v9 - 24) + 200);
    v79 = (*(*v9 + 72))(v9);
    BlueFin::GlPeNavGnssResidMon::RunBcMon(v9 + 4864, v78, v79, v102, v7, 0);
  }

  v80 = *MEMORY[0x29EDCA608];
}

uint64_t BlueFin::GlSortDoubles(uint64_t this, const double *a2, _BYTE *a3, unsigned __int8 *a4)
{
  *a3 = 0;
  if (a2 >= 2)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = *(this + 8 * v5);
      v7 = v4;
      while (1)
      {
        v8 = a3[v7];
        if (*(this + 8 * v8) <= v6)
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

uint64_t BlueFin::GlPeNavGnssKF::ComputePosition(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v176 = v2;
  v4 = v1;
  v221[100] = *MEMORY[0x29EDCA608];
  v5 = v1 + 7976;
  v6 = *v1;
  *(v1 + *(*v1 - 24) + 256) = 0;
  v7 = *(v3 + 440);
  if (*v7)
  {
    v8 = 1;
  }

  else
  {
    v9 = *(v3 + 448);
    v10 = v9 >= 2;
    v11 = v9 - 2;
    if (v10)
    {
      v12 = v7 + 1;
      do
      {
        v13 = *v12++;
        v8 = v13 != 0;
        if (v13)
        {
          v14 = 1;
        }

        else
        {
          v14 = v11 == 0;
        }

        --v11;
      }

      while (!v14);
    }

    else
    {
      v8 = 0;
    }
  }

  v171 = v8;
  v167 = v3;
  *(v1 + 7984) = 0;
  *v5 = 0;
  if ((*(v2 + 1) & 8) != 0)
  {
    *(v1 + 4860) = 1;
  }

  *(v1 + 2888) = 0;
  *(v1 + 2872) = 0u;
  *(v1 + 2904) = 0x4082C00000000000;
  *(v1 + 2912) = vdupq_n_s64(0x4082C00000000000uLL);
  *(v1 + 2932) = 0;
  *(v1 + 2936) = xmmword_298A41E50;
  *(v1 + 2896) = 0;
  *(v1 + 2928) = 1142285679;
  bzero(*(v1 + 2952), ((4 * *(v1 + 2960) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  bzero(*(v4 + 1616), ((4 * *(v4 + 1624) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  bzero(*(v4 + 1704), ((4 * *(v4 + 1712) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  v15 = *(v4 + 8);
  v16 = (v4 + *(v6 - 24));
  BlueFin::GlSetBase::operator=(v16 + 264, v15 + 184);
  *(v16 + 276) = *(v15 + 196);
  v17 = *(v15 + 212);
  v18 = *(v15 + 228);
  v19 = *(v15 + 244);
  v16[21] = v15[16];
  *(v16 + 308) = v18;
  *(v16 + 324) = v19;
  *(v16 + 292) = v17;
  v20 = *(v4 + 8);
  v21 = v4 + *(*v4 - 24);
  BlueFin::GlSetBase::operator=(v21 + 352, v20 + 184);
  *(v21 + 364) = *(v20 + 196);
  v22 = *(v20 + 212);
  v23 = *(v20 + 228);
  v24 = *(v20 + 244);
  *(v21 + 424) = v20[16];
  *(v21 + 396) = v23;
  *(v21 + 412) = v24;
  *(v21 + 380) = v22;
  v25 = *v4;
  v26 = v4 + *(*v4 - 24);
  *(v26 + 56) = *(v26 + 8);
  *(v26 + 72) = *(v26 + 24);
  *(v4 + 6868) = v171;
  if (!v171)
  {
    v27 = *v176;
    BlueFin::GlPeNavGnssKF::Propagate(v4);
    v25 = *v4;
  }

  BlueFin::GlPeNavGnssState::Print(v4 + *(v25 - 24), 0xEu, "KF-");
  v28 = *v176;
  if ((*v176 & 0x40000000) != 0)
  {
    v199 = &v201;
    v200 = 19;
    v201 = 0u;
    v202 = 0u;
    v203 = 0u;
    memset(v204, 0, sizeof(v204));
    BlueFin::GlSignalIdSet::GetSignalIdSet(v4 + *(*v4 - 24) + 264, 4, v218);
    BlueFin::GlSetBase::operator=(&v199, v218);
    v203 = *&v218[44];
    *v204 = *&v218[60];
    *&v204[12] = *&v218[72];
    v201 = *&v218[12];
    v202 = *&v218[28];
    v29 = (v4 + *(*v4 - 24));
    BlueFin::GlSetBase::operator=(v29 + 264, &v199);
    v30 = *v204;
    *(v29 + 308) = v203;
    *(v29 + 324) = v30;
    v29[21] = *&v204[12];
    v31 = v202;
    *(v29 + 276) = v201;
    *(v29 + 292) = v31;
    BlueFin::GlSignalIdSet::GetSignalIdSet(v4 + *(*v4 - 24) + 352, 4, v218);
    BlueFin::GlSetBase::operator=(&v199, v218);
    v203 = *&v218[44];
    *v204 = *&v218[60];
    *&v204[12] = *&v218[72];
    v201 = *&v218[12];
    v202 = *&v218[28];
    v32 = v4 + *(*v4 - 24);
    BlueFin::GlSetBase::operator=(v32 + 352, &v199);
    v33 = *v204;
    *(v32 + 396) = v203;
    *(v32 + 412) = v33;
    *(v32 + 424) = *&v204[12];
    v34 = v202;
    *(v32 + 364) = v201;
    *(v32 + 380) = v34;
    v28 = *v176;
  }

  BlueFin::GlPeNavMeasSelect::GlPeNavMeasSelect(&v199, *(v4 + 16), *(v4 + 8));
  if (*(*(v4 + 2272) + 2) < 1)
  {
    v37 = *(v4 + 40);
    v38 = *(*(v37 + 16) + 16);
    if (*(v4 + 26) == 1)
    {
      v39 = *(*(v37 + 32) + 32);
      v38 = v38 + v39;
    }

    v36 = fmax(sqrtf(v38), 7.5);
    v206 = v36;
    v40 = sqrt(*(v4 + *(*v4 - 24) + 112) * *(v4 + *(*v4 - 24) + 112) + *(v4 + *(*v4 - 24) + 104) * *(v4 + *(*v4 - 24) + 104));
    v41 = v40 + v40;
    if (v41 >= v36)
    {
      v36 = v41;
    }
  }

  else
  {
    v35 = sqrt(*(v4 + *(*v4 - 24) + 112) * *(v4 + *(*v4 - 24) + 112) + *(v4 + *(*v4 - 24) + 104) * *(v4 + *(*v4 - 24) + 104));
    v36 = v35 + v35;
    if (v36 < 7.5)
    {
      v36 = 7.5;
    }
  }

  v206 = v36;
  v42 = *(v4 + 2248);
  v43 = *(v42 + 1760);
  if (v43 <= 0.0)
  {
    v43 = 15.5;
  }

  if (*(v42 + 16) > 2)
  {
    v43 = 11.5;
  }

  if ((v28 & 8) != 0)
  {
    v44 = 9.0;
  }

  else
  {
    v44 = v43;
  }

  BlueFin::GlPeNavGnssKF::PolaroidIsTunnelExitOrLeftRecently(v4, 0x4E20u);
  v207 = v44;
  v208 = *(*(v4 + 2248) + 1989);
  v45 = *v4;
  v46 = v4 + *(*v4 - 24);
  v47 = *(v46 + 88);
  v48 = **(v4 + 2240);
  *v218 = *(v46 + 104);
  *&v218[16] = *(v46 + 120);
  v49 = *(v4 + 2272);
  v50 = *(v49 + 2) >= 1 && *(v49 + 45) == 0;
  v51 = *(v46 + 152);
  v52 = (*(v45 + 80))(v4);
  BlueFin::GlPeNavMeasSelect::SelectRr(&v199, v4, (v46 + 352), v46 + 8, v48, v218, v50, v52, 0);
  BlueFin::GlPeNavMeasSelect::SelectPr(&v199, v4, (v4 + *(*v4 - 24) + 264), 0);
  if (*(*(v4 + 2272) + 2) < 1)
  {
    v168 = 0;
    goto LABEL_46;
  }

  v54 = *(*(v4 + 2248) + 8);
  v168 = 1;
  if (v54 <= 6)
  {
    if (((1 << v54) & 0x29) != 0)
    {
      LODWORD(v199) = 0;
      if (BlueFin::GlPeNavUtil::GetIntegrityGeometry(v4, (v4 + *(*v4 - 24) + 264), &v199, 3.0, v4 + *(*v4 - 24) + 8, 0) > 1)
      {
LABEL_42:
        v168 = 1;
        goto LABEL_46;
      }
    }

    else if (((1 << v54) & 6) != 0)
    {
      v55 = *(v4 + 16);
      *v218 = 0;
      *&v218[8] = &v218[20];
      v218[16] = 8;
      memset(&v218[20], 0, 32);
      *&v218[56] = xmmword_298A41DA0;
      *&v218[72] = vdup_n_s32(0x42C60000u);
      *&v218[80] = 1120272384;
      BlueFin::stDops::stDops(&v199, v218);
      v205 = v55;
      v56 = **(v4 + 8);
      BlueFin::GlSignalIdSet::GetSvIdSet((v4 + *(*v4 - 24) + 264), v209);
      v179 = *(v4 + *(*v4 - 24) + 88);
      LODWORD(v221[0]) = **(v4 + 2240);
      LODWORD(v220[0]) = 0;
      BlueFin::GlPeDops::GetDops();
      v209[0] = 0;
      IntegrityGeometry = BlueFin::GlPeNavUtil::GetIntegrityGeometry(v4, (v4 + *(*v4 - 24) + 264), v209, 3.0, v4 + *(*v4 - 24) + 8, 0);
      if (*&v218[60] < 1.5)
      {
        v53.n128_u32[0] = *&v218[72];
        if (*&v218[72] < 3.0 && IntegrityGeometry > 0)
        {
          goto LABEL_42;
        }
      }
    }

    else
    {
      if (v54 != 6)
      {
        goto LABEL_46;
      }

      if (BlueFin::GlSetBase::Cnt((v4 + *(*v4 - 24) + 264)) > 3)
      {
        goto LABEL_42;
      }
    }

    BlueFin::GlPeMsmtMgr::SetPrCode(*(v4 + 8), v4 + *(*v4 - 24) + 264, 27);
    BlueFin::GlPeMsmtMgr::SetRrCode(*(v4 + 8), v4 + *(*v4 - 24) + 352, 27);
    v58 = *v4;
    bzero(*(v4 + *(*v4 - 24) + 264), ((4 * *(v4 + *(*v4 - 24) + 272) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    bzero(*(v4 + *(v58 - 24) + 352), ((4 * *(v4 + *(v58 - 24) + 360) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    v168 = 0;
    *(v4 + 1560) = 0;
  }

LABEL_46:
  if (*v176)
  {
    v53.n128_f32[0] = (*(*v4 + 64))(v4, v53) / (*(v4 + 2184) * 1000.0);
    if (v53.n128_f32[0] >= 2)
    {
      v59 = *(v4 + 2272);
      if (*(v59 + 2) >= 1 && (*(v59 + 45) & 1) == 0 && *(*(v4 + 2248) + 8) == 6)
      {
        v60 = 7;
LABEL_58:
        result = (*(*v4 + 24))(v4, v60);
        goto LABEL_217;
      }
    }
  }

  if ((*v176 & 2) != 0)
  {
    v53.n128_f32[0] = (*(*v4 + 64))(v4, v53) / (*(v4 + 2184) * 1000.0);
    if (v53.n128_f32[0] >= 2)
    {
      v61 = *(v4 + 2272);
      if (*(v61 + 2) >= 1 && (*(v61 + 45) & 1) == 0 && (*(*(v4 + 2248) + 8) - 1) <= 1)
      {
        v60 = 6;
        goto LABEL_58;
      }
    }
  }

  v63 = *v176;
  v64 = *(v4 + 2256);
  v65 = (*(*v4 + 128))(v4, v53);
  v66 = (*(*v4 + 160))(v4);
  v67 = BlueFin::GlPeExtLoc::WaitPosLocVerification(v64, v65, v66, (v63 & 0x1000) != 0);
  v68 = *v4;
  v69 = *v4;
  v70 = BlueFin::GlSetBase::Cnt((v4 + *(*v4 - 24) + 264));
  if (v67)
  {
    v71 = 7977;
    v72 = 7976;
LABEL_83:
    *(v4 + v71) = 0;
    *(v4 + v72) = 1;
    goto LABEL_84;
  }

  if ((v63 & 0x1000000) != 0)
  {
    goto LABEL_81;
  }

  v73 = *(v4 + 2256);
  v74 = *(v73 + 17);
  v75 = v74 && *(v74 + 3008) == 1 && vaddvq_f64(vmulq_f64(*(v74 + 3040), *(v74 + 3040))) < 160000.0;
  if (!v75 && !v70)
  {
    if (*v73 < 1)
    {
      goto LABEL_84;
    }

    goto LABEL_76;
  }

  if (v70)
  {
    v75 = 0;
  }

  *(v5 + 1) = v75;
  *v5 = 1;
  if (*v73 > 0)
  {
LABEL_76:
    if (!v74 || *(v74 + 3008) != 1)
    {
      goto LABEL_82;
    }

    v76 = *(v74 + 3040);
    v71 = 7981;
    v72 = 7980;
    if (vaddvq_f64(vmulq_f64(v76, v76)) >= 160000.0 || v70 > 2 || v76.f64[0] >= 35.0)
    {
      goto LABEL_83;
    }

LABEL_81:
    *v5 = 257;
    BlueFin::GlPeMsmtMgr::SetPrCode(*(v4 + 8), v4 + *(v69 - 24) + 264, 26);
    BlueFin::GlPeMsmtMgr::SetRrCode(*(v4 + 8), v4 + *(*v4 - 24) + 352, 26);
    v68 = *v4;
    v77 = *v4;
    bzero(*(v4 + *(v68 - 24) + 264), ((4 * *(v4 + *(v68 - 24) + 272) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    bzero(*(v4 + *(v77 - 24) + 352), ((4 * *(v4 + *(v77 - 24) + 360) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    *(v4 + 1560) = 0;
LABEL_82:
    v71 = 7981;
    v72 = 7980;
    goto LABEL_83;
  }

LABEL_84:
  v78 = &v202 + 6;
  v79 = 5600;
  do
  {
    *(v78 - 8) = 0;
    *(v78 - 1) = -1;
    *v78 = 575;
    v78 += 28;
    v79 -= 56;
  }

  while (v79);
  v80 = *(v68 - 24);
  v170 = (*(v68 + 72))(v4);
  v174 = v4 + v80;
  if (v170 < 0x1389)
  {
    BlueFin::GlPeNavGnssKF::PackSkfMeas_RR(v4);
    v81 = BlueFin::GlSetBase::Cnt((v174 + 352));
    v173 = &v199 + 7 * v81;
    v82 = 100 - v81;
    goto LABEL_97;
  }

  v83 = *(v4 + 16);
  v209[0] = 0;
  v210 = v212;
  v211 = 8;
  memset(v212, 0, 32);
  v213 = xmmword_298A41DA0;
  v214 = vdup_n_s32(0x42C60000u);
  v215 = 1120272384;
  BlueFin::stDops::stDops(v218, v209);
  v219 = v83;
  v84 = **(v4 + 8);
  BlueFin::GlSignalIdSet::GetSvIdSet((v4 + *(*v4 - 24) + 264), &v179);
  v221[0] = *(v4 + *(*v4 - 24) + 88);
  LODWORD(v220[0]) = **(v4 + 2240);
  LODWORD(v216[0]) = 0;
  BlueFin::GlPeDops::GetDops();
  v85 = *(v4 + 2248);
  if (*(v85 + 1764))
  {
    v86 = 60;
  }

  else
  {
    v86 = 180;
  }

  if (*(v85 + 1328) > 4.0 && *(v85 + 1320) < 20.0 && *(v85 + 76) >= v86 && ((*(v85 + 1764) & 1) != 0 || *(v85 + 64) == 1) || BlueFin::GlSetBase::Cnt((v174 + 264)) >= 4 && *(&v213 + 1) <= 10.0)
  {
    v173 = &v199;
    v82 = 100;
LABEL_97:
    v166 = v82;
    *(v4 + 6896) = 0;
    bzero(v221, 0x320uLL);
    bzero(v220, 0x320uLL);
    for (i = 0; i != 1200; i += 12)
    {
      v88 = &v218[i];
      *v88 = 0;
      *(v88 + 1) = -1;
      *(v88 + 4) = 575;
    }

    v217 = 0;
    memset(v216, 0, sizeof(v216));
    BlueFin::GlSetBase::GlSetBase(&v197, v198, 0x13u, (*(v4 + 8) + 184));
    for (j = 0; j != 300; j += 3)
    {
      v90 = &v209[j];
      *v90 = 0;
      *(v90 + 5) = 575;
    }

    v169 = (*(*v4 + 192))(v4);
    IsTunnelExit = 0;
    v91 = *(*(v4 + 2248) + 8);
    if ((*(v176 + 1) & 0x40) != 0 && v91 != 6)
    {
      IsTunnelExit = BlueFin::GlPeNavGnssKF::PolaroidIsTunnelExit(v4);
    }

    if (v91 == 6)
    {
      v92 = 10.0;
    }

    else
    {
      v92 = 15.0;
    }

    v192 = *(v174 + 272);
    memcpy(v196, *(v174 + 264), 4 * v192);
    v194 = 0;
    v193 = 0;
    v195 = v196[0];
    BlueFin::GlSetIterator::operator++(&v192);
    v175 = 0;
    if (v193 != v192)
    {
      v175 = 0;
      v94 = v209;
      do
      {
        if (v194 >= 0x23FuLL)
        {
          DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
        }

        v95 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v194;
        v96 = *v95;
        LODWORD(v95) = v95[1];
        v189[0] = v96;
        v190 = v95;
        v191 = v194;
        if (((*(v197 + ((v194 >> 3) & 0x1FFC)) >> (v194 & 0x1F)) & 1) == 0)
        {
          goto LABEL_153;
        }

        MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(*(v4 + 8), v189, 0, 0);
        PeMeas = BlueFin::GlPeMsmtMgr::GetPeMeas(*(v4 + 8), v189, 0);
        if ((MeMeas[13] & 0x80) != 0)
        {
          v99 = 1;
        }

        else
        {
          v99 = *(*(v4 + 2248) + 8) != 10 && *(MeMeas + 27) * 1000000000.0 > 999.0;
        }

        v100 = *(v4 + 2272);
        if (*(v100 + 2) < 1)
        {
          v101 = 1;
          if (!v99)
          {
            goto LABEL_131;
          }
        }

        else
        {
          v101 = *(v100 + 45);
          if (!v99)
          {
            goto LABEL_131;
          }
        }

        v102 = *(MeMeas + 29);
        if (v102 <= 30.0 || (v103 = *(v4 + 2248), (*(v103 + 16) & 0xFFFFFFFE) == 2))
        {
          if (v102 < 16.0)
          {
            v101 = 1;
          }

          if (v101 != 1)
          {
            goto LABEL_131;
          }
        }

        else
        {
          v104 = *(v103 + 8) - 3;
          if (v102 < 16.0)
          {
            LOBYTE(v101) = 1;
          }

          if (v104 > 2 || (v101 & 1) == 0)
          {
            goto LABEL_131;
          }
        }

        if ((*v176 & 0x80) == 0)
        {
          goto LABEL_148;
        }

LABEL_131:
        if (!BlueFin::stPeSigMeasKF::IsPRValidForNav(PeMeas))
        {
LABEL_148:
          v129 = BlueFin::GlSignalIdArray::Get(*(*(v4 + 8) + 18792), v189);
          if (v129)
          {
            v130 = 14;
LABEL_152:
            *(v129 + 272) = v130;
            goto LABEL_153;
          }

          goto LABEL_153;
        }

        v105 = &v218[12 * v175];
        v106 = v191;
        if (v105 != v189)
        {
          *v105 = v189[0];
          *(v105 + 1) = v190;
          *(v105 + 4) = v106;
        }

        v186 = v188;
        v187 = 19;
        memset(v188, 0, sizeof(v188));
        v185 = 0.0;
        v188[v106 >> 5] |= 1 << v106;
        v107 = *(*v4 + 192);
        v108 = *v4 + 192;
        v109 = v4 + *(*v4 - 24);
        v177 = *(v109 + 8);
        v178 = *(v109 + 24);
        v110 = *(v4 + 88 + *(v108 - 216));
        v111 = **(v4 + 2240);
        v112 = v107(v4);
        v113 = (v4 + *(*v4 - 24));
        v114 = v113[52];
        v115 = v113[54];
        v116 = v113[56];
        v117 = v113[58];
        BlueFin::GlPeNavUtil::ComputeRangeResidVec(v4, &v186, &v177, v111, 0, 0, &v185, 1, v112, 1);
        v118 = 0;
        v119 = &v186[v187 - 1];
        do
        {
          if (*v119)
          {
            v120 = *v119 - (((*v119 >> 1) & 0x5B6DB6DB) + ((*v119 >> 2) & 0x9249249));
            v118 = ((v120 + (v120 >> 3)) & 0xC71C71C7) + v118 - 63 * (((v120 + (v120 >> 3)) & 0xC71C71C7) / 0x3F);
          }

          --v119;
        }

        while (v119 >= v186);
        if (v118)
        {
          v121 = v179[1];
          v122 = fabs(v121);
          if (v122 < 400.0)
          {
            v122 = v179[1];
          }

          *&v221[v175] = v122;
          v123 = v121;
          *v94 = v123;
          v124 = v185;
          v125 = *(MeMeas + 24) * 299792458.0;
          v94[1] = ((*(MeMeas + 29) / -40.0) * (v185 / 90.0)) * sqrtf(15.0 / v125);
          *(v94 + 5) = v191;
          v126 = *(MeMeas + 5);
          *(v94 + 8) = (v126 - 1) < 2;
          v127 = v189[0] - 76;
          if (v127 <= 0x3E && ((1 << v127) & 0x7C0000000000001FLL) != 0)
          {
            v128 = fabs(v122);
            *&v221[v175] = v128 + v128;
          }

          v94 += 3;
          if (!IsTunnelExit)
          {
            goto LABEL_147;
          }

          if (v124 >= v92)
          {
            *&v221[v175] = -v124;
            *&v220[v175] = ((100 * byte_298A44178[v126]) - v124);
LABEL_147:
            ++v175;
          }
        }

        else
        {
          v129 = BlueFin::GlSignalIdArray::Get(*(*(v4 + 8) + 18792), v189);
          if (v129)
          {
            v130 = 28;
            goto LABEL_152;
          }
        }

LABEL_153:
        BlueFin::GlSetIterator::operator++(&v192);
      }

      while (v193 != v192);
    }

    v131 = v175;
    if (v166 < v175)
    {
      v131 = v166;
    }

    if (v131 >= 50)
    {
      v132 = 50;
    }

    else
    {
      v132 = v131;
    }

    v133 = *(v4 + 2272);
    if (*(v133 + 2) < 1 || *(v133 + 45))
    {
      if (*(*(v4 + 2248) + 1989))
      {
        v134 = 1;
      }

      else
      {
        v134 = *(v4 + 1800);
      }
    }

    else
    {
      v134 = 5;
    }

    if (v134 > v132)
    {
      BlueFin::GlPeMsmtMgr::SetPrCode(*(v4 + 8), v4 + *(*v4 - 24) + 264, 14);
      bzero(*(v174 + 264), ((4 * *(v174 + 272) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
      goto LABEL_199;
    }

    if (IsTunnelExit)
    {
      v136 = v220;
    }

    else
    {
      v136 = v221;
    }

    BlueFin::GlSortDoubles(v136, v175, v216, v93);
    v137 = fabs((*&v221[*(v216 + (v175 >> 1))] + *&v221[*(v216 + ((v175 - 1 + (((v175 - 1) & 0x8000u) >> 15)) >> 1))]) * 10.0 * 0.5);
    v179 = &v181;
    if (v137 >= 400.0)
    {
      v138 = v137;
    }

    else
    {
      v138 = 400.0;
    }

    v180 = 19;
    v181 = 0u;
    v182 = 0u;
    v183 = 0u;
    memset(v184, 0, 28);
    if (!v175)
    {
      LODWORD(v139) = 0;
LABEL_187:
      if (v139 < v175)
      {
        v144 = v175 - v139;
        v145 = v216 + v139;
        do
        {
          v146 = BlueFin::GlSignalIdArray::Get(*(*(v4 + 8) + 18792), &v218[12 * *v145]);
          if (v146)
          {
            *(v146 + 272) = 43;
          }

          ++v145;
          --v144;
        }

        while (v144);
      }

LABEL_192:
      v147 = 0;
      v148 = (v179 + 4 * v180 - 4);
      do
      {
        if (*v148)
        {
          v149 = *v148 - (((*v148 >> 1) & 0x5B6DB6DB) + ((*v148 >> 2) & 0x9249249));
          v147 = ((v149 + (v149 >> 3)) & 0xC71C71C7) + v147 - 63 * (((v149 + (v149 >> 3)) & 0xC71C71C7) / 0x3F);
        }

        v148 = (v148 - 4);
      }

      while (v148 >= v179);
      if (!v147)
      {
        *(v4 + 6896) = 1;
      }

      BlueFin::GlSetBase::operator=(v174 + 264, &v179);
      v150 = v184[0];
      *(v174 + 308) = v183;
      *(v174 + 324) = v150;
      *(v174 + 336) = *(v184 + 12);
      v151 = v182;
      *(v174 + 276) = v181;
      *(v174 + 292) = v151;
LABEL_199:
      if ((*(v176 + 1) & 0x40) != 0 && ((*(*v4 + 64))(v4) / (*(v4 + 2184) * 1000.0)) >= 2)
      {
        v152 = *(v4 + *(*v4 - 24) + 200);
        v153 = (*(*v4 + 72))(v4);
        BlueFin::GlPeNavGnssResidMon::RunBcMon(v4 + 4864, v152, v153, v209, (v174 + 264), 1);
      }

      v154 = (v4 + *(*v4 - 24));
      BlueFin::GlSetBase::operator=(v154 + 264, v174 + 264);
      *(v154 + 276) = *(v174 + 276);
      v155 = *(v174 + 292);
      v156 = *(v174 + 308);
      v157 = *(v174 + 324);
      v154[21] = *(v174 + 336);
      *(v154 + 308) = v156;
      *(v154 + 324) = v157;
      *(v154 + 292) = v155;
      v158 = &v173[7 * BlueFin::GlSetBase::Cnt((v174 + 264))];
      v159 = -73 * ((v158 - &v199) >> 3);
      if (v170 < 0x1389)
      {
        goto LABEL_209;
      }

      v160 = *(v174 + 264);
      if (!*v160)
      {
        v161 = *(v174 + 272);
        if (v161 < 2)
        {
          goto LABEL_209;
        }

        v162 = v161 - 1;
        v163 = v160 + 1;
        while (!*v163++)
        {
          if (!--v162)
          {
            goto LABEL_209;
          }
        }
      }

      BlueFin::GlPeNavGnssKF::PackSkfMeas_RR(v4);
      v158 += 56 * BlueFin::GlSetBase::Cnt((v174 + 352));
      v159 = -73 * ((v158 - &v199) >> 3);
LABEL_209:
      if (v159)
      {
        if (*(&v199 + 14 * v159 - 3) == -1)
        {
          DeviceFaultNotify("glpe_navgnsskf.cpp", 2690, "PackSkfMeas", "cNbTotalKfMeas==0 || pastSkfMeas[cNbTotalKfMeas-1].eMeasType != SKF_MEAS_INVALID");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_navgnsskf.cpp", 2690, "cNbTotalKfMeas==0 || pastSkfMeas[cNbTotalKfMeas-1].eMeasType != SKF_MEAS_INVALID");
        }

        if (v159 >= 101)
        {
          DeviceFaultNotify("glpe_navgnsskf.cpp", 2691, "PackSkfMeas", "cNbTotalKfMeas <= cMaxNumSkfMeas");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_navgnsskf.cpp", 2691, "cNbTotalKfMeas <= cMaxNumSkfMeas");
        }
      }

      v135 = -73 * ((v158 - &v199) >> 3);
      goto LABEL_213;
    }

    v139 = 0;
    v140 = v173;
    while (1)
    {
      if (0x6DB6DB6DB6DB6DB7 * ((v140 - v173) >> 3) >= v132)
      {
        goto LABEL_187;
      }

      v141 = &v218[12 * *(v216 + v139)];
      v142 = *&v221[*(v216 + v139)];
      if (fabs(v142) > v138)
      {
        break;
      }

      if (!BlueFin::GlPeNavUtil::PackSkfMeas_PR_SignalId(v4, v140, &v218[12 * *(v216 + v139)], v169))
      {
        v143 = BlueFin::GlSignalIdArray::Get(*(*(v4 + 8) + 18792), v141);
LABEL_182:
        if (v143)
        {
          *(v143 + 272) = 15;
        }

        goto LABEL_184;
      }

      v140 += 56;
      *(v179 + (*(v141 + 4) >> 5)) |= 1 << *(v141 + 4);
LABEL_184:
      if (v175 == ++v139)
      {
        goto LABEL_192;
      }
    }

    GlCustomLog(14, "SV Removed due to large residual - Selected Sv %02d CarrBand %d dz=%.1f Lms %u\n", *v141, *(v141 + 1), v142, **(v4 + 8));
    v143 = BlueFin::GlSignalIdArray::Get(*(*(v4 + 8) + 18792), v141);
    goto LABEL_182;
  }

  bzero(*(v174 + 352), ((4 * *(v174 + 360) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  bzero(*(v174 + 264), ((4 * *(v174 + 272) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  v135 = 0;
LABEL_213:
  *(v4 + 1560) = v135;
  BlueFin::GlPeNavUtil::ComputeL5BiasFromMeas(v4, (v4 + 6876), (v4 + 6880), (v4 + 6888), (v4 + *(*v4 - 24) + 264), **(v4 + 2240), &v199, v135);
  if (v168 && *(v4 + 6896) == 1)
  {
    result = (*(*v4 + 24))(v4, 9);
  }

  else
  {
    result = BlueFin::GlPeNavGnssKF::ComputePositionMain(v4, v176, v171, v167, &v199);
  }

LABEL_217:
  v165 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t BlueFin::GlPeNavGnssKF::GetMeasSigIdSetForLsq(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4, int a5)
{
  v9 = 352;
  if (a4)
  {
    v9 = 264;
    v10 = 0;
  }

  else
  {
    v10 = 2;
  }

  result = BlueFin::GlSetBase::GlSetBase(&v46, v47, 0x13u, (a1 + v9 + *(*a1 - 24)));
  v43 = v45;
  v44 = 8;
  memset(v45, 0, sizeof(v45));
  if (**a3)
  {
    goto LABEL_37;
  }

  v12 = a3[8];
  if (v12 >= 2)
  {
    v13 = v12 - 1;
    v14 = (*a3 + 4);
    while (!*v14++)
    {
      if (!--v13)
      {
        goto LABEL_9;
      }
    }

LABEL_37:
    DeviceFaultNotify("glpe_navgnsskf.cpp", 7501, "GetMeasSigIdSetForLsq", "otLsqSignalIds.IsEmpty()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_navgnsskf.cpp", 7501, "otLsqSignalIds.IsEmpty()");
  }

LABEL_9:
  if (*(a1 + 1560) >= 1)
  {
    LOBYTE(v16) = 0;
    v17 = 0;
    v18 = 108;
    if (a4)
    {
      v18 = 96;
    }

    v39 = v18;
    v37 = a5;
    v36 = a3;
    v35 = v10;
    do
    {
      v19 = *(a2 + 32);
      if (*(a2 + 44) == v10)
      {
        v20 = v43;
        v21 = v19 >> 5;
        v22 = v19 & 0x1F;
        if (((*(v43 + v21) >> (v19 & 0x1F)) & 1) == 0)
        {
          v23 = *(a2 + 40);
          v24 = v23 >> 5;
          v25 = v23 & 0x1F;
          if ((*(v46 + 4 * v24) >> v25))
          {
            v26 = BlueFin::GlSvId::s_aucSvId2gnss[*(a2 + 32)];
            v27 = BlueFin::GlSignalId::s_aucGnss2numSignals[v26];
            if (v27 >= 2)
            {
              result = BlueFin::GlPeMsmtMgr::GetMeMeas(*(a1 + 8), (a2 + 32), 0, 0);
              v28 = 0;
              v29 = *(result + v39);
              v30 = &BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v26];
              while (1)
              {
                if (v28 != *(a2 + 36))
                {
                  v40[0] = v19;
                  v41 = v28;
                  v31 = 575;
                  v42 = 575;
                  if (v19 - 189 >= 0xFFFFFF44)
                  {
                    if (*v30 == 255)
                    {
                      v41 = -1;
                      v31 = 575;
                    }

                    else
                    {
                      v42 = BlueFin::GlSignalId::s_ausGnss2signalId[v26] + v19 - BlueFin::GlSvId::s_aucGnss2minSvId[v26] + v28 * BlueFin::GlSvId::s_aucGnss2numSvId[v26];
                      v31 = v42;
                    }
                  }

                  if ((*(v46 + 4 * (v31 >> 5)) >> (v31 & 0x1F)))
                  {
                    result = BlueFin::GlPeMsmtMgr::GetMeMeas(*(a1 + 8), v40, 0, 0);
                    if (v29 > *(result + v39))
                    {
                      PeMeas = BlueFin::GlPeMsmtMgr::GetPeMeas(*(a1 + 8), v40, 0);
                      if (a4)
                      {
                        result = BlueFin::stPeSigMeasKF::IsPRValidForNav(PeMeas);
                        if (result)
                        {
                          goto LABEL_35;
                        }
                      }

                      else
                      {
                        result = BlueFin::stPeSigMeasKF::IsRRValidForNav(PeMeas);
                        if (result)
                        {
LABEL_35:
                          a5 = v37;
                          a3 = v36;
                          v10 = v35;
                          goto LABEL_32;
                        }
                      }
                    }
                  }
                }

                ++v28;
                v30 += 7;
                if (v27 == v28)
                {
                  v33 = *(a2 + 40);
                  v34 = *(a2 + 32);
                  v20 = v43;
                  v24 = v33 >> 5;
                  v25 = v33 & 0x1F;
                  v21 = v34 >> 5;
                  v22 = v34 & 0x1F;
                  a5 = v37;
                  a3 = v36;
                  v10 = v35;
                  break;
                }
              }
            }

            *(*a3 + 4 * v24) |= 1 << v25;
            *(v20 + v21) |= 1 << v22;
            ++v17;
          }
        }
      }

LABEL_32:
      v16 = (v16 + 1);
      if (v16 >= *(a1 + 1560))
      {
        break;
      }

      a2 += 56;
    }

    while (a5 > v17);
  }

  return result;
}

BOOL BlueFin::GlPeNavUtil::PackSkfMeas_PR_SignalId(uint64_t a1, uint64_t a2, BlueFin::GlSignalId *a3, char a4)
{
  v5 = *(a1 + 8);
  v6 = (1 << (*(a3 + 4) & 0x1F)) & *(*(v5 + 8) + 4 * (*(a3 + 4) >> 5));
  if (v6)
  {
    v10 = -7200001;
    PeMeas = BlueFin::GlPeMsmtMgr::GetPeMeas(v5, a3, 0);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 24) = -1;
    *(a2 + 48) = 0;
    *(a2 + 50) = 0;
    *(a2 + 32) = 0;
    *(a2 + 36) = -1;
    *(a2 + 40) = 575;
    *(a2 + 44) = 0;
    v12 = *(a1 + 8);
    v13 = *v12;
    *(a2 + 16) = *v12;
    if (v13 != -7200001)
    {
      v14 = *(v12 + 1);
      v15 = v13 - v14;
      if (v14 == -7200001)
      {
        v10 = -7200001;
      }

      else
      {
        v10 = v15;
      }
    }

    *(a2 + 20) = v10;
    if ((a2 + 32) != a3)
    {
      *(a2 + 32) = *a3;
      *(a2 + 36) = *(a3 + 1);
      *(a2 + 40) = *(a3 + 4);
    }

    if ((a4 & 1) != 0 || (v16 = *(PeMeas + 112), v16 == 1))
    {
      *a2 = *PeMeas * 299792.458;
      *(a2 + 8) = *(BlueFin::GlPeMsmtMgr::GetMeMeas(v12, a3, 0, 0) + 24) * 299792458.0;
      v17 = *a2;
      LOBYTE(v16) = *(PeMeas + 112);
    }

    else
    {
      v17 = *(PeMeas + 24);
      *(a2 + 8) = *(PeMeas + 52);
    }

    *a2 = v17 + 0.0;
    *(a2 + 48) = 1;
    *(a2 + 24) = *(PeMeas + 88);
    *(a2 + 49) = v16;
  }

  return v6 != 0;
}

unint64_t BlueFin::GlPeSubsets::Find(BlueFin::GlPeSubsets *this, const BlueFin::GlSignalIdSet *a2)
{
  BlueFin::GlPeSubsetIterator::GlPeSubsetIterator(&v7, this);
  v4 = v7;
  v3 = v8;
  while (1)
  {
    if (v3 >= v4)
    {
      return 0;
    }

    v5 = BlueFin::GlPeSubsetIterator::operator->(&v7);
    if (BlueFin::GlSetBase::operator==(v5 + 24, a2))
    {
      break;
    }

    v4 = v7;
    v3 = v8 + 168;
    v8 += 168;
  }

  return BlueFin::GlPeSubsetIterator::operator->(&v7);
}

uint64_t BlueFin::GlMeSrdAidingMgr::FormatGpsTcxoAidingForEsw(unsigned int *a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v9[0] = &unk_2A1F0E1A0;
  v9[1] = 0;
  v10 = 0x36A7C5AC00000000;
  v11 = 0;
  v12 = 2139095039;
  v13 = 0;
  v14 = 2139095039;
  v15 = 0;
  v16 = 0x36A7C5AC7F7FFFFFLL;
  (*(**a1 + 96))(*a1, v9, a1[6]);
  *(a2 + 12) = a1[6];
  *(a2 + 14) = 1;
  v6[0] = 1;
  v7 = 0;
  v8 = 0;
  result = BlueFin::GlMeSrdAsicUnitConverter::PpuToEswAidingFrequency(v6, -*&v10, v4);
  *a2 = result;
  return result;
}

uint64_t BlueFin::GlMeSrdAidingMgr::FormatBdsPosTcxoAidingForEsw(unsigned int *a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v9[0] = &unk_2A1F0E1A0;
  v9[1] = 0;
  v10 = 0x36A7C5AC00000000;
  v11 = 0;
  v12 = 2139095039;
  v13 = 0;
  v14 = 2139095039;
  v15 = 0;
  v16 = 0x36A7C5AC7F7FFFFFLL;
  (*(**a1 + 96))(*a1, v9, a1[6]);
  *(a2 + 12) = a1[6];
  *(a2 + 14) = 1;
  v6[0] = 76;
  v7 = 0;
  v8 = 201;
  result = BlueFin::GlMeSrdAsicUnitConverter::PpuToEswAidingFrequency(v6, -*&v10, v4);
  *a2 = result;
  return result;
}

BlueFin::GlBitBuffer *BlueFin::GlBitBuffer::Put(BlueFin::GlBitBuffer *this, BlueFin::GlBitBuffer *a2, unsigned int a3)
{
  if (a3)
  {
    v4 = a3;
    do
    {
      if (v4 >= 0x20)
      {
        v6 = 32;
      }

      else
      {
        v6 = v4;
      }

      v7 = BlueFin::GlBitBuffer::GetU(a2, v6);
      BlueFin::GlBitBuffer::PutU(this, v7, v6);
      v4 -= v6;
    }

    while (v4);
  }

  return this;
}

BlueFin::GlBitBuffer *BlueFin::GlBitBuffer::TransferBits(BlueFin::GlBitBuffer *this, BlueFin::GlBitBuffer *a2, BlueFin::GlBitBuffer *a3, unsigned int *a4, unsigned int *a5, const unsigned int *a6)
{
  if (a6 >= 1)
  {
    v10 = this;
    v11 = a6;
    do
    {
      v12 = *a3;
      a3 = (a3 + 4);
      BlueFin::GlBitBuffer::Position(v10, v12);
      v13 = *a4++;
      BlueFin::GlBitBuffer::Position(a2, v13);
      v14 = *a5++;
      this = BlueFin::GlBitBuffer::Put(v10, a2, v14);
      --v11;
    }

    while (v11);
  }

  return this;
}

uint64_t BlueFin::GlPePolaroid::RunPolaroid(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v5 = v4;
  v346 = v6;
  v8 = v7;
  v9 = v1;
  v437 = *MEMORY[0x29EDCA608];
  v10 = *v7;
  *(v1 + 64) = *v7;
  *(v1 + 80) = *(v7 + 2);
  *(v1 + 88) = v7[6];
  v347 = v1 + 88;
  *(v1 + 92) = *(v7 + 14);
  *(v1 + 94) = *(v7 + 30);
  *(v1 + 96) = v7[8];
  *(v1 + 100) = *(v7 + 36);
  *(v1 + 104) = *(v7 + 5);
  *(v1 + 112) = v7[12];
  *(v1 + 116) = *(v7 + 52);
  BlueFin::GlPeNavGnssState::operator=(v1 + *(*v1 - 24), v10);
  v365 = v367;
  v366 = 19;
  memset(v367, 0, sizeof(v367));
  v362 = v364;
  v363 = 19;
  memset(v364, 0, sizeof(v364));
  v359 = v361;
  v360 = 19;
  memset(v361, 0, sizeof(v361));
  v350 = v5;
  BlueFin::GlSetBase::GlSetBase(&v357, v358, 0x13u, v5);
  v345 = v3;
  BlueFin::GlSetBase::GlSetBase(&v355, v356, 0x13u, v3);
  v11 = *(v9 + 32);
  v353 = v9;
  if (*(v11 + 8))
  {
    v351 = *(v9 + 91);
    v12 = v5;
    if (*(v11 + 16))
    {
      if ((*(v9 + 90) & 1) == 0 && (*(v9 + 92) & 1) == 0)
      {
        v13 = 0.0;
        if (*(v9 + 96) > 0xFu)
        {
          goto LABEL_23;
        }
      }
    }
  }

  else
  {
    v351 = *(v9 + 91);
    v12 = v5;
  }

  if (BlueFin::GlSetBase::Cnt(v12))
  {
    BlueFin::GlSetBase::GlSetBase(&v368, v369 + 1, 0x13u, v12);
    v14 = v9 + *(*v9 - 24);
    v400 = *(v14 + 8);
    v401 = *(v14 + 24);
    v15 = *(v14 + 88);
    v16 = *(v14 + 208);
    v17 = *(v14 + 216);
    v18 = *(v14 + 224);
    v19 = *(v14 + 232);
    BlueFin::GlPeNavUtil::ComputeRangeResidVec(v9, &v368, &v400, **(v9 + 24), 0, 0, 0, 1, *(v9 + 88), 1);
    v23 = *v415;
    if (*v415 >= 1)
    {
      v24 = (*&v414 + 8);
      do
      {
        *v24 = fabs(*v24);
        ++v24;
        --v23;
      }

      while (v23);
    }

    BlueFin::SKFVector::Median(&v414, v20, v21, v22);
    v26 = v25 + v25;
    v27 = v9;
    v28 = *(v9 + 48);
    if (*(v28 + 24) >= v26)
    {
      v13 = *(v28 + 24);
    }

    else
    {
      v13 = v26;
    }

    v29 = v3;
  }

  else
  {
    v13 = 0.0;
    v29 = v3;
    v27 = v9;
  }

  if (*(v27 + 90) == 1 && BlueFin::GlSetBase::Cnt(v29))
  {
    BlueFin::GlSetBase::GlSetBase(&v368, v369 + 1, 0x13u, v29);
    v30 = v9 + *(*v9 - 24);
    v400 = *(v30 + 8);
    v401 = *(v30 + 24);
    v31 = *(v30 + 88);
    v32 = **(v9 + 24);
    v33 = *(v30 + 152);
    BlueFin::GlPeNavUtil::ComputeRrateResidVec();
    v37 = *v415;
    if (*v415 >= 1)
    {
      v38 = (*&v414 + 8);
      do
      {
        *v38 = fabs(*v38);
        ++v38;
        --v37;
      }

      while (v37);
    }

    BlueFin::SKFVector::Median(&v414, v34, v35, v36);
  }

LABEL_23:
  if (*(v8 + 30) == 1 && (v39 = *(v9 + 32), (*(v39 + 8) - 1) <= 1) && (*(v39 + 1988) & 1) == 0)
  {
    *(v9 + 126) = 1;
    BlueFin::GlPeNavUtil::ComputeCrossTrackElevMask(v9, v8[12], &v357, &v355);
  }

  else
  {
    *(v9 + 126) = 0;
  }

  v40 = &v415[16];
  *&v415[8] = xmmword_298A43FA0;
  v414 = COERCE_DOUBLE(&v415[24]);
  *v415 = &v434;
  v434 = 0;
  for (i = 8; i != 176; i += 8)
  {
    *(*v415 + i) = v40;
    v40 += 168;
  }

  v42 = 0;
  v393 = v394 + 8;
  *&v394[0] = 0x1500000000;
  *(v394 + 8) = 0u;
  *(&v394[1] + 8) = 0u;
  *(&v394[2] + 8) = 0u;
  *(&v394[3] + 8) = 0u;
  *(&v394[4] + 8) = 0u;
  *(&v394[5] + 8) = 0u;
  *(&v394[6] + 8) = 0u;
  *(&v394[7] + 8) = 0u;
  *(&v394[8] + 8) = 0u;
  *(&v394[9] + 8) = 0u;
  *(&v394[10] + 8) = 0u;
  v377 = COERCE_DOUBLE((v378 + 8));
  *&v378[0] = 0x1500000000;
  *(v378 + 8) = 0u;
  *(&v378[1] + 8) = 0u;
  *(&v378[2] + 8) = 0u;
  *(&v378[3] + 8) = 0u;
  *(&v378[4] + 8) = 0u;
  *(&v378[5] + 8) = 0u;
  *(&v378[6] + 8) = 0u;
  *(&v378[7] + 8) = 0u;
  *(&v378[8] + 8) = 0u;
  *(&v378[9] + 8) = 0u;
  *(&v378[10] + 8) = 0u;
  v435 = COERCE_DOUBLE((v436 + 8));
  *&v436[0] = 0x1500000000;
  *(v436 + 8) = 0u;
  *(&v436[1] + 8) = 0u;
  *(&v436[2] + 8) = 0u;
  *(&v436[3] + 8) = 0u;
  *(&v436[4] + 8) = 0u;
  *(&v436[5] + 8) = 0u;
  *(&v436[6] + 8) = 0u;
  *(&v436[7] + 8) = 0u;
  *(&v436[8] + 8) = 0u;
  *(&v436[9] + 8) = 0u;
  *(&v436[10] + 8) = 0u;
  v412 = &v413[8];
  *v413 = 0xD00000000;
  memset(&v413[8], 0, 112);
  v43 = v9 + *(*v9 - 24);
  v44 = *(v43 + 88);
  v45 = **(v9 + 24);
  v46 = *(v43 + 208);
  v47 = *(v43 + 216);
  v48 = *(v43 + 224);
  v49 = *(v43 + 232);
  *&__src = COERCE_DOUBLE(&v435);
  *v371 = v43 + 8;
  *&v371[8] = v44;
  *&v371[16] = v45;
  *v372 = 0x4C100000003;
  *&v372[12] = v43 + 104;
  *&v372[20] = 0;
  *&v372[28] = v43 + 152;
  *&v372[36] = v46;
  *&v372[44] = v47;
  *&v372[52] = v48;
  v373 = v49;
  v374 = xmmword_298A44280;
  v396 = &v393;
  v397 = &v377;
  v398[0] = &v414;
  memset(&v398[1], 0, 48);
  do
  {
    v50 = &v400 + v42;
    v50[32] = 0;
    *(v50 + 9) = -1;
    *(v50 + 20) = 575;
    v42 += 56;
  }

  while (v42 != 1176);
  *v390 = &v390[12];
  v390[8] = 4;
  *&v390[12] = 0uLL;
  bzero(*(v9 + 1904), ((4 * *(v9 + 1912) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  BlueFin::BigMatrixDim<21,21>::BigMatrixDim(&v368, 1, 12);
  v51 = v9;
  if (*(v9 + 100) < 1)
  {
    v54 = 0;
    v53 = 0;
  }

  else
  {
    LOBYTE(v52) = 0;
    v53 = 0;
    v54 = 0;
    v55 = v346;
    v56 = v350;
    do
    {
      if (!*(v55 + 44) && ((*(*v56 + 4 * (*(v55 + 40) >> 5)) >> (*(v55 + 40) & 0x1F)) & 1) != 0)
      {
        if (BlueFin::GlPeNavUtil::PackSkfMeas_PR_SignalId(v51, &v400 + 56 * v54, (v55 + 32), *(v51 + 88)) && (*(*v390 + 4 * (v54 >> 5)) |= 1 << v54, ++v54, v54 >= 0x15u))
        {
          (*(**(v353 + 2) + 16))(*(v353 + 2), &__src, &v396, &v400, v390);
          v57 = 0;
          do
          {
            v58 = *(*v415 + 8 * v57 + 8);
            v59 = *(*&v369[0] + 8);
            for (j = 8; j != 104; j += 8)
            {
              *(v59 + j) = *(v58 + j);
            }

            v61 = v353 + 24 * v53 + 128;
            *v61 = *(v393 + 8 * (v57 + 1)) - *(*&v377 + 8 * (v57 + 1));
            BlueFin::GlPePolaroid::GetPInLOS(v353, &v368, 0);
            v62 = &v400 + 7 * v57;
            *(v61 + 8) = v62[1] * v62[1];
            *(v61 + 16) = v63;
            LODWORD(v62) = *(v62 + 20);
            *(v353 + v62 + 1328) = v53;
            *(*(v353 + 238) + 4 * (v62 >> 5)) |= 1 << v62;
            ++v53;
            ++v57;
          }

          while (v57 != v54);
          bzero(*v390, ((4 * v390[8] + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
          v51 = v353;
          v54 = 0;
        }

        else
        {
          v51 = v353;
        }

        v56 = v350;
      }

      v52 = (v52 + 1);
      v55 += 56;
    }

    while (v52 < *(v51 + 100));
  }

  (*(**(v353 + 2) + 16))(*(v353 + 2), &__src, &v396, &v400, v390);
  v64 = v353;
  if (v54)
  {
    for (k = 0; k != v54; ++k)
    {
      v66 = *(*v415 + 8 * k + 8);
      v67 = *(*&v369[0] + 8);
      for (m = 8; m != 104; m += 8)
      {
        *(v67 + m) = *(v66 + m);
      }

      v69 = v353 + 24 * v53 + 128;
      *v69 = *(v393 + 8 * (k + 1)) - *(*&v377 + 8 * (k + 1));
      BlueFin::GlPePolaroid::GetPInLOS(v353, &v368, 0);
      v64 = v353;
      v70 = &v400 + 7 * k;
      *(v69 + 8) = v70[1] * v70[1];
      *(v69 + 16) = v71;
      LODWORD(v70) = *(v70 + 20);
      *(v353 + v70 + 1328) = v53;
      *(*(v353 + 238) + 4 * (v70 >> 5)) |= 1 << v70;
      ++v53;
    }
  }

  memset(v354, 0, sizeof(v354));
  v72 = *(v64 + 2);
  LODWORD(v414) = 0;
  *v415 = &v415[12];
  v415[8] = 8;
  memset(&v415[12], 0, 32);
  *&v415[48] = xmmword_298A41DA0;
  v73 = vdup_n_s32(0x42C60000u);
  *&v415[64] = v73;
  *&v415[72] = 1120272384;
  BlueFin::stDops::stDops(&__src, &v414);
  v373 = v72;
  LODWORD(v396) = 0;
  v397 = (v398 + 4);
  LOBYTE(v398[0]) = 8;
  memset(v398 + 4, 0, 32);
  *&v398[5] = xmmword_298A41DA0;
  v398[7] = v73;
  v399 = 1120272384;
  v395 = 0x3FF0000000000000;
  v368 = v369 + 8;
  *&v369[0] = 0x6400000000;
  bzero(v369 + 8, 0x328uLL);
  *&v400 = &v401;
  *(&v400 + 1) = 0x6400000000;
  bzero(&v401, 0x328uLL);
  v74 = 0;
  v420 = &v435;
  v421 = &v414;
  v422 = &v412;
  v423 = 0x23F000000000008;
  v424 = 50;
  do
  {
    *&v415[2 * v74++ - 8] = -1;
  }

  while (v74 < HIWORD(v423));
  v75 = v424;
  if (v424)
  {
    v76 = 0;
    v77 = (v424 + 7) & 0x1FFF8;
    v78 = vdupq_n_s64(v424 - 1);
    v79 = xmmword_298A319A0;
    v80 = xmmword_298A319B0;
    v81 = xmmword_298A319C0;
    v82 = xmmword_298A319D0;
    v83 = v413;
    v84 = vdupq_n_s64(8uLL);
    do
    {
      v85 = vmovn_s64(vcgeq_u64(v78, v82));
      if (vuzp1_s8(vuzp1_s16(v85, *v78.i8), *v78.i8).u8[0])
      {
        *(v83 - 4) = v76;
      }

      if (vuzp1_s8(vuzp1_s16(v85, *&v78), *&v78).i8[1])
      {
        *(v83 - 3) = v76 | 1;
      }

      if (vuzp1_s8(vuzp1_s16(*&v78, vmovn_s64(vcgeq_u64(v78, *&v81))), *&v78).i8[2])
      {
        *(v83 - 2) = v76 | 2;
        *(v83 - 1) = v76 | 3;
      }

      v86 = vmovn_s64(vcgeq_u64(v78, v80));
      if (vuzp1_s8(*&v78, vuzp1_s16(v86, *&v78)).i32[1])
      {
        *v83 = v76 | 4;
      }

      if (vuzp1_s8(*&v78, vuzp1_s16(v86, *&v78)).i8[5])
      {
        v83[1] = v76 | 5;
      }

      if (vuzp1_s8(*&v78, vuzp1_s16(*&v78, vmovn_s64(vcgeq_u64(v78, *&v79)))).i8[6])
      {
        v83[2] = v76 | 6;
        v83[3] = v76 | 7;
      }

      v76 += 8;
      v80 = vaddq_s64(v80, v84);
      v81 = vaddq_s64(v81, v84);
      v82 = vaddq_s64(v82, v84);
      v79 = vaddq_s64(v79, v84);
      v83 += 8;
    }

    while (v77 != v76);
    v87 = v75 - 1;
  }

  else
  {
    v87 = -1;
  }

  v425 = v87;
  v393 = v394 + 8;
  *&v394[0] = 0x6400000000;
  bzero(v394 + 8, 0x328uLL);
  v88 = v353;
  v89 = *(*(v353 + 4) + 16);
  *v390 = &v390[12];
  v390[8] = 19;
  memset(&v390[12], 0, 32);
  v391 = 0u;
  memset(v392, 0, sizeof(v392));
  v387 = &v388[4];
  v388[0] = 8;
  *&v388[4] = 0u;
  v389 = 0u;
  v385 = (v386 + 4);
  LOBYTE(v386[0]) = 8;
  memset(v386 + 4, 0, 32);
  v383 = (v384 + 4);
  LOBYTE(v384[0]) = 8;
  memset(v384 + 4, 0, 32);
  v349 = (v353 + 8);
  v90 = &unk_298A35000;
  if (*(v353 + 100) < 1)
  {
    v97 = 0;
    v95 = 0;
    v344 = 0;
    v120 = 0;
    v92 = 0;
    v91 = 0;
    v339 = 0.0;
    v121 = 0.0;
    v122 = 0.0;
    v118 = 0.0;
  }

  else
  {
    v338 = v89;
    v91 = 0;
    v92 = 0;
    v93 = 0;
    v344 = 0;
    LOBYTE(v94) = 0;
    v95 = 0;
    v96 = 0;
    v97 = 0;
    v341 = 0;
    v98 = 0.0;
    v99 = (v346 + 32);
    v100 = 99.0;
    v101 = 0.0;
    v102 = v350;
    do
    {
      v103 = *(v99 + 3);
      if ((v103 | 2) != 2)
      {
        v335 = "(pMeas->eMeasType == SKF_MEAS_PR) || (pMeas->eMeasType == SKF_MEAS_RR)";
        DeviceFaultNotify("glpe_polaroid.cpp", 284, "RunMeasPreselection", "(pMeas->eMeasType == SKF_MEAS_PR) || (pMeas->eMeasType == SKF_MEAS_RR)");
        v336 = "glpe_polaroid.cpp";
        v337 = 284;
LABEL_424:
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v336, v337, v335);
      }

      *&v375 = 0;
      v382 = 0.0;
      if (!v103 && ((*(*v102 + 4 * (*(v99 + 4) >> 5)) >> (*(v99 + 4) & 0x1F)) & 1) != 0)
      {
        MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(*v349, v99, 0, 0);
        if (*(MeMeas + 29) >= 17.0)
        {
          v105 = MeMeas;
          v106 = *v99;
          *&v387[4 * (v106 >> 5)] |= 1 << v106;
          v107 = v353;
          v108 = 20;
          if (*(v353 + 93))
          {
            v108 = 28;
          }

          v109 = *&v105[v108] - 1;
          if (v109 <= 1)
          {
            ++v92;
            *(*v390 + 4 * (*(v99 + 4) >> 5)) |= 1 << *(v99 + 4);
            *(v383 + (v106 >> 5)) |= 1 << v106;
          }

          if (v100 > 10.0)
          {
            v110 = **(v353 + 1);
            v381 = *(v347 + *(*v353 - 24));
            v380 = **(v353 + 3);
            v379 = 0;
            BlueFin::GlPeDops::GetDops();
            BlueFin::stDops::operator=(&v396, &v377);
            v107 = v353;
            LOBYTE(v106) = *v99;
          }

          LOBYTE(v377) = v106;
          HIDWORD(v377) = *(v99 + 1);
          LOWORD(v378[0]) = *(v99 + 4);
          if (BlueFin::GlPePolaroid::PolaroidInnovPR(v107, &v377, &v375, &v395, &v382, 0x32u, 0, v351 & 1, v100, v13))
          {
            v111 = *(v105 + 29);
            v100 = *(&v398[5] + 1);
            v112 = v382;
            BlueFin::SKFVector::AddLen(&v368);
            *(v368 + SLODWORD(v369[0])) = v112;
            if (v109 <= 1)
            {
              *(v385 + ((*v99 >> 3) & 0x1C)) |= 1 << *v99;
              ++v341;
            }

            v101 = v101 + v111;
            ++v93;
            if (v112 >= 15.0)
            {
              ++v95;
            }

            else
            {
              ++v96;
            }
          }

          else
          {
            BlueFin::GlSetBase::Remove(&v387, *v99);
            v113 = *(v105 + 29);
            v112 = v382;
            BlueFin::SKFVector::AddLen(&v400);
            v98 = v98 + v113;
            ++v344;
            *(v400 + 8 * SDWORD2(v400)) = v112;
            if (v109 < 2)
            {
              ++v97;
            }
          }

          ++v91;
          v114 = *&v375;
          if (*&v375 > 0.0)
          {
            v115 = BlueFin::GlBigArray::Add(&v420, *(v99 + 4));
            if (!v115)
            {
              v335 = "pdSlot";
              DeviceFaultNotify("glpe_polaroid.cpp", 347, "RunMeasPreselection", "pdSlot");
              v336 = "glpe_polaroid.cpp";
              v337 = 347;
              goto LABEL_424;
            }

            if (v112 <= 0.0)
            {
              v116 = 0.0;
              if (v112 < 0.0)
              {
                v116 = -1.0;
              }

              *v115 = v114 * v116;
            }

            else
            {
              *v115 = v114;
              v116 = 1.0;
            }

            v117 = v114 * v116;
            BlueFin::SKFVector::AddLen(&v393);
            *(v393 + 8 * SLODWORD(v394[0])) = v117;
          }
        }

        v88 = v353;
        v102 = v350;
      }

      v94 = (v94 + 1);
      v99 += 56;
    }

    while (v94 < *(v88 + 100));
    v118 = 0.0;
    v119 = 0.0;
    v120 = v93;
    if (v93)
    {
      v119 = v101 / v93;
    }

    v339 = v119;
    v90 = &unk_298A35000;
    if (v344)
    {
      v118 = v98 / v344;
    }

    v121 = v341;
    v122 = v96;
    v89 = v338;
  }

  v123 = **(v88 + 1);
  *&v375 = *(v88 + *(*v88 - 24) + 88);
  LODWORD(v382) = **(v88 + 3);
  LODWORD(v381) = 0;
  v124 = v90[293];
  v125 = v88;
  BlueFin::GlPeDops::GetDops();
  BlueFin::stDops::operator=(&v396, &v377);
  v126 = **(v125 + 8);
  *&v375 = *(v125 + *(*v125 - 24) + 88);
  LODWORD(v382) = **(v125 + 24);
  LODWORD(v381) = 0;
  BlueFin::GlPeDops::GetDops();
  BlueFin::stDops::operator=(&v396, &v377);
  v127 = **(v125 + 8);
  *&v375 = *(v125 + *(*v125 - 24) + 88);
  LODWORD(v382) = **(v125 + 24);
  LODWORD(v381) = 0;
  BlueFin::GlPeDops::GetDops();
  BlueFin::stDops::operator=(&v396, &v377);
  v128 = *(&v398[5] + 1);
  v129 = v125 + *(*v125 - 24);
  v375 = *(v129 + 8);
  v376 = *(v129 + 24);
  v130 = *(v129 + 88);
  v131 = *(v129 + 208);
  v132 = *(v129 + 216);
  v133 = *(v129 + 224);
  v134 = *(v129 + 232);
  BlueFin::GlPeNavUtil::ComputeRangeResidVec(v125, v390, &v375, **(v125 + 24), 0, 0, 0, 1, *(v125 + 88), 1);
  v135 = BlueFin::SKFVector::Var(&v368);
  v139 = BlueFin::SKFVector::Var(&v400);
  if (v128 <= 2.0)
  {
    BlueFin::SKFVector::Median(&v377, v136, v137, v138);
  }

  BlueFin::SKFVector::Median(&v393, v136, v137, v138);
  *&v375 = &v420;
  WORD4(v375) = v425 + 1;
  if (v424 > (v425 + 1))
  {
    v141 = v140;
    do
    {
      v142 = BlueFin::GlBigArrayIterator::Next(&v375);
      if (v142 >= 0x23Fu)
      {
        goto LABEL_420;
      }

      if ((v142 & 0x3FF) - WORD2(v423) >= HIWORD(v423))
      {
        v335 = "handle - m_usMinHandle < m_usNumHandles";
        DeviceFaultNotify("glinc_array.h", 313, "EnsureValidHandle", "handle - m_usMinHandle < m_usNumHandles");
        v336 = "glinc_array.h";
        v337 = 313;
        goto LABEL_424;
      }

      v143 = *(v421 + (v142 - WORD2(v423)));
      if (v143 != 0xFFFF)
      {
        if (v424 <= v143)
        {
          v335 = "slot < m_usNumSlots";
          DeviceFaultNotify("glinc_array.h", 319, "EnsureValidSlot", "slot < m_usNumSlots");
          v336 = "glinc_array.h";
          v337 = 319;
          goto LABEL_424;
        }

        if (v420 && *(v420 + v423 * v143) < v141)
        {
          *&v354[4 * ((v142 >> 5) & 0x1F)] |= 1 << v142;
        }
      }
    }

    while (WORD4(v375) < *(v375 + 32));
  }

  if (v351)
  {
    goto LABEL_175;
  }

  v144 = 0;
  v145 = v120 > 2u && v344 > 2u;
  v146 = v145;
  v147 = v97;
  v148 = sqrt(v135);
  v149 = sqrt(v139);
  v150 = v121 / v147;
  if (!v97)
  {
    v150 = 0.0;
  }

  v151 = v149 / v148;
  if (v148 <= 0.0)
  {
    v152 = 0.0;
  }

  else
  {
    v152 = v151;
  }

  v153 = v122 / v95;
  if (!v95)
  {
    v153 = 0.0;
  }

  v154 = v339 - v118;
  if (!v146)
  {
    v154 = 0.0;
  }

  v155 = v120;
  v156 = v155 / v91;
  if (!v91)
  {
    v156 = 0.0;
  }

  v157 = v121 / v92;
  if (!v92)
  {
    v157 = 0.0;
  }

  v158 = v121 / v155;
  if (!v120)
  {
    v158 = 0.0;
  }

  v159 = 1.0;
  if ((v89 & 0xFFFFFFFE) != 2)
  {
    v159 = 0.0;
  }

  v160 = *(v353 + 56);
  v161 = &BlueFin::KF_CONF_COEFS_NAV2;
  v162 = &BlueFin::KF_CONF_COEFS_SPIDER;
  do
  {
    if (v160)
    {
      v163 = v162;
    }

    else
    {
      v163 = v161;
    }

    *&v415[v144 - 8] = ((((((((((((*v163 + (v163[1] * 0.0)) + (v163[2] * v159)) + (v163[3] * v155)) + (v163[4] * v121)) + (v163[5] * v147)) + (v163[6] * v150)) + (v163[7] * v152)) + (v163[8] * v153)) + (v163[9] * v154)) + (v163[10] * (v120 - v344))) + (v163[11] * v156)) + (v163[12] * v158)) + (v163[13] * v157);
    v144 += 4;
    v161 += 14;
    v162 += 14;
  }

  while (v144 != 12);
  if (*&v414 < *(&v414 + 1) || *&v414 < *v415)
  {
    v166 = *(v353 + 125);
    LOBYTE(v165) = *(v353 + 124) + 1;
    if (*v415 < *(&v414 + 1) || *v415 <= *&v414)
    {
      LOBYTE(v164) = v166 - 1;
    }

    else
    {
      LOBYTE(v164) = v166 + 1;
    }
  }

  else
  {
    LOBYTE(v164) = *(v353 + 125) - 1;
    LOBYTE(v165) = *(v353 + 124) - 1;
  }

  v164 = v164;
  v167 = v164 & ~(v164 >> 31);
  v165 = v165;
  if (v167 >= 10)
  {
    LOBYTE(v167) = 10;
  }

  *(v353 + 125) = v167;
  if ((v165 & ~(v165 >> 31)) >= 10)
  {
    v168 = 10;
  }

  else
  {
    v168 = v165 & ~(v165 >> 31);
  }

  *(v353 + 124) = v168;
  v169 = *(v353 + 30);
  if (v169 == 1)
  {
    v171 = v165 <= 0;
    goto LABEL_169;
  }

  if (v169 != 2)
  {
    v171 = v165 <= 2;
LABEL_169:
    v170 = !v171;
    if (v164 > 2)
    {
      v170 = 2;
    }

    goto LABEL_174;
  }

  if (v164 < 1)
  {
    v170 = 1;
  }

  else
  {
    v170 = 2;
  }

LABEL_174:
  *(v353 + 30) = v170;
LABEL_175:
  v412 = &v413[4];
  v413[0] = 19;
  memset(&v413[4], 0, 76);
  v393 = v394 + 4;
  LOBYTE(v394[0]) = 8;
  *(v394 + 4) = 0u;
  *(&v394[1] + 4) = 0u;
  v377 = 0.0;
  v435 = 1.0;
  *&__src = 0.0;
  v172 = *(v353 + 2);
  LODWORD(v368) = 0;
  *&v369[0] = v369 + 12;
  BYTE8(v369[0]) = 8;
  memset(v369 + 12, 0, 32);
  v369[3] = xmmword_298A41DA0;
  v173 = vdup_n_s32(0x42C60000u);
  *&v369[4] = v173;
  DWORD2(v369[4]) = 1120272384;
  BlueFin::stDops::stDops(&v414, &v368);
  v174 = v353;
  v416 = v172;
  LODWORD(v368) = 0;
  *&v369[0] = v369 + 12;
  BYTE8(v369[0]) = 8;
  memset(v369 + 12, 0, 32);
  v369[3] = xmmword_298A41DA0;
  *&v369[4] = v173;
  DWORD2(v369[4]) = 1120272384;
  v175 = 99.0;
  v176 = 1;
  LOBYTE(v177) = *(v353 + 100);
  v178 = v350;
  do
  {
    v179 = v176;
    if (v177 >= 1)
    {
      LOBYTE(v180) = 0;
      v181 = v346;
      do
      {
        v182 = *(v181 + 44);
        if ((v182 | 2) != 2)
        {
          v335 = "(pMeas->eMeasType == SKF_MEAS_PR) || (pMeas->eMeasType == SKF_MEAS_RR)";
          DeviceFaultNotify("glpe_polaroid.cpp", 424, "RunMeasSelectionPR", "(pMeas->eMeasType == SKF_MEAS_PR) || (pMeas->eMeasType == SKF_MEAS_RR)");
          v336 = "glpe_polaroid.cpp";
          v337 = 424;
          goto LABEL_424;
        }

        v183 = 1 << (*(v181 + 40) & 0x1F);
        v184 = v183 & *&v354[4 * (*(v181 + 40) >> 5)];
        if (v179)
        {
          if (!v182 && (v183 & *&v354[4 * (*(v181 + 40) >> 5)]) != 0)
          {
            goto LABEL_185;
          }
        }

        else if (!v182 && (v183 & *&v354[4 * (*(v181 + 40) >> 5)]) == 0)
        {
LABEL_185:
          if ((v183 & *(*v178 + (*(v181 + 40) >> 5))) != 0)
          {
            v185 = 0;
            LOBYTE(v400) = *(v181 + 32);
            DWORD1(v400) = *(v181 + 36);
            WORD4(v400) = *(v181 + 40);
            v186 = &v365[4 * v366 - 4];
            do
            {
              if (*v186)
              {
                v187 = *v186 - (((*v186 >> 1) & 0x5B6DB6DB) + ((*v186 >> 2) & 0x9249249));
                v185 = ((v187 + (v187 >> 3)) & 0xC71C71C7) + v185 - 63 * (((v187 + (v187 >> 3)) & 0xC71C71C7) / 0x3F);
              }

              --v186;
            }

            while (v186 >= v365);
            if (v185 <= v120)
            {
              v188 = v120;
            }

            else
            {
              v188 = v185;
            }

            v189 = v174;
            if (BlueFin::GlPePolaroid::PolaroidInnovPR(v174, &v400, &v377, &v435, &__src, v188, *(v174 + 120), v351 & 1, v175, v13))
            {
              *(v393 + ((*(v181 + 32) >> 3) & 0x1C)) |= 1 << *(v181 + 32);
              v174 = v189;
              if (v377 > v435 && !(v351 & 1 | (*(v189 + 120) == 2)) && (*(v189 + 96) > 0xFu || *(*(v189 + 48) + 24) < 20.0 || *&__src > 0.0))
              {
                v190 = exp(v377 / v435);
                v174 = v353;
                *(v181 + 8) = fmin(sqrt(v190), 10000.0) * *(v181 + 8);
              }

              *&v365[4 * (*(v181 + 40) >> 5)] |= 1 << *(v181 + 40);
              if (v175 > 10.0)
              {
                v196 = **(v174 + 8);
                v396 = *(v347 + *(*v174 - 24));
                *v390 = **(v174 + 24);
                LODWORD(v387) = 0;
                BlueFin::GlPeDops::GetDops();
                BlueFin::stDops::operator=(&v368, &v400);
                v174 = v353;
              }

              v175 = *(&v369[3] + 1);
              v192 = __src;
            }

            else
            {
              v191 = *(v181 + 40);
              *&v359[4 * (v191 >> 5)] |= 1 << *(v181 + 40);
              v192 = __src;
              if (*&__src >= 0.0)
              {
                v193 = *&__src;
              }

              else
              {
                v193 = -*&__src;
              }

              v194 = *(*(v189 + 48) + 24);
              v195 = v193 < v194 && v377 < 3.0;
              v174 = v189;
              if (v195 && *(*(v189 + 32) + 8) == 1 || v194 > 20.0 && *(*(v189 + 32) + 8) == 2)
              {
                BlueFin::GlSetBase::Remove(&v359, v191);
                v174 = v353;
              }
            }

            v178 = v350;
            if (*&v192 < 0.0)
            {
              *&v412[4 * (*(v181 + 40) >> 5)] |= 1 << *(v181 + 40);
            }
          }
        }

        v181 += 56;
        v180 = (v180 + 1);
        v177 = *(v174 + 100);
      }

      while (v180 < v177);
    }

    v176 = 0;
  }

  while ((v179 & 1) != 0);
  BlueFin::GlSetBase::GlSetBase(&v368, v369 + 1, 0x13u, v178);
  v414 = COERCE_DOUBLE(&v415[4]);
  v415[0] = 19;
  memset(&v415[4], 0, 76);
  BlueFin::GlSetBase::OperatorBinaryXor(&v368, &v414, v345);
  BlueFin::GlSetBase::operator=(&v368, &v414);
  *(&v369[1] + 4) = *&v415[20];
  *(&v369[2] + 4) = *&v415[36];
  *(&v369[3] + 4) = *&v415[52];
  v369[4] = *&v415[64];
  *(v369 + 4) = *&v415[4];
  BlueFin::GlSetBase::GlSetBase(&__src, &v371[4], 0x13u, &v368);
  v414 = COERCE_DOUBLE(&v415[4]);
  v415[0] = 19;
  memset(&v415[4], 0, 76);
  BlueFin::GlSetBase::OperatorBinaryAnd(&__src, &v414, v345);
  BlueFin::GlSetBase::operator=(&__src, &v414);
  *v372 = *&v415[20];
  *&v372[16] = *&v415[36];
  *&v372[32] = *&v415[52];
  *&v372[44] = *&v415[64];
  *&v371[4] = *&v415[4];
  LOBYTE(v414) = v371[0];
  memcpy(v415, __src, 4 * v371[0]);
  WORD1(v414) = 0;
  BYTE1(v414) = 0;
  HIDWORD(v414) = *v415;
  BlueFin::GlSetIterator::operator++(&v414);
  if (BYTE1(v414) != LOBYTE(v414))
  {
    while (1)
    {
      v197 = WORD1(v414);
      if (WORD1(v414) >= 0x23FuLL)
      {
        break;
      }

      v198 = *v349;
      v199 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * WORD1(v414);
      v200 = *v199;
      LODWORD(v199) = v199[1];
      LOBYTE(v368) = v200;
      HIDWORD(v368) = v199;
      LOWORD(v369[0]) = WORD1(v414);
      v201 = BlueFin::GlSignalIdArray::Get(v198[2349], &v368);
      if (v201 && *(v201 + 272) == 15)
      {
        *&v359[(v197 >> 3) & 0x1FFC] |= 1 << v197;
      }

      BlueFin::GlSetIterator::operator++(&v414);
      if (BYTE1(v414) == LOBYTE(v414))
      {
        goto LABEL_225;
      }
    }

LABEL_420:
    v335 = "usIndex < NUM_SIGNAL_IDS";
    DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
    v336 = "glsignalid.h";
    v337 = 578;
    goto LABEL_424;
  }

LABEL_225:
  v202 = v353;
  v203 = *(v353 + 8);
  if (v203)
  {
    v215 = BlueFin::GlSetBase::Cnt((v203 + 440)) == 0;
    v202 = v353;
    v204 = v215;
  }

  else
  {
    v204 = 1;
  }

  v352 = v204;
  v205 = v345;
  v206 = *(*(v202 + 4) + 16);
  v393 = v394 + 4;
  LOBYTE(v394[0]) = 19;
  *(v394 + 4) = 0u;
  *(&v394[1] + 4) = 0u;
  *(&v394[2] + 4) = 0u;
  *(&v394[3] + 4) = 0u;
  v394[4] = 0u;
  v377 = COERCE_DOUBLE((v378 + 4));
  LOBYTE(v378[0]) = 19;
  *(v378 + 4) = 0u;
  *(&v378[1] + 4) = 0u;
  *(&v378[2] + 4) = 0u;
  *(&v378[3] + 4) = 0u;
  v378[4] = 0u;
  v435 = COERCE_DOUBLE((v436 + 4));
  LOBYTE(v436[0]) = 19;
  *(v436 + 4) = 0u;
  *(&v436[1] + 4) = 0u;
  *(&v436[2] + 4) = 0u;
  *(&v436[3] + 4) = 0u;
  v436[4] = 0u;
  v207 = *(v202 + 100);
  if (v207 >= 1)
  {
    LOBYTE(v208) = 0;
    v348 = v206 & 0xFFFFFFFE;
    v342 = v202 + 2001;
    v343 = (v202 + 1992);
    v340 = (v202 + 2008);
    v209 = v346;
    while (1)
    {
      v210 = *(v209 + 44);
      if ((v210 & 0xFFFFFFFD) != 0)
      {
        v335 = "(pMeas->eMeasType == SKF_MEAS_PR) || (pMeas->eMeasType == SKF_MEAS_RR)";
        DeviceFaultNotify("glpe_polaroid.cpp", 488, "RunMeasSelectionRR", "(pMeas->eMeasType == SKF_MEAS_PR) || (pMeas->eMeasType == SKF_MEAS_RR)");
        v336 = "glpe_polaroid.cpp";
        v337 = 488;
        goto LABEL_424;
      }

      v211 = *(v209 + 40);
      if (v210 == 2)
      {
        v212 = *(v209 + 40) >> 5;
        v213 = 1 << (v211 & 0x1F);
        v214 = (v213 & *(*v205 + 4 * (v211 >> 5))) == 0;
      }

      else
      {
        v212 = *(v209 + 40) >> 5;
        v214 = 1;
        v213 = 1 << (v211 & 0x1F);
      }

      v215 = (v213 & *&v359[4 * v212]) != 0 && v348 == 2;
      v216 = v215 && *(v202 + 24) > 0xFu;
      if (v352)
      {
        v217 = BlueFin::GlSetBase::Cnt(v205);
        v205 = v345;
        v145 = v217 > 0xB;
        v202 = v353;
        v218 = v145;
      }

      else
      {
        v218 = 0;
      }

      if (!v214 && !v216)
      {
        break;
      }

LABEL_327:
      v209 += 56;
      v208 = (v208 + 1);
      if (v208 >= v207)
      {
        goto LABEL_328;
      }
    }

    v219 = v218;
    *(v393 + 4 * (v211 >> 5)) |= 1 << v211;
    v220 = v205;
    BlueFin::GlSetBase::GlSetBase(&v368, v369 + 1, 0x13u, v205);
    BlueFin::GlSetBase::operator=(&v435, v220);
    v221 = *(v220 + 28);
    v222 = *(v220 + 60);
    *(&v436[2] + 4) = *(v220 + 44);
    *(&v436[3] + 4) = v222;
    v436[4] = *(v220 + 72);
    *(v436 + 4) = *(v220 + 12);
    *(&v436[1] + 4) = v221;
    BlueFin::GlSetBase::Remove(&v435, *(v209 + 40));
    v223 = 0;
    v224 = (*&v435 + 4 * LOBYTE(v436[0]) - 4);
    do
    {
      if (*v224)
      {
        v225 = *v224 - (((*v224 >> 2) & 0x9249249) + ((*v224 >> 1) & 0x5B6DB6DB));
        v223 = ((v225 + (v225 >> 3)) & 0xC71C71C7) + v223 - 63 * (((v225 + (v225 >> 3)) & 0xC71C71C7) / 0x3F);
      }

      --v224;
    }

    while (v224 >= *&v435);
    v226 = -1.0;
    v227 = v353;
    if (v223 >= 3u && ((*(v353 + 90) & 1) != 0 || (*(v353 + 92) & 1) != 0 || *(v353 + 24) <= 0xFu))
    {
      v228 = *v353;
      v229 = v353 + *(*v353 - 24);
      v400 = *(v229 + 8);
      v401 = *(v229 + 3);
      v230 = v353 + *(v228 - 24);
      v231 = *(v230 + 11);
      v232 = **(v353 + 3);
      v233 = *(v230 + 19);
      BlueFin::GlPeNavUtil::ComputeRrateResidVec();
      v237 = *v415;
      if (*v415 >= 1)
      {
        v238 = (*&v414 + 8);
        do
        {
          *v238 = fabs(*v238);
          ++v238;
          --v237;
        }

        while (v237);
      }

      BlueFin::SKFVector::Median(&v414, v234, v235, v236);
      v226 = v239;
      v227 = v353;
    }

    LOBYTE(v396) = *(v209 + 32);
    HIDWORD(v396) = *(v209 + 36);
    LOWORD(v397) = *(v209 + 40);
    *v415 = 0;
    v414 = 0.0;
    *&v415[8] = 0;
    LOBYTE(v400) = v396;
    DWORD1(v400) = *(v209 + 36);
    WORD4(v400) = *(v209 + 40);
    if (!BlueFin::GlPePolaroid::GetMetrics(v227, &v414, &v400, 1))
    {
      goto LABEL_319;
    }

    v240 = BlueFin::GlPeMsmtMgr::GetMeMeas(*v349, &v396, 0, 0);
    *&v241 = v414;
    v242 = v353;
    if (*(v240 + 8) != 3)
    {
      v243 = v414 * v414;
      v244 = *(v353 + 2000);
      *(v343 + v244) = *(v343 + v244) + v243;
      ++v342[v244];
      *v340 = vaddq_f64(*v415, *v340);
    }

    v245 = *&v241;
    if (v352)
    {
      v246 = *(v353 + 6);
      v247 = 0.0;
      if (*(v246 + 1356) == 1)
      {
        v247 = *(v246 + 1336);
      }

      v245 = *&v241 - v247;
    }

    v248 = sqrt(*&v415[8] + *v415);
    if (v245 / v248 >= 0.0)
    {
      v249 = v245 / v248;
    }

    else
    {
      v249 = -(v245 / v248);
    }

    v250 = *(v353 + 4);
    v251 = *(v250 + 8);
    v252 = BlueFin::GlPePolaroid::Design::RR_THRESH[v251];
    v253 = *(v250 + 16);
    if (v253 != 1)
    {
      if ((v251 - 3) > 2)
      {
        if (v251 != 6)
        {
          goto LABEL_278;
        }

        v254 = 1.67;
      }

      else
      {
        v254 = 1.33;
        if (v253 != 9)
        {
          v254 = 2.0;
        }
      }

      v252 = v252 / v254;
    }

LABEL_278:
    if (v245 < 0.0)
    {
      v245 = -v245;
    }

    if (v245 <= v226 * 3.0)
    {
      v255 = 1;
    }

    else
    {
      v255 = v245 <= 5.0 && *(v353 + 24) < 0x10u;
    }

    if (v251 == 1 && (*(v353 + 56) & 1) != 0)
    {
      v252 = v252 * 0.5;
      if (v253 == 9 && (*(*(v353 + 6) + 32) + *(*(v353 + 6) + 32)) / v248 >= v252)
      {
        v252 = (*(*(v353 + 6) + 32) + *(*(v353 + 6) + 32)) / v248;
      }

      goto LABEL_304;
    }

    if (v226 > 0.0)
    {
      if (*(v353 + 90) & 1) != 0 || (*(v353 + 92))
      {
        if (v255)
        {
          goto LABEL_295;
        }
      }

      else if (*(v353 + 24) > 0xFu || v255)
      {
        goto LABEL_295;
      }

      v252 = 0.0;
      goto LABEL_304;
    }

LABEL_295:
    v256 = BlueFin::GlPeMsmtMgr::GetMeMeas(*(v353 + 1), &v396, 0, 0);
    v257 = 20;
    if (*(v353 + 93))
    {
      v257 = 28;
    }

    v258 = *&v256[v257];
    if ((v258 - 1) > 1)
    {
      if (v258 == 4)
      {
        v249 = v249 + v249;
      }
    }

    else
    {
      v249 = v249 * 0.5;
    }

    v242 = v353;
LABEL_304:
    if (fabs(*&v241) > 0.200000003 && v219)
    {
      v260 = *(v242 + 6);
      v261 = *(v260 + 80);
      v262 = *(v260 + 64);
      v263 = (v261 - v262) * 0.75;
      v264 = v263;
      v265 = v262 - v264 > *&v241;
      if (v261 + v264 < *&v241)
      {
        v265 = 1;
      }

      if (v261 <= v262)
      {
        v265 = 0;
      }
    }

    else
    {
      v265 = 0;
    }

    v266 = *(v242 + 90) == 1 && *(*(v242 + 6) + 32) > v248 * 3.0;
    if (v249 <= v252 && !v265 || v266)
    {
      if (v249 >= v252 * 0.6)
      {
        v202 = v353;
        v267 = &v377;
        if (!*(v353 + 56))
        {
          v267 = &v362;
        }

        v205 = v345;
      }

      else
      {
        v267 = &v362;
        v205 = v345;
        v202 = v353;
      }

      *(*v267 + 4 * (*(v209 + 40) >> 5)) |= 1 << *(v209 + 40);
      goto LABEL_326;
    }

LABEL_319:
    v205 = v345;
    v202 = v353;
LABEL_326:
    LOBYTE(v207) = *(v202 + 100);
    goto LABEL_327;
  }

LABEL_328:
  if ((v352 & 1) != 0 && (v268 = *(v202 + 252), v268 > 0.000001) && *(v202 + 2001) && *(v202 + 2002) && *(v202 + 2002) + *(v202 + 2001) >= 8)
  {
    v269 = sqrt(fabs(((*(v202 + 498) + 0.0 + *(v202 + 499)) * 0.5 - *(v202 + 251)) / v268)) * 0.6 + *(v202 + 253) * 0.4;
  }

  else
  {
    v269 = *(v202 + 253) * 0.7 + 0.3;
  }

  *(v202 + 253) = v269;
  v270 = 0;
  v271 = *(v202 + 2000);
  if (v271 == 1)
  {
    v272 = 0;
  }

  else
  {
    v272 = v271 + 1;
  }

  *(v202 + 2000) = v272;
  *(v202 + v272 + 2001) = 0;
  *(v202 + v272 + 498) = 0;
  *(v202 + 2008) = 0u;
  v273 = v362;
  v274 = &v362[4 * v363 - 4];
  do
  {
    if (*v274)
    {
      v275 = *v274 - (((*v274 >> 1) & 0x5B6DB6DB) + ((*v274 >> 2) & 0x9249249));
      v270 = ((v275 + (v275 >> 3)) & 0xC71C71C7) + v270 - 63 * (((v275 + (v275 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    v274 -= 4;
  }

  while (v274 >= v362);
  if (v270 > 4u)
  {
    v281 = 0;
    v282 = (*&v377 + 4 * LOBYTE(v378[0]) - 4);
    do
    {
      if (*v282)
      {
        v283 = *v282 - (((*v282 >> 2) & 0x9249249) + ((*v282 >> 1) & 0x5B6DB6DB));
        v281 = ((v283 + (v283 >> 3)) & 0xC71C71C7) + v281 - 63 * (((v283 + (v283 >> 3)) & 0xC71C71C7) / 0x3F);
      }

      --v282;
    }

    while (v282 >= *&v377);
    if (v270 <= 0xFu && v281)
    {
      v284 = v202 + *(*v202 - 24);
      v285 = *(v284 + 11);
      v286 = **(v202 + 3);
      v387 = v284 + 8;
      *v388 = v285;
      v388[12] = 15;
      *&v388[8] = v286;
      *&v388[16] = 21;
      *&v415[24] = vdupq_n_s64(0x4079000000000000uLL);
      *&v415[40] = 0x4079000000000000;
      *&v415[56] = 0x6400000000;
      v287 = v202;
      bzero(&v415[64], 0x328uLL);
      *&v415[48] = &v415[64];
      v418 = 0x6400000000;
      bzero(v419, 0x328uLL);
      v417 = v419;
      v427 = 0;
      v428 = v430;
      v429 = 8;
      memset(v430, 0, 32);
      v431 = xmmword_298A41DA0;
      v432 = vdup_n_s32(0x42C60000u);
      v433 = 1120272384;
      *&v415[8] = 0;
      v414 = 0.0;
      *v415 = 0;
      *&v415[16] = *(v284 + 19);
      v288 = *(v287 + 8);
      v426 = **(v287 + 1);
      *v390 = v288;
      memset(&v390[16], 0, 24);
      if (BlueFin::GlPeLsq::LsVelDeals(v390, &v387, &v362, &v414))
      {
        v289 = *(*(v287 + 6) + 32);
        if (v289 < 0.58)
        {
          v289 = 0.58;
        }

        v290 = *(v287 + 100);
        v202 = v287;
        if (v290 >= 1)
        {
          LOBYTE(v291) = 0;
          v292 = fminf(v289, 1.74);
          v293 = v346;
          do
          {
            if (*(v293 + 44) == 2)
            {
              v294 = 1 << (*(v293 + 40) & 0x1F);
              if ((v294 & *(*&v377 + 4 * (*(v293 + 40) >> 5))) != 0 && (v294 & *&v362[4 * (*(v293 + 40) >> 5)]) == 0)
              {
                v385 = &v386[1];
                v386[0] = 0x100000000;
                v386[1] = 0;
                v386[2] = 0;
                v383 = &v384[1];
                v384[0] = 0x100000000;
                v384[1] = 0;
                v384[2] = 0;
                v368 = v369 + 8;
                *&v369[0] = 0xC00000000;
                memset(v369 + 8, 0, 104);
                v295 = v202 + *(*v202 - 24);
                v296 = *(v295 + 11);
                v298 = v202 + 16;
                v297 = *(v202 + 2);
                v299 = **(v298 + 1);
                v300 = *(v295 + 52);
                v301 = *(v295 + 54);
                v302 = *(v295 + 56);
                v303 = *(v295 + 58);
                *&v400 = &v368;
                *(&v400 + 1) = v295 + 8;
                v401 = v296;
                v402 = v299;
                v403 = 0x4C100000003;
                v404 = &v414;
                v405 = 0;
                v406 = &v415[16];
                v407 = v300;
                v408 = v301;
                v409 = v302;
                v410 = v303;
                v411 = xmmword_298A44280;
                v396 = &v385;
                v397 = &v383;
                memset(v398, 0, 56);
                (*(*v297 + 16))(v297, &v400, &v396, v293, &BlueFin::GlSet128::BIT0);
                v304 = v385[1] - v383[1];
                if (v304 < 0.0)
                {
                  v304 = -v304;
                }

                v305 = v304;
                if (v292 > v305)
                {
                  *&v362[4 * (*(v293 + 40) >> 5)] |= 1 << *(v293 + 40);
                }

                v202 = v353;
                LOBYTE(v290) = *(v353 + 100);
              }
            }

            v293 += 56;
            v291 = (v291 + 1);
          }

          while (v291 < v290);
        }
      }

      else
      {
        v306 = *(v287 + 100);
        v202 = v287;
        if (v306 >= 1)
        {
          v307 = v377;
          v308 = v362;
          v309 = (v346 + 44);
          do
          {
            if (*v309 == 2)
            {
              v310 = 1 << (*(v309 - 1) & 0x1F);
              if ((v310 & *(*&v307 + 4 * (*(v309 - 2) >> 5))) != 0)
              {
                v311 = *(v309 - 2) >> 5;
                if ((v310 & *&v308[4 * v311]) == 0)
                {
                  *&v308[4 * v311] |= 1 << (*(v309 - 1) & 0x1F);
                }
              }
            }

            v309 += 14;
            --v306;
          }

          while (v306);
        }
      }
    }
  }

  else
  {
    v276 = v207;
    if (v207 >= 1)
    {
      v277 = v377;
      v278 = (v346 + 44);
      do
      {
        if (*v278 == 2)
        {
          v279 = 1 << (*(v278 - 1) & 0x1F);
          if ((v279 & *(*&v277 + 4 * (*(v278 - 2) >> 5))) != 0)
          {
            v280 = *(v278 - 2) >> 5;
            if ((v279 & *&v273[4 * v280]) == 0)
            {
              *&v273[4 * v280] |= 1 << (*(v278 - 1) & 0x1F);
            }
          }
        }

        v278 += 14;
        --v276;
      }

      while (v276);
    }
  }

  if (*(v202 + 126) == 1)
  {
    BlueFin::GlSignalIdSet::GetSvIdSet(&v357, &v368);
    BlueFin::GlPeNavUtil::ComputeDops(v353, &v368);
    v312 = 6.0 - *&v415[52];
    if (*&v415[52] < 1.0)
    {
      v312 = 5.0;
    }

    if (*&v415[52] <= 5.0)
    {
      v313 = v312;
    }

    else
    {
      v313 = 1.0;
    }

    BlueFin::GlSignalIdSet::GetSvIdSet(&v355, &v368);
    BlueFin::GlPeNavUtil::ComputeDops(v353, &v368);
    v202 = v353;
    v314.n128_u32[0] = *&v415[52];
    v315.n128_f32[0] = (5.0 - *&v415[52]) * 0.5;
    if (*&v415[52] < 1.0)
    {
      v315.n128_f32[0] = 3.0;
    }

    if (*&v415[52] <= 5.0)
    {
      v316 = v315.n128_f32[0];
    }

    else
    {
      v316 = 1.0;
    }

    v317 = *(v353 + 100);
    if (v317 >= 1)
    {
      v318 = 0;
      do
      {
        v319 = v346 + 56 * v318;
        if (*(v319 + 36) == 2)
        {
          v320 = 0.5;
        }

        else
        {
          v320 = 1.0;
        }

        v321 = *(v319 + 44);
        if (v321 == 2)
        {
          v331 = 1 << (*(v319 + 40) & 0x1F);
          if ((v331 & v355[*(v319 + 40) >> 5]) == 0 && (v331 & *&v362[4 * (*(v319 + 40) >> 5)]) != 0)
          {
            v315.n128_u64[0] = *(v319 + 8);
            v314.n128_f64[0] = v315.n128_f64[0] * fmaxf(v316 * v320, 1.0);
            *(v319 + 8) = v314.n128_u64[0];
          }
        }

        else if (!v321)
        {
          v322 = 1 << (*(v319 + 40) & 0x1F);
          if ((v322 & v357[*(v319 + 40) >> 5]) == 0)
          {
            v323 = *(v319 + 40) >> 5;
            if ((v322 & *&v412[4 * v323]) == 0 && (v322 & *&v365[4 * v323]) != 0)
            {
              v324 = (*(**(v202 + 2) + 64))(*(v202 + 2), v319 + 32, v314, v315);
              if (v324)
              {
                v325 = v324;
                BlueFin::GlSignalIdSet::GetSvIdSet(&v365, &v368);
                BlueFin::GlSetBase::Remove(&v368, *(v319 + 32));
                LOBYTE(v414) = v369[0];
                memcpy(v415, v368, 4 * LOBYTE(v369[0]));
                WORD1(v414) = 0;
                BYTE1(v414) = 0;
                HIDWORD(v414) = *v415;
                BlueFin::GlSetIterator::operator++(&v414);
                v314.n128_u32[0] = 1.0;
                v202 = v353;
                if (BYTE1(v414) != LOBYTE(v414))
                {
                  v326 = 0;
                  do
                  {
                    v327 = *(v202 + 2);
                    LOBYTE(v400) = BYTE2(v414);
                    v328 = (*(*v327 + 64))(v327, &v400, v314);
                    if (v328)
                    {
                      v329 = *(v325 + 8) - *(v328 + 8);
                      if (v329 < 0.0)
                      {
                        v329 = -v329;
                      }

                      if (v329 < 15.0)
                      {
                        v330 = *(v325 + 4) - *(v328 + 4);
                        if (v330 < 0.0)
                        {
                          v330 = -v330;
                        }

                        if (v330 < 15.0)
                        {
                          ++v326;
                        }
                      }
                    }

                    BlueFin::GlSetIterator::operator++(&v414);
                    v202 = v353;
                  }

                  while (BYTE1(v414) != LOBYTE(v414));
                  v314.n128_f32[0] = (v326 + 1);
                }
              }

              else
              {
                v314.n128_u32[0] = 1.0;
                v202 = v353;
              }

              v315.n128_u64[0] = *(v319 + 8);
              v314.n128_f64[0] = v315.n128_f64[0] * fmaxf(v320 * (v313 * v314.n128_f32[0]), 1.0);
              *(v319 + 8) = v314.n128_u64[0];
              LOBYTE(v317) = *(v202 + 100);
            }
          }
        }

        ++v318;
      }

      while (v318 < v317);
    }
  }

  v332 = v202;
  BlueFin::GlSetBase::operator&=(v350, &v365);
  BlueFin::GlSetBase::operator&=(v345, &v362);
  result = *(v332 + 100);
  v334 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlMeFrameMgr::SendSubFrame(BlueFin::GlMeFrameMgr *this, BlueFin::GlBitBuffer *a2)
{
  if (*this != 1)
  {
    DeviceFaultNotify("glme_framemgr.h", 532, "GetSynced", "SYNCED == m_utStateMem.ucState");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_framemgr.h", 532, "SYNCED == m_utStateMem.ucState");
  }

  v2 = a2;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v71 = &unk_2A1F09388;
  v72 = 0;
  v73 = -1;
  memset(v74, 0, sizeof(v74));
  *(a2 + 3) = *(a2 + 7);
  *(a2 + 40) = 0;
  v8 = 1;
  do
  {
    v9 = v2;
    v10 = BlueFin::GlBitBuffer::GetU(v2, 0x20u);
    v11 = v10;
    if (v10 == -1951547170 || v10 == 1269678302)
    {
      v8 = 0;
    }

    else
    {
      if (!BlueFin::GlMeFrameMgr::TestOverlapBits(v10, v3, v6, v7))
      {
LABEL_38:
        v8 = 0;
        LOBYTE(v11) = -34;
        v13 = -1951547170;
        goto LABEL_39;
      }

      if ((v6 & 3) == v11 >> 30)
      {
        v11 = v11;
      }

      else
      {
        v11 = ~v11;
      }

      if (((v3 & 7) != 1 || (v11 & 3) != 0) && (v3 != 2 || v11 >> 30))
      {
        v17 = (v3 & 7) != 1 || (v11 & 3) == 0;
        v18 = v3 != 2 || (v11 & 0xC0000000) == 0;
        if (v18 && v17)
        {
          goto LABEL_9;
        }

        if (v8)
        {
          goto LABEL_38;
        }

        v11 = ~v11;
      }

      v8 = 1;
    }

LABEL_9:
    if (v11 == -1951547170 || v11 == 1269678302)
    {
      v13 = v11;
    }

    else
    {
      if (BlueFin::GPSFrameMgrUtils::Parity(v11))
      {
        v15 = 0;
      }

      else
      {
        v15 = 0x80000000;
      }

      v13 = v15 & 0xC0000000 | (v11 ^ ((2 * v11) >> 31)) & 0x3FFFFFFF;
    }

LABEL_39:
    v7 = v13 >> 30 == 0;
    v74[0].i32[v3 + 1] = v13;
    v4 |= (v13 & 0x80000000) == 0;
    if (v13 >> 30 == 2)
    {
      ++v5;
    }

    ++v3;
    v6 = v11;
    v2 = v9;
  }

  while (v3 != 10);
  v19 = *(this + 1);
  if (*(this + 1))
  {
    v20 = 0;
  }

  else
  {
    v21 = 0;
    do
    {
      v20 = (v74[0].i32[v21 + 3] & 0xFFC00000) == 583008256;
      v22 = (v74[0].i32[v21 + 3] & 0xFFC00000) == 0x22C00000 || v21 == 7;
      ++v21;
    }

    while (!v22);
  }

  v23 = *(this + 3);
  v24 = v5;
  v25 = xmmword_298A3A3A0;
  v26 = xmmword_298A397C0;
  v27 = vdupq_n_s32(v23);
  v28 = 8;
  v29.i64[0] = 0xF0000000FLL;
  v29.i64[1] = 0xF0000000FLL;
  v30.i64[0] = 0x100000001;
  v30.i64[1] = 0x100000001;
  v31.i64[0] = 0x400000004;
  v31.i64[1] = 0x400000004;
  do
  {
    v32 = vshlq_u32(v27, vnegq_s32(vshlq_n_s32(v26, 2uLL)));
    v24 = vaddq_s32(vqsubq_u32(vandq_s8(v32, v29), v30), v24);
    v25 = vsubq_s32(v25, vtstq_s32(v32, v29));
    v26 = vaddq_s32(v26, v31);
    v28 -= 4;
  }

  while (v28);
  v33 = vaddvq_s32(v25);
  v34 = vaddvq_s32(v24);
  *(this + 3) = (v5 + 1) | (16 * v23);
  if (!v19 && (v33 >= 3 ? (v35 = 9 * v33 >= v34) : (v35 = 1), !v35) || (v19 == 1 ? (v36 = 10 * v33 >= v34) : (v36 = 1), !v36 ? (v37 = 1) : (v37 = v20), v37 == 1))
  {
    *(this + 412) = 0xFFFF0000FFFFLL;
    *(this + 87) = 0;
    *(this + 424) = 0u;
    *(this + 440) = 0u;
    *(this + 456) = 0u;
    *(this + 472) = 0u;
    *(this + 488) = 0u;
    *(this + 504) = 0u;
    *(this + 520) = 0u;
    *(this + 536) = 0u;
    *(this + 552) = 0u;
    *(this + 568) = 0u;
    *(this + 584) = 0u;
    *(this + 600) = 0u;
    *(this + 616) = 0u;
    *(this + 632) = 0u;
    *(this + 648) = 0u;
    *(this + 664) = 0u;
    *(this + 680) = 0u;
    *&v38 = 0xF0F0F0F0F0F0F0F0;
    *(&v38 + 1) = 0xF0F0F0F0F0F0F0F0;
    *(this + 48) = v38;
    *(this + 49) = v38;
    *(this + 46) = v38;
    *(this + 47) = v38;
    *(this + 44) = v38;
    *(this + 45) = v38;
    BlueFin::GlMeFrameMgr::SetState(this, 0);
    return 0;
  }

  if (v4)
  {
    LOBYTE(v72) = *(this + 408);
    v40 = *(this + 12);
    v41 = *(this + 14);
    v74[0].i32[0] = 6 * v40;
    v74[2].i32[3] = v41;
    HIBYTE(v72) = (v40 + 4) % 5u + 1;
    v42 = v74[0].u32[1];
    if (!(v74[0].i32[1] >> 30))
    {
      *(this + 19) = v74[0].i32[1];
      v43 = 10;
      goto LABEL_73;
    }

    v44 = *(this + 7);
    if (v44)
    {
      v42 = *(this + 19);
      v74[0].i32[1] = v42;
      v43 = v44 - 1;
LABEL_73:
      *(this + 7) = v43;
    }

    v45 = v74[0].i32[2];
    if (!(v74[0].i32[2] >> 30))
    {
      *(this + 20) = v74[0].i32[2];
      v46 = 10;
      goto LABEL_81;
    }

    v47 = *(this + 8);
    if (v47)
    {
      v48 = 0;
      v49 = (v42 << 30) | (v40 << 13);
      v50 = *(this + 20) & 0x1800 | (((v40 + 4) % 5u + 1) << 8) | v49;
      if ((v49 & 0x40000000) != 0)
      {
        v50 ^= 0xC0000000;
      }

      do
      {
        v51 = dword_298A3A3B4[v48] & v50 ^ ((dword_298A3A3B4[v48] & v50) >> 16);
        v52 = v51 ^ (v51 >> 8) ^ ((v51 ^ (v51 >> 8)) >> 4);
        v50 |= (((v52 ^ (v52 >> 2)) ^ ((v52 ^ (v52 >> 2)) >> 1)) & 1) << byte_298A3A3CC[v48++];
      }

      while (v48 != 6);
      v45 = v50 & 0x3FFFFFFF;
      v74[0].i32[2] = v50 & 0x3FFFFFFF;
      v46 = v47 - 1;
LABEL_81:
      *(this + 8) = v46;
    }

    v53.i64[0] = 0xC0000000C0000000;
    v53.i64[1] = 0xC0000000C0000000;
    v54.i64[0] = 0x100000001;
    v54.i64[1] = 0x100000001;
    if (!vaddvq_s32(vsubq_s32(vandq_s8(vcgtq_u32(*(v74 + 12), v53), v54), vcgtq_u32(*(&v74[1] + 12), v53))))
    {
      if (v42 >> 22 == 139)
      {
        v55 = v42;
      }

      else
      {
        v55 = ~v42;
      }

      if (v55 >> 22 != 139)
      {
        v74[0].i32[1] = v42 | 0x80000000;
      }

      if ((~v45 & 3) != 0)
      {
        v56 = v45;
      }

      else
      {
        v56 = ~v45;
      }

      if ((v56 & 0x40000000) != 0)
      {
        v56 ^= 0x3FFFFFC0u;
      }

      if ((v56 & 3) != 0 || ((v57 = (v56 >> 13) & 0x1FFFF, v58 = (v56 >> 8) & 7, v57 >> 6 <= 0x626) ? (v59 = v57 + 4 - 5 * ((858993460 * (v57 + 4)) >> 32) + 1 == v58) : (v59 = 0), v59 ? (v60 = v57 == v40) : (v60 = 0), !v60))
      {
        v74[0].i32[2] = v45 | 0x80000000;
      }

      (*(**(*(this + 49) + 48) + 32))(*(*(this + 49) + 48), &v71);
      if (HIBYTE(v72) <= 3u)
      {
        v65[0] = this + 424;
        v65[1] = 0;
        v66 = 0;
        v69 = 0;
        v68 = 0;
        v67 = vdup_n_s32(0x8C0u);
        v70 = 0;
        BlueFin::GlBitBuffer::Position(v65, 744 * HIBYTE(v72) - 744);
        v61 = 248;
        do
        {
          BlueFin::GlBitBuffer::PutU(v65, 8u, 3u);
          --v61;
        }

        while (v61);
        v62 = this + 32 * HIBYTE(v72);
        *&v63 = 0xF0F0F0F0F0F0F0F0;
        *(&v63 + 1) = 0xF0F0F0F0F0F0F0F0;
        *(v62 + 42) = v63;
        *(v62 + 43) = v63;
      }
    }
  }

  *(v9 + 9) = 0;
  *(v9 + 3) = *(v9 + 5);
  *(v9 + 40) = 0;
  return 1;
}

uint64_t BlueFin::GlPePlatfStat::SetOscDrift(uint64_t this, int a2, int a3, float a4, float a5)
{
  if (a2 == 10)
  {
    v5 = *(this + 240);
    if (v5 == 2)
    {
      if (a3)
      {
        return this;
      }

      v6 = 2;
    }

    else
    {
      if (a3)
      {
        v6 = 1;
      }

      else
      {
        v6 = 2;
      }

      *(this + 240) = v6;
    }

    v11 = (1.0 - ((a4 - a5) / (a4 + a5))) * 100.0;
    if (v11 >= 0.0)
    {
      if (v11 <= 100.0)
      {
        v12 = (v11 + 0.5);
        if (v11 <= 0.0)
        {
          LOBYTE(v12) = 0;
        }
      }

      else
      {
        LOBYTE(v12) = 100;
      }
    }

    else
    {
      LOBYTE(v12) = 0;
    }

    *(this + 249) = v12;
  }

  else if (a2 == 1)
  {
    v5 = *(this + 244);
    if (v5 == 2)
    {
      if (a3)
      {
        return this;
      }

      v6 = 2;
    }

    else
    {
      if (a3)
      {
        v6 = 1;
      }

      else
      {
        v6 = 2;
      }

      *(this + 244) = v6;
    }

    v9 = (1.0 - ((a4 - a5) / (a4 + a5))) * 100.0;
    if (v9 >= 0.0)
    {
      if (v9 <= 100.0)
      {
        v10 = (v9 + 0.5);
        if (v9 <= 0.0)
        {
          LOBYTE(v10) = 0;
        }
      }

      else
      {
        LOBYTE(v10) = 100;
      }
    }

    else
    {
      LOBYTE(v10) = 0;
    }

    *(this + 250) = v10;
  }

  else
  {
    if (a2)
    {
      return this;
    }

    v5 = *(this + 236);
    if (a3)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    *(this + 236) = v6;
    v7 = (1.0 - ((a4 - a5) / (a4 + a5))) * 100.0;
    if (v7 >= 0.0)
    {
      if (v7 <= 100.0)
      {
        v8 = (v7 + 0.5);
        if (v7 <= 0.0)
        {
          LOBYTE(v8) = 0;
        }
      }

      else
      {
        LOBYTE(v8) = 100;
      }
    }

    else
    {
      LOBYTE(v8) = 0;
    }

    *(this + 248) = v8;
  }

  if (v5 != v6)
  {
    *(this + 232) = 1;
  }

  return this;
}

uint64_t BlueFin::GlPeNavGnssMeasMgr::checkMeasEphValid(uint64_t *a1, unsigned __int8 *a2, unsigned int a3, void *a4, int *a5, int8x16_t a6, int8x16_t a7)
{
  v12 = a1[2];
  v25 = 7;
  v26[0] = 0;
  BlueFin::GlPeSvIdConverter::SvId2Gnss((v12 + 119744), a2, &v25, a6, a7);
  if (v25 > 6 || v26[0] - 1 >= 0x3F)
  {
    result = 0;
    v15 = 1;
    goto LABEL_8;
  }

  if (!BlueFin::GlPeSvHealthHelper::IsUsable(a1[7] + 32, &v25))
  {
    result = 0;
    v15 = 6;
    goto LABEL_8;
  }

  ValidEphCacheSrc = BlueFin::GlPeAsstMgr::GetValidEphCacheSrc(a1[2], &v25);
  if (ValidEphCacheSrc == -1)
  {
    result = BlueFin::GlPeGnssEphemerisMgr::GetMgr((a1[2] + 384), v25);
    if (!result || (v16 = result, (result = (*(*result + 112))(result, v26, 0)) == 0))
    {
LABEL_24:
      v15 = 2;
      goto LABEL_8;
    }

    v18 = result;
    v17.n128_f64[0] = a3;
    if (a3 <= 0xFF9222FE)
    {
      v17.n128_f64[0] = a3;
    }

    v19 = (*(*v16 + 64))(v16, v26, 1, v17);
    if (v19 == 6)
    {
      *a5 = 4;
      v23 = a1[3];
      v24 = *a2;
      BlueFin::GlPeLtoMgr::IdentifyBadLtoSvId(v23, &v24, 0, v20, v21);
      return 0;
    }

    if (v19 != 1)
    {
      if (v19)
      {
        result = 0;
      }

      else
      {
        v22 = (*(*v18 + 152))(v18);
        result = 1;
        if (v22 == 3)
        {
          *(*a4 + ((*a2 >> 3) & 0x1C)) |= 1 << *a2;
        }
      }

      goto LABEL_24;
    }

    result = 0;
    v15 = 3;
LABEL_8:
    *a5 = v15;
    return result;
  }

  if (ValidEphCacheSrc != 2)
  {
    return 1;
  }

  result = 1;
  *(*a4 + ((*a2 >> 3) & 0x1C)) |= 1 << *a2;
  return result;
}

uint64_t BlueFin::GlPeAsstMgr::GetValidEphCacheSrc(uint64_t a1, int *a2)
{
  if (BlueFin::GlGnssSet::Has(a1 + 120416, a2))
  {
    return 2;
  }

  if (BlueFin::GlGnssSet::Has(a1 + 120032, a2))
  {
    return 0;
  }

  if (BlueFin::GlGnssSet::Has(a1 + 120224, a2))
  {
    return 1;
  }

  if (BlueFin::GlGnssSet::Has(a1 + 120608, a2))
  {
    return 3;
  }

  return 0xFFFFFFFFLL;
}

uint64_t BlueFin::GlPeComputeZRH::GetSatPos(uint64_t a1, unsigned __int8 *a2, unsigned int a3, uint64_t a4, float64x2_t *a5, int a6, int a7, int a8, __n128 a9, uint64_t a10)
{
  v16 = a3;
  if (a3 <= 0xFF9222FE)
  {
    v16 = a3;
  }

  if (a10 || (*(a4 + 152) & 1) != 0 || fabs(*(a4 + 56)) > 0.5)
  {
    v17 = v16 + *(a4 + 56) * -1000.0;
    if (!a6)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v17 = v16 - **(a1 + 4336);
    if (!a6)
    {
      goto LABEL_12;
    }
  }

  if (a8 & 1) == 0 && (a7 & 1) == 0 && (BlueFin::GlPeSatPosCache::GetSatPosFromCache(a1 + 24, a2, a5, v17))
  {
    return 0;
  }

LABEL_12:
  if (a8)
  {
    v19 = 32;
    goto LABEL_18;
  }

  a9.n128_f64[0] = v17;
  result = BlueFin::GlPeComputeZRH::GetSatPosWithFullPr(a1, a2, a4, a7, 1, a5, a10, a9);
  if (result)
  {
    if (*(a1 + 4344))
    {
      v19 = 2;
    }

    else
    {
      v19 = 66;
    }

LABEL_18:
    v26 = v19;
    v20 = *(a1 + 4288);
    v28 = 0.0;
    BlueFin::GlPeTimeManager::GetAvgFlightTimeMs(v20, a2, &v28, &v27);
    v21 = v28 * 0.001;
    v28 = v28 * 0.001;
    v22 = 1;
    while (1)
    {
      v23 = v22;
      if (!(*(**(a1 + 4264) + 32))(*(a1 + 4264), a2, &v28, &v26, a5, v17 + v21 * -1000.0))
      {
        break;
      }

      v22 = 0;
      v24 = a5[1].f64[0] - *(a4 + 40);
      v25 = vsubq_f64(*a5, *(a4 + 24));
      v21 = sqrt(vaddvq_f64(vmulq_f64(v25, v25)) + v24 * v24) / 299792458.0;
      v28 = v21;
      if ((v23 & 1) == 0)
      {
        result = 0;
        goto LABEL_23;
      }
    }

    result = 6;
  }

LABEL_23:
  a5[4].f64[1] = v17;
  return result;
}

uint64_t BlueFin::GlPeComputeZRH::GetSatPosWithFullPr(uint64_t a1, _BYTE *a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, __n128 a8)
{
  v9 = a8.n128_f64[0];
  if (!a7 && (*(a3 + 152) & 1) != 0)
  {
    return 4;
  }

  v13 = 0.0;
  if (a7 && *(a7 + 48) == 1 && (v14 = *(a7 + 24), v14 != -1))
  {
    v13 = *a7;
    v15 = 1;
  }

  else
  {
    v15 = 0;
    v14 = 0;
    v16 = BlueFin::GlSignalId::s_aucGnss2numSignals[BlueFin::GlSvId::s_aucSvId2gnss[*a2]];
    if (BlueFin::GlSignalId::s_aucGnss2numSignals[BlueFin::GlSvId::s_aucSvId2gnss[*a2]])
    {
      v30 = a5;
      v31 = a4;
      v32 = a6;
      v17 = -v16;
      v18 = &BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v16 - v16 - 7];
      for (i = v16 - 1; ; --i)
      {
        LOBYTE(v34) = *a2;
        HIDWORD(v34) = i;
        v20 = 575;
        v35 = 575;
        if (LOBYTE(v34) - 189 >= 0xFFFFFF44)
        {
          v21 = BlueFin::GlSvId::s_aucSvId2gnss[LOBYTE(v34)];
          if (v18[v21] == 255)
          {
            HIDWORD(v34) = -1;
            v20 = 575;
          }

          else
          {
            v35 = BlueFin::GlSignalId::s_ausGnss2signalId[v21] + LOBYTE(v34) - BlueFin::GlSvId::s_aucGnss2minSvId[v21] + BlueFin::GlSvId::s_aucGnss2numSvId[v21] * i;
            v20 = v35;
          }
        }

        v22 = *(a1 + 4320);
        if ((*(*(v22 + 8) + 4 * (v20 >> 5)) >> (v20 & 0x1F)))
        {
          PeMeas = BlueFin::GlPeMsmtMgr::GetPeMeas(v22, &v34, 0);
          if (*(PeMeas + 22) != -1)
          {
            v24 = PeMeas;
            if (BlueFin::stPeSigMeasKF::IsPRValid(PeMeas))
            {
              break;
            }
          }
        }

        v18 -= 7;
        if (__CFADD__(v17++, 1))
        {
          return 5;
        }
      }

      v14 = *(v24 + 22);
      v13 = *(v24 + 3);
      a6 = v32;
      a5 = v30;
      a4 = v31;
      goto LABEL_23;
    }
  }

  if ((v15 & 1) == 0)
  {
    return 5;
  }

LABEL_23:
  v26 = v13 + v14 * 299792.458;
  v27 = (v26 - *(a3 + 48)) / 299792458.0;
  a8.n128_f64[0] = v9 - v26 / 299792.458;
  if (!a5)
  {
    v27 = 0.0;
  }

  v28 = *(a1 + 4344);
  v34 = v27;
  if (v28)
  {
    v29 = 2;
  }

  else
  {
    v29 = 66;
  }

  v33 = v29;
  if (a4 && (*(*(a1 + 4272) + 120021) & 1) == 0)
  {
    v33 = v29 | 0x80;
  }

  if ((*(**(a1 + 4264) + 32))(*(a1 + 4264), a2, &v34, &v33, a6, a8))
  {
    return 0;
  }

  else
  {
    return 6;
  }
}

uint64_t BlueFin::GlPeSatPosCache::GetSatPosFromCache(uint64_t a1, unsigned __int8 *a2, uint64_t a3, double a4)
{
  v4 = *a2;
  if (((*(*(a1 + 24) + ((v4 >> 3) & 0x1C)) >> (v4 & 0x1F)) & 1) == 0)
  {
    return 0;
  }

  v5 = (**(a1 + 264) + 104 * *(v4 + a1 + 71));
  if (*v5 != v4)
  {
    return 0;
  }

  v6 = *(v5 + 10);
  if (vabdd_f64(v6, a4) >= 0.001)
  {
    return 0;
  }

  *a3 = *(v5 + 1);
  *(a3 + 8) = *(v5 + 2);
  *(a3 + 16) = *(v5 + 24);
  *(a3 + 32) = *(v5 + 5);
  *(a3 + 40) = *(v5 + 3);
  *(a3 + 56) = *(v5 + 8);
  *(a3 + 64) = *(v5 + 18);
  *(a3 + 72) = v6;
  return 1;
}

double BlueFin::GlPeAsstMgr::GetUraM(uint64_t a1, unsigned __int8 *a2, int8x16_t a3, int8x16_t a4)
{
  v9 = 7;
  v10 = 0;
  BlueFin::GlPeSvIdConverter::SvId2Gnss((a1 + 119744), a2, &v9, a3, a4);
  if (v10 - 1 > 0x3E)
  {
    return 1.58456366e29;
  }

  v8 = v10;
  Mgr = BlueFin::GlPeGnssEphemerisMgr::GetMgr((a1 + 384), v9);
  if (!Mgr)
  {
    return 1.58456366e29;
  }

  v6 = (*(*Mgr + 112))(Mgr, &v8, 1);
  if (!v6)
  {
    return 1.58456366e29;
  }

  (*(*v6 + 96))(v6);
  return result;
}

float BlueFin::GlPeSatPosCache::AddToSatPosCache(BlueFin::GlSetBase *this, unsigned __int8 *a2, uint64_t a3, float64x2_t *a4, float a5)
{
  v8 = this + 24;
  v9 = *(this + 3);
  v10 = *(this + 33);
  v11 = *(v10 + 2);
  v12 = *a2;
  v13 = *(v9 + 4 * (v12 >> 5));
  if (((v13 >> (v12 & 0x1F)) & 1) != 0 && *v10)
  {
    v14 = &(*v10)[104 * *(this + v12 + 71)];
  }

  else
  {
    v25 = a2;
    v26 = a4;
    if (v11 <= BlueFin::GlSetBase::Cnt(this))
    {
      goto LABEL_11;
    }

    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = *this;
    while (((*(v18 + 4 * (v15 >> 21)) >> (v17 & 0x1F)) & 1) != 0)
    {
      ++v17;
      v16 -= 104;
      v15 += 0x10000;
      if (v11 == v17)
      {
        goto LABEL_11;
      }
    }

    *(v9 + 4 * (v12 >> 5)) = (1 << (v12 & 0x1F)) | v13;
    *(this + v12 + 71) = v17;
    *(v18 + 4 * (v15 >> 21)) |= 1 << (v17 & 0x1F);
    v10 = *(this + 33);
    if (*v10)
    {
      v14 = &(*v10)[-v16];
      a2 = v25;
      a4 = v26;
    }

    else
    {
LABEL_11:
      v14 = *v10;
      if (v11 < 2)
      {
        v19 = 0;
      }

      else
      {
        v19 = 0;
        v20 = v14 + 104;
        for (i = 1; i != v11; ++i)
        {
          if (*(v20 + 10) < *(v14 + 10))
          {
            v14 = v20;
            v19 = i;
          }

          v20 += 104;
        }
      }

      BlueFin::GlSetBase::Remove(v8, *v14);
      a2 = v25;
      a4 = v26;
      v22 = *v25;
      *(*(this + 3) + ((v22 >> 3) & 0x1C)) |= 1 << v22;
      *(this + v22 + 71) = v19;
    }
  }

  *v14 = *a2;
  *(v14 + 1) = *a3;
  *(v14 + 2) = *(a3 + 8);
  *(v14 + 24) = *(a3 + 16);
  *(v14 + 5) = *(a3 + 32);
  *(v14 + 3) = *(a3 + 40);
  *(v14 + 8) = *(a3 + 56);
  *(v14 + 18) = *(a3 + 64);
  *(v14 + 10) = *(a3 + 72);
  *(v14 + 22) = a5;
  *(v14 + 92) = vneg_f32(vcvt_f32_f64(*a4));
  v23 = a4[1].f64[0];
  result = -v23;
  *(v14 + 25) = result;
  return result;
}

BOOL BlueFin::GlPeElAzCache::Add(uint64_t a1, unsigned __int8 *a2, float a3, float a4)
{
  v4 = *a2;
  v5 = *(a1 + 1216);
  v6 = *(v5 + 4 * (v4 >> 5));
  if (((1 << (v4 & 0x1F)) & v6) == 0)
  {
    v7 = *(a1 + 1264);
    v8 = a1 + 12 * v7;
    *v8 = v4;
    *(v8 + 4) = a3;
    *(v8 + 8) = a4;
    *(v5 + 4 * (v4 >> 5)) = (1 << (v4 & 0x1F)) | v6;
    *(a1 + 1264) = v7 + 1;
    if ((v7 + 1) >= 0x65u)
    {
      DeviceFaultNotify("glpe_computezrhif.cpp", 39, "Add", "m_ucNbSats < MAX_PE_SVS_MEASURED");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_computezrhif.cpp", 39, "m_ucNbSats < MAX_PE_SVS_MEASURED");
    }
  }

  return ((1 << (v4 & 0x1F)) & v6) == 0;
}

void BlueFin::GlPeComputeZRH::UpdateAtmosDelays(uint64_t a1, unsigned __int8 *a2, double *a3, uint64_t a4, int8x16_t a5, double a6, float a7, double a8, int8x16_t a9)
{
  v10 = *&a6;
  v13 = *a5.i64;
  v15 = *(a1 + 1568);
  v16 = *a2;
  if (!v15)
  {
    goto LABEL_7;
  }

  v17 = 0;
  v18 = a1 + 1572;
  do
  {
    if (*(v18 + 8) == v16)
    {
      v21 = *(v18 + 4);
      v22 = v21 > 0xA;
      v23 = (1 << v21) & 0x580;
      if (v22 || v23 == 0)
      {
        goto LABEL_9;
      }

      a5.i32[0] = *v18;
      if (v13 - a5.u64[0] > 300000.0 && *(a1 + 8) <= 1u)
      {
        goto LABEL_9;
      }

      goto LABEL_56;
    }

    ++v17;
    v18 += 24;
  }

  while (v15 > v17);
  if (v15 == 112)
  {
    v15 = BlueFin::GlPeCachedAtmosDelays::Oldest((a1 + 1568), *a5.i64, a6);
    goto LABEL_8;
  }

LABEL_7:
  *(a1 + 1568) = v15 + 1;
LABEL_8:
  v18 = a1 + 24 * v15 + 1572;
LABEL_9:
  *(v18 + 8) = v16;
  v19 = v13;
  *(v18 + 20) = 0;
  *v18 = v13;
  *a5.i64 = v13;
  if (BlueFin::GlPeComputeZRH::CalcIonoDelay(a1, a3, v18, a5, v10, a7, a8, a9))
  {
    if (*v18)
    {
      v20 = (*(v18 + 20) * (v19 - *v18)) * 0.001;
    }

    else
    {
      v20 = 0.0;
    }

    v25 = *(v18 + 4);
    if (v25)
    {
      v26 = (v20 + *(v18 + 16));
    }

    else
    {
      v26 = 0.0;
    }

    v27 = *(a4 + 16) + *(a4 + 40) * 300.0;
    v49 = vmlaq_f64(*a4, vdupq_n_s64(0x4072C00000000000uLL), *(a4 + 24));
    v50 = v27;
    v48 = 0;
    BlueFin::lla2ecef(a3, v47);
    v28 = (*(**(a1 + 4264) + 80))(*(a1 + 4264), &v49, v47, a3, 0, 0, &v48 + 4, &v48);
    *v28.i64 = v13 + 300000.0;
    BlueFin::GlPeComputeZRH::CalcIonoDelay(a1, a3, v18, v28, *(&v48 + 1), *&v48, v29, v30);
    if (*v18)
    {
      v31 = (*(v18 + 20) * (v19 - *v18)) * 0.001;
    }

    else
    {
      v31 = 0.0;
    }

    v32 = *(v18 + 4);
    if (v32)
    {
      v33 = (v31 + *(v18 + 16));
      if (v25 == 9)
      {
        goto LABEL_28;
      }

      if (v32 == 9)
      {
        goto LABEL_53;
      }

      if (v25 == 7)
      {
LABEL_35:
        v34 = 7;
        goto LABEL_52;
      }

      if (v32 == 7)
      {
        goto LABEL_53;
      }

      if (v25 == 8)
      {
        goto LABEL_45;
      }

      if (v32 == 8)
      {
        goto LABEL_53;
      }

      if (v25 == 10)
      {
LABEL_51:
        v34 = 10;
LABEL_52:
        *(v18 + 4) = v34;
        v38 = v26;
        *(v18 + 16) = v38;
LABEL_53:
        if (v32 == v25)
        {
          v39 = (v33 - v26) / 300.0;
          *(v18 + 20) = v39;
          *v18 = v19;
        }

        ++*(a1 + 8);
        goto LABEL_56;
      }

      if (v32 == 10)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v33 = 0.0;
      if (v25 > 8)
      {
        if (v25 == 10)
        {
          goto LABEL_51;
        }

        if (v25 == 9)
        {
LABEL_28:
          v34 = 9;
          goto LABEL_52;
        }
      }

      else
      {
        if (v25 == 7)
        {
          goto LABEL_35;
        }

        if (v25 == 8)
        {
LABEL_45:
          v34 = 8;
          goto LABEL_52;
        }
      }
    }

    if (v25 <= 3)
    {
      if (v25 == 2)
      {
        v43 = v26;
        *(v18 + 16) = v43;
        v36 = 2;
        goto LABEL_61;
      }

      if (v25 == 3)
      {
        v37 = v26;
        *(v18 + 16) = v37;
        v36 = 3;
        goto LABEL_61;
      }
    }

    else
    {
      switch(v25)
      {
        case 4:
          v41 = v26;
          *(v18 + 16) = v41;
          v36 = 4;
          goto LABEL_61;
        case 5:
          v42 = v26;
          *(v18 + 16) = v42;
          v36 = 5;
          goto LABEL_61;
        case 6:
          v35 = v26;
          *(v18 + 16) = v35;
          v36 = 6;
LABEL_61:
          *(v18 + 4) = v36;
          goto LABEL_53;
      }
    }

    v44 = "0";
    DeviceFaultNotify("glpe_atmosdelays.h", 193, "SetIonoDelay", "0");
    v45 = "glpe_atmosdelays.h";
    v46 = 193;
LABEL_65:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v45, v46, v44);
  }

LABEL_56:
  BlueFin::GlPeUnbTropoModel::getTropoDelayInMeters((a1 + 4348), a7);
  *(v18 + 12) = v40;
  *(v18 + 9) = 1;
  if (!*(v18 + 4))
  {
    v44 = "potCacheSlot->otAtmosDelays.HaveTropoDelay() && potCacheSlot->otAtmosDelays.HaveIonoDelay()";
    DeviceFaultNotify("glpe_computezrh.cpp", 2092, "UpdateAtmosDelays", "potCacheSlot->otAtmosDelays.HaveTropoDelay() && potCacheSlot->otAtmosDelays.HaveIonoDelay()");
    v45 = "glpe_computezrh.cpp";
    v46 = 2092;
    goto LABEL_65;
  }
}

uint64_t BlueFin::GlPeBitMon::CheckBitValidity(uint64_t result, unsigned __int8 *a2, int a3, BOOL *a4, BOOL *a5)
{
  v5 = 0;
  v6 = *(result + 288);
  v7 = *a2;
  while (1)
  {
    v8 = v6 + v5;
    if (*(v6 + v5 + 12) == v7)
    {
      break;
    }

    v5 += 16;
    if (v5 == 288)
    {
      v8 = 0;
      break;
    }
  }

  v9 = *(a2 + 3);
  *a4 = (v9 & 8) != 0;
  *a5 = (v9 & 4) != 0;
  v10 = *a4;
  if (*a4 || (v9 & 4) != 0)
  {
    if (!v8)
    {
      v14 = v6 + 16;
      v15 = 17;
      v8 = v6;
      do
      {
        if (*(v8 + 8) > *(v14 + 8))
        {
          v8 = v14;
        }

        v14 += 16;
        --v15;
      }

      while (v15);
    }

    *(v8 + 12) = v7;
    *(v8 + 8) = a3;
    *v8 = *(a2 + 8);
    *(v8 + 13) = v10;
    *(v8 + 14) = *a5;
  }

  else if (v8)
  {
    v11 = a3 - *(v8 + 8);
    if (v11 <= 179999)
    {
      v12 = (*v8 - *(a2 + 8)) * 1000.0;
      if (v12 <= 0.0)
      {
        v13 = 0.0;
        if (v12 < 0.0)
        {
          v13 = ceil(v12 + -0.5);
        }
      }

      else
      {
        v13 = floor(v12 + 0.5);
      }

      v16 = v12 - v13;
      if (fabsf((*(a2 + 26) * v11) + v16) < 0.25)
      {
        *a4 = *(v8 + 13);
        *a5 = *(v8 + 14);
      }
    }
  }

  return result;
}

uint64_t BlueFin::GlPeNavUtil::ComputeRrateResidVec()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v41 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v0;
  v14 = v13;
  v72 = *MEMORY[0x29EDCA608];
  v15 = v13 + 2;
  v13[1] = 0x6400000000;
  bzero(v13 + 2, 0x328uLL);
  v16 = 0;
  *v14 = v15;
  do
  {
    v17 = &v68[v16 + 808];
    *v17 = 0;
    *(v17 + 1) = -1;
    *(v17 + 4) = 575;
    *(v17 + 2) = 0;
    v16 += 24;
  }

  while (v16 != 2184);
  v67[0] = v68;
  v67[1] = 0x6400000000;
  bzero(v68, 0x328uLL);
  v65[0] = v66;
  v65[1] = 0x6400000000;
  bzero(v66, 0x328uLL);
  v61[0] = v62;
  v61[1] = 0x6400000000;
  bzero(v62, 0x328uLL);
  v53[0] = v61;
  v53[1] = v5;
  v53[2] = v11;
  v54 = v41;
  v55 = 0x4C100000002;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0x4008000000000000;
  v48[0] = v67;
  v48[1] = v65;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0;
  *&v62[8] = *v2;
  v63 = *(v2 + 16);
  v64 = v9;
  v45[32] = 0;
  v46 = -1;
  v47 = 575;
  LOBYTE(v70) = *(v7 + 8);
  memcpy(&v70 + 8, *v7, 4 * v70);
  WORD1(v70) = 0;
  BYTE1(v70) = 0;
  DWORD1(v70) = DWORD2(v70);
  result = BlueFin::GlSetIterator::operator++(&v70);
  if (BYTE1(v70) != v70)
  {
    v19 = 0;
    do
    {
      if (WORD1(v70) >= 0x23FuLL)
      {
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
      }

      v20 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * WORD1(v70);
      v21 = *v20;
      v22 = v20[1];
      v42[0] = *v20;
      v23 = SWORD1(v70);
      v43 = v22;
      v44 = WORD1(v70);
      if (BlueFin::GlPeNavUtil::PackSkfMeas_RR_SignalId(v12, v45, v42, 0) && !(*(**(v12 + 16) + 16))(*(v12 + 16), v53, v48, v45, &BlueFin::GlSet128::BIT0))
      {
        v24 = &v68[24 * ++v19 + 808];
        *(v24 - 1) = *(v67[0] + 8) - *(v65[0] + 8);
        *(v24 - 24) = v21;
        *(v24 - 5) = v22;
        *(v24 - 8) = v23;
      }

      else
      {
        BlueFin::GlSetBase::Remove(v7, v23);
      }

      result = BlueFin::GlSetIterator::operator++(&v70);
    }

    while (BYTE1(v70) != v70);
    if (v19 <= 0x10u)
    {
      v35 = v19;
      if (!v19)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v25 = 1;
      do
      {
        v26 = &v68[24 * v25 + 808];
        v27 = *&v69[3 * v25 - 3];
        v28 = -v27;
        if (v27 >= 0.0)
        {
          v28 = *&v69[3 * v25 - 3];
        }

        v29 = v26[2];
        if (v29 < 0.0)
        {
          v29 = -v29;
        }

        if (v28 > v29)
        {
          v30 = v25 - 1;
          if (v25 != 1)
          {
            v31 = 0;
            do
            {
              v32 = (v30 + v31) / 2;
              v33 = *&v69[3 * v32];
              if (v33 < 0.0)
              {
                v33 = -v33;
              }

              if (v33 <= v29)
              {
                v31 = v32 + 1;
              }

              else
              {
                v30 = (v30 + v31) / 2;
              }
            }

            while (v31 != v30);
          }

          v70 = *v26;
          v71 = *(v26 + 2);
          v34 = &v68[24 * v30 + 808];
          memmove(&v68[24 * v30 + 832], v34, 24 * (v25 - v30));
          *v34 = v70;
          v34[2] = v71;
        }

        ++v25;
      }

      while (v25 != v19);
      bzero(*v7, ((4 * *(v7 + 8) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
      v35 = 16;
    }

    v36 = v35;
    v37 = v69;
    v38 = 8;
    do
    {
      if (v19 >= 0x11u)
      {
        *(*v7 + 4 * (*(v37 - 4) >> 5)) |= 1 << *(v37 - 4);
      }

      result = BlueFin::SKFVector::AddLen(v14);
      v39 = *v37;
      v37 += 3;
      *(*v14 + v38) = v39;
      v38 += 8;
      --v36;
    }

    while (v36);
  }

LABEL_35:
  v40 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL BlueFin::GlPeNavUtil::PackSkfMeas_RR_SignalId(uint64_t a1, uint64_t a2, BlueFin::GlSignalId *a3, int a4)
{
  v5 = *(a1 + 8);
  v6 = (1 << (*(a3 + 4) & 0x1F)) & *(*(v5 + 8) + 4 * (*(a3 + 4) >> 5));
  if (v6)
  {
    v10 = -7200001;
    PeMeas = BlueFin::GlPeMsmtMgr::GetPeMeas(v5, a3, 0);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 24) = -1;
    *(a2 + 49) = 0;
    *(a2 + 32) = 0;
    *(a2 + 36) = -1;
    *(a2 + 40) = 575;
    *(a2 + 44) = 2;
    v12 = *(a1 + 8);
    v13 = *v12;
    *(a2 + 16) = *v12;
    if (v13 != -7200001)
    {
      v14 = v12[1];
      v15 = v13 - v14;
      if (v14 == -7200001)
      {
        v10 = -7200001;
      }

      else
      {
        v10 = v15;
      }
    }

    *(a2 + 20) = v10;
    if ((a2 + 32) != a3)
    {
      *(a2 + 32) = *a3;
      *(a2 + 36) = *(a3 + 1);
      *(a2 + 40) = *(a3 + 4);
    }

    if (*a3 - 139 >= 0x24 && (v16 = *(a3 + 1), (v16 - 1) >= 2))
    {
      if (v16 != 3 || (a4 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else if (!a4)
    {
      goto LABEL_16;
    }

    if (*(PeMeas + 72) < 0.000000016)
    {
      v17.f32[0] = -*(PeMeas + 68);
      v17.i32[1] = *(PeMeas + 72);
      *a2 = vmulq_f64(vcvtq_f64_f32(v17), vdupq_n_s64(0x41B1DE784A000000uLL));
      *(a2 + 50) = 1;
LABEL_17:
      *(a2 + 48) = 1;
      return v6 != 0;
    }

LABEL_16:
    v18.f32[0] = -*(PeMeas + 60);
    v18.i32[1] = *(PeMeas + 64);
    *a2 = vmulq_f64(vcvtq_f64_f32(v18), vdupq_n_s64(0x41B1DE784A000000uLL));
    goto LABEL_17;
  }

  return v6 != 0;
}

BOOL BlueFin::GlPeSatPosCache::GetLOSFromCache(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = (1 << (v3 & 0x1F)) & *(*(a1 + 24) + ((v3 >> 3) & 0x1C));
  if (v4)
  {
    v5 = **(a1 + 264) + 104 * *(v3 + a1 + 71);
    v6 = -*(v5 + 100);
    *(a3 + 128) = 0x300000001;
    *a3 = vcvtq_f64_f32(vneg_f32(*(v5 + 92)));
    *(a3 + 16) = v6;
  }

  return v4 != 0;
}

uint64_t BlueFin::SKFVector::AddLen(uint64_t this)
{
  v1 = *(this + 8);
  if (v1 >= *(this + 12))
  {
    DeviceFaultNotify("glpe_matrix.h", 443, "AddLen", "m_Len < m_MaxLen");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.h", 443, "m_Len < m_MaxLen");
  }

  *(this + 8) = v1 + 1;
  return this;
}

uint64_t BlueFin::GlPeMsmtMgr::ValidatePeMeas(BlueFin::GlSignalIdArray **this, const BlueFin::GlSignalId *a2)
{
  result = BlueFin::GlSignalIdArray::Get(this[2349], a2);
  if (result)
  {
    *(this[23] + (*(a2 + 4) >> 5)) |= 1 << *(a2 + 4);
  }

  return result;
}

__n128 BlueFin::GlPeMsmtMgr::SetPeMeas(uint64_t a1, __int128 *a2, char a3)
{
  v6 = BlueFin::GlSignalIdArray::Get(*(a1 + 18792), (a2 + 40));
  if (!v6 || ((*(*(a1 + 8) + 4 * (*(a2 + 24) >> 5)) >> (a2[3] & 0x1F)) & 1) == 0 && (a3 & 1) == 0)
  {
    DeviceFaultNotify("glpe_msmtmgr.cpp", 873, "SetPeMeas", "potMePeMeas != nullptr && (m_otValidMeasSignalIds.Has(rotPeMeas.oSignalid) || bAllowInvalidMeas)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_msmtmgr.cpp", 873, "potMePeMeas != nullptr && (m_otValidMeasSignalIds.Has(rotPeMeas.oSignalid) || bAllowInvalidMeas)");
  }

  v7 = *a2;
  v8 = a2[1];
  *(v6 + 176) = *(a2 + 4);
  *(v6 + 144) = v7;
  *(v6 + 160) = v8;
  if ((v6 + 144) != a2)
  {
    *(v6 + 184) = *(a2 + 40);
    *(v6 + 188) = *(a2 + 11);
    *(v6 + 192) = *(a2 + 24);
  }

  *(v6 + 196) = *(a2 + 52);
  result = *(a2 + 68);
  v10 = *(a2 + 84);
  v11 = *(a2 + 100);
  *(v6 + 258) = *(a2 + 114);
  *(v6 + 244) = v11;
  *(v6 + 228) = v10;
  *(v6 + 212) = result;
  return result;
}

__n128 BlueFin::GlPeMsmtMgr::SetMeMeas(uint64_t a1, uint64_t a2)
{
  v3 = BlueFin::GlSignalIdArray::Get(*(a1 + 18792), a2);
  if (!v3)
  {
    DeviceFaultNotify("glpe_msmtmgr.cpp", 820, "SetMeMeas", "potMePeMeas != nullptr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_msmtmgr.cpp", 820, "potMePeMeas != nullptr");
  }

  if (v3 != a2)
  {
    *v3 = *a2;
    *(v3 + 4) = *(a2 + 4);
    *(v3 + 8) = *(a2 + 8);
  }

  *(v3 + 12) = *(a2 + 12);
  v4 = *(a2 + 28);
  v5 = *(a2 + 44);
  v6 = *(a2 + 60);
  *(v3 + 76) = *(a2 + 76);
  *(v3 + 60) = v6;
  *(v3 + 44) = v5;
  *(v3 + 28) = v4;
  result = *(a2 + 92);
  v8 = *(a2 + 108);
  v9 = *(a2 + 124);
  *(v3 + 140) = *(a2 + 140);
  *(v3 + 124) = v9;
  *(v3 + 108) = v8;
  *(v3 + 92) = result;
  return result;
}

__n128 BlueFin::GlPeMsmtMgr::SetPeGridMeas(uint64_t a1, uint64_t a2)
{
  v3 = BlueFin::GlSignalIdArray::Get(*(a1 + 56328), a2);
  if (!v3)
  {
    DeviceFaultNotify("glpe_msmtmgr.cpp", 839, "SetPeGridMeas", "potGridMeas != nullptr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_msmtmgr.cpp", 839, "potGridMeas != nullptr");
  }

  if (v3 != a2)
  {
    *v3 = *a2;
    *(v3 + 4) = *(a2 + 4);
    *(v3 + 8) = *(a2 + 8);
  }

  v4 = *(a2 + 12);
  v5 = *(a2 + 28);
  *(v3 + 44) = *(a2 + 44);
  *(v3 + 28) = v5;
  *(v3 + 12) = v4;
  v6 = *(a2 + 60);
  v7 = *(a2 + 76);
  v8 = *(a2 + 92);
  *(v3 + 108) = *(a2 + 108);
  *(v3 + 92) = v8;
  *(v3 + 76) = v7;
  *(v3 + 60) = v6;
  v9 = *(a2 + 124);
  v10 = *(a2 + 140);
  v11 = *(a2 + 156);
  *(v3 + 168) = *(a2 + 168);
  *(v3 + 156) = v11;
  *(v3 + 140) = v10;
  *(v3 + 124) = v9;
  result = *(a2 + 184);
  *(v3 + 200) = *(a2 + 200);
  *(v3 + 184) = result;
  return result;
}

uint64_t BlueFin::GlPeMsmtMgr::AccessPeMeas(BlueFin::GlSignalIdArray **this, const BlueFin::GlSignalId *a2, char a3)
{
  v6 = BlueFin::GlSignalIdArray::Get(this[2349], a2);
  if (!v6 || ((*(this[1] + (*(a2 + 4) >> 5)) >> (*(a2 + 4) & 0x1F)) & 1) == 0 && (a3 & 1) == 0)
  {
    DeviceFaultNotify("glpe_msmtmgr.cpp", 864, "AccessPeMeas", "potMePeMeas != nullptr && (m_otValidMeasSignalIds.Has(rotSignalId) || bAllowInvalidMeas)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_msmtmgr.cpp", 864, "potMePeMeas != nullptr && (m_otValidMeasSignalIds.Has(rotSignalId) || bAllowInvalidMeas)");
  }

  return v6 + 144;
}

uint64_t BlueFin::GlSetBase::OperatorLeftShift(uint64_t this, BlueFin::GlSetBase *a2, unsigned int a3)
{
  if (a3 >= 0x20)
  {
    DeviceFaultNotify("glutl_set.cpp", 485, "OperatorLeftShift", "(iShiftBits >> 5) == 0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_set.cpp", 485, "(iShiftBits >> 5) == 0");
  }

  v3 = *this;
  v4 = *a2;
  if (*(this + 8) != 1)
  {
    v5 = (*(this + 8) - 1);
    do
    {
      v4[v5] = (v3[(v5 - 1)] >> (32 - a3)) & ~(-1 << a3) | (v3[v5] << a3);
      --v5;
    }

    while (v5);
  }

  *v4 = *v3 << a3;
  return this;
}

uint64_t BlueFin::GlSetBase::Highest(BlueFin::GlSetBase *this)
{
  v1 = *(this + 8);
  v2 = 32 * v1;
  do
  {
    if (v1 < 1)
    {
      return -1;
    }

    v3 = *(*this + 4 * v1 - 4);
    v2 -= 32;
    --v1;
  }

  while (!v3);
  v4 = 0;
  for (i = 4; i != -1; --i)
  {
    v6 = 1 << i;
    if (((~(-1 << v6) << v6) & v3) == 0)
    {
      LOWORD(v6) = 0;
    }

    v4 += v6;
    v3 >>= v6;
  }

  return (v4 + v2);
}

double BlueFin::GlPeTimeManager::GetSystemConversionS(uint64_t a1, unsigned int a2, double *a3)
{
  *a3 = 0.0;
  if (!*(a1 + 2576))
  {
    return 4294967300.0;
  }

  v5 = BlueFin::GlPeGnssTime::Gnss2TimeSystem(a2);
  *a3 = BlueFin::GlPeTimeManager::GetSystemConversionS(a1, v5);
  ConversionTable = BlueFin::GlPeGnssTime::GetConversionTable((a1 + 2608));
  v7 = 0.0;
  if (v5 - 1 <= 1)
  {
    LOBYTE(v7) = *(a1 + 2589);
    v7 = *&v7;
  }

  return *(ConversionTable + 4 * v5 + 48) + v7 * 1000000.0;
}

double BlueFin::GlPeComputeZRH::GetTimeSystemConversionM(uint64_t a1, unsigned int a2)
{
  v10 = 0.0;
  BlueFin::GlPeTimeManager::GetSystemConversionS(*(a1 + 4288), a2, &v10);
  v4 = v10 / 0.001;
  if (v10 / 0.001 <= 0.0)
  {
    v5 = 0.0;
    if (v10 / 0.001 < 0.0)
    {
      v5 = ceil(v4 + -0.5);
    }
  }

  else
  {
    v5 = floor(v4 + 0.5);
  }

  v6 = v10 + v5 * -0.001;
  if (a2 == 3)
  {
    v7 = *(a1 + 4280);
    if (*(v7 + 920) == 1)
    {
      v6 = *(v7 + 996) * -0.000000001;
      v8 = *(a1 + 4288);
      if (*(v8 + 2616) == 1 && *(v8 + 344) == 1)
      {
        v6 = v6 - *(v8 + 352);
      }
    }
  }

  return v6 * 299792458.0;
}

uint64_t BlueFin::GlPeComputeZRHUtil::resolveIntegers(BlueFin::GlSetBase *a1, unsigned int a2, unsigned int a3, unsigned int a4, void *a5, uint64_t a6)
{
  v6 = a6 + 56 * a2;
  if (*(v6 + 32) - 189 < 0xFFFFFF44 || *(v6 + 44))
  {
    return 0xFFFFFFFFLL;
  }

  if ((BlueFin::GlSetBase::Cnt(a1) & 0xFE) == 0)
  {
    goto LABEL_16;
  }

  v22 = *(a1 + 8);
  memcpy(v26, *a1, 4 * v22);
  v24 = 0;
  v23 = 0;
  v25 = v26[0];
  BlueFin::GlSetIterator::operator++(&v22);
  if (v23 == v22)
  {
    goto LABEL_16;
  }

  v14 = 0;
  while (1)
  {
    ++v14;
    if (!*(a6 + 56 * v24 + 44))
    {
      break;
    }

    BlueFin::GlSetIterator::operator++(&v22);
    if (v23 == v22)
    {
      goto LABEL_16;
    }
  }

  if (v24 == 255 || v24 == a2)
  {
LABEL_16:
    v21 = (*(*a5 + 8 * a4) - *v6) / 299792.458;
  }

  else
  {
    v21 = (*(a6 + 56 * v24) - *v6 + *(*a5 + 8 * a4) - *(*a5 + 8 * v14)) / 299792.458 + *(a6 + 56 * v24 + 24);
  }

  if (v21 <= 0.0)
  {
    if (v21 >= 0.0)
    {
      result = 0;
      goto LABEL_23;
    }

    v16 = -0.5;
  }

  else
  {
    v16 = 0.5;
  }

  result = (v21 + v16);
LABEL_23:
  if (a3 >= 2)
  {
    v17 = *(v6 + 28);
    v18 = (v21 - v17) / a3;
    if (v18 <= 0.0)
    {
      if (v18 >= 0.0)
      {
        v20 = 0;
        return v17 + v20 * a3;
      }

      v19 = -0.5;
    }

    else
    {
      v19 = 0.5;
    }

    v20 = (v18 + v19);
    return v17 + v20 * a3;
  }

  return result;
}

uint64_t BlueFin::GlPeComputeZRHUtil::computeBitResolution(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = *a1;
  v3 = BlueFin::GlImplGnss::m_aucEnabledGnssTable[BlueFin::GlSvId::s_aucSvId2gnss[*a1]];
  if (BlueFin::GlImplGnss::m_aucEnabledGnssTable[BlueFin::GlSvId::s_aucSvId2gnss[*a1]])
  {
    v4 = v3 == 3;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 20;
  }

  if (v3 == 8)
  {
    DeviceFaultNotify("glpe_computezrhif.cpp", 188, "computeBitResolution", "eImplGnss != IMPL_GNSS_INVALID");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_computezrhif.cpp", 188, "eImplGnss != IMPL_GNSS_INVALID");
  }

  if ((v2 - 81) < 0x35)
  {
    return 20;
  }

  switch(v3)
  {
    case 1:
      return 2;
    case 6:
      return 4;
    case 2:
      return 10;
  }

  result = 1;
  v6 = v2 - 76;
  if (v6 <= 0x3E && ((1 << v6) & 0x7C0000000000001FLL) != 0)
  {
    return 2;
  }

  return result;
}

uint64_t (*(*(*BlueFin::GlMeSrdAcqMgrSm::assisted_2000(uint64_t a1, unsigned __int8 *a2))(BlueFin::GlMeSrdAcqMgrSm *this, unsigned __int8 *a2))(BlueFin::GlMeSrdAcqMgrSm **this, unsigned __int8 *a2))()
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

  if ((*(**(a1 + 64) + 1200))(*(a1 + 64)))
  {
    v4 = 88;
  }

  else
  {
    v4 = 84;
  }

  v5.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 10128, 5, 27, 0x33u, 0x3Du, 0xFAu, 0x2Fu, v4, 0x55u, 1);
  if ((*(**(a1 + 64) + 1200))(v5))
  {
    v6 = 250;
  }

  else
  {
    v6 = 84;
  }

  v7 = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 10608, 4, 26, 0x33u, 0x3Du, 0xFAu, 0xFAu, v6, 0xFAu, 1);
  v8 = (*(**(a1 + 80) + 40))(*(a1 + 80), v7);
  v9 = **(a1 + 64);
  if (v8)
  {
    if ((*(v9 + 1200))())
    {
      v10 = 89;
    }

    else
    {
      v10 = 84;
    }

    v11.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12360, 3, 32, 0x45u, 0x3Du, 0x48u, 0xFAu, v10, 0x56u, 1);
    if ((*(**(a1 + 64) + 1200))(v11))
    {
      v12 = 89;
    }

    else
    {
      v12 = 84;
    }

    BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12672, 3, 32, 0x45u, 0x3Du, 0x48u, 0xFAu, v12, 0x56u, 1);
  }

  else
  {
    if ((*(v9 + 264))())
    {
      v14 = 92;
    }

    else
    {
      v14 = 72;
    }

    if ((*(**(a1 + 64) + 1200))())
    {
      v15 = 89;
    }

    else
    {
      v15 = 84;
    }

    v16.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12360, 2, 34, 0x37u, 0x3Du, v14, 0xFAu, v15, 0x56u, 1);
    if ((*(**(a1 + 64) + 264))(v16))
    {
      v17 = 92;
    }

    else
    {
      v17 = 72;
    }

    if ((*(**(a1 + 64) + 1200))())
    {
      v18 = 89;
    }

    else
    {
      v18 = 84;
    }

    BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12672, 2, 34, 0x37u, 0x3Du, v17, 0xFAu, v18, 0x56u, 1);
  }

  return 0;
}

uint64_t BlueFin::GlPeNavMeasUtil::processEl(uint64_t result, uint64_t a2, uint64_t a3, _WORD *a4, _DWORD *a5)
{
  v33 = 90.0;
  if ((*(a3 + 184) | 4) != 4)
  {
    v9 = result;
    if (*(a3 + 156) && (result = (*(**(result + 8) + 64))(*(result + 8), a2)) != 0)
    {
      *a5 = *(result + 8);
      v10 = *(result + 4);
    }

    else
    {
      v32 = 0;
      v31 = 0;
      memset(v29, 0, sizeof(v29));
      v30 = 0;
      v27 = 0;
      v26 = 0u;
      v25 = 0u;
      v24 = 0u;
      v23 = 0u;
      v22 = 0u;
      v21 = 0u;
      v20 = 0u;
      v19 = 0u;
      v28 = 0x4008000000000000;
      v17 = *(a3 + 88);
      v18 = *(a3 + 104);
      BlueFin::lla2ecef(&v17, &v15);
      v19 = v15;
      v11 = *(a3 + 136);
      v12 = *(a3 + 144);
      *&v20 = v16;
      *(&v20 + 1) = v11;
      v13 = *(a3 + 152) * 0.001;
      *(&v24 + 1) = v12;
      *&v21 = v13;
      result = (*(*v9[1] + 24))(v9[1], a2, **v9, &v17, v29, 1, 0, 0, 0);
      if (!result)
      {
        v14 = (*(*v9[1] + 48))(v9[1]);
        result = (*(*v14 + 80))(v14, v29, &v19, &v17, 0, 0, &v32, &v33);
        if (v33 < -2.0 && !*(a3 + 156))
        {
          ++*a4;
        }

        *a5 = v32;
      }
    }
  }

  return result;
}

float BlueFin::GlPeProbation::UpdateProbationInfo(int32x2_t *a1, int32x2_t *a2, double *a3, float64x2_t *a4, __int32 a5)
{
  if (!a2)
  {
    v11 = "pMeSigMeas";
    DeviceFaultNotify("glpe_probation.cpp", 208, "UpdateProbationInfo", "pMeSigMeas");
    v12 = 208;
    goto LABEL_26;
  }

  if (!a3)
  {
    v11 = "pSkfMeas";
    DeviceFaultNotify("glpe_probation.cpp", 209, "UpdateProbationInfo", "pSkfMeas");
    v12 = 209;
    goto LABEL_26;
  }

  v5 = a2->u8[0];
  if (!a2->i8[0])
  {
    v11 = "*pMeSigMeas->m_otSignalId.GetSvId()";
    DeviceFaultNotify("glpe_probation.cpp", 210, "UpdateProbationInfo", "*pMeSigMeas->m_otSignalId.GetSvId()");
    v12 = 210;
LABEL_26:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_probation.cpp", v12, v11);
  }

  if ((a2[2].i32[1] - 1) >= 2)
  {
    for (i = 0; i != 108; i += 9)
    {
      if (a1->u8[i * 4] == v5 && a1->i32[i + 1] == a2->i32[1])
      {
        a1 = (a1 + i * 4);
        goto LABEL_19;
      }
    }

    for (j = 0; j != 432; j += 36)
    {
      if (!a1->i8[j])
      {
        a1 = (a1 + j);
        goto LABEL_19;
      }
    }

    v8 = (a1 + 36);
    v9 = 11;
    do
    {
      if (a1[1].i32[1] > v8[1].i32[1])
      {
        a1 = v8;
      }

      v8 = (v8 + 36);
      --v9;
    }

    while (v9);
LABEL_19:
    if (a1 != a2)
    {
      a1->i8[0] = v5;
      a1->i32[1] = a2->i32[1];
      a1[1].i16[0] = a2[1].i16[0];
    }

    a1[1].i32[1] = a5;
    a1[2] = vmovn_s64(vcvtq_s64_f64(vmulq_f64(*a4, vdupq_n_s64(0x412E848000000000uLL))));
    a1[3].i32[0] = -(a3[3] - *a3 * 299792.458);
    result = *&a2[14].i32[1];
    a1[3].i16[2] = result;
    a1[4].i32[0] = a2[6].i32[0];
  }

  return result;
}

void BlueFin::GlPeSvVisibilityCache::UpdateVisibilityInfo(BlueFin::GlPeSvVisibilityCache *this, float *a2, double *a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v69 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    v64 = "pMeSigMeas";
    DeviceFaultNotify("glpe_svvisibilitycache.cpp", 440, "UpdateVisibilityInfo", "pMeSigMeas");
    v65 = 440;
    goto LABEL_57;
  }

  if (!a3)
  {
    v64 = "pSkfMeas";
    DeviceFaultNotify("glpe_svvisibilitycache.cpp", 441, "UpdateVisibilityInfo", "pSkfMeas");
    v65 = 441;
    goto LABEL_57;
  }

  v18 = *a2;
  if (!*a2)
  {
    v64 = "*pMeSigMeas->m_otSignalId.GetSvId()";
    DeviceFaultNotify("glpe_svvisibilitycache.cpp", 442, "UpdateVisibilityInfo", "*pMeSigMeas->m_otSignalId.GetSvId()");
    v65 = 442;
    goto LABEL_57;
  }

  v20 = *(this + 1);
  if (!v20)
  {
    goto LABEL_45;
  }

  v21 = *(v20 + 2576);
  if ((v18 - 76) < 0x63 || v21 == 0)
  {
    goto LABEL_45;
  }

  v23 = *(this + 10);
  if (v23 == 0xFFFF)
  {
    if (BlueFin::GlPeSvVisibilityCache::GetSvVisibilityArraySize(this) > 8)
    {
      LOWORD(v23) = 0;
      *(this + 9) = 0;
      v53 = -1600;
      v54 = 1.79769313e308;
      while (1)
      {
        v55 = *(this + 204) + v53;
        if ((*(*(v55 + 1608) + 32))(v55 + 1608) < 0x93A80)
        {
          break;
        }

        v56 = (*(*(v55 + 1608) + 32))(v55 + 1608);
        LODWORD(v57) = *(v55 + 1616);
        if (v57 * 2.32830644e-10 + (v56 % 0x93A80) == 0.0)
        {
          break;
        }

        v58 = *(this + 204) + v53;
        v59 = (*(*(v58 + 1608) + 32))();
        LODWORD(v60) = *(v58 + 1616);
        if (v60 * 2.32830644e-10 + v59 < v54)
        {
          v61 = *(this + 204) + v53;
          v62 = (*(*(v61 + 1608) + 32))();
          LODWORD(v63) = *(v61 + 1616);
          v54 = v63 * 2.32830644e-10 + v62;
          *(this + 9) = v23;
        }

        LOWORD(v23) = v23 + 1;
        v53 += 160;
        if (!v53)
        {
          LOWORD(v23) = *(this + 9);
          goto LABEL_13;
        }
      }
    }

    else
    {
      LOWORD(v23) = *(this + 9) + 1;
    }

    *(this + 9) = v23;
LABEL_13:
    *(this + 10) = v23;
  }

  if (v23 >= 0xAu)
  {
    v64 = "m_sUpdateIdx >= 0 && m_sUpdateIdx < MAX_SVVISIBILITY_CACHE_SIZE";
    DeviceFaultNotify("glpe_svvisibilitycache.cpp", 465, "UpdateVisibilityInfo", "m_sUpdateIdx >= 0 && m_sUpdateIdx < MAX_SVVISIBILITY_CACHE_SIZE");
    v65 = 465;
LABEL_57:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_svvisibilitycache.cpp", v65, v64);
  }

  BlueFin::GlPeTimeManager::GetTime(*(this + 1), 1, &v68);
  v66 = &off_2A1F0B5F0;
  v67 = 0;
  BlueFin::GlPeGnssTime::GetGps(&v68, &v66);
  v24 = *(this + 204);
  v25 = *(this + 10);
  if (v67 != *(v24 + 160 * *(this + 10) + 16))
  {
    for (i = 0; i != 96; i += 8)
    {
      v27 = &v68 + i;
      *v27 = -256;
      *(v27 + 1) = 0;
    }

    v28 = 0;
    v29 = *(v24 + 160 * v25 + 128);
    do
    {
      v30 = v29 + v28;
      *v30 = v68.n128_u16[v28 / 2];
      *(v30 + 4) = v68.n128_u32[v28 / 4 + 1];
      v28 += 8;
    }

    while (v28 != 96);
  }

  BlueFin::GlPeTimeManager::GetTime(*(this + 1), 1, &v68);
  v66 = &off_2A1F0B5F0;
  v67 = 0;
  BlueFin::GlPeGnssTime::GetGps(&v68, &v66);
  v32 = *(this + 204);
  v33 = *(this + 10);
  *(v32 + 160 * *(this + 10) + 16) = v67;
  *v34.i64 = a2[29] + 0.5;
  *v35.i64 = *v34.i64 + trunc(*v34.i64 * 2.32830644e-10) * -4294967300.0;
  v36.f64[0] = NAN;
  v36.f64[1] = NAN;
  v37 = vnegq_f64(v36);
  *&v38 = vbslq_s8(v37, v35, v34).u64[0];
  if (*v34.i64 > 4294967300.0)
  {
    *v34.i64 = v38;
  }

  if (*v34.i64 < -4294967300.0)
  {
    *v31.i64 = -*v34.i64;
    *v34.i64 = -(*v34.i64 - trunc(*v34.i64 * -2.32830644e-10) * -4294967300.0);
    v34 = vbslq_s8(v37, v34, v31);
    *v34.i64 = -*v34.i64;
  }

  if (*v34.i64 < 0.0)
  {
    v39 = --*v34.i64;
  }

  else
  {
    LOBYTE(v39) = *v34.i64;
  }

  v40 = a3[3];
  v41 = -v40;
  v42 = -(v40 - *a3 * 299792.458);
  *v34.i64 = -(v41 + *a3 * 299792.458);
  if (v42 >= 0.0)
  {
    *v34.i64 = v42;
  }

  *v31.i64 = *v34.i64 + trunc(*v34.i64 * 2.32830644e-10) * -4294967300.0;
  v43 = vbslq_s8(v37, v31, v34);
  if (*v34.i64 <= 4294967300.0)
  {
    v43.i64[0] = v34.i64[0];
  }

  if (*v43.i64 < -4294967300.0)
  {
    *v34.i64 = -*v43.i64;
    *v43.i64 = -(*v43.i64 - trunc(*v43.i64 * -2.32830644e-10) * -4294967300.0);
    v44.f64[0] = NAN;
    v44.f64[1] = NAN;
    *v43.i64 = -*vbslq_s8(vnegq_f64(v44), v43, v34).i64;
  }

  v45 = 0;
  v46 = 0;
  if (*v43.i64 < 0.0)
  {
    v47 = --*v43.i64;
  }

  else
  {
    v47 = *v43.i64;
  }

  v48 = *(v32 + 160 * v33 + 128);
  v49 = (v48 + 1);
  while (*(v49 - 1) && *(v49 - 1) != v18)
  {
    v50 = *v49;
    v49 += 8;
    if (v50 < *(v48 + 8 * v46 + 1))
    {
      v46 = v45;
    }

    if (++v45 == 12)
    {
      goto LABEL_44;
    }
  }

  v46 = v45;
LABEL_44:
  v51 = v48 + 8 * v46;
  *v51 = v18;
  *(v51 + 1) = v39;
  *(v51 + 4) = v47;
LABEL_45:
  v52 = *MEMORY[0x29EDCA608];
}

unsigned __int8 *BlueFin::GlPeComputeZRH::UpdateSatPosCache(unsigned __int8 *this, const BlueFin::GlSignalIdSet *a2, int a3, double a4)
{
  v5 = this;
  v6 = *a2;
  v7 = *(a2 + 8);
  if (!*v6)
  {
    if (v7 < 2)
    {
      return this;
    }

    v12 = v7 - 1;
    v13 = v6 + 1;
    while (!*v13++)
    {
      if (!--v12)
      {
        return this;
      }
    }
  }

  v8 = *(*(this + 536) + 2568);
  if (v8 <= 0xFF9222FE)
  {
    v9 = v8;
  }

  else
  {
    v9 = v8;
  }

  v33 = 0u;
  memset(v34, 0, sizeof(v34));
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  memset(v27, 0, sizeof(v27));
  v35 = 0x4008000000000000;
  v10 = a3;
  v28 = a4;
  v29 = a3 * 0.001;
  v24 = v26;
  v25 = 8;
  memset(v26, 0, 32);
  v19 = v7;
  memcpy(v23, v6, 4 * v7);
  v21 = 0;
  v20 = 0;
  v22 = v23[0];
  this = BlueFin::GlSetIterator::operator++(&v19);
  if (v20 != v19)
  {
    v11 = v9 - v10;
    do
    {
      if (v21 >= 0x23FuLL)
      {
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
      }

      v18 = *(&BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v21);
      if (((*&v24[(v18 >> 3) & 0x1C] >> (v18 & 0x1F)) & 1) == 0)
      {
        v17 = 0.0;
        memset(v15, 0, sizeof(v15));
        v16 = 0;
        if (!BlueFin::GlPeComputeZRH::GetSatPosWithFullPr(v5, &v18, v27, 0, 1, v15, 0, *&v11))
        {
          v17 = v11;
          *&v24[(v18 >> 3) & 0x1C] |= 1 << v18;
          BlueFin::GlPeSatPosCache::UpdateSatPosCache(v5 + 24, &v18, v15);
        }
      }

      this = BlueFin::GlSetIterator::operator++(&v19);
    }

    while (v20 != v19);
  }

  return this;
}

double BlueFin::GlPeSatPosCache::UpdateSatPosCache(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a2;
  if ((*(*(a1 + 24) + ((v3 >> 3) & 0x1C)) >> (v3 & 0x1F)))
  {
    v4 = **(a1 + 264) + 104 * *(v3 + a1 + 71);
    *(v4 + 8) = *a3;
    *(v4 + 16) = *(a3 + 8);
    *(v4 + 24) = *(a3 + 16);
    *(v4 + 40) = *(a3 + 32);
    *(v4 + 48) = *(a3 + 40);
    *(v4 + 64) = *(a3 + 56);
    *(v4 + 72) = *(a3 + 64);
    result = *(a3 + 72);
    *(v4 + 80) = result;
  }

  return result;
}

uint64_t BlueFin::GlPeKFAltAsst::altAsstFromCitySetFine(__int16 *a1, uint64_t a2, double *a3)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1157234688;
  if (*(a1 + 2) != 1)
  {
    return 0;
  }

  v6 = *a3;
  v7 = a3[1];
  if ((BlueFin::GlPeLatLonRegionSet::disabledRegion(&BlueFin::GlPeKFAltAsst::m_otCityFine, v6, v7) & 1) != 0 || *a1 == -1 || *(a1 + 2) != 1)
  {
    return 0;
  }

  v9 = (qword_2A18BACF8 + 12 * *a1);
  v10 = *v9;
  LOWORD(v8) = v9[1];
  *&v11 = v8;
  v12 = ((v10 >> 9) - 50) + (v8 * 0.0001);
  LOWORD(v11) = v9[3];
  v13 = v12 + (v11 * 0.0001);
  v14 = v12;
  v15 = v13;
  if (*a3 < v14 || *a3 > v15)
  {
    return 0;
  }

  LOWORD(v14) = v9[4];
  *&v14 = LODWORD(v14);
  LOWORD(v15) = v9[2];
  v17 = *v9 + (LODWORD(v15) * 0.0001);
  v18 = -v17;
  if ((v10 & 0x100) == 0)
  {
    v18 = v17;
  }

  v19 = v18 + (*&v14 * 0.0001);
  v20 = a3[1];
  v21 = v19;
  if (v20 < v18 || v20 > v21)
  {
    return 0;
  }

  v24 = v9[5];
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = ((v24 >> 4) - 100);
  *(a2 + 24) = (5 * (v24 & 0xF) + 5);
  return 1;
}

uint64_t BlueFin::GlPeVlss::SetFadingStatusAuto(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    DeviceFaultNotify("glpe_vlss.cpp", 53, "SetFadingStatusAuto", "rotFadingStatus == GLPE_FADING_NOT_KNOWN || rotFadingStatus == GLPE_FADING_NONE || rotFadingStatus == GLPE_FADING_DETECTED");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_vlss.cpp", 53, "rotFadingStatus == GLPE_FADING_NOT_KNOWN || rotFadingStatus == GLPE_FADING_NONE || rotFadingStatus == GLPE_FADING_DETECTED");
  }

  *(result + 4) = a2;
  return result;
}

uint64_t BlueFin::GlPeEnvironmentMonitor::RecordSignalStr(uint64_t result, unsigned __int8 *a2, float a3)
{
  v3 = *(result + 1680);
  v4 = *a2;
  v5 = *v3;
  if (v5 != v4)
  {
    v9 = v3 + 28;
    v8 = 12;
    v10 = -1;
    while (1)
    {
      v11 = (v10 + 1);
      if (v11 >= v8)
      {
        LOBYTE(v11) = v8;
      }

      if (!v5)
      {
        v8 = v11;
      }

      if (v10 == 10)
      {
        goto LABEL_13;
      }

      v12 = *v9;
      v9 += 28;
      v5 = v12;
      ++v10;
      if (v12 == v4)
      {
        v7 = v10 > 0xA;
        v6 = v10 + 1;
        goto LABEL_11;
      }
    }
  }

  v6 = 0;
  v7 = 0;
  v8 = 12;
LABEL_11:
  v13 = &v3[28 * v6];
  *(v13 + 4) = *(v13 + 8);
  *(v13 + 5) = a3;
  if (v7)
  {
LABEL_13:
    if (v8 <= 0xBu)
    {
      v14 = &v3[28 * v8];
      *v14 = v4;
      if (a3 <= 7.0)
      {
        a3 = 0.0;
      }

      *(v14 + 5) = a3;
    }
  }

  return result;
}

uint64_t BlueFin::GlPeEnvironmentMonitor::GlPeGNSSSignalStrAnalysis(uint64_t this, double a2, double a3, unint64_t a4, int a5, int a6)
{
  v6 = a2 - a3;
  if (a2 - a3 >= 50.0)
  {
    v9 = 0.99;
  }

  else
  {
    v7 = 1.0 / v6;
    if (v6 == 0.0)
    {
      v7 = 0.0;
    }

    v8 = 1.0 - v7;
    if (v7 == 0.0)
    {
      v8 = 0.0;
    }

    v9 = v8;
  }

  v10 = 0;
  v11 = 0.0;
  while (1)
  {
    v12 = *(this + 4 * v10 + 1272);
    if (v12 < 5.0)
    {
      break;
    }

    v11 = v11 + v12;
    if (++v10 == 4)
    {
      v13 = v11 * 0.25;
      v14 = 3;
      goto LABEL_14;
    }
  }

  if (!v10)
  {
    v13 = 0.0;
    v16 = 4.0;
    goto LABEL_19;
  }

  v13 = v11 / v10;
  v14 = v10 - 1;
LABEL_14:
  v15 = vabds_f32(*(this + 1272), *(this + 1272 + 4 * v14));
  v16 = 4.0;
  if (v15 >= 4.0)
  {
    v16 = v15;
  }

  if (v13 > 36.0)
  {
    v13 = 36.0;
  }

LABEL_19:
  v17 = *(this + 1288);
  if (v17 == 0.0)
  {
    v18 = v13;
    v17 = v18;
  }

  v19 = 1.0 - v9;
  v20 = (v9 * v17) + v19 * v13;
  *(this + 1288) = v20;
  v21 = *(this + 1296);
  if (v21 == 0.0)
  {
    v22 = v16;
    v21 = v22;
  }

  v23 = (v9 * v21) + v19 * v16;
  *(this + 1296) = v23;
  if (v6 >= 10.0000095)
  {
    v24 = (v20 + v23);
    v25 = v24 * 0.1;
    v26 = *(this + 1320);
    if (v26)
    {
      if (v26 >= 2)
      {
        v27 = 1;
        if (v13 >= (v20 - v23) - v25 || (a6 & 1) != 0)
        {
          goto LABEL_40;
        }

        *(this + 1292) = v20;
        *(this + 1300) = v23;
        *(this + 1304) = a2;
        goto LABEL_38;
      }

      if (v26 == 1)
      {
LABEL_38:
        *(this + 1320) = 2;
        v27 = 1;
        goto LABEL_40;
      }

      v27 = 0;
    }

    else
    {
      if (v13 >= (v20 - v23))
      {
        v28 = 1;
      }

      else
      {
        v28 = a6;
      }

      v27 = 1;
      if (v28)
      {
        v29 = 2;
      }

      else
      {
        v29 = 1;
      }

      *(this + 1320) = v29;
      if ((v28 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

LABEL_40:
    *(this + 1312) = a2;
    if (a5)
    {
      v30 = 60;
    }

    else
    {
      v30 = 180;
    }

    if (*(this + 1264) > 4.0 && *(this + 1256) < 20.0 && *(this + 12) >= v30 && ((v31 = 9.0, (a5 & 1) != 0) || *this == 1) || (v31 = 15.5, (v20 + -20.0) >= 15.5) || (v31 = 12.5, (v20 + -20.0) < 12.5))
    {
      *(this + 1696) = v31;
    }

    v32 = 0;
    v33 = 0;
    *(this + 1688) = 0;
    v34 = *(this + 1680);
    v35 = 0.0;
    v36 = v34;
    v37 = 0.0;
    do
    {
      v38 = v34 + 28 * v32;
      if (*v38)
      {
        v39 = 0;
        *(v38 + 24) = 0;
        v40 = 0.0;
        for (i = 4; i != 24; i += 4)
        {
          v42 = *(v36 + i);
          if (v42 > 0.0)
          {
            ++v39;
            v40 = v40 + v42;
          }
        }

        if (v39 >= 4u)
        {
          v43 = v39;
          v44 = v40 / v43;
          v45 = 0.0;
          for (j = 4; j != 24; j += 4)
          {
            v47 = *(v36 + j);
            if (v47 > 0.0)
            {
              v45 = v45 + ((v47 - v44) * (v47 - v44));
            }
          }

          v48 = sqrtf(v45 / v43);
          *(v34 + 28 * v32 + 24) = v48;
          if (v48 > v37)
          {
            v37 = v48;
          }

          v35 = v35 + v48;
          *(this + 1688) = v35;
          ++v33;
        }
      }

      ++v32;
      v36 += 28;
    }

    while (v32 != 12);
    if (v33 > 5u)
    {
      v35 = (v35 - v37) / (v33 - 1);
      *(this + 1688) = v35;
    }

    if (v27)
    {
      v49 = *(this + 1692);
      v50 = a4;
      v51 = v49 > 0.0 && ((v50 - v49) / 1000.0) < 6.0;
      if (v35 > 1.0 || v51)
      {
        *(this + 1320) = 3;
        *(this + 1692) = v50;
      }

      else
      {
        *(this + 1320) = 2;
      }
    }

    *(this + 1700) = a5;
    if (v13 <= v24)
    {
      if (v13 < (v20 - v23) - v25)
      {
        *(this + 1702) = 0;
        *(this + 1704) = 0;
        v56 = (*(this + 1705) + 1);
        if (v56 >= 0x5A)
        {
          LOBYTE(v56) = 90;
        }

        *(this + 1705) = v56;
        v57 = (*(this + 1706) + 1);
        if (v57 >= 0x5A)
        {
          v58 = 90;
        }

        else
        {
          v58 = *(this + 1706) + 1;
        }

        *(this + 1706) = v58;
        if (v57 >= 0xB)
        {
          v55 = 0;
          *(this + 1703) = 0;
LABEL_105:
          *(this + 1701) = v55;
          return this;
        }

        if (v57 == 10)
        {
LABEL_104:
          v55 = 0;
          goto LABEL_105;
        }

LABEL_102:
        if (*(this + 1703) >= 0x10u)
        {
          v55 = *(this + 1705) > 0xFu;
          goto LABEL_105;
        }

        goto LABEL_104;
      }

      v53 = (*(this + 1702) + 1);
      if (v53 >= 0x5A)
      {
        v59 = 90;
      }

      else
      {
        v59 = *(this + 1702) + 1;
      }

      *(this + 1702) = v59;
      *(this + 1704) = 0;
      *(this + 1706) = 0;
      if (v53 >= 6)
      {
        v55 = 0;
        *(this + 1703) = 0;
        goto LABEL_98;
      }
    }

    else
    {
      *(this + 1702) = 0;
      v52 = (*(this + 1703) + 1);
      if (v52 >= 0x5A)
      {
        LOBYTE(v52) = 90;
      }

      *(this + 1703) = v52;
      v53 = (*(this + 1704) + 1);
      if (v53 >= 0x5A)
      {
        v54 = 90;
      }

      else
      {
        v54 = *(this + 1704) + 1;
      }

      *(this + 1704) = v54;
      *(this + 1706) = 0;
      if (v53 >= 6)
      {
        v55 = 0;
LABEL_98:
        *(this + 1705) = 0;
        goto LABEL_105;
      }
    }

    if (v53 == 5)
    {
      goto LABEL_104;
    }

    goto LABEL_102;
  }

  return this;
}

void BlueFin::BigMatrix::Clone(BlueFin::BigMatrix *this, int a2, int a3)
{
  *(this + 4) = a2;
  *(this + 5) = a3;
  if (*(this + 6) < a2 || (v4 = *(this + 7), v4 < a3))
  {
    DeviceFaultNotify("glpe_matrix.cpp", 883, "Clone", "m_NbRows <= m_NbMaxRows && m_NbCols <= m_NbMaxCols");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.cpp", 883, "m_NbRows <= m_NbMaxRows && m_NbCols <= m_NbMaxCols");
  }

  v5 = 8 * v4 * a2;
  v6 = (*(*(this + 1) + 8) + 8);

  bzero(v6, v5);
}

BOOL BlueFin::GlPeSatPosCache::GetHFromCache(uint64_t a1, unsigned __int8 *a2, unsigned int a3, uint64_t a4)
{
  v4 = *a2;
  v5 = (1 << (v4 & 0x1F)) & *(*(a1 + 24) + ((v4 >> 3) & 0x1C));
  if (v5)
  {
    v6 = (**(a1 + 264) + 104 * *(v4 + a1 + 71));
    v7 = v6[24];
    v8 = *(*(a4 + 8) + 8 * a3);
    *(v8 + 8) = v6[23];
    *(v8 + 24) = v7;
    *(v8 + 56) = v6[25];
    *(v8 + 40) = 0x3FF0000000000000;
  }

  return v5 != 0;
}

uint64_t BlueFin::BigMatrix_F::ReShape(uint64_t this, int a2, int a3)
{
  if ((a2 - 1) > 0x14 || (a3 - 1) >= 0x15)
  {
    DeviceFaultNotify("glpe_matrix.cpp", 1779, "ReShape", "bCond");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.cpp", 1779, "bCond");
  }

  *(this + 1944) = a2;
  *(this + 1948) = a3;
  return this;
}

const BlueFin::BigMatrix_F *BlueFin::BigMatrix_F::mult_sym(const BlueFin::BigMatrix_F *this, BOOL a2, const BlueFin::BigMatrix_F *a3, const BlueFin::BigMatrix_F *a4)
{
  if (this == a3)
  {
    v16 = "this != &mLeft";
    DeviceFaultNotify("glpe_matrix.cpp", 1695, "mult_sym", "this != &mLeft");
    v17 = 1695;
    goto LABEL_18;
  }

  if (this == a4)
  {
    v16 = "this != &mRight";
    DeviceFaultNotify("glpe_matrix.cpp", 1696, "mult_sym", "this != &mRight");
    v17 = 1696;
    goto LABEL_18;
  }

  v4 = *(a3 + 486);
  if (v4 != *(a4 + 486))
  {
    v16 = "mLeft.m_NbRows == mRight.m_NbRows";
    DeviceFaultNotify("glpe_matrix.cpp", 1699, "mult_sym", "mLeft.m_NbRows == mRight.m_NbRows");
    v17 = 1699;
    goto LABEL_18;
  }

  v5 = *(a3 + 487);
  if (v5 != *(a4 + 487))
  {
    v16 = "mLeft.m_NbCols == mRight.m_NbCols";
    DeviceFaultNotify("glpe_matrix.cpp", 1701, "mult_sym", "mLeft.m_NbCols == mRight.m_NbCols");
    v17 = 1701;
LABEL_18:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.cpp", v17, v16);
  }

  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      v7 = a4;
      v8 = i;
      if (i < v5)
      {
        do
        {
          v9 = 0.0;
          if (v4 >= 1)
          {
            v10 = a3;
            v11 = v7;
            v12 = v4;
            do
            {
              v13 = *v10;
              v10 = (v10 + 84);
              v14 = v13;
              v15 = *v11;
              v11 += 21;
              v9 = v9 + (v14 * v15);
              --v12;
            }

            while (v12);
          }

          *(this + 21 * i + v8) = v9;
          *(this + 21 * v8++ + i) = v9;
          v7 = (v7 + 4);
        }

        while (v8 != v5);
      }

      a4 = (a4 + 4);
      a3 = (a3 + 4);
    }
  }

  *(this + 486) = v5;
  *(this + 487) = v5;
  return this;
}

BOOL BlueFin::BigMatrix_F::choldci(BlueFin::BigMatrix_F *this, int a2, float *a3)
{
  if (a2 < 1)
  {
    return 1;
  }

  else
  {
    v5 = a2;
    bzero(a3, 4 * a2);
    v6 = 0;
    v7 = 0;
    v8 = 2;
    v9 = this;
    do
    {
      v10 = v9;
      v11 = v6;
      do
      {
        v12 = *(this + 21 * v6 + v11);
        v13 = v6 - 1;
        v14 = v8;
        if (v6 >= 2)
        {
          do
          {
            v12 = (v12 - (*(this + 21 * v6 + (v14 - 3)) * *(this + 21 * v11 + (v14 - 3)))) - (*(this + 21 * v6 + (v14 - 4)) * *(this + 21 * v11 + (v14 - 4)));
            v14 -= 2;
          }

          while (v14 > 3);
          v13 = v14 - 3;
        }

        if ((v13 & 0x80000000) == 0)
        {
          v15 = 4 * v13;
          do
          {
            v12 = v12 - (*(v9 + v15) * *(v10 + v15));
            v15 -= 4;
          }

          while (v15 != -4);
        }

        if (v6 == v11)
        {
          if (v12 <= 0.0)
          {
            return v7;
          }

          a3[v6] = 1.0 / sqrtf(v12);
        }

        else
        {
          *(this + 21 * v11 + v6) = v12 * a3[v6];
        }

        ++v11;
        v10 = (v10 + 84);
      }

      while (v11 != v5);
      ++v6;
      ++v8;
      v9 = (v9 + 84);
      v7 = v6 >= v5;
    }

    while (v6 != v5);
    return 1;
  }
}

uint64_t BlueFin::GlPeHula::ExtSensTempMonitor::MonitorExternalSensorTemp(uint64_t result, uint64_t a2, unsigned int a3)
{
  v3 = *(a2 + 28);
  v4 = v3 - *(result + 4);
  if (v4 >= 0xEA61)
  {
    *result = 0;
  }

  if (*(a2 + 24 + a3) == 1)
  {
    v5 = *(a2 + 8 + 8 * a3 + 4);
    if (*result == 1)
    {
      v6 = *(result + 12);
    }

    else
    {
      *(result + 416) = v5;
      *(result + 420) = 0;
      *(result + 12) = v3;
      *result = 1;
      v6 = v3;
    }

    *(result + 8) = v5;
    *(result + 424) = *(a2 + 8 + 8 * a3);
    *(result + 4) = v3;
    v7 = (v3 - v6) * 0.001;
    if (v3 && (v4 * 0.001) > 0.0)
    {
      v8 = (v5 * 0.01) + (*(result + 416) * 0.99);
      *(result + 416) = v8;
      v9 = *(result + 420);
      v10 = v9;
      *(result + 4 * v9 + 16) = v8;
    }

    else
    {
      v9 = *(result + 420);
      v10 = v9;
    }

    v11 = (v9 + 1) % 0x64uLL;
    v12 = *(result + 16 + 4 * v10);
    v13 = *(result + 16 + 4 * v11);
    *(result + 420) = v11;
    v14 = *(result + 1);
    v15 = vabds_f32(v12, v13);
    v16 = (v15 < 1.0) & ~v14;
    if (v7 <= 100.0)
    {
      v16 = 0;
    }

    v17 = (v16 | v14) & (v15 > 1.05);
    if (v7 <= 100.0)
    {
      v17 = 0;
    }

    if ((v16 & 1) != 0 || v17)
    {
      *(result + 1) = v17 ^ 1;
    }

    *(a2 + 24 + a3) = 0;
  }

  return result;
}

BOOL BlueFin::GlPeNavGnssBlocked::PublishIndoorPropagation(BlueFin::GlPeNavGnssBlocked *this, int a2)
{
  if (*(this + 120) == 1 && (*(this + 21) ? (v2 = *(this + 29) == 0) : (v2 = 1), !v2 && *(this + 121) == 1))
  {
    v3 = a2 - *(this + 10);
    v4 = *(this + 23);
    v5 = *(this + 9);
    if (v4 <= v5)
    {
      v4 = *(this + 9);
    }

    v6 = v4 * (v3 / 0x3E8);
    return v3 <= *(this + 24) && v6 <= *(this + 26);
  }

  else
  {
    return 0;
  }
}

uint64_t BlueFin::GlPeKfPool::SetTcxoMitigationState(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = a1 + 37248;
  do
  {
    result = (*(**(v4 + v3) + 384))(*(v4 + v3));
    if (result)
    {
      result = (*(**(v4 + v3) + 280))(*(v4 + v3), a2);
    }

    v3 += 8;
  }

  while (v3 != 24);
  return result;
}

uint64_t BlueFin::GlPeSensStats::updateGnssState(uint64_t this, const BlueFin::GlPeNavGnssState *a2, double a3, double a4, double a5, int8x16_t a6, int8x16_t a7)
{
  v7 = *(this + 176);
  v8 = *(this + 48);
  *a6.i64 = v7 - v8;
  v9 = *(a2 + 50);
  if (v7 - v8 >= 0.0)
  {
    *a7.i64 = *a6.i64 - trunc(*a6.i64 * 2.32830644e-10) * 4294967300.0;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    a7.i64[0] = vbslq_s8(vnegq_f64(v11), a7, a6).u64[0];
    if (*a6.i64 > 4294967300.0)
    {
      a6.i64[0] = a7.i64[0];
    }

    v12 = v9 - *(this + 184);
    v10 = v12 > 0x5DC && v12 < *(this + 4) + 2000 * *a6.i64;
  }

  else
  {
    v10 = 0;
  }

  if (*(a2 + 240))
  {
    v14 = sqrt(*(a2 + 14) * *(a2 + 14) + *(a2 + 13) * *(a2 + 13));
    v15 = *(this + 120);
    if (v14 >= v15 || v10)
    {
      v16 = 1;
    }

    else
    {
      if (v14 >= v15)
      {
        v15 = v14;
      }

      if (v15 * 3.0 >= *(a2 + 32))
      {
        *(this + 172) = 0;
        goto LABEL_25;
      }

      v16 = -1;
    }

    *(this + 172) = v16;
LABEL_25:
    *(this + 176) = v14;
    *(this + 184) = v9;
    return this;
  }

  v17 = v8 * 0.5;
  v18 = v7 > v17;
  if (v17 >= a3)
  {
    v18 = 0;
  }

  v19 = v18 || v10;
  if (v19 != 1)
  {
    v19 = -1;
  }

  *(this + 172) = v19;
  return this;
}

uint64_t BlueFin::GlPeHula::UpdateNoMotionState(BlueFin::GlPeHula *this)
{
  v10 = *MEMORY[0x29EDCA608];
  if (*(this + 1054) == 6 && *(this + 4224) == 1)
  {
    v2 = *(this + 4226) ^ 1;
  }

  else
  {
    v2 = 0;
  }

  BlueFin::GlPeSensStats::UpdateNoMotionState(this, *(*(this + 126) + 576), v2 & 1);
  v5[0] = 0x200000011;
  v6 = 1;
  v7 = 0;
  v8 = *(this + 81) >= *this;
  v9 = 4;
  result = BlueFin::GlPeHula::MovingStateSensorData::Update(this + 4208, v5);
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlPeSensStats::UpdateNoMotionState(uint64_t this, unsigned int a2, char a3)
{
  v4 = this;
  v5 = 0;
  v6 = 0;
  v53 = *MEMORY[0x29EDCA608];
  v7 = (this + 952);
  do
  {
    *&v52[v5 + 24] = *(this + v6 + 232) - *(this + v5 + 488);
    *&v52[v5] = *(this + v6 + 632) - *(this + v5 + 952);
    v6 += 96;
    v5 += 8;
  }

  while (v6 != 288);
  if (*(this + 188) == 1)
  {
    v8 = 0;
    v9 = 0;
    v11 = *(this + 96);
    v10 = *(this + 104);
    v12 = (this + 560);
    v13 = *(this + 8);
    v14 = *(this + 1001);
    v15 = (this + 232);
    v16 = 1;
    v17 = 3;
    do
    {
      v18 = *v15 - *(v12 - 9);
      if (v18 < 0.0)
      {
        v18 = -v18;
      }

      if (v14)
      {
        if (v10 >= *(v12 - 3) * 3.0)
        {
          v19 = *(v12 - 3) * 3.0;
        }

        else
        {
          v19 = v10;
        }

        v20 = *v12;
        v21 = *v12 * 3.0;
        if (v11 < v21)
        {
          v21 = v11;
        }
      }

      else
      {
        v20 = *v12;
        v19 = v10;
        v21 = v11;
      }

      v22 = v18 < v21;
      v23 = v15[1];
      if (v23 <= v19)
      {
        ++v9;
      }

      if (v23 <= v10 * 0.25)
      {
        ++v8;
      }

      v24 = 1.0;
      if (v20 != v13)
      {
        v24 = *(this + 24);
      }

      v16 &= v22;
      *v12 = v20 + v24 * (v18 - v20);
      v25 = *v15;
      v15 += 12;
      *(v12 - 9) = v25;
      ++v12;
      --v17;
    }

    while (v17);
    if (v8)
    {
      v26 = 1;
    }

    else
    {
      v26 = v9 > 1u;
    }

    if (v26)
    {
      v27 = v16;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    this = BlueFin::GlPeSensStats::reset(this);
    v27 = 0;
  }

  v28 = *(v4 + 585);
  if (v28 == 1)
  {
    v29 = *(v4 + 88);
    v30 = *(v4 + 112);
    v31 = (v4 + 640);
    v32 = 3;
    v33 = *(v4 + 1001);
    do
    {
      v34 = v29;
      if (v33)
      {
        v34 = *(v7 - 3) * 3.0;
        if (v29 < v34)
        {
          v34 = v29;
        }
      }

      v35 = *(v31 - 1);
      v36 = *v31 < v34;
      v37 = *v7 - v35;
      if (v37 < 0.0)
      {
        v37 = -v37;
      }

      if (v37 >= v30)
      {
        v36 = 0;
      }

      LOBYTE(v28) = v28 & v36;
      *v7++ = v35;
      v31 += 12;
      --v32;
    }

    while (v32);
    if (v28)
    {
      if (*(v4 + 172) != -1)
      {
        goto LABEL_41;
      }

      v47 = 0;
      v48 = 0;
      do
      {
        v49 = (v4 + 648 + v47);
        v50 = vld1q_dup_f64(v49);
        v48 = vsub_s32(v48, vmovn_s64(vcgtq_f64(v50, *(v4 + 128))));
        v47 += 96;
      }

      while (v47 != 288);
      if (v48.u8[4] <= 1u && (!v48.i8[4] || v48.u8[0] < 2u))
      {
LABEL_41:
        v38 = 1;
        goto LABEL_44;
      }
    }
  }

  else
  {
    this = BlueFin::GlPeSensStats::reset(v4);
  }

  v38 = 0;
LABEL_44:
  v39 = v27 & v38;
  if (*(v4 + 172) == 1)
  {
    v39 = 0;
  }

  if (v39 & 1) != 0 || (a3)
  {
    ++*(v4 + 162);
LABEL_64:
    ++*(v4 + 160);
  }

  else
  {
    *(v4 + 162) = 0;
    if (*(v4 + 152) == 1)
    {
      v40 = 0;
      v41 = *(v4 + 112);
      v42 = v4;
      while (1)
      {
        v43 = v42[79] - v42[85];
        if (v43 < 0.0)
        {
          v43 = -v43;
        }

        if (v43 > v41 || v42[81] > *(v4 + 56))
        {
          break;
        }

        v44 = *&v52[v40];
        if (v44 < 0.0)
        {
          v44 = -v44;
        }

        if (v44 > v41 || v42[30] > *(v4 + 64))
        {
          break;
        }

        v45 = *&v52[v40 + 24];
        if (v45 < 0.0)
        {
          v45 = -v45;
        }

        if (v45 > *(v4 + 96))
        {
          break;
        }

        v40 += 8;
        v42 += 12;
        if (v40 == 24)
        {
          goto LABEL_64;
        }
      }

      *(v4 + 160) = 0;
    }
  }

  v46 = *MEMORY[0x29EDCA608];
  return this;
}

double BlueFin::GlPeContextThresholds::SetContext(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    v9 = "etContext != UNKNOWN";
    DeviceFaultNotify("glpe_sens_stats.cpp", 560, "SetContext", "etContext != UNKNOWN");
    v10 = 560;
    goto LABEL_7;
  }

  if (*(a1 + 64) == a2)
  {
    return result;
  }

  if (a2 >= 5)
  {
    v9 = "false";
    DeviceFaultNotify("glpe_sens_stats.cpp", 592, "SetContext", "false");
    v10 = 592;
LABEL_7:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_sens_stats.cpp", v10, v9);
  }

  v2 = a2 - 1;
  result = dbl_298A45620[v2];
  v4 = qword_298A45640[v2];
  v5 = qword_298A45660[v2];
  v6 = qword_298A45680[v2];
  v7 = qword_298A456A0[v2];
  v8 = qword_298A456C0[v2];
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = 0x3FF0000000000000;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  *(a1 + 56) = 0x4014000000000000;
  *(a1 + 64) = a2;
  return result;
}

unsigned __int16 *BlueFin::GlPeSensStats::UpdateGyroBias(unsigned __int16 *this, unsigned int a2)
{
  v2 = this[81];
  if (this[81])
  {
    v3 = *(this + 1001);
    v4 = 1.0;
    if (v3 == 1)
    {
      v4 = *(this + 3);
    }

    v5 = (this + 268);
    v6 = 3;
    v7 = this;
    do
    {
      v8 = v7[30];
      if (!v3)
      {
        v8 = v8 + v8;
      }

      *v5 = *v5 + v4 * (v8 - *v5);
      v9 = v7[80];
      if (!v3)
      {
        v9 = v9 + v9;
      }

      v5[49] = v5[49] + v4 * (v9 - v5[49]);
      v7 += 12;
      ++v5;
      --v6;
    }

    while (v6);
    *(this + 1001) = 1;
  }

  v10 = *this;
  if (v2 >= v10)
  {
    for (i = 0; i != 144; i += 48)
    {
      if (*&this[i + 344] <= 0.0)
      {
LABEL_23:
        v17 = 0;
        v18 = this + 256;
        v19 = (this + 344);
        do
        {
          v20 = *(v19 - 6);
          v21 = v20;
          if (v20 > 0.0)
          {
            if (*(v19 - 5) * 0.33 >= v20)
            {
              v21 = *(v19 - 5) * 0.33;
            }

            else
            {
              v21 = *(v19 - 6);
            }
          }

          if (v21 > 0.0)
          {
            v22 = *v19;
            v23 = 1.0;
            if (*v19 <= 0.0 || (v23 = v22 / (v21 * v21 + v22), v23 > 0.0))
            {
              v24 = v20 * v23 * (v20 * v23) + (1.0 - v23) * (1.0 - v23) * v22;
              v25 = *(v19 - 1);
              v26 = *(v19 - 7) - v25;
              *(v19 - 1) = v25 + v26 * v23;
              *v19 = v24 + v23 * (1.0 - v23) * (v26 * v26);
              *&this[v17 + 444] = a2;
            }
          }

          *v18 = v18[3];
          v18[49] = v18[52];
          v17 += 2;
          v19 += 12;
          ++v18;
        }

        while (v17 != 6);
        goto LABEL_49;
      }
    }

    v12 = (this + 344);
    v13 = 3;
    while (1)
    {
      v14 = *(v12 - 7) - *(v12 - 1);
      if (v14 < 0.0)
      {
        v14 = -v14;
      }

      v15 = *v12;
      v16 = *(this + 19) * sqrtf(v15);
      if (*(this + 18) < v16)
      {
        v16 = *(this + 18);
      }

      if (v14 > v16)
      {
        break;
      }

      v12 += 12;
      if (!--v13)
      {
        *(this + 993) = 0;
        *(this + 494) = 0;
        goto LABEL_23;
      }
    }

    v27 = *(this + 1000);
    if (v27)
    {
      v28 = (this + 488);
      v29 = (this + 344);
      v30 = 3;
      do
      {
        v31 = *v28;
        v32 = *(v29 - 7) - *v28;
        v33 = *v29;
        v34 = sqrtf(v33);
        if (v34 >= *v28)
        {
          v31 = v34;
        }

        v28[3] = v31;
        if (v32 < 0.0)
        {
          v32 = -v32;
        }

        if (v32 > v31)
        {
          *(this + 1000) = 0;
          goto LABEL_48;
        }

        v29 += 12;
        ++v28;
        --v30;
      }

      while (v30);
      v35 = v27 + 1;
      *(this + 1000) = v35;
      if (*(this + 80) <= v35)
      {
        goto LABEL_23;
      }
    }

    else
    {
      *(this + 1000) = 1;
      v36 = (this + 488);
      v37 = (this + 344);
      v38 = 3;
      do
      {
        v39 = *(v37 - 7);
        *v36 = v39;
        v40 = *v37;
        v37 += 12;
        v41 = v40;
        v36[3] = sqrtf(v41);
        ++v36;
        --v38;
      }

      while (v38);
    }

LABEL_48:
    this[81] = v10 - 1;
  }

LABEL_49:
  v42 = 0;
  v43 = this + 444;
  v44 = (this + 344);
  do
  {
    if (*&v43[v42] + 1000 < a2 && *v44 > 0.0)
    {
      v45 = *v44;
      v46 = sqrtf(v45);
      *v44 = (*(this + 4) + v46) * (*(this + 4) + v46);
      *&v43[v42] = a2;
    }

    v42 += 2;
    v44 += 12;
  }

  while (v42 != 6);
  v47 = 0;
  while (1)
  {
    v48 = *&this[v47 + 344];
    if (v48 <= 0.0 || v48 > *(this + 5))
    {
      break;
    }

    v47 += 48;
    if (v47 == 144)
    {
      *(this + 584) = 1;
      return this;
    }
  }

  return this;
}

uint64_t BlueFin::GlPeSensStats::UpdateTurningState(BlueFin::GlPeSensStats *this, int a2)
{
  v2 = *(this + 81) < *this;
  if (*(this + 584) == 1)
  {
    v2 = 0;
    v3 = (this + 680);
    v4 = 3;
    do
    {
      v5 = *(v3 - 6);
      v6 = *v3;
      v3 += 12;
      v7 = v5 - v6;
      if (v7 < 0.0)
      {
        v7 = -v7;
      }

      v2 |= v7 > *(this + 18);
      --v4;
    }

    while (v4);
  }

  if (v2)
  {
    *(this + 41) = a2;
  }

  *(this + 42) = a2;
  return v2 & 1;
}

uint64_t BlueFin::GlPeKfPool::GetADRDeltaPos(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = a1 + 37304;
  v6 = a1 + 37248;
  do
  {
    BlueFin::GlPeNavGnssState::GlPeNavGnssState(v8);
    BlueFin::GlPeNavGnssState::operator=(v5, v8);
    result = (*(**(v6 + v4) + 384))();
    if (result)
    {
      result = (*(**(v6 + v4) + 304))(*(v6 + v4), v5, a3);
    }

    v4 += 8;
    v5 += 528;
  }

  while (v4 != 24);
  return result;
}

uint64_t BlueFin::GlPeNavGnssKF::GetADRDeltaPos(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v217 = v2;
  v218 = v3;
  v4 = v1;
  v316[23] = *MEMORY[0x29EDCA608];
  v5 = &v231 + 8;
  v231 = xmmword_298A43F70;
  v229 = &v232;
  v230 = &v233;
  v233 = 0;
  for (i = 1; i != 22; ++i)
  {
    v230[i] = v5;
    v5 += 96;
  }

  v226 = v228;
  v227 = 0x1500000000;
  memset(v228, 0, sizeof(v228));
  v223 = v225;
  v224 = 0x1500000000;
  memset(v225, 0, sizeof(v225));
  v222[0] = 1;
  v221 = v1;
  if ((*(v2 + 1) & 0x20) == 0)
  {
    goto LABEL_187;
  }

  v7 = *(v1[284] + 8);
  v8 = v7 && (*(v1 + *(*v1 - 24) + 200) - v7) >> 5 <= 0x752 && *(v1[281] + 8) != 6;
  v10 = v1[281];
  v214 = v1 + 167;
  if ((*(v10 + 8) - 1) > 1)
  {
    v12 = 49.0;
  }

  else
  {
    v11 = *(v10 + 16);
    v12 = v11 == 2 ? 147.0 : dbl_298A43F80[v11 == 3];
  }

  v4 = v1;
  v9 = *(*(v1[5] + 8) + 8) + *(*(v1[5] + 24) + 24);
  if ((*(*v1 + 56))(v1) < 0xF || v8 || v9 > v12)
  {
    goto LABEL_187;
  }

  v13 = *v221;
  if (*(v221 + *(*v221 - 24) + 242) != 1)
  {
    goto LABEL_187;
  }

  v14 = 0;
  v297[1] = 0xC0000000CLL;
  memset(v298, 0, sizeof(v298));
  v299 = 0;
  v297[0] = v298;
  v292 = &v294;
  v293 = 0x1500000000;
  v294 = 0u;
  memset(v295, 0, sizeof(v295));
  memset(v296, 0, 32);
  do
  {
    v15 = &(&v300)[v14];
    *(v15 + 32) = 0;
    *(v15 + 9) = -1;
    *(v15 + 20) = 575;
    v14 += 7;
  }

  while (v14 != 147);
  v16 = v221 + *(v13 - 24);
  v17 = *(v16 + 11);
  v18 = **(v221 + 280);
  v266 = v297;
  v267 = v16 + 8;
  v268 = v17;
  v269 = v18;
  v270 = 0x4C100000003;
  v271 = v16 + 104;
  v272 = 0;
  v273 = v16 + 152;
  v274 = 0u;
  v275 = 0u;
  v276 = 0;
  v277 = 0x4008000000000000;
  v234 = &v292;
  v235 = &v223;
  *&v236 = &v229;
  *(&v236 + 1) = &v226;
  v237 = 0u;
  v238 = 0u;
  v239 = 0;
  v19 = *(v221 + 26);
  BlueFin::GlPeNavMeasSelect::GlPeNavMeasSelect(&v240, *(v221 + 2), *(v221 + 1));
  BlueFin::GlSetBase::GlSetBase(&v260, &v261 + 1, 0x13u, (*(v221 + 1) + 184));
  BlueFin::GlPeNavMeasSelect::SelectADR(&v240, &v260);
  v258 = &v259[4];
  v259[0] = 19;
  memset(&v259[4], 0, 76);
  BlueFin::GlSetBase::GlSetBase(v284, v284 + 3, 0x13u, (*(v221 + 1) + 184));
  v255 = v257;
  v256 = 8;
  memset(v257, 0, 32);
  bzero(&v312, 0x320uLL);
  for (j = 0; j != 1200; j += 12)
  {
    v21 = &v308[j];
    *v21 = 0;
    *(v21 + 1) = -1;
    *(v21 + 4) = 575;
  }

  if (v19)
  {
    v22 = 21;
  }

  else
  {
    v22 = 12;
  }

  v219 = v22;
  v307 = 0;
  memset(v306, 0, sizeof(v306));
  v250 = v261;
  memcpy(v254, v260, 4 * v261);
  v252 = 0;
  v251 = 0;
  v253 = v254[0];
  BlueFin::GlSetIterator::operator++(&v250);
  v24 = 0;
  if (v251 != v250)
  {
    v24 = 0;
    do
    {
      v279 = 0;
      v280 = 0;
      HIDWORD(v282) = -1;
      v281 = xmmword_298A419D0;
      LOWORD(v283) = 0;
      BYTE2(v283) = 0;
      LOBYTE(v282) = 0;
      DWORD1(v282) = -1;
      WORD4(v282) = 575;
      if (v252 >= 0x23FuLL)
      {
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
      }

      v25 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v252;
      v26 = *v25;
      LODWORD(v25) = v25[1];
      LOBYTE(v246) = v26;
      HIDWORD(v246) = v25;
      v247 = v252;
      if (BlueFin::GlPeNavUtil::PackSkfMeas_ADR_SignalId(v221, &v279, &v246, 3) && ((*(*&v284[0] + 4 * (v247 >> 5)) >> (v247 & 0x1F)) & 1) != 0)
      {
        *(&v312 + v24) = -*(BlueFin::GlPeMsmtMgr::GetPeMeas(*(v221 + 1), &v246, 0) + 104);
        v27 = &v308[12 * v24];
        if (v27 != &v246)
        {
          *v27 = v246;
          *(v27 + 1) = HIDWORD(v246);
          *(v27 + 4) = v247;
        }

        ++v24;
      }

      BlueFin::GlSetIterator::operator++(&v250);
    }

    while (v251 != v250 && v24 <= 0x63u);
  }

  BlueFin::GlSortDoubles(&v312, v24, v306, v23);
  v28 = 0;
  v29 = 0;
  v30 = v24;
  v31 = &v300;
  v215 = v30;
  do
  {
    if (v28 && v29 > 5)
    {
      break;
    }

    if (v30)
    {
      v32 = v306;
      while (1)
      {
        v33 = *v32++;
        v34 = &v308[12 * v33];
        if (((*&v255[(*v34 >> 3) & 0x1C] >> (*v34 & 0x1F)) & 1) == 0)
        {
          if (BlueFin::GlPeNavUtil::PackSkfMeas_ADR_SignalId(v221, v31, v34, v28))
          {
            *&v255[(*v34 >> 3) & 0x1C] |= 1 << *v34;
            v31 += 7;
            v258[v34[4] >> 5] |= 1 << v34[4];
            if (v219 == ++v29)
            {
              break;
            }
          }
        }

        if (!--v30)
        {
          goto LABEL_41;
        }
      }

      v29 = v219;
    }

LABEL_41:
    ++v28;
    v30 = v215;
  }

  while (v28 != 3);
  v35 = 0;
  v36 = &v260[4 * v261 - 4];
  do
  {
    if (*v36)
    {
      v37 = *v36 - (((*v36 >> 1) & 0x5B6DB6DB) + ((*v36 >> 2) & 0x9249249));
      v35 = ((v37 + (v37 >> 3)) & 0xC71C71C7) + v35 - 63 * (((v37 + (v37 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    v36 -= 4;
  }

  while (v36 >= v260);
  v38 = v258;
  v39 = v259[0];
  if ((v35 & 0xFFFC) == 0)
  {
    bzero(v258, ((4 * v259[0] + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  }

  v40 = 0;
  v41 = &v38[v39 - 1];
  do
  {
    if (*v41)
    {
      v42 = *v41 - (((*v41 >> 1) & 0x5B6DB6DB) + ((*v41 >> 2) & 0x9249249));
      v40 = ((v42 + (v42 >> 3)) & 0xC71C71C7) + v40 - 63 * (((v42 + (v42 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    --v41;
  }

  while (v41 >= v38);
  v43 = v40;
  if (!v40)
  {
    v222[0] = 1;
    v46 = &v308[12];
    *v308 = &v308[12];
    v51 = 4;
    v308[8] = 4;
    *&v308[20] = 0;
    *&v308[12] = 0;
    v50 = v221;
LABEL_67:
    v52 = v51 - 1;
    v53 = v46 + 1;
    while (1)
    {
      if (*v53++)
      {
        goto LABEL_63;
      }

      if (!--v52)
      {
        goto LABEL_70;
      }
    }
  }

  if (*(&v303 + 14 * v40 - 11) == -1)
  {
    DeviceFaultNotify("glpe_navgnsskf.cpp", 439, "getMeasForADR", "cNbTotalKfMeas==0 || pSkfMeasIn[cNbTotalKfMeas-1].eMeasType != SKF_MEAS_INVALID");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_navgnsskf.cpp", 439, "cNbTotalKfMeas==0 || pSkfMeasIn[cNbTotalKfMeas-1].eMeasType != SKF_MEAS_INVALID");
  }

  if (v40 > v219)
  {
    DeviceFaultNotify("glpe_navgnsskf.cpp", 440, "getMeasForADR", "cNbTotalKfMeas <= ulMaxMeas");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_navgnsskf.cpp", 440, "cNbTotalKfMeas <= ulMaxMeas");
  }

  v44 = 0;
  v45 = 0;
  v222[0] = 1;
  v46 = &v308[12];
  *v308 = &v308[12];
  v308[8] = 4;
  *&v308[20] = 0;
  *&v308[12] = 0;
  v47 = &v303 + 3;
  do
  {
    if (*v47 == 10)
    {
      v48 = v222[0];
      if (v222[0] - 576 <= 0xFFFFFDC0)
      {
        DeviceFaultNotify("glsignalid.h", 497, "push_back", "(m_maxIndex - m_minIndex) < _DIM(m_otSignalIdsObjects)");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 497, "(m_maxIndex - m_minIndex) < _DIM(m_otSignalIdsObjects)");
      }

      v49 = *(v47 - 2);
      ++v222[0];
      *BlueFin::GlSignalIdList::operator[](v222, v48) = v49;
      v46 = *v308;
      *(*v308 + 4 * (v44 >> 21)) |= 1 << v45;
    }

    ++v45;
    v44 += 0x10000;
    v47 += 14;
  }

  while (v43 != v45);
  v50 = v221;
  if (!*v46)
  {
    v51 = v308[8];
    if (v308[8] < 2u)
    {
      goto LABEL_70;
    }

    goto LABEL_67;
  }

LABEL_63:
  if (BlueFin::GlSetBase::Highest(v308) >= 0x15)
  {
    DeviceFaultNotify("glpe_navgnsskf.cpp", 2290, "ComputeZRH", "otMeasArrayIx.IsEmpty() || (GlIntU32)otMeasArrayIx.Highest() < _DIM(pastADRMeas)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_navgnsskf.cpp", 2290, "otMeasArrayIx.IsEmpty() || (GlIntU32)otMeasArrayIx.Highest() < _DIM(pastADRMeas)");
  }

LABEL_70:
  if ((*(**(v50 + 2) + 16))(*(v50 + 2), &v266, &v234, &v300, v308))
  {
    v4 = v221;
    goto LABEL_187;
  }

  v4 = v221;
  v56 = *(v221 + 281);
  v57 = *(v56 + 8);
  if ((v57 - 3) >= 4)
  {
    v58 = 5.0;
  }

  else
  {
    v58 = 7.0;
  }

  v59 = v57 - 1;
  v60 = v59 <= 1 && (*(v56 + 16) & 0xFFFFFFFE) == 2;
  v61 = *(v221 + 1);
  if (*v61 == -7200001 || ((v62 = v61[1], v63 = *v61 - v62, v62 != -7200001) ? (_ZF = v63 == -7200001) : (_ZF = 1), !_ZF ? (_CF = v222[0] >= 2) : (_CF = 0), !_CF))
  {
LABEL_187:
    if (((*(*v4 + 64))(v4) / (*(v221 + 546) * 1000.0)) >= 2 && (*v217 & 0x80000) != 0)
    {
      BlueFin::GlPeNavGnssKF::Propagate(v221);
      BlueFin::GlPeNavGnssState::GlPeNavGnssState(v308);
      BlueFin::GlPeNavGnssKF::AddProcessNoise(v221, v308, *(v221 + *(*v221 - 24) + 200), ((*v217 >> 8) & 1), 0, 0, (*v217 & 0x30000) != 0, v173, v213);
    }

    v222[0] = 1;
    goto LABEL_191;
  }

  if (DWORD1(v231) != 12)
  {
    goto LABEL_186;
  }

  v66 = v231;
  if (v231 < 4)
  {
    goto LABEL_186;
  }

  if (v222[0] - 1 != v231)
  {
    DeviceFaultNotify("glpe_navgnsskf.cpp", 485, "ADR2DeltaPos", "otSignalIdsUsed.Cnt() == (GlIntU32)otH.GetRowSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_navgnsskf.cpp", 485, "otSignalIdsUsed.Cnt() == (GlIntU32)otH.GetRowSize()");
  }

  *v55.i32 = v63 / 1000.0;
  v68 = v59 < 2 || v231 == 4;
  v69 = *(v221 + 26);
  if (v69 == 1)
  {
    v70 = v221 + *(*v221 - 24);
    v71 = vmulq_n_f64(*(v70 + 104), *v55.i32);
    v72 = *(v70 + 15) * *v55.i32;
  }

  else
  {
    v73.f64[0] = *(v221 + 167);
    v74.f64[0] = *(v221 + 168);
    v74.f64[1] = *(v221 + 172);
    v73.f64[1] = *(v221 + 171);
    v71 = vmlaq_n_f64(vmulq_f64(v74, 0), v73, (*v55.i32 * *(v221 + 331)));
    v72 = -(*v55.i32 * *(v221 + 332));
  }

  *&v308[8] = 0x400000004;
  memset(&v308[16], 0, 40);
  *v308 = &v308[16];
  v300 = &v302;
  v301 = 0x400000000;
  v304 = 0;
  v302 = 0u;
  v303 = 0u;
  v75 = *(v221 + 5);
  v76 = *(v75[4] + 32);
  if ((v69 & 1) == 0)
  {
    v76 = v76 * (*(v221 + 331) * *(v221 + 331));
  }

  v77 = *(v75[8] + 64);
  v78 = *(v75[6] + 48);
  *(&v302 + 1) = *(v75[2] + 16);
  *&v303 = v76;
  *(&v303 + 1) = v78;
  v304 = v77;
  *&v308[24] = v71;
  *&v308[40] = v72;
  v216 = v55;
  *&v220 = *v55.i32;
  *&v308[48] = *(v221 + *(*v221 - 24) + 152) * *v55.i32;
  v79 = v68 ? 1.0 : 5.0;
  v80 = 0.0;
  do
  {
    *(&v312 + 1) = 0x400000004;
    v313 = 0u;
    v314 = 0u;
    v315 = 0.0;
    *&v312 = &v313;
    v241 = 0x400000004;
    v242 = 0u;
    v243 = 0u;
    v244 = 0.0;
    v240 = &v242;
    v81 = *&v226[8 * v66];
    *&v226[8 * v66] = v81 * 9.0;
    v82 = v230[v66];
    *(&v313 + 1) = *(v82 + 16);
    *(&v242 + 1) = *(&v313 + 1) * v300[1];
    *&v314 = *(v82 + 32);
    *&v243 = *&v314 * v300[2];
    *(&v314 + 1) = *(v82 + 48);
    *(&v243 + 1) = *(&v314 + 1) * v300[3];
    v315 = *(v82 + 64);
    v244 = v315 * v300[4];
    v83 = BlueFin::SKFVector::dot(&v312, &v240);
    v84 = BlueFin::SKFVector::dot(&v312, v308);
    v85 = vabdd_f64(v84, *&v223[8 * v66]);
    if (v85 > v79 || v85 / sqrt(v81 + v83) >= 50.0)
    {
      v86 = 8 * v66;
      BlueFin::BigMatrix::RemoveRow(&v229, v66);
      v87 = v227;
      if (v227 > v66)
      {
        v88 = &v226[v86 + 8];
        v89 = v227 - v66;
        do
        {
          *(v88 - 1) = *v88;
          ++v88;
          --v89;
        }

        while (v89);
      }

      LODWORD(v227) = v87 - 1;
      v90 = v224;
      if (v224 > v66)
      {
        v91 = &v223[v86 + 8];
        v92 = v224 - v66;
        do
        {
          *(v91 - 1) = *v91;
          ++v91;
          --v92;
        }

        while (v92);
      }

      LODWORD(v224) = v90 - 1;
      BlueFin::GlSignalIdList::Remove(v222, v66);
    }

    else
    {
      v80 = v80 + *&v226[8 * v66];
    }

    v93 = v66-- <= 1;
  }

  while (!v93);
  v4 = v221;
  if (DWORD1(v231) != 12 || (v94 = v231, v231 < 4))
  {
LABEL_186:
    *(v218 + 240) = 0;
    goto LABEL_187;
  }

  v95 = v80 / v231;
  v96 = &v302 + 8;
  v302 = xmmword_298A43F90;
  v300 = &v303;
  v301 = &v305;
  v305 = 0;
  for (k = 8; k != 176; k += 8)
  {
    *(v301 + k) = v96;
    v96 += 32;
  }

  BlueFin::BigMatrix::Null(&v300, v94, 4);
  BlueFin::SKFVectorDim<21>::SKFVectorDim(v297, v231);
  v98 = v231;
  if (v231 >= 1)
  {
    v99 = (v297[0] + 8);
    v100 = (v226 + 8);
    v101 = (v301 + 8);
    v102 = v230 + 1;
    do
    {
      v104 = *v102++;
      v103 = v104;
      v105 = v104[2];
      v106 = *v101++;
      v106[1] = v105;
      v106[2] = v103[4];
      v106[3] = v103[6];
      v106[4] = v103[8];
      v107 = *v100++;
      *v99++ = 1.0 / v107;
      --v98;
    }

    while (v98);
  }

  if (BlueFin::GlUtils::m_ucEnabled)
  {
    BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
  }

  v108 = &v242 + 8;
  v242 = xmmword_298A41E80;
  v240 = &v243;
  v241 = &v245;
  v245 = 0;
  for (m = 8; m != 40; m += 8)
  {
    *(v241 + m) = v108;
    v108 += 32;
  }

  v110 = &v294 + 8;
  v294 = xmmword_298A41E80;
  v292 = v295;
  v293 = v296;
  v296[0] = 0;
  for (n = 8; n != 40; n += 8)
  {
    *(v293 + n) = v110;
    v110 += 32;
  }

  v234 = &v236;
  v235 = 0x400000000;
  v236 = 0u;
  v237 = 0u;
  *&v238 = 0;
  v112 = &v308[24];
  *&v308[24] = 0x1500000004;
  *v308 = &v308[32];
  *&v308[8] = &v310;
  v113 = 8;
  v310 = 0;
  do
  {
    *(*&v308[8] + v113) = v112;
    v112 += 168;
    v113 += 8;
  }

  while (v113 != 40);
  v114 = DWORD1(v302);
  *&v308[16] = DWORD1(v302);
  *&v308[20] = v302;
  if (v302 >= 1)
  {
    v115 = v297[0];
    v116 = v301;
    v117 = v302 + 1;
    v118 = *&v308[8] + 8;
    v119 = 1;
    do
    {
      if (v114 >= 1)
      {
        v120 = *(v115 + 8 * v119);
        v121 = (*(v116 + 8 * v119) + 8);
        v122 = v118;
        v123 = (v114 + 1) - 1;
        do
        {
          v124 = *v121++;
          v125 = v120 * v124;
          v126 = *v122++;
          *(v126 + 8 * v119) = v125;
          --v123;
        }

        while (v123);
      }

      ++v119;
    }

    while (v119 != v117);
  }

  BlueFin::BigMatrix::mult_sym(&v240, v308, &v300);
  BlueFin::SKFVector::mult(&v234, v308, &v223);
  if (!BlueFin::BigMatrix::inv(&v240, &v292, 0))
  {
    v4 = v221;
    goto LABEL_186;
  }

  v291 = 0;
  v279 = &v281;
  v280 = 0x400000000;
  v281 = 0u;
  v282 = 0u;
  v283 = 0;
  BlueFin::SKFVector::mult(&v279, &v292, &v234);
  if (*(v221 + 26) == 1)
  {
    BlueFin::Matrix::Matrix(v308, &v292);
    v287 = *&v308[64];
    v288 = *&v308[80];
    v289 = *&v308[96];
    v290 = *&v308[112];
    v284[0] = *v308;
    v284[1] = *&v308[16];
    v285 = *&v308[32];
    v286 = *&v308[48];
    v291 = v309;
  }

  else
  {
    v309 = 0x400000004;
    *v308 = *v214;
    *&v308[16] = *(v221 + 169);
    *&v308[24] = 0;
    *&v308[32] = v214[2];
    *&v308[48] = *(v221 + 173);
    *&v308[56] = 0;
    *&v308[64] = v214[4];
    *&v308[80] = *(v221 + 177);
    memset(&v308[88], 0, 32);
    *&v308[120] = 0x3FF0000000000000;
    BlueFin::BigMatrix::ReShape(&v292, 4, 4);
    BlueFin::Matrix::Matrix(&v312, &v292);
    v278 = 0;
    BlueFin::Matrix::mult(&v266, &v312, 1, v308, v127);
    BlueFin::Matrix::mult(v284, v308, &v266);
    if (BlueFin::GlUtils::m_ucEnabled)
    {
      BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
      if (BlueFin::GlUtils::m_ucEnabled)
      {
        BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
      }
    }
  }

  if (BlueFin::GlUtils::m_ucEnabled)
  {
    BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
    if (BlueFin::GlUtils::m_ucEnabled)
    {
      BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
    }
  }

  v4 = v221;
  v128 = *v221;
  v129 = (v221 + *(*v221 - 24));
  v130 = v279;
  v131 = *(v279 + 3);
  v312 = *(v279 + 8);
  *&v313 = v131;
  BlueFin::ned2lla(v129 + 1, &v312, v308);
  *(v218 + 8) = *v308;
  *(v218 + 24) = *&v308[16];
  v132 = *(v130 + 24) / *&v220;
  *(v218 + 104) = vdivq_f64(*(v130 + 8), vdupq_lane_s64(v220, 0));
  *(v218 + 120) = v132;
  *(v218 + 240) = 1;
  v133.f64[0] = *v284;
  v134 = *(&v285 + 1);
  v135 = *v284 + *(&v285 + 1);
  v136 = (*v284 + *(&v285 + 1)) / *&v220;
  *(v218 + 128) = sqrtf(v136);
  v137 = *&v288;
  v138 = *&v288;
  *(v218 + 140) = sqrtf(v138) / *v216.i32;
  v139 = *(v221 + 26);
  v140 = *(v221 + 5);
  _Q3.f64[0] = v133.f64[0] + *(v140[1] + 8) + *(v140[3] + 24);
  v142.f64[0] = v134;
  v142.f64[1] = v137;
  _Q3.f64[1] = *(v140[5] + 40);
  v143 = vsqrt_f32(vcvt_f32_f64(vaddq_f64(v142, _Q3)));
  __asm { FMOV            V3.2S, #1.0 }

  *(v218 + 80) = vmaxnm_f32(v143, *&_Q3.f64[0]);
  if (v139 == 1)
  {
    v133.f64[1] = v134;
    *(v218 + 132) = vsqrt_f32(vdiv_f32(vcvt_f32_f64(v133), vdup_lane_s32(v216, 0)));
  }

  *(v218 + 88) = *(v221 + *(v128 - 24) + 88) + *(v130 + 32);
  v146 = *(&v290 + 1);
  v147 = *(v140[7] + 56) + *(&v290 + 1);
  *(v218 + 96) = sqrtf(v147);
  v148 = *(v130 + 32) / *&v220;
  *(v218 + 152) = v148;
  v149 = v146;
  *(v218 + 160) = sqrtf(v149 / *v216.i32);
  v150 = *(v130 + 8);
  v151 = *(v130 + 16);
  v152 = atan2(v151, v150);
  if (v152 < 0.0)
  {
    v152 = v152 + 6.28318531;
  }

  v153 = v135 / v95;
  if (sqrtf(v153) <= v58 && (v154 = (v221 + *(v128 - 24)), vabdd_f64(v154[19], v148) <= 3.0) && vabdd_f64(v154[15], v132) <= 1.0)
  {
    if (v231 < 5)
    {
      v155 = 0;
      v156 = 1;
    }

    else
    {
      v182 = v152;
      v183 = &v313 + 8;
      v313 = xmmword_298A43F90;
      *&v312 = &v314;
      *(&v312 + 1) = v316;
      v316[0] = 0;
      for (ii = 8; ii != 176; ii += 8)
      {
        *(*(&v312 + 1) + ii) = v183;
        v183 += 32;
      }

      BlueFin::BigMatrix::mult(&v312, &v300, &v292);
      v185 = &v308[24];
      *&v308[16] = xmmword_298A43FA0;
      *v308 = &v308[32];
      *&v308[8] = &v311;
      v311 = 0;
      for (jj = 8; jj != 176; jj += 8)
      {
        *(*&v308[8] + jj) = v185;
        v185 += 168;
      }

      BlueFin::BigMatrix::mult(v308, &v312, 1, &v300);
      v187 = *&v308[16];
      if (*&v308[16] >= 1)
      {
        v188 = v226;
        v189 = *&v308[8];
        do
        {
          *(*(v189 + 8 * v187) + 8 * v187) = *(*(v189 + 8 * v187) + 8 * v187) - *&v188[8 * v187];
          v93 = v187-- > 1;
        }

        while (v93);
      }

      BlueFin::SKFVectorDim<21>::SKFVectorDim(&v266, v231);
      BlueFin::SKFVectorDim<21>::SKFVectorDim(v306, v231);
      v193 = v231;
      if (v231 >= 1)
      {
        do
        {
          v261 = 0x400000004;
          v264 = 0;
          v262 = 0u;
          v263 = 0u;
          v260 = &v262;
          v194 = v230[v193];
          v195 = v194[4];
          *(&v262 + 1) = v194[2];
          *&v263 = v195;
          v196 = v194[8];
          *(&v263 + 1) = v194[6];
          v264 = v196;
          v197 = BlueFin::SKFVector::dot(&v260, &v279);
          v198 = v197 - *&v223[8 * v193];
          *&v266[v193] = v198;
          *(v306[0] + 8 * v193) = v198 / sqrt(-*(*(*&v308[8] + 8 * v193) + 8 * v193));
          v93 = v193-- > 1;
        }

        while (v93);
      }

      BlueFin::SKFVector::Median(&v266, v190, v191, v192);
      v203 = v202;
      v204 = v267;
      if (v267 >= 1)
      {
        v205 = (v266 + 1);
        do
        {
          *v205 = fabs(*v205);
          ++v205;
          --v204;
        }

        while (v204);
      }

      BlueFin::SKFVector::Median(&v266, v199, v200, v201);
      v155 = v206 > 0.0299999993;
      v207 = v231;
      if (v231 >= 1)
      {
        do
        {
          if (fabs(*(v306[0] + 8 * v207)) > 3.0)
          {
            BlueFin::GlSignalIdList::Remove(v222, v207);
          }

          v93 = v207-- <= 1;
        }

        while (!v93);
      }

      v208 = fabs(v203) <= 0.00999999978;
      v209 = *(v221 + 2);
      *v259 = &v259[12];
      v259[8] = 8;
      memset(&v259[12], 0, 32);
      *&v259[48] = xmmword_298A41DA0;
      *&v259[64] = vdup_n_s32(0x42C60000u);
      LODWORD(v258) = 0;
      *&v259[72] = 1120272384;
      BlueFin::stDops::stDops(&v260, &v258);
      v265 = v209;
      v210 = *(v221 + *(*v221 - 24) + 200);
      BlueFin::GlSignalIdList::GetSignalIdSet(&v250, v222);
      BlueFin::GlSignalIdSet::GetSvIdSet(&v250, &v255);
      v246 = *(v221 + *(*v221 - 24) + 88);
      v249 = **(v221 + 280);
      v248 = 0;
      v213 = 0;
      BlueFin::GlPeDops::GetDops();
      v212 = *&v259[52] <= v58 && v222[0] - 5 < 0xFFFFFFFC;
      v156 = v212 && v208;
      v130 = v279;
      v150 = *(v279 + 1);
      v151 = *(v279 + 2);
      v152 = v182;
      v4 = v221;
    }
  }

  else
  {
    v155 = 0;
    v156 = 0;
  }

  v157 = v151 * v151 + v150 * v150 + *(v130 + 24) * *(v130 + 24);
  v158 = sqrtf(v157) / *v216.i32;
  v159 = *(*(v4 + 281) + 8);
  if (((v159 - 1) > 1 || v158 <= 7.5) && (v158 > 26.85 ? (v160 = (v159 - 6) >= 0xFFFFFFFD) : (v160 = 0), v160 ? (v161 = 0) : (v161 = 1), (v161 & v156) == 1))
  {
    v162 = *v284;
    v163 = *(&v285 + 1);
    v164 = 0.01;
    if (v159 == 6)
    {
      v164 = 3.0;
    }

    if (*v284 < v164)
    {
      v162 = v164;
    }

    if (*(&v285 + 1) < v164)
    {
      v163 = v164;
    }

    *v284 = v162;
    *(&v285 + 1) = v163;
    if ((v159 - 3) <= 3 && sqrt(*(v218 + 112) * *(v218 + 112) + *(v218 + 104) * *(v218 + 104)) > 1.79999995)
    {
      *(v218 + 128) = vmaxnmq_f32(*(v218 + 128), xmmword_298A43FB0);
    }

    v165 = *(v4 + 5);
    *(v165[1] + 8) = *(v165[1] + 8) + v162 * *&v220;
    *(v165[3] + 24) = *(v165[3] + 24) + *(&v285 + 1) * *&v220;
    *(v165[5] + 40) = *(v165[5] + 40) + *&v288 * *&v220;
    *(v165[7] + 56) = *(v165[7] + 56) + *(&v290 + 1) * *&v220;
    v166 = *v4;
    v167 = v4 + *(*v4 - 24);
    *(v167 + 8) = *(v218 + 8);
    *(v167 + 3) = *(v218 + 24);
    *(v4 + *(v166 - 24) + 88) = *(v218 + 88);
    *(v4 + *(v166 - 24) + 200) = **(v4 + 1);
    v168 = 1;
  }

  else
  {
    v168 = 0;
  }

  v169 = sqrt(*(v218 + 112) * *(v218 + 112) + *(v218 + 104) * *(v218 + 104));
  if (v169 <= 0.5 || (v170 = *(v218 + 128), v169 <= (v170 * 3.0)))
  {
    *(v218 + 241) = 0;
  }

  else
  {
    *(v218 + 241) = 1;
    v171 = v152;
    *(v218 + 176) = v171;
    v172 = v170 / v169;
    *(v218 + 184) = v172;
  }

  if (v60 && (v231 < 6 || v155))
  {
    *(v218 + 240) = 0;
  }

  if ((v168 & 1) == 0)
  {
    goto LABEL_186;
  }

LABEL_191:
  BlueFin::GlSignalIdList::GetSignalIdSet(v308, v222);
  BlueFin::GlSetBase::operator=(v218 + 440, v308);
  *(v218 + 512) = *&v308[72];
  v174 = *&v308[28];
  v175 = *&v308[60];
  *(v218 + 484) = *&v308[44];
  *(v218 + 500) = v175;
  *(v218 + 452) = *&v308[12];
  *(v218 + 468) = v174;
  v176 = *(*v221 - 24);
  BlueFin::GlSignalIdList::GetSignalIdSet(v308, v222);
  v177 = (v221 + v176);
  result = BlueFin::GlSetBase::operator=(v177 + 440, v308);
  v177[32] = *&v308[72];
  v179 = *&v308[28];
  v180 = *&v308[60];
  *(v177 + 484) = *&v308[44];
  *(v177 + 500) = v180;
  *(v177 + 452) = *&v308[12];
  *(v177 + 468) = v179;
  v181 = *MEMORY[0x29EDCA608];
  return result;
}