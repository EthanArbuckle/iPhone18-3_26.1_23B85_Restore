uint64_t GncP24_60UpdateTimeMod(int a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v18 = 0uLL;
  TimeModel = xofSvcs_GetTimeModel(a1, &v18);
  v3 = TimeModel;
  if (TimeModel > 9)
  {
    v4 = 0;
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      goto LABEL_4;
    }

    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx TimeModelCheckErrCode,%u\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 87, "GncP24_60UpdateTimeMod", 770, v3);
    LbsOsaTrace_WriteLog(8u, __str, v10, 2, 1);
    goto LABEL_3;
  }

  v4 = 1;
  if (((1 << TimeModel) & 0x3BD) != 0)
  {
LABEL_3:
    v4 = 0;
    goto LABEL_4;
  }

  if (TimeModel == 1)
  {
    memset_s(__s, 0x20uLL, 0, 0x20uLL);
    __s[0] = GncP24_52ConvertAGnssType(a1);
    __s[1] = 1000 * v18;
    v12 = WORD1(v18);
    v13 = *(&v18 + 4);
    v14 = BYTE12(v18);
    v15 = 127;
    v16 = 1;
    v17 = 1;
    v4 = GN_AGNSS_Set_Time_Model(__s);
    if ((v4 & 1) == 0)
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v7 = mach_continuous_time();
        v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Time model ConstelType,%u\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 87, "GncP24_60UpdateTimeMod", 257, a1);
        LbsOsaTrace_WriteLog(8u, __str, v8, 2, 1);
      }
    }
  }

LABEL_4:
  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t GN_EE_Get_GPS_Eph_El(int a1, unsigned int a2, uint64_t a3, unsigned __int8 *a4)
{
  v38 = *MEMORY[0x29EDCA608];
  if ((g_OrbitDataAvailable & 1) == 0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: No Xof\n");
LABEL_25:
      v17 = v16;
      v18 = 5;
LABEL_28:
      LbsOsaTrace_WriteLog(8u, __str, v17, v18, 1);
    }

LABEL_29:
    v20 = 0;
    goto LABEL_30;
  }

  v7 = 6;
  if (byte_2A1920804)
  {
    v7 = 5;
  }

  v8 = g_GncPConfig[v7];
  v9 = a1 - 33;
  v10 = (a1 - 33) >= 0xE0u || (a1 + 53) >= 0xF6u;
  v11 = !v10;
  if (a3 > 0x93A7F || (v11 & 1) != 0 || !a4 || a2 > 0xFFF || a2 < v8)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v19 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SV,%u,TOWs,%u,WeekNo,%u,SrtGpsWkNum,%u\n", (*&g_MacClockTicksToMsRelation * v19), "GNC", 87, "GN_EE_Get_GPS_Eph_El", 515, a1, a3, a2, v8);
      v18 = 2;
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v13 = mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SV,%u,Weekno,%u,Tow,%u\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 68, "GN_EE_Get_GPS_Eph_El", a1, a2, a3);
    LbsOsaTrace_WriteLog(8u, __str, v14, 5, 1);
  }

  v36 = 0u;
  memset(v35, 0, sizeof(v35));
  if (v9 < 0xE0u)
  {
    if ((a1 + 63) >= 0xAu)
    {
LABEL_21:
      v15 = 3;
      goto LABEL_38;
    }

    if (xofSvcs_GetQzssSvOrbData(a2 | (a3 << 32), a1, v35) == 1)
    {
      if (!v35[0].i8[1])
      {
        goto LABEL_21;
      }

      goto LABEL_33;
    }

    goto LABEL_35;
  }

  if (xofSvcs_GetGpsSvOrbData(a2 | (a3 << 32), a1, v35) != 1)
  {
LABEL_35:
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
    {
      goto LABEL_29;
    }

    bzero(__str, 0x410uLL);
    v34 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Sv,%u\n", v34);
    goto LABEL_25;
  }

  if (v35[0].i8[1])
  {
LABEL_33:
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
    {
      goto LABEL_29;
    }

    bzero(__str, 0x410uLL);
    v23 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Sv,%u,Health,%u\n", v23);
    goto LABEL_25;
  }

  v15 = 1;
LABEL_38:
  BlockLen = xofSvcs_GetBlockLen(v15);
  v25 = 604800 * a2 + a3;
  v26 = v35[0].i16[2];
  v27 = v35[0].i16[3];
  v28 = 604800 * v35[0].u16[2] + 16 * v35[0].u16[3];
  v29 = v25 - v28;
  v10 = v28 >= v25;
  v30 = v28 - v25;
  if (!v10)
  {
    v30 = v29;
  }

  if (v30 > 1800 * BlockLen)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      goto LABEL_29;
    }

    bzero(__str, 0x410uLL);
    v31 = mach_continuous_time();
    v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SV,%u,WeekNo,%u,TOW_s,%u,EE GpsWeek,%u,sTOC,%u\n", (*&g_MacClockTicksToMsRelation * v31), "GNC", 69, "GN_EE_Get_GPS_Eph_El", 770, a1, a2, a3, v35[0].u16[2], v35[0].u16[3]);
    v18 = 0;
    goto LABEL_28;
  }

  *a4 = v35[0].i8[0];
  a4[1] = 0;
  a4[2] = v35[0].u8[2];
  a4[3] = v35[0].u8[1];
  *(a4 + 2) = 0;
  a4[6] = 0;
  *(a4 + 7) = *(&v35[0].i16[7] + 1);
  a4[9] = v35[0].u8[14];
  *(a4 + 5) = v26;
  *(a4 + 6) = v27;
  *(a4 + 7) = v27;
  *(a4 + 8) = v35[1].i16[1];
  *(a4 + 9) = v35[0].i16[6];
  *(a4 + 20) = vqtbl1q_s8(v36, xmmword_29975CB80);
  *(a4 + 9) = v35[0].i32[2];
  *(a4 + 40) = vuzp2q_s32(vextq_s8(*(&v35[1] + 4), *(&v35[1] + 4), 4uLL), *(&v35[1] + 4));
  *(a4 + 7) = *(v35[2].i64 + 4);
  *(a4 + 16) = v35[2].i32[3];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v32 = mach_continuous_time();
    v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:G EE %u,%u,%u,%u,%u,%u,%d,%d,%d,%d,%u,%u,%u,%u,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%u,%u,%d,%d,%d,%d\n", (*&g_MacClockTicksToMsRelation * v32), "GNC", 73, "GN_EE_Get_GPS_Eph_El", *a4, a4[1], a4[2], a4[3], a4[4], a4[5], a4[6], a4[7], a4[8], a4[9], *(a4 + 5), *(a4 + 6), *(a4 + 7), *(a4 + 8), *(a4 + 9), *(a4 + 10), *(a4 + 11), *(a4 + 12), *(a4 + 13), *(a4 + 14), *(a4 + 15), *(a4 + 16), *(a4 + 17), *(a4 + 9), *(a4 + 10), *(a4 + 11), *(a4 + 12), *(a4 + 13), *(a4 + 14), *(a4 + 15), *(a4 + 16));
    v20 = 1;
    LbsOsaTrace_WriteLog(8u, __str, v33, 4, 1);
  }

  else
  {
    v20 = 1;
  }

LABEL_30:
  v21 = *MEMORY[0x29EDCA608];
  return v20;
}

uint64_t GN_EE_Get_GAL_Eph_El(int a1, int a2, uint64_t a3, uint64_t a4)
{
  v38 = *MEMORY[0x29EDCA608];
  if ((g_OrbitDataAvailable & 1) == 0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: No Xof\n");
      goto LABEL_18;
    }

LABEL_22:
    v18 = 0;
    goto LABEL_23;
  }

  v7 = 6;
  if (byte_2A1920804)
  {
    v7 = 5;
  }

  v8 = g_GncPConfig[v7];
  if (a3 > 0x93A7F || (a1 - 37) < 0xDCu || !a4 || a2 > 0xFFF || g_GncPConfig[v7] - 1024 > a2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v17 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SV,%u,TOWs,%u,WeekNo,%u,SrtGpsWk,%u\n", (*&g_MacClockTicksToMsRelation * v17), "GNC", 87, "GN_EE_Get_GAL_Eph_El", 515, a1, a3, a2, v8);
      v16 = 2;
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v10 = a2 + 1024;
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SV,%u,Weekno,%u,Tow,%u\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 68, "GN_EE_Get_GAL_Eph_El", a1, v10, a3);
    LbsOsaTrace_WriteLog(8u, __str, v12, 5, 1);
  }

  memset(v36, 0, 68);
  if (xofSvcs_GetGalSvOrbData(v10 | (a3 << 32), a1, v36) != 1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
    {
      goto LABEL_22;
    }

    bzero(__str, 0x410uLL);
    v35 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Sv,%u\n", v35);
    goto LABEL_18;
  }

  if (v36[0].i8[2])
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Sv,%u,SigHs,%u\n", v13);
LABEL_18:
      v15 = v14;
      v16 = 5;
LABEL_21:
      LbsOsaTrace_WriteLog(8u, __str, v15, v16, 1);
      goto LABEL_22;
    }

    goto LABEL_22;
  }

  BlockLen = xofSvcs_GetBlockLen(4);
  v22 = (604800 * a2 + a3);
  v23 = v36[0].i16[2];
  v24 = v36[0].i16[3];
  v25 = 604800 * v36[0].u16[2] + 60 * v36[0].u16[3];
  v26 = v22 - v25;
  v27 = v25 >= v22;
  v28 = v25 - v22;
  if (!v27)
  {
    v28 = v26;
  }

  if (v28 > 1800 * BlockLen)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      goto LABEL_22;
    }

    bzero(__str, 0x410uLL);
    v29 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SV,%u,WeekNo,%u,TOW_s,%u,EE GalWeek,%u,TOE,%u\n", (*&g_MacClockTicksToMsRelation * v29), "GNC", 69, "GN_EE_Get_GAL_Eph_El", 770, a1, a2, a3, v36[0].u16[2], v36[0].u16[3]);
    v16 = 0;
    goto LABEL_21;
  }

  *a4 = a3;
  *(a4 + 4) = v23;
  *(a4 + 6) = v36[0].i8[0];
  *(a4 + 7) = v36[0].i8[3];
  *(a4 + 8) = v36[1].i16[1];
  *(a4 + 10) = v24;
  *(a4 + 12) = vuzp2q_s32(vextq_s8(*(&v36[1] + 8), *(&v36[1] + 8), 4uLL), *(&v36[1] + 8));
  *(a4 + 28) = v36[2].i64[1];
  *(a4 + 36) = v36[3].i32[0];
  *(a4 + 40) = vqtbl1q_s8(*(&v36[3] + 4), xmmword_299729030);
  *(a4 + 56) = v36[0].i64[1];
  *(a4 + 64) = v36[1].i8[0];
  *(a4 + 66) = v24;
  HIDWORD(v30) = v36[1].i32[1];
  LODWORD(v30) = v36[1].i32[1];
  *(a4 + 68) = v30 >> 16;
  *(a4 + 72) = 0;
  v31 = v36[0].i8[1];
  *(a4 + 73) = v36[0].i8[1] & 1;
  *(a4 + 74) = (v31 & 2) != 0;
  *(a4 + 75) = (v31 & 4) != 0;
  v32 = v36[0].u8[2];
  *(a4 + 76) = v36[0].i8[2] & 3;
  *(a4 + 77) = (v32 >> 2) & 3;
  *(a4 + 78) = (v32 >> 4) & 3;
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v33 = mach_continuous_time();
    v34 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:E EE %u,%u,%u,%u,%u,%u,%d,%u,%u,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%u,%d,%d,%u,%u,%u,%u,%u,%u,%u\n", (*&g_MacClockTicksToMsRelation * v33), "GNC", 73, "GN_EE_Get_GAL_Eph_El", *a4, *(a4 + 4), *(a4 + 6), *(a4 + 7), *(a4 + 8), *(a4 + 10), *(a4 + 12), *(a4 + 16), *(a4 + 20), *(a4 + 24), *(a4 + 28), *(a4 + 32), *(a4 + 36), *(a4 + 40), *(a4 + 42), *(a4 + 44), *(a4 + 46), *(a4 + 48), *(a4 + 50), *(a4 + 52), *(a4 + 54), *(a4 + 56), *(a4 + 60), *(a4 + 64), *(a4 + 66), *(a4 + 68), *(a4 + 70), *(a4 + 72), *(a4 + 73), *(a4 + 74), *(a4 + 75), *(a4 + 76), *(a4 + 77), *(a4 + 78));
    v18 = 1;
    LbsOsaTrace_WriteLog(8u, __str, v34, 4, 1);
  }

  else
  {
    v18 = 1;
  }

LABEL_23:
  v19 = *MEMORY[0x29EDCA608];
  return v18;
}

uint64_t GN_EE_Get_BDS_Eph_El(int a1, int a2, uint64_t a3, __int16 *a4)
{
  v33 = *MEMORY[0x29EDCA608];
  if ((g_OrbitDataAvailable & 1) == 0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: No Xof\n");
      goto LABEL_18;
    }

LABEL_22:
    v18 = 0;
    goto LABEL_23;
  }

  v7 = 6;
  if (byte_2A1920804)
  {
    v7 = 5;
  }

  v8 = g_GncPConfig[v7];
  if (a3 > 0x93A7F || (a1 - 38) < 0xDBu || !a4 || a2 > 0xFFF || g_GncPConfig[v7] - 1356 > a2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v17 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SV,%u,TOW_s,%u,WeekNo,%u,SrtGpsWkNum,%u\n", (*&g_MacClockTicksToMsRelation * v17), "GNC", 87, "GN_EE_Get_BDS_Eph_El", 515, a1, a3, a2, v8);
      v16 = 2;
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v10 = (a2 + 1356);
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SV,%u,Weekno,%u,Tow,%u\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 68, "GN_EE_Get_BDS_Eph_El", a1, a2 + 1356, a3);
    LbsOsaTrace_WriteLog(8u, __str, v12, 5, 1);
  }

  memset(v31, 0, 84);
  if (xofSvcs_GetBdsSvOrbData(v10 | (a3 << 32), a1, v31) != 1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
    {
      goto LABEL_22;
    }

    bzero(__str, 0x410uLL);
    v30 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Sv,%u\n", v30);
    goto LABEL_18;
  }

  if (v31[0].i8[1])
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Sv,%u,Health,%u\n", v13);
LABEL_18:
      v15 = v14;
      v16 = 5;
LABEL_21:
      LbsOsaTrace_WriteLog(8u, __str, v15, v16, 1);
      goto LABEL_22;
    }

    goto LABEL_22;
  }

  BlockLen = xofSvcs_GetBlockLen(6);
  v22 = (a3 + 604800 * v10);
  v23 = v31[0].i32[2];
  v24 = 604800 * v31[0].u16[3] + 8 * v31[0].i32[2] + 820108800;
  if (v22 <= v24)
  {
    v25 = v24 - v22;
  }

  else
  {
    v25 = v22 - v24;
  }

  if (v25 > 1800 * BlockLen)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      goto LABEL_22;
    }

    bzero(__str, 0x410uLL);
    v26 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SV,%u,WeekNo,%u,TOW_s,%u,EE BdsWeek,%u,TOE,%u\n", (*&g_MacClockTicksToMsRelation * v26), "GNC", 69, "GN_EE_Get_BDS_Eph_El", 770, a1, a2, a3, v31[0].u16[3], v31[0].i32[2]);
    v16 = 0;
    goto LABEL_21;
  }

  *a4 = v31[0].i16[3];
  *(a4 + 1) = v23;
  *(a4 + 2) = v23;
  *(a4 + 12) = v31[1].i8[11];
  *(a4 + 13) = v31[1].i8[10];
  *(a4 + 14) = v31[0].i8[0];
  *(a4 + 15) = v31[0].i8[2];
  *(a4 + 16) = v31[0].i8[1];
  *(a4 + 10) = vuzp2q_s32(vextq_s8(*(&v31[1] + 12), *(&v31[1] + 12), 4uLL), *(&v31[1] + 12));
  *(a4 + 18) = *(&v31[2].i64[1] + 4);
  a4[22] = v31[3].i16[5];
  a4[23] = v31[3].i16[4];
  *(a4 + 12) = v31[3].i32[1];
  *&v27 = *(&v31[4].i64[1] + 4);
  *(&v27 + 1) = *(&v31[0].i64[1] + 4);
  *(a4 + 26) = *(&v31[3] + 12);
  *(a4 + 34) = v27;
  a4[42] = v31[1].i16[2];
  *(a4 + 43) = *(&v31[1].i32[1] + 2);
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v28 = mach_continuous_time();
    v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:B EE %d,%u,%u,%u,%u,%u,%u,%u,%u,%u,%u,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d\n", (*&g_MacClockTicksToMsRelation * v28), "GNC", 73, "GN_EE_Get_BDS_Eph_El", *a4, *(a4 + 1), *(a4 + 2), *(a4 + 12), *(a4 + 13), *(a4 + 14), *(a4 + 15), *(a4 + 16), *(a4 + 5), *(a4 + 6), *(a4 + 7), *(a4 + 8), *(a4 + 9), *(a4 + 10), a4[22], a4[23], *(a4 + 12), *(a4 + 13), *(a4 + 14), *(a4 + 15), *(a4 + 16), *(a4 + 17), *(a4 + 18), *(a4 + 19), *(a4 + 20), a4[42], a4[43], a4[44]);
    v18 = 1;
    LbsOsaTrace_WriteLog(8u, __str, v29, 4, 1);
  }

  else
  {
    v18 = 1;
  }

LABEL_23:
  v19 = *MEMORY[0x29EDCA608];
  return v18;
}

uint64_t GN_EE_Get_GLON_GPS_Eph_El(int a1, unsigned int a2, uint64_t a3, unsigned __int8 *a4)
{
  v35 = *MEMORY[0x29EDCA608];
  if ((g_OrbitDataAvailable & 1) == 0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: No Xof\n");
      goto LABEL_18;
    }

LABEL_22:
    v17 = 0;
    goto LABEL_23;
  }

  v7 = 6;
  if (byte_2A1920804)
  {
    v7 = 5;
  }

  v8 = g_GncPConfig[v7];
  if (a3 > 0x93A7F || (a1 - 25) < 0xE8u || !a4 || a2 > 0xFFF || a2 < v8)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SV,%u,TOW_s,%u,WeekNo,%u,SrtGpsWkNum,%u\n", (*&g_MacClockTicksToMsRelation * v16), "GNC", 87, "GN_EE_Get_GLON_GPS_Eph_El", 515, a1, a3, a2, v8);
      v15 = 2;
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SV,%u,Weekno,%u,Tow,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 68, "GN_EE_Get_GLON_GPS_Eph_El", a1, a2, a3);
    LbsOsaTrace_WriteLog(8u, __str, v11, 5, 1);
  }

  v33 = 0u;
  memset(v32, 0, sizeof(v32));
  if (xofSvcs_GetGloSvOrbData(a2 | (a3 << 32), a1, v32) != 1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
    {
      goto LABEL_22;
    }

    bzero(__str, 0x410uLL);
    v31 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Sv,%u\n", v31);
    goto LABEL_18;
  }

  if (v32[0].i8[1])
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Sv,%u,Health,%u\n", v12);
LABEL_18:
      v14 = v13;
      v15 = 5;
LABEL_21:
      LbsOsaTrace_WriteLog(8u, __str, v14, v15, 1);
      goto LABEL_22;
    }

    goto LABEL_22;
  }

  BlockLen = xofSvcs_GetBlockLen(5);
  v21 = 604800 * a2 + a3;
  v22 = v32[0].i16[2];
  v23 = v32[0].i16[3];
  v24 = 604800 * v32[0].u16[2] + 16 * v32[0].u16[3];
  v25 = v21 - v24;
  v26 = v24 >= v21;
  v27 = v24 - v21;
  if (!v26)
  {
    v27 = v25;
  }

  if (v27 > 1800 * BlockLen)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      goto LABEL_22;
    }

    bzero(__str, 0x410uLL);
    v28 = mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SV,%u,WeekNo,%u,TOW_s,%u,EE GpsWeek,%u,sTOC,%u\n", (*&g_MacClockTicksToMsRelation * v28), "GNC", 69, "GN_EE_Get_GLON_GPS_Eph_El", 770, a1, a2, a3, v32[0].u16[2], v32[0].u16[3]);
    v15 = 0;
    goto LABEL_21;
  }

  *a4 = v32[0].i8[0];
  a4[1] = 0;
  a4[2] = v32[0].u8[2];
  a4[3] = v32[0].u8[1];
  *(a4 + 2) = 0;
  a4[6] = 0;
  *(a4 + 7) = *(&v32[0].i16[7] + 1);
  a4[9] = v32[0].u8[14];
  *(a4 + 5) = v22;
  *(a4 + 6) = v23;
  *(a4 + 7) = v23;
  *(a4 + 8) = v32[1].i16[1];
  *(a4 + 9) = v32[0].i16[6];
  *(a4 + 20) = vqtbl1q_s8(v33, xmmword_29975CB80);
  *(a4 + 9) = v32[0].i32[2];
  *(a4 + 40) = vuzp2q_s32(vextq_s8(*(&v32[1] + 4), *(&v32[1] + 4), 4uLL), *(&v32[1] + 4));
  *(a4 + 7) = *(v32[2].i64 + 4);
  *(a4 + 16) = v32[2].i32[3];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v29 = mach_continuous_time();
    v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:G EE %u,%u,%u,%u,%u,%u,%d,%d,%d,%d,%u,%u,%u,%u,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%u,%u,%d,%d,%d,%d\n", (*&g_MacClockTicksToMsRelation * v29), "GNC", 73, "GN_EE_Get_GLON_GPS_Eph_El", *a4, a4[1], a4[2], a4[3], a4[4], a4[5], a4[6], a4[7], a4[8], a4[9], *(a4 + 5), *(a4 + 6), *(a4 + 7), *(a4 + 8), *(a4 + 9), *(a4 + 10), *(a4 + 11), *(a4 + 12), *(a4 + 13), *(a4 + 14), *(a4 + 15), *(a4 + 16), *(a4 + 17), *(a4 + 9), *(a4 + 10), *(a4 + 11), *(a4 + 12), *(a4 + 13), *(a4 + 14), *(a4 + 15), *(a4 + 16));
    v17 = 1;
    LbsOsaTrace_WriteLog(8u, __str, v30, 4, 1);
  }

  else
  {
    v17 = 1;
  }

LABEL_23:
  v18 = *MEMORY[0x29EDCA608];
  return v17;
}

uint64_t GncP24_50HandleEeDataInd(uint64_t a1)
{
  v70 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      goto LABEL_79;
    }

    bzero(__str, 0x410uLL);
    v18 = mach_continuous_time();
    v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v18), "GNC", 69, "GncP24_50HandleEeDataInd", 517);
    v20 = 0;
LABEL_26:
    LbsOsaTrace_WriteLog(8u, __str, v19, v20, 1);
    goto LABEL_79;
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_EEDATA_IND Type,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP24_50HandleEeDataInd", *(a1 + 16));
    LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
  }

  v4 = *(a1 + 24);
  if (!v4)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      goto LABEL_79;
    }

    bzero(__str, 0x410uLL);
    v21 = mach_continuous_time();
    v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EE Data\n", (*&g_MacClockTicksToMsRelation * v21), "GNC", 87, "GncP24_50HandleEeDataInd", 769);
    v20 = 2;
    goto LABEL_26;
  }

  v5 = *(a1 + 16);
  if (v5 == 2)
  {
    LOBYTE(v56[0]) = 0;
    v58 = 0;
    v59 = 0;
    v22 = *(a1 + 32);
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v23 = mach_continuous_time();
      v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Processing RTI Data Start\n", (*&g_MacClockTicksToMsRelation * v23), "GNC", 73, "GncP24_12HandleRtiInd");
      LbsOsaTrace_WriteLog(8u, __str, v24, 4, 1);
    }

    if (v22)
    {
      if (xofScvs_InjectRtiData(v4, v22, v56) == 1)
      {
        v62 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        GncP16_22UpdateStateAssistDataRcvd(&v62);
        v60[0] = 0;
        v61 = 0;
        if (xofSvcs_GetRtiInjctTime(v60) == 1 && (GN_GPS_Set_RTI_Time(v60[0], v61) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v25 = mach_continuous_time();
          v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RtiFlCrtTime\n", (*&g_MacClockTicksToMsRelation * v25), "GNC", 87, "GncP24_12HandleRtiInd", 257);
          LbsOsaTrace_WriteLog(8u, __str, v26, 2, 1);
        }

        v63 = 0;
        if ((GncP24_13UpdateBadSvList(1, 1, 32, &v68, v66, &v63) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v27 = mach_continuous_time();
          v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GPS\n", (*&g_MacClockTicksToMsRelation * v27), "GNC", 87, "GncP24_12UpdtRtiAssistDoNotUseSV", 257);
          LbsOsaTrace_WriteLog(8u, __str, v28, 2, 1);
        }

        if ((GncP24_13UpdateBadSvList(2, 120, 39, &v68, v66, &v63) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v29 = mach_continuous_time();
          v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SBAS\n", (*&g_MacClockTicksToMsRelation * v29), "GNC", 87, "GncP24_12UpdtRtiAssistDoNotUseSV", 257);
          LbsOsaTrace_WriteLog(8u, __str, v30, 2, 1);
        }

        if ((GncP24_13UpdateBadSvList(3, 193, 10, &v68, v66, &v63) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v31 = mach_continuous_time();
          v32 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx QZSS\n", (*&g_MacClockTicksToMsRelation * v31), "GNC", 87, "GncP24_12UpdtRtiAssistDoNotUseSV", 257);
          LbsOsaTrace_WriteLog(8u, __str, v32, 2, 1);
        }

        if ((GncP24_13UpdateBadSvList(4, 1, 36, &v68, v66, &v63) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v33 = mach_continuous_time();
          v34 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GAL\n", (*&g_MacClockTicksToMsRelation * v33), "GNC", 87, "GncP24_12UpdtRtiAssistDoNotUseSV", 257);
          LbsOsaTrace_WriteLog(8u, __str, v34, 2, 1);
        }

        if ((GncP24_13UpdateBadSvList(5, 1, 24, &v68, v66, &v63) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v35 = mach_continuous_time();
          v36 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GLO\n", (*&g_MacClockTicksToMsRelation * v35), "GNC", 87, "GncP24_12UpdtRtiAssistDoNotUseSV", 257);
          LbsOsaTrace_WriteLog(8u, __str, v36, 2, 1);
        }

        if ((GncP24_13UpdateBadSvList(6, 1, 37, &v68, v66, &v63) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v37 = mach_continuous_time();
          v38 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx BDS\n", (*&g_MacClockTicksToMsRelation * v37), "GNC", 87, "GncP24_12UpdtRtiAssistDoNotUseSV", 257);
          LbsOsaTrace_WriteLog(8u, __str, v38, 2, 1);
        }

        if ((GN_GPS_Set_RTI_Bad_SV_List(v63, &v68, v66) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v39 = mach_continuous_time();
          v40 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RTI data\n", (*&g_MacClockTicksToMsRelation * v39), "GNC", 87, "GncP24_12UpdtRtiAssistDoNotUseSV", 257);
          LbsOsaTrace_WriteLog(8u, __str, v40, 2, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v41 = mach_continuous_time();
          v42 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Processing RTI Data Ends\n", (*&g_MacClockTicksToMsRelation * v41), "GNC", 73, "GncP24_12HandleRtiInd");
          LbsOsaTrace_WriteLog(8u, __str, v42, 4, 1);
        }

        v43 = v56[0];
        v16 = 1;
        v44 = v58;
        goto LABEL_74;
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        mach_continuous_time();
        v49 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RTI\n");
        goto LABEL_72;
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v49 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DataLen\n");
LABEL_72:
      LbsOsaTrace_WriteLog(8u, __str, v49, 2, 1);
    }

    v44 = 0;
    v16 = 0;
    v43 = 0;
LABEL_74:
    v51 = *(a1 + 12);
    __str[0] = v43;
    v65 = v44;
    v52 = 2;
    goto LABEL_75;
  }

  if (v5 != 1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v45 = mach_continuous_time();
      v46 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EeType,%u\n", (*&g_MacClockTicksToMsRelation * v45), "GNC", 87, "GncP24_50HandleEeDataInd", 770, *(a1 + 16));
      LbsOsaTrace_WriteLog(8u, __str, v46, 2, 1);
    }

    goto LABEL_76;
  }

  LOBYTE(v68) = 0;
  v69 = 0uLL;
  v6 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Processing XOF Data Start\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 73, "GncP24_11HandleOrbitDataInd");
    LbsOsaTrace_WriteLog(8u, __str, v8, 4, 1);
  }

  if (v6)
  {
    if (xofScvs_InjectOrbitData(v4, v6, &v68) == 1)
    {
      g_OrbitDataAvailable = 1;
      g_BceOrbitDataInjected = 0;
      *v60 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      GncP16_22UpdateStateAssistDataRcvd(v60);
      v66[0] = 0;
      v67 = 0;
      if (xofSvcs_GetXofInjctTime(v66) == 1 && (GN_GPS_Set_XOF_Time(v66[0], v67) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v9 = mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XofFlCrtTime\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 87, "GncP24_11HandleOrbitDataInd", 257);
        LbsOsaTrace_WriteLog(8u, __str, v10, 2, 1);
      }

      v56[0] = 0;
      v57 = 0;
      if (xofSvcs_GetXofEEStartTime(v56) == 1 && (GN_GPS_Set_EE_Start_Time(v56[0], v57) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v11 = mach_continuous_time();
        v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XofEEStartTime\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 87, "GncP24_11HandleOrbitDataInd", 257);
        LbsOsaTrace_WriteLog(8u, __str, v12, 2, 1);
      }

      GncP24_55UpdateBceOrbitAssistance(1);
      if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v13 = mach_continuous_time();
        v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Processing XOF Data Ends\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 73, "GncP24_11HandleOrbitDataInd");
        LbsOsaTrace_WriteLog(8u, __str, v14, 4, 1);
      }

      v15 = v68;
      v16 = 1;
      v17 = v69;
      goto LABEL_69;
    }

    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
    v17 = 0uLL;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v48 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XOF\n");
      goto LABEL_67;
    }
  }

  else
  {
    v47 = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
    v17 = 0uLL;
    if (v47)
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v48 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DataLen\n");
LABEL_67:
      LbsOsaTrace_WriteLog(8u, __str, v48, 2, 1);
      v17 = 0uLL;
    }
  }

  v15 = 0;
  v16 = 0;
LABEL_69:
  v51 = *(a1 + 12);
  __str[0] = v15;
  v65 = v17;
  v52 = 1;
LABEL_75:
  GncP24_03SendApiStatus(v51, v52, v16, __str);
LABEL_76:
  v53 = *(a1 + 24);
  if (v53)
  {
    free(v53);
  }

  *(a1 + 24) = 0;
LABEL_79:
  v54 = *MEMORY[0x29EDCA608];
  return 0;
}

void GncP24_03SendApiStatus(int a1, int a2, int a3, uint64_t a4)
{
  v14 = *MEMORY[0x29EDCA608];
  v8 = gnssOsa_Calloc("GncP24_03SendApiStatus", 166, 1, 0x30uLL);
  if (v8)
  {
    v9 = v8;
    v8[4] = a2;
    v8[5] = a3;
    v8[3] = a1;
    *(v8 + 24) = *a4;
    *(v8 + 2) = *(a4 + 8);
    if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_EEAPI_IND =>LSIM Api,%u,Id,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 68, "GncP24_03SendApiStatus", v9[4], v9[3]);
      LbsOsaTrace_WriteLog(8u, __str, v11, 5, 1);
    }

    AgpsSendFsmMsg(134, 131, 8783875, v9);
  }

  v12 = *MEMORY[0x29EDCA608];
}

