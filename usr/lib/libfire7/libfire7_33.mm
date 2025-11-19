uint64_t BlueFin::GNSS2CHARCODE(unsigned int a1)
{
  if (a1 == 6)
  {
    v1 = 78;
  }

  else
  {
    v1 = 120;
  }

  if (a1 < 6)
  {
    v1 = 0x454251525347uLL >> (8 * a1);
  }

  return v1 & 0x7F;
}

char *BlueFin::GlPeNmeaGen::FormatNmeaSVD(BlueFin::GlPeNmeaGen *this, const BlueFin::GlMePlatfStat *a2, BlueFin::GlFormat *a3, const char *a4)
{
  v6 = a3 + a4 - 1;
  *a3 = 0;
  v7 = *(a2 + 111);
  if (v6 <= a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = a4;
  }

  v9 = BlueFin::GlFormat::glsnprintf(a3, v8, "$PGLOR,%d,SVD,%d", a4, 0, v7);
  if (*(a2 + 111) >= 1)
  {
    v12 = 0;
    v13 = (a3 + v9);
    v14 = (a2 + 226);
    do
    {
      v15 = *(v14 - 1);
      if ((*(v14 - 1) - 52) > 0xDu)
      {
        v16 = BlueFin::GlSvId::s_aucSvId2prn[v15];
      }

      else
      {
        v16 = (v15 - 59);
      }

      if (v6 <= v13)
      {
        v17 = 0;
      }

      else
      {
        v17 = (v6 + 1 - v13);
      }

      v18 = *v14;
      v14 += 2;
      v13 = (v13 + BlueFin::GlFormat::glsnprintf(v13, v17, ",%02d,%d", v11, v16, v18));
      ++v12;
    }

    while (v12 < *(a2 + 111));
  }

  return BlueFin::GlPeNmeaGen::nmeaAddChksum(a3, v6, v10);
}

char *BlueFin::GlPeNmeaGen::FormatNmeaPFA(uint64_t a1, uint64_t a2, signed int a3, BlueFin::GlFormat *a4, int a5)
{
  LODWORD(v5) = a5;
  v9 = BlueFin::GNSS2CHARCODE(a3);
  v11 = *(a2 + 160);
  if (!v11)
  {
    v5 = v5;
    BlueFin::GlFormat::glsnprintf(a4, v5, "$PGLOR,%d,PFA,%c,Detect,,Xcorr,,Attempt,,ValidPR,,ValidRR,", v10, 0, v9);
    goto LABEL_13;
  }

  v12 = 0;
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      v11 += 16;
      goto LABEL_11;
    }

    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    if (a3 == 5)
    {
      v11 += 24;
      goto LABEL_11;
    }
  }

  else
  {
    if (!a3)
    {
LABEL_11:
      v16 = *v11;
      v15 = v11[1];
      v14 = v11[2];
      v12 = *(v11 + 2);
      v13 = *(v11 + 3);
      goto LABEL_12;
    }

    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    if (a3 == 2)
    {
      v11 += 8;
      goto LABEL_11;
    }
  }

LABEL_12:
  v5 = v5;
  BlueFin::GlFormat::glsnprintf(a4, v5, "$PGLOR,%d,PFA,%c,Detect,%u,Xcorr,%u,Attempt,%u,ValidPR,%u,ValidRR,%u", v10, 0, v9, v15, v14, v16, v12, v13);
LABEL_13:

  return BlueFin::GlPeNmeaGen::nmeaAddChksum(a4, a4 + v5 - 1, v17);
}

void BlueFin::GlPeNmeaGen::FormatNmeaCN0(uint64_t a1, uint64_t a2, BlueFin::GlFormat *a3, int a4)
{
  if (*a2 == 1)
  {
    v8 = BlueFin::GNSS2CHARCODE(BlueFin::GlSvId::s_aucSvId2gnss[*(a2 + 1)]);
    v10 = *(a2 + 1);
    if ((v10 - 52) > 0xD)
    {
      BlueFin::GlFormat::glsnprintf(a3, a4, "$PGLOR,%d,CN0,%c,PRN,%d,BAND,%d,MOM,%.1f,SNV,%.1f,NC,%.1f,NT,%.1f", v9, 0, v8, BlueFin::GlSvId::s_aucSvId2prn[*(a2 + 1)], *(a2 + 2), *(a2 + 4), *(a2 + 8), *(a2 + 12), *(a2 + 16));
    }

    else
    {
      BlueFin::GlFormat::glsnprintf(a3, a4, "$PGLOR,%d,CN0,%c,FCN,%d,BAND,%d,MOM,%.1f,SNV,%.1f,NC,%.1f,NT,%.1f", v9, 0, v8, (v10 - 59), *(a2 + 2), *(a2 + 4), *(a2 + 8), *(a2 + 12), *(a2 + 16));
    }

    BlueFin::GlPeNmeaGen::nmeaAddChksum(a3, a3 + a4 - 1, v11);
  }
}

char *BlueFin::GlPeNmeaGen::FormatNmeaFIN(BlueFin::GlPeNmeaGen *this, uint64_t a2, uint64_t a3, const char *a4, unsigned int a5, BlueFin::GlFormat *a6, int a7, int8x16_t a8, double a9, int8x16_t a10, int8x16_t a11)
{
  if (a4)
  {
    *a8.i64 = a5 * 100.0 / a4 + 0.5;
    *a8.i32 = *a8.i64;
    *a11.i32 = *a8.i32 + (truncf(*a8.i32 * 2.3283e-10) * -4295000000.0);
    v12.i64[0] = 0x8000000080000000;
    v12.i64[1] = 0x8000000080000000;
    a11.i32[0] = vbslq_s8(v12, a11, a8).u32[0];
    if (*a8.i32 > 4295000000.0)
    {
      a8.i32[0] = a11.i32[0];
    }

    if (*a8.i32 < -4295000000.0)
    {
      *a10.i32 = -*a8.i32;
      *a8.i32 = -(*a8.i32 - (truncf(*a8.i32 * -2.3283e-10) * -4295000000.0));
      *a8.i32 = -*vbslq_s8(v12, a8, a10).i32;
    }

    if (*a8.i32 < 0.0)
    {
      v13 = --*a8.i32;
    }

    else
    {
      LOWORD(v13) = *a8.i32;
    }

    v14 = v13;
    v15 = "$PGLOR,%d,FIN,%d,%hu,%u,%hu";
  }

  else
  {
    v14 = 0;
    v15 = "$PGLOR,%d,FIN,%d,%hu,,";
  }

  v16 = a6 + a7 - 1;
  BlueFin::GlFormat::glsnprintf(a6, a7, v15, a4, 2, a2, a3, a4, v14);

  return BlueFin::GlPeNmeaGen::nmeaAddChksum(a6, v16, v17);
}

char *BlueFin::GlPeNmeaGen::FormatNmeaPPS(int a1, uint64_t a2, BlueFin::GlFormat *this, const char *a4)
{
  v6 = this + a4;
  v7 = v6 - 1;
  if (v6 - 1 <= this)
  {
    v8 = 0;
  }

  else
  {
    v8 = a4;
  }

  v9 = BlueFin::GlFormat::glsnprintf(this, v8, "$PGLOR,%d,PPS,%02d%02d%02d,%02d%02d%02d.%03d,", a4, 0, *(a2 + 8), *(a2 + 6), *(a2 + 4) % 0x64u, *(a2 + 10), *(a2 + 12), *(a2 + 14), *(a2 + 16));
  v11 = this + v9;
  v12 = *(a2 + 7248);
  if (v7 <= v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = (v6 - v11);
  }

  if (*(a2 + 7248))
  {
    v14 = BlueFin::GlFormat::glsnprintf((this + v9), v13, "%02d%02d%02d,%02d%02d%02d.%03d,", v10, *(a2 + 7252), *(a2 + 7250), *(a2 + 7248) % 0x64u, *(a2 + 7254), *(a2 + 7256), *(a2 + 7258), *(a2 + 7260));
  }

  else
  {
    v14 = BlueFin::GlFormat::glsnprintf((this + v9), v13, ",,", v10, v29, v31, v33, v35, v37, v39, v40);
  }

  v16 = &v11[v14];
  v17 = *(a2 + 7268);
  if (v17 == 0x7FFFFFFF)
  {
    if (v7 <= v16)
    {
      v18 = 0;
    }

    else
    {
      v18 = (v6 - v16);
    }

    v19 = ",,,,";
  }

  else
  {
    v20 = v17 / 0x3E8;
    v21 = *(a2 + 7264);
    if (v21)
    {
      v20 = sqrtf((v20 * v20 + v21 * v21));
    }

    if (v7 <= v16)
    {
      v18 = 0;
    }

    else
    {
      v18 = (v6 - v16);
    }

    v22 = v20 / 0x3E8uLL;
    v23 = v20 % 0x3E8;
    v24 = 48;
    if (*(a2 + 7274))
    {
      v25 = 49;
    }

    else
    {
      v25 = 48;
    }

    if (*(a2 + 7273))
    {
      v26 = 49;
    }

    else
    {
      v26 = 48;
    }

    if (*(a2 + 7272))
    {
      v24 = 49;
    }

    v36 = v26;
    v38 = v25;
    v32 = v23;
    v34 = v24;
    v30 = v22;
    v19 = "%03d.%03d,%c,%c,%c,";
  }

  BlueFin::GlFormat::glsnprintf(v16, v18, v19, v15, v30, v32, v34, v36, v38);

  return BlueFin::GlPeNmeaGen::nmeaAddChksum(this, v6 - 1, v27);
}

char *BlueFin::GlPeNmeaGen::FormatNmeaSPA(int a1, uint64_t a2, BlueFin::GlFormat *this, const char *a4)
{
  v6 = *(a2 + 12);
  if ((*(a2 + 12) + 67) >= 0x44u)
  {
    v9 = BlueFin::GlSvId::s_aucSvId2gnss[v6];
    if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v9] == 255)
    {
      v8 = 0;
      v7 = -1;
    }

    else
    {
      v7 = 0;
      v8 = (BlueFin::GlSignalId::s_ausGnss2signalId[v9] + v6 - BlueFin::GlSvId::s_aucGnss2minSvId[v9]) < 0x23Fu;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v10 = this + a4;
  v11 = v10 - 1;
  if (v10 - 1 <= this)
  {
    v12 = 0;
  }

  else
  {
    v12 = a4;
  }

  v13 = BlueFin::GlFormat::glsnprintf(this, v12, "$PGLOR,%d,SPA,", a4, 2);
  v15 = this + v13;
  if (v11 <= v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = (v10 - v15);
  }

  v17 = 82;
  if (((v6 - 1) & 0xE0) == 0)
  {
    v17 = 71;
  }

  v19 = &v15[BlueFin::GlFormat::glsnprintf((this + v13), v16, "%c,", v14, v17)];
  if (v11 <= v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = (v10 - v19);
  }

  v22 = (v19 + BlueFin::GlFormat::glsnprintf(v19, v20, "%.3f,dBm,", v18, *(a2 + 224)));
  v23 = *(a2 + 208);
  if (v11 <= v22)
  {
    v24 = 0;
  }

  else
  {
    v24 = (v10 - v22);
  }

  if (v23 == 1.79769313e308)
  {
    v25 = ",Hz";
  }

  else
  {
    if (!v8)
    {
      DeviceFaultNotify("glsignalid.h", 651, "GetRfCarrierFrqHz", "IsValid()");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 651, "IsValid()");
    }

    v26 = BlueFin::GlSvId::s_aucSvId2gnss[v6];
    v27 = BlueFin::GlSignalId::s_adSignalType2ctrFreqHz[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v7 - v7 + v26]];
    if (v26 == 2)
    {
      v28 = (v6 - 59);
      if ((v6 - 52) >= 0xE)
      {
        v28 = -8.0;
      }

      v27 = v27 + v28 * 562500.0;
    }

    v34 = v23 * v27;
    v25 = "%.0f,Hz";
  }

  v29 = (v22 + BlueFin::GlFormat::glsnprintf(v22, v24, v25, v21, *&v34));
  if (v11 <= v29)
  {
    v31 = 0;
  }

  else
  {
    v31 = (v10 - v29);
  }

  BlueFin::GlFormat::glsnprintf(v29, v31, ",AGC_AD_IQ,%d,%d,%.1f,%.1f", v30, *(a2 + 156), *(a2 + 160), *(a2 + 164), *(a2 + 168));

  return BlueFin::GlPeNmeaGen::nmeaAddChksum(this, v10 - 1, v32);
}

char *BlueFin::GlPeNmeaGen::FormatNmeaRTC(uint64_t a1, unsigned int *a2, BlueFin::GlFormat *this, const char *a4)
{
  v6 = this + a4 - 1;
  if (v6 <= this)
  {
    v7 = 0;
  }

  else
  {
    v7 = a4;
  }

  v8 = (this + BlueFin::GlFormat::glsnprintf(this, v7, "$PGLOR,%d,RTC,%s,", a4, 1, a1 + 1767));
  if (v6 > v8)
  {
    v10 = (v6 - v8 + 1);
  }

  else
  {
    v10 = 0;
  }

  BlueFin::GlFormat::glsnprintf(v8, v10, "%lu,%.3f,%+.0f,%.0f,%lu,", v9, *a2, *(a2 + 1), *(a2 + 2), *(a2 + 3), a2[8]);

  return BlueFin::GlPeNmeaGen::nmeaAddChksum(this, v6, v11);
}

unint64_t BlueFin::GlPeNmeaGsvSatsNum::GetNmeaSystemID(uint64_t a1, unsigned int a2)
{
  v2 = 0x6030405020101uLL >> (8 * a2);
  if (a2 >= 7)
  {
    LOBYTE(v2) = 0;
  }

  return v2 & 7;
}

uint64_t BlueFin::GlPePendingBag::operator=(uint64_t a1, uint64_t a2)
{
  v50 = *MEMORY[0x29EDCA608];
  if (a1 != a2)
  {
    *v49 = *(a2 + 52);
    *&v49[12] = *(a2 + 64);
    v4 = *(a2 + 4);
    v5 = *(a2 + 36);
    v6 = *(a2 + 20);
    *a1 = *a2;
    *(a1 + 20) = v6;
    *(a1 + 36) = v5;
    *(a1 + 4) = v4;
    *(a1 + 52) = *v49;
    *(a1 + 64) = *&v49[12];
    BlueFin::GlGnssSet::operator=(a1 + 96, a2 + 96);
    v7 = *(a2 + 288);
    v8 = *(a2 + 304);
    *(a1 + 320) = *(a2 + 320);
    *(a1 + 288) = v7;
    *(a1 + 304) = v8;
    v9 = *(a2 + 340);
    *(a1 + 324) = *(a2 + 324);
    *(a1 + 340) = v9;
    v10 = *(a2 + 356);
    *(a1 + 372) = *(a2 + 372);
    *(a1 + 356) = v10;
    BlueFin::GlSetBase::operator=(a1 + 384, a2 + 384);
    v11 = *(a2 + 396);
    *(a1 + 404) = *(a2 + 404);
    *(a1 + 396) = v11;
    BlueFin::GlSetBase::operator=(a1 + 408, a2 + 408);
    v12 = *(a2 + 420);
    *(a1 + 428) = *(a2 + 428);
    *(a1 + 420) = v12;
    BlueFin::GlSetBase::operator=(a1 + 432, a2 + 432);
    v13 = *(a2 + 444);
    *(a1 + 452) = *(a2 + 452);
    *(a1 + 444) = v13;
    *(a1 + 456) = *(a2 + 456);
    *(a1 + 464) = *(a2 + 464);
    v14 = *(a2 + 480);
    *(a1 + 496) = *(a2 + 496);
    *(a1 + 480) = v14;
    memcpy((a1 + 500), (a2 + 500), 0x158uLL);
    memcpy((a1 + 844), (a2 + 844), 0x13CuLL);
    memcpy((a1 + 1160), (a2 + 1160), 0x13CuLL);
    memcpy((a1 + 1476), (a2 + 1476), 0x13CuLL);
    memcpy((a1 + 1792), (a2 + 1792), 0x108uLL);
    v15 = *(a2 + 2056);
    *(a1 + 2064) = *(a2 + 2064);
    *(a1 + 2056) = v15;
    *(a1 + 2068) = *(a2 + 2068);
    *(a1 + 2072) = *(a2 + 2072);
    *(a1 + 2080) = *(a2 + 2080);
    *(a1 + 3144) = *(a2 + 3144);
    for (i = 56; i != 1080; i += 64)
    {
      v17 = *(a2 + 3136);
      v18 = *(a1 + 3136);
      if (v18 != v17)
      {
        v19 = (v17 + i);
        v20 = (v18 + i);
        v21 = *(v19 - 14);
        v22 = *(v19 - 10);
        *(v20 - 3) = *(v19 - 3);
        *(v20 - 10) = v22;
        *(v20 - 14) = v21;
        *(v20 - 2) = *(v19 - 2);
        *(v20 - 2) = *(v19 - 2);
        *(v20 - 4) = *(v19 - 4);
        *v20 = *v19;
      }
    }

    v23 = 0;
    v24 = *(a2 + 3168);
    *(a1 + 3184) = *(a2 + 3184);
    *(a1 + 3168) = v24;
    v25 = *(a2 + 3192);
    v26 = *(a2 + 3208);
    *(a1 + 3224) = *(a2 + 3224);
    *(a1 + 3192) = v25;
    *(a1 + 3208) = v26;
    v27 = *(a2 + 3232);
    *(a1 + 3248) = *(a2 + 3248);
    *(a1 + 3232) = v27;
    *(a1 + 3252) = *(a2 + 3252);
    v28 = *(a2 + 3336);
    v30 = *(a2 + 3288);
    v29 = *(a2 + 3304);
    *(a1 + 3320) = *(a2 + 3320);
    *(a1 + 3336) = v28;
    *(a1 + 3288) = v30;
    *(a1 + 3304) = v29;
    v32 = *(a2 + 3368);
    v31 = *(a2 + 3384);
    v33 = *(a2 + 3352);
    *(a1 + 3400) = *(a2 + 3400);
    *(a1 + 3368) = v32;
    *(a1 + 3384) = v31;
    *(a1 + 3352) = v33;
    *(a1 + 3272) = *(a2 + 3272);
    *(a1 + 3408) = *(a2 + 3408);
    v34 = *(a2 + 3424);
    *(a1 + 3440) = *(a2 + 3440);
    *(a1 + 3424) = v34;
    v35 = *(a2 + 3512);
    v37 = *(a2 + 3464);
    v36 = *(a2 + 3480);
    *(a1 + 3496) = *(a2 + 3496);
    *(a1 + 3512) = v35;
    *(a1 + 3464) = v37;
    *(a1 + 3480) = v36;
    v39 = *(a2 + 3544);
    v38 = *(a2 + 3560);
    v40 = *(a2 + 3528);
    *(a1 + 3576) = *(a2 + 3576);
    *(a1 + 3544) = v39;
    *(a1 + 3560) = v38;
    *(a1 + 3528) = v40;
    *(a1 + 3448) = *(a2 + 3448);
    *(a1 + 3580) = *(a2 + 3580);
    *(a1 + 3596) = *(a2 + 3596);
    *(a1 + 3600) = *(a2 + 3600);
    *(a1 + 3608) = *(a2 + 3608);
    *(a1 + 3768) = *(a2 + 3768);
    *(a1 + 3624) = *(a2 + 3624);
    *(a1 + 3632) = *(a2 + 3632);
    v41 = *(a2 + 3648);
    v42 = *(a2 + 3664);
    v43 = *(a2 + 3680);
    *(a1 + 3696) = *(a2 + 3696);
    *(a1 + 3680) = v43;
    *(a1 + 3664) = v42;
    *(a1 + 3648) = v41;
    v44 = *(a2 + 3712);
    v45 = *(a2 + 3728);
    v46 = *(a2 + 3744);
    *(a1 + 3760) = *(a2 + 3760);
    *(a1 + 3744) = v46;
    *(a1 + 3728) = v45;
    *(a1 + 3712) = v44;
    do
    {
      *(a1 + 3776 + v23) = *(a2 + 3776 + v23);
      v23 += 8;
    }

    while (v23 != 576);
    *(a1 + 4352) = *(a2 + 4352);
  }

  v47 = *MEMORY[0x29EDCA608];
  return a1;
}

uint64_t BlueFin::GlPePendingBag::TerminateRequest(uint64_t this, BlueFin::GlRequestImpl *a2)
{
  v2 = *(this + 3768);
  if (v2 > 0x47)
  {
    v11 = "m_sReqNum < _DIM(m_aptReqList)";
    DeviceFaultNotify("glpe_pendingbag.cpp", 307, "TerminateRequest", "m_sReqNum < _DIM(m_aptReqList)");
    v12 = 307;
LABEL_16:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_pendingbag.cpp", v12, v11);
  }

  if (!*(this + 3768))
  {
    return this;
  }

  v4 = this;
  v5 = 0;
  for (i = (this + 3784); ; ++i)
  {
    v7 = *(i - 1);
    if (!v7)
    {
      v11 = "pTempReq != nullptr";
      DeviceFaultNotify("glpe_pendingbag.cpp", 312, "TerminateRequest", "pTempReq != nullptr");
      v12 = 312;
      goto LABEL_16;
    }

    if (v7 == a2)
    {
      break;
    }

    if (v2 == ++v5)
    {
      return this;
    }
  }

  v8 = *(a2 + 7);
  if (v8)
  {
    v8(a2);
  }

  this = BlueFin::GlRequestBase::Destroy(a2);
  v9 = *(v4 + 3768);
  if (*(v4 + 3768) > (v5 + 1))
  {
    v10 = ~v5 + v9;
    do
    {
      *(i - 1) = *i;
      ++i;
      --v10;
    }

    while (v10);
  }

  *(v4 + 3768) = v9 - 1;
  return this;
}

uint64_t BlueFin::GlPePendingBag::TerminateAll(uint64_t this)
{
  v1 = *(this + 3768);
  if (v1 > 0x47)
  {
    v7 = "m_sReqNum < _DIM(m_aptReqList)";
    DeviceFaultNotify("glpe_pendingbag.cpp", 330, "TerminateAll", "m_sReqNum < _DIM(m_aptReqList)");
    v8 = 330;
    goto LABEL_10;
  }

  if (*(this + 3768))
  {
    v2 = this;
    v3 = this + 3776;
    while (1)
    {
      v4 = v1 - 1;
      *(v2 + 3768) = v4;
      v5 = *(v3 + 8 * v4);
      *(v3 + 8 * v4) = 0;
      if (!v5)
      {
        break;
      }

      v6 = *(v5 + 56);
      if (v6)
      {
        v6(v5);
      }

      this = BlueFin::GlRequestBase::Destroy(v5);
      v1 = *(v2 + 3768);
      if (v1 <= 0)
      {
        return this;
      }
    }

    v7 = "pReq != nullptr";
    DeviceFaultNotify("glpe_pendingbag.cpp", 335, "TerminateAll", "pReq != nullptr");
    v8 = 335;
LABEL_10:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_pendingbag.cpp", v8, v7);
  }

  return this;
}

uint64_t BlueFin::GlPePendingBag::GetNonInstantaneousRequests@<X0>(uint64_t this@<X0>, _DWORD *a2@<X8>)
{
  v2 = *(this + 3768);
  if (v2 >= 0x48)
  {
    DeviceFaultNotify("glpe_pendingbag.cpp", 387, "GetNonInstantaneousRequests", "m_sReqNum < _DIM(m_aptReqList)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_pendingbag.cpp", 387, "m_sReqNum < _DIM(m_aptReqList)");
  }

  v3 = 0;
  if (*(this + 3768))
  {
    v4 = (this + 3776);
    do
    {
      v5 = *v4;
      if (*v4)
      {
        v6 = *(v5 + 16);
        if (v6 != 1 || *(v5 + 22))
        {
          v3 |= 1 << v6;
        }
      }

      ++v4;
      --v2;
    }

    while (v2);
  }

  *a2 = v3;
  return this;
}

uint64_t BlueFin::GlPePendingBag::GetFactTestItem(BlueFin::GlPePendingBag *this)
{
  v1 = *(this + 1884);
  if (v1 > 0x47)
  {
    v6 = "m_sReqNum < _DIM(m_aptReqList)";
    DeviceFaultNotify("glpe_pendingbag.cpp", 432, "GetFactTestItem", "m_sReqNum < _DIM(m_aptReqList)");
    v7 = 432;
LABEL_12:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_pendingbag.cpp", v7, v6);
  }

  if (!*(this + 1884))
  {
    return 8;
  }

  for (i = (this + 3776); ; ++i)
  {
    v3 = *i;
    if (!*i)
    {
      v6 = "pReq != nullptr";
      DeviceFaultNotify("glpe_pendingbag.cpp", 437, "GetFactTestItem", "pReq != nullptr");
      v7 = 437;
      goto LABEL_12;
    }

    if (v3[4] == 8)
    {
      break;
    }

    if (!--v1)
    {
      return 8;
    }
  }

  v5 = *(*v3 + 360);

  return v5();
}

BOOL BlueFin::GlPePendingBag::HasNILRReq(BlueFin::GlPePendingBag *this)
{
  v1 = *(this + 1884);
  if (v1 > 0x47)
  {
    DeviceFaultNotify("glpe_pendingbag.cpp", 554, "HasNILRReq", "m_sReqNum < _DIM(m_aptReqList)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_pendingbag.cpp", 554, "m_sReqNum < _DIM(m_aptReqList)");
  }

  if (*(this + 1884))
  {
    v2 = this + 3776;
    v3 = 1;
    v4 = *(this + 1884);
    v5 = 1;
    do
    {
      if (*v2 && (*(*v2 + 16) - 1) < 2)
      {
        break;
      }

      v5 = v3++ < v1;
      v2 += 8;
      --v4;
    }

    while (v4);
  }

  else
  {
    return 0;
  }

  return v5;
}

BOOL BlueFin::GlPePendingBag::HasPosReq(BlueFin::GlPePendingBag *this)
{
  v1 = *(this + 1884);
  if (v1 > 0x47)
  {
    DeviceFaultNotify("glpe_pendingbag.cpp", 575, "HasPosReq", "m_sReqNum < _DIM(m_aptReqList)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_pendingbag.cpp", 575, "m_sReqNum < _DIM(m_aptReqList)");
  }

  if (*(this + 1884))
  {
    v2 = this + 3776;
    v3 = 1;
    v4 = *(this + 1884);
    v5 = 1;
    do
    {
      if (*v2 && !*(*v2 + 16))
      {
        break;
      }

      v5 = v3++ < v1;
      v2 += 8;
      --v4;
    }

    while (v4);
  }

  else
  {
    return 0;
  }

  return v5;
}

BOOL BlueFin::GlPeAsstPosReqDataFifo::Get(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1032);
  if (*(a1 + 1032))
  {
    v3 = *(a1 + 1024);
    if (v3 != a2)
    {
      v4 = *v3;
      v5 = v3[1];
      *(a2 + 32) = *(v3 + 4);
      *a2 = v4;
      *(a2 + 16) = v5;
      *(a2 + 40) = *(v3 + 5);
      *(a2 + 48) = *(v3 + 12);
      *(a2 + 52) = *(v3 + 52);
      *(a2 + 56) = *(v3 + 14);
    }

    v6 = *(a1 + 1032) - 1;
    *(a1 + 1032) = v6;
    if (v6)
    {
      memmove(*(a1 + 1024), (*(a1 + 1024) + 64), v6 << 6);
    }
  }

  return v2 != 0;
}

uint64_t (*(*BlueFin::GlPePwrStateMgr::Wait4Me(uint64_t a1, unsigned __int8 *a2))(BlueFin::GlPePwrStateMgr *a1, unsigned __int8 *a2))()
{
  v2 = *a2;
  if ((v2 - 2) < 2)
  {
    return 0;
  }

  if (v2 != 47)
  {
    return BlueFin::GlPePwrStateMgr::PowerSaveMode;
  }

  if (BlueFin::GlPePwrStateMgr::LpExit(a1))
  {
    v5 = "&GlPePwrStateMgr::Wait4Exit";
    v6 = BlueFin::GlPePwrStateMgr::Wait4Exit;
LABEL_9:
    BlueFin::QHsm::tran(a1, v6, v5);
    return 0;
  }

  if (*(a1 + 210) == 1)
  {
    v5 = "&GlPePwrStateMgr::SteadyPowerSave";
    v6 = BlueFin::GlPePwrStateMgr::SteadyPowerSave;
    goto LABEL_9;
  }

  return 0;
}

uint64_t (*BlueFin::GlPePwrStateMgr::PowerSaveMode(BlueFin::GlPePwrStateMgr *a1, unsigned __int8 *a2))()
{
  v2 = *a2;
  switch(v2)
  {
    case 48:
      v3 = 0;
      *(a1 + 208) = a2[1] != 0;
      break;
    case 3:
      return 0;
    case 2:
      *(a1 + 211) = 1;
      BlueFin::GlPePwrStateMgr::ComputeLowPowerState(a1);
      return 0;
    default:
      return BlueFin::QHsm::top;
  }

  return v3;
}

uint64_t BlueFin::GlPePwrStateMgr::LpExit(BlueFin::GlPePwrStateMgr *this)
{
  if (*(this + 208))
  {
    *(this + 248) = 0;
    v8 = 0;
    memset(v6, 0, 13);
    v6[2] = 0;
    v7[0] = 0;
    *(v7 + 6) = 0;
    BlueFin::GlPeKF::GetDataForLowPowerDecision(*(this + 19), v6);
    *(this + 248) = BlueFin::GlPePwrStateMgr::LowPowerAllowed(this, 0, *(this + 209), *(this + 210), *(this + 211), v6);
    v2 = BlueFin::GlPePwrStateMgr::ComputeLowPowerState(this);
    v3 = v2;
    v4 = v2 ^ 1u;
    BlueFin::GlPePwrStateMgr::Print(this, "Exit", v4);
    if ((v3 & 1) == 0)
    {
      *(*(this + 15) + 54844) = 0;
    }
  }

  else
  {
    GlCustomLog(15, "PMM::pe +LpExit disabled must exit\n");
    return 1;
  }

  return v4;
}

uint64_t (*(*BlueFin::GlPePwrStateMgr::Wait4Exit(uint64_t a1, unsigned __int8 *a2))(BlueFin::GlPePwrStateMgr *a1, unsigned __int8 *a2))()
{
  v2 = *a2;
  if ((v2 - 2) < 2)
  {
    return 0;
  }

  if (v2 != 47)
  {
    return BlueFin::GlPePwrStateMgr::PowerSaveMode;
  }

  if (BlueFin::GlPePwrStateMgr::LpExit(a1))
  {
    v5 = "&GlPePwrStateMgr::SteadyNormalMode";
    v6 = BlueFin::GlPePwrStateMgr::SteadyNormalMode;
LABEL_9:
    BlueFin::QHsm::tran(a1, v6, v5);
    return 0;
  }

  if ((*(a1 + 210) & 1) == 0)
  {
    v5 = "&GlPePwrStateMgr::Wait4Me";
    v6 = BlueFin::GlPePwrStateMgr::Wait4Me;
    goto LABEL_9;
  }

  return 0;
}

uint64_t (*(*BlueFin::GlPePwrStateMgr::SteadyPowerSave(uint64_t a1, unsigned __int8 *a2))(BlueFin::GlPePwrStateMgr *a1, unsigned __int8 *a2))()
{
  v2 = *a2;
  if ((v2 - 2) < 2)
  {
    return 0;
  }

  if (v2 != 47)
  {
    return BlueFin::GlPePwrStateMgr::PowerSaveMode;
  }

  if (BlueFin::GlPePwrStateMgr::LpExit(a1))
  {
    v5 = "&GlPePwrStateMgr::Wait4Exit";
    v6 = BlueFin::GlPePwrStateMgr::Wait4Exit;
LABEL_9:
    BlueFin::QHsm::tran(a1, v6, v5);
    return 0;
  }

  if ((*(a1 + 210) & 1) == 0)
  {
    v5 = "&GlPePwrStateMgr::Wait4Me";
    v6 = BlueFin::GlPePwrStateMgr::Wait4Me;
    goto LABEL_9;
  }

  return 0;
}

