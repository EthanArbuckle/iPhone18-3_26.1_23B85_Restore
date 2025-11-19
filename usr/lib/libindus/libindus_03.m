BOOL Gnm02_23StopNafSession(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 8);
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Clearing Instance NafID,%u,PosnType,%u\n", (*&g_MacClockTicksToMsRelation * v3), "GNM", 73, "Gnm02_23StopNafSession", *v2, *(v2 + 4));
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v4 = *(v2 + 4);
  v5 = v4 > 4;
  v6 = (1 << v4) & 0x16;
  if (v5 || v6 == 0)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v9 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx PosnType,%u\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 87, "Gnm02_23StopNafSession", 770, *(v2 + 4));
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    result = 0;
  }

  else
  {
    result = Gnm10_28StopPositioning(a1);
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm02_24AbortAllNafSessions(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Aborting all NAF sessions\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm02_24AbortAllNafSessions");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v3 = 2u;
  do
  {
    result = *&g_GnmInstances[v3];
    if (result)
    {
      v5 = *(result + 8);
      if (v5)
      {
        if (*(result + 2) == 1)
        {
          if ((v5[1] & 7) != 0 && *(v5 + 64) == 1)
          {
            v6 = *(v5 + 7);
            v7 = *v5;
            *__str = 0;
            v10 = 0;
            v11 = 0;
            v12 = 1;
            v6(a1, v7, __str);
            result = *&g_GnmInstances[v3];
          }

          Gnm02_23StopNafSession(result);
          result = Gnm02_21DeleteInstn(*&g_GnmInstances[v3]);
        }
      }
    }

    v3 += 2;
  }

  while (v3 != 8);
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

unsigned __int16 *Gnm02_31GetInstnFromInstnId(int a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = 2u;
  while (1)
  {
    result = *&g_GnmInstances[v2];
    if (result)
    {
      if (*result == a1)
      {
        break;
      }
    }

    v2 += 2;
    if (v2 == 8)
    {
      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v4 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx InstnId,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 68, "Gnm02_31GetInstnFromInstnId", 2052, a1);
        gnssOsa_PrintLog(__str, 5, 1, 0);
      }

      result = 0;
      break;
    }
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

double GAL_EphReal2Kep(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x29EDCA608];
  *a2 = *a1;
  *(a2 + 8) = 3;
  *(a2 + 12) = *(a1 + 14);
  v2 = *(a1 + 15);
  if (v2 <= 0x31)
  {
    if (v2 < 2)
    {
      v3 = -15;
      goto LABEL_59;
    }

    if (v2 == 2)
    {
      v3 = -14;
      goto LABEL_59;
    }

    if (v2 < 4)
    {
      v3 = -13;
      goto LABEL_59;
    }

    if (v2 == 4)
    {
      v3 = -12;
      goto LABEL_59;
    }

    if (v2 < 7)
    {
      v3 = -11;
      goto LABEL_59;
    }

    if (v2 < 9)
    {
      v3 = -10;
      goto LABEL_59;
    }

    if (v2 < 0xC)
    {
      v3 = -9;
      goto LABEL_59;
    }

    if (v2 < 0x10)
    {
      v3 = -8;
      goto LABEL_59;
    }

    if (v2 < 0x16)
    {
      v3 = -7;
      goto LABEL_59;
    }

    if (v2 < 0x1F)
    {
      v3 = -6;
      goto LABEL_59;
    }

    v4 = v2 >= 0x2C;
    v3 = -5;
    goto LABEL_13;
  }

  if (v2 <= 0x4B)
  {
    if (v2 < 0x38)
    {
      v3 = -4;
      goto LABEL_59;
    }

    v4 = v2 >= 0x44;
    v3 = -3;
    goto LABEL_13;
  }

  if (v2 <= 0x64)
  {
    if (v2 >= 0x51)
    {
      if (v2 >= 0x5D)
      {
        v3 = 0;
      }

      else
      {
        v3 = -1;
      }
    }

    else
    {
      v3 = -2;
    }

    goto LABEL_59;
  }

  if (v2 <= 0x7D)
  {
    if (v2 < 0x67)
    {
      v3 = 0;
      goto LABEL_59;
    }

    if (v2 < 0x6D)
    {
      v3 = 1;
      goto LABEL_59;
    }

    v4 = v2 >= 0x76;
    v3 = 2;
    goto LABEL_13;
  }

  if (v2 <= 0x96)
  {
    if (v2 < 0x82)
    {
      v3 = 3;
      goto LABEL_59;
    }

    if (v2 < 0x8B)
    {
      v3 = 4;
      goto LABEL_59;
    }

    v5 = v2 == 150;
    v3 = 5;
    goto LABEL_43;
  }

  if (v2 <= 0xAF)
  {
    v4 = v2 >= 0xA6;
    v3 = 6;
    goto LABEL_13;
  }

  if (v2 <= 0xC8)
  {
    v4 = v2 >= 0xBE;
    v3 = 7;
    goto LABEL_13;
  }

  if (v2 <= 0xE1)
  {
    v4 = v2 >= 0xD6;
    v3 = 8;
    goto LABEL_13;
  }

  if (v2 <= 0xFA)
  {
    v4 = v2 >= 0xEE;
    v3 = 9;
LABEL_13:
    if (v4)
    {
      ++v3;
    }

    goto LABEL_59;
  }

  v5 = v2 == 255;
  v3 = 14;
LABEL_43:
  if (v5)
  {
    ++v3;
  }

LABEL_59:
  *(a2 + 19) = v3;
  *(a2 + 18) = *(a1 + 202);
  v6 = v2 == 255;
  *(a2 + 14) = v6 << 6;
  v7 = *(a1 + 201);
  v8 = *(a1 + 198);
  v9 = *(a1 + 199);
  v10 = *(a1 + 196);
  *(a2 + 14) = (4 * v8) | (8 * v9) | (32 * v10) | (v6 << 6) | v7;
  *(a2 + 15) = v9 == 0;
  *(a2 + 16) = (v7 | v8) == 0;
  *(a2 + 17) = (v9 | v10) == 0;
  *(a2 + 20) = *(a1 + 194);
  *(a2 + 22) = *(a1 + 12) + 1024;
  v11 = *(a1 + 16);
  *(a2 + 24) = *(a1 + 144);
  *(a2 + 28) = v11;
  *(a2 + 40) = *(a1 + 152);
  v12 = *(a1 + 184);
  *(a2 + 56) = *(a1 + 168);
  *(a2 + 64) = v12;
  *(a2 + 72) = v12;
  *(a2 + 80) = v12 * 1.79327032;
  *(a2 + 88) = v12 * 1.79327032;
  *(a2 + 96) = v12;
  *(a2 + 104) = *(a1 + 88);
  *(a2 + 120) = *(a1 + 112);
  *(a2 + 136) = *(a1 + 96);
  *(a2 + 152) = *(a1 + 128);
  v13 = *(a1 + 24);
  *(a2 + 168) = *(a1 + 80);
  *(a2 + 176) = v13;
  *(a2 + 184) = *(a1 + 40);
  *(a2 + 200) = *(a1 + 48);
  result = *(a1 + 32);
  v15 = *(a1 + 72);
  *(a2 + 216) = *(a1 + 64);
  *(a2 + 224) = result;
  *(a2 + 232) = v15;
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

double *NK_Comp_DOPS(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v44 = *MEMORY[0x29EDCA608];
  v35 = 0u;
  v37 = 0;
  memset(&v34[1], 0, 32);
  v36 = 0u;
  v39 = 0u;
  v40 = 0u;
  v34[0] = 20000.0;
  *&v35 = 0x40D3880000000000;
  v38 = 0x40D3880000000000;
  v41 = 0x40D3880000000000;
  memset(&v27[1], 0, 32);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v4 = 1.99960002e14;
  if (*(a1 + 15411) == 1)
  {
    v4 = *(a1 + 15440) + fabs((*a2 - *(a1 + 15432)) * 0.001);
  }

  *&v28 = v4;
  v27[0] = v4;
  v5 = 1.99960002e14;
  if (*(a1 + 15412) == 1)
  {
    v5 = *(a1 + 15456) + fabs((*a2 - *(a1 + 15448)) * 0.001);
  }

  *(&v30 + 1) = v5;
  v6 = 1.99960002e14;
  if (*(a1 + 15410) == 1)
  {
    v6 = *(a1 + 15424) + fabs((*a2 - *(a1 + 15416)) * 0.001);
  }

  v7 = 0;
  v33 = v6;
  do
  {
    if (v27[v7] > 1.99960002e14)
    {
      v27[v7] = 1.99960002e14;
    }

    v7 += 5;
  }

  while (v7 != 20);
  v25 = a1 + 12288;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = a1 + 14208;
  v12 = a1 + 13184;
  v13 = 0.0;
  do
  {
    if (*(v11 + v8) == 1)
    {
      v14 = vmulq_n_f64(*(v3 + 7048), *(v3 + 1936));
      v42 = vextq_s8(v14, v14, 8uLL);
      v43 = *(v3 + 1928);
      v15 = *(a2 + v8 + 2416) ? a2 + 3696 : v12;
      v16 = *(v15 + 8 * v8) >= 0.0001 ? *(v15 + 8 * v8) : 0.0001;
      DOP4_Upd_W_Meas(v42.i64, v16, v27);
      if (v16 < 800000.0)
      {
        ++v9;
        v13 = v13 + v16;
        if (*(a2 + 7080 + v8) == 1)
        {
          DOP4_Upd_U_Meas(&v42, v34);
          ++v10;
        }
      }
    }

    ++v8;
    v3 += 40;
  }

  while (v8 != 128);
  if (v10 <= 3)
  {
    DOP4_Upd_U_Elem(2, v34);
  }

  result = DOP4_Calc_U(v34, (a2 + 61936));
  if (v9)
  {
    v18 = v13 / v9;
  }

  else
  {
    v18 = 0.0;
  }

  *(a1 + 14336) = v18;
  v19 = v33 * 8.0;
  *(a1 + 15488) = v33 * 8.0;
  v20.f64[0] = *(&v30 + 1);
  v21 = *&v28;
  v22 = v27[0] + v27[0];
  *(a1 + 15496) = v27[0] + v27[0];
  *(a1 + 15504) = v21 + v21;
  v20.f64[1] = v27[1];
  v23 = vmulq_f64(v20, xmmword_299050490);
  *(v25 + 3224) = v23;
  if (v19 > 3600.0)
  {
    *(a1 + 15488) = 0x40AC200000000000;
  }

  if (v23.f64[0] > 3600.0)
  {
    *(v25 + 3224) = 0x40AC200000000000;
  }

  if (v22 > 900.0 || v21 + v21 > 900.0)
  {
    *(v25 + 3208) = vdupq_n_s64(0x408C200000000000uLL);
    *(a1 + 15520) = 0;
  }

  v24 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL NK_Get_Ext_Time(_BOOL8 result, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x29EDCA608];
  v3 = (a2 + 59982);
  *(a2 + 60000) = 0;
  *(a2 + 60016) = 0;
  *(a2 + 60072) = 0;
  *(a2 + 60088) = 0;
  v4 = *(a2 + 32);
  if (v4 > 3.0 && v4 < 604797.0)
  {
    v7 = result;
    v25 = 0;
    result = Get_FSP_Time(result, (a2 + 59982), (a2 + 59984), (a2 + 59992), &v25);
    if (result)
    {
      v8 = *(v3 + 1);
      v9 = *(a2 + 1528);
      v10 = v8 - (v9 - *(a2 + 1632));
      *(v3 + 1945) = v10;
      v11 = *(v3 + 5);
      v12 = *(a2 + 20);
      if (v11 < g_TOW_Stat_Var99_Table[v12])
      {
        v13 = v10 * 1000.0;
        v14 = -0.5;
        if (v13 > 0.0)
        {
          v14 = 0.5;
        }

        v15 = v13 + v14;
        v16 = 2147483650.0;
        if (v15 <= 2147483650.0)
        {
          v16 = -2147483650.0;
          if (v15 >= -2147483650.0)
          {
            v16 = v15;
          }
        }

        *(v3 + 18) = 1;
        *(v3 + 11) = 1;
        *(v3 + 19) = v7;
        *(v3 + 21) = v16;
        *(v3 + 25) = v11 * 1000000.0;
        v17 = *(a3 + 241);
        v18 = 36.0;
        if (*(a3 + 241))
        {
          v18 = 1.0e20;
        }

        *(v3 + 37) = v18;
        v19 = v25;
        *(v3 + 15) = v25;
        if (v11 <= 0.00000025 || v12 <= 8)
        {
          v20.f64[0] = v9 + v16 * 0.001 - v8;
          *(v3 + 90) = 1;
          *(v3 + 47) = 1;
          *(v3 + 55) = v7;
          v20.f64[1] = v11;
          *(a2 + 60096) = vmulq_f64(v20, xmmword_2990504C0);
          v21 = 16.0;
          if (v17)
          {
            v21 = 1.0e20;
          }

          *(v3 + 73) = v21;
          *(v3 + 51) = v19;
        }

        v22 = *v3;
        *(a2 + 1542) = *v3;
        *(a2 + 26) = v22;
      }
    }

    if (*(v3 + 90) == 1 && (v23 = *(v3 + 61), v23 < 2.25e10))
    {
      *(a3 + 15410) = 1;
      *(a3 + 15416) = *(v3 + 55);
      *(a3 + 15424) = v23;
    }

    else if (*(a3 + 15410) == 1 && (v7 - *(a3 + 15416)) >= 0x1D4C1)
    {
      *(a3 + 15410) = 0;
    }
  }

  v24 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t NK_Prop_Cov_Mat(double a1, double *a2)
{
  v11[12] = *MEMORY[0x29EDCA608];
  v4 = 1;
  v11[0] = a1;
  v11[1] = a1;
  v5 = 16843009;
  v6 = 1;
  v11[2] = a1;
  v11[3] = a1;
  *v7 = 117637633;
  *v9 = 168101125;
  v8 = 2312;
  v10 = 3083;
  v11[4] = a1;
  v11[5] = a1;
  result = stphiu(a2, 0xCu, v11, v9, 6, v7, &v4);
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm14_11HandleStartPosResp(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCS_START_POS_RSP\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm14_11HandleStartPosResp");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (!a1)
  {
    if (!g_LbsOsaTrace_Config)
    {
      goto LABEL_21;
    }

    bzero(__str, 0x3C6uLL);
    v8 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 69, "Gnm14_11HandleStartPosResp", 517);
    v9 = 1;
LABEL_14:
    gnssOsa_PrintLog(__str, v9, 1, 0);
    goto LABEL_21;
  }

  v3 = *(a1 + 14);
  v4 = *(a1 + 12);
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: SessId,%u,RespCode,%hhu\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 73, "Gnm14_11HandleStartPosResp", v4, *(a1 + 14));
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  InstnFromInstnId = Gnm02_31GetInstnFromInstnId(v4);
  if (!InstnFromInstnId)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      goto LABEL_21;
    }

    bzero(__str, 0x3C6uLL);
    v10 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Instn SessId,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 87, "Gnm14_11HandleStartPosResp", 2052, v4);
    v9 = 2;
    goto LABEL_14;
  }

  v7 = InstnFromInstnId;
  if (!*(InstnFromInstnId + 1))
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx InstnInfo SessId,%u\n", v14);
LABEL_19:
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

LABEL_20:
    Gnm02_21DeleteInstn(v7);
    goto LABEL_21;
  }

  if (*(InstnFromInstnId + 2) != 1)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v11 = mach_continuous_time();
      v15 = *(v7 + 2);
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx InstnType,%hhu\n", (*&g_MacClockTicksToMsRelation * v11));
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  Gnm11_07StartPosResp(InstnFromInstnId, v3 == 255);
LABEL_21:
  v12 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Gnm14_12HandleStopPosResp(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCS_STOP_POS_RSP\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm14_12HandleStopPosResp");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (!a1)
  {
    if (!g_LbsOsaTrace_Config)
    {
      goto LABEL_22;
    }

    bzero(__str, 0x3C6uLL);
    v8 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 69, "Gnm14_12HandleStopPosResp", 517);
    v9 = 1;
LABEL_14:
    gnssOsa_PrintLog(__str, v9, 1, 0);
    goto LABEL_22;
  }

  v3 = *(a1 + 14);
  v4 = *(a1 + 12);
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: SessId,%u,RespCode,%hhu\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 73, "Gnm14_12HandleStopPosResp", v4, *(a1 + 14));
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  InstnFromInstnId = Gnm02_31GetInstnFromInstnId(v4);
  if (!InstnFromInstnId)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      goto LABEL_22;
    }

    bzero(__str, 0x3C6uLL);
    v10 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Instn SessId,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 87, "Gnm14_12HandleStopPosResp", 2052, v4);
    v9 = 2;
    goto LABEL_14;
  }

  v7 = InstnFromInstnId;
  if (*(InstnFromInstnId + 1))
  {
    if (*(InstnFromInstnId + 2) == 1)
    {
      Gnm11_08StopPosResp(InstnFromInstnId, v3 == 255);
    }

    else
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v12 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx InstnType,%hhu\n", (*&g_MacClockTicksToMsRelation * v12), "GNM", 87, "Gnm14_12HandleStopPosResp", 770, *(v7 + 2));
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }

      Gnm02_21DeleteInstn(v7);
    }

    gnssOsa_flushNv();
  }

  else
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v11 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx InstnInfo SessId,%u\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 87, "Gnm14_12HandleStopPosResp", 2052, v4);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    Gnm02_21DeleteInstn(v7);
  }

LABEL_22:
  v13 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Gnm14_13HandleClearGNSSRsp(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_CLEAR_GNSS_RSP\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm14_13HandleClearGNSSRsp");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (a1)
  {
    v3 = *(a1 + 12);
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v4 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v5 = 78;
      if (v3)
      {
        v5 = 89;
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Status,%c,Mask0x%X\n", v4, "GNM", 73, "Gnm14_13HandleClearGNSSRsp", v5, *(a1 + 16));
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    if (v3 && ((*(a1 + 17) & 0x401) == 0 || (Gnm55_ClearVar_GNSS_FW_NV() & 1) != 0))
    {
      if (byte_2A13EE541 == 1)
      {
        byte_2A13EE541 = 0;
        v6 = 0;
LABEL_15:
        Gnm11_00ApiStatusCB(v6, 0, 0, 16);
      }
    }

    else if (byte_2A13EE541 == 1)
    {
      byte_2A13EE541 = 0;
      v6 = 11;
      goto LABEL_15;
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v7 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 69, "Gnm14_13HandleClearGNSSRsp", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v8 = *MEMORY[0x29EDCA608];
  return 0;
}

void Comp_AzEl(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, _WORD *a5, _DWORD *a6, unsigned int *a7)
{
  v32 = *MEMORY[0x29EDCA608];
  if (*(a3 + 120))
  {
    v11 = 0;
    v29 = 0.0;
    v30 = 0.0;
    v31 = 0.0;
    do
    {
      *(&v29 + v11) = *(a3 + 8 + v11) - *(a1 + v11);
      v11 += 8;
    }

    while (v11 != 24);
    v12 = 0.0;
    v13 = 2;
    do
    {
      v12 = v12 + *(&v29 + v13) * *(&v29 + v13);
      v14 = v13-- + 1;
    }

    while (v14 > 1);
    v15 = 0;
    v16 = sqrt(v12);
    do
    {
      *(&v29 + v15) = *(&v29 + v15) / v16;
      v15 += 8;
    }

    while (v15 != 24);
    v17 = 0;
    memset(v28, 0, sizeof(v28));
    v18 = v29;
    v19 = v30;
    v20 = (a2 + 16);
    v21 = v31;
    do
    {
      v22 = *(v20 - 1) * v19 + *(v20 - 2) * v18;
      v23 = *v20;
      v20 += 3;
      v28[v17++] = v22 + v23 * v21;
    }

    while (v17 != 3);
    AzEl_SinCos(v28, a7, a6);
    AzEl_RadDeg(a7, a6);
    v24 = *a7;
    if ((*a7 & 0x80000000) != 0)
    {
      v25 = -360 - v24;
      if (v24 > 0xFFFFFE98)
      {
        v25 = 0;
      }

      v26 = ((__PAIR64__(v25, v24) - 4294966936u) >> 32) / 0x168;
      if (v24 < 0xFFFFFE98)
      {
        ++v26;
      }

      *a7 = v24 + 360 * v26 + 360;
    }

    *a4 = *a6;
    *a5 = *a7;
  }

  v27 = *MEMORY[0x29EDCA608];
}

int8x8_t Decode_GPS_Health_From_AS_Subfr(const unsigned int *a1, int8x8_t *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = a1[8];
  v3 = a1[9];
  v4.i8[0] = a1[7] & 0x1F;
  v4.i8[1] = (v2 >> 18) & 0x1F;
  v4.i8[2] = (v2 >> 12) & 0x1F;
  v4.i8[3] = (v2 >> 6) & 0x1F;
  v4.i8[4] = v2 & 0x1F;
  v4.i8[5] = (v3 >> 18) & 0x1F;
  v4.i8[6] = (v3 >> 12) & 0x1F;
  v4.i8[7] = (v3 >> 6) & 0x1F;
  v5 = vmovl_u8(v4);
  v6 = vmovl_high_u16(v5);
  v7.i64[0] = v6.u32[0];
  v7.i64[1] = v6.u32[1];
  v8 = v7;
  v9 = vmovl_u16(*v5.i8);
  v7.i64[0] = v9.u32[0];
  v7.i64[1] = v9.u32[1];
  v10 = vdupq_n_s64(0xE4FE7F3uLL);
  result = vand_s8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vshlq_u64(v10, vnegq_s64(v7)), vshlq_u64(v10, vsubw_high_u32(0, v9))), vuzp1q_s32(vshlq_u64(v10, vnegq_s64(v8)), vshlq_u64(v10, vsubw_high_u32(0, v6))))), 0x101010101010101);
  *a2 = result;
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