uint64_t GncP24_52ConvertAGnssType(int a1)
{
  result = dword_29975CB90[a1 - 1];
  v2 = *MEMORY[0x29EDCA608];
  *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GncP24_16XofGetNotBrdCstSvs(int a1, char a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  v31 = *MEMORY[0x29EDCA608];
  if (a4 && a5 && *a5 != 255)
  {
    v29 = 0;
    XofBrdSvBitMask = xofSvcs_GetXofBrdSvBitMask(a1, &v29);
    if (XofBrdSvBitMask == 6)
    {
LABEL_14:
      result = 1;
    }

    else
    {
      if (XofBrdSvBitMask != 1)
      {
        result = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
        if (!result)
        {
          goto LABEL_18;
        }

        bzero(__str, 0x410uLL);
        v25 = 770;
        v26 = a1;
        v24 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v20 = "%10u %s%c %s: #%04hx Constel,%u\n";
        goto LABEL_17;
      }

      v11 = v29;
      v12 = GncP24_52ConvertAGnssType(a1);
      v13 = 0;
      if ((a3 - 1) >= 0x3F)
      {
        v14 = 63;
      }

      else
      {
        v14 = (a3 - 1);
      }

      v15 = (v14 + 1);
      v16 = *a5;
      while (v16 != 0xFF)
      {
        if (((v11 >> v13) & 1) == 0)
        {
          *(a4 + 4 * v16) = v12;
          *(a4 + 1020 + *a5) = v13 + a2;
          v16 = *a5 + 1;
          *a5 = v16;
        }

        if (v15 == ++v13)
        {
          goto LABEL_14;
        }
      }

      result = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v23 = mach_continuous_time();
        v25 = 772;
        v26 = *a5;
        v24 = (*&g_MacClockTicksToMsRelation * v23);
        v20 = "%10u %s%c %s: #%04hx NotBrdSvCnt,%u\n";
        goto LABEL_17;
      }
    }
  }

  else
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
    result = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v19 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v27 = *a5;
      v28 = a3;
      v25 = 515;
      v26 = 255;
      v20 = "%10u %s%c %s: #%04hx MaxCnt,%u,NotBrdSvCnt,%u,MaxSvCnt,%u\n";
      v24 = v19;
LABEL_17:
      v21 = snprintf(__str, 0x40FuLL, v20, v24, "GNC", 87, "GncP24_16XofGetNotBrdCstSvs", v25, v26, v27, v28);
      LbsOsaTrace_WriteLog(8u, __str, v21, 2, 1);
      result = 0;
    }
  }

LABEL_18:
  v22 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GncP24_13UpdateBadSvList(int a1, char a2, int a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6)
{
  v28 = *MEMORY[0x29EDCA608];
  if (a4 && a5 && a6 && *a6 != 255)
  {
    v23 = 0;
    v24 = 0;
    v26 = 0;
    v25 = 0;
    if (xofSvcs_GetRtiData(a1, &v23) != 1)
    {
      result = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
      if (!result)
      {
        goto LABEL_15;
      }

      bzero(__str, 0x410uLL);
      v21 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Constel,%u\n", v21);
      goto LABEL_14;
    }

    v12 = 0;
    v13 = (HIDWORD(v25) & HIDWORD(v24)) | ((v26 & v25) << 32);
    v14 = dword_29975CBA8[a1 - 1];
    v15 = *a6;
    while (v15 != 0xFF)
    {
      if (((v13 >> v12) & 1) == 0)
      {
        *(a4 + 4 * v15) = v14;
        *(a5 + *a6) = v12 + a2;
        v15 = *a6 + 1;
        *a6 = v15;
      }

      if (a3 == ++v12)
      {
        result = 1;
        goto LABEL_15;
      }
    }

    result = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v20 = mach_continuous_time();
      v22 = *a6;
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx BadSvCnt,%u\n", (*&g_MacClockTicksToMsRelation * v20));
      goto LABEL_14;
    }
  }

  else
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
    result = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
LABEL_14:
      LbsOsaTrace_WriteLog(8u, __str, v18, 2, 1);
      result = 0;
    }
  }

LABEL_15:
  v19 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GNS_ExecutePpduCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "GNS_ExecutePpduCallback");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (g_GnsPpduCallback)
  {
    g_GnsPpduCallback(a1, a2, a3);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 73, "GNS_ExecutePpduCallback");
    result = LbsOsaTrace_WriteLog(0xCu, __str, v10, 4, 1);
  }

  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lsim21_05PpduSessionAbort(int a1, int a2, int a3, __int128 *a4)
{
  v23 = *MEMORY[0x29EDCA608];
  memset_s(__s, 0x60uLL, 0, 0x60uLL);
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "lsim21_05PpduSessionAbort");
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  __s[0] = a1;
  __s[1] = a2;
  __s[3] = a3;
  v10 = a4[1];
  v18 = *a4;
  v19 = v10;
  v20 = a4[2];
  v21 = *(a4 + 12);
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:SESSION_END_IND =>PpduCB,SuplHandle,%u,Code,%u\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 73, "lsim21_05PpduSessionAbort", a1, a3);
    LbsOsaTrace_WriteLog(0xCu, __str, v12, 4, 1);
  }

  GNS_ExecutePpduCallback(4, 68, __s);
  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v14), "LSM", 73, "lsim21_05PpduSessionAbort");
    result = LbsOsaTrace_WriteLog(0xCu, __str, v15, 4, 1);
  }

  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lsim21_11HandlePpduEncodedPdu(uint64_t a1)
{
  v35 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim21_11HandlePpduEncodedPdu");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v5 = 78;
    if (*(a1 + 48))
    {
      v5 = 89;
    }

    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_PPDU_DELIVERY_IND,SuplHandle,%u,ContentType,%u,SessionType,%u,PduType,%u,EncStatus,%u,isFinal,%c\n", v4, "LSM", 73, "lsim21_11HandlePpduEncodedPdu", *(a1 + 12), *(a1 + 16), *(a1 + 20), *(a1 + 24), *(a1 + 28), v5);
    LbsOsaTrace_WriteLog(0xCu, __str, v6, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PduSize,%u,Pdu,%p\n", (*&g_MacClockTicksToMsRelation * v7), "LSM", 68, "lsim21_11HandlePpduEncodedPdu", *(a1 + 32), *(a1 + 40));
    LbsOsaTrace_WriteLog(0xCu, __str, v8, 5, 1);
  }

  v10 = *(a1 + 12);
  v9 = *(a1 + 16);
  v12 = *(a1 + 20);
  v11 = *(a1 + 24);
  v13 = *(a1 + 28);
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v16 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v17 = mach_continuous_time();
    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v17), "LSM", 73, "lsim21_02SendEncodedPdu");
    LbsOsaTrace_WriteLog(0xCu, __str, v18, 4, 1);
  }

  if (v12 == 1)
  {
    if (v13 == 14)
    {
      v19 = v10;
      v20 = 0;
      v21 = 0;
      v22 = v9;
      v23 = v11;
      v24 = 1;
    }

    else
    {
      v20 = v16;
      v19 = v10;
      v21 = v14;
      v22 = v9;
      v23 = v11;
      v24 = 2;
    }

    GN_SUPL_PPDU_Delivery_In(v19, v20, v21, v22, v23, v24, v15);
    GN_SUPL_Handler();
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
LABEL_20:
      bzero(__str, 0x410uLL);
      v27 = mach_continuous_time();
      v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v27), "LSM", 73, "lsim21_02SendEncodedPdu");
      LbsOsaTrace_WriteLog(0xCu, __str, v28, 4, 1);
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v25 = mach_continuous_time();
      v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionType,%u\n", (*&g_MacClockTicksToMsRelation * v25), "LSM", 87, "lsim21_02SendEncodedPdu", 515, v12);
      LbsOsaTrace_WriteLog(0xCu, __str, v26, 2, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      goto LABEL_20;
    }
  }

  v29 = *(a1 + 40);
  if (v29)
  {
    free(v29);
  }

  *(a1 + 40) = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v30 = mach_continuous_time();
    v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v30), "LSM", 73, "lsim21_11HandlePpduEncodedPdu");
    LbsOsaTrace_WriteLog(0xCu, __str, v31, 4, 1);
  }

  v32 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t lsim21_12HandlePpduSessionEnd(_DWORD *a1)
{
  v17 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim21_12HandlePpduSessionEnd");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_PPDU_SESSIONEND_IND,SuplHandle,%u,SessionType,%u,Status,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim21_12HandlePpduSessionEnd", a1[3], a1[4], a1[5]);
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  v6 = a1[3];
  v7 = a1[4];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "lsim21_03SendSessionEnd");
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  if (v7 == 1)
  {
    GN_SUPL_PPDU_SessionEnd_In();
    GN_SUPL_Handler();
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 73, "lsim21_03SendSessionEnd");
    LbsOsaTrace_WriteLog(0xCu, __str, v11, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 73, "lsim21_12HandlePpduSessionEnd");
    LbsOsaTrace_WriteLog(0xCu, __str, v13, 4, 1);
  }

  v14 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t lsim21_13PpduCbInit(uint64_t result)
{
  v1 = result;
  v8 = *MEMORY[0x29EDCA608];
  if (result)
  {
LABEL_2:
    g_GnsPpduCallback = v1;
    goto LABEL_3;
  }

  if (g_GnsPpduCallback)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DeRegistering\n", (*&g_MacClockTicksToMsRelation * v3), "LSM", 73, "lsim21_13PpduCbInit", 513);
      result = LbsOsaTrace_WriteLog(0xCu, __str, v4, 4, 1);
    }

    goto LABEL_2;
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CbPtr\n", (*&g_MacClockTicksToMsRelation * v5), "LSM", 87, "lsim21_13PpduCbInit", 513);
    result = LbsOsaTrace_WriteLog(0xCu, __str, v6, 2, 1);
  }

LABEL_3:
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL GN_SUPL_PPDU_Decode_Out(int a1, size_t a2, const void *a3, int a4, int a5, int a6)
{
  v50 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 73, "GN_SUPL_PPDU_Decode_Out");
    LbsOsaTrace_WriteLog(0xCu, __str, v13, 4, 1);
  }

  if (a2 && a3)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SuplHandle,%u,Size,%u,Datpointer,%p,Type,%u,log,%u,emergency,%u\n", (*&g_MacClockTicksToMsRelation * v14), "LSM", 73, "GN_SUPL_PPDU_Decode_Out", a1, a2, a3, a4, a5, a6);
      LbsOsaTrace_WriteLog(0xCu, __str, v15, 4, 1);
    }

    v16 = gnssOsa_Calloc("GN_SUPL_PPDU_Decode_Out", 268, 1, a2);
    v17 = v16 != 0;
    if (v16)
    {
      v18 = v16;
      memcpy_s("GN_SUPL_PPDU_Decode_Out", 275, v16, a2, a3, a2);
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v19 = mach_continuous_time();
        v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v19), "LSM", 73, "lsim21_04PpduSessionStart");
        LbsOsaTrace_WriteLog(0xCu, __str, v20, 4, 1);
      }

      memset_s(__s, 0x60uLL, 0, 0x60uLL);
      __s[0] = a1;
      __s[1] = 1;
      v34 = a5;
      v35 = a6;
      v36 = 0;
      v37 = 0;
      v38 = 7;
      v39 = 0;
      memset(v40, 0, sizeof(v40));
      v41 = -1;
      v42 = 0;
      v43 = 0;
      v44 = -1;
      v45 = 0;
      v46 = a2;
      v47 = v18;
      v48 = a4;
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v21 = mach_continuous_time();
        v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:ACTIVE_SESSION_PDU =>PpduCB,SuplHandle,%u\n", (*&g_MacClockTicksToMsRelation * v21), "LSM", 73, "lsim21_04PpduSessionStart", a1);
        LbsOsaTrace_WriteLog(0xCu, __str, v22, 4, 1);
      }

      GNS_ExecutePpduCallback(1, 96, __s);
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v23 = mach_continuous_time();
        v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v23), "LSM", 73, "lsim21_04PpduSessionStart");
        LbsOsaTrace_WriteLog(0xCu, __str, v24, 4, 1);
      }

      free(v18);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v25 = mach_continuous_time();
      v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v25), "LSM", 73, "GN_SUPL_PPDU_Decode_Out");
      LbsOsaTrace_WriteLog(0xCu, __str, v26, 4, 1);
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v27 = mach_continuous_time();
      v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PDUSize,%u\n", (*&g_MacClockTicksToMsRelation * v27), "LSM", 87, "GN_SUPL_PPDU_Decode_Out", 513, a2);
      LbsOsaTrace_WriteLog(0xCu, __str, v28, 2, 1);
    }

    v17 = 0;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v29 = mach_continuous_time();
      v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v29), "LSM", 73, "GN_SUPL_PPDU_Decode_Out");
      LbsOsaTrace_WriteLog(0xCu, __str, v30, 4, 1);
      v17 = 0;
    }
  }

  v31 = *MEMORY[0x29EDCA608];
  return v17;
}

uint64_t GN_SUPL_PPDU_SessionEnd_Out(int a1, int a2, uint64_t a3)
{
  v17 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "GN_SUPL_PPDU_SessionEnd_Out");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  v8 = *(a3 + 16);
  *__str = *a3;
  v14 = v8;
  v15 = *(a3 + 32);
  v16 = *(a3 + 48);
  lsim21_05PpduSessionAbort(a1, 1, a2, __str);
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 73, "GN_SUPL_PPDU_SessionEnd_Out");
    LbsOsaTrace_WriteLog(0xCu, __str, v10, 4, 1);
  }

  v11 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t GN_SUPL_PPDU_PduRequest_Out(int a1, int a2, int a3, void *a4, uint64_t a5, uint64_t a6)
{
  v161 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 73, "GN_SUPL_PPDU_PduRequest_Out");
    LbsOsaTrace_WriteLog(0xCu, __str, v12, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v13 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v14 = 89;
    if (a6)
    {
      v15 = 89;
    }

    else
    {
      v15 = 78;
    }

    if (!a4)
    {
      v14 = 78;
    }

    v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SuplHandle,%u,PcolType,%u,ReqType,%u,Agnss,%c,CellInfo,%c\n", v13, "LSM", 73, "GN_SUPL_PPDU_PduRequest_Out", a1, a2, a3, v14, v15);
    LbsOsaTrace_WriteLog(0xCu, __str, v16, 4, 1);
  }

  if (a3 == 2)
  {
    memset_s(&__s, 0x60uLL, 0, 0x60uLL);
    v157 = a2;
    __s = a1;
    v156 = 1;
    if (a6 && *a6 == 2)
    {
      v20 = gnssOsa_Calloc("GN_SUPL_PPDU_PduRequest_Out", 388, 1, 0x14uLL);
      v159 = v20;
      if (!v20)
      {
        if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
        {
          goto LABEL_147;
        }

LABEL_146:
        bzero(__str, 0x410uLL);
        v151 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v152 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v151, "LSM", 73, "GN_SUPL_PPDU_PduRequest_Out");
        LbsOsaTrace_WriteLog(0xCu, __str, v152, 4, 1);
        goto LABEL_147;
      }

      v20[16] = *(a6 + 8);
      v21 = *(a6 + 4);
      if (v21 == 5)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v33 = mach_continuous_time();
          v34 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTE CI,Mcc,%u,Mnc,%u,Ci,%u,Tac,%u,Pci,%u,Ta,%u,rsrp,%u,rsrq,%u,eARFCN,%u,Count,%u\n", (*&g_MacClockTicksToMsRelation * v33), "LSM", 68, "GN_SUPL_PPDU_PduRequest_Out", *(a6 + 12), *(a6 + 14), *(a6 + 16), *(a6 + 24), *(a6 + 20), *(a6 + 36), *(a6 + 28), *(a6 + 29), *(a6 + 32), *(a6 + 38));
          LbsOsaTrace_WriteLog(0xCu, __str, v34, 5, 1);
        }

        *(v159 + 3) = 1;
        *v159 = *(a6 + 12);
        *(v159 + 1) = *(a6 + 14);
        *(v159 + 1) = *(a6 + 16);
        LOWORD(v32) = *(a6 + 20);
      }

      else
      {
        if (v21 == 2)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v30 = mach_continuous_time();
            v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: WCDMA CI,Mcc,%u,Mnc,%u,Lac,%u,Ci,%u,Psc,%u,NumMeasRes,%u\n", (*&g_MacClockTicksToMsRelation * v30), "LSM", 68, "GN_SUPL_PPDU_PduRequest_Out", *(a6 + 12), *(a6 + 14), *(a6 + 16), *(a6 + 20), *(a6 + 28), *(a6 + 30));
            LbsOsaTrace_WriteLog(0xCu, __str, v31, 5, 1);
          }

          v24 = v159;
          v25 = 2;
        }

        else
        {
          if (v21 != 1)
          {
            if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v114 = mach_continuous_time();
              v115 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CellType,%u\n", (*&g_MacClockTicksToMsRelation * v114), "LSM", 87, "GN_SUPL_PPDU_PduRequest_Out", 770, *(a6 + 4));
              LbsOsaTrace_WriteLog(0xCu, __str, v115, 2, 1);
            }

            *(v159 + 3) = 0;
            if (!a4)
            {
              goto LABEL_76;
            }

LABEL_40:
            if (!a4[1])
            {
              goto LABEL_76;
            }

            v158 = gnssOsa_Calloc("GN_SUPL_PPDU_PduRequest_Out", 452, 1, 0x38uLL);
            if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v35 = mach_continuous_time();
              v36 = a4[1];
              v37 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SUPL AID REQ,Time,%u,Pos,%u,Iono,%u,Agps,%u,Aglon,%u,Aqzss,%u,Asbas,%u\n", (*&g_MacClockTicksToMsRelation * v35), "LSM", 68, "GN_SUPL_PPDU_PduRequest_Out", *v36, v36[1], v36[2], v36[3], v36[4], v36[5], v36[6]);
              LbsOsaTrace_WriteLog(0xCu, __str, v37, 5, 1);
            }

            if (!v158)
            {
              if (v159)
              {
                free(v159);
              }

              v159 = 0;
LABEL_145:
              if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
              {
                goto LABEL_147;
              }

              goto LABEL_146;
            }

            v38 = gnssOsa_Calloc("GN_SUPL_PPDU_PduRequest_Out", 464, 1, 8uLL);
            *(v158 + 1) = v38;
            v39 = v158;
            v40 = *(v158 + 1);
            if (!v40)
            {
              if (v159)
              {
                free(v159);
                v39 = v158;
                v159 = 0;
                if (!v158)
                {
                  goto LABEL_144;
                }
              }

              goto LABEL_143;
            }

            *v40 = *a4[1];
            if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v41 = mach_continuous_time();
              v42 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: IonoReq,%u,RefPosReq,%u,RefTimeReq,%u\n", (*&g_MacClockTicksToMsRelation * v41), "LSM", 68, "GN_SUPL_PPDU_PduRequest_Out", *(*(v158 + 1) + 2), *(*(v158 + 1) + 1), **(v158 + 1));
              LbsOsaTrace_WriteLog(0xCu, __str, v42, 5, 1);
            }

            v43 = a4[1];
            if (v43[3] == 1 && a4[2])
            {
              v44 = gnssOsa_Calloc("GN_SUPL_PPDU_PduRequest_Out", 484, 1, 0xD8uLL);
              *(v158 + 2) = v44;
              v45 = v158;
              v46 = *(v158 + 2);
              if (!v46)
              {
                if (v159)
                {
                  free(v159);
                  v45 = v158;
                }

                v159 = 0;
                v132 = v45[1];
                if (v132)
                {
                  free(v132);
                  v45 = v158;
                }

                v45[1] = 0;
LABEL_142:
                v39 = v158;
                if (!v158)
                {
LABEL_144:
                  v158 = 0;
                  goto LABEL_145;
                }

LABEL_143:
                free(v39);
                goto LABEL_144;
              }

              v47 = a4[2];
              v48 = *(v47 + 16);
              *v46 = *v47;
              *(v46 + 16) = v48;
              v49 = *(v47 + 32);
              v50 = *(v47 + 48);
              v51 = *(v47 + 80);
              *(v46 + 64) = *(v47 + 64);
              *(v46 + 80) = v51;
              *(v46 + 32) = v49;
              *(v46 + 48) = v50;
              v52 = *(v47 + 96);
              v53 = *(v47 + 112);
              v54 = *(v47 + 144);
              *(v46 + 128) = *(v47 + 128);
              *(v46 + 144) = v54;
              *(v46 + 96) = v52;
              *(v46 + 112) = v53;
              v55 = *(v47 + 160);
              v56 = *(v47 + 176);
              v57 = *(v47 + 192);
              *(v46 + 206) = *(v47 + 206);
              *(v46 + 176) = v56;
              *(v46 + 192) = v57;
              *(v46 + 160) = v55;
              v43 = a4[1];
            }

            if (v43[4] == 1 && a4[3])
            {
              v58 = gnssOsa_Calloc("GN_SUPL_PPDU_PduRequest_Out", 500, 1, 0xD8uLL);
              *(v158 + 3) = v58;
              v59 = v158;
              v60 = *(v158 + 3);
              if (!v60)
              {
                if (v159)
                {
                  free(v159);
                  v59 = v158;
                }

                v159 = 0;
                v133 = v59[2];
                if (v133)
                {
                  free(v133);
                  v59 = v158;
                }

                v59[2] = 0;
                goto LABEL_139;
              }

              v61 = a4[3];
              v62 = *(v61 + 16);
              *v60 = *v61;
              *(v60 + 16) = v62;
              v63 = *(v61 + 32);
              v64 = *(v61 + 48);
              v65 = *(v61 + 80);
              *(v60 + 64) = *(v61 + 64);
              *(v60 + 80) = v65;
              *(v60 + 32) = v63;
              *(v60 + 48) = v64;
              v66 = *(v61 + 96);
              v67 = *(v61 + 112);
              v68 = *(v61 + 144);
              *(v60 + 128) = *(v61 + 128);
              *(v60 + 144) = v68;
              *(v60 + 96) = v66;
              *(v60 + 112) = v67;
              v69 = *(v61 + 160);
              v70 = *(v61 + 176);
              v71 = *(v61 + 192);
              *(v60 + 206) = *(v61 + 206);
              *(v60 + 176) = v70;
              *(v60 + 192) = v71;
              *(v60 + 160) = v69;
              v43 = a4[1];
            }

            if (v43[5] == 1 && a4[4])
            {
              v72 = gnssOsa_Calloc("GN_SUPL_PPDU_PduRequest_Out", 517, 1, 0xD8uLL);
              *(v158 + 4) = v72;
              v73 = v158;
              v74 = *(v158 + 4);
              if (!v74)
              {
                if (v159)
                {
                  free(v159);
                  v73 = v158;
                }

                v159 = 0;
                v134 = v73[2];
                if (v134)
                {
                  free(v134);
                  v73 = v158;
                }

                v73[2] = 0;
                v135 = v158;
                v136 = *(v158 + 3);
                if (v136)
                {
                  free(v136);
                  v135 = v158;
                }

                v135[3] = 0;
                goto LABEL_139;
              }

              v75 = a4[4];
              v76 = *(v75 + 16);
              *v74 = *v75;
              *(v74 + 16) = v76;
              v77 = *(v75 + 32);
              v78 = *(v75 + 48);
              v79 = *(v75 + 80);
              *(v74 + 64) = *(v75 + 64);
              *(v74 + 80) = v79;
              *(v74 + 32) = v77;
              *(v74 + 48) = v78;
              v80 = *(v75 + 96);
              v81 = *(v75 + 112);
              v82 = *(v75 + 144);
              *(v74 + 128) = *(v75 + 128);
              *(v74 + 144) = v82;
              *(v74 + 96) = v80;
              *(v74 + 112) = v81;
              v83 = *(v75 + 160);
              v84 = *(v75 + 176);
              v85 = *(v75 + 192);
              *(v74 + 206) = *(v75 + 206);
              *(v74 + 176) = v84;
              *(v74 + 192) = v85;
              *(v74 + 160) = v83;
              v43 = a4[1];
            }

            if (v43[6] != 1 || !a4[5])
            {
LABEL_63:
              if (v43[7] == 1 && a4[6])
              {
                v100 = gnssOsa_Calloc("GN_SUPL_PPDU_PduRequest_Out", 555, 1, 0xD8uLL);
                *(v158 + 6) = v100;
                v101 = v158;
                v102 = *(v158 + 6);
                if (v102)
                {
                  v103 = a4[6];
                  v104 = *(v103 + 16);
                  *v102 = *v103;
                  *(v102 + 16) = v104;
                  v105 = *(v103 + 32);
                  v106 = *(v103 + 48);
                  v107 = *(v103 + 80);
                  *(v102 + 64) = *(v103 + 64);
                  *(v102 + 80) = v107;
                  *(v102 + 32) = v105;
                  *(v102 + 48) = v106;
                  v108 = *(v103 + 96);
                  v109 = *(v103 + 112);
                  v110 = *(v103 + 144);
                  *(v102 + 128) = *(v103 + 128);
                  *(v102 + 144) = v110;
                  *(v102 + 96) = v108;
                  *(v102 + 112) = v109;
                  v111 = *(v103 + 160);
                  v112 = *(v103 + 176);
                  v113 = *(v103 + 192);
                  *(v102 + 206) = *(v103 + 206);
                  *(v102 + 176) = v112;
                  *(v102 + 192) = v113;
                  *(v102 + 160) = v111;
                  goto LABEL_76;
                }

                if (v159)
                {
                  free(v159);
                  v101 = v158;
                }

                v159 = 0;
                v142 = v101[2];
                if (v142)
                {
                  free(v142);
                  v101 = v158;
                }

                v101[2] = 0;
                v143 = v158;
                v144 = *(v158 + 3);
                if (v144)
                {
                  free(v144);
                  v143 = v158;
                }

                v143[3] = 0;
                v145 = v158;
                v146 = *(v158 + 4);
                if (v146)
                {
                  free(v146);
                  v145 = v158;
                }

                v145[4] = 0;
                v147 = v158;
                v148 = *(v158 + 5);
                if (v148)
                {
                  free(v148);
                  v147 = v158;
                }

                v147[5] = 0;
                goto LABEL_139;
              }

LABEL_76:
              if (v158)
              {
                if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
                {
                  bzero(__str, 0x410uLL);
                  v116 = mach_continuous_time();
                  v117 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:REQUEST_ASSIST_DATA_PDU =>PpduCB,SuplHandle,%u,PcolType,%u\n", (*&g_MacClockTicksToMsRelation * v116), "LSM", 73, "GN_SUPL_PPDU_PduRequest_Out", __s, v157);
                  LbsOsaTrace_WriteLog(0xCu, __str, v117, 4, 1);
                }

                GNS_ExecutePpduCallback(3, 96, &__s);
                if (v159)
                {
                  free(v159);
                  v159 = 0;
                }

                v118 = v158;
                if (v158)
                {
                  v119 = *(v158 + 3);
                  if (v119)
                  {
                    free(v119);
                    v118 = v158;
                  }

                  v118[3] = 0;
                  v120 = v158;
                  v121 = *(v158 + 2);
                  if (v121)
                  {
                    free(v121);
                    v120 = v158;
                  }

                  v120[2] = 0;
                  v122 = v158;
                  v123 = *(v158 + 4);
                  if (v123)
                  {
                    free(v123);
                    v122 = v158;
                  }

                  v122[4] = 0;
                  v124 = v158;
                  v125 = *(v158 + 5);
                  if (v125)
                  {
                    free(v125);
                    v124 = v158;
                  }

                  v124[5] = 0;
                  v126 = v158;
                  v127 = *(v158 + 6);
                  if (v127)
                  {
                    free(v127);
                    v126 = v158;
                  }

                  v126[6] = 0;
                  v128 = v158;
                  v129 = *(v158 + 1);
                  if (v129)
                  {
                    free(v129);
                    v128 = v158;
                  }

                  v128[1] = 0;
                  if (v158)
                  {
                    free(v158);
                  }
                }

                goto LABEL_15;
              }

              if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v130 = mach_continuous_time();
                v131 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx AidReq\n", (*&g_MacClockTicksToMsRelation * v130), "LSM", 87, "GN_SUPL_PPDU_PduRequest_Out", 513);
                LbsOsaTrace_WriteLog(0xCu, __str, v131, 2, 1);
              }

              if (v159)
              {
                free(v159);
              }

              v159 = 0;
              if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
              {
                goto LABEL_146;
              }