uint64_t BlueFin::GlPePwrStateMgr::LowPowerAllowed(uint64_t a1, int a2, int a3, int a4, int a5, unsigned __int8 *a6)
{
  v7 = *(a1 + 280);
  if (v7)
  {
    LOBYTE(v8) = v7(a6);
    if (a6[11])
    {
      v9 = 84;
    }

    else
    {
      v9 = 70;
    }

    if (a6[9])
    {
      v10 = 84;
    }

    else
    {
      v10 = 70;
    }

    if (a6[7])
    {
      v11 = 84;
    }

    else
    {
      v11 = 70;
    }

    GlCustomLog(15, "GlPePwrStateMgr::LowPowerAllowed: EnoughGoodPMMSvCnt:%c  GoodForNav:%c  SpeedValid:%c\n", v11, v10, v9);
    GlCustomLog(15, "GlPePwrStateMgr::LowPowerAllowed: User LowPowerAllowed function returned:%c\n");
    return v8 & 1;
  }

  *(a1 + 210) = a4;
  *(a1 + 211) = a5;
  v17 = a6[11];
  v18 = *(a6 + 3);
  v19 = *(a6 + 10);
  v20 = a6[10];
  if (v17 != 1 || v18 >= 1.0 || v19 < -1.0)
  {
    if (a6[10])
    {
      v27 = (*(a6 + 8) - *(a1 + 264)) * 0.001;
      v28 = 0.0;
      if (v27 > 0.0)
      {
        v23 = vabdd_f64(*(a6 + 2), *(a1 + 260));
        if (v23 > 180.0)
        {
          v23 = 360.0 - v23;
        }

        if (v27 < 0.5)
        {
          v27 = 0.5;
        }

        v28 = v23 / v27;
      }

      v24 = 2.0;
      if (a6[2])
      {
        v24 = 5.0;
      }

      if (v18 <= 19.0)
      {
        v24 = 5.0;
      }

      v25 = v28 > v24;
    }

    else
    {
      v25 = 0;
      v27 = 0.0;
      v28 = 0.0;
    }

    v30 = v18 < 10.0 && v19 < -1.0;
    v26 = (v25 | v30 & v17) ^ 1;
  }

  else
  {
    v26 = 1;
    v27 = 0.0;
    v28 = 0.0;
  }

  v31 = *(a6 + 2);
  v32 = v31;
  *(a1 + 260) = v32;
  *(a1 + 264) = *(a6 + 8);
  v33 = v32;
  v34 = v19;
  if (a6[12])
  {
    v35 = 84;
  }

  else
  {
    v35 = 70;
  }

  v65 = v35;
  if (a5)
  {
    v36 = 84;
  }

  else
  {
    v36 = 70;
  }

  if (a4)
  {
    v37 = 84;
  }

  else
  {
    v37 = 70;
  }

  v64 = v36;
  if (a2)
  {
    v38 = 84;
  }

  else
  {
    v38 = 70;
  }

  if (v20)
  {
    v39 = 84;
  }

  else
  {
    v39 = 70;
  }

  GlCustomLog(14, "PMM::KF td:%.3f,TRK:%.1f,%.1f,headRate:%.1f,dAcc:%.1f,speed:%.1f,speedVal:%c,bReportMore:%c,bMeInPMM:%c,bPeInPMM:%c, bIsStatic:%c\n", v27, v33, v31, v28, v34, v18, v39, v38, v37, v64, v65);
  v40 = *a6;
  v41 = a6[5];
  v42 = v40 ^ 1;
  if (v41 == 1)
  {
    v42 = v42 & (*(a6 + 3) > 5.0);
  }

  v43 = 0;
  v44 = v40 & (a6[12] ^ 1) & (a3 ^ 1);
  v45 = a6[1];
  if ((v42 & a3) != 0)
  {
    v46 = a6[1];
  }

  else
  {
    v46 = v42;
  }

  v47 = a6[36] / (a6[37] * 0.01);
  v48 = a6[4];
  if ((v44 & 1) == 0 && (a6[4] & 1) == 0 && v47 > 50.0)
  {
    if (a6[9] != 1 || a6[8] != 1)
    {
      v43 = 0;
      if (v46)
      {
        goto LABEL_67;
      }

LABEL_69:
      v49 = (a6[6] ^ 1) & v43 & v26;
      goto LABEL_70;
    }

    v43 = a6[3];
  }

  if ((v46 & 1) == 0)
  {
    goto LABEL_69;
  }

LABEL_67:
  v49 = 0;
LABEL_70:
  *(a1 + 276) = 0;
  if (*(a1 + 273) == 1 && a5 && a4 && (v41 & 1) != 0)
  {
    *(a1 + 272) = 1;
    if (v49)
    {
      goto LABEL_89;
    }
  }

  else if ((*(a1 + 272) ^ 1 | v49))
  {
    goto LABEL_89;
  }

  if ((v43 ^ 1))
  {
    goto LABEL_89;
  }

  if ((((a4 ^ 1) & a5 | a2) & v26 & v46 & 1) == 0)
  {
    if ((((v28 > 4.0) | v26) & ~v46 & 1) == 0 && a4 && a5)
    {
      v51 = *(a6 + 8);
      v52 = *(a1 + 268);
      if (v52 && (v51 - v52) >= 0x3E9)
      {
        *(a1 + 274) = 0;
        *(a1 + 268) = v51;
      }

      else
      {
        v63 = ++*(a1 + 274);
        *(a1 + 268) = v51;
        if (v63 >= 4)
        {
          LOBYTE(v8) = 0;
          *(a1 + 274) = 0;
          v53 = "CITY";
          *(a1 + 268) = 0;
          if ((v45 & 1) == 0)
          {
            v53 = "DRIVE";
          }

          v54 = 45;
          v50 = "!ped // ";
          goto LABEL_96;
        }
      }

      v50 = "PED // ";
      LOBYTE(v8) = 1;
      goto LABEL_90;
    }

LABEL_89:
    *(a1 + 274) = 0;
    *(a1 + 268) = 0;
    v50 = "";
    LOBYTE(v8) = v49;
    if (v49)
    {
      goto LABEL_90;
    }

    goto LABEL_91;
  }

  v8 = a6[7];
  *(a1 + 274) = 0;
  *(a1 + 268) = 0;
  v50 = "";
  if (v8)
  {
    v50 = "DRIVE // ";
  }

  if (v8)
  {
LABEL_90:
    if (!a2)
    {
      return v8 & 1;
    }
  }

LABEL_91:
  v53 = "DRIVE";
  if (v45)
  {
    v53 = "CITY";
  }

  if (v8)
  {
    v54 = 43;
  }

  else
  {
    v54 = 45;
  }

LABEL_96:
  if (v44)
  {
    v55 = "WALK";
  }

  else
  {
    v55 = "!walk";
  }

  v56 = "!drive";
  if (v46)
  {
    v56 = v53;
  }

  if (a6[6])
  {
    v57 = "DGNSS";
  }

  else
  {
    v57 = "!dgnss";
  }

  if (v48)
  {
    v58 = "TUNNEL";
  }

  else
  {
    v58 = "!tunnel";
  }

  v59 = "!sigdeg";
  if (v47 <= 50.0)
  {
    v59 = "SIGDEG";
  }

  v60 = "!nav";
  if (a6[9])
  {
    v60 = "NAV";
  }

  if (a6[8])
  {
    v61 = "POLAROID";
  }

  else
  {
    v61 = "!polaroid";
  }

  a6[3];
  GlCustomLog(14, "PMM::pe %cLowPowerAllowed = %s(!%s !%s !%s !%s !%s %s %s %s %s)=%s%s%s BasicOk %d\n", v54, v50, v55, v56, v57, v58, v59, v60, v61);
  return v8 & 1;
}

unint64_t BlueFin::GlPePwrStateMgr::Print(unint64_t this, const char *a2, int a3)
{
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    v5 = this;
    this = BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0xE);
    if (this)
    {
      if (*(v5 + 257))
      {
        v6 = 43;
      }

      else
      {
        v6 = 45;
      }

      if (*(v5 + 248))
      {
        v7 = 43;
      }

      else
      {
        v7 = 45;
      }

      v13 = v7;
      if (a3)
      {
        v8 = 43;
      }

      else
      {
        v8 = 45;
      }

      GlCustomLog(14, "PMM::pe %cLp%s %cKF %cFIX %u/%u", v8, a2, v13, v6, *(v5 + 240), *(v5 + 244));
      if (*(v5 + 208) == 1)
      {
        if (*(v5 + 210))
        {
          LODWORD(v9) = 43;
        }

        else
        {
          LODWORD(v9) = 45;
        }

        if (*(v5 + 210))
        {
          v10 = 43;
        }

        else
        {
          v10 = 45;
        }

        if ((**(v5 + 216) & 2) != 0)
        {
          v9 = v9;
        }

        else
        {
          v9 = 45;
        }

        if (*(*(v5 + 120) + 54557))
        {
          v11 = "eph";
        }

        else
        {
          v11 = "alm";
        }

        if (*(v5 + 258))
        {
          v12 = 43;
        }

        else
        {
          v12 = 45;
        }

        GlCustomLog(14, "  %cPMM{%cME %c%s}", v9, v10, v12, v11);
      }

      return GlCustomLog(14, "\n");
    }
  }

  return this;
}

uint64_t BlueFin::GlPeReqBag::TerminateAll(BlueFin::GlPeReqBag *this)
{
  v2 = 0;
  v4 = this + 3233;
  v5 = *(this + 3233);
  *(this + 3233) = 0;
  do
  {
    result = *(this + v2);
    if (result)
    {
      result = (*(*result + 280))(result);
    }

    v2 += 8;
  }

  while (v2 != 576);
  *v4 = v5;
  return result;
}

void BlueFin::GlPeReqBagCleanUpProtector::~GlPeReqBagCleanUpProtector(BlueFin::GlPeReqBagCleanUpProtector *this)
{
  *this = &unk_2A1F13AA0;
  **(this + 1) = *(this + 16);
}

{
  *this = &unk_2A1F13AA0;
  **(this + 1) = *(this + 16);
  JUMPOUT(0x29C292F70);
}

uint64_t BlueFin::GlPeReqBag::TerminateRequest(uint64_t this, BlueFin::GlRequestImpl *a2)
{
  v2 = this;
  v3 = 0;
  v4 = (this + 3233);
  v8 = (this + 3233);
  v5 = *(this + 3233);
  v9 = v5;
  *(this + 3233) = 0;
  while (1)
  {
    v6 = *(this + v3);
    if (v6)
    {
      if (*(v6 + 8) == a2)
      {
        break;
      }
    }

    v3 += 8;
    if (v3 == 576)
    {
      goto LABEL_7;
    }
  }

  v7 = BlueFin::GlRequestImpl::GlRequestTypeToString(a2);
  GlCustomLog(14, "GlPeReqBag: terminate request %s\n", v7);
  this = (*(**(v2 + v3) + 280))(*(v2 + v3));
  v5 = v9;
  v4 = v8;
LABEL_7:
  *v4 = v5;
  return this;
}

uint64_t BlueFin::GlPeReqBag::HandleFactoryTestFailure(BlueFin::GlPeReqBag *this, const BlueFin::GlMePlatfStat *a2)
{
  result = GlCustomLog(14, "GlPeReqBag:%s \n", "HandleFactoryTestFailure");
  for (i = 0; i != 576; i += 8)
  {
    v6 = *(this + i);
    if (v6)
    {
      if (*(*(v6 + 8) + 16) == 8)
      {
        GlCustomLog(14, " GlPeReqBag::Calling HandleFailure\n");
        result = (*(**(this + i) + 176))(*(this + i), a2);
      }
    }
  }

  return result;
}

uint64_t BlueFin::GlPeReqBag::GetAccuracymask(BlueFin::GlPeReqBag *this)
{
  v1 = this + 3233;
  v6 = this + 3233;
  v2 = *(this + 3233);
  v7 = v2;
  *(this + 3233) = 0;
  v3 = *(this + 329);
  if ((v3 & 0x80000000) != 0)
  {
    if (v3 == -1)
    {
      result = 0xFFFFFFFFLL;
    }

    else
    {
      result = *(this + 812);
    }
  }

  else
  {
    v4 = *(*(this + v3) + 8);
    result = (*(*v4 + 152))(v4);
    v2 = v7;
    v1 = v6;
  }

  *v1 = v2;
  return result;
}

uint64_t BlueFin::GlPeReqBag::GetFactTestSvIds(BlueFin::GlPeReqBag *this, void **a2)
{
  v33 = &unk_2A1F13AA0;
  v34 = this + 3233;
  v35 = *(this + 3233);
  *(this + 3233) = 0;
  bzero(*a2, ((4 * *(a2 + 8) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *(this + v4);
    if (!v6)
    {
      goto LABEL_59;
    }

    v7 = *(v6 + 8);
    if (v7[4] != 8)
    {
      goto LABEL_59;
    }

    (*(*v7 + 240))(&v32);
    if (v32 != 255)
    {
      if (v32 - 189 < 0xFFFFFF44 || (v8 = BlueFin::GlSvId::s_aucSvId2gnss[v32], BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v8] == 255))
      {
        v9 = 575;
      }

      else
      {
        v9 = (BlueFin::GlSignalId::s_ausGnss2signalId[v8] + v32 - BlueFin::GlSvId::s_aucGnss2minSvId[v8]);
      }

      v5 = 1;
      *(*a2 + (v9 >> 5)) |= 1 << v9;
    }

    (*(**(v6 + 8) + 248))(&v31);
    if (v31 != 255)
    {
      if (v31 - 189 < 0xFFFFFF44 || (v10 = BlueFin::GlSvId::s_aucSvId2gnss[v31], BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v10] == 255))
      {
        v11 = 575;
      }

      else
      {
        v11 = (BlueFin::GlSignalId::s_ausGnss2signalId[v10] + v31 - BlueFin::GlSvId::s_aucGnss2minSvId[v10]);
      }

      v5 = 1;
      *(*a2 + (v11 >> 5)) |= 1 << v11;
    }

    (*(**(v6 + 8) + 272))(&v30);
    if (v30 != 255)
    {
      v12 = *(this + 72);
      if ((*(v12 + 48) - 3) >= 2)
      {
        if (*(v12 + 26294) == 1 && *(v12 + 88) >= 37)
        {
          v13 = (*(*(v12 + 26232) + 1) << 27 >> 31) & 3;
        }

        else
        {
          v13 = 0;
        }

        if (v30 - 189 < 0xFFFFFF44 || (v14 = BlueFin::GlSvId::s_aucSvId2gnss[v30], BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v13 - v13 + v14] == 255))
        {
          v15 = 575;
        }

        else
        {
          v15 = (BlueFin::GlSignalId::s_ausGnss2signalId[v14] + v30 - BlueFin::GlSvId::s_aucGnss2minSvId[v14] + v13 * BlueFin::GlSvId::s_aucGnss2numSvId[v14]);
        }

        v5 = 1;
        *(*a2 + (v15 >> 5)) |= 1 << v15;
      }
    }

    (*(**(v6 + 8) + 280))(&v29);
    if (v29 != 255)
    {
      if (v29 - 189 < 0xFFFFFF44 || (v16 = BlueFin::GlSvId::s_aucSvId2gnss[v29], BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v16] == 255))
      {
        v17 = 575;
      }

      else
      {
        v17 = (BlueFin::GlSignalId::s_ausGnss2signalId[v16] + v29 - BlueFin::GlSvId::s_aucGnss2minSvId[v16]);
      }

      v5 = 1;
      *(*a2 + (v17 >> 5)) |= 1 << v17;
    }

    (*(**(v6 + 8) + 288))(&v28);
    if (v28 != 255)
    {
      if (!v28)
      {
        goto LABEL_61;
      }

      if (v28 >= 0x21u)
      {
        if (v28 < 0x8Bu)
        {
          if (v28 < 0x42u)
          {
LABEL_61:
            DeviceFaultNotify("glpe_reqbag.cpp", 1242, "GetFactTestSvIds", "0");
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_reqbag.cpp", 1242, "0");
          }
        }

        else if (v28 >= 0xAFu)
        {
          if (v28 > 0xBCu)
          {
            goto LABEL_61;
          }

          v18 = BlueFin::GlSvId::s_aucSvId2gnss[v28];
          if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v18] != 255)
          {
            LOWORD(v19) = BlueFin::GlSignalId::s_ausGnss2signalId[v18] + v28 - BlueFin::GlSvId::s_aucGnss2minSvId[v18];
LABEL_44:
            v19 = v19;
LABEL_46:
            v5 = 1;
            *(*a2 + (v19 >> 5)) |= 1 << v19;
            goto LABEL_47;
          }

          goto LABEL_45;
        }
      }

      v20 = BlueFin::GlSvId::s_aucSvId2gnss[v28];
      if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v20 + 14] != 255)
      {
        LOWORD(v19) = BlueFin::GlSignalId::s_ausGnss2signalId[v20] + v28 - BlueFin::GlSvId::s_aucGnss2minSvId[v20] + 2 * BlueFin::GlSvId::s_aucGnss2numSvId[v20];
        goto LABEL_44;
      }

LABEL_45:
      v19 = 575;
      goto LABEL_46;
    }

LABEL_47:
    (*(**(v6 + 8) + 296))(&v27);
    if (v27 != 255)
    {
      if (v27 - 189 < 0xFFFFFF44 || (v21 = BlueFin::GlSvId::s_aucSvId2gnss[v27], BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v21 + 7] == 255))
      {
        v22 = 575;
      }

      else
      {
        v22 = (BlueFin::GlSignalId::s_ausGnss2signalId[v21] + v27 + BlueFin::GlSvId::s_aucGnss2numSvId[v21] - BlueFin::GlSvId::s_aucGnss2minSvId[v21]);
      }

      v5 = 1;
      *(*a2 + (v22 >> 5)) |= 1 << v22;
    }

    (*(**(v6 + 8) + 312))(&v26);
    if (v26 != 255)
    {
      if (v26 - 189 < 0xFFFFFF44 || (v23 = BlueFin::GlSvId::s_aucSvId2gnss[v26], BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v23] == 255))
      {
        v24 = 575;
      }

      else
      {
        v24 = (BlueFin::GlSignalId::s_ausGnss2signalId[v23] + v26 - BlueFin::GlSvId::s_aucGnss2minSvId[v23]);
      }

      v5 = 1;
      *(*a2 + (v24 >> 5)) |= 1 << v24;
    }

LABEL_59:
    v4 += 8;
  }

  while (v4 != 576);
  *v34 = v35;
  return v5 & 1;
}

uint64_t BlueFin::GlPeReqBag::GetFactTestItem(BlueFin::GlPeReqBag *this)
{
  v1 = 0;
  v2 = 0;
  v3 = this + 3233;
  v8 = this + 3233;
  v4 = *(this + 3233);
  v9 = v4;
  *(this + 3233) = 0;
  while (1)
  {
    v5 = *(this + v1);
    if (v5)
    {
      v6 = *(v5 + 8);
      if (v6[4] == 8)
      {
        break;
      }
    }

    v2 = v1++ > 0x46;
    if (v1 == 72)
    {
      result = 0xFFFFFFFFLL;
      goto LABEL_9;
    }
  }

  LODWORD(result) = (*(*v6 + 360))(v6);
  v4 = v9;
  v3 = v8;
  if (v2)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = result;
  }

LABEL_9:
  *v3 = v4;
  return result;
}

uint64_t BlueFin::GlPeReqBag::PopRequest(BlueFin::GlPeReqBag *this)
{
  v2 = 0;
  v14 = this + 3233;
  v15 = *(this + 3233);
  *(this + 3233) = 0;
  while (1)
  {
    v3 = *(this + v2);
    if (v3)
    {
      break;
    }

    if (++v2 == 72)
    {
      v4 = 0;
      goto LABEL_16;
    }
  }

  v4 = *(v3 + 8);
  v5 = *(v4 + 16);
  BlueFin::GlSetBase::Remove(this + 624, v2);
  if (v5 == 12)
  {
    v6 = BlueFin::GlUtils::m_pInstance;
    ++*(BlueFin::GlUtils::m_pInstance + 1088);
    v7 = (*(**v6 + 48))();
    *(this + 5172) = v7;
    v8 = *(this + v2);
    v6[273] = v7;
  }

  else
  {
    v8 = *(this + v2);
  }

  v9 = (*(**(this + 77) + 96))(*(this + 77));
  if (v9)
  {
    v9(v8);
  }

  v10 = 0;
  *(this + v2) = 0;
  v11 = *(this + 328);
  *(this + 328) = v11 & ~(1 << v5);
  while (1)
  {
    v12 = *(this + v10);
    if (v12)
    {
      if (*(*(v12 + 8) + 16) == v5)
      {
        break;
      }
    }

    v10 += 8;
    if (v10 == 576)
    {
      goto LABEL_16;
    }
  }

  *(this + 328) = v11 | (1 << v5);
LABEL_16:
  *v14 = v15;
  return v4;
}

void *BlueFin::GlPeReqBag::SetInterPolateFixStatus(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v1;
  v56 = *MEMORY[0x29EDCA608];
  v22 = &unk_2A1F13AA0;
  v23 = (v1 + 3233);
  v24 = *(v1 + 3233);
  *(v1 + 3233) = 0;
  bzero(v25, 0x1CF8uLL);
  v11 = 0;
  memset(v30, 248, sizeof(v30));
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
  v12 = v5[1];
  *v19 = *v5;
  *&v19[16] = v12;
  v13 = v5[3];
  v20 = v5[2];
  v21 = v13;
  do
  {
    result = *(v10 + v11);
    if (result)
    {
      if (*(result[1] + 16) == 13)
      {
        (*(*result + 24))(result, v9);
        result = (*(**(v10 + v11) + 248))(*(v10 + v11), v25, v9);
        if (v25[4048])
        {
          v15 = *(*(v10 + v11) + 8);
          if ((*(v15 + 172) & 8) != 0)
          {
            v19[4] = 1;
            *&v19[24] = v27;
            *&v19[8] = v26;
            result = BlueFin::GlPeReqBag::GetAvgOfTop4Cn0(v25);
            LOWORD(v20) = result;
            DWORD1(v20) = 0;
            if (v28)
            {
              v16 = v29 / 1.9438445;
              *(&v20 + 1) = v16;
            }

            *v19 = v7;
            v17 = *(v15 + 184);
            if (v17)
            {
              result = v17(v15, v19, 0);
            }
          }
        }
      }

      else if (v3)
      {
        result = (*(*result + 304))(result, 0);
      }
    }

    v11 += 8;
  }

  while (v11 != 576);
  *v23 = v24;
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlPeReqBag::ResetInterpolation(uint64_t this)
{
  v1 = this;
  for (i = 0; i != 576; i += 8)
  {
    v3 = *(v1 + i);
    if (v3)
    {
      (*(**(v3 + 8) + 464))(*(v3 + 8), 0);
      this = (*(**(*(v1 + i) + 8) + 488))();
    }
  }

  return this;
}

uint64_t BlueFin::GlPeReqBag::SetCntinMeas(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v11 = (a1 + 3233);
  v12 = *(a1 + 3233);
  *(a1 + 3233) = 0;
  if (a2 >= 5)
  {
    v8 = "UNKNOWN";
    if (a2 == 5)
    {
      v8 = "GL_CNTIN_USER_CANCEL";
    }
  }

  else
  {
    v8 = off_29EEB41A8[a2];
  }

  GlCustomLog(14, "CNTIN:SetCntinMeas(%s, %.1f, %.1f)[PPB]\n", v8, a3 * 1000000000.0, a4);
  for (i = 0; i != 576; i += 8)
  {
    result = *(a1 + i);
    if (result)
    {
      result = (*(*result + 48))(result, a2, a3, a4);
    }
  }

  *v11 = v12;
  return result;
}

uint64_t BlueFin::GlPeReqBag::CWResults(BlueFin::GlPeReqBag *this, uint64_t a2, uint64_t a3, double a4, double a5, double a6, uint64_t a7)
{
  v14 = 0;
  v16 = this + 3233;
  v17 = *(this + 3233);
  *(this + 3233) = 0;
  do
  {
    result = *(this + v14);
    if (result)
    {
      result = (*(*result + 56))(result, a2, a3, a7, a4, a5, a6);
    }

    v14 += 8;
  }

  while (v14 != 576);
  *v16 = v17;
  return result;
}

uint64_t BlueFin::GlPeReqBag::GetFactoryTestStatus(uint64_t result)
{
  v1 = 0;
  while (1)
  {
    v2 = *(result + v1);
    if (v2)
    {
      if (*(v2[1] + 16) == 8)
      {
        break;
      }
    }

    v1 += 8;
    if (v1 == 576)
    {
      return result;
    }
  }

  return (*(*v2 + 64))(*(result + v1));
}

uint64_t BlueFin::GlPeReqBag::SpaResults(uint64_t a1, uint64_t a2)
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
      result = (*(*result + 80))(result, a2);
    }

    v4 += 8;
  }

  while (v4 != 576);
  *v6 = v7;
  return result;
}

uint64_t BlueFin::GlPeReqBag::InitializeCWTest(uint64_t a1, char *a2, char *a3, char *a4, char *a5, char *a6, char *a7, char *a8, char *a9)
{
  v17 = 0;
  v27 = &unk_2A1F13AA0;
  v28 = (a1 + 3233);
  v29 = *(a1 + 3233);
  *(a1 + 3233) = 0;
  do
  {
    result = *(a1 + v17);
    if (result)
    {
      v26 = *a2;
      v25 = *a3;
      v24 = *a4;
      v23 = *a5;
      v22 = *a6;
      v21 = *a7;
      v20 = *a8;
      v19 = *a9;
      result = (*(*result + 88))(result, &v26, &v25, &v24, &v23, &v22, &v21, &v20, &v19);
    }

    v17 += 8;
  }

  while (v17 != 576);
  *v28 = v29;
  return result;
}

uint64_t BlueFin::GlPeReqBag::GetCWRequest(BlueFin::GlPeReqBag *this)
{
  v2 = 0;
  v6 = this + 3233;
  v7 = *(this + 3233);
  *(this + 3233) = 0;
  while (1)
  {
    v3 = *(this + v2);
    if (v3)
    {
      v4 = *(v3 + 8);
      if (v4[4] == 8 && !(*(*v4 + 360))(v4))
      {
        break;
      }
    }

    v2 += 8;
    if (v2 == 576)
    {
      result = 0;
      goto LABEL_8;
    }
  }

  result = *(*(this + v2) + 8);
LABEL_8:
  *v6 = v7;
  return result;
}

uint64_t BlueFin::GlPeReqBag::SetGalileoDataPage(BlueFin::GlPeReqBag *this, BlueFin::GlGalileoINavPage *a2)
{
  v4 = 0;
  v6 = this + 3233;
  v7 = *(this + 3233);
  *(this + 3233) = 0;
  do
  {
    result = *(this + v4);
    if (result)
    {
      result = (*(*result + 128))(result, a2);
    }

    v4 += 8;
  }

  while (v4 != 576);
  *v6 = v7;
  return result;
}

uint64_t BlueFin::GlPeReqBag::SetAsstStat(uint64_t a1, uint64_t a2)
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
      result = (*(*result + 136))(result, a2);
    }

    v4 += 8;
  }

  while (v4 != 576);
  *v6 = v7;
  return result;
}

BOOL BlueFin::GlPeReqBagData::Deserialize(BlueFin::GlPeReqBagData *this, BlueFin::GlSysLogEntry *a2)
{
  v2 = *(a2 + 12);
  if (v2 <= 3)
  {
    if (v2 < 2)
    {
      S8 = -2;
    }

    else
    {
      S8 = BlueFin::GlSysLogEntry::GetS8(a2);
    }

    *(this + 8) = S8;
    *(this + 5) = BlueFin::GlSysLogEntry::GetS16(a2);
    v6 = *(a2 + 12);
    U32 = BlueFin::GlSysLogEntry::GetU32(a2);
    v8 = U32;
    if (v6 < 2)
    {
      v9 = BlueFin::GlSysLogEntry::GetU32(a2);
      v10 = v8 - v9;
      if (v8 < v9)
      {
        v10 = 0;
      }

      *(this + 4) = v10;
      v11 = *(this + 5);
      if (v11 >= v10)
      {
        *(this + 3) = v11 - v10;
      }

      else
      {
        *(this + 3) = 0;
      }
    }

    else
    {
      *(this + 3) = U32;
      *(this + 4) = BlueFin::GlSysLogEntry::GetU32(a2);
    }

    if (*(a2 + 12) == 2)
    {
      S16 = BlueFin::GlSysLogEntry::GetS16(a2);
    }

    else
    {
      S16 = BlueFin::GlSysLogEntry::GetS32(a2);
    }

    *(this + 5) = S16;
    v13 = *(a2 + 12) != 1 && BlueFin::GlSysLogEntry::GetU8(a2) != 0;
    *(this + 24) = v13;
    if (*(a2 + 11) != *(a2 + 10))
    {
      DeviceFaultNotify("glpe_reqbag.cpp", 3440, "Deserialize", "otEntry.DataSize() == otEntry.ReadIdx()");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_reqbag.cpp", 3440, "otEntry.DataSize() == otEntry.ReadIdx()");
    }
  }

  return v2 < 4;
}

uint64_t BlueFin::GlPeReqBagData::SerializeImpl(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v15 = *MEMORY[0x29EDCA608];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = 3;
  }

  if ((v4 & 0xFE) != 2)
  {
    DeviceFaultNotify("glpe_reqbag.cpp", 3504, "SerializeImpl", "ucVersion >= 2 && ucVersion <= 3");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_reqbag.cpp", 3504, "ucVersion >= 2 && ucVersion <= 3");
  }

  v5 = v2;
  v6 = v1;
  if (v2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v11 = 46;
    v12 = v4;
    v13 = 0x1000000000000;
    v10 = &unk_2A1F092C0;
    v14 = v4;
    BlueFin::GlSysLogEntry::PutS8(&v10, *(v1 + 8));
    BlueFin::GlSysLogEntry::PutS16(&v10, *(v6 + 10));
    BlueFin::GlSysLogEntry::PutU32(&v10, *(v6 + 12));
    BlueFin::GlSysLogEntry::PutU32(&v10, *(v6 + 16));
    v7 = *(v6 + 20);
    if (v4 == 2)
    {
      BlueFin::GlSysLogEntry::PutS16(&v10, v7);
    }

    else
    {
      BlueFin::GlSysLogEntry::PutS32(&v10, v7);
    }

    BlueFin::GlSysLogEntry::PutU8(&v10, *(v6 + 24));
    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v10, v5, 4);
  }

  v8 = *MEMORY[0x29EDCA608];
  return 1;
}

BlueFin::GlBitBuffer *BlueFin::GlPeReqBag::GetPreviousPositionBuffer(BlueFin::GlPeReqBag *this, unsigned int *a2, int a3, unsigned int *a4)
{
  v8 = *(this + 1290);
  v9 = *(this + 20656);
  v10 = *(this + 5165);
  v5 = *(this + 5167);
  v13 = *(this + 2584);
  v7[8] = 0;
  BlueFin::GlBitBuffer::Initialize(v7, a2, a3);
  v11 = v5;
  v12 = 0;
  v14 = 0;
  result = BlueFin::GlBitBuffer::Put(v7, &v8, v5);
  *a4 = v7[7];
  return result;
}

BlueFin::GlBitBuffer *BlueFin::GlPeReqBag::SetPreviousPositionBuffer(BlueFin::GlPeReqBag *this, const unsigned int *a2, int a3, unsigned int a4)
{
  v6 = this + 20480;
  v11 = 0;
  BlueFin::GlBitBuffer::InitializeForRead(v9, a2, a3);
  *(v6 + 49) = 0;
  *(v6 + 23) = *(v6 + 45);
  v6[200] = 0;
  BlueFin::GlBitBuffer::Position(v9, a4);
  v7 = v10;
  v9[6] = v10;
  v10 = 0;
  v12 = 0;
  return BlueFin::GlBitBuffer::Put((this + 20640), v9, v7);
}

BOOL BlueFin::GlPeReqBag::ReadPreviousPosition(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a1 + 20668);
  if (v4 / 0x12E > a2)
  {
    BlueFin::GlBitBuffer::Position(a1 + 20640, 302 * a2);
    *a3 = BlueFin::GlBitBuffer::GetU((a1 + 20640), 1u) != 0;
    *(a3 + 1) = BlueFin::GlBitBuffer::GetU((a1 + 20640), 1u) != 0;
    *(a3 + 2) = BlueFin::GlBitBuffer::GetU((a1 + 20640), 1u) != 0;
    *(a3 + 3) = BlueFin::GlBitBuffer::GetU((a1 + 20640), 1u) != 0;
    *(a3 + 8) = BlueFin::GlBitBuffer::GetU((a1 + 20640), 0x20u);
    *(a3 + 12) = BlueFin::GlBitBuffer::GetU((a1 + 20640), 0x10u);
    *(a3 + 16) = BlueFin::GlBitBuffer::GetU((a1 + 20640), 0x20u) * 0.0000000419095166;
    *(a3 + 24) = BlueFin::GlBitBuffer::GetU((a1 + 20640), 0x20u) * 0.0000000838190367;
    v7 = BlueFin::GlBitBuffer::GetU((a1 + 20640), 0x10u);
    if ((v7 & 0xFFFF8000) == 0x8000)
    {
      v8 = -65536;
    }

    else
    {
      v8 = 0;
    }

    *(a3 + 32) = (v8 + v7);
    *(a3 + 40) = BlueFin::GlBitBuffer::GetU((a1 + 20640), 0x10u) * 0.0158730159;
    v9 = BlueFin::GlBitBuffer::GetU((a1 + 20640), 0x10u);
    if ((v9 & 0xFFFF8000) == 0x8000)
    {
      v10 = -65536;
    }

    else
    {
      v10 = 0;
    }

    *(a3 + 48) = (v10 + v9) * 0.010989011;
    *(a3 + 5) = BlueFin::GlBitBuffer::GetU((a1 + 20640), 1u) != 0;
    *(a3 + 4) = BlueFin::GlBitBuffer::GetU((a1 + 20640), 1u) != 0;
    v11 = BlueFin::GlBitBuffer::GetU((a1 + 20640), 0x10u) * 0.01;
    *(a3 + 56) = v11;
    *(a3 + 60) = BlueFin::GlBitBuffer::GetU((a1 + 20640), 0x20u);
    *(a3 + 64) = BlueFin::GlBitBuffer::GetU((a1 + 20640), 0x20u) << 32;
    *(a3 + 64) |= BlueFin::GlBitBuffer::GetU((a1 + 20640), 0x20u);
    v12 = (BlueFin::GlBitBuffer::GetU((a1 + 20640), 0x18u) - 2000000) * 0.001;
    *(a3 + 72) = v12;
    BlueFin::GlBitBuffer::Position(a1 + 20640, v4);
  }

  return v4 / 0x12E > a2;
}