double *Comp_Track_velLOS(double a1, double a2, double *result, double *a4)
{
  v12 = *MEMORY[0x29EDCA608];
  if (fabs(a1) > 0.0001 || fabs(a2) > 0.0001)
  {
    v10 = 57.2957795 / (a1 * a1 + a2 * a2);
    *a4 = v10 * (result[3] * a1 - *result * a2);
    a4[1] = v10 * (result[4] * a1 - result[1] * a2);
    v9 = v10 * -(result[2] * a2);
  }

  else
  {
    __asm { FMOV            V0.2D, #1.0 }

    *a4 = _Q0;
    v9 = 1.0;
  }

  a4[2] = v9;
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GN_ABDS_Set_CNAV_Eph_El(unsigned __int8 *a1)
{
  v79 = *MEMORY[0x29EDCA608];
  if (!Is_GN_API_Set_Allowed("GN_ABDS_Set_CNAV_Eph_El"))
  {
    goto LABEL_22;
  }

  if (g_Logging_Cfg < 5)
  {
    EvLog_d("GN_ABDS_Set_CNAV_Eph_El: ", *a1);
  }

  else
  {
    EvLog_ABDS_CNAV_Eph_El(a1);
  }

  v2 = *a1;
  if ((v2 - 64) <= 0xFFFFFFC0)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: SVid = %d <%d or >%d, Out of range!");
LABEL_22:
    v10 = 0;
    goto LABEL_23;
  }

  v3 = a1[1];
  if (v3 >= 2)
  {
    v36 = a1[1];
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: SatH1 = %d >1, Out of range!");
    goto LABEL_22;
  }

  v4 = a1[2];
  if (v4 >= 4)
  {
    v37 = a1[2];
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: SV_type = %d >3, Out of range!");
    goto LABEL_22;
  }

  v5 = a1[3];
  if (v5 >= 7)
  {
    v38 = a1[3];
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: Fit_hours = %d >6, Out of range!");
    goto LABEL_22;
  }

  v6 = *(a1 + 1);
  if (v6 >> 7 >= 0x627)
  {
    v39 = *(a1 + 1);
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: sSOW = %d >201599, Out of range!");
    goto LABEL_22;
  }

  v7 = *(a1 + 4);
  if (v7 >= 0x2000)
  {
    v40 = *(a1 + 4);
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: Week = %d >=8191, Out of range!");
    goto LABEL_22;
  }

  v8 = *(a1 + 5);
  if (v8 >= 0x83B)
  {
    v41 = *(a1 + 5);
LABEL_19:
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: toe = %d >2106, Out of range!");
    goto LABEL_22;
  }

  v9 = *(a1 + 6);
  if (v9 >= 0x83B)
  {
    v42 = *(a1 + 6);
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: toc = %d >2106, Out of range!");
    goto LABEL_22;
  }

  v13 = *(a1 + 7);
  if (v13 >= 0x83B)
  {
    v43 = *(a1 + 7);
    goto LABEL_19;
  }

  v14 = *(a1 + 4);
  if ((v14 - 0x2000000) >> 26 != 63)
  {
    v44 = *(a1 + 4);
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: delta_A = %d <-2^25 or >=2^25, Out of range!");
    goto LABEL_22;
  }

  v15 = *(a1 + 5);
  if ((v15 - 0x1000000) >> 25 != 127)
  {
    v45 = *(a1 + 5);
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: A_dot = %d <-2^24 or >=2^24, Out of range!");
    goto LABEL_22;
  }

  v16 = *(a1 + 6);
  if ((v16 - 0x2000000) >> 26 != 63)
  {
    v46 = *(a1 + 6);
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: dN = %d <-2^25 or >=2^25, Out of range!");
    goto LABEL_22;
  }

  v17 = *(a1 + 7);
  if ((v17 - 0x400000) >> 23 != 511)
  {
    v47 = *(a1 + 7);
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: dN_dot = %d <-2^22 or >=2^22, Out of range!");
    goto LABEL_22;
  }

  v18 = *(a1 + 4);
  if ((v18 - 0x100000000) <= 0xFFFFFFFDFFFFFFFFLL)
  {
    v48 = *(a1 + 4);
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: M0 = %d <-2^32 or >=2^32, Out of range!");
    goto LABEL_22;
  }

  v19 = *(a1 + 5);
  if (v19 >> 33)
  {
    v49 = *(a1 + 5);
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: e = %d >=2^33, Out of range!");
    goto LABEL_22;
  }

  if (vcvtd_n_f64_u64(v19, 0x22uLL) > dbl_2990504E0[(v2 - 6) < 0x35])
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: e = %g > %g, Unrealistic value!");
    goto LABEL_22;
  }

  v20 = *(a1 + 6);
  if ((v20 - 0x100000000) <= 0xFFFFFFFDFFFFFFFFLL)
  {
    v50 = *(a1 + 6);
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: w = %d <-2^32 or >=2^32, Out of range!");
    goto LABEL_22;
  }

  v21 = *(a1 + 7);
  if ((v21 - 0x100000000) <= 0xFFFFFFFDFFFFFFFFLL)
  {
    v51 = *(a1 + 7);
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: Omega0 = %d <-2^32 or >=2^32, Out of range!");
    goto LABEL_22;
  }

  v22 = *(a1 + 8);
  if ((v22 - 0x100000000) <= 0xFFFFFFFDFFFFFFFFLL)
  {
    v52 = *(a1 + 8);
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: i0 = %d <-2^32 or >=2^32, Out of range!");
    goto LABEL_22;
  }

  v23 = *(a1 + 18);
  if ((v23 - 0x40000) <= 0xFFF7FFFF)
  {
    v53 = *(a1 + 18);
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: Omega_dot = %d <-2^18 or >=2^18, Out of range!");
    goto LABEL_22;
  }

  v24 = v23 * 1.78578867e-13;
  if (v24 < -0.00000198862815)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: Omega_dot = %e < %e, Unrealistic value!");
    goto LABEL_22;
  }

  if (v24 > 0.000000314159265)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: Omega_dot = %e > %e, Unrealistic value!");
    goto LABEL_22;
  }

  v25 = *(a1 + 38);
  if (((v25 - 0x4000) & 0x8000) == 0)
  {
    v54 = *(a1 + 38);
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: i_dot = %d <-2^14 or >=2^14, Out of range!");
    goto LABEL_22;
  }

  v26 = *(a1 + 21);
  if ((v26 - 0x800000) >> 24 != 255)
  {
    v55 = *(a1 + 21);
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: Crs = %d <-2^23 or >=2^23, Out of range!");
    goto LABEL_22;
  }

  v27 = *(a1 + 22);
  if ((v27 - 0x800000) >> 24 != 255)
  {
    v56 = *(a1 + 22);
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: Crc = %d <-2^23 or >=2^23, Out of range!");
    goto LABEL_22;
  }

  v28 = *(a1 + 23);
  if ((v28 - 0x100000) >> 21 != 2047)
  {
    v57 = *(a1 + 23);
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: Cus = %d <-2^20 or >=2^20, Out of range!");
    goto LABEL_22;
  }

  v29 = *(a1 + 24);
  if ((v29 - 0x100000) >> 21 != 2047)
  {
    v58 = *(a1 + 24);
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: Cuc = %d <-2^20 or >=2^20, Out of range!");
    goto LABEL_22;
  }

  v30 = *(a1 + 25);
  if ((v30 - 0x1000000) >> 25 != 127)
  {
    v59 = *(a1 + 25);
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: af0 = %d <-2^24 or >=2^24, Out of range!");
    goto LABEL_22;
  }

  v78 = *(a1 + 26);
  if ((v78 - 0x200000) >> 22 != 1023)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: af1 = %d <-2^21 or >=2^21, Out of range!");
    goto LABEL_22;
  }

  v77 = *(a1 + 54);
  if (((v77 - 1024) >> 11) <= 0x1Eu)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: af2 = %d <-2^10 or >=2^10, Out of range!");
    goto LABEL_22;
  }

  v76 = a1[112];
  if (v76 >= 0x20)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: SISA_Ocb = %d >31, Out of range!");
    goto LABEL_22;
  }

  v75 = a1[113];
  if (v75 >= 8)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: SISA_Oc1 = %d >7, Out of range!");
    goto LABEL_22;
  }

  v74 = a1[114];
  if (v74 >= 8)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: SISA_Oc2 = %d >7, Out of range!");
    goto LABEL_22;
  }

  v73 = a1[115];
  if (v73 >= 0x20)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: SISA_Oce = %d >31, Out of range!");
    goto LABEL_22;
  }

  v72 = *(a1 + 58);
  if (((v72 - 1024) >> 11) <= 0x1Eu)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: TGD_B1C_p = %d <-2^10 or >=2^10, Out of range!");
    goto LABEL_22;
  }

  v71 = *(a1 + 59);
  if (((v71 - 1024) >> 11) <= 0x1Eu)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: TGD_B2a_p = %d <-2^10 or >=2^10, Out of range!");
    goto LABEL_22;
  }

  v70 = *(a1 + 60);
  if (((v70 - 1024) >> 11) <= 0x1Eu)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: ISC_B1C_d = %d <-2^10 or >=2^10, Out of range!");
    goto LABEL_22;
  }

  v69 = *(a1 + 61);
  if (((v69 - 1024) >> 11) <= 0x1Eu)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: ISC_B2a_d = %d <-2^10 or >=2^10, Out of range!");
    goto LABEL_22;
  }

  v68 = a1[124];
  if (v68 >= 2)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: dif_B1C = %d >1, Out of range!");
    goto LABEL_22;
  }

  v67 = a1[125];
  if (v67 >= 2)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: sif_B1C = %d >1, Out of range!");
    goto LABEL_22;
  }

  v66 = a1[126];
  if (v66 >= 2)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: aif_B1C = %d >1, Out of range!");
    goto LABEL_22;
  }

  v65 = a1[127];
  if (v65 >= 2)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: dif_B2a = %d >1, Out of range!");
    goto LABEL_22;
  }

  v64 = a1[128];
  if (v64 >= 2)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: sif_B2a = %d >1, Out of range!");
    goto LABEL_22;
  }

  v63 = a1[129];
  if (v63 >= 2)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: aif_B2a = %d >1, Out of range!");
    goto LABEL_22;
  }

  v62 = a1[130];
  if ((v62 - 16) <= 0xDFu)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: URAI = %d <-16 or >15, Out of range!");
    goto LABEL_22;
  }

  v61 = p_NA;
  v60 = v2 - 1;
  v31 = p_NA + 152 * (v2 - 1);
  *(v31 + 10120) = v2;
  *(v31 + 10121) = v3;
  *(v31 + 10122) = v4;
  if (v5 >= 4)
  {
    v32 = 4;
  }

  else
  {
    v32 = v5;
  }

  *(v31 + 10123) = v32;
  *(v31 + 10124) = v6;
  *(v31 + 10128) = v7;
  *(v31 + 10132) = v8;
  *(v31 + 10136) = v9;
  *(v31 + 10140) = v13;
  *(v31 + 10144) = v14;
  *(v31 + 10148) = v15;
  *(v31 + 10152) = v16;
  *(v31 + 10156) = v17;
  *(v31 + 10160) = v18;
  *(v31 + 10168) = v19;
  *(v31 + 10176) = v20;
  *(v31 + 10184) = v21;
  *(v31 + 10192) = v22;
  *(v31 + 10200) = v23;
  *(v31 + 10204) = v25;
  *(v31 + 10206) = *(a1 + 78);
  *(v31 + 10212) = v26;
  *(v31 + 10216) = v27;
  *(v31 + 10220) = v28;
  *(v31 + 10224) = v29;
  *(v31 + 10228) = v30;
  *(v31 + 10232) = v78;
  if (a1[132])
  {
    v33 = 5;
  }

  else
  {
    v33 = 3;
  }

  *(v31 + 10116) = v33;
  *(v31 + 10236) = v77;
  *(v31 + 10238) = *(a1 + 55);
  *(v31 + 10240) = v76;
  *(v31 + 10241) = v75;
  *(v31 + 10242) = v74;
  *(v31 + 10243) = v73;
  *(v31 + 10244) = v72;
  *(v31 + 10246) = v71;
  *(v31 + 10248) = v70;
  *(v31 + 10250) = v69;
  *(v31 + 10252) = v68;
  *(v31 + 10253) = v67;
  *(v31 + 10254) = v66;
  *(v31 + 10255) = v65;
  *(v31 + 10256) = v64;
  *(v31 + 10257) = v63;
  *(v31 + 10258) = v62;
  *(v31 + 10259) = a1[131];
  *(v61 + v60 + 221) = 1;
  v34 = *(p_api + 48);
  if (*(v34 + 16) == 1 && *v34 >= 3)
  {
    v35 = *(v34 + 40) + 604800 * *(v34 + 32);
  }

  else
  {
    v35 = 0;
  }

  *(v31 + 10112) = v35;
  v10 = 1;
  Debug_Log_BDS_Eph(1, v31 + 10112);
LABEL_23:
  v11 = *MEMORY[0x29EDCA608];
  return v10;
}

uint64_t GN_ABDS_Set_Alm_El(unsigned __int8 *a1)
{
  v35 = *MEMORY[0x29EDCA608];
  if (!Is_GN_API_Set_Allowed("GN_ABDS_Set_Alm"))
  {
    goto LABEL_33;
  }

  EvLog_d("GN_ABDS_Set_Alm: ", a1[1]);
  v2 = a1[1];
  if ((v2 - 64) <= 0xFFFFFFC0)
  {
    EvCrt_v("GN_ABDS_Set_Alm: SVid = %d <%d or >%d, Out of range!");
LABEL_33:
    v16 = 0;
    goto LABEL_34;
  }

  v3 = *(a1 + 15);
  if (((v3 - 1024) >> 11) <= 0x1Eu)
  {
    v26 = *(a1 + 15);
    EvCrt_v("GN_ABDS_Set_Alm: FAILED: af0 = %d <-2^10 or >=2^10, Out of range!");
    goto LABEL_33;
  }

  v4 = *(a1 + 16);
  if (((v4 - 1024) >> 11) <= 0x1Eu)
  {
    v27 = *(a1 + 16);
    EvCrt_v("GN_ABDS_Set_Alm: FAILED: af1 = %d <-2^10 or >=2^10, Out of range!");
    goto LABEL_33;
  }

  v5 = dbl_2990504E0[(v2 - 6) < 0x35];
  if ((v2 - 59) >= 0xFFFFFFCB)
  {
    v5 = 0.1;
  }

  v6 = 7000.0;
  if ((v2 - 59) < 0xFFFFFFCB)
  {
    v6 = dbl_2990504F0[(v2 - 6) < 0x35];
  }

  v7 = *(a1 + 1);
  v8 = vcvtd_n_f64_u32(v7, 0xBuLL);
  if (v8 < dbl_299050500[(v2 - 59) < 0xFFFFFFCB])
  {
    EvCrt_v("GN_ABDS_Set_Alm: FAILED: sqrtA = %g < %g, Unrealistic value!");
    goto LABEL_33;
  }

  if (v8 > v6)
  {
    EvCrt_v("GN_ABDS_Set_Alm: FAILED: sqrtA = %g > %g, Unrealistic value!");
    goto LABEL_33;
  }

  v9 = *(a1 + 2);
  if (vcvtd_n_f64_u32(v9, 0x15uLL) > v5)
  {
    EvCrt_v("GN_ABDS_Set_Alm: FAILED: e = %g > %g, Unrealistic value!");
    goto LABEL_33;
  }

  v10 = *(a1 + 5);
  if ((v10 - 0x800000) >> 24 != 255)
  {
    v28 = *(a1 + 5);
    EvCrt_v("GN_ABDS_Set_Alm: FAILED: Omega0 = %d <-2^23 or >=2^23, Out of range!");
    goto LABEL_33;
  }

  v11 = *(a1 + 6);
  v12 = v11 * 1.14290475e-11;
  if (v12 < -0.00000198862815)
  {
    EvCrt_v("GN_ABDS_Set_Alm: FAILED: OmegaDot = %e < %e, Unrealistic value!");
    goto LABEL_33;
  }

  if (v12 > 0.000000314159265)
  {
    EvCrt_v("GN_ABDS_Set_Alm: FAILED: OmegaDot = %e > %e, Unrealistic value!");
    goto LABEL_33;
  }

  v13 = *(a1 + 3);
  if ((v13 - 0x800000) >> 24 != 255)
  {
    v29 = *(a1 + 3);
    EvCrt_v("GN_ABDS_Set_Alm: FAILED: w = %d <-2^23 or >=2^23, Out of range!");
    goto LABEL_33;
  }

  v14 = *(a1 + 4);
  if ((v14 - 0x800000) >> 24 != 255)
  {
    v30 = *(a1 + 4);
    EvCrt_v("GN_ABDS_Set_Alm: FAILED: M0 = %d <-2^23 or >=2^23, Out of range!");
    goto LABEL_33;
  }

  v15 = *(a1 + 17);
  if (v15 == 0xFFFF)
  {
    if (v2 <= 0x1E)
    {
      v32 = a1[1];
      EvCrt_v("GN_ABDS_Set_Alm: FAILED: SVHealth Unknown for SV %d in range 1..30, Out of range!");
      goto LABEL_33;
    }
  }

  else if (v15 >= 0x200)
  {
    v31 = *(a1 + 17);
    EvCrt_v("GN_ABDS_Set_Alm: FAILED: SVHealth = %x > 0x1FF or < 0xFFFF, Out of range!");
    goto LABEL_33;
  }

  v19 = p_NA;
  v33 = p_NA + 19688;
  v34 = v2 - 1;
  v20 = p_NA + 19688 + 44 * (v2 - 1);
  *(v20 + 8) = *a1;
  *(v20 + 10) = v2;
  *(v20 + 11) = a1[2];
  *(v20 + 12) = v7;
  *(v20 + 16) = v9;
  *(v20 + 20) = v13;
  *(v20 + 24) = v14;
  *(v20 + 28) = v10;
  *(v20 + 32) = v11;
  *(v20 + 36) = *(a1 + 14);
  *(v20 + 38) = v3;
  *(v20 + 40) = v4;
  v21 = v15 != 0xFFFF && Decode_BDS_Alm_Health_Sts(v15) > 3;
  *(v33 + 44 * v34 + 42) = v21;
  *(v19 + v34 + 284) = 1;
  v22 = *(p_api + 48);
  if (*(v22 + 16) == 1 && *v22 >= 3)
  {
    v23 = *(v22 + 40) + 604800 * *(v22 + 32);
  }

  else
  {
    v23 = 0;
  }

  v24 = (v33 + 44 * v34);
  if (a1[36])
  {
    v25 = 5;
  }

  else
  {
    v25 = 3;
  }

  *v24 = v23;
  v24[1] = v25;
  v16 = 1;
  Debug_Log_BDS_Alm(1, v24);
LABEL_34:
  v17 = *MEMORY[0x29EDCA608];
  return v16;
}