LABEL_147:
              v19 = 0;
              goto LABEL_148;
            }

            v86 = gnssOsa_Calloc("GN_SUPL_PPDU_PduRequest_Out", 535, 1, 0xD8uLL);
            *(v158 + 5) = v86;
            v87 = v158;
            v88 = *(v158 + 5);
            if (v88)
            {
              v89 = a4[5];
              v90 = *(v89 + 16);
              *v88 = *v89;
              *(v88 + 16) = v90;
              v91 = *(v89 + 32);
              v92 = *(v89 + 48);
              v93 = *(v89 + 80);
              *(v88 + 64) = *(v89 + 64);
              *(v88 + 80) = v93;
              *(v88 + 32) = v91;
              *(v88 + 48) = v92;
              v94 = *(v89 + 96);
              v95 = *(v89 + 112);
              v96 = *(v89 + 144);
              *(v88 + 128) = *(v89 + 128);
              *(v88 + 144) = v96;
              *(v88 + 96) = v94;
              *(v88 + 112) = v95;
              v97 = *(v89 + 160);
              v98 = *(v89 + 176);
              v99 = *(v89 + 192);
              *(v88 + 206) = *(v89 + 206);
              *(v88 + 176) = v98;
              *(v88 + 192) = v99;
              *(v88 + 160) = v97;
              v43 = a4[1];
              goto LABEL_63;
            }

            if (v159)
            {
              free(v159);
              v87 = v158;
            }

            v159 = 0;
            v137 = v87[2];
            if (v137)
            {
              free(v137);
              v87 = v158;
            }

            v87[2] = 0;
            v138 = v158;
            v139 = *(v158 + 3);
            if (v139)
            {
              free(v139);
              v138 = v158;
            }

            v138[3] = 0;
            v140 = v158;
            v141 = *(v158 + 4);
            if (v141)
            {
              free(v141);
              v140 = v158;
            }

            v140[4] = 0;
LABEL_139:
            v149 = v158;
            v150 = *(v158 + 1);
            if (v150)
            {
              free(v150);
              v149 = v158;
            }

            v149[1] = 0;
            goto LABEL_142;
          }

          if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v22 = mach_continuous_time();
            v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GSM CI,Mcc,%u,Mnc,%u,Lac,%u,Ci,%u,Ta,%u\n", (*&g_MacClockTicksToMsRelation * v22), "LSM", 68, "GN_SUPL_PPDU_PduRequest_Out", *(a6 + 12), *(a6 + 14), *(a6 + 16), *(a6 + 20), *(a6 + 24));
            LbsOsaTrace_WriteLog(0xCu, __str, v23, 5, 1);
          }

          v24 = v159;
          v25 = 3;
        }

        v24[3] = v25;
        *v159 = *(a6 + 12);
        *(v159 + 1) = *(a6 + 14);
        *(v159 + 1) = *(a6 + 20);
        v32 = *(a6 + 16);
      }

      *(v159 + 4) = v32;
    }

    if (!a4)
    {
      goto LABEL_76;
    }

    goto LABEL_40;
  }

  if (a3 != 1)
  {
    v19 = 0;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v26 = mach_continuous_time();
      v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PDUType,%u\n", (*&g_MacClockTicksToMsRelation * v26), "LSM", 87, "GN_SUPL_PPDU_PduRequest_Out", 515, a3);
      LbsOsaTrace_WriteLog(0xCu, __str, v27, 2, 1);
      v19 = 0;
    }

    goto LABEL_27;
  }

  memset_s(&__s, 0x60uLL, 0, 0x60uLL);
  v157 = a2;
  __s = a1;
  v156 = 1;
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v17 = mach_continuous_time();
    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:REQUEST_CAPABILITIES_PDU =>PpduCB,SuplHandle,%u,PcolType,%u\n", (*&g_MacClockTicksToMsRelation * v17), "LSM", 73, "GN_SUPL_PPDU_PduRequest_Out", __s, v157);
    LbsOsaTrace_WriteLog(0xCu, __str, v18, 4, 1);
  }

  GNS_ExecutePpduCallback(2, 72, &__s);
LABEL_15:
  v19 = 1;
LABEL_27:
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v28 = mach_continuous_time();
    v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v28), "LSM", 73, "GN_SUPL_PPDU_PduRequest_Out");
    LbsOsaTrace_WriteLog(0xCu, __str, v29, 4, 1);
  }

LABEL_148:
  v153 = *MEMORY[0x29EDCA608];
  return v19;
}

BOOL GN_SUPL_PPDU_Config_Out(const void *a1)
{
  v15 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "GN_SUPL_PPDU_Config_Out");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (a1)
  {
    memset_s(__s, 0x60uLL, 0, 0x60uLL);
    memcpy_s("GN_SUPL_PPDU_Config_Out", 651, __s, 4u, a1, 4uLL);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:PPDU_CONFIG =>PpduCB\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "GN_SUPL_PPDU_Config_Out");
      LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
    }

    GNS_ExecutePpduCallback(0, 4, __s);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v6, "LSM", 73, "GN_SUPL_PPDU_Config_Out");
LABEL_12:
      LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PpduConfig\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 87, "GN_SUPL_PPDU_Config_Out", 513);
      LbsOsaTrace_WriteLog(0xCu, __str, v9, 2, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v10, "LSM", 73, "GN_SUPL_PPDU_Config_Out");
      goto LABEL_12;
    }
  }

  result = a1 != 0;
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL GNS_PpduInitialize(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "GNS_PpduInitialize");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  v4 = gnssOsa_Calloc("GNS_PpduInitialize", 674, 1, 0x18uLL);
  v5 = v4;
  if (v4)
  {
    v4[3] = 5;
    *(v4 + 2) = a1;
    AgpsSendFsmMsg(131, 131, 8635139, v4);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "GNS_PpduInitialize");
      LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
    }
  }

  result = v5 != 0;
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GNS_PpduEncodedPdu(int a1, int a2, int a3, int a4, int a5, uint64_t a6, void *a7, char a8)
{
  v10 = a6;
  v32 = *MEMORY[0x29EDCA608];
  __src = a6;
  v30 = a7;
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v16 = mach_continuous_time();
    v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v16), "LSM", 73, "GNS_PpduEncodedPdu");
    LbsOsaTrace_WriteLog(0xCu, __str, v17, 4, 1);
  }

  v18 = gnssOsa_Calloc("GNS_PpduEncodedPdu", 734, 1, 0x38uLL);
  if (!v18)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v24 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v24, "LSM", 73, "GNS_PpduEncodedPdu");
LABEL_15:
      LbsOsaTrace_WriteLog(0xCu, __str, v25, 4, 1);
    }

LABEL_16:
    v23 = 0;
    goto LABEL_17;
  }

  v19 = v18;
  *(v18 + 3) = a1;
  *(v18 + 4) = a2;
  *(v18 + 5) = a3;
  *(v18 + 6) = a4;
  *(v18 + 7) = a5;
  *(v18 + 48) = a8;
  if (!v10 || !a7)
  {
    goto LABEL_8;
  }

  memcpy_s("GNS_PpduEncodedPdu", 750, v18 + 4, 0x10u, &__src, 0x10uLL);
  v20 = gnssOsa_Calloc("GNS_PpduEncodedPdu", 751, 1, v10);
  v19[5] = v20;
  if (!v20)
  {
    free(v19);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v26 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v26, "LSM", 73, "GNS_PpduEncodedPdu");
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  memcpy_s("GNS_PpduEncodedPdu", 760, v20, __src, v30, __src);
LABEL_8:
  AgpsSendFsmMsg(131, 131, 8630787, v19);
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v21 = mach_continuous_time();
    v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v21), "LSM", 73, "GNS_PpduEncodedPdu");
    v23 = 1;
    LbsOsaTrace_WriteLog(0xCu, __str, v22, 4, 1);
  }

  else
  {
    v23 = 1;
  }

LABEL_17:
  v27 = *MEMORY[0x29EDCA608];
  return v23;
}

uint64_t NK_Add_SV_ARes_PN(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v116 = *MEMORY[0x29EDCA608];
  if (!*(a4 + 140))
  {
    goto LABEL_174;
  }

  v112 = 0;
  v10 = 0.0;
  v11 = *(a5 + 2809) >= 4u && a2 == 0;
  if (!v11 && ((*(a4 + 20) - 6) > 2 || result > 4 || *(a5 + 2808) <= 3u))
  {
    if (*(a5 + 968))
    {
      v10 = 16.0;
    }

    else
    {
      v10 = 4.0;
    }
  }

  if (*(a4 + 233) == 1 && *(a5 + 12) <= 7)
  {
    v12 = 0;
    v13 = 0;
    v110 = 0;
    v14 = a5 + 20032;
    v15 = 76;
    do
    {
      if (*(a3 + 2 * v13 + 2768) && *(a5 + v13 + 2960) == 1 && *(a5 + 6848 + 8 * v13) < 10000.0)
      {
        v16 = *(a3 + 2 * v13 + 2768);
        v17 = v16 * v16;
        NK_Obs_Equ_SV(1, 0, *(a3 + v15), v14, v113, *(a5 + 656));
        LODWORD(v115[0]) = 0;
        if (v16 * v16 > 0.0)
        {
          rnk1_core((a4 + 344), 0, v16 * v16, v113, v115);
          if (LODWORD(v115[0]))
          {
            ++v12;
          }
        }

        v110 = 1;
        *(a4 + 174) = 1;
        *(a4 + 224) = v17;
        EvLog_v("Q-Boost 5 %g  Code_PPC %d %g", sqrt(v17), v13, v16);
      }

      ++v13;
      v14 += 56;
      v15 += 4;
    }

    while (v13 != 48);
    v112 = v12;
  }

  else
  {
    v110 = 0;
  }

  v18 = 0;
  v19 = 0;
  v20 = *(a5 + 24496);
  v21 = *(a5 + 24504);
  v22 = *(a5 + 24512);
  memset(v115, 0, sizeof(v115));
  v23 = a5 + 4832;
  memset(v114, 0, sizeof(v114));
  do
  {
    v24 = *(a5 + 31345 + v18);
    if (*(a5 + 2960 + v24) == 1)
    {
      *(v115 + v19) = *(v23 + 8 * v24);
      *(v114 + v19) = v19;
      ++v19;
    }

    if (v18 > 0x2E)
    {
      break;
    }

    ++v18;
  }

  while (v19 < 9);
  if (v20 >= v21)
  {
    v20 = v21;
  }

  if (v20 >= v22)
  {
    v25 = v22;
  }

  else
  {
    v25 = v20;
  }

  v26 = 0.0;
  v27 = 0.0;
  if (v19 < 5)
  {
    goto LABEL_45;
  }

  VecSortIndexAscR8(v115, v19, v114, 0);
  v28 = v19 >> 1;
  v29 = *(v114 + (v19 >> 1) - 1);
  v30 = *(v115 + *(v114 + (v19 >> 1) + 1));
  v27 = (v19 & 1) != 0 ? *(v115 + *(v114 + v28)) : (*(v115 + *(v114 + v28)) + v30) * 0.5;
  if ((v111 = v27, v31 = *(v115 + v29), v30 * v31 >= 0.0) && (v32 = fabs(v27), vabdd_f64(v30, v31) <= v32 * 0.5) && ((v33 = *(v115 + *(v114 + v28 - 2)), v34 = *(v115 + *(v114 + v28 + 2)), v35 = vabdd_f64(v33, v34), v33 * v34 >= 0.0) ? (v36 = v35 <= v32) : (v36 = 0), v36))
  {
    v43 = 0;
    v108 = (v34 + v30 + v27 + v31 + v33) / 5.0;
    v109 = ((v31 - v108) * (v31 - v108) + (v33 - v108) * (v33 - v108) + (v27 - v108) * (v27 - v108) + (v30 - v108) * (v30 - v108) + (v34 - v108) * (v34 - v108)) / 5.0;
    v41 = v25 + v109;
    v40 = v109 * 25.0;
  }

  else
  {
LABEL_45:
    v37 = 2960;
    v38 = (a5 + 4832);
    do
    {
      if (*(a5 + v37) == 1)
      {
        v39 = 1.0 / v38[252];
        v27 = v27 + *v38 * v39;
        v26 = v26 + v39;
      }

      ++v37;
      ++v38;
    }

    while (v37 != 3008);
    v111 = v27;
    *v115 = v26;
    *&v114[0] = 0;
    v40 = 0.0;
    if (R8_EQ(v115, v114))
    {
      v41 = 0.0;
    }

    else
    {
      *&v42 = 1.0 / v26;
      v27 = v27 * (1.0 / v26);
      v111 = v27;
      LOBYTE(v42) = *(a5 + 2811);
      v41 = v25 + v26 / v42;
    }

    v43 = 1;
  }

  *&v115[0] = 0;
  result = R8_EQ(&v111, v115);
  if ((result & 1) == 0)
  {
    v48 = 0;
    v49 = 0;
    v50 = 2960;
    v51 = (a5 + 4832);
    do
    {
      if (*(a5 + v50) == 1)
      {
        if ((*v51 - v27) * (*v51 - v27) <= v51[252] * 25.0)
        {
          ++v49;
        }

        else
        {
          ++v48;
        }
      }

      ++v50;
      ++v51;
    }

    while (v50 != 3008);
    v52 = 0.0;
    if (v48 >= v49 || v48 && v49 < 3)
    {
      v53 = 0;
      goto LABEL_86;
    }
  }

  if (v27 != 0.0)
  {
    v44 = fabs(v27);
    v45 = v44 >= 149896.229 || *(a5 + 968) == 0;
    v46 = v27 * v27;
    if (v45 && v46 >= v10 * v41)
    {
      v53 = 1;
LABEL_80:
      v54 = -(v41 - v27 * v27);
      if (v54 > 0.0)
      {
        v55 = v53;
        Apply_Q_Boost(-(v41 - v27 * v27), 0, 1u, (a4 + 344), &v112, v115);
        Apply_Q_Boost(-(v41 - v27 * v27), 1u, 1u, (a4 + 344), &v112, v115);
        Apply_Q_Boost(-(v41 - v27 * v27), 2u, 1u, (a4 + 344), &v112, v115);
        if (v54 >= 10000.0)
        {
          v55 = 1;
        }

        v110 = 1;
        *(a4 + 169) = 1;
        *(a4 + 184) = v54;
        result = EvLog_v("Q-Boost 0 %g  ClkB %g  Vars %g %g %g %g %g", sqrt(v54), v27, sqrt(v25), sqrt(*(a5 + 24496)), sqrt(*(a5 + 24504)), sqrt(*(a5 + 24512)), sqrt(v41));
        v53 = v55;
        goto LABEL_85;
      }

      goto LABEL_84;
    }

    if ((v43 & 1) == 0 && ((a6 & 0xFFFFFFFE) != 6 || v46 >= v40 || (*(a4 + 20) - 4) <= 4))
    {
      v53 = 0;
      if (v44 < 3.0 || v46 < v41)
      {
        goto LABEL_85;
      }

      goto LABEL_80;
    }
  }

LABEL_84:
  v53 = 0;
LABEL_85:
  v52 = v27;
LABEL_86:
  if (*(a5 + 2811) < 3u)
  {
    goto LABEL_158;
  }

  v56 = 0;
  v57 = 0;
  v58 = 0;
  v59 = -1;
  v60 = -9999.0;
  v61 = 2960;
  v62 = (a5 + 4832);
  v63 = a5;
  do
  {
    if (*(v63 + 2960) == 1 && v62[252] < 10000.0)
    {
      v64 = (*v62 - v52) * (*v62 - v52) / v62[300];
      if (v64 <= v10 || (++v57, v56 += *(v63 + 1026), v64 <= v60))
      {
        v64 = v60;
      }

      else
      {
        v59 = v61 - 2960;
      }

      ++v58;
      v60 = v64;
    }

    ++v61;
    ++v63;
    ++v62;
  }

  while (v61 != 3008);
  if (*(a5 + 13963) + *(a5 + 8387) < 3)
  {
    v68 = 0;
    v67 = 0;
    v66 = 0;
    v69 = -1;
    if ((v59 & 0x80000000) != 0)
    {
      goto LABEL_132;
    }
  }

  else
  {
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v69 = -1;
    v70 = -9999.0;
    v71 = 48;
    v72 = a5;
    result = a5;
    do
    {
      v73 = *(result + 14112);
      if (*(result + 8536) & 1) != 0 || (*(result + 14112))
      {
        if (v73 & 1 | ((*(result + 8536) & 1) == 0))
        {
          v74 = 15984;
        }

        else
        {
          v74 = 10408;
        }

        v75 = *(v72 + v74);
        if (v73 & 1 | ((*(result + 8536) & 1) == 0))
        {
          v76 = 18384;
        }

        else
        {
          v76 = 12808;
        }

        v77 = v75 * v75 / *(v72 + v76);
        if (v77 <= v10 || (++v67, v66 += *(result + 1026), v77 <= v70))
        {
          v77 = v70;
        }

        else
        {
          v69 = v65;
        }

        ++v68;
        v70 = v77;
      }

      ++v65;
      ++result;
      v72 += 8;
      --v71;
    }

    while (v71);
    if ((v59 & 0x80000000) != 0)
    {
      goto LABEL_132;
    }
  }

  if (v58 >= 3 && *(a5 + 968) != 1)
  {
    v78 = v57 <= 2 && v56 == 0;
    v79 = !v78;
    if (!v78 || (*(a4 + 233) & 1) != 0)
    {
      v80 = 0.0816326531;
      if (*(a4 + 233) & 1 | ((v79 & 1) == 0))
      {
        v80 = 1.0;
      }
    }

    else
    {
      if (*(a5 + 12) >= 8)
      {
        goto LABEL_132;
      }

      v80 = 0.0816326531;
    }

    v81 = *(v23 + 8 * v59);
    v82 = *(a5 + 7232 + 8 * v59);
    v83 = -(v82 - v81 * v81 * v80);
    v84 = v83 * 0.5;
    if (v83 * 0.5 > 0.0)
    {
      v85 = v59;
      Apply_Q_Boost(v83 * 0.5, 0, 1u, (a4 + 344), &v112, v115);
      Apply_Q_Boost(v84, 1u, 1u, (a4 + 344), &v112, v115);
      Apply_Q_Boost(v84, 2u, 1u, (a4 + 344), &v112, v115);
      Apply_Q_Boost(v84, 5u, 3u, (a4 + 344), &v112, v115);
      Apply_Q_Boost(v84 + v84, 4u, 1u, (a4 + 344), &v112, v115);
      v110 = 1;
      *(a4 + 170) = 1;
      *(a4 + 192) = v84;
      result = EvLog_v("Q-Boost 1 %g  PR.Res %d %g %g  tested %d  fail %d %d", sqrt(v84), v85, v81, sqrt(v82), v58, v57, v56);
      v53 = 1;
    }
  }

LABEL_132:
  if ((v69 & 0x80000000) == 0 && v68 >= 3 && *(a5 + 968) != 1)
  {
    v86 = v67 <= 2 && v66 == 0;
    v87 = !v86;
    v88 = v87 ^ 1 | *(a4 + 233);
    if (v86 && (*(a4 + 233) & 1) == 0)
    {
      if (*(a5 + 12) > 7)
      {
        goto LABEL_158;
      }

      v88 = 0;
    }

    v89 = 12808;
    if (*(a5 + v69 + 14112))
    {
      v89 = 18384;
    }

    v90 = 10408;
    if (*(a5 + v69 + 14112))
    {
      v90 = 15984;
      v91 = 82;
    }

    else
    {
      v91 = 79;
    }

    v92 = *(a5 + v90 + 8 * v69);
    v93 = *(a5 + v89 + 8 * v69);
    if ((v88 & 1) != 0 || !*(a4 + 11048))
    {
      v94 = 1.0;
    }

    else
    {
      v94 = 0.0816326531;
    }

    v95 = -(v93 - v92 * v92 * v94);
    v96 = v95 * 0.5;
    if (v95 * 0.5 > 0.0)
    {
      Apply_Q_Boost(v95 * 0.5, 3u, 1u, (a4 + 344), &v112, v115);
      Apply_Q_Boost(v96, 8u, 3u, (a4 + 344), &v112, v115);
      *(a4 + 171) = 1;
      *(a4 + 200) = v96;
      result = EvLog_v("Q-Boost 2 %g  D%c.Res %d %g %g  tested %d  fail %d %d", sqrt(v96), v91, v69, v92, sqrt(v93), v68, v67, v66);
      if (!v112)
      {
LABEL_162:
        *(a4 + 144) = 0;
LABEL_163:
        ud2var(a4 + 344, 0xBu, 1, 0xBu, (a5 + 24496));
        Comp_NEDvar_UDU(a4 + 344, 0xBu, 5, (a5 + 832), (a5 + 24536));
        result = Comp_NEDvar_UDU(a4 + 344, 0xBu, 8, (a5 + 832), (a5 + 24560));
        goto LABEL_166;
      }

      goto LABEL_159;
    }
  }

LABEL_158:
  if (!v112)
  {
    if ((v110 & 1) == 0)
    {
      v97 = *(a4 + 144);
      if (v97 <= 0x5F5E0FF)
      {
        *(a4 + 144) = v97 + 1;
      }

      goto LABEL_166;
    }

    if (!v53)
    {
      goto LABEL_163;
    }

    goto LABEL_162;
  }

LABEL_159:
  *(a4 + 128) = 1;
  *(a4 + 132) = 22;
  *(a4 + 144) = 0;
LABEL_166:
  v98 = 0;
  v99 = (a5 + 2856);
  v100 = vld1q_dup_f64(v99);
  do
  {
    *(a5 + 7216 + v98) = vmulq_f64(v100, *(a5 + 7216 + v98));
    v98 -= 16;
  }

  while (v98 != -384);
  v101 = 0;
  v102 = (a5 + 8432);
  v103 = vld1q_dup_f64(v102);
  do
  {
    *(a5 + 12792 + v101) = vmulq_f64(v103, *(a5 + 12792 + v101));
    v101 -= 16;
  }

  while (v101 != -384);
  v104 = 0;
  v105 = (a5 + 14008);
  v106 = vld1q_dup_f64(v105);
  do
  {
    *(a5 + 18368 + v104) = vmulq_f64(v106, *(a5 + 18368 + v104));
    v104 -= 16;
  }

  while (v104 != -384);
  if (*(a4 + 144) >= 4u)
  {
    *(a4 + 216) = 0u;
    *(a4 + 200) = 0u;
    *(a4 + 184) = 0u;
  }

LABEL_174:
  v107 = *MEMORY[0x29EDCA608];
  return result;
}

void NK_Add_SV_ARes_PN_ClkDrift(uint64_t a1, uint64_t a2, double a3)
{
  v32 = *MEMORY[0x29EDCA608];
  if (!*(a1 + 140))
  {
    goto LABEL_36;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = (a2 + 14112);
  v12 = (a2 + 8536);
  v13 = *(a2 + 24520);
  v14 = sqrt(v13) * 0.5;
  v15 = -1.79769313e308;
  v16 = (a2 + 10408);
  v17 = 0.0;
  do
  {
    v18 = *(a2 + 31345 + v6);
    if (v12[v18])
    {
      if (v7 > 2)
      {
        goto LABEL_17;
      }
    }

    else if (v11[v18] != 1 || v7 >= 3)
    {
      goto LABEL_17;
    }

    v20 = v16[v18];
    ++v7;
    if (v20 >= 0.0)
    {
      ++v8;
    }

    else
    {
      ++v9;
    }

    v17 = v17 + v20;
    v21 = fabs(v20);
    if (v21 > v14)
    {
      ++v10;
    }

    if (v21 > v15)
    {
      v15 = v21;
    }

LABEL_17:
    ++v6;
  }

  while (v6 != 48);
  if (v8)
  {
    v22 = v9 == 0;
  }

  else
  {
    v22 = 1;
  }

  if (v22 && v10)
  {
    v23 = -(v13 - (v15 + v15) * (v15 + v15));
    if (v23 > 0.0)
    {
      v31 = 0;
      memset(v30, 0, sizeof(v30));
      v29 = 0;
      Apply_Q_Boost(v23, 3u, 1u, (a1 + 344), &v29, v30);
      if (v29)
      {
        *(a1 + 132) = 22;
        *(a1 + 128) = 1;
      }

      else
      {
        ud2var(a1 + 344, 0xBu, 1, 0xBu, (a2 + 24496));
        Comp_NEDvar_UDU(a1 + 344, 0xBu, 5, (a2 + 832), (a2 + 24536));
        Comp_NEDvar_UDU(a1 + 344, 0xBu, 8, (a2 + 832), (a2 + 24560));
      }
    }

    if (fabs(a3) > 0.2)
    {
      v24 = v17 / v7;
      if (fabs(v24) > v14)
      {
        *(a2 + 760) = *(a2 + 760) + v24 * -0.00000000333564095;
        v25 = 48;
        do
        {
          v26 = *v12++;
          if (v26 == 1)
          {
            *v16 = *v16 - v24;
            v16[96] = v16[96] - v24;
          }

          if (*v11 == 1)
          {
            v27 = v24 * *(a2 + 656);
            v16[697] = v16[697] - v27;
            v16[793] = v16[793] - v27;
          }

          ++v16;
          ++v11;
          --v25;
        }

        while (v25);
      }
    }
  }

LABEL_36:
  v28 = *MEMORY[0x29EDCA608];
}

uint64_t asn1PE_PosProtocolVersion3GPP(uint64_t a1, unsigned __int8 *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  Asn1Coder::AddBitToBuffer(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
LABEL_9:
    SuplAsn1Logger::TraceError(v7, v5, v6);
    goto LABEL_10;
  }

  v7 = Asn1Coder::EncodeInteger(a1, 0, 255, *a2);
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_9;
  }

  v7 = Asn1Coder::EncodeInteger(a1, 0, 255, a2[1]);
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_9;
  }

  v7 = Asn1Coder::EncodeInteger(a1, 0, 255, a2[2]);
  v4 = v7;
  if (v7)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_9;
  }