uint64_t BlueFin::GlPeRqHdlr::SetCurrentTimeOsMs(uint64_t this)
{
  v1 = *(this + 8);
  v2 = 1000 * *(v1 + 22);
  v3 = *(BlueFin::GlUtils::m_pInstance + 1092) - *(v1 + 28);
  v4 = 1000 * *(v1 + 36);
  if (v3 > v2)
  {
    *(this + 23) = 1;
  }

  if (v3 > v4)
  {
    *(this + 24) = 1;
  }

  return this;
}

uint64_t BlueFin::GlPeRqHdlr::FinalizeNmea(BlueFin::GlPeRqHdlr *this)
{
  result = MEMORY[0x2A1C7C4A8](this);
  v48 = *MEMORY[0x29EDCA608];
  if ((*(result + 18) & 1) == 0)
  {
    v4 = v3;
    v5 = v2;
    v6 = result;
    memset(v47, 0, sizeof(v47));
    bzero(v21, 0x1CF8uLL);
    memset(&v21[7416], 248, 24);
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
    v46 = 0u;
    BlueFin::GlPeNmeaGen::FormatNmeaPFM(**(v6 + 56), (*(*(v6 + 56) + 88) + 31808), v47, 0x140);
    v7 = strlen(v47);
    if ((*(*v6 + 40))(v6, 0, v21, v47, v7))
    {
      GlCustomLog(20, "GL_NMEA[%d][%s", *(v6 + 48), v47);
    }

    v12 = *(v6 + 56);
    v13 = v12[11];
    v14 = *(v13 + 33048);
    if (v14)
    {
      BlueFin::GlPeNmeaGen::FormatNmeaPFA(*v12, *(v13 + 33048), 0, v47, 320);
      v15 = strlen(v47);
      if ((*(*v6 + 40))(v6, 0, v21, v47, v15))
      {
        GlCustomLog(20, "GL_NMEA[%d][%s", *(v6 + 48), v47);
      }

      BlueFin::GlPeNmeaGen::FormatNmeaPFA(**(v6 + 56), v14, 2, v47, 320);
      v16 = strlen(v47);
      if ((*(*v6 + 40))(v6, 0, v21, v47, v16))
      {
        GlCustomLog(20, "GL_NMEA[%d][%s", *(v6 + 48), v47);
      }

      BlueFin::GlPeNmeaGen::FormatNmeaPFA(**(v6 + 56), v14, 4, v47, 320);
      v17 = strlen(v47);
      if ((*(*v6 + 40))(v6, 0, v21, v47, v17))
      {
        GlCustomLog(20, "GL_NMEA[%d][%s", *(v6 + 48), v47);
      }

      BlueFin::GlPeNmeaGen::FormatNmeaPFA(**(v6 + 56), v14, 5, v47, 320);
      v18 = strlen(v47);
      if ((*(*v6 + 40))(v6, 0, v21, v47, v18))
      {
        GlCustomLog(20, "GL_NMEA[%d][%s", *(v6 + 48), v47);
      }
    }

    BlueFin::GlPeNmeaGen::FormatNmeaFIN(**(v6 + 56), *(v6 + 44), *(v6 + 48), v5, v4, v47, 320, v8, v9, v10, v11);
    v19 = strlen(v47);
    result = (*(*v6 + 40))(v6, 0, v21, v47, v19);
    if (result)
    {
      result = GlCustomLog(20, "GL_NMEA[%d][%s", *(v6 + 48), v47);
    }

    *(v6 + 18) = 1;
  }

  v20 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlPeRqHdlr::SetCntinMeas(uint64_t result)
{
  if ((*(result + 20) & 1) == 0)
  {
    return (*(**(result + 8) + 528))();
  }

  return result;
}

uint64_t BlueFin::GlPeRqHdlr::GetDynAccyMask_ToutForSmartphoneFF(uint64_t result, int *a2, unsigned int a3, _DWORD *a4, _WORD *a5)
{
  v9 = result;
  v10 = *a2;
  if (*a2 > 1)
  {
    if (v10 == 3)
    {
      v16 = 1000 * (*(**(result + 8) + 384))(*(result + 8), 6);
      v12 = **(v9 + 8);
      if (v16 > a3)
      {
        if (1000 * (*(v12 + 384))() <= a3)
        {
LABEL_19:
          *a4 = (*(**(v9 + 8) + 392))(*(v9 + 8), 2);
          v15 = *(**(v9 + 8) + 384);
          goto LABEL_20;
        }

LABEL_16:
        result = BlueFin::GlPeRqHdlr::GetReqSmartMaskAccyM_Startup(v9, a2);
        *a4 = result;
        return result;
      }

      goto LABEL_17;
    }

    if (v10 != 2)
    {
      return result;
    }
  }

  else if (v10)
  {
    if (v10 != 1)
    {
      return result;
    }

    v11 = 1000 * (*(**(result + 8) + 384))(*(result + 8), 4);
    v12 = **(v9 + 8);
    if (v11 > a3)
    {
      if (1000 * (*(v12 + 384))() <= a3)
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v13 = 1000 * (*(**(result + 8) + 384))(*(result + 8), 2);
  v12 = **(v9 + 8);
  if (v13 <= a3 || (v14 = 1000 * (*(v12 + 384))(), v12 = **(v9 + 8), v14 <= a3))
  {
LABEL_17:
    *a4 = (*(v12 + 392))();
    v15 = *(**(v9 + 8) + 384);
    goto LABEL_20;
  }

  if (1000 * (*(v12 + 384))() > a3)
  {
    goto LABEL_16;
  }

  *a4 = (*(**(v9 + 8) + 392))(*(v9 + 8), 1);
  v15 = *(**(v9 + 8) + 384);
LABEL_20:
  result = v15();
  *a5 = result;
  return result;
}

uint64_t BlueFin::GlPeReqHdlrParams::SerializeImpl(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v4 = v2;
  v5 = v1;
  v18 = *MEMORY[0x29EDCA608];
  if (v3)
  {
    v6 = v3;
    if (v3 >= 5)
    {
      DeviceFaultNotify("glpe_reqhdlr.cpp", 379, "SerializeImpl", "ucVersion >= 1 && ucVersion <= 4");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_reqhdlr.cpp", 379, "ucVersion >= 1 && ucVersion <= 4");
    }

    if (v2)
    {
LABEL_8:
      v14 = 57;
      v15 = v6;
      v16 = 0x1000000000000;
      v13 = &unk_2A1F092C0;
      v17 = v6;
      BlueFin::GlSysLogEntry::PutU32(&v13, *(v1 + 8));
      BlueFin::GlSysLogEntry::PutS16(&v13, *(v5 + 12));
      BlueFin::GlSysLogEntry::PutS32(&v13, *(v5 + 16));
      BlueFin::GlSysLogEntry::PutU32(&v13, *(v5 + 20));
      BlueFin::GlSysLogEntry::PutU32(&v13, *(v5 + 24));
      BlueFin::GlSysLogEntry::PutU32(&v13, *(v5 + 28));
      BlueFin::GlSysLogEntry::PutU16(&v13, *(v5 + 32));
      if (v6 == 2)
      {
        for (i = 0; i != 12; i += 4)
        {
          BlueFin::GlSysLogEntry::PutU32(&v13, *(v5 + 40 + i));
        }

        for (j = 0; j != 12; j += 2)
        {
          BlueFin::GlSysLogEntry::PutU16(&v13, *(v5 + 54 + j));
        }
      }

      else
      {
        if (v6 < 3)
        {
LABEL_21:
          BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v13, v4, 4);
          goto LABEL_22;
        }

        for (k = 0; k != 16; k += 4)
        {
          BlueFin::GlSysLogEntry::PutU32(&v13, *(v5 + 36 + k));
        }

        for (m = 0; m != 14; m += 2)
        {
          BlueFin::GlSysLogEntry::PutU16(&v13, *(v5 + 52 + m));
        }
      }

      if (v6 >= 4)
      {
        BlueFin::GlSysLogEntry::PutU32(&v13, *(v5 + 68));
        BlueFin::GlSysLogEntry::PutU32(&v13, *(v5 + 72));
      }

      goto LABEL_21;
    }
  }

  else
  {
    v6 = 4;
    if (v2)
    {
      goto LABEL_8;
    }
  }

  if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    goto LABEL_8;
  }

LABEL_22:
  v11 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t BlueFin::GlPeReqHdlrParams::Deserialize(BlueFin::GlPeReqHdlrParams *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 57)
  {
    return 0;
  }

  if (*(a2 + 12) - 5 < 0xFFFFFFFC)
  {
    return 0;
  }

  *(this + 2) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(this + 6) = BlueFin::GlSysLogEntry::GetS16(a2);
  *(this + 4) = BlueFin::GlSysLogEntry::GetS32(a2);
  *(this + 5) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(this + 6) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(this + 7) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(this + 16) = BlueFin::GlSysLogEntry::GetU16(a2);
  v5 = *(a2 + 12);
  if (v5 == 2)
  {
    v7 = 0;
    *(this + 9) = 50;
    do
    {
      *(this + v7 + 40) = BlueFin::GlSysLogEntry::GetU32(a2);
      v7 += 4;
    }

    while (v7 != 12);
    v8 = 0;
    *(this + 26) = 90;
    do
    {
      *(this + v8 + 54) = BlueFin::GlSysLogEntry::GetU16(a2);
      v8 += 2;
    }

    while (v8 != 12);
    v5 = *(a2 + 12);
  }

  else if (v5 == 1)
  {
    v6 = 0;
    *(this + 36) = vmovl_s16(BlueFin::GlRequestImplPos::m_asSmartMaskAccyM_default);
    do
    {
      *(this + v6 + 52) = *(&BlueFin::GlRequestImplPos::m_asSmartMaskToutS_default + v6);
      v6 += 2;
    }

    while (v6 != 14);
LABEL_22:
    U32 = 0;
    *(this + 17) = 0;
    goto LABEL_23;
  }

  if (v5 < 3)
  {
    goto LABEL_22;
  }

  for (i = 0; i != 16; i += 4)
  {
    *(this + i + 36) = BlueFin::GlSysLogEntry::GetU32(a2);
  }

  for (j = 0; j != 14; j += 2)
  {
    *(this + j + 52) = BlueFin::GlSysLogEntry::GetU16(a2);
  }

  if (*(a2 + 12) < 4u)
  {
    goto LABEL_22;
  }

  *(this + 17) = BlueFin::GlSysLogEntry::GetU32(a2);
  U32 = BlueFin::GlSysLogEntry::GetU32(a2);
LABEL_23:
  *(this + 18) = U32;
  BlueFin::GlSysLogEntry::CheckConsumed(a2, 505);
  return 1;
}

uint64_t BlueFin::GlPeReqStopEvent::SerializeImpl(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v12 = *MEMORY[0x29EDCA608];
  if (v3 >= 2)
  {
    DeviceFaultNotify("glpe_reqhdlr.cpp", 524, "SerializeImpl", "ucVersion == 1");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_reqhdlr.cpp", 524, "ucVersion == 1");
  }

  v4 = v2;
  if (v2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v8 = 61;
    v9 = 1;
    v10 = 0x1000000000000;
    v7 = &unk_2A1F092C0;
    v11 = 1;
    BlueFin::GlSysLogEntry::PutU16(&v7, *(v1 + 8));
    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v7, v4, 4);
  }

  v5 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t BlueFin::GlPeReqStopEvent::Deserialize(BlueFin::GlPeReqStopEvent *this, BlueFin::GlSysLogEntry *a2)
{
  v2 = *(a2 + 2) == 61 && *(a2 + 12) == 1;
  v3 = v2;
  if (v2)
  {
    *(this + 4) = BlueFin::GlSysLogEntry::GetU16(a2);
    BlueFin::GlSysLogEntry::CheckConsumed(a2, 548);
  }

  return v3;
}

uint64_t BlueFin::GlPeRqHdlrAsstStat::SetAsstStat(uint64_t result)
{
  if ((*(result + 20) & 1) == 0)
  {
    v1 = result;
    result = *(result + 8);
    v2 = *(result + 80);
    if (v2)
    {
      result = v2();
    }

    *(v1 + 19) = 1;
  }

  return result;
}

void BlueFin::GlPeRqHdlrAsstStat::~GlPeRqHdlrAsstStat(BlueFin::GlPeRqHdlrAsstStat *this)
{
  BlueFin::GlPeRqHdlr::~GlPeRqHdlr(this);

  JUMPOUT(0x29C292F70);
}

uint64_t BlueFin::GlPeRqHdlrCntin::SetCntinMeas(uint64_t result)
{
  if ((*(result + 20) & 1) == 0)
  {
    v1 = result;
    result = *(result + 8);
    if (*(result + 16) == 5)
    {
      result = (*(*result + 528))(result);
    }

    *(v1 + 19) = 1;
  }

  return result;
}

uint64_t BlueFin::GlPeRqHdlrCntin::Cleanup(uint64_t this)
{
  if (*(this + 23) == 1)
  {
    *(this + 19) = 1;
  }

  return BlueFin::GlPeRqHdlr::Cleanup(this);
}

void BlueFin::GlPeRqHdlrCntin::~GlPeRqHdlrCntin(BlueFin::GlPeRqHdlrCntin *this)
{
  BlueFin::GlPeRqHdlr::~GlPeRqHdlr(this);

  JUMPOUT(0x29C292F70);
}

uint64_t BlueFin::GlPeRqHdlrCollectEph::SetFixStatus(uint64_t result, uint64_t a2)
{
  if ((*(result + 20) & 1) == 0)
  {
    if (*(a2 + 4048))
    {
      *(result + 88) = 1;
    }
  }

  return result;
}

uint64_t BlueFin::GlPeRqHdlrCollectEph::SetSIGMeasuement(uint64_t this, const void **a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, float a23, unsigned __int8 a24, unsigned __int8 a25, unsigned __int16 a26, int a27, int a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51, char a52, int a53, char a54, uint64_t a55, uint64_t a56, char a57, int a58, unsigned __int16 a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  a80 = *MEMORY[0x29EDCA608];
  if ((*(this + 20) & 1) == 0)
  {
    v73 = this;
    BlueFin::GlSetBase::GlSetBase(&__src, &v106, 0x13u, a2 + 1);
    bzero(*(v73 + 64), ((4 * *(v73 + 72) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    a24 = v105;
    memcpy(&a28, __src, 4 * v105);
    a26 = 0;
    a25 = 0;
    a27 = a28;
    BlueFin::GlSetIterator::operator++(&a24);
    while (a25 != a24)
    {
      if (a26 >= 0x23FuLL)
      {
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
      }

      v74 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * a26;
      v75 = *v74;
      LODWORD(v74) = v74[1];
      a57 = v75;
      a58 = v74;
      a59 = a26;
      MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(a2, &a57, 0, 0);
      if ((MeMeas[13] & 0x40) != 0 && *(MeMeas + 29) >= 30.0)
      {
        *(*(v73 + 64) + ((*MeMeas >> 3) & 0x1C)) |= 1 << *MeMeas;
      }

      BlueFin::GlSetIterator::operator++(&a24);
    }

    v77 = 0;
    a79 = &a57;
    do
    {
      v78 = a79 + v77;
      v79 = a79 + v77;
      *(v79 + 12) = 0;
      *v78 = v79 + 12;
      v78[8] = 2;
      v77 += 24;
    }

    while (v77 != 168);
    v103 = 66;
    this = BlueFin::GlGnssSetIterator::GlGnssSetIterator(&a24, (*(*(v73 + 56) + 24) + 120032));
    v80 = a51;
    for (i = a52; a51 != 6 || a52 != 14; i = a52)
    {
      a53 = v80;
      a54 = i;
      HIDWORD(v101) = v80;
      v102 = i;
      v83 = *(*(v73 + 56) + 24);
      v84 = *(v73 + 92);
      a23 = -90.0;
      v85 = BlueFin::GlPeAsstMgr::computeAzElCommon(v83, &v101 + 1, v84, 0, &v103, 0, &a23);
      if (a23 >= 0.0)
      {
        v86 = v85;
      }

      else
      {
        v86 = 0;
      }

      if (v86 == 1)
      {
        BlueFin::GlGnssSet::Add(&a57, &v101 + 1);
      }

      this = BlueFin::GlGnssSetIterator::operator++(&a24);
      v80 = a51;
    }

    if (*(v73 + 88))
    {
      v87 = 0;
      v88 = a79;
      v89 = 7;
      do
      {
        this = BlueFin::GlSetBase::Cnt(v88);
        v87 += this;
        v88 = (v88 + 24);
        --v89;
      }

      while (v89);
      if (v87 >= 6u)
      {
        *(v73 + 19) = 1;
      }
    }

    v90 = *(v73 + 36);
    if (v90 != -1)
    {
      v91 = *(*(v73 + 8) + 28);
      v92 = *(v73 + 32) + v90;
      v93 = v92 >= v91;
      v94 = v92 - v91;
      if (v93)
      {
        if (v94 >> 5 > 0x752)
        {
          goto LABEL_30;
        }

        if (v94 >> 4 < 0x271)
        {
          goto LABEL_33;
        }

        v95 = *(v73 + 64);
        if (*v95)
        {
          goto LABEL_33;
        }

        v97 = *(v73 + 72);
        if (v97 < 2)
        {
LABEL_30:
          *(v73 + 19) = 1;
          goto LABEL_33;
        }

        v98 = v97 - 1;
        v99 = v95 + 1;
        while (!*v99++)
        {
          if (!--v98)
          {
            goto LABEL_30;
          }
        }
      }
    }
  }

LABEL_33:
  v96 = *MEMORY[0x29EDCA608];
  return this;
}

void BlueFin::GlPeRqHdlrCollectEph::~GlPeRqHdlrCollectEph(BlueFin::GlPeRqHdlrCollectEph *this)
{
  BlueFin::GlPeRqHdlr::~GlPeRqHdlr(this);

  JUMPOUT(0x29C292F70);
}

uint64_t BlueFin::SPASerializer::SerializeImpl(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v4 = v2;
  v5 = v1;
  v18 = *MEMORY[0x29EDCA608];
  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = 10;
  }

  v14 = 93;
  v15 = v6;
  v16 = 0x1000000000000;
  v13 = &unk_2A1F092C0;
  v17 = v6;
  if (v2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    BlueFin::GlSysLogEntry::PutU16(&v13, *(v1 + 8));
    v7 = *(v5 + 8);
    if (v7)
    {
      BlueFin::GlSysLogEntry::PutU32(&v13, *(v5 + 12));
      BlueFin::GlSysLogEntry::PutU32(&v13, *(v5 + 16));
      BlueFin::GlSysLogEntry::PutU32(&v13, 500000);
      BlueFin::GlSysLogEntry::PutU32(&v13, *(v5 + 24));
      BlueFin::GlSysLogEntry::PutU32(&v13, *(v5 + 28));
      BlueFin::GlSysLogEntry::PutU32(&v13, *(v5 + 32));
      BlueFin::GlSysLogEntry::PutU8(&v13, *(v5 + 36));
      BlueFin::GlSysLogEntry::PutU32(&v13, *(v5 + 40));
      BlueFin::GlSysLogEntry::PutU8(&v13, *(v5 + 44));
      BlueFin::GlSysLogEntry::PutU8(&v13, *(v5 + 45));
      v7 = *(v5 + 8);
    }

    if ((v7 & 2) != 0)
    {
      BlueFin::GlSysLogEntry::PutU8(&v13, *(v5 + 56));
      BlueFin::GlSysLogEntry::PutU8(&v13, *(v5 + 57));
      BlueFin::GlSysLogEntry::PutU8(&v13, *(v5 + 58));
      BlueFin::GlSysLogEntry::PutU8(&v13, *(v5 + 59));
      BlueFin::GlSysLogEntry::PutU16(&v13, *(v5 + 60));
      BlueFin::GlSysLogEntry::PutD64(&v13, *(v5 + 240));
      v7 = *(v5 + 8);
    }

    if ((v7 & 0x80) != 0)
    {
      BlueFin::GlSysLogEntry::PutU8(&v13, *(v5 + 248));
      BlueFin::GlSysLogEntry::PutU8(&v13, *(v5 + 249));
      BlueFin::GlSysLogEntry::PutU8(&v13, *(v5 + 250));
      v7 = *(v5 + 8);
    }

    if ((v7 & 0x74) != 0)
    {
      BlueFin::GlSysLogEntry::PutU16(&v13, *(v5 + 64));
      BlueFin::GlSysLogEntry::PutBuffer(&v13, *(v5 + 48), *(v5 + 68));
      v7 = *(v5 + 8);
    }

    if ((v7 & 8) != 0)
    {
      BlueFin::GlSysLogEntry::PutU8(&v13, *(v5 + 232));
      if (*(v5 + 232))
      {
        v8 = (v5 + 152);
        v9 = 38;
        do
        {
          BlueFin::GlSysLogEntry::PutU32(&v13, *v8);
          BlueFin::GlSysLogEntry::PutU32(&v13, *(v8 - 20));
          v10 = v9 - 37;
          ++v9;
          ++v8;
        }

        while (v10 < *(v5 + 232));
      }
    }

    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v13, v4, 4);
    result = 1;
  }

  else
  {
    result = 0;
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::SPASerializer::Deserialize(BlueFin::SPASerializer *this, BlueFin::GlSysLogEntry *a2)
{
  v14 = *MEMORY[0x29EDCA608];
  if (*(a2 + 2) == 93 && *(a2 + 12) <= 0xAu)
  {
    v5 = (this + 8);
    v12 = this + 8;
    v13 = 1;
    BlueFin::GlSysLogEntry::GetGlSet(a2, &v12);
    if (*(this + 8))
    {
      *(this + 3) = BlueFin::GlSysLogEntry::GetU32(a2);
      *(this + 4) = BlueFin::GlSysLogEntry::GetU32(a2);
      BlueFin::GlSysLogEntry::GetU32(a2);
      *(this + 6) = BlueFin::GlSysLogEntry::GetU32(a2);
      *(this + 7) = BlueFin::GlSysLogEntry::GetU32(a2);
      *(this + 8) = BlueFin::GlSysLogEntry::GetU32(a2);
      if (*(a2 + 12) >= 3u)
      {
        *(this + 9) = BlueFin::GlSysLogEntry::GetU8(a2);
      }
    }

    v6 = *v5;
    if ((*v5 & 2) != 0)
    {
      *(this + 30) = BlueFin::GlSysLogEntry::GetD64(a2);
      *(this + 15) = BlueFin::GlSysLogEntry::GetU32(a2);
      v6 = *(this + 2);
    }

    if ((v6 & 0x64) != 0)
    {
      *(this + 16) = BlueFin::GlSysLogEntry::GetU32(a2);
      *(this + 17) = BlueFin::GlSysLogEntry::GetBuffer(a2, &v12, 0x1F4u);
      v6 = *(this + 2);
    }

    if ((v6 & 8) != 0)
    {
      if (*(a2 + 12) == 1)
      {
        *(this + 232) = 1;
        *(this + 18) = BlueFin::GlSysLogEntry::GetU32(a2);
        *(this + 38) = BlueFin::GlSysLogEntry::GetU32(a2);
      }

      else
      {
        U8 = BlueFin::GlSysLogEntry::GetU8(a2);
        *(this + 232) = U8;
        if (U8)
        {
          v8 = (this + 152);
          v9 = 38;
          do
          {
            *v8 = BlueFin::GlSysLogEntry::GetU32(a2);
            *(v8 - 20) = BlueFin::GlSysLogEntry::GetU32(a2);
            v10 = v9 - 37;
            ++v9;
            ++v8;
          }

          while (v10 < *(this + 232));
        }
      }
    }

    BlueFin::GlSysLogEntry::CheckConsumed(a2, 337);
    result = 1;
  }

  else
  {
    result = 0;
  }

  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlPeRqHdlrFactTest::GlPeRqHdlrFactTest(uint64_t a1, _DWORD *a2, int a3, int a4, uint64_t *a5, uint64_t a6)
{
  v10 = BlueFin::GlPeRqHdlr::GlPeRqHdlr(a1, a2, a3, a4, a5);
  *v10 = &unk_2A1F141A8;
  *(v10 + 88) = 0;
  v11 = (v10 + 88);
  *(v10 + 96) = 0;
  *(v10 + 102) = 0;
  *(v10 + 296) = 0;
  *(v10 + 64) = &unk_2A1F14178;
  *(v10 + 72) = 0;
  *(v10 + 77) = 0;
  *(v10 + 120) = 0;
  *(v10 + 128) = 0;
  *(v10 + 112) = 0;
  *(v10 + 304) = 0;
  *(v10 + 311) = 0;
  *(v10 + 320) = a6;
  *(v10 + 328) = a6 + 344;
  *(v10 + 336) = a6 + 688;
  *(v10 + 344) = a6 + 1032;
  *(v10 + 352) = a6 + 1376;
  *(v10 + 360) = a6 + 1720;
  *(v10 + 368) = a6 + 2064;
  *(v10 + 376) = a6 + 2408;
  *(v10 + 384) = a6 + 2752;
  *(v10 + 392) = a6 + 3096;
  *(v10 + 400) = a6 + 3440;
  *(v10 + 408) = a6 + 3784;
  *(v10 + 416) = a6 + 4128;
  *(v10 + 424) = a6 + 4472;
  *(v10 + 432) = a6 + 4816;
  *(v10 + 440) = a6 + 5160;
  *(v10 + 448) = a6 + 5504;
  *(v10 + 456) = a6 + 5848;
  *(v10 + 464) = a6 + 6192;
  *(v10 + 472) = a6 + 6536;
  *(v10 + 480) = a2;
  *(v10 + 488) = 0;
  *(v10 + 492) = 0;
  (*(**(v10 + 8) + 240))(v40);
  BlueFin::GL_FACT_TEST_STATUS_wrapper::init(a6, v40, 0);
  v12 = *(a1 + 328);
  (*(**(a1 + 8) + 240))(v40);
  BlueFin::GL_FACT_TEST_STATUS_wrapper::init(v12, v40, 0);
  v13 = *(a1 + 336);
  (*(**(a1 + 8) + 248))(v40);
  BlueFin::GL_FACT_TEST_STATUS_wrapper::init(v13, v40, 1);
  v14 = *(a1 + 344);
  (*(**(a1 + 8) + 248))(v40);
  BlueFin::GL_FACT_TEST_STATUS_wrapper::init(v14, v40, 1);
  v15 = *(a1 + 352);
  (*(**(a1 + 8) + 272))(v40);
  BlueFin::GL_FACT_TEST_STATUS_wrapper::init(v15, v40, 2);
  v16 = *(a1 + 360);
  (*(**(a1 + 8) + 272))(v40);
  BlueFin::GL_FACT_TEST_STATUS_wrapper::init(v16, v40, 2);
  v17 = *(a1 + 368);
  (*(**(a1 + 8) + 280))(v40);
  BlueFin::GL_FACT_TEST_STATUS_wrapper::init(v17, v40, 0);
  v18 = *(a1 + 376);
  (*(**(a1 + 8) + 280))(v40);
  BlueFin::GL_FACT_TEST_STATUS_wrapper::init(v18, v40, 0);
  v19 = *(a1 + 384);
  (*(**(a1 + 8) + 288))(v40);
  BlueFin::GL_FACT_TEST_STATUS_wrapper::init(v19, v40, 3);
  v20 = *(a1 + 392);
  (*(**(a1 + 8) + 288))(v40);
  BlueFin::GL_FACT_TEST_STATUS_wrapper::init(v20, v40, 3);
  v21 = *(a1 + 400);
  (*(**(a1 + 8) + 296))(v40);
  BlueFin::GL_FACT_TEST_STATUS_wrapper::init(v21, v40, 4);
  v22 = *(a1 + 408);
  (*(**(a1 + 8) + 296))(v40);
  BlueFin::GL_FACT_TEST_STATUS_wrapper::init(v22, v40, 4);
  v23 = *(a1 + 416);
  (*(**(a1 + 8) + 256))(v40);
  BlueFin::GL_FACT_TEST_STATUS_wrapper::init(v23, v40, 7);
  v24 = *(a1 + 424);
  (*(**(a1 + 8) + 256))(v40);
  BlueFin::GL_FACT_TEST_STATUS_wrapper::init(v24, v40, 7);
  v25 = *(a1 + 432);
  (*(**(a1 + 8) + 264))(v40);
  BlueFin::GL_FACT_TEST_STATUS_wrapper::init(v25, v40, 8);
  v26 = *(a1 + 440);
  (*(**(a1 + 8) + 264))(v40);
  BlueFin::GL_FACT_TEST_STATUS_wrapper::init(v26, v40, 8);
  v27 = *(a1 + 448);
  (*(**(a1 + 8) + 304))(v40);
  BlueFin::GL_FACT_TEST_STATUS_wrapper::init(v27, v40, 5);
  v28 = *(a1 + 456);
  (*(**(a1 + 8) + 304))(v40);
  BlueFin::GL_FACT_TEST_STATUS_wrapper::init(v28, v40, 5);
  v29 = *(a1 + 464);
  (*(**(a1 + 8) + 312))(v40);
  BlueFin::GL_FACT_TEST_STATUS_wrapper::init(v29, v40, 9);
  v30 = *(a1 + 472);
  (*(**(a1 + 8) + 312))(v40);
  BlueFin::GL_FACT_TEST_STATUS_wrapper::init(v30, v40, 9);
  v47 = 0;
  v48 = 0;
  v49 = 0xFFFF0100000000;
  memset(v40, 0, sizeof(v40));
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0;
  (*(**(a1 + 480) + 456))();
  v31 = *(a5[7] + 88);
  if (v31 <= 0x28)
  {
    v32 = BlueFin::ulRfType2AsicNumber[v31];
  }

  else
  {
    v32 = 0;
  }

  v33 = DWORD2(v41);
  *(a1 + 76) = v40[0];
  *(a1 + 80) = v33;
  v34 = v47;
  if (v47)
  {
    v35 = 0xF4240 / v47;
  }

  else
  {
    v35 = 0;
  }

  *v11 = v35;
  v36 = v34 * v48;
  if (v36)
  {
    v37 = 0xF4240 / v36;
  }

  else
  {
    v37 = 0;
  }

  v38 = v49;
  *(a1 + 92) = v37;
  *(a1 + 96) = v38;
  *(a1 + 104) = v32;
  *(a1 + 72) |= 1u;
  *(a1 + 493) = (*(**(a1 + 8) + 344))();
  *(a1 + 494) = (*(**(a1 + 8) + 352))(*(a1 + 8));
  return a1;
}

uint64_t BlueFin::GlPeRqHdlrFactTest::SetCntinMeas(uint64_t result, int a2, double a3)
{
  v9[7] = *MEMORY[0x29EDCA608];
  v3 = *(result + 336);
  v9[0] = *(result + 320);
  v9[1] = v3;
  v4 = *(result + 368);
  v9[2] = *(result + 352);
  v9[3] = v4;
  v5 = *(result + 400);
  v9[4] = *(result + 384);
  v9[5] = v5;
  v9[6] = *(result + 464);
  if ((*(result + 20) & 1) == 0)
  {
    for (i = 0; i != 7; ++i)
    {
      v7 = v9[i];
      if (*(v7 + 12) != 255)
      {
        *(v7 + 100) = a2;
        *(v7 + 104) = a2 == 1;
        *(v7 + 112) = a3;
      }
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlPeRqHdlrFactTest::SetPlatfStat(uint64_t this, const BlueFin::GlPePlatfStat *a2)
{
  v58[7] = *MEMORY[0x29EDCA608];
  v2 = *(this + 336);
  v58[0] = *(this + 320);
  v58[1] = v2;
  v3 = *(this + 368);
  v58[2] = *(this + 352);
  v58[3] = v3;
  v4 = *(this + 400);
  v58[4] = *(this + 384);
  v58[5] = v4;
  v58[6] = *(this + 464);
  if ((*(this + 20) & 1) == 0)
  {
    v5 = this;
    v6 = 0;
    v7 = (a2 + 252);
    this = a2 + 60;
    while (1)
    {
      v8 = v58[v6];
      v9 = *(v8 + 12);
      if (v9 == 255)
      {
        goto LABEL_26;
      }

      *(v8 + 120) = *(a2 + 196);
      *(v8 + 128) = *(a2 + 50);
      *(v8 + 152) = *(a2 + 251);
      v10 = *v7;
      v11 = *(a2 + 268);
      *(v8 + 184) = *(a2 + 280);
      *(v8 + 172) = v11;
      *(v8 + 156) = v10;
      if ((v9 - 52) <= 0xD && !*(v8 + 4))
      {
        v12 = *(v5 + 416);
        if (*(v12 + 12) != 255)
        {
          *(v12 + 120) = *(a2 + 196);
          *(v12 + 128) = *(a2 + 50);
          *(v12 + 152) = *(a2 + 251);
          v13 = *v7;
          v14 = *(a2 + 268);
          *(v12 + 184) = *(a2 + 280);
          *(v12 + 172) = v14;
          *(v12 + 156) = v13;
        }

        v15 = *(v5 + 432);
        if (*(v15 + 12) != 255)
        {
          *(v15 + 120) = *(a2 + 196);
          *(v15 + 128) = *(a2 + 50);
          *(v15 + 152) = *(a2 + 251);
          v16 = *v7;
          v17 = *(a2 + 268);
          *(v15 + 184) = *(a2 + 280);
          *(v15 + 172) = v17;
          *(v15 + 156) = v16;
        }
      }

      if (*(a2 + 170) != 1)
      {
        goto LABEL_26;
      }

      v18 = *(v8 + 12);
      if ((v18 - 1) > 0x1F)
      {
        if ((v18 - 52) > 0xD)
        {
          if ((v18 - 76) > 0x3E)
          {
            if ((v18 - 139) > 0x23)
            {
              if ((v18 - 66) > 9)
              {
                goto LABEL_26;
              }

              v19 = a2 + 332;
              v20 = a2 + 336;
              if (*(a2 + 328) != 1)
              {
                goto LABEL_26;
              }
            }

            else
            {
              v19 = a2 + 84;
              v20 = a2 + 88;
              if ((*(a2 + 174) & 1) == 0)
              {
                goto LABEL_26;
              }
            }
          }

          else
          {
            v19 = a2 + 76;
            v20 = a2 + 80;
            if ((*(a2 + 173) & 1) == 0)
            {
              goto LABEL_26;
            }
          }
        }

        else
        {
          v19 = a2 + 68;
          v20 = a2 + 72;
          if ((*(a2 + 172) & 1) == 0)
          {
            goto LABEL_26;
          }
        }
      }

      else
      {
        v19 = a2 + 60;
        v20 = a2 + 64;
        if ((*(a2 + 171) & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      *(v8 + 96) = *v19;
      *(v8 + 92) = *v20;
      *(v8 + 88) = 1;
      *v8 = 3;
LABEL_26:
      if (++v6 == 7)
      {
        v21 = 0;
        v22 = a2 + 96;
        v54 = a2 + 128;
LABEL_28:
        v23 = v58[v21];
        v24 = *(v23 + 4);
        if (v24 != 5 && v24 != 3)
        {
          goto LABEL_61;
        }

        v26 = *(v23 + 12);
        if ((v26 - 76) >= 0x63)
        {
          v27 = v26 - 1;
          v28 = v26 - 52;
          if (v27 >= 0x20 && v28 > 0xD)
          {
            goto LABEL_61;
          }
        }

        *(v5 + 488) = (*(**(v5 + 8) + 328))(*(v5 + 8));
        v30 = (*(**(v5 + 8) + 336))();
        *(v5 + 490) = v30;
        *(v23 + 308) = *(*(*(v5 + 56) + 56) + 912);
        v31 = *(v23 + 12);
        v32 = 2 * (*(v23 + 320) == 3);
        v55[0] = *(v23 + 12);
        v56 = v32;
        v57 = 575;
        if (v55[0] - 189 >= 0xFFFFFF44)
        {
          v33 = BlueFin::GlSvId::s_aucSvId2gnss[v31];
          if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v32 - v32 + v33] == 255)
          {
            v32 = -1;
            v56 = -1;
          }

          else
          {
            v57 = BlueFin::GlSignalId::s_ausGnss2signalId[v33] + v31 - BlueFin::GlSvId::s_aucGnss2minSvId[v33] + v32 * BlueFin::GlSvId::s_aucGnss2numSvId[v33];
          }
        }

        this = BlueFin::GlIqData::Svid2EnumGnssIQ(v30, v55, v32);
        if (this <= 7 && *&v22[4 * this])
        {
          v34 = *(v23 + 316) + 1;
          *(v23 + 316) = v34;
          if (*(v5 + 490) < v34 && *(v23 + 321) == 1)
          {
            v35 = BlueFin::GlIqData::Svid2EnumGnssIQ(this, v55, v32);
            v37 = 0.0;
            v38 = 0.0;
            if (v35 <= 7)
            {
              LODWORD(v36) = *&v22[4 * v35];
              v38 = v36;
            }

            v39 = BlueFin::GlIqData::Svid2EnumGnssIQ(v35, v55, v32);
            if (v39 <= 7)
            {
              LODWORD(v40) = *&v54[4 * v39];
              v37 = v40;
            }

            v41 = v38 + *(v23 + 288);
            v42 = v37 + *(v23 + 296);
            *(v23 + 288) = v41;
            *(v23 + 296) = v42;
            v43 = v41 / v42;
            v44 = *(v23 + 40);
            *&v41 = v44;
            v45 = (__exp10f(*&v41 / 10.0) * 20.0) / 1000.0;
            v46 = (((((v45 * 2.0) + 1.0) - v43) / ((v43 + 1.0) * (v45 + v45))) * -4.0) + 1.0;
            GlCustomLog(20, "<FTPHN> Svid,%d, %s, CN0,%.2f,DbgArgSqrt,%.3f,IQRatio %.3f, ", *(v23 + 12), BlueFin::GlSignalId::s_ausSignalType2str[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v32 - v32 + BlueFin::GlSvId::s_aucSvId2gnss[v31]]], v44, v46, v43);
            if (v46 < 0.0)
            {
              GlCustomLog(20, "Phase noise is too high, variance cannot be computed,");
              goto LABEL_55;
            }

            v48 = (1.0 - sqrtf(v46)) * 0.5;
            GlCustomLog(20, "var,%.4f,rho,%.2f,", v48, v45);
            if (v46 <= 1.0)
            {
              v49 = sqrtf(v48) * 57.2957795;
              *(v23 + 312) = v49;
              v50 = *(v23 + 308);
              *(v23 + 304) = v50 > v49;
              GlCustomLog(20, "StdDev(degrees),%.2f,Threshold(degrees),%.2f,", v49, v50);
              *(v23 + 304);
            }

            else
            {
              GlCustomLog(20, "Unique Error: value,");
LABEL_55:
              *(v23 + 304) = 0;
            }

            this = GlCustomLog(20, "%s\n");
          }

          else
          {
            v47 = *(v23 + 40);
            v53 = *(v23 + 12);
            this = GlCustomLog(20, "<FTPHN> Counter=%hu,Neglect=%hu,Svid=%d,CN0=%.2f, \n");
          }
        }

        v51 = *(v5 + 320);
        if (*(v51 + 316) - *(v5 + 490) == *(v5 + 488) && *(v51 + 4) == 5)
        {
          *(v5 + 492) = 1;
        }

LABEL_61:
        if (++v21 == 7)
        {
          break;
        }

        goto LABEL_28;
      }
    }
  }

  v52 = *MEMORY[0x29EDCA608];
  return this;
}

uint64_t BlueFin::GlPeRqHdlrFactTest::SetNmeaSentence(uint64_t a1, int a2, uint64_t a3, const char *a4, uint64_t a5)
{
  v106[10] = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 20);
  if (v5)
  {
    goto LABEL_257;
  }

  v10 = *(a1 + 328);
  v11 = *(a1 + 336);
  v12 = *(a1 + 344);
  v106[0] = *(a1 + 320);
  v106[1] = v11;
  v13 = *(a1 + 360);
  v14 = *(a1 + 368);
  v15 = *(a1 + 376);
  v106[2] = *(a1 + 352);
  v106[3] = v14;
  v16 = *(a1 + 392);
  v17 = *(a1 + 400);
  v18 = *(a1 + 408);
  v106[4] = *(a1 + 384);
  v106[5] = v17;
  v19 = *(a1 + 416);
  v20 = *(a1 + 424);
  v22 = *(a1 + 432);
  v21 = *(a1 + 440);
  v106[6] = v19;
  v106[7] = v22;
  v23 = *(a1 + 456);
  v24 = *(a1 + 464);
  v25 = *(a1 + 472);
  v106[8] = *(a1 + 448);
  v106[9] = v24;
  v105[0] = v10;
  v105[1] = v12;
  v105[2] = v13;
  v105[3] = v15;
  v105[4] = v16;
  v105[5] = v18;
  v105[6] = v20;
  v105[7] = v21;
  v105[8] = v23;
  v105[9] = v25;
  if ((*(a1 + 16) & 1) == 0)
  {
    *(a1 + 16) = 1;
    BlueFin::GlPeNmeaGen::FormatNmeaRID(**(a1 + 56), __s, 80, a4);
    GlCustomLog(20, "GL_NMEA[%d][%s", *(a1 + 48), __s);
    v26 = strlen(__s);
    (*(**(a1 + 480) + 504))(*(a1 + 480), __s, v26);
  }

  (*(**(a1 + 480) + 504))(*(a1 + 480), a4, a5);
  if (a2 == 1)
  {
    v69 = 0;
    while (1)
    {
      v70 = v106[v69];
      if (*(v70 + 12) != 255)
      {
        break;
      }

LABEL_250:
      if (++v69 == 10)
      {
        goto LABEL_255;
      }
    }

    if (*(v70 + 14))
    {
      *(v70 + 333) = 1;
    }

    *(v70 + 136) = *(a1 + 493);
    *(v70 + 8) = (*(**(a1 + 8) + 368))(*(a1 + 8));
    *(v70 + 206) = 1;
    if ((*(**(a1 + 8) + 360))() != 2 || *(v70 + 8))
    {
LABEL_246:
      if (*(v70 + 333) == 1 && !*(v70 + 14))
      {
        v97 = **(a1 + 56);
        v98 = v105[v69];
      }

      else
      {
        v97 = **(a1 + 56);
        v98 = v70;
      }

      BlueFin::GlPeNmeaGen::FormatNmeaFTS(v97, v98, __s, 0x96);
      v99 = strlen(__s);
      (*(**(a1 + 480) + 504))(*(a1 + 480), __s, v99);
      GlCustomLog(20, "GL_NMEA[%d][%s", *(a1 + 48), __s);
      goto LABEL_250;
    }

    v71 = *(a1 + 320);
    if (*(v71 + 12) != 255)
    {
      v81 = *(v71 + 4);
      if (v81 > 4)
      {
        if (v81 == 5 || v81 == 8)
        {
          goto LABEL_245;
        }
      }

      else if ((v81 - 1) >= 4)
      {
        if (!v81 && *v71)
        {
          goto LABEL_245;
        }
      }

      else
      {
        v82 = *v71;
        v83 = v82 <= 4 && v82 >= v81;
        if (!v83)
        {
          goto LABEL_245;
        }
      }
    }

    v72 = *(a1 + 336);
    if (*(v72 + 12) != 255)
    {
      v84 = *(v72 + 4);
      if (v84 > 4)
      {
        if (v84 == 5 || v84 == 8)
        {
          goto LABEL_245;
        }
      }

      else if ((v84 - 1) >= 4)
      {
        if (!v84 && *v72)
        {
          goto LABEL_245;
        }
      }

      else
      {
        v85 = *v72;
        if (v85 > 4 || v85 < v84)
        {
          goto LABEL_245;
        }
      }
    }

    v73 = *(a1 + 352);
    if (*(v73 + 12) != 255)
    {
      v86 = *(v73 + 4);
      if (v86 > 4)
      {
        if (v86 == 5 || v86 == 8)
        {
          goto LABEL_245;
        }
      }

      else if ((v86 - 1) >= 4)
      {
        if (!v86 && *v73)
        {
          goto LABEL_245;
        }
      }

      else
      {
        v87 = *v73;
        if (v87 > 4 || v87 < v86)
        {
          goto LABEL_245;
        }
      }
    }

    v74 = *(a1 + 368);
    if (*(v74 + 12) != 255)
    {
      v88 = *(v74 + 4);
      if (v88 > 4)
      {
        if (v88 == 5 || v88 == 8)
        {
          goto LABEL_245;
        }
      }

      else if ((v88 - 1) >= 4)
      {
        if (!v88 && *v74)
        {
          goto LABEL_245;
        }
      }

      else
      {
        v89 = *v74;
        if (v89 > 4 || v89 < v88)
        {
          goto LABEL_245;
        }
      }
    }

    v75 = *(a1 + 384);
    if (*(v75 + 12) != 255)
    {
      v91 = *(v75 + 4);
      if (v91 > 4)
      {
        if (v91 == 5 || v91 == 8)
        {
          goto LABEL_245;
        }
      }

      else if ((v91 - 1) >= 4)
      {
        if (!v91 && *v75)
        {
          goto LABEL_245;
        }
      }

      else
      {
        v92 = *v75;
        if (v92 > 4 || v92 < v91)
        {
          goto LABEL_245;
        }
      }
    }

    v76 = *(a1 + 400);
    if (*(v76 + 12) != 255)
    {
      v93 = *(v76 + 4);
      if (v93 > 4)
      {
        if (v93 == 5 || v93 == 8)
        {
          goto LABEL_245;
        }
      }

      else if ((v93 - 1) >= 4)
      {
        if (!v93 && *v76)
        {
          goto LABEL_245;
        }
      }

      else
      {
        v94 = *v76;
        if (v94 > 4 || v94 < v93)
        {
          goto LABEL_245;
        }
      }
    }

    v77 = *(a1 + 448);
    if (*(v77 + 12) == 255)
    {
LABEL_153:
      v78 = *(a1 + 464);
      if (*(v78 + 12) == 255)
      {
        goto LABEL_246;
      }

      v79 = *(v78 + 4);
      if (v79 > 4)
      {
        if (v79 != 5 && v79 != 8)
        {
          goto LABEL_246;
        }
      }

      else if ((v79 - 1) >= 4)
      {
        if (v79 || !*v78)
        {
          goto LABEL_246;
        }
      }

      else
      {
        v80 = *v78;
        if (v80 <= 4 && v80 >= v79)
        {
          goto LABEL_246;
        }
      }

      goto LABEL_245;
    }

    v95 = *(v77 + 4);
    if (v95 > 4)
    {
      if (v95 != 5 && v95 != 8)
      {
        goto LABEL_153;
      }
    }

    else if ((v95 - 1) >= 4)
    {
      if (v95 || !*v77)
      {
        goto LABEL_153;
      }
    }

    else
    {
      v96 = *v77;
      if (v96 <= 4 && v96 >= v95)
      {
        goto LABEL_153;
      }
    }

LABEL_245:
    *(v70 + 206) = 0;
    goto LABEL_246;
  }

  if (a2 != 8)
  {
    goto LABEL_255;
  }

  v27 = 0;
  __s[0] = 0;
  while (1)
  {
    v28 = v106[v27];
    if (*(v28 + 6) == 255)
    {
      goto LABEL_18;
    }

    v29 = (*(**(a1 + 8) + 360))(*(a1 + 8));
    v30 = *v28;
    v31 = *v28 < v29 || v30 == 8;
    if (v31 && *(a1 + 23) != 1)
    {
      goto LABEL_18;
    }

    if (!v30)
    {
      if (!*(v28 + 7))
      {
        goto LABEL_18;
      }

      v32 = *(a1 + 320);
      v33 = *(v32 + 12) == 255 || *(v32 + 14) != 0;
      v43 = *(a1 + 336);
      if (*(v43 + 12) != 255)
      {
        v33 = (*(v43 + 14) != 0) & v33;
      }

      v44 = *(a1 + 352);
      if (*(v44 + 12) != 255)
      {
        v33 = (*(v44 + 14) != 0) & v33;
      }

      v45 = *(a1 + 384);
      if (*(v45 + 12) != 255)
      {
        v33 = (*(v45 + 14) != 0) & v33;
      }

      v46 = *(a1 + 400);
      if (*(v46 + 12) != 255)
      {
        v33 = (*(v46 + 14) != 0) & v33;
      }

      v47 = *(a1 + 448);
      if (*(v47 + 12) == 255)
      {
        if (!v33)
        {
          goto LABEL_18;
        }
      }

      else if (((*(v47 + 14) != 0) & v33) == 0)
      {
        goto LABEL_18;
      }
    }

    if ((v29 - 1) > 2 || v28[2])
    {
      goto LABEL_17;
    }

    v34 = *(a1 + 320);
    if (*(v34 + 12) != 255)
    {
      v48 = *(v34 + 4);
      if (v48 > 4)
      {
        if (v48 == 5 || v48 == 8)
        {
          goto LABEL_18;
        }
      }

      else if ((v48 - 1) >= 4)
      {
        if (!v48 && *v34)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v49 = *v34;
        if (v49 > 4 || v49 < v48)
        {
          goto LABEL_18;
        }
      }
    }

    v35 = *(a1 + 336);
    if (*(v35 + 12) != 255)
    {
      v50 = *(v35 + 4);
      if (v50 > 4)
      {
        if (v50 == 5 || v50 == 8)
        {
          goto LABEL_18;
        }
      }

      else if ((v50 - 1) >= 4)
      {
        if (!v50 && *v35)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v51 = *v35;
        if (v51 > 4 || v51 < v50)
        {
          goto LABEL_18;
        }
      }
    }

    v36 = *(a1 + 352);
    if (*(v36 + 12) != 255)
    {
      v52 = *(v36 + 4);
      if (v52 > 4)
      {
        if (v52 == 5 || v52 == 8)
        {
          goto LABEL_18;
        }
      }

      else if ((v52 - 1) >= 4)
      {
        if (!v52 && *v36)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v53 = *v36;
        if (v53 > 4 || v53 < v52)
        {
          goto LABEL_18;
        }
      }
    }

    v37 = *(a1 + 368);
    if (*(v37 + 12) != 255)
    {
      v54 = *(v37 + 4);
      if (v54 > 4)
      {
        if (v54 == 5 || v54 == 8)
        {
          goto LABEL_18;
        }
      }

      else if ((v54 - 1) >= 4)
      {
        if (!v54 && *v37)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v55 = *v37;
        if (v55 > 4 || v55 < v54)
        {
          goto LABEL_18;
        }
      }
    }

    v38 = *(a1 + 384);
    if (*(v38 + 12) != 255)
    {
      v57 = *(v38 + 4);
      if (v57 > 4)
      {
        if (v57 == 5 || v57 == 8)
        {
          goto LABEL_18;
        }
      }

      else if ((v57 - 1) >= 4)
      {
        if (!v57 && *v38)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v58 = *v38;
        if (v58 > 4 || v58 < v57)
        {
          goto LABEL_18;
        }
      }
    }

    v39 = *(a1 + 400);
    if (*(v39 + 12) != 255)
    {
      v59 = *(v39 + 4);
      if (v59 > 4)
      {
        if (v59 == 5 || v59 == 8)
        {
          goto LABEL_18;
        }
      }

      else if ((v59 - 1) >= 4)
      {
        if (!v59 && *v39)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v60 = *v39;
        if (v60 > 4 || v60 < v59)
        {
          goto LABEL_18;
        }
      }
    }

    v40 = *(a1 + 448);
    if (*(v40 + 12) != 255)
    {
      v61 = *(v40 + 4);
      if (v61 > 4)
      {
        if (v61 == 5 || v61 == 8)
        {
          goto LABEL_18;
        }
      }

      else if ((v61 - 1) >= 4)
      {
        if (!v61 && *v40)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v62 = *v40;
        if (v62 > 4 || v62 < v61)
        {
          goto LABEL_18;
        }
      }
    }

    v41 = *(a1 + 464);
    if (*(v41 + 12) == 255)
    {
      goto LABEL_17;
    }

    v42 = *(v41 + 4);
    if (v42 > 4)
    {
      if (v42 == 5 || v42 == 8)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    if ((v42 - 1) >= 4)
    {
      break;
    }

    if (v30 != 8 && *v41 <= 4u && *v41 >= v42)
    {
      goto LABEL_136;
    }

LABEL_18:
    if (++v27 == 10)
    {
      goto LABEL_255;
    }
  }

  if (v42)
  {
LABEL_17:
    if (v30 != 8)
    {
      goto LABEL_136;
    }

    goto LABEL_18;
  }

  if (v30 == 8 || *v41)
  {
    goto LABEL_18;
  }

LABEL_136:
  v63 = *(a1 + 36);
  if (v63 == -1)
  {
    v65 = *(a1 + 32);
    v68 = 1;
  }

  else
  {
    v64 = *(*(a1 + 8) + 28);
    v65 = *(a1 + 32);
    v66 = v65 + v63;
    v83 = v66 >= v64;
    v67 = v66 - v64;
    if (v83)
    {
      v68 = v67;
    }

    else
    {
      v68 = 1;
    }
  }

  BlueFin::GlPeNmeaGen::FormatNmeaFIX(**(a1 + 56), v68, v65 - *(a1 + 28), __s, 120);
  GlCustomLog(20, "GL_NMEA[%d][%s", *(a1 + 48), __s);
  v100 = strlen(__s);
  (*(**(a1 + 480) + 504))(*(a1 + 480), __s, v100);
LABEL_255:
  for (i = 0; i != 10; ++i)
  {
    memcpy(v105[i], v106[i], 0x158uLL);
  }

LABEL_257:
  v102 = *MEMORY[0x29EDCA608];
  return v5 ^ 1u;
}

uint64_t BlueFin::GlPeRqHdlrFactTest::SetSIGMeasuement(uint64_t this, BlueFin::GlPeMsmtMgr *a2)
{
  if ((*(this + 20) & 1) == 0)
  {
    v3 = this;
    v4 = *(this + 320);
    if (*(v4 + 12) != 255)
    {
      this = BlueFin::GlPeRqHdlrFactTest::SetSIGMeasurement(this, a2, v4, 0);
    }

    v5 = v3[42];
    if (*(v5 + 12) != 255)
    {
      this = BlueFin::GlPeRqHdlrFactTest::SetSIGMeasurement(v3, a2, v5, 0);
    }

    v6 = v3[52];
    if (*(v6 + 12) != 255)
    {
      this = BlueFin::GlPeRqHdlrFactTest::SetSIGMeasurement(v3, a2, v6, 0);
    }

    v7 = v3[54];
    if (*(v7 + 12) != 255)
    {
      this = BlueFin::GlPeRqHdlrFactTest::SetSIGMeasurement(v3, a2, v7, 0);
    }

    v8 = v3[44];
    if (*(v8 + 12) != 255)
    {
      if (*(v8 + 12) - 189 < 0xFFFFFF44 || (v9 = *(v8 + 12), v10 = BlueFin::GlSvId::s_aucSvId2gnss[v9], BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v10] == 255))
      {
        v11 = 575;
      }

      else
      {
        v11 = (BlueFin::GlSignalId::s_ausGnss2signalId[v10] + v9 - BlueFin::GlSvId::s_aucGnss2minSvId[v10]);
      }

      if ((*(*(a2 + 12) + 4 * (v11 >> 5)) >> (v11 & 0x1F)))
      {
        v12 = 0;
      }

      else
      {
        v12 = 3;
      }

      this = BlueFin::GlPeRqHdlrFactTest::SetSIGMeasurement(v3, a2, v8, v12);
    }

    v13 = v3[46];
    if (*(v13 + 12) != 255)
    {
      this = BlueFin::GlPeRqHdlrFactTest::SetSIGMeasurement(v3, a2, v13, 0);
    }

    v14 = v3[48];
    v15 = *(v14 + 12);
    if (v15 != 255)
    {
      v16 = 2;
      if ((v15 - 1) >= 0x20 && (v15 - 66) >= 0x6D)
      {
        if ((v15 - 175) >= 0xE)
        {
          DeviceFaultNotify("glpe_reqhdlr_fact_test.cpp", 842, "SetSIGMeasuement", "0");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_reqhdlr_fact_test.cpp", 842, "0");
        }

        v16 = 0;
      }

      this = BlueFin::GlPeRqHdlrFactTest::SetSIGMeasurement(v3, a2, v14, v16);
    }

    v17 = v3[50];
    if (*(v17 + 12) != 255)
    {
      this = BlueFin::GlPeRqHdlrFactTest::SetSIGMeasurement(v3, a2, v17, 1u);
    }

    v18 = v3[56];
    if (*(v18 + 12) != 255)
    {
      this = BlueFin::GlPeRqHdlrFactTest::SetSIGMeasurement(v3, a2, v18, 0);
    }

    v19 = v3[58];
    if (*(v19 + 12) != 255)
    {

      return BlueFin::GlPeRqHdlrFactTest::SetSIGMeasurement(v3, a2, v19, 0);
    }
  }

  return this;
}

uint64_t BlueFin::GlPeRqHdlrFactTest::SetSIGMeasurement(uint64_t result, unsigned int *a2, uint64_t a3, unsigned int a4)
{
  v7 = result;
  *(a3 + 16) = 0;
  v8 = *(a3 + 12);
  v34[0] = v8;
  v35 = a4;
  v36 = 575;
  if (v8 - 189 >= 0xFFFFFF44)
  {
    v9 = BlueFin::GlSvId::s_aucSvId2gnss[v8];
    if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * a4 - a4 + v9] != 255)
    {
      v36 = BlueFin::GlSignalId::s_ausGnss2signalId[v9] + v8 - BlueFin::GlSvId::s_aucGnss2minSvId[v9] + BlueFin::GlSvId::s_aucGnss2numSvId[v9] * a4;
      v10 = v36;
      goto LABEL_8;
    }

    v35 = -1;
  }

  else if (v34[0] == 255)
  {
    return result;
  }

  v10 = 575;
LABEL_8:
  if ((*(**(result + 8) + 360))(*(result + 8)))
  {
    v11 = 0x2030400u >> (8 * a4);
    if (a4 >= 4)
    {
      LOBYTE(v11) = 0;
    }

    *(a3 + 320) = v11;
  }

  if (((*(*(a2 + 1) + 4 * (v10 >> 5)) >> (v10 & 0x1F)) & 1) == 0)
  {
    v18 = *(a3 + 4);
    if (!v18)
    {
      goto LABEL_59;
    }

    goto LABEL_54;
  }

  MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(a2, v34, 0, 0);
  v13 = MeMeas;
  if (MeMeas)
  {
    if ((*(MeMeas + 3) & 0x8002) != 2)
    {
      LOBYTE(v13) = 0;
      goto LABEL_46;
    }

    if (*(MeMeas + 12))
    {
      *(a3 + 332) = 1;
    }

    *(a3 + 56) = *(*(*(v7 + 56) + 56) + 40);
    v14 = (*(MeMeas + 29) + -174.0);
    *(a3 + 24) = v14;
    if (*a3 == 8)
    {
      *a3 = 1;
      *(a3 + 32) = v14;
    }

    v15 = *(a3 + 328);
    if (v15)
    {
      v16 = *(a3 + 32);
      v17 = *(a3 + 336);
    }

    else
    {
      v19 = *a2;
      v17 = v19 + 1000 * (*(**(v7 + 8) + 320))(*(v7 + 8)) - 1100;
      *(a3 + 336) = v17;
      v14 = *(a3 + 24);
      v16 = 0.0;
    }

    v20 = v16 + v14;
    *(a3 + 32) = v20;
    *(a3 + 328) = v15 + 1;
    if ((v15 & 0x80000000) == 0 && *a2 > v17)
    {
      v20 = v20 / (v15 + 1);
      *(a3 + 32) = v20;
      *(a3 + 328) = 0;
      *(a3 + 16) = 1;
    }

    *(a3 + 40) = v14 + 174.0;
    *(a3 + 48) = v20 + 174.0;
    v21 = v13[27];
    if (v21 >= 0.000000015)
    {
      *(a3 + 64) = 0;
LABEL_34:
      if (*(v13 + 13))
      {
        *(a3 + 232) = 1;
        *(a3 + 14) = 1;
      }

      v23 = *(a3 + 4);
      if (*(a3 + 8) || v23 != 1)
      {
        if (!v23)
        {
LABEL_45:
          LOBYTE(v13) = 1;
          goto LABEL_46;
        }
      }

      else
      {
        *(a3 + 14) = 1;
      }

      v24 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(v13 + 1) - *(v13 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*v13]];
      if (v24 <= 0xC && ((1 << v24) & 0x1041) != 0)
      {
        v25 = *(v13 + 9) == 2;
      }

      else
      {
        v25 = *(v13 + 9) > 2;
      }

      *(a3 + 321) = v25;
      goto LABEL_45;
    }

    v22 = *a3;
    if ((*a3 - 1) >= 4)
    {
      if (v22 != 8)
      {
        goto LABEL_32;
      }
    }

    else if (v22 > 1)
    {
LABEL_32:
      *(a3 + 64) = 1;
      *(a3 + 72) = -v13[26];
      *(a3 + 80) = v21;
      goto LABEL_34;
    }

    *a3 = 2;
    goto LABEL_32;
  }

LABEL_46:
  v26 = *(a3 + 328);
  v27 = v26;
  if (!v26)
  {
    v27 = 1.0;
  }

  v28 = *(a3 + 32) / v27;
  v29 = *(a3 + 40);
  v30 = *(a3 + 48);
  if (!*(a3 + 16))
  {
    v30 = 0.0;
  }

  v31 = 84;
  if (!*(a3 + 14))
  {
    v31 = 70;
  }

  GlCustomLog(14, "<FT> SetSIGMeasurement SVID=%hd, CarrBand %d, NrgyFnd=%c, SigStr=%.2fdBm, AvgSigStr=%.2fdBm, Snr=%.2fdBHz, AvgSnr=%.2f\n", v34[0], v35, v31, *(a3 + 24), v28, *(a3 + 40), v30);
  v18 = *(a3 + 4);
  if ((v13 & 1) == 0 && v18)
  {
LABEL_54:
    *(a3 + 14) = 0;
    *(a3 + 64) = 0;
    if (*(a3 + 332) == 1)
    {
      ++*(a3 + 200);
    }
  }

  if (v18 == 7)
  {
    v32 = *(v7 + 32);
    if ((v32 - 1000) <= 0x3E7)
    {
      *(a3 + 318) = 1;
      GlCustomLog(14, "<FT> GlPeRqHdlrFactTest::Sending Plat Sleep Ok as part of callback @CurrentLms (%u)\n", v32);
      goto LABEL_60;
    }
  }

LABEL_59:
  *(a3 + 318) = 0;
LABEL_60:
  result = *(v7 + 480);
  v33 = *(result + 80);
  if (v33)
  {
    return v33();
  }

  return result;
}

uint64_t BlueFin::GlPeRqHdlrFactTest::HandleFailure(BlueFin::GlPeRqHdlrFactTest *this, const BlueFin::GlMePlatfStat *a2)
{
  result = GlCustomLog(14, "<FT> GlPeRqHdlrFactTest::HandleFailure \n");
  v5 = *(this + 40);
  *(v5 + 236) = 1;
  v6 = *(this + 42);
  v6[59] = 1;
  v7 = *(this + 44);
  v7[59] = 1;
  v8 = *(this + 46);
  v8[59] = 1;
  v9 = *(this + 48);
  v9[59] = 1;
  v10 = *(this + 50);
  v10[59] = 1;
  v11 = *(this + 56);
  v11[59] = 1;
  v12 = *(this + 58);
  v12[59] = 1;
  if (a2)
  {
    v13 = *(a2 + 9);
    *(v5 + 272) = v13;
    v14 = *(a2 + 5);
    v15 = *(a2 + 6);
    *(v5 + 256) = v14;
    v16 = *(a2 + 7);
    v17 = *(a2 + 8);
    *(v5 + 264) = v16;
    *(v5 + 268) = v17;
    result = *(a2 + 3);
    v18 = *(a2 + 4);
    *(v5 + 248) = result;
    *(v5 + 252) = v18;
    v19 = *(a2 + 1);
    v20 = *(a2 + 2);
    *(v5 + 240) = v19;
    *(v5 + 244) = v20;
    *(v5 + 260) = v15;
    v6[68] = v13;
    v6[63] = v18;
    v6[64] = v14;
    v6[66] = v16;
    v6[67] = v17;
    v6[61] = v20;
    v6[62] = result;
    v6[60] = v19;
    v6[65] = v15;
    v7[68] = v13;
    v7[63] = v18;
    v7[64] = v14;
    v7[66] = v16;
    v7[67] = v17;
    v7[61] = v20;
    v7[62] = result;
    v7[60] = v19;
    v7[65] = v15;
    v8[68] = v13;
    v8[63] = v18;
    v8[64] = v14;
    v8[66] = v16;
    v8[67] = v17;
    v8[61] = v20;
    v8[62] = result;
    v8[60] = v19;
    v8[65] = v15;
    v9[68] = v13;
    v9[63] = v18;
    v9[64] = v14;
    v9[66] = v16;
    v9[67] = v17;
    v9[61] = v20;
    v9[62] = result;
    v9[60] = v19;
    v9[65] = v15;
    v10[68] = v13;
    v10[63] = v18;
    v10[64] = v14;
    v10[66] = v16;
    v10[67] = v17;
    v10[61] = v20;
    v10[62] = result;
    v10[60] = v19;
    v10[65] = v15;
    v11[68] = v13;
    v11[63] = v18;
    v11[64] = v14;
    v11[66] = v16;
    v11[67] = v17;
    v11[61] = v20;
    v11[62] = result;
    v11[60] = v19;
    v11[65] = v15;
    v12[68] = v13;
    v12[63] = v18;
    v12[64] = v14;
    v12[66] = v16;
    v12[67] = v17;
    v12[61] = v20;
    v12[62] = result;
    v12[60] = v19;
    v12[65] = v15;
  }

  if (*(v5 + 12) != 255)
  {
    result = *(this + 60);
    v21 = *(result + 80);
    if (v21)
    {
      result = v21();
    }
  }

  if (*(*(this + 42) + 12) != 255)
  {
    result = *(this + 60);
    v22 = *(result + 80);
    if (v22)
    {
      result = v22();
    }
  }

  if (*(*(this + 44) + 12) != 255)
  {
    result = *(this + 60);
    v23 = *(result + 80);
    if (v23)
    {
      result = v23();
    }
  }

  if (*(*(this + 46) + 12) != 255)
  {
    result = *(this + 60);
    v24 = *(result + 80);
    if (v24)
    {
      result = v24();
    }
  }

  if (*(*(this + 48) + 12) != 255)
  {
    result = *(this + 60);
    v25 = *(result + 80);
    if (v25)
    {
      result = v25();
    }
  }

  if (*(*(this + 50) + 12) != 255)
  {
    result = *(this + 60);
    v26 = *(result + 80);
    if (v26)
    {
      result = v26();
    }
  }

  if (*(*(this + 56) + 12) != 255)
  {
    result = *(this + 60);
    v27 = *(result + 80);
    if (v27)
    {
      result = v27();
    }
  }

  if (*(*(this + 58) + 12) != 255)
  {
    result = *(this + 60);
    v28 = *(result + 80);
    if (v28)
    {

      return v28();
    }
  }

  return result;
}

void *BlueFin::GlPeRqHdlrFactTest::SetMePlatfStats(void *this, const BlueFin::GlMePlatfStat *a2)
{
  if (a2)
  {
    v2 = this[40];
    v3 = *(a2 + 9);
    v2[68] = v3;
    v4 = *(a2 + 5);
    v5 = *(a2 + 6);
    v2[64] = v4;
    v6 = *(a2 + 7);
    v7 = *(a2 + 8);
    v2[66] = v6;
    v2[67] = v7;
    v8 = *(a2 + 3);
    v9 = *(a2 + 4);
    v2[62] = v8;
    v2[63] = v9;
    v10 = *(a2 + 1);
    v11 = *(a2 + 2);
    v2[60] = v10;
    v2[61] = v11;
    v2[65] = v5;
    v12 = this[42];
    v12[68] = v3;
    v12[63] = v9;
    v12[64] = v4;
    v12[66] = v6;
    v12[67] = v7;
    v12[61] = v11;
    v12[62] = v8;
    v12[60] = v10;
    v12[65] = v5;
    v13 = this[44];
    v13[68] = v3;
    v13[63] = v9;
    v13[64] = v4;
    v13[66] = v6;
    v13[67] = v7;
    v13[61] = v11;
    v13[62] = v8;
    v13[60] = v10;
    v13[65] = v5;
    v14 = this[46];
    v14[68] = v3;
    v14[63] = v9;
    v14[64] = v4;
    v14[66] = v6;
    v14[67] = v7;
    v14[61] = v11;
    v14[62] = v8;
    v14[60] = v10;
    v14[65] = v5;
    v15 = this[58];
    v15[68] = v3;
    v15[63] = v9;
    v15[64] = v4;
    v15[66] = v6;
    v15[67] = v7;
    v15[61] = v11;
    v15[62] = v8;
    v15[60] = v10;
    v15[65] = v5;
  }

  return this;
}

uint64_t BlueFin::GlPeRqHdlrFactTest::CWResults(uint64_t this, __int16 a2, char a3, double a4, double a5, double a6, int a7)
{
  v8 = this;
  v24 = *MEMORY[0x29EDCA608];
  v9 = (this + 320);
  v10 = (this + 416);
  v11 = (this + 432);
  if (a7 != 8)
  {
    v11 = (this + 320);
  }

  if (a7 != 7)
  {
    v10 = v11;
  }

  v12 = (this + 400);
  v13 = (this + 448);
  if (a7 != 5)
  {
    v13 = (this + 320);
  }

  if (a7 != 4)
  {
    v12 = v13;
  }

  if (a7 <= 6)
  {
    v10 = v12;
  }

  if (a7 == 3)
  {
    v9 = (this + 384);
  }

  if (a7 == 2)
  {
    v9 = (this + 352);
  }

  if (a7 == 1)
  {
    v9 = (this + 336);
  }

  if (a7 > 3)
  {
    v9 = v10;
  }

  v14 = *v9;
  *(v14 + 204) = a2;
  *(v14 + 208) = a5;
  *(v14 + 216) = a6;
  *(v14 + 224) = a4;
  *v14 = 0;
  *(v14 + 320) = a7;
  v15 = -a5;
  if (a5 >= 0.0)
  {
    v15 = a5;
  }

  if (v15 <= 2.22044605e-16)
  {
    goto LABEL_29;
  }

  v16 = -a6;
  if (a6 >= 0.0)
  {
    v16 = a6;
  }

  if (v16 <= 2.22044605e-16)
  {
    goto LABEL_29;
  }

  v17 = -a4;
  if (a4 >= 0.0)
  {
    v17 = a4;
  }

  if (v17 <= 2.22044605e-16)
  {
LABEL_29:
    *(v14 + 14) = 0;
    v18 = 1;
  }

  else
  {
    v18 = 0;
    *(v14 + 14) = 1;
    v19 = *(*(*(this + 56) + 56) + 40);
    *(v14 + 56) = v19;
    *(v14 + 224) = v19 + a4;
  }

  v20 = a5 != 1.79769313e308 && a6 != 1.79769313e308 && a6 < 0.00000005;
  *(v14 + 64) = v20;
  if (a5 == 1.79769313e308 || a6 == 1.79769313e308 || (a3 & 1) == 0)
  {
    BlueFin::GlPeNmeaGen::FormatNmeaSPA(**(this + 56), v14, __s, 0x50);
    v21 = strlen(__s);
    (*(**(v8 + 480) + 504))(*(v8 + 480), __s, v21);
    this = GlCustomLog(20, "GL_NMEA[%d][%s", *(v8 + 48), __s);
  }

  else if ((v18 & 1) == 0)
  {
    *(this + 19) = 1;
  }

  v22 = *MEMORY[0x29EDCA608];
  return this;
}

char *BlueFin::GlPeRqHdlrFactTest::SpaResults(char *result, uint64_t a2)
{
  v2 = result;
  if (*(a2 + 185) == 1)
  {
    result[19] = 1;
  }

  else
  {
    v4 = *(a2 + 4);
    if (v4)
    {
      *(result + 25) = *(a2 + 220);
      result[108] = *(a2 + 224);
      result[109] = *(a2 + 235);
      v5 = *(a2 + 228);
      if (v4 == 1)
      {
        if ((v5 & 0x400000) != 0)
        {
          result[312] = *(a2 + 232);
          *(result + 313) = *(a2 + 233);
          *(result + 18) |= 0x80u;
          v4 = 1;
        }

        else
        {
          *(result + 38) = *(a2 + 192);
          v6 = vrev32_s16(vmovn_s32(*(a2 + 200)));
          *(result + 30) = vuzp1_s8(v6, v6).u32[0];
          *(result + 31) = *a2;
          v7 = *(result + 18);
          *(result + 18) = v7 | 2;
          v8 = *(a2 + 184);
          result[296] = v8;
          v9 = 4 * v8;
          memcpy(result + 136, (a2 + 24), 4 * v8);
          result = memcpy(v2 + 216, (a2 + 104), v9);
          *(v2 + 18) = v7 | 0xA;
          v5 = *(a2 + 228);
          v4 = *(a2 + 4);
        }

        *(v2 + 24) = v5;
      }

      v10 = *(a2 + 8);
      v11 = *(a2 + 16);
      if ((v5 & 0x400000) != 0)
      {
        v12 = 64;
      }

      else if (*(a2 + 217))
      {
        v12 = 32;
      }

      else
      {
        v12 = 4;
      }

      *(v2 + 32) = v4;
      *(v2 + 33) = v10;
      *(v2 + 14) = v11;
      v13 = *(v2 + 18) | v12;
      *(v2 + 18) = v13;
      if (BlueFin::GlUtils::m_pInstance)
      {
        if (*(BlueFin::GlUtils::m_pInstance + 1122) == 1)
        {
          result = (*(*(v2 + 8) + 24))(v2 + 64, 0, 0);
          v13 = *(v2 + 18);
        }
      }

      *(v2 + 18) = v13 & 0xFFFFFF00;
    }
  }

  return result;
}

void *BlueFin::GlPeRqHdlrFactTest::InitializeCWTest(void *result, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned __int8 *a5, unsigned __int8 *a6, unsigned __int8 *a7, unsigned __int8 *a8, unsigned __int8 *a9)
{
  if (*a2 != 255)
  {
    v9 = result[40];
    *v9 = 0;
    *(v9 + 14) = 0;
    *(v9 + 224) = 0;
    *(v9 + 64) = 0;
  }

  v10 = *a3;
  if (v10 != 255)
  {
    v11 = result[42];
    *v11 = 0;
    *(v11 + 14) = 0;
    *(v11 + 224) = 0;
    *(v11 + 12) = v10;
    *(v11 + 64) = 0;
    v12 = *a7;
    if (v12 != 255)
    {
      v13 = result[52];
      *v13 = 0;
      *(v13 + 14) = 0;
      *(v13 + 224) = 0;
      *(v13 + 12) = v12;
      *(v13 + 64) = 0;
    }

    v14 = *a8;
    if (v14 != 255)
    {
      v15 = result[54];
      *v15 = 0;
      *(v15 + 14) = 0;
      *(v15 + 224) = 0;
      *(v15 + 12) = v14;
      *(v15 + 64) = 0;
    }
  }

  if (*a4 != 255)
  {
    v16 = result[44];
    *v16 = 0;
    *(v16 + 14) = 0;
    *(v16 + 224) = 0;
    *(v16 + 64) = 0;
  }

  if (*a5 != 255)
  {
    v17 = result[48];
    *v17 = 0;
    *(v17 + 14) = 0;
    *(v17 + 224) = 0;
    *(v17 + 64) = 0;
  }

  if (*a6 != 255)
  {
    v18 = result[50];
    *v18 = 0;
    *(v18 + 14) = 0;
    *(v18 + 224) = 0;
    *(v18 + 64) = 0;
  }

  if (*a9 != 255)
  {
    v19 = result[56];
    *v19 = 0;
    *(v19 + 14) = 0;
    *(v19 + 224) = 0;
    *(v19 + 64) = 0;
  }

  return result;
}

void *BlueFin::GlPeRqHdlrFactTest::GetFactoryTestStatus(uint64_t a1, unsigned int a2, void *__dst)
{
  if (a2 >= 4)
  {
    DeviceFaultNotify("glpe_reqhdlr_fact_test.cpp", 1350, "GetFactoryTestStatus", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_reqhdlr_fact_test.cpp", 1350, "0");
  }

  v4 = *(a1 + qword_298A44C08[a2]);

  return memcpy(__dst, v4, 0x148uLL);
}

uint64_t BlueFin::GlPeRqHdlrFactTest::Cleanup(BlueFin::GlPeRqHdlrFactTest *this)
{
  v2 = *(*(*(this + 7) + 56) + 88);
  *(*(this + 40) + 4) = (*(**(this + 1) + 360))(*(this + 1));
  *(*(this + 42) + 4) = (*(**(this + 1) + 360))();
  *(*(this + 44) + 4) = (*(**(this + 1) + 360))();
  *(*(this + 46) + 4) = (*(**(this + 1) + 360))();
  *(*(this + 48) + 4) = (*(**(this + 1) + 360))();
  *(*(this + 50) + 4) = (*(**(this + 1) + 360))();
  *(*(this + 56) + 4) = (*(**(this + 1) + 360))();
  *(*(this + 58) + 4) = (*(**(this + 1) + 360))();
  v4 = (v2 - 5) <= 1 && (v3 = *(this + 42), *(v3 + 12) != 255) && *(v3 + 232) == 0;
  if (!(*(**(this + 1) + 368))(*(this + 1)) && (*(**(this + 1) + 360))(*(this + 1)))
  {
    v15 = *(this + 40);
    if (*(v15 + 12) != 255)
    {
      v19 = *(v15 + 4);
      if (v19 > 4)
      {
        if (v19 == 5 || v19 == 8)
        {
          goto LABEL_6;
        }
      }

      else if ((v19 - 1) >= 4)
      {
        if (!v19 && *v15)
        {
          goto LABEL_6;
        }
      }

      else if (*v15 > 4u || *v15 < v19)
      {
        goto LABEL_6;
      }
    }

    v16 = *(this + 44);
    if (*(v16 + 12) != 255)
    {
      v20 = *(v16 + 4);
      if (v20 > 4)
      {
        if (v20 == 5 || v20 == 8)
        {
          goto LABEL_6;
        }
      }

      else if ((v20 - 1) >= 4)
      {
        if (!v20 && *v16)
        {
          goto LABEL_6;
        }
      }

      else if (*v16 > 4u || *v16 < v20)
      {
        goto LABEL_6;
      }
    }

    v17 = *(this + 42);
    if (*(v17 + 12) == 255)
    {
      v18 = 1;
    }

    else
    {
      v21 = *(v17 + 4);
      v18 = 1;
      if (v21 > 4)
      {
        if (v21 == 5 || v21 == 8)
        {
          goto LABEL_6;
        }
      }

      else if ((v21 - 1) >= 4)
      {
        if (!v21)
        {
          v18 = *v17 == 0;
        }
      }

      else
      {
        v18 = *v17 < 5u && *v17 >= v21;
      }
    }

    if (v4 || !v18)
    {
      goto LABEL_6;
    }

    v23 = *(this + 46);
    if (*(v23 + 12) != 255)
    {
      v28 = *(v23 + 4);
      if (v28 > 4)
      {
        if (v28 == 5 || v28 == 8)
        {
          goto LABEL_6;
        }
      }

      else if ((v28 - 1) >= 4)
      {
        if (!v28 && *v23)
        {
          goto LABEL_6;
        }
      }

      else if (*v23 > 4u || *v23 < v28)
      {
        goto LABEL_6;
      }
    }

    v24 = *(this + 48);
    if (*(v24 + 12) != 255)
    {
      v29 = *(v24 + 4);
      if (v29 > 4)
      {
        if (v29 == 5 || v29 == 8)
        {
          goto LABEL_6;
        }
      }

      else if ((v29 - 1) >= 4)
      {
        if (!v29 && *v24)
        {
          goto LABEL_6;
        }
      }

      else if (*v24 > 4u || *v24 < v29)
      {
        goto LABEL_6;
      }
    }

    v25 = *(this + 50);
    if (*(v25 + 12) != 255)
    {
      v30 = *(v25 + 4);
      if (v30 > 4)
      {
        if (v30 == 5 || v30 == 8)
        {
          goto LABEL_6;
        }
      }

      else if ((v30 - 1) >= 4)
      {
        if (!v30 && *v25)
        {
          goto LABEL_6;
        }
      }

      else if (*v25 > 4u || *v25 < v30)
      {
        goto LABEL_6;
      }
    }

    v26 = *(this + 56);
    if (*(v26 + 12) != 255)
    {
      v31 = *(v26 + 4);
      if (v31 > 4)
      {
        if (v31 == 5 || v31 == 8)
        {
          goto LABEL_6;
        }
      }

      else if ((v31 - 1) >= 4)
      {
        if (!v31 && *v26)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v32 = *v26;
        if (v32 > 4 || v32 < v31)
        {
          goto LABEL_6;
        }
      }
    }

    v27 = *(this + 58);
    if (*(v27 + 12) != 255)
    {
      v33 = *(v27 + 4);
      if (v33 > 4)
      {
        if (v33 == 5 || v33 == 8)
        {
          goto LABEL_6;
        }
      }

      else if ((v33 - 1) >= 4)
      {
        if (!v33 && *v27)
        {
          goto LABEL_6;
        }
      }

      else if (*v27 > 4u || *v27 < v33)
      {
        goto LABEL_6;
      }
    }

    if (*(v15 + 232) || *(v17 + 232) || *(v16 + 232) || *(v23 + 232) || *(v25 + 232) || *(v24 + 232) || *(v27 + 232))
    {
      *(this + 19) = 1;
    }
  }

LABEL_6:
  result = (*(**(this + 1) + 360))(*(this + 1));
  if (result == 5 && *(this + 492) == 1)
  {
    result = (*(**(this + 1) + 368))(*(this + 1));
    if (!result)
    {
      *(this + 19) = 1;
    }
  }

  v6 = *(this + 40);
  if (!*v6)
  {
    *(v6 + 204) = 0;
    *(v6 + 14) = 0;
    *(v6 + 216) = 0;
    *(v6 + 224) = 0;
    *(v6 + 208) = 0;
  }

  v7 = *(this + 42);
  if (!*v7)
  {
    *(v7 + 204) = 0;
    *(v7 + 14) = 0;
    *(v7 + 216) = 0;
    *(v7 + 224) = 0;
    *(v7 + 208) = 0;
  }

  v8 = *(this + 52);
  if (!*v8)
  {
    *(v8 + 204) = 0;
    *(v8 + 14) = 0;
    *(v8 + 216) = 0;
    *(v8 + 224) = 0;
    *(v8 + 208) = 0;
  }

  v9 = *(this + 54);
  if (!*v9)
  {
    *(v9 + 204) = 0;
    *(v9 + 14) = 0;
    *(v9 + 216) = 0;
    *(v9 + 224) = 0;
    *(v9 + 208) = 0;
  }

  v10 = *(this + 44);
  if (!*v10)
  {
    *(v10 + 204) = 0;
    *(v10 + 14) = 0;
    *(v10 + 216) = 0;
    *(v10 + 224) = 0;
    *(v10 + 208) = 0;
  }

  v11 = *(this + 48);
  if (!*v11)
  {
    *(v11 + 204) = 0;
    *(v11 + 14) = 0;
    *(v11 + 216) = 0;
    *(v11 + 224) = 0;
    *(v11 + 208) = 0;
  }

  v12 = *(this + 50);
  if (!*v12)
  {
    *(v12 + 204) = 0;
    *(v12 + 14) = 0;
    *(v12 + 216) = 0;
    *(v12 + 224) = 0;
    *(v12 + 208) = 0;
  }

  v13 = *(this + 56);
  if (!*v13)
  {
    *(v13 + 204) = 0;
    *(v13 + 14) = 0;
    *(v13 + 216) = 0;
    *(v13 + 224) = 0;
    *(v13 + 208) = 0;
  }

  if ((*(this + 23) & 1) != 0 || *(this + 20) == 1)
  {
    *(this + 19) = 1;
  }

  else if ((*(this + 19) & 1) == 0)
  {
    return result;
  }

  (*(*this + 272))(this, 0, 0);
  result = *(this + 1);
  v14 = *(result + 56);
  if (v14)
  {

    return v14();
  }

  return result;
}

void BlueFin::GlPeRqHdlrFactTest::~GlPeRqHdlrFactTest(BlueFin::GlPeRqHdlrFactTest *this)
{
  BlueFin::GlPeRqHdlr::~GlPeRqHdlr(this);

  JUMPOUT(0x29C292F70);
}

uint64_t BlueFin::GlPeRqHdlrGnssMeasData::SetGalileoDataPage(BlueFin::GlPeRqHdlrGnssMeasData *this, BlueFin::GlGalileoINavPage *a2)
{
  v16[2] = *MEMORY[0x29EDCA608];
  v3 = *(this + 1);
  v4 = this + 36864;
  *(this + 4995) = 0;
  *(this + 4994) = 0;
  *(this + 4993) = 0;
  v15 = 0;
  memset(v16, 0, 13);
  v14 = 0;
  *(this + 19974) = *(a2 + 8) - 138;
  *(this + 19975) = 1537;
  *(this + 9986) = 24;
  *(this + 19977) = *(a2 + 10);
  v5 = *(a2 + 4);
  if (!v5)
  {
    v5 = 604800;
    *(a2 + 4) = 604800;
  }

  v6 = fmodf(((v5 - 2) / 0x1Eu), 24.0);
  v7 = 0;
  v8 = 0;
  *(v4 + 1544) = (v6 + 1.0);
  *(v4 + 773) = 29;
  while (1)
  {
    v9 = *(a2 + (v8 & 0xFFFFFFFC) + 20);
    if (v8 < 0xE)
    {
      *(&v14 + v8) = v9 >> (~v7 & 0x18);
      goto LABEL_10;
    }

    if (v8 != 14)
    {
      break;
    }

    BYTE6(v15) = BYTE1(v9) & 0xC0;
LABEL_10:
    ++v8;
    v7 += 8;
    if (v8 == 30)
    {
      goto LABEL_13;
    }
  }

  v10 = v9 >> (~v7 & 0x18);
  if (v8 != 29)
  {
    v11 = &v14 + v8;
    *(v11 - 1) = *(&v14 + v8 - 1) | ((v10 & 0xFC) >> 2);
    *v11 = v10 << 6;
    goto LABEL_10;
  }

  BYTE4(v16[1]) |= (v10 >> 2) & 0x30;
LABEL_13:
  *(v4 + 387) = &v14;
  result = BlueFin::GlRequestImplGnssMeasData::OnNavData(v3, (v4 + 3080));
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlPeGnssDataLogger::SerializeImpl(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v20 = *MEMORY[0x29EDCA608];
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
    DeviceFaultNotify("glpe_reqhdlr_gnss_meas_data.cpp", 1607, "SerializeImpl", "ucVersion >= 1 && ucVersion <= 3");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_reqhdlr_gnss_meas_data.cpp", 1607, "ucVersion >= 1 && ucVersion <= 3");
  }

  v5 = v2;
  v6 = v1;
  if (v2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v16 = 109;
    v17 = v4;
    v18 = 0x1000000000000;
    v15 = &unk_2A1F09578;
    v19 = v4;
    if (*(*(v1 + 8) + 4) >= 0x65u)
    {
      DeviceFaultNotify("glpe_reqhdlr_gnss_meas_data.cpp", 1613, "SerializeImpl", "m_oMeasData.uiMmeasurementCount <= GL_GNSS_MAX_MEASUREMENT");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_reqhdlr_gnss_meas_data.cpp", 1613, "m_oMeasData.uiMmeasurementCount <= GL_GNSS_MAX_MEASUREMENT");
    }

    BlueFin::GlSysLogEntry::PutU8(&v15, *(*(v1 + 8) + 4));
    v7 = *(v6 + 8);
    if (*(v7 + 4))
    {
      v8 = 0;
      v9 = 176;
      do
      {
        BlueFin::GlSysLogEntry::PutU32(&v15, *(v7 + v9 - 164));
        BlueFin::GlSysLogEntry::PutU8(&v15, *(v7 + v9 - 160));
        BlueFin::GlSysLogEntry::PutU8(&v15, *(v7 + v9 - 158));
        BlueFin::GlSysLogEntry::PutU32(&v15, *(v7 + v9 - 144));
        BlueFin::GlSysLogEntry::PutS64(&v15, *(v7 + v9 - 136));
        v10 = *(v7 + v9 - 128);
        if ((v10 - 0x100000000) <= 0xFFFFFFFF00000000)
        {
          DeviceFaultNotify("glpe_reqhdlr_gnss_meas_data.cpp", 1624, "SerializeImpl", "meas.sllReceivedGnssTimeUncNs > 0 && meas.sllReceivedGnssTimeUncNs <= MAX_RCVD_SYS_TIME_UNC_NS");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_reqhdlr_gnss_meas_data.cpp", 1624, "meas.sllReceivedGnssTimeUncNs > 0 && meas.sllReceivedGnssTimeUncNs <= MAX_RCVD_SYS_TIME_UNC_NS");
        }

        BlueFin::GlSysLogEntry::PutU32(&v15, v10);
        v11 = *(v7 + v9 - 120);
        BlueFin::GlSysLogEntry::PutF32(&v15, v11);
        BlueFin::GlSysLogEntry::PutD64(&v15, *(v7 + v9 - 112));
        BlueFin::GlSysLogEntry::PutD64(&v15, *(v7 + v9 - 104));
        if (*(v7 + v9 - 96) >= 0x100u)
        {
          DeviceFaultNotify("glpe_reqhdlr_gnss_meas_data.cpp", 1629, "SerializeImpl", "meas.adrsAccumulatedDeltaRangeState < 256");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_reqhdlr_gnss_meas_data.cpp", 1629, "meas.adrsAccumulatedDeltaRangeState < 256");
        }

        BlueFin::GlSysLogEntry::PutU8(&v15, *(v7 + v9 - 96));
        BlueFin::GlSysLogEntry::PutD64(&v15, *(v7 + v9 - 88));
        BlueFin::GlSysLogEntry::PutD64(&v15, *(v7 + v9 - 80));
        BlueFin::GlSysLogEntry::PutF32(&v15, *(v7 + v9 - 48));
        BlueFin::GlSysLogEntry::PutU8(&v15, *(v7 + v9 - 16));
        v12 = *(v7 + v9);
        BlueFin::GlSysLogEntry::PutF32(&v15, v12);
        BlueFin::GlSysLogEntry::PutU8(&v15, *(v7 + v9 - 157));
        ++v8;
        v7 = *(v6 + 8);
        v9 += 392;
      }

      while (v8 < *(v7 + 4));
    }

    BlueFin::GlSysLogEntry::PutU16(&v15, *(v7 + 39212));
    BlueFin::GlSysLogEntry::PutU8(&v15, *(*(v6 + 8) + 39216));
    BlueFin::GlSysLogEntry::PutS64(&v15, *(*(v6 + 8) + 39224));
    BlueFin::GlSysLogEntry::PutS64(&v15, *(*(v6 + 8) + 39240));
    BlueFin::GlSysLogEntry::PutD64(&v15, *(*(v6 + 8) + 39256));
    if (v4 == 3)
    {
      BlueFin::GlSysLogEntry::PutD64(&v15, *(*(v6 + 8) + 39264));
      BlueFin::GlSysLogEntry::PutD64(&v15, *(*(v6 + 8) + 39272));
    }

    BlueFin::GlSysLogEntry::PutU32(&v15, *(*(v6 + 8) + 39280));
    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v15, v5, 4);
  }

  v13 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t BlueFin::GlPeGnssDataLogger::Deserialize(BlueFin::GlPeGnssDataLogger *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 109)
  {
    return 0;
  }

  if (*(a2 + 12) - 4 < 0xFFFFFFFD)
  {
    return 0;
  }

  U8 = BlueFin::GlSysLogEntry::GetU8(a2);
  if (U8)
  {
    v5 = U8;
    for (i = 0; i < v5; ++i)
    {
      BlueFin::GlSysLogEntry::GetU32(a2);
      BlueFin::GlSysLogEntry::GetU8(a2);
      BlueFin::GlSysLogEntry::GetU8(a2);
      BlueFin::GlSysLogEntry::GetU32(a2);
      BlueFin::GlSysLogEntry::GetS64(a2);
      BlueFin::GlSysLogEntry::GetU32(a2);
      BlueFin::GlSysLogEntry::GetF32(a2);
      BlueFin::GlSysLogEntry::GetD64(a2);
      BlueFin::GlSysLogEntry::GetD64(a2);
      BlueFin::GlSysLogEntry::GetU8(a2);
      BlueFin::GlSysLogEntry::GetD64(a2);
      BlueFin::GlSysLogEntry::GetD64(a2);
      BlueFin::GlSysLogEntry::GetF32(a2);
      BlueFin::GlSysLogEntry::GetU8(a2);
      BlueFin::GlSysLogEntry::GetF32(a2);
      BlueFin::GlSysLogEntry::GetU8(a2);
    }
  }

  BlueFin::GlSysLogEntry::GetU16(a2);
  BlueFin::GlSysLogEntry::GetU8(a2);
  BlueFin::GlSysLogEntry::GetS64(a2);
  BlueFin::GlSysLogEntry::GetS64(a2);
  BlueFin::GlSysLogEntry::GetD64(a2);
  if (*(a2 + 12) > 2u)
  {
    BlueFin::GlSysLogEntry::GetD64(a2);
    BlueFin::GlSysLogEntry::GetD64(a2);
  }

  BlueFin::GlSysLogEntry::GetU32(a2);
  return 1;
}

uint64_t BlueFin::GlPeGnssNavDataLogger::SerializeImpl(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v18 = *MEMORY[0x29EDCA608];
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
    DeviceFaultNotify("glpe_reqhdlr_gnss_meas_data.cpp", 1719, "SerializeImpl", "ucVersion >= 1 && ucVersion <= 1");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_reqhdlr_gnss_meas_data.cpp", 1719, "ucVersion >= 1 && ucVersion <= 1");
  }

  v5 = v2;
  v6 = v1;
  if (v2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v14 = 110;
    v15 = v4;
    v16 = 0x1000000000000;
    v13 = &unk_2A1F092C0;
    v17 = v4;
    v7 = v1 + 8;
    BlueFin::GlSysLogEntry::PutU16(&v13, *(*(v1 + 8) + 4));
    BlueFin::GlSysLogEntry::PutU16(&v13, *(*v7 + 6));
    BlueFin::GlSysLogEntry::PutS16(&v13, *(*v7 + 8));
    BlueFin::GlSysLogEntry::PutS16(&v13, *(*v7 + 10));
    BlueFin::GlSysLogEntry::PutU32(&v13, *(*v7 + 12));
    v8 = *v7;
    v9 = *(*v7 + 12);
    if (v9 >= 5120 - HIWORD(v16))
    {
      DeviceFaultNotify("glpe_reqhdlr_gnss_meas_data.cpp", 1730, "SerializeImpl", "m_oNavData.ulDataLength < (GlIntU32) (MAX_SYS_LOG_ENTRY_LONG_SIZE - otEntry.DataSize())");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_reqhdlr_gnss_meas_data.cpp", 1730, "m_oNavData.ulDataLength < (GlIntU32) (MAX_SYS_LOG_ENTRY_LONG_SIZE - otEntry.DataSize())");
    }

    if (v9)
    {
      v10 = 0;
      do
      {
        BlueFin::GlSysLogEntry::PutU8(&v13, *(*(v8 + 16) + v10++));
        v8 = *(v6 + 8);
      }

      while (v10 < *(v8 + 12));
    }

    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v13, v5, 4);
  }

  v11 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t BlueFin::GlPeRqHdlrGnssMeasData::ReportIqData(uint64_t a1)
{
  result = *(a1 + 8);
  v2 = *(result + 112);
  if (v2)
  {
    return v2();
  }

  return result;
}

void BlueFin::GlPeRqHdlrGnssMeasData::~GlPeRqHdlrGnssMeasData(BlueFin::GlPeRqHdlrGnssMeasData *this)
{
  BlueFin::GlPeRqHdlr::~GlPeRqHdlr(this);

  JUMPOUT(0x29C292F60);
}

uint64_t BlueFin::GlPeRqHdlrGpsData::Cleanup(BlueFin::GlPeRqHdlrGpsData *this)
{
  if ((*(this + 20) & 1) == 0 && (*(this + 19) & 1) == 0)
  {
    v2 = *(this + 1);
    v3 = *(v2 + 88);
    v4 = *(v2 + 80);
    if (v4)
    {
      v4(*(this + 1), 0, 0);
    }

    if (v3)
    {
      (*(**(*(this + 7) + 40) + 304))(__src);
      v58.i32[0] = LOBYTE(__src[1]);
      memcpy(v59, __src[0], 4 * LOBYTE(__src[1]));
      v58.i32[1] = v59[0];
      while (1)
      {
        BlueFin::GlSetIterator::operator++(&v58);
        if (v58.u8[1] == v58.u8[0])
        {
          break;
        }

        v5 = *(*(this + 7) + 40);
        v57 = v58.i8[2];
        v6 = (*(*v5 + 112))(v5, &v57, 1);
        if (v6)
        {
          v7 = v6;
          if ((*(*v6 + 152))(v6) == 1)
          {
            (*(*v7 + 272))(v7, __src);
            v8 = *(v2 + 80);
            if (v8)
            {
              v8(v2, 1, __src);
            }
          }
        }
      }

      v9 = *(v2 + 80);
      if (v9)
      {
        v9(v2, 1, 0);
      }
    }

    if ((v3 & 2) != 0)
    {
      v10 = 1;
      do
      {
        v11 = v10;
        if (BlueFin::GlPeAlmMgr::GetAsstAlm(*(*(this + 7) + 32), 0, v10, __src))
        {
          v12 = *(v2 + 80);
          if (v12)
          {
            v12(v2, 2, __src);
          }
        }

        ++v10;
      }

      while (v11 < 0x20);
      v13 = *(v2 + 80);
      if (v13)
      {
        v13(v2, 2, 0);
      }
    }

    if ((v3 & 4) != 0)
    {
      v14 = *(*(this + 7) + 8);
      v15 = v14[642];
      v16 = v15;
      if (v15 <= 0xFF9222FE)
      {
        v16 = v15;
      }

      v17.n128_f64[0] = BlueFin::GlPeTimeManager::lmsToLegacyGlStruct(v14, 0, 1, __src, v16);
      v18 = HIDWORD(__src[1]);
      if (HIDWORD(__src[1]) != -1)
      {
        if (HIDWORD(__src[1]) <= 0xF4240)
        {
          v18 = 1000000;
        }

        HIDWORD(__src[1]) = v18;
      }

      v19 = *(v2 + 80);
      if (v19)
      {
        v19(v2, 4, __src, v17);
      }
    }

    if ((v3 & 8) != 0)
    {
      *__src = 0u;
      memset(v61, 0, sizeof(v61));
      v20 = *(*(this + 7) + 64);
      if (*(v20 + 44) == -1)
      {
        v21 = 0;
      }

      else
      {
        v21 = __src;
        if (__src != v20)
        {
          *v61 = *(v20 + 16);
          *__src = *v20;
          *&v61[8] = *(v20 + 24);
          v21 = __src;
        }
      }

      v22 = *(v2 + 80);
      if (v22)
      {
        v22(v2, 8, v21);
      }
    }

    if ((v3 & 0x10) != 0)
    {
      v23 = *(v2 + 80);
      if (v23)
      {
        v23(v2, 16, 0);
      }
    }

    if ((v3 & 0x20) != 0)
    {
      v24 = *(*(this + 7) + 8);
      v25 = *(v24 + 136);
      if (v25 == 2)
      {
        *__src = *(v24 + 160);
      }

      v26 = *(v2 + 80);
      if (v26)
      {
        if (v25 == 2)
        {
          v27 = __src;
        }

        else
        {
          v27 = 0;
        }

        v26(v2, 32, v27);
      }
    }

    if ((v3 & 0x40) != 0)
    {
      v68 = 7;
      v69 = 0;
      LODWORD(__src[0]) = -65536;
      __src[1] = 0;
      *v61 = 0;
      *&v61[8] = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v65 = 0;
      v66 = -1;
      v28 = 1;
      v67 = 0;
      do
      {
        v29 = v28;
        if (BlueFin::GlPeAlmMgr::GetAlm(*(*(this + 7) + 32), 1u, v28, __src, 0, 1))
        {
          v34 = BlueFin::GlPeAlmanac::Export(__src, &v58, v30, v31, v32, v33);
          v35 = *(v2 + 80);
          if (v35)
          {
            v35(v2, 64, &v58, v34);
          }
        }

        ++v28;
      }

      while (v29 < 0x13);
      v36 = *(v2 + 80);
      if (v36)
      {
        v36(v2, 64, 0);
      }
    }

    if ((v3 & 0x80) != 0)
    {
      v68 = 7;
      v69 = 0;
      LODWORD(__src[0]) = -65536;
      __src[1] = 0;
      *v61 = 0;
      *&v61[8] = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v65 = 0;
      v66 = -1;
      v37 = 1;
      v67 = 0;
      do
      {
        v38 = v37;
        if (BlueFin::GlPeAlmMgr::GetAlm(*(*(this + 7) + 32), 2u, v37, __src, 0, 1))
        {
          v43 = BlueFin::GlPeAlmanac::Export(__src, &v58, v39, v40, v41, v42);
          v44 = *(v2 + 80);
          if (v44)
          {
            v44(v2, 128, &v58, v43);
          }
        }

        ++v37;
      }

      while (v38 < 0x18);
      v45 = *(v2 + 80);
      if (v45)
      {
        v45(v2, 128, 0);
      }
    }

    if ((v3 & 0x100) != 0)
    {
      v68 = 7;
      v69 = 0;
      LODWORD(__src[0]) = -65536;
      __src[1] = 0;
      *v61 = 0;
      *&v61[8] = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v65 = 0;
      v66 = -1;
      v46 = 1;
      v67 = 0;
      do
      {
        v47 = v46;
        if (BlueFin::GlPeAlmMgr::GetAlm(*(*(this + 7) + 32), 3u, v46, __src, 0, 1))
        {
          v52 = BlueFin::GlPeAlmanac::Export(__src, &v58, v48, v49, v50, v51);
          v53 = *(v2 + 80);
          if (v53)
          {
            v53(v2, 256, &v58, v52);
          }
        }

        ++v46;
      }

      while (v47 < 0xA);
      v54 = *(v2 + 80);
      if (v54)
      {
        v54(v2, 256, 0);
      }
    }

    v55 = *(v2 + 80);
    if (v55)
    {
      v55(v2, 0x8000, 0);
    }

    *(this + 19) = 1;
  }

  return BlueFin::GlPeRqHdlr::Cleanup(this);
}

void BlueFin::GlPeRqHdlrGpsData::~GlPeRqHdlrGpsData(BlueFin::GlPeRqHdlrGpsData *this)
{
  BlueFin::GlPeRqHdlr::~GlPeRqHdlr(this);

  JUMPOUT(0x29C292F70);
}

uint64_t BlueFin::GlPeRqHdlrMeas_SortPrns(BlueFin *this, double *a2, const void *a3)
{
  v3 = *(this + 2) - a2[2];
  if (v3 >= 0.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = -1;
  }

  if (v3 > 0.0)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

void BlueFin::GlPeMeasStatus::Start(BlueFin::GlPeMeasStatus *this, unsigned int a2)
{
  BlueFin::GlPeTowFilter::init((this + 4), *(*(this + 3) + 8), a2);
  v3 = *(*(this + 3) + 56);
  if (*(v3 + 26056) == 1 && (v4 = *(v3 + 48), v4 <= 8))
  {
    v5 = 0x1F4u >> v4;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  *(this + 9808) = v5 & 1;
}

unsigned __int8 *BlueFin::GlPeMeasStatus::SetSatellitesDetectedAndQaAndStoreMeas(BlueFin::GlPeMeasStatus *this, BlueFin::GlPeMsmtMgr *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__src, unsigned __int8 a18, unsigned int a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, __int128 a30, __int128 a31, __int128 a32, __int128 a33, __int128 a34, __int128 a35, __int128 a36, __int128 a37, __int128 a38, __int128 a39, __int128 a40, __int128 a41, __int128 a42, __int128 a43, __int128 a44, __int128 a45, __int128 a46, __int128 a47, __int128 a48, __int128 a49, __int128 a50, __int128 a51)
{
  v51 = MEMORY[0x2A1C7C4A8](this);
  v53 = v52;
  v54 = v51;
  v56 = v55;
  v57 = 0;
  STACK[0x12B8] = *MEMORY[0x29EDCA608];
  v175 = *v52;
  *(v51 + 32) = xmmword_298A44E50;
  *&STACK[0xC10] = 0u;
  *&STACK[0xC00] = 0u;
  *&STACK[0xBF0] = 0u;
  *&STACK[0xBE0] = 0u;
  *&STACK[0xBD0] = 0u;
  *&STACK[0xBC0] = 0u;
  *&STACK[0xBB0] = 0u;
  *&STACK[0xBA0] = 0u;
  *&STACK[0xB90] = 0u;
  *&STACK[0xB80] = 0u;
  *&STACK[0xB70] = 0u;
  *&STACK[0xB60] = 0u;
  *&STACK[0xB50] = 0u;
  *&STACK[0xB40] = 0u;
  *&STACK[0xB30] = 0u;
  *&STACK[0xB20] = 0u;
  *&STACK[0xB10] = 0u;
  *&STACK[0xB00] = 0u;
  *&STACK[0xAF0] = 0u;
  *&STACK[0xAE0] = 0u;
  *&STACK[0xAD0] = 0u;
  *&STACK[0xAC0] = 0u;
  *&STACK[0xAB0] = 0u;
  *&STACK[0xAA0] = 0u;
  *&STACK[0xA90] = 0u;
  *&STACK[0xA80] = 0u;
  *&STACK[0xA70] = 0u;
  *&STACK[0xA60] = 0u;
  *&STACK[0xA50] = 0u;
  *&STACK[0xA40] = 0u;
  *&STACK[0xA30] = 0u;
  *&STACK[0xA20] = 0u;
  do
  {
    v58 = &STACK[0xA20] + v57;
    *v58 = 0;
    *(v58 + 1) = -1;
    *(v58 + 4) = 575;
    *(v58 + 2) = 0;
    v57 += 24;
  }

  while (v57 != 2184);
  v59 = 0;
  *&STACK[0x360] = 0u;
  *&STACK[0x370] = 0u;
  *&STACK[0x340] = 0u;
  *&STACK[0x350] = 0u;
  *&STACK[0x320] = 0u;
  *&STACK[0x330] = 0u;
  *&STACK[0x300] = 0u;
  *&STACK[0x310] = 0u;
  *&STACK[0x2E0] = 0u;
  *&STACK[0x2F0] = 0u;
  *&STACK[0x2C0] = 0u;
  *&STACK[0x2D0] = 0u;
  *&STACK[0x2A0] = 0u;
  *&STACK[0x2B0] = 0u;
  a51 = 0u;
  *&STACK[0x290] = 0u;
  a49 = 0u;
  a50 = 0u;
  a47 = 0u;
  a48 = 0u;
  a45 = 0u;
  a46 = 0u;
  a43 = 0u;
  a44 = 0u;
  a41 = 0u;
  a42 = 0u;
  a39 = 0u;
  a40 = 0u;
  a37 = 0u;
  a38 = 0u;
  a35 = 0u;
  a36 = 0u;
  do
  {
    v60 = &a35 + v59;
    *v60 = 0;
    *(v60 + 1) = -1;
    *(v60 + 4) = 575;
    *(v60 + 2) = 0;
    v59 += 24;
  }

  while (v59 != 2184);
  v61 = *(*(v51 + 24) + 48);
  BlueFin::GlSetBase::GlSetBase(&__src, &a19, 0x13u, v52 + 1);
  LOBYTE(a29) = a18;
  memcpy(&a30, __src, 4 * a18);
  WORD1(a29) = 0;
  BYTE1(a29) = 0;
  HIDWORD(a29) = a30;
  BlueFin::GlSetIterator::operator++(&a29);
  if (BYTE1(a29) == a29)
  {
    v63 = 0;
    v64 = 0;
    *(v54 + 44) = 100;
    *(v54 + 52) = 0xFFFF;
    goto LABEL_7;
  }

  v171 = v61;
  v66 = 0;
  v174 = 0;
  v64 = 0;
  v67 = -30.0;
  v68.f64[0] = NAN;
  v68.f64[1] = NAN;
  v172 = vnegq_f64(v68);
  do
  {
    if (WORD1(a29) >= 0x23FuLL)
    {
      goto LABEL_189;
    }

    v69 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * WORD1(a29);
    v70 = *v69;
    v71 = v69[1];
    v72 = v69[1];
    LOBYTE(v182[0]) = v70;
    v182[1] = v71;
    LOWORD(vars0) = WORD1(a29);
    if (*(v54 + 9808) == 1)
    {
      if (v72 != 2)
      {
        goto LABEL_84;
      }
    }

    else if (v72)
    {
      goto LABEL_84;
    }

    MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(v53, v182, 0, 0);
    if (MeMeas)
    {
      v76 = MeMeas;
      v77 = *MeMeas;
      if (*MeMeas)
      {
        if (v77 < 0x21 || v77 - 52 <= 0xD)
        {
          if (*(v54 + 58) == 1 && ((*(*(v54 + 496) + ((LOBYTE(v182[0]) >> 3) & 0x1C)) >> (v182[0] & 0x1F)) & 1) == 0)
          {
            GlCustomLog(14, "Do not have aiding for SV %d\n", LOBYTE(v182[0]));
            goto LABEL_84;
          }

          if ((*(MeMeas + 3) & 0x8002) != 2)
          {
            goto LABEL_84;
          }

          *v74.i64 = *(MeMeas + 24) * 299792458.0;
          *v75.i64 = *v74.i64 + trunc(*v74.i64 * 2.32830644e-10) * -4294967300.0;
          v78 = vbslq_s8(v172, v75, v74);
          if (*v74.i64 > 4294967300.0)
          {
            v74.i64[0] = v78.i64[0];
          }

          if (*v74.i64 < -4294967300.0)
          {
            *v78.i64 = -*v74.i64;
            *v74.i64 = -(*v74.i64 - trunc(*v74.i64 * -2.32830644e-10) * -4294967300.0);
            *v74.i64 = -*vbslq_s8(v172, v74, v78).i64;
          }

          if (*v74.i64 < 0.0)
          {
            v79 = --*v74.i64;
          }

          else
          {
            v79 = *v74.i64;
          }

          v173 = v79;
          v80 = LOBYTE(v182[0]);
          BlueFin::GlArray::EnsureValidHandle(v54 + 456, LOBYTE(v182[0]));
          v81 = *(*(v54 + 472) + v80 - *(v54 + 492));
          v82 = BlueFin::GlArray::Add((v54 + 456), LOBYTE(v182[0]));
          if (v82)
          {
            if (v81 == 255)
            {
              *v82 = 0;
            }

            *v83.i32 = v76[14].f32[1] + 0.5;
            *v84.i32 = *v83.i32 + (truncf(*v83.i32 * 2.3283e-10) * -4295000000.0);
            v85.i64[0] = 0x8000000080000000;
            v85.i64[1] = 0x8000000080000000;
            v86 = vbslq_s8(v85, v84, v83);
            if (*v83.i32 > 4295000000.0)
            {
              v83.i32[0] = v86.i32[0];
            }

            if (*v83.i32 < -4295000000.0)
            {
              *v86.i32 = -*v83.i32;
              *v83.i32 = -(*v83.i32 - (truncf(*v83.i32 * -2.3283e-10) * -4295000000.0));
              *v83.i32 = -*vbslq_s8(v85, v83, v86).i32;
            }

            if (*v83.i32 < 0.0)
            {
              v87 = --*v83.i32;
            }

            else
            {
              LOBYTE(v87) = *v83.i32;
            }

            *v82 = v87;
            if (v87 >= 0x25u)
            {
              ++*(v54 + 40);
              LOBYTE(v87) = *v82;
            }

            if (v87 <= 0x1Bu)
            {
              ++*(v54 + 36);
              LOBYTE(v87) = *v82;
            }

            if (v67 < v87)
            {
              v67 = v87;
            }
          }

          if (v76->u8[0] - 1 <= 0x1F)
          {
            ++*(v54 + 32);
          }

          if (v76[2].i32[1] == 4)
          {
            *(v54 + 60) = 0;
            v88 = 1;
          }

          else
          {
            v89 = (*(v54 + 60))++ + 1;
            if (v89 != 5)
            {
              goto LABEL_51;
            }

            v88 = 0;
          }

          *(v54 + 59) = v88;
LABEL_51:
          v90 = BlueFin::GlPeMeasStatus::MsaLogic(v76);
          v91 = v90;
          if (v90 > 0.0)
          {
            v92 = &STACK[0xA20] + 3 * v64;
            if (v92 != v76)
            {
              *v92 = v76->i8[0];
              *(v92 + 1) = v76->i32[1];
              *(v92 + 4) = v76[1].i16[0];
            }

            *(v92 + 2) = v90;
            v93 = &a35 + 3 * v64;
            if (v93 != v76)
            {
              v93->i8[0] = v76->i8[0];
              v93->i32[1] = v76->i32[1];
              v93[1].i16[0] = v76[1].i16[0];
            }

            *&v93[2] = v76[14].f32[1];
            v64 = (v64 + 1);
          }

          v94 = v76->u8[0];
          BlueFin::GlArray::EnsureValidHandle(v54 + 616, v94);
          v95 = v76->u8[0];
          v96 = (v54 + 616);
          if (*(*(v54 + 632) + v94 - *(v54 + 652)) == 255)
          {
            v98 = BlueFin::GlArray::Add(v96, v95);
            if (!v98)
            {
              v168 = "potStoredMeas != nullptr";
              DeviceFaultNotify("glpe_reqhdlr_meas.cpp", 220, "SetSatellitesDetectedAndQaAndStoreMeas", "potStoredMeas != nullptr");
              v169 = "glpe_reqhdlr_meas.cpp";
              v170 = 220;
              goto LABEL_190;
            }

            v97 = v98;
            *(v98 + 40) = -1065353216;
          }

          else
          {
            v97 = BlueFin::GlArray::Get(v96, v95);
            if (!v97)
            {
              v168 = "potStoredMeas != nullptr";
              DeviceFaultNotify("glpe_reqhdlr_meas.cpp", 224, "SetSatellitesDetectedAndQaAndStoreMeas", "potStoredMeas != nullptr");
              v169 = "glpe_reqhdlr_meas.cpp";
              v170 = 224;
              goto LABEL_190;
            }
          }

          *(v97 + 48) = v175;
          *v97 = v76->i8[0];
          *(v97 + 8) = vcvtq_f64_f32(v76[13]);
          *(v97 + 24) = v76[8];
          *(v97 + 32) = v76[12].f32[0];
          *(v97 + 56) = v91;
          if ((v97 + 64) != v76)
          {
            *(v97 + 64) = v76->i8[0];
            *(v97 + 68) = v76->i32[1];
            *(v97 + 72) = v76[1].i16[0];
          }

          v99 = *(v97 + 52);
          if (v99 == -7200001 || (v175 - v99) < 0x7D1)
          {
            if (v99 != -7200001)
            {
              v100 = v76[2].i32[1];
              goto LABEL_73;
            }
          }

          else
          {
            *(v97 + 52) = -7200001;
          }

          v100 = v76[2].i32[1];
          if (v100 < 3 || (*(v97 + 52) = v175, v175 == -7200001))
          {
LABEL_77:
            ++v66;
            v174 += v173 * v173;
            v103 = *(*(v54 + 24) + 8);
            if (*(v103 + 2576) == 3 || (*(v103 + 2744) & 8) != 0)
            {
              v104 = v76[14].f32[1];
              if (*(v97 + 40) > v104)
              {
                goto LABEL_84;
              }
            }

            else
            {
              v104 = v76[14].f32[1];
            }

            *(v97 + 40) = v104;
            AidBySvId = BlueFin::GlPeSatAidInfo::GetAidBySvId(v171 + 32, v182);
            if (AidBySvId)
            {
              *(v97 + 80) = (*(AidBySvId + 11) - v76[13].f32[0]) * 1000000000.0;
            }

            else
            {
              *(v97 + 80) = 0;
            }

            goto LABEL_84;
          }

LABEL_73:
          v101 = v56;
          v102 = *(v97 + 44);
          if (v100 <= v102)
          {
            *(BlueFin::GlPeMsmtMgr::AccessMeMeas(v53, v182, 1, 0) + 5) = v102;
          }

          else
          {
            *(v97 + 44) = v100;
          }

          v56 = v101;
          goto LABEL_77;
        }
      }
    }

LABEL_84:
    BlueFin::GlSetIterator::operator++(&a29);
  }

  while (BYTE1(a29) != a29);
  if (v66 >= 3u)
  {
    v106.i32[0] = 20.0;
    v110 = 4.0;
    if (v66 >= 8u)
    {
      v111 = 1;
    }

    else
    {
      v111 = 2;
    }

    v112 = 1.0;
    if (v66 < 8u)
    {
      v112 = 2.0;
    }

    if (v66 == 5)
    {
      v113 = 4;
    }

    else
    {
      v113 = v111;
    }

    if (v66 != 5)
    {
      v110 = v112;
    }

    if (v66 >= 5u)
    {
      *v106.i32 = v110;
    }

    else
    {
      v113 = 20;
    }

    *(v54 + 44) = v113;
    v109 = (v54 + 52);
LABEL_102:
    v63 = v66;
    *v106.i32 = sqrtf(v174 / v66) * *v106.i32;
    *v108.i32 = *v106.i32 + (truncf(*v106.i32 * 2.3283e-10) * -4295000000.0);
    v114.i64[0] = 0x8000000080000000;
    v114.i64[1] = 0x8000000080000000;
    v108.i32[0] = vbslq_s8(v114, v108, v106).u32[0];
    if (*v106.i32 > 4295000000.0)
    {
      v106.i32[0] = v108.i32[0];
    }

    if (*v106.i32 < -4295000000.0)
    {
      *v107.i32 = -*v106.i32;
      *v106.i32 = -(*v106.i32 - (truncf(*v106.i32 * -2.3283e-10) * -4295000000.0));
      *v106.i32 = -*vbslq_s8(v114, v106, v107).i32;
    }

    if (*v106.i32 < 0.0)
    {
      v115 = --*v106.i32;
    }

    else
    {
      v115 = *v106.i32;
    }

    *v109 = v115;
    v65 = v66 < 7u;
  }

  else
  {
    *(v54 + 52) = 0xFFFF;
    v109 = (v54 + 52);
    *(v54 + 44) = 100;
    if (v66)
    {
      v106.i32[0] = 1120403456;
      goto LABEL_102;
    }

    v63 = 0;
LABEL_7:
    v65 = 1;
  }

  *(v54 + 49) = 0;
  if (*(v54 + 59) == 1 && *(v54 + 32) < 6)
  {
    goto LABEL_115;
  }

  v116 = v63 - *(v54 + 36) <= 4;
  v117 = !v65;
  if (!v116)
  {
    v117 = 1;
  }

  if ((v117 & 1) == 0)
  {
LABEL_115:
    *(v54 + 49) = 1;
  }

  if ((v64 - 1) <= 3)
  {
    BlueFin::GlSetBase::GlSetBase(&a29, &a30 + 1, 0x13u, v53 + 181);
    LOBYTE(v182[0]) = a30;
    memcpy(&vars0, a29, 4 * a30);
    HIWORD(v182[0]) = 0;
    BYTE1(v182[0]) = 0;
    v182[1] = vars0;
    BlueFin::GlSetIterator::operator++(v182);
    if (BYTE1(v182[0]) == LOBYTE(v182[0]))
    {
      v118 = v64;
LABEL_131:
      v64 = v118;
      goto LABEL_132;
    }

    v118 = v64;
    while (HIWORD(v182[0]) < 0x23FuLL)
    {
      v119 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * HIWORD(v182[0]);
      v120 = *v119;
      LODWORD(v119) = v119[1];
      LOBYTE(v179[0]) = v120;
      v180 = v119;
      v181 = HIWORD(v182[0]);
      v121 = BlueFin::GlPeMsmtMgr::AccessPropagatedMeMeas(v53, v179);
      v122 = v121;
      if (*(v54 + 58) != 1 || (v123 = *v121, BlueFin::GlArray::EnsureValidHandle(v54 + 456, v123), *(*(v54 + 472) + v123 - *(v54 + 492)) != 255))
      {
        v124 = BlueFin::GlPeMeasStatus::MsaLogic(v122);
        if (v124 > 0.0)
        {
          v125 = &STACK[0xA20] + 3 * v118;
          if (v125 != v122)
          {
            *v125 = *v122;
            *(v125 + 1) = *(v122 + 1);
            *(v125 + 4) = *(v122 + 4);
          }

          *(v125 + 2) = v124;
          v126 = &a35 + 24 * v118;
          if (v126 == v122)
          {
            v127 = *(v122 + 1);
          }

          else
          {
            *v126 = *v122;
            v127 = *(v122 + 1);
            *(v126 + 1) = v127;
            *(v126 + 4) = *(v122 + 4);
          }

          *(v126 + 2) = *(v122 + 29);
          v118 = (v118 + 1);
          GlCustomLog(14, "<PropMeasQa> PRN %02d Carrband %d\n", *v122, v127);
        }
      }

      BlueFin::GlSetIterator::operator++(v182);
      if (BYTE1(v182[0]) == LOBYTE(v182[0]))
      {
        goto LABEL_131;
      }
    }

LABEL_189:
    v168 = "usIndex < NUM_SIGNAL_IDS";
    DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
    v169 = "glsignalid.h";
    v170 = 578;
LABEL_190:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v169, v170, v168);
  }

LABEL_132:
  BlueFin::GlStdLib::QsortImpl(&STACK[0xA20], v64, 0x18u, BlueFin::GlPeRqHdlrMeas_SortPrns, &a29, v62);
  BlueFin::GlStdLib::QsortImpl(&a35, v64, 0x18u, BlueFin::GlPeRqHdlrMeas_SortPrns, &a29, v128);
  a29 = &a30 + 4;
  LOBYTE(a30) = 19;
  *(&a30 + 4) = 0u;
  *(&a31 + 4) = 0u;
  *(&a32 + 4) = 0u;
  *(&a33 + 4) = 0u;
  a34 = 0u;
  v129 = *(*(v54 + 24) + 8);
  v130 = v129[642];
  v131 = v130;
  if (v130 <= 0xFF9222FE)
  {
    v131 = v130;
  }

  v132 = BlueFin::GlPeTimeManager::lmsToLegacyGlStruct(v129, 2u, 0, v179, v131);
  v133 = *(*(v54 + 24) + 8);
  v134 = *(v133 + 2576);
  v135 = v179[0];
  if (v134)
  {
    v136 = v179[0] >= 0x7E4u;
  }

  else
  {
    v136 = 1;
  }

  v137 = !v136;
  *v54 = v137;
  if (v134 != 3)
  {
    if ((v137 & ((*(v133 + 2744) & 8) >> 3) & 1) == 0)
    {
      goto LABEL_142;
    }

    goto LABEL_162;
  }

  if (v135 <= 0x7E3)
  {
LABEL_162:
    if (v64 >= 1)
    {
      v152 = 0;
      v153 = a29;
      v154 = a29 + 4 * a30 - 4;
      v132 = 1000.0;
      do
      {
        v155 = 0;
        v156 = v154;
        do
        {
          if (*v156)
          {
            v157 = *v156 - (((*v156 >> 1) & 0x5B6DB6DB) + ((*v156 >> 2) & 0x9249249));
            v155 = ((v157 + (v157 >> 3)) & 0xC71C71C7) + v155 - 63 * (((v157 + (v157 >> 3)) & 0xC71C71C7) / 0x3F);
          }

          --v156;
        }

        while (v156 >= v153);
        if ((v155 & 0xFFF8) != 0 && *(&STACK[0xA20] + 3 * v152 + 2) >= 1000.0)
        {
          break;
        }

        v158 = *(&STACK[0xA20] + 12 * v152 + 4);
        v153[v158 >> 5] |= 1 << v158;
        ++v152;
      }

      while (v152 != v64);
    }

    goto LABEL_182;
  }

LABEL_142:
  v138 = a29;
  if (v64 >= 1)
  {
    v139 = v64;
    v140 = &STACK[0xA28];
    do
    {
      v141 = *v140;
      v140 += 3;
      v138[v141 >> 5] |= 1 << v141;
      --v139;
    }

    while (v139);
  }

  v142 = 0;
  v143 = &v138[a30 - 1];
  do
  {
    if (*v143)
    {
      v144 = *v143 - (((*v143 >> 1) & 0x5B6DB6DB) + ((*v143 >> 2) & 0x9249249));
      v142 = ((v144 + (v144 >> 3)) & 0xC71C71C7) + v142 - 63 * (((v144 + (v144 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    --v143;
  }

  while (v143 >= v138);
  if ((v142 < 7u) | v137 & 1)
  {
    v145 = v142 > 6u;
    if (v64 >= 1 && ((v145 | v137) & 1) != 0)
    {
      v146 = &a35;
      v147 = BlueFin::GlArray::Get((v54 + 616), *(&a35 + 24 * (v64 - 1)));
      v148 = v64;
      while (1)
      {
        v150 = *v146;
        v146 += 24;
        v149 = v150;
        v151 = BlueFin::GlArray::Get((v54 + 616), v150);
        if (!v151)
        {
          break;
        }

        LODWORD(v132) = *(v151 + 40);
        if (*&v132 < 18.0)
        {
          v132 = *(v147 + 80) - *(v151 + 80);
          if (v132 < 0.0)
          {
            v132 = -v132;
          }

          if (v132 > 12.0)
          {
            BlueFin::GlSetBase::Remove(&a29, *(v151 + 72));
            GlCustomLog(14, "<SvQa> Remove PRN %02d, Ghost SV detected\n", v149);
          }
        }

        if (!--v148)
        {
          goto LABEL_182;
        }
      }

      v168 = "potStoredMeas != nullptr";
      DeviceFaultNotify("glpe_reqhdlr_meas.cpp", 424, "SetSatellitesDetectedAndQaAndStoreMeas", "potStoredMeas != nullptr");
      v169 = "glpe_reqhdlr_meas.cpp";
      v170 = 424;
      goto LABEL_190;
    }
  }

  else
  {
    LOBYTE(v182[0]) = a30;
    memcpy(&vars0, v138, 4 * a30);
    HIWORD(v182[0]) = 0;
    BYTE1(v182[0]) = 0;
    v182[1] = vars0;
    BlueFin::GlSetIterator::operator++(v182);
    if (BYTE1(v182[0]) != LOBYTE(v182[0]))
    {
      while (HIWORD(v182[0]) < 0x23FuLL)
      {
        v159 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * HIWORD(v182[0]);
        v160 = *v159;
        LODWORD(v159) = v159[1];
        v176 = v160;
        v177 = v159;
        v178 = HIWORD(v182[0]);
        v161 = BlueFin::GlPeMsmtMgr::GetMeMeas(v53, &v176, 1, 0);
        v162 = v161;
        v163 = 0;
        v164 = a29 + 4 * a30 - 4;
        do
        {
          if (*v164)
          {
            v165 = *v164 - (((*v164 >> 1) & 0x5B6DB6DB) + ((*v164 >> 2) & 0x9249249));
            v163 = ((v165 + (v165 >> 3)) & 0xC71C71C7) + v163 - 63 * (((v165 + (v165 >> 3)) & 0xC71C71C7) / 0x3F);
          }

          --v164;
        }

        while (v164 >= a29);
        if (v163 >= 7u && *(v161 + 5) == 4)
        {
          BlueFin::GlSetBase::Remove(&a29, *(v161 + 4));
          GlCustomLog(14, "<SvQa> Remove PRN %02d, high MP\n", *v162);
        }

        BlueFin::GlSetIterator::operator++(v182);
        if (BYTE1(v182[0]) == LOBYTE(v182[0]))
        {
          goto LABEL_182;
        }
      }

      goto LABEL_189;
    }
  }

LABEL_182:
  GlCustomLog(14, "<HdlrMeas::MeasQa><PreQaSort=", v132);
  BlueFin::GlSignalIdSet::GetSvIdSet(&__src, v182);
  BlueFin::GlSetBase::Print(v182, 0xEu);
  GlCustomLog(14, "\n");
  GlCustomLog(14, "<HdlrMeas::MeasQa><PostQaSort=");
  BlueFin::GlSignalIdSet::GetSvIdSet(&a29, v182);
  BlueFin::GlSetBase::Print(v182, 0xEu);
  GlCustomLog(14, "\n");
  LOBYTE(v182[0]) = a18;
  memcpy(&vars0, __src, 4 * a18);
  HIWORD(v182[0]) = 0;
  BYTE1(v182[0]) = 0;
  v182[1] = vars0;
  BlueFin::GlSetIterator::operator++(v182);
  if (BYTE1(v182[0]) != LOBYTE(v182[0]))
  {
    while (HIWORD(v182[0]) < 0x23Fu)
    {
      if (((*(a29 + ((HIWORD(v182[0]) >> 3) & 0x1FFC)) >> (BYTE2(v182[0]) & 0x1F)) & 1) == 0)
      {
        GlCustomLog(14, "SVIDMSA %d is missing from fresh list\n", *(&BlueFin::GlSignalId::s_aotIndex2signalId + 2 * HIWORD(v182[0])));
      }

      BlueFin::GlSetIterator::operator++(v182);
      if (BYTE1(v182[0]) == LOBYTE(v182[0]))
      {
        goto LABEL_187;
      }
    }

    goto LABEL_189;
  }

LABEL_187:
  result = BlueFin::GlSignalIdSet::GetSvIdSet(&a29, v56);
  v167 = __OFSUB__(*MEMORY[0x29EDCA608], STACK[0x12B8]);
  return result;
}

double BlueFin::GlPeMeasStatus::MsaLogic(unsigned __int8 *a1)
{
  v1 = *(a1 + 3);
  v2 = -1.0;
  if ((v1 & 0x8002) != 2)
  {
    return v2;
  }

  v4 = *(a1 + 5);
  v5 = *(a1 + 29);
  if (v5 >= 16.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 1.0;
  }

  v7 = v4 - 3;
  if ((v1 & 0x100) == 0)
  {
    v8 = *(a1 + 27);
    if (v5 >= 24.0)
    {
      v10 = 0.0;
      v9 = 1.0;
      if (v8 < 0.000000014)
      {
        v9 = 0.0;
      }
    }

    else
    {
      v9 = 0.0;
      if (v8 >= 0.000000014)
      {
        v10 = ((fabsf(v5) / 1000.0) + 1.0);
      }

      else
      {
        v10 = 0.0;
      }
    }

    goto LABEL_28;
  }

  v11 = *(a1 + 12);
  v12 = fmodf(v11, 1000.0);
  v10 = 0.0;
  if (v12 > 50.0 && v12 < 950.0)
  {
    goto LABEL_11;
  }

  if (v5 < 24.0)
  {
    if (v11 >= 0xFA0)
    {
      v13 = 1.0;
    }

    else
    {
      v13 = 0.0;
    }

    if (v11 >= 0xFA0)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = 1.0;
    }

    v9 = 0.0;
    goto LABEL_29;
  }

  if (v7 > 1)
  {
LABEL_11:
    v9 = 0.0;
LABEL_28:
    v13 = 0.0;
    v14 = 0.0;
LABEL_29:
    v16 = 0.0;
    v17 = 0.0;
    goto LABEL_30;
  }

  if (v11 >> 6 < 0x7D)
  {
    v9 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
    if (v11 < 0xFA0)
    {
      goto LABEL_30;
    }

    v15 = *(a1 + 14);
LABEL_40:
    if (v15 <= 3)
    {
      v17 = 0.0;
    }

    else
    {
      v17 = 1.0;
    }

    v9 = 0.0;
    v16 = 0.0;
    goto LABEL_30;
  }

  v15 = *(a1 + 14);
  v16 = 1.0;
  v9 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  v17 = 0.0;
  if (v15 <= 7)
  {
    goto LABEL_40;
  }

LABEL_30:
  v18 = v6;
  if (v4 == 4)
  {
    v19 = 1.0;
  }

  else
  {
    v19 = 0.0;
  }

  v20 = v10 * 10000000.0 + v6 * 100000000.0 + v19 * 1000000.0 + v14 * 100000.0;
  if (v7 >= 2)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = 1.0;
  }

  v22 = *(a1 + 24);
  v2 = v20 + v21 * 100000.0 + v13 * 10000.0 + v9 * 1000.0 + v17 * 100.0 + v16 * 10.0 + v22;
  GlCustomLog(14, "<HdlrMeas::MeasQa><PRN=%i,CN0=%.1f,o=%g,HMp=%.1f,MMp=%.1f,Vlss=%.1f,LssM1=%5.4f,LssTrk=%.1f,HssM1=%.1f,HssEpShort=%.1f,HssEpLong%.1f,Metric=%10g,EpCnt=%u>\n", *a1, v5, v22 * 1000000.0, v19, v21, v18, v10, v13, v9, v17, v16, v2, *(a1 + 12));
  return v2;
}

BOOL BlueFin::GlPeMeasStatus::PositionPossible(BlueFin::GlPeMeasStatus *this, BlueFin::GlPeMsmtMgr *a2)
{
  v2 = *(*(*(this + 3) + 8) + 2568);
  if (v2 <= 0xFF9222FE)
  {
    v3 = v2;
  }

  else
  {
    v3 = v2;
  }

  v15 = this + 456;
  v16 = *(this + 495) + 1;
  if (*(this + 494) <= v16)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v14 = BlueFin::GlArrayIterator::Next(&v15);
    v6 = *(*(this + 3) + 24);
    v17 = 7;
    v18 = 0;
    BlueFin::GlPeSvIdConverter::SvId2Gnss((v6 + 119744), &v14, &v17, v7, v8);
    v9 = v18;
    if (v18 - 64 >= 0xFFFFFFC1 && v17 != 1)
    {
      Mgr = BlueFin::GlPeGnssEphemerisMgr::GetMgr((*(*(this + 3) + 24) + 384), v17);
      if (Mgr)
      {
        LOBYTE(v17) = v9;
        if (!(*(*Mgr + 64))(Mgr, &v17, 1, v3))
        {
          ++v5;
        }
      }
    }
  }

  while (v16 < v15[38]);
  if (v5 <= 3)
  {
    return 0;
  }

  v12 = *(this + 3);
  return *(*(v12 + 64) + 44) != -1 && *(*(v12 + 8) + 2576) != 0;
}

void BlueFin::GlPeRqHdlrMeas::SetSIGMeasuement(BlueFin::GlPeRqHdlrMeas *this, BlueFin::GlPeMsmtMgr *a2)
{
  v2 = MEMORY[0x2A1C7C4A8](this);
  v197 = v3;
  v222 = *MEMORY[0x29EDCA608];
  if (*(v2 + 20))
  {
    goto LABEL_235;
  }

  v4 = *(v2 + 8);
  v5 = 1000 * *(v4 + 22);
  v6 = *(v2 + 36);
  v7 = 6001;
  if (v6 != -1)
  {
    v8 = *(v4 + 28);
    v9 = *(v2 + 32) + v6;
    v10 = v9 >= v8;
    v11 = v9 - v8 + 6000;
    if (v10)
    {
      v7 = v11;
    }

    else
    {
      v7 = 6001;
    }
  }

  v195 = v2;
  v12 = *(v2 + 72);
  v13 = (v7 <= v5 || *(v12 + 16) != 4) && *(v12 + 12) > 0xCu;
  v15 = (*(*v4 + 152))(v4);
  v16 = *(v195 + 72);
  if (v15)
  {
    LOBYTE(v15) = *(v16 + 52) <= v15;
  }

  if ((*(v16 + 49) | v13))
  {
    v17 = 0;
  }

  else
  {
    v17 = (*(v16 + 44) < 100) & v15;
  }

  v18 = *(v195 + 36);
  if (v18 == -1)
  {
    v22 = 1;
  }

  else
  {
    v19 = *(*(v195 + 8) + 28);
    v20 = *(v195 + 32) + v18;
    v10 = v20 >= v19;
    v21 = v20 - v19;
    if (v10)
    {
      v22 = v21;
    }

    else
    {
      v22 = 1;
    }
  }

  v24 = BlueFin::GlPeMeasStatus::PositionPossible(v16, v14);
  v25 = *(v195 + 72);
  if (v24)
  {
    v26 = *(v25 + 56) ^ 1;
  }

  else
  {
    v26 = 0;
  }

  v193 = v4;
  if (*(v25 + 48) == 1)
  {
    v27 = BlueFin::GlPeMeasStatus::PositionPossible(v25, v23);
    v28 = v195;
    v25 = *(v195 + 72);
  }

  else
  {
    v27 = 0;
    v28 = v195;
  }

  v29 = *(v25 + 494);
  v30 = ~*(v25 + 495);
  v31 = *(v25 + 61);
  *(v28 + 64) = v31;
  if (v31)
  {
    v32 = 84;
  }

  else
  {
    v33 = *(v25 + 40) != 5 || *(v25 + 32) != 5;
    if (((*(**(v195 + 8) + 216))(*(v195 + 8)) & 1) == 0 && !v33)
    {
      v33 = *(*(v195 + 72) + 32) - *(*(v195 + 72) + 36) > 5;
    }

    if (v17 & !v27)
    {
      *(v195 + 64) = v33 & ~v26 & 1;
      v25 = *(v195 + 72);
      if (v33 & ~v26)
      {
        v32 = 84;
      }

      else
      {
        v32 = 70;
      }
    }

    else
    {
      *(v195 + 64) = 0;
      v25 = *(v195 + 72);
      v32 = 70;
    }
  }

  v34 = *(v25 + 52);
  if (v34 >= 0xFFFF)
  {
    v34 = 0xFFFF;
  }

  v194 = v34;
  if (v27)
  {
    if (*(v25 + 56))
    {
      v35 = 84;
    }

    else
    {
      v35 = 70;
    }
  }

  else
  {
    v35 = 66;
  }

  v36 = (v29 + v30);
  if (v17)
  {
    v37 = 84;
  }

  else
  {
    v37 = 70;
  }

  if (*(v25 + 59))
  {
    v38 = 84;
  }

  else
  {
    v38 = 70;
  }

  if (*(v195 + 65))
  {
    v39 = 84;
  }

  else
  {
    v39 = 70;
  }

  if (*(v195 + 23))
  {
    v40 = 84;
  }

  else
  {
    v40 = 70;
  }

  if (v7 > v5 && *(v25 + 16) == 4)
  {
    v41 = 12;
  }

  else
  {
    v41 = *(v25 + 12);
  }

  GlCustomLog(14, "<HdlrMeas>[PosV=%c][bGM=%c][bGVM=%c][MPD=%c][PerExp=%c][ToExp=%c][ElpTm=%u/%u][EAm=%hu][Tunc=%u][D%d H%d L%d]\n", v35, v37, v32, v38, v39, v40, v22, 1000 * *(*(v195 + 8) + 22), v194, v41, v36, *(v25 + 40), *(v25 + 36));
  v42 = *(v195 + 8);
  if (v42[11] >= 11 && (*(*v42 + 184))(v42) <= 0x1388 && (*(v195 + 23) & 1) == 0)
  {
    v43 = *(v195 + 72);
    if (*(v43 + 59) != 1 || v36 >= 6)
    {
      if (v7 > v5 && *(v43 + 16) == 4)
      {
        if ((v26 & 1) == 0)
        {
          goto LABEL_73;
        }
      }

      else if (!((*(v43 + 12) > 0xDu) | v26 & 1))
      {
        goto LABEL_73;
      }
    }

    LOWORD(v194) = -1;
  }

LABEL_73:
  if (v22 >> 3 <= 0x270)
  {
    *(v195 + 64) = 0;
  }

  v44 = v195;
  if ((*(*(v195 + 72) + 9808) & 1) == 0)
  {
    if (*(v195 + 23) & 1) != 0 || (*(v195 + 64))
    {
      goto LABEL_84;
    }

LABEL_83:
    if (*(v44 + 65) != 1)
    {
      goto LABEL_235;
    }

    goto LABEL_84;
  }

  v45 = *(v195 + 23);
  if (*(v195 + 64) != 1)
  {
    v44 = v195;
    if (*(v195 + 23))
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

  v44 = v195;
  if ((*(v195 + 23) & 1) == 0)
  {
    *(v195 + 64) = 0;
    goto LABEL_83;
  }

LABEL_84:
  GlCustomLog(14, "RequestResponse ");
  (*(**(v44 + 8) + 136))(*(v44 + 8), 14);
  v47 = *(v44 + 56);
  v48 = *(v47 + 8);
  if ((*(v48 + 2576) == 3 || (*(v48 + 2744) & 8) != 0) && (*(*(*(v47 + 16) + 17184) + 128))(*(v47 + 16) + 17184) && (v49 = (*(*(v195 + 56) + 16) + 17184), *v50.i32 = (*(*&v49[*(*v49 - 24)] + 16))(&v49[*(*v49 - 24)]), *v50.i32 < 110.0))
  {
    *v52.i32 = *v50.i32 + (truncf(*v50.i32 * 2.3283e-10) * -4295000000.0);
    v53.i64[0] = 0x8000000080000000;
    v53.i64[1] = 0x8000000080000000;
    v52.i32[0] = vbslq_s8(v53, v52, v50).u32[0];
    if (*v50.i32 > 4295000000.0)
    {
      v50.i32[0] = v52.i32[0];
    }

    if (*v50.i32 < -4295000000.0)
    {
      *v51.i32 = -*v50.i32;
      *v50.i32 = -(*v50.i32 - (truncf(*v50.i32 * -2.3283e-10) * -4295000000.0));
      *v50.i32 = -*vbslq_s8(v53, v50, v51).i32;
    }

    if (*v50.i32 < 0.0)
    {
      v54 = --*v50.i32;
    }

    else
    {
      v54 = *v50.i32;
    }

    LOWORD(v194) = v54;
    GlCustomLog(14, "Fine Time EMSA, EstErro %d\n", v54);
    v55 = 1;
  }

  else
  {
    v55 = 0;
  }

  if (!*(v193 + 80))
  {
    goto LABEL_235;
  }

  v56 = *(v195 + 72);
  if (*(v56 + 48) == 1)
  {
    v57 = !BlueFin::GlPeMeasStatus::PositionPossible(*(v195 + 72), v46);
    v56 = *(v195 + 72);
  }

  else
  {
    v57 = 1;
  }

  v58 = (*(**(v195 + 8) + 216))(*(v195 + 8));
  BlueFin::GlPeMeasStatus::GetMeas(v56, v197, v199, v57, v58, v55, v7 > v5);
  v59 = *(v195 + 72);
  v198[0] = *(v59 + 608);
  v60 = *(v59 + 9808);
  if (v60)
  {
    v61 = 3;
  }

  else
  {
    v61 = 4;
  }

  LOBYTE(v198[1]) = v61;
  v198[2] = 3;
  LOBYTE(v198[3]) = 1;
  LOWORD(v198[4]) = 0;
  BYTE2(v198[4]) = 0;
  v198[77] = 5;
  LOBYTE(v198[78]) = 1;
  LOWORD(v198[79]) = 0;
  BYTE2(v198[79]) = 0;
  v198[152] = 6;
  LOBYTE(v198[153]) = 1;
  LOWORD(v198[154]) = 0;
  BYTE2(v198[154]) = 0;
  if ((v60 & 1) == 0)
  {
    v198[227] = 1;
    LOBYTE(v198[228]) = 1;
    LOWORD(v198[229]) = 13;
    BYTE2(v198[229]) = 0;
  }

  v62 = 0;
  do
  {
    v63 = &v198[75 * v62 + 2];
    v64 = *v63;
    if ((*(v59 + 9808) & 1) == 0 && v64 == 1)
    {
      BlueFin::GlSetBase::GlSetBase(&__src, v219, 0x13u, v197 + 1);
      LOBYTE(v212) = v218;
      memcpy(&v213, __src, 4 * v218);
      WORD1(v212) = 0;
      BYTE1(v212) = 0;
      HIDWORD(v212) = v213;
      BlueFin::GlSetIterator::operator++(&v212);
      LOBYTE(v65) = 0;
      if (BYTE1(v212) == v212)
      {
        goto LABEL_187;
      }

      v65 = 0;
      while (1)
      {
        if (WORD1(v212) >= 0x23FuLL)
        {
          DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
        }

        v66 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * WORD1(v212);
        v67 = *v66;
        v68 = v66[1];
        LOBYTE(v209) = v67;
        HIDWORD(v209) = v68;
        v210 = WORD1(v212);
        if (!v67)
        {
          goto LABEL_142;
        }

        if (v67 > 0x20 || v68 != 2)
        {
          goto LABEL_142;
        }

        MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(v197, &v209, 1, 0);
        v73 = MeMeas;
        if (!MeMeas || (*(MeMeas + 3) & 0x8002) != 2)
        {
          goto LABEL_142;
        }

        v74 = &v63[6 * v65 + 3];
        *v74 = *(&BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + *MeMeas) - 1;
        v75 = *(*(v59 + 24) + 56);
        v72.i32[0] = *(v75 + 40);
        v76 = 64;
        if (!*(MeMeas + 1))
        {
          v76 = 60;
        }

        if (*(v75 + v76) >= 0.0)
        {
          v72.i32[0] = *(v75 + v76);
        }

        *v71.i32 = *(MeMeas + 29) + *v72.i32;
        *v72.i32 = *v71.i32 + (truncf(*v71.i32 * 2.3283e-10) * -4295000000.0);
        v77.i64[0] = 0x8000000080000000;
        v77.i64[1] = 0x8000000080000000;
        v78 = vbslq_s8(v77, v72, v71);
        if (*v71.i32 > 4295000000.0)
        {
          v71.i32[0] = v78.i32[0];
        }

        if (*v71.i32 < -4295000000.0)
        {
          *v78.i32 = -*v71.i32;
          *v71.i32 = -(*v71.i32 - (truncf(*v71.i32 * -2.3283e-10) * -4295000000.0));
          *v71.i32 = -*vbslq_s8(v77, v71, v78).i32;
        }

        v79 = *v71.i32 < 0.0 ? --*v71.i32 : *v71.i32;
        v74[1] = v79;
        v80 = *(MeMeas + 5) - 1;
        v81 = v80 > 3 ? 0 : dword_298A44E70[v80];
        v74[2] = v81;
        CodePhase = BlueFin::GlPeMeasStatus::GetCodePhase(v59, MeMeas, v197);
        v74[3] = CodePhase;
        *v85.i64 = *(v73 + 24) * 299792458.0;
        *v85.i32 = *v85.i64;
        LODWORD(v86) = 1119092736;
        if (*v85.i32 > 90.0)
        {
          goto LABEL_142;
        }

        v74[4] = BlueFin::GlPeMeasStatus::CalcRmsField(CodePhase, v85, v86, v83, v84);
        v87 = (*(v59 + 600) + *(v73 + 26)) * 299792458.0 * 25.0;
        if (v87 > 0.0)
        {
          break;
        }

        if (v87 < 0.0)
        {
          v88 = v87 + -0.5;
          goto LABEL_140;
        }

        v89 = 0;
LABEL_141:
        v74[5] = v89;
        ++v65;
LABEL_142:
        BlueFin::GlSetIterator::operator++(&v212);
        if (BYTE1(v212) == v212)
        {
          goto LABEL_187;
        }
      }

      v88 = v87 + 0.5;
LABEL_140:
      v89 = v88;
      goto LABEL_141;
    }

    if (v64 == 1)
    {
      v90 = 0;
    }

    else if (v64 < 7 && ((0x4Du >> v64) & 1) != 0)
    {
      v90 = qword_298A44EF0[v64];
    }

    else if (v64 == 5)
    {
      v90 = 5;
    }

    else
    {
      v90 = 7;
    }

    BlueFin::GlSetBase::GlSetBase(&v209, v211, 8u, (v59 + 544));
    v91 = &BlueFin::GlSvIdSet::csm_aulGlSvIdSet[2 * v90];
    __src = v219;
    LOBYTE(v218) = 8;
    v92 = v91[1];
    *v219 = *v91;
    *&v219[16] = v92;
    BlueFin::GlSetBase::operator&=(&v209, &__src);
    BlueFin::GlSignalIdSet::GlSignalIdSet(&__src, &v209, 0);
    LOBYTE(v212) = v218;
    memcpy(&v213, __src, 4 * v218);
    WORD1(v212) = 0;
    BYTE1(v212) = 0;
    HIDWORD(v212) = v213;
    BlueFin::GlSetIterator::operator++(&v212);
    LOBYTE(v65) = 0;
    if (BYTE1(v212) != v212)
    {
      v65 = 0;
      do
      {
        v93 = WORD1(v212);
        if (WORD1(v212) >= 0x23FuLL)
        {
          DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
        }

        v94 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * WORD1(v212);
        v95 = *v94;
        LODWORD(v94) = v94[1];
        LOBYTE(__src) = v95;
        HIDWORD(__src) = v94;
        LOWORD(v218) = WORD1(v212);
        if (v94 != 2)
        {
          v96 = BlueFin::GlPeMsmtMgr::GetMeMeas(v197, &__src, 1, 0);
          v97 = v96;
          if (v96)
          {
            if ((*(v96 + 3) & 0x8002) == 2)
            {
              if ((*(*(v197 + 181) + ((v93 >> 3) & 0x1FFC)) >> (v93 & 0x1F)))
              {
                GlCustomLog(14, "<GetMeasProp> GLONASS SvId %02d\n");
              }

              else
              {
                GlCustomLog(14, "<GetMeasNoProp> GLONASS SvId %02d\n");
              }

              v98 = &v63[6 * v65 + 3];
              v99 = BlueFin::GlPeMeasStatus::GetCodePhase(v59, v97, v197);
              v98[3] = v99;
              *v103.i64 = *(v97 + 96) * 299792458.0;
              v104 = *v103.i64;
              if (v104 <= 90.0)
              {
                *v103.i32 = *v103.i64;
                v98[4] = BlueFin::GlPeMeasStatus::CalcRmsField(v99, v103, v100, v101, v102);
                v108 = *(v97 + 20) - 1;
                if (v108 > 3)
                {
                  v109 = 0;
                }

                else
                {
                  v109 = dword_298A44E70[v108];
                }

                v98[2] = v109;
                *v106.i64 = (*(v59 + 600) + *(v97 + 104)) * 299792458.0 * 25.0;
                v110 = (*v106.i64 + -0.5);
                if (*v106.i64 >= 0.0)
                {
                  v110 = 0;
                }

                *v107.i64 = *v106.i64 + 0.5;
                if (*v106.i64 > 0.0)
                {
                  v110 = (*v106.i64 + 0.5);
                }

                v98[5] = v110;
                v111 = *(v59 + 24);
                v112 = *(v111 + 56);
                v107.i32[0] = *(v112 + 40);
                v113 = 64;
                if (!*(v97 + 4))
                {
                  v113 = 60;
                }

                if (*(v112 + v113) >= 0.0)
                {
                  v107.i32[0] = *(v112 + v113);
                }

                *v106.i32 = *(v97 + 116) + *v107.i32;
                *v107.i32 = *v106.i32 + (truncf(*v106.i32 * 2.3283e-10) * -4295000000.0);
                v114.i64[0] = 0x8000000080000000;
                v114.i64[1] = 0x8000000080000000;
                v115 = vbslq_s8(v114, v107, v106);
                if (*v106.i32 > 4295000000.0)
                {
                  v106.i32[0] = v115.i32[0];
                }

                if (*v106.i32 < -4295000000.0)
                {
                  *v115.i32 = -*v106.i32;
                  *v106.i32 = -(*v106.i32 - (truncf(*v106.i32 * -2.3283e-10) * -4295000000.0));
                  v106 = vbslq_s8(v114, v106, v115);
                  *v106.i32 = -*v106.i32;
                }

                if (*v106.i32 < 0.0)
                {
                  v116 = --*v106.i32;
                }

                else
                {
                  v116 = *v106.i32;
                }

                v98[1] = v116;
                v117 = *(v111 + 24);
                BYTE4(v209) = 0;
                *v115.i32 = -*v106.i32;
                BlueFin::GlPeSvIdConverter::SvId2Gnss((v117 + 119744), &__src, &v209, v106, v115);
                v118 = BYTE4(v209) - 1;
                if (v118 >= 0x3F)
                {
                  GlCustomLog(14, "Could not find OSN for SVID %d\n", __src);
                }

                else
                {
                  *v98 = v118;
                  if (v65 >= 11)
                  {
                    LOBYTE(v65) = v65 + 1;
                    break;
                  }

                  ++v65;
                }
              }

              else
              {
                v105 = BlueFin::GlArray::Get((v59 + 616), v95);
                if (!v105)
                {
                  DeviceFaultNotify("glpe_reqhdlr_meas.cpp", 1432, "GetGanssMeas", "potStoredMeas != nullptr");
                  __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_reqhdlr_meas.cpp", 1432, "potStoredMeas != nullptr");
                }

                GlCustomLog(14, "<GlPeMeasStatus::GetMeas, force RMS> PRN %02d, %.8fs, %.8f, %.3f\n", v95, *(v105 + 32), *(v105 + 16) * 1000000000.0, v104);
              }
            }
          }
        }

        BlueFin::GlSetIterator::operator++(&v212);
      }

      while (BYTE1(v212) != v212);
    }

LABEL_187:
    *(v63 + 10) = v65;
    ++v62;
    v119 = LOBYTE(v198[1]);
  }

  while (v62 < LOBYTE(v198[1]));
  v120 = 0;
  if (LOBYTE(v198[1]))
  {
    v121 = &v198[4] + 2;
    v122 = v193;
    do
    {
      v120 += *v121;
      v121 += 300;
      --v119;
    }

    while (v119);
  }

  else
  {
    v122 = v193;
  }

  if ((v199[4] + v120) < 5)
  {
    v123 = *(v195 + 72);
    __dst = *v197;
    v206 = v208;
    v207 = 8;
    memset(v208, 0, 32);
    *v205 = 0;
    __src = (v123 + 616);
    LOBYTE(v218) = *(v123 + 655) + 1;
    if (*(v123 + 654) > v218)
    {
      do
      {
        v124 = BlueFin::GlArrayIterator::Next(&__src);
        v206[v124 >> 5] |= 1 << v124;
      }

      while (v218 < *(__src + 38));
    }

    BlueFin::GlSetBase::GlSetBase(&v203, v204, 8u, &v206);
    __src = v219;
    LOBYTE(v218) = 8;
    memset(v219, 0, 32);
    BlueFin::GlSetBase::OperatorBinaryXor(&v203, &__src, (v123 + 9760));
    BlueFin::GlSetBase::operator=(&v203, &__src);
    v125 = 0;
    v204[0] = *v219;
    v204[1] = *&v219[16];
    do
    {
      v126 = &__src + v125;
      *v126 = 0;
      *(v126 + 1) = -1;
      *(v126 + 4) = 575;
      *(v126 + 2) = 0;
      v125 += 24;
    }

    while (v125 != 2184);
    BlueFin::GlSetBase::GlSetBase(&v200, v202, 8u, &v203);
    v209 = v211;
    LOBYTE(v210) = 8;
    v211[0] = BlueFin::GlSvIdSet::csm_aulGlSvIdSet[0];
    v211[1] = *algn_298A323DC;
    BlueFin::GlSetBase::operator&=(&v200, &v209);
    LOBYTE(v212) = v201;
    memcpy(&v213, v200, 4 * v201);
    WORD1(v212) = 0;
    BYTE1(v212) = 0;
    HIDWORD(v212) = v213;
    BlueFin::GlSetIterator::operator++(&v212);
    if (BYTE1(v212) == v212)
    {
LABEL_201:
      v122 = v193;
      goto LABEL_202;
    }

    LODWORD(v152) = 0;
    v153 = &v218;
    do
    {
      v154 = BYTE2(v212);
      if (*(v123 + 9808))
      {
        v155 = 2;
      }

      else
      {
        v155 = 0;
      }

      if (BYTE2(v212) - 189 >= 0xFFFFFF44)
      {
        v157 = BlueFin::GlSvId::s_aucSvId2gnss[BYTE2(v212)];
        if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v155 - v155 + v157] == 255)
        {
          v156 = 575;
          v155 = -1;
        }

        else
        {
          v156 = BlueFin::GlSignalId::s_ausGnss2signalId[v157] + BYTE2(v212) - BlueFin::GlSvId::s_aucGnss2minSvId[v157] + v155 * BlueFin::GlSvId::s_aucGnss2numSvId[v157];
        }
      }

      else
      {
        v156 = 575;
      }

      v158 = BlueFin::GlArray::Get((v123 + 616), BYTE2(v212));
      if (!v158)
      {
        DeviceFaultNotify("glpe_reqhdlr_meas.cpp", 1501, "GetStoredMeas", "potStoredMeas != nullptr");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_reqhdlr_meas.cpp", 1501, "potStoredMeas != nullptr");
      }

      *(v153 - 8) = v154;
      *(v153 - 1) = v155;
      *v153 = v156;
      *(v153 + 1) = *(v158 + 56);
      BlueFin::GlSetIterator::operator++(&v212);
      v152 = (v152 + 1);
      v153 += 6;
    }

    while (BYTE1(v212) != v212);
    BlueFin::GlStdLib::QsortImpl(&__src, v152, 0x18u, BlueFin::GlPeRqHdlrMeas_SortPrns, &v212, v159);
    v160 = 0;
    while (1)
    {
LABEL_248:
      v161 = *(&__src + 24 * v160);
      if (*(v123 + 9808))
      {
        v162 = 2;
      }

      else
      {
        v162 = 0;
      }

      if ((v161 - 189) >= 0xFFFFFF44)
      {
        v164 = BlueFin::GlSvId::s_aucSvId2gnss[v161];
        if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v162 - v162 + v164] == 255)
        {
          v163 = 0;
          v162 = -1;
        }

        else
        {
          v163 = (BlueFin::GlSignalId::s_ausGnss2signalId[v164] + v161 - BlueFin::GlSvId::s_aucGnss2minSvId[v164] + v162 * BlueFin::GlSvId::s_aucGnss2numSvId[v164]) < 0x23Fu;
        }
      }

      else
      {
        v163 = 0;
      }

      v165 = BlueFin::GlArray::Get((v123 + 616), *(&__src + 24 * v160));
      v166 = v165;
      if (!v165)
      {
        DeviceFaultNotify("glpe_reqhdlr_meas.cpp", 1514, "GetStoredMeas", "potStoredMeas != nullptr");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_reqhdlr_meas.cpp", 1514, "potStoredMeas != nullptr");
      }

      v167 = (__dst - *(v165 + 48)) * 0.001;
      GlCustomLog(14, "<GetStoredMeasProp> PRN %02d, %.3fs\n", v161, v167);
      if (v167 > 5.0)
      {
        break;
      }

      v169 = *(v166 + 24);
      if (v169 > 1.0)
      {
        v169 = v167 + v169;
      }

      v170 = *(v166 + 8);
      v171 = *(v123 + 592) + (v169 + v170 * v167) * 1000.0;
      v172 = v171 < 0.0;
      if (v171 == v171)
      {
        v172 = 0;
      }

      v173 = BlueFin::GlPeMeasStatus::CalcRangeField(&v205[1], (v171 - v172) - v171 + 1.0, v205, v168);
      v178 = v199[4];
      v179 = &v199[8 * v199[4] + 5];
      v180 = v205[0];
      v179[3] = v205[1];
      v179[4] = v180;
      v179[7] = 0;
      if ((v161 - 33) <= 0xFFFFFFDF)
      {
        DeviceFaultNotify("glpe_reqhdlr_meas.cpp", 1541, "GetStoredMeas", "IS_GPS_SVID(*otSvId)");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_reqhdlr_meas.cpp", 1541, "IS_GPS_SVID(*otSvId)");
      }

      v199[8 * v178 + 5] = *(&BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + v161) - 1;
      v181 = *(*(v123 + 24) + 56);
      v175.i32[0] = *(v181 + 40);
      v182 = 64;
      if (!v162)
      {
        v182 = 60;
      }

      if (*(v181 + v182) >= 0.0)
      {
        v175.i32[0] = *(v181 + v182);
      }

      *v174.i32 = *(v166 + 40) + *v175.i32;
      *v175.i32 = *v174.i32 + (truncf(*v174.i32 * 2.3283e-10) * -4295000000.0);
      v183.i64[0] = 0x8000000080000000;
      v183.i64[1] = 0x8000000080000000;
      v184 = vbslq_s8(v183, v175, v174);
      if (*v174.i32 > 4295000000.0)
      {
        v174.i32[0] = v184.i32[0];
      }

      if (*v174.i32 < -4295000000.0)
      {
        *v184.i32 = -*v174.i32;
        *v174.i32 = -(*v174.i32 - (truncf(*v174.i32 * -2.3283e-10) * -4295000000.0));
        v174 = vbslq_s8(v183, v174, v184);
        *v174.i32 = -*v174.i32;
      }

      if (*v174.i32 < 0.0)
      {
        v185 = --*v174.i32;
      }

      else
      {
        v185 = *v174.i32;
      }

      v179[1] = v185;
      if (!v163)
      {
        DeviceFaultNotify("glsignalid.h", 651, "GetRfCarrierFrqHz", "IsValid()");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 651, "IsValid()");
      }

      v186 = BlueFin::GlSvId::s_aucSvId2gnss[v161];
      v187 = BlueFin::GlSignalId::s_adSignalType2ctrFreqHz[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v162 - v162 + v186]];
      if (v186 == 2)
      {
        v187 = v187 + -4500000.0;
      }

      v179[2] = ((v170 + *(v123 + 600)) * v187 * 5.0);
      v188 = *(v166 + 32);
      v176.i64[0] = *(v166 + 16);
      *v174.i64 = (v188 + *v176.i64 * v167) * 299792458.0;
      *v174.i32 = *v174.i64;
      v177.i32[0] = 1121714176;
      if (*v174.i32 > 110.0)
      {
        v173 = GlCustomLog(14, "<GetStoredMeasProp> PRN %02d, %.8fs, %.8f, %.3f\n", v161, v188, *(v166 + 16), *v174.i32);
        v178 = v199[4];
        if (v199[4] > 4u)
        {
          goto LABEL_259;
        }

        v174.i32[0] = 1121714176;
      }

      v189 = BlueFin::GlPeMeasStatus::CalcRmsField(v173, v174, v188, v176, v177);
      v190 = &v199[8 * v178 + 5];
      v190[6] = v189;
      v191 = *(v166 + 44) - 1;
      if (v191 > 3)
      {
        v192 = 0;
      }

      else
      {
        v192 = dword_298A44E70[v191];
      }

      v190[5] = v192;
      v199[4] = v178 + 1;
      if ((v178 + 1) <= 0xB && ++v160 < v152)
      {
        continue;
      }

      goto LABEL_201;
    }

    BlueFin::GlArray::Remove((v123 + 616), v161);
LABEL_259:
    if (++v160 >= v152)
    {
      goto LABEL_201;
    }

    goto LABEL_248;
  }

LABEL_202:
  LOWORD(v199[3]) = v194;
  v127 = *(v122 + 80);
  if (v127)
  {
    v127();
  }

  v128 = *(*(v195 + 8) + 16);
  __src = &unk_2A1F146E8;
  v218 = v128;
  v221 = 0;
  memcpy(v219, v199, sizeof(v219));
  memcpy(v220, v198, sizeof(v220));
  if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    BlueFin::GlPeMsaMeasData::SerializeImpl(&__src);
    v128 = *(*(v195 + 8) + 16);
  }

  GlCustomLog(14, "MSAMEASHeader: %d, %d, %u, %hu, %u\n", v199[0], v128, v199[2], LOWORD(v199[3]), v199[4]);
  if (v199[4])
  {
    v129 = 0;
    do
    {
      v130 = &v199[8 * v129 + 5];
      GlCustomLog(14, "MSAMEAS: %u, %u, %d, %u, %u, %u, %u, %u\n", *v130, v130[1], v130[2], v130[3], v130[4], v130[5], v130[6], v130[7]);
      ++v129;
    }

    while (v199[4] > v129);
  }

  if (LOBYTE(v198[1]))
  {
    v131 = 0;
    v132 = &v198[10];
    do
    {
      v133 = &v198[75 * v131 + 2];
      v134 = *v133;
      if (v134 < 7 && ((0x4Fu >> v134) & 1) != 0)
      {
        v135 = dword_298A44F28[v134];
      }

      else if (v134 == 5)
      {
        v135 = 5;
      }

      else
      {
        v135 = 7;
      }

      v136 = BlueFin::GNSS2ABBREVSTR(v135);
      GlCustomLog(14, "MSAGANSSMEASHeader: %u, %d, %d, %d\n", v198[0], *v133, *(v133 + 8), *(v133 + 10));
      if (*(v133 + 10))
      {
        v137 = 0;
        v138 = v132;
        do
        {
          GlCustomLog(14, "MSAMEAS(%s): %u, %u, %d, %u, %u, %u\n", v136, *(v138 - 5), *(v138 - 4), *v138, *(v138 - 2), *(v138 - 3), *(v138 - 1));
          ++v137;
          v138 += 6;
        }

        while (v137 < *(v133 + 10));
      }

      ++v131;
      v132 += 75;
    }

    while (v131 < LOBYTE(v198[1]));
  }

  v139 = *(*(v195 + 56) + 8);
  if (*(v139 + 2576) == 3 || (*(v139 + 2744) & 8) != 0)
  {
    v140 = *(v195 + 72);
    v141 = (*(**(v195 + 8) + 216))(*(v195 + 8));
    BlueFin::GlPeMeasStatus::GetMeas(v140, v197, v199, v141, 0, 0, 0);
    v142 = (*(*(v195 + 56) + 16) + 17184);
    *v143.i32 = (*(*&v142[*(*v142 - 24)] + 16))(&v142[*(*v142 - 24)]);
    *v144.i64 = *v143.i32;
    *v145.i64 = *v143.i32 + trunc(*v143.i32 * 2.32830644e-10) * -4294967300.0;
    v146.f64[0] = NAN;
    v146.f64[1] = NAN;
    v147 = vnegq_f64(v146);
    *&v148 = vbslq_s8(v147, v145, v144).u64[0];
    if (*v143.i32 <= 4295000000.0)
    {
      *v143.i64 = *v143.i32;
    }

    else
    {
      *v143.i64 = v148;
    }

    if (*v143.i64 < -4294967300.0)
    {
      *v144.i64 = -*v143.i64;
      *v143.i64 = -(*v143.i64 - trunc(*v143.i64 * -2.32830644e-10) * -4294967300.0);
      *v143.i64 = -*vbslq_s8(v147, v143, v144).i64;
    }

    if (*v143.i64 < 0.0)
    {
      v149 = --*v143.i64;
    }

    else
    {
      LOWORD(v149) = *v143.i64;
    }

    LOWORD(v199[3]) = v149;
    v150 = *(*(v195 + 8) + 16);
    v212 = &unk_2A1F146E8;
    v213 = v150;
    v216 = 2;
    memcpy(v214, v199, sizeof(v214));
    memcpy(v215, v198, sizeof(v215));
    if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      BlueFin::GlPeMsaMeasData::SerializeImpl(&v212);
    }
  }