uint64_t GN_ABDS_Set_BGTO(int a1, unsigned __int16 *a2)
{
  v21 = *MEMORY[0x29EDCA608];
  result = Is_GN_API_Set_Allowed("GN_ABDS_Set_BGTO");
  if (result)
  {
    v6 = *(a2 + 2);
    if ((v6 - 0x10000) <= 0xFFFDFFFF)
    {
      v19 = *(a2 + 2);
      EvCrt_v("GN_ABDS_Set_BGTO: FAILED: A0 = %d < -2^16 or >= 2^16, Out of range!");
LABEL_12:
      result = 0;
      goto LABEL_21;
    }

    v7 = a2[6];
    if (v7 != 0x7FFF && ((a2[6] - 0x2000) >> 14) <= 2u)
    {
      v20 = a2[6];
      EvCrt_v("GN_ABDS_Set_BGTO: FAILED: A1 = %d < -2^13 or >= 2^13, Out of range!");
      goto LABEL_12;
    }

    v9 = *(p_api + 48);
    if (*(v9 + 16) == 1 && *v9 >= 3)
    {
      v10 = *(v9 + 40) + 604800 * *(v9 + 32);
    }

    else
    {
      v10 = 0;
    }

    v11 = *a2;
    v12 = *(a2 + 1);
    v13 = *(a2 + 14);
    v14 = a2[8];
    if (*(a2 + 18))
    {
      v15 = 5;
    }

    else
    {
      v15 = 3;
    }

    v16 = p_NA;
    v17 = p_NA + 0x2000;
    if (a1)
    {
      *(p_NA + 10052) = v10;
      *(v16 + 10056) = v15;
      *(v17 + 1868) = v11;
      *(v16 + 10064) = v12;
      *(v16 + 10068) = v6;
      *(v17 + 1880) = v7;
      *(v17 + 1882) = v13;
      *(v17 + 1884) = v14;
      *(v16 + 219) = 1;
    }

    else
    {
      *(p_NA + 10080) = v10;
      *(v16 + 10084) = v15;
      *(v17 + 1896) = v11;
      *(v16 + 10092) = v12;
      *(v16 + 10096) = v6;
      *(v17 + 1908) = v7;
      *(v17 + 1910) = v13;
      *(v17 + 1912) = v14;
      *(v16 + 220) = 1;
    }

    EvLog_nd("GN_ABDS_Set_BGTO: ", 7, v5, *a2, *(a2 + 1), *(a2 + 2), a2[6], *(a2 + 14), a2[8], *(a2 + 18), v21);
    result = 1;
  }

LABEL_21:
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t stphiu(uint64_t result, unsigned int a2, const double *a3, const unsigned __int8 *a4, int a5, const unsigned __int8 *a6, const unsigned __int8 *a7)
{
  v25 = *MEMORY[0x29EDCA608];
  if (a2 >= 2 && a5)
  {
    v7 = 0;
    v8 = result - 8;
    v9 = a3 - 1;
    v10 = a4 - 1;
    v11 = a6 - 1;
    v12 = a7 - 1;
    if ((a5 + 1) > 2)
    {
      v13 = (a5 + 1);
    }

    else
    {
      v13 = 2;
    }

    v14 = 1;
    do
    {
      v15 = v12[v14];
      if (v12[v14])
      {
        result = v11[v14];
        v16 = 1;
        v17 = v7;
        do
        {
          v18 = v9[++v17];
          v19 = v10[v17];
          v20 = (v19 - 1) * v19;
          v21 = result + (v20 >> 1);
          *(v8 + 8 * v21) = v18 + *(v8 + 8 * v21);
          if (v19 < a2)
          {
            v22 = (v20 >> 1) + v19;
            do
            {
              v21 += v19;
              v22 += v19;
              *(v8 + 8 * v21) = *(v8 + 8 * v21) + v18 * *(v8 + 8 * v22);
              ++v19;
            }

            while (a2 != v19);
          }
        }

        while (v16++ != v15);
      }

      v7 += v15;
      ++v14;
    }

    while (v14 != v13);
  }

  v24 = *MEMORY[0x29EDCA608];
  return result;
}

void Debug_Log_Platform_Calibration_GLONASS_Group_Delays(double *a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (g_Logging_Cfg)
  {
    v2 = g_CB_GDbg;
    v3 = 36;
    v4 = 1u;
    do
    {
      g_CB_GDbg = (v2 + 1);
      *v2 = v3;
      v2 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v2 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v3 = str_8[v4++];
    }

    while (v4 != 6);
    for (i = 0; i != 14; ++i)
    {
      v6 = g_CB_GDbg++;
      *v6 = 32;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        g_CB_GDbg = qword_2A1453F90;
      }

      v7 = a1[i] * 1000.0;
      if (v7 <= 0.0)
      {
        v8 = -0.5;
      }

      else
      {
        v8 = 0.5;
      }

      v9 = v7 + v8;
      if (v9 <= 2147483650.0)
      {
        if (v9 >= -2147483650.0)
        {
          v10 = v9;
        }

        else
        {
          v10 = 0x80000000;
        }
      }

      else
      {
        v10 = 0x7FFFFFFF;
      }

      sprintf_4f(&g_CB_GDbg, v10, 4);
    }

    v11 = g_CB_GDbg++;
    *v11 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    v12 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v13 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_Platform_Calibration_L5_Group_Delay(double a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (g_Logging_Cfg)
  {
    v1 = g_CB_GDbg;
    v2 = 36;
    v3 = 1u;
    do
    {
      g_CB_GDbg = (v1 + 1);
      *v1 = v2;
      v1 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v1 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v2 = str_1_1[v3++];
    }

    while (v3 != 7);
    v4 = a1 * 1000.0;
    v5 = -0.5;
    if (v4 > 0.0)
    {
      v5 = 0.5;
    }

    v6 = v4 + v5;
    if (v6 <= 2147483650.0)
    {
      if (v6 >= -2147483650.0)
      {
        v7 = v6;
      }

      else
      {
        v7 = 0x80000000;
      }
    }

    else
    {
      v7 = 0x7FFFFFFF;
    }

    sprintf_4f(&g_CB_GDbg, v7, 4);
    v9 = g_CB_GDbg++;
    *v9 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    v10 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v8 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_ApxTime(unsigned __int16 *a1)
{
  v25 = *MEMORY[0x29EDCA608];
  if (g_Logging_Cfg)
  {
    v2 = g_CB_GDbg;
    v3 = 36;
    v4 = 1u;
    do
    {
      g_CB_GDbg = (v2 + 1);
      *v2 = v3;
      v2 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v2 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v3 = str_2_1[v4++];
    }

    while (v4 != 6);
    v5 = *a1;
    g_CB_GDbg = (v2 + 1);
    *v2 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v6 = a1[1];
    v7 = g_CB_GDbg++;
    *v7 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v6);
    v8 = a1[2];
    v9 = g_CB_GDbg++;
    *v9 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v8);
    v10 = a1[3];
    v11 = g_CB_GDbg++;
    *v11 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v10);
    v12 = a1[4];
    v13 = g_CB_GDbg++;
    *v13 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v12);
    v14 = a1[5];
    v15 = g_CB_GDbg++;
    *v15 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v14);
    v16 = a1[6];
    v17 = g_CB_GDbg++;
    *v17 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v16);
    v18 = *(a1 + 4);
    v19 = g_CB_GDbg++;
    *v19 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v18);
    v20 = *(a1 + 5);
    v21 = g_CB_GDbg++;
    *v21 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v20);
    v22 = g_CB_GDbg++;
    *v22 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    v23 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v24 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_NonVol(char a1, s_NV_Ram *a2)
{
  v249 = *MEMORY[0x29EDCA608];
  if (!g_Logging_Cfg)
  {
    goto LABEL_325;
  }

  v3 = 0;
  v4 = *(a2 + 1);
  v5 = *(a2 + 8354);
  v6 = *(a2 + 4149);
  v7 = *(a2 + 8300);
  v8 = 36;
  v9 = *(a2 + 8301);
  v231 = *(a2 + 8302);
  v10 = g_CB_GDbg;
  do
  {
    g_CB_GDbg = (v10 + 1);
    *v10 = v8;
    v10 = g_CB_GDbg;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      v10 = qword_2A1453F90;
      g_CB_GDbg = qword_2A1453F90;
    }

    v8 = aNg[++v3];
  }

  while (v3 != 4);
  v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  v12 = g_CB_GDbg++;
  *v12 = 32;
  if (g_CB_GDbg >= qword_2A1453F98)
  {
    g_CB_GDbg = qword_2A1453F90;
  }

  sprintf_2d(&g_CB_GDbg, v11);
  v13 = g_CB_GDbg++;
  *v13 = 32;
  if (g_CB_GDbg >= qword_2A1453F98)
  {
    g_CB_GDbg = qword_2A1453F90;
  }

  sprintf_2d(&g_CB_GDbg, v4);
  v14 = g_CB_GDbg++;
  *v14 = 32;
  if (g_CB_GDbg >= qword_2A1453F98)
  {
    g_CB_GDbg = qword_2A1453F90;
  }

  sprintf_2d(&g_CB_GDbg, v5);
  v15 = g_CB_GDbg++;
  *v15 = 32;
  if (g_CB_GDbg >= qword_2A1453F98)
  {
    g_CB_GDbg = qword_2A1453F90;
  }

  sprintf_2d(&g_CB_GDbg, v6);
  v16 = g_CB_GDbg++;
  *v16 = 32;
  if (g_CB_GDbg >= qword_2A1453F98)
  {
    g_CB_GDbg = qword_2A1453F90;
  }

  sprintf_2d(&g_CB_GDbg, v7);
  v17 = g_CB_GDbg++;
  *v17 = 32;
  if (g_CB_GDbg >= qword_2A1453F98)
  {
    g_CB_GDbg = qword_2A1453F90;
  }

  sprintf_2d(&g_CB_GDbg, v9);
  v18 = g_CB_GDbg++;
  *v18 = 32;
  if (g_CB_GDbg >= qword_2A1453F98)
  {
    g_CB_GDbg = qword_2A1453F90;
  }

  sprintf_2d(&g_CB_GDbg, v231);
  v19 = g_CB_GDbg++;
  *v19 = 10;
  if (g_CB_GDbg >= qword_2A1453F98)
  {
    g_CB_GDbg = qword_2A1453F90;
  }

  GNB_Debug_Flush_Check();
  if (a1)
  {
    v247 = 0;
    v248 = 0;
    memset(v246, 0, sizeof(v246));
    v245 = 0;
    memset(v244, 0, sizeof(v244));
    memset(v237, 0, 99);
    v236 = 0u;
    v242 = 0u;
    memset(v243, 0, 28);
    memset(v241, 0, sizeof(v241));
    memset(v235, 0, 22);
    v20 = 1;
    v234 = 0uLL;
    do
    {
      if (Core_Load_GPS_Eph(v20, &v236) && v236 >= 1)
      {
        *v246 = v236;
        v246[8] = BYTE8(v236);
        *&v246[9] = *(&v236 + 9);
        v21 = 21;
        v22 = 11;
        v23 = v237 + 8;
        do
        {
          v24 = &v246[v22];
          *v24 = *v23;
          *(v24 + 1) = *(v23 + 1);
          v23 += 4;
          --v21;
          v22 += 3;
        }

        while (v21 > 1);
        *&v246[71] = WORD6(v237[5]);
        v247 = *(&v237[5] + 14);
        v248 = BYTE2(v237[6]);
        Debug_Log_GPS_Eph(0, v20, v246);
      }

      ++v20;
    }

    while (v20 != 33);
    for (i = 1; i != 33; ++i)
    {
      if (Core_Load_GPS_Alm(i, &v242) && v242 >= 1)
      {
        *&v244[0] = v242;
        WORD4(v244[0]) = WORD5(v242);
        v26 = 9;
        v27 = 10;
        v28 = &v242 | 0xC;
        do
        {
          v29 = v244 + v27;
          *v29 = *v28;
          *(v29 + 1) = *(v28 + 1);
          v28 += 4;
          --v26;
          v27 += 3;
        }

        while (v26 > 1);
        Debug_Log_GPS_Alm(0, i, v244);
      }
    }

    v30 = 0;
    v31 = p_NV;
    v32 = 55665;
    for (j = 96; j != 136; ++j)
    {
      v34 = *(p_NV + j) ^ BYTE1(v32);
      v32 = 52845 * (v32 + v34) + 22719;
      v30 += v34;
    }

    if (*(p_NV + 88) == v30)
    {
      v35 = *(p_NV + 116);
      v241[0] = *(p_NV + 100);
      v241[1] = v35;
      Debug_Log_GNSS_Health(1, v241);
      v31 = p_NV;
    }

    v36 = 0;
    v37 = 55665;
    for (k = 168; k != 192; ++k)
    {
      v39 = *(v31 + k) ^ BYTE1(v37);
      v37 = 52845 * (v37 + v39) + 22719;
      v36 += v39;
    }

    if (*(v31 + 160) == v36)
    {
      *v235 = *(v31 + 168);
      *&v235[16] = *(v31 + 184);
      if (*v235 >= 1)
      {
        Debug_Log_GPS_UTC(0, v235);
        v31 = p_NV;
      }
    }

    v40 = 0;
    v41 = 0;
    v42 = 55665;
    do
    {
      v43 = *(v31 + 144 + v40) ^ BYTE1(v42);
      v42 = 52845 * (v42 + v43) + 22719;
      v41 += v43;
      ++v40;
    }

    while (v40 != 16);
    if (*(v31 + 136) == v41)
    {
      v234 = *(v31 + 144);
      if (v234 >= 1)
      {
        Debug_Log_GPS_Klob(0, &v234);
      }
    }

    v247 = 0;
    v248 = 0;
    memset(&v246[8], 0, 65);
    v245 = 0;
    memset(v244, 0, sizeof(v244));
    memset(v237, 0, 99);
    v236 = 0u;
    v242 = 0u;
    memset(v243, 0, 28);
    WORD4(v241[0]) = 0;
    v44 = 193;
    *&v241[0] = 0;
    do
    {
      if (Core_Load_QZSS_Eph(v44, &v236) && v236 >= 1)
      {
        *v246 = v236;
        v246[8] = BYTE8(v236);
        *&v246[9] = *(&v236 + 9);
        v45 = 21;
        v46 = 11;
        v47 = v237 + 8;
        do
        {
          v48 = &v246[v46];
          *v48 = *v47;
          *(v48 + 1) = *(v47 + 1);
          v47 += 4;
          --v45;
          v46 += 3;
        }

        while (v45 > 1);
        *&v246[71] = WORD6(v237[5]);
        v247 = *(&v237[5] + 14);
        v248 = BYTE2(v237[6]);
        Debug_Log_GPS_Eph(0, v44, v246);
      }

      ++v44;
    }

    while (v44 != 203);
    for (m = 193; m != 203; ++m)
    {
      if (Core_Load_QZSS_Alm(m, &v242) && v242 >= 1)
      {
        *&v244[0] = v242;
        WORD4(v244[0]) = WORD5(v242);
        v50 = 9;
        v51 = 10;
        v52 = &v242 | 0xC;
        do
        {
          v53 = v244 + v51;
          *v53 = *v52;
          *(v53 + 1) = *(v52 + 1);
          v52 += 4;
          --v50;
          v51 += 3;
        }

        while (v50 > 1);
        Debug_Log_GPS_Alm(0, m, v244);
      }
    }

    v54 = 0;
    v55 = 0;
    v56 = 55665;
    do
    {
      v57 = *(p_NV + 6088 + v54) ^ BYTE1(v56);
      v56 = 52845 * (v56 + v57) + 22719;
      v55 += v57;
      ++v54;
    }

    while (v54 != 16);
    if (*(p_NV + 6080) == v55)
    {
      WORD4(v241[0]) = *(p_NV + 6100);
      *&v241[0] = *(p_NV + 6092);
      Debug_Log_GNSS_Health(3, v241);
    }

    memset(v237, 0, 46);
    v236 = 0u;
    *v246 = 0;
    *&v246[8] = 0;
    memset(&v246[12], 0, 24);
    for (n = 1; n != 25; ++n)
    {
      if (Core_Load_GLON_Eph(n, &v236) && v236 >= 1)
      {
        Debug_Log_GLO_Eph(0, n, &v236);
      }
    }

    for (ii = 1; ii != 25; ++ii)
    {
      if (Core_Load_GLON_Alm(ii, v246) && *v246 >= 1)
      {
        Debug_Log_GLO_Alm(0, ii, v246);
      }
    }

    v60 = 0;
    v61 = 0;
    v62 = p_NV;
    v63 = 55665;
    do
    {
      v64 = *(p_NV + 29168 + v60) ^ BYTE1(v63);
      v63 = 52845 * (v63 + v64) + 22719;
      v61 += v64;
      ++v60;
    }

    while (v60 != 32);
    if (*(p_NV + 29160) == v61)
    {
      v242 = *(p_NV + 29172);
      *&v243[0] = *(p_NV + 29188);
      Debug_Log_GNSS_Health(2, &v242);
      v62 = p_NV;
    }

    v65 = 0;
    v66 = 0;
    v67 = 55665;
    do
    {
      v68 = *(v62 + 29208 + v65) ^ BYTE1(v67);
      v67 = 52845 * (v67 + v68) + 22719;
      v66 += v68;
      ++v65;
    }

    while (v65 != 32);
    if (*(v62 + 29200) == v66)
    {
      v69 = *(v62 + 29208);
      if (v69 >= 1)
      {
        if (g_Logging_Cfg)
        {
          v232 = *(v62 + 29212);
          v70 = *(v62 + 29216);
          v71 = *(v62 + 29220);
          v72 = *(v62 + 29224);
          v73 = *(v62 + 29228);
          v74 = *(v62 + 29232);
          sprintf_NA_x_header(0, "C-");
          v75 = g_CB_GDbg++;
          *v75 = 32;
          if (g_CB_GDbg >= qword_2A1453F98)
          {
            g_CB_GDbg = qword_2A1453F90;
          }

          sprintf_2d(&g_CB_GDbg, v69);
          v76 = g_CB_GDbg++;
          *v76 = 32;
          if (g_CB_GDbg >= qword_2A1453F98)
          {
            g_CB_GDbg = qword_2A1453F90;
          }

          sprintf_2d(&g_CB_GDbg, v70);
          v77 = g_CB_GDbg++;
          *v77 = 32;
          if (g_CB_GDbg >= qword_2A1453F98)
          {
            g_CB_GDbg = qword_2A1453F90;
          }

          sprintf_2d(&g_CB_GDbg, v71);
          v78 = g_CB_GDbg++;
          *v78 = 32;
          if (g_CB_GDbg >= qword_2A1453F98)
          {
            g_CB_GDbg = qword_2A1453F90;
          }

          sprintf_2d(&g_CB_GDbg, v72);
          v79 = g_CB_GDbg++;
          *v79 = 32;
          if (g_CB_GDbg >= qword_2A1453F98)
          {
            g_CB_GDbg = qword_2A1453F90;
          }

          sprintf_2d(&g_CB_GDbg, v73);
          v80 = g_CB_GDbg++;
          *v80 = 32;
          if (g_CB_GDbg >= qword_2A1453F98)
          {
            g_CB_GDbg = qword_2A1453F90;
          }

          sprintf_2d(&g_CB_GDbg, v74);
          sprintf_sp1d(&g_CB_GDbg, v232);
          v81 = g_CB_GDbg++;
          *v81 = 10;
          if (g_CB_GDbg >= qword_2A1453F98)
          {
            g_CB_GDbg = qword_2A1453F90;
          }

          GNB_Debug_Flush_Check();
        }
      }
    }

    memset(v237, 0, 72);
    v236 = 0u;
    v82 = 1;
    memset(v246, 0, 35);
    do
    {
      v83 = v82;
      if (Core_Load_GAL_Eph(v82, &v236) && v236 >= 1)
      {
        Debug_Log_GAL_Eph(0, &v236);
      }

      ++v82;
    }

    while (v83 < 0x24);
    v84 = 1;
    do
    {
      v85 = v84;
      if (Core_Load_GAL_Alm(v84, v246) && *v246 >= 1)
      {
        Debug_Log_GAL_Alm(0, v246);
      }

      ++v84;
    }

    while (v85 < 0x24);
    v86 = 0;
    v87 = 0;
    v88 = p_NV;
    v89 = 55665;
    do
    {
      v90 = *(p_NV + 7952 + v86) ^ BYTE1(v89);
      v89 = 52845 * (v89 + v90) + 22719;
      v87 += v90;
      ++v86;
    }

    while (v86 != 40);
    if (*(p_NV + 7944) == v87)
    {
      LODWORD(v243[1]) = *(p_NV + 7988);
      v91 = *(p_NV + 7972);
      v242 = *(p_NV + 7956);
      v243[0] = v91;
      Debug_Log_GNSS_Health(5, &v242);
      v88 = p_NV;
    }

    v92 = 0;
    v93 = 0;
    v94 = 55665;
    do
    {
      v95 = *(v88 + 8000 + v92) ^ BYTE1(v94);
      v94 = 52845 * (v94 + v95) + 22719;
      v93 += v95;
      ++v92;
    }

    while (v92 != 16);
    if (*(v88 + 7992) == v93)
    {
      v96 = *(v88 + 8000);
      if (v96 >= 1)
      {
        if (g_Logging_Cfg)
        {
          v233 = *(v88 + 8004);
          v97 = *(v88 + 8008);
          v98 = *(v88 + 8010);
          v99 = *(v88 + 8012);
          v100 = *(v88 + 8013);
          sprintf_NA_x_header(0, "OE");
          v101 = g_CB_GDbg++;
          *v101 = 32;
          if (g_CB_GDbg >= qword_2A1453F98)
          {
            g_CB_GDbg = qword_2A1453F90;
          }

          sprintf_2d(&g_CB_GDbg, v96);
          v102 = g_CB_GDbg++;
          *v102 = 32;
          if (g_CB_GDbg >= qword_2A1453F98)
          {
            g_CB_GDbg = qword_2A1453F90;
          }

          sprintf_2d(&g_CB_GDbg, v97);
          v103 = g_CB_GDbg++;
          *v103 = 32;
          if (g_CB_GDbg >= qword_2A1453F98)
          {
            g_CB_GDbg = qword_2A1453F90;
          }

          sprintf_2d(&g_CB_GDbg, v98);
          v104 = g_CB_GDbg++;
          *v104 = 32;
          if (g_CB_GDbg >= qword_2A1453F98)
          {
            g_CB_GDbg = qword_2A1453F90;
          }

          sprintf_2d(&g_CB_GDbg, v99);
          v105 = g_CB_GDbg++;
          *v105 = 32;
          if (g_CB_GDbg >= qword_2A1453F98)
          {
            g_CB_GDbg = qword_2A1453F90;
          }

          sprintf_2d(&g_CB_GDbg, v100);
          sprintf_sp1d(&g_CB_GDbg, v233);
          v106 = g_CB_GDbg++;
          *v106 = 10;
          if (g_CB_GDbg >= qword_2A1453F98)
          {
            g_CB_GDbg = qword_2A1453F90;
          }

          GNB_Debug_Flush_Check();
        }
      }
    }

    v236 = 0uLL;
    LOWORD(v237[0]) = 0;
    memset(v237 + 4, 0, 64);
    *(&v237[4] + 2) = 0u;
    memset(&v237[5] + 4, 0, 48);
    v107 = 1;
    v242 = 0u;
    memset(v243, 0, 27);
    do
    {
      v108 = v107;
      if (Core_Load_BDS_Eph(v107, &v236) && v236 >= 1)
      {
        Debug_Log_BDS_Eph(0, &v236);
      }

      ++v107;
    }

    while (v108 < 0x3F);
    v109 = 1;
    do
    {
      v110 = v109;
      if (Core_Load_BDS_Alm(v109, &v242) && v242 >= 1)
      {
        Debug_Log_BDS_Alm(0, &v242);
      }

      ++v109;
    }

    while (v110 < 0x3F);
    v111 = 0;
    v112 = 0;
    v113 = 55665;
    do
    {
      v114 = *(p_NV + 13208 + v111) ^ BYTE1(v113);
      v113 = 52845 * (v113 + v114) + 22719;
      v112 += v114;
      ++v111;
    }

    while (v111 != 72);
    if (*(p_NV + 13200) == v112)
    {
      v115 = *(p_NV + 13228);
      *v246 = *(p_NV + 13212);
      *&v246[16] = v115;
      *&v246[32] = *(p_NV + 13244);
      *&v246[47] = *(p_NV + 13259);
      Debug_Log_GNSS_Health(4, v246);
    }

    *&v244[0] = 0;
    WORD4(v244[0]) = 0;
    WORD4(v244[1]) = 0;
    *(v244 + 12) = 0;
    *(&v244[1] + 3) = 0;
    *&v241[0] = 0;
    WORD4(v241[0]) = 0;
    WORD4(v241[1]) = 0;
    *(v241 + 12) = 0;
    *(&v241[1] + 3) = 0;
    if (Core_Load_BDS_BGTO(v244, v241))
    {
      if (SLODWORD(v244[0]) >= 1)
      {
        Debug_Log_BDS_BGTO(v244, 1);
      }

      if (SLODWORD(v241[0]) >= 1)
      {
        Debug_Log_BDS_BGTO(v241, 2);
      }
    }

    v236 = 0u;
    memset(v237, 0, 60);
    *&v246[12] = 0;
    *&v246[16] = 0;
    *&v246[20] = 0;
    *&v246[24] = 0;
    *v246 = 0;
    *&v246[7] = 0;
    memset(&v246[28], 0, 21);
    v116 = 1;
    do
    {
      v117 = v116;
      if (Core_Load_NVIC_Eph(v116, &v236) && v236 >= 1)
      {
        Debug_Log_NVC_Eph(0, &v236);
      }

      ++v116;
    }

    while (v117 < 0xE);
    v118 = 1;
    do
    {
      v119 = v118;
      if (Core_Load_NVIC_Alm(v118, v246) && *v246 >= 1)
      {
        Debug_Log_NVC_Alm(0, v246);
      }

      ++v118;
    }

    while (v119 < 0xE);
    v120 = 0;
    v121 = 0;
    v122 = p_NV;
    v123 = 55665;
    do
    {
      v124 = *(p_NV + 26976 + v120) ^ BYTE1(v123);
      v123 = 52845 * (v123 + v124) + 22719;
      v121 += v124;
      ++v120;
    }

    while (v120 != 24);
    if (*(p_NV + 26968) == v121)
    {
      *&v242 = *(p_NV + 26980);
      *(&v242 + 6) = *(p_NV + 26986);
      Debug_Log_GNSS_Health(6, &v242);
      v122 = p_NV;
    }

    v125 = 0;
    v126 = 0;
    v127 = 55665;
    do
    {
      v128 = *(v122 + 27008 + v125) ^ BYTE1(v127);
      v127 = 52845 * (v127 + v128) + 22719;
      v126 += v128;
      ++v125;
    }

    while (v125 != 24);
    if (*(v122 + 27000) == v126)
    {
      v129 = *(v122 + 27008);
      if (v129 >= 1)
      {
        if (g_Logging_Cfg)
        {
          v130 = *(v122 + 27012);
          v131 = *(v122 + 27016);
          v132 = *(v122 + 27018);
          v133 = *(v122 + 27020);
          v134 = *(v122 + 27022);
          v135 = *(v122 + 27024);
          sprintf_NA_x_header(0, "ON");
          v136 = g_CB_GDbg++;
          *v136 = 32;
          if (g_CB_GDbg >= qword_2A1453F98)
          {
            g_CB_GDbg = qword_2A1453F90;
          }

          sprintf_2d(&g_CB_GDbg, v129);
          v137 = g_CB_GDbg++;
          *v137 = 32;
          if (g_CB_GDbg >= qword_2A1453F98)
          {
            g_CB_GDbg = qword_2A1453F90;
          }

          sprintf_2d(&g_CB_GDbg, v131);
          v138 = g_CB_GDbg++;
          *v138 = 32;
          if (g_CB_GDbg >= qword_2A1453F98)
          {
            g_CB_GDbg = qword_2A1453F90;
          }

          sprintf_2d(&g_CB_GDbg, v132);
          v139 = g_CB_GDbg++;
          *v139 = 32;
          if (g_CB_GDbg >= qword_2A1453F98)
          {
            g_CB_GDbg = qword_2A1453F90;
          }

          sprintf_2d(&g_CB_GDbg, v133);
          v140 = g_CB_GDbg++;
          *v140 = 32;
          if (g_CB_GDbg >= qword_2A1453F98)
          {
            g_CB_GDbg = qword_2A1453F90;
          }

          sprintf_2d(&g_CB_GDbg, v134);
          v141 = g_CB_GDbg++;
          *v141 = 32;
          if (g_CB_GDbg >= qword_2A1453F98)
          {
            g_CB_GDbg = qword_2A1453F90;
          }

          sprintf_2d(&g_CB_GDbg, v135);
          sprintf_sp1d(&g_CB_GDbg, v130);
          v142 = g_CB_GDbg++;
          *v142 = 10;
          if (g_CB_GDbg >= qword_2A1453F98)
          {
            g_CB_GDbg = qword_2A1453F90;
          }

          GNB_Debug_Flush_Check();
        }
      }
    }

    DWORD2(v236) = 0;
    *&v236 = 0;
    v143 = 120;
    *v246 = 0;
    do
    {
      if (Core_Load_SBAS_Apx(v143, v246, &v236))
      {
        v144 = *v246;
        if (*v246 >= 1 && g_Logging_Cfg != 0)
        {
          sprintf_NA_A_header(0, 83);
          v146 = g_CB_GDbg++;
          *v146 = 32;
          if (g_CB_GDbg >= qword_2A1453F98)
          {
            g_CB_GDbg = qword_2A1453F90;
          }

          sprintf_3d(&g_CB_GDbg, v143);
          v147 = g_CB_GDbg++;
          *v147 = 32;
          if (g_CB_GDbg >= qword_2A1453F98)
          {
            g_CB_GDbg = qword_2A1453F90;
          }

          sprintf_10d(&g_CB_GDbg, v144);
          v148 = v236;
          v149 = g_CB_GDbg++;
          *v149 = 32;
          if (g_CB_GDbg >= qword_2A1453F98)
          {
            g_CB_GDbg = qword_2A1453F90;
          }

          sprintf_9d(&g_CB_GDbg, v148);
          v150 = DWORD1(v236);
          v151 = g_CB_GDbg++;
          *v151 = 32;
          if (g_CB_GDbg >= qword_2A1453F98)
          {
            g_CB_GDbg = qword_2A1453F90;
          }

          sprintf_9d(&g_CB_GDbg, v150);
          v152 = DWORD2(v236);
          v153 = g_CB_GDbg++;
          *v153 = 32;
          if (g_CB_GDbg >= qword_2A1453F98)
          {
            g_CB_GDbg = qword_2A1453F90;
          }

          sprintf_8d(&g_CB_GDbg, v152);
          v154 = g_CB_GDbg++;
          *v154 = 10;
          if (g_CB_GDbg >= qword_2A1453F98)
          {
            g_CB_GDbg = qword_2A1453F90;
          }

          GNB_Debug_Flush_Check();
        }
      }

      ++v143;
    }

    while (v143 != 159);
    *v246 = 0;
    *&v236 = 0;
    if (Core_Load_Clk_Drift(v246, &v236) && g_Logging_Cfg)
    {
      v155 = 0;
      v156 = *&v236;
      v157 = *v246;
      v158 = 36;
      v159 = g_CB_GDbg;
      do
      {
        g_CB_GDbg = (v159 + 1);
        *v159 = v158;
        v159 = g_CB_GDbg;
        if (g_CB_GDbg >= qword_2A1453F98)
        {
          v159 = qword_2A1453F90;
          g_CB_GDbg = qword_2A1453F90;
        }

        v158 = aNd[++v155];
      }

      while (v155 != 4);
      g_CB_GDbg = (v159 + 1);
      *v159 = 32;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        g_CB_GDbg = qword_2A1453F90;
      }

      sprintf_2d(&g_CB_GDbg, v157);
      v160 = g_CB_GDbg++;
      *v160 = 32;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        g_CB_GDbg = qword_2A1453F90;
      }

      sprintf_11f9(&g_CB_GDbg, v156 * 1000000.0);
      v161 = g_CB_GDbg++;
      *v161 = 10;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        g_CB_GDbg = qword_2A1453F90;
      }

      GNB_Debug_Flush_Check();
    }

    v239 = 0u;
    memset(v240, 0, sizeof(v240));
    v238 = 0u;
    memset(v237, 0, sizeof(v237));
    v236 = 0u;
    if (Core_Load_Not_Brd_SV(0, &v236))
    {
      Debug_Log_NV_Not_Brd_SV(0, &v236);
    }

    v239 = 0u;
    memset(v240, 0, sizeof(v240));
    v238 = 0u;
    memset(v237, 0, sizeof(v237));
    v236 = 0u;
    if (Core_Load_Not_Brd_SV(1, &v236))
    {
      Debug_Log_NV_Not_Brd_SV(1, &v236);
    }

    *v246 = 0;
    v239 = 0u;
    memset(v240, 0, sizeof(v240));
    v238 = 0u;
    memset(v237, 0, sizeof(v237));
    v236 = 0u;
    Inhib_EE = Core_Load_Inhib_EE(&v236, v246);
    v163 = g_Logging_Cfg;
    if (Inhib_EE && g_Logging_Cfg)
    {
      v164 = 0;
      v165 = *v246;
      v166 = g_CB_GDbg;
      v167 = 36;
      do
      {
        g_CB_GDbg = (v166 + 1);
        *v166 = v167;
        v166 = g_CB_GDbg;
        if (g_CB_GDbg >= qword_2A1453F98)
        {
          v166 = qword_2A1453F90;
          g_CB_GDbg = qword_2A1453F90;
        }

        v167 = aNi[++v164];
      }

      while (v164 != 4);
      v168 = 0;
      v169 = 0;
      v170 = 1;
      do
      {
        if (*(&v237[-1] + v168))
        {
          v171 = v170;
        }

        else
        {
          v171 = 0;
        }

        v169 |= v171;
        v170 *= 2;
        ++v168;
      }

      while (v168 != 32);
      v172 = 0;
      v173 = 0;
      v174 = 1;
      do
      {
        if (*(&v237[1] + v172))
        {
          v175 = v174;
        }

        else
        {
          v175 = 0;
        }

        v173 |= v175;
        v174 *= 2;
        ++v172;
      }

      while (v172 != 24);
      v176 = 0;
      v177 = 0;
      v178 = 1;
      do
      {
        if (*(&v237[8] + v176 + 11))
        {
          v179 = v178;
        }

        else
        {
          v179 = 0;
        }

        v177 |= v179;
        v178 *= 2;
        ++v176;
      }

      while (v176 != 10);
      v180 = 0;
      v181 = 0;
      v182 = 1;
      do
      {
        if (v240[v180 - 13])
        {
          v183 = v182;
        }

        else
        {
          v183 = 0;
        }

        v181 |= v183;
        v182 *= 2;
        ++v180;
      }

      while (v180 != 39);
      v184 = 0;
      v185 = 0;
      v186 = 1;
      do
      {
        if (*(&v237[4] + v184 + 12))
        {
          v187 = v186;
        }

        else
        {
          v187 = 0;
        }

        v185 |= v187;
        v186 *= 2;
        ++v184;
      }

      while (v184 != 63);
      v188 = 0;
      v189 = 0;
      v190 = 1;
      do
      {
        if (*(&v237[2] + v188 + 8))
        {
          v191 = v190;
        }

        else
        {
          v191 = 0;
        }

        v189 |= v191;
        v190 *= 2;
        ++v188;
      }

      while (v188 != 36);
      v192 = 0;
      v193 = 0;
      v194 = 1;
      do
      {
        if (*(&v238 + v192 + 5))
        {
          v195 = v194;
        }

        else
        {
          v195 = 0;
        }

        v193 |= v195;
        v194 *= 2;
        ++v192;
      }

      while (v192 != 14);
      g_CB_GDbg = (v166 + 1);
      *v166 = 32;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        g_CB_GDbg = qword_2A1453F90;
      }

      sprintf_2d(&g_CB_GDbg, v165);
      v196 = 0;
      v197 = g_CB_GDbg;
      v198 = 32;
      do
      {
        g_CB_GDbg = (v197 + 1);
        *v197 = v198;
        v197 = g_CB_GDbg;
        if (g_CB_GDbg >= qword_2A1453F98)
        {
          v197 = qword_2A1453F90;
          g_CB_GDbg = qword_2A1453F90;
        }

        v198 = aG[++v196];
      }

      while (v196 != 4);
      sprintf_1X(&g_CB_GDbg, v169);
      v199 = 0;
      v200 = g_CB_GDbg;
      v201 = 32;
      do
      {
        g_CB_GDbg = (v200 + 1);
        *v200 = v201;
        v200 = g_CB_GDbg;
        if (g_CB_GDbg >= qword_2A1453F98)
        {
          v200 = qword_2A1453F90;
          g_CB_GDbg = qword_2A1453F90;
        }

        v201 = aR[++v199];
      }

      while (v199 != 4);
      sprintf_1X(&g_CB_GDbg, v173);
      v202 = 0;
      v203 = g_CB_GDbg;
      v204 = 32;
      do
      {
        g_CB_GDbg = (v203 + 1);
        *v203 = v204;
        v203 = g_CB_GDbg;
        if (g_CB_GDbg >= qword_2A1453F98)
        {
          v203 = qword_2A1453F90;
          g_CB_GDbg = qword_2A1453F90;
        }

        v204 = aQ[++v202];
      }

      while (v202 != 4);
      sprintf_1X(&g_CB_GDbg, v177);
      v205 = 0;
      v206 = g_CB_GDbg;
      v207 = 32;
      do
      {
        g_CB_GDbg = (v206 + 1);
        *v206 = v207;
        v206 = g_CB_GDbg;
        if (g_CB_GDbg >= qword_2A1453F98)
        {
          v206 = qword_2A1453F90;
          g_CB_GDbg = qword_2A1453F90;
        }

        v207 = aS[++v205];
      }

      while (v205 != 4);
      sprintf_1X(&g_CB_GDbg, v181);
      v208 = 0;
      v209 = g_CB_GDbg;
      v210 = 32;
      do
      {
        g_CB_GDbg = (v209 + 1);
        *v209 = v210;
        v209 = g_CB_GDbg;
        if (g_CB_GDbg >= qword_2A1453F98)
        {
          v209 = qword_2A1453F90;
          g_CB_GDbg = qword_2A1453F90;
        }

        v210 = aB[++v208];
      }

      while (v208 != 4);
      sprintf_1X(&g_CB_GDbg, v185);
      v211 = 0;
      v212 = g_CB_GDbg;
      v213 = 32;
      do
      {
        g_CB_GDbg = (v212 + 1);
        *v212 = v213;
        v212 = g_CB_GDbg;
        if (g_CB_GDbg >= qword_2A1453F98)
        {
          v212 = qword_2A1453F90;
          g_CB_GDbg = qword_2A1453F90;
        }

        v213 = aE[++v211];
      }

      while (v211 != 4);
      sprintf_1X(&g_CB_GDbg, v189);
      v214 = 0;
      v215 = g_CB_GDbg;
      v216 = 32;
      do
      {
        g_CB_GDbg = (v215 + 1);
        *v215 = v216;
        v215 = g_CB_GDbg;
        if (g_CB_GDbg >= qword_2A1453F98)
        {
          v215 = qword_2A1453F90;
          g_CB_GDbg = qword_2A1453F90;
        }

        v216 = aN[++v214];
      }

      while (v214 != 4);
      sprintf_1X(&g_CB_GDbg, v193);
      v217 = g_CB_GDbg++;
      *v217 = 10;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        g_CB_GDbg = qword_2A1453F90;
      }

      GNB_Debug_Flush_Check();
      v163 = g_Logging_Cfg;
    }

    *v246 = 0;
    *&v236 = 0;
    if (Core_Load_Clk_L5L1(v246, &v236) && v163)
    {
      v218 = 0;
      v219 = *&v236;
      v220 = *v246;
      v221 = 36;
      v222 = g_CB_GDbg;
      do
      {
        g_CB_GDbg = (v222 + 1);
        *v222 = v221;
        v222 = g_CB_GDbg;
        if (g_CB_GDbg >= qword_2A1453F98)
        {
          v222 = qword_2A1453F90;
          g_CB_GDbg = qword_2A1453F90;
        }

        v221 = aN55[++v218];
      }

      while (v218 != 4);
      g_CB_GDbg = (v222 + 1);
      *v222 = 32;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        g_CB_GDbg = qword_2A1453F90;
      }

      sprintf_2d(&g_CB_GDbg, v220);
      v223 = g_CB_GDbg++;
      *v223 = 32;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        g_CB_GDbg = qword_2A1453F90;
      }

      v224 = v219 * 299792458.0 * 1000.0;
      v225 = -0.5;
      if (v224 > 0.0)
      {
        v225 = 0.5;
      }

      v226 = v224 + v225;
      if (v226 <= 2147483650.0)
      {
        if (v226 >= -2147483650.0)
        {
          v227 = v226;
        }

        else
        {
          v227 = 0x80000000;
        }
      }

      else
      {
        v227 = 0x7FFFFFFF;
      }

      sprintf_6f(&g_CB_GDbg, v227, 4);
      v229 = g_CB_GDbg++;
      *v229 = 10;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        g_CB_GDbg = qword_2A1453F90;
      }

      GNB_Debug_Flush_Check();
    }

    Debug_Log_NV_End();
    if (*&dword_2A1453F88 != g_CB_GDbg)
    {
      GNSS_GNB_Debug_Ctl(&g_CB_GDbg);
    }

    goto LABEL_325;
  }

  Debug_Log_NV_End();
  if (*&dword_2A1453F88 == g_CB_GDbg)
  {
LABEL_325:
    v230 = *MEMORY[0x29EDCA608];
    return;
  }

  v228 = *MEMORY[0x29EDCA608];

  GNSS_GNB_Debug_Ctl(&g_CB_GDbg);
}