LABEL_10:
  v8 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t asn1PE_PosProtocol_VER2(uint64_t a1, _BYTE *a2)
{
  v12[1] = *MEMORY[0x29EDCA608];
  v4 = Asn1Coder::EncodeSequenceExtension(a1, 1, 1);
  if (a2[1])
  {
    v5 = a2[3] == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5 || (a2[2] ? (v6 = a2[4] == 0) : (v6 = 0), v6 || (v7 = v4, *a2) && !a2[5] || a2[7] && !a2[6]))
  {
    v8 = *(a1 + 8);
    v9 = *(a1 + 12);
    v7 = 1;
    LODWORD(v4) = 1;
  }

  else
  {
    v12[0] = 0;
    if (v4)
    {
      v8 = *(a1 + 8);
      v9 = *(a1 + 12);
    }

    else
    {
      v4 = Asn1Coder::EncodeOpenTypeFieldStart(a1, v12);
      if (v4)
      {
        v7 = v4;
        v8 = *(a1 + 8);
        v9 = *(a1 + 12);
      }

      else
      {
        Asn1Coder::AddBitToBuffer(a1, 0);
        v7 = *(a1 + 16);
        if (*(a1 + 16))
        {
          v8 = *(a1 + 8);
          v9 = *(a1 + 12);
          LODWORD(v4) = *(a1 + 16);
        }

        else
        {
          Asn1Coder::AddBitToBuffer(a1, a2[3]);
          v7 = *(a1 + 16);
          if (*(a1 + 16))
          {
            v8 = *(a1 + 8);
            v9 = *(a1 + 12);
            LODWORD(v4) = *(a1 + 16);
          }

          else
          {
            Asn1Coder::AddBitToBuffer(a1, a2[4]);
            v7 = *(a1 + 16);
            if (*(a1 + 16))
            {
              v8 = *(a1 + 8);
              v9 = *(a1 + 12);
              LODWORD(v4) = *(a1 + 16);
            }

            else
            {
              Asn1Coder::AddBitToBuffer(a1, a2[5]);
              v7 = *(a1 + 16);
              if (*(a1 + 16))
              {
                v8 = *(a1 + 8);
                v9 = *(a1 + 12);
                LODWORD(v4) = *(a1 + 16);
              }

              else
              {
                Asn1Coder::AddBitToBuffer(a1, a2[6]);
                v7 = *(a1 + 16);
                if (*(a1 + 16))
                {
                  v8 = *(a1 + 8);
                  v9 = *(a1 + 12);
                  LODWORD(v4) = *(a1 + 16);
                }

                else
                {
                  Asn1Coder::AddBitToBuffer(a1, a2[7]);
                  v7 = *(a1 + 16);
                  if (*(a1 + 16))
                  {
                    v8 = *(a1 + 8);
                    v9 = *(a1 + 12);
                    LODWORD(v4) = *(a1 + 16);
                  }

                  else if (a2[3] && (v4 = asn1PE_PosProtocolVersion3GPP(a1, a2 + 8), v4))
                  {
                    v7 = v4;
                    v8 = *(a1 + 8);
                    v9 = *(a1 + 12);
                  }

                  else if (a2[4] || a2[5])
                  {
                    v7 = 1;
                    *(a1 + 16) = 1;
                    SuplAsn1Logger::TraceError(1u, *(a1 + 8), *(a1 + 12));
                    v8 = *(a1 + 8);
                    v9 = *(a1 + 12);
                    LODWORD(v4) = 1;
                  }

                  else if (a2[6] && (v4 = asn1PE_PosProtocolVersion3GPP(a1, a2 + 11), v4))
                  {
                    v7 = v4;
                    v8 = *(a1 + 8);
                    v9 = *(a1 + 12);
                  }

                  else
                  {
                    v4 = Asn1Coder::EncodeOpenTypeFieldEnd(a1, v12);
                    v7 = v4;
                    if (!v4)
                    {
                      goto LABEL_15;
                    }

                    v8 = *(a1 + 8);
                    v9 = *(a1 + 12);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  SuplAsn1Logger::TraceError(v4, v8, v9);
LABEL_15:
  v10 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t asn1PD_Notification_VER2(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x29EDCA608];
  v15[0] = 0;
  v16 = 0;
  v4 = Asn1Coder::DecodeSequenceExtension(a1, v15);
  v13 = 0;
  v14 = 0;
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
  }

  else
  {
    v4 = Asn1Coder::DecodeOpenTypeFieldStart(a1, &v13);
    if (v4)
    {
      v5 = v4;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
    }

    else
    {
      BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
      v5 = *(a1 + 16);
      if (*(a1 + 16))
      {
        v6 = *(a1 + 8);
        v7 = *(a1 + 12);
        LODWORD(v4) = *(a1 + 16);
      }

      else
      {
        v9 = BitFromBuffer;
        *(a2 + 65) = Asn1Coder::GetBitFromBuffer(a1);
        v5 = *(a1 + 16);
        if (*(a1 + 16))
        {
          v6 = *(a1 + 8);
          v7 = *(a1 + 12);
          LODWORD(v4) = *(a1 + 16);
        }

        else if (v9 && (v4 = Asn1Coder::SkipSequenceExtension(a1), v4))
        {
          v5 = v4;
          v6 = *(a1 + 8);
          v7 = *(a1 + 12);
        }

        else
        {
          v12 = v13.i32[0];
          *(a1 + 8) = v14 + v13.i32[1];
          *(a1 + 12) = v12;
          v4 = Asn1Coder::SkipSequenceExtensionAddition(a1, v15, 1u);
          v5 = v4;
          if (!v4)
          {
            goto LABEL_10;
          }

          v6 = *(a1 + 8);
          v7 = *(a1 + 12);
        }
      }
    }
  }

  SuplAsn1Logger::TraceError(v4, v6, v7);
LABEL_10:
  v10 = *MEMORY[0x29EDCA608];
  return v5;
}

void *EPGetPath(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x29EDCA608];
  v5 = a1 + 200;
  v4 = *(a1 + 200);
  v6 = *(v4 + 2);
  if (v6)
  {
    v7 = strnlen(v6, 0x400uLL);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7;
  memset(v29, 0, sizeof(v29));
  v28 = 0u;
  *&__n[1] = 0u;
  __n[0] = v7;
  v9 = *(a1 + 712);
  v10 = v9 - 1;
  if (v9 != 1)
  {
    v13 = 0;
    do
    {
      v14 = *v4;
      if (v14 > 0x6F)
      {
        if (v14 - 112 >= 2)
        {
          if (v14 != 128 && v14 != 160)
          {
            continue;
          }

          goto LABEL_20;
        }
      }

      else
      {
        v15 = v14 - 16;
        if (v14 - 16 > 0x30)
        {
          goto LABEL_25;
        }

        if (((1 << v15) & 0x1000000010003) != 0)
        {
          ++v13;
          v16 = *(v5 + 8 * v13);
          v4 = *v16;
          v17 = v16[1];
          if (v17)
          {
            v18 = strnlen(v17, 0x400uLL) + 1;
          }

          else
          {
            v18 = 0;
          }

          __n[v13] = v18;
          v8 += v18;
          continue;
        }

        if (((1 << v15) & 0x300000000) == 0)
        {
LABEL_25:
          if (v14 != 96)
          {
            continue;
          }

          goto LABEL_20;
        }
      }

      ++v13;
      v19 = CUCFGetNumOfDigits(**(v5 + 8 * v13) + 1);
      __n[v13] = v19 + 2;
      v8 += (v19 + 2);
LABEL_20:
      v4 = *(v4 + 3);
    }

    while (v13 < v10);
  }

  v11 = gnssOsa_Calloc("posp_alloc", 18, 1, v8 + 1);
  if (!v11)
  {
    CUCFErrorHandler(a1, 1);
    goto LABEL_28;
  }

  v26 = a2;
  v12 = *(a1 + 200);
  memcpy_s("posp_memcpy", 29, v11, __n[0], v12[2], __n[0]);
  if (*(a1 + 712) != 1)
  {
    v22 = 0;
    v23 = v11;
    while (1)
    {
      v24 = *v12;
      if (v24 > 0x6F)
      {
        break;
      }

      v25 = v24 - 16;
      if (v24 - 16 > 0x30)
      {
        goto LABEL_43;
      }

      if (((1 << v25) & 0x1000000010003) == 0)
      {
        if (((1 << v25) & 0x300000000) != 0)
        {
LABEL_39:
          v23 += __n[v22++];
          sprintf(v23, "[%llu]", **(v5 + 8 * v22) + 1);
        }

        else
        {
LABEL_43:
          if (v24 != 96)
          {
            goto LABEL_41;
          }
        }

        goto LABEL_40;
      }

      v23 += __n[v22++];
      v12 = **(v5 + 8 * v22);
      *v23 = 46;
      memcpy_s("posp_memcpy", 29, v23 + 1, __n[v22] - 1, *(*(v5 + 8 * v22) + 8), __n[v22] - 1);
LABEL_41:
      if (v22 >= *(a1 + 712) - 1)
      {
        goto LABEL_7;
      }
    }

    if (v24 - 112 < 2)
    {
      goto LABEL_39;
    }

    if (v24 != 128 && v24 != 160)
    {
      goto LABEL_41;
    }

LABEL_40:
    v12 = v12[3];
    goto LABEL_41;
  }

LABEL_7:
  *(v11 + v8) = 0;
  *v26 = v8 + 1;
LABEL_28:
  v20 = *MEMORY[0x29EDCA608];
  return v11;
}

uint64_t CUCFErrorHandler(uint64_t a1, int a2)
{
  v6 = *MEMORY[0x29EDCA608];
  *a1 = a2;
  result = LOGASN1Error(ErrorMessageArray[a2], 0);
  if (*(a1 + 196))
  {
    longjmp((a1 + 4), a2);
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void EPErrorHandler(uint64_t a1, int a2)
{
  v8[1] = *MEMORY[0x29EDCA608];
  v4 = EPGetPath(a1, v8);
  LOGASN1Error(ErrorMessageArray[a2], v4);
  if (v4)
  {
    free(v4);
  }

  *a1 = a2;
  v5 = *(a1 + 736);
  if (v5)
  {
    v5(a1);
  }

  if ((a2 & 0xFFFFFFFE) != 0x12 && *(a1 + 196))
  {
    v7 = *(a1 + 1112);
    if (v7)
    {
      free(v7);
      *(a1 + 1112) = 0;
    }

    longjmp((a1 + 4), a2);
  }

  v6 = *MEMORY[0x29EDCA608];
}

uint64_t rrl_init_bits_enc(void)
{
  v3 = *MEMORY[0x29EDCA608];
  v0 = gnssOsa_Calloc("posp_alloc", 18, 1, 0xF2uLL);
  rrl_bits_enc_buf_ptr = v0;
  if (v0)
  {
    rrl_bits_enc_buf_cur_ptr = v0;
    rrl_bits_enc_buf_cur_offset = 0;
    rrl_bits_enc_length = 0;
    rrl_bits_enc_error = 0;
    result = 1;
  }

  else
  {
    ms_report_exception(2, 3, 70, "rrl_init_bits_enc");
    result = 0;
  }

  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t rrl_finish_bits_enc(unsigned __int8 **a1, unsigned int *a2)
{
  v3 = 0;
  v9 = *MEMORY[0x29EDCA608];
  v4 = rrl_bits_enc_buf_ptr;
  if (rrl_bits_enc_buf_ptr && (rrl_bits_enc_error & 1) == 0)
  {
    v6 = gnssOsa_Calloc("posp_alloc", 18, 1, rrl_bits_enc_length);
    *a1 = v6;
    if (v6)
    {
      memcpy_s("rrl_finish_bits_enc", 101, v6, rrl_bits_enc_length, rrl_bits_enc_buf_ptr, rrl_bits_enc_length);
      *a2 = rrl_bits_enc_length;
      v3 = 1;
    }

    else
    {
      v3 = 0;
    }

    v4 = rrl_bits_enc_buf_ptr;
  }

  if (v4)
  {
    free(v4);
    rrl_bits_enc_buf_ptr = 0;
  }

  rrl_bits_enc_buf_cur_ptr = 0;
  rrl_bits_enc_buf_cur_offset = 0;
  rrl_bits_enc_length = 0;
  rrl_bits_enc_error = 0;
  v7 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t rrl_bits_append(uint64_t result, unsigned int a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if (rrl_bits_enc_buf_ptr && (rrl_bits_enc_error & 1) == 0)
  {
    if (result > 8 || ((v2 = rrl_bits_enc_length, v3 = rrl_bits_enc_buf_cur_offset, rrl_bits_enc_length == 242) ? (v4 = rrl_bits_enc_buf_cur_offset + result >= 9) : (v4 = 0), v4))
    {
      rrl_bits_enc_error = 1;
    }

    else if (result)
    {
      v5 = rrl_bits_enc_buf_cur_ptr;
      v6 = (result - 1);
      v7 = 8 - result;
      do
      {
        *v5 = *v5 & (-129 >> v3) | (((1 << v6) & a2) << v7 >> v3);
        if (v3)
        {
          rrl_bits_enc_buf_cur_offset = ++v3;
          if (v3 == 8)
          {
            v3 = 0;
            rrl_bits_enc_buf_cur_offset = 0;
            rrl_bits_enc_buf_cur_ptr = ++v5;
          }
        }

        else
        {
          rrl_bits_enc_length = ++v2;
          v3 = 1;
          rrl_bits_enc_buf_cur_offset = 1;
        }

        result = (v6 - 1);
        ++v7;
      }

      while (v6-- > 0);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t rrl_util_accuracy_to_meter(uint64_t result)
{
  if (result <= 0x7F)
  {
    if (result >= 2)
    {
      v1 = 0;
      v2 = 1;
      v3 = 11;
      do
      {
        if (v3 > 0x173EED7F)
        {
          v5 = v3;
        }

        else
        {
          do
          {
            v4 = v2;
            v5 = 11 * v3;
            ++v2;
            if (result - 1 == v4)
            {
              break;
            }

            v6 = v3 >= 0x21CFE52;
            v3 *= 11;
          }

          while (!v6);
        }

        v3 = v5 / 0x186A0;
        if (v2 == result)
        {
          v3 = v5;
        }

        else
        {
          ++v1;
        }
      }

      while (v2 < result);
      if (~(5 * v1) + result < 2)
      {
        v15 = 10;
      }

      else
      {
        v7 = result - 5 * v1;
        v8 = (v7 + 1) & 0xFFFFFFFC;
        v9 = vdupq_n_s32(v7 - 3);
        v10 = xmmword_29975CBE0;
        v11 = 4;
        v12.i64[0] = 0xA0000000ALL;
        v12.i64[1] = 0xA0000000ALL;
        do
        {
          v13 = v10;
          v10 = vmulq_s32(v10, v12);
          v11 -= 4;
        }

        while (v8 + v11 != 4);
        v14 = vbslq_s8(vcgtq_u32(vorrq_s8(vdupq_n_s32(-v11), xmmword_29975CBD0), v9), v13, v10);
        *v14.i8 = vmul_s32(*v14.i8, *&vextq_s8(v14, v14, 8uLL));
        v15 = v14.i32[0] * v14.i32[1];
      }

      result = v3 / v15 - 10;
    }
  }

  else
  {
    result = 0;
  }

  v16 = *MEMORY[0x29EDCA608];
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t PEREncode(unsigned int *a1, unsigned __int8 *a2, uint64_t a3)
{
  v14[1] = *MEMORY[0x29EDCA608];
  result = *a1;
  if (!result)
  {
    v7 = setjmp(a1 + 1);
    *(a1 + 196) = 1;
    if (v7)
    {
      MMSRelease(a1);
    }

    else
    {
      *a1 = 0;
      v14[0] = 0;
      *(a1 + 25) = a2;
      *(a1 + 89) = 1;
      *(a1 + 130) = a2;
      *(a1 + 131) = a3;
      v8 = (*(a1 + 106))(a1, v14);
      *(a1 + 134) = v8;
      *(a1 + 135) = v8 + v14[0];
      v9 = (*(a1 + 110))(a1, a1 + 276);
      *(a1 + 136) = v9;
      *(a1 + 137) = v9;
      *(a1 + 1105) = *(a1 + 1104);
      if ((*(a1 + 1057) & 8) == 0)
      {
        *(a1 + 132) = 2080;
      }

      PEREncVal(a1, a2, a3);
      if (*(a1 + 137) == *(a1 + 136) && *(a1 + 1105) == *(a1 + 1104))
      {
        PERPutByte(a1, 0);
      }

      if ((a1[264] & 0x10) != 0)
      {
        v11 = *(a1 + 137);
        v12 = *(a1 + 1105);
      }

      else
      {
        v10 = *(a1 + 1105);
        v11 = *(a1 + 137);
        if (v10 != 7)
        {
          *v11 &= -2 << v10;
          v11 = (*(a1 + 137) + 1);
          *(a1 + 137) = v11;
          *(a1 + 1105) = 7;
        }

        v12 = 7;
      }

      (*(a1 + 111))(a1, &v11[-*(a1 + 136)], v12);
      *(a1 + 133) = *(a1 + 1104) - *(a1 + 1105) + 8 * (*(a1 + 137) - *(a1 + 136));
    }

    *(a1 + 196) = 0;
    result = *a1;
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Hal15_ReadHwRevision(int a1)
{
  v28 = *MEMORY[0x29EDCA608];
  v23[0] = 0;
  v20 = 30274;
  v21 = a1;
  v25 = 0;
  v26 = 0;
  plc00_10EncodeHdrPlCs(&v20, v24, 9, 0, 1, v23);
  v2 = v23[0];
  if (v23[0])
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Encode HeaderErr,%u\n", (*&g_MacClockTicksToMsRelation * v3), "HAL", 69, "Hal15_ReadHwRevision", 775, v2);
      LbsOsaTrace_WriteLog(0xDu, __str, v4, 0, 1);
    }

    result = 0xFFFFFFFFLL;
    goto LABEL_5;
  }

  v7 = 10;
  v27 = 10;
  if (a1 != 77)
  {
    if (a1 != 80)
    {
      goto LABEL_10;
    }

    v7 = 9;
  }

  g_HalState = v7;
LABEL_10:
  if (Hal22_ZxSendToChip(v24, 9uLL) <= 0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx rev cmd\n", (*&g_MacClockTicksToMsRelation * v11), "HAL", 69, "Hal15_ReadHwRevision", 1282);
      LbsOsaTrace_WriteLog(0xDu, __str, v12, 0, 1);
    }

    result = 4294967289;
  }

  else
  {
    v8 = gnssOsa_SemWaitTimeOut(g_HandleAckSem, 0x1388u);
    if (v8 == 2)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v13 = mach_continuous_time();
        v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RevResp\n", (*&g_MacClockTicksToMsRelation * v13), "HAL", 69, "Hal15_ReadHwRevision", 1541);
        LbsOsaTrace_WriteLog(0xDu, __str, v14, 0, 1);
      }

      result = 4294967285;
    }

    else if (v8 == 1)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v9 = mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RevResp\n", (*&g_MacClockTicksToMsRelation * v9), "HAL", 69, "Hal15_ReadHwRevision", 1543);
        LbsOsaTrace_WriteLog(0xDu, __str, v10, 0, 1);
      }

      result = 4294967287;
    }

    else if (byte_2A196D6AF == 32)
    {
      IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0);
      result = 0;
      if (IsLoggingAllowed)
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: RevResp rcvd\n", (*&g_MacClockTicksToMsRelation * v16), "HAL", 73, "Hal15_ReadHwRevision");
        LbsOsaTrace_WriteLog(0xDu, __str, v17, 4, 1);
        result = 0;
      }
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v18 = mach_continuous_time();
        v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RevResp status,%c\n", (*&g_MacClockTicksToMsRelation * v18), "HAL", 69, "Hal15_ReadHwRevision", 770, byte_2A196D6AF);
        LbsOsaTrace_WriteLog(0xDu, __str, v19, 0, 1);
      }

      result = 4294967288;
    }
  }

LABEL_5:
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Hal15_HandleRevResp(unsigned __int8 *__src, size_t __n)
{
  v30 = *MEMORY[0x29EDCA608];
  if (!__src)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
    if (!result)
    {
      goto LABEL_14;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx data\n");
    goto LABEL_13;
  }

  if (__src[2] != 66 || __src[3] != 86)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
    if (!result)
    {
      goto LABEL_14;
    }

    bzero(__str, 0x410uLL);
    v5 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v27 = __src[3];
    v28 = __src[4];
    v25 = __src[2];
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Packet MC,%c,MID,%c,MIDEx,%c\n", v5, "HAL", 69);
LABEL_13:
    result = LbsOsaTrace_WriteLog(0xDu, __str, v6, 0, 1);
    goto LABEL_14;
  }

  if (__src[8] != 32)
  {
    goto LABEL_71;
  }

  byte_2A196D6AF = 32;
  dword_2A191DCD4 = 4;
  if (__n > 0x6A)
  {
    memcpy_s("Hal15_Rev4Information", 251, &g_RawRevRespCntxt, 0x6Bu, __src, __n);
    if (__src[4] == 80)
    {
      v8 = byte_2A196D64F | ((byte_2A196D650 & 0xF) << 8);
      dword_2A191DCD0 = v8;
      g_RevisionCntxt = byte_2A196D64D & 3;
      byte_2A191DC45 = (byte_2A196D64D >> 2) & 3;
      LODWORD(xmmword_2A191DCC0) = (byte_2A196D64D >> 2) & 3;
      DWORD1(xmmword_2A191DCC0) = byte_2A196D64D & 3;
      byte_2A191DC46 = byte_2A196D64D & 0x10;
      word_2A191DC48 = byte_2A196D64F | ((byte_2A196D650 & 0xF) << 8);
      byte_2A191DC4B = byte_2A196D650 >> 7;
      byte_2A191DC4C = byte_2A196D651 & 0xF;
      byte_2A191DC4D = byte_2A196D651 >> 4;
      *byte_2A191DC4E = dword_2A196D652;
      *&byte_2A191DC4E[3] = *(&dword_2A196D652 + 3);
      byte_2A191DC55 = 0;
      *&byte_2A191DC56[3] = unk_2A196D65C;
      *byte_2A191DC56 = unk_2A196D659;
      byte_2A191DC5D = 0;
      *byte_2A191DC5E = unk_2A196D660;
      word_2A191DC66 = byte_2A196D668;
      *algn_2A191DC68 = unk_2A196D669;
      word_2A191DC70 = byte_2A196D671;
      if (v8 > 2472)
      {
        if (v8 == 2473)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
          {
            bzero(__str, 0x410uLL);
            mach_continuous_time();
            v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: VerInf CP Spring\n");
            goto LABEL_58;
          }

          goto LABEL_59;
        }

        if (v8 == 3431)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
          {
            bzero(__str, 0x410uLL);
            mach_continuous_time();
            v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: VerInf CP Bright\n");
            goto LABEL_58;
          }

LABEL_59:
          if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v15 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
            v16 = 78;
            if (byte_2A191DC4B)
            {
              v16 = 89;
            }

            v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ver,%02x.%02x,ExtProd,%u,ProdType,%u,step,%04x,Dash,%04x,FW,%s,Patch,%s,SW,%s.%s,OTP,%c\n", v15, "HAL", 73, "Hal15_StorePERev4Info", byte_2A191DC45, g_RevisionCntxt, byte_2A191DC46, word_2A191DC48, byte_2A191DC4C, byte_2A191DC4D, byte_2A191DC4E, byte_2A191DC56, byte_2A191DC5E, algn_2A191DC68, v16);
            LbsOsaTrace_WriteLog(0xDu, __str, v17, 4, 1);
          }

          LODWORD(xmmword_2A191DCC0) = byte_2A191DC45;
          DWORD1(xmmword_2A191DCC0) = g_RevisionCntxt;
          dword_2A191DCD0 = word_2A191DC48;
          unk_2A191DCD8 = *byte_2A191DC4E;
          qword_2A191DCEC = *byte_2A191DC56;
          qword_2A191DD00 = *byte_2A191DC5E;
          word_2A191DD08 = word_2A191DC66;
          qword_2A191DD14 = *algn_2A191DC68;
          word_2A191DD1C = word_2A191DC70;
          goto LABEL_71;
        }
      }

      else
      {
        if (v8 == 1107)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
          {
            bzero(__str, 0x410uLL);
            mach_continuous_time();
            v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: VerInf CP Compact\n");
            goto LABEL_58;
          }

          goto LABEL_59;
        }

        if (v8 == 2472)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
          {
            bzero(__str, 0x410uLL);
            mach_continuous_time();
            v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: VerInf CP Sunshine\n");
LABEL_58:
            LbsOsaTrace_WriteLog(0xDu, __str, v9, 4, 1);
            goto LABEL_59;
          }

          goto LABEL_59;
        }
      }

      if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
      {
        goto LABEL_71;
      }

LABEL_53:
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Incorrect Product Id\n");
      goto LABEL_8;
    }

    byte_2A191DC80 = byte_2A196D64D & 3;
    byte_2A191DC81 = (byte_2A196D64D >> 2) & 3;
    DWORD2(xmmword_2A191DCC0) = (byte_2A196D64D >> 2) & 3;
    HIDWORD(xmmword_2A191DCC0) = byte_2A196D64D & 3;
    if (word_2A191DC48 == 3431 && byte_2A191DC45 == 2)
    {
      byte_2A191DC8B = byte_2A196D64F;
      byte_2A191DC8C = byte_2A196D651;
      *byte_2A191DC8D = dword_2A196D652;
      *&byte_2A191DC8D[3] = *(&dword_2A196D652 + 3);
      byte_2A191DC94 = 0;
      *byte_2A191DC95 = unk_2A196D659;
      *&byte_2A191DC95[3] = unk_2A196D65C;
      byte_2A191DC9C = 0;
      qword_2A191DC9D = unk_2A196D660;
      word_2A191DCA5 = byte_2A196D668;
      *byte_2A191DCA7 = unk_2A196D669;
      word_2A191DCAF = byte_2A196D671;
      goto LABEL_24;
    }

    if (word_2A191DC48 == 1107 && byte_2A191DC45 == 1)
    {
      byte_2A191DC8B = byte_2A196D64F;
      byte_2A191DC8C = byte_2A196D651;
      *byte_2A191DC8D = dword_2A196D652;
      *&byte_2A191DC8D[3] = *(&dword_2A196D652 + 3);
      byte_2A191DC94 = 0;
      *byte_2A191DC95 = unk_2A196D659;
      *&byte_2A191DC95[3] = unk_2A196D65C;
      byte_2A191DC9C = 0;
      qword_2A191DC9D = unk_2A196D660;
      word_2A191DCA5 = byte_2A196D668;
      *byte_2A191DCA7 = unk_2A196D669;
      word_2A191DCAF = byte_2A196D671;
      goto LABEL_29;
    }

    byte_2A191DC82 = byte_2A196D64E & 0xF;
    byte_2A191DC83 = byte_2A196D64E >> 4;
    *byte_2A191DC8D = dword_2A196D652;
    *&byte_2A191DC8D[3] = *(&dword_2A196D652 + 3);
    byte_2A191DC94 = 0;
    *byte_2A191DC95 = unk_2A196D659;
    *&byte_2A191DC95[3] = unk_2A196D65C;
    byte_2A191DC9C = 0;
    qword_2A191DC9D = unk_2A196D660;
    word_2A191DCA5 = byte_2A196D668;
    *byte_2A191DCA7 = unk_2A196D669;
    word_2A191DCAF = byte_2A196D671;
    if (word_2A191DC48 > 0x9A8u)
    {
      if (word_2A191DC48 == 2473)
      {
        if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
        {
          goto LABEL_32;
        }

        bzero(__str, 0x410uLL);
        mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: VerInf ME Spring\n");
        goto LABEL_31;
      }

      if (word_2A191DC48 == 3431)
      {
LABEL_24:
        if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          mach_continuous_time();
          v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: VerInf ME Bright\n");
LABEL_31:
          LbsOsaTrace_WriteLog(0xDu, __str, v10, 4, 1);
          goto LABEL_32;
        }

        goto LABEL_32;
      }
    }

    else
    {
      if (word_2A191DC48 == 1107)
      {
LABEL_29:
        if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          mach_continuous_time();
          v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: VerInf ME Compact\n");
          goto LABEL_31;
        }

LABEL_32:
        if ((dword_2A191DCD0 - 2472) >= 2 && dword_2A191DCD0 != 3431 && dword_2A191DCD0 != 1107)
        {
          if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
          {
            goto LABEL_70;
          }

          bzero(__str, 0x410uLL);
          v22 = mach_continuous_time();
          v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Incorrect Product\n", (*&g_MacClockTicksToMsRelation * v22), "HAL", 69, "Hal15_StoreMERev4Info");
          v20 = 0;
          goto LABEL_69;
        }

        if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v11 = mach_continuous_time();
          v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: HWver,%02x.%02x\n", (*&g_MacClockTicksToMsRelation * v11), "HAL", 73, "Hal15_StoreMERev4Info", DWORD2(xmmword_2A191DCC0), HIDWORD(xmmword_2A191DCC0));
          LbsOsaTrace_WriteLog(0xDu, __str, v12, 4, 1);
        }

        if (dword_2A191DCD0 == 3431 && byte_2A191DC45 == 2 || dword_2A191DCD0 == 1107 && byte_2A191DC45 == 1)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v13 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MMCUver,%u,RFFlavour,%u,Dash,%u,Step,%u,Product,%u\n", v13, "HAL");
LABEL_66:
            LbsOsaTrace_WriteLog(0xDu, __str, v14, 4, 1);
          }
        }

        else if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v24 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: BBver,%04x.%04x\n", v24);
          goto LABEL_66;
        }

        if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
        {
LABEL_70:
          unk_2A191DD28 = *byte_2A191DC8D;
          *algn_2A191DD3C = *byte_2A191DC95;
          qword_2A191DD50 = qword_2A191DC9D;
          word_2A191DD58 = word_2A191DCA5;
          unk_2A191DD64 = *byte_2A191DCA7;
          word_2A191DD6C = word_2A191DCAF;
          goto LABEL_71;
        }

        bzero(__str, 0x410uLL);
        v18 = mach_continuous_time();
        v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FW,%s,Patch,%s,SW,%s.%s\n", (*&g_MacClockTicksToMsRelation * v18), "HAL", 73, "Hal15_StoreMERev4Info", byte_2A191DC8D, byte_2A191DC95, &qword_2A191DC9D, byte_2A191DCA7);
        v20 = 4;
LABEL_69:
        LbsOsaTrace_WriteLog(0xDu, __str, v19, v20, 1);
        goto LABEL_70;
      }

      if (word_2A191DC48 == 2472)
      {
        if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
        {
          goto LABEL_32;
        }

        bzero(__str, 0x410uLL);
        mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: VerInf ME Sunshine\n");
        goto LABEL_31;
      }
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      goto LABEL_71;
    }

    goto LABEL_53;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v23 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx len,%u\n", v23);
LABEL_8:
    LbsOsaTrace_WriteLog(0xDu, __str, v3, 0, 1);
  }

LABEL_71:
  result = gnssOsa_SemRelease(g_HandleAckSem);
  if ((result & 1) == 0)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v21 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v26 = *__error();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HandleAckSem err,%d\n", v21);
      goto LABEL_13;
    }
  }

