void Hal02_07ChipRead(void)
{
  v9 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v0 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: transPrep success\n", (*&g_MacClockTicksToMsRelation * v0), "HAL", 68, "Hal02_07ChipRead");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if ((*(*gp_Comm + 48))(gp_Comm))
  {
    do
    {
      Data = Hal_CommsItfReadData(g_ReadBuffer, 0x3000u);
      if (Data)
      {
        v3 = Data;
        if ((Data & 0x80000000) != 0)
        {
          goto LABEL_14;
        }

        if (Data > 0x3000)
        {
          if (g_LbsOsaTrace_Config)
          {
            bzero(__str, 0x3C6uLL);
            v4 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx NumOfBytesRead,%u,Maxbufsize,%u\n", (*&g_MacClockTicksToMsRelation * v4), "HAL", 69, "Hal02_07ChipRead", 772, v3, 12288);
            gnssOsa_PrintLog(__str, 1, 1, 0);
          }

          memset_s(g_ReadBuffer, 0x3000uLL, 0, 0x3000uLL);
        }

        else
        {
          Hal02_06ParsezxPacket(g_ReadBuffer, Data, v2);
        }
      }
    }

    while (((*(*gp_Comm + 48))(gp_Comm) & 1) != 0);
  }

  if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "HAL", 69, "Hal02_07ChipRead", 1281);
    gnssOsa_PrintLog(__str, 1, 1, 0);
LABEL_14:
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: RdrThrd exit\n", (*&g_MacClockTicksToMsRelation * v6), "HAL", 73, "Hal02_07ChipRead");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
}

void Hal02_06ParsezxPacket(unsigned __int8 *a1, size_t a2, uint8x8_t a3)
{
  v34 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (!g_LbsOsaTrace_Config)
    {
      goto LABEL_49;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx data\n");
LABEL_9:
    gnssOsa_PrintLog(__str, 1, 1, 0);
    goto LABEL_49;
  }

  if (!a2)
  {
    if (!g_LbsOsaTrace_Config)
    {
      goto LABEL_49;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx len\n");
    goto LABEL_9;
  }

  v4 = a1;
  if (_MergedGlobals_3)
  {
    memcpy_s("Hal02_06ParsezxPacket", 284, &g_ProccessBuff, 0x4000u, &g_PrevBuff, _MergedGlobals_3);
    memcpy_s("Hal02_06ParsezxPacket", 285, &g_ProccessBuff + _MergedGlobals_3, 0x4000 - _MergedGlobals_3, v4, a2);
    v5 = _MergedGlobals_3;
    v4 = &g_ProccessBuff;
  }

  else
  {
    v5 = 0;
  }

  v6 = 0;
  v7 = v5 + a2;
  _MergedGlobals_3 = 0;
  v8 = &unk_2A13EC000;
  v9 = "HAL";
  v10 = &unk_2A145C000;
  while (1)
  {
    v11 = v7;
    v12 = &v4[v6];
    if (v7 <= 7u)
    {
      v31 = 304;
      goto LABEL_48;
    }

    if (*v12 != 122 || v12[1] != 120)
    {
      ++v6;
      --v7;
      v18 = v10[316] + 1;
      v10[316] = v18;
      HIDWORD(v19) = 652835029 * v18;
      LODWORD(v19) = 652835029 * v18;
      if ((v19 >> 3) <= 0x418937 && g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v21 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Err,%u\n", (v8[140] * v21), v9, 87, "Hal02_06ParsezxPacket", 770, v10[316]);
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }

      goto LABEL_45;
    }

    a3.i32[0] = *(v12 + 2);
    a3 = vmovl_u8(a3).u64[0];
    v13 = v12[6];
    v14 = vaddv_s16(a3) + v13;
    if (v12[7] != v14)
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        v22 = v14;
        bzero(__str, 0x3C6uLL);
        v23 = v8[140] * mach_continuous_time();
        v24 = v12[7];
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx rcvd,0x%02x,computed,0x%02x,Pktloss,%u\n", v23, v9, 87, "Hal02_06ParsezxPacket", 781, v24, v22, ++dword_2A145C4EC);
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }

      ++v6;
      --v7;
      goto LABEL_45;
    }

    v15 = v9;
    v16 = a3.u16[3] | (v13 << 8);
    if (v16 >= 0xFF8)
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v17 = v8[140] * mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx len,%u,Pktloss,%u\n", v17, v15, 87, "Hal02_06ParsezxPacket", 783, v16, ++dword_2A145C4EC);
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }

      ++v6;
      --v7;
      v9 = v15;
      goto LABEL_41;
    }

    v25 = v16 + 9;
    v11 = v7;
    if (v7 < (v16 + 9))
    {
      break;
    }

    if (v4[v6 + 8 + v16] == 10)
    {
      v8 = &unk_2A13EC000;
      v9 = v15;
      v10 = &unk_2A145C000;
      if (dword_2A145C4F0)
      {
        if (dword_2A145C4F0 >= 0x41 && g_LbsOsaTrace_Config >= 5)
        {
          bzero(__str, 0x3C6uLL);
          v26 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: zx pkt recd ,prev invalid data,%u\n", (*&g_MacClockTicksToMsRelation * v26), v9, 68, "Hal02_06ParsezxPacket", dword_2A145C4F0);
          gnssOsa_PrintLog(__str, 5, 1, 0);
        }

        dword_2A145C4F0 = 0;
      }

      if (g_RouteZxData)
      {
        g_RouteZxData(&v4[v6], v25);
      }

      else if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v30 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: RouteZxData is NULL\n", (*&g_MacClockTicksToMsRelation * v30), v9, 87, "Hal02_06ParsezxPacket");
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }

      v7 -= v25;
      v6 += v25;
      goto LABEL_45;
    }

    v9 = v15;
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v27 = mach_continuous_time();
      v28 = &v4[v6];
      v29 = v28[2];
      LODWORD(v28) = v28[3];
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx MC,%u,MID,%u,Pktloss,%u\n", (*&g_MacClockTicksToMsRelation * v27), v15, 87, "Hal02_06ParsezxPacket", 782, v29, v28, ++dword_2A145C4EC);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    ++v6;
    --v7;
    v8 = &unk_2A13EC000;
LABEL_41:
    v10 = &unk_2A145C000;
LABEL_45:
    if (!v7)
    {
      goto LABEL_49;
    }
  }

  v31 = 354;
LABEL_48:
  memcpy_s("Hal02_06ParsezxPacket", v31, &g_PrevBuff, 0x1000u, &v4[v6], v11);
  _MergedGlobals_3 = v7;
LABEL_49:
  v32 = *MEMORY[0x29EDCA608];
}

void Hal02_AsyncReadCb(unsigned __int8 *a1, size_t a2, uint8x8_t a3)
{
  v3 = a2;
  v4 = a1;
  v8 = *MEMORY[0x29EDCA608];
  if (a2 > 0x3000)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v5 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx v_RxBufferSize %u,processing %u bytes\n", (*&g_MacClockTicksToMsRelation * v5), "HAL", 87, "Hal02_AsyncReadCb", 772, v3, 12288);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    a1 = v4;
    a2 = 12288;
  }

  else
  {
    a2 = a2;
  }

  Hal02_06ParsezxPacket(a1, a2, a3);
  if (v4)
  {
    free(v4);
  }

  v6 = *MEMORY[0x29EDCA608];
}

void Hal02_SPI_ReadCb(unsigned __int8 *a1, unsigned int a2, uint8x8_t a3)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a2 > 0x3000)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v5 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: v_RxBufferSize %u - out of range error\n", (*&g_MacClockTicksToMsRelation * v5), "HAL", 69, "Hal02_SPI_ReadCb", a2);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    v6 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v4 = *MEMORY[0x29EDCA608];

    Hal02_06ParsezxPacket(a1, a2, a3);
  }
}

uint64_t Hal02_DeInitParser(void)
{
  v2 = *MEMORY[0x29EDCA608];
  result = memset_s(&g_PrevBuff, 0x1000uLL, 0, 0x1000uLL);
  _MergedGlobals_3 = 0;
  g_RouteZxData = Hal02_RouteZxPkt;
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL Hal02_CheckDebugConfigMsg(int a1)
{
  v6 = *MEMORY[0x29EDCA608];
  if (word_2A13EC520 == 3599)
  {
    result = a1 == 77 || a1 == 70;
  }

  else
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v3 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx GnssHw\n", (*&g_MacClockTicksToMsRelation * v3), "HAL", 87, "Hal02_CheckDebugConfigMsg", 515);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    result = 0;
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GN_AGLON_Set_Eph_El(char *a1)
{
  v79 = *MEMORY[0x29EDCA608];
  result = Is_GN_API_Set_Allowed("GN_AGLON_Set_Eph_El");
  if (result)
  {
    v3 = *a1;
    if (g_Logging_Cfg < 5)
    {
      EvLog_d("GN_AGLON_Set_Eph_El: ", v3);
    }

    else
    {
      EvLog_v("GN_AGLON_Set_Eph_El: %2d %2d %2d %4d %d %2d  %2d %d %d %d  %9d %9d %9d  %8d %8d %8d  %3d %3d %3d  %3d %8d %5d  %d", v3, a1[1], a1[2], *(a1 + 2), a1[6], a1[7], a1[8], a1[9], a1[10], a1[11], *(a1 + 3), *(a1 + 4), *(a1 + 5), *(a1 + 6), *(a1 + 7), *(a1 + 8), a1[36], a1[37], a1[38], a1[39], *(a1 + 10), *(a1 + 22), a1[46]);
    }

    v4 = *a1;
    if ((*a1 - 25) <= 0xE7u)
    {
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloN = %d <%d or >%d, Out of range!");
LABEL_45:
      result = 0;
      goto LABEL_46;
    }

    v5 = a1[2];
    if (v5 - 96 <= 0xFFFFFFA0)
    {
      v27 = a1[2];
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloTb = %d <1 or >95, Out of range!");
      goto LABEL_45;
    }

    v6 = *(a1 + 2);
    if (v6 >= 0x5B6)
    {
      v28 = *(a1 + 2);
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloNT = %d >%d, Out of range!");
      goto LABEL_45;
    }

    v7 = a1[6];
    if (v7 >= 2)
    {
      v29 = a1[6];
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloLn = %d >1, Out of range!");
      goto LABEL_45;
    }

    v8 = a1[7];
    if (v8 >= 0x10)
    {
      v30 = a1[7];
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloFT = %d >15, Out of range!");
      goto LABEL_45;
    }

    v9 = a1[8];
    if (v9 >= 0x20)
    {
      v31 = a1[8];
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloEn = %d >31, Out of range!");
      goto LABEL_45;
    }

    v10 = a1[9];
    if (v10 >= 4)
    {
      v32 = a1[9];
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloP1 = %d <0 or >3, Out of range!");
      goto LABEL_45;
    }

    v11 = a1[11];
    if (v11 >= 4)
    {
      v33 = a1[11];
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloM = %d <0 or >3, Out of range!");
      goto LABEL_45;
    }

    v12 = *(a1 + 3);
    if ((v12 - 0x4000000) >> 27 != 31)
    {
      v34 = *(a1 + 3);
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloX = %d <-2^26 or >=2^26, Out of range!");
      goto LABEL_45;
    }

    v13 = *(a1 + 4);
    if ((v13 - 0x4000000) >> 27 != 31)
    {
      v35 = *(a1 + 4);
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloY = %d <-2^26 or >=2^26, Out of range!");
      goto LABEL_45;
    }

    v14 = *(a1 + 5);
    if ((v14 - 0x4000000) >> 27 != 31)
    {
      v36 = *(a1 + 5);
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloZ = %d <-2^26 or >=2^26, Out of range!");
      goto LABEL_45;
    }

    v15 = *(a1 + 6);
    if ((v15 - 0x800000) >> 24 != 255)
    {
      v37 = *(a1 + 6);
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloXdot = %d <-2^23 or >=2^23, Out of range!");
      goto LABEL_45;
    }

    v16 = *(a1 + 7);
    if ((v16 - 0x800000) >> 24 != 255)
    {
      v38 = *(a1 + 7);
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloYdot = %d <-2^23 or >=2^23, Out of range!");
      goto LABEL_45;
    }

    v17 = *(a1 + 8);
    if ((v17 - 0x800000) >> 24 != 255)
    {
      v39 = *(a1 + 8);
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloZdot = %d <-2^23 or >=2^23, Out of range!");
      goto LABEL_45;
    }

    v18 = a1[36];
    if ((v18 - 16) <= 0xDFu)
    {
      v40 = a1[36];
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloXdotdot = %d <-2^4 or >=2^4, Out of range!");
      goto LABEL_45;
    }

    v19 = a1[37];
    if ((v19 - 16) <= 0xDFu)
    {
      v41 = a1[37];
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloYdotdot = %d <-2^4 or >=2^4, Out of range!");
      goto LABEL_45;
    }

    v20 = a1[38];
    if ((v20 - 16) <= 0xDFu)
    {
      v42 = a1[38];
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloZdotdot = %d <-2^4 or >=2^4, Out of range!");
      goto LABEL_45;
    }

    v21 = a1[39];
    if ((v21 - 16) <= 0xDFu)
    {
      v43 = a1[39];
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloDeltaTau = %d <-2^4 or >=2^4, Out of range!");
      goto LABEL_45;
    }

    v22 = *(a1 + 10);
    if ((v22 - 0x200000) >> 22 != 1023)
    {
      v44 = *(a1 + 10);
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloDeltaTau = %d <-2^21 or >=2^21, Out of range!");
      goto LABEL_45;
    }

    v23 = *(a1 + 22);
    if (((v23 - 1024) >> 11) <= 0x1Eu)
    {
      v45 = *(a1 + 22);
      EvCrt_v("GN_AGLON_Set_Eph_El: FAILED: gloGamma = %d <-2^10 or >=2^10, Out of range!");
      goto LABEL_45;
    }

    v25 = a1[1];
    if ((a1[1] - 7) < 0xF2u)
    {
      v25 = 2139062143;
    }

    v48 = v25;
    if (a1[46])
    {
      v26 = 5;
    }

    else
    {
      v26 = 3;
    }

    v46 = 0;
    v47 = v26;
    v49 = v4;
    v50 = v5;
    v52 = v6;
    v55 = v7;
    v57 = v8;
    v58 = v9;
    v59 = v10;
    v60 = a1[10];
    v61 = v11;
    v62 = v12;
    v63 = v13;
    v64 = v14;
    v65 = v15;
    v66 = v16;
    v67 = v17;
    v68 = v18;
    v69 = v19;
    v70 = v20;
    v71 = v21;
    v72 = v22;
    v73 = v23;
    v54 = 0;
    v56 = 0;
    v53 = v7;
    v51 = 1500 * (v5 & 3) + 10000 * (v5 >> 2);
    memset(v78, 0, 62);
    GLON_EphInt2Bin(&v46, v78);
    v74 = 0;
    *&v77[4] = 0u;
    BYTE4(v74) = BYTE8(v78[0]);
    v75 = *(v78 + 12);
    v76 = *(&v78[1] + 12);
    *v77 = *(&v78[2] + 12);
    v77[16] = v47 == 5;
    result = GN_AGLON_Set_Eph(*a1, &v74);
  }

LABEL_46:
  v24 = *MEMORY[0x29EDCA608];
  return result;
}

double BDS_AlmInt2Real(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  *a2 = *a1;
  *(a2 + 12) = *(a1 + 11) << 12;
  v2 = *(a1 + 12);
  v3.i64[0] = v2;
  v3.i64[1] = HIDWORD(v2);
  v4 = vmulq_f64(vcvtq_f64_u64(v3), xmmword_299051670);
  v5 = *(a1 + 20);
  v3.i64[0] = v5;
  v3.i64[1] = SHIDWORD(v5);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 10) = *(a1 + 42);
  *(a2 + 11) = *(a1 + 10);
  *(a2 + 16) = v4;
  *(a2 + 32) = vmulq_f64(vcvtq_f64_s64(v3), vdupq_n_s64(0x3E9921FB54442D28uLL));
  v4.f64[0] = *(a1 + 28);
  v3.i64[0] = SLODWORD(v4.f64[0]);
  v3.i64[1] = SHIDWORD(v4.f64[0]);
  *(a2 + 48) = vmulq_f64(vcvtq_f64_s64(v3), xmmword_299051680);
  v6 = vcvtd_n_f64_s32(*(a1 + 38), 0x14uLL);
  *(a2 + 64) = *(a1 + 36) * 0.00000599211245;
  *(a2 + 72) = v6;
  result = *(a1 + 40) * 3.63797881e-12;
  *(a2 + 80) = result;
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

double XofGpsQzssEphemeris::XofGpsQzssEphemeris(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  *(a1 + 7) = 0;
  *a1 = 0;
  result = 0.0;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 56) = 0u;
  *a1 = *(a2 + 3);
  *(a1 + 1) = *(a2 + 35);
  *(a1 + 2) = *(a2 + 67);
  *(a1 + 3) = *(a2 + 99);
  *(a1 + 4) = *(a2 + 134);
  *(a1 + 6) = *(a2 + 166);
  *(a1 + 8) = *(a2 + 204);
  *(a1 + 12) = *(a2 + 238);
  *(a1 + 14) = *(a2 + 267);
  *(a1 + 16) = *(a2 + 334);
  *(a1 + 18) = *(a2 + 366);
  *(a1 + 20) = *(a2 + 398);
  *(a1 + 22) = *(a2 + 459);
  *(a1 + 23) = *(a2 + 491);
  *(a1 + 24) = *(a2 + 526);
  v3 = *(a2 + 604);
  *(a1 + 28) = *(a2 + 564);
  *(a1 + 32) = v3;
  v4 = *(a2 + 684);
  *(a1 + 36) = *(a2 + 644);
  *(a1 + 40) = v4;
  v5 = *(a2 + 764);
  *(a1 + 44) = *(a2 + 724);
  *(a1 + 48) = v5;
  *(a1 + 52) = *(a2 + 804);
  *(a1 + 56) = *(a2 + 838);
  *(a1 + 58) = *(a2 + 870);
  *(a1 + 60) = *(a2 + 902);
  *(a1 + 62) = *(a2 + 934);
  *(a1 + 64) = *(a2 + 966);
  *(a1 + 66) = *(a2 + 998);
  *(a1 + 68) = *(a2 + 1030);
  *(a1 + 70) = *(a2 + 1062);
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL XofGpsQzssEphemerisCodec::Decode(uint64_t a1, void *a2, _DWORD *a3)
{
  v9 = *MEMORY[0x29EDCA608];
  if (XofIntegralType<unsigned char>::DecodeFromHexData(a1, a2, a3) == 1 && XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 32), a2, a3) == 1 && XofIntegralType<signed char>::DecodeFromHexData((a1 + 64), a2, a3) == 1 && XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 96), a2, a3) == 1 && XofIntegralType<unsigned short>::DecodeFromHexData((a1 + 128), a2, a3) == 1 && XofIntegralType<unsigned short>::DecodeFromHexData((a1 + 160), a2, a3) == 1)
  {
    v6 = *MEMORY[0x29EDCA608];

    return XofGenericCodec::Decode<6ul,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>(a1, a2, a3);
  }

  else
  {
    v8 = *MEMORY[0x29EDCA608];
    return 0;
  }
}

BOOL XofGlonassChannelMapCodec::Decode(uint64_t a1, void *a2, _DWORD *a3)
{
  v8 = *MEMORY[0x29EDCA608];
  result = XofIntegralType<unsigned char>::DecodeFromHexData(a1, a2, a3) == 1 && XofIntegralType<signed char>::DecodeFromHexData((a1 + 32), a2, a3) == 1;
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

double XofBeidouEphemeris::XofBeidouEphemeris(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 14) = 0;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 119) = 0;
  *(a1 + 128) = 0;
  *(a1 + 132) = 0;
  *a1 = *(a2 + 3);
  *(a1 + 1) = *(a2 + 35);
  *(a1 + 2) = *(a2 + 70);
  *(a1 + 4) = *(a2 + 108);
  *(a1 + 8) = *(a2 + 139);
  *(a1 + 9) = *(a2 + 171);
  *(a1 + 10) = *(a2 + 203);
  *(a1 + 11) = *(a2 + 235);
  *(a1 + 12) = *(a2 + 267);
  *(a1 + 13) = *(a2 + 299);
  *(a1 + 14) = *(a2 + 331);
  *(a1 + 15) = *(a2 + 363);
  *(a1 + 16) = *(a2 + 398);
  *(a1 + 18) = *(a2 + 430);
  *(a1 + 20) = *(a2 + 459);
  *(a1 + 21) = *(a2 + 491);
  v3 = *(a2 + 636);
  *(a1 + 24) = *(a2 + 596);
  *(a1 + 28) = v3;
  v4 = *(a2 + 716);
  *(a1 + 32) = *(a2 + 676);
  *(a1 + 36) = v4;
  v5 = *(a2 + 824);
  *(a1 + 40) = *(a2 + 768);
  *(a1 + 48) = v5;
  v6 = *(a2 + 936);
  *(a1 + 56) = *(a2 + 880);
  *(a1 + 64) = v6;
  *(a1 + 72) = *(a2 + 992);
  *(a1 + 80) = *(a2 + 1036);
  *(a1 + 84) = *(a2 + 1070);
  *(a1 + 86) = *(a2 + 1102);
  *(a1 + 88) = *(a2 + 1134);
  *(a1 + 90) = *(a2 + 1166);
  LODWORD(v6) = *(a2 + 1244);
  *(a1 + 92) = *(a2 + 1204);
  *(a1 + 96) = v6;
  LODWORD(v6) = *(a2 + 1324);
  *(a1 + 100) = *(a2 + 1284);
  *(a1 + 104) = v6;
  LODWORD(v6) = *(a2 + 1404);
  *(a1 + 108) = *(a2 + 1364);
  *(a1 + 112) = v6;
  *(a1 + 116) = *(a2 + 1438);
  *(a1 + 118) = *(a2 + 1470);
  *(a1 + 120) = *(a2 + 1502);
  *(a1 + 122) = *(a2 + 1534);
  *(a1 + 124) = *(a2 + 1566);
  *(a1 + 126) = *(a2 + 523);
  *(a1 + 128) = *(a2 + 1598);
  *(a1 + 130) = *(a2 + 1627);
  *(a1 + 131) = *(a2 + 1659);
  *(a1 + 132) = *(a2 + 1691);
  *(a1 + 133) = *(a2 + 1723);
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL XofBeidouEphemerisCodec::Decode(uint64_t a1, void *a2, _DWORD *a3)
{
  v9 = *MEMORY[0x29EDCA608];
  if (XofIntegralType<unsigned char>::DecodeFromHexData(a1, a2, a3) == 1 && XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 32), a2, a3) == 1 && XofIntegralType<unsigned short>::DecodeFromHexData((a1 + 64), a2, a3) == 1 && XofIntegralType<unsigned int>::DecodeFromHexData((a1 + 96), a2, a3) == 1 && XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 136), a2, a3) == 1 && XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 168), a2, a3) == 1 && XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 200), a2, a3) == 1 && XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 232), a2, a3) == 1 && XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 264), a2, a3) == 1 && XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 296), a2, a3) == 1 && XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 328), a2, a3) == 1 && XofIntegralType<signed char>::DecodeFromHexData((a1 + 360), a2, a3) == 1 && XofIntegralType<unsigned short>::DecodeFromHexData((a1 + 392), a2, a3) == 1)
  {
    v6 = *MEMORY[0x29EDCA608];

    return XofGenericCodec::Decode<13ul,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<long long>,XofIntegralType<unsigned long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>>(a1, a2, a3);
  }

  else
  {
    v8 = *MEMORY[0x29EDCA608];
    return 0;
  }
}

double XofGalileoEphemeris::XofGalileoEphemeris(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  *(a1 + 4) = 0;
  *a1 = 0;
  result = 0.0;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 56) = 0u;
  *a1 = *(a2 + 3);
  *(a1 + 1) = *(a2 + 35);
  *(a1 + 2) = *(a2 + 67);
  *(a1 + 3) = *(a2 + 163);
  *(a1 + 4) = *(a2 + 195);
  *(a1 + 6) = *(a2 + 230);
  *(a1 + 8) = *(a2 + 262);
  v3 = *(a2 + 340);
  *(a1 + 12) = *(a2 + 300);
  *(a1 + 16) = v3;
  *(a1 + 20) = *(a2 + 371);
  *(a1 + 21) = *(a2 + 403);
  *(a1 + 22) = *(a2 + 438);
  *(a1 + 24) = *(a2 + 470);
  *(a1 + 26) = *(a2 + 502);
  v4 = *(a2 + 580);
  *(a1 + 28) = *(a2 + 540);
  *(a1 + 32) = v4;
  v5 = *(a2 + 660);
  *(a1 + 36) = *(a2 + 620);
  *(a1 + 40) = v5;
  v6 = *(a2 + 740);
  *(a1 + 44) = *(a2 + 700);
  *(a1 + 48) = v6;
  *(a1 + 52) = *(a2 + 780);
  *(a1 + 56) = *(a2 + 814);
  *(a1 + 58) = *(a2 + 846);
  *(a1 + 60) = *(a2 + 878);
  *(a1 + 62) = *(a2 + 910);
  *(a1 + 64) = *(a2 + 942);
  *(a1 + 66) = *(a2 + 974);
  *(a1 + 68) = *(a2 + 1006);
  *(a1 + 70) = *(a2 + 1038);
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL XofGalileoEphemerisCodec::Decode(uint64_t a1, void *a2, _DWORD *a3)
{
  v9 = *MEMORY[0x29EDCA608];
  if (XofIntegralType<unsigned char>::DecodeFromHexData(a1, a2, a3) == 1 && XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 32), a2, a3) == 1 && XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 64), a2, a3) == 1 && XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 96), a2, a3) == 1 && XofIntegralType<unsigned short>::DecodeFromHexData((a1 + 128), a2, a3) == 1 && XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 160), a2, a3) == 1 && XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 192), a2, a3) == 1 && XofIntegralType<unsigned short>::DecodeFromHexData((a1 + 224), a2, a3) == 1 && XofIntegralType<unsigned short>::DecodeFromHexData((a1 + 256), a2, a3) == 1 && XofIntegralType<int>::DecodeFromHexData((a1 + 288), a2, a3) == 1 && XofIntegralType<int>::DecodeFromHexData((a1 + 328), a2, a3) == 1 && XofIntegralType<signed char>::DecodeFromHexData((a1 + 368), a2, a3) == 1 && XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 400), a2, a3) == 1 && XofIntegralType<unsigned short>::DecodeFromHexData((a1 + 432), a2, a3) == 1 && XofIntegralType<short>::DecodeFromHexData((a1 + 464), a2, a3) == 1)
  {
    v6 = *MEMORY[0x29EDCA608];

    return XofGenericCodec::Decode<15ul,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>(a1, a2, a3);
  }

  else
  {
    v8 = *MEMORY[0x29EDCA608];
    return 0;
  }
}

double XofNavicEphemeris::XofNavicEphemeris(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  *(a1 + 18) = 0;
  *(a1 + 10) = 0;
  *(a1 + 2) = 0;
  result = 0.0;
  *(a1 + 20) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *a1 = *(a2 + 3);
  *(a1 + 2) = *(a2 + 38);
  *(a1 + 4) = *(a2 + 70);
  *(a1 + 6) = *(a2 + 99);
  *(a1 + 7) = *(a2 + 131);
  *(a1 + 8) = *(a2 + 163);
  *(a1 + 9) = *(a2 + 195);
  *(a1 + 10) = *(a2 + 227);
  *(a1 + 11) = *(a2 + 331);
  *(a1 + 12) = *(a2 + 372);
  *(a1 + 16) = *(a2 + 406);
  *(a1 + 18) = *(a2 + 435);
  *(a1 + 20) = *(a2 + 470);
  *(a1 + 22) = *(a2 + 502);
  v3 = *(a2 + 580);
  *(a1 + 24) = *(a2 + 540);
  *(a1 + 28) = v3;
  v4 = *(a2 + 660);
  *(a1 + 32) = *(a2 + 620);
  *(a1 + 36) = v4;
  v5 = *(a2 + 740);
  *(a1 + 40) = *(a2 + 700);
  *(a1 + 44) = v5;
  v6 = *(a2 + 820);
  *(a1 + 48) = *(a2 + 780);
  *(a1 + 52) = v6;
  *(a1 + 56) = *(a2 + 854);
  *(a1 + 58) = *(a2 + 886);
  *(a1 + 60) = *(a2 + 982);
  *(a1 + 62) = *(a2 + 1014);
  *(a1 + 64) = *(a2 + 918);
  *(a1 + 66) = *(a2 + 950);
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL XofNavicEphemerisCodec::Decode(uint64_t a1, void *a2, _DWORD *a3)
{
  v9 = *MEMORY[0x29EDCA608];
  if (XofIntegralType<unsigned char>::DecodeFromHexData(a1, a2, a3) == 1 && XofIntegralType<unsigned short>::DecodeFromHexData((a1 + 32), a2, a3) == 1 && XofIntegralType<unsigned short>::DecodeFromHexData((a1 + 64), a2, a3) == 1 && XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 96), a2, a3) == 1 && XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 128), a2, a3) == 1 && XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 160), a2, a3) == 1 && XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 192), a2, a3) == 1 && XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 224), a2, a3) == 1 && XofIntegralType<unsigned int>::DecodeFromHexData((a1 + 256), a2, a3) == 1 && XofIntegralType<unsigned short>::DecodeFromHexData((a1 + 296), a2, a3) == 1 && XofIntegralType<signed char>::DecodeFromHexData((a1 + 328), a2, a3) == 1 && XofIntegralType<int>::DecodeFromHexData((a1 + 360), a2, a3) == 1 && XofIntegralType<short>::DecodeFromHexData((a1 + 400), a2, a3) == 1 && XofIntegralType<signed char>::DecodeFromHexData((a1 + 432), a2, a3) == 1)
  {
    v6 = *MEMORY[0x29EDCA608];

    return XofGenericCodec::Decode<14ul,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>(a1, a2, a3);
  }

  else
  {
    v8 = *MEMORY[0x29EDCA608];
    return 0;
  }
}