void Debug_Log_NV_End(void)
{
  v5 = *MEMORY[0x29EDCA608];
  if (g_Logging_Cfg)
  {
    v0 = g_CB_GDbg;
    v1 = 36;
    v2 = 1u;
    do
    {
      g_CB_GDbg = (v0 + 1);
      *v0 = v1;
      v0 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v0 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v1 = aN_0[v2++];
    }

    while (v2 != 6);
    g_CB_GDbg = (v0 + 1);
    *v0 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    v3 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v4 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_GPS_Eph(uint64_t a1, signed int a2, uint64_t a3)
{
  v22 = *MEMORY[0x29EDCA608];
  if (g_Logging_Cfg)
  {
    if (a2 <= 192)
    {
      v5 = 71;
    }

    else
    {
      v5 = 81;
    }

    sprintf_NA_E_header(a1, v5);
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_3d(&g_CB_GDbg, a2);
    v7 = *a3;
    v8 = g_CB_GDbg++;
    *v8 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v7);
    v9 = g_CB_GDbg++;
    *v9 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    for (i = 0; i != 63; ++i)
    {
      sprintf_02x(&g_CB_GDbg, *(a3 + 8 + i));
    }

    sprintf_sp1d(&g_CB_GDbg, *(a3 + 4));
    v11 = *(a3 + 71);
    v12 = g_CB_GDbg++;
    *v12 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v11);
    sprintf_sp1d(&g_CB_GDbg, *(a3 + 72));
    v13 = *(a3 + 74);
    v14 = g_CB_GDbg++;
    *v14 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_4d(&g_CB_GDbg, v13);
    v15 = *(a3 + 76);
    v16 = g_CB_GDbg++;
    *v16 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_4d(&g_CB_GDbg, v15);
    v17 = *(a3 + 78);
    v18 = g_CB_GDbg++;
    *v18 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_3d(&g_CB_GDbg, v17);
    v19 = g_CB_GDbg++;
    *v19 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    v20 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v21 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_GPS_Alm(uint64_t a1, signed int a2, uint64_t a3)
{
  v16 = *MEMORY[0x29EDCA608];
  if (g_Logging_Cfg)
  {
    if (a2 <= 192)
    {
      v5 = 71;
    }

    else
    {
      v5 = 81;
    }

    sprintf_NA_A_header(a1, v5);
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_3d(&g_CB_GDbg, a2);
    v7 = *a3;
    v8 = g_CB_GDbg++;
    *v8 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v7);
    v9 = *(a3 + 8);
    v10 = g_CB_GDbg++;
    *v10 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v9);
    v11 = g_CB_GDbg++;
    *v11 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    for (i = 0; i != 24; ++i)
    {
      sprintf_02x(&g_CB_GDbg, *(a3 + 10 + i));
    }

    sprintf_sp1d(&g_CB_GDbg, *(a3 + 4));
    v13 = g_CB_GDbg++;
    *v13 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    v14 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v15 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_GNSS_Health(int a1, unsigned __int8 *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  if (g_Logging_Cfg)
  {
    sprintf_NA_x_header(0, "H");
    v4 = a1 - 1;
    v5 = qword_299050530[v4];
    v6 = g_CB_GDbg++;
    *v6 = 0x4E4542515247uLL >> (8 * v4);
    v7 = g_CB_GDbg;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      v7 = qword_2A1453F90;
    }

    g_CB_GDbg = (v7 + 1);
    *v7 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    do
    {
      v8 = *a2++;
      sprintf1da(&g_CB_GDbg, v8, v12, 0, 0);
      --v5;
    }

    while (v5);
    v9 = g_CB_GDbg++;
    *v9 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    v10 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v11 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_GPS_UTC(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x29EDCA608];
  if (g_Logging_Cfg)
  {
    sprintf_NA_x_header(a1, "UG");
    v3 = *a2;
    v4 = g_CB_GDbg++;
    *v4 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v3);
    v5 = *(a2 + 8);
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v7 = *(a2 + 12);
    v8 = g_CB_GDbg++;
    *v8 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v7);
    v9 = *(a2 + 16);
    v10 = g_CB_GDbg++;
    *v10 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v9);
    v11 = *(a2 + 17);
    v12 = g_CB_GDbg++;
    *v12 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v11);
    v13 = *(a2 + 18);
    v14 = g_CB_GDbg++;
    *v14 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v13);
    v15 = *(a2 + 19);
    v16 = g_CB_GDbg++;
    *v16 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v15);
    v17 = *(a2 + 20);
    v18 = g_CB_GDbg++;
    *v18 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v17);
    v19 = *(a2 + 21);
    v20 = g_CB_GDbg++;
    *v20 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v19);
    sprintf_sp1d(&g_CB_GDbg, *(a2 + 4));
    v21 = g_CB_GDbg++;
    *v21 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    v22 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v23 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_GPS_Klob(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x29EDCA608];
  if (g_Logging_Cfg)
  {
    sprintf_NA_x_header(a1, "KG");
    v3 = *a2;
    v4 = g_CB_GDbg++;
    *v4 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v3);
    v5 = *(a2 + 8);
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v7 = *(a2 + 9);
    v8 = g_CB_GDbg++;
    *v8 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v7);
    v9 = *(a2 + 10);
    v10 = g_CB_GDbg++;
    *v10 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v9);
    v11 = *(a2 + 11);
    v12 = g_CB_GDbg++;
    *v12 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v11);
    v13 = *(a2 + 12);
    v14 = g_CB_GDbg++;
    *v14 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v13);
    v15 = *(a2 + 13);
    v16 = g_CB_GDbg++;
    *v16 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v15);
    v17 = *(a2 + 14);
    v18 = g_CB_GDbg++;
    *v18 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v17);
    v19 = *(a2 + 15);
    v20 = g_CB_GDbg++;
    *v20 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v19);
    sprintf_sp1d(&g_CB_GDbg, *(a2 + 4));
    v21 = g_CB_GDbg++;
    *v21 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    v22 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v23 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_GLO_Eph(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v17 = *MEMORY[0x29EDCA608];
  if (g_Logging_Cfg)
  {
    sprintf_NA_E_header(a1, 82);
    v5 = g_CB_GDbg++;
    *v5 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, a2);
    v6 = *a3;
    v7 = g_CB_GDbg++;
    *v7 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v6);
    v8 = *(a3 + 8);
    v9 = g_CB_GDbg++;
    *v9 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v8);
    v10 = *(a3 + 60);
    v11 = g_CB_GDbg++;
    *v11 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v10);
    for (i = 12; i != 60; i += 4)
    {
      v13 = g_CB_GDbg++;
      *v13 = 32;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        g_CB_GDbg = qword_2A1453F90;
      }

      sprintf_08x(&g_CB_GDbg, *(a3 + i));
    }

    sprintf_sp1d(&g_CB_GDbg, *(a3 + 4));
    v14 = g_CB_GDbg++;
    *v14 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    v15 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v16 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_GLO_Alm(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = *MEMORY[0x29EDCA608];
  if (g_Logging_Cfg)
  {
    sprintf_NA_A_header(a1, 82);
    v5 = g_CB_GDbg++;
    *v5 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, a2);
    v6 = *a3;
    v7 = g_CB_GDbg++;
    *v7 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v6);
    v8 = *(a3 + 8);
    v9 = g_CB_GDbg++;
    *v9 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v8);
    for (i = 0; i != 24; i += 4)
    {
      v11 = g_CB_GDbg++;
      *v11 = 32;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        g_CB_GDbg = qword_2A1453F90;
      }

      sprintf_08x(&g_CB_GDbg, *(a3 + 12 + i));
    }

    sprintf_sp1d(&g_CB_GDbg, *(a3 + 4));
    v12 = g_CB_GDbg++;
    *v12 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    v13 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v14 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_GAL_Eph(uint64_t a1, uint64_t a2)
{
  v58 = *MEMORY[0x29EDCA608];
  if (g_Logging_Cfg)
  {
    sprintf_NA_E_header(a1, 69);
    v3 = *a2;
    v4 = g_CB_GDbg++;
    *v4 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_10d(&g_CB_GDbg, v3);
    v5 = *(a2 + 8);
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v7 = *(a2 + 12);
    v8 = g_CB_GDbg++;
    *v8 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_4d(&g_CB_GDbg, v7);
    v9 = *(a2 + 14);
    v10 = g_CB_GDbg++;
    *v10 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v9);
    v11 = *(a2 + 15);
    v12 = g_CB_GDbg++;
    *v12 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_3d(&g_CB_GDbg, v11);
    v13 = *(a2 + 16);
    v14 = g_CB_GDbg++;
    *v14 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_4d(&g_CB_GDbg, v13);
    v15 = *(a2 + 18);
    v16 = g_CB_GDbg++;
    *v16 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_5d(&g_CB_GDbg, v15);
    sprintf_sp11d(&g_CB_GDbg, *(a2 + 20));
    v17 = *(a2 + 24);
    v18 = g_CB_GDbg++;
    *v18 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_10u(&g_CB_GDbg, v17);
    v19 = *(a2 + 28);
    v20 = g_CB_GDbg++;
    *v20 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_10u(&g_CB_GDbg, v19);
    sprintf_sp11d(&g_CB_GDbg, *(a2 + 32));
    sprintf_sp11d(&g_CB_GDbg, *(a2 + 36));
    sprintf_sp11d(&g_CB_GDbg, *(a2 + 40));
    v21 = *(a2 + 44);
    v22 = g_CB_GDbg++;
    *v22 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_8d(&g_CB_GDbg, v21);
    v23 = *(a2 + 48);
    v24 = g_CB_GDbg++;
    *v24 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_5d(&g_CB_GDbg, v23);
    v25 = *(a2 + 50);
    v26 = g_CB_GDbg++;
    *v26 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v25);
    v27 = *(a2 + 52);
    v28 = g_CB_GDbg++;
    *v28 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v27);
    v29 = *(a2 + 54);
    v30 = g_CB_GDbg++;
    *v30 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v29);
    v31 = *(a2 + 56);
    v32 = g_CB_GDbg++;
    *v32 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v31);
    v33 = *(a2 + 58);
    v34 = g_CB_GDbg++;
    *v34 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v33);
    v35 = *(a2 + 60);
    v36 = g_CB_GDbg++;
    *v36 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_5d(&g_CB_GDbg, v35);
    v37 = *(a2 + 62);
    v38 = g_CB_GDbg++;
    *v38 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_5d(&g_CB_GDbg, v37);
    sprintf_sp11d(&g_CB_GDbg, *(a2 + 64));
    v39 = *(a2 + 68);
    v40 = g_CB_GDbg++;
    *v40 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_8d(&g_CB_GDbg, v39);
    v41 = *(a2 + 72);
    v42 = g_CB_GDbg++;
    *v42 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_3d(&g_CB_GDbg, v41);
    v43 = *(a2 + 74);
    v44 = g_CB_GDbg++;
    *v44 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_5d(&g_CB_GDbg, v43);
    v45 = *(a2 + 76);
    v46 = g_CB_GDbg++;
    *v46 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_4d(&g_CB_GDbg, v45);
    v47 = *(a2 + 78);
    v48 = g_CB_GDbg++;
    *v48 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_4d(&g_CB_GDbg, v47);
    sprintf_sp1d(&g_CB_GDbg, *(a2 + 80));
    v49 = *(a2 + 81);
    v50 = g_CB_GDbg++;
    *v50 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v49);
    sprintf_sp1d(&g_CB_GDbg, *(a2 + 82));
    sprintf_sp1d(&g_CB_GDbg, *(a2 + 83));
    v51 = *(a2 + 84);
    v52 = g_CB_GDbg++;
    *v52 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v51);
    sprintf_sp1d(&g_CB_GDbg, *(a2 + 85));
    sprintf_sp1d(&g_CB_GDbg, *(a2 + 86));
    v53 = *(a2 + 4);
    v54 = g_CB_GDbg++;
    *v54 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v53);
    sprintf_sp1d(&g_CB_GDbg, *(a2 + 87));
    v55 = g_CB_GDbg++;
    *v55 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    v56 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v57 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_GAL_Alm(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x29EDCA608];
  if (g_Logging_Cfg)
  {
    sprintf_NA_A_header(a1, 69);
    v3 = *a2;
    v4 = g_CB_GDbg++;
    *v4 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_10d(&g_CB_GDbg, v3);
    v5 = *(a2 + 8);
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v7 = *(a2 + 9);
    v8 = g_CB_GDbg++;
    *v8 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v7);
    v9 = *(a2 + 10);
    v10 = g_CB_GDbg++;
    *v10 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v9);
    v11 = *(a2 + 12);
    v12 = g_CB_GDbg++;
    *v12 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_4d(&g_CB_GDbg, v11);
    v13 = *(a2 + 14);
    v14 = g_CB_GDbg++;
    *v14 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_5d(&g_CB_GDbg, v13);
    v15 = *(a2 + 16);
    v16 = g_CB_GDbg++;
    *v16 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_4d(&g_CB_GDbg, v15);
    v17 = *(a2 + 18);
    v18 = g_CB_GDbg++;
    *v18 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_5d(&g_CB_GDbg, v17);
    v19 = *(a2 + 20);
    v20 = g_CB_GDbg++;
    *v20 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v19);
    v21 = *(a2 + 22);
    v22 = g_CB_GDbg++;
    *v22 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_5d(&g_CB_GDbg, v21);
    v23 = *(a2 + 24);
    v24 = g_CB_GDbg++;
    *v24 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v23);
    v25 = *(a2 + 26);
    v26 = g_CB_GDbg++;
    *v26 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v25);
    v27 = *(a2 + 28);
    v28 = g_CB_GDbg++;
    *v28 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_5d(&g_CB_GDbg, v27);
    v29 = *(a2 + 30);
    v30 = g_CB_GDbg++;
    *v30 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v29);
    sprintf_sp1d(&g_CB_GDbg, *(a2 + 32));
    sprintf_sp1d(&g_CB_GDbg, *(a2 + 33));
    sprintf_sp1d(&g_CB_GDbg, *(a2 + 34));
    sprintf_sp1d(&g_CB_GDbg, *(a2 + 4));
    v31 = g_CB_GDbg++;
    *v31 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    v32 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v33 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_BDS_Eph(uint64_t a1, uint64_t a2)
{
  v76 = *MEMORY[0x29EDCA608];
  if (g_Logging_Cfg)
  {
    sprintf_NA_E_header(a1, 66);
    v3 = 0;
    v4 = g_CB_GDbg;
    v5 = 32;
    do
    {
      g_CB_GDbg = (v4 + 1);
      *v4 = v5;
      v4 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v4 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v5 = aC_1[++v3];
    }

    while (v3 != 2);
    v6 = *a2;
    g_CB_GDbg = (v4 + 1);
    *v4 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_10d(&g_CB_GDbg, v6);
    v7 = *(a2 + 8);
    v8 = g_CB_GDbg++;
    *v8 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v7);
    sprintf_sp1u(&g_CB_GDbg, *(a2 + 9));
    sprintf_sp1u(&g_CB_GDbg, *(a2 + 10));
    sprintf_sp1u(&g_CB_GDbg, *(a2 + 11));
    v9 = *(a2 + 12);
    v10 = g_CB_GDbg++;
    *v10 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v9);
    v11 = *(a2 + 16);
    v12 = g_CB_GDbg++;
    *v12 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_4d(&g_CB_GDbg, v11);
    v13 = *(a2 + 20);
    v14 = g_CB_GDbg++;
    *v14 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_4d(&g_CB_GDbg, v13);
    v15 = *(a2 + 24);
    v16 = g_CB_GDbg++;
    *v16 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_4d(&g_CB_GDbg, v15);
    v17 = *(a2 + 28);
    v18 = g_CB_GDbg++;
    *v18 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_4d(&g_CB_GDbg, v17);
    v19 = *(a2 + 32);
    v20 = g_CB_GDbg++;
    *v20 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_9d(&g_CB_GDbg, v19);
    v21 = *(a2 + 36);
    v22 = g_CB_GDbg++;
    *v22 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_8d(&g_CB_GDbg, v21);
    v23 = *(a2 + 40);
    v24 = g_CB_GDbg++;
    *v24 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v23);
    v25 = *(a2 + 44);
    v26 = g_CB_GDbg++;
    *v26 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_8d(&g_CB_GDbg, v25);
    v27 = *(a2 + 48);
    v28 = g_CB_GDbg++;
    *v28 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_11D(&g_CB_GDbg, v27);
    sprintf_sp10U(&g_CB_GDbg, *(a2 + 56));
    v29 = *(a2 + 64);
    v30 = g_CB_GDbg++;
    *v30 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_11D(&g_CB_GDbg, v29);
    v31 = *(a2 + 72);
    v32 = g_CB_GDbg++;
    *v32 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_11D(&g_CB_GDbg, v31);
    v33 = *(a2 + 80);
    v34 = g_CB_GDbg++;
    *v34 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_11D(&g_CB_GDbg, v33);
    v35 = *(a2 + 88);
    v36 = g_CB_GDbg++;
    *v36 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_7d(&g_CB_GDbg, v35);
    v37 = *(a2 + 92);
    v38 = g_CB_GDbg++;
    *v38 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v37);
    v39 = *(a2 + 94);
    v40 = g_CB_GDbg++;
    *v40 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v39);
    v41 = *(a2 + 96);
    v42 = g_CB_GDbg++;
    *v42 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v41);
    v43 = *(a2 + 100);
    v44 = g_CB_GDbg++;
    *v44 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_8d(&g_CB_GDbg, v43);
    v45 = *(a2 + 104);
    v46 = g_CB_GDbg++;
    *v46 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_8d(&g_CB_GDbg, v45);
    v47 = *(a2 + 108);
    v48 = g_CB_GDbg++;
    *v48 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_8d(&g_CB_GDbg, v47);
    v49 = *(a2 + 112);
    v50 = g_CB_GDbg++;
    *v50 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_8d(&g_CB_GDbg, v49);
    v51 = *(a2 + 116);
    v52 = g_CB_GDbg++;
    *v52 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_9d(&g_CB_GDbg, v51);
    v53 = *(a2 + 120);
    v54 = g_CB_GDbg++;
    *v54 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_8d(&g_CB_GDbg, v53);
    v55 = *(a2 + 124);
    v56 = g_CB_GDbg++;
    *v56 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_5d(&g_CB_GDbg, v55);
    v57 = *(a2 + 126);
    v58 = g_CB_GDbg++;
    *v58 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_3d(&g_CB_GDbg, v57);
    v59 = *(a2 + 128);
    v60 = g_CB_GDbg++;
    *v60 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v59);
    sprintf_sp1u(&g_CB_GDbg, *(a2 + 129));
    sprintf_sp1u(&g_CB_GDbg, *(a2 + 130));
    v61 = *(a2 + 131);
    v62 = g_CB_GDbg++;
    *v62 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v61);
    v63 = *(a2 + 132);
    v64 = g_CB_GDbg++;
    *v64 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_5d(&g_CB_GDbg, v63);
    v65 = *(a2 + 134);
    v66 = g_CB_GDbg++;
    *v66 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_5d(&g_CB_GDbg, v65);
    v67 = *(a2 + 136);
    v68 = g_CB_GDbg++;
    *v68 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_5d(&g_CB_GDbg, v67);
    v69 = *(a2 + 138);
    v70 = g_CB_GDbg++;
    *v70 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_5d(&g_CB_GDbg, v69);
    sprintf_sp1u(&g_CB_GDbg, *(a2 + 140));
    sprintf_sp1u(&g_CB_GDbg, *(a2 + 141));
    sprintf_sp1u(&g_CB_GDbg, *(a2 + 142));
    sprintf_sp1u(&g_CB_GDbg, *(a2 + 143));
    sprintf_sp1u(&g_CB_GDbg, *(a2 + 144));
    sprintf_sp1u(&g_CB_GDbg, *(a2 + 145));
    sprintf_sp1d(&g_CB_GDbg, *(a2 + 146));
    v71 = *(a2 + 147);
    v72 = g_CB_GDbg++;
    *v72 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_4d(&g_CB_GDbg, v71);
    sprintf_sp1u(&g_CB_GDbg, *(a2 + 4));
    v73 = g_CB_GDbg++;
    *v73 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    v74 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v75 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_BDS_Alm(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x29EDCA608];
  if (g_Logging_Cfg)
  {
    sprintf_NA_A_header(a1, 66);
    v3 = *a2;
    v4 = g_CB_GDbg++;
    *v4 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_10d(&g_CB_GDbg, v3);
    v5 = *(a2 + 8);
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_3d(&g_CB_GDbg, v5);
    v7 = *(a2 + 10);
    v8 = g_CB_GDbg++;
    *v8 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v7);
    v9 = *(a2 + 11);
    v10 = g_CB_GDbg++;
    *v10 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_3d(&g_CB_GDbg, v9);
    v11 = *(a2 + 12);
    v12 = g_CB_GDbg++;
    *v12 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_8d(&g_CB_GDbg, v11);
    v13 = *(a2 + 16);
    v14 = g_CB_GDbg++;
    *v14 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v13);
    v15 = *(a2 + 20);
    v16 = g_CB_GDbg++;
    *v16 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_8d(&g_CB_GDbg, v15);
    v17 = *(a2 + 24);
    v18 = g_CB_GDbg++;
    *v18 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_8d(&g_CB_GDbg, v17);
    v19 = *(a2 + 28);
    v20 = g_CB_GDbg++;
    *v20 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_8d(&g_CB_GDbg, v19);
    v21 = *(a2 + 32);
    v22 = g_CB_GDbg++;
    *v22 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_7d(&g_CB_GDbg, v21);
    v23 = *(a2 + 36);
    v24 = g_CB_GDbg++;
    *v24 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_7d(&g_CB_GDbg, v23);
    v25 = *(a2 + 38);
    v26 = g_CB_GDbg++;
    *v26 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_5d(&g_CB_GDbg, v25);
    v27 = *(a2 + 40);
    v28 = g_CB_GDbg++;
    *v28 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_5d(&g_CB_GDbg, v27);
    v29 = *(a2 + 42);
    v30 = g_CB_GDbg++;
    *v30 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_5d(&g_CB_GDbg, v29);
    sprintf_sp1d(&g_CB_GDbg, 0);
    sprintf_sp1d(&g_CB_GDbg, *(a2 + 4));
    v31 = g_CB_GDbg++;
    *v31 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    v32 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v33 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_BDS_BGTO(uint64_t a1, int a2)
{
  v24 = *MEMORY[0x29EDCA608];
  if (g_Logging_Cfg)
  {
    sprintf_NA_x_header(0, "OB");
    v4 = *a1;
    v5 = g_CB_GDbg++;
    *v5 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v4);
    if (a2 == 1)
    {
      v6 = 71;
    }

    else
    {
      v6 = 82;
    }

    v7 = g_CB_GDbg++;
    *v7 = 32;
    v8 = g_CB_GDbg;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      v8 = qword_2A1453F90;
    }

    g_CB_GDbg = (v8 + 1);
    *v8 = v6;
    v9 = g_CB_GDbg;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      v9 = qword_2A1453F90;
    }

    v10 = *(a1 + 8);
    g_CB_GDbg = (v9 + 1);
    *v9 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v10);
    v11 = *(a1 + 12);
    v12 = g_CB_GDbg++;
    *v12 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v11);
    v13 = *(a1 + 16);
    v14 = g_CB_GDbg++;
    *v14 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v13);
    v15 = *(a1 + 20);
    v16 = g_CB_GDbg++;
    *v16 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v15);
    v17 = *(a1 + 22);
    v18 = g_CB_GDbg++;
    *v18 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v17);
    v19 = *(a1 + 24);
    v20 = g_CB_GDbg++;
    *v20 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v19);
    sprintf_sp1d(&g_CB_GDbg, *(a1 + 4));
    v21 = g_CB_GDbg++;
    *v21 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    v22 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v23 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_NVC_Eph(uint64_t a1, uint64_t a2)
{
  v50 = *MEMORY[0x29EDCA608];
  if (g_Logging_Cfg)
  {
    sprintf_NA_E_header(a1, 78);
    v3 = *a2;
    v4 = g_CB_GDbg++;
    *v4 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_10d(&g_CB_GDbg, v3);
    v5 = *(a2 + 8);
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    sprintf_sp1u(&g_CB_GDbg, *(a2 + 9));
    sprintf_sp1u(&g_CB_GDbg, *(a2 + 10));
    sprintf_sp1u(&g_CB_GDbg, *(a2 + 11));
    v7 = *(a2 + 12);
    v8 = g_CB_GDbg++;
    *v8 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_3d(&g_CB_GDbg, v7);
    v9 = *(a2 + 13);
    v10 = g_CB_GDbg++;
    *v10 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_3d(&g_CB_GDbg, v9);
    v11 = *(a2 + 14);
    v12 = g_CB_GDbg++;
    *v12 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_4d(&g_CB_GDbg, v11);
    v13 = *(a2 + 16);
    v14 = g_CB_GDbg++;
    *v14 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_5d(&g_CB_GDbg, v13);
    v15 = *(a2 + 18);
    v16 = g_CB_GDbg++;
    *v16 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_5d(&g_CB_GDbg, v15);
    v17 = *(a2 + 20);
    v18 = g_CB_GDbg++;
    *v18 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_9d(&g_CB_GDbg, v17);
    v19 = *(a2 + 24);
    v20 = g_CB_GDbg++;
    *v20 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v19);
    v21 = *(a2 + 26);
    v22 = g_CB_GDbg++;
    *v22 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_4d(&g_CB_GDbg, v21);
    sprintf_sp1d(&g_CB_GDbg, *(a2 + 27));
    v23 = *(a2 + 28);
    v24 = g_CB_GDbg++;
    *v24 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v23);
    v25 = *(a2 + 30);
    v26 = g_CB_GDbg++;
    *v26 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_5d(&g_CB_GDbg, v25);
    v27 = *(a2 + 32);
    v28 = g_CB_GDbg++;
    *v28 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_10u(&g_CB_GDbg, v27);
    v29 = *(a2 + 36);
    v30 = g_CB_GDbg++;
    *v30 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_10u(&g_CB_GDbg, v29);
    sprintf_sp11d(&g_CB_GDbg, *(a2 + 40));
    sprintf_sp11d(&g_CB_GDbg, *(a2 + 44));
    sprintf_sp11d(&g_CB_GDbg, *(a2 + 48));
    sprintf_sp11d(&g_CB_GDbg, *(a2 + 52));
    v31 = *(a2 + 56);
    v32 = g_CB_GDbg++;
    *v32 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_8d(&g_CB_GDbg, v31);
    v33 = *(a2 + 60);
    v34 = g_CB_GDbg++;
    *v34 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_8d(&g_CB_GDbg, v33);
    v35 = *(a2 + 64);
    v36 = g_CB_GDbg++;
    *v36 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v35);
    v37 = *(a2 + 66);
    v38 = g_CB_GDbg++;
    *v38 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v37);
    v39 = *(a2 + 68);
    v40 = g_CB_GDbg++;
    *v40 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v39);
    v41 = *(a2 + 70);
    v42 = g_CB_GDbg++;
    *v42 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v41);
    v43 = *(a2 + 72);
    v44 = g_CB_GDbg++;
    *v44 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v43);
    v45 = *(a2 + 74);
    v46 = g_CB_GDbg++;
    *v46 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v45);
    sprintf_sp1u(&g_CB_GDbg, *(a2 + 4));
    v47 = g_CB_GDbg++;
    *v47 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    v48 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v49 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_NVC_Alm(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x29EDCA608];
  if (g_Logging_Cfg)
  {
    sprintf_NA_A_header(a1, 78);
    v3 = *a2;
    v4 = g_CB_GDbg++;
    *v4 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_10d(&g_CB_GDbg, v3);
    v5 = *(a2 + 8);
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    sprintf_sp1d(&g_CB_GDbg, *(a2 + 9));
    sprintf_sp1d(&g_CB_GDbg, *(a2 + 10));
    v7 = *(a2 + 12);
    v8 = g_CB_GDbg++;
    *v8 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_4d(&g_CB_GDbg, v7);
    v9 = *(a2 + 14);
    v10 = g_CB_GDbg++;
    *v10 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_5d(&g_CB_GDbg, v9);
    v11 = *(a2 + 16);
    v12 = g_CB_GDbg++;
    *v12 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_5d(&g_CB_GDbg, v11);
    v13 = *(a2 + 20);
    v14 = g_CB_GDbg++;
    *v14 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_8d(&g_CB_GDbg, v13);
    v15 = *(a2 + 24);
    v16 = g_CB_GDbg++;
    *v16 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v15);
    v17 = *(a2 + 28);
    v18 = g_CB_GDbg++;
    *v18 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_8d(&g_CB_GDbg, v17);
    v19 = *(a2 + 32);
    v20 = g_CB_GDbg++;
    *v20 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_8d(&g_CB_GDbg, v19);
    v21 = *(a2 + 36);
    v22 = g_CB_GDbg++;
    *v22 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_8d(&g_CB_GDbg, v21);
    v23 = *(a2 + 40);
    v24 = g_CB_GDbg++;
    *v24 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_8d(&g_CB_GDbg, v23);
    v25 = *(a2 + 44);
    v26 = g_CB_GDbg++;
    *v26 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_5d(&g_CB_GDbg, v25);
    v27 = *(a2 + 46);
    v28 = g_CB_GDbg++;
    *v28 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_5d(&g_CB_GDbg, v27);
    v29 = *(a2 + 48);
    v30 = g_CB_GDbg++;
    *v30 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_4d(&g_CB_GDbg, v29);
    sprintf_sp1d(&g_CB_GDbg, *(a2 + 4));
    v31 = g_CB_GDbg++;
    *v31 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    v32 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v33 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_NV_Not_Brd_SV(int a1, uint64_t a2)
{
  v62 = *MEMORY[0x29EDCA608];
  if (g_Logging_Cfg)
  {
    v3 = g_CB_GDbg;
    v4 = 36;
    v5 = 1u;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v4;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v3 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v4 = aNb[v5++];
    }

    while (v5 != 6);
    v6 = 0;
    v7 = 0;
    v8 = 1;
    do
    {
      if (*(a2 + v6))
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      v7 |= v9;
      v8 *= 2;
      ++v6;
    }

    while (v6 != 32);
    v10 = 0;
    v11 = 0;
    v12 = 1;
    do
    {
      if (*(a2 + 32 + v10))
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      v11 |= v13;
      v12 *= 2;
      ++v10;
    }

    while (v10 != 24);
    v14 = 0;
    v15 = 0;
    v16 = 1;
    do
    {
      if (*(a2 + 155 + v14))
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      v15 |= v17;
      v16 *= 2;
      ++v14;
    }

    while (v14 != 10);
    v18 = 0;
    v19 = 0;
    v20 = 1;
    do
    {
      if (*(a2 + 179 + v18))
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      v19 |= v21;
      v20 *= 2;
      ++v18;
    }

    while (v18 != 39);
    v22 = 0;
    v23 = 0;
    v24 = 1;
    do
    {
      if (*(a2 + 92 + v22))
      {
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }

      v23 |= v25;
      v24 *= 2;
      ++v22;
    }

    while (v22 != 63);
    v26 = 0;
    v27 = 0;
    v28 = 1;
    do
    {
      if (*(a2 + 56 + v26))
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v27 |= v29;
      v28 *= 2;
      ++v26;
    }

    while (v26 != 36);
    v30 = 0;
    v31 = 0;
    v32 = a2 + 165;
    v33 = 1;
    do
    {
      if (*(v32 + v30))
      {
        v34 = v33;
      }

      else
      {
        v34 = 0;
      }

      v31 |= v34;
      v33 *= 2;
      ++v30;
    }

    while (v30 != 14);
    v35 = "L5";
    if (!a1)
    {
      v35 = "L1";
    }

    v36 = *v35;
    if (*v35)
    {
      v37 = (v35 + 1);
      do
      {
        g_CB_GDbg = (v3 + 1);
        *v3 = v36;
        v3 = g_CB_GDbg;
        if (g_CB_GDbg >= qword_2A1453F98)
        {
          v3 = qword_2A1453F90;
          g_CB_GDbg = qword_2A1453F90;
        }

        v38 = *v37++;
        v36 = v38;
      }

      while (v38);
    }

    v39 = 0;
    v40 = 32;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v40;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v3 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v40 = aG[++v39];
    }

    while (v39 != 4);
    sprintf_1X(&g_CB_GDbg, v7);
    v41 = 0;
    v42 = g_CB_GDbg;
    v43 = 32;
    do
    {
      g_CB_GDbg = (v42 + 1);
      *v42 = v43;
      v42 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v42 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v43 = aR[++v41];
    }

    while (v41 != 4);
    sprintf_1X(&g_CB_GDbg, v11);
    v44 = 0;
    v45 = g_CB_GDbg;
    v46 = 32;
    do
    {
      g_CB_GDbg = (v45 + 1);
      *v45 = v46;
      v45 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v45 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v46 = aQ[++v44];
    }

    while (v44 != 4);
    sprintf_1X(&g_CB_GDbg, v15);
    v47 = 0;
    v48 = g_CB_GDbg;
    v49 = 32;
    do
    {
      g_CB_GDbg = (v48 + 1);
      *v48 = v49;
      v48 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v48 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v49 = aS[++v47];
    }

    while (v47 != 4);
    sprintf_1X(&g_CB_GDbg, v19);
    v50 = 0;
    v51 = g_CB_GDbg;
    v52 = 32;
    do
    {
      g_CB_GDbg = (v51 + 1);
      *v51 = v52;
      v51 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v51 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v52 = aB[++v50];
    }

    while (v50 != 4);
    sprintf_1X(&g_CB_GDbg, v23);
    v53 = 0;
    v54 = g_CB_GDbg;
    v55 = 32;
    do
    {
      g_CB_GDbg = (v54 + 1);
      *v54 = v55;
      v54 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v54 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v55 = aE[++v53];
    }

    while (v53 != 4);
    sprintf_1X(&g_CB_GDbg, v27);
    v56 = 0;
    v57 = g_CB_GDbg;
    v58 = 32;
    do
    {
      g_CB_GDbg = (v57 + 1);
      *v57 = v58;
      v57 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v57 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v58 = aN[++v56];
    }

    while (v56 != 4);
    sprintf_1X(&g_CB_GDbg, v31);
    v59 = g_CB_GDbg++;
    *v59 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    v60 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v61 = *MEMORY[0x29EDCA608];
  }
}