LABEL_235:
  v151 = *MEMORY[0x29EDCA608];
}

uint64_t BlueFin::GlPeMeasStatus::GetMeas(uint64_t a1, const void **a2, _DWORD *a3, int a4, int a5, char a6, int a7)
{
  v12 = *a2;
  v13 = v12;
  v14 = *(*(a1 + 24) + 8);
  if (v12 <= 0xFF9222FE)
  {
    v13 = v12;
  }

  v15 = BlueFin::GlPeTimeManager::lmsToLegacyGlStruct(v14, 0, 1, v188, v13);
  v21 = v192;
  v22 = v189;
  *v187 = 0;
  a3[4] = 0;
  v172 = v22;
  if (v21 <= 0x3E7)
  {
    v23 = *(a1 + 24);
    v24 = v22;
    LOWORD(v15) = v190;
    LOWORD(v24) = v191;
    *v16.i64 = v22 + *&v15 * 0.001 + *&v24 * 0.000001 + *(*(*(v23 + 16) + 60936) + 25952) * 0.001 + 0.0000005;
    *v17.i64 = *v16.i64 + trunc(*v16.i64 * 2.32830644e-10) * -4294967300.0;
    v25.f64[0] = NAN;
    v25.f64[1] = NAN;
    v26 = vnegq_f64(v25);
    v27 = vbslq_s8(v26, v17, v16);
    if (*v16.i64 <= 4294967300.0)
    {
      *v27.i64 = v22 + *&v15 * 0.001 + *&v24 * 0.000001 + *(*(*(v23 + 16) + 60936) + 25952) * 0.001 + 0.0000005;
    }

    if (*v27.i64 < -4294967300.0)
    {
      *v18.i64 = -*v27.i64;
      *v27.i64 = -(*v27.i64 - trunc(*v27.i64 * -2.32830644e-10) * -4294967300.0);
      v27 = vbslq_s8(v26, v27, v18);
      *v27.i64 = -*v27.i64;
    }

    if (*v27.i64 < 0.0)
    {
      v28 = --*v27.i64;
    }

    else
    {
      v28 = *v27.i64;
    }

    v189 = v28;
    *v19.i64 = v28 * -1000.0 + *v16.i64 * 1000.0;
    *v20.i64 = *v19.i64 + trunc(*v19.i64 * 2.32830644e-10) * -4294967300.0;
    v29 = vbslq_s8(v26, v20, v19);
    if (*v19.i64 <= 4294967300.0)
    {
      *v29.i64 = v28 * -1000.0 + *v16.i64 * 1000.0;
    }

    if (*v29.i64 < -4294967300.0)
    {
      *v19.i64 = -*v29.i64;
      *v29.i64 = -(*v29.i64 - trunc(*v29.i64 * -2.32830644e-10) * -4294967300.0);
      v30.f64[0] = NAN;
      v30.f64[1] = NAN;
      v29 = vbslq_s8(vnegq_f64(v30), v29, v19);
      *v29.i64 = -*v29.i64;
    }

    if (*v29.i64 < 0.0)
    {
      v31 = --*v29.i64;
    }

    else
    {
      LOWORD(v31) = *v29.i64;
    }

    v190 = v31;
    v32 = v31;
    *v27.i64 = v28 * -1000000.0 + *v16.i64 * 1000000.0 + v31 * -1000.0;
    *v19.i64 = *v27.i64 + trunc(*v27.i64 * 2.32830644e-10) * -4294967300.0;
    v33.f64[0] = NAN;
    v33.f64[1] = NAN;
    v34 = vnegq_f64(v33);
    v19.i64[0] = vbslq_s8(v34, v19, v27).u64[0];
    if (*v27.i64 > 4294967300.0)
    {
      v27.i64[0] = v19.i64[0];
    }

    if (*v27.i64 < -4294967300.0)
    {
      *v29.i64 = -*v27.i64;
      *v27.i64 = -(*v27.i64 - trunc(*v27.i64 * -2.32830644e-10) * -4294967300.0);
      *v27.i64 = -*vbslq_s8(v34, v27, v29).i64;
    }

    if (*v27.i64 < 0.0)
    {
      v35 = --*v27.i64;
    }

    else
    {
      LOWORD(v35) = *v27.i64;
    }

    v191 = v35;
    v36 = v35;
    v37 = v35 * 0.000001 + v32 * 0.001;
    if (v28 < v12)
    {
      v37 = v37 + -1.0;
    }

    v38 = -v37;
    *(a1 + 592) = v38;
    v39 = *(*(v23 + 80) + 2) * 0.000000001;
    *(a1 + 600) = v39;
    if (BlueFin::GlUtils::m_ucEnabled)
    {
      BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
      v39 = *(a1 + 600);
      v38 = *(a1 + 592);
    }

    GlCustomLog(14, "MSACommonBias: %u, %u, %hu, %hu, %.3f,%.5f\n", v12, v28, v32, v36, v39 * 1000000000.0, v38);
    v22 = v172;
  }

  if (a7 && *(a1 + 16) == 4)
  {
    v40 = 1;
  }

  else
  {
    v41 = *(a1 + 12);
    v40 = v41 < 0xE;
    if (a5 && v41 >= 0xE)
    {
      v40 = (*(a1 + 495) - *(a1 + 494)) < 0xFBu;
    }
  }

  BlueFin::GlSetBase::GlSetBase(&__src, v186, 0x13u, a2 + 1);
  LODWORD(v176) = v185;
  memcpy(&v177, __src, 4 * v185);
  HIDWORD(v176) = v177;
  result = BlueFin::GlSetIterator::operator++(&v176);
  v47 = 0;
  if (BYTE1(v176) != v176)
  {
    v48 = 0;
    while (1)
    {
      if (WORD1(v176) >= 0x23FuLL)
      {
LABEL_183:
        v159 = "usIndex < NUM_SIGNAL_IDS";
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        v160 = "glsignalid.h";
        v161 = 578;
        goto LABEL_184;
      }

      v49 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * WORD1(v176);
      v50 = *v49;
      LODWORD(v49) = v49[1];
      v179 = v50;
      v182 = v49;
      LOWORD(v183[0]) = WORD1(v176);
      MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(a2, &v179, 1, 0);
      if (!MeMeas || v179 - 33 < 0xFFFFFFE0)
      {
        goto LABEL_44;
      }

      if (*(a1 + 9808) != 1)
      {
        break;
      }

      if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(MeMeas + 1) - *(MeMeas + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*MeMeas]] == 2)
      {
        goto LABEL_43;
      }

LABEL_44:
      result = BlueFin::GlSetIterator::operator++(&v176);
      if (BYTE1(v176) == v176)
      {
        v47 = v48 > 5;
        v22 = v172;
        goto LABEL_48;
      }
    }

    if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(MeMeas + 1) - *(MeMeas + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*MeMeas]])
    {
      goto LABEL_44;
    }