LABEL_14:
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GM_Cross_Constell(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = 0;
  v5 = 0;
  v111[1] = *MEMORY[0x29EDCA608];
  v6 = a2 + 0x2000;
  v7 = (result + 4096);
  v8 = (result + 8);
  v9 = 48;
  do
  {
    if ((~*v8 & 0x208) != 0)
    {
      goto LABEL_15;
    }

    v10 = *(v8 - 8);
    if (v10 <= 2)
    {
      if (!*(v8 - 8))
      {
        goto LABEL_15;
      }

      if (v10 == 1)
      {
LABEL_14:
        v5 = 1;
        goto LABEL_15;
      }

      if (v10 == 2)
      {
        v4 = 1;
        goto LABEL_15;
      }
    }

    else if (*(v8 - 8) > 4u)
    {
      if (v10 == 5 || v10 == 6)
      {
        goto LABEL_14;
      }
    }

    else if (v10 == 3 || v10 == 4)
    {
      goto LABEL_14;
    }

    result = EvCrt_Illegal_Default("GM_Cross_Constell", 0x76u);
LABEL_15:
    v8 += 18;
    --v9;
  }

  while (v9);
  v108 = v5;
  if ((v7[2654] & 1) == 0 && v7[2636] == 1 && *(v3 + 6728) >= 1)
  {
    *v110 = 0;
    v111[0] = 0.0;
    API_Get_UTC_Cor(1, v111);
    result = GPS_To_Glon_Time(0, *(v3 + 6734), *(v3 + 6736), v111[0], &v110[1], v110, v109);
    v11 = v110[0];
    *(v3 + 6748) = v110[1];
    *(v3 + 6752) = v11;
    v7[2654] = 1;
  }

  v12 = *(v3 + 6744);
  if (((v12 == 0) & v4) == 1)
  {
    v13 = 10799999;
    v111[0] = 0.0;
    v14 = (v3 + 1732);
    v15 = (v3 + 8);
    v16 = 48;
    while (*(v15 - 8) != 2 || (~*v15 & 0x208) != 0)
    {
      v14 += 14;
      v15 += 18;
      if (!--v16)
      {
        goto LABEL_29;
      }
    }

    v13 = 1500 * *(v14 - 1) + 10799999 + *v14 / 1023 + 1;
LABEL_29:
    result = API_Get_UTC_Cor(1, v111);
    v17 = -0.5;
    if (v111[0] > 0.0)
    {
      v17 = 0.5;
    }

    v18 = v111[0] + v17;
    if (v111[0] + v17 <= 2147483650.0)
    {
      if (v18 >= -2147483650.0)
      {
        v19 = -1000 * v18;
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 1000;
    }

    *(v3 + 6760) = ((v19 + v13) % 86400000) * 0.001;
    v12 = 3;
    *(v3 + 6744) = 3;
    v5 = v108;
  }

  if (v4)
  {
    if (v7[324])
    {
      v20 = 0;
      goto LABEL_45;
    }

    v21 = (v3 + 8);
    v22 = 48;
    do
    {
      if (*(v21 - 8) == 2)
      {
        *v21 &= ~0x200u;
      }

      v21 += 18;
      --v22;
    }

    while (v22);
  }

  v20 = 1;
LABEL_45:
  v23 = *(v3 + 6728);
  if (v23 && (v7[2636] & 1) != 0)
  {
    goto LABEL_62;
  }

  if (v7[2654] == 1 && v12 >= 1 && *(v3 + 6748))
  {
    *v110 = 0;
    v111[0] = 0.0;
    *v109 = 0;
    API_Get_UTC_Cor(1, v109);
    result = Glon_To_GPS_Time(*(v3 + 6748), *(v3 + 6752), *(v3 + 6760), *v109, &v110[1], v110, v111);
    v23 = *(v3 + 6728);
    if (v23 <= 2)
    {
      v24 = *(v3 + 6744);
      if (v23 < v24)
      {
        *(v3 + 6736) = v111[0];
        if (v24 >= 3)
        {
          v23 = 3;
        }

        else
        {
          v23 = v24;
        }

        *(v3 + 6728) = v23;
      }
    }

    v25 = LOWORD(v110[0]) + (LOWORD(v110[1]) << 10);
    if (v7[2636])
    {
      if (v25 != *(v3 + 6734))
      {
        result = EvLog_v("GM_Cross_Constell: WeekNo Changing from %d to %d !!", *(v3 + 6734), v25);
        *(v3 + 6734) = v25;
        v23 = *(v3 + 6728);
      }
    }

    else
    {
      *(v3 + 6734) = v25;
      v7[2636] = 1;
    }

    v5 = v108;
  }

  if (v23)
  {
LABEL_62:
    v26 = *(v3 + 6736) * 0.666666667;
    v27 = -0.5;
    if (v26 > 0.0)
    {
      v27 = 0.5;
    }

    v28 = v26 + v27;
    if (v28 <= 2147483650.0)
    {
      if (v28 >= -2147483650.0)
      {
        v29 = v28;
      }

      else
      {
        v29 = 0x80000000;
      }
    }

    else
    {
      v29 = 0x7FFFFFFF;
    }

    v33 = (v3 + 1728);
    v34 = (v3 + 8);
    v35 = 48;
    result = 4294909696;
    do
    {
      if (*(v34 - 8) == 2 && (~*v34 & 0x208) == 0)
      {
        v36 = *v33;
        v37 = v29 - *v33;
        if (v37 >= 28800)
        {
          v38 = 28800;
        }

        else
        {
          v38 = v29 - *v33;
        }

        v39 = 57600 * ((v29 + 57599 - (v36 + v38)) / 0xE100u);
        v40 = v37 - v39;
        if (v40 <= -28800)
        {
          v40 = -28800;
        }

        v42 = v36 - v29 + v39 + v40;
        v41 = v42 == 0;
        v43 = v39 + v36;
        v44 = (v42 - (v42 != 0)) / 0xE100;
        if (!v41)
        {
          ++v44;
        }

        *v33 = v43 - 57600 * v44;
      }

      v33 += 14;
      v34 += 18;
      --v35;
    }

    while (v35);
    v32 = 0;
  }

  else
  {
    v30 = (v3 + 8);
    v31 = 48;
    do
    {
      if (*(v30 - 8) == 2)
      {
        *v30 &= ~0x200u;
      }

      v30 += 18;
      --v31;
    }

    while (v31);
    v32 = 1;
  }

  v45 = 0;
  v46 = v20 | v32;
  if ((*(v2 + 8444) - 4) >= 3 && ((v5 ^ 1) & 1) == 0 && ((v20 | v32) & 1) == 0)
  {
    v103 = v20 | v32;
    v104 = v7;
    v105 = v3;
    v106 = v2;
    v107 = v6;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    LODWORD(v111[0]) = -1000;
    v109[0] = -1000;
    v50 = (v3 + 1732);
    v51 = v3;
    do
    {
      if (!*v51 || (~*(v51 + 8) & 0x208) != 0)
      {
        v53 = v49;
      }

      else
      {
        v52 = v48 + 1;
        if (*v51 == 2)
        {
          v53 = v49;
        }

        else
        {
          v53 = (v49 + 1);
        }

        if (*v51 == 2)
        {
          ++v48;
          v54 = v109;
        }

        else
        {
          v54 = v111;
        }

        if (*v51 == 2)
        {
          v55 = v52;
        }

        else
        {
          v55 = v49 + 1;
        }

        v56 = *v50 / 1023 + 1500 * *(v50 - 1);
        v57 = *v54;
        if (*v54 < 1)
        {
          goto LABEL_109;
        }

        v58 = v57 - v56;
        if (v57 - v56 < 0)
        {
          v58 = v56 - v57;
        }

        if (v58 < 0x1F5 || (EvLog_v("GLO_TIM: Bad ToT %d %d", *v54, v56), v55 < 2))
        {
LABEL_109:
          *v54 = v56;
        }

        else
        {
          EvLog_v("GLO_TIM: Ignoring ToT from Ch %d SV %d Frq %d", v47, *(v51 + 2), *(v51 + 3));
        }
      }

      ++v47;
      v51 += 36;
      v50 += 14;
      v49 = v53;
    }

    while (v47 != 48);
    if (SLODWORD(v111[0]) % 86400000 > v109[0] % 86400000)
    {
      v59 = 500;
    }

    else
    {
      v59 = -500;
    }

    v60 = v59 + SLODWORD(v111[0]) % 86400000 - v109[0] % 86400000;
    v61 = v60 / 1000;
    if (v60 / 1000 <= -43200)
    {
      v62 = -43200;
    }

    else
    {
      v62 = v60 / 1000;
    }

    if (v60 >= -43200999)
    {
      v63 = 0;
    }

    else
    {
      v63 = -1;
    }

    v64 = v60 < -43200999;
    v65 = (v63 - v61 + v62) / 0x15180u;
    if (v64)
    {
      ++v65;
    }

    v66 = 86400 * v65 + v61;
    if (v66 >= 43199)
    {
      v67 = 43199;
    }

    else
    {
      v67 = v66;
    }

    v68 = (v66 + 86399 - v67) % 0x15180u - (86399 - v67);
    if (v68 >= 0)
    {
      v69 = (v66 + 86399 - v67) % 0x15180u - (86399 - v67);
    }

    else
    {
      v69 = 86399 - v67 - (v66 + 86399 - v67) % 0x15180u;
    }

    if (v69 >= 0x20)
    {
      EvCrt_v("GM_Get_GPS_GLON_Int_Sec_Offset:  ERROR:  Offset  %d (%d - %d) way too big !", v68, SLODWORD(v111[0]) % 86400000, v109[0] % 86400000);
      if (v68 >= 127)
      {
        v70 = 127;
      }

      else
      {
        v70 = v68;
      }

      if (v70 <= -127)
      {
        LOBYTE(v68) = -127;
      }

      else
      {
        LOBYTE(v68) = v70;
      }
    }

    v71 = v68;
    if ((v68 & 0x80u) == 0)
    {
      v72 = v68;
    }

    else
    {
      v72 = -v68;
    }

    v2 = v106;
    v6 = v107;
    v7 = v104;
    v3 = v105;
    v46 = v103;
    if (v72 >= 0x21)
    {
      v73 = "GLO_TIM: Rejecting Bad (GPS-UTC) integer second offset %d ";
      goto LABEL_143;
    }

    if (v68)
    {
      v74 = *(v107 + 266) + v68;
      *(v107 + 266) = v74;
      *(v107 + 269) = v74;
      *(v106 + 8444) = 2;
      result = EvLog_d("GLO_TIM: Updating (GPS-UTC) dtLS ", v74);
      v45 = 1;
    }

    else
    {
      *(v106 + 8444) = 2;
      v71 = *(v107 + 266);
      v73 = "GLO_TIM: Verifying (GPS-UTC) dtLS ";
LABEL_143:
      result = EvLog_d(v73, v71);
      v45 = 0;
    }

    v5 = v108;
  }

  v75 = *(v3 + 6744);
  v76 = *(v3 + 6728);
  if (v75 > v76 && ((v7[2654] | v5) & 1) != 0)
  {
    v109[0] = 0;
    v110[1] = 0;
    v111[0] = 0.0;
    API_Get_UTC_Cor(1, v111);
    Glon_To_GPS_Time(*(v3 + 6748), *(v3 + 6752), *(v3 + 6760), v111[0], v109, &v110[1], (v3 + 6736));
    if (v7[2654])
    {
      v78 = LOWORD(v110[1]) + (LOWORD(v109[0]) << 10);
      if (v7[2636])
      {
        if (v78 != *(v3 + 6734))
        {
          EvLog_v("GM_Cross_Constell: WeekNo Changing from %d to %d !!", *(v3 + 6734), v78);
          *(v3 + 6734) = v78;
        }
      }

      else
      {
        *(v3 + 6734) = v78;
        v7[2636] = 1;
      }
    }

    else
    {
      v79 = (v3 + 1732);
      v80 = (v3 + 8);
      v81 = 48;
      while ((*(v80 - 8) | 2) == 2 || (~*v80 & 0x208) != 0)
      {
        v79 += 14;
        v80 += 18;
        if (!--v81)
        {
          v82 = 0.0;
          goto LABEL_158;
        }
      }

      v82 = (*v79 / 1023 + 1500 * *(v79 - 1)) * 0.001;
LABEL_158:
      v83 = *(v3 + 6736);
      if (v83 - v82 >= 43200.0)
      {
        do
        {
          v83 = v83 + -86400.0;
        }

        while (v83 - v82 >= 43200.0);
        *(v3 + 6736) = v83;
      }

      if (v82 - v83 >= 43200.0)
      {
        do
        {
          v83 = v83 + 86400.0;
        }

        while (v82 - v83 >= 43200.0);
        *(v3 + 6736) = v83;
      }

      EvLog_nd("GLO_TIM: Setting day number ", 2, v77, v83, *&v82);
    }

    v84 = *(v3 + 6744);
    *(v3 + 6728) = v84;
    if (v84 < 5)
    {
      v85 = v84;
    }

    else
    {
      v85 = v84;
      if ((((*(v2 + 8444) - 2) < 5) & v108) == 0)
      {
        v85 = 4;
        *(v3 + 6728) = 4;
      }
    }

    result = EvLog_nd("GLO_TIM: Glo->GPS Time transfer", 2, v77, v84, v85);
    v76 = *(v3 + 6728);
    v75 = *(v3 + 6744);
  }

  if (v76 > v75)
  {
    v109[0] = 0;
    v110[1] = 0;
    v111[0] = 0.0;
    API_Get_UTC_Cor(1, v111);
    result = GPS_To_Glon_Time(0, *(v3 + 6734), *(v3 + 6736), v111[0], v109, &v110[1], (v3 + 6760));
    v87 = *(v3 + 6728);
    *(v3 + 6744) = v87;
    if (v87 < 5)
    {
      goto LABEL_176;
    }

    v88 = v46 ^ 1;
    if ((*(v2 + 8444) - 7) <= 0xFFFFFFFA)
    {
      v88 = 0;
    }

    if (v88)
    {
LABEL_176:
      result = EvLog_nd("GLO_TIM: GPS->Glo Time transfer", 2, v86, v87, v87);
    }

    else
    {
      *(v3 + 6744) = 4;
    }

    if (v7[2636] == 1)
    {
      v89 = *(v3 + 6734);
      if (v89 >= 1025)
      {
        v90 = v110[1];
        if (v7[2654] != 1 || v110[1] != *(v3 + 6752))
        {
          v91 = v109[0];
          *(v3 + 6748) = v109[0];
          *(v3 + 6752) = v90;
          v7[2654] = 1;
          result = EvLog_nd("GLO_TIM: GPS->Glo Date transfer", 2, v86, v89, v91, v90);
        }
      }
    }
  }

  if (v45)
  {
    v92 = (v2 + 8440);
    v93 = *(p_api + 48);
    if (*(v93 + 5) == 1 && *v93 >= 3)
    {
      v94 = *(v93 + 24) + 604800 * *(v93 + 16);
    }

    else
    {
      v94 = 0;
    }

    v95 = 0;
    LODWORD(v96) = 0;
    *v92 = v94;
    v97 = p_NV;
    v98 = p_NV + 160;
    v99 = *(v2 + 8456);
    *(p_NV + 160) = *v92;
    *(v97 + 176) = v99;
    v100 = 55665;
    do
    {
      v101 = *(v98 + v95) ^ BYTE1(v100);
      v100 = 52845 * (v100 + v101) + 22719;
      v96 = (v96 + v101);
      ++v95;
    }

    while (v95 != 24);
    *(v97 + 152) = v96;
    result = EvLog_v("GM_Cross_Constell: Saving Estimated (GPS-UTC) LeapSec %d to NV_Store", *(v6 + 266));
  }

  v102 = *MEMORY[0x29EDCA608];
  return result;
}

void *gnssTest::Device::Device(void *result)
{
  v2 = *MEMORY[0x29EDCA608];
  *result = &unk_2A1F88980;
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN8gnssTest19GnssAdaptDeviceTestC2ENSt3__110unique_ptrIN7GnssHal4GpioENS1_14default_deleteIS4_EEEENS2_INS3_4CommENS5_IS8_EEEENS2_INS3_6LoggerENS5_ISB_EEEENS2_INS3_9NvStorageENS5_ISE_EEEENS2_INS3_10ExtensionsENS5_ISH_EEEENS1_8functionIFvN4gnss6ResultEEEE_block_invoke(uint64_t result)
{
  v2 = *MEMORY[0x29EDCA608];
  gp_GnssAdaptDeviceTestInstance = *(result + 32);
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

void *___ZN8gnssTest19GnssAdaptDeviceTestC2ENSt3__110unique_ptrIN7GnssHal4GpioENS1_14default_deleteIS4_EEEENS2_INS3_4CommENS5_IS8_EEEENS2_INS3_6LoggerENS5_ISB_EEEENS2_INS3_9NvStorageENS5_ISE_EEEENS2_INS3_10ExtensionsENS5_ISH_EEEENS1_8functionIFvN4gnss6ResultEEEE_block_invoke_2(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = *MEMORY[0x29EDCA608];
  v3 = (*(a1 + 32) + 152);

  return std::function<void ()(gnss::Result)>::operator=(v3, a1 + 40);
}

void ___ZN8gnssTest19GnssAdaptDeviceTestC2ENSt3__110unique_ptrIN7GnssHal4GpioENS1_14default_deleteIS4_EEEENS2_INS3_4CommENS5_IS8_EEEENS2_INS3_6LoggerENS5_ISB_EEEENS2_INS3_9NvStorageENS5_ISE_EEEENS2_INS3_10ExtensionsENS5_ISH_EEEENS1_8functionIFvN4gnss6ResultEEEE_block_invoke_3(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  if (!v2)
  {
    gnssOsa_FlushLog();
    __assert_rtn("getLogger", "gaGnssAdaptDeviceTest.h", 131, "false && Logger null");
  }

  gp_Logger = *(v1 + 24);
  v3 = (*(*v2 + 56))(v2);
  gnssOsaSetConfigLogLevel(v3, 0);
  *__str = 0;
  gnssTest::GnssAdaptDeviceTest::Ga21_01GetPlatformType(v1, __str);
  v4 = *(v1 + 8);
  if ((*__str - 4) <= 0xFFFFFFFC && v4 == 0)
  {
    gnssOsa_FlushLog();
    __assert_rtn("GnssAdaptDeviceTest_block_invoke", "ga21GnssDeviceTest.cpp", 89, "false && GNSS Test Invalid GPIO pointer");
  }

  if (!*(v1 + 16))
  {
    gnssOsa_FlushLog();
    __assert_rtn("getComm", "gaGnssAdaptDeviceTest.h", 130, "false && Comm null");
  }

  gp_Comm = *(v1 + 16);
  gp_Gpio = v4;
  g_GpioNotifCB = gnssTest::GnssAdaptDeviceTest::Ga22_23FactoryGpioNotif;
  if (!*(v1 + 32))
  {
    gnssOsa_FlushLog();
    __assert_rtn("getNvStore", "gaGnssAdaptDeviceTest.h", 132, "false && NvStorage null");
  }

  gp_NvStorage = *(v1 + 32);
  v15 = 0;
  gnssTest::GnssAdaptDeviceTest::Ga21_01GetPlatformType(v1, &v15);
  if (GNS_ProductionInitialize(v15, gnssTest::GnssAdaptDeviceTest::Ga24_02GetHalConnStatus, gnssTest::GnssAdaptDeviceTest::Ga24_04ReceiveProdData))
  {
    if (gnssOsa_SemInit((v1 + 80), 0))
    {
      goto LABEL_18;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "Ga21_02GnssInit", 1539);
      LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 69, "Ga21_02GnssInit", 1293);
    LbsOsaTrace_WriteLog(0x18u, __str, v9, 0, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx InitError\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 69, "GnssAdaptDeviceTest_block_invoke", 257);
    LbsOsaTrace_WriteLog(0x18u, __str, v11, 0, 1);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "GnssAdaptDeviceTest_block_invoke");
  gnssTest::GnssAdaptDeviceTest::Ga22_09ReportInitStatus(v1, __p, 8);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_18:
  v12 = *MEMORY[0x29EDCA608];
}

void sub_29961C9B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gnssTest::GnssAdaptDeviceTest::Ga21_01GetPlatformType(gnssTest::GnssAdaptDeviceTest *a1, unsigned __int8 *a2)
{
  v15 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Null Pltfm\n");
LABEL_9:
      LbsOsaTrace_WriteLog(0x18u, __str, v9, 0, 1);
    }

LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  HalExtensions = gnssTest::GnssAdaptDeviceTest::getHalExtensions(a1);
  v5 = (*(*HalExtensions + 160))(HalExtensions);
  if (v5 >= 5)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v11 = gnssTest::GnssAdaptDeviceTest::getHalExtensions(a1);
      (*(*v11 + 160))(v11);
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Invalid Pltfm,%u\n", v10);
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  *a2 = v5;
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Platform Type,%u\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 73, "Ga21_01GetPlatformType", *a2);
    v8 = 1;
    LbsOsaTrace_WriteLog(0x18u, __str, v7, 4, 1);
  }

  else
  {
    v8 = 1;
  }

LABEL_11:
  v12 = *MEMORY[0x29EDCA608];
  return v8;
}

void gnssTest::GnssAdaptDeviceTest::~GnssAdaptDeviceTest(gnssTest::GnssAdaptDeviceTest *this)
{
  v17 = *MEMORY[0x29EDCA608];
  *this = &unk_2A1F88A00;
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 1, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Destructor\n", (*&g_MacClockTicksToMsRelation * v2), "ADP", 65, "~GnssAdaptDeviceTest");
    LbsOsaTrace_WriteLog(0x18u, __str, v3, 1, 1);
  }

  v4 = *(this + 6);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN8gnssTest19GnssAdaptDeviceTestD2Ev_block_invoke;
  block[3] = &__block_descriptor_tmp_9_1;
  block[4] = this;
  dispatch_sync(v4, block);
  dispatch_sync(g_GnssFactoryGlobalStaticQueue, &__block_literal_global_4);
  if (g_GnssFactoryGlobalStaticQueue)
  {
    dispatch_release(g_GnssFactoryGlobalStaticQueue);
    g_GnssFactoryGlobalStaticQueue = 0;
  }

  v5 = *(this + 6);
  if (v5)
  {
    dispatch_release(v5);
    *(this + 6) = 0;
  }

  v6 = *(this + 9);
  if (v6)
  {
    dispatch_release(v6);
    *(this + 9) = 0;
  }

  v7 = *(this + 7);
  if (v7)
  {
    dispatch_release(v7);
    *(this + 7) = 0;
  }

  v8 = *(this + 8);
  if (v8)
  {
    dispatch_release(v8);
    *(this + 8) = 0;
  }

  std::__function::__value_func<void ()(std::string const&,std::string const&)>::~__value_func[abi:ne200100](this + 216);
  std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::~__value_func[abi:ne200100](this + 184);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](this + 152);
  if (*(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  v9 = *(this + 5);
  *(this + 5) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 4);
  *(this + 4) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(this + 3);
  *(this + 3) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(this + 2);
  *(this + 2) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(this + 1);
  *(this + 1) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *MEMORY[0x29EDCA608];
}

{
  v2 = *MEMORY[0x29EDCA608];
  v1 = *MEMORY[0x29EDCA608];

  gnssTest::GnssAdaptDeviceTest::~GnssAdaptDeviceTest(this);
}

{
  v2 = *MEMORY[0x29EDCA608];
  gnssTest::GnssAdaptDeviceTest::~GnssAdaptDeviceTest(this);
  v1 = *MEMORY[0x29EDCA608];

  JUMPOUT(0x29C29EB20);
}

void sub_29961CF04(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void ___ZN8gnssTest19GnssAdaptDeviceTestD2Ev_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  if (!gnssOsa_DeinitCountingSem((v1 + 80)) && LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HdlSem\n", (*&g_MacClockTicksToMsRelation * v2), "ADP", 69, "Ga21_03GnssDeInit", 1540);
    LbsOsaTrace_WriteLog(0x18u, __str, v3, 0, 1);
  }

  if (GNS_ProductionDeInitialize())
  {
    v4 = *(v1 + 72);
    *__str = MEMORY[0x29EDCA5F8];
    v9 = 0x40000000;
    v10 = ___ZN8gnssTest19GnssAdaptDeviceTest30Ga21_08UpdateGnssTestDevStatusEb_block_invoke;
    v11 = &__block_descriptor_tmp_62;
    v12 = v1;
    v13 = 0;
    dispatch_sync(v4, __str);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "Ga21_03GnssDeInit", 1296);
    LbsOsaTrace_WriteLog(0x18u, __str, v6, 0, 1);
  }

  v7 = *MEMORY[0x29EDCA608];
}

void ___ZN8gnssTest19GnssAdaptDeviceTestD2Ev_block_invoke_2()
{
  v1 = *MEMORY[0x29EDCA608];
  gp_GnssAdaptDeviceTestInstance = 0;
  v0 = *MEMORY[0x29EDCA608];
}

void gnssTest::GnssAdaptDeviceTest::periodic(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x29EDCA608];
  if (*(a4 + 24))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "periodic");
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v11, a4);
    gnssTest::GnssAdaptDeviceTest::Ga22_11TestStatusResponse(a1, __p, 7, v11);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v11);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "periodic", 513);
    LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
  }

  v8 = *MEMORY[0x29EDCA608];
}

void sub_29961D340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](&a21);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void gnssTest::GnssAdaptDeviceTest::recordIQ(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = *MEMORY[0x29EDCA608];
  if (*(a5 + 24))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "recordIQ");
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v12, a5);
    gnssTest::GnssAdaptDeviceTest::Ga22_11TestStatusResponse(a1, __p, 7, v12);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v12);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "recordIQ", 513);
    LbsOsaTrace_WriteLog(0x18u, __str, v8, 0, 1);
  }

  v9 = *MEMORY[0x29EDCA608];
}

void sub_29961D4B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](&a21);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void gnssTest::GnssAdaptDeviceTest::commLoopback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = *MEMORY[0x29EDCA608];
  if (*(a5 + 24))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "commLoopback");
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v12, a5);
    gnssTest::GnssAdaptDeviceTest::Ga22_11TestStatusResponse(a1, __p, 7, v12);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v12);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "commLoopback", 513);
    LbsOsaTrace_WriteLog(0x18u, __str, v8, 0, 1);
  }

  v9 = *MEMORY[0x29EDCA608];
}

void sub_29961D628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](&a21);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t gnssTest::GnssAdaptDeviceTest::cw(uint64_t a1, int a2, char a3, int a4, int a5, uint64_t a6, uint64_t a7, double a8)
{
  v24 = *MEMORY[0x29EDCA608];
  if (!*(a7 + 24))
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (!result)
    {
      goto LABEL_8;
    }

LABEL_7:
    bzero(__str, 0x410uLL);
    v16 = mach_continuous_time();
    v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 69, "cw", 513);
    result = LbsOsaTrace_WriteLog(0x18u, __str, v17, 0, 1);
    goto LABEL_8;
  }

  if (!*(a6 + 24))
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (!result)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v14 = *(a1 + 48);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZN8gnssTest19GnssAdaptDeviceTest2cwEiN4gnss4BandENS_7SubbandEdiNSt3__18functionIFvNS4_6vectorINS_13RfMeasurementENS4_9allocatorIS7_EEEEEEENS5_IFvNS1_6ResultEEEE_block_invoke;
  block[3] = &__block_descriptor_tmp_20;
  block[4] = a1;
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v20, a7);
  v22 = a3;
  v21[8] = a2;
  v21[9] = a4;
  *&v20[4] = a8;
  v21[10] = a5;
  std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::__value_func[abi:ne200100](v21, a6);
  dispatch_async(v14, block);
  std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::~__value_func[abi:ne200100](v21);
  result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v20);
LABEL_8:
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN8gnssTest19GnssAdaptDeviceTest2cwEiN4gnss4BandENS_7SubbandEdiNSt3__18functionIFvNS4_6vectorINS_13RfMeasurementENS4_9allocatorIS7_EEEEEEENS5_IFvNS1_6ResultEEEE_block_invoke(uint64_t a1)
{
  v58 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "cw_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  v5 = gnssTest::GnssAdaptDeviceTest::Ga21_07CheckDeviceStatus(v2, 0);
  if (v5 == 1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: DurSecs,%d,Band,%hhu,Subb,%d,SrchRangeHz,%f,IntgTimeMs,%d\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 68, "cw_block_invoke", *(a1 + 112), *(a1 + 124), *(a1 + 116), *(a1 + 72), *(a1 + 120));
      LbsOsaTrace_WriteLog(0x18u, __str, v7, 5, 1);
    }

    v8 = *(a1 + 124);
    if (v8 > 4)
    {
      if (v8 != 5 && v8 != 8)
      {
LABEL_41:
        std::string::basic_string[abi:ne200100]<0>(v45, "cw_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v55, a1 + 40);
        gnssTest::GnssAdaptDeviceTest::Ga22_11TestStatusResponse(v2, v45, 4, v55);
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v55);
        if (v46 < 0)
        {
          operator delete(v45[0]);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v28 = mach_continuous_time();
          v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CW Invalid Band\n", (*&g_MacClockTicksToMsRelation * v28), "ADP", 69, "cw_block_invoke", 514);
          LbsOsaTrace_WriteLog(0x18u, __str, v29, 0, 1);
        }

        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
        if (result)
        {
          bzero(__str, 0x410uLL);
          v30 = mach_continuous_time();
          v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v30), "ADP", 68, "cw_block_invoke");
          result = LbsOsaTrace_WriteLog(0x18u, __str, v31, 5, 1);
        }

        goto LABEL_55;
      }
    }

    else if (v8 != 1)
    {
      if (v8 == 4)
      {
        if ((*(a1 + 116) - 7) <= 0xFFFFFFF1)
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "cw_block_invoke");
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v54, a1 + 40);
          gnssTest::GnssAdaptDeviceTest::Ga22_11TestStatusResponse(v2, __p, 4, v54);
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v54);
          if (v44 < 0)
          {
            operator delete(__p[0]);
          }

          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v9 = mach_continuous_time();
            v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CW Invalid Glonass FCN\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 69, "cw_block_invoke", 514);
            LbsOsaTrace_WriteLog(0x18u, __str, v10, 0, 1);
          }

          result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
          if (result)
          {
            bzero(__str, 0x410uLL);
            v12 = mach_continuous_time();
            v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 68, "cw_block_invoke");
            result = LbsOsaTrace_WriteLog(0x18u, __str, v13, 5, 1);
          }

          goto LABEL_55;
        }

        goto LABEL_22;
      }

      goto LABEL_41;
    }