uint64_t sprintf_NA_x_header(uint64_t result, _BYTE *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = g_CB_GDbg++;
  *v2 = 36;
  v3 = g_CB_GDbg;
  if (g_CB_GDbg >= qword_2A1453F98)
  {
    v3 = qword_2A1453F90;
  }

  if (result)
  {
    v4 = 65;
  }

  else
  {
    v4 = 78;
  }

  g_CB_GDbg = (v3 + 1);
  *v3 = v4;
  v5 = g_CB_GDbg;
  if (g_CB_GDbg >= qword_2A1453F98)
  {
    v5 = qword_2A1453F90;
    g_CB_GDbg = qword_2A1453F90;
  }

  v6 = *a2;
  if (*a2)
  {
    v7 = a2 + 1;
    do
    {
      g_CB_GDbg = (v5 + 1);
      *v5 = v6;
      v5 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v5 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v8 = *v7++;
      v6 = v8;
    }

    while (v8);
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sprintf_NA_E_header(uint64_t result, char a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = g_CB_GDbg++;
  *v2 = 36;
  v3 = g_CB_GDbg;
  if (g_CB_GDbg >= qword_2A1453F98)
  {
    v3 = qword_2A1453F90;
  }

  if (result == 1)
  {
    v4 = 65;
  }

  else
  {
    v4 = 69;
  }

  if (!result)
  {
    v4 = 78;
  }

  g_CB_GDbg = (v3 + 1);
  *v3 = v4;
  v5 = g_CB_GDbg;
  if (g_CB_GDbg >= qword_2A1453F98)
  {
    v5 = qword_2A1453F90;
  }

  g_CB_GDbg = (v5 + 1);
  *v5 = 69;
  v6 = g_CB_GDbg;
  if (g_CB_GDbg >= qword_2A1453F98)
  {
    v6 = qword_2A1453F90;
  }

  g_CB_GDbg = (v6 + 1);
  *v6 = a2;
  if (g_CB_GDbg >= qword_2A1453F98)
  {
    g_CB_GDbg = qword_2A1453F90;
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

void Debug_Log_SBA_Eph(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v40 = *MEMORY[0x29EDCA608];
  if (g_Logging_Cfg)
  {
    sprintf_NA_E_header(a1, 83);
    v7 = g_CB_GDbg++;
    *v7 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_3d(&g_CB_GDbg, a2);
    v8 = g_CB_GDbg++;
    *v8 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_3d(&g_CB_GDbg, a3);
    v9 = *a4;
    v10 = g_CB_GDbg++;
    *v10 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_10d(&g_CB_GDbg, v9);
    v11 = *(a4 + 8);
    v12 = g_CB_GDbg++;
    *v12 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_4d(&g_CB_GDbg, v11);
    v13 = *(a4 + 10);
    v14 = g_CB_GDbg++;
    *v14 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v13);
    v15 = *(a4 + 12);
    v16 = g_CB_GDbg++;
    *v16 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_5d(&g_CB_GDbg, v15);
    v17 = *(a4 + 16);
    v18 = g_CB_GDbg++;
    *v18 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_4d(&g_CB_GDbg, v17);
    v19 = *(a4 + 20);
    v20 = g_CB_GDbg++;
    *v20 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_10d(&g_CB_GDbg, v19);
    v21 = *(a4 + 24);
    v22 = g_CB_GDbg++;
    *v22 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_10d(&g_CB_GDbg, v21);
    v23 = *(a4 + 28);
    v24 = g_CB_GDbg++;
    *v24 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_10d(&g_CB_GDbg, v23);
    v25 = *(a4 + 32);
    v26 = g_CB_GDbg++;
    *v26 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v25);
    v27 = *(a4 + 36);
    v28 = g_CB_GDbg++;
    *v28 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v27);
    v29 = *(a4 + 40);
    v30 = g_CB_GDbg++;
    *v30 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v29);
    v31 = *(a4 + 44);
    v32 = g_CB_GDbg++;
    *v32 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_4d(&g_CB_GDbg, v31);
    v33 = *(a4 + 48);
    v34 = g_CB_GDbg++;
    *v34 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_4d(&g_CB_GDbg, v33);
    v35 = *(a4 + 52);
    v36 = g_CB_GDbg++;
    *v36 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_4d(&g_CB_GDbg, v35);
    sprintf_sp1d(&g_CB_GDbg, *(a4 + 4));
    v37 = g_CB_GDbg++;
    *v37 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    v38 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v39 = *MEMORY[0x29EDCA608];
  }
}

uint64_t sprintf_NA_A_header(uint64_t result, char a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = g_CB_GDbg++;
  *v2 = 36;
  v3 = g_CB_GDbg;
  if (g_CB_GDbg >= qword_2A1453F98)
  {
    v3 = qword_2A1453F90;
  }

  if (result)
  {
    v4 = 65;
  }

  else
  {
    v4 = 78;
  }

  g_CB_GDbg = (v3 + 1);
  *v3 = v4;
  v5 = g_CB_GDbg;
  if (g_CB_GDbg >= qword_2A1453F98)
  {
    v5 = qword_2A1453F90;
  }

  g_CB_GDbg = (v5 + 1);
  *v5 = 65;
  v6 = g_CB_GDbg;
  if (g_CB_GDbg >= qword_2A1453F98)
  {
    v6 = qword_2A1453F90;
  }

  g_CB_GDbg = (v6 + 1);
  *v6 = a2;
  if (g_CB_GDbg >= qword_2A1453F98)
  {
    g_CB_GDbg = qword_2A1453F90;
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

void Debug_Log_TM_FCP_OS_Time_ms(unsigned int a1, unsigned int a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if (g_Logging_Cfg)
  {
    v3 = 0;
    v4 = g_CB_GDbg;
    v5 = 36;
    do
    {
      g_CB_GDbg = (v4 + 1);
      *v4 = v5;
      v4 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v4 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v5 = str_12_2[++v3];
    }

    while (v3 != 4);
    sprintf_sp1u(&g_CB_GDbg, a1);
    sprintf_sp1u(&g_CB_GDbg, a2);
    v6 = g_CB_GDbg++;
    *v6 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    v7 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v8 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_AGPS_Ref_Time(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  if (g_Logging_Cfg)
  {
    v2 = 0;
    v3 = g_CB_GDbg;
    v4 = 36;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v4;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v3 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v4 = str_13_2[++v2];
    }

    while (v2 != 4);
    v5 = *a1;
    g_CB_GDbg = (v3 + 1);
    *v3 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v6 = *(a1 + 4);
    v7 = g_CB_GDbg++;
    *v7 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v6);
    v8 = *(a1 + 8);
    v9 = g_CB_GDbg++;
    *v9 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v8);
    v10 = *(a1 + 10);
    v11 = g_CB_GDbg++;
    *v11 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v10);
    v12 = g_CB_GDbg++;
    *v12 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    v13 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v14 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_AGPS_Ref_Pos(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  if (g_Logging_Cfg)
  {
    v2 = g_CB_GDbg;
    v3 = 36;
    v4 = 1u;
    do
    {
      g_CB_GDbg = (v2 + 1);
      *v2 = v3;
      v2 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v2 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v3 = str_16_1[v4++];
    }

    while (v4 != 6);
    sprintf_gR8(&g_CB_GDbg, *(a1 + 8));
    sprintf_gR8(&g_CB_GDbg, *(a1 + 16));
    sprintf_gR8(&g_CB_GDbg, *(a1 + 24));
    sprintf_gR8(&g_CB_GDbg, *(a1 + 32));
    v5 = *(a1 + 40);
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v7 = *(a1 + 42);
    v8 = g_CB_GDbg++;
    *v8 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v7);
    sprintf_gR8(&g_CB_GDbg, *(a1 + 48));
    sprintf_gR8(&g_CB_GDbg, *(a1 + 56));
    sprintf_sp1d(&g_CB_GDbg, *(a1 + 64));
    sprintf_sp1d(&g_CB_GDbg, *(a1 + 68));
    sprintf_sp1d(&g_CB_GDbg, *a1);
    v9 = g_CB_GDbg;
    v10 = 32;
    v11 = 1u;
    do
    {
      g_CB_GDbg = (v9 + 1);
      *v9 = v10;
      v9 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v9 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v10 = str_17_0[v11++];
    }

    while (v11 != 4);
    sprintf_1X(&g_CB_GDbg, *(a1 + 72));
    v12 = g_CB_GDbg++;
    *v12 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    v13 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v14 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_AGNSS_Time_Model(uint64_t a1)
{
  v23 = *MEMORY[0x29EDCA608];
  if (g_Logging_Cfg)
  {
    v2 = 0;
    v3 = g_CB_GDbg;
    v4 = 36;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v4;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v3 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v4 = str_18_0[++v2];
    }

    while (v2 != 4);
    v5 = *a1;
    g_CB_GDbg = (v3 + 1);
    *v3 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_3d(&g_CB_GDbg, v5);
    v6 = *(a1 + 4);
    v7 = g_CB_GDbg++;
    *v7 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_8d(&g_CB_GDbg, v6);
    v8 = *(a1 + 8);
    v9 = g_CB_GDbg++;
    *v9 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_4d(&g_CB_GDbg, v8);
    sprintf_sp11d(&g_CB_GDbg, *(a1 + 12));
    v10 = *(a1 + 16);
    v11 = g_CB_GDbg++;
    *v11 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_8d(&g_CB_GDbg, v10);
    v12 = *(a1 + 20);
    v13 = g_CB_GDbg++;
    *v13 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_3d(&g_CB_GDbg, v12);
    v14 = *(a1 + 21);
    v15 = g_CB_GDbg++;
    *v15 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v14);
    v16 = *(a1 + 24);
    v17 = g_CB_GDbg++;
    *v17 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v16);
    v18 = *(a1 + 22);
    v19 = g_CB_GDbg++;
    *v19 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v18);
    sprintf_sp1d(&g_CB_GDbg, *(a1 + 28));
    v20 = g_CB_GDbg++;
    *v20 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    v21 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v22 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_AGNSS_Not_Brd_SV_List(int a1, unsigned int a2, int *a3, unsigned __int8 *a4)
{
  v28 = *MEMORY[0x29EDCA608];
  if (!g_Logging_Cfg)
  {
    v12 = *MEMORY[0x29EDCA608];
    return;
  }

  v8 = g_CB_GDbg;
  if (*&dword_2A1453F88 != g_CB_GDbg)
  {
    GNSS_GNB_Debug_Ctl(&g_CB_GDbg);
    v8 = g_CB_GDbg;
  }

  v9 = 0;
  v10 = 36;
  do
  {
    g_CB_GDbg = (v8 + 1);
    *v8 = v10;
    v8 = g_CB_GDbg;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      v8 = qword_2A1453F90;
      g_CB_GDbg = qword_2A1453F90;
    }

    v10 = str_19_0[++v9];
  }

  while (v9 != 4);
  if (!a1)
  {
    v11 = " L1 ";
LABEL_13:
    v13 = *v11;
    if (*v11)
    {
      v14 = (v11 + 1);
      do
      {
        g_CB_GDbg = (v8 + 1);
        *v8 = v13;
        v8 = g_CB_GDbg;
        if (g_CB_GDbg >= qword_2A1453F98)
        {
          v8 = qword_2A1453F90;
          g_CB_GDbg = qword_2A1453F90;
        }

        v15 = *v14++;
        v13 = v15;
      }

      while (v15);
    }

    goto LABEL_18;
  }

  if (a1 == 1)
  {
    v11 = " L5 ";
    goto LABEL_13;
  }

LABEL_18:
  sprintf_sp1d(&g_CB_GDbg, a2);
  if (a2)
  {
    v16 = 0;
    v17 = a2;
    do
    {
      v18 = g_CB_GDbg++;
      *v18 = 32;
      v19 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v19 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v20 = *a3;
      if (*a3 <= 7)
      {
        if (v20 > 1)
        {
          if (v20 == 4)
          {
            v23 = 83;
          }

          else
          {
            v23 = v16;
          }

          if (v20 == 2)
          {
            v16 = 69;
          }

          else
          {
            v16 = v23;
          }
        }

        else if (v20)
        {
          if (v20 == 1)
          {
            v16 = 71;
          }
        }

        else
        {
          EvCrt_Illegal_switch_case("Debug_Log_AGNSS_Not_Brd_SV_List", 0x7DFu);
          v19 = g_CB_GDbg;
          v16 = 88;
        }
      }

      else
      {
        if (v20 == 128)
        {
          v21 = 78;
        }

        else
        {
          v21 = v16;
        }

        if (v20 == 64)
        {
          v21 = 66;
        }

        if (v20 == 32)
        {
          v21 = 82;
        }

        if (v20 == 16)
        {
          v22 = 81;
        }

        else
        {
          v22 = v16;
        }

        if (v20 == 8)
        {
          v22 = 77;
        }

        if (v20 <= 31)
        {
          v16 = v22;
        }

        else
        {
          v16 = v21;
        }
      }

      g_CB_GDbg = (v19 + 1);
      *v19 = v16;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        g_CB_GDbg = qword_2A1453F90;
      }

      v24 = *a4++;
      sprintf1da(&g_CB_GDbg, v24, v27, 0, 0);
      ++a3;
      --v17;
    }

    while (v17);
  }

  v25 = g_CB_GDbg++;
  *v25 = 10;
  if (g_CB_GDbg >= qword_2A1453F98)
  {
    g_CB_GDbg = qword_2A1453F90;
  }

  v26 = *MEMORY[0x29EDCA608];

  GNB_Debug_Flush_Check();
}

void Debug_Log_GPS_RTI_Bad_SV_List(int a1, unsigned int a2, int *a3, unsigned __int8 *a4)
{
  v28 = *MEMORY[0x29EDCA608];
  if (!g_Logging_Cfg)
  {
    v12 = *MEMORY[0x29EDCA608];
    return;
  }

  v8 = g_CB_GDbg;
  if (*&dword_2A1453F88 != g_CB_GDbg)
  {
    GNSS_GNB_Debug_Ctl(&g_CB_GDbg);
    v8 = g_CB_GDbg;
  }

  v9 = 0;
  v10 = 36;
  do
  {
    g_CB_GDbg = (v8 + 1);
    *v8 = v10;
    v8 = g_CB_GDbg;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      v8 = qword_2A1453F90;
      g_CB_GDbg = qword_2A1453F90;
    }

    v10 = str_22_1[++v9];
  }

  while (v9 != 4);
  if (!a1)
  {
    v11 = " L1 ";
LABEL_13:
    v13 = *v11;
    if (*v11)
    {
      v14 = (v11 + 1);
      do
      {
        g_CB_GDbg = (v8 + 1);
        *v8 = v13;
        v8 = g_CB_GDbg;
        if (g_CB_GDbg >= qword_2A1453F98)
        {
          v8 = qword_2A1453F90;
          g_CB_GDbg = qword_2A1453F90;
        }

        v15 = *v14++;
        v13 = v15;
      }

      while (v15);
    }

    goto LABEL_18;
  }

  if (a1 == 1)
  {
    v11 = " L5 ";
    goto LABEL_13;
  }