uint64_t XofBrdcstEph::Decode(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v24[136] = *MEMORY[0x29EDCA608];
  bzero(v24, 0x440uLL);
  XofGpsQzssEphemerisCodec::XofGpsQzssEphemerisCodec(v24);
  v9 = XofBrdcstEph::DecodeSVs<std::map<unsigned char,XofGpsQzssEphemeris>,XofGpsQzssEphemerisCodec>(v8, v7, v3, v5, v24, 0, v8);
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul,31ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(v24);
  if (v9 != 1)
  {
    goto LABEL_10;
  }

  bzero(v23, 0x250uLL);
  XofSbasEphemerisCodec::XofSbasEphemerisCodec(v23);
  v10 = XofBrdcstEph::DecodeSVs<std::map<unsigned char,XofSbasEphemeris>,XofSbasEphemerisCodec>(v8, v7, v3, v5, v23, 1u, v8 + 120);
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>>::~__tuple_impl(v23);
  if (v10 != 1)
  {
    goto LABEL_10;
  }

  bzero(v22, 0x440uLL);
  XofGpsQzssEphemerisCodec::XofGpsQzssEphemerisCodec(v22);
  v11 = XofBrdcstEph::DecodeSVs<std::map<unsigned char,XofGpsQzssEphemeris>,XofGpsQzssEphemerisCodec>(v8, v7, v3, v5, v22, 2u, v8 + 72);
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul,31ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(v22);
  if (v11 != 1)
  {
    goto LABEL_10;
  }

  bzero(v21, 0x428uLL);
  XofGalileoEphemerisCodec::XofGalileoEphemerisCodec(v21);
  v12 = XofBrdcstEph::DecodeSVs<std::map<unsigned char,XofGalileoEphemeris>,XofGalileoEphemerisCodec>(v8, v7, v3, v5, v21, 3u, v8 + 48);
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(v21);
  if (v12 != 1)
  {
    goto LABEL_10;
  }

  bzero(v20, 0x2D8uLL);
  XofGlonassBrdcastEphemerisCodec::XofGlonassBrdcastEphemerisCodec(v20);
  v13 = XofBrdcstEph::DecodeSVs<std::map<unsigned char,XofGlonassBrdcastEphemeris>,XofGlonassBrdcastEphemerisCodec>(v8, v7, v3, v5, v20, 4u, v8 + 24);
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>>::~__tuple_impl(v20);
  if (v13 != 1)
  {
    goto LABEL_10;
  }

  bzero(v19, 0x700uLL);
  XofBeidouEphemerisCodec::XofBeidouEphemerisCodec(v19);
  v14 = XofBrdcstEph::DecodeSVs<std::map<unsigned char,XofBeidouEphemeris>,XofBeidouEphemerisCodec>(v8, v7, v3, v5, v19, 5u, v8 + 96);
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul,31ul,32ul,33ul,34ul,35ul,36ul,37ul,38ul,39ul,40ul,41ul,42ul,43ul,44ul,45ul,46ul,47ul,48ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<long long>,XofIntegralType<unsigned long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>>::~__tuple_impl(v19);
  if (v14 == 1)
  {
    bzero(v18, 0x410uLL);
    XofNavicEphemerisCodec::XofNavicEphemerisCodec(v18);
    v15 = XofBrdcstEph::DecodeSVs<std::map<unsigned char,XofNavicEphemeris>,XofNavicEphemerisCodec>(v8, v7, v3, v5, v18, 6u, v8 + 144);
    std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(v18);
    if (v15 == 1)
    {
      result = 1;
    }

    else
    {
      result = 5;
    }
  }

  else
  {
LABEL_10:
    result = 5;
  }

  v17 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298F9A134(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(va);
  _Unwind_Resume(a1);
}

uint64_t XofBrdcstEph::DecodeSVs<std::map<unsigned char,XofGpsQzssEphemeris>,XofGpsQzssEphemerisCodec>(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v44 = *MEMORY[0x29EDCA608];
  v7 = a4 + 48 * a6;
  v9 = *(v7 + 18);
  v8 = (v7 + 18);
  if (v9)
  {
    v15 = 0;
    v16 = (a7 + 8);
    while (1)
    {
      bzero(__str, 0x440uLL);
      XofGpsQzssEphemerisCodec::XofGpsQzssEphemerisCodec(__str);
      std::__memberwise_forward_assign[abi:ne200100]<std::tuple<XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>,std::tuple<XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul,31ul>(a5, __str);
      std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul,31ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(__str);
      if (!XofGpsQzssEphemerisCodec::Decode(a5, a2, a3))
      {
        if (g_LbsOsaTrace_Config < 2)
        {
          goto LABEL_34;
        }

        bzero(__str, 0x3C6uLL);
        v24 = mach_continuous_time();
        if (a6 > 7)
        {
          v25 = "   ";
        }

        else
        {
          v25 = off_29EF06518[a6];
        }

        v28 = *&g_MacClockTicksToMsRelation;
        std::string::basic_string[abi:ne200100]<0>(__p, v25);
        if ((SBYTE7(v34) & 0x80u) == 0)
        {
          v29 = __p;
        }

        else
        {
          v29 = __p[0];
        }

        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Broadcast Ephemeris decode failure, constellation Id = [ %s ], sequence Id = [ %d ]\n", (v28 * v24), "GNC", 87, "DecodeSVs", v29, v15 + 1);
        if (SBYTE7(v34) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_33;
      }

      v17 = *(a5 + 3);
      v18 = *v16;
      if (*v16)
      {
        v19 = v16;
        do
        {
          v20 = *(v18 + 28);
          v21 = v20 >= v17;
          v22 = v20 < v17;
          if (v21)
          {
            v19 = v18;
          }

          v18 = *(v18 + 8 * v22);
        }

        while (v18);
        if (v19 != v16 && v17 >= *(v19 + 28))
        {
          break;
        }
      }

      XofGpsQzssEphemeris::XofGpsQzssEphemeris(__p, a5);
      __str[0] = v17;
      v40 = v34;
      v41 = v35;
      v42 = v36;
      v43 = v37;
      v39 = *__p;
      std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char,XofGpsQzssEphemeris>>(a7, v17);
      if (++v15 >= *v8)
      {
        goto LABEL_13;
      }
    }

    if (g_LbsOsaTrace_Config < 2)
    {
      goto LABEL_34;
    }

    bzero(__str, 0x3C6uLL);
    v26 = mach_continuous_time();
    if (a6 > 7)
    {
      v27 = "   ";
    }

    else
    {
      v27 = off_29EF06518[a6];
    }

    v30 = *&g_MacClockTicksToMsRelation;
    std::string::basic_string[abi:ne200100]<0>(__p, v27);
    if ((SBYTE7(v34) & 0x80u) == 0)
    {
      v31 = __p;
    }

    else
    {
      v31 = __p[0];
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Duplicate entry found for Broadcast Ephemeris data: Satellite Id = [ %s ]\n", (v30 * v26), "GNC", 87, "DecodeSVs", v31);
    if (SBYTE7(v34) < 0)
    {
      operator delete(__p[0]);
    }

LABEL_33:
    gnssOsa_PrintLog(__str, 2, 1, 0);
LABEL_34:
    result = 5;
  }

  else
  {
LABEL_13:
    result = 1;
  }

  v32 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t XofBrdcstEph::DecodeSVs<std::map<unsigned char,XofSbasEphemeris>,XofSbasEphemerisCodec>(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v115 = *MEMORY[0x29EDCA608];
  v50 = (a4 + 48 * a6 + 18);
  if (*v50)
  {
    v10 = 0;
    v52 = (a7 + 8);
    v61 = (a5 + 312);
    v58 = a5 + 408;
    v59 = a5 + 328;
    v51 = (a5 + 392);
    v56 = a5 + 472;
    v57 = a5 + 440;
    v54 = a5 + 536;
    v55 = a5 + 504;
    v53 = a5 + 568;
    while (1)
    {
      v60 = v10;
      bzero(__str, 0x250uLL);
      XofSbasEphemerisCodec::XofSbasEphemerisCodec(__str);
      *a5 = *__str;
      if (*(a5 + 31) < 0)
      {
        operator delete(*(a5 + 8));
      }

      *(a5 + 8) = v65;
      *(a5 + 24) = v66;
      HIBYTE(v66) = 0;
      LOBYTE(v65) = 0;
      *(a5 + 32) = v67;
      if (*(a5 + 63) < 0)
      {
        operator delete(*(a5 + 40));
      }

      *(a5 + 40) = v68;
      v11 = v69;
      HIBYTE(v69) = 0;
      LOBYTE(v68) = 0;
      v12 = v70;
      *(a5 + 56) = v11;
      *(a5 + 64) = v12;
      if (*(a5 + 95) < 0)
      {
        operator delete(*(a5 + 72));
      }

      *(a5 + 72) = v71;
      v13 = v72;
      HIBYTE(v72) = 0;
      LOBYTE(v71) = 0;
      v14 = v73;
      *(a5 + 88) = v13;
      *(a5 + 96) = v14;
      if (*(a5 + 127) < 0)
      {
        operator delete(*(a5 + 104));
      }

      *(a5 + 104) = v74;
      *(a5 + 120) = v75;
      HIBYTE(v75) = 0;
      LOBYTE(v74) = 0;
      *(a5 + 128) = v76;
      if (*(a5 + 159) < 0)
      {
        operator delete(*(a5 + 136));
      }

      *(a5 + 136) = v77;
      *(a5 + 152) = v78;
      HIBYTE(v78) = 0;
      LOBYTE(v77) = 0;
      *(a5 + 160) = v79;
      if (*(a5 + 191) < 0)
      {
        operator delete(*(a5 + 168));
      }

      *(a5 + 168) = v80;
      *(a5 + 184) = v81;
      HIBYTE(v81) = 0;
      LOBYTE(v80) = 0;
      *(a5 + 192) = v82;
      if (*(a5 + 231) < 0)
      {
        operator delete(*(a5 + 208));
      }

      *(a5 + 208) = v83;
      *(a5 + 224) = v84;
      HIBYTE(v84) = 0;
      LOBYTE(v83) = 0;
      *(a5 + 232) = v85;
      if (*(a5 + 271) < 0)
      {
        operator delete(*(a5 + 248));
      }

      *(a5 + 248) = v86;
      *(a5 + 264) = v87;
      HIBYTE(v87) = 0;
      LOBYTE(v86) = 0;
      *(a5 + 272) = v88;
      if (*(a5 + 311) < 0)
      {
        operator delete(*(a5 + 288));
      }

      *(a5 + 288) = v89;
      *(a5 + 304) = v90;
      HIBYTE(v90) = 0;
      LOBYTE(v89) = 0;
      *v61 = v91;
      if (*(a5 + 351) < 0)
      {
        operator delete(*v59);
      }

      *v59 = v92;
      *(v59 + 16) = v93;
      HIBYTE(v93) = 0;
      LOBYTE(v92) = 0;
      *(a5 + 352) = v94;
      if (*(a5 + 391) < 0)
      {
        operator delete(*(a5 + 368));
      }

      *(a5 + 368) = v95;
      *(a5 + 384) = v96;
      HIBYTE(v96) = 0;
      LOBYTE(v95) = 0;
      *v51 = v97;
      if (*(a5 + 431) < 0)
      {
        operator delete(*v58);
      }

      *v58 = v98;
      *(v58 + 16) = v99;
      HIBYTE(v99) = 0;
      LOBYTE(v98) = 0;
      *(a5 + 432) = v100;
      if (*(a5 + 463) < 0)
      {
        operator delete(*v57);
      }

      *v57 = v101;
      *(v57 + 16) = v102;
      HIBYTE(v102) = 0;
      LOBYTE(v101) = 0;
      *(a5 + 464) = v103;
      if (*(a5 + 495) < 0)
      {
        operator delete(*v56);
      }

      *v56 = v104;
      *(v56 + 16) = v105;
      HIBYTE(v105) = 0;
      LOBYTE(v104) = 0;
      *(a5 + 496) = v106;
      if (*(a5 + 527) < 0)
      {
        operator delete(*v55);
      }

      *v55 = v107;
      *(v55 + 16) = v108;
      HIBYTE(v108) = 0;
      LOBYTE(v107) = 0;
      *(a5 + 528) = v109;
      if (*(a5 + 559) < 0)
      {
        operator delete(*v54);
      }

      *v54 = v110;
      *(v54 + 16) = v111;
      HIBYTE(v111) = 0;
      LOBYTE(v110) = 0;
      *(a5 + 560) = v112;
      if (*(a5 + 591) < 0)
      {
        operator delete(*v53);
      }

      *v53 = v113;
      *(v53 + 16) = v114;
      HIBYTE(v114) = 0;
      LOBYTE(v113) = 0;
      std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>>::~__tuple_impl(__str);
      if (XofIntegralType<unsigned char>::DecodeFromHexData(a5, a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a5 + 32), a2, a3) != 1 || XofIntegralType<unsigned short>::DecodeFromHexData((a5 + 64), a2, a3) != 1 || XofIntegralType<short>::DecodeFromHexData((a5 + 96), a2, a3) != 1 || XofIntegralType<signed char>::DecodeFromHexData((a5 + 128), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a5 + 160), a2, a3) != 1 || XofIntegralType<int>::DecodeFromHexData((a5 + 192), a2, a3) != 1 || XofIntegralType<int>::DecodeFromHexData((a5 + 232), a2, a3) != 1 || XofIntegralType<int>::DecodeFromHexData((a5 + 272), a2, a3) != 1 || XofIntegralType<int>::DecodeFromHexData(v61, a2, a3) != 1 || XofIntegralType<int>::DecodeFromHexData((a5 + 352), a2, a3) != 1 || !XofGenericCodec::Decode<11ul,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>>(a5, a2, a3))
      {
        if (g_LbsOsaTrace_Config < 2)
        {
          goto LABEL_76;
        }

        bzero(__str, 0x3C6uLL);
        v28 = mach_continuous_time();
        if (a6 > 7)
        {
          v29 = "   ";
        }

        else
        {
          v29 = off_29EF06518[a6];
        }

        v30 = *&g_MacClockTicksToMsRelation;
        std::string::basic_string[abi:ne200100]<0>(__p, v29);
        if (v63 >= 0)
        {
          v31 = __p;
        }

        else
        {
          v31 = __p[0];
        }

        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Broadcast Ephemeris decode failure, constellation Id = [ %s ], sequence Id = [ %d ]\n", (v30 * v28), "GNC", 87, "DecodeSVs", v31, v60 + 1);
        if (v63 < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_75;
      }

      v15 = *(a5 + 3);
      v16 = *v52;
      if (*v52)
      {
        v17 = v52;
        v18 = *v52;
        do
        {
          v19 = *(v18 + 28);
          v20 = v19 >= v15;
          v21 = v19 < v15;
          if (v20)
          {
            v17 = v18;
          }

          v18 = *(v18 + 8 * v21);
        }

        while (v18);
        if (v17 != v52 && v15 >= *(v17 + 28))
        {
          break;
        }
      }

      v22 = *(a5 + 35);
      v23 = *(a5 + 102);
      v48 = *(a5 + 131);
      v49 = *(a5 + 70);
      v46 = *(a5 + 204);
      v47 = *(a5 + 163);
      v44 = *(a5 + 284);
      v45 = *(a5 + 244);
      v42 = *(a5 + 364);
      v43 = *(a5 + 324);
      v40 = *(a5 + 438);
      v41 = *(a5 + 404);
      v38 = *(a5 + 502);
      v39 = *(a5 + 470);
      v24 = *(a5 + 531);
      if (!v16)
      {
LABEL_63:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v25 = v16;
          v26 = *(v16 + 28);
          if (v26 <= v15)
          {
            break;
          }

          v16 = *v25;
          if (!*v25)
          {
            goto LABEL_63;
          }
        }

        if (v26 >= v15)
        {
          break;
        }

        v16 = v25[1];
        if (!v16)
        {
          goto LABEL_63;
        }
      }

      v10 = v60 + 1;
      if (v60 + 1 >= *v50)
      {
        goto LABEL_65;
      }
    }

    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v33 = mach_continuous_time();
      if (a6 > 7)
      {
        v34 = "   ";
      }

      else
      {
        v34 = off_29EF06518[a6];
      }

      v35 = *&g_MacClockTicksToMsRelation;
      std::string::basic_string[abi:ne200100]<0>(__p, v34);
      if (v63 >= 0)
      {
        v36 = __p;
      }

      else
      {
        v36 = __p[0];
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Duplicate entry found for Broadcast Ephemeris data: Satellite Id = [ %s ]\n", (v35 * v33), "GNC", 87, "DecodeSVs", v36);
      if (v63 < 0)
      {
        operator delete(__p[0]);
      }

LABEL_75:
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

LABEL_76:
    result = 5;
  }

  else
  {
LABEL_65:
    result = 1;
  }

  v32 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t XofBrdcstEph::DecodeSVs<std::map<unsigned char,XofGalileoEphemeris>,XofGalileoEphemerisCodec>(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v44 = *MEMORY[0x29EDCA608];
  v7 = a4 + 48 * a6;
  v9 = *(v7 + 18);
  v8 = (v7 + 18);
  if (v9)
  {
    v15 = 0;
    v16 = (a7 + 8);
    while (1)
    {
      bzero(__str, 0x428uLL);
      XofGalileoEphemerisCodec::XofGalileoEphemerisCodec(__str);
      std::__memberwise_forward_assign[abi:ne200100]<std::tuple<XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>,std::tuple<XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul>(a5, __str);
      std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(__str);
      if (!XofGalileoEphemerisCodec::Decode(a5, a2, a3))
      {
        if (g_LbsOsaTrace_Config < 2)
        {
          goto LABEL_34;
        }

        bzero(__str, 0x3C6uLL);
        v24 = mach_continuous_time();
        if (a6 > 7)
        {
          v25 = "   ";
        }

        else
        {
          v25 = off_29EF06518[a6];
        }

        v28 = *&g_MacClockTicksToMsRelation;
        std::string::basic_string[abi:ne200100]<0>(__p, v25);
        if ((SBYTE7(v34) & 0x80u) == 0)
        {
          v29 = __p;
        }

        else
        {
          v29 = __p[0];
        }

        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Broadcast Ephemeris decode failure, constellation Id = [ %s ], sequence Id = [ %d ]\n", (v28 * v24), "GNC", 87, "DecodeSVs", v29, v15 + 1);
        if (SBYTE7(v34) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_33;
      }

      v17 = *(a5 + 3);
      v18 = *v16;
      if (*v16)
      {
        v19 = v16;
        do
        {
          v20 = *(v18 + 28);
          v21 = v20 >= v17;
          v22 = v20 < v17;
          if (v21)
          {
            v19 = v18;
          }

          v18 = *(v18 + 8 * v22);
        }

        while (v18);
        if (v19 != v16 && v17 >= *(v19 + 28))
        {
          break;
        }
      }

      XofGalileoEphemeris::XofGalileoEphemeris(__p, a5);
      __str[0] = v17;
      v40 = v34;
      v41 = v35;
      v42 = v36;
      v43 = v37;
      v39 = *__p;
      std::__tree<std::__value_type<unsigned char,XofGalileoEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGalileoEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGalileoEphemeris>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char,XofGalileoEphemeris>>(a7, v17);
      if (++v15 >= *v8)
      {
        goto LABEL_13;
      }
    }

    if (g_LbsOsaTrace_Config < 2)
    {
      goto LABEL_34;
    }

    bzero(__str, 0x3C6uLL);
    v26 = mach_continuous_time();
    if (a6 > 7)
    {
      v27 = "   ";
    }

    else
    {
      v27 = off_29EF06518[a6];
    }

    v30 = *&g_MacClockTicksToMsRelation;
    std::string::basic_string[abi:ne200100]<0>(__p, v27);
    if ((SBYTE7(v34) & 0x80u) == 0)
    {
      v31 = __p;
    }

    else
    {
      v31 = __p[0];
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Duplicate entry found for Broadcast Ephemeris data: Satellite Id = [ %s ]\n", (v30 * v26), "GNC", 87, "DecodeSVs", v31);
    if (SBYTE7(v34) < 0)
    {
      operator delete(__p[0]);
    }

LABEL_33:
    gnssOsa_PrintLog(__str, 2, 1, 0);
LABEL_34:
    result = 5;
  }

  else
  {
LABEL_13:
    result = 1;
  }

  v32 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t XofBrdcstEph::DecodeSVs<std::map<unsigned char,XofGlonassBrdcastEphemeris>,XofGlonassBrdcastEphemerisCodec>(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v134 = *MEMORY[0x29EDCA608];
  v54 = (a4 + 48 * a6 + 18);
  if (*v54)
  {
    v10 = 0;
    v55 = (a7 + 8);
    v66 = a5 + 376;
    v67 = (a5 + 440);
    v68 = (a5 + 360);
    v64 = a5 + 496;
    v65 = a5 + 456;
    v56 = (a5 + 520);
    v62 = a5 + 576;
    v63 = a5 + 536;
    v60 = a5 + 640;
    v61 = a5 + 608;
    v58 = a5 + 704;
    v59 = a5 + 672;
    while (1)
    {
      v57 = v10;
      bzero(__str, 0x2D8uLL);
      XofGlonassBrdcastEphemerisCodec::XofGlonassBrdcastEphemerisCodec(__str);
      *a5 = *__str;
      if (*(a5 + 31) < 0)
      {
        operator delete(*(a5 + 8));
      }

      *(a5 + 8) = v72;
      *(a5 + 24) = v73;
      HIBYTE(v73) = 0;
      LOBYTE(v72) = 0;
      *(a5 + 32) = v74;
      if (*(a5 + 63) < 0)
      {
        operator delete(*(a5 + 40));
      }

      *(a5 + 40) = v75;
      v11 = v76;
      HIBYTE(v76) = 0;
      LOBYTE(v75) = 0;
      v12 = v77;
      *(a5 + 56) = v11;
      *(a5 + 64) = v12;
      if (*(a5 + 95) < 0)
      {
        operator delete(*(a5 + 72));
      }

      *(a5 + 72) = v78;
      *(a5 + 88) = v79;
      HIBYTE(v79) = 0;
      LOBYTE(v78) = 0;
      *(a5 + 96) = v80;
      if (*(a5 + 135) < 0)
      {
        operator delete(*(a5 + 112));
      }

      *(a5 + 112) = v81;
      v13 = v82;
      HIBYTE(v82) = 0;
      LOBYTE(v81) = 0;
      v14 = v83;
      *(a5 + 128) = v13;
      *(a5 + 136) = v14;
      if (*(a5 + 167) < 0)
      {
        operator delete(*(a5 + 144));
      }

      *(a5 + 144) = v84;
      *(a5 + 160) = v85;
      HIBYTE(v85) = 0;
      LOBYTE(v84) = 0;
      *(a5 + 168) = v86;
      if (*(a5 + 199) < 0)
      {
        operator delete(*(a5 + 176));
      }

      *(a5 + 176) = v87;
      *(a5 + 192) = v88;
      HIBYTE(v88) = 0;
      LOBYTE(v87) = 0;
      *(a5 + 200) = v89;
      if (*(a5 + 231) < 0)
      {
        operator delete(*(a5 + 208));
      }

      *(a5 + 208) = v90;
      *(a5 + 224) = v91;
      HIBYTE(v91) = 0;
      LOBYTE(v90) = 0;
      *(a5 + 232) = v92;
      if (*(a5 + 263) < 0)
      {
        operator delete(*(a5 + 240));
      }

      *(a5 + 240) = v93;
      *(a5 + 256) = v94;
      HIBYTE(v94) = 0;
      LOBYTE(v93) = 0;
      *(a5 + 264) = v95;
      if (*(a5 + 295) < 0)
      {
        operator delete(*(a5 + 272));
      }

      *(a5 + 272) = v96;
      *(a5 + 288) = v97;
      HIBYTE(v97) = 0;
      LOBYTE(v96) = 0;
      *(a5 + 296) = v98;
      if (*(a5 + 327) < 0)
      {
        operator delete(*(a5 + 304));
      }

      *(a5 + 304) = v99;
      *(a5 + 320) = v100;
      HIBYTE(v100) = 0;
      LOBYTE(v99) = 0;
      *(a5 + 328) = v101;
      if (*(a5 + 359) < 0)
      {
        operator delete(*(a5 + 336));
      }

      *(a5 + 336) = v102;
      *(a5 + 352) = v103;
      HIBYTE(v103) = 0;
      LOBYTE(v102) = 0;
      *v68 = v104;
      if (*(a5 + 399) < 0)
      {
        operator delete(*v66);
      }

      *v66 = v105;
      *(v66 + 16) = v106;
      HIBYTE(v106) = 0;
      LOBYTE(v105) = 0;
      *(a5 + 400) = v107;
      if (*(a5 + 439) < 0)
      {
        operator delete(*(a5 + 416));
      }

      *(a5 + 416) = v108;
      *(a5 + 432) = v109;
      HIBYTE(v109) = 0;
      LOBYTE(v108) = 0;
      *v67 = v110;
      if (*(a5 + 479) < 0)
      {
        operator delete(*v65);
      }

      *v65 = v111;
      *(v65 + 16) = v112;
      HIBYTE(v112) = 0;
      LOBYTE(v111) = 0;
      *(a5 + 480) = v113;
      if (*(a5 + 519) < 0)
      {
        operator delete(*v64);
      }

      *v64 = v114;
      *(v64 + 16) = v115;
      HIBYTE(v115) = 0;
      LOBYTE(v114) = 0;
      *v56 = v116;
      if (*(a5 + 559) < 0)
      {
        operator delete(*v63);
      }

      *v63 = v117;
      *(v63 + 16) = v118;
      HIBYTE(v118) = 0;
      LOBYTE(v117) = 0;
      *(a5 + 560) = v119;
      if (*(a5 + 599) < 0)
      {
        operator delete(*v62);
      }

      *v62 = v120;
      *(v62 + 16) = v121;
      HIBYTE(v121) = 0;
      LOBYTE(v120) = 0;
      *(a5 + 600) = v122;
      if (*(a5 + 631) < 0)
      {
        operator delete(*v61);
      }

      *v61 = v123;
      *(v61 + 16) = v124;
      HIBYTE(v124) = 0;
      LOBYTE(v123) = 0;
      *(a5 + 632) = v125;
      if (*(a5 + 663) < 0)
      {
        operator delete(*v60);
      }

      *v60 = v126;
      *(v60 + 16) = v127;
      HIBYTE(v127) = 0;
      LOBYTE(v126) = 0;
      *(a5 + 664) = v128;
      if (*(a5 + 695) < 0)
      {
        operator delete(*v59);
      }

      *v59 = v129;
      *(v59 + 16) = v130;
      HIBYTE(v130) = 0;
      LOBYTE(v129) = 0;
      *(a5 + 696) = v131;
      if (*(a5 + 727) < 0)
      {
        operator delete(*v58);
      }

      *v58 = v132;
      *(v58 + 16) = v133;
      HIBYTE(v133) = 0;
      LOBYTE(v132) = 0;
      std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>>::~__tuple_impl(__str);
      if (XofIntegralType<unsigned char>::DecodeFromHexData(a5, a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a5 + 32), a2, a3) != 1 || XofIntegralType<unsigned short>::DecodeFromHexData((a5 + 64), a2, a3) != 1 || XofIntegralType<int>::DecodeFromHexData((a5 + 96), a2, a3) != 1 || XofIntegralType<short>::DecodeFromHexData((a5 + 136), a2, a3) != 1 || XofIntegralType<signed char>::DecodeFromHexData((a5 + 168), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a5 + 200), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a5 + 232), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a5 + 264), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a5 + 296), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a5 + 328), a2, a3) != 1 || XofIntegralType<int>::DecodeFromHexData(v68, a2, a3) != 1 || XofIntegralType<int>::DecodeFromHexData((a5 + 400), a2, a3) != 1 || XofIntegralType<int>::DecodeFromHexData(v67, a2, a3) != 1 || XofIntegralType<int>::DecodeFromHexData((a5 + 480), a2, a3) != 1 || !XofGenericCodec::Decode<15ul,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>>(a5, a2, a3))
      {
        if (g_LbsOsaTrace_Config < 2)
        {
          goto LABEL_88;
        }

        bzero(__str, 0x3C6uLL);
        v28 = mach_continuous_time();
        if (a6 > 7)
        {
          v29 = "   ";
        }

        else
        {
          v29 = off_29EF06518[a6];
        }

        v30 = *&g_MacClockTicksToMsRelation;
        std::string::basic_string[abi:ne200100]<0>(__p, v29);
        if (v70 >= 0)
        {
          v31 = __p;
        }

        else
        {
          v31 = __p[0];
        }

        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Broadcast Ephemeris decode failure, constellation Id = [ %s ], sequence Id = [ %d ]\n", (v30 * v28), "GNC", 87, "DecodeSVs", v31, v57 + 1);
        if (v70 < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_87;
      }

      v15 = *(a5 + 3);
      v16 = *v55;
      if (*v55)
      {
        v17 = v55;
        v18 = *v55;
        do
        {
          v19 = *(v18 + 28);
          v20 = v19 >= v15;
          v21 = v19 < v15;
          if (v20)
          {
            v17 = v18;
          }

          v18 = *(v18 + 8 * v21);
        }

        while (v18);
        if (v17 != v55 && v15 >= *(v17 + 28))
        {
          break;
        }
      }

      v22 = *(a5 + 35);
      v23 = *(a5 + 108);
      v52 = *(a5 + 142);
      v53 = *(a5 + 70);
      v50 = *(a5 + 203);
      v51 = *(a5 + 171);
      v48 = *(a5 + 267);
      v49 = *(a5 + 235);
      v46 = *(a5 + 331);
      v47 = *(a5 + 299);
      v44 = *(a5 + 412);
      v45 = *(a5 + 372);
      v42 = *(a5 + 492);
      v43 = *(a5 + 452);
      v40 = *(a5 + 572);
      v41 = *(a5 + 532);
      v38 = *(a5 + 635);
      v39 = *(a5 + 603);
      v24 = *(a5 + 667);
      if (!v16)
      {
LABEL_75:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v25 = v16;
          v26 = *(v16 + 28);
          if (v26 <= v15)
          {
            break;
          }

          v16 = *v25;
          if (!*v25)
          {
            goto LABEL_75;
          }
        }

        if (v26 >= v15)
        {
          break;
        }

        v16 = v25[1];
        if (!v16)
        {
          goto LABEL_75;
        }
      }

      v10 = v57 + 1;
      if (v57 + 1 >= *v54)
      {
        goto LABEL_77;
      }
    }

    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v33 = mach_continuous_time();
      if (a6 > 7)
      {
        v34 = "   ";
      }

      else
      {
        v34 = off_29EF06518[a6];
      }

      v35 = *&g_MacClockTicksToMsRelation;
      std::string::basic_string[abi:ne200100]<0>(__p, v34);
      if (v70 >= 0)
      {
        v36 = __p;
      }

      else
      {
        v36 = __p[0];
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Duplicate entry found for Broadcast Ephemeris data: Satellite Id = [ %s ]\n", (v35 * v33), "GNC", 87, "DecodeSVs", v36);
      if (v70 < 0)
      {
        operator delete(__p[0]);
      }

LABEL_87:
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

LABEL_88:
    result = 5;
  }

  else
  {
LABEL_77:
    result = 1;
  }

  v32 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t XofBrdcstEph::DecodeSVs<std::map<unsigned char,XofBeidouEphemeris>,XofBeidouEphemerisCodec>(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v52 = *MEMORY[0x29EDCA608];
  v7 = a4 + 48 * a6;
  v9 = *(v7 + 18);
  v8 = (v7 + 18);
  if (v9)
  {
    v15 = 0;
    v16 = (a7 + 8);
    while (1)
    {
      bzero(__str, 0x700uLL);
      XofBeidouEphemerisCodec::XofBeidouEphemerisCodec(__str);
      std::__memberwise_forward_assign[abi:ne200100]<std::tuple<XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<long long>,XofIntegralType<unsigned long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>>,std::tuple<XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<long long>,XofIntegralType<unsigned long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<long long>,XofIntegralType<unsigned long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>,0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul,31ul,32ul,33ul,34ul,35ul,36ul,37ul,38ul,39ul,40ul,41ul,42ul,43ul,44ul,45ul,46ul,47ul,48ul>( a5,  __str);
      std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul,31ul,32ul,33ul,34ul,35ul,36ul,37ul,38ul,39ul,40ul,41ul,42ul,43ul,44ul,45ul,46ul,47ul,48ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<long long>,XofIntegralType<unsigned long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>>::~__tuple_impl(__str);
      if (!XofBeidouEphemerisCodec::Decode(a5, a2, a3))
      {
        if (g_LbsOsaTrace_Config < 2)
        {
          goto LABEL_34;
        }

        bzero(__str, 0x3C6uLL);
        v24 = mach_continuous_time();
        if (a6 > 7)
        {
          v25 = "   ";
        }

        else
        {
          v25 = off_29EF06518[a6];
        }

        v28 = *&g_MacClockTicksToMsRelation;
        std::string::basic_string[abi:ne200100]<0>(__p, v25);
        if ((SBYTE7(v34) & 0x80u) == 0)
        {
          v29 = __p;
        }

        else
        {
          v29 = __p[0];
        }

        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Broadcast Ephemeris decode failure, constellation Id = [ %s ], sequence Id = [ %d ]\n", (v28 * v24), "GNC", 87, "DecodeSVs", v29, v15 + 1);
        if (SBYTE7(v34) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_33;
      }

      v17 = *(a5 + 3);
      v18 = *v16;
      if (*v16)
      {
        v19 = v16;
        do
        {
          v20 = *(v18 + 32);
          v21 = v20 >= v17;
          v22 = v20 < v17;
          if (v21)
          {
            v19 = v18;
          }

          v18 = *(v18 + 8 * v22);
        }

        while (v18);
        if (v19 != v16 && v17 >= *(v19 + 32))
        {
          break;
        }
      }

      XofBeidouEphemeris::XofBeidouEphemeris(__p, a5);
      v48 = v38;
      v49 = v39;
      v50 = v40;
      v44 = v34;
      v45 = v35;
      v46 = v36;
      v47 = v37;
      __str[0] = v17;
      v51 = v41;
      v43 = *__p;
      std::__tree<std::__value_type<unsigned char,XofBeidouEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofBeidouEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofBeidouEphemeris>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char,XofBeidouEphemeris>>(a7, v17);
      if (++v15 >= *v8)
      {
        goto LABEL_13;
      }
    }

    if (g_LbsOsaTrace_Config < 2)
    {
      goto LABEL_34;
    }

    bzero(__str, 0x3C6uLL);
    v26 = mach_continuous_time();
    if (a6 > 7)
    {
      v27 = "   ";
    }

    else
    {
      v27 = off_29EF06518[a6];
    }

    v30 = *&g_MacClockTicksToMsRelation;
    std::string::basic_string[abi:ne200100]<0>(__p, v27);
    if ((SBYTE7(v34) & 0x80u) == 0)
    {
      v31 = __p;
    }

    else
    {
      v31 = __p[0];
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Duplicate entry found for Broadcast Ephemeris data: Satellite Id = [ %s ]\n", (v30 * v26), "GNC", 87, "DecodeSVs", v31);
    if (SBYTE7(v34) < 0)
    {
      operator delete(__p[0]);
    }

LABEL_33:
    gnssOsa_PrintLog(__str, 2, 1, 0);
LABEL_34:
    result = 5;
  }

  else
  {
LABEL_13:
    result = 1;
  }

  v32 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t XofBrdcstEph::DecodeSVs<std::map<unsigned char,XofNavicEphemeris>,XofNavicEphemerisCodec>(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v44 = *MEMORY[0x29EDCA608];
  v7 = a4 + 48 * a6;
  v9 = *(v7 + 18);
  v8 = (v7 + 18);
  if (v9)
  {
    v15 = 0;
    v16 = (a7 + 8);
    while (1)
    {
      bzero(__str, 0x410uLL);
      XofNavicEphemerisCodec::XofNavicEphemerisCodec(__str);
      std::__memberwise_forward_assign[abi:ne200100]<std::tuple<XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>,std::tuple<XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul>(a5, __str);
      std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(__str);
      if (!XofNavicEphemerisCodec::Decode(a5, a2, a3))
      {
        if (g_LbsOsaTrace_Config < 2)
        {
          goto LABEL_34;
        }

        bzero(__str, 0x3C6uLL);
        v24 = mach_continuous_time();
        if (a6 > 7)
        {
          v25 = "   ";
        }

        else
        {
          v25 = off_29EF06518[a6];
        }

        v28 = *&g_MacClockTicksToMsRelation;
        std::string::basic_string[abi:ne200100]<0>(__p, v25);
        if ((SBYTE7(v34) & 0x80u) == 0)
        {
          v29 = __p;
        }

        else
        {
          v29 = __p[0];
        }

        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Broadcast Ephemeris decode failure, constellation Id = [ %s ], sequence Id = [ %d ]\n", (v28 * v24), "GNC", 87, "DecodeSVs", v29, v15 + 1);
        if (SBYTE7(v34) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_33;
      }

      v17 = *(a5 + 3);
      v18 = *v16;
      if (*v16)
      {
        v19 = v16;
        do
        {
          v20 = *(v18 + 28);
          v21 = v20 >= v17;
          v22 = v20 < v17;
          if (v21)
          {
            v19 = v18;
          }

          v18 = *(v18 + 8 * v22);
        }

        while (v18);
        if (v19 != v16 && v17 >= *(v19 + 28))
        {
          break;
        }
      }

      XofNavicEphemeris::XofNavicEphemeris(__p, a5);
      __str[0] = v17;
      v40 = v34;
      v41 = v35;
      v42 = v36;
      v43 = v37;
      v39 = *__p;
      std::__tree<std::__value_type<unsigned char,XofNavicEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofNavicEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofNavicEphemeris>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char,XofNavicEphemeris>>(a7, v17);
      if (++v15 >= *v8)
      {
        goto LABEL_13;
      }
    }

    if (g_LbsOsaTrace_Config < 2)
    {
      goto LABEL_34;
    }

    bzero(__str, 0x3C6uLL);
    v26 = mach_continuous_time();
    if (a6 > 7)
    {
      v27 = "   ";
    }

    else
    {
      v27 = off_29EF06518[a6];
    }

    v30 = *&g_MacClockTicksToMsRelation;
    std::string::basic_string[abi:ne200100]<0>(__p, v27);
    if ((SBYTE7(v34) & 0x80u) == 0)
    {
      v31 = __p;
    }

    else
    {
      v31 = __p[0];
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Duplicate entry found for Broadcast Ephemeris data: Satellite Id = [ %s ]\n", (v30 * v26), "GNC", 87, "DecodeSVs", v31);
    if (SBYTE7(v34) < 0)
    {
      operator delete(__p[0]);
    }

LABEL_33:
    gnssOsa_PrintLog(__str, 2, 1, 0);
LABEL_34:
    result = 5;
  }

  else
  {
LABEL_13:
    result = 1;
  }

  v32 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t XofExtEph::Decode(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v22[136] = *MEMORY[0x29EDCA608];
  bzero(v22, 0x440uLL);
  XofGpsQzssEphemerisCodec::XofGpsQzssEphemerisCodec(v22);
  v9 = XofExtEph::DecodeSVs<std::map<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,XofGpsQzssEphemerisCodec>(v8, v7, v3, v5, v22, 0, v8);
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul,31ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(v22);
  if (v9 != 1)
  {
    goto LABEL_9;
  }

  bzero(v21, 0x440uLL);
  XofGpsQzssEphemerisCodec::XofGpsQzssEphemerisCodec(v21);
  v10 = XofExtEph::DecodeSVs<std::map<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,XofGpsQzssEphemerisCodec>(v8, v7, v3, v5, v21, 2u, v8 + 72);
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul,31ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(v21);
  if (v10 != 1)
  {
    goto LABEL_9;
  }

  bzero(v20, 0x428uLL);
  XofGalileoEphemerisCodec::XofGalileoEphemerisCodec(v20);
  v11 = XofExtEph::DecodeSVs<std::map<unsigned char,std::map<unsigned char,XofGalileoEphemeris>>,XofGalileoEphemerisCodec>(v8, v7, v3, v5, v20, 3u, v8 + 48);
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(v20);
  if (v11 != 1)
  {
    goto LABEL_9;
  }

  bzero(v19, 0x440uLL);
  XofGpsQzssEphemerisCodec::XofGpsQzssEphemerisCodec(v19);
  v12 = XofExtEph::DecodeSVs<std::map<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,XofGpsQzssEphemerisCodec>(v8, v7, v3, v5, v19, 4u, v8 + 24);
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul,31ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(v19);
  if (v12 != 1)
  {
    goto LABEL_9;
  }

  bzero(v18, 0x700uLL);
  XofBeidouEphemerisCodec::XofBeidouEphemerisCodec(v18);
  v13 = XofExtEph::DecodeSVs<std::map<unsigned char,std::map<unsigned char,XofBeidouEphemeris>>,XofBeidouEphemerisCodec>(v8, v7, v3, v5, v18, 5u, v8 + 96);
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul,31ul,32ul,33ul,34ul,35ul,36ul,37ul,38ul,39ul,40ul,41ul,42ul,43ul,44ul,45ul,46ul,47ul,48ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<long long>,XofIntegralType<unsigned long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>>::~__tuple_impl(v18);
  if (v13 == 1)
  {
    bzero(&v17, 0x410uLL);
    XofNavicEphemerisCodec::XofNavicEphemerisCodec(&v17);
    v14 = XofExtEph::DecodeSVs<std::map<unsigned char,std::map<unsigned char,XofNavicEphemeris>>,XofNavicEphemerisCodec>(v8, v7, v3, v5, &v17, 6u, v8 + 120);
    std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(&v17);
    if (v14 == 1)
    {
      result = 1;
    }

    else
    {
      result = 5;
    }
  }

  else
  {
LABEL_9:
    result = 5;
  }

  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t XofExtEph::DecodeSVs<std::map<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,XofGpsQzssEphemerisCodec>(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v51 = *MEMORY[0x29EDCA608];
  v7 = (a4 + 48 * a6);
  v8 = v7[20];
  if (v7[20])
  {
    v10 = 0;
    v11 = (a7 + 8);
    v12 = v7[19];
    while (1)
    {
      ++v10;
      if (v12)
      {
        break;
      }

LABEL_33:
      if (v10 >= v8)
      {
        goto LABEL_34;
      }
    }

    v13 = 0;
    v42 = v10;
    v14 = v10;
    while (1)
    {
      bzero(__str, 0x440uLL);
      XofGpsQzssEphemerisCodec::XofGpsQzssEphemerisCodec(__str);
      std::__memberwise_forward_assign[abi:ne200100]<std::tuple<XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>,std::tuple<XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul,31ul>(a5, __str);
      std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul,31ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(__str);
      if (!XofGpsQzssEphemerisCodec::Decode(a5, a2, a3))
      {
        break;
      }

      v15 = *(a5 + 3);
      v16 = *v11;
      if (!*v11)
      {
        goto LABEL_14;
      }

      v17 = v11;
      do
      {
        v18 = *(v16 + 32);
        v19 = v18 >= v14;
        v20 = v18 < v14;
        if (v19)
        {
          v17 = v16;
        }

        v16 = *(v16 + 8 * v20);
      }

      while (v16);
      if (v17 != v11 && *(v17 + 32) <= v14)
      {
        v26 = v17[6];
        v24 = v17 + 6;
        v25 = v26;
        if (v26)
        {
          v27 = v24;
          do
          {
            v28 = *(v25 + 28);
            v19 = v28 >= v15;
            v29 = v28 < v15;
            if (v19)
            {
              v27 = v25;
            }

            v25 = v25[v29];
          }

          while (v25);
          if (v27 != v24 && v15 >= *(v27 + 28))
          {
            if (g_LbsOsaTrace_Config >= 2)
            {
              bzero(__str, 0x3C6uLL);
              v37 = mach_continuous_time();
              if (a6 > 7)
              {
                v38 = "   ";
              }

              else
              {
                v38 = off_29EF06518[a6];
              }

              v39 = *&g_MacClockTicksToMsRelation;
              std::string::basic_string[abi:ne200100]<0>(__p, v38);
              if (v48[7] >= 0)
              {
                v40 = __p;
              }

              else
              {
                v40 = __p[0];
              }

              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Duplicate entry found for Extended Ephemeris data, constellation Id = [ %s ], satellite Id = [ %d ], block number = [ %d ]\n", (v39 * v37), "GNC", 87, "DecodeSVs", v40, v15, v42);
              if ((v48[7] & 0x80000000) != 0)
              {
                operator delete(__p[0]);
              }

              gnssOsa_PrintLog(__str, 2, 1, 0);
            }

            goto LABEL_45;
          }
        }

        v30 = (v24 - 1);
        XofGpsQzssEphemeris::XofGpsQzssEphemeris(__p, a5);
        v45 = *__p;
        *&v50[26] = *&v48[10];
        *&v50[42] = *&v48[26];
        *&v50[56] = *&v48[40];
        __str[0] = v15;
        *v50 = *__p;
        *&v50[16] = *v48;
        *&v50[24] = *&v48[8];
        std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char,XofGpsQzssEphemeris>>(v30, v15);
      }

      else
      {
LABEL_14:
        *(&v45 + 1) = 0;
        v46 = 0;
        *&v45 = &v45 + 8;
        XofGpsQzssEphemeris::XofGpsQzssEphemeris(__p, a5);
        v7[21] = BYTE3(__p[0]);
        __str[0] = v15;
        *&v50[16] = *v48;
        *&v50[32] = *&v48[16];
        *&v50[48] = *&v48[32];
        *&v50[64] = *&v48[48];
        *v50 = *__p;
        std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char,XofGpsQzssEphemeris>>(&v45, v15);
        __str[0] = v14;
        std::map<unsigned char,XofGpsQzssEphemeris>::map[abi:ne200100](&v50[4], &v45);
        v21 = *v11;
        if (!*v11)
        {
LABEL_20:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v22 = v21;
            v23 = *(v21 + 32);
            if (v23 <= __str[0])
            {
              break;
            }

            v21 = *v22;
            if (!*v22)
            {
              goto LABEL_20;
            }
          }

          if (v23 >= __str[0])
          {
            break;
          }

          v21 = v22[1];
          if (!v21)
          {
            goto LABEL_20;
          }
        }

        std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(&v50[4], *&v50[12]);
        std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(&v45, *(&v45 + 1));
      }

      ++v13;
      v12 = v7[19];
      if (v13 >= v12)
      {
        v8 = v7[20];
        v10 = v42;
        goto LABEL_33;
      }
    }

    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v32 = mach_continuous_time();
      if (a6 > 7)
      {
        v33 = "   ";
      }

      else
      {
        v33 = off_29EF06518[a6];
      }

      v34 = *&g_MacClockTicksToMsRelation;
      std::string::basic_string[abi:ne200100]<0>(__p, v33);
      if (v48[7] >= 0)
      {
        v35 = __p;
      }

      else
      {
        v35 = __p[0];
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Extended Ephemeris decode failure, constellation Id = [ %s ], sequence Id = [ %d ], block number = [ %d ]\n", (v34 * v32), "GNC", 68, "DecodeSVs", v35, v13 + 1, v42);
      if ((v48[7] & 0x80000000) != 0)
      {
        operator delete(__p[0]);
      }

      gnssOsa_PrintLog(__str, 5, 1, 0);
    }

LABEL_45:
    result = 5;
  }

  else
  {
LABEL_34:
    result = 1;
  }

  v36 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298F9C9CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35)
{
  std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(v35 + 8, a35);
  std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(&a21, a22);
  _Unwind_Resume(a1);
}

uint64_t XofExtEph::DecodeSVs<std::map<unsigned char,std::map<unsigned char,XofGalileoEphemeris>>,XofGalileoEphemerisCodec>(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v50 = *MEMORY[0x29EDCA608];
  v7 = (a4 + 48 * a6);
  v8 = v7[20];
  if (v7[20])
  {
    v10 = 0;
    v11 = (a7 + 8);
    v12 = v7[19];
    while (1)
    {
      ++v10;
      if (v12)
      {
        break;
      }

LABEL_33:
      if (v10 >= v8)
      {
        goto LABEL_34;
      }
    }

    v13 = 0;
    v42 = v10;
    v14 = v10;
    while (1)
    {
      bzero(__str, 0x428uLL);
      XofGalileoEphemerisCodec::XofGalileoEphemerisCodec(__str);
      std::__memberwise_forward_assign[abi:ne200100]<std::tuple<XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>,std::tuple<XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul>(a5, __str);
      std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(__str);
      if (!XofGalileoEphemerisCodec::Decode(a5, a2, a3))
      {
        break;
      }

      v15 = *(a5 + 3);
      v16 = *v11;
      if (!*v11)
      {
        goto LABEL_14;
      }

      v17 = v11;
      do
      {
        v18 = *(v16 + 32);
        v19 = v18 >= v14;
        v20 = v18 < v14;
        if (v19)
        {
          v17 = v16;
        }

        v16 = *(v16 + 8 * v20);
      }

      while (v16);
      if (v17 != v11 && *(v17 + 32) <= v14)
      {
        v26 = v17[6];
        v24 = v17 + 6;
        v25 = v26;
        if (v26)
        {
          v27 = v24;
          do
          {
            v28 = *(v25 + 28);
            v19 = v28 >= v15;
            v29 = v28 < v15;
            if (v19)
            {
              v27 = v25;
            }

            v25 = v25[v29];
          }

          while (v25);
          if (v27 != v24 && v15 >= *(v27 + 28))
          {
            if (g_LbsOsaTrace_Config >= 2)
            {
              bzero(__str, 0x3C6uLL);
              v37 = mach_continuous_time();
              if (a6 > 7)
              {
                v38 = "   ";
              }

              else
              {
                v38 = off_29EF06518[a6];
              }

              v39 = *&g_MacClockTicksToMsRelation;
              std::string::basic_string[abi:ne200100]<0>(__p, v38);
              if (__p[23] >= 0)
              {
                v40 = __p;
              }

              else
              {
                v40 = *__p;
              }

              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Duplicate entry found for Extended Ephemeris data, constellation Id = [ %s ], satellite Id = [ %d ], block number = [ %d ]\n", (v39 * v37), "GNC", 87, "DecodeSVs", v40, v15, v42);
              if ((__p[23] & 0x80000000) != 0)
              {
                operator delete(*__p);
              }

              gnssOsa_PrintLog(__str, 2, 1, 0);
            }

            goto LABEL_45;
          }
        }

        v30 = (v24 - 1);
        XofGalileoEphemeris::XofGalileoEphemeris(__p, a5);
        *v49 = *__p;
        *&v49[4] = *&__p[4];
        *&v49[10] = *&__p[10];
        *&v49[26] = *&__p[26];
        *&v49[42] = *&__p[42];
        *&v49[56] = *&__p[56];
        __str[0] = v15;
        *&v49[6] = *&__p[6];
        std::__tree<std::__value_type<unsigned char,XofGalileoEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGalileoEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGalileoEphemeris>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char,XofGalileoEphemeris>>(v30, v15);
      }

      else
      {
LABEL_14:
        v46[0] = 0;
        v46[1] = 0;
        v45 = v46;
        XofGalileoEphemeris::XofGalileoEphemeris(__p, a5);
        v7[21] = __p[21];
        __str[0] = v15;
        *&v49[16] = *&__p[16];
        *&v49[32] = *&__p[32];
        *&v49[48] = *&__p[48];
        *&v49[64] = *&__p[64];
        *v49 = *__p;
        std::__tree<std::__value_type<unsigned char,XofGalileoEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGalileoEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGalileoEphemeris>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char,XofGalileoEphemeris>>(&v45, v15);
        __str[0] = v14;
        std::map<unsigned char,XofGalileoEphemeris>::map[abi:ne200100](&v49[4], &v45);
        v21 = *v11;
        if (!*v11)
        {
LABEL_20:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v22 = v21;
            v23 = *(v21 + 32);
            if (v23 <= __str[0])
            {
              break;
            }

            v21 = *v22;
            if (!*v22)
            {
              goto LABEL_20;
            }
          }

          if (v23 >= __str[0])
          {
            break;
          }

          v21 = v22[1];
          if (!v21)
          {
            goto LABEL_20;
          }
        }

        std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(&v49[4], *&v49[12]);
        std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(&v45, v46[0]);
      }

      ++v13;
      v12 = v7[19];
      if (v13 >= v12)
      {
        v8 = v7[20];
        v10 = v42;
        goto LABEL_33;
      }
    }

    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v32 = mach_continuous_time();
      if (a6 > 7)
      {
        v33 = "   ";
      }

      else
      {
        v33 = off_29EF06518[a6];
      }

      v34 = *&g_MacClockTicksToMsRelation;
      std::string::basic_string[abi:ne200100]<0>(__p, v33);
      if (__p[23] >= 0)
      {
        v35 = __p;
      }

      else
      {
        v35 = *__p;
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Extended Ephemeris decode failure, constellation Id = [ %s ], sequence Id = [ %d ], block number = [ %d ]\n", (v34 * v32), "GNC", 68, "DecodeSVs", v35, v13 + 1, v42);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      gnssOsa_PrintLog(__str, 5, 1, 0);
    }

LABEL_45:
    result = 5;
  }

  else
  {
LABEL_34:
    result = 1;
  }

  v36 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298F9CEE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36)
{
  std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(v36 + 8, a36);
  std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(&a22, a23);
  _Unwind_Resume(a1);
}

uint64_t XofExtEph::DecodeSVs<std::map<unsigned char,std::map<unsigned char,XofBeidouEphemeris>>,XofBeidouEphemerisCodec>(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v65 = *MEMORY[0x29EDCA608];
  v7 = (a4 + 48 * a6);
  v8 = v7[20];
  if (v7[20])
  {
    v10 = 0;
    v11 = (a7 + 8);
    v12 = v7[19];
    while (1)
    {
      ++v10;
      if (v12)
      {
        break;
      }

LABEL_33:
      if (v10 >= v8)
      {
        goto LABEL_34;
      }
    }

    v13 = 0;
    v43 = v10;
    v14 = v10;
    while (1)
    {
      bzero(__str, 0x700uLL);
      XofBeidouEphemerisCodec::XofBeidouEphemerisCodec(__str);
      std::__memberwise_forward_assign[abi:ne200100]<std::tuple<XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<long long>,XofIntegralType<unsigned long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>>,std::tuple<XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<long long>,XofIntegralType<unsigned long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<long long>,XofIntegralType<unsigned long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>,0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul,31ul,32ul,33ul,34ul,35ul,36ul,37ul,38ul,39ul,40ul,41ul,42ul,43ul,44ul,45ul,46ul,47ul,48ul>( a5,  __str);
      std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul,31ul,32ul,33ul,34ul,35ul,36ul,37ul,38ul,39ul,40ul,41ul,42ul,43ul,44ul,45ul,46ul,47ul,48ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<long long>,XofIntegralType<unsigned long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>>::~__tuple_impl(__str);
      if (!XofBeidouEphemerisCodec::Decode(a5, a2, a3))
      {
        break;
      }

      v15 = *(a5 + 3);
      v16 = *v11;
      if (!*v11)
      {
        goto LABEL_14;
      }

      v17 = v11;
      do
      {
        v18 = *(v16 + 32);
        v19 = v18 >= v14;
        v20 = v18 < v14;
        if (v19)
        {
          v17 = v16;
        }

        v16 = *(v16 + 8 * v20);
      }

      while (v16);
      if (v17 != v11 && *(v17 + 32) <= v14)
      {
        v27 = v17[6];
        v25 = v17 + 6;
        v26 = v27;
        if (v27)
        {
          v28 = v25;
          do
          {
            v29 = *(v26 + 32);
            v19 = v29 >= v15;
            v30 = v29 < v15;
            if (v19)
            {
              v28 = v26;
            }

            v26 = v26[v30];
          }

          while (v26);
          if (v28 != v25 && v15 >= *(v28 + 32))
          {
            if (g_LbsOsaTrace_Config >= 2)
            {
              bzero(__str, 0x3C6uLL);
              v38 = mach_continuous_time();
              if (a6 > 7)
              {
                v39 = "   ";
              }

              else
              {
                v39 = off_29EF06518[a6];
              }

              v40 = *&g_MacClockTicksToMsRelation;
              std::string::basic_string[abi:ne200100]<0>(__p, v39);
              if ((SBYTE7(v49) & 0x80u) == 0)
              {
                v41 = __p;
              }

              else
              {
                v41 = __p[0];
              }

              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Duplicate entry found for Extended Ephemeris data, constellation Id = [ %s ], satellite Id = [ %d ], block number = [ %d ]\n", (v40 * v38), "GNC", 87, "DecodeSVs", v41, v15, v43);
              if (SBYTE7(v49) < 0)
              {
                operator delete(__p[0]);
              }

              gnssOsa_PrintLog(__str, 2, 1, 0);
            }

            goto LABEL_45;
          }
        }

        v31 = (v25 - 1);
        XofBeidouEphemeris::XofBeidouEphemeris(__p, a5);
        v62 = v53;
        v63 = v54;
        v64[0] = *v55;
        v58 = v49;
        v59 = v50;
        v60 = v51;
        v61 = v52;
        *(v64 + 14) = *&v55[14];
        v57 = *__p;
        __str[0] = v15;
        std::__tree<std::__value_type<unsigned char,XofBeidouEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofBeidouEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofBeidouEphemeris>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char,XofBeidouEphemeris>>(v31, v15);
      }

      else
      {
LABEL_14:
        v47[0] = 0;
        v47[1] = 0;
        v46 = v47;
        XofBeidouEphemeris::XofBeidouEphemeris(__p, a5);
        v62 = v53;
        v63 = v54;
        v64[0] = *v55;
        v21 = *__p;
        v58 = v49;
        v59 = v50;
        v60 = v51;
        v61 = v52;
        v7[21] = BYTE5(v49);
        __str[0] = v15;
        *&v64[1] = *&v55[16];
        v57 = v21;
        std::__tree<std::__value_type<unsigned char,XofBeidouEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofBeidouEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofBeidouEphemeris>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char,XofBeidouEphemeris>>(&v46, v15);
        __str[0] = v14;
        std::map<unsigned char,XofBeidouEphemeris>::map[abi:ne200100](&v57, &v46);
        v22 = *v11;
        if (!*v11)
        {
LABEL_20:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v23 = v22;
            v24 = *(v22 + 32);
            if (v24 <= __str[0])
            {
              break;
            }

            v22 = *v23;
            if (!*v23)
            {
              goto LABEL_20;
            }
          }

          if (v24 >= __str[0])
          {
            break;
          }

          v22 = v23[1];
          if (!v22)
          {
            goto LABEL_20;
          }
        }

        std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(&v57, *(&v57 + 1));
        std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(&v46, v47[0]);
      }

      ++v13;
      v12 = v7[19];
      if (v13 >= v12)
      {
        v8 = v7[20];
        v10 = v43;
        goto LABEL_33;
      }
    }

    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v33 = mach_continuous_time();
      if (a6 > 7)
      {
        v34 = "   ";
      }

      else
      {
        v34 = off_29EF06518[a6];
      }

      v35 = *&g_MacClockTicksToMsRelation;
      std::string::basic_string[abi:ne200100]<0>(__p, v34);
      if ((SBYTE7(v49) & 0x80u) == 0)
      {
        v36 = __p;
      }

      else
      {
        v36 = __p[0];
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Extended Ephemeris decode failure, constellation Id = [ %s ], sequence Id = [ %d ], block number = [ %d ]\n", (v35 * v33), "GNC", 68, "DecodeSVs", v36, v13 + 1, v43);
      if (SBYTE7(v49) < 0)
      {
        operator delete(__p[0]);
      }

      gnssOsa_PrintLog(__str, 5, 1, 0);
    }

LABEL_45:
    result = 5;
  }

  else
  {
LABEL_34:
    result = 1;
  }

  v37 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298F9D440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45)
{
  std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(v45 + 8, a45);
  std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(&a23, a24);
  _Unwind_Resume(a1);
}

uint64_t XofExtEph::DecodeSVs<std::map<unsigned char,std::map<unsigned char,XofNavicEphemeris>>,XofNavicEphemerisCodec>(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v50 = *MEMORY[0x29EDCA608];
  v7 = (a4 + 48 * a6);
  v8 = v7[20];
  if (v7[20])
  {
    v10 = 0;
    v11 = (a7 + 8);
    v12 = v7[19];
    while (1)
    {
      ++v10;
      if (v12)
      {
        break;
      }

LABEL_33:
      if (v10 >= v8)
      {
        goto LABEL_34;
      }
    }

    v13 = 0;
    v42 = v10;
    v14 = v10;
    while (1)
    {
      bzero(__str, 0x410uLL);
      XofNavicEphemerisCodec::XofNavicEphemerisCodec(__str);
      std::__memberwise_forward_assign[abi:ne200100]<std::tuple<XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>,std::tuple<XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul>(a5, __str);
      std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(__str);
      if (!XofNavicEphemerisCodec::Decode(a5, a2, a3))
      {
        break;
      }

      v15 = *(a5 + 3);
      v16 = *v11;
      if (!*v11)
      {
        goto LABEL_14;
      }

      v17 = v11;
      do
      {
        v18 = *(v16 + 32);
        v19 = v18 >= v14;
        v20 = v18 < v14;
        if (v19)
        {
          v17 = v16;
        }

        v16 = *(v16 + 8 * v20);
      }

      while (v16);
      if (v17 != v11 && *(v17 + 32) <= v14)
      {
        v26 = v17[6];
        v24 = v17 + 6;
        v25 = v26;
        if (v26)
        {
          v27 = v24;
          do
          {
            v28 = *(v25 + 28);
            v19 = v28 >= v15;
            v29 = v28 < v15;
            if (v19)
            {
              v27 = v25;
            }

            v25 = v25[v29];
          }

          while (v25);
          if (v27 != v24 && v15 >= *(v27 + 28))
          {
            if (g_LbsOsaTrace_Config >= 2)
            {
              bzero(__str, 0x3C6uLL);
              v37 = mach_continuous_time();
              if (a6 > 7)
              {
                v38 = "   ";
              }

              else
              {
                v38 = off_29EF06518[a6];
              }

              v39 = *&g_MacClockTicksToMsRelation;
              std::string::basic_string[abi:ne200100]<0>(__p, v38);
              if (__p[23] >= 0)
              {
                v40 = __p;
              }

              else
              {
                v40 = *__p;
              }

              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Duplicate entry found for Extended Ephemeris data, constellation Id = [ %s ], satellite Id = [ %d ], block number = [ %d ]\n", (v39 * v37), "GNC", 87, "DecodeSVs", v40, v15, v42);
              if ((__p[23] & 0x80000000) != 0)
              {
                operator delete(*__p);
              }

              gnssOsa_PrintLog(__str, 2, 1, 0);
            }

            goto LABEL_45;
          }
        }

        v30 = (v24 - 1);
        XofNavicEphemeris::XofNavicEphemeris(__p, a5);
        *&v49[1] = *&__p[1];
        *&v49[17] = *&__p[17];
        *&v49[19] = *&__p[19];
        *&v49[35] = *&__p[35];
        *&v49[51] = *&__p[51];
        v49[67] = __p[67];
        __str[0] = v15;
        v49[0] = __p[0];
        std::__tree<std::__value_type<unsigned char,XofNavicEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofNavicEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofNavicEphemeris>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char,XofNavicEphemeris>>(v30, v15);
      }

      else
      {
LABEL_14:
        v46[0] = 0;
        v46[1] = 0;
        v45 = v46;
        XofNavicEphemeris::XofNavicEphemeris(__p, a5);
        v7[21] = __p[10];
        __str[0] = v15;
        *&v49[16] = *&__p[16];
        *&v49[32] = *&__p[32];
        *&v49[48] = *&__p[48];
        *&v49[64] = *&__p[64];
        *v49 = *__p;
        std::__tree<std::__value_type<unsigned char,XofNavicEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofNavicEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofNavicEphemeris>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char,XofNavicEphemeris>>(&v45, v15);
        __str[0] = v14;
        std::map<unsigned char,XofNavicEphemeris>::map[abi:ne200100](&v49[4], &v45);
        v21 = *v11;
        if (!*v11)
        {
LABEL_20:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v22 = v21;
            v23 = *(v21 + 32);
            if (v23 <= __str[0])
            {
              break;
            }

            v21 = *v22;
            if (!*v22)
            {
              goto LABEL_20;
            }
          }

          if (v23 >= __str[0])
          {
            break;
          }

          v21 = v22[1];
          if (!v21)
          {
            goto LABEL_20;
          }
        }

        std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(&v49[4], *&v49[12]);
        std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(&v45, v46[0]);
      }

      ++v13;
      v12 = v7[19];
      if (v13 >= v12)
      {
        v8 = v7[20];
        v10 = v42;
        goto LABEL_33;
      }
    }

    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v32 = mach_continuous_time();
      if (a6 > 7)
      {
        v33 = "   ";
      }

      else
      {
        v33 = off_29EF06518[a6];
      }

      v34 = *&g_MacClockTicksToMsRelation;
      std::string::basic_string[abi:ne200100]<0>(__p, v33);
      if (__p[23] >= 0)
      {
        v35 = __p;
      }

      else
      {
        v35 = *__p;
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Extended Ephemeris decode failure, constellation Id = [ %s ], sequence Id = [ %d ], block number = [ %d ]\n", (v34 * v32), "GNC", 68, "DecodeSVs", v35, v13 + 1, v42);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      gnssOsa_PrintLog(__str, 5, 1, 0);
    }

LABEL_45:
    result = 5;
  }

  else
  {
LABEL_34:
    result = 1;
  }

  v36 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298F9D96C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37)
{
  std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(v37 + 8, a37);
  std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(&a23, a24);
  _Unwind_Resume(a1);
}

void XofGpsQzssEphemerisCodec::XofGpsQzssEphemerisCodec(XofGpsQzssEphemerisCodec *this)
{
  v182 = *MEMORY[0x29EDCA608];
  std::string::basic_string[abi:ne200100]<0>(&v178, "satID");
  XofIntegralType<unsigned char>::XofIntegralType(&v179, &v178, 1, 202, 0);
  std::string::basic_string[abi:ne200100]<0>(&v174, "health");
  XofIntegralType<unsigned char>::XofIntegralType(&v175, &v174, 0, 63, 0);
  std::string::basic_string[abi:ne200100]<0>(&v170, "URAI");
  XofIntegralType<signed char>::XofIntegralType(&v171, &v170, -16, 15, 0);
  std::string::basic_string[abi:ne200100]<0>(&v166, "fitHours");
  XofIntegralType<unsigned char>::XofIntegralType(&v167, &v166, 0, 6, 0);
  std::string::basic_string[abi:ne200100]<0>(&v162, "gpsWeek");
  XofIntegralType<unsigned short>::XofIntegralType(&v163, &v162, 0, 0x1FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v158, "sTOC");
  XofIntegralType<unsigned short>::XofIntegralType(&v159, &v158, 0, 37799, 0);
  std::string::basic_string[abi:ne200100]<0>(&v154, "sAf0");
  XofIntegralType<int>::XofIntegralType(&v155, &v154, -2097152, 0x1FFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v150, "sAf1");
  XofIntegralType<short>::XofIntegralType(&v151, &v150, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v146, "sAf2");
  XofIntegralType<signed char>::XofIntegralType(&v147, &v146, -128, 127, 0);
  std::string::basic_string[abi:ne200100]<0>(&v142, "reserved1");
  XofIntegralType<unsigned char>::XofIntegralType(&v143, &v142, 0, 255, 0);
  std::string::basic_string[abi:ne200100]<0>(&v138, "sTGD");
  XofIntegralType<short>::XofIntegralType(&v139, &v138, -4096, 4095, 0);
  std::string::basic_string[abi:ne200100]<0>(&v134, "sISC_L1_CA");
  XofIntegralType<short>::XofIntegralType(&v135, &v134, -4096, 4095, 0x7FFF);
  std::string::basic_string[abi:ne200100]<0>(&v130, "sISC_L5_Q5");
  XofIntegralType<short>::XofIntegralType(&v131, &v130, -4096, 4095, 0x7FFF);
  std::string::basic_string[abi:ne200100]<0>(&v126, "reserved2");
  XofIntegralType<unsigned short>::XofIntegralType(&v127, &v126, 0, 0xFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v122, "l5Health");
  XofIntegralType<signed char>::XofIntegralType(&v123, &v122, 0, 1, -1);
  std::string::basic_string[abi:ne200100]<0>(&v118, "integrityFlag");
  XofIntegralType<signed char>::XofIntegralType(&v119, &v118, 0, 1, -1);
  std::string::basic_string[abi:ne200100]<0>(&v114, "IODC");
  XofIntegralType<unsigned short>::XofIntegralType(&v115, &v114, 0, 1023, 0);
  std::string::basic_string[abi:ne200100]<0>(&v110, "sE");
  XofIntegralType<unsigned int>::XofIntegralType(&v111, &v110, 0, -1, 0);
  std::string::basic_string[abi:ne200100]<0>(&v106, "sAPowerHalf");
  XofIntegralType<unsigned int>::XofIntegralType(&v107, &v106, 0, -1, 0);
  std::string::basic_string[abi:ne200100]<0>(&v102, "sM0");
  XofIntegralType<int>::XofIntegralType(&v103, &v102, 0x80000000, 0x7FFFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v98, "sOmega0");
  XofIntegralType<int>::XofIntegralType(&v99, &v98, 0x80000000, 0x7FFFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v94, "sI0");
  XofIntegralType<int>::XofIntegralType(&v95, &v94, 0x80000000, 0x7FFFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v90, "sW");
  XofIntegralType<int>::XofIntegralType(&v91, &v90, 0x80000000, 0x7FFFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v86, "sOmegaDot");
  XofIntegralType<int>::XofIntegralType(&v87, &v86, 0x80000000, 0x7FFFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v82, "sDeltaN");
  XofIntegralType<short>::XofIntegralType(&v83, &v82, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v78, "sIDOT");
  XofIntegralType<short>::XofIntegralType(&v79, &v78, -8192, 0x1FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v74, "sCuc");
  XofIntegralType<short>::XofIntegralType(&v75, &v74, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v70, "sCus");
  XofIntegralType<short>::XofIntegralType(&v71, &v70, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v66, "sCrc");
  XofIntegralType<short>::XofIntegralType(&v67, &v66, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v62, "sCrs");
  XofIntegralType<short>::XofIntegralType(&v63, &v62, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v58, "sCic");
  XofIntegralType<short>::XofIntegralType(&v59, &v58, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&__p, "sCis");
  XofIntegralType<short>::XofIntegralType(&v55, &__p, -32768, 0x7FFF, 0);
  *this = v179;
  *(this + 8) = v180;
  *(this + 3) = v181;
  v180 = 0uLL;
  v181 = 0;
  *(this + 8) = v175;
  *(this + 40) = v176;
  *(this + 7) = v177;
  v177 = 0;
  v176 = 0uLL;
  *(this + 16) = v171;
  v2 = v172;
  *(this + 11) = v173;
  *(this + 72) = v2;
  v172 = 0uLL;
  v173 = 0;
  *(this + 24) = v167;
  v3 = v169;
  *(this + 104) = v168;
  v168 = 0uLL;
  v169 = 0;
  v4 = v163;
  v5 = v165;
  *(this + 15) = v3;
  *(this + 16) = v4;
  *(this + 136) = v164;
  v164 = 0uLL;
  v165 = 0;
  v6 = v159;
  v7 = v161;
  *(this + 19) = v5;
  *(this + 20) = v6;
  v8 = v160;
  *(this + 23) = v7;
  *(this + 168) = v8;
  v160 = 0uLL;
  v161 = 0;
  v9 = v156;
  v10 = v157;
  *(this + 12) = v155;
  *(this + 13) = v9;
  v156 = 0uLL;
  v157 = 0;
  v11 = v151;
  v12 = v153;
  *(this + 28) = v10;
  *(this + 29) = v11;
  v13 = v152;
  *(this + 32) = v12;
  *(this + 15) = v13;
  v152 = 0uLL;
  v153 = 0;
  *(this + 66) = v147;
  v14 = v148;
  *(this + 36) = v149;
  *(this + 17) = v14;
  v148 = 0uLL;
  v149 = 0;
  *(this + 74) = v143;
  v15 = v145;
  *(this + 19) = v144;
  v144 = 0uLL;
  v145 = 0;
  v16 = v139;
  v17 = v141;
  *(this + 40) = v15;
  *(this + 41) = v16;
  *(this + 21) = v140;
  v140 = 0uLL;
  v141 = 0;
  v18 = v135;
  v19 = v137;
  *(this + 44) = v17;
  *(this + 45) = v18;
  *(this + 23) = v136;
  v136 = 0uLL;
  v137 = 0;
  v20 = v131;
  v21 = v133;
  *(this + 48) = v19;
  *(this + 49) = v20;
  *(this + 25) = v132;
  v132 = 0uLL;
  v133 = 0;
  v22 = v127;
  v23 = v129;
  *(this + 52) = v21;
  *(this + 53) = v22;
  v24 = v128;
  *(this + 56) = v23;
  *(this + 27) = v24;
  v128 = 0uLL;
  v129 = 0;
  *(this + 114) = v123;
  v25 = v124;
  *(this + 60) = v125;
  *(this + 29) = v25;
  v124 = 0uLL;
  v125 = 0;
  *(this + 122) = v119;
  v26 = v120;
  *(this + 64) = v121;
  *(this + 31) = v26;
  v120 = 0uLL;
  v121 = 0;
  v27 = v117;
  *(this + 65) = v115;
  v28 = v116;
  *(this + 68) = v27;
  *(this + 33) = v28;
  v116 = 0uLL;
  v117 = 0;
  v29 = v112;
  *(this + 552) = v111;
  *(this + 73) = v113;
  *(this + 568) = v29;
  v112 = 0uLL;
  v113 = 0;
  v30 = v107;
  v31 = v108;
  *(this + 78) = v109;
  *(this + 37) = v30;
  *(this + 38) = v31;
  v108 = 0uLL;
  v109 = 0;
  v32 = v104;
  *(this + 632) = v103;
  *(this + 83) = v105;
  *(this + 648) = v32;
  v104 = 0uLL;
  v105 = 0;
  v33 = v99;
  v34 = v100;
  *(this + 88) = v101;
  *(this + 42) = v33;
  *(this + 43) = v34;
  v100 = 0uLL;
  v101 = 0;
  *(this + 712) = v95;
  v35 = v96;
  *(this + 93) = v97;
  *(this + 728) = v35;
  v96 = 0uLL;
  v97 = 0;
  v36 = v91;
  v37 = v92;
  *(this + 98) = v93;
  *(this + 47) = v36;
  *(this + 48) = v37;
  v92 = 0uLL;
  v93 = 0;
  *(this + 792) = v87;
  v38 = v88;
  *(this + 103) = v89;
  *(this + 808) = v38;
  v88 = 0uLL;
  v89 = 0;
  v39 = v85;
  *(this + 104) = v83;
  v40 = v84;
  *(this + 107) = v39;
  *(this + 840) = v40;
  v84 = 0uLL;
  v85 = 0;
  v41 = v81;
  *(this + 108) = v79;
  v42 = v80;
  *(this + 111) = v41;
  *(this + 872) = v42;
  v80 = 0uLL;
  v81 = 0;
  v43 = v77;
  *(this + 112) = v75;
  v44 = v76;
  *(this + 115) = v43;
  *(this + 904) = v44;
  v76 = 0uLL;
  v77 = 0;
  v45 = v73;
  *(this + 116) = v71;
  v46 = v72;
  *(this + 119) = v45;
  *(this + 936) = v46;
  v72 = 0uLL;
  v73 = 0;
  v47 = v69;
  *(this + 120) = v67;
  v48 = v68;
  *(this + 123) = v47;
  *(this + 968) = v48;
  v68 = 0uLL;
  v69 = 0;
  v49 = v65;
  *(this + 124) = v63;
  v50 = v64;
  *(this + 127) = v49;
  *(this + 1000) = v50;
  v64 = 0uLL;
  v65 = 0;
  *(this + 128) = v59;
  v51 = *v60;
  *(this + 131) = v61;
  *(this + 1032) = v51;
  v60[0] = 0;
  v60[1] = 0;
  v61 = 0;
  *(this + 132) = v55;
  v52 = v56;
  *(this + 135) = v57;
  *(this + 1064) = v52;
  v56 = 0uLL;
  v57 = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v61) < 0)
    {
      operator delete(v60[0]);
    }
  }

  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v65) < 0)
  {
    operator delete(v64);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v69) < 0)
  {
    operator delete(v68);
  }

  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v66.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v73) < 0)
  {
    operator delete(v72);
  }

  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v77) < 0)
  {
    operator delete(v76);
  }

  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v81) < 0)
  {
    operator delete(v80);
  }

  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v85) < 0)
  {
    operator delete(v84);
  }

  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v82.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v89) < 0)
  {
    operator delete(v88);
  }

  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v86.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v93) < 0)
  {
    operator delete(v92);
  }

  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v90.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v97) < 0)
  {
    operator delete(v96);
  }

  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v94.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v101) < 0)
  {
    operator delete(v100);
  }

  if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v98.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v105) < 0)
  {
    operator delete(v104);
  }

  if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v102.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v109) < 0)
  {
    operator delete(v108);
  }

  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v106.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v113) < 0)
  {
    operator delete(v112);
  }

  if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v110.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v117) < 0)
  {
    operator delete(v116);
  }

  if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v114.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v121) < 0)
  {
    operator delete(v120);
  }

  if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v118.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v125) < 0)
  {
    operator delete(v124);
  }

  if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v122.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v129) < 0)
  {
    operator delete(v128);
  }

  if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v126.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v133) < 0)
  {
    operator delete(v132);
  }

  if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v130.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v137) < 0)
  {
    operator delete(v136);
  }

  if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v134.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v141) < 0)
  {
    operator delete(v140);
  }

  if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v138.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v145) < 0)
  {
    operator delete(v144);
  }

  if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v142.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v149) < 0)
  {
    operator delete(v148);
  }

  if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v146.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v153) < 0)
  {
    operator delete(v152);
  }

  if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v150.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v157) < 0)
  {
    operator delete(v156);
  }

  if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v154.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v161) < 0)
  {
    operator delete(v160);
  }

  if (SHIBYTE(v158.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v158.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v165) < 0)
  {
    operator delete(v164);
  }

  if (SHIBYTE(v162.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v162.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v169) < 0)
  {
    operator delete(v168);
  }

  if (SHIBYTE(v166.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v166.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v173) < 0)
  {
    operator delete(v172);
  }

  if (SHIBYTE(v170.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v170.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v177) < 0)
  {
    operator delete(v176);
  }

  if (SHIBYTE(v174.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v174.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v181) < 0)
  {
    operator delete(v180);
  }

  if (SHIBYTE(v178.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v178.__r_.__value_.__l.__data_);
  }

  v53 = *MEMORY[0x29EDCA608];
}