LABEL_22:
    v16 = *(a1 + 112);
    if (v16 < 0 || 1000 * v16 < *(a1 + 120) || (v21 = *(a1 + 72), v21 < 1000.0) || v21 > 20000.0)
    {
      std::string::basic_string[abi:ne200100]<0>(v41, "cw_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v53, a1 + 40);
      gnssTest::GnssAdaptDeviceTest::Ga22_11TestStatusResponse(v2, v41, 4, v53);
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v53);
      if (v42 < 0)
      {
        operator delete(v41[0]);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v17 = mach_continuous_time();
        v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CW Test\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 69, "cw_block_invoke", 514);
        LbsOsaTrace_WriteLog(0x18u, __str, v18, 0, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v19 = mach_continuous_time();
        v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 68, "cw_block_invoke");
        result = LbsOsaTrace_WriteLog(0x18u, __str, v20, 5, 1);
      }
    }

    else
    {
      v22 = gnssTest::ZxFactoryHandler::Ga23_33CalcIntegrationTime(v21, v2 + 140, v8);
      if (v22 && ((v23 = *(a1 + 120), v23 == -1) || v23 >= v22))
      {
        if (v23 == -1)
        {
          v32 = v22;
        }

        else
        {
          v32 = *(a1 + 120);
        }

        v33 = *(v2 + 9);
        block[0] = MEMORY[0x29EDCA5F8];
        block[1] = 1174405120;
        block[2] = ___ZN8gnssTest19GnssAdaptDeviceTest2cwEiN4gnss4BandENS_7SubbandEdiNSt3__18functionIFvNS4_6vectorINS_13RfMeasurementENS4_9allocatorIS7_EEEEEEENS5_IFvNS1_6ResultEEEE_block_invoke_2;
        block[3] = &__block_descriptor_tmp_19_0;
        block[4] = v2;
        std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::__value_func[abi:ne200100](v51, a1 + 80);
        dispatch_sync(v33, block);
        LODWORD(v33) = gnssTest::GnssAdaptDeviceTest::Ga22_14TriggerCwModulated(v2, *(a1 + 112), *(a1 + 124), *(a1 + 116), 0, v32, *(a1 + 72));
        std::string::basic_string[abi:ne200100]<0>(v37, "cw_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v49, a1 + 40);
        gnssTest::GnssAdaptDeviceTest::Ga22_11TestStatusResponse(v2, v37, v33, v49);
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v49);
        if (v38 < 0)
        {
          operator delete(v37[0]);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v34 = mach_continuous_time();
          v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v34), "ADP", 68, "cw_block_invoke");
          LbsOsaTrace_WriteLog(0x18u, __str, v35, 5, 1);
        }

        result = std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::~__value_func[abi:ne200100](v51);
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(v39, "cw_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v52, a1 + 40);
        gnssTest::GnssAdaptDeviceTest::Ga22_11TestStatusResponse(v2, v39, 4, v52);
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v52);
        if (v40 < 0)
        {
          operator delete(v39[0]);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v24 = mach_continuous_time();
          v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CW Integ Time\n", (*&g_MacClockTicksToMsRelation * v24), "ADP", 69, "cw_block_invoke", 515);
          LbsOsaTrace_WriteLog(0x18u, __str, v25, 0, 1);
        }

        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
        if (result)
        {
          bzero(__str, 0x410uLL);
          v26 = mach_continuous_time();
          v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v26), "ADP", 68, "cw_block_invoke");
          result = LbsOsaTrace_WriteLog(0x18u, __str, v27, 5, 1);
        }
      }
    }

    goto LABEL_55;
  }

  std::string::basic_string[abi:ne200100]<0>(v47, "cw_block_invoke");
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v56, a1 + 40);
  gnssTest::GnssAdaptDeviceTest::Ga22_11TestStatusResponse(v2, v47, v5, v56);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v56);
  if (v48 < 0)
  {
    operator delete(v47[0]);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 68, "cw_block_invoke");
    result = LbsOsaTrace_WriteLog(0x18u, __str, v15, 5, 1);
  }

LABEL_55:
  v36 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t gnssTest::GnssAdaptDeviceTest::Ga21_07CheckDeviceStatus(gnssTest::GnssAdaptDeviceTest *a1, int a2)
{
  v22 = *MEMORY[0x29EDCA608];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v4 = *(a1 + 9);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN8gnssTest19GnssAdaptDeviceTest24Ga21_07CheckDeviceStatusE17e_Ga_CharTestType_block_invoke;
  block[3] = &unk_29EF5E6F8;
  block[5] = &v13;
  block[6] = a1;
  block[4] = &v17;
  dispatch_sync(v4, block);
  if (v18[3])
  {
    if (a2 == 2)
    {
      v5 = 1;
    }

    else if (*(v14 + 6))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Incorrect Power Mode\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 69, "Ga21_07CheckDeviceStatus", 1302);
        LbsOsaTrace_WriteLog(0x18u, __str, v9, 0, 1);
      }

      v5 = 0;
    }

    else
    {
      v5 = gnssTest::GnssAdaptDeviceTest::Ga22_08InjectLtlTable(a1);
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HW Not Ready\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "Ga21_07CheckDeviceStatus", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
    }

    v5 = 7;
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  v10 = *MEMORY[0x29EDCA608];
  return v5;
}

void sub_29961E5C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

void *___ZN8gnssTest19GnssAdaptDeviceTest2cwEiN4gnss4BandENS_7SubbandEdiNSt3__18functionIFvNS4_6vectorINS_13RfMeasurementENS4_9allocatorIS7_EEEEEEENS5_IFvNS1_6ResultEEEE_block_invoke_2(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  result = std::function<void ()(std::vector<gnssTest::RfMeasurement>)>::operator=((v1 + 184), a1 + 40);
  *(v1 + 136) = 0;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void *std::function<void ()(std::vector<gnssTest::RfMeasurement>)>::operator=(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::__value_func[abi:ne200100](v5, a2);
  std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::swap[abi:ne200100](v5, a1);
  std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::~__value_func[abi:ne200100](v5);
  v3 = *MEMORY[0x29EDCA608];
  return a1;
}

uint64_t __copy_helper_block_e8_40c84_ZTSNSt3__18functionIFvNS_6vectorIN8gnssTest13RfMeasurementENS_9allocatorIS3_EEEEEEE(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *MEMORY[0x29EDCA608];
  v3 = a1 + 40;
  v4 = a2 + 40;

  return std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::__value_func[abi:ne200100](v3, v4);
}

uint64_t __destroy_helper_block_e8_40c84_ZTSNSt3__18functionIFvNS_6vectorIN8gnssTest13RfMeasurementENS_9allocatorIS3_EEEEEEE(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *MEMORY[0x29EDCA608];
  v2 = a1 + 40;

  return std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::~__value_func[abi:ne200100](v2);
}

uint64_t __copy_helper_block_e8_40c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE80c84_ZTSNSt3__18functionIFvNS_6vectorIN8gnssTest13RfMeasurementENS_9allocatorIS3_EEEEEEE(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](a1 + 40, a2 + 40);
  result = std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::__value_func[abi:ne200100](a1 + 80, a2 + 80);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __destroy_helper_block_e8_40c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE80c84_ZTSNSt3__18functionIFvNS_6vectorIN8gnssTest13RfMeasurementENS_9allocatorIS3_EEEEEEE(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::~__value_func[abi:ne200100](a1 + 80);
  v2 = *MEMORY[0x29EDCA608];

  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 40);
}

uint64_t gnssTest::GnssAdaptDeviceTest::modulated(uint64_t a1, int a2, char a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v22 = *MEMORY[0x29EDCA608];
  if (!*(a7 + 24))
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (!result)
    {
      goto LABEL_8;
    }

LABEL_7:
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 69, "modulated", 513);
    result = LbsOsaTrace_WriteLog(0x18u, __str, v15, 0, 1);
    goto LABEL_8;
  }

  if (!*(a6 + 24))
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (!result)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v12 = *(a1 + 48);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZN8gnssTest19GnssAdaptDeviceTest9modulatedEiN4gnss4BandENS_7SubbandEiNSt3__18functionIFvNS4_6vectorINS_13RfMeasurementENS4_9allocatorIS7_EEEEEEENS5_IFvNS1_6ResultEEEE_block_invoke;
  block[3] = &__block_descriptor_tmp_26_2;
  block[4] = a1;
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v18, a7);
  v20 = a3;
  v19[8] = a2;
  v19[9] = a4;
  v19[10] = a5;
  std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::__value_func[abi:ne200100](v19, a6);
  dispatch_async(v12, block);
  std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::~__value_func[abi:ne200100](v19);
  result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v18);
LABEL_8:
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN8gnssTest19GnssAdaptDeviceTest9modulatedEiN4gnss4BandENS_7SubbandEiNSt3__18functionIFvNS4_6vectorINS_13RfMeasurementENS4_9allocatorIS7_EEEEEEENS5_IFvNS1_6ResultEEEE_block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "modulated_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  v5 = gnssTest::GnssAdaptDeviceTest::Ga21_07CheckDeviceStatus(v2, 1);
  if (v5 == 1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: DurSecs,%d,Band,%hhu,SubBand,%d,IntegTimeMS,%d\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 68, "modulated_block_invoke", *(a1 + 104), *(a1 + 116), *(a1 + 108), *(a1 + 112));
      LbsOsaTrace_WriteLog(0x18u, __str, v7, 5, 1);
    }

    v8 = *(a1 + 104);
    if (v8 < 0 || 1000 * v8 < *(a1 + 112) || !gnssTest::GnssAdaptDeviceTest::Ga22_05ValidateBands(v2, *(a1 + 116), *(a1 + 108)))
    {
      std::string::basic_string[abi:ne200100]<0>(v29, "modulated_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v37, a1 + 40);
      gnssTest::GnssAdaptDeviceTest::Ga22_11TestStatusResponse(v2, v29, 4, v37);
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v37);
      if (v30 < 0)
      {
        operator delete(v29[0]);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v18 = mach_continuous_time();
        v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 68, "modulated_block_invoke");
        result = LbsOsaTrace_WriteLog(0x18u, __str, v19, 5, 1);
      }
    }

    else
    {
      v9 = gnssTest::ZxFactoryHandler::Ga23_33CalcIntegrationTime(10000.0, v2 + 140, *(a1 + 116));
      if (v9 && ((v10 = *(a1 + 112), v10 == -1) || v10 >= v9))
      {
        if (v10 == -1)
        {
          v21 = v9;
        }

        else
        {
          v21 = *(a1 + 112);
        }

        v22 = *(v2 + 9);
        block[0] = MEMORY[0x29EDCA5F8];
        block[1] = 1174405120;
        block[2] = ___ZN8gnssTest19GnssAdaptDeviceTest9modulatedEiN4gnss4BandENS_7SubbandEiNSt3__18functionIFvNS4_6vectorINS_13RfMeasurementENS4_9allocatorIS7_EEEEEEENS5_IFvNS1_6ResultEEEE_block_invoke_2;
        block[3] = &__block_descriptor_tmp_25_1;
        block[4] = v2;
        std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::__value_func[abi:ne200100](v35, a1 + 72);
        dispatch_sync(v22, block);
        LODWORD(v22) = gnssTest::GnssAdaptDeviceTest::Ga22_14TriggerCwModulated(v2, *(a1 + 104), *(a1 + 116), *(a1 + 108), 1, v21, 10000.0);
        std::string::basic_string[abi:ne200100]<0>(v25, "modulated_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v33, a1 + 40);
        gnssTest::GnssAdaptDeviceTest::Ga22_11TestStatusResponse(v2, v25, v22, v33);
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v33);
        if (v26 < 0)
        {
          operator delete(v25[0]);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v23 = mach_continuous_time();
          v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v23), "ADP", 68, "modulated_block_invoke");
          LbsOsaTrace_WriteLog(0x18u, __str, v24, 5, 1);
        }

        result = std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::~__value_func[abi:ne200100](v35);
      }

      else
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v11 = mach_continuous_time();
          v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Mod Integ Time\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 69, "modulated_block_invoke", 515);
          LbsOsaTrace_WriteLog(0x18u, __str, v12, 0, 1);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, "modulated_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v36, a1 + 40);
        gnssTest::GnssAdaptDeviceTest::Ga22_11TestStatusResponse(v2, __p, 4, v36);
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v36);
        if (v28 < 0)
        {
          operator delete(__p[0]);
        }

        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
        if (result)
        {
          bzero(__str, 0x410uLL);
          v14 = mach_continuous_time();
          v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 68, "modulated_block_invoke");
          result = LbsOsaTrace_WriteLog(0x18u, __str, v15, 5, 1);
        }
      }
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v31, "modulated_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v38, a1 + 40);
    gnssTest::GnssAdaptDeviceTest::Ga22_11TestStatusResponse(v2, v31, v5, v38);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v38);
    if (v32 < 0)
    {
      operator delete(v31[0]);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 68, "modulated_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v17, 5, 1);
    }
  }

  v20 = *MEMORY[0x29EDCA608];
  return result;
}

void *___ZN8gnssTest19GnssAdaptDeviceTest9modulatedEiN4gnss4BandENS_7SubbandEiNSt3__18functionIFvNS4_6vectorINS_13RfMeasurementENS4_9allocatorIS7_EEEEEEENS5_IFvNS1_6ResultEEEE_block_invoke_2(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  result = std::function<void ()(std::vector<gnssTest::RfMeasurement>)>::operator=((v1 + 184), a1 + 40);
  *(v1 + 136) = 1;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __copy_helper_block_e8_40c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE72c84_ZTSNSt3__18functionIFvNS_6vectorIN8gnssTest13RfMeasurementENS_9allocatorIS3_EEEEEEE(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](a1 + 40, a2 + 40);
  result = std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::__value_func[abi:ne200100](a1 + 72, a2 + 72);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __destroy_helper_block_e8_40c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE72c84_ZTSNSt3__18functionIFvNS_6vectorIN8gnssTest13RfMeasurementENS_9allocatorIS3_EEEEEEE(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::~__value_func[abi:ne200100](a1 + 72);
  v2 = *MEMORY[0x29EDCA608];

  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 40);
}

uint64_t gnssTest::GnssAdaptDeviceTest::powerMode(uint64_t a1, int a2, uint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v4 = *(a1 + 48);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN8gnssTest19GnssAdaptDeviceTest9powerModeENS_9PowerModeENSt3__18functionIFvN4gnss6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_32;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v10, a3);
    v10[8] = a2;
    dispatch_async(v4, block);
    result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v10);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "powerMode", 513);
      result = LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

void ___ZN8gnssTest19GnssAdaptDeviceTest9powerModeENS_9PowerModeENSt3__18functionIFvN4gnss6ResultEEEE_block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "powerMode_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  v5 = gnssTest::GnssAdaptDeviceTest::Ga21_07CheckDeviceStatus(v2, 2);
  if (v5 == 1)
  {
    v6 = gnssTest::GnssAdaptDeviceTest::Ga22_18ValidatePowerMode(v2, *(a1 + 72));
    if (v6 == 1)
    {
      v27 = 0;
      v28 = &v27;
      v29 = 0x2000000000;
      v30 = 0;
      v7 = *(v2 + 9);
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 0x40000000;
      block[2] = ___ZN8gnssTest19GnssAdaptDeviceTest9powerModeENS_9PowerModeENSt3__18functionIFvN4gnss6ResultEEEE_block_invoke_2;
      block[3] = &unk_29EF5E6A8;
      block[4] = &v27;
      block[5] = v2;
      dispatch_sync(v7, block);
      if (*(v28 + 6) == *(a1 + 72))
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "powerMode_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v36, a1 + 40);
        gnssTest::GnssAdaptDeviceTest::Ga22_11TestStatusResponse(v2, __p, 0, v36);
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v36);
        if (v25 < 0)
        {
          operator delete(__p[0]);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v8 = mach_continuous_time();
          v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PwrStateReq,%u,v_CurPowState,%u\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 69, "powerMode_block_invoke", 1302, *(a1 + 72), *(v28 + 6));
          LbsOsaTrace_WriteLog(0x18u, __str, v9, 0, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v10 = mach_continuous_time();
          v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 68, "powerMode_block_invoke");
          LbsOsaTrace_WriteLog(0x18u, __str, v11, 5, 1);
        }
      }

      else
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v16 = mach_continuous_time();
          v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PwrMode,%u\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 73, "powerMode_block_invoke", *(a1 + 72));
          LbsOsaTrace_WriteLog(0x18u, __str, v17, 4, 1);
        }

        v18 = gnssTest::GnssAdaptDeviceTest::Ga22_19TriggerPowerMode(v2, *(a1 + 72));
        std::string::basic_string[abi:ne200100]<0>(v22, "powerMode_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v35, a1 + 40);
        gnssTest::GnssAdaptDeviceTest::Ga22_11TestStatusResponse(v2, v22, v18, v35);
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v35);
        if (v23 < 0)
        {
          operator delete(v22[0]);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v19 = mach_continuous_time();
          v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 68, "powerMode_block_invoke");
          LbsOsaTrace_WriteLog(0x18u, __str, v20, 5, 1);
        }
      }

      _Block_object_dispose(&v27, 8);
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v31, "powerMode_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v37, a1 + 40);
      gnssTest::GnssAdaptDeviceTest::Ga22_11TestStatusResponse(v2, v31, v6, v37);
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v37);
      if (v32 < 0)
      {
        operator delete(v31[0]);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 68, "powerMode_block_invoke");
        LbsOsaTrace_WriteLog(0x18u, __str, v15, 5, 1);
      }
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v33, "powerMode_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v38, a1 + 40);
    gnssTest::GnssAdaptDeviceTest::Ga22_11TestStatusResponse(v2, v33, v5, v38);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v38);
    if (v34 < 0)
    {
      operator delete(v33[0]);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 68, "powerMode_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v13, 5, 1);
    }
  }

  v21 = *MEMORY[0x29EDCA608];
}

uint64_t ___ZN8gnssTest19GnssAdaptDeviceTest9powerModeENS_9PowerModeENSt3__18functionIFvN4gnss6ResultEEEE_block_invoke_2(uint64_t result)
{
  v2 = *MEMORY[0x29EDCA608];
  *(*(*(result + 32) + 8) + 24) = *(*(result + 40) + 128);
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

void gnssTest::GnssAdaptDeviceTest::apSignalGpio(gnssTest::GnssAdaptDeviceTest *a1, int a2, uint64_t a3)
{
  v16 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    if (gnssTest::GnssAdaptDeviceTest::Ga22_07IsFeatureSupported(a1, 3))
    {
      v6 = *(a1 + 6);
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 1174405120;
      block[2] = ___ZN8gnssTest19GnssAdaptDeviceTest12apSignalGpioEiNSt3__18functionIFvN4gnss6ResultEEEE_block_invoke;
      block[3] = &__block_descriptor_tmp_37;
      block[4] = a1;
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v13, a3);
      v13[8] = a2;
      dispatch_async(v6, block);
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v13);
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "apSignalGpio");
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v14, a3);
      gnssTest::GnssAdaptDeviceTest::Ga22_11TestStatusResponse(a1, __p, 7, v14);
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v14);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "apSignalGpio", 513);
    LbsOsaTrace_WriteLog(0x18u, __str, v8, 0, 1);
  }

  v9 = *MEMORY[0x29EDCA608];
}

void sub_29961FD8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](&a31);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZN8gnssTest19GnssAdaptDeviceTest12apSignalGpioEiNSt3__18functionIFvN4gnss6ResultEEEE_block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "apSignalGpio_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  v5 = gnssTest::GnssAdaptDeviceTest::Ga21_07CheckDeviceStatus(v2, 3);
  if (v5 == 1)
  {
    if ((*(a1 + 72) - 2001) > 0xFFFFF8F6)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v13 = mach_continuous_time();
        v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TimeoutMs,%d\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 68, "apSignalGpio_block_invoke", *(a1 + 72));
        LbsOsaTrace_WriteLog(0x18u, __str, v14, 5, 1);
      }

      v15 = gnssTest::GnssAdaptDeviceTest::Ga22_21TriggerApSignalGpio(v2, *(a1 + 72));
      std::string::basic_string[abi:ne200100]<0>(v19, "apSignalGpio_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v25, a1 + 40);
      gnssTest::GnssAdaptDeviceTest::Ga22_11TestStatusResponse(v2, v19, v15, v25);
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v25);
      if (v20 < 0)
      {
        operator delete(v19[0]);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 68, "apSignalGpio_block_invoke");
        result = LbsOsaTrace_WriteLog(0x18u, __str, v17, 5, 1);
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "apSignalGpio_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v26, a1 + 40);
      gnssTest::GnssAdaptDeviceTest::Ga22_11TestStatusResponse(v2, __p, 4, v26);
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v26);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v6 = mach_continuous_time();
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx TimeoutMs,%d\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "apSignalGpio_block_invoke", 514, *(a1 + 72));
        LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v9 = mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 68, "apSignalGpio_block_invoke");
        result = LbsOsaTrace_WriteLog(0x18u, __str, v10, 5, 1);
      }
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v23, "apSignalGpio_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v27, a1 + 40);
    gnssTest::GnssAdaptDeviceTest::Ga22_11TestStatusResponse(v2, v23, v5, v27);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v27);
    if (v24 < 0)
    {
      operator delete(v23[0]);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 68, "apSignalGpio_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v12, 5, 1);
    }
  }

  v18 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299620258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  if (a13 < 0)
  {
    operator delete(a8);
  }

  _Unwind_Resume(a1);
}

uint64_t gnssTest::GnssAdaptDeviceTest::timeMarkGpio(gnssTest::GnssAdaptDeviceTest *a1, int a2, uint64_t a3)
{
  v14 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    *__str = 4;
    gnssTest::GnssAdaptDeviceTest::Ga21_01GetPlatformType(a1, __str);
    v6 = *(a1 + 6);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN8gnssTest19GnssAdaptDeviceTest12timeMarkGpioEiNSt3__18functionIFvN4gnss6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_40_0;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v12, a3);
    v12[8] = a2;
    dispatch_async(v6, block);
    result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v12);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 69, "timeMarkGpio", 513);
      result = LbsOsaTrace_WriteLog(0x18u, __str, v9, 0, 1);
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN8gnssTest19GnssAdaptDeviceTest12timeMarkGpioEiNSt3__18functionIFvN4gnss6ResultEEEE_block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "timeMarkGpio_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  v5 = gnssTest::GnssAdaptDeviceTest::Ga21_07CheckDeviceStatus(v2, 4);
  if (v5 == 1)
  {
    if ((*(a1 + 72) - 2001) > 0xFFFFF82F)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v13 = mach_continuous_time();
        v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TimeoutMs,%d\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 68, "timeMarkGpio_block_invoke", *(a1 + 72));
        LbsOsaTrace_WriteLog(0x18u, __str, v14, 5, 1);
      }

      v15 = gnssTest::GnssAdaptDeviceTest::Ga22_25TriggerTimeMark(v2, *(a1 + 72));
      std::string::basic_string[abi:ne200100]<0>(v19, "timeMarkGpio_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v25, a1 + 40);
      gnssTest::GnssAdaptDeviceTest::Ga22_11TestStatusResponse(v2, v19, v15, v25);
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v25);
      if (v20 < 0)
      {
        operator delete(v19[0]);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 68, "timeMarkGpio_block_invoke");
        result = LbsOsaTrace_WriteLog(0x18u, __str, v17, 5, 1);
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "timeMarkGpio_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v26, a1 + 40);
      gnssTest::GnssAdaptDeviceTest::Ga22_11TestStatusResponse(v2, __p, 4, v26);
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v26);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v6 = mach_continuous_time();
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx TimeoutMs,%d\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "timeMarkGpio_block_invoke", 514, *(a1 + 72));
        LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v9 = mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 68, "timeMarkGpio_block_invoke");
        result = LbsOsaTrace_WriteLog(0x18u, __str, v10, 5, 1);
      }
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v23, "timeMarkGpio_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v27, a1 + 40);
    gnssTest::GnssAdaptDeviceTest::Ga22_11TestStatusResponse(v2, v23, v5, v27);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v27);
    if (v24 < 0)
    {
      operator delete(v23[0]);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 68, "timeMarkGpio_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v12, 5, 1);
    }
  }

  v18 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2996208F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  if (a13 < 0)
  {
    operator delete(a8);
  }

  _Unwind_Resume(a1);
}

uint64_t gnssTest::GnssAdaptDeviceTest::commPing(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x29EDCA608];
  if (!*(a4 + 24))
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (!result)
    {
      goto LABEL_8;
    }

LABEL_7:
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 69, "commPing", 513);
    result = LbsOsaTrace_WriteLog(0x18u, __str, v9, 0, 1);
    goto LABEL_8;
  }

  if (!*(a3 + 24))
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (!result)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v6 = *(a1 + 48);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZN8gnssTest19GnssAdaptDeviceTest8commPingEiNSt3__18functionIFvRKNS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEESA_EEENS2_IFvN4gnss6ResultEEEE_block_invoke;
  block[3] = &__block_descriptor_tmp_42;
  block[4] = a1;
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v12, a4);
  std::__function::__value_func<void ()(std::string const&,std::string const&)>::__value_func[abi:ne200100](v13, a3);
  v13[8] = a2;
  dispatch_async(v6, block);
  std::__function::__value_func<void ()(std::string const&,std::string const&)>::~__value_func[abi:ne200100](v13);
  result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v12);
LABEL_8:
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN8gnssTest19GnssAdaptDeviceTest8commPingEiNSt3__18functionIFvRKNS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEESA_EEENS2_IFvN4gnss6ResultEEEE_block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "commPing_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  v5 = gnssTest::GnssAdaptDeviceTest::Ga21_07CheckDeviceStatus(v2, 5);
  if (v5 == 1)
  {
    if (*(a1 + 96) && (*(a1 + 104) - 2001) > 0xFFFFF9BE)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v13 = mach_continuous_time();
        v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TimeoutMs,%d\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 68, "commPing_block_invoke", *(a1 + 104));
        LbsOsaTrace_WriteLog(0x18u, __str, v14, 5, 1);
      }

      v15 = *(v2 + 9);
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 1174405120;
      block[2] = ___ZN8gnssTest19GnssAdaptDeviceTest8commPingEiNSt3__18functionIFvRKNS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEESA_EEENS2_IFvN4gnss6ResultEEEE_block_invoke_2;
      block[3] = &__block_descriptor_tmp_41_0;
      block[4] = v2;
      std::__function::__value_func<void ()(std::string const&,std::string const&)>::__value_func[abi:ne200100](v28, a1 + 72);
      dispatch_sync(v15, block);
      v16 = gnssTest::GnssAdaptDeviceTest::Ga22_16TriggerCommPing(v2, *(a1 + 104));
      std::string::basic_string[abi:ne200100]<0>(v20, "commPing_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v26, a1 + 40);
      gnssTest::GnssAdaptDeviceTest::Ga22_11TestStatusResponse(v2, v20, v16, v26);
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v26);
      if (v21 < 0)
      {
        operator delete(v20[0]);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v17 = mach_continuous_time();
        v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 68, "commPing_block_invoke");
        LbsOsaTrace_WriteLog(0x18u, __str, v18, 5, 1);
      }

      result = std::__function::__value_func<void ()(std::string const&,std::string const&)>::~__value_func[abi:ne200100](v28);
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "commPing_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v29, a1 + 40);
      gnssTest::GnssAdaptDeviceTest::Ga22_11TestStatusResponse(v2, __p, 4, v29);
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v29);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v6 = mach_continuous_time();
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx TimeoutMs,%d\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "commPing_block_invoke", 514, *(a1 + 104));
        LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v9 = mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 68, "commPing_block_invoke");
        result = LbsOsaTrace_WriteLog(0x18u, __str, v10, 5, 1);
      }
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v24, "commPing_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v30, a1 + 40);
    gnssTest::GnssAdaptDeviceTest::Ga22_11TestStatusResponse(v2, v24, v5, v30);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v30);
    if (v25 < 0)
    {
      operator delete(v24[0]);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 68, "commPing_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v12, 5, 1);
    }
  }

  v19 = *MEMORY[0x29EDCA608];
  return result;
}

void *___ZN8gnssTest19GnssAdaptDeviceTest8commPingEiNSt3__18functionIFvRKNS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEESA_EEENS2_IFvN4gnss6ResultEEEE_block_invoke_2(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = *MEMORY[0x29EDCA608];
  v3 = (*(a1 + 32) + 216);

  return std::function<void ()(std::string const&,std::string const&)>::operator=(v3, a1 + 40);
}