LABEL_43:
    ++v48;
    goto LABEL_44;
  }

LABEL_48:
  v162 = v47;
  v52 = v21 / 0x3E8uLL;
  if (*a1 & 1) != 0 || (a6)
  {
    if (*a1)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  if (*(a1 + 56) == 1 && *(a1 + 48) == 1)
  {
    result = BlueFin::GlPeMeasStatus::PositionPossible(a1, v43);
    if (result)
    {
LABEL_55:
      result = BlueFin::GlPeRangeAidGen::RecomputeAidingNow(*(*(a1 + 24) + 48), 1, v12, 0, 0, v44, v45, v46);
      v54 = *(*(a1 + 24) + 48);
      if (v54[9191] + 1 == v54[9190])
      {
        goto LABEL_56;
      }

      v107 = 0;
      v176 = (a1 + 456);
      LOBYTE(v177) = *(a1 + 495) + 1;
      v53.i64[0] = 0;
      v170 = v53;
      while (v177 < *(v176 + 38))
      {
        v108 = BlueFin::GlArrayIterator::Next(&v176);
        if ((v108 - 1) <= 0x1F)
        {
          v109 = v108;
          v179 = v108;
          AidBySvId = BlueFin::GlPeSatAidInfo::GetAidBySvId((v54 + 32), &v179);
          if (AidBySvId)
          {
            if ((*(AidBySvId + 3) | 2) == 3)
            {
              LOBYTE(v111) = *BlueFin::GlArray::Get((a1 + 456), v109);
              v112 = v170;
              *v112.i32 = *v170.i32 + v111;
              v170 = v112;
              ++v107;
            }
          }

          else
          {
            GlCustomLog(14, "No aiding for SV %d\n", v109);
          }
        }
      }

      if (v107)
      {
        v113 = v170;
        *v113.i32 = *v170.i32 / v107;
        v170 = v113;
      }

      v114 = *(*(a1 + 24) + 16);
      if (*(v114 + 964) >= 0.8)
      {
        v115 = *(v114 + 964);
      }

      else
      {
        v115 = 0.8;
      }

      v116 = v114 + 17184 + *(*(v114 + 17184) - 24);
      v117 = (*(*v116 + 16))(v116);
      *v119.i32 = v118 / v115;
      result = BlueFin::GlPeMeasStatus::CalcRmsField(v117, v119, v120, v121, v122);
      v167 = result;
      v176 = v54 + 9152;
      v124 = v54[9191] + 1;
      LOBYTE(v177) = v124;
      v125 = v170;
      *v126.i32 = *v170.i32 + (truncf(*v170.i32 * 2.3283e-10) * -4295000000.0);
      v127.i64[0] = 0x8000000080000000;
      v127.i64[1] = 0x8000000080000000;
      LODWORD(v128) = vbslq_s8(v127, v126, v170).u32[0];
      if (*v170.i32 <= 4295000000.0)
      {
        v128 = *v170.i32;
      }

      *v123.i32 = -v128;
      *v125.i32 = -(v128 - (truncf(v128 * -2.3283e-10) * -4295000000.0));
      v129 = -*vbslq_s8(v127, v125, v123).i32;
      if (v128 < -4295000000.0)
      {
        v128 = v129;
      }

      if (v128 < 0.0)
      {
        v130 = --v128;
      }

      else
      {
        v130 = v128;
      }

      if (v130 <= 0x11)
      {
        v130 = 17;
      }

      v165 = v130;
      if (v54[9190] <= v124 || a3[4] > 0xBu)
      {
LABEL_181:
        v22 = v172;
        goto LABEL_182;
      }

      v131 = a3 + 5;
      v132 = v107 < 6;
      v171 = 6 - v107;
      while (1)
      {
        result = BlueFin::GlArrayIterator::Next(&v176);
        if ((result - 1) < 0x20)
        {
          v133 = result;
          v131[8 * a3[4] + 7] = 0;
          result = BlueFin::GlArray::EnsureValidHandle(a1 + 456, result);
          if (*(*(a1 + 472) + v133 - *(a1 + 492)) == 255 && !v132)
          {
            goto LABEL_179;
          }

          v179 = v133;
          result = BlueFin::GlPeSatAidInfo::GetAidBySvId((v54 + 32), &v179);
          if (result)
          {
            v135 = result;
            if ((*(result + 12) | 2) == 3)
            {
              BlueFin::GlArray::EnsureValidHandle(a1 + 456, v133);
              if (*(*(a1 + 472) + v133 - *(a1 + 492)) == 255)
              {
                --v171;
                v139 = v165;
              }

              else
              {
                v139 = *BlueFin::GlArray::Get((a1 + 456), v133);
              }

              v140.i64[0] = 0x8000000080000000;
              v140.i64[1] = 0x8000000080000000;
              v141 = *v135;
              if ((v141 + 67) < 0x44u)
              {
                v142 = 0;
                v143 = 0;
                goto LABEL_159;
              }

              v144 = BlueFin::GlSvId::s_aucSvId2gnss[v141];
              if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v144] == 255)
              {
                v143 = 0;
                v142 = -1;
                v145 = 64;
              }

              else
              {
                v142 = 0;
                v143 = (BlueFin::GlSignalId::s_ausGnss2signalId[v144] + v141 - BlueFin::GlSvId::s_aucGnss2minSvId[v144]) < 0x23Fu;
LABEL_159:
                v145 = 60;
              }

              v146 = a3[4];
              v131[8 * v146] = *(&BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + v141) - 1;
              v147 = *(*(a1 + 24) + 56);
              v137.i32[0] = *(v147 + 40);
              if (*(v147 + v145) >= 0.0)
              {
                v137.i32[0] = *(v147 + v145);
              }

              *v138.i32 = *v137.i32 + (truncf(*v137.i32 * 2.3283e-10) * -4295000000.0);
              v148 = vbslq_s8(v140, v138, v137);
              if (*v137.i32 > 4295000000.0)
              {
                v137.i32[0] = v148.i32[0];
              }

              v149 = v52;
              if (*v137.i32 < -4295000000.0)
              {
                *v148.i32 = -*v137.i32;
                *v137.i32 = -(*v137.i32 - (truncf(*v137.i32 * -2.3283e-10) * -4295000000.0));
                *v137.i32 = -*vbslq_s8(v140, v137, v148).i32;
              }

              if (*v137.i32 < 0.0)
              {
                v150 = --*v137.i32;
              }

              else
              {
                v150 = *v137.i32;
              }

              v151 = &v131[8 * v146];
              v151[1] = v150 + v139;
              if (!v143)
              {
LABEL_186:
                v159 = "IsValid()";
                DeviceFaultNotify("glsignalid.h", 651, "GetRfCarrierFrqHz", "IsValid()");
                v160 = "glsignalid.h";
                v161 = 651;
                goto LABEL_184;
              }

              v152 = BlueFin::GlSvId::s_aucSvId2gnss[v141];
              v153 = BlueFin::GlSignalId::s_adSignalType2ctrFreqHz[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v142 - v142 + v152]];
              if (v152 == 2)
              {
                v154 = (v141 - 59);
                if ((v141 - 52) >= 0xE)
                {
                  v154 = -8.0;
                }

                v153 = v153 + v154 * 562500.0;
              }

              v151[2] = (v153 * *(v135 + 11) * 5.0);
              v155 = *(v135 + 4);
              if (v155 < 0.0)
              {
                v155 = -v155;
              }

              v156 = v155 * 1000.0;
              v157 = v156 < 0.0;
              if (v156 == v156)
              {
                v157 = 0;
              }

              result = BlueFin::GlPeMeasStatus::CalcRangeField(&v187[1], v156 - (v156 - v157), v187, v136);
              v158 = v187[0];
              v151[3] = v187[1];
              *(v151 + 2) = v158;
              v151[6] = v167;
              a3[4] = v146 + 1;
              v52 = v149;
            }

LABEL_179:
            v132 = v171 > 0;
            goto LABEL_145;
          }

          result = GlCustomLog(14, "No aiding for SV %d\n", v133);
        }

LABEL_145:
        if (v177 >= *(v176 + 38) || a3[4] >= 0xCu)
        {
          goto LABEL_181;
        }
      }
    }
  }