LABEL_18:
  sprintf_sp1d(&g_CB_GDbg, a2);
  if (a2)
  {
    v16 = a2;
    do
    {
      v17 = g_CB_GDbg++;
      *v17 = 32;
      v18 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v18 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v19 = *a3;
      if (*a3 > 7)
      {
        if (v19 == 64)
        {
          v21 = 78;
        }

        else
        {
          v21 = 88;
        }

        if (v19 == 32)
        {
          v21 = 66;
        }

        if (v19 == 16)
        {
          v22 = 69;
        }

        else
        {
          v22 = 88;
        }

        if (v19 == 8)
        {
          v22 = 83;
        }

        if (v19 <= 31)
        {
          v20 = v22;
        }

        else
        {
          v20 = v21;
        }
      }

      else if (v19 > 1)
      {
        if (v19 == 4)
        {
          v23 = 81;
        }

        else
        {
          v23 = 88;
        }

        if (v19 == 2)
        {
          v20 = 82;
        }

        else
        {
          v20 = v23;
        }
      }

      else if (v19)
      {
        if (v19 == 1)
        {
          v20 = 71;
        }

        else
        {
          v20 = 88;
        }
      }

      else
      {
        EvCrt_Illegal_switch_case("Debug_Log_GPS_RTI_Bad_SV_List", 0x819u);
        v18 = g_CB_GDbg;
        v20 = 88;
      }

      g_CB_GDbg = (v18 + 1);
      *v18 = v20;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        g_CB_GDbg = qword_2A1453F90;
      }

      v24 = *a4++;
      sprintf1da(&g_CB_GDbg, v24, v27, 0, 0);
      ++a3;
      --v16;
    }

    while (v16);
  }

  v25 = g_CB_GDbg++;
  *v25 = 10;
  if (g_CB_GDbg >= qword_2A1453F98)
  {
    g_CB_GDbg = qword_2A1453F90;
  }

  v26 = *MEMORY[0x29EDCA608];

  GNB_Debug_Flush_Check();
}

void Debug_Log_GPS_EE_Start_Time(unsigned int a1, unsigned int a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if (g_Logging_Cfg)
  {
    v3 = 0;
    v4 = g_CB_GDbg;
    v5 = 36;
    do
    {
      g_CB_GDbg = (v4 + 1);
      *v4 = v5;
      v4 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v4 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v5 = str_23_0[++v3];
    }

    while (v3 != 4);
    g_CB_GDbg = (v4 + 1);
    *v4 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, a1);
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, a2);
    v7 = g_CB_GDbg++;
    *v7 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    v8 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v9 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_AGLON_ChanNum(unsigned int a1, unsigned int a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if (g_Logging_Cfg)
  {
    v3 = 0;
    v4 = g_CB_GDbg;
    v5 = 36;
    do
    {
      g_CB_GDbg = (v4 + 1);
      *v4 = v5;
      v4 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v4 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v5 = str_24_0[++v3];
    }

    while (v3 != 4);
    g_CB_GDbg = (v4 + 1);
    *v4 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, a1);
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, a2);
    v7 = g_CB_GDbg++;
    *v7 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    v8 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v9 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_ExtA_DMS(unsigned int *a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (g_Logging_Cfg)
  {
    v2 = 0;
    v3 = g_CB_GDbg;
    v4 = 36;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v4;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v3 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v4 = str_25_0[++v2];
    }

    while (v2 != 4);
    v5 = *a1;
    g_CB_GDbg = (v3 + 1);
    *v3 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v6 = a1[1];
    v7 = g_CB_GDbg++;
    *v7 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v6);
    v8 = a1[2];
    v9 = g_CB_GDbg++;
    *v9 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v8);
    v10 = g_CB_GDbg++;
    *v10 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    v11 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v12 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_ExtA_UAC(unsigned int *a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (g_Logging_Cfg)
  {
    v2 = 0;
    v3 = g_CB_GDbg;
    v4 = 36;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v4;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v3 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v4 = str_26_0[++v2];
    }

    while (v2 != 4);
    v5 = *a1;
    g_CB_GDbg = (v3 + 1);
    *v3 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v6 = a1[1];
    v7 = g_CB_GDbg++;
    *v7 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v6);
    v8 = a1[2];
    v9 = g_CB_GDbg++;
    *v9 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v8);
    v10 = g_CB_GDbg++;
    *v10 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    v11 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v12 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_ExtA_FIV(unsigned int *a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (g_Logging_Cfg)
  {
    v2 = 0;
    v3 = g_CB_GDbg;
    v4 = 36;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v4;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v3 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v4 = str_27_1[++v2];
    }

    while (v2 != 4);
    v5 = *a1;
    g_CB_GDbg = (v3 + 1);
    *v3 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v6 = a1[1];
    v7 = g_CB_GDbg++;
    *v7 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v6);
    v8 = a1[2];
    v9 = g_CB_GDbg++;
    *v9 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v8);
    v10 = g_CB_GDbg++;
    *v10 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    v11 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v12 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_ExtA_SES(unsigned int a1)
{
  v7 = *MEMORY[0x29EDCA608];
  if (g_Logging_Cfg)
  {
    v1 = 0;
    v2 = g_CB_GDbg;
    v3 = 36;
    do
    {
      g_CB_GDbg = (v2 + 1);
      *v2 = v3;
      v2 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v2 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v3 = str_28_1[++v1];
    }

    while (v1 != 4);
    g_CB_GDbg = (v2 + 1);
    *v2 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, a1);
    v4 = g_CB_GDbg++;
    *v4 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    v5 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v6 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_ExtA_Alt(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (g_Logging_Cfg)
  {
    v2 = 0;
    v3 = g_CB_GDbg;
    v4 = 36;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v4;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v3 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v4 = str_29_2[++v2];
    }

    while (v2 != 4);
    v5 = *a1;
    g_CB_GDbg = (v3 + 1);
    *v3 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    sprintf_gR8(&g_CB_GDbg, *(a1 + 8));
    sprintf_gR8(&g_CB_GDbg, *(a1 + 16));
    v6 = *(a1 + 24);
    v7 = g_CB_GDbg++;
    *v7 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v6);
    v8 = g_CB_GDbg++;
    *v8 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    v9 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v10 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_ExtA_MapV(uint64_t a1)
{
  v23 = *MEMORY[0x29EDCA608];
  if (g_Logging_Cfg)
  {
    v2 = 0;
    v3 = g_CB_GDbg;
    v4 = 36;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v4;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v3 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v4 = str_30_0[++v2];
    }

    while (v2 != 4);
    v5 = *a1;
    g_CB_GDbg = (v3 + 1);
    *v3 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    for (i = 8; i != 32; i += 8)
    {
      v7 = g_CB_GDbg++;
      *v7 = 32;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        g_CB_GDbg = qword_2A1453F90;
      }

      sprintf_11f9(&g_CB_GDbg, *(a1 + i));
    }

    v8 = *(a1 + 32);
    v9 = g_CB_GDbg++;
    *v9 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v8);
    sprintf_gR8(&g_CB_GDbg, *(a1 + 40));
    sprintf_gR8(&g_CB_GDbg, *(a1 + 48));
    sprintf_gR8(&g_CB_GDbg, *(a1 + 56));
    v10 = *(a1 + 64);
    v11 = g_CB_GDbg++;
    *v11 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v10);
    v12 = *(a1 + 65);
    v13 = g_CB_GDbg++;
    *v13 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v12);
    v14 = *(a1 + 66);
    v15 = g_CB_GDbg++;
    *v15 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v14);
    v16 = *(a1 + 67);
    v17 = g_CB_GDbg++;
    *v17 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v16);
    v18 = *(a1 + 68);
    v19 = g_CB_GDbg++;
    *v19 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v18);
    v20 = g_CB_GDbg++;
    *v20 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    v21 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v22 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_ExtA_SpdC(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (g_Logging_Cfg)
  {
    v2 = 0;
    v3 = g_CB_GDbg;
    v4 = 36;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v4;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v3 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v4 = str_31_0[++v2];
    }

    while (v2 != 4);
    v5 = *a1;
    g_CB_GDbg = (v3 + 1);
    *v3 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v6 = *(a1 + 4);
    v7 = g_CB_GDbg++;
    *v7 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v6);
    sprintf_gR8(&g_CB_GDbg, *(a1 + 8));
    sprintf_gR8(&g_CB_GDbg, *(a1 + 16));
    v8 = g_CB_GDbg++;
    *v8 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    v9 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v10 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_ExtA_AT_Vel(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (g_Logging_Cfg)
  {
    v2 = 0;
    v3 = g_CB_GDbg;
    v4 = 36;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v4;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v3 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v4 = str_32_0[++v2];
    }

    while (v2 != 4);
    v5 = *a1;
    g_CB_GDbg = (v3 + 1);
    *v3 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    sprintf_gR8(&g_CB_GDbg, *(a1 + 8));
    sprintf_gR8(&g_CB_GDbg, *(a1 + 16));
    v6 = g_CB_GDbg++;
    *v6 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    v7 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v8 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_ExtA_V_Vel(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (g_Logging_Cfg)
  {
    v2 = 0;
    v3 = g_CB_GDbg;
    v4 = 36;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v4;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v3 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v4 = str_33[++v2];
    }

    while (v2 != 4);
    v5 = *a1;
    g_CB_GDbg = (v3 + 1);
    *v3 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    sprintf_gR8(&g_CB_GDbg, *(a1 + 8));
    sprintf_gR8(&g_CB_GDbg, *(a1 + 16));
    v6 = g_CB_GDbg++;
    *v6 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    v7 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v8 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_ExtA_Heading(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (g_Logging_Cfg)
  {
    v2 = 0;
    v3 = g_CB_GDbg;
    v4 = 36;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v4;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v3 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v4 = str_34[++v2];
    }

    while (v2 != 4);
    v5 = *a1;
    g_CB_GDbg = (v3 + 1);
    *v3 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    sprintf_gR8(&g_CB_GDbg, *(a1 + 8));
    sprintf_gR8(&g_CB_GDbg, *(a1 + 16));
    v6 = g_CB_GDbg++;
    *v6 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    v7 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v8 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_ExtA_Tunnel_End_Point(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  if (g_Logging_Cfg)
  {
    v2 = 0;
    v3 = g_CB_GDbg;
    v4 = 36;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v4;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v3 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v4 = str_35[++v2];
    }

    while (v2 != 4);
    v5 = *a1;
    g_CB_GDbg = (v3 + 1);
    *v3 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_11f9(&g_CB_GDbg, *(a1 + 8));
    v7 = g_CB_GDbg++;
    *v7 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_11f9(&g_CB_GDbg, *(a1 + 16));
    sprintf_gR8(&g_CB_GDbg, *(a1 + 24));
    sprintf_gR8(&g_CB_GDbg, *(a1 + 32));
    v8 = *(a1 + 40);
    v9 = g_CB_GDbg++;
    *v9 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v8);
    v10 = *(a1 + 42);
    v11 = g_CB_GDbg++;
    *v11 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v10);
    sprintf_gR8(&g_CB_GDbg, *(a1 + 48));
    sprintf_gR8(&g_CB_GDbg, *(a1 + 56));
    v12 = g_CB_GDbg++;
    *v12 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    v13 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v14 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_AGNSS_SH_Iono_Model(uint64_t a1)
{
  v65 = *MEMORY[0x29EDCA608];
  if (g_Logging_Cfg)
  {
    v1 = 0;
    v2 = g_CB_GDbg;
    v3 = 36;
    do
    {
      g_CB_GDbg = (v2 + 1);
      *v2 = v3;
      v2 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v2 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v3 = aAiT[++v1];
    }

    while (v1 != 8);
    v4 = *(a1 + 4);
    g_CB_GDbg = (v2 + 1);
    *v2 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_4d(&g_CB_GDbg, v4);
    v5 = *a1;
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v5);
    sprintf_sp1d(&g_CB_GDbg, *(a1 + 6));
    v7 = g_CB_GDbg++;
    *v7 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    GNB_Debug_Flush_Check();
    if (*(a1 + 6))
    {
      v8 = 0;
      v63 = a1 + 1112;
      v64 = a1 + 24;
      do
      {
        v9 = 0;
        v10 = g_CB_GDbg;
        v11 = 36;
        do
        {
          g_CB_GDbg = (v10 + 1);
          *v10 = v11;
          v10 = g_CB_GDbg;
          if (g_CB_GDbg >= qword_2A1453F98)
          {
            v10 = qword_2A1453F90;
            g_CB_GDbg = qword_2A1453F90;
          }

          v11 = aAi[++v9];
        }

        while (v9 != 4);
        v12 = (a1 + 8 + 2072 * v8);
        v13 = *v12;
        g_CB_GDbg = (v10 + 1);
        *v10 = 32;
        if (g_CB_GDbg >= qword_2A1453F98)
        {
          g_CB_GDbg = qword_2A1453F90;
        }

        sprintf_2d(&g_CB_GDbg, v13);
        v14 = 0;
        v15 = g_CB_GDbg;
        v16 = 32;
        do
        {
          g_CB_GDbg = (v15 + 1);
          *v15 = v16;
          v15 = g_CB_GDbg;
          if (g_CB_GDbg >= qword_2A1453F98)
          {
            v15 = qword_2A1453F90;
            g_CB_GDbg = qword_2A1453F90;
          }

          v16 = aH_0[++v14];
        }

        while (v14 != 2);
        v17 = v12[1];
        g_CB_GDbg = (v15 + 1);
        *v15 = 32;
        if (g_CB_GDbg >= qword_2A1453F98)
        {
          g_CB_GDbg = qword_2A1453F90;
        }

        sprintf_4d(&g_CB_GDbg, v17);
        v18 = v12[2];
        v19 = g_CB_GDbg++;
        *v19 = 32;
        if (g_CB_GDbg >= qword_2A1453F98)
        {
          g_CB_GDbg = qword_2A1453F90;
        }

        sprintf_2d(&g_CB_GDbg, v18);
        v20 = v12[3];
        v21 = g_CB_GDbg++;
        *v21 = 32;
        if (g_CB_GDbg >= qword_2A1453F98)
        {
          g_CB_GDbg = qword_2A1453F90;
        }

        v62 = v8;
        sprintf_2d(&g_CB_GDbg, v20);
        v22 = g_CB_GDbg++;
        *v22 = 10;
        if (g_CB_GDbg >= qword_2A1453F98)
        {
          g_CB_GDbg = qword_2A1453F90;
        }

        GNB_Debug_Flush_Check();
        v23 = 0;
        v24 = 0;
        v25 = -1;
        do
        {
          v26 = 0;
          v27 = g_CB_GDbg;
          v28 = 36;
          do
          {
            g_CB_GDbg = (v27 + 1);
            *v27 = v28;
            v27 = g_CB_GDbg;
            if (g_CB_GDbg >= qword_2A1453F98)
            {
              v27 = qword_2A1453F90;
              g_CB_GDbg = qword_2A1453F90;
            }

            v28 = aAi[++v26];
          }

          while (v26 != 4);
          v29 = *v12;
          g_CB_GDbg = (v27 + 1);
          *v27 = 32;
          if (g_CB_GDbg >= qword_2A1453F98)
          {
            g_CB_GDbg = qword_2A1453F90;
          }

          sprintf_2d(&g_CB_GDbg, v29);
          v30 = 0;
          v31 = g_CB_GDbg;
          v32 = 32;
          do
          {
            g_CB_GDbg = (v31 + 1);
            *v31 = v32;
            v31 = g_CB_GDbg;
            if (g_CB_GDbg >= qword_2A1453F98)
            {
              v31 = qword_2A1453F90;
              g_CB_GDbg = qword_2A1453F90;
            }

            v32 = aC_1[++v30];
          }

          while (v30 != 2);
          g_CB_GDbg = (v31 + 1);
          *v31 = 32;
          if (g_CB_GDbg >= qword_2A1453F98)
          {
            g_CB_GDbg = qword_2A1453F90;
          }

          sprintf_2d(&g_CB_GDbg, v23);
          if (v23 <= v12[2])
          {
            v33 = (v64 + 8 * v24);
            v34 = v25;
            do
            {
              v35 = g_CB_GDbg++;
              *v35 = 32;
              if (g_CB_GDbg >= qword_2A1453F98)
              {
                g_CB_GDbg = qword_2A1453F90;
              }

              v36 = *v33 * 1000.0;
              if (v36 <= 0.0)
              {
                v37 = -0.5;
              }

              else
              {
                v37 = 0.5;
              }

              v38 = v36 + v37;
              if (v38 <= 2147483650.0)
              {
                if (v38 >= -2147483650.0)
                {
                  v39 = v38;
                }

                else
                {
                  v39 = 0x80000000;
                }
              }

              else
              {
                v39 = 0x7FFFFFFF;
              }

              sprintf_7f(&g_CB_GDbg, v39, 4);
              ++v33;
              ++v24;
              ++v34;
            }

            while (v34 < v12[2]);
          }

          v40 = g_CB_GDbg++;
          *v40 = 10;
          if (g_CB_GDbg >= qword_2A1453F98)
          {
            g_CB_GDbg = qword_2A1453F90;
          }

          GNB_Debug_Flush_Check();
          ++v25;
          v41 = v23++ >= v12[3];
        }

        while (!v41);
        if (v12[3])
        {
          v42 = 0;
          v43 = 0;
          v44 = 1;
          do
          {
            v45 = 0;
            v46 = g_CB_GDbg;
            v47 = 36;
            do
            {
              g_CB_GDbg = (v46 + 1);
              *v46 = v47;
              v46 = g_CB_GDbg;
              if (g_CB_GDbg >= qword_2A1453F98)
              {
                v46 = qword_2A1453F90;
                g_CB_GDbg = qword_2A1453F90;
              }

              v47 = aAi[++v45];
            }

            while (v45 != 4);
            v48 = *v12;
            g_CB_GDbg = (v46 + 1);
            *v46 = 32;
            if (g_CB_GDbg >= qword_2A1453F98)
            {
              g_CB_GDbg = qword_2A1453F90;
            }

            sprintf_2d(&g_CB_GDbg, v48);
            v49 = 0;
            v50 = g_CB_GDbg;
            v51 = 32;
            do
            {
              g_CB_GDbg = (v50 + 1);
              *v50 = v51;
              v50 = g_CB_GDbg;
              if (g_CB_GDbg >= qword_2A1453F98)
              {
                v50 = qword_2A1453F90;
                g_CB_GDbg = qword_2A1453F90;
              }

              v51 = aS_0[++v49];
            }

            while (v49 != 2);
            g_CB_GDbg = (v50 + 1);
            *v50 = 32;
            if (g_CB_GDbg >= qword_2A1453F98)
            {
              g_CB_GDbg = qword_2A1453F90;
            }

            sprintf_2d(&g_CB_GDbg, v44);
            if (v44 <= v12[2])
            {
              v52 = (v63 + 8 * v43);
              v53 = v42;
              do
              {
                v54 = g_CB_GDbg++;
                *v54 = 32;
                if (g_CB_GDbg >= qword_2A1453F98)
                {
                  g_CB_GDbg = qword_2A1453F90;
                }

                v55 = *v52 * 1000.0;
                if (v55 <= 0.0)
                {
                  v56 = -0.5;
                }

                else
                {
                  v56 = 0.5;
                }

                v57 = v55 + v56;
                if (v57 <= 2147483650.0)
                {
                  if (v57 >= -2147483650.0)
                  {
                    v58 = v57;
                  }

                  else
                  {
                    v58 = 0x80000000;
                  }
                }

                else
                {
                  v58 = 0x7FFFFFFF;
                }

                sprintf_7f(&g_CB_GDbg, v58, 4);
                ++v52;
                ++v43;
                ++v53;
              }

              while (v53 < v12[2]);
            }

            v59 = g_CB_GDbg++;
            *v59 = 10;
            if (g_CB_GDbg >= qword_2A1453F98)
            {
              g_CB_GDbg = qword_2A1453F90;
            }

            GNB_Debug_Flush_Check();
            ++v42;
            v41 = v44++ >= v12[3];
          }

          while (!v41);
        }

        v8 = v62 + 1;
        v63 += 2072;
        v64 += 2072;
      }

      while (v62 + 1 < *(a1 + 6));
    }
  }

  v60 = *MEMORY[0x29EDCA608];
}

void SB_SBAS_PrePos(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a1;
  v56 = *MEMORY[0x29EDCA608];
  v9 = (a5 + 5548);
  if (*(a3 + 17) && (*a1 & 1) != 0)
  {
    memset(v55, 0, 39);
    memset(v54, 0, 39);
    if (*(a2 + 208) == *(a3 + 1772))
    {
      a1[48] = 0;
    }

    v10 = (a5 + 8696);
    *(a5 + 8824) = 0;
    *(a5 + 8792) = 0uLL;
    *(a5 + 8808) = 0uLL;
    *(a5 + 8760) = 0uLL;
    *(a5 + 8776) = 0uLL;
    *(a5 + 8728) = 0uLL;
    *(a5 + 8744) = 0uLL;
    *(a5 + 8696) = 0uLL;
    *(a5 + 8712) = 0uLL;
    *(a5 + 5544) = 0;
    *v9 = 0;
    *(a5 + 5549) = 0;
    v11 = 9;
    *(a5 + 5569) = 0;
    do
    {
      *(a5 + 5565) = 0;
      *(a5 + 5557) = 0;
      *(a5 + 5577) = 0;
      *(a5 + 5582) = 0;
      --v11;
    }

    while (v11);
    v12 = (a5 + 8705);
    *(a5 + 6186) = -1;
    *&v13 = -1;
    *(&v13 + 1) = -1;
    *v41 = a6 + 218;
    *(a5 + 6155) = v13;
    *(a5 + 6171) = v13;
    v38 = a6 + 9376;
    v39 = a6 + 656;
    v14 = a4 + 34368;
    v15 = 18;
    do
    {
      if (v9[3274] > 8u)
      {
        break;
      }

      if (*(v14 + 176) == 1)
      {
        v16 = *(v14 + 188);
        v17 = v16 - 120;
        if ((v16 - 120) <= 0x26)
        {
          v51 = 0u;
          memset(v48, 0, 32);
          v18 = *(v14 + 16);
          *&v48[8] = *v14;
          v19 = v16 + 59;
          memset(&v48[40], 0, 40);
          v52 = 0;
          v49 = 0u;
          v50 = 0u;
          v53[0] = 0;
          *(v53 + 3) = 0;
          DWORD2(v51) = 2;
          *&v48[24] = v18;
          *&v48[40] = *(v14 + 32);
          *&v48[56] = *(v14 + 96);
          v20 = *(a6 + v16 + 59);
          if (v20 == 157 || v17 == *(v8 + 48))
          {
            Comp_AzEl(v8 + 24, a2 + 136, v48, (a6 + v19), (*v41 + 2 * v19), (v39 + 40 * v19), (v38 + 40 * v19));
            v8 = a1;
            LOBYTE(v20) = *(a6 + v19);
          }

          if (v20 < 1)
          {
            ++v9[3277];
            v21 = v54;
          }

          else
          {
            Comp_AA(v48, v20, *(*v41 + 2 * v19), v8, a2, a5, v16);
            v8 = a1;
            v21 = v55;
          }

          v21[v17] = 1;
        }
      }

      v14 += 192;
      --v15;
    }

    while (v15);
    v22 = 0;
    v23 = 16536;
    v24 = 7816;
    v25 = 576;
    v26 = a2;
    do
    {
      if (v9[3274] > 8u)
      {
        break;
      }

      v47 = 0;
      *v46 = 0;
      if ((v55[v22] & 1) == 0 && (v54[v22] & 1) == 0)
      {
        v42 = v22 + 120;
        if (Core_Load_SBAS_Apx((v22 + 120), &v45, v46))
        {
          v51 = 0u;
          *v48 = 0;
          v52 = 0;
          v49 = 0u;
          v50 = 0u;
          memset(&v48[32], 0, 48);
          v53[0] = 0;
          *(v53 + 3) = 0;
          v27.i64[0] = v46[0];
          v27.i64[1] = v46[1];
          *&v48[8] = vcvtq_f64_s64(v27);
          DWORD2(v51) = 2;
          *&v48[24] = v47;
          v28 = *(a6 + v22 + 179);
          v29 = a1;
          if (v28 == 157 || v22 == a1[48])
          {
            Comp_AzEl((a1 + 24), a2 + 136, v48, (a6 + v22 + 179), (a6 + v25), (a6 + v24), (a6 + v23));
            v29 = a1;
            LOBYTE(v28) = *(a6 + v22 + 179);
          }

          if (v28 < 1)
          {
            v54[v22] = 1;
            ++v9[3277];
            v26 = a2;
          }

          else
          {
            v26 = a2;
            Comp_AA(v48, v28, *(a6 + 2 * v22 + 576), v29, a2, a5, (v22 + 120));
            v55[v22] = 1;
          }

          if (*(a3 + 1772) == *(v26 + 208))
          {
            EvLog_d("SBAS_PrePos: Loaded NV almanac ", v42);
          }
        }

        else if (*(a3 + 1772) == *(v26 + 208))
        {
          EvLog_d("SBAS_PrePos: Failed to load NV almanac ", v42);
        }
      }

      ++v22;
      v23 += 40;
      v24 += 40;
      v25 += 2;
    }

    while (v22 != 39);
    v30 = 0;
    while (*(*(a3 + 1072) + v30) != 1)
    {
      if (v54[v30])
      {
        goto LABEL_39;
      }

LABEL_40:
      if (++v30 == 39)
      {
        for (i = 0; i != 39; ++i)
        {
          if ((v55[i] & 1) == 0 && (v54[i] & 1) == 0)
          {
            v12[v9[3275]++] = i + 120;
          }
        }

        v32 = a1[48];
        if ((v32 + 1) <= 0x26u)
        {
          v33 = v32 + 1;
        }

        else
        {
          v33 = 0;
        }

        a1[48] = v33;
        v34 = *MEMORY[0x29EDCA608];
        return;
      }
    }

    ++v9[3277];
    v54[v30] = 1;
LABEL_39:
    SB_SBAS_Remove_SV_in_List((v30 + 120), v9 + 3274, v10, 9u);
    SB_SBAS_Remove_SV_in_List((v30 + 120), v9 + 3275, v12, 0x27u);
    goto LABEL_40;
  }

  *(a5 + 8822) = 0;
  if (*(a3 + 17) == 1 && (*a1 & 1) == 0)
  {
    v35 = 0;
    for (j = 0; j != 39; ++j)
    {
      if ((*(*(a3 + 1072) + j) & 1) == 0)
      {
        *(a5 + 8705 + v35) = j + 120;
        v35 = *(a5 + 8823) + 1;
        *(a5 + 8823) = v35;
      }
    }
  }

  memset((a6 + 179), 157, 18);
  v37 = *MEMORY[0x29EDCA608];

  memset_pattern16((a6 + 576), &unk_299050270, 0x24uLL);
}

void Comp_AA(uint64_t a1, char a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v40 = *MEMORY[0x29EDCA608];
  v13 = *(a1 + 120);
  v14 = *(a6 + 8822) + 114;
  v38 = 0uLL;
  v39 = 0;
  v15 = Comp_SVrange_Sag_Corr(&v38, v37, (a4 + 24), (a1 + 8));
  v16 = 0;
  v17 = ((*(a5 + 96) - *(a1 + 56)) * 299792458.0);
  memset(v37, 0, sizeof(v37));
  do
  {
    v37[v16 + 2] = *(a1 + 48 + 8 * v16) - *(a5 + 48 + 8 * v16);
    v18 = v16 + 3;
    --v16;
  }

  while (v18 > 1);
  v19 = 0;
  v20 = v15;
  v21 = 0.0;
  do
  {
    v21 = v21 + v38.f64[v19] * v37[v19];
    ++v19;
  }

  while (v19 != 3);
  v22 = a6 + 72 + 48 * v14;
  v23 = (v21 + (*(a5 + 104) - *(a1 + 64)) * 299792458.0) / -0.190293673;
  v24 = (v17 + v20) / 299792458.0;
  v25 = *(a5 + 128) - v24;
  *v22 = *(a5 + 208);
  *(v22 + 4) = 1;
  *(v22 + 10) = a7;
  *(v22 + 8) = 7;
  *(v22 + 12) = v13 == 1;
  *(v22 + 13) = v13 == 2;
  *(v22 + 14) = 256;
  *(v22 + 16) = (v24 * 2000.0 + 0.5);
  *(v22 + 18) = 200;
  v26 = -0.5;
  if (v23 > 0.0)
  {
    v26 = 0.5;
  }

  v27 = v23 + v26;
  v28 = v27;
  if (v27 < -2147483650.0)
  {
    LOWORD(v28) = 0;
  }

  if (v27 <= 2147483650.0)
  {
    v29 = v28;
  }

  else
  {
    v29 = -1;
  }

  *(v22 + 22) = v29;
  *(v22 + 24) = -1;
  v30 = v25 / 1.5;
  if (v25 / 1.5 <= 0.0)
  {
    v30 = v25 / 1.5 + -1.0;
  }

  v31 = v30;
  *(v22 + 26) = 5115;
  v32 = (v25 + v30 * -1.5) * 1023000.0;
  *(v22 + 28) = v31;
  *(v22 + 32) = v32;
  *(v22 + 36) = vcvtd_n_s64_f64(v32 - v32, 0x10uLL);
  if (v31 < 0)
  {
    *(v22 + 28) = v31 + 403200;
  }

  *(v22 + 38) = 0;
  *(v22 + 40) = -1;
  *(v22 + 41) = a2;
  v33 = a3 >> 1;
  if (a3 >= 0x169)
  {
    LOBYTE(v33) = -1;
  }

  *(v22 + 42) = v33;
  *(v22 + 43) = 0;
  *(v22 + 44) = 0;
  if (a7 >= 0x78)
  {
    if (v13 == 1)
    {
      v34 = 1;
    }

    else
    {
      v34 = 2;
    }

    *(a6 + a7 - 120 + 8783) += v34;
    v35 = *(a6 + 8822);
    *(a6 + a7 + 6035) = v35 + 114;
    *(a6 + v35 + 8696) = a7;
    ++*(a6 + 8822);
  }

  v36 = *MEMORY[0x29EDCA608];
}

uint64_t SB_SBAS_Remove_SV_in_List(uint64_t result, unsigned __int8 *a2, unsigned __int8 *a3, unsigned int a4)
{
  v13 = *MEMORY[0x29EDCA608];
  if (a2 && a3)
  {
    v4 = *a2;
    if (*a2 && v4 <= a4)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        while (a3[v6] == result)
        {
          a3[v6] = 0;
          v8 = *a2;
          ++v6;
          v7 = 1;
          LOBYTE(v4) = *a2;
          if (v6 >= v8)
          {
            goto LABEL_14;
          }
        }

        ++v6;
      }

      while (v6 < v4);
      LOBYTE(v8) = v4;
      if ((v7 & 1) == 0)
      {
        goto LABEL_27;
      }

LABEL_14:
      if (v8)
      {
        v9 = 0;
        LODWORD(v10) = 0;
        v11 = v8;
        do
        {
          if (a3[v9])
          {
            a3[v10] = a3[v9];
            LODWORD(v10) = v10 + 1;
            v11 = *a2;
          }

          ++v9;
        }

        while (v9 < v11);
      }

      else
      {
        v11 = 0;
        LODWORD(v10) = 0;
      }

      if (v10 < v11)
      {
        v10 = v10;
        do
        {
          if (a3[v10])
          {
            a3[v10] = 0;
            v11 = *a2;
          }

          ++v10;
        }

        while (v10 < v11);
      }

      *a2 = v11 - 1;
    }
  }