void *std::function<void ()(std::string const&,std::string const&)>::operator=(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(std::string const&,std::string const&)>::__value_func[abi:ne200100](v5, a2);
  std::__function::__value_func<void ()(std::string const&,std::string const&)>::swap[abi:ne200100](v5, a1);
  std::__function::__value_func<void ()(std::string const&,std::string const&)>::~__value_func[abi:ne200100](v5);
  v3 = *MEMORY[0x29EDCA608];
  return a1;
}

uint64_t __copy_helper_block_e8_40c89_ZTSNSt3__18functionIFvRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEE(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *MEMORY[0x29EDCA608];
  v3 = a1 + 40;
  v4 = a2 + 40;

  return std::__function::__value_func<void ()(std::string const&,std::string const&)>::__value_func[abi:ne200100](v3, v4);
}

uint64_t __destroy_helper_block_e8_40c89_ZTSNSt3__18functionIFvRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEE(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *MEMORY[0x29EDCA608];
  v2 = a1 + 40;

  return std::__function::__value_func<void ()(std::string const&,std::string const&)>::~__value_func[abi:ne200100](v2);
}

uint64_t __copy_helper_block_e8_40c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE72c89_ZTSNSt3__18functionIFvRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEE(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](a1 + 40, a2 + 40);
  result = std::__function::__value_func<void ()(std::string const&,std::string const&)>::__value_func[abi:ne200100](a1 + 72, a2 + 72);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __destroy_helper_block_e8_40c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE72c89_ZTSNSt3__18functionIFvRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEE(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(std::string const&,std::string const&)>::~__value_func[abi:ne200100](a1 + 72);
  v2 = *MEMORY[0x29EDCA608];

  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 40);
}

void gnssTest::GnssAdaptDeviceTest::setNmeaHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x29EDCA608];
  if (*(a4 + 24))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "setNmeaHandler");
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v11, a4);
    gnssTest::GnssAdaptDeviceTest::Ga22_11TestStatusResponse(a1, __p, 7, v11);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v11);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "setNmeaHandler", 513);
    LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
  }

  v8 = *MEMORY[0x29EDCA608];
}

void sub_29962151C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](&a21);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void gnssTest::GnssAdaptDeviceTest::setConfigTestContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "setConfigTestContext");
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v10, a3);
    gnssTest::GnssAdaptDeviceTest::Ga22_11TestStatusResponse(a1, __p, 7, v10);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v10);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "setConfigTestContext", 513);
    LbsOsaTrace_WriteLog(0x18u, __str, v6, 0, 1);
  }

  v7 = *MEMORY[0x29EDCA608];
}

void sub_299621690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](&a21);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *gnssTest::GnssAdaptDeviceTest::getHalExtensions(gnssTest::GnssAdaptDeviceTest *this)
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = *(this + 5);
  {
    gnssOsa_FlushLog();
    __assert_rtn("getHalExtensions", "gaGnssAdaptDeviceTest.h", 136, "false && Failed to dynamic cast HalExtensions");
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t gnssTest::GnssAdaptDeviceTest::Ga21_06GetGnssAdaptDeviceTestInstance(gnssTest::GnssAdaptDeviceTest *this)
{
  v13 = *MEMORY[0x29EDCA608];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN8gnssTest19GnssAdaptDeviceTest37Ga21_06GetGnssAdaptDeviceTestInstanceEv_block_invoke;
  block[3] = &unk_29EF5E6D0;
  block[4] = &v7;
  dispatch_sync(g_GnssFactoryGlobalStaticQueue, block);
  v1 = v8[3];
  if (!v1)
  {
    snprintf(__str, 0x400uLL, "ASSERT,%s,%d,%s", "Ga21_06GetGnssAdaptDeviceTestInstance", 651, "Factory Device not found");
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(v11, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(v11, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v4), "OSA", 69, "Ga21_06GetGnssAdaptDeviceTestInstance", __str);
      LbsOsaTrace_WriteLog(0xEu, v11, v5, 0, 1);
    }

    if (gp_Logger)
    {
      (*(*gp_Logger + 48))(gp_Logger);
    }

    __assert_rtn("Ga21_06GetGnssAdaptDeviceTestInstance", "ga21GnssDeviceTest.cpp", 651, "false && Factory Device not found");
  }

  _Block_object_dispose(&v7, 8);
  v2 = *MEMORY[0x29EDCA608];
  return v1;
}

void sub_299621960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN8gnssTest19GnssAdaptDeviceTest37Ga21_06GetGnssAdaptDeviceTestInstanceEv_block_invoke(uint64_t result)
{
  v2 = *MEMORY[0x29EDCA608];
  *(*(*(result + 32) + 8) + 24) = gp_GnssAdaptDeviceTestInstance;
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

void *___ZN8gnssTest19GnssAdaptDeviceTest24Ga21_07CheckDeviceStatusE17e_Ga_CharTestType_block_invoke(void *result)
{
  v3 = *MEMORY[0x29EDCA608];
  v1 = result[6];
  *(*(result[4] + 8) + 24) = *(v1 + 116);
  *(*(result[5] + 8) + 24) = *(v1 + 128);
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN8gnssTest19GnssAdaptDeviceTest30Ga21_08UpdateGnssTestDevStatusEb_block_invoke(uint64_t result)
{
  v2 = *MEMORY[0x29EDCA608];
  *(*(result + 32) + 116) = *(result + 40);
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t newGnssDeviceTest(void *a1)
{
  v3 = *MEMORY[0x29EDCA608];
  if (*a1)
  {
    operator new();
  }

  v1 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_299621DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::__function::__value_func<void ()(std::string const&,std::string const&)>::~__value_func[abi:ne200100](v15 + 216);
  std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::~__value_func[abi:ne200100](v15 + 184);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v15 + 152);
  if (*(v15 + 111) < 0)
  {
    operator delete(*(v15 + 88));
  }

  v18 = *(v15 + 40);
  *(v15 + 40) = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = *(v15 + 32);
  *(v15 + 32) = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v20 = *(v15 + 24);
  *(v15 + 24) = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v21 = *(v15 + 16);
  *(v15 + 16) = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  v22 = *(v15 + 8);
  *(v15 + 8) = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  MEMORY[0x29C29EB20](v15, v16);
  _Unwind_Resume(a1);
}

uint64_t gnssTest::Device::getObjectVersionNumber(gnssTest::Device *this)
{
  v1 = *MEMORY[0x29EDCA608];
  *MEMORY[0x29EDCA608];
  return 2507;
}

uint64_t std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  v3 = *MEMORY[0x29EDCA608];
  return a1;
}

uint64_t std::__function::__value_func<void ()(std::string const&,std::string const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  v3 = *MEMORY[0x29EDCA608];
  return a1;
}

void *std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x29EDCA608];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29962240C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  v4 = *MEMORY[0x29EDCA608];
  return a1;
}

void *std::__function::__value_func<void ()(std::string const&,std::string const&)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x29EDCA608];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29962273C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(std::string const&,std::string const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  v4 = *MEMORY[0x29EDCA608];
  return a1;
}

uint64_t GenericAssignSort(_BYTE **a1, const void **a2, uint64_t a3, uint64_t a4)
{
  v42 = *MEMORY[0x29EDCA608];
  for (i = a4; ; i = *(i + 24))
  {
    v8 = *(i + 16);
    if (v8)
    {
      v9 = *v8;
      if (*v8)
      {
        break;
      }
    }

    if ((*i & 0xFFFFFFFE) != 0xAA)
    {
      if ((*(i + 4) & 4) == 0)
      {
        if (a1 != a2)
        {
          if (*i == 128)
          {
            v10 = *(a4 + 8);
          }

          else
          {
            v10 = *(i + 8);
          }

          memcpy_s("posp_memcpy", 29, a1, v10, a2, v10);
        }

LABEL_47:
        v18 = *MEMORY[0x29EDCA608];
        return a1;
      }

      if (a1 != a2 && (a3 & 0x10) != 0)
      {
        GenericFreeSort(a1, i);
      }

      if ((a3 & 0x10) != 0 && a1 == a2)
      {
LABEL_18:
        if ((*i - 136) <= 0x2D)
        {
          if (((1 << (*i + 120)) & 0x1E1) != 0)
          {
            if (*a1)
            {
              if ((a3 & 8) != 0)
              {
                v15 = 86;
              }

              else
              {
                v15 = 84;
              }

              **a1 = v15;
            }
          }

          else if (((1 << (*i + 120)) & 0x280000000400) != 0)
          {
            *(a1 + 20) = a3 & 8;
          }

          else if (((1 << (*i + 120)) & 0x14) != 0)
          {
            *(a1 + 4) = a3 & 8;
          }
        }

        goto LABEL_47;
      }

      v13 = *i;
      if (*i <= 172)
      {
        if (v13 <= 140)
        {
          if (v13 == 136)
          {
            goto LABEL_25;
          }

          if (v13 == 138 || v13 == 140)
          {
            v19 = *a2;
            if (v19 && ((a3 & 1) != 0 || (a3 & 2) != 0 && *(a2 + 4)))
            {
              v20 = gnssOsa_Calloc("posp_alloc", 18, 1, v19);
              a1[1] = v20;
              memcpy_s("posp_memcpy", 29, v20, *a2, a2[1], *a2);
            }

            else
            {
              a1[1] = a2[1];
            }

            *a1 = *a2;
            goto LABEL_18;
          }

          goto LABEL_101;
        }

        if ((v13 - 141) < 4)
        {
LABEL_25:
          v14 = *a2;
          if (*a2 && ((a3 & 1) != 0 || (a3 & 2) != 0 && *v14 != 84))
          {
            v31 = strnlen(v14, 0x400uLL);
            v32 = (v31 + 1);
            v33 = gnssOsa_Calloc("posp_alloc", 18, 1, v32);
            *a1 = v33;
            strncpy_s(v33, v32, *a2, v31);
          }

          else
          {
            *a1 = v14;
          }

          goto LABEL_18;
        }

        if (v13 != 146)
        {
          if (v13 == 172 && *(i + 24))
          {
            v23 = a1;
            v24 = a2;
            v25 = a3;
            goto LABEL_93;
          }

          goto LABEL_101;
        }

        goto LABEL_66;
      }

      if (v13 <= 178)
      {
        if (v13 == 173)
        {
          if ((a3 & 0x20) == 0)
          {
            memcpy_s("posp_memcpy", 29, a1, *(i + 8), a2, *(i + 8));
          }

          v34 = *(i + 32);
          if (v34 >= 1)
          {
            v35 = 0;
            for (j = 0; j < v34; ++j)
            {
              v37 = *(i + 24);
              if ((*(*(v37 + v35) + 4) & 4) != 0)
              {
                GenericAssignSort(a1 + *(v37 + v35 + 8), a2 + *(v37 + v35 + 8), a3 & 0xF | 0x20);
                v34 = *(i + 32);
              }

              v35 += 24;
            }
          }

          goto LABEL_18;
        }

        if (v13 != 174 && v13 != 176)
        {
          goto LABEL_101;
        }

        memset_s(a1, *(i + 8), 0, *(i + 8));
        v16 = *(i + 40);
        if (v16 > 3)
        {
          if (v16 == 8)
          {
            v17 = *a2;
            *a1 = *a2;
            goto LABEL_92;
          }
        }

        else
        {
          if (v16 == 1)
          {
            LODWORD(v17) = *a2;
            *a1 = v17;
            goto LABEL_92;
          }

          if (v16 == 2)
          {
            LODWORD(v17) = *a2;
            *a1 = *a2;
LABEL_92:
            v38 = *(i + 36);
            v39 = *(*(i + 24) + 8 * v17);
            v23 = a1 + v38;
            v24 = (a2 + v38);
            v25 = a3 & 0xF;
            goto LABEL_93;
          }
        }

        LODWORD(v17) = *a2;
        *a1 = *a2;
        goto LABEL_92;
      }

      if ((v13 - 179) >= 3)
      {
        if ((v13 - 183) < 2)
        {
          if (*(i + 32))
          {
            v21 = 0;
            do
            {
              v22 = *(*(i + 24) + 8) * v21;
              GenericAssignSort(a1 + v22, a2 + v22, a3 & 0xF);
              ++v21;
            }

            while (v21 < *(i + 32));
          }

          goto LABEL_18;
        }

        if (v13 == 186)
        {
          v40 = *a2;
          if ((a3 & 1) == 0 || !v40)
          {
            *a1 = v40;
            *a2 = 0;
            goto LABEL_18;
          }

          v23 = gnssOsa_Calloc("posp_alloc", 18, 1, *(*(i + 24) + 8));
          *a1 = v23;
          v24 = *a2;
          v41 = *(i + 24);
          v25 = 9;
LABEL_93:
          GenericAssignSort(v23, v24, v25);
          goto LABEL_18;
        }

LABEL_101:
        memcpy_s("posp_memcpy", 29, a1, *(i + 8), a2, *(i + 8));
        goto LABEL_18;
      }

LABEL_66:
      if (*(a2 + 4) && ((a3 & 1) != 0 || (a3 & 2) != 0 && *(a2 + 20)))
      {
        v26 = *a2;
        v27 = gnssOsa_Calloc("posp_alloc", 18, 1, *(i + 32));
        *a1 = v27;
        if (v27)
        {
          for (k = v27; ; k = v30)
          {
            v29 = *(i + 24);
            GenericAssignSort(&k[*(i + 36)], v26 + *(i + 36), a3 & 7 | 8);
            if (*i == 180)
            {
              *(k + 2) = v26[2];
            }

            v26 = *v26;
            if (!v26)
            {
              break;
            }

            v30 = gnssOsa_Calloc("posp_alloc", 18, 1, *(i + 32));
            *k = v30;
          }

          *k = 0;
LABEL_95:
          a1[1] = k;
        }

        *(a1 + 4) = *(a2 + 4);
        goto LABEL_18;
      }

      k = a2[1];
      *a1 = *a2;
      goto LABEL_95;
    }
  }

  v11 = *MEMORY[0x29EDCA608];

  return v9();
}

void GenericFreeSort(unsigned __int8 *a1, uint64_t a2)
{
  v21 = *MEMORY[0x29EDCA608];
  while (1)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      v5 = *(v4 + 16);
      if (v5)
      {
        v16 = *MEMORY[0x29EDCA608];

        v5();
        return;
      }
    }

    v6 = *a2;
    if ((*a2 - 170) >= 2)
    {
      break;
    }

    a2 = *(a2 + 24);
  }

  if (v6 <= 172)
  {
    if (v6 <= 140)
    {
      if (v6 != 136)
      {
        if (v6 == 138 || v6 == 140)
        {
          v11 = *(a1 + 1);
          if (v11)
          {
            free(v11);
            *(a1 + 1) = 0;
          }
        }

        goto LABEL_48;
      }
    }

    else if ((v6 - 141) >= 4)
    {
      if (v6 != 146)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    }

    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_48;
    }

    goto LABEL_18;
  }

  if (v6 > 178)
  {
    if ((v6 - 179) >= 3)
    {
      if ((v6 - 183) < 2)
      {
        if ((*(*(a2 + 24) + 4) & 1) != 0 && *(a2 + 32))
        {
          v10 = 0;
          do
          {
            GenericFreeSort(&a1[*(*(a2 + 24) + 8) * v10++]);
          }

          while (v10 < *(a2 + 32));
        }

        goto LABEL_48;
      }

      if (v6 != 186)
      {
        goto LABEL_48;
      }

      v9 = *a1;
      if (!*a1)
      {
        goto LABEL_48;
      }

      if (*(*(a2 + 24) + 4))
      {
        GenericFreeSort(v9);
        v9 = *a1;
        if (!*a1)
        {
LABEL_19:
          *a1 = 0;
          goto LABEL_48;
        }
      }

LABEL_18:
      free(v9);
      goto LABEL_19;
    }

LABEL_47:
    while (1)
    {
      v17 = *a1;
      if (!*a1)
      {
        break;
      }

      if (*(*(a2 + 24) + 4))
      {
        GenericFreeSort(v17 + *(a2 + 36));
      }

      *a1 = *v17;
      free(v17);
    }

    goto LABEL_48;
  }

  if (v6 == 173)
  {
    v12 = *(a2 + 32);
    if (v12 >= 1)
    {
      v13 = 0;
      for (i = 0; i < v12; ++i)
      {
        v15 = *(a2 + 24);
        if (*(*(v15 + v13) + 4))
        {
          GenericFreeSort(&a1[*(v15 + v13 + 8)]);
          v12 = *(a2 + 32);
        }

        v13 += 24;
      }
    }

    goto LABEL_48;
  }

  if (v6 != 174 && v6 != 176)
  {
LABEL_48:
    v18 = *MEMORY[0x29EDCA608];
    return;
  }

  v7 = *(a2 + 40);
  if (v7 > 3)
  {
    goto LABEL_38;
  }

  if (v7 == 1)
  {
    v8 = *a1;
    goto LABEL_50;
  }

  if (v7 == 2)
  {
    v8 = *a1;
  }

  else
  {
LABEL_38:
    v8 = *a1;
  }

LABEL_50:
  if (v8 < *(a2 + 32) && (*(*(*(a2 + 24) + 8 * v8) + 4) & 1) != 0)
  {
    GenericFreeSort(&a1[*(a2 + 36)]);
  }

  v19 = *(a2 + 8);
  v20 = *MEMORY[0x29EDCA608];

  memset_s(a1, v19, 0, v19);
}

uint64_t GenericIsAssigned(unsigned __int8 *a1, uint64_t a2)
{
  while (1)
  {
    while (1)
    {
      v2 = *a2;
      if (*a2 <= 172)
      {
        break;
      }

      if ((v2 - 174) <= 0xA)
      {
        v3 = 1 << (v2 + 82);
        if ((v3 & 0x600) != 0)
        {
          goto LABEL_7;
        }

        if ((v3 & 5) != 0)
        {
          v6 = *(a2 + 40);
          if (v6 > 3)
          {
            goto LABEL_20;
          }

          if (v6 == 1)
          {
            v7 = *a1;
            goto LABEL_22;
          }

          if (v6 == 2)
          {
            v7 = *a1;
          }

          else
          {
LABEL_20:
            v7 = *a1;
          }

LABEL_22:
          v8 = *(*(a2 + 24) + 8 * v7);
          if ((*(v8 + 4) & 1) == 0)
          {
            goto LABEL_35;
          }

          v5 = (a2 + 36);
          a2 = v8;
          goto LABEL_24;
        }

        if ((v3 & 0xA0) != 0)
        {
          goto LABEL_34;
        }
      }

      if (v2 != 173)
      {
        goto LABEL_35;
      }

      v4 = *(a2 + 32);
      if (v4 < 1)
      {
        goto LABEL_35;
      }

      v5 = (*(a2 + 24) + 8);
      while (1)
      {
        a2 = *(v5 - 1);
        if (*(a2 + 4))
        {
          break;
        }

        v5 += 6;
        if (!--v4)
        {
          goto LABEL_35;
        }
      }

LABEL_24:
      a1 += *v5;
    }

    if (v2 <= 145)
    {
      if (v2 <= 140)
      {
        if (v2 != 136)
        {
          if (v2 == 138 || v2 == 140)
          {
            result = a1[4];
            goto LABEL_36;
          }

          goto LABEL_35;
        }
      }

      else if ((v2 - 141) >= 4)
      {
        goto LABEL_35;
      }

      if (*a1)
      {
        result = **a1 != 84;
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    if ((v2 - 170) >= 2)
    {
      break;
    }

LABEL_7:
    a2 = *(a2 + 24);
  }

  if (v2 == 146)
  {
LABEL_34:
    result = a1[20];
    goto LABEL_36;
  }

LABEL_35:
  result = 1;
LABEL_36:
  v10 = *MEMORY[0x29EDCA608];
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GenericEqualSort(unsigned int *a1, _DWORD *a2, uint64_t a3)
{
  v57 = *MEMORY[0x29EDCA608];
LABEL_2:
  for (i = a3; ; i = *(i + 24))
  {
    v6 = *(i + 16);
    if (v6)
    {
      v7 = *(v6 + 8);
      if (v7)
      {
        break;
      }
    }

    v8 = *i;
    if ((*i & 0xFFFFFFFE) != 0xAA)
    {
      if ((*(i + 4) & 2) == 0)
      {
        if (a1)
        {
          v25 = a2 == 0;
        }

        else
        {
          v25 = 1;
        }

        v26 = v25;
        if (v8 == 128)
        {
          if (v26)
          {
            goto LABEL_139;
          }

          v27 = *(a3 + 8);
          goto LABEL_141;
        }

        if (v26)
        {
          goto LABEL_139;
        }

LABEL_140:
        v27 = *(i + 8);
LABEL_141:
        v49 = memcmp(a1, a2, v27) == 0;
        goto LABEL_142;
      }

      if (v8 <= 171)
      {
        if (v8 <= 140)
        {
          if (v8 == 136)
          {
            goto LABEL_35;
          }

          if (v8 == 138 || v8 == 140)
          {
            v20 = *a1;
            if (v20 == *a2)
            {
              LOBYTE(v19) = 0;
              v21 = *(a1 + 1);
              if (v21)
              {
                v22 = *(a2 + 1);
                if (v22)
                {
                  LOBYTE(v19) = memcmp(v21, v22, v20) == 0;
                }
              }
            }

            else
            {
              LOBYTE(v19) = 0;
            }

            if (!*(a1 + 4))
            {
              GenericFreeSort(a1, i);
            }

            if (*(a2 + 4))
            {
              goto LABEL_145;
            }

LABEL_137:
            GenericFreeSort(a2, i);
            goto LABEL_145;
          }
        }

        else
        {
          if ((v8 - 141) < 4)
          {
LABEL_35:
            v17 = *a1;
            if (*a1 && strlen(*a1) > 1)
            {
              v18 = *a2;
              if (!*a2)
              {
                LOBYTE(v19) = 0;
                goto LABEL_128;
              }
            }

            else
            {
              v18 = *a2;
              if (!*a2 || strlen(*a2) < 2)
              {
                LOBYTE(v19) = 1;
                if (!v17)
                {
LABEL_130:
                  if (!v18)
                  {
                    goto LABEL_145;
                  }

                  goto LABEL_131;
                }

LABEL_128:
                if (*v17 == 84)
                {
                  GenericFreeSort(a1, i);
                  v18 = *a2;
                }

                goto LABEL_130;
              }

              if (!v17)
              {
                LOBYTE(v19) = 0;
LABEL_131:
                if (*v18 != 84)
                {
                  goto LABEL_145;
                }

                goto LABEL_137;
              }
            }

            v48 = strlen(v17 - 1);
            LOBYTE(v19) = strncmp(v17 + 1, (v18 + 1), v48) == 0;
            goto LABEL_128;
          }

          if (v8 == 146)
          {
LABEL_68:
            v28 = a1[4];
            v29 = a2[4];
            LOBYTE(v19) = v28 == v29;
            if (v28 == v29)
            {
              v30 = *a1;
              if (*a1)
              {
                v31 = a2;
                do
                {
                  v31 = *v31;
                  v32 = *(i + 24);
                  v33 = GenericEqualSort(v30 + *(i + 36), v31 + *(i + 36));
                  LOBYTE(v19) = v33 != 0;
                  v30 = *v30;
                  if (v33)
                  {
                    v34 = v30 == 0;
                  }

                  else
                  {
                    v34 = 1;
                  }
                }

                while (!v34);
              }
            }

            if (!*(a1 + 20))
            {
              GenericFreeSort(a1, i);
            }

            if (*(a2 + 20))
            {
              goto LABEL_145;
            }

            goto LABEL_137;
          }
        }

LABEL_122:
        LOBYTE(v19) = 0;
        if (!a1 || !a2)
        {
          goto LABEL_145;
        }

        goto LABEL_140;
      }

      if (v8 > 173)
      {
        if (v8 <= 182)
        {
          if (v8 == 174 || v8 == 176)
          {
            v9 = *(i + 40);
            if (v9 > 3)
            {
              goto LABEL_25;
            }

            if (v9 == 1)
            {
              v10 = *a1;
              v11 = *a2;
              goto LABEL_27;
            }

            if (v9 == 2)
            {
              v10 = *a1;
              v11 = *a2;
            }

            else
            {
LABEL_25:
              v10 = *a1;
              v11 = *a2;
            }

LABEL_27:
            if (v10 == v11)
            {
              v13 = *(i + 36);
              a1 = (a1 + v13);
              a2 = (a2 + v13);
              v12 = (*(i + 24) + 8 * v10);
              goto LABEL_29;
            }

            v51 = *(i + 24);
            v52 = *(v51 + 8 * v10);
            if (*(v52 + 4))
            {
              v53 = *(i + 36);
              if (!GenericIsAssigned(a1 + v53, v52))
              {
                GenericFreeSort(a1 + v53, v52);
                v51 = *(i + 24);
              }
            }

            v54 = *(v51 + 8 * v11);
            if (*(v54 + 4))
            {
              v55 = *(i + 36);
              if (!GenericIsAssigned(a2 + v55, *(v51 + 8 * v11)))
              {
                GenericFreeSort(a2 + v55, v54);
              }
            }

            goto LABEL_139;
          }

          if (v8 != 181)
          {
            goto LABEL_122;
          }

          goto LABEL_68;
        }

        if ((v8 - 183) < 2)
        {
          if (*(i + 32))
          {
            v23 = 0;
            LOBYTE(v19) = 1;
            do
            {
              v24 = *(*(i + 24) + 8) * v23;
              if (!GenericEqualSort(a1 + v24, a2 + v24))
              {
                LOBYTE(v19) = 0;
              }

              ++v23;
            }

            while (v23 < *(i + 32));
            goto LABEL_145;
          }

          goto LABEL_125;
        }

        if (v8 == 186)
        {
          a1 = *a1;
          a2 = *a2;
          if (a1)
          {
            if (a2)
            {
              v12 = (i + 24);
LABEL_29:
              a3 = *v12;
              goto LABEL_2;
            }

LABEL_139:
            LOBYTE(v19) = 0;
            goto LABEL_145;
          }

          v49 = a2 == 0;
LABEL_142:
          LOBYTE(v19) = v49;
          goto LABEL_145;
        }

        goto LABEL_122;
      }

      if (v8 != 172)
      {
        LODWORD(v35) = *(i + 32);
        if (v35 >= 1)
        {
          v36 = 0;
          v37 = 0;
          v38 = a1 == 0;
          if (!a2)
          {
            v38 = 1;
          }

          v56 = v38;
          v19 = 1;
          v39 = -1;
          while (1)
          {
            v40 = *(i + 24);
            v41 = *(v40 + v36 + 8);
            if (v41 == -1)
            {
              break;
            }

            v42 = *(v40 + v36);
            if (v19 && (v39 & 0x80000000) == 0)
            {
              v19 = !v56 && memcmp(a1, a2, (v41 - 1)) == 0;
              v39 = -1;
            }

            v43 = *(v40 + v36 + 16);
            if (v43)
            {
              v44 = *v43;
              v25 = v44 == 0;
              LODWORD(v43) = v44 != 0;
              v45 = v25;
              v46 = v45 | (a2 != 0);
              if (a2)
              {
                LODWORD(v43) = 0;
              }

              if (!(v45 & 1 | (a2 != 0)))
              {
LABEL_106:
                if (v43)
                {
                  v47 = 0;
                }

                else
                {
                  v47 = v19;
                }

                if (v19)
                {
                  v19 = v47;
                }

                else
                {
                  v19 = 0;
                }

                if (*(v42 + 4))
                {
                  if (!GenericIsAssigned(a1 + v41, v42))
                  {
                    GenericFreeSort(a1 + v41, v42);
                  }

                  if ((v46 & 1) != 0 && !GenericIsAssigned(a2 + v41, v42))
                  {
                    GenericFreeSort(a2 + v41, v42);
                  }
                }

                goto LABEL_120;
              }
            }

            else
            {
              v46 = 1;
            }

            if (!v19)
            {
              goto LABEL_106;
            }

            v19 = GenericEqualSort(a1 + v41, a2 + v41);
LABEL_120:
            ++v37;
            v35 = *(i + 32);
            v36 += 24;
            if (v37 >= v35)
            {
              goto LABEL_145;
            }
          }

          if (v19)
          {
            if (v37 != v35 - 1)
            {
LABEL_119:
              v39 = 0;
              goto LABEL_120;
            }

            if (!v56)
            {
              v19 = memcmp(a1, a2, *(i + 8)) == 0;
              goto LABEL_119;
            }
          }

          v19 = 0;
          goto LABEL_119;
        }

LABEL_125:
        LOBYTE(v19) = 1;
LABEL_145:
        v50 = *MEMORY[0x29EDCA608];
        return v19;
      }

      a3 = *(i + 24);
      if (!a3)
      {
        goto LABEL_122;
      }

      goto LABEL_2;
    }
  }

  v14 = *MEMORY[0x29EDCA608];
  v15 = *MEMORY[0x29EDCA608];

  return v7(a1, a2);
}

void GenBag_Incl2(const void **a1, uint64_t *a2, uint64_t a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v6 = gnssOsa_Calloc("posp_alloc", 18, 1, *(*(a3 + 24) + 8));
  GenericAssignSort(v6, a1, 10, *(a3 + 24));
  v7 = *(a3 + 24);
  if (GenericIsAssigned(v6, v7))
  {
    v8 = a2;
    while (1)
    {
      v8 = *v8;
      if (!v8)
      {
        goto LABEL_14;
      }

      if (GenericEqualSort(v6, (v8 + *(a3 + 36)), *(a3 + 24)))
      {
        goto LABEL_12;
      }
    }
  }

  v9 = gnssOsa_Calloc("posp_alloc", 18, 1, *(v7 + 8));
  GenericAssignSort(v9, v6, 10, *(a3 + 24));
  v8 = a2;
  do
  {
    v8 = *v8;
  }

  while (v8 && !GenericEqualSort(v9, (v8 + *(a3 + 36)), *(a3 + 24)));
  GenericFreeSort(v9, *(a3 + 24));
  if (v9)
  {
    free(v9);
  }

  if (!v8)
  {
LABEL_14:
    v10 = a2[1];
    v11 = gnssOsa_Calloc("posp_alloc", 18, 1, *(a3 + 32));
    v12 = a2;
    if (v10)
    {
      v12 = a2[1];
    }

    *v12 = v11;
    a2[1] = v11;
    GenericAssignSort(&v11[*(a3 + 36)], v6, 12, *(a3 + 24));
    v13 = a2[1];
    *v13 = 0;
    if (*a3 == 180)
    {
      *(v13 + 8) = 1;
    }

    goto LABEL_18;
  }

LABEL_12:
  GenericFreeSort(v6, *(a3 + 24));
  if (*a3 != 180)
  {
    goto LABEL_19;
  }

  ++*(v8 + 2);
LABEL_18:
  ++*(a2 + 4);
LABEL_19:
  if (v6)
  {
    v14 = *MEMORY[0x29EDCA608];

    free(v6);
  }

  else
  {
    v15 = *MEMORY[0x29EDCA608];
  }
}

uint64_t SimUtils::GetInstance(SimUtils *this)
{
  v6 = *MEMORY[0x29EDCA608];
  if (SimUtils::GetInstance(void)::pred_simUtils != -1)
  {
    dispatch_once(&SimUtils::GetInstance(void)::pred_simUtils, &__block_literal_global_5);
  }

  result = SimUtils::m_sim_utils;
  if (!SimUtils::m_sim_utils)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v3), "OSA", 69, "GetInstance", "GetInstance");
      LbsOsaTrace_WriteLog(0xEu, __str, v4, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("GetInstance", "SimUtils.cpp", 47, "false && Memory allocation failure");
  }

  v2 = *MEMORY[0x29EDCA608];
  return result;
}

void *___ZN8SimUtils11GetInstanceEv_block_invoke()
{
  v2 = *MEMORY[0x29EDCA608];
  result = operator new(0x18uLL, MEMORY[0x29EDC9418]);
  if (result)
  {
    *result = 0;
    result[1] = 0;
    result[2] = 0;
  }

  SimUtils::m_sim_utils = result;
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

char *SimUtils::CreateAndAddSimIdNode(SimUtils *this, int a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v4 = *(this + 2);
  if (v4)
  {
    v5 = 0;
    v6 = *(this + 2);
    do
    {
      ++v5;
      v6 = *(v6 + 8);
    }

    while (v6);
    if (v5 >= 3)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v7 = mach_continuous_time();
        v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx No slots available for storing SimId\n", (*&g_MacClockTicksToMsRelation * v7), "SPL", 69, "CreateAndAddSimIdNode", 2054);
        LbsOsaTrace_WriteLog(0x12u, __str, v8, 0, 1);
      }

LABEL_14:
      result = 0;
      goto LABEL_16;
    }
  }

  result = operator new(0xF0uLL, MEMORY[0x29EDC9418]);
  if (!result)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v12), "SPL", 69, "CreateAndAddSimIdNode", 1537);
      LbsOsaTrace_WriteLog(0x12u, __str, v13, 0, 1);
    }

    goto LABEL_14;
  }

  *(result + 4) = 0u;
  *(result + 5) = 0u;
  *(result + 11) = 0u;
  *(result + 12) = 0u;
  *(result + 9) = 0u;
  *(result + 10) = 0u;
  *(result + 7) = 0u;
  *(result + 8) = 0u;
  *(result + 6) = 0u;
  *(result + 2) = 0u;
  *(result + 3) = 0u;
  *result = 0u;
  *(result + 1) = 0u;
  *(result + 24) = 7275;
  result[64] = 0;
  *(result + 66) = -1;
  *(result + 36) = 0;
  *(result + 11) = 0;
  *(result + 12) = 0;
  result[104] = 0;
  *(result + 10) = 0;
  result[113] = 0;
  *(result + 116) = -1;
  *(result + 64) = 0;
  *(result + 33) = -65536;
  *(result + 18) = 0;
  *(result + 19) = 0;
  *(result + 158) = 0;
  *(result + 17) = 0;
  *(result + 22) = 0;
  *(result + 23) = 0;
  *(result + 21) = 0;
  result[192] = 1;
  *(result + 26) = 0;
  *(result + 27) = 0;
  *(result + 104) = -1;
  *(result + 28) = 0;
  *(result + 29) = 0;
  v10 = v4;
  *result = a2;
  while (v10)
  {
    v11 = v10;
    v10 = *(v10 + 8);
    if (!v10)
    {
      *(v11 + 8) = result;
      *(result + 1) = 0;
      goto LABEL_16;
    }
  }

  *(result + 1) = v4;
  *(this + 2) = result;