LABEL_56:
  if (v40)
  {
    v169 = v12;
    if (a7 && *(a1 + 16) == 4)
    {
      v55 = 12;
    }

    else
    {
      v55 = *(a1 + 12);
    }

    v164 = *(a1 + 8);
    v166 = *(a1 + 4);
    if (v55 <= 1)
    {
      v55 = 1;
    }

    v173 = v55;
    bzero(*(a1 + 9760), ((4 * *(a1 + 9768) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    BlueFin::GlSetBase::GlSetBase(v174, v175, 8u, (a1 + 544));
    v176 = v178;
    LOBYTE(v177) = 8;
    v178[0] = BlueFin::GlSvIdSet::csm_aulGlSvIdSet[0];
    v178[1] = *algn_298A323DC;
    BlueFin::GlSetBase::operator&=(v174, &v176);
    BlueFin::GlSignalIdSet::GlSignalIdSet(&v176, v174, 0);
    v179 = v177;
    memcpy(v183, v176, 4 * v177);
    v181 = 0;
    v180 = 0;
    v182 = v183[0];
    result = BlueFin::GlSetIterator::operator++(&v179);
    if (v180 != v179)
    {
      v56 = a3 + 5;
      while (1)
      {
        v57 = v181;
        if (v181 >= 0x23FuLL)
        {
          goto LABEL_183;
        }

        v58 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v181;
        v59 = *v58;
        LODWORD(v58) = v58[1];
        LOBYTE(v176) = v59;
        HIDWORD(v176) = v58;
        LOWORD(v177) = v181;
        v60 = BlueFin::GlPeMsmtMgr::AccessMeMeas(a2, &v176, 1, 0);
        if (!v60)
        {
          goto LABEL_115;
        }

        v61 = v60;
        if ((*(v60 + 3) & 0x8002) != 2)
        {
          goto LABEL_115;
        }

        v62 = *v60;
        if (*(a1 + 9808) == 1)
        {
          if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(v60 + 1) - *(v60 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[v62]] != 2)
          {
            goto LABEL_115;
          }
        }

        else if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(v60 + 1) - *(v60 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[v62]])
        {
          goto LABEL_115;
        }

        BlueFin::GlArray::EnsureValidHandle(a1 + 616, *v60);
        if (*(*(a1 + 632) + v62 - *(a1 + 652)) != 255)
        {
          v63 = BlueFin::GlArray::Get((a1 + 616), *v61);
          if (!v63)
          {
            v159 = "potStoredMeas != nullptr";
            DeviceFaultNotify("glpe_reqhdlr_meas.cpp", 1202, "GetMeas", "potStoredMeas != nullptr");
            v160 = "glpe_reqhdlr_meas.cpp";
            v161 = 1202;
            goto LABEL_184;
          }

          v64 = *(v63 + 40);
          if (v64 > *(v61 + 29))
          {
            *(v61 + 29) = v64;
            *(v63 + 40) = v64 + -0.1;
          }
        }

        v65 = v56;
        *(*(a1 + 9760) + ((*v61 >> 3) & 0x1C)) |= 1 << *v61;
        v66 = v57 >> 5;
        v67 = *(a2[181] + (v57 >> 5));
        v68 = 1 << (v57 & 0x1F);
        v69 = (v68 & v67) == 0;
        v70 = "";
        if (v69)
        {
          v70 = "No";
        }

        GlCustomLog(14, "<GetMeas%sProp> PRN %02d\n", v70, v59);
        InterSystemHwBiasM = BlueFin::GlPeGnssHwBiasMgr::GetInterSystemHwBiasM(*(*(a1 + 24) + 120), v61, 0, 0);
        v73 = *(a1 + 592);
        v74 = *(v61 + 9);
        v75 = InterSystemHwBiasM / 299792.458;
        v76 = v75 + v73 + *(v61 + 8) * 1000.0;
        v77 = v76 < 0.0;
        if (v76 == v76)
        {
          v77 = 0;
        }

        v78 = (v76 - v77) - v76 + 1.0;
        v79 = v75 + v73 + v74;
        v80 = v79 < 0.0;
        if (v79 == v79)
        {
          v80 = 0;
        }

        if (v74 != 0.0 && (v68 & *(a2[181] + v66)) == 0)
        {
          v81 = (v79 - v80) - v79 + 1.0;
          if (fabs(v81 - v78) <= 0.01)
          {
            v78 = v81;
          }
        }

        v56 = v65;
        v82 = BlueFin::GlPeMeasStatus::CalcRangeField(&v187[1], v78, v187, v71);
        v86 = v187[0];
        v87 = &v65[8 * a3[4]];
        v87[3] = v187[1];
        v87[4] = v86;
        *v88.i64 = *(v61 + 24) * 299792458.0;
        v89 = *v88.i64;
        if (v89 <= 90.0)
        {
          goto LABEL_96;
        }

        v90 = BlueFin::GlArray::Get((a1 + 616), v59);
        if (!v90)
        {
          v159 = "potStoredMeas != nullptr";
          DeviceFaultNotify("glpe_reqhdlr_meas.cpp", 1254, "GetMeas", "potStoredMeas != nullptr");
          v160 = "glpe_reqhdlr_meas.cpp";
          v161 = 1254;
LABEL_184:
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v160, v161, v159);
        }

        v82 = GlCustomLog(14, "<GlPeMeasStatus::GetMeas, force RMS> PRN %02d, %.8fs, %.8f, %.3f\n", v59, *(v90 + 32), *(v90 + 16) * 1000000000.0, v89);
        if (!v162 || *a1 == 1)
        {
          break;
        }

LABEL_115:
        result = BlueFin::GlSetIterator::operator++(&v179);
        if (v180 == v179)
        {
          goto LABEL_116;
        }
      }

      v89 = 50.0;
LABEL_96:
      *v88.i32 = v89;
      result = BlueFin::GlPeMeasStatus::CalcRmsField(v82, v88, v83, v84, v85);
      v93 = a3[4];
      v94 = &v65[8 * v93];
      v94[6] = result;
      v95 = *(v61 + 5) - 1;
      if (v95 > 3)
      {
        v96 = 0;
      }

      else
      {
        v96 = dword_298A44E70[v95];
      }

      v97.i64[0] = 0x8000000080000000;
      v97.i64[1] = 0x8000000080000000;
      v94[5] = v96;
      v94[7] = 0;
      v98 = *v61;
      if ((v98 - 33) <= 0xFFFFFFDF)
      {
        v159 = "IS_GPS_SVID(*pSigMeas->m_otSignalId.GetSvId())";
        DeviceFaultNotify("glpe_reqhdlr_meas.cpp", 1273, "GetMeas", "IS_GPS_SVID(*pSigMeas->m_otSignalId.GetSvId())");
        v160 = "glpe_reqhdlr_meas.cpp";
        v161 = 1273;
        goto LABEL_184;
      }

      v65[8 * v93] = *(&BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + *v61) - 1;
      v99 = *(v61 + 1);
      v100 = *(*(a1 + 24) + 56);
      v92.i32[0] = *(v100 + 40);
      v101 = 64;
      if (!v99)
      {
        v101 = 60;
      }

      if (*(v100 + v101) >= 0.0)
      {
        v92.i32[0] = *(v100 + v101);
      }

      *v91.i32 = (*(v61 + 29) + *v92.i32) + 0.5;
      *v92.i32 = *v91.i32 + (truncf(*v91.i32 * 2.3283e-10) * -4295000000.0);
      v102 = vbslq_s8(v97, v92, v91);
      if (*v91.i32 > 4295000000.0)
      {
        v91.i32[0] = v102.i32[0];
      }

      if (*v91.i32 < -4295000000.0)
      {
        *v102.i32 = -*v91.i32;
        *v91.i32 = -(*v91.i32 - (truncf(*v91.i32 * -2.3283e-10) * -4295000000.0));
        *v91.i32 = -*vbslq_s8(v97, v91, v102).i32;
      }

      if (*v91.i32 < 0.0)
      {
        v103 = --*v91.i32;
      }

      else
      {
        v103 = *v91.i32;
      }

      v94[1] = v103;
      if (*(v61 + 4) >= 0x23Fu)
      {
        goto LABEL_186;
      }

      v104 = BlueFin::GlSvId::s_aucSvId2gnss[v98];
      v105 = BlueFin::GlSignalId::s_adSignalType2ctrFreqHz[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v99 - v99 + v104]] + -4500000.0;
      if (v104 != 2)
      {
        v105 = BlueFin::GlSignalId::s_adSignalType2ctrFreqHz[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v99 - v99 + v104]];
      }

      v94[2] = ((*(a1 + 600) + *(v61 + 26)) * v105 * 5.0);
      v106 = v93 + 1;
      a3[4] = v106;
      if (v106 > 0xB)
      {
        goto LABEL_116;
      }

      goto LABEL_115;
    }