void sub_298F9E758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a58 < 0)
  {
    operator delete(a53);
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  if (a71 < 0)
  {
    operator delete(a66);
  }

  if (a64 < 0)
  {
    operator delete(a59);
  }

  if (a75 < 0)
  {
    operator delete(a74);
  }

  if (a73 < 0)
  {
    operator delete(a72);
  }

  if (a79 < 0)
  {
    operator delete(a78);
  }

  if (a77 < 0)
  {
    operator delete(a76);
  }

  if (a83 < 0)
  {
    operator delete(a82);
  }

  if (a81 < 0)
  {
    operator delete(a80);
  }

  if (SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(a86);
  }

  if (a85 < 0)
  {
    operator delete(a84);
  }

  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
  }

  if (SLOBYTE(STACK[0x21F]) < 0)
  {
    operator delete(STACK[0x208]);
  }

  if (SLOBYTE(STACK[0x287]) < 0)
  {
    operator delete(STACK[0x270]);
  }

  if (SLOBYTE(STACK[0x25F]) < 0)
  {
    operator delete(STACK[0x248]);
  }

  if (SLOBYTE(STACK[0x2C7]) < 0)
  {
    operator delete(STACK[0x2B0]);
  }

  if (SLOBYTE(STACK[0x29F]) < 0)
  {
    operator delete(STACK[0x288]);
  }

  if (SLOBYTE(STACK[0x307]) < 0)
  {
    operator delete(STACK[0x2F0]);
  }

  if (SLOBYTE(STACK[0x2DF]) < 0)
  {
    operator delete(STACK[0x2C8]);
  }

  if (SLOBYTE(STACK[0x347]) < 0)
  {
    operator delete(STACK[0x330]);
  }

  if (SLOBYTE(STACK[0x31F]) < 0)
  {
    operator delete(STACK[0x308]);
  }

  if (SLOBYTE(STACK[0x387]) < 0)
  {
    operator delete(STACK[0x370]);
  }

  if (SLOBYTE(STACK[0x35F]) < 0)
  {
    operator delete(STACK[0x348]);
  }

  if (SLOBYTE(STACK[0x3BF]) < 0)
  {
    operator delete(STACK[0x3A8]);
  }

  if (SLOBYTE(STACK[0x39F]) < 0)
  {
    operator delete(STACK[0x388]);
  }

  if (SLOBYTE(STACK[0x3F7]) < 0)
  {
    operator delete(STACK[0x3E0]);
  }

  if (SLOBYTE(STACK[0x3D7]) < 0)
  {
    operator delete(STACK[0x3C0]);
  }

  if (SLOBYTE(STACK[0x42F]) < 0)
  {
    operator delete(STACK[0x418]);
  }

  if (SLOBYTE(STACK[0x40F]) < 0)
  {
    operator delete(STACK[0x3F8]);
  }

  if (SLOBYTE(STACK[0x467]) < 0)
  {
    operator delete(STACK[0x450]);
  }

  if (SLOBYTE(STACK[0x447]) < 0)
  {
    operator delete(STACK[0x430]);
  }

  if (SLOBYTE(STACK[0x49F]) < 0)
  {
    operator delete(STACK[0x488]);
  }

  if (SLOBYTE(STACK[0x47F]) < 0)
  {
    operator delete(STACK[0x468]);
  }

  if (SLOBYTE(STACK[0x4D7]) < 0)
  {
    operator delete(STACK[0x4C0]);
  }

  if (SLOBYTE(STACK[0x4B7]) < 0)
  {
    operator delete(STACK[0x4A0]);
  }

  if (SLOBYTE(STACK[0x50F]) < 0)
  {
    operator delete(STACK[0x4F8]);
  }

  if (SLOBYTE(STACK[0x4EF]) < 0)
  {
    operator delete(STACK[0x4D8]);
  }

  if (SLOBYTE(STACK[0x547]) < 0)
  {
    operator delete(STACK[0x530]);
  }

  if (SLOBYTE(STACK[0x527]) < 0)
  {
    operator delete(STACK[0x510]);
  }

  if (SLOBYTE(STACK[0x57F]) < 0)
  {
    operator delete(STACK[0x568]);
  }

  if (SLOBYTE(STACK[0x55F]) < 0)
  {
    operator delete(STACK[0x548]);
  }

  if (SLOBYTE(STACK[0x5B7]) < 0)
  {
    operator delete(STACK[0x5A0]);
  }

  if (SLOBYTE(STACK[0x597]) < 0)
  {
    operator delete(STACK[0x580]);
  }

  if (SLOBYTE(STACK[0x5F7]) < 0)
  {
    operator delete(STACK[0x5E0]);
  }

  if (SLOBYTE(STACK[0x5CF]) < 0)
  {
    operator delete(STACK[0x5B8]);
  }

  if (SLOBYTE(STACK[0x62F]) < 0)
  {
    operator delete(STACK[0x618]);
  }

  if (SLOBYTE(STACK[0x60F]) < 0)
  {
    operator delete(STACK[0x5F8]);
  }

  if (SLOBYTE(STACK[0x667]) < 0)
  {
    operator delete(STACK[0x650]);
  }

  if (SLOBYTE(STACK[0x647]) < 0)
  {
    operator delete(STACK[0x630]);
  }

  if (*(v86 - 193) < 0)
  {
    operator delete(*(v86 - 216));
  }

  if (*(v86 - 225) < 0)
  {
    operator delete(*(v86 - 248));
  }

  if (*(v86 - 137) < 0)
  {
    operator delete(*(v86 - 160));
  }

  if (*(v86 - 169) < 0)
  {
    operator delete(*(v86 - 192));
  }

  if (*(v86 - 81) < 0)
  {
    operator delete(*(v86 - 104));
  }

  if (*(v86 - 113) < 0)
  {
    operator delete(*(v86 - 136));
  }

  if (*(v86 - 25) < 0)
  {
    operator delete(*(v86 - 48));
  }

  if (*(v86 - 57) < 0)
  {
    operator delete(*(v86 - 80));
  }

  _Unwind_Resume(a1);
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul,31ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  if (*(a1 + 1087) < 0)
  {
    operator delete(*(a1 + 1064));
  }

  if (*(a1 + 1055) < 0)
  {
    operator delete(*(a1 + 1032));
  }

  if (*(a1 + 1023) < 0)
  {
    operator delete(*(a1 + 1000));
  }

  if (*(a1 + 991) < 0)
  {
    operator delete(*(a1 + 968));
  }

  if (*(a1 + 959) < 0)
  {
    operator delete(*(a1 + 936));
  }

  if (*(a1 + 927) < 0)
  {
    operator delete(*(a1 + 904));
  }

  if (*(a1 + 895) < 0)
  {
    operator delete(*(a1 + 872));
  }

  if (*(a1 + 863) < 0)
  {
    operator delete(*(a1 + 840));
  }

  if (*(a1 + 831) < 0)
  {
    operator delete(*(a1 + 808));
  }

  if (*(a1 + 791) < 0)
  {
    operator delete(*(a1 + 768));
  }

  if (*(a1 + 751) < 0)
  {
    operator delete(*(a1 + 728));
  }

  if (*(a1 + 711) < 0)
  {
    operator delete(*(a1 + 688));
  }

  if (*(a1 + 671) < 0)
  {
    operator delete(*(a1 + 648));
  }

  if (*(a1 + 631) < 0)
  {
    operator delete(*(a1 + 608));
  }

  if (*(a1 + 591) < 0)
  {
    operator delete(*(a1 + 568));
  }

  if (*(a1 + 551) < 0)
  {
    operator delete(*(a1 + 528));
  }

  if (*(a1 + 519) < 0)
  {
    operator delete(*(a1 + 496));
  }

  if (*(a1 + 487) < 0)
  {
    operator delete(*(a1 + 464));
  }

  if (*(a1 + 455) < 0)
  {
    operator delete(*(a1 + 432));
  }

  if (*(a1 + 423) < 0)
  {
    operator delete(*(a1 + 400));
  }

  if (*(a1 + 391) < 0)
  {
    operator delete(*(a1 + 368));
  }

  if (*(a1 + 359) < 0)
  {
    operator delete(*(a1 + 336));
  }

  if (*(a1 + 327) < 0)
  {
    operator delete(*(a1 + 304));
  }

  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  if (*(a1 + 263) < 0)
  {
    operator delete(*(a1 + 240));
  }

  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  v2 = *MEMORY[0x29EDCA608];
  return a1;
}