LABEL_16:
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SimUtils::SetSlpInfo(SimUtils *a1, int a2, uint64_t a3)
{
  v8 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 2);
  if (v4)
  {
    while (*v4 != a2)
    {
      v4 = *(v4 + 1);
      if (!v4)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    v4 = SimUtils::CreateAndAddSimIdNode(a1, a2);
    if (!v4)
    {
      v5 = -1;
      goto LABEL_7;
    }
  }

  v4[16] = *a3;
  std::string::operator=(v4 + 1, (a3 + 8));
  v5 = 0;
  *(v4 + 24) = *(a3 + 32);
LABEL_7:
  v6 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t SimUtils::GetSlpFqdn(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v15 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_15:
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "SPL", 69, "GetSlpFqdn", 515);
      LbsOsaTrace_WriteLog(0x12u, __str, v9, 0, 1);
    }

    v7 = -1;
    goto LABEL_18;
  }

  while (*v4 != a4)
  {
    v4 = *(v4 + 8);
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  memset(&__p, 0, sizeof(__p));
  v14 = 7275;
  __str[0] = *(v4 + 16);
  std::string::operator=(&__p, (v4 + 24));
  v14 = *(v4 + 48);
  if (!__str[0] || ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (size = HIBYTE(__p.__r_.__value_.__r.__words[2])) : (size = __p.__r_.__value_.__l.__size_), !size))
  {
    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_15;
  }

  *a2 = __str[0];
  std::string::operator=((a2 + 8), &__p);
  *(a2 + 32) = v14;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v7 = 0;
LABEL_18:
  v10 = *MEMORY[0x29EDCA608];
  return v7;
}

void sub_299624124(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t SimUtils::UpdateLocationIdInfo(SimUtils *a1, int a2, unsigned __int8 *a3)
{
  v7 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 2);
  if (v4)
  {
    while (*v4 != a2)
    {
      v4 = *(v4 + 8);
      if (!v4)
      {
        goto LABEL_4;
      }
    }

    goto LABEL_5;
  }

LABEL_4:
  result = SimUtils::CreateAndAddSimIdNode(a1, a2);
  v4 = result;
  if (result)
  {
LABEL_5:
    ASN1T_LocationId::operator=(v4 + 56, a3);
    result = mach_continuous_time();
    *(v4 + 200) = (*&g_MacClockTicksToMsRelation * result);
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SimUtils::IsItCampedOnLte(SimUtils *this, int a2)
{
  v2 = *(this + 2);
  if (!v2)
  {
    goto LABEL_9;
  }

  while (*v2 != a2)
  {
    v2 = *(v2 + 8);
    if (!v2)
    {
      goto LABEL_9;
    }
  }

  if (*(v2 + 56) == 4 && (v3 = *(v2 + 184)) != 0 && *v3 == 3)
  {
    result = 1;
  }

  else
  {
LABEL_9:
    result = 0;
  }

  v5 = *MEMORY[0x29EDCA608];
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SimInformation::IsLocIdValid(SimInformation *this)
{
  v7 = *MEMORY[0x29EDCA608];
  if (*(this + 56))
  {
    v1 = *(this + 50);
    if ((*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v1 < 0x1389)
    {
      result = 1;
      goto LABEL_9;
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 2, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v5 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx time diff is greater than 5000 millisecs value,%d\n", v5);
LABEL_7:
      LbsOsaTrace_WriteLog(0x12u, __str, v3, 2, 1);
      result = 0;
    }
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 2, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CellInfo\n");
      goto LABEL_7;
    }
  }

LABEL_9:
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SimInformation::IsSETIdValid(SimInformation *this)
{
  v7 = *MEMORY[0x29EDCA608];
  if (*(this + 104) == -1)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    result = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SET ID\n", (*&g_MacClockTicksToMsRelation * v3), "SPL", 69, "IsSETIdValid", 770);
      LbsOsaTrace_WriteLog(0x12u, __str, v4, 0, 1);
      result = 0;
    }
  }

  else
  {
    result = 1;
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

char *SimUtils::SetSETInfo(SimUtils *this, int a2, uint64_t a3)
{
  v11 = *MEMORY[0x29EDCA608];
  result = *(this + 2);
  if (result)
  {
    while (*result != a2)
    {
      result = *(result + 1);
      if (!result)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    result = SimUtils::CreateAndAddSimIdNode(this, a2);
    if (!result)
    {
LABEL_9:
      v10 = *MEMORY[0x29EDCA608];
      return result;
    }
  }

  *(result + 104) = *a3;
  if (result + 208 == a3)
  {
    goto LABEL_9;
  }

  v6 = *(a3 + 8);
  v7 = *(a3 + 16);
  v8 = *MEMORY[0x29EDCA608];
  v9 = result + 216;

  return std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v9, v6, v7, v7 - v6);
}

void *SimUtils::GetSETInfo(void *result, int a2, uint64_t a3)
{
  v8 = *MEMORY[0x29EDCA608];
  v3 = result[2];
  if (!v3)
  {
    goto LABEL_9;
  }

  while (*v3 != a2)
  {
    v3 = *(v3 + 8);
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  *a3 = *(v3 + 208);
  if (v3 + 208 == a3)
  {
LABEL_9:
    v7 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v4 = *(v3 + 216);
    v5 = *(v3 + 224);
    v6 = *MEMORY[0x29EDCA608];

    return std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((a3 + 8), v4, v5, v5 - v4);
  }

  return result;
}

uint64_t GNSS_Event_Log_Ctl(uint64_t result)
{
  v8 = *MEMORY[0x29EDCA608];
  if (!result)
  {
    goto LABEL_15;
  }

  if (!g_Enable_Event_Log)
  {
    goto LABEL_15;
  }

  v1 = result;
  **result = 0;
  v3 = *result;
  v2 = *(result + 8);
  if (v2 == *result)
  {
    goto LABEL_15;
  }

  v4 = *result;
  if (v2 > *result)
  {
    v4 = *(result + 24);
  }

  v5 = v4 - v2;
  if (v4 == v2)
  {
    if (v2 < *(result + 24))
    {
      goto LABEL_13;
    }

    v2 = *(result + 16);
    *(result + 8) = v2;
    goto LABEL_12;
  }

  result = GN_GPS_Write_Event_Log((v4 - v2), v2);
  v2 = &v1[1][result];
  v1[1] = v2;
  if (v2 >= v1[3])
  {
    v2 = v1[2];
    v1[1] = v2;
    if (result == v5)
    {
      v3 = *v1;
LABEL_12:
      result = GN_GPS_Write_Event_Log((v3 - v2), v2);
      v2 = &v1[1][result];
      v1[1] = v2;
    }
  }

LABEL_13:
  if (v2 == *v1)
  {
    v6 = v1[2];
    *v1 = v6;
    v1[1] = v6;
  }

LABEL_15:
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

const double *ud2cov(const double *a1, double *a2, unsigned int a3)
{
  v23 = *MEMORY[0x29EDCA608];
  v4 = *a1;
  result = a1 - 1;
  *a2 = v4;
  v5 = a2 - 1;
  if (a3 >= 2)
  {
    if (a3 + 1 > 3)
    {
      v6 = a3 + 1;
    }

    else
    {
      v6 = 3;
    }

    v7 = 1;
    v8 = 2;
    v9 = 2;
    v10 = 1;
    do
    {
      v11 = 0;
      v12 = v10 + v9;
      v13 = result[(v10 + v9)];
      v5[(v10 + v9)] = v13;
      v14 = v8;
      v15 = v7;
      v16 = 1;
      do
      {
        v11 += v16;
        v17 = v13 * result[(v10 + v16)];
        v18 = v14;
        v19 = v16;
        v20 = v15;
        v21 = v11;
        do
        {
          v5[v21] = v5[v21] + v17 * result[v18];
          v21 += v19++;
          ++v18;
          --v20;
        }

        while (v20);
        v5[(v10 + v16++)] = v17;
        --v15;
        ++v14;
      }

      while (v16 != v9);
      v8 += v9;
      ++v7;
      ++v9;
      v10 = v12;
    }

    while (v9 != v6);
  }

  v22 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DOP4_Upd_U_Meas(uint64_t result, double (*a2)[4])
{
  v2 = 0;
  v21 = *MEMORY[0x29EDCA608];
  v3 = a2;
  do
  {
    v4 = 0;
    v5 = (*a2)[v2 + 12];
    v6 = v3;
    do
    {
      v7 = *v6;
      v6 += 4;
      v5 = v5 + *(result + v4) * v7;
      v4 += 8;
    }

    while (v4 != 24);
    v19[v2++] = v5;
    v3 = (v3 + 8);
  }

  while (v2 != 4);
  v8 = 0;
  v9 = v20;
  do
  {
    v9 = v9 + v19[v8] * *(result + v8 * 8);
    ++v8;
  }

  while (v8 != 3);
  v10 = 0;
  v11 = a2;
  v12 = a2;
  v13 = -1.0 / (v9 + 1.0);
  do
  {
    v14 = v19[v10];
    (*a2)[4 * v10 + v10] = (*a2)[4 * v10 + v10] + v13 * v14 * v14;
    if (v10)
    {
      v15 = 0;
      v16 = v12;
      do
      {
        v17 = (*v11)[v15] + v13 * v14 * v19[v15];
        (*v11)[v15] = v17;
        *v16 = v17;
        v16 += 4;
        ++v15;
      }

      while (v10 != v15);
    }

    ++v10;
    v12 = (v12 + 8);
    ++v11;
  }

  while (v10 != 4);
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL DOP4_Upd_W_Meas(double *a1, double a2, double (*a3)[4])
{
  v4 = 0;
  v24[5] = *MEMORY[0x29EDCA608];
  v5 = a3;
  do
  {
    v6 = 0;
    v7 = (*a3)[v4 + 12];
    v8 = v5;
    do
    {
      v9 = *v8;
      v8 += 4;
      v7 = v7 + a1[v6++] * v9;
    }

    while (v6 != 3);
    v24[++v4] = v7;
    v5 = (v5 + 8);
  }

  while (v4 != 4);
  v10 = 0;
  v11 = v24[4];
  do
  {
    v11 = v11 + v24[v10 + 1] * a1[v10];
    ++v10;
  }

  while (v10 != 3);
  v12 = v11 + a2;
  v24[0] = v11 + a2;
  v23 = 0.0;
  result = R8_EQ(v24, &v23);
  v14 = 0;
  v15 = -1.0 / v12;
  if (result)
  {
    v15 = -0.0;
  }

  v16 = a3;
  v17 = a3;
  do
  {
    v18 = v24[v14 + 1];
    (*a3)[4 * v14 + v14] = (*a3)[4 * v14 + v14] + v15 * v18 * v18;
    if (v14)
    {
      v19 = 0;
      v20 = v17;
      do
      {
        v21 = (*v16)[v19] + v15 * v18 * v24[v19 + 1];
        (*v16)[v19] = v21;
        *v20 = v21;
        v20 += 4;
        ++v19;
      }

      while (v14 != v19);
    }

    ++v14;
    v17 = (v17 + 8);
    ++v16;
  }

  while (v14 != 4);
  v22 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DOP4_Upd_U_Elem(uint64_t result, double (*a2)[4])
{
  v2 = 0;
  v15 = *MEMORY[0x29EDCA608];
  v3 = &(*a2)[result + 4];
  do
  {
    *&v4 = *(v3 - 4);
    *(&v4 + 1) = *v3;
    *&v14[v2] = v4;
    v3 += 8;
    v2 += 2;
  }

  while (v2 != 4);
  v5 = 0;
  v6 = -1.0 / ((*a2)[4 * result + result] + 1.0);
  v7 = a2;
  v8 = a2;
  do
  {
    v9 = v14[v5];
    (*a2)[4 * v5 + v5] = (*a2)[4 * v5 + v5] + v6 * v9 * v9;
    if (v5)
    {
      v10 = 0;
      v11 = v8;
      do
      {
        v12 = (*v7)[v10] + v6 * v9 * v14[v10];
        (*v7)[v10] = v12;
        *v11 = v12;
        v11 += 4;
        ++v10;
      }

      while (v5 != v10);
    }

    ++v5;
    v8 = (v8 + 8);
    ++v7;
  }

  while (v5 != 4);
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

double *DOP4_Calc_U(double *result, double *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = 0.0;
  v3 = 0.0;
  if (*result > 0.0)
  {
    v3 = sqrt(*result);
    if (v3 > 99.99)
    {
      v3 = 99.99;
    }
  }

  *a2 = v3;
  v4 = result[5];
  if (v4 > 0.0)
  {
    v2 = sqrt(v4);
    if (v2 > 99.99)
    {
      v2 = 99.99;
    }
  }

  a2[1] = v2;
  v5 = *result + result[5];
  v6 = 0.0;
  v7 = 0.0;
  if (v5 > 0.0)
  {
    v7 = sqrt(v5);
    if (v7 > 99.99)
    {
      v7 = 99.99;
    }
  }

  a2[2] = v7;
  v8 = result[10];
  if (v8 > 0.0)
  {
    v6 = sqrt(v8);
    if (v6 > 99.99)
    {
      v6 = 99.99;
    }
  }

  a2[3] = v6;
  v9 = *result + result[5] + result[10];
  v10 = 0.0;
  v11 = 0.0;
  if (v9 > 0.0)
  {
    v11 = sqrt(v9);
    if (v11 > 99.99)
    {
      v11 = 99.99;
    }
  }

  a2[4] = v11;
  v12 = *result + result[5] + result[10] + result[15];
  if (v12 > 0.0)
  {
    v10 = sqrt(v12);
    if (v10 > 99.99)
    {
      v10 = 99.99;
    }
  }

  a2[6] = v10;
  v13 = result[15];
  v14 = 0.0;
  if (v13 > 0.0)
  {
    v14 = sqrt(v13);
    if (v14 > 99.99)
    {
      v14 = 99.99;
    }
  }

  a2[5] = v14;
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

void GN_SUPL_Handler_Init(void)
{
  v7 = *MEMORY[0x29EDCA608];
  LcsFunctionEntryExitTrace::LcsFunctionEntryExitTrace(v5, 55, "GN_SUPL_Handler_Init");
  Instance = LcsSuplGlueLayer::GetInstance(v0);
  if (Instance)
  {
    *(Instance + 16) = 0;
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v2), "SPL", 69, "GN_SUPL_Handler_Init", 1537);
    LbsOsaTrace_WriteLog(0x12u, __str, v3, 0, 1);
  }

  LcsFunctionEntryExitTrace::~LcsFunctionEntryExitTrace(v5);
  v4 = *MEMORY[0x29EDCA608];
}

void sub_299624ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  LcsFunctionEntryExitTrace::~LcsFunctionEntryExitTrace(va);
  _Unwind_Resume(a1);
}

void GN_SUPL_Handler_DeInit(void)
{
  v6 = *MEMORY[0x29EDCA608];
  LcsFunctionEntryExitTrace::LcsFunctionEntryExitTrace(v4, 71, "GN_SUPL_Handler_DeInit");
  if (!LcsSuplGlueLayer::GetInstance(v0) && LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v1 = mach_continuous_time();
    v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v1), "SPL", 69, "GN_SUPL_Handler_DeInit", 1537);
    LbsOsaTrace_WriteLog(0x12u, __str, v2, 0, 1);
  }

  LcsFunctionEntryExitTrace::~LcsFunctionEntryExitTrace(v4);
  v3 = *MEMORY[0x29EDCA608];
}

void sub_299624FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  LcsFunctionEntryExitTrace::~LcsFunctionEntryExitTrace(va);
  _Unwind_Resume(a1);
}

void GN_SUPL_Handler(void)
{
  v7 = *MEMORY[0x29EDCA608];
  LcsFunctionEntryExitTrace::LcsFunctionEntryExitTrace(v5, 87, "GN_SUPL_Handler");
  Instance = LcsSuplGlueLayer::GetInstance(v0);
  if (Instance)
  {
    SUPL_Message_Handler(Instance);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v2), "SPL", 69, "GN_SUPL_Handler", 1537);
    LbsOsaTrace_WriteLog(0x12u, __str, v3, 0, 1);
  }

  LcsFunctionEntryExitTrace::~LcsFunctionEntryExitTrace(v5);
  v4 = *MEMORY[0x29EDCA608];
}

void sub_299625110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  LcsFunctionEntryExitTrace::~LcsFunctionEntryExitTrace(va);
  _Unwind_Resume(a1);
}

BOOL GN_SUPL_Connect_Ind_In(int a1, int a2)
{
  v13 = *MEMORY[0x29EDCA608];
  Trace_GN_SUPL_Connect_Ind_In(a1, a2);
  v4 = SUPL_Message_Init();
  v5 = v4;
  if (v4)
  {
    *(v4 + 5) = a1;
    v4[16] = 0;
    *(v4 + 7) = a2;
    v6 = qword_2A14BEA08;
    v7 = (qword_2A14BEA08 + 8);
    if (!qword_2A14BEA08)
    {
      v7 = &SUPL_Queue;
    }

    *v7 = v4;
    qword_2A14BEA08 = v4;
    *v4 = v6;
    *(v4 + 1) = 0;
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "SPL", 69, "GN_SUPL_Connect_Ind_In", 1537);
    LbsOsaTrace_WriteLog(0x12u, __str, v9, 0, 1);
  }

  result = v5 != 0;
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GN_SUPL_Disconnect_Ind_In(int a1, int a2)
{
  v17 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Handle,%u,status,%u\n", (*&g_MacClockTicksToMsRelation * v4), "SPL", 73, "GN_SUPL_Disconnect_Ind_In", a1, a2);
    LbsOsaTrace_WriteLog(0x12u, __str, v5, 4, 1);
  }

  v6 = SUPL_Message_Init();
  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = v6;
  Instance = LcsSuplGlueLayer::GetInstance(v6);
  if (!Instance)
  {
    goto LABEL_12;
  }

  if ((a2 - 10) >= 5 && a2 != 16)
  {
    if (a1)
    {
      LcsSuplGlueLayer::DeleteSessionInfo(Instance, a1);
    }

LABEL_12:
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Disconnect request Failed\n", (*&g_MacClockTicksToMsRelation * v12), "SPL", 69, "GN_SUPL_Disconnect_Ind_In", 2305);
      LbsOsaTrace_WriteLog(0x12u, __str, v13, 0, 1);
    }

    v9 = 0;
    goto LABEL_15;
  }

  *(v7 + 20) = a1;
  v9 = 1;
  *(v7 + 16) = 1;
  *(v7 + 28) = a2;
  v10 = qword_2A14BEA08;
  v11 = (qword_2A14BEA08 + 8);
  if (!qword_2A14BEA08)
  {
    v11 = &SUPL_Queue;
  }

  *v11 = v7;
  qword_2A14BEA08 = v7;
  *v7 = v10;
  *(v7 + 8) = 0;
  LcsSuplGlueLayer::SendSuplConnectionStatus(Instance, a1, a2);
LABEL_15:
  v14 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t GN_SUPL_Push_Delivery_In(unsigned int *a1, unsigned int a2, unsigned __int8 *a3, int a4)
{
  v37 = *MEMORY[0x29EDCA608];
  Trace_GN_SUPL_Push_Delivery_In(a1, a2, a3);
  if (a2 && a3)
  {
    Instance = LcsUtils::GetInstance(v8);
    IsItDuplicateSession = LcsUtils::IsItDuplicateSession(Instance, a3, a2);
    if (IsItDuplicateSession == 1)
    {
      IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
      if (IsLoggingAllowed)
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Ignoring the SUPL INIT\n", (*&g_MacClockTicksToMsRelation * v12), "SPL", 69, "GN_SUPL_Push_Delivery_In", 2053);
        IsLoggingAllowed = LbsOsaTrace_WriteLog(0x12u, __str, v13, 0, 1);
      }

LABEL_6:
      v14 = LcsSuplGlueLayer::GetInstance(IsLoggingAllowed);
      LcsSuplGlueLayer::SendSuplMsgStatus(v14, 0, 2, 0, 0, 0);
LABEL_24:
      result = 0;
      goto LABEL_25;
    }

    v18 = LcsUtils::GetInstance(IsItDuplicateSession);
    v19 = SuplUtils::GetInstance(v18);
    if (!SuplUtils::IsSETInfoValid(v19, a4))
    {
      IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
      if (IsLoggingAllowed)
      {
        bzero(__str, 0x410uLL);
        v29 = mach_continuous_time();
        v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Either SET ID or LocationID is not received in SUPL\n", (*&g_MacClockTicksToMsRelation * v29), "SPL", 69, "GN_SUPL_Push_Delivery_In", 515);
        IsLoggingAllowed = LbsOsaTrace_WriteLog(0x12u, __str, v30, 0, 1);
      }

      goto LABEL_6;
    }

    v20 = operator new(0x18uLL, MEMORY[0x29EDC9418]);
    if (v20)
    {
      v21 = v20;
      v20[1] = 0;
      *v20 = 0;
      *(v20 + 4) = 0;
      v22 = LcsSuplGlueLayer::GetInstance(v20);
      if (v22)
      {
        v23 = v22;
        RequestId = LcsSuplGlueLayer::GenerateRequestId(v22);
        *v21 = RequestId;
        *(v21 + 16) = RequestId;
        *a1 = RequestId;
        LcsSuplGlueLayer::PushSessionInfo(v23, v21);
        v25 = SUPL_Message_Init();
        if (v25)
        {
          v26 = v25;
          *(v25 + 5) = *a1;
          std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v25 + 5, a3, &a3[a2], a2);
          *(v26 + 32) = a4;
          *(v26 + 16) = 2;
          v27 = qword_2A14BEA08;
          v28 = (qword_2A14BEA08 + 8);
          if (!qword_2A14BEA08)
          {
            v28 = &SUPL_Queue;
          }

          *v28 = v26;
          qword_2A14BEA08 = v26;
          *v26 = v27;
          *(v26 + 8) = 0;
          result = 1;
          goto LABEL_25;
        }
      }

      else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v33 = mach_continuous_time();
        v34 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Glue layer Instance is NULL\n", (*&g_MacClockTicksToMsRelation * v33), "SPL", 69, "GN_SUPL_Push_Delivery_In", 513);
        LbsOsaTrace_WriteLog(0x12u, __str, v34, 0, 1);
      }

      *(v21 + 8) = 0;
      MEMORY[0x29C29EB20](v21, 0x1020C40903548AELL);
      goto LABEL_24;
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v31 = mach_continuous_time();
      v32 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SUPL Session\n", (*&g_MacClockTicksToMsRelation * v31), "SPL", 69, "GN_SUPL_Push_Delivery_In", 1537);
      LbsOsaTrace_WriteLog(0x12u, __str, v32, 0, 1);
      goto LABEL_24;
    }
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PDU is NULL or PDU Size is Zero\n", (*&g_MacClockTicksToMsRelation * v16), "SPL", 69, "GN_SUPL_Push_Delivery_In", 513);
      LbsOsaTrace_WriteLog(0x12u, __str, v17, 0, 1);
      goto LABEL_24;
    }
  }

LABEL_25:
  v35 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GN_SUPL_PDU_Delivery_In(int a1, unsigned int a2, unsigned __int8 *a3)
{
  v14 = *MEMORY[0x29EDCA608];
  if (!a2 || !a3)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (!result)
    {
      goto LABEL_12;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PDU is NULL or PDU Size is Zero\n");
LABEL_11:
    LbsOsaTrace_WriteLog(0x12u, __str, v11, 0, 1);
    result = 0;
    goto LABEL_12;
  }

  Trace_GN_SUPL_PDU_Delivery_In(a1, a2, a3);
  v6 = SUPL_Message_Init();
  if (!v6)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (!result)
    {
      goto LABEL_12;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
    goto LABEL_11;
  }

  v7 = v6;
  *(v6 + 5) = a1;
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v6 + 8, a3, &a3[a2], a2);
  *(v7 + 16) = 3;
  v8 = qword_2A14BEA08;
  v9 = (qword_2A14BEA08 + 8);
  if (!qword_2A14BEA08)
  {
    v9 = &SUPL_Queue;
  }

  *v9 = v7;
  qword_2A14BEA08 = v7;
  *v7 = v8;
  *(v7 + 8) = 0;
  result = 1;
LABEL_12:
  v12 = *MEMORY[0x29EDCA608];
  return result;
}