LABEL_116:
    v22 = (v169 - v166 + v164) % 0x240C8400u;
    LODWORD(v52) = v173;
  }

  else if (!a4 || (!a7 || *(a1 + 16) != 4) && *(a1 + 12) >= 0xEu)
  {
    a3[4] = 0;
  }

LABEL_182:
  a3[1] = v22 % 0xDBBA00;
  a3[2] = v22;
  *a3 = v52;
  *(a1 + 608) = v22 % 0xDBBA00 - 1000 * *(*(*(a1 + 24) + 8) + 2588) + 10800000;
  return result;
}

int *BlueFin::GlPeMeasStatus::CalcRangeField(int *this, double a2, unsigned int *a3, unsigned int *a4)
{
  v4 = a2 * 1023.0;
  v5 = v4 < 0.0;
  if (v4 == v4)
  {
    v5 = 0;
  }

  v6 = v4 - v5;
  v7 = (v4 - v6) * 1024.0;
  if (v7 <= 0.0)
  {
    if (v7 >= 0.0)
    {
      v9 = 0;
      goto LABEL_9;
    }

    v8 = -0.5;
  }

  else
  {
    v8 = 0.5;
  }

  v9 = (v7 + v8);
LABEL_9:
  if (v9 > 1023)
  {
    ++v6;
    v9 -= 1024;
  }

  if (v6 > 1022)
  {
    v6 -= 1023;
  }

  *this = v6;
  *a3 = v9;
  return this;
}