void XofSbasEphemerisCodec::XofSbasEphemerisCodec(XofSbasEphemerisCodec *this)
{
  v92 = *MEMORY[0x29EDCA608];
  std::string::basic_string[abi:ne200100]<0>(&v88, "satID");
  XofIntegralType<unsigned char>::XofIntegralType(&v89, &v88, 120, 158, 0);
  std::string::basic_string[abi:ne200100]<0>(&v84, "health");
  XofIntegralType<unsigned char>::XofIntegralType(&v85, &v84, 0, 1, 0);
  std::string::basic_string[abi:ne200100]<0>(&v80, "st0");
  XofIntegralType<unsigned short>::XofIntegralType(&v81, &v80, 0, 5399, 0);
  std::string::basic_string[abi:ne200100]<0>(&v76, "saGfo");
  XofIntegralType<short>::XofIntegralType(&v77, &v76, -2048, 2047, 0);
  std::string::basic_string[abi:ne200100]<0>(&v72, "saGf1");
  XofIntegralType<signed char>::XofIntegralType(&v73, &v72, -128, 127, 0);
  std::string::basic_string[abi:ne200100]<0>(&v68, "Accuracy");
  XofIntegralType<unsigned char>::XofIntegralType(&v69, &v68, 0, 15, 0);
  std::string::basic_string[abi:ne200100]<0>(&v64, "sXG");
  XofIntegralType<int>::XofIntegralType(&v65, &v64, -536870912, 0x1FFFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v60, "sYG");
  XofIntegralType<int>::XofIntegralType(&v61, &v60, -536870912, 0x1FFFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v56, "sZG");
  XofIntegralType<int>::XofIntegralType(&v57, &v56, -16777216, 0xFFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v52, "sXG_Rate_of_Change");
  XofIntegralType<int>::XofIntegralType(&v53, &v52, -65536, 0xFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v48, "sYG_Rate_of_Change");
  XofIntegralType<int>::XofIntegralType(&v49, &v48, -65536, 0xFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v44, "sZG_Rate_of_Change");
  XofIntegralType<int>::XofIntegralType(&v45, &v44, -131072, 0x1FFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v40, "sXG_Acceleration");
  XofIntegralType<short>::XofIntegralType(&v41, &v40, -512, 511, 0);
  std::string::basic_string[abi:ne200100]<0>(&v36, "sYG_Acceleration");
  XofIntegralType<short>::XofIntegralType(&v37, &v36, -512, 511, 0);
  std::string::basic_string[abi:ne200100]<0>(&v32, "sZG_Acceleration");
  XofIntegralType<short>::XofIntegralType(&v33, &v32, -512, 511, 0);
  std::string::basic_string[abi:ne200100]<0>(&v28, "iod");
  XofIntegralType<unsigned char>::XofIntegralType(&v29, &v28, 0, 255, 0);
  std::string::basic_string[abi:ne200100]<0>(&__p, "reserved");
  XofIntegralType<unsigned char>::XofIntegralType(&v25, &__p, 0, 255, 0);
  *(this + 8) = v90;
  *(this + 40) = v86;
  *(this + 72) = v82;
  *(this + 104) = v78;
  *(this + 136) = v74;
  *(this + 168) = v70;
  v2 = *v66;
  *(this + 12) = v65;
  *(this + 13) = v2;
  v3 = *v62;
  *(this + 232) = v61;
  *(this + 248) = v3;
  v4 = *v58;
  *(this + 17) = v57;
  *(this + 18) = v4;
  v5 = *v54;
  *(this + 312) = v53;
  *(this + 328) = v5;
  v6 = *v50;
  *(this + 22) = v49;
  *(this + 23) = v6;
  v7 = *v46;
  *(this + 392) = v45;
  *this = v89;
  *(this + 3) = v91;
  v90 = 0uLL;
  v91 = 0;
  *(this + 8) = v85;
  v8 = v87;
  v87 = 0;
  v86 = 0uLL;
  v9 = v81;
  v10 = v83;
  *(this + 7) = v8;
  *(this + 8) = v9;
  v82 = 0uLL;
  v83 = 0;
  v11 = v77;
  v12 = v79;
  *(this + 11) = v10;
  *(this + 12) = v11;
  *(this + 15) = v12;
  v78 = 0uLL;
  v79 = 0;
  *(this + 32) = v73;
  *(this + 19) = v75;
  v74 = 0uLL;
  v75 = 0;
  *(this + 40) = v69;
  *(this + 23) = v71;
  v70 = 0uLL;
  v71 = 0;
  *(this + 28) = v67;
  v66[1] = 0;
  v66[0] = 0;
  v67 = 0;
  *(this + 33) = v63;
  v62[1] = 0;
  v62[0] = 0;
  v63 = 0;
  *(this + 38) = v59;
  v58[1] = 0;
  v58[0] = 0;
  v59 = 0;
  *(this + 43) = v55;
  v54[0] = 0;
  v54[1] = 0;
  v55 = 0;
  *(this + 48) = v51;
  v50[0] = 0;
  v50[1] = 0;
  v51 = 0;
  v13 = v47;
  *(this + 408) = v7;
  v46[0] = 0;
  v46[1] = 0;
  v47 = 0;
  v14 = v41;
  v15 = v43;
  *(this + 53) = v13;
  *(this + 54) = v14;
  *(this + 440) = v42;
  v42 = 0uLL;
  v43 = 0;
  v16 = v37;
  v17 = v39;
  *(this + 57) = v15;
  *(this + 58) = v16;
  *(this + 472) = v38;
  v38 = 0uLL;
  v39 = 0;
  v18 = v33;
  v19 = v35;
  *(this + 61) = v17;
  *(this + 62) = v18;
  v20 = v34;
  *(this + 65) = v19;
  *(this + 504) = v20;
  v34 = 0uLL;
  v35 = 0;
  *(this + 132) = v29;
  v21 = *v30;
  *(this + 69) = v31;
  *(this + 536) = v21;
  v30[0] = 0;
  v30[1] = 0;
  v31 = 0;
  *(this + 140) = v25;
  v22 = v26;
  *(this + 73) = v27;
  *(this + 568) = v22;
  v26 = 0uLL;
  v27 = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(v30[0]);
    }
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(v42);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47) < 0)
  {
    operator delete(v46[0]);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v51) < 0)
  {
    operator delete(v50[0]);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v55) < 0)
  {
    operator delete(v54[0]);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v59) < 0)
  {
    operator delete(v58[0]);
  }

  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v63) < 0)
  {
    operator delete(v62[0]);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v67) < 0)
  {
    operator delete(v66[0]);
  }

  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v71) < 0)
  {
    operator delete(v70);
  }

  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v75) < 0)
  {
    operator delete(v74);
  }

  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v79) < 0)
  {
    operator delete(v78);
  }

  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v76.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v83) < 0)
  {
    operator delete(v82);
  }

  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v80.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v87) < 0)
  {
    operator delete(v86);
  }

  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v84.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v91) < 0)
  {
    operator delete(v90);
  }

  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v88.__r_.__value_.__l.__data_);
  }

  v23 = *MEMORY[0x29EDCA608];
}