LABEL_27:
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void GNSS_Write_GNB_Ctrl(char **a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v3 = *a1;
    v2 = a1[1];
    if (v2 != *a1)
    {
      if (v2 > *a1)
      {
        v3 = a1[3];
      }

      v4 = v3 - v2;
      v5 = GN_GPS_Write_GNB_Ctrl((v3 - v2), v2);
      GNB_Debug_BlockMove(a1[1], v5);
      v6 = &a1[1][v5];
      a1[1] = v6;
      if (v6 >= a1[3])
      {
        v6 = a1[2];
        a1[1] = v6;
        if (v5 == v4)
        {
          v7 = (*a1 - v6);
          v8 = GN_GPS_Write_GNB_Ctrl((*a1 - v6), v6);
          GNB_Debug_BlockMove(a1[1], v8);
          v6 = &a1[1][v8];
          a1[1] = v6;
        }
      }

      if (v6 == *a1)
      {
        v9 = a1[2];
        *a1 = v9;
        a1[1] = v9;
      }
    }
  }

  v10 = *MEMORY[0x29EDCA608];
}

uint64_t G5K_ME_Send_WakeUp(char **a1, uint64_t a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = (*a1)++;
  *v4 = 10;
  v5 = *a1;
  if (*a1 >= a1[3])
  {
    v5 = a1[2];
  }

  *a1 = v5 + 1;
  *v5 = 35;
  v6 = *a1;
  if (*a1 >= a1[3])
  {
    v6 = a1[2];
  }

  v7 = 0;
  v8 = 87;
  v9 = v6;
  do
  {
    *a1 = v9 + 1;
    *v9 = v8;
    v9 = *a1;
    if (*a1 >= a1[3])
    {
      v9 = a1[2];
      *a1 = v9;
    }

    v8 = str_9[++v7];
  }

  while (v7 != 4);
  v10 = mach_continuous_time();
  sprintf_sp1u(a1, (*&g_MacClockTicksToMsRelation * v10));
  v11 = (*a1)++;
  *v11 = 32;
  v12 = *a1;
  if (*a1 >= a1[3])
  {
    v12 = a1[2];
  }

  for (i = 0; i != 10; ++i)
  {
    v14 = 91;
    v15 = 1u;
    do
    {
      *a1 = v12 + 1;
      *v12 = v14;
      v12 = *a1;
      if (*a1 >= a1[3])
      {
        v12 = a1[2];
        *a1 = v12;
      }

      v14 = str_1_2[v15++];
    }

    while (v15 != 10);
  }

  *a1 = v12 + 1;
  *v12 = 32;
  v16 = *a1;
  v17 = a1[3];
  if (*a1 >= v17)
  {
    v16 = a1[2];
    *a1 = v16;
  }

  if (v6 == v16)
  {
    v21 = 0;
  }

  else
  {
    v18 = 0;
    do
    {
      v20 = *v6++;
      v19 = v20;
      if (v6 >= v17)
      {
        v6 = a1[2];
      }

      v18 += v19;
    }

    while (v6 != v16);
    v21 = v18;
  }

  *a1 = v16 + 1;
  *v16 = 38;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf_02x(a1, v21);
  v22 = (*a1)++;
  *v22 = 10;
  v23 = *a1;
  if (*a1 >= a1[3])
  {
    v23 = a1[2];
  }

  *a1 = v23 + 1;
  *v23 = 10;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  GNSS_Write_GNB_Ctrl(a1);
  v24 = *MEMORY[0x29EDCA608];

  return GNSS_GNB_Debug_Ctl(a2);
}