uint64_t BlueFin::GlPeMeasStatus::CalcRmsField(BlueFin::GlPeMeasStatus *this, int8x16_t a2, double a3, int8x16_t a4, int8x16_t a5)
{
  if (*a2.i32 >= 0.5)
  {
    if (*a2.i32 >= 112.0)
    {
      v6 = 56;
      LOBYTE(v5) = 7;
    }

    else
    {
      v7 = 0;
      do
      {
        v8 = v7;
        v9 = 1 << v7++;
      }

      while (v9 < *a2.i32);
      *a2.i32 = *a2.i32 * 16.0;
      *a5.i32 = *a2.i32 + (truncf(*a2.i32 * 2.3283e-10) * -4295000000.0);
      v10.i64[0] = 0x8000000080000000;
      v10.i64[1] = 0x8000000080000000;
      a5.i32[0] = vbslq_s8(v10, a5, a2).u32[0];
      if (*a2.i32 > 4295000000.0)
      {
        a2.i32[0] = a5.i32[0];
      }

      if (*a2.i32 < -4295000000.0)
      {
        *a4.i32 = -*a2.i32;
        *a2.i32 = -(*a2.i32 - (truncf(*a2.i32 * -2.3283e-10) * -4295000000.0));
        *a2.i32 = -*vbslq_s8(v10, a2, a4).i32;
      }

      if (*a2.i32 < 0.0)
      {
        v11 = --*a2.i32;
      }

      else
      {
        v11 = *a2.i32;
      }

      v5 = ((v11 / v9) + 1) & 7;
      v12 = v7 & 7;
      if (!v5)
      {
        v8 = v12;
      }

      v6 = 8 * v8;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
    v6 = 0;
  }

  return (v6 | v5);
}

uint64_t BlueFin::GlPeMeasStatus::GetCodePhase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *v9.i32 = BlueFin::GlPeGnssHwBiasMgr::GetInterSystemHwBiasM(*(*(a1 + 24) + 120), a2, 0, 0);
  v6.i64[0] = *(a1 + 592);
  v7 = *(a2 + 72);
  *v8.i64 = *v9.i32 / 299792.458;
  *v9.i64 = *v8.i64 + *v6.i64 + *(a2 + 64) * 1000.0;
  v10 = *v9.i64 < 0.0;
  if (*v9.i64 == *v9.i64)
  {
    v10 = 0;
  }

  *v9.i64 = (*v9.i64 - v10) - *v9.i64 + 1.0;
  v11 = *v8.i64 + *v6.i64 + v7;
  v12 = v11 < 0.0;
  if (v11 == v11)
  {
    v12 = 0;
  }

  if (v7 != 0.0 && ((*(*(a3 + 1448) + 4 * (*(a2 + 8) >> 5)) >> (*(a2 + 8) & 0x1F)) & 1) == 0 && fabs((v11 - v12) - v11 + 1.0 - *v9.i64) <= 0.01)
  {
    *v9.i64 = (v11 - v12) - v11 + 1.0;
  }

  *v9.i64 = *v9.i64 * 2097152.0;
  *v8.i64 = *v9.i64 + trunc(*v9.i64 * 2.32830644e-10) * -4294967300.0;
  v13.f64[0] = NAN;
  v13.f64[1] = NAN;
  v14 = vnegq_f64(v13);
  v8.i64[0] = vbslq_s8(v14, v8, v9).u64[0];
  if (*v9.i64 > 4294967300.0)
  {
    v9.i64[0] = v8.i64[0];
  }

  if (*v9.i64 < -4294967300.0)
  {
    *v6.i64 = -*v9.i64;
    *v9.i64 = -(*v9.i64 - trunc(*v9.i64 * -2.32830644e-10) * -4294967300.0);
    *v9.i64 = -*vbslq_s8(v14, v9, v6).i64;
  }

  if (*v9.i64 < 0.0)
  {
    return --*v9.i64;
  }

  else
  {
    return *v9.i64;
  }
}

uint64_t BlueFin::GlPeMsaMeasData::SerializeImpl(uint64_t a1)
{
  v17 = MEMORY[0x2A1C7C4A8](a1);
  v23 = *MEMORY[0x29EDCA608];
  if ((v2 & 0xFFFFFFFB) != 0)
  {
    DeviceFaultNotify("glpe_reqhdlr_meas.cpp", 1717, "SerializeImpl", "ucVersion == 4");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_reqhdlr_meas.cpp", 1717, "ucVersion == 4");
  }

  if (v1 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v16 = v1;
    v19 = 16;
    v20 = 4;
    v21 = 0x1000000000000;
    v18 = &unk_2A1F092C0;
    v22 = 4;
    BlueFin::GlSysLogEntry::PutS32(&v18, *(v17 + 12));
    BlueFin::GlSysLogEntry::PutU8(&v18, *(v17 + 8));
    BlueFin::GlSysLogEntry::PutU8(&v18, *(v17 + 2524));
    BlueFin::GlSysLogEntry::PutU32(&v18, *(v17 + 20));
    BlueFin::GlSysLogEntry::PutU16(&v18, *(v17 + 24));
    BlueFin::GlSysLogEntry::PutU8(&v18, *(v17 + 28));
    if (*(v17 + 28))
    {
      v3 = 0;
      do
      {
        v4 = v17 + 32 + 32 * v3;
        BlueFin::GlSysLogEntry::PutU16(&v18, *v4);
        BlueFin::GlSysLogEntry::PutU32(&v18, *(v4 + 4));
        BlueFin::GlSysLogEntry::PutS32(&v18, *(v4 + 8));
        BlueFin::GlSysLogEntry::PutU32(&v18, *(v4 + 12));
        BlueFin::GlSysLogEntry::PutU32(&v18, *(v4 + 16));
        BlueFin::GlSysLogEntry::PutU8(&v18, *(v4 + 20));
        BlueFin::GlSysLogEntry::PutU32(&v18, *(v4 + 24));
        BlueFin::GlSysLogEntry::PutU32(&v18, *(v4 + 28));
        ++v3;
      }

      while (*(v17 + 28) > v3);
    }

    BlueFin::GlSysLogEntry::PutU32(&v18, *(v17 + 416));
    BlueFin::GlSysLogEntry::PutU8(&v18, *(v17 + 420));
    if (*(v17 + 420))
    {
      v5 = 0;
      v6 = v17 + 456;
      do
      {
        v7 = (v17 + 424 + 300 * v5);
        BlueFin::GlSysLogEntry::PutU8(&v18, *v7);
        BlueFin::GlSysLogEntry::PutU8(&v18, v7[4]);
        if (v7[4])
        {
          v8 = 0;
          v9 = v7 + 8;
          v10 = v6;
          do
          {
            v11 = &v9[292 * v8];
            BlueFin::GlSysLogEntry::PutU8(&v18, v11[2]);
            if (v11[2])
            {
              v12 = 0;
              v13 = v10;
              do
              {
                BlueFin::GlSysLogEntry::PutU16(&v18, *(v13 - 10));
                BlueFin::GlSysLogEntry::PutU32(&v18, *(v13 - 4));
                BlueFin::GlSysLogEntry::PutS32(&v18, *v13);
                BlueFin::GlSysLogEntry::PutU32(&v18, *(v13 - 2));
                BlueFin::GlSysLogEntry::PutU8(&v18, *(v13 - 12));
                BlueFin::GlSysLogEntry::PutU32(&v18, *(v13 - 1));
                ++v12;
                v13 += 6;
              }

              while (v12 < v9[292 * v8 + 2]);
            }

            ++v8;
            v10 += 73;
          }

          while (v8 < v7[4]);
        }

        ++v5;
        v6 += 300;
      }

      while (v5 < *(v17 + 420));
    }

    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v18, v16, 4);
  }

  v14 = *MEMORY[0x29EDCA608];
  return 1;
}