void sub_298F9F6DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a57 < 0)
  {
    operator delete(a52);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (a70 < 0)
  {
    operator delete(a65);
  }

  if (a63 < 0)
  {
    operator delete(a58);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (a72 < 0)
  {
    operator delete(a71);
  }

  if (a78 < 0)
  {
    operator delete(a77);
  }

  if (a76 < 0)
  {
    operator delete(a75);
  }

  if (a82 < 0)
  {
    operator delete(a81);
  }

  if (a80 < 0)
  {
    operator delete(a79);
  }

  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  if (a84 < 0)
  {
    operator delete(a83);
  }

  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
  }

  if (SLOBYTE(STACK[0x22F]) < 0)
  {
    operator delete(STACK[0x218]);
  }

  if (SLOBYTE(STACK[0x297]) < 0)
  {
    operator delete(STACK[0x280]);
  }

  if (SLOBYTE(STACK[0x26F]) < 0)
  {
    operator delete(STACK[0x258]);
  }

  if (SLOBYTE(STACK[0x2CF]) < 0)
  {
    operator delete(STACK[0x2B8]);
  }

  if (SLOBYTE(STACK[0x2AF]) < 0)
  {
    operator delete(STACK[0x298]);
  }

  if (SLOBYTE(STACK[0x307]) < 0)
  {
    operator delete(STACK[0x2F0]);
  }

  if (SLOBYTE(STACK[0x2E7]) < 0)
  {
    operator delete(STACK[0x2D0]);
  }

  if (*(v84 - 193) < 0)
  {
    operator delete(*(v84 - 216));
  }

  if (*(v84 - 225) < 0)
  {
    operator delete(*(v84 - 248));
  }

  if (*(v84 - 137) < 0)
  {
    operator delete(*(v84 - 160));
  }

  if (*(v84 - 169) < 0)
  {
    operator delete(*(v84 - 192));
  }

  if (*(v84 - 81) < 0)
  {
    operator delete(*(v84 - 104));
  }

  if (*(v84 - 113) < 0)
  {
    operator delete(*(v84 - 136));
  }

  if (*(v84 - 25) < 0)
  {
    operator delete(*(v84 - 48));
  }

  if (*(v84 - 57) < 0)
  {
    operator delete(*(v84 - 80));
  }

  _Unwind_Resume(a1);
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>>::~__tuple_impl(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  if (*(a1 + 591) < 0)
  {
    operator delete(*(a1 + 568));
  }

  if (*(a1 + 559) < 0)
  {
    operator delete(*(a1 + 536));
  }

  if (*(a1 + 527) < 0)
  {
    operator delete(*(a1 + 504));
  }

  if (*(a1 + 495) < 0)
  {
    operator delete(*(a1 + 472));
  }

  if (*(a1 + 463) < 0)
  {
    operator delete(*(a1 + 440));
  }

  if (*(a1 + 431) < 0)
  {
    operator delete(*(a1 + 408));
  }

  if (*(a1 + 391) < 0)
  {
    operator delete(*(a1 + 368));
  }

  if (*(a1 + 351) < 0)
  {
    operator delete(*(a1 + 328));
  }

  if (*(a1 + 311) < 0)
  {
    operator delete(*(a1 + 288));
  }

  if (*(a1 + 271) < 0)
  {
    operator delete(*(a1 + 248));
  }

  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  v2 = *MEMORY[0x29EDCA608];
  return a1;
}

void XofGalileoEphemerisCodec::XofGalileoEphemerisCodec(XofGalileoEphemerisCodec *this)
{
  v176 = *MEMORY[0x29EDCA608];
  std::string::basic_string[abi:ne200100]<0>(&v172, "satID");
  XofIntegralType<unsigned char>::XofIntegralType(&v173, &v172, 0, 36, 0);
  std::string::basic_string[abi:ne200100]<0>(&v168, "navDVS");
  XofIntegralType<unsigned char>::XofIntegralType(&v169, &v168, 0, 255, 0);
  std::string::basic_string[abi:ne200100]<0>(&v164, "sigHs");
  XofIntegralType<unsigned char>::XofIntegralType(&v165, &v164, 0, 255, 0);
  std::string::basic_string[abi:ne200100]<0>(&v160, "reserved1");
  XofIntegralType<unsigned char>::XofIntegralType(&v161, &v160, 0, 255, 0);
  std::string::basic_string[abi:ne200100]<0>(&v156, "reserved2");
  XofIntegralType<unsigned short>::XofIntegralType(&v157, &v156, 0, 0xFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v152, "modelId");
  XofIntegralType<unsigned char>::XofIntegralType(&v153, &v152, 0, 1, 0);
  std::string::basic_string[abi:ne200100]<0>(&v148, "SISA");
  XofIntegralType<unsigned char>::XofIntegralType(&v149, &v148, 0, 255, 0);
  std::string::basic_string[abi:ne200100]<0>(&v144, "galWeek");
  XofIntegralType<unsigned short>::XofIntegralType(&v145, &v144, 0, 0x1FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v140, "sTOE");
  XofIntegralType<unsigned short>::XofIntegralType(&v141, &v140, 0, 10079, 0);
  std::string::basic_string[abi:ne200100]<0>(&v136, "sAf0");
  XofIntegralType<int>::XofIntegralType(&v137, &v136, -1073741824, 0x3FFFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v132, "sAf1");
  XofIntegralType<int>::XofIntegralType(&v133, &v132, -1048576, 0xFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v128, "sAf2");
  XofIntegralType<signed char>::XofIntegralType(&v129, &v128, -32, 31, 0);
  std::string::basic_string[abi:ne200100]<0>(&v124, "fitHours");
  XofIntegralType<unsigned char>::XofIntegralType(&v125, &v124, 0, 6, 0);
  std::string::basic_string[abi:ne200100]<0>(&v120, "IODNav");
  XofIntegralType<unsigned short>::XofIntegralType(&v121, &v120, 0, 0xFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v116, "sBGDE1E5a");
  XofIntegralType<short>::XofIntegralType(&v117, &v116, -512, 511, 0);
  std::string::basic_string[abi:ne200100]<0>(&v112, "sBGDE1E5b");
  XofIntegralType<short>::XofIntegralType(&v113, &v112, -512, 511, 0);
  std::string::basic_string[abi:ne200100]<0>(&v108, "sE");
  XofIntegralType<unsigned int>::XofIntegralType(&v109, &v108, 0, -1, 0);
  std::string::basic_string[abi:ne200100]<0>(&v104, "sAPowerHalf");
  XofIntegralType<unsigned int>::XofIntegralType(&v105, &v104, 0, -1, 0);
  std::string::basic_string[abi:ne200100]<0>(&v100, "sM0");
  XofIntegralType<int>::XofIntegralType(&v101, &v100, 0x80000000, 0x7FFFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v96, "sOmega0");
  XofIntegralType<int>::XofIntegralType(&v97, &v96, 0x80000000, 0x7FFFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v92, "sI0");
  XofIntegralType<int>::XofIntegralType(&v93, &v92, 0x80000000, 0x7FFFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v88, "sW");
  XofIntegralType<int>::XofIntegralType(&v89, &v88, 0x80000000, 0x7FFFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v84, "sOmegaDot");
  XofIntegralType<int>::XofIntegralType(&v85, &v84, -8388608, 0x7FFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v80, "sDeltaN");
  XofIntegralType<short>::XofIntegralType(&v81, &v80, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v76, "sIDOT");
  XofIntegralType<short>::XofIntegralType(&v77, &v76, -8192, 0x1FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v72, "sCuc");
  XofIntegralType<short>::XofIntegralType(&v73, &v72, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v68, "sCus");
  XofIntegralType<short>::XofIntegralType(&v69, &v68, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v64, "sCrc");
  XofIntegralType<short>::XofIntegralType(&v65, &v64, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v60, "sCrs");
  XofIntegralType<short>::XofIntegralType(&v61, &v60, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v56, "sCic");
  XofIntegralType<short>::XofIntegralType(&v57, &v56, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&__p, "sCis");
  XofIntegralType<short>::XofIntegralType(&v53, &__p, -32768, 0x7FFF, 0);
  *this = v173;
  *(this + 8) = v174;
  *(this + 3) = v175;
  v174 = 0uLL;
  v175 = 0;
  *(this + 8) = v169;
  *(this + 40) = v170;
  *(this + 7) = v171;
  v171 = 0;
  v170 = 0uLL;
  *(this + 16) = v165;
  v2 = v166;
  *(this + 11) = v167;
  *(this + 72) = v2;
  v166 = 0uLL;
  v167 = 0;
  *(this + 24) = v161;
  v3 = v163;
  *(this + 104) = v162;
  v162 = 0uLL;
  v163 = 0;
  v4 = v157;
  v5 = v159;
  *(this + 15) = v3;
  *(this + 16) = v4;
  v6 = v158;
  *(this + 19) = v5;
  *(this + 136) = v6;
  v158 = 0uLL;
  v159 = 0;
  *(this + 40) = v153;
  v7 = v154;
  *(this + 23) = v155;
  *(this + 168) = v7;
  v154 = 0uLL;
  v155 = 0;
  *(this + 48) = v149;
  v8 = v151;
  *(this + 200) = v150;
  v150 = 0uLL;
  v151 = 0;
  v9 = v145;
  v10 = v147;
  *(this + 27) = v8;
  *(this + 28) = v9;
  *(this + 232) = v146;
  v146 = 0uLL;
  v147 = 0;
  v11 = v141;
  v12 = v143;
  *(this + 31) = v10;
  *(this + 32) = v11;
  v13 = v142;
  *(this + 35) = v12;
  *(this + 264) = v13;
  v142 = 0uLL;
  v143 = 0;
  v14 = v137;
  v15 = v138;
  *(this + 40) = v139;
  *(this + 18) = v14;
  *(this + 19) = v15;
  v138 = 0uLL;
  v139 = 0;
  v16 = v134;
  *(this + 328) = v133;
  *(this + 45) = v135;
  *(this + 344) = v16;
  v134 = 0uLL;
  v135 = 0;
  *(this + 92) = v129;
  v17 = v130;
  *(this + 49) = v131;
  *(this + 376) = v17;
  v130 = 0uLL;
  v131 = 0;
  *(this + 100) = v125;
  v18 = v127;
  *(this + 408) = v126;
  v126 = 0uLL;
  v127 = 0;
  v19 = v121;
  v20 = v123;
  *(this + 53) = v18;
  *(this + 54) = v19;
  *(this + 440) = v122;
  v122 = 0uLL;
  v123 = 0;
  v21 = v117;
  v22 = v119;
  *(this + 57) = v20;
  *(this + 58) = v21;
  *(this + 472) = v118;
  v118 = 0uLL;
  v119 = 0;
  v23 = v113;
  v24 = v115;
  *(this + 61) = v22;
  *(this + 62) = v23;
  v25 = v114;
  *(this + 65) = v24;
  *(this + 504) = v25;
  v114 = 0uLL;
  v115 = 0;
  v26 = v109;
  v27 = v110;
  *(this + 70) = v111;
  *(this + 33) = v26;
  *(this + 34) = v27;
  v110 = 0uLL;
  v111 = 0;
  v28 = v106;
  *(this + 568) = v105;
  *(this + 75) = v107;
  *(this + 584) = v28;
  v106 = 0uLL;
  v107 = 0;
  v29 = v101;
  v30 = v102;
  *(this + 80) = v103;
  *(this + 38) = v29;
  *(this + 39) = v30;
  v102 = 0uLL;
  v103 = 0;
  *(this + 648) = v97;
  v31 = v98;
  *(this + 85) = v99;
  *(this + 664) = v31;
  v98 = 0uLL;
  v99 = 0;
  v32 = v93;
  v33 = v94;
  *(this + 90) = v95;
  *(this + 43) = v32;
  *(this + 44) = v33;
  v94 = 0uLL;
  v95 = 0;
  *(this + 728) = v89;
  v34 = v90;
  *(this + 95) = v91;
  *(this + 744) = v34;
  v90 = 0uLL;
  v91 = 0;
  v35 = v85;
  v36 = v86;
  *(this + 100) = v87;
  *(this + 48) = v35;
  *(this + 49) = v36;
  v86 = 0uLL;
  v87 = 0;
  v37 = v83;
  *(this + 101) = v81;
  v38 = v82;
  *(this + 104) = v37;
  *(this + 51) = v38;
  v82 = 0uLL;
  v83 = 0;
  v39 = v79;
  *(this + 105) = v77;
  v40 = v78;
  *(this + 108) = v39;
  *(this + 53) = v40;
  v78 = 0uLL;
  v79 = 0;
  v41 = v75;
  *(this + 109) = v73;
  v42 = v74;
  *(this + 112) = v41;
  *(this + 55) = v42;
  v74 = 0uLL;
  v75 = 0;
  v43 = v71;
  *(this + 113) = v69;
  v44 = v70;
  *(this + 116) = v43;
  *(this + 57) = v44;
  v70 = 0uLL;
  v71 = 0;
  v45 = v67;
  *(this + 117) = v65;
  v46 = v66;
  *(this + 120) = v45;
  *(this + 59) = v46;
  v66 = 0uLL;
  v67 = 0;
  v47 = v63;
  *(this + 121) = v61;
  v48 = v62;
  *(this + 124) = v47;
  *(this + 61) = v48;
  v62 = 0uLL;
  v63 = 0;
  *(this + 125) = v57;
  v49 = *v58;
  *(this + 128) = v59;
  *(this + 63) = v49;
  v58[0] = 0;
  v58[1] = 0;
  v59 = 0;
  *(this + 129) = v53;
  v50 = v54;
  *(this + 132) = v55;
  *(this + 65) = v50;
  v54 = 0uLL;
  v55 = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v59) < 0)
    {
      operator delete(v58[0]);
    }
  }

  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v63) < 0)
  {
    operator delete(v62);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v67) < 0)
  {
    operator delete(v66);
  }

  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v71) < 0)
  {
    operator delete(v70);
  }

  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v75) < 0)
  {
    operator delete(v74);
  }

  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v79) < 0)
  {
    operator delete(v78);
  }

  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v76.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v83) < 0)
  {
    operator delete(v82);
  }

  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v80.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v87) < 0)
  {
    operator delete(v86);
  }

  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v84.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v91) < 0)
  {
    operator delete(v90);
  }

  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v88.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v95) < 0)
  {
    operator delete(v94);
  }

  if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v92.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v99) < 0)
  {
    operator delete(v98);
  }

  if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v96.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v103) < 0)
  {
    operator delete(v102);
  }

  if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v100.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v107) < 0)
  {
    operator delete(v106);
  }

  if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v104.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v111) < 0)
  {
    operator delete(v110);
  }

  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v108.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v115) < 0)
  {
    operator delete(v114);
  }

  if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v112.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v119) < 0)
  {
    operator delete(v118);
  }

  if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v116.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v123) < 0)
  {
    operator delete(v122);
  }

  if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v120.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v127) < 0)
  {
    operator delete(v126);
  }

  if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v124.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v131) < 0)
  {
    operator delete(v130);
  }

  if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v128.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v135) < 0)
  {
    operator delete(v134);
  }

  if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v132.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v139) < 0)
  {
    operator delete(v138);
  }

  if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v136.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v143) < 0)
  {
    operator delete(v142);
  }

  if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v140.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v147) < 0)
  {
    operator delete(v146);
  }

  if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v144.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v151) < 0)
  {
    operator delete(v150);
  }

  if (SHIBYTE(v148.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v148.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v155) < 0)
  {
    operator delete(v154);
  }

  if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v152.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v159) < 0)
  {
    operator delete(v158);
  }

  if (SHIBYTE(v156.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v156.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v163) < 0)
  {
    operator delete(v162);
  }

  if (SHIBYTE(v160.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v160.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v167) < 0)
  {
    operator delete(v166);
  }

  if (SHIBYTE(v164.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v164.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v171) < 0)
  {
    operator delete(v170);
  }

  if (SHIBYTE(v168.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v168.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v175) < 0)
  {
    operator delete(v174);
  }

  if (SHIBYTE(v172.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v172.__r_.__value_.__l.__data_);
  }

  v51 = *MEMORY[0x29EDCA608];
}

void sub_298FA08B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a58 < 0)
  {
    operator delete(a53);
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  if (a71 < 0)
  {
    operator delete(a66);
  }

  if (a64 < 0)
  {
    operator delete(a59);
  }

  if (a75 < 0)
  {
    operator delete(a74);
  }

  if (a73 < 0)
  {
    operator delete(a72);
  }

  if (a79 < 0)
  {
    operator delete(a78);
  }

  if (a77 < 0)
  {
    operator delete(a76);
  }

  if (a83 < 0)
  {
    operator delete(a82);
  }

  if (a81 < 0)
  {
    operator delete(a80);
  }

  if (SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(a86);
  }

  if (a85 < 0)
  {
    operator delete(a84);
  }

  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
  }

  if (SLOBYTE(STACK[0x21F]) < 0)
  {
    operator delete(STACK[0x208]);
  }

  if (SLOBYTE(STACK[0x287]) < 0)
  {
    operator delete(STACK[0x270]);
  }

  if (SLOBYTE(STACK[0x25F]) < 0)
  {
    operator delete(STACK[0x248]);
  }

  if (SLOBYTE(STACK[0x2C7]) < 0)
  {
    operator delete(STACK[0x2B0]);
  }

  if (SLOBYTE(STACK[0x29F]) < 0)
  {
    operator delete(STACK[0x288]);
  }

  if (SLOBYTE(STACK[0x307]) < 0)
  {
    operator delete(STACK[0x2F0]);
  }

  if (SLOBYTE(STACK[0x2DF]) < 0)
  {
    operator delete(STACK[0x2C8]);
  }

  if (SLOBYTE(STACK[0x347]) < 0)
  {
    operator delete(STACK[0x330]);
  }

  if (SLOBYTE(STACK[0x31F]) < 0)
  {
    operator delete(STACK[0x308]);
  }

  if (SLOBYTE(STACK[0x387]) < 0)
  {
    operator delete(STACK[0x370]);
  }

  if (SLOBYTE(STACK[0x35F]) < 0)
  {
    operator delete(STACK[0x348]);
  }

  if (SLOBYTE(STACK[0x3BF]) < 0)
  {
    operator delete(STACK[0x3A8]);
  }

  if (SLOBYTE(STACK[0x39F]) < 0)
  {
    operator delete(STACK[0x388]);
  }

  if (SLOBYTE(STACK[0x3F7]) < 0)
  {
    operator delete(STACK[0x3E0]);
  }

  if (SLOBYTE(STACK[0x3D7]) < 0)
  {
    operator delete(STACK[0x3C0]);
  }

  if (SLOBYTE(STACK[0x42F]) < 0)
  {
    operator delete(STACK[0x418]);
  }

  if (SLOBYTE(STACK[0x40F]) < 0)
  {
    operator delete(STACK[0x3F8]);
  }

  if (SLOBYTE(STACK[0x467]) < 0)
  {
    operator delete(STACK[0x450]);
  }

  if (SLOBYTE(STACK[0x447]) < 0)
  {
    operator delete(STACK[0x430]);
  }

  if (SLOBYTE(STACK[0x49F]) < 0)
  {
    operator delete(STACK[0x488]);
  }

  if (SLOBYTE(STACK[0x47F]) < 0)
  {
    operator delete(STACK[0x468]);
  }

  if (SLOBYTE(STACK[0x4DF]) < 0)
  {
    operator delete(STACK[0x4C8]);
  }

  if (SLOBYTE(STACK[0x4B7]) < 0)
  {
    operator delete(STACK[0x4A0]);
  }

  if (SLOBYTE(STACK[0x51F]) < 0)
  {
    operator delete(STACK[0x508]);
  }

  if (SLOBYTE(STACK[0x4F7]) < 0)
  {
    operator delete(STACK[0x4E0]);
  }

  if (SLOBYTE(STACK[0x557]) < 0)
  {
    operator delete(STACK[0x540]);
  }

  if (SLOBYTE(STACK[0x537]) < 0)
  {
    operator delete(STACK[0x520]);
  }

  if (SLOBYTE(STACK[0x58F]) < 0)
  {
    operator delete(STACK[0x578]);
  }

  if (SLOBYTE(STACK[0x56F]) < 0)
  {
    operator delete(STACK[0x558]);
  }

  if (SLOBYTE(STACK[0x5C7]) < 0)
  {
    operator delete(STACK[0x5B0]);
  }

  if (SLOBYTE(STACK[0x5A7]) < 0)
  {
    operator delete(STACK[0x590]);
  }

  if (SLOBYTE(STACK[0x5FF]) < 0)
  {
    operator delete(STACK[0x5E8]);
  }

  if (SLOBYTE(STACK[0x5DF]) < 0)
  {
    operator delete(STACK[0x5C8]);
  }

  if (SLOBYTE(STACK[0x637]) < 0)
  {
    operator delete(STACK[0x620]);
  }

  if (SLOBYTE(STACK[0x617]) < 0)
  {
    operator delete(STACK[0x600]);
  }

  if (*(v86 - 193) < 0)
  {
    operator delete(*(v86 - 216));
  }

  if (*(v86 - 225) < 0)
  {
    operator delete(*(v86 - 248));
  }

  if (*(v86 - 137) < 0)
  {
    operator delete(*(v86 - 160));
  }

  if (*(v86 - 169) < 0)
  {
    operator delete(*(v86 - 192));
  }

  if (*(v86 - 81) < 0)
  {
    operator delete(*(v86 - 104));
  }

  if (*(v86 - 113) < 0)
  {
    operator delete(*(v86 - 136));
  }

  if (*(v86 - 25) < 0)
  {
    operator delete(*(v86 - 48));
  }

  if (*(v86 - 57) < 0)
  {
    operator delete(*(v86 - 80));
  }

  _Unwind_Resume(a1);
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  if (*(a1 + 1063) < 0)
  {
    operator delete(*(a1 + 1040));
  }

  if (*(a1 + 1031) < 0)
  {
    operator delete(*(a1 + 1008));
  }

  if (*(a1 + 999) < 0)
  {
    operator delete(*(a1 + 976));
  }

  if (*(a1 + 967) < 0)
  {
    operator delete(*(a1 + 944));
  }

  if (*(a1 + 935) < 0)
  {
    operator delete(*(a1 + 912));
  }

  if (*(a1 + 903) < 0)
  {
    operator delete(*(a1 + 880));
  }

  if (*(a1 + 871) < 0)
  {
    operator delete(*(a1 + 848));
  }

  if (*(a1 + 839) < 0)
  {
    operator delete(*(a1 + 816));
  }

  if (*(a1 + 807) < 0)
  {
    operator delete(*(a1 + 784));
  }

  if (*(a1 + 767) < 0)
  {
    operator delete(*(a1 + 744));
  }

  if (*(a1 + 727) < 0)
  {
    operator delete(*(a1 + 704));
  }

  if (*(a1 + 687) < 0)
  {
    operator delete(*(a1 + 664));
  }

  if (*(a1 + 647) < 0)
  {
    operator delete(*(a1 + 624));
  }

  if (*(a1 + 607) < 0)
  {
    operator delete(*(a1 + 584));
  }

  if (*(a1 + 567) < 0)
  {
    operator delete(*(a1 + 544));
  }

  if (*(a1 + 527) < 0)
  {
    operator delete(*(a1 + 504));
  }

  if (*(a1 + 495) < 0)
  {
    operator delete(*(a1 + 472));
  }

  if (*(a1 + 463) < 0)
  {
    operator delete(*(a1 + 440));
  }

  if (*(a1 + 431) < 0)
  {
    operator delete(*(a1 + 408));
  }

  if (*(a1 + 399) < 0)
  {
    operator delete(*(a1 + 376));
  }

  if (*(a1 + 367) < 0)
  {
    operator delete(*(a1 + 344));
  }

  if (*(a1 + 327) < 0)
  {
    operator delete(*(a1 + 304));
  }

  if (*(a1 + 287) < 0)
  {
    operator delete(*(a1 + 264));
  }

  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  v2 = *MEMORY[0x29EDCA608];
  return a1;
}