uint64_t G5K_ME_Send_Sleep(char **a1, char **a2, unsigned int a3, unsigned int a4, int a5)
{
  v19 = *MEMORY[0x29EDCA608];
  GNSS_Write_GNB_Ctrl(a1);
  GNSS_GNB_Debug_Ctl(a2);
  if (g_Logging_Cfg >= 1)
  {
    v10 = (*a2)++;
    *v10 = 10;
    v11 = *a2;
    if (*a2 >= a2[3])
    {
      v11 = a2[2];
    }

    v12 = 35;
    v13 = 1u;
    do
    {
      *a2 = v11 + 1;
      *v11 = v12;
      v11 = *a2;
      if (*a2 >= a2[3])
      {
        v11 = a2[2];
        *a2 = v11;
      }

      v12 = str_2_2[v13++];
    }

    while (v13 != 8);
    sprintf_sp1u(a2, a3);
    sprintf_sp1u(a2, a4);
    v14 = (*a2)++;
    *v14 = 10;
    if (*a2 >= a2[3])
    {
      *a2 = a2[2];
    }
  }

  if (a5)
  {
    v18 = 0;
    v17[0] = BYTE1(a3);
    v17[1] = a3;
    v17[2] = BYTE1(a4);
    v17[3] = a4;
    STEU_Encode_c(a1, 83, 12, v17);
  }

  GNSS_Write_GNB_Ctrl(a1);
  result = GNSS_GNB_Debug_Ctl(a2);
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t G5K_ME_Send_Ctrl(char **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a1;
  v276 = *MEMORY[0x29EDCA608];
  v10 = (*a1)++;
  *v10 = 10;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  v11 = *(a4 + 1672);
  v12 = *(a4 + 1668);
  if (v11)
  {
    EvLog_nd("G5K_ME_Send_Ctrl: Fix_Int Updated ", 2, a3, v12, v11);
    LODWORD(v12) = *(a4 + 1672);
    *(a4 + 1668) = v12;
  }

  v268 = a5;
  v13 = a5 + 0x2000;
  v14 = *(*(p_api + 80) + 32);
  if (v12 >= 0x1F4)
  {
    v15 = 100;
  }

  else
  {
    v15 = 50;
  }

  v16 = -API_Get_Est_ME_TTick();
  do
  {
    v14 += v12;
  }

  while (v16 + v14 <= v15);
  v18 = *(a4 + 1668);
  HIDWORD(v19) = 652835029 * v18;
  LODWORD(v19) = 652835029 * v18;
  if ((v19 >> 3) >= 0x418938 && 0x3E8 % v18)
  {
    v259 = 0;
    v253 = 0;
  }

  else
  {
    v20 = *(p_api + 80);
    LOWORD(v17) = *(*(p_api + 72) + 2044);
      ;
    }

    v22 = *(v20 + 184);
    while (i < 0.0)
    {
      i = i + 604800.0;
    }

    v23 = *(v20 + 872) / 299792458.0;
    v24 = *(v20 + 32);
    v25 = i + *(a4 + 1732) * 0.000000001;
    v26 = v25 - v25;
    v27 = (v12 / 0x3E8);
    if (v12 < 2000)
    {
      v27 = 1.0;
    }

    if (v26 >= 0.7)
    {
      v27 = v27 + 1.0;
    }

    v28 = (v22 + 1.0) * (v27 - v26) * 1000.0;
    v29 = vcvtd_n_u64_f64(v28 - v28, 0x10uLL);
    v259 = v24 + v28;
    v253 = v29;
    if (v23 < 0.004)
    {
      v30 = v24 + v28 - v14 + (v29 >> 15);
      v31 = v14 - v12 - (v28 + v24 + (v29 >> 15));
      do
      {
        v32 = v30;
        v30 -= v12;
        v31 += v12;
      }

      while (v32 > 10);
      if (v12 < 500)
      {
        if (v32 < 0)
        {
          v32 = 10;
        }
      }

      else
      {
        v33 = 1 - v12;
        if (v32 > 1 - v12)
        {
          v33 = v32;
        }

        v34 = v33 + v31;
        v58 = v34 == 0;
        v35 = (v34 - (v34 != 0)) / v12;
        if (!v58)
        {
          ++v35;
        }

        v32 += v35 * v12;
        if (v32 <= -50)
        {
          v32 = -50;
        }
      }

      if (v32 >= 0)
      {
        v36 = v32;
      }

      else
      {
        v36 = -v32;
      }

      if (v36 <= 2 && v23 >= 0.0001)
      {
        v32 = 0;
      }

      v14 += v32;
    }
  }

  *(a3 + 564) = v14;
  G5K_ME_enc_n(v9, v14, v18);
  *v275 = *a5;
  *&v275[4] = *(a5 + 4);
  *&v275[6] = *(a5 + 6);
  *&v275[14] = *(a5 + 16);
  *&v275[18] = *(a5 + 20);
  *&v275[20] = *(a5 + 14);
  *&v275[22] = *(a5 + 22);
  *&v275[26] = *(a5 + 26);
  *&v275[28] = *(a5 + 28);
  v38 = *(a5 + 56);
  v275[32] = *(a5 + 60);
  v275[33] = v38;
  v275[34] = *(a5 + 8822) + *(a5 + 8596);
  *&v275[35] = *(a5 + 36);
  v39 = *(a5 + 48);
  v275[39] = *(a5 + 44);
  *&v275[40] = v39;
  v275[44] = *(a5 + 52);
  *&v275[45] = *(a5 + 40);
  v275[47] = *(a5 + 68);
  *&v275[48] = *(a5 + 32);
  *v274 = &v275[50];
  STEU_Encode(v9, 97, v275, v274);
  if (*v274 - v275 != 51)
  {
    gn_report_assertion_failure("ME_enc_a: Wrong Length!");
  }

  v40 = *(v9 + 2) - *v9;
  if (v40 <= 0)
  {
    v40 += *(v9 + 6) - *(v9 + 4);
  }

  v271 = (a5 + 0x2000);
  v265 = a3;
  v267 = a4;
  if (v40 <= 0x1FF)
  {
    GNSS_Write_GNB_Ctrl(v9);
  }

  GNB_Debug_Flush_Check();
  v41 = 0;
  v42 = 0;
  LOBYTE(v273) = 0;
  v43 = *(&xmmword_2A1454168 + 1);
  v270 = v268 + 6194;
  v262 = *(&xmmword_2A1454168 + 1) + 1880;
  do
  {
    v44 = *(v270 + 2 * v41);
    if (v44 >= 1)
    {
      v45 = *(v268 + 5976 + (v44 - 1));
      if ((v45 & 0x8000000000000000) == 0)
      {
        v46 = v268 + 72 + 48 * v45;
        if (*(v46 + 4) == 1)
        {
          v47 = *(v46 + 14);
          if (*(v46 + 12))
          {
            v47 |= 0x10u;
          }

          if (*(v46 + 13))
          {
            v48 = v47 | 0x20;
          }

          else
          {
            v48 = v47;
          }

          *&v49 = *(v46 + 32) * 0.000000977517107;
          v50 = *&v49 + *(v46 + 28) * 1.5;
          LOWORD(v49) = *(v46 + 36);
          v51 = v50 + v49 * 1.49157273e-11;
          v52 = *(v46 + 8);
          v53 = *(v46 + 10);
          if (v52 == 2)
          {
            v53 = v53;
            if ((v53 - 7) < 0xF2u)
            {
              goto LABEL_95;
            }

            v51 = v51 + (10800 - *(v268 + 52)) + *(v262 + 8 * (v53 + 7)) * -0.00000000333564095;
            v54 = 86400.0;
          }

          else
          {
            if (v52 == 4)
            {
              v51 = v51 + -14.0;
              if (*(v46 + 9) == 12)
              {
                v51 = v51 + *(v43 + 2000) * -0.00000000333564095;
              }
            }

            v54 = 604800.0;
          }

          if (v51 >= 0.0)
          {
            v55 = v51;
          }

          else
          {
            v55 = v54 + v51;
          }

          while (v55 > v54)
          {
            v55 = v55 - v54;
          }

          v56 = Encode_SVid_STE(*(v46 + 8), v53, &v273);
          if (v273)
          {
            v58 = v56 == 0;
          }

          else
          {
            v58 = 1;
          }

          if (v58)
          {
            EvCrt_nd("ME_enc_s: Invalid Constel / SV ID ", 2, v57, v273, v56);
          }

          else
          {
            v275[0] = v273;
            v275[1] = v56;
            v275[2] = v48;
            v59 = (*(v46 + 22) * 48.7151802);
            *&v275[3] = v59;
            v275[5] = BYTE2(v59);
            *&v275[6] = (v55 * 1000.0);
            v275[8] = (v55 * 1000.0) >> 16;
            v60 = v55 * 1000.0 - (v55 * 1000.0);
            v275[9] = (v55 * 1000.0) >> 24;
            *&v275[10] = vcvtd_n_s64_f64(v60, 0x10uLL);
            LOWORD(v60) = *(v46 + 18);
            *&v275[12] = (*&v60 * 1.90293673);
            v61 = *(v46 + 26);
            if (v61 < 0x13FB)
            {
              v65 = 3439332561 * (v61 << 16);
              v63 = v65 >> 45;
              v64 = v65 >> 53;
            }

            else
            {
              if (v52 == 3)
              {
                v62 = 65280;
              }

              else
              {
                v62 = 0x8000;
              }

              if (v52 == 3)
              {
                LOBYTE(v63) = -1;
              }

              else
              {
                LOBYTE(v63) = 0;
              }

              LODWORD(v64) = v62 >> 8;
            }

            v275[14] = v63;
            v275[15] = v64;
            *&v66 = *(v46 + 38) * 0.475734182;
            v67 = *&v66;
            v275[16] = *(v46 + 24);
            LOBYTE(v66) = *(v46 + 40);
            v68 = (v66 * 1.90293673);
            *&v275[17] = v67;
            if (v68 >= 0xFF)
            {
              LOBYTE(v68) = -1;
            }

            v275[19] = v68;
            *&v275[20] = *(v46 + 41);
            *&v275[22] = 0;
            v275[26] = *(v46 + 43);
            *&v275[27] = *(v46 + 44);
            *v274 = &v275[29];
            STEU_Encode(v9, 115, v275, v274);
            if (*v274 - v275 != 30)
            {
              gn_report_assertion_failure("ME_enc_s: Wrong Length!");
            }

            if ((++v42 & 7) == 0)
            {
              v69 = *(v9 + 2) - *v9;
              if (v69 <= 0)
              {
                v69 += *(v9 + 6) - *(v9 + 4);
              }

              if (v69 <= 0x1FF)
              {
                GNSS_Write_GNB_Ctrl(v9);
              }

              GNB_Debug_Flush_Check();
            }
          }
        }
      }
    }

LABEL_95:
    ++v41;
  }

  while (v41 != 218);
  if (*(v13 + 630))
  {
    v70 = 0;
    v71 = (v268 + 5588);
    do
    {
      v72 = v9;
      if ((*(v71 - 20) & 1) == 0)
      {
        gn_report_assertion_failure("ME_enc_s: SBAS AA not valid!");
      }

      v73 = *(v71 - 30);
      v74 = *(v71 - 32);
      v75 = *(v71 - 31);
      v76 = Encode_SVid_STE(*(v71 - 36), *(v71 - 34), &v273);
      if (v273 != 2 || v76 == 0)
      {
        EvCrt_nd("ME_enc_s: S Invalid STE SV / Constel ID ", 2, v77, v273, v76);
        v9 = v72;
      }

      else
      {
        v79 = v73 | 0x10;
        if (!v74)
        {
          v79 = v73;
        }

        if (v75)
        {
          v79 |= 0x20u;
        }

        v275[0] = 2;
        v275[1] = v76;
        v275[2] = v79;
        v80 = (*(v71 - 11) * 48.7151802);
        *&v275[3] = v80;
        v81 = *(v71 - 4);
        v82 = *(v71 - 3);
        v275[5] = BYTE2(v80);
        *&v83 = v82 * 0.000000977517107;
        v84 = *&v83 + v81 * 1.5;
        LOWORD(v83) = *(v71 - 4);
        v85 = (v84 + v83 * 1.49157273e-11) * 1000.0;
        *&v275[6] = v85;
        v275[8] = v85 >> 16;
        v275[9] = v85 >> 24;
        v86 = v85 - v85;
        *&v275[10] = vcvtd_n_s64_f64(v86, 0x10uLL);
        LOWORD(v86) = *(v71 - 13);
        *&v275[12] = (*&v86 * 1.90293673);
        *&v275[14] = (3439332561u * (*(v71 - 9) << 16)) >> 45;
        *&v87 = *(v71 - 3) * 0.475734182;
        v88 = *&v87;
        v275[16] = *(v71 - 20);
        LOBYTE(v87) = *(v71 - 4);
        v89 = (v87 * 1.90293673);
        *&v275[17] = v88;
        if (v89 >= 0xFF)
        {
          LOBYTE(v89) = -1;
        }

        v275[19] = v89;
        *&v275[20] = *(v71 - 3);
        *&v275[22] = 0;
        v275[26] = *(v71 - 1);
        *&v275[27] = *v71;
        *v274 = &v275[29];
        v9 = v72;
        STEU_Encode(v72, 115, v275, v274);
        if (*v274 - v275 != 30)
        {
          gn_report_assertion_failure("ME_enc_s: S Wrong Length!");
        }

        if ((++v42 & 7) == 0)
        {
          v90 = *(v72 + 2) - *v72;
          if (v90 <= 0)
          {
            v90 += *(v72 + 6) - *(v72 + 4);
          }

          if (v90 <= 0x1FF)
          {
            GNSS_Write_GNB_Ctrl(v72);
          }

          GNB_Debug_Flush_Check();
        }
      }

      ++v70;
      v71 += 24;
    }

    while (v70 < *(v13 + 630));
  }

  v91 = *(v9 + 2) - *v9;
  v92 = v268 + 6194;
  if (v91 <= 0)
  {
    v91 += *(v9 + 6) - *(v9 + 4);
  }

  if (v91 <= 0x1FF)
  {
    GNSS_Write_GNB_Ctrl(v9);
  }

  GNB_Debug_Flush_Check();
  LODWORD(v273) = 0;
  if (*(v13 + 400))
  {
    v93 = 0;
    v94 = 0;
    v95 = 0;
    v96 = 0;
    v97 = 0;
    v98 = 0;
    do
    {
      Constell_Prn = Get_Constell_Prn((*(v270 + 2 * v93) - 1));
      if (Constell_Prn == 6)
      {
        v100 = v94 + 1;
      }

      else
      {
        v100 = v94;
      }

      if (Constell_Prn == 5)
      {
        v101 = v95 + 1;
      }

      else
      {
        v101 = v95;
      }

      if (Constell_Prn == 5)
      {
        v100 = v94;
      }

      if (Constell_Prn == 4)
      {
        v102 = v96 + 1;
      }

      else
      {
        v102 = v96;
      }

      if (Constell_Prn == 4)
      {
        v101 = v95;
        v100 = v94;
      }

      if (Constell_Prn == 3)
      {
        v103 = v97 + 1;
      }

      else
      {
        v103 = v97;
      }

      if (Constell_Prn == 1)
      {
        v104 = v98 + 1;
      }

      else
      {
        v104 = v98;
      }

      if (Constell_Prn == 1)
      {
        v103 = v97;
      }

      if (Constell_Prn > 3)
      {
        v96 = v102;
        v95 = v101;
        v94 = v100;
      }

      else
      {
        v98 = v104;
        v97 = v103;
      }

      ++v93;
    }

    while (v93 < v271[400]);
    LODWORD(v273) = Constell_Prn;
  }

  else
  {
    LOBYTE(v98) = 0;
    LOBYTE(v97) = 0;
    LOBYTE(v96) = 0;
    LOBYTE(v95) = 0;
    LOBYTE(v94) = 0;
  }

  v254 = v97;
  v256 = v96;
  v261 = v95;
  v266 = v94;
  v264 = v9;
  if (v271[401])
  {
    v105 = 0;
    v106 = 0;
    v107 = 0;
    v108 = 0;
    v109 = 0;
    v110 = 0;
    do
    {
      v111 = Get_Constell_Prn((*(v268 + 6630 + 2 * v105) - 1));
      if (v111 == 6)
      {
        v112 = v106 + 1;
      }

      else
      {
        v112 = v106;
      }

      if (v111 == 5)
      {
        v113 = v107 + 1;
      }

      else
      {
        v113 = v107;
      }

      if (v111 == 5)
      {
        v112 = v106;
      }

      if (v111 == 4)
      {
        v114 = v108 + 1;
      }

      else
      {
        v114 = v108;
      }

      if (v111 == 4)
      {
        v113 = v107;
        v112 = v106;
      }

      if (v111 == 3)
      {
        v115 = v109 + 1;
      }

      else
      {
        v115 = v109;
      }

      if (v111 == 1)
      {
        v116 = v110 + 1;
      }

      else
      {
        v116 = v110;
      }

      if (v111 == 1)
      {
        v115 = v109;
      }

      if (v111 > 3)
      {
        v108 = v114;
        v107 = v113;
        v106 = v112;
      }

      else
      {
        v110 = v116;
        v109 = v115;
      }

      ++v105;
    }

    while (v105 < v271[401]);
    v257 = v107;
    LODWORD(v273) = v111;
    v9 = v264;
  }

  else
  {
    LOBYTE(v110) = 0;
    LOBYTE(v109) = 0;
    LOBYTE(v108) = 0;
    v257 = 0;
    LOBYTE(v106) = 0;
  }

  v255 = v108;
  v263 = v106;
  if (v271[403])
  {
    v117 = 0;
    v118 = 0;
    v119 = 0;
    v120 = 0;
    v121 = 0;
    v122 = 0;
    do
    {
      v123 = v119;
      v124 = v118;
      v125 = Get_Constell_Prn((*(v268 + 7066 + 2 * v117) - 1));
      v118 = v124;
      if (v125 == 6)
      {
        v126 = v124 + 1;
      }

      else
      {
        v126 = v124;
      }

      if (v125 == 5)
      {
        v127 = v123 + 1;
      }

      else
      {
        v127 = v123;
      }

      if (v125 == 5)
      {
        v126 = v124;
      }

      if (v125 == 4)
      {
        v128 = v120 + 1;
      }

      else
      {
        v128 = v120;
      }

      if (v125 == 4)
      {
        v127 = v123;
        v126 = v124;
      }

      if (v125 == 3)
      {
        v129 = v121 + 1;
      }

      else
      {
        v129 = v121;
      }

      if (v125 == 1)
      {
        v130 = v122 + 1;
      }

      else
      {
        v130 = v122;
      }

      if (v125 == 1)
      {
        v129 = v121;
      }

      if (v125 > 3)
      {
        v120 = v128;
        v119 = v127;
      }

      else
      {
        v122 = v130;
        v121 = v129;
        v119 = v123;
      }

      if (v125 > 3)
      {
        v118 = v126;
      }

      ++v117;
    }

    while (v117 < v271[403]);
    v252 = v120;
    v269 = v118;
    LODWORD(v273) = v125;
    v9 = v264;
    v92 = v268 + 6194;
  }

  else
  {
    LOBYTE(v122) = 0;
    LOBYTE(v121) = 0;
    v252 = 0;
    LOBYTE(v119) = 0;
    v269 = 0;
  }

  v131 = &v275[2];
  memset(&v275[2], 0, 258);
  v275[0] = 1;
  v275[1] = v98;
  *v274 = &v275[2];
  v132 = &v275[2];
  if (v271[400])
  {
    v133 = 0;
    do
    {
      v134 = LongPrnIdx_To_ShortPrnIdx((*(v92 + 2 * v133) - 1), &v273);
      if (v273 == 1)
      {
        **v274 = v134 + 1;
        ++*v274;
      }

      ++v133;
    }

    while (v133 < v271[400]);
    v132 = *v274;
  }

  *v132 = v110;
  ++*v274;
  if (v271[401])
  {
    v135 = 0;
    do
    {
      v136 = LongPrnIdx_To_ShortPrnIdx((*(v268 + 6630 + 2 * v135) - 1), &v273);
      if (v273 == 1)
      {
        **v274 = v136 + 1;
        ++*v274;
      }

      ++v135;
    }

    while (v135 < v271[401]);
  }

  if (v267[14])
  {
    **v274 = v122;
    ++*v274;
    if (v271[403])
    {
      v137 = 0;
      do
      {
        v138 = LongPrnIdx_To_ShortPrnIdx((*(v268 + 7066 + 2 * v137) - 1), &v273);
        if (v273 == 1)
        {
          **v274 = v138 + 1;
          ++*v274;
        }

        ++v137;
      }

      while (v137 < v271[403]);
    }
  }

  else
  {
    **v274 = 0;
    ++*v274;
  }

  STEU_Encode(v9, 118, v275, v274);
  if ((*v274 - v275) >= 70)
  {
    gn_report_assertion_failure("ME_enc_v: G Too Long!");
  }

  memset(&v275[2], 0, 258);
  v275[0] = 4;
  v275[1] = v271[478];
  v139 = &v275[2];
  *v274 = &v275[2];
  if (v275[1] >= 1)
  {
    v140 = 0;
    v139 = &v275[2];
    do
    {
      *v139 = *(v268 + 8656 + v140) + 8;
      v139 = ++*v274;
      ++v140;
    }

    while (v140 < v271[478]);
  }

  *v139 = v271[479];
  v141 = ++*v274;
  for (j = 2150; j != 2164; ++j)
  {
    if (!*(v268 + 4 * j))
    {
      *v141 = j - 101;
      v141 = ++*v274;
    }
  }

  if (v267[15])
  {
    v143 = 0;
    *v141 = v271[480];
    v144 = ++*v274;
    do
    {
      if (*(v268 + 8600 + 4 * v143) == 3)
      {
        *v144 = v143 + 1;
        v144 = ++*v274;
      }

      ++v143;
    }

    while (v143 != 14);
  }

  else
  {
    *v141 = 0;
    ++*v274;
  }

  STEU_Encode(v9, 118, v275, v274);
  if ((*v274 - v275) >= 70)
  {
    gn_report_assertion_failure("ME_enc_v: R Too Long!");
  }

  memset(&v275[2], 0, 258);
  v275[0] = 5;
  v275[1] = v254;
  *v274 = &v275[2];
  v145 = &v275[2];
  v146 = v271;
  if (v271[400])
  {
    v147 = 0;
    do
    {
      v148 = LongPrnIdx_To_ShortPrnIdx((*(v92 + 2 * v147) - 1), &v273);
      if (v273 == 3)
      {
        **v274 = v148 + 65;
        ++*v274;
      }

      ++v147;
    }

    while (v147 < v271[400]);
    v145 = *v274;
  }

  *v145 = v109;
  ++*v274;
  v149 = v267;
  v150 = v265;
  if (v271[401])
  {
    v151 = 0;
    do
    {
      v152 = LongPrnIdx_To_ShortPrnIdx((*(v268 + 6630 + 2 * v151) - 1), &v273);
      if (v273 == 3)
      {
        **v274 = v152 + 65;
        ++*v274;
      }

      ++v151;
    }

    while (v151 < v271[401]);
  }

  if (v267[19])
  {
    **v274 = v121;
    ++*v274;
    v153 = v268;
    if (v271[403])
    {
      v154 = 0;
      do
      {
        v155 = LongPrnIdx_To_ShortPrnIdx((*(v268 + 7066 + 2 * v154) - 1), &v273);
        if (v273 == 3)
        {
          **v274 = v155 + 65;
          ++*v274;
        }

        ++v154;
      }

      while (v154 < v271[403]);
    }
  }

  else
  {
    **v274 = 0;
    ++*v274;
    v153 = v268;
  }

  STEU_Encode(v9, 118, v275, v274);
  if ((*v274 - v275) >= 70)
  {
    gn_report_assertion_failure("ME_enc_v: E Too Long!");
  }

  memset(&v275[2], 0, 258);
  v275[0] = 6;
  v275[1] = v256;
  *v274 = &v275[2];
  v156 = &v275[2];
  if (v271[400])
  {
    v157 = 0;
    do
    {
      v158 = LongPrnIdx_To_ShortPrnIdx((*(v92 + 2 * v157) - 1), &v273);
      if (v273 == 4)
      {
        **v274 = v158 - 127;
        ++*v274;
      }

      ++v157;
    }

    while (v157 < v271[400]);
    v156 = *v274;
  }

  *v156 = v255;
  ++*v274;
  if (v271[401])
  {
    v159 = 0;
    do
    {
      v160 = LongPrnIdx_To_ShortPrnIdx((*(v153 + 6630 + 2 * v159) - 1), &v273);
      if (v273 == 4)
      {
        **v274 = v160 - 127;
        ++*v274;
      }

      ++v159;
    }

    while (v159 < v271[401]);
  }

  if (v267[18])
  {
    **v274 = v252;
    ++*v274;
    if (v271[403])
    {
      v161 = 0;
      do
      {
        v162 = LongPrnIdx_To_ShortPrnIdx((*(v153 + 7066 + 2 * v161) - 1), &v273);
        if (v273 == 4)
        {
          **v274 = v162 - 127;
          ++*v274;
        }

        ++v161;
      }

      while (v161 < v271[403]);
    }
  }

  else
  {
    **v274 = 0;
    ++*v274;
  }

  STEU_Encode(v9, 118, v275, v274);
  if ((*v274 - v275) >= 70)
  {
    gn_report_assertion_failure("ME_enc_v: B Too Long!");
  }

  memset(&v275[2], 0, 258);
  v275[0] = 3;
  v275[1] = v261;
  *v274 = &v275[2];
  v163 = &v275[2];
  if (v271[400])
  {
    v164 = 0;
    do
    {
      v165 = LongPrnIdx_To_ShortPrnIdx((*(v92 + 2 * v164) - 1), &v273);
      if (v273 == 5)
      {
        **v274 = v165 - 63;
        ++*v274;
      }

      ++v164;
    }

    while (v164 < v271[400]);
    v163 = *v274;
  }

  *v163 = v257;
  ++*v274;
  if (v271[401])
  {
    v166 = 0;
    do
    {
      v167 = LongPrnIdx_To_ShortPrnIdx((*(v153 + 6630 + 2 * v166) - 1), &v273);
      if (v273 == 5)
      {
        **v274 = v167 - 63;
        ++*v274;
      }

      ++v166;
    }

    while (v166 < v271[401]);
  }

  if (v267[16])
  {
    **v274 = v119;
    ++*v274;
    if (v271[403])
    {
      v168 = 0;
      do
      {
        v169 = LongPrnIdx_To_ShortPrnIdx((*(v153 + 7066 + 2 * v168) - 1), &v273);
        if (v273 == 5)
        {
          **v274 = v169 - 63;
          ++*v274;
        }

        ++v168;
      }

      while (v168 < v271[403]);
    }
  }

  else
  {
    **v274 = 0;
    ++*v274;
  }

  STEU_Encode(v9, 118, v275, v274);
  if ((*v274 - v275) >= 70)
  {
    gn_report_assertion_failure("ME_enc_v: Q Too Long!");
  }

  memset(&v275[2], 0, 258);
  v275[0] = 7;
  v275[1] = v266;
  *v274 = &v275[2];
  v170 = &v275[2];
  if (v271[400])
  {
    v171 = 0;
    do
    {
      v172 = LongPrnIdx_To_ShortPrnIdx((*(v92 + 2 * v171) - 1), &v273);
      if (v273 == 6)
      {
        **v274 = v172 + 101;
        ++*v274;
      }

      ++v171;
    }

    while (v171 < v271[400]);
    v170 = *v274;
  }

  *v170 = v263;
  ++*v274;
  if (v271[401])
  {
    v173 = 0;
    do
    {
      v174 = LongPrnIdx_To_ShortPrnIdx((*(v153 + 6630 + 2 * v173) - 1), &v273);
      if (v273 == 6)
      {
        **v274 = v174 + 101;
        ++*v274;
      }

      ++v173;
    }

    while (v173 < v271[401]);
  }

  if (v267[20])
  {
    **v274 = v269;
    ++*v274;
    if (v271[403])
    {
      v175 = 0;
      do
      {
        v176 = LongPrnIdx_To_ShortPrnIdx((*(v153 + 7066 + 2 * v175) - 1), &v273);
        if (v273 == 6)
        {
          **v274 = v176 + 101;
          ++*v274;
        }

        ++v175;
      }

      while (v175 < v271[403]);
    }
  }

  else
  {
    **v274 = 0;
    ++*v274;
  }

  STEU_Encode(v9, 118, v275, v274);
  if ((*v274 - v275) >= 70)
  {
    gn_report_assertion_failure("ME_enc_v: N Too Long!");
  }

  v275[0] = 2;
  v275[1] = v271[630];
  *v274 = &v275[2];
  if (v275[1])
  {
    v177 = 0;
    do
    {
      *v131 = *(v153 + 8696 + v177);
      v131 = ++*v274;
      ++v177;
    }

    while (v177 < v271[630]);
  }

  v178 = v271[631];
  *v131 = v178;
  v179 = ++*v274;
  if (v178)
  {
    v180 = 0;
    do
    {
      *v179 = *(v153 + 8705 + v180);
      v179 = ++*v274;
      ++v180;
    }

    while (v180 < v271[631]);
  }

  v181 = v271[632];
  *v179 = v181;
  v182 = ++*v274;
  if (v181)
  {
    v183 = 0;
    do
    {
      *v182 = *(v153 + 8744 + v183);
      v182 = ++*v274;
      ++v183;
    }

    while (v183 < v271[632]);
  }

  STEU_Encode(v9, 118, v275, v274);
  if ((*v274 - v275) >= 70)
  {
    gn_report_assertion_failure("ME_enc_v: S Too Long!");
  }

  v184 = *(v9 + 2) - *v9;
  if (v184 <= 0)
  {
    v184 += *(v9 + 6) - *(v9 + 4);
  }

  if (v184 <= 0x1FF)
  {
    GNSS_Write_GNB_Ctrl(v9);
  }

  GNB_Debug_Flush_Check();
  v185 = &v275[1];
  memset(v275, 0, sizeof(v275));
  *v274 = &v275[1];
  v186 = v271[400];
  if (!v186)
  {
    v189 = 0;
    goto LABEL_368;
  }

  v187 = v153;
  v188 = 0;
  v189 = 0;
  v190 = 0;
  v191 = v187 + 8656;
  while (2)
  {
    v192 = *(v270 + 2 * v188);
    if (v192 >= 1)
    {
      LODWORD(v273) = 0;
      v272 = 0;
      v193 = LongPrnIdx_To_ShortPrnIdx((v192 - 1), &v273);
      if (v273 == 2)
      {
        if (v190 <= 13 && v271[478] > v190)
        {
          v194 = *(v191 + v190) + 8;
          v272 = 4;
          ++v190;
          goto LABEL_358;
        }
      }

      else
      {
        v194 = Encode_SVid_STE(v273, Prn_Offset[v273] + v193, &v272);
LABEL_358:
        if ((v194 - 256) > 0xFFFFFF00)
        {
          v196 = v272;
          if (v272)
          {
            *v185 = v194;
            v185[1] = v196;
            v185 += 2;
            ++v189;
            goto LABEL_364;
          }

          v195 = "ME_enc_o:  Illegal STE Constel ID ";
          v194 = 0;
        }

        else
        {
          v195 = "ME_enc_o:  Illegal STE SV ID ";
        }

        EvLog_d(v195, v194);
      }

LABEL_364:
      v186 = v271[400];
    }

    if (++v188 < v186)
    {
      continue;
    }

    break;
  }

  *v274 = v185;
  v149 = v267;
  v153 = v268;
  v150 = v265;
  v146 = v271;
LABEL_368:
  v275[0] = v189;
  if (v146[404] != v189 || v189 != v186)
  {
    EvLog_v("ME_enc_o:  num_Priority_SV  %d   !=  num_AA %d  or  num_vis %d", v189, v146[404], v186);
  }

  STEU_Encode(v9, 111, v275, v274);
  if ((*v274 - v275) >= 258)
  {
    gn_report_assertion_failure("ME_enc_o: Too long!");
  }

  v197 = *(v9 + 2) - *v9;
  if (v197 <= 0)
  {
    v197 += *(v9 + 6) - *(v9 + 4);
  }

  if (v197 <= 0x1FF)
  {
    GNSS_Write_GNB_Ctrl(v9);
  }

  GNB_Debug_Flush_Check();
  v198 = *(v150 + 28240);
  if (!v198)
  {
    goto LABEL_381;
  }

  v199 = *(v150 + 440) - v198;
  if (v199 < 0)
  {
    v199 = -v199;
  }

  if (v199 >> 5 >= 0x753)
  {
LABEL_381:
    v200 = 0;
    *&v275[6] = 0;
    *v275 = 0;
    v201 = *(v153 + 8680);
    while (*(v201 + v200) != 2139062143)
    {
      v200 += 4;
      if (v200 == 96)
      {
        v202 = 0;
        *&v275[6] = 0x101010101010101;
        *v275 = 0x101010101010101;
        v203 = *(v149 + 132);
        do
        {
          if ((*(v203 + v202) & 1) == 0)
          {
            v275[*(v201 + 4 * v202) + 7] = 0;
          }

          ++v202;
        }

        while (v202 != 24);
        break;
      }
    }

    Encode_b(v9, 1, 0, 1u, 0x20u, *(v149 + 131));
    Encode_b(v9, 1, 3, 1u, 0x20u, *(v149 + 166));
    Encode_b(v9, 2, 4, 0xFFFFFFF9, 0xEu, v275);
    Encode_b(v9, 3, 8, 1u, 0x24u, *(v149 + 136));
    Encode_b(v9, 4, 11, 1u, 0x3Fu, *(v149 + 135));
    Encode_b(v9, 5, 0, 0xC1u, 0xAu, *(v149 + 133));
    Encode_b(v9, 6, 3, 1u, 0xEu, *(v149 + 172));
    Encode_b(v9, 7, 0, 0x78u, 0x27u, *(v149 + 134));
    *(v150 + 28240) = *(v150 + 440);
    v204 = *(v9 + 2) - *v9;
    if (v204 <= 0)
    {
      v204 += *(v9 + 6) - *(v9 + 4);
    }

    if (v204 <= 0x1FF)
    {
      GNSS_Write_GNB_Ctrl(v9);
    }

    GNB_Debug_Flush_Check();
  }

  if (*(a6 + 444))
  {
    goto LABEL_397;
  }

  v205 = 0;
  v206 = a6 + 448;
  v207 = 0uLL;
  v208.i64[0] = 0x100000001;
  v208.i64[1] = 0x100000001;
  v209 = 0uLL;
  v210 = 0uLL;
  v211 = 0uLL;
  do
  {
    v212 = vtstq_s8(*(v206 + v205), *(v206 + v205));
    v213 = vmovl_u8(*v212.i8);
    v214 = vmovl_high_u8(v212);
    v211 = vaddq_s32(v211, vandq_s8(vmovl_high_u16(v214), v208));
    v210 = vaddq_s32(v210, vandq_s8(vmovl_u16(*v214.i8), v208));
    v209 = vaddq_s32(v209, vandq_s8(vmovl_high_u16(v213), v208));
    v207 = vaddq_s32(v207, vandq_s8(vmovl_u16(*v213.i8), v208));
    v205 += 16;
  }

  while (v205 != 128);
  v215 = vaddvq_s32(vaddq_s32(vaddq_s32(v207, v210), vaddq_s32(v209, v211)));
  if (v215 == 128)
  {
LABEL_397:
    v275[0] = -1;
    *v274 = &v275[1];
    goto LABEL_398;
  }

  if ((v215 - 1) <= 0x7E)
  {
    v216 = 0;
    v275[0] = v215;
    v217 = &v275[1];
    do
    {
      if (*(v206 + v216))
      {
        *v217 = v216;
        v217[1] = *(v206 + v216);
        v217 += 2;
      }

      ++v216;
    }

    while (v216 != 128);
    *v274 = v217;
    if (v217 > v275)
    {
LABEL_398:
      STEU_Encode(v9, 105, v275, v274);
      if ((*v274 - v275) >= 260)
      {
        gn_report_assertion_failure("ME_enc_i: Too long!");
      }
    }
  }

  v218 = *(v9 + 2) - *v9;
  if (v218 <= 0)
  {
    v218 += *(v9 + 6) - *(v9 + 4);
  }

  if (v218 <= 0x1FF)
  {
    GNSS_Write_GNB_Ctrl(v9);
  }

  GNB_Debug_Flush_Check();
  *&v275[8] = 0;
  *&v275[1] = 0;
  v275[0] = v149[12];
  STEU_Encode_c(v9, 80, 12, v275);
  if (v259)
  {
    *&v275[10] = 0;
    *&v275[6] = 0;
    v275[0] = HIBYTE(v259);
    v275[1] = BYTE2(v259);
    v275[2] = BYTE1(v259);
    v275[3] = v259;
    v275[4] = HIBYTE(v253);
    v275[5] = v253;
    STEU_Encode_c(v9, 79, 12, v275);
  }

  *v275 = 0;
  *&v275[8] = 0;
  v219 = *(v149 + 1);
  *&v275[1] = v219;
  if (v219 == 2)
  {
    if (*(v153 + 60) < 3u || !*v149)
    {
      v275[1] = 0;
      v220 = (v153 + 84);
      v221 = 123;
      v222 = 123;
      while (1)
      {
        if (*v220 != 1 || *(v220 - 8) != 1 || (*(v220 - 1) ? (v223 = *(v220 - 1) == 7) : (v223 = 1), v223))
        {
          if (--v222 < 6)
          {
            break;
          }
        }

        v220 += 48;
        if (!--v221)
        {
          LOBYTE(v219) = 0;
          goto LABEL_427;
        }
      }
    }

    LOBYTE(v219) = 1;
    v275[1] = 1;
  }

LABEL_427:
  *(v149 + 2) = v219;
  v224 = v149[65];
  v275[2] = v224;
  v225 = v149[14];
  if (v225 == 1 && v149[21] == 1)
  {
    v275[2] = ++v224;
  }

  v226 = v149[17];
  if (v226 == 1 && v149[24] == 1)
  {
    v224 += 2;
    v275[2] = v224;
  }

  v227 = v149[16];
  if (v227 == 1 && v149[23] == 1)
  {
    v224 += 4;
    v275[2] = v224;
  }

  v228 = v149[15];
  if (v228 == 1 && v149[22] == 1)
  {
    v224 += 8;
    v275[2] = v224;
  }

  v229 = v149[19];
  if (v229 == 1 && v149[26] == 1)
  {
    v224 += 16;
    v275[2] = v224;
  }

  v230 = v149[18];
  if (v230 == 1 && v149[25] == 1)
  {
    v224 += 32;
    v275[2] = v224;
  }

  v231 = v149[20];
  if (v231 == 1 && v149[27] == 1)
  {
    v275[2] = v224 + 64;
  }

  if (!v225)
  {
    v232 = 0;
    if (!v226)
    {
      goto LABEL_453;
    }

    goto LABEL_452;
  }

  v232 = 1;
  v275[3] = 1;
  if (v226)
  {
LABEL_452:
    v232 |= 2u;
    v275[3] = v232;
  }

LABEL_453:
  if (v227)
  {
    v232 |= 4u;
    v275[3] = v232;
    if (!v228)
    {
      goto LABEL_455;
    }

LABEL_463:
    v232 |= 8u;
    v275[3] = v232;
    if (!v229)
    {
      goto LABEL_464;
    }

LABEL_456:
    v232 |= 0x10u;
    v275[3] = v232;
    if (!v230)
    {
      goto LABEL_457;
    }

LABEL_465:
    v232 |= 0x20u;
    v275[3] = v232;
    if (!v231)
    {
      goto LABEL_466;
    }

LABEL_458:
    v275[3] = v232 | 0x40;
    if (!v225)
    {
      goto LABEL_459;
    }

LABEL_467:
    v225 = v149[28];
    if (v225 == 1)
    {
      v275[4] = 1;
      if (!v226)
      {
        goto LABEL_471;
      }

LABEL_460:
      if (v149[31] == 1)
      {
        LOBYTE(v225) = v225 | 2;
        v275[4] = v225;
      }
    }

    else
    {
      LOBYTE(v225) = 0;
      if (v226)
      {
        goto LABEL_460;
      }
    }
  }

  else
  {
    if (v228)
    {
      goto LABEL_463;
    }

LABEL_455:
    if (v229)
    {
      goto LABEL_456;
    }

LABEL_464:
    if (v230)
    {
      goto LABEL_465;
    }

LABEL_457:
    if (v231)
    {
      goto LABEL_458;
    }

LABEL_466:
    if (v225)
    {
      goto LABEL_467;
    }

LABEL_459:
    if (v226)
    {
      goto LABEL_460;
    }
  }

LABEL_471:
  if (v227 && v149[30] == 1)
  {
    LOBYTE(v225) = v225 | 4;
    v275[4] = v225;
  }

  if (v228 && v149[29] == 1)
  {
    LOBYTE(v225) = v225 | 8;
    v275[4] = v225;
  }

  if (v229 && v149[33] == 1)
  {
    LOBYTE(v225) = v225 | 0x10;
    v275[4] = v225;
  }

  if (v230 && v149[32] == 1)
  {
    LOBYTE(v225) = v225 | 0x20;
    v275[4] = v225;
  }

  if (v231 && v149[34] == 1)
  {
    v275[4] = v225 | 0x40;
  }

  if (v149[43] == 1)
  {
    v275[5] = 1;
  }

  if (v149[44] == 1)
  {
    v275[6] = 1;
  }

  if (v149[42] == 1)
  {
    v275[7] = 1;
  }

  if (v149[45] == 1)
  {
    v275[8] = 1;
  }

  v233 = v149[35];
  if (v233 == 1)
  {
    v275[9] = 1;
  }

  else
  {
    LOBYTE(v233) = 0;
  }

  if (v149[38] == 1)
  {
    LOBYTE(v233) = v233 | 2;
    v275[9] = v233;
  }

  if (v149[37] == 1)
  {
    LOBYTE(v233) = v233 | 4;
    v275[9] = v233;
  }

  if (v149[36] == 1)
  {
    LOBYTE(v233) = v233 | 8;
    v275[9] = v233;
  }

  if (v149[40] == 1)
  {
    LOBYTE(v233) = v233 | 0x10;
    v275[9] = v233;
  }

  if (v149[39] == 1)
  {
    LOBYTE(v233) = v233 | 0x20;
    v275[9] = v233;
  }

  if (v149[41] == 1)
  {
    v275[9] = v233 | 0x40;
  }

  STEU_Encode_c(v9, 67, 12, v275);
  v234 = 0;
  *&v275[10] = 0;
  *&v275[6] = 0;
  v235 = *(v149 + 521) - 1;
  if (v235 <= 0xA)
  {
    v234 = byte_2990505B0[v235];
  }

  v275[0] = v234;
  v236 = *(v149 + 523);
  if (v236 >= 4)
  {
    v237 = -1;
  }

  else
  {
    v237 = 0x4B3219FFu >> (8 * v236);
  }

  v275[1] = v237;
  v238 = *(v149 + 518);
  if (v238 >= 4)
  {
    LOBYTE(v238) = 0;
  }

  v275[2] = v238;
  v239 = *(v149 + 520);
  if (v239 >= 4)
  {
    v240 = -1;
  }

  else
  {
    v240 = 0x4B3219FFu >> (8 * v239);
  }

  v275[3] = v240;
  v241 = *(v149 + 524);
  if (v241 >= 4)
  {
    v242 = 0;
  }

  else
  {
    v242 = 0x1010300u >> (8 * v241);
  }

  v275[4] = v242;
  v243 = *(v149 + 526);
  if (v243 >= 4)
  {
    v244 = -1;
  }

  else
  {
    v244 = 0x4B3219FFu >> (8 * v243);
  }

  v275[5] = v244;
  if (v149[45])
  {
    LOBYTE(v245) = 1;
    goto LABEL_529;
  }

  if (*(p_NA + 381) == 1)
  {
    v245 = *(p_NA + 26780);
LABEL_529:
    v275[6] = v245;
  }

  STEU_Encode_c(v9, 65, 12, v275);
  if (v149[2144] == 1)
  {
    *&v274[4] = 0;
    v246 = *(v149 + 132);
    v247 = *(v149 + 133);
    v248 = vmovn_s32(vuzp1q_s32(vcgtzq_f64(v246), vcgtzq_f64(v247)));
    *&v246.f64[0] = vorn_s8(vand_s8(vmovn_s32(vuzp1q_s32(vcvtq_n_s64_f64(v246, 2uLL), vcvtq_n_s64_f64(v247, 2uLL))), v248), v248);
    *v274 = vuzp1_s8(*&v246.f64[0], *&v246.f64[0]).u32[0];
    STEU_Encode_c(v9, 90, 12, v274);
  }

  *&v274[8] = 0;
  *&v274[1] = 0;
  v274[0] = v149[13];
  STEU_Encode_c(v9, 69, 12, v274);
  *v275 = *v153;
  v273 = &v275[4];
  STEU_Encode(v9, 116, v275, &v273);
  if (v273 - v275 != 6)
  {
    gn_report_assertion_failure("ME_enc_t: Wrong Length!");
  }

  v249 = (*v9)++;
  *v249 = 10;
  if (*v9 >= v9[3])
  {
    *v9 = v9[2];
  }

  GNSS_Write_GNB_Ctrl(v9);
  result = GNSS_GNB_Debug_Ctl(a2);
  v251 = *MEMORY[0x29EDCA608];
  return result;
}