void XofGlonassBrdcastEphemerisCodec::XofGlonassBrdcastEphemerisCodec(XofGlonassBrdcastEphemerisCodec *this)
{
  v112 = *MEMORY[0x29EDCA608];
  std::string::basic_string[abi:ne200100]<0>(&v108, "satID");
  XofIntegralType<unsigned char>::XofIntegralType(&v109, &v108, 1, 24, 0);
  std::string::basic_string[abi:ne200100]<0>(&v104, "health");
  XofIntegralType<unsigned char>::XofIntegralType(&v105, &v104, 0, 1, 0);
  std::string::basic_string[abi:ne200100]<0>(&v100, "timeOfDay");
  XofIntegralType<unsigned short>::XofIntegralType(&v101, &v100, 0, 0xFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v96, "sTn_tb");
  XofIntegralType<int>::XofIntegralType(&v97, &v96, -2097152, 0x1FFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v92, "sfn_tb");
  XofIntegralType<short>::XofIntegralType(&v93, &v92, -1024, 1023, 0);
  std::string::basic_string[abi:ne200100]<0>(&v88, "sDeltaTn");
  XofIntegralType<signed char>::XofIntegralType(&v89, &v88, -16, 15, 0);
  std::string::basic_string[abi:ne200100]<0>(&v84, "eN");
  XofIntegralType<unsigned char>::XofIntegralType(&v85, &v84, 0, 31, 0);
  std::string::basic_string[abi:ne200100]<0>(&v80, "p1");
  XofIntegralType<unsigned char>::XofIntegralType(&v81, &v80, 0, 255, 0);
  std::string::basic_string[abi:ne200100]<0>(&v76, "p2");
  XofIntegralType<unsigned char>::XofIntegralType(&v77, &v76, 0, 255, 0);
  std::string::basic_string[abi:ne200100]<0>(&v72, "m");
  XofIntegralType<unsigned char>::XofIntegralType(&v73, &v72, 0, 3, 0);
  std::string::basic_string[abi:ne200100]<0>(&v68, "f");
  XofIntegralType<unsigned char>::XofIntegralType(&v69, &v68, 0, 255, 0);
  std::string::basic_string[abi:ne200100]<0>(&v64, "sXn_tb");
  XofIntegralType<int>::XofIntegralType(&v65, &v64, -67108864, 0x3FFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v60, "sXn_Vel_tb");
  XofIntegralType<int>::XofIntegralType(&v61, &v60, -8388608, 0x7FFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v56, "sYn_tb");
  XofIntegralType<int>::XofIntegralType(&v57, &v56, -67108864, 0x3FFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v52, "sYn_Vel_tb");
  XofIntegralType<int>::XofIntegralType(&v53, &v52, -8388608, 0x7FFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v48, "sZn_tb");
  XofIntegralType<int>::XofIntegralType(&v49, &v48, -67108864, 0x3FFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v44, "sZn_Vel_tb");
  XofIntegralType<int>::XofIntegralType(&v45, &v44, -8388608, 0x7FFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v40, "sXn_Acc_tb");
  XofIntegralType<signed char>::XofIntegralType(&v41, &v40, -16, 15, 0);
  std::string::basic_string[abi:ne200100]<0>(&v36, "sYn_Acc_tb");
  XofIntegralType<signed char>::XofIntegralType(&v37, &v36, -16, 15, 0);
  std::string::basic_string[abi:ne200100]<0>(&v32, "sZn_Acc_tb");
  XofIntegralType<signed char>::XofIntegralType(&v33, &v32, -16, 15, 0);
  std::string::basic_string[abi:ne200100]<0>(&__p, "reserved");
  XofIntegralType<unsigned char>::XofIntegralType(&v29, &__p, 0, 255, 0);
  *this = v109;
  *(this + 3) = v111;
  *(this + 8) = v105;
  v2 = v101;
  v3 = v103;
  *(this + 7) = v107;
  *(this + 8) = v2;
  *(this + 11) = v3;
  v4 = v93;
  v5 = v95;
  *(this + 16) = v99;
  *(this + 17) = v4;
  *(this + 8) = v110;
  v110 = 0uLL;
  v111 = 0;
  *(this + 40) = v106;
  v107 = 0;
  v106 = 0uLL;
  *(this + 72) = v102;
  v102 = 0uLL;
  v103 = 0;
  v6 = v98;
  *(this + 6) = v97;
  *(this + 7) = v6;
  v98 = 0uLL;
  v99 = 0;
  v7 = v94;
  *(this + 20) = v5;
  *(this + 9) = v7;
  v94 = 0uLL;
  v95 = 0;
  *(this + 42) = v89;
  v8 = v90;
  *(this + 24) = v91;
  *(this + 11) = v8;
  v90 = 0uLL;
  v91 = 0;
  *(this + 50) = v85;
  v9 = v86;
  *(this + 28) = v87;
  *(this + 13) = v9;
  v86 = 0uLL;
  v87 = 0;
  *(this + 58) = v81;
  v10 = v82;
  *(this + 32) = v83;
  *(this + 15) = v10;
  v82 = 0uLL;
  v83 = 0;
  *(this + 66) = v77;
  v11 = v78;
  *(this + 36) = v79;
  *(this + 17) = v11;
  v78 = 0uLL;
  v79 = 0;
  *(this + 74) = v73;
  v12 = v74;
  *(this + 40) = v75;
  *(this + 19) = v12;
  v74 = 0uLL;
  v75 = 0;
  *(this + 82) = v69;
  v13 = v70;
  *(this + 44) = v71;
  *(this + 21) = v13;
  v70 = 0uLL;
  v71 = 0;
  v14 = v66;
  *(this + 360) = v65;
  *(this + 49) = v67;
  *(this + 376) = v14;
  v66 = 0uLL;
  v67 = 0;
  v15 = v61;
  v16 = v62;
  *(this + 54) = v63;
  *(this + 25) = v15;
  *(this + 26) = v16;
  v62 = 0uLL;
  v63 = 0;
  v17 = v58;
  *(this + 440) = v57;
  *(this + 59) = v59;
  *(this + 456) = v17;
  v58 = 0uLL;
  v59 = 0;
  v18 = v53;
  v19 = v54;
  *(this + 64) = v55;
  *(this + 30) = v18;
  *(this + 31) = v19;
  v54 = 0uLL;
  v55 = 0;
  v20 = v50;
  *(this + 520) = v49;
  *(this + 69) = v51;
  *(this + 536) = v20;
  v50 = 0uLL;
  v51 = 0;
  v21 = v45;
  v22 = v46;
  *(this + 74) = v47;
  *(this + 35) = v21;
  *(this + 36) = v22;
  v46 = 0uLL;
  v47 = 0;
  *(this + 150) = v41;
  v23 = v42;
  *(this + 78) = v43;
  *(this + 38) = v23;
  v42 = 0uLL;
  v43 = 0;
  *(this + 158) = v37;
  v24 = v38;
  *(this + 82) = v39;
  *(this + 40) = v24;
  v38 = 0uLL;
  v39 = 0;
  *(this + 166) = v33;
  v25 = *v34;
  *(this + 86) = v35;
  *(this + 42) = v25;
  v34[0] = 0;
  v34[1] = 0;
  v35 = 0;
  *(this + 174) = v29;
  v26 = v30;
  *(this + 90) = v31;
  *(this + 44) = v26;
  v30 = 0uLL;
  v31 = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v35) < 0)
    {
      operator delete(v34[0]);
    }
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(v42);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47) < 0)
  {
    operator delete(v46);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v51) < 0)
  {
    operator delete(v50);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v55) < 0)
  {
    operator delete(v54);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v59) < 0)
  {
    operator delete(v58);
  }

  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v63) < 0)
  {
    operator delete(v62);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v67) < 0)
  {
    operator delete(v66);
  }

  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v71) < 0)
  {
    operator delete(v70);
  }

  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v75) < 0)
  {
    operator delete(v74);
  }

  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v79) < 0)
  {
    operator delete(v78);
  }

  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v76.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v83) < 0)
  {
    operator delete(v82);
  }

  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v80.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v87) < 0)
  {
    operator delete(v86);
  }

  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v84.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v91) < 0)
  {
    operator delete(v90);
  }

  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v88.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v95) < 0)
  {
    operator delete(v94);
  }

  if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v92.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v99) < 0)
  {
    operator delete(v98);
  }

  if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v96.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v103) < 0)
  {
    operator delete(v102);
  }

  if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v100.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v107) < 0)
  {
    operator delete(v106);
  }

  if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v104.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v111) < 0)
  {
    operator delete(v110);
  }

  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v108.__r_.__value_.__l.__data_);
  }

  v27 = *MEMORY[0x29EDCA608];
}

void sub_298FA19AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a58 < 0)
  {
    operator delete(a53);
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  if (a72 < 0)
  {
    operator delete(a67);
  }

  if (a64 < 0)
  {
    operator delete(a59);
  }

  if (a76 < 0)
  {
    operator delete(a75);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (a80 < 0)
  {
    operator delete(a79);
  }

  if (a78 < 0)
  {
    operator delete(a77);
  }

  if (a84 < 0)
  {
    operator delete(a83);
  }

  if (a82 < 0)
  {
    operator delete(a81);
  }

  if (SLOBYTE(STACK[0x227]) < 0)
  {
    operator delete(STACK[0x210]);
  }

  if (a86 < 0)
  {
    operator delete(a85);
  }

  if (SLOBYTE(STACK[0x267]) < 0)
  {
    operator delete(STACK[0x250]);
  }

  if (SLOBYTE(STACK[0x23F]) < 0)
  {
    operator delete(STACK[0x228]);
  }

  if (SLOBYTE(STACK[0x29F]) < 0)
  {
    operator delete(STACK[0x288]);
  }

  if (SLOBYTE(STACK[0x27F]) < 0)
  {
    operator delete(STACK[0x268]);
  }

  if (SLOBYTE(STACK[0x2D7]) < 0)
  {
    operator delete(STACK[0x2C0]);
  }

  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
  }

  if (SLOBYTE(STACK[0x30F]) < 0)
  {
    operator delete(STACK[0x2F8]);
  }

  if (SLOBYTE(STACK[0x2EF]) < 0)
  {
    operator delete(STACK[0x2D8]);
  }

  if (SLOBYTE(STACK[0x347]) < 0)
  {
    operator delete(STACK[0x330]);
  }

  if (SLOBYTE(STACK[0x327]) < 0)
  {
    operator delete(STACK[0x310]);
  }

  if (SLOBYTE(STACK[0x37F]) < 0)
  {
    operator delete(STACK[0x368]);
  }

  if (SLOBYTE(STACK[0x35F]) < 0)
  {
    operator delete(STACK[0x348]);
  }

  if (SLOBYTE(STACK[0x3B7]) < 0)
  {
    operator delete(STACK[0x3A0]);
  }

  if (SLOBYTE(STACK[0x397]) < 0)
  {
    operator delete(STACK[0x380]);
  }

  if (SLOBYTE(STACK[0x3EF]) < 0)
  {
    operator delete(STACK[0x3D8]);
  }

  if (SLOBYTE(STACK[0x3CF]) < 0)
  {
    operator delete(STACK[0x3B8]);
  }

  if (*(v86 - 193) < 0)
  {
    operator delete(*(v86 - 216));
  }

  if (*(v86 - 233) < 0)
  {
    operator delete(*(v86 - 256));
  }

  if (*(v86 - 137) < 0)
  {
    operator delete(*(v86 - 160));
  }

  if (*(v86 - 169) < 0)
  {
    operator delete(*(v86 - 192));
  }

  if (*(v86 - 81) < 0)
  {
    operator delete(*(v86 - 104));
  }

  if (*(v86 - 113) < 0)
  {
    operator delete(*(v86 - 136));
  }

  if (*(v86 - 25) < 0)
  {
    operator delete(*(v86 - 48));
  }

  if (*(v86 - 57) < 0)
  {
    operator delete(*(v86 - 80));
  }

  _Unwind_Resume(a1);
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>>::~__tuple_impl(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  if (*(a1 + 727) < 0)
  {
    operator delete(*(a1 + 704));
  }

  if (*(a1 + 695) < 0)
  {
    operator delete(*(a1 + 672));
  }

  if (*(a1 + 663) < 0)
  {
    operator delete(*(a1 + 640));
  }

  if (*(a1 + 631) < 0)
  {
    operator delete(*(a1 + 608));
  }

  if (*(a1 + 599) < 0)
  {
    operator delete(*(a1 + 576));
  }

  if (*(a1 + 559) < 0)
  {
    operator delete(*(a1 + 536));
  }

  if (*(a1 + 519) < 0)
  {
    operator delete(*(a1 + 496));
  }

  if (*(a1 + 479) < 0)
  {
    operator delete(*(a1 + 456));
  }

  if (*(a1 + 439) < 0)
  {
    operator delete(*(a1 + 416));
  }

  if (*(a1 + 399) < 0)
  {
    operator delete(*(a1 + 376));
  }

  if (*(a1 + 359) < 0)
  {
    operator delete(*(a1 + 336));
  }

  if (*(a1 + 327) < 0)
  {
    operator delete(*(a1 + 304));
  }

  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  if (*(a1 + 263) < 0)
  {
    operator delete(*(a1 + 240));
  }

  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  v2 = *MEMORY[0x29EDCA608];
  return a1;
}

void XofBeidouEphemerisCodec::XofBeidouEphemerisCodec(XofBeidouEphemerisCodec *this)
{
  v270 = *MEMORY[0x29EDCA608];
  std::string::basic_string[abi:ne200100]<0>(&v266, "satID");
  XofIntegralType<unsigned char>::XofIntegralType(&v267, &v266, 1, 63, 0);
  std::string::basic_string[abi:ne200100]<0>(&v262, "hs");
  XofIntegralType<unsigned char>::XofIntegralType(&v263, &v262, 0, 3, 0);
  std::string::basic_string[abi:ne200100]<0>(&v258, "wn");
  XofIntegralType<unsigned short>::XofIntegralType(&v259, &v258, 0, 0x1FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v254, "sSOW");
  XofIntegralType<unsigned int>::XofIntegralType(&v255, &v254, 0, 201599, 0);
  std::string::basic_string[abi:ne200100]<0>(&v250, "difB2a");
  XofIntegralType<unsigned char>::XofIntegralType(&v251, &v250, 0, 1, 0);
  std::string::basic_string[abi:ne200100]<0>(&v246, "sifB2a");
  XofIntegralType<unsigned char>::XofIntegralType(&v247, &v246, 0, 1, 0);
  std::string::basic_string[abi:ne200100]<0>(&v242, "aifB2a");
  XofIntegralType<unsigned char>::XofIntegralType(&v243, &v242, 0, 1, 0);
  std::string::basic_string[abi:ne200100]<0>(&v238, "sismai");
  XofIntegralType<unsigned char>::XofIntegralType(&v239, &v238, 0, 15, 0);
  std::string::basic_string[abi:ne200100]<0>(&v234, "difB1c");
  XofIntegralType<unsigned char>::XofIntegralType(&v235, &v234, 0, 1, 0);
  std::string::basic_string[abi:ne200100]<0>(&v230, "sifB1c");
  XofIntegralType<unsigned char>::XofIntegralType(&v231, &v230, 0, 1, 0);
  std::string::basic_string[abi:ne200100]<0>(&v226, "aifB1c");
  XofIntegralType<unsigned char>::XofIntegralType(&v227, &v226, 0, 1, 0);
  std::string::basic_string[abi:ne200100]<0>(&v222, "UraiEst");
  XofIntegralType<signed char>::XofIntegralType(&v223, &v222, -16, 15, 0);
  std::string::basic_string[abi:ne200100]<0>(&v218, "Iodc");
  XofIntegralType<unsigned short>::XofIntegralType(&v219, &v218, 0, 1023, 0);
  std::string::basic_string[abi:ne200100]<0>(&v214, "sToe");
  XofIntegralType<unsigned short>::XofIntegralType(&v215, &v214, 0, 2016, 0);
  std::string::basic_string[abi:ne200100]<0>(&v210, "satType");
  XofIntegralType<unsigned char>::XofIntegralType(&v211, &v210, 0, 3, 0);
  std::string::basic_string[abi:ne200100]<0>(&v206, "fitHours");
  XofIntegralType<unsigned char>::XofIntegralType(&v207, &v206, 0, 6, 0);
  std::string::basic_string[abi:ne200100]<0>(&v202, "sTgdB2ap_Corr");
  XofIntegralType<signed char>::XofIntegralType(&v203, &v202, -128, 127, 0);
  std::string::basic_string[abi:ne200100]<0>(&v198, "reserved1");
  XofIntegralType<unsigned char>::XofIntegralType(&v199, &v198, 0, 255, 0);
  std::string::basic_string[abi:ne200100]<0>(&v194, "sDeltaA");
  XofIntegralType<int>::XofIntegralType(&v195, &v194, -33554432, 0x1FFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v190, "sADot");
  XofIntegralType<int>::XofIntegralType(&v191, &v190, -16777216, 0xFFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v186, "sDeltaN");
  XofIntegralType<int>::XofIntegralType(&v187, &v186, -65536, 0xFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v182, "sDeltaNDot");
  XofIntegralType<int>::XofIntegralType(&v183, &v182, -4194304, 0x3FFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v178, "sM0");
  XofIntegralType<long long>::XofIntegralType(v179, &v178);
  std::string::basic_string[abi:ne200100]<0>(&v174, "sE");
  XofIntegralType<unsigned long long>::XofIntegralType(v175, &v174, 0, 0x1FFFFFFFFLL, 0);
  std::string::basic_string[abi:ne200100]<0>(&v170, "sW");
  XofIntegralType<long long>::XofIntegralType(v171, &v170);
  std::string::basic_string[abi:ne200100]<0>(&v166, "sOmega0");
  XofIntegralType<long long>::XofIntegralType(v167, &v166);
  std::string::basic_string[abi:ne200100]<0>(&v162, "sI0");
  XofIntegralType<long long>::XofIntegralType(v163, &v162);
  std::string::basic_string[abi:ne200100]<0>(&v158, "sOmegaDot");
  XofIntegralType<int>::XofIntegralType(&v159, &v158, -262144, 0x3FFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v154, "sIDot");
  XofIntegralType<short>::XofIntegralType(&v155, &v154, -16384, 0x3FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v150, "sToc");
  XofIntegralType<unsigned short>::XofIntegralType(&v151, &v150, 0, 2016, 0);
  std::string::basic_string[abi:ne200100]<0>(&v146, "sCic");
  XofIntegralType<short>::XofIntegralType(&v147, &v146, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v142, "sCis");
  XofIntegralType<short>::XofIntegralType(&v143, &v142, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v138, "sCrc");
  XofIntegralType<int>::XofIntegralType(&v139, &v138, -8388608, 0x7FFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v134, "sCrs");
  XofIntegralType<int>::XofIntegralType(&v135, &v134, -8388608, 0x7FFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v130, "sCuc");
  XofIntegralType<int>::XofIntegralType(&v131, &v130, -1048576, 0xFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v126, "sCus");
  XofIntegralType<int>::XofIntegralType(&v127, &v126, -1048576, 0xFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v122, "sAf0n");
  XofIntegralType<int>::XofIntegralType(&v123, &v122, -16777216, 0xFFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v118, "sAf1n");
  XofIntegralType<int>::XofIntegralType(&v119, &v118, -2097152, 0x1FFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v114, "sAf2n");
  XofIntegralType<short>::XofIntegralType(&v115, &v114, -1024, 1023, 0);
  std::string::basic_string[abi:ne200100]<0>(&v110, "sTgdB2ap");
  XofIntegralType<short>::XofIntegralType(&v111, &v110, -2048, 2047, 0);
  std::string::basic_string[abi:ne200100]<0>(&v106, "sIscB2ad");
  XofIntegralType<short>::XofIntegralType(&v107, &v106, -2048, 2047, 0);
  std::string::basic_string[abi:ne200100]<0>(&v102, "sTgdB1cp");
  XofIntegralType<short>::XofIntegralType(&v103, &v102, -2048, 2047, 0);
  std::string::basic_string[abi:ne200100]<0>(&v98, "sIscB1cd");
  XofIntegralType<short>::XofIntegralType(&v99, &v98, -2048, 2047, 0);
  std::string::basic_string[abi:ne200100]<0>(&v94, "sTop");
  XofIntegralType<unsigned short>::XofIntegralType(&v95, &v94, 0, 2016, 0);
  std::string::basic_string[abi:ne200100]<0>(&v90, "sisaOcb");
  XofIntegralType<unsigned char>::XofIntegralType(&v91, &v90, 0, 31, 0);
  std::string::basic_string[abi:ne200100]<0>(&v86, "sisaOc1");
  XofIntegralType<unsigned char>::XofIntegralType(&v87, &v86, 0, 7, 0);
  std::string::basic_string[abi:ne200100]<0>(&v82, "sisaOc2");
  XofIntegralType<unsigned char>::XofIntegralType(&v83, &v82, 0, 7, 0);
  std::string::basic_string[abi:ne200100]<0>(&v78, "sisaOe");
  XofIntegralType<unsigned char>::XofIntegralType(&v79, &v78, 0, 31, 0);
  std::string::basic_string[abi:ne200100]<0>(&__p, "reserved2");
  XofIntegralType<unsigned int>::XofIntegralType(&v75, &__p, 0, -1, 0);
  *this = v267;
  *(this + 3) = v269;
  *(this + 8) = v263;
  v2 = v259;
  v3 = v261;
  *(this + 7) = v265;
  *(this + 8) = v2;
  *(this + 8) = v268;
  v268 = 0uLL;
  v269 = 0;
  *(this + 40) = v264;
  v265 = 0;
  v264 = 0uLL;
  v4 = v260;
  *(this + 11) = v3;
  *(this + 72) = v4;
  v260 = 0uLL;
  v261 = 0;
  v5 = v255;
  v6 = v256;
  *(this + 16) = v257;
  *(this + 6) = v5;
  *(this + 7) = v6;
  v256 = 0uLL;
  v257 = 0;
  *(this + 34) = v251;
  v7 = v252;
  *(this + 20) = v253;
  *(this + 9) = v7;
  v252 = 0uLL;
  v253 = 0;
  *(this + 42) = v247;
  v8 = v248;
  *(this + 24) = v249;
  *(this + 11) = v8;
  v248 = 0uLL;
  v249 = 0;
  *(this + 50) = v243;
  v9 = v244;
  *(this + 28) = v245;
  *(this + 13) = v9;
  v244 = 0uLL;
  v245 = 0;
  *(this + 58) = v239;
  v10 = v240;
  *(this + 32) = v241;
  *(this + 15) = v10;
  v240 = 0uLL;
  v241 = 0;
  *(this + 66) = v235;
  v11 = v236;
  *(this + 36) = v237;
  *(this + 17) = v11;
  v236 = 0uLL;
  v237 = 0;
  *(this + 74) = v231;
  v12 = v232;
  *(this + 40) = v233;
  *(this + 19) = v12;
  v232 = 0uLL;
  v233 = 0;
  *(this + 82) = v227;
  v13 = v228;
  *(this + 44) = v229;
  *(this + 21) = v13;
  v228 = 0uLL;
  v229 = 0;
  *(this + 90) = v223;
  v14 = v225;
  *(this + 23) = v224;
  v224 = 0uLL;
  v225 = 0;
  v15 = v219;
  v16 = v221;
  *(this + 48) = v14;
  *(this + 49) = v15;
  *(this + 25) = v220;
  v220 = 0uLL;
  v221 = 0;
  v17 = v215;
  v18 = v217;
  *(this + 52) = v16;
  *(this + 53) = v17;
  v19 = v216;
  *(this + 56) = v18;
  *(this + 27) = v19;
  v216 = 0uLL;
  v217 = 0;
  *(this + 114) = v211;
  v20 = v212;
  *(this + 60) = v213;
  *(this + 29) = v20;
  v212 = 0uLL;
  v213 = 0;
  *(this + 122) = v207;
  v21 = v208;
  *(this + 64) = v209;
  *(this + 31) = v21;
  v208 = 0uLL;
  v209 = 0;
  *(this + 130) = v203;
  v22 = v204;
  *(this + 68) = v205;
  *(this + 33) = v22;
  v204 = 0uLL;
  v205 = 0;
  *(this + 138) = v199;
  v23 = v200;
  *(this + 72) = v201;
  *(this + 35) = v23;
  v200 = 0uLL;
  v201 = 0;
  v24 = v196;
  *(this + 584) = v195;
  *(this + 77) = v197;
  *(this + 600) = v24;
  v196 = 0uLL;
  v197 = 0;
  v25 = v191;
  v26 = v192;
  *(this + 82) = v193;
  *(this + 39) = v25;
  *(this + 40) = v26;
  v192 = 0uLL;
  v193 = 0;
  v27 = v188;
  *(this + 664) = v187;
  *(this + 87) = v189;
  *(this + 680) = v27;
  v188 = 0uLL;
  v189 = 0;
  v28 = v183;
  v29 = v184;
  *(this + 92) = v185;
  *(this + 44) = v28;
  *(this + 45) = v29;
  v184 = 0uLL;
  v185 = 0;
  v30 = v179[1];
  *(this + 744) = v179[0];
  *(this + 760) = v30;
  v31 = v180;
  *(this + 99) = v181;
  *(this + 776) = v31;
  v180 = 0uLL;
  v181 = 0;
  v32 = v175[1];
  *(this + 50) = v175[0];
  *(this + 51) = v32;
  v33 = v176;
  *(this + 106) = v177;
  *(this + 52) = v33;
  v176 = 0uLL;
  v177 = 0;
  v34 = v171[1];
  *(this + 856) = v171[0];
  *(this + 872) = v34;
  v35 = v172;
  *(this + 113) = v173;
  *(this + 888) = v35;
  v172 = 0uLL;
  v173 = 0;
  v36 = v167[1];
  *(this + 57) = v167[0];
  *(this + 58) = v36;
  v37 = v168;
  *(this + 120) = v169;
  *(this + 59) = v37;
  v168 = 0uLL;
  v169 = 0;
  v38 = v163[1];
  *(this + 968) = v163[0];
  *(this + 984) = v38;
  v39 = v164;
  *(this + 127) = v165;
  *(this + 1000) = v39;
  v164 = 0uLL;
  v165 = 0;
  v40 = v160;
  *(this + 64) = v159;
  *(this + 132) = v161;
  *(this + 65) = v40;
  v160 = 0uLL;
  v161 = 0;
  v41 = v157;
  *(this + 133) = v155;
  v42 = v156;
  *(this + 136) = v41;
  *(this + 67) = v42;
  v156 = 0uLL;
  v157 = 0;
  v43 = v153;
  *(this + 137) = v151;
  v44 = v152;
  *(this + 140) = v43;
  *(this + 69) = v44;
  v152 = 0uLL;
  v153 = 0;
  v45 = v149;
  *(this + 141) = v147;
  v46 = v148;
  *(this + 144) = v45;
  *(this + 71) = v46;
  v148 = 0uLL;
  v149 = 0;
  v47 = v145;
  *(this + 145) = v143;
  v48 = v144;
  *(this + 148) = v47;
  *(this + 73) = v48;
  v144 = 0uLL;
  v145 = 0;
  v49 = v140;
  *(this + 1192) = v139;
  *(this + 153) = v141;
  *(this + 1208) = v49;
  v140 = 0uLL;
  v141 = 0;
  v50 = v136;
  *(this + 77) = v135;
  *(this + 158) = v137;
  *(this + 78) = v50;
  v136 = 0uLL;
  v137 = 0;
  v51 = v132;
  *(this + 1272) = v131;
  *(this + 163) = v133;
  *(this + 1288) = v51;
  v132 = 0uLL;
  v133 = 0;
  v52 = v128;
  *(this + 82) = v127;
  *(this + 168) = v129;
  *(this + 83) = v52;
  v128 = 0uLL;
  v129 = 0;
  v53 = v124;
  *(this + 1352) = v123;
  *(this + 173) = v125;
  *(this + 1368) = v53;
  v124 = 0uLL;
  v125 = 0;
  v54 = v120;
  *(this + 87) = v119;
  *(this + 178) = v121;
  *(this + 88) = v54;
  v120 = 0uLL;
  v121 = 0;
  v55 = v117;
  *(this + 179) = v115;
  v56 = v116;
  *(this + 182) = v55;
  *(this + 90) = v56;
  v116 = 0uLL;
  v117 = 0;
  v57 = v113;
  *(this + 183) = v111;
  v58 = v112;
  *(this + 186) = v57;
  *(this + 92) = v58;
  v112 = 0uLL;
  v113 = 0;
  v59 = v109;
  *(this + 187) = v107;
  v60 = v108;
  *(this + 190) = v59;
  *(this + 94) = v60;
  v108 = 0uLL;
  v109 = 0;
  v61 = v105;
  *(this + 191) = v103;
  v62 = v104;
  *(this + 194) = v61;
  *(this + 96) = v62;
  v104 = 0uLL;
  v105 = 0;
  v63 = v101;
  *(this + 195) = v99;
  v64 = v100;
  v65 = v95;
  v66 = v97;
  *(this + 198) = v63;
  *(this + 98) = v64;
  v100 = 0uLL;
  v101 = 0;
  *(this + 199) = v65;
  v67 = v96;
  *(this + 202) = v66;
  *(this + 100) = v67;
  v96 = 0uLL;
  v97 = 0;
  *(this + 406) = v91;
  v68 = v92;
  *(this + 206) = v93;
  *(this + 102) = v68;
  v92 = 0uLL;
  v93 = 0;
  *(this + 414) = v87;
  v69 = v88;
  *(this + 210) = v89;
  *(this + 104) = v69;
  v88 = 0uLL;
  v89 = 0;
  *(this + 422) = v83;
  v70 = v84;
  *(this + 214) = v85;
  *(this + 106) = v70;
  v84 = 0uLL;
  v85 = 0;
  *(this + 430) = v79;
  v71 = *v80;
  *(this + 218) = v81;
  *(this + 108) = v71;
  v80[0] = 0;
  v80[1] = 0;
  v81 = 0;
  v72 = v76;
  *(this + 1752) = v75;
  LODWORD(v65) = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  *(this + 223) = v77;
  *(this + 1768) = v72;
  v76 = 0uLL;
  v77 = 0;
  if ((v65 & 0x80000000) != 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v81) < 0)
    {
      operator delete(v80[0]);
    }
  }

  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v85) < 0)
  {
    operator delete(v84);
  }

  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v82.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v89) < 0)
  {
    operator delete(v88);
  }

  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v86.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v93) < 0)
  {
    operator delete(v92);
  }

  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v90.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v97) < 0)
  {
    operator delete(v96);
  }

  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v94.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v101) < 0)
  {
    operator delete(v100);
  }

  if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v98.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v105) < 0)
  {
    operator delete(v104);
  }

  if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v102.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v109) < 0)
  {
    operator delete(v108);
  }

  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v106.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v113) < 0)
  {
    operator delete(v112);
  }

  if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v110.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v117) < 0)
  {
    operator delete(v116);
  }

  if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v114.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v121) < 0)
  {
    operator delete(v120);
  }

  if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v118.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v125) < 0)
  {
    operator delete(v124);
  }

  if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v122.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v129) < 0)
  {
    operator delete(v128);
  }

  if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v126.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v133) < 0)
  {
    operator delete(v132);
  }

  if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v130.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v137) < 0)
  {
    operator delete(v136);
  }

  if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v134.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v141) < 0)
  {
    operator delete(v140);
  }

  if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v138.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v145) < 0)
  {
    operator delete(v144);
  }

  if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v142.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v149) < 0)
  {
    operator delete(v148);
  }

  if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v146.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v153) < 0)
  {
    operator delete(v152);
  }

  if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v150.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v157) < 0)
  {
    operator delete(v156);
  }

  if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v154.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v161) < 0)
  {
    operator delete(v160);
  }

  if (SHIBYTE(v158.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v158.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v165) < 0)
  {
    operator delete(v164);
  }

  if (SHIBYTE(v162.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v162.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v169) < 0)
  {
    operator delete(v168);
  }

  if (SHIBYTE(v166.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v166.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v173) < 0)
  {
    operator delete(v172);
  }

  if (SHIBYTE(v170.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v170.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v177) < 0)
  {
    operator delete(v176);
  }

  if (SHIBYTE(v174.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v174.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v181) < 0)
  {
    operator delete(v180);
  }

  if (SHIBYTE(v178.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v178.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v185) < 0)
  {
    operator delete(v184);
  }

  if (SHIBYTE(v182.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v182.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v189) < 0)
  {
    operator delete(v188);
  }

  if (SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v186.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v193) < 0)
  {
    operator delete(v192);
  }

  if (SHIBYTE(v190.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v190.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v197) < 0)
  {
    operator delete(v196);
  }

  if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v194.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v201) < 0)
  {
    operator delete(v200);
  }

  if (SHIBYTE(v198.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v198.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v205) < 0)
  {
    operator delete(v204);
  }

  if (SHIBYTE(v202.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v202.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v209) < 0)
  {
    operator delete(v208);
  }

  if (SHIBYTE(v206.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v206.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v213) < 0)
  {
    operator delete(v212);
  }

  if (SHIBYTE(v210.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v210.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v217) < 0)
  {
    operator delete(v216);
  }

  if (SHIBYTE(v214.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v214.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v221) < 0)
  {
    operator delete(v220);
  }

  if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v218.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v225) < 0)
  {
    operator delete(v224);
  }

  if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v222.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v229) < 0)
  {
    operator delete(v228);
  }

  if (SHIBYTE(v226.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v226.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v233) < 0)
  {
    operator delete(v232);
  }

  if (SHIBYTE(v230.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v230.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v237) < 0)
  {
    operator delete(v236);
  }

  if (SHIBYTE(v234.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v234.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v241) < 0)
  {
    operator delete(v240);
  }

  if (SHIBYTE(v238.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v238.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v245) < 0)
  {
    operator delete(v244);
  }

  if (SHIBYTE(v242.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v242.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v249) < 0)
  {
    operator delete(v248);
  }

  if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v246.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v253) < 0)
  {
    operator delete(v252);
  }

  if (SHIBYTE(v250.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v250.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v257) < 0)
  {
    operator delete(v256);
  }

  if (SHIBYTE(v254.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v254.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v261) < 0)
  {
    operator delete(v260);
  }

  if (SHIBYTE(v258.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v258.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v265) < 0)
  {
    operator delete(v264);
  }

  if (SHIBYTE(v262.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v262.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v269) < 0)
  {
    operator delete(v268);
  }

  if (SHIBYTE(v266.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v266.__r_.__value_.__l.__data_);
  }

  v73 = *MEMORY[0x29EDCA608];
}

void sub_298FA33E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a58 < 0)
  {
    operator delete(a53);
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  if (a71 < 0)
  {
    operator delete(a66);
  }

  if (a64 < 0)
  {
    operator delete(a59);
  }

  if (a75 < 0)
  {
    operator delete(a74);
  }

  if (a73 < 0)
  {
    operator delete(a72);
  }

  if (a79 < 0)
  {
    operator delete(a78);
  }

  if (a77 < 0)
  {
    operator delete(a76);
  }

  if (a83 < 0)
  {
    operator delete(a82);
  }

  if (a81 < 0)
  {
    operator delete(a80);
  }

  if (a87 < 0)
  {
    operator delete(a86);
  }

  if (a85 < 0)
  {
    operator delete(a84);
  }

  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(STACK[0x220]);
  }

  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  if (SLOBYTE(STACK[0x26F]) < 0)
  {
    operator delete(STACK[0x258]);
  }

  if (SLOBYTE(STACK[0x24F]) < 0)
  {
    operator delete(STACK[0x238]);
  }

  if (SLOBYTE(STACK[0x2AF]) < 0)
  {
    operator delete(STACK[0x298]);
  }

  if (SLOBYTE(STACK[0x287]) < 0)
  {
    operator delete(STACK[0x270]);
  }

  if (SLOBYTE(STACK[0x2EF]) < 0)
  {
    operator delete(STACK[0x2D8]);
  }

  if (SLOBYTE(STACK[0x2C7]) < 0)
  {
    operator delete(STACK[0x2B0]);
  }

  if (SLOBYTE(STACK[0x32F]) < 0)
  {
    operator delete(STACK[0x318]);
  }

  if (SLOBYTE(STACK[0x307]) < 0)
  {
    operator delete(STACK[0x2F0]);
  }

  if (SLOBYTE(STACK[0x36F]) < 0)
  {
    operator delete(STACK[0x358]);
  }

  if (SLOBYTE(STACK[0x347]) < 0)
  {
    operator delete(STACK[0x330]);
  }

  if (SLOBYTE(STACK[0x3AF]) < 0)
  {
    operator delete(STACK[0x398]);
  }

  if (SLOBYTE(STACK[0x387]) < 0)
  {
    operator delete(STACK[0x370]);
  }

  if (SLOBYTE(STACK[0x3EF]) < 0)
  {
    operator delete(STACK[0x3D8]);
  }

  if (SLOBYTE(STACK[0x3C7]) < 0)
  {
    operator delete(STACK[0x3B0]);
  }

  if (SLOBYTE(STACK[0x427]) < 0)
  {
    operator delete(STACK[0x410]);
  }

  if (SLOBYTE(STACK[0x407]) < 0)
  {
    operator delete(STACK[0x3F0]);
  }

  if (SLOBYTE(STACK[0x45F]) < 0)
  {
    operator delete(STACK[0x448]);
  }

  if (SLOBYTE(STACK[0x43F]) < 0)
  {
    operator delete(STACK[0x428]);
  }

  if (SLOBYTE(STACK[0x497]) < 0)
  {
    operator delete(STACK[0x480]);
  }

  if (SLOBYTE(STACK[0x477]) < 0)
  {
    operator delete(STACK[0x460]);
  }

  if (SLOBYTE(STACK[0x4CF]) < 0)
  {
    operator delete(STACK[0x4B8]);
  }

  if (SLOBYTE(STACK[0x4AF]) < 0)
  {
    operator delete(STACK[0x498]);
  }

  if (SLOBYTE(STACK[0x50F]) < 0)
  {
    operator delete(STACK[0x4F8]);
  }

  if (SLOBYTE(STACK[0x4E7]) < 0)
  {
    operator delete(STACK[0x4D0]);
  }

  if (SLOBYTE(STACK[0x55F]) < 0)
  {
    operator delete(STACK[0x548]);
  }

  if (SLOBYTE(STACK[0x527]) < 0)
  {
    operator delete(STACK[0x510]);
  }

  if (SLOBYTE(STACK[0x5AF]) < 0)
  {
    operator delete(STACK[0x598]);
  }

  if (SLOBYTE(STACK[0x577]) < 0)
  {
    operator delete(STACK[0x560]);
  }

  if (SLOBYTE(STACK[0x5FF]) < 0)
  {
    operator delete(STACK[0x5E8]);
  }

  if (SLOBYTE(STACK[0x5C7]) < 0)
  {
    operator delete(STACK[0x5B0]);
  }

  if (SLOBYTE(STACK[0x64F]) < 0)
  {
    operator delete(STACK[0x638]);
  }

  if (SLOBYTE(STACK[0x617]) < 0)
  {
    operator delete(STACK[0x600]);
  }

  if (SLOBYTE(STACK[0x69F]) < 0)
  {
    operator delete(STACK[0x688]);
  }

  if (SLOBYTE(STACK[0x667]) < 0)
  {
    operator delete(STACK[0x650]);
  }

  if (SLOBYTE(STACK[0x6DF]) < 0)
  {
    operator delete(STACK[0x6C8]);
  }

  if (SLOBYTE(STACK[0x6B7]) < 0)
  {
    operator delete(STACK[0x6A0]);
  }

  if (SLOBYTE(STACK[0x71F]) < 0)
  {
    operator delete(STACK[0x708]);
  }

  if (SLOBYTE(STACK[0x6F7]) < 0)
  {
    operator delete(STACK[0x6E0]);
  }

  if (SLOBYTE(STACK[0x75F]) < 0)
  {
    operator delete(STACK[0x748]);
  }

  if (SLOBYTE(STACK[0x737]) < 0)
  {
    operator delete(STACK[0x720]);
  }

  if (SLOBYTE(STACK[0x79F]) < 0)
  {
    operator delete(STACK[0x788]);
  }

  if (SLOBYTE(STACK[0x777]) < 0)
  {
    operator delete(STACK[0x760]);
  }

  if (SLOBYTE(STACK[0x7D7]) < 0)
  {
    operator delete(STACK[0x7C0]);
  }

  if (SLOBYTE(STACK[0x7B7]) < 0)
  {
    operator delete(STACK[0x7A0]);
  }

  if (SLOBYTE(STACK[0x80F]) < 0)
  {
    operator delete(STACK[0x7F8]);
  }

  if (SLOBYTE(STACK[0x7EF]) < 0)
  {
    operator delete(STACK[0x7D8]);
  }

  if (SLOBYTE(STACK[0x847]) < 0)
  {
    operator delete(STACK[0x830]);
  }

  if (SLOBYTE(STACK[0x827]) < 0)
  {
    operator delete(STACK[0x810]);
  }

  if (SLOBYTE(STACK[0x87F]) < 0)
  {
    operator delete(STACK[0x868]);
  }

  if (SLOBYTE(STACK[0x85F]) < 0)
  {
    operator delete(STACK[0x848]);
  }

  if (SLOBYTE(STACK[0x8B7]) < 0)
  {
    operator delete(STACK[0x8A0]);
  }

  if (SLOBYTE(STACK[0x897]) < 0)
  {
    operator delete(STACK[0x880]);
  }

  if (SLOBYTE(STACK[0x8EF]) < 0)
  {
    operator delete(STACK[0x8D8]);
  }

  if (SLOBYTE(STACK[0x8CF]) < 0)
  {
    operator delete(STACK[0x8B8]);
  }

  if (SLOBYTE(STACK[0x927]) < 0)
  {
    operator delete(STACK[0x910]);
  }

  if (SLOBYTE(STACK[0x907]) < 0)
  {
    operator delete(STACK[0x8F0]);
  }

  if (SLOBYTE(STACK[0x95F]) < 0)
  {
    operator delete(STACK[0x948]);
  }

  if (SLOBYTE(STACK[0x93F]) < 0)
  {
    operator delete(STACK[0x928]);
  }

  if (SLOBYTE(STACK[0x997]) < 0)
  {
    operator delete(STACK[0x980]);
  }

  if (SLOBYTE(STACK[0x977]) < 0)
  {
    operator delete(STACK[0x960]);
  }

  if (SLOBYTE(STACK[0x9CF]) < 0)
  {
    operator delete(STACK[0x9B8]);
  }

  if (SLOBYTE(STACK[0x9AF]) < 0)
  {
    operator delete(STACK[0x998]);
  }

  if (SLOBYTE(STACK[0xA07]) < 0)
  {
    operator delete(STACK[0x9F0]);
  }

  if (SLOBYTE(STACK[0x9E7]) < 0)
  {
    operator delete(STACK[0x9D0]);
  }

  if (SLOBYTE(STACK[0xA3F]) < 0)
  {
    operator delete(STACK[0xA28]);
  }

  if (SLOBYTE(STACK[0xA1F]) < 0)
  {
    operator delete(STACK[0xA08]);
  }

  if (SLOBYTE(STACK[0xA77]) < 0)
  {
    operator delete(STACK[0xA60]);
  }

  if (SLOBYTE(STACK[0xA57]) < 0)
  {
    operator delete(STACK[0xA40]);
  }

  if (SLOBYTE(STACK[0xAAF]) < 0)
  {
    operator delete(STACK[0xA98]);
  }

  if (SLOBYTE(STACK[0xA8F]) < 0)
  {
    operator delete(STACK[0xA78]);
  }

  if (*(v87 - 193) < 0)
  {
    operator delete(*(v87 - 216));
  }

  if (*(v87 - 233) < 0)
  {
    operator delete(*(v87 - 256));
  }

  if (*(v87 - 137) < 0)
  {
    operator delete(*(v87 - 160));
  }

  if (*(v87 - 169) < 0)
  {
    operator delete(*(v87 - 192));
  }

  if (*(v87 - 81) < 0)
  {
    operator delete(*(v87 - 104));
  }

  if (*(v87 - 113) < 0)
  {
    operator delete(*(v87 - 136));
  }

  if (*(v87 - 25) < 0)
  {
    operator delete(*(v87 - 48));
  }

  if (*(v87 - 57) < 0)
  {
    operator delete(*(v87 - 80));
  }

  _Unwind_Resume(a1);
}

uint64_t XofIntegralType<long long>::XofIntegralType(uint64_t a1, const std::string *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  std::string::operator=((a1 + 32), a2);
  *a1 = xmmword_2990516A0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v3 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_298FA3D90(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul,31ul,32ul,33ul,34ul,35ul,36ul,37ul,38ul,39ul,40ul,41ul,42ul,43ul,44ul,45ul,46ul,47ul,48ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<long long>,XofIntegralType<unsigned long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>>::~__tuple_impl(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  if (*(a1 + 1791) < 0)
  {
    operator delete(*(a1 + 1768));
  }

  if (*(a1 + 1751) < 0)
  {
    operator delete(*(a1 + 1728));
  }

  if (*(a1 + 1719) < 0)
  {
    operator delete(*(a1 + 1696));
  }

  if (*(a1 + 1687) < 0)
  {
    operator delete(*(a1 + 1664));
  }

  if (*(a1 + 1655) < 0)
  {
    operator delete(*(a1 + 1632));
  }

  if (*(a1 + 1623) < 0)
  {
    operator delete(*(a1 + 1600));
  }

  if (*(a1 + 1591) < 0)
  {
    operator delete(*(a1 + 1568));
  }

  if (*(a1 + 1559) < 0)
  {
    operator delete(*(a1 + 1536));
  }

  if (*(a1 + 1527) < 0)
  {
    operator delete(*(a1 + 1504));
  }

  if (*(a1 + 1495) < 0)
  {
    operator delete(*(a1 + 1472));
  }

  if (*(a1 + 1463) < 0)
  {
    operator delete(*(a1 + 1440));
  }

  if (*(a1 + 1431) < 0)
  {
    operator delete(*(a1 + 1408));
  }

  if (*(a1 + 1391) < 0)
  {
    operator delete(*(a1 + 1368));
  }

  if (*(a1 + 1351) < 0)
  {
    operator delete(*(a1 + 1328));
  }

  if (*(a1 + 1311) < 0)
  {
    operator delete(*(a1 + 1288));
  }

  if (*(a1 + 1271) < 0)
  {
    operator delete(*(a1 + 1248));
  }

  if (*(a1 + 1231) < 0)
  {
    operator delete(*(a1 + 1208));
  }

  if (*(a1 + 1191) < 0)
  {
    operator delete(*(a1 + 1168));
  }

  if (*(a1 + 1159) < 0)
  {
    operator delete(*(a1 + 1136));
  }

  if (*(a1 + 1127) < 0)
  {
    operator delete(*(a1 + 1104));
  }

  if (*(a1 + 1095) < 0)
  {
    operator delete(*(a1 + 1072));
  }

  if (*(a1 + 1063) < 0)
  {
    operator delete(*(a1 + 1040));
  }

  if (*(a1 + 1023) < 0)
  {
    operator delete(*(a1 + 1000));
  }

  if (*(a1 + 967) < 0)
  {
    operator delete(*(a1 + 944));
  }

  if (*(a1 + 911) < 0)
  {
    operator delete(*(a1 + 888));
  }

  if (*(a1 + 855) < 0)
  {
    operator delete(*(a1 + 832));
  }

  if (*(a1 + 799) < 0)
  {
    operator delete(*(a1 + 776));
  }

  if (*(a1 + 743) < 0)
  {
    operator delete(*(a1 + 720));
  }

  if (*(a1 + 703) < 0)
  {
    operator delete(*(a1 + 680));
  }

  if (*(a1 + 663) < 0)
  {
    operator delete(*(a1 + 640));
  }

  if (*(a1 + 623) < 0)
  {
    operator delete(*(a1 + 600));
  }

  if (*(a1 + 583) < 0)
  {
    operator delete(*(a1 + 560));
  }

  if (*(a1 + 551) < 0)
  {
    operator delete(*(a1 + 528));
  }

  if (*(a1 + 519) < 0)
  {
    operator delete(*(a1 + 496));
  }

  if (*(a1 + 487) < 0)
  {
    operator delete(*(a1 + 464));
  }

  if (*(a1 + 455) < 0)
  {
    operator delete(*(a1 + 432));
  }

  if (*(a1 + 423) < 0)
  {
    operator delete(*(a1 + 400));
  }

  if (*(a1 + 391) < 0)
  {
    operator delete(*(a1 + 368));
  }

  if (*(a1 + 359) < 0)
  {
    operator delete(*(a1 + 336));
  }

  if (*(a1 + 327) < 0)
  {
    operator delete(*(a1 + 304));
  }

  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  if (*(a1 + 263) < 0)
  {
    operator delete(*(a1 + 240));
  }

  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  v2 = *MEMORY[0x29EDCA608];
  return a1;
}

void XofNavicEphemerisCodec::XofNavicEphemerisCodec(XofNavicEphemerisCodec *this)
{
  v159 = *MEMORY[0x29EDCA608];
  std::string::basic_string[abi:ne200100]<0>(&v155, "satID");
  XofIntegralType<unsigned char>::XofIntegralType(&v156, &v155, 1, 14, 0);
  std::string::basic_string[abi:ne200100]<0>(&v151, "weekNo");
  XofIntegralType<unsigned short>::XofIntegralType(&v152, &v151, 0, 0x1FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v147, "sToc");
  XofIntegralType<unsigned short>::XofIntegralType(&v148, &v147, 0, 37799, 0);
  std::string::basic_string[abi:ne200100]<0>(&v143, "IODEC");
  XofIntegralType<unsigned char>::XofIntegralType(&v144, &v143, 0, 255, 0);
  std::string::basic_string[abi:ne200100]<0>(&v139, "L5HealthFlag");
  XofIntegralType<unsigned char>::XofIntegralType(&v140, &v139, 0, 1, 0);
  std::string::basic_string[abi:ne200100]<0>(&v135, "SHealthFlag");
  XofIntegralType<unsigned char>::XofIntegralType(&v136, &v135, 0, 1, 0);
  std::string::basic_string[abi:ne200100]<0>(&v131, "AlertFlag");
  XofIntegralType<unsigned char>::XofIntegralType(&v132, &v131, 0, 1, 0);
  std::string::basic_string[abi:ne200100]<0>(&v127, "FitHours");
  XofIntegralType<unsigned char>::XofIntegralType(&v128, &v127, 1, 6, 0);
  std::string::basic_string[abi:ne200100]<0>(&v123, "reserved1");
  XofIntegralType<unsigned int>::XofIntegralType(&v124, &v123, 0, -1, 0);
  std::string::basic_string[abi:ne200100]<0>(&v119, "reserved2");
  XofIntegralType<unsigned short>::XofIntegralType(&v120, &v119, 0, 0xFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v115, "URAI");
  XofIntegralType<signed char>::XofIntegralType(&v116, &v115, -16, 15, 0);
  std::string::basic_string[abi:ne200100]<0>(&v111, "sAf0");
  XofIntegralType<int>::XofIntegralType(&v112, &v111, -33554432, 0x1FFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v107, "sAf1");
  XofIntegralType<short>::XofIntegralType(&v108, &v107, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v103, "sAf2");
  XofIntegralType<signed char>::XofIntegralType(&v104, &v103, -128, 127, -1);
  std::string::basic_string[abi:ne200100]<0>(&v99, "sTgd");
  XofIntegralType<short>::XofIntegralType(&v100, &v99, -32768, 0x7FFF, -1);
  std::string::basic_string[abi:ne200100]<0>(&v95, "sIDOT");
  XofIntegralType<short>::XofIntegralType(&v96, &v95, -8192, 0x1FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v91, "sAPowerHalf");
  XofIntegralType<unsigned int>::XofIntegralType(&v92, &v91, 0, -1, 0);
  std::string::basic_string[abi:ne200100]<0>(&v87, "sE");
  XofIntegralType<unsigned int>::XofIntegralType(&v88, &v87, 0, -1, 0);
  std::string::basic_string[abi:ne200100]<0>(&v83, "sI0");
  XofIntegralType<int>::XofIntegralType(&v84, &v83, 0x80000000, 0x7FFFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v79, "sOmega0");
  XofIntegralType<int>::XofIntegralType(&v80, &v79, 0x80000000, 0x7FFFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v75, "sW");
  XofIntegralType<int>::XofIntegralType(&v76, &v75, 0x80000000, 0x7FFFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v71, "sM0");
  XofIntegralType<int>::XofIntegralType(&v72, &v71, 0x80000000, 0x7FFFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v67, "sDeltaN");
  XofIntegralType<int>::XofIntegralType(&v68, &v67, -8388608, 0x7FFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v63, "sOmegaDot");
  XofIntegralType<int>::XofIntegralType(&v64, &v63, -8388608, 0x7FFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v59, "sCuc");
  XofIntegralType<short>::XofIntegralType(&v60, &v59, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v55, "sCus");
  XofIntegralType<short>::XofIntegralType(&v56, &v55, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v51, "sCic");
  XofIntegralType<short>::XofIntegralType(&v52, &v51, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v47, "sCis");
  XofIntegralType<short>::XofIntegralType(&v48, &v47, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v43, "sCrc");
  XofIntegralType<short>::XofIntegralType(&v44, &v43, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&__p, "sCrs");
  XofIntegralType<short>::XofIntegralType(&v40, &__p, -32768, 0x7FFF, 0);
  *(this + 8) = v157;
  *(this + 40) = v153;
  *(this + 72) = v149;
  *(this + 104) = v145;
  *(this + 136) = v141;
  *(this + 168) = v137;
  *(this + 200) = v133;
  *(this + 232) = v129;
  v2 = v125;
  *(this + 16) = v124;
  *(this + 17) = v2;
  *(this + 19) = v121;
  *(this + 21) = v117;
  v3 = v113;
  *(this + 360) = v112;
  *(this + 376) = v3;
  *(this + 408) = v109;
  *(this + 440) = v105;
  *(this + 472) = v101;
  *(this + 504) = v97;
  v4 = v93;
  *(this + 33) = v92;
  *(this + 34) = v4;
  v5 = v89;
  *(this + 568) = v88;
  *(this + 584) = v5;
  v6 = v85;
  *(this + 38) = v84;
  *(this + 39) = v6;
  v7 = v81;
  *(this + 648) = v80;
  *(this + 664) = v7;
  v8 = v77;
  *(this + 43) = v76;
  *(this + 44) = v8;
  v9 = v73;
  *(this + 728) = v72;
  *(this + 744) = v9;
  v10 = v69;
  *(this + 48) = v68;
  *(this + 49) = v10;
  v11 = v65;
  *(this + 808) = v64;
  *this = v156;
  v12 = v158;
  v157 = 0uLL;
  v158 = 0;
  v13 = v152;
  v14 = v154;
  *(this + 3) = v12;
  *(this + 4) = v13;
  v154 = 0;
  v153 = 0uLL;
  v15 = v148;
  v16 = v150;
  *(this + 7) = v14;
  *(this + 8) = v15;
  *(this + 11) = v16;
  v149 = 0uLL;
  v150 = 0;
  *(this + 24) = v144;
  *(this + 15) = v146;
  v145 = 0uLL;
  v146 = 0;
  *(this + 32) = v140;
  *(this + 19) = v142;
  v141 = 0uLL;
  v142 = 0;
  *(this + 40) = v136;
  *(this + 23) = v138;
  v137 = 0uLL;
  v138 = 0;
  *(this + 48) = v132;
  *(this + 27) = v134;
  v133 = 0uLL;
  v134 = 0;
  *(this + 56) = v128;
  *(this + 31) = v130;
  v129 = 0uLL;
  v130 = 0;
  v17 = v126;
  v125 = 0uLL;
  v126 = 0;
  v18 = v120;
  v19 = v122;
  *(this + 36) = v17;
  *(this + 37) = v18;
  *(this + 40) = v19;
  v121 = 0uLL;
  v122 = 0;
  *(this + 82) = v116;
  *(this + 44) = v118;
  v117 = 0uLL;
  v118 = 0;
  v20 = v114;
  v113 = 0uLL;
  v114 = 0;
  v21 = v108;
  v22 = v110;
  *(this + 49) = v20;
  *(this + 50) = v21;
  *(this + 53) = v22;
  v109 = 0uLL;
  v110 = 0;
  *(this + 108) = v104;
  v23 = v106;
  v105 = 0uLL;
  v106 = 0;
  v24 = v100;
  v25 = v102;
  *(this + 57) = v23;
  *(this + 58) = v24;
  v101 = 0uLL;
  v102 = 0;
  v26 = v96;
  v27 = v98;
  *(this + 61) = v25;
  *(this + 62) = v26;
  *(this + 65) = v27;
  v97 = 0uLL;
  v98 = 0;
  *(this + 70) = v94;
  v93 = 0uLL;
  v94 = 0;
  *(this + 75) = v90;
  v89 = 0uLL;
  v90 = 0;
  *(this + 80) = v86;
  v85 = 0uLL;
  v86 = 0;
  *(this + 85) = v82;
  v81 = 0uLL;
  v82 = 0;
  *(this + 90) = v78;
  v77 = 0uLL;
  v78 = 0;
  *(this + 95) = v74;
  v73 = 0uLL;
  v74 = 0;
  *(this + 100) = v70;
  v69 = 0uLL;
  v70 = 0;
  *(this + 105) = v66;
  *(this + 824) = v11;
  v65 = 0uLL;
  v66 = 0;
  v28 = v62;
  *(this + 106) = v60;
  v29 = v61;
  *(this + 109) = v28;
  *(this + 856) = v29;
  v61 = 0uLL;
  v62 = 0;
  v30 = v58;
  *(this + 110) = v56;
  v31 = v57;
  *(this + 113) = v30;
  *(this + 888) = v31;
  v57 = 0uLL;
  v58 = 0;
  v32 = v54;
  *(this + 114) = v52;
  v33 = v53;
  *(this + 117) = v32;
  *(this + 920) = v33;
  v53 = 0uLL;
  v54 = 0;
  v34 = v50;
  *(this + 118) = v48;
  v35 = v49;
  *(this + 121) = v34;
  *(this + 952) = v35;
  v49 = 0uLL;
  v50 = 0;
  *(this + 122) = v44;
  v36 = *v45;
  *(this + 125) = v46;
  *(this + 984) = v36;
  v45[0] = 0;
  v45[1] = 0;
  v46 = 0;
  *(this + 126) = v40;
  v37 = v41;
  *(this + 129) = v42;
  *(this + 1016) = v37;
  v41 = 0uLL;
  v42 = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45[0]);
    }
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v54) < 0)
  {
    operator delete(v53);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v58) < 0)
  {
    operator delete(v57);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v62) < 0)
  {
    operator delete(v61);
  }

  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v66) < 0)
  {
    operator delete(v65);
  }

  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v70) < 0)
  {
    operator delete(v69);
  }

  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v74) < 0)
  {
    operator delete(v73);
  }

  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v78) < 0)
  {
    operator delete(v77);
  }

  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v82) < 0)
  {
    operator delete(v81);
  }

  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v86) < 0)
  {
    operator delete(v85);
  }

  if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v83.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v90) < 0)
  {
    operator delete(v89);
  }

  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v87.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v94) < 0)
  {
    operator delete(v93);
  }

  if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v91.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v98) < 0)
  {
    operator delete(v97);
  }

  if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v95.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v102) < 0)
  {
    operator delete(v101);
  }

  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v106) < 0)
  {
    operator delete(v105);
  }

  if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v103.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v110) < 0)
  {
    operator delete(v109);
  }

  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v107.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v114) < 0)
  {
    operator delete(v113);
  }

  if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v111.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v118) < 0)
  {
    operator delete(v117);
  }

  if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v115.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v122) < 0)
  {
    operator delete(v121);
  }

  if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v119.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v126) < 0)
  {
    operator delete(v125);
  }

  if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v123.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v130) < 0)
  {
    operator delete(v129);
  }

  if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v127.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v134) < 0)
  {
    operator delete(v133);
  }

  if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v131.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v138) < 0)
  {
    operator delete(v137);
  }

  if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v135.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v142) < 0)
  {
    operator delete(v141);
  }

  if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v139.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v146) < 0)
  {
    operator delete(v145);
  }

  if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v143.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v150) < 0)
  {
    operator delete(v149);
  }

  if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v147.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v154) < 0)
  {
    operator delete(v153);
  }

  if (SHIBYTE(v151.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v151.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v158) < 0)
  {
    operator delete(v157);
  }

  if (SHIBYTE(v155.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v155.__r_.__value_.__l.__data_);
  }

  v38 = *MEMORY[0x29EDCA608];
}

void sub_298FA4DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a58 < 0)
  {
    operator delete(a53);
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  if (a71 < 0)
  {
    operator delete(a66);
  }

  if (a64 < 0)
  {
    operator delete(a59);
  }

  if (a75 < 0)
  {
    operator delete(a74);
  }

  if (a73 < 0)
  {
    operator delete(a72);
  }

  if (a79 < 0)
  {
    operator delete(a78);
  }

  if (a77 < 0)
  {
    operator delete(a76);
  }

  if (a83 < 0)
  {
    operator delete(a82);
  }

  if (a81 < 0)
  {
    operator delete(a80);
  }

  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  if (a85 < 0)
  {
    operator delete(a84);
  }

  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
  }

  if (SLOBYTE(STACK[0x22F]) < 0)
  {
    operator delete(STACK[0x218]);
  }

  if (SLOBYTE(STACK[0x297]) < 0)
  {
    operator delete(STACK[0x280]);
  }

  if (SLOBYTE(STACK[0x26F]) < 0)
  {
    operator delete(STACK[0x258]);
  }

  if (SLOBYTE(STACK[0x2D7]) < 0)
  {
    operator delete(STACK[0x2C0]);
  }

  if (SLOBYTE(STACK[0x2AF]) < 0)
  {
    operator delete(STACK[0x298]);
  }

  if (SLOBYTE(STACK[0x317]) < 0)
  {
    operator delete(STACK[0x300]);
  }

  if (SLOBYTE(STACK[0x2EF]) < 0)
  {
    operator delete(STACK[0x2D8]);
  }

  if (SLOBYTE(STACK[0x357]) < 0)
  {
    operator delete(STACK[0x340]);
  }

  if (SLOBYTE(STACK[0x32F]) < 0)
  {
    operator delete(STACK[0x318]);
  }

  if (SLOBYTE(STACK[0x38F]) < 0)
  {
    operator delete(STACK[0x378]);
  }

  if (SLOBYTE(STACK[0x36F]) < 0)
  {
    operator delete(STACK[0x358]);
  }

  if (SLOBYTE(STACK[0x3C7]) < 0)
  {
    operator delete(STACK[0x3B0]);
  }

  if (SLOBYTE(STACK[0x3A7]) < 0)
  {
    operator delete(STACK[0x390]);
  }

  if (SLOBYTE(STACK[0x3FF]) < 0)
  {
    operator delete(STACK[0x3E8]);
  }

  if (SLOBYTE(STACK[0x3DF]) < 0)
  {
    operator delete(STACK[0x3C8]);
  }

  if (SLOBYTE(STACK[0x437]) < 0)
  {
    operator delete(STACK[0x420]);
  }

  if (SLOBYTE(STACK[0x417]) < 0)
  {
    operator delete(STACK[0x400]);
  }

  if (SLOBYTE(STACK[0x477]) < 0)
  {
    operator delete(STACK[0x460]);
  }

  if (SLOBYTE(STACK[0x44F]) < 0)
  {
    operator delete(STACK[0x438]);
  }

  if (SLOBYTE(STACK[0x4AF]) < 0)
  {
    operator delete(STACK[0x498]);
  }

  if (SLOBYTE(STACK[0x48F]) < 0)
  {
    operator delete(STACK[0x478]);
  }

  if (SLOBYTE(STACK[0x4E7]) < 0)
  {
    operator delete(STACK[0x4D0]);
  }

  if (SLOBYTE(STACK[0x4C7]) < 0)
  {
    operator delete(STACK[0x4B0]);
  }

  if (SLOBYTE(STACK[0x527]) < 0)
  {
    operator delete(STACK[0x510]);
  }

  if (SLOBYTE(STACK[0x4FF]) < 0)
  {
    operator delete(STACK[0x4E8]);
  }

  if (SLOBYTE(STACK[0x55F]) < 0)
  {
    operator delete(STACK[0x548]);
  }

  if (SLOBYTE(STACK[0x53F]) < 0)
  {
    operator delete(STACK[0x528]);
  }

  if (SLOBYTE(STACK[0x597]) < 0)
  {
    operator delete(STACK[0x580]);
  }

  if (SLOBYTE(STACK[0x577]) < 0)
  {
    operator delete(STACK[0x560]);
  }

  if (SLOBYTE(STACK[0x5CF]) < 0)
  {
    operator delete(STACK[0x5B8]);
  }

  if (SLOBYTE(STACK[0x5AF]) < 0)
  {
    operator delete(STACK[0x598]);
  }

  if (SLOBYTE(STACK[0x607]) < 0)
  {
    operator delete(STACK[0x5F0]);
  }

  if (SLOBYTE(STACK[0x5E7]) < 0)
  {
    operator delete(STACK[0x5D0]);
  }

  if (*(v85 - 193) < 0)
  {
    operator delete(*(v85 - 216));
  }

  if (*(v85 - 225) < 0)
  {
    operator delete(*(v85 - 248));
  }

  if (*(v85 - 137) < 0)
  {
    operator delete(*(v85 - 160));
  }

  if (*(v85 - 169) < 0)
  {
    operator delete(*(v85 - 192));
  }

  if (*(v85 - 81) < 0)
  {
    operator delete(*(v85 - 104));
  }

  if (*(v85 - 113) < 0)
  {
    operator delete(*(v85 - 136));
  }

  if (*(v85 - 25) < 0)
  {
    operator delete(*(v85 - 48));
  }

  if (*(v85 - 57) < 0)
  {
    operator delete(*(v85 - 80));
  }

  _Unwind_Resume(a1);
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  if (*(a1 + 1039) < 0)
  {
    operator delete(*(a1 + 1016));
  }

  if (*(a1 + 1007) < 0)
  {
    operator delete(*(a1 + 984));
  }

  if (*(a1 + 975) < 0)
  {
    operator delete(*(a1 + 952));
  }

  if (*(a1 + 943) < 0)
  {
    operator delete(*(a1 + 920));
  }

  if (*(a1 + 911) < 0)
  {
    operator delete(*(a1 + 888));
  }

  if (*(a1 + 879) < 0)
  {
    operator delete(*(a1 + 856));
  }

  if (*(a1 + 847) < 0)
  {
    operator delete(*(a1 + 824));
  }

  if (*(a1 + 807) < 0)
  {
    operator delete(*(a1 + 784));
  }

  if (*(a1 + 767) < 0)
  {
    operator delete(*(a1 + 744));
  }

  if (*(a1 + 727) < 0)
  {
    operator delete(*(a1 + 704));
  }

  if (*(a1 + 687) < 0)
  {
    operator delete(*(a1 + 664));
  }

  if (*(a1 + 647) < 0)
  {
    operator delete(*(a1 + 624));
  }

  if (*(a1 + 607) < 0)
  {
    operator delete(*(a1 + 584));
  }

  if (*(a1 + 567) < 0)
  {
    operator delete(*(a1 + 544));
  }

  if (*(a1 + 527) < 0)
  {
    operator delete(*(a1 + 504));
  }

  if (*(a1 + 495) < 0)
  {
    operator delete(*(a1 + 472));
  }

  if (*(a1 + 463) < 0)
  {
    operator delete(*(a1 + 440));
  }

  if (*(a1 + 431) < 0)
  {
    operator delete(*(a1 + 408));
  }

  if (*(a1 + 399) < 0)
  {
    operator delete(*(a1 + 376));
  }

  if (*(a1 + 359) < 0)
  {
    operator delete(*(a1 + 336));
  }

  if (*(a1 + 327) < 0)
  {
    operator delete(*(a1 + 304));
  }

  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  v2 = *MEMORY[0x29EDCA608];
  return a1;
}

BOOL XofGenericCodec::Decode<6ul,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>(uint64_t a1, void *a2, _DWORD *a3)
{
  v9 = *MEMORY[0x29EDCA608];
  if (XofIntegralType<int>::DecodeFromHexData((a1 + 192), a2, a3) == 1 && XofIntegralType<short>::DecodeFromHexData((a1 + 232), a2, a3) == 1 && XofIntegralType<signed char>::DecodeFromHexData((a1 + 264), a2, a3) == 1 && XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 296), a2, a3) == 1 && XofIntegralType<short>::DecodeFromHexData((a1 + 328), a2, a3) == 1 && XofIntegralType<short>::DecodeFromHexData((a1 + 360), a2, a3) == 1 && XofIntegralType<short>::DecodeFromHexData((a1 + 392), a2, a3) == 1 && XofIntegralType<unsigned short>::DecodeFromHexData((a1 + 424), a2, a3) == 1 && XofIntegralType<signed char>::DecodeFromHexData((a1 + 456), a2, a3) == 1 && XofIntegralType<signed char>::DecodeFromHexData((a1 + 488), a2, a3) == 1)
  {
    v6 = *MEMORY[0x29EDCA608];

    return XofGenericCodec::Decode<16ul,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>(a1, a2, a3);
  }

  else
  {
    v8 = *MEMORY[0x29EDCA608];
    return 0;
  }
}

BOOL XofGenericCodec::Decode<16ul,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>(uint64_t a1, void *a2, _DWORD *a3)
{
  v9 = *MEMORY[0x29EDCA608];
  if (XofIntegralType<unsigned short>::DecodeFromHexData((a1 + 520), a2, a3) == 1 && XofIntegralType<unsigned int>::DecodeFromHexData((a1 + 552), a2, a3) == 1 && XofIntegralType<unsigned int>::DecodeFromHexData((a1 + 592), a2, a3) == 1 && XofIntegralType<int>::DecodeFromHexData((a1 + 632), a2, a3) == 1 && XofIntegralType<int>::DecodeFromHexData((a1 + 672), a2, a3) == 1 && XofIntegralType<int>::DecodeFromHexData((a1 + 712), a2, a3) == 1 && XofIntegralType<int>::DecodeFromHexData((a1 + 752), a2, a3) == 1 && XofIntegralType<int>::DecodeFromHexData((a1 + 792), a2, a3) == 1 && XofIntegralType<short>::DecodeFromHexData((a1 + 832), a2, a3) == 1 && XofIntegralType<short>::DecodeFromHexData((a1 + 864), a2, a3) == 1)
  {
    v6 = *MEMORY[0x29EDCA608];

    return XofGenericCodec::Decode<26ul,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>(a1, a2, a3);
  }

  else
  {
    v8 = *MEMORY[0x29EDCA608];
    return 0;
  }
}

BOOL XofGenericCodec::Decode<26ul,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>(__int16 *a1, void *a2, _DWORD *a3)
{
  v8 = *MEMORY[0x29EDCA608];
  result = XofIntegralType<short>::DecodeFromHexData(a1 + 448, a2, a3) == 1 && XofIntegralType<short>::DecodeFromHexData(a1 + 464, a2, a3) == 1 && XofIntegralType<short>::DecodeFromHexData(a1 + 480, a2, a3) == 1 && XofIntegralType<short>::DecodeFromHexData(a1 + 496, a2, a3) == 1 && XofIntegralType<short>::DecodeFromHexData(a1 + 512, a2, a3) == 1 && XofIntegralType<short>::DecodeFromHexData(a1 + 528, a2, a3) == 1;
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL XofGenericCodec::Decode<15ul,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>>(uint64_t a1, void *a2, _DWORD *a3)
{
  v8 = *MEMORY[0x29EDCA608];
  result = XofIntegralType<int>::DecodeFromHexData((a1 + 520), a2, a3) == 1 && XofIntegralType<int>::DecodeFromHexData((a1 + 560), a2, a3) == 1 && XofIntegralType<signed char>::DecodeFromHexData((a1 + 600), a2, a3) == 1 && XofIntegralType<signed char>::DecodeFromHexData((a1 + 632), a2, a3) == 1 && XofIntegralType<signed char>::DecodeFromHexData((a1 + 664), a2, a3) == 1 && XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 696), a2, a3) == 1;
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL XofGenericCodec::Decode<11ul,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>>(uint64_t a1, void *a2, _DWORD *a3)
{
  v8 = *MEMORY[0x29EDCA608];
  result = XofIntegralType<int>::DecodeFromHexData((a1 + 392), a2, a3) == 1 && XofIntegralType<short>::DecodeFromHexData((a1 + 432), a2, a3) == 1 && XofIntegralType<short>::DecodeFromHexData((a1 + 464), a2, a3) == 1 && XofIntegralType<short>::DecodeFromHexData((a1 + 496), a2, a3) == 1 && XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 528), a2, a3) == 1 && XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 560), a2, a3) == 1;
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL XofGenericCodec::Decode<13ul,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<long long>,XofIntegralType<unsigned long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>>(uint64_t a1, void *a2, _DWORD *a3)
{
  v9 = *MEMORY[0x29EDCA608];
  if (XofIntegralType<unsigned short>::DecodeFromHexData((a1 + 424), a2, a3) == 1 && XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 456), a2, a3) == 1 && XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 488), a2, a3) == 1 && XofIntegralType<signed char>::DecodeFromHexData((a1 + 520), a2, a3) == 1 && XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 552), a2, a3) == 1 && XofIntegralType<int>::DecodeFromHexData((a1 + 584), a2, a3) == 1 && XofIntegralType<int>::DecodeFromHexData((a1 + 624), a2, a3) == 1 && XofIntegralType<int>::DecodeFromHexData((a1 + 664), a2, a3) == 1 && XofIntegralType<int>::DecodeFromHexData((a1 + 704), a2, a3) == 1 && XofIntegralType<long long>::DecodeFromHexData(a1 + 744, a2, a3) == 1)
  {
    v6 = *MEMORY[0x29EDCA608];

    return XofGenericCodec::Decode<23ul,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<long long>,XofIntegralType<unsigned long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>>(a1, a2, a3);
  }

  else
  {
    v8 = *MEMORY[0x29EDCA608];
    return 0;
  }
}

uint64_t XofIntegralType<long long>::DecodeFromHexData(uint64_t a1, void *a2, _DWORD *a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  if ((a2[1] - (*a2 + v5)) <= 7)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v7 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v7 = *v7;
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Insufficient data to decode, in the buffer! Field decoding is %s\n", v6, "GNC", 87, "DecodeFromHexData", v7);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    goto LABEL_9;
  }

  *__str = 0;
  if (!XofBaseType::CopyDataFromBuffer(a1, a2, v5, 8uLL, __str))
  {
LABEL_9:
    result = 5;
    goto LABEL_16;
  }

  v8 = *__str;
  *(a1 + 24) = *__str;
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  if (*(a1 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    v15 = *(a1 + 32);
  }

  v13 = XofBaseType::ValidateSignedRange(a1, v8, v9, v10, v11, &v15);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  *a3 += 8;
  if (v13)
  {
    result = 1;
  }

  else
  {
    result = 5;
  }

LABEL_16:
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298FA5F04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL XofGenericCodec::Decode<23ul,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<long long>,XofIntegralType<unsigned long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>>(uint64_t a1, void *a2, _DWORD *a3)
{
  v9 = *MEMORY[0x29EDCA608];
  if (XofIntegralType<unsigned long long>::DecodeFromHexData(a1 + 800, a2, a3) == 1 && XofIntegralType<long long>::DecodeFromHexData(a1 + 856, a2, a3) == 1 && XofIntegralType<long long>::DecodeFromHexData(a1 + 912, a2, a3) == 1 && XofIntegralType<long long>::DecodeFromHexData(a1 + 968, a2, a3) == 1 && XofIntegralType<int>::DecodeFromHexData((a1 + 1024), a2, a3) == 1 && XofIntegralType<short>::DecodeFromHexData((a1 + 1064), a2, a3) == 1 && XofIntegralType<unsigned short>::DecodeFromHexData((a1 + 1096), a2, a3) == 1 && XofIntegralType<short>::DecodeFromHexData((a1 + 1128), a2, a3) == 1 && XofIntegralType<short>::DecodeFromHexData((a1 + 1160), a2, a3) == 1 && XofIntegralType<int>::DecodeFromHexData((a1 + 1192), a2, a3) == 1)
  {
    v6 = *MEMORY[0x29EDCA608];

    return XofGenericCodec::Decode<33ul,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<long long>,XofIntegralType<unsigned long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>>(a1, a2, a3);
  }

  else
  {
    v8 = *MEMORY[0x29EDCA608];
    return 0;
  }
}

BOOL XofGenericCodec::Decode<33ul,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<long long>,XofIntegralType<unsigned long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>>(uint64_t a1, void *a2, _DWORD *a3)
{
  v9 = *MEMORY[0x29EDCA608];
  if (XofIntegralType<int>::DecodeFromHexData((a1 + 1232), a2, a3) == 1 && XofIntegralType<int>::DecodeFromHexData((a1 + 1272), a2, a3) == 1 && XofIntegralType<int>::DecodeFromHexData((a1 + 1312), a2, a3) == 1 && XofIntegralType<int>::DecodeFromHexData((a1 + 1352), a2, a3) == 1 && XofIntegralType<int>::DecodeFromHexData((a1 + 1392), a2, a3) == 1 && XofIntegralType<short>::DecodeFromHexData((a1 + 1432), a2, a3) == 1 && XofIntegralType<short>::DecodeFromHexData((a1 + 1464), a2, a3) == 1 && XofIntegralType<short>::DecodeFromHexData((a1 + 1496), a2, a3) == 1 && XofIntegralType<short>::DecodeFromHexData((a1 + 1528), a2, a3) == 1 && XofIntegralType<short>::DecodeFromHexData((a1 + 1560), a2, a3) == 1)
  {
    v6 = *MEMORY[0x29EDCA608];

    return XofGenericCodec::Decode<43ul,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<long long>,XofIntegralType<unsigned long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>>(a1, a2, a3);
  }

  else
  {
    v8 = *MEMORY[0x29EDCA608];
    return 0;
  }
}

BOOL XofGenericCodec::Decode<43ul,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<long long>,XofIntegralType<unsigned long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>>(uint64_t a1, void *a2, _DWORD *a3)
{
  v8 = *MEMORY[0x29EDCA608];
  result = XofIntegralType<unsigned short>::DecodeFromHexData((a1 + 1592), a2, a3) == 1 && XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 1624), a2, a3) == 1 && XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 1656), a2, a3) == 1 && XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 1688), a2, a3) == 1 && XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 1720), a2, a3) == 1 && XofIntegralType<unsigned int>::DecodeFromHexData((a1 + 1752), a2, a3) == 1;
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL XofGenericCodec::Decode<15ul,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>(uint64_t a1, void *a2, _DWORD *a3)
{
  v9 = *MEMORY[0x29EDCA608];
  if (XofIntegralType<short>::DecodeFromHexData((a1 + 496), a2, a3) == 1 && XofIntegralType<unsigned int>::DecodeFromHexData((a1 + 528), a2, a3) == 1 && XofIntegralType<unsigned int>::DecodeFromHexData((a1 + 568), a2, a3) == 1 && XofIntegralType<int>::DecodeFromHexData((a1 + 608), a2, a3) == 1 && XofIntegralType<int>::DecodeFromHexData((a1 + 648), a2, a3) == 1 && XofIntegralType<int>::DecodeFromHexData((a1 + 688), a2, a3) == 1 && XofIntegralType<int>::DecodeFromHexData((a1 + 728), a2, a3) == 1 && XofIntegralType<int>::DecodeFromHexData((a1 + 768), a2, a3) == 1 && XofIntegralType<short>::DecodeFromHexData((a1 + 808), a2, a3) == 1 && XofIntegralType<short>::DecodeFromHexData((a1 + 840), a2, a3) == 1)
  {
    v6 = *MEMORY[0x29EDCA608];

    return XofGenericCodec::Decode<25ul,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>(a1, a2, a3);
  }

  else
  {
    v8 = *MEMORY[0x29EDCA608];
    return 0;
  }
}

BOOL XofGenericCodec::Decode<25ul,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>(__int16 *a1, void *a2, _DWORD *a3)
{
  v8 = *MEMORY[0x29EDCA608];
  result = XofIntegralType<short>::DecodeFromHexData(a1 + 436, a2, a3) == 1 && XofIntegralType<short>::DecodeFromHexData(a1 + 452, a2, a3) == 1 && XofIntegralType<short>::DecodeFromHexData(a1 + 468, a2, a3) == 1 && XofIntegralType<short>::DecodeFromHexData(a1 + 484, a2, a3) == 1 && XofIntegralType<short>::DecodeFromHexData(a1 + 500, a2, a3) == 1 && XofIntegralType<short>::DecodeFromHexData(a1 + 516, a2, a3) == 1;
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL XofGenericCodec::Decode<14ul,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>(uint64_t a1, void *a2, _DWORD *a3)
{
  v9 = *MEMORY[0x29EDCA608];
  if (XofIntegralType<short>::DecodeFromHexData((a1 + 464), a2, a3) == 1 && XofIntegralType<short>::DecodeFromHexData((a1 + 496), a2, a3) == 1 && XofIntegralType<unsigned int>::DecodeFromHexData((a1 + 528), a2, a3) == 1 && XofIntegralType<unsigned int>::DecodeFromHexData((a1 + 568), a2, a3) == 1 && XofIntegralType<int>::DecodeFromHexData((a1 + 608), a2, a3) == 1 && XofIntegralType<int>::DecodeFromHexData((a1 + 648), a2, a3) == 1 && XofIntegralType<int>::DecodeFromHexData((a1 + 688), a2, a3) == 1 && XofIntegralType<int>::DecodeFromHexData((a1 + 728), a2, a3) == 1 && XofIntegralType<int>::DecodeFromHexData((a1 + 768), a2, a3) == 1 && XofIntegralType<int>::DecodeFromHexData((a1 + 808), a2, a3) == 1)
  {
    v6 = *MEMORY[0x29EDCA608];

    return XofGenericCodec::Decode<24ul,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>(a1, a2, a3);
  }

  else
  {
    v8 = *MEMORY[0x29EDCA608];
    return 0;
  }
}

BOOL XofGenericCodec::Decode<24ul,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>(__int16 *a1, void *a2, _DWORD *a3)
{
  v8 = *MEMORY[0x29EDCA608];
  result = XofIntegralType<short>::DecodeFromHexData(a1 + 424, a2, a3) == 1 && XofIntegralType<short>::DecodeFromHexData(a1 + 440, a2, a3) == 1 && XofIntegralType<short>::DecodeFromHexData(a1 + 456, a2, a3) == 1 && XofIntegralType<short>::DecodeFromHexData(a1 + 472, a2, a3) == 1 && XofIntegralType<short>::DecodeFromHexData(a1 + 488, a2, a3) == 1 && XofIntegralType<short>::DecodeFromHexData(a1 + 504, a2, a3) == 1;
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

__n128 std::__memberwise_forward_assign[abi:ne200100]<std::tuple<XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>,std::tuple<XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul,31ul>(uint64_t a1, uint64_t a2)
{
  v54 = *MEMORY[0x29EDCA608];
  *a1 = *a2;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v4;
  *(a2 + 31) = 0;
  *(a2 + 8) = 0;
  *(a1 + 32) = *(a2 + 32);
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *(a2 + 63) = 0;
  *(a2 + 40) = 0;
  *(a1 + 64) = *(a2 + 64);
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v6 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v6;
  *(a2 + 95) = 0;
  *(a2 + 72) = 0;
  *(a1 + 96) = *(a2 + 96);
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  v7 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = v7;
  *(a2 + 127) = 0;
  *(a2 + 104) = 0;
  *(a1 + 128) = *(a2 + 128);
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  v8 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v8;
  *(a2 + 159) = 0;
  *(a2 + 136) = 0;
  *(a1 + 160) = *(a2 + 160);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  v9 = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 168) = v9;
  *(a2 + 191) = 0;
  *(a2 + 168) = 0;
  *(a1 + 192) = *(a2 + 192);
  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  v10 = *(a2 + 208);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 208) = v10;
  *(a2 + 231) = 0;
  *(a2 + 208) = 0;
  *(a1 + 232) = *(a2 + 232);
  if (*(a1 + 263) < 0)
  {
    operator delete(*(a1 + 240));
  }

  v11 = *(a2 + 240);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 240) = v11;
  *(a2 + 263) = 0;
  *(a2 + 240) = 0;
  *(a1 + 264) = *(a2 + 264);
  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  v12 = *(a2 + 272);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 272) = v12;
  *(a2 + 295) = 0;
  *(a2 + 272) = 0;
  *(a1 + 296) = *(a2 + 296);
  if (*(a1 + 327) < 0)
  {
    operator delete(*(a1 + 304));
  }

  v13 = *(a2 + 304);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 304) = v13;
  *(a2 + 327) = 0;
  *(a2 + 304) = 0;
  *(a1 + 328) = *(a2 + 328);
  if (*(a1 + 359) < 0)
  {
    operator delete(*(a1 + 336));
  }

  v14 = *(a2 + 336);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 336) = v14;
  *(a2 + 359) = 0;
  *(a2 + 336) = 0;
  *(a1 + 360) = *(a2 + 360);
  if (*(a1 + 391) < 0)
  {
    operator delete(*(a1 + 368));
  }

  v15 = *(a2 + 368);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 368) = v15;
  *(a2 + 391) = 0;
  *(a2 + 368) = 0;
  *(a1 + 392) = *(a2 + 392);
  if (*(a1 + 423) < 0)
  {
    operator delete(*(a1 + 400));
  }

  v16 = *(a2 + 400);
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 400) = v16;
  *(a2 + 423) = 0;
  *(a2 + 400) = 0;
  *(a1 + 424) = *(a2 + 424);
  if (*(a1 + 455) < 0)
  {
    operator delete(*(a1 + 432));
  }

  v17 = *(a2 + 432);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 432) = v17;
  *(a2 + 455) = 0;
  *(a2 + 432) = 0;
  *(a1 + 456) = *(a2 + 456);
  if (*(a1 + 487) < 0)
  {
    operator delete(*(a1 + 464));
  }

  v18 = *(a2 + 464);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 464) = v18;
  *(a2 + 487) = 0;
  *(a2 + 464) = 0;
  *(a1 + 488) = *(a2 + 488);
  v19 = (a1 + 496);
  if (*(a1 + 519) < 0)
  {
    operator delete(*v19);
  }

  v20 = *(a2 + 496);
  *(a1 + 512) = *(a2 + 512);
  *v19 = v20;
  *(a2 + 519) = 0;
  *(a2 + 496) = 0;
  *(a1 + 520) = *(a2 + 520);
  v21 = (a1 + 528);
  if (*(a1 + 551) < 0)
  {
    operator delete(*v21);
  }

  v22 = *(a2 + 528);
  *(a1 + 544) = *(a2 + 544);
  *v21 = v22;
  *(a2 + 551) = 0;
  *(a2 + 528) = 0;
  *(a1 + 552) = *(a2 + 552);
  v23 = (a1 + 568);
  if (*(a1 + 591) < 0)
  {
    operator delete(*v23);
  }

  v24 = *(a2 + 568);
  *(a1 + 584) = *(a2 + 584);
  *v23 = v24;
  *(a2 + 591) = 0;
  *(a2 + 568) = 0;
  *(a1 + 592) = *(a2 + 592);
  v25 = (a1 + 608);
  if (*(a1 + 631) < 0)
  {
    operator delete(*v25);
  }

  v26 = *(a2 + 608);
  *(a1 + 624) = *(a2 + 624);
  *v25 = v26;
  *(a2 + 631) = 0;
  *(a2 + 608) = 0;
  *(a1 + 632) = *(a2 + 632);
  v27 = (a1 + 648);
  if (*(a1 + 671) < 0)
  {
    operator delete(*v27);
  }

  v28 = *(a2 + 648);
  *(a1 + 664) = *(a2 + 664);
  *v27 = v28;
  *(a2 + 671) = 0;
  *(a2 + 648) = 0;
  *(a1 + 672) = *(a2 + 672);
  v29 = (a1 + 688);
  if (*(a1 + 711) < 0)
  {
    operator delete(*v29);
  }

  v30 = *(a2 + 688);
  *(a1 + 704) = *(a2 + 704);
  *v29 = v30;
  *(a2 + 711) = 0;
  *(a2 + 688) = 0;
  *(a1 + 712) = *(a2 + 712);
  v31 = (a1 + 728);
  if (*(a1 + 751) < 0)
  {
    operator delete(*v31);
  }

  v32 = *(a2 + 728);
  *(a1 + 744) = *(a2 + 744);
  *v31 = v32;
  *(a2 + 751) = 0;
  *(a2 + 728) = 0;
  *(a1 + 752) = *(a2 + 752);
  v33 = (a1 + 768);
  if (*(a1 + 791) < 0)
  {
    operator delete(*v33);
  }

  v34 = *(a2 + 768);
  *(a1 + 784) = *(a2 + 784);
  *v33 = v34;
  *(a2 + 791) = 0;
  *(a2 + 768) = 0;
  *(a1 + 792) = *(a2 + 792);
  v35 = (a1 + 808);
  if (*(a1 + 831) < 0)
  {
    operator delete(*v35);
  }

  v36 = *(a2 + 808);
  *(a1 + 824) = *(a2 + 824);
  *v35 = v36;
  *(a2 + 831) = 0;
  *(a2 + 808) = 0;
  *(a1 + 832) = *(a2 + 832);
  v37 = (a1 + 840);
  if (*(a1 + 863) < 0)
  {
    operator delete(*v37);
  }

  v38 = *(a2 + 840);
  *(a1 + 856) = *(a2 + 856);
  *v37 = v38;
  *(a2 + 863) = 0;
  *(a2 + 840) = 0;
  *(a1 + 864) = *(a2 + 864);
  v39 = (a1 + 872);
  if (*(a1 + 895) < 0)
  {
    operator delete(*v39);
  }

  v40 = *(a2 + 872);
  *(a1 + 888) = *(a2 + 888);
  *v39 = v40;
  *(a2 + 895) = 0;
  *(a2 + 872) = 0;
  *(a1 + 896) = *(a2 + 896);
  v41 = (a1 + 904);
  if (*(a1 + 927) < 0)
  {
    operator delete(*v41);
  }

  v42 = *(a2 + 904);
  *(a1 + 920) = *(a2 + 920);
  *v41 = v42;
  *(a2 + 927) = 0;
  *(a2 + 904) = 0;
  *(a1 + 928) = *(a2 + 928);
  v43 = (a1 + 936);
  if (*(a1 + 959) < 0)
  {
    operator delete(*v43);
  }

  v44 = *(a2 + 936);
  *(a1 + 952) = *(a2 + 952);
  *v43 = v44;
  *(a2 + 959) = 0;
  *(a2 + 936) = 0;
  *(a1 + 960) = *(a2 + 960);
  v45 = (a1 + 968);
  if (*(a1 + 991) < 0)
  {
    operator delete(*v45);
  }

  v46 = *(a2 + 968);
  *(a1 + 984) = *(a2 + 984);
  *v45 = v46;
  *(a2 + 991) = 0;
  *(a2 + 968) = 0;
  *(a1 + 992) = *(a2 + 992);
  v47 = (a1 + 1000);
  if (*(a1 + 1023) < 0)
  {
    operator delete(*v47);
  }

  v48 = *(a2 + 1000);
  *(a1 + 1016) = *(a2 + 1016);
  *v47 = v48;
  *(a2 + 1023) = 0;
  *(a2 + 1000) = 0;
  *(a1 + 1024) = *(a2 + 1024);
  v49 = (a1 + 1032);
  if (*(a1 + 1055) < 0)
  {
    operator delete(*v49);
  }

  v50 = *(a2 + 1032);
  *(a1 + 1048) = *(a2 + 1048);
  *v49 = v50;
  *(a2 + 1055) = 0;
  *(a2 + 1032) = 0;
  *(a1 + 1056) = *(a2 + 1056);
  v51 = (a1 + 1064);
  if (*(a1 + 1087) < 0)
  {
    operator delete(*v51);
  }

  result = *(a2 + 1064);
  *(a1 + 1080) = *(a2 + 1080);
  *v51 = result;
  *(a2 + 1087) = 0;
  *(a2 + 1064) = 0;
  v53 = *MEMORY[0x29EDCA608];
  return result;
}