uint64_t FpeManager_FlushInFIFOs(uint64_t a1)
{
  v2 = 0;
  v5 = *MEMORY[0x29EDCA608];
  do
  {
    result = isMeasDataType(v2);
    if (result)
    {
      result = ExtMeasExtract_FlushMemory(a1 + 24, *(a1 + 87976), v2);
    }

    ++v2;
  }

  while (v2 != 15);
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lsim03_01SendPosnApiStatus(int a1, int a2, int a3, int a4)
{
  v24 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "lsim03_01SendPosnApiStatus");
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  if ((a2 - 1) <= 1)
  {
    v10 = gnssOsa_Calloc("lsim03_01SendPosnApiStatus", 181, 1, 0x285A0uLL);
    if (v10)
    {
      v11 = v10;
      v10[1] = a4;
      v10[2] = a3;
      *v10 = a1;
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 3, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:API_STATUS =>CpCB,Api,%u,Status,%u,SId,%u,Src,%u\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 77, "lsim03_01SendPosnApiStatus", a4, a3, a1, a2);
        LbsOsaTrace_WriteLog(0xCu, __str, v13, 3, 1);
      }

      GNS_ExecuteCpCb();
LABEL_13:
      free(v11);
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  if ((a2 - 3) <= 1)
  {
    v14 = gnssOsa_Calloc("lsim03_01SendPosnApiStatus", 204, 1, 0x285A0uLL);
    if (v14)
    {
      v11 = v14;
      v14[1] = a4;
      v14[2] = a3;
      *v14 = a1;
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 3, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v15 = mach_continuous_time();
        v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:API_STATUS =>PospCB,Api,%u,Status,%u,SId,%u,Src,%u\n", (*&g_MacClockTicksToMsRelation * v15), "LSM", 77, "lsim03_01SendPosnApiStatus", a4, a3, a1, a2);
        LbsOsaTrace_WriteLog(0xCu, __str, v16, 3, 1);
      }

      GNS_ExecutePospCallback(4, 165280, v11);
      goto LABEL_13;
    }

LABEL_14:
    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
    if (result)
    {
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v18 = mach_continuous_time();
    v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SId,%u,Src,%u\n", (*&g_MacClockTicksToMsRelation * v18), "LSM", 87, "lsim03_01SendPosnApiStatus", 515, a1, a2);
    LbsOsaTrace_WriteLog(0xCu, __str, v19, 2, 1);
  }

LABEL_18:
  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
  if (result)
  {
LABEL_19:
    bzero(__str, 0x410uLL);
    v20 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v20, "LSM", 73, "lsim03_01SendPosnApiStatus");
    result = LbsOsaTrace_WriteLog(0xCu, __str, v21, 4, 1);
  }

LABEL_20:
  v22 = *MEMORY[0x29EDCA608];
  return result;
}

_BYTE *lsim03_11PrintAidRequestParams(void *a1, const char *a2)
{
  v19 = *MEMORY[0x29EDCA608];
  if (a1 && a1[1])
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v5 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v6 = a1[1];
      v7 = *v6;
      v8 = v6[1];
      v9 = v6[2] == 0;
      v10 = 78;
      if (v9)
      {
        v11 = 78;
      }

      else
      {
        v11 = 89;
      }

      if (v8)
      {
        v12 = 89;
      }

      else
      {
        v12 = 78;
      }

      if (v7)
      {
        v10 = 89;
      }

      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LSIMAR,%s,RefTime,%c,RefPos,%c,Iono,%c\n", v5, "LSM", 73, "lsim03_11PrintAidRequestParams", a2, v10, v12, v11);
      result = LbsOsaTrace_WriteLog(0xCu, __str, v13, 4, 1);
    }

    v14 = a1[1];
    if (v14[3] == 1)
    {
      result = a1[2];
      if (result)
      {
        result = lsim03_05TraceArPerConstel(result, "GPS ");
        v14 = a1[1];
      }
    }

    if (v14[4] == 1)
    {
      result = a1[3];
      if (result)
      {
        result = lsim03_05TraceArPerConstel(result, "GLON");
        v14 = a1[1];
      }
    }

    if (v14[7] == 1)
    {
      result = a1[6];
      if (result)
      {
        result = lsim03_05TraceArPerConstel(result, "BDS ");
        v14 = a1[1];
      }
    }

    if (v14[5] == 1)
    {
      result = a1[4];
      if (result)
      {
        result = lsim03_05TraceArPerConstel(result, "QZSS");
        v14 = a1[1];
      }
    }

    if (v14[6] == 1)
    {
      result = a1[5];
      if (result)
      {
        result = lsim03_05TraceArPerConstel(result, "SBAS");
      }
    }
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx AidReqParams\n", (*&g_MacClockTicksToMsRelation * v15), "LSM", 87, "lsim03_11PrintAidRequestParams", 513);
      result = LbsOsaTrace_WriteLog(0xCu, __str, v16, 2, 1);
    }
  }

  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lsim03_05TraceArPerConstel(_BYTE *a1, const char *a2)
{
  v20 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v5 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if (a1[11])
      {
        v6 = 89;
      }

      else
      {
        v6 = 78;
      }

      if (a1[9])
      {
        v7 = 89;
      }

      else
      {
        v7 = 78;
      }

      if (a1[10])
      {
        v8 = 89;
      }

      else
      {
        v8 = 78;
      }

      if (a1[5])
      {
        v9 = 89;
      }

      else
      {
        v9 = 78;
      }

      if (a1[12])
      {
        v10 = 89;
      }

      else
      {
        v10 = 78;
      }

      if (a1[4])
      {
        v11 = 89;
      }

      else
      {
        v11 = 78;
      }

      if (a1[8])
      {
        v12 = 89;
      }

      else
      {
        v12 = 78;
      }

      if (a1[7])
      {
        v13 = 89;
      }

      else
      {
        v13 = 78;
      }

      if (a1[6])
      {
        v14 = 89;
      }

      else
      {
        v14 = 78;
      }

      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s:  LSIMAR,%s,Alm,%c,Eph,%c,AcqA,%c,UtcM,%c,TimeM,%c,Rti,%c,Aux,%c,DBit,%c,GrIono,%c\n", v5, "LSM", 73, "lsim03_05TraceArPerConstel", a2, v14, v13, v12, v11, v10, v9, v8, v7, v6);
      v16 = 4;
      goto LABEL_33;
    }
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v17 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ArList\n", (*&g_MacClockTicksToMsRelation * v17), "LSM", 87, "lsim03_05TraceArPerConstel", 513);
      v16 = 2;
LABEL_33:
      result = LbsOsaTrace_WriteLog(0xCu, __str, v15, v16, 1);
    }
  }

  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lsim03_12UpdateAidReqParams(char *a1, void *a2, int a3, int a4)
{
  v38 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "lsim03_12UpdateAidReqParams");
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  if (!a2 || (v10 = a2[1]) == 0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v24 = mach_continuous_time();
      v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx AidReqParams\n", (*&g_MacClockTicksToMsRelation * v24), "LSM", 87, "lsim03_12UpdateAidReqParams", 513);
      LbsOsaTrace_WriteLog(0xCu, __str, v25, 2, 1);
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  v11 = *a1;
  if (*a1)
  {
    if ((*a1 & 2) != 0)
    {
      goto LABEL_7;
    }

LABEL_44:
    v10[1] = 0;
    if ((v11 & 4) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v10[2] = 0;
  if ((v11 & 2) == 0)
  {
    goto LABEL_44;
  }

LABEL_7:
  if ((v11 & 4) == 0)
  {
LABEL_8:
    *v10 = 0;
  }

LABEL_9:
  if (v10[3] == 1)
  {
    v12 = a2[2];
    if (v12)
    {
      lsim03_06UpdateAllowedArForConstel(*(a1 + 1), v12, v10 + 3);
      v10 = a2[1];
    }
  }

  if (v10[4] == 1)
  {
    v13 = a2[3];
    if (v13)
    {
      lsim03_06UpdateAllowedArForConstel(*(a1 + 2), v13, v10 + 4);
      v10 = a2[1];
    }
  }

  if (v10[5] == 1)
  {
    v14 = a2[4];
    if (v14)
    {
      lsim03_06UpdateAllowedArForConstel(*(a1 + 5), v14, v10 + 5);
      v10 = a2[1];
    }
  }

  if (v10[6] == 1)
  {
    v15 = a2[5];
    if (v15)
    {
      lsim03_06UpdateAllowedArForConstel(*(a1 + 4), v15, v10 + 6);
      v10 = a2[1];
    }
  }

  v17 = v10[7];
  v16 = v10 + 7;
  if (v17 == 1)
  {
    v18 = a2[6];
    if (v18)
    {
      lsim03_06UpdateAllowedArForConstel(*(a1 + 3), v18, v16);
    }
  }

  if ((~a3 & 0x21) != 0 && (a3 & 3) != 3)
  {
    goto LABEL_30;
  }

  v19 = a2[2];
  if (!v19)
  {
    v19 = gnssOsa_Calloc("lsim03_12UpdateAidReqParams", 939, 1, 0xD8uLL);
    a2[2] = v19;
    if (v19)
    {
      *(a2[1] + 3) = 1;
      goto LABEL_29;
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
LABEL_41:
      v21 = 0;
      goto LABEL_42;
    }

LABEL_40:
    bzero(__str, 0x410uLL);
    v26 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v26, "LSM", 73, "lsim03_12UpdateAidReqParams");
    LbsOsaTrace_WriteLog(0xCu, __str, v27, 4, 1);
    goto LABEL_41;
  }

LABEL_29:
  v19[4] = 1;
LABEL_30:
  if (a4)
  {
    lsim02_45CheckWithDeliveredAssistance(a2);
  }

  v20 = a2[1];
  if (v20[1] & 1) != 0 || (*v20 & 1) != 0 || v20[3] == 1 && (v30 = a2[2]) != 0 && ((v30[5] & 1) != 0 || (v30[6] & 1) != 0 || (v30[10] & 1) != 0 || (v30[9] & 1) != 0 || (v30[7] & 1) != 0 || (v30[8] & 1) != 0 || (v30[4] & 1) != 0 || (v30[12]) || v20[4] == 1 && (v31 = a2[3]) != 0 && ((v31[5] & 1) != 0 || (v31[6] & 1) != 0 || (v31[10] & 1) != 0 || (v31[9] & 1) != 0 || (v31[7] & 1) != 0 || (v31[8] & 1) != 0 || (v31[4] & 1) != 0 || (v31[12]) || v20[5] == 1 && (v32 = a2[4]) != 0 && ((v32[5] & 1) != 0 || (v32[6] & 1) != 0 || (v32[10] & 1) != 0 || (v32[9] & 1) != 0 || (v32[7] & 1) != 0 || (v32[8] & 1) != 0 || (v32[4] & 1) != 0 || (v32[12]) || v20[6] == 1 && (v33 = a2[5]) != 0 && ((v33[5] & 1) != 0 || (v33[6] & 1) != 0 || (v33[10] & 1) != 0 || (v33[9] & 1) != 0 || (v33[7] & 1) != 0 || (v33[8] & 1) != 0 || (v33[4] & 1) != 0 || (v33[12]) || v20[7] == 1 && (v34 = a2[6]) != 0 && ((v34[5] & 1) != 0 || (v34[6] & 1) != 0 || (v34[10] & 1) != 0 || (v34[9] & 1) != 0 || (v34[7] & 1) != 0 || (v34[8] & 1) != 0 || (v34[4] & 1) != 0 || (v34[12] & 1) != 0 || v34[11] == 1))
  {
    lsim03_11PrintAidRequestParams(a2, "POSITIONING AFTER MASKS");
    v21 = 1;
  }

  else
  {
    v21 = 0;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v35 = mach_continuous_time();
      v36 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: AR NOT NEEDED AFTER MASKS\n", (*&g_MacClockTicksToMsRelation * v35), "LSM", 73, "lsim03_12UpdateAidReqParams");
      LbsOsaTrace_WriteLog(0xCu, __str, v36, 4, 1);
      v21 = 0;
    }
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v22 = mach_continuous_time();
    v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v22), "LSM", 73, "lsim03_12UpdateAidReqParams");
    LbsOsaTrace_WriteLog(0xCu, __str, v23, 4, 1);
  }

LABEL_42:
  v28 = *MEMORY[0x29EDCA608];
  return v21;
}

uint64_t lsim03_06UpdateAllowedArForConstel(__int16 a1, _BYTE *a2, _BYTE *a3)
{
  v15 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim03_06UpdateAllowedArForConstel");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (a3)
  {
    if ((a1 & 8) != 0)
    {
      if ((a1 & 0x10) != 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      a2[6] = 0;
      if ((a1 & 0x10) != 0)
      {
LABEL_6:
        if ((a1 & 0x20) != 0)
        {
          goto LABEL_7;
        }

        goto LABEL_32;
      }
    }

    a2[4] = 0;
    if ((a1 & 0x20) != 0)
    {
LABEL_7:
      if ((a1 & 0x40) != 0)
      {
        goto LABEL_8;
      }

      goto LABEL_33;
    }

LABEL_32:
    a2[7] = 0;
    if ((a1 & 0x40) != 0)
    {
LABEL_8:
      if ((a1 & 0x80) != 0)
      {
        goto LABEL_9;
      }

      goto LABEL_34;
    }

LABEL_33:
    a2[8] = 0;
    if ((a1 & 0x80) != 0)
    {
LABEL_9:
      if ((a1 & 0x400) != 0)
      {
        goto LABEL_10;
      }

      goto LABEL_35;
    }

LABEL_34:
    a2[5] = 0;
    if ((a1 & 0x400) != 0)
    {
LABEL_10:
      if ((a1 & 0x200) != 0)
      {
        goto LABEL_11;
      }

      goto LABEL_36;
    }

LABEL_35:
    a2[9] = 0;
    if ((a1 & 0x200) != 0)
    {
LABEL_11:
      if ((a1 & 0x800) != 0)
      {
        goto LABEL_12;
      }

      goto LABEL_37;
    }

LABEL_36:
    a2[10] = 0;
    if ((a1 & 0x800) != 0)
    {
LABEL_12:
      if ((a1 & 0x100) != 0)
      {
LABEL_14:
        if ((a2[5] & 1) == 0 && (a2[6] & 1) == 0 && (a2[10] & 1) == 0 && (a2[9] & 1) == 0 && (a2[7] & 1) == 0 && (a2[8] & 1) == 0 && (a2[4] & 1) == 0 && (a2[11] & 1) == 0 && (a2[12] & 1) == 0)
        {
          *a3 = 0;
        }

        result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
        if (result)
        {
          bzero(__str, 0x410uLL);
          v9 = mach_continuous_time();
          v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 73, "lsim03_06UpdateAllowedArForConstel");
          v11 = 4;
LABEL_28:
          result = LbsOsaTrace_WriteLog(0xCu, __str, v10, v11, 1);
          goto LABEL_29;
        }

        goto LABEL_29;
      }

LABEL_13:
      a2[12] = 0;
      goto LABEL_14;
    }

LABEL_37:
    a2[11] = 0;
    if ((a1 & 0x100) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ConstelFlag\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 87, "lsim03_06UpdateAllowedArForConstel", 513);
    v11 = 2;
    goto LABEL_28;
  }

LABEL_29:
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lsim03_13SendLocInfoReq(int a1, unsigned int *a2, int a3, char a4)
{
  v52 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "lsim03_13SendLocInfoReq");
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  if ((a3 - 1) >= 4)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Src,%u,SId,%u\n", v13);
      goto LABEL_30;
    }

LABEL_31:
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v21 = mach_continuous_time();
      v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v21), "LSM", 73, "lsim03_13SendLocInfoReq");
      LbsOsaTrace_WriteLog(0xCu, __str, v22, 4, 1);
    }

    v23 = 0;
    goto LABEL_34;
  }

  if (!a2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx LocInfoReq Src,%u,SId,%u\n", v14);
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  if (*a2 - 1 >= 3)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v38 = *a2;
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx LocType,%u,Src,%u,SId,%u\n", v15, "LSM");
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  v10 = a2[4];
  if (v10 - 1 >= 3)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v39 = a2[4];
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PosRepType,%u,Src,%u,SId,%u\n", v16, "LSM");
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  if (*(a2 + 6) <= -2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v17 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v40 = *(a2 + 6);
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HorAcc,%u,Src,%u,SId,%u\n", v17, "LSM");
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  if (*(a2 + 8) <= -2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v41 = *(a2 + 8);
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx VertAcc,%u,Src,%u,SId,%u\n", v18, "LSM");
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  if (*(a2 + 7) - 255 >= 0xFFFFFF66)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v19 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v42 = *(a2 + 7);
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HorAccConf,%u,Src,%u,SId,%u\n", v19, "LSM");
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  if (*(a2 + 9) - 255 >= 0xFFFFFF66)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v20 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v43 = *(a2 + 9);
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx VertAccConf,%u,Src,%u,SId,%u\n", v20, "LSM");
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  if (a2[3] - 7200001 < 0xFF9226E7)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v37 = a2[3];
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespTime,%u,Src,%u,SId,%u\n", v11, "LSM");
LABEL_30:
      LbsOsaTrace_WriteLog(0xCu, __str, v12, 0, 1);
      goto LABEL_31;
    }

    goto LABEL_31;
  }

  v26 = a2[6];
  if (v26 && v26 - 7200001 < 0xFF9226E7)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 0, 0, 0))
    {
      goto LABEL_31;
    }

    bzero(__str, 0x410uLL);
    v27 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v44 = a2[6];
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EarlyRespTime,%u,Src,%u,SId,%u\n", v27, "LSM");
    goto LABEL_30;
  }

  if (a2[5] && (*a2 == 1 || v10 != 1))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 0, 0, 0))
    {
      goto LABEL_31;
    }

    bzero(__str, 0x410uLL);
    v30 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v49 = a2[4];
    v50 = *a2;
    v47 = a2[5];
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx AgeLimit,%u,PosReportType,%u,LocInfoType,%u,Src,%u,SId,%u\n", v30, "LSM", 69);
    goto LABEL_30;
  }

  if (a2[8] >= 0x20)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 0, 0, 0))
    {
      goto LABEL_31;
    }

    bzero(__str, 0x410uLL);
    v28 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v45 = a2[8];
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx LocShapeTypes,%X,Src,%u,SId,%u\n", v28, "LSM");
    goto LABEL_30;
  }

  if (a2[7] >= 0x10)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 0, 0, 0))
    {
      goto LABEL_31;
    }

    bzero(__str, 0x410uLL);
    v29 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v46 = a2[7];
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx VelReqType,%X,Src,%u,SId,%u\n", v29, "LSM");
    goto LABEL_30;
  }

  if (*(a2 + 36) <= 0)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 0, 0, 0))
    {
      goto LABEL_31;
    }

    bzero(__str, 0x410uLL);
    v36 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v48 = *(a2 + 36);
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnssIDMask,%X,Src,%u,SId,%u\n", v36, "LSM");
    goto LABEL_30;
  }

  v31 = gnssOsa_Calloc("lsim03_13SendLocInfoReq", 1256, 1, 0x40uLL);
  *(v31 + 3) = a1;
  *(v31 + 14) = a3;
  v23 = 1;
  v31[60] = a4;
  v32 = *(a2 + 31);
  v33 = *(a2 + 1);
  *(v31 + 1) = *a2;
  *(v31 + 2) = v33;
  *(v31 + 47) = v32;
  AgpsSendFsmMsg(131, 131, 8623616, v31);
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v34 = mach_continuous_time();
    v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v34), "LSM", 73, "lsim03_13SendLocInfoReq");
    LbsOsaTrace_WriteLog(0xCu, __str, v35, 4, 1);
  }

LABEL_34:
  v24 = *MEMORY[0x29EDCA608];
  return v23;
}

BOOL lsim03_14SendAbortInd(int a1, int a2)
{
  v13 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim03_14SendAbortInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  v6 = gnssOsa_Calloc("lsim03_14SendAbortInd", 1282, 1, 0x14uLL);
  v7 = v6;
  if (v6)
  {
    v6[3] = a1;
    v6[4] = a2;
    AgpsSendFsmMsg(131, 131, 8623363, v6);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "lsim03_14SendAbortInd");
      LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
    }
  }

  result = v7 != 0;
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lsim03_16AbortInd(int a1, int a2, _BOOL4 a3)
{
  v33 = *MEMORY[0x29EDCA608];
  v31 = a3;
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim03_16AbortInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  v30 = 0;
  if ((a2 - 3) < 2)
  {
    if (g_GnsPospCallback)
    {
      v8 = 1;
      v9 = 2;
      goto LABEL_9;
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      goto LABEL_31;
    }

    bzero(__str, 0x410uLL);
    v27 = mach_continuous_time();
    v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx POSP,SId,%u\n", (*&g_MacClockTicksToMsRelation * v27), "LSM", 87, "lsim03_16AbortInd", 258, a1);
    v22 = 2;
LABEL_30:
    LbsOsaTrace_WriteLog(0xCu, __str, v21, v22, 1);
    goto LABEL_31;
  }

  if ((a2 - 1) > 1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 0, 0, 0))
    {
      goto LABEL_31;
    }

    bzero(__str, 0x410uLL);
    v20 = mach_continuous_time();
    v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Src,%u\n", (*&g_MacClockTicksToMsRelation * v20), "LSM", 69, "lsim03_16AbortInd", 515, a2);
    v22 = 0;
    goto LABEL_30;
  }

  if (!g_GnsCpCallback)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v24 = mach_continuous_time();
      v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CP,SId,%u\n", (*&g_MacClockTicksToMsRelation * v24), "LSM", 87, "lsim03_16AbortInd", 258, a1);
      v26 = 2;
LABEL_33:
      result = LbsOsaTrace_WriteLog(0xCu, __str, v25, v26, 1);
      goto LABEL_34;
    }

    goto LABEL_34;
  }

  v8 = 2;
  v9 = 1;
LABEL_9:
  if (lsim11_07GnmGetSessionFromNativeId(a1, v8, &v30))
  {
    v10 = gnssOsa_Calloc("lsim03_16AbortInd", 1356, 1, 0x10uLL);
    if (!v10)
    {
      if (a3)
      {
        lsim03_01SendPosnApiStatus(a1, a2, 6, v9);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
      if (result)
      {
        goto LABEL_32;
      }

      goto LABEL_34;
    }

    v11 = v10;
    if (!a3 && (lsim11_03GnmUpdateSession(v30, &v31) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SessionUpdateFailed GnmSId,%u\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 87, "lsim03_16AbortInd", v30);
      LbsOsaTrace_WriteLog(0xCu, __str, v13, 2, 1);
    }

    v11[3] = v30;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 3, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SId,%u,GnmSId,%u,Src,%u\n", (*&g_MacClockTicksToMsRelation * v14), "LSM", 77, "lsim03_16AbortInd", a1, v30, a2);
      LbsOsaTrace_WriteLog(0xCu, __str, v15, 3, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_POSN_ABORT_REQ =>GNM,GnmSId,%u\n", (*&g_MacClockTicksToMsRelation * v16), "LSM", 73, "lsim03_16AbortInd", v30);
      LbsOsaTrace_WriteLog(0xCu, __str, v17, 4, 1);
    }

    AgpsSendFsmMsg(131, 128, 8591616, v11);
    lsim03_09ResetAidReqData();
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SId,%u,Src,%u\n", (*&g_MacClockTicksToMsRelation * v18), "LSM", 69, "lsim03_16AbortInd", 2052, a1, a2);
      LbsOsaTrace_WriteLog(0xCu, __str, v19, 0, 1);
    }

    if (a3)
    {
      lsim03_01SendPosnApiStatus(a1, a2, 4, v9);
    }
  }

LABEL_31:
  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
  if (result)
  {
LABEL_32:
    bzero(__str, 0x410uLL);
    v28 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v28, "LSM", 73, "lsim03_16AbortInd");
    v26 = 4;
    goto LABEL_33;
  }

LABEL_34:
  v29 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lsim03_09ResetAidReqData(void)
{
  v5 = *MEMORY[0x29EDCA608];
  g_lsimAsstReqOsTimeMs = 0;
  memset_s(&g_lsimAsstDelivered, 0x20uLL, 0, 0x20uLL);
  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 3, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v1 = mach_continuous_time();
    v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: AsstReqData Cleared\n", (*&g_MacClockTicksToMsRelation * v1), "LSM", 77, "lsim03_09ResetAidReqData");
    result = LbsOsaTrace_WriteLog(0xCu, __str, v2, 3, 1);
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lsim03_17GnssMeasResultInd(int a1, const void *a2, int a3)
{
  v19 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim03_17GnssMeasResultInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  v8 = gnssOsa_Calloc("lsim03_17GnssMeasResultInd", 1416, 1, 0x285A0uLL);
  if (v8)
  {
    v9 = v8;
    if (a2)
    {
      memcpy(v8, a2, 0x2859CuLL);
    }

    else
    {
      v8[170] = 9;
      v8[8] = 9;
      *(v8 + 4) = 1;
    }

    *v9 = a1;
    if (a3 == 3)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 3, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:MEAS =>PospCB,SId,%u\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 77, "lsim03_17GnssMeasResultInd", a1);
        LbsOsaTrace_WriteLog(0xCu, __str, v13, 3, 1);
      }

      GNS_ExecutePospCallback(1, 165276, v9);
    }

    else if (a3 == 1)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 3, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:MEAS =>CpCB,SId,%u\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 77, "lsim03_17GnssMeasResultInd", a1);
        LbsOsaTrace_WriteLog(0xCu, __str, v11, 3, 1);
      }

      GNS_ExecuteCpCb();
    }

    free(v9);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v15 = mach_continuous_time();
    v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v15), "LSM", 73, "lsim03_17GnssMeasResultInd");
    result = LbsOsaTrace_WriteLog(0xCu, __str, v16, 4, 1);
  }

  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lsim03_18GnssPosnResultInd(int a1, __int128 *a2, int a3)
{
  v25 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim03_18GnssPosnResultInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  v8 = gnssOsa_Calloc("lsim03_18GnssPosnResultInd", 1460, 1, 0x285A0uLL);
  if (v8)
  {
    v9 = v8;
    if (a2)
    {
      v10 = *a2;
      v11 = a2[1];
      v12 = a2[3];
      v8[2] = a2[2];
      v8[3] = v12;
      *v8 = v10;
      v8[1] = v11;
      v13 = a2[4];
      v14 = a2[5];
      v15 = a2[6];
      *(v8 + 14) = *(a2 + 14);
      v8[5] = v14;
      v8[6] = v15;
      v8[4] = v13;
    }

    else
    {
      *(v8 + 5) = 9;
      *(v8 + 4) = 1;
    }

    *v8 = a1;
    if (a3 == 3)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 3, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v18 = mach_continuous_time();
        v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:POSN =>PospCB,SId,%u\n", (*&g_MacClockTicksToMsRelation * v18), "LSM", 77, "lsim03_18GnssPosnResultInd", a1);
        LbsOsaTrace_WriteLog(0xCu, __str, v19, 3, 1);
      }

      GNS_ExecutePospCallback(2, 120, v9);
    }

    else if (a3 == 1)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 3, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:POSN =>CpCB,SId,%u\n", (*&g_MacClockTicksToMsRelation * v16), "LSM", 77, "lsim03_18GnssPosnResultInd", a1);
        LbsOsaTrace_WriteLog(0xCu, __str, v17, 3, 1);
      }

      GNS_ExecuteCpCb();
    }

    free(v9);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v21 = mach_continuous_time();
    v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v21), "LSM", 73, "lsim03_18GnssPosnResultInd");
    result = LbsOsaTrace_WriteLog(0xCu, __str, v22, 4, 1);
  }

  v23 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lsim03_19HandleGnssAbortCnf(uint64_t a1)
{
  v19 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim03_19HandleGnssAbortCnf");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  v17 = 0;
  v16 = -1;
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_POSN_ABORT_CNF,GnmSId,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim03_19HandleGnssAbortCnf", *(a1 + 12));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (lsim11_05GnmGetSessionInfo(*(a1 + 12), &v16, 0, 0, 0, &v17))
  {
    if (lsim11_13GnmAsyncRspNeeded(*(a1 + 12)))
    {
      v6 = *(a1 + 16);
      if (v17 == 1)
      {
        lsim03_01SendPosnApiStatus(v16, 1, v6, 1);
        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v7 = mach_continuous_time();
          v14 = *(a1 + 12);
          v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CP,SId,%u,GnmSId,%u\n", (*&g_MacClockTicksToMsRelation * v7));
LABEL_12:
          LbsOsaTrace_WriteLog(0xCu, __str, v8, 5, 1);
        }
      }

      else
      {
        lsim03_01SendPosnApiStatus(v16, 3, v6, 2);
        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v9 = mach_continuous_time();
          v15 = *(a1 + 12);
          v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SUPL,SId,%u,GnmSId,%u\n", (*&g_MacClockTicksToMsRelation * v9));
          goto LABEL_12;
        }
      }
    }

    lsim11_04GnmResetSession(*(a1 + 12));
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 73, "lsim03_19HandleGnssAbortCnf");
    LbsOsaTrace_WriteLog(0xCu, __str, v11, 4, 1);
  }

  v12 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t lsim03_31HandleGnssMsrResultInd(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim03_31HandleGnssMsrResultInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  v12 = 0;
  v11 = -1;
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_LSIM_POSN_GNSS_MSR_RESULT_IND,GnmSId,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim03_31HandleGnssMsrResultInd", *(a1 + 165288));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (lsim11_05GnmGetSessionInfo(*(a1 + 165288), &v11, 0, 0, 0, &v12))
  {
    v6 = v12 ? 1 : 3;
    lsim03_17GnssMeasResultInd(v11, (a1 + 12), v6);
    if (*(a1 + 16) == 1)
    {
      lsim11_04GnmResetSession(*(a1 + 165288));
    }
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v7), "LSM", 73, "lsim03_31HandleGnssMsrResultInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v8, 4, 1);
  }

  v9 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t lsim03_32HandleGnssMsAssistedCnf(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim03_32HandleGnssMsAssistedCnf");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  v15 = 0;
  v14 = -1;
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_POSN_START_MSA_GNSS_CNF,GnmSId,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim03_32HandleGnssMsAssistedCnf", *(a1 + 12));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (lsim11_05GnmGetSessionInfo(*(a1 + 12), &v14, 0, 0, 0, &v15))
  {
    if (v15 == 1)
    {
      v6 = 1;
      v7 = 0;
    }

    else
    {
      v6 = 3;
      v7 = 1;
    }

    lsim03_01SendPosnApiStatus(v14, v6, *(a1 + 16), v7);
    if (*(a1 + 16) != 1)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnmSId,%u\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 87, "lsim03_32HandleGnssMsAssistedCnf", 2049, *(a1 + 12));
        LbsOsaTrace_WriteLog(0xCu, __str, v9, 2, 1);
      }

      lsim11_04GnmResetSession(*(a1 + 12));
    }
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 73, "lsim03_32HandleGnssMsAssistedCnf");
    LbsOsaTrace_WriteLog(0xCu, __str, v11, 4, 1);
  }

  v12 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t lsim03_33HandleGnssPosInd(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim03_33HandleGnssPosInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  v12 = 0;
  v11 = -1;
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_LSIM_POSN_GNSS_POS_IND,GnmSId,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim03_33HandleGnssPosInd", *(a1 + 132));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (lsim11_05GnmGetSessionInfo(*(a1 + 132), &v11, 0, 0, 0, &v12))
  {
    v6 = v12 ? 1 : 3;
    lsim03_18GnssPosnResultInd(v11, (a1 + 12), v6);
    if (*(a1 + 16))
    {
      lsim11_04GnmResetSession(*(a1 + 132));
    }
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v7), "LSM", 73, "lsim03_33HandleGnssPosInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v8, 4, 1);
  }

  v9 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t lsim03_34HandleGnssAidRequInd(uint64_t a1)
{
  v123 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim03_34HandleGnssAidRequInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  v121 = 0;
  v119 = 0;
  v120 = -1;
  v118 = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_LSIM_POSN_GNSS_AID_REQ_IND,GnmSId,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim03_34HandleGnssAidRequInd", *(a1 + 72));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (!lsim11_05GnmGetSessionInfo(*(a1 + 72), &v120, &v119, 0, &v118, &v121))
  {
    goto LABEL_74;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LastAsstReqTimeMs,%u\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim03_04CheckAsstReqStatus", g_lsimAsstReqOsTimeMs);
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  v8 = g_lsimAsstReqOsTimeMs;
  if (g_lsimAsstReqOsTimeMs && (*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v8 <= 0x2710)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      goto LABEL_74;
    }

    bzero(__str, 0x410uLL);
    v115 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LastReq,%ums,Threshold,%ums\n", v115);
    goto LABEL_73;
  }

  __s[0] = 0;
  *&__s[2] = 0;
  *&__s[10] = 0;
  memset_s(__s, 0xEuLL, 0, 0xEuLL);
  lsim03_11PrintAidRequestParams((a1 + 16), "POSITIONING BEFORE MASKS");
  if (v119 == 2)
  {
    v9 = &qword_2A19267F6;
    goto LABEL_16;
  }

  if (v119 == 1)
  {
    v9 = &g_LsimPltConfig;
LABEL_16:
    *__s = *v9;
    *&__s[6] = *(v9 + 6);
    goto LABEL_17;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v82 = mach_continuous_time();
    v83 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PosMethod,%u,GnmSId,%u\n", (*&g_MacClockTicksToMsRelation * v82), "LSM", 87, "lsim03_34HandleGnssAidRequInd", 515, v119, *(a1 + 72));
    LbsOsaTrace_WriteLog(0xCu, __str, v83, 2, 1);
  }

LABEL_17:
  v11 = v121;
  if (!lsim03_12UpdateAidReqParams(__s, (a1 + 16), v118, 1))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      goto LABEL_74;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v116 = *(a1 + 72);
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: AidReq Cleared,GnmSId,%u\n");
    goto LABEL_73;
  }

  g_lsimAsstReqOsTimeMs = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  v12 = v120;
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v13 = mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v13), "LSM", 73, "lsim03_03GnssAidRequest");
    LbsOsaTrace_WriteLog(0xCu, __str, v14, 4, 1);
  }

  if (!*(a1 + 24))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v84 = mach_continuous_time();
      v85 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnssAidReq\n", (*&g_MacClockTicksToMsRelation * v84), "LSM", 87, "lsim03_03GnssAidRequest", 513);
      LbsOsaTrace_WriteLog(0xCu, __str, v85, 2, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      goto LABEL_72;
    }

    goto LABEL_74;
  }

  v15 = gnssOsa_Calloc("lsim03_03GnssAidRequest", 374, 1, 0x285A0uLL);
  if (!v15)
  {
    goto LABEL_71;
  }

  v16 = v15;
  *v15 = v12;
  v17 = gnssOsa_Calloc("lsim03_03GnssAidRequest", 384, 1, 8uLL);
  v16[1] = v17;
  if (!v17)
  {
LABEL_70:
    free(v16);
LABEL_71:
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      goto LABEL_74;
    }

    goto LABEL_72;
  }

  *v17 = **(a1 + 24);
  v18 = *(a1 + 24);
  if (v18[3] == 1 && *(a1 + 32))
  {
    v19 = gnssOsa_Calloc("lsim03_03GnssAidRequest", 399, 1, 0xD8uLL);
    v16[2] = v19;
    if (!v19)
    {
      v104 = v16[1];
      if (!v104)
      {
        goto LABEL_91;
      }

      goto LABEL_90;
    }

    v20 = *(a1 + 32);
    v21 = *(v20 + 16);
    *v19 = *v20;
    *(v19 + 1) = v21;
    v22 = *(v20 + 32);
    v23 = *(v20 + 48);
    v24 = *(v20 + 80);
    *(v19 + 4) = *(v20 + 64);
    *(v19 + 5) = v24;
    *(v19 + 2) = v22;
    *(v19 + 3) = v23;
    v25 = *(v20 + 96);
    v26 = *(v20 + 112);
    v27 = *(v20 + 144);
    *(v19 + 8) = *(v20 + 128);
    *(v19 + 9) = v27;
    *(v19 + 6) = v25;
    *(v19 + 7) = v26;
    v28 = *(v20 + 160);
    v29 = *(v20 + 176);
    v30 = *(v20 + 192);
    *(v19 + 206) = *(v20 + 206);
    *(v19 + 11) = v29;
    *(v19 + 12) = v30;
    *(v19 + 10) = v28;
    v18 = *(a1 + 24);
  }

  if (v18[4] == 1 && *(a1 + 40))
  {
    v31 = gnssOsa_Calloc("lsim03_03GnssAidRequest", 414, 1, 0xD8uLL);
    v16[3] = v31;
    if (!v31)
    {
      v105 = v16[1];
      if (v105)
      {
        free(v105);
      }

      v16[1] = 0;
      v104 = v16[2];
      if (!v104)
      {
        goto LABEL_91;
      }

      goto LABEL_90;
    }

    v32 = *(a1 + 40);
    v33 = *(v32 + 16);
    *v31 = *v32;
    *(v31 + 1) = v33;
    v34 = *(v32 + 32);
    v35 = *(v32 + 48);
    v36 = *(v32 + 80);
    *(v31 + 4) = *(v32 + 64);
    *(v31 + 5) = v36;
    *(v31 + 2) = v34;
    *(v31 + 3) = v35;
    v37 = *(v32 + 96);
    v38 = *(v32 + 112);
    v39 = *(v32 + 144);
    *(v31 + 8) = *(v32 + 128);
    *(v31 + 9) = v39;
    *(v31 + 6) = v37;
    *(v31 + 7) = v38;
    v40 = *(v32 + 160);
    v41 = *(v32 + 176);
    v42 = *(v32 + 192);
    *(v31 + 206) = *(v32 + 206);
    *(v31 + 11) = v41;
    *(v31 + 12) = v42;
    *(v31 + 10) = v40;
    v18 = *(a1 + 24);
  }

  if (v18[6] == 1 && *(a1 + 56))
  {
    v43 = gnssOsa_Calloc("lsim03_03GnssAidRequest", 430, 1, 0xD8uLL);
    v16[5] = v43;
    if (!v43)
    {
      v106 = v16[1];
      if (v106)
      {
        free(v106);
      }

      v16[1] = 0;
      v107 = v16[2];
      if (v107)
      {
        free(v107);
      }

      v16[2] = 0;
      v104 = v16[3];
      if (!v104)
      {
        goto LABEL_91;
      }

      goto LABEL_90;
    }

    v44 = *(a1 + 56);
    v45 = *(v44 + 16);
    *v43 = *v44;
    *(v43 + 1) = v45;
    v46 = *(v44 + 32);
    v47 = *(v44 + 48);
    v48 = *(v44 + 80);
    *(v43 + 4) = *(v44 + 64);
    *(v43 + 5) = v48;
    *(v43 + 2) = v46;
    *(v43 + 3) = v47;
    v49 = *(v44 + 96);
    v50 = *(v44 + 112);
    v51 = *(v44 + 144);
    *(v43 + 8) = *(v44 + 128);
    *(v43 + 9) = v51;
    *(v43 + 6) = v49;
    *(v43 + 7) = v50;
    v52 = *(v44 + 160);
    v53 = *(v44 + 176);
    v54 = *(v44 + 192);
    *(v43 + 206) = *(v44 + 206);
    *(v43 + 11) = v53;
    *(v43 + 12) = v54;
    *(v43 + 10) = v52;
    v18 = *(a1 + 24);
  }

  if (v18[5] == 1 && *(a1 + 48))
  {
    v55 = gnssOsa_Calloc("lsim03_03GnssAidRequest", 447, 1, 0xD8uLL);
    v16[4] = v55;
    if (v55)
    {
      v56 = *(a1 + 48);
      v57 = *(v56 + 16);
      *v55 = *v56;
      *(v55 + 1) = v57;
      v58 = *(v56 + 32);
      v59 = *(v56 + 48);
      v60 = *(v56 + 80);
      *(v55 + 4) = *(v56 + 64);
      *(v55 + 5) = v60;
      *(v55 + 2) = v58;
      *(v55 + 3) = v59;
      v61 = *(v56 + 96);
      v62 = *(v56 + 112);
      v63 = *(v56 + 144);
      *(v55 + 8) = *(v56 + 128);
      *(v55 + 9) = v63;
      *(v55 + 6) = v61;
      *(v55 + 7) = v62;
      v64 = *(v56 + 160);
      v65 = *(v56 + 176);
      v66 = *(v56 + 192);
      *(v55 + 206) = *(v56 + 206);
      *(v55 + 11) = v65;
      *(v55 + 12) = v66;
      *(v55 + 10) = v64;
      v18 = *(a1 + 24);
      goto LABEL_39;
    }

    v108 = v16[1];
    if (v108)
    {
      free(v108);
    }

    v16[1] = 0;
    v109 = v16[2];
    if (v109)
    {
      free(v109);
    }

    v16[2] = 0;
    v110 = v16[3];
    if (v110)
    {
      free(v110);
    }

    v16[3] = 0;
    v104 = v16[5];
    if (!v104)
    {
      goto LABEL_91;
    }

LABEL_90:
    free(v104);
    goto LABEL_91;
  }

LABEL_39:
  if (v18[7] != 1 || !*(a1 + 64))
  {
    goto LABEL_43;
  }

  v67 = gnssOsa_Calloc("lsim03_03GnssAidRequest", 467, 1, 0xD8uLL);
  v16[6] = v67;
  if (v67)
  {
    v68 = *(a1 + 64);
    v69 = *(v68 + 16);
    *v67 = *v68;
    *(v67 + 1) = v69;
    v70 = *(v68 + 32);
    v71 = *(v68 + 48);
    v72 = *(v68 + 80);
    *(v67 + 4) = *(v68 + 64);
    *(v67 + 5) = v72;
    *(v67 + 2) = v70;
    *(v67 + 3) = v71;
    v73 = *(v68 + 96);
    v74 = *(v68 + 112);
    v75 = *(v68 + 144);
    *(v67 + 8) = *(v68 + 128);
    *(v67 + 9) = v75;
    *(v67 + 6) = v73;
    *(v67 + 7) = v74;
    v76 = *(v68 + 160);
    v77 = *(v68 + 176);
    v78 = *(v68 + 192);
    *(v67 + 206) = *(v68 + 206);
    *(v67 + 11) = v77;
    *(v67 + 12) = v78;
    *(v67 + 10) = v76;
LABEL_43:
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
    if (v11)
    {
      if (IsLoggingAllowed)
      {
        bzero(__str, 0x410uLL);
        v80 = mach_continuous_time();
        v81 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:AIDREQ =>CpCB,SId,%u,Src,%u\n", (*&g_MacClockTicksToMsRelation * v80), "LSM", 73, "lsim03_03GnssAidRequest", v12, 1);
        LbsOsaTrace_WriteLog(0xCu, __str, v81, 4, 1);
      }

      GNS_ExecuteCpCb();
    }

    else
    {
      if (IsLoggingAllowed)
      {
        bzero(__str, 0x410uLL);
        v86 = mach_continuous_time();
        v87 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:AIDREQ =>PospCB,SId,%u,Src,%u\n", (*&g_MacClockTicksToMsRelation * v86), "LSM", 73, "lsim03_03GnssAidRequest", v12, 3);
        LbsOsaTrace_WriteLog(0xCu, __str, v87, 4, 1);
      }

      GNS_ExecutePospCallback(3, 56, v16);
    }

    v88 = v16[1];
    if (v88)
    {
      free(v88);
    }

    v16[1] = 0;
    v89 = v16[2];
    if (v89)
    {
      free(v89);
    }

    v16[2] = 0;
    v90 = v16[3];
    if (v90)
    {
      free(v90);
    }

    v16[3] = 0;
    v91 = v16[5];
    if (v91)
    {
      free(v91);
    }

    v16[5] = 0;
    v92 = v16[4];
    if (v92)
    {
      free(v92);
    }

    v16[4] = 0;
    v93 = v16[6];
    if (v93)
    {
      free(v93);
    }

    goto LABEL_70;
  }

  v111 = v16[1];
  if (v111)
  {
    free(v111);
  }

  v16[1] = 0;
  v112 = v16[2];
  if (v112)
  {
    free(v112);
  }

  v16[2] = 0;
  v113 = v16[3];
  if (v113)
  {
    free(v113);
  }

  v16[3] = 0;
  v114 = v16[5];
  if (v114)
  {
    free(v114);
  }

  v16[5] = 0;
  v104 = v16[4];
  if (v104)
  {
    goto LABEL_90;
  }

LABEL_91:
  free(v16);
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
LABEL_72:
    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n");
LABEL_73:
    LbsOsaTrace_WriteLog(0xCu, __str, v10, 4, 1);
  }

LABEL_74:
  v94 = *(a1 + 24);
  if (v94)
  {
    free(v94);
  }

  *(a1 + 24) = 0;
  v95 = *(a1 + 32);
  if (v95)
  {
    free(v95);
  }

  *(a1 + 32) = 0;
  v96 = *(a1 + 40);
  if (v96)
  {
    free(v96);
  }

  *(a1 + 40) = 0;
  v97 = *(a1 + 48);
  if (v97)
  {
    free(v97);
  }

  *(a1 + 48) = 0;
  v98 = *(a1 + 56);
  if (v98)
  {
    free(v98);
  }

  *(a1 + 56) = 0;
  v99 = *(a1 + 64);
  if (v99)
  {
    free(v99);
  }

  *(a1 + 64) = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v100 = mach_continuous_time();
    v101 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v100), "LSM", 73, "lsim03_34HandleGnssAidRequInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v101, 4, 1);
  }

  v102 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t lsim03_35HandleGnssMsBasedCnf(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v15 = 0;
  v14 = -1;
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim03_35HandleGnssMsBasedCnf");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_POSN_START_MSB_GNSS_CNF,GnmSId,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim03_35HandleGnssMsBasedCnf", *(a1 + 12));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (lsim11_05GnmGetSessionInfo(*(a1 + 12), &v14, 0, 0, 0, &v15))
  {
    if (v15 == 1)
    {
      v6 = 1;
      v7 = 0;
    }

    else
    {
      v6 = 3;
      v7 = 1;
    }

    lsim03_01SendPosnApiStatus(v14, v6, *(a1 + 16), v7);
    if (*(a1 + 16) != 1)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnmSId,%u\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 87, "lsim03_35HandleGnssMsBasedCnf", 2049, *(a1 + 12));
        LbsOsaTrace_WriteLog(0xCu, __str, v9, 2, 1);
      }

      lsim11_04GnmResetSession(*(a1 + 12));
    }
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 73, "lsim03_35HandleGnssMsBasedCnf");
    LbsOsaTrace_WriteLog(0xCu, __str, v11, 4, 1);
  }

  v12 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t lsim03_36HandleAbortInd(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim03_36HandleAbortInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_ABORT_IND,SId,%u,Src,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim03_36HandleAbortInd", *(a1 + 12), *(a1 + 16));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  lsim03_16AbortInd(*(a1 + 12), *(a1 + 16), 1);
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim03_36HandleAbortInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  v8 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t lsim03_37HandleLocInfoReq(uint64_t a1)
{
  v63 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim03_37HandleLocInfoReq");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_LOC_INFO_REQ,SId,%u,Src,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim03_37HandleLocInfoReq", *(a1 + 12), *(a1 + 56));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 3, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LOCREQ:SId,%u,Src,%u,Emer,%u\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 77, "lsim03_37HandleLocInfoReq", *(a1 + 12), *(a1 + 56), *(a1 + 60));
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 3, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 3, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LOCREQ:GEN,PosM,%u,VelMask,%X,ShapeMask,%X,GnssId,%X,BlockAidReq,%u\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 77, "lsim03_37HandleLocInfoReq", *(a1 + 16), *(a1 + 44), *(a1 + 48), *(a1 + 52), *(a1 + 53));
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 3, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 3, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LOCREQ:QOS,NumRep,%u,HorAcc,%u,HorAccConf,%u,VertAcc,%u,VertAccConf,%u,RspTime,%u,RepType,%u,AgeLimit,%u,EarlyRspTime,%u\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 77, "lsim03_37HandleLocInfoReq", *(a1 + 20), *(a1 + 22), *(a1 + 23), *(a1 + 24), *(a1 + 25), *(a1 + 28), *(a1 + 32), *(a1 + 36), *(a1 + 40));
    LbsOsaTrace_WriteLog(0xCu, __str, v11, 3, 1);
  }

  v12 = *(a1 + 12);
  v13 = *(a1 + 56);
  v14 = *(a1 + 60);
  v60 = 0;
  if ((v13 - 3) >= 2)
  {
    if ((v13 - 1) > 1)
    {
      if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 0, 0, 0))
      {
        goto LABEL_71;
      }

      bzero(__str, 0x410uLL);
      v29 = mach_continuous_time();
      v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SId,%u,Src,%u\n", (*&g_MacClockTicksToMsRelation * v29), "LSM", 69, "lsim03_02LocInfoReqInd", 515, v12, v13);
      v31 = 0;
    }

    else
    {
      if (g_GnsCpCallback)
      {
        v15 = 0;
        v16 = 2;
        v17 = 255;
        goto LABEL_17;
      }

      if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
      {
        goto LABEL_71;
      }

      bzero(__str, 0x410uLL);
      v32 = mach_continuous_time();
      v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CP,SId,%u\n", (*&g_MacClockTicksToMsRelation * v32), "LSM", 87, "lsim03_02LocInfoReqInd", 258, v12);
      v31 = 2;
    }

LABEL_35:
    LbsOsaTrace_WriteLog(0xCu, __str, v30, v31, 1);
    goto LABEL_71;
  }

  if (g_GnsPospCallback)
  {
    v16 = 1;
    v17 = 4;
    v15 = 1;
LABEL_17:
    v18 = *(a1 + 16);
    if ((v18 - 1) >= 3)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v24 = mach_continuous_time();
        v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx LocInfoType,%u,SId,%u,Src,%u\n", (*&g_MacClockTicksToMsRelation * v24), "LSM", 87, "lsim03_02LocInfoReqInd", 515, *(a1 + 16), v12, v13);
        LbsOsaTrace_WriteLog(0xCu, __str, v25, 2, 1);
      }

      v26 = v12;
      v27 = v13;
      v28 = 2;
    }

    else
    {
      if ((v14 & 1) != 0 || (~dword_2A18CCEB4 & 0x81) == 0)
      {
        SessionFromNativeId = lsim11_07GnmGetSessionFromNativeId(v12, v16, &v60);
        IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
        if (SessionFromNativeId)
        {
          if (IsLoggingAllowed)
          {
            bzero(__str, 0x410uLL);
            v21 = mach_continuous_time();
            v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnmSId,%d\n", (*&g_MacClockTicksToMsRelation * v21), "LSM", 73, "lsim03_02LocInfoReqInd", 2053, v60);
            LbsOsaTrace_WriteLog(0xCu, __str, v22, 4, 1);
          }

          v23 = lsim03_07SendRequestToGnm(v60, v14, (a1 + 16));
          goto LABEL_68;
        }

        if (IsLoggingAllowed)
        {
          bzero(__str, 0x410uLL);
          v36 = mach_continuous_time();
          v37 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v36), "LSM", 73, "lsim03_08HandleEmerPriority");
          LbsOsaTrace_WriteLog(0xCu, __str, v37, 4, 1);
        }

        v61 = 2;
        if ((v14 & 1) == 0 && ((lsim04_03CheckEmergencySessions(2) & 1) != 0 || lsim04_03CheckEmergencySessions(1)))
        {
          if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v43 = mach_continuous_time();
            v44 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SType,%u,SId,%u\n", (*&g_MacClockTicksToMsRelation * v43), "LSM", 87, "lsim03_08HandleEmerPriority", 1025, v16, v12);
            LbsOsaTrace_WriteLog(0xCu, __str, v44, 2, 1);
          }

          if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v45 = mach_continuous_time();
            v46 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v45), "LSM", 73, "lsim03_08HandleEmerPriority");
            LbsOsaTrace_WriteLog(0xCu, __str, v46, 4, 1);
          }

          v23 = 10;
          goto LABEL_68;
        }

        if ((lsim11_02GnmCreateSession(v12, v16, v18, v14, 1, *(a1 + 52), &v61) & 1) == 0)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v47 = mach_continuous_time();
            v48 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SType,%u,SId,%u\n", (*&g_MacClockTicksToMsRelation * v47), "LSM", 87, "lsim03_08HandleEmerPriority", 2049, v16, v12);
            LbsOsaTrace_WriteLog(0xCu, __str, v48, 2, 1);
          }

          v23 = 0;
          if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v49 = mach_continuous_time();
            v50 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v49), "LSM", 73, "lsim03_08HandleEmerPriority");
            LbsOsaTrace_WriteLog(0xCu, __str, v50, 4, 1);
            v23 = 0;
          }

          goto LABEL_68;
        }

        v38 = lsim03_07SendRequestToGnm(v61, v14, (a1 + 16));
        if (v38 == 1)
        {
          if (v14)
          {
            lsim23_02GnmStopEarlyStartSession(0);
            lsim04_02CloseOtherCpNiSessions(255, &v61);
            lsim05_43CloseOtherPospSessions(255, &v61);
            lsim05_42CloseSuplSessions(v17, 0);
          }

          if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
          {
            v23 = 1;
            goto LABEL_68;
          }

          bzero(__str, 0x410uLL);
          v39 = mach_continuous_time();
          v40 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v39), "LSM", 73, "lsim03_08HandleEmerPriority");
          v23 = 1;
        }

        else
        {
          v23 = v38;
          if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v51 = mach_continuous_time();
            v52 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SType,%u,CpGnmRequest,SId,%u\n", (*&g_MacClockTicksToMsRelation * v51), "LSM", 87, "lsim03_08HandleEmerPriority", 2049, v16, v12);
            LbsOsaTrace_WriteLog(0xCu, __str, v52, 2, 1);
          }

          if (!lsim11_04GnmResetSession(v61) && LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v53 = mach_continuous_time();
            v54 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SType,%u,CpGnmRequest,SId,%u\n", (*&g_MacClockTicksToMsRelation * v53), "LSM", 87, "lsim03_08HandleEmerPriority", 2050, v16, v12);
            LbsOsaTrace_WriteLog(0xCu, __str, v54, 2, 1);
          }

          if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
          {
            goto LABEL_68;
          }

          bzero(__str, 0x410uLL);
          v55 = mach_continuous_time();
          v40 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v55), "LSM", 73, "lsim03_08HandleEmerPriority");
        }

        LbsOsaTrace_WriteLog(0xCu, __str, v40, 4, 1);
LABEL_68:
        if (v23 == 1)
        {
          goto LABEL_71;
        }

        v26 = v12;
        v27 = v13;
        v28 = v23;
        goto LABEL_70;
      }

      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v41 = mach_continuous_time();
        v42 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SId,%u,Src,%u\n", (*&g_MacClockTicksToMsRelation * v41), "LSM", 87, "lsim03_02LocInfoReqInd", 1027, v12, v13);
        LbsOsaTrace_WriteLog(0xCu, __str, v42, 2, 1);
      }

      v26 = v12;
      v27 = v13;
      v28 = 3;
    }

LABEL_70:
    lsim03_01SendPosnApiStatus(v26, v27, v28, v15);
    goto LABEL_71;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v33 = mach_continuous_time();
    v34 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx POSP,SId,%u\n", (*&g_MacClockTicksToMsRelation * v33), "LSM", 87, "lsim03_02LocInfoReqInd", 258, v12);
    LbsOsaTrace_WriteLog(0xCu, __str, v34, 2, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v35 = mach_continuous_time();
    v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v35), "LSM", 73, "lsim03_02LocInfoReqInd");
    v31 = 4;
    goto LABEL_35;
  }

LABEL_71:
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v56 = mach_continuous_time();
    v57 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v56), "LSM", 73, "lsim03_37HandleLocInfoReq");
    LbsOsaTrace_WriteLog(0xCu, __str, v57, 4, 1);
  }

  v58 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t lsim03_38HandleClearGnssInd(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim03_38HandleClearGnssInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 0, 0, 0))
    {
      goto LABEL_13;
    }

    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 69, "lsim03_38HandleClearGnssInd", 517);
    v8 = 0;
    goto LABEL_12;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_LSIM_CLEAR_DATA_IND,Mask,0x%X\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim03_38HandleClearGnssInd", *(a1 + 12));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if ((*(a1 + 12) & 0x7087F) != 0)
  {
    lsim03_09ResetAidReqData();
    goto LABEL_13;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ClearNotNeeded\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 73, "lsim03_38HandleClearGnssInd");
    v8 = 4;
LABEL_12:
    LbsOsaTrace_WriteLog(0xCu, __str, v7, v8, 1);
  }

LABEL_13:
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 73, "lsim03_38HandleClearGnssInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v11, 4, 1);
  }

  v12 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t lsim03_07SendRequestToGnm(int a1, char a2, __int128 *a3)
{
  v27 = *MEMORY[0x29EDCA608];
  if (*(a3 + 4) == 2 && (dword_2A18CCEB4 & 0x40000) != 0)
  {
    *(a3 + 4) = 1;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Overriding Periodic, GnmSId,%u\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 87, "lsim03_07SendRequestToGnm", a1);
      LbsOsaTrace_WriteLog(0xCu, __str, v7, 2, 1);
    }
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: AsstAvail,%u,GnssID,%u,LocInfoType,%u,VelTypeMask,%X,LocShapeMask,%X\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 68, "lsim03_07SendRequestToGnm", *(a3 + 37), *(a3 + 36), *a3, *(a3 + 7), *(a3 + 8));
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 5, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: HorAccConf,%u,HorAcc,%u,PosRepType,%u,RepAmt,%u,RespTime,%u,VertAccConf,%u,VertAcc,%u\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 68, "lsim03_07SendRequestToGnm", *(a3 + 7), *(a3 + 6), *(a3 + 4), *(a3 + 2), *(a3 + 3), *(a3 + 9), *(a3 + 8));
    LbsOsaTrace_WriteLog(0xCu, __str, v11, 5, 1);
  }

  if ((*a3 - 2) < 2)
  {
    v12 = gnssOsa_Calloc("lsim03_07SendRequestToGnm", 669, 1, 0x3CuLL);
    if (v12)
    {
      v13 = v12;
      *(v12 + 3) = a1;
      v12[16] = a2;
      v14 = *a3;
      v15 = a3[1];
      *(v12 + 51) = *(a3 + 31);
      *(v12 + 36) = v15;
      *(v12 + 20) = v14;
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_POSN_START_MSB_GNSS_REQ =>GNM,GnmSId,%u\n", (*&g_MacClockTicksToMsRelation * v16), "LSM", 73, "lsim03_07SendRequestToGnm", a1);
        LbsOsaTrace_WriteLog(0xCu, __str, v17, 4, 1);
      }

      v18 = 8595712;
LABEL_19:
      AgpsSendFsmMsg(131, 128, v18, v13);
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if (*a3 == 1)
  {
    v19 = gnssOsa_Calloc("lsim03_07SendRequestToGnm", 690, 1, 0x3CuLL);
    if (v19)
    {
      v13 = v19;
      *(v19 + 3) = a1;
      v19[16] = a2;
      v20 = *a3;
      v21 = a3[1];
      *(v19 + 51) = *(a3 + 31);
      *(v19 + 36) = v21;
      *(v19 + 20) = v20;
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v22 = mach_continuous_time();
        v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_POSN_START_MSA_GNSS_REQ =>GNM,GnmSId,%u\n", (*&g_MacClockTicksToMsRelation * v22), "LSM", 73, "lsim03_07SendRequestToGnm", a1);
        LbsOsaTrace_WriteLog(0xCu, __str, v23, 4, 1);
      }

      v18 = 8595968;
      goto LABEL_19;
    }

LABEL_21:
    result = 6;
    goto LABEL_22;
  }

LABEL_20:
  result = 1;
LABEL_22:
  v25 = *MEMORY[0x29EDCA608];
  return result;
}

double BDS_EphInt2Real(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 16);
  *(a2 + 10) = *(a1 + 20);
  *(a2 + 11) = *(a1 + 21);
  *(a2 + 13) = *(a1 + 18);
  *(a2 + 16) = vrev64_s32(vshl_n_s32(*(a1 + 8), 3uLL));
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4.i64[0] = v2;
  v4.i64[1] = SHIDWORD(v2);
  *&v5.f64[0] = *&vcvtq_f64_s64(v4);
  v4.i64[0] = v2;
  v4.i64[1] = HIDWORD(v2);
  v5.f64[1] = vcvtq_f64_u64(v4).f64[1];
  *(a2 + 24) = vmulq_f64(v5, xmmword_2997616F0);
  v4.i64[0] = v3;
  v4.i64[1] = HIDWORD(v3);
  *&v6.f64[0] = *&vcvtq_f64_u64(v4);
  v4.i64[0] = v3;
  v4.i64[1] = SHIDWORD(v3);
  v6.f64[1] = vcvtq_f64_s64(*&v4).f64[1];
  *(a2 + 40) = vmulq_f64(v6, xmmword_299761700);
  v6.f64[0] = *(a1 + 40);
  v4.i64[0] = SLODWORD(v6.f64[0]);
  v4.i64[1] = SHIDWORD(v6.f64[0]);
  *(a2 + 56) = vmulq_f64(vcvtq_f64_s64(v4), vdupq_n_s64(0x3E1921FB54442D28uLL));
  v7 = *(a1 + 56);
  v8.f64[0] = *(a1 + 48);
  v8.f64[1] = *(a1 + 52);
  v5.f64[0] = *(a1 + 50);
  *(a2 + 72) = vmulq_f64(v8, vdupq_n_s64(0x3D5921FB54442D28uLL));
  v5.f64[1] = v7;
  *(a2 + 88) = vmulq_f64(v5, xmmword_299762020);
  v6.f64[0] = *(a1 + 60);
  v4.i64[0] = SLODWORD(v6.f64[0]);
  v4.i64[1] = SHIDWORD(v6.f64[0]);
  *(a2 + 104) = vmulq_f64(vcvtq_f64_s64(v4), xmmword_299762030);
  v6.f64[0] = *(a1 + 68);
  v4.i64[0] = SLODWORD(v6.f64[0]);
  v4.i64[1] = SHIDWORD(v6.f64[0]);
  *(a2 + 120) = vmulq_f64(vcvtq_f64_s64(v4), xmmword_299762040);
  v6.f64[0] = *(a1 + 76);
  v4.i64[0] = SLODWORD(v6.f64[0]);
  v4.i64[1] = SHIDWORD(v6.f64[0]);
  *(a2 + 136) = vmulq_f64(vcvtq_f64_s64(v4), xmmword_299762050);
  v6.f64[0] = *(a1 + 84);
  v6.f64[1] = *(a1 + 88);
  *(a2 + 152) = vmulq_f64(v6, xmmword_299762060);
  result = *(a1 + 90) * 0.1;
  v8.f64[0] = *(a1 + 92) * 0.1;
  *(a2 + 168) = result;
  *(a2 + 176) = v8.f64[0];
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

_WORD *GPS_To_UTC_Time(_WORD *result, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4, unsigned __int16 *a5, unsigned __int16 *a6, unsigned __int16 *a7, __int16 a8, double a9, double a10)
{
  v30 = *MEMORY[0x29EDCA608];
  for (i = 0.0005 - a10 + a9; i >= 604800.0; ++a8)
  {
    i = i + -604800.0;
  }

  while (i < 0.0)
  {
    i = i + 604800.0;
    --a8;
  }

  v11 = i;
  v12 = (i - i) * 1000.0;
  v13 = v12;
  if (v12 < -2147483650.0)
  {
    LOWORD(v13) = 0;
  }

  if (v12 <= 2147483650.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = -1;
  }

  *a7 = v14;
  v15 = v11 / 86400;
  v16 = v11 % 86400;
  *a4 = v16 / 3600;
  v16 %= 3600;
  *a5 = v16 / 60;
  *a6 = v16 % 60;
  v17 = v15 - a8 + 8 * a8;
  v18 = v17 + 6;
  if (v17 < 1456)
  {
    LOWORD(v20) = 1980;
  }

  else
  {
    if (v18 >= 0xB6A)
    {
      v18 = 2922;
    }

    v19 = v17 - v18 + 1466;
    v18 = v17 - 1461 * (v19 / 0x5B5) - 1455;
    v20 = 4 * (v19 / 0x5B5) + 1984;
  }

  if (v18 >= 367)
  {
    do
    {
      if ((v20 & 3) != 0)
      {
        v21 = -365;
      }

      else
      {
        v21 = -366;
      }

      v18 += v21;
      LOWORD(v20) = v20 + 1;
    }

    while (v18 > 0x16E);
  }

  v22 = 0;
  if ((v20 & 3) != 0)
  {
    v23 = v20 + 1;
  }

  else
  {
    v23 = v20;
  }

  if ((v20 & 3) != 0)
  {
    v24 = 1;
  }

  else
  {
    v24 = 366;
  }

  if (v18 == 366)
  {
    LOWORD(v20) = v23;
  }

  else
  {
    v24 = v18;
  }

  *result = v20;
  while (1)
  {
    v25 = Days_in_Month[v22];
    v26 = __OFSUB__(v24, v25);
    v27 = v24 - v25;
    if ((v27 < 0) ^ v26 | (v27 == 0))
    {
      *a3 = v24;
      v28 = v22 + 1;
      goto LABEL_40;
    }

    if (v22 == 1 && (v20 & 3) == 0)
    {
      break;
    }

LABEL_36:
    ++v22;
    v24 = v27;
    if (v22 == 12)
    {
      goto LABEL_41;
    }
  }

  if (v27 >= 2)
  {
    --v27;
    goto LABEL_36;
  }

  *a3 = 29;
  v28 = 2;
LABEL_40:
  *a2 = v28;
LABEL_41:
  v29 = *MEMORY[0x29EDCA608];
  return result;
}

_WORD *GPS_To_UTC_DOY(int *a1, __int16 a2, double a3, double a4)
{
  v21 = *MEMORY[0x29EDCA608];
  *v20 = 0;
  v19 = 0;
  result = GPS_To_UTC_Time(&v20[1], v20, &v19, &v18, &v17, &v16, &v15, a2, a3, a4);
  HIDWORD(v7) = -1030792151 * v20[1];
  LODWORD(v7) = HIDWORD(v7);
  v6 = v7 >> 2;
  LODWORD(v7) = HIDWORD(v7);
  if ((v7 >> 4) < 0xA3D70B || v6 > 0x28F5C28)
  {
    v9 = 32;
  }

  else
  {
    v9 = 31;
  }

  if ((v20[1] & 3) != 0)
  {
    v10 = 31;
  }

  else
  {
    v10 = v9;
  }

  if (v20[0] - 13 >= 0xFFFFFFF4)
  {
    if (v20[0] > 6u)
    {
      if (v20[0] > 9u)
      {
        if (v20[0] == 10)
        {
          v13 = 242;
        }

        else if (v20[0] == 11)
        {
          v13 = 273;
        }

        else
        {
          v13 = 303;
        }
      }

      else if (v20[0] == 7)
      {
        v13 = 150;
      }

      else if (v20[0] == 8)
      {
        v13 = 181;
      }

      else
      {
        v13 = 212;
      }
    }

    else if (v20[0] > 3u)
    {
      if (v20[0] == 4)
      {
        v13 = 59;
      }

      else if (v20[0] == 5)
      {
        v13 = 89;
      }

      else
      {
        v13 = 120;
      }
    }

    else
    {
      if (v20[0] == 1)
      {
        v12 = 0;
        goto LABEL_36;
      }

      if (v20[0] == 2)
      {
        v12 = 31;
LABEL_36:
        v11 = v12 + v19;
        goto LABEL_37;
      }

      v13 = 28;
    }

    v12 = v13 + v10;
    goto LABEL_36;
  }

  v11 = -1;
LABEL_37:
  *a1 = v11;
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

char **ds_NK_Crude_Apx_Pos(char **result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v93 = *MEMORY[0x29EDCA608];
  v6 = a3 + 27088;
  if (*(a3 + 27089) <= 2u && *v6 != 1)
  {
    goto LABEL_150;
  }

  v7 = *(a2 + 24) + 604800 * *(a2 + 18) - *(a3 + 264);
  v8 = v7 >= 0 ? *(a2 + 24) + 604800 * *(a2 + 18) - *(a3 + 264) : *(a3 + 264) - (*(a2 + 24) + 604800 * *(a2 + 18));
  v9 = *(a2 + 960) == 1 && v8 >= 0xA;
  if (v9 && *v6 != 1)
  {
    goto LABEL_150;
  }

  v10 = (a3 + 8272);
  v11 = *result;
  if (g_Enable_Nav_Debug >= 3u)
  {
    v12 = 0;
    v13 = 67;
    do
    {
      *result = v11 + 1;
      *v11 = v13;
      v11 = *result;
      if (*result >= result[3])
      {
        v11 = result[2];
        *result = v11;
      }

      v13 = aCapSrch[++v12];
    }

    while (v12 != 8);
    sprintf_5d(result, gDebug);
    sprintf_5d(v5, DWORD1(gDebug));
    sprintf_5d(v5, xmmword_2A1938F80);
    sprintf_5d(v5, DWORD1(xmmword_2A1938F80));
    sprintf_5d(v5, DWORD2(xmmword_2A1938F80));
    v14 = 0;
    v15 = *v5;
    v16 = 32;
    do
    {
      *v5 = v15 + 1;
      *v15 = v16;
      v15 = *v5;
      if (*v5 >= v5[3])
      {
        v15 = v5[2];
        *v5 = v15;
      }

      v16 = aEll[++v14];
    }

    while (v14 != 4);
    sprintf_7f(v5, (*&xmmword_2A1938F58 * 180.0 * 100.0 / 3.14159265), 3);
    sprintf_7f(v5, (*(&xmmword_2A1938F58 + 1) * 180.0 * 100.0 / 3.14159265), 3);
    sprintf_7d(v5, (*&xmmword_2A1938F40 / 1000.0));
    sprintf_7d(v5, (*(&xmmword_2A1938F40 + 1) / 1000.0));
    sprintf_4d(v5, *&qword_2A1938F50);
    v17 = 0;
    v18 = *v5;
    v19 = 32;
    do
    {
      *v5 = v18 + 1;
      *v18 = v19;
      v18 = *v5;
      if (*v5 >= v5[3])
      {
        v18 = v5[2];
        *v5 = v18;
      }

      v19 = aLsq[++v17];
    }

    while (v17 != 4);
    sprintf_2d(v5, dword_2A1938F6C);
    sprintf_2d(v5, dword_2A1938F68);
    sprintf_2d(v5, byte_2A1938F7D);
    sprintf_2d(v5, byte_2A1938F7E);
    v20 = *v5;
    v21 = 32;
    v22 = 1u;
    do
    {
      *v5 = v20 + 1;
      *v20 = v21;
      v20 = *v5;
      if (*v5 >= v5[3])
      {
        v20 = v5[2];
        *v5 = v20;
      }

      v21 = aIter[v22++];
    }

    while (v22 != 6);
    sprintf_3d(v5, byte_2A1938F70);
    sprintf_3d(v5, byte_2A1938F71);
    sprintf_3d(v5, byte_2A1938F72);
    v23 = *v5;
    v24 = 32;
    v25 = 1u;
    do
    {
      *v5 = v23 + 1;
      *v23 = v24;
      v23 = *v5;
      if (*v5 >= v5[3])
      {
        v23 = v5[2];
        *v5 = v23;
      }

      v24 = aSrchprls[v25++];
    }

    while (v25 != 10);
    sprintf_2d(v5, byte_2A1938F73);
    sprintf_4d(v5, byte_2A1938F74);
    sprintf_2d(v5, byte_2A1938F7C);
    v26 = (*v5)++;
    *v26 = 32;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    if (dword_2A1938F78 >= 0)
    {
      v27 = dword_2A1938F78;
    }

    else
    {
      v27 = -dword_2A1938F78;
    }

    sprintf1da(v5, v27, v92, 0, dword_2A1938F78 >> 31);
    v28 = (*v5)++;
    *v28 = 10;
    v29 = *v5;
    if (*v5 >= v5[3])
    {
      v29 = v5[2];
    }

    v30 = 67;
    v31 = 1u;
    do
    {
      *v5 = v29 + 1;
      *v29 = v30;
      v29 = *v5;
      if (*v5 >= v5[3])
      {
        v29 = v5[2];
        *v5 = v29;
      }

      v30 = aCapVv[v31++];
    }

    while (v31 != 7);
    v32 = dword_2A1938F90;
    if (dword_2A1938F90 >= 9999)
    {
      v32 = 9999;
    }

    if (v32 <= -9999)
    {
      v33 = -9999;
    }

    else
    {
      v33 = v32;
    }

    sprintf_5d(v5, v33);
    v34 = dword_2A1938F98;
    if (dword_2A1938F98 >= 9999)
    {
      v34 = 9999;
    }

    if (v34 <= -9999)
    {
      v35 = -9999;
    }

    else
    {
      v35 = v34;
    }

    sprintf_5d(v5, v35);
    v36 = *v5;
    v37 = 32;
    v38 = 1u;
    do
    {
      *v5 = v36 + 1;
      *v36 = v37;
      v36 = *v5;
      if (*v5 >= v5[3])
      {
        v36 = v5[2];
        *v5 = v36;
      }

      v37 = aHv[v38++];
    }

    while (v38 != 4);
    v39 = HIDWORD(xmmword_2A1938F80);
    if (SHIDWORD(xmmword_2A1938F80) >= 9999)
    {
      v39 = 9999;
    }

    if (v39 <= -9999)
    {
      v40 = -9999;
    }

    else
    {
      v40 = v39;
    }

    sprintf_5d(v5, v40);
    v41 = dword_2A1938F94;
    if (dword_2A1938F94 >= 9999)
    {
      v41 = 9999;
    }

    if (v41 <= -9999)
    {
      v42 = -9999;
    }

    else
    {
      v42 = v41;
    }

    sprintf_5d(v5, v42);
    v43 = 0;
    v44 = *v5;
    v45 = 32;
    do
    {
      *v5 = v44 + 1;
      *v44 = v45;
      v44 = *v5;
      if (*v5 >= v5[3])
      {
        v44 = v5[2];
        *v5 = v44;
      }

      v45 = aA_0[++v43];
    }

    while (v43 != 2);
    v46 = dword_2A1938F9C;
    if (dword_2A1938F9C >= 9999)
    {
      v46 = 9999;
    }

    if (v46 <= -9999)
    {
      v47 = -9999;
    }

    else
    {
      v47 = v46;
    }

    sprintf_5d(v5, v47);
    v48 = *v5;
    v49 = 32;
    v50 = 1u;
    do
    {
      *v5 = v48 + 1;
      *v48 = v49;
      v48 = *v5;
      if (*v5 >= v5[3])
      {
        v48 = v5[2];
        *v5 = v48;
      }

      v49 = aR2[v50++];
    }

    while (v50 != 4);
    v51 = dword_2A1938F38;
    if (dword_2A1938F38 >= 9999)
    {
      v51 = 9999;
    }

    if (v51 <= -9999)
    {
      v52 = -9999;
    }

    else
    {
      v52 = v51;
    }

    sprintf_5d(v5, v52);
    v53 = (*v5)++;
    *v53 = 10;
    if (*v5 >= v5[3])
    {
      *v5 = v5[2];
    }

    xmmword_2A1938F80 = 0u;
    *&dword_2A1938F90 = 0u;
    *(&xmmword_2A1938F58 + 8) = 0u;
    *&byte_2A1938F70 = 0u;
    xmmword_2A1938F40 = 0u;
    *&qword_2A1938F50 = 0u;
    gDebug = 0u;
    unk_2A1938F30 = 0u;
    v11 = *v5;
    if (g_Enable_Nav_Debug >= 3u)
    {
      v54 = 67;
      v55 = 1u;
      do
      {
        *v5 = v11 + 1;
        *v11 = v54;
        v11 = *v5;
        if (*v5 >= v5[3])
        {
          v11 = v5[2];
          *v5 = v11;
        }

        v54 = aCapSv[v55++];
      }

      while (v55 != 7);
      sprintf_2d(v5, *(v6 + 4));
      sprintf_2d(v5, *(v6 + 5));
      sprintf_2d(v5, *(v6 + 6));
      sprintf_2d(v5, *(v6 + 7));
      v56 = (*v5)++;
      *v56 = 32;
      v57 = *v5;
      if (*v5 >= v5[3])
      {
        v57 = v5[2];
      }

      *v5 = v57 + 1;
      *v57 = 10;
      v11 = *v5;
      if (*v5 >= v5[3])
      {
        v11 = v5[2];
      }
    }
  }

  v58 = 0;
  v59 = 67;
  do
  {
    *v5 = v11 + 1;
    *v11 = v59;
    v11 = *v5;
    if (*v5 >= v5[3])
    {
      v11 = v5[2];
      *v5 = v11;
    }

    v59 = aCap[++v58];
  }

  while (v58 != 4);
  v60 = "fail";
  if (*(v6 + 16))
  {
    v60 = "pass";
  }

  v61 = *v60;
  if (*v60)
  {
    v62 = (v60 + 1);
    do
    {
      *v5 = v11 + 1;
      *v11 = v61;
      v11 = *v5;
      if (*v5 >= v5[3])
      {
        v11 = v5[2];
        *v5 = v11;
      }

      v63 = *v62++;
      v61 = v63;
    }

    while (v63);
  }

  v64 = 0;
  v65 = 32;
  do
  {
    *v5 = v11 + 1;
    *v11 = v65;
    v11 = *v5;
    if (*v5 >= v5[3])
    {
      v11 = v5[2];
      *v5 = v11;
    }

    v65 = aSv_0[++v64];
  }

  while (v64 != 4);
  sprintf_3d(v5, *(v6 + 1));
  v66 = *v5;
  v67 = 32;
  v68 = 1u;
  do
  {
    *v5 = v66 + 1;
    *v66 = v67;
    v66 = *v5;
    if (*v5 >= v5[3])
    {
      v66 = v5[2];
      *v5 = v66;
    }

    v67 = aMs[v68++];
  }

  while (v68 != 6);
  sprintf_5d(v5, *(v6 + 2));
  v70 = *(v6 + 8);
  v69 = *(v6 + 12);
  if (*(v6 + 8))
  {
    v72 = (5729 * v70) >> 15;
    v71 = (5729 * v69) >> 15;
    v73 = vcvtd_n_f64_s32(v69, 0xFuLL) - *(a3 + 27040);
    v74 = *(a3 + 27056);
    v75 = __sincos_stret(vcvtd_n_f64_s32(v70, 0xFuLL));
    v76 = v75.__cosval * *(a3 + 27064);
    v77 = cos(v73) * v76 + v74 * v75.__sinval;
    if (fabs(v77) < 1.0)
    {
      v78 = (acos(v77) * 6378.137);
      goto LABEL_121;
    }
  }

  else
  {
    v71 = 0;
    v72 = 0;
  }

  v78 = 0;
LABEL_121:
  sprintf_7f(v5, v72, 3);
  sprintf_7f(v5, v71, 3);
  sprintf_6d(v5, v78);
  v79 = *v5;
  for (i = 5; i > 1; --i)
  {
    *v5 = v79 + 1;
    *v79 = 32;
    v79 = *v5;
    if (*v5 >= v5[3])
    {
      v79 = v5[2];
      *v5 = v79;
    }
  }

  if (*(a2 + 12) >= 4 && (v81 = *(v6 + 1), v81 >= 3))
  {
    v83 = "BAD ";
    if (v78 < 151)
    {
      v83 = "GOOD";
    }

    v84 = "bad ";
    if (v78 < 901)
    {
      v84 = "good";
    }

    if (v81 == 3)
    {
      v82 = v84;
    }

    else
    {
      v82 = v83;
    }

    if (*(v6 + 16) != 1)
    {
      v82 = "FAIL";
    }
  }

  else
  {
    v82 = "SKIP";
  }

  v85 = *v82;
  if (*v82)
  {
    v86 = (v82 + 1);
    do
    {
      *v5 = v79 + 1;
      *v79 = v85;
      v79 = *v5;
      if (*v5 >= v5[3])
      {
        v79 = v5[2];
        *v5 = v79;
      }

      v87 = *v86++;
      v85 = v87;
    }

    while (v87);
  }

  if (v7 >= 99)
  {
    v88 = 99;
  }

  else
  {
    v88 = v7;
  }

  if (v88 <= -99)
  {
    v89 = -99;
  }

  else
  {
    v89 = v88;
  }

  sprintf_5d(v5, v89);
  sprintf_3d(v5, *v10);
  result = sprintf1da(v5, v10[1], v92, 0, 0);
  v90 = (*v5)++;
  *v90 = 10;
  if (*v5 >= v5[3])
  {
    *v5 = v5[2];
  }

LABEL_150:
  v91 = *MEMORY[0x29EDCA608];
  return result;
}

void WGS84_ECEF2Geo(long double *a1, double *a2)
{
  v14 = *MEMORY[0x29EDCA608];
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = v3 * v3 + v4 * v4;
  v7 = v5 * v5 * 2.45817226e-14;
  v9 = 3;
  v10 = 0.00669437999;
  do
  {
    v8 = v7 * 0.99330562;
    v10 = v10 - (v10 * -0.0000896294469 + v10 * v10 * (v6 * 2.45817226e-14 + v7 * 0.99330562 + -0.0000448147235 + (v8 + v8) * v10 + v8 * (v10 * v10)) + -0.0000448147235) / ((v6 * 2.45817226e-14 + v7 * 0.99330562 + -0.0000448147235 + v6 * 2.45817226e-14 + v7 * 0.99330562 + -0.0000448147235) * v10 + v7 * 0.99330562 * 4.0 * (v10 * v10) * ((v8 + v8) * 3.0 + v10) + -0.0000896294469);
    --v9;
  }

  while (v9);
  v11 = v10 + 1.0;
  if (fabs(v4) >= 0.001 || fabs(v3) >= 0.001)
  {
    a2[1] = atan2(v3, v4);
  }

  else
  {
    a2[1] = 0.0;
    v12 = 0.0;
    if (fabs(v5) < 0.001)
    {
      goto LABEL_9;
    }
  }

  v12 = atan2(v5 * v11, sqrt(v6));
LABEL_9:
  *a2 = v12;
  a2[2] = (v10 * -148.379032 + 1.0) * sqrt(v7 + v6 * 2.45817226e-14 / (v11 * v11)) * 6378137.0;
  v13 = *MEMORY[0x29EDCA608];
}

uint64_t LcsLinkedList::Remove(uint64_t result, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = *(result + 16);
  if (v2)
  {
    v3 = v2 == a2;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (v2)
    {
      *(result + 16) = *(v2 + 8);
      *(v2 + 8) = 0;
    }
  }

  else
  {
    do
    {
      v4 = v2;
      v2 = *(v2 + 8);
      if (v2)
      {
        v5 = v2 == a2;
      }

      else
      {
        v5 = 1;
      }
    }

    while (!v5);
    if (v2)
    {
      *(v4 + 8) = *(v2 + 8);
    }
  }

  if (a2)
  {
    *(a2 + 8) = 0;
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GncP11_01ConvertGnssID(int a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if ((a1 - 1) >= 6)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
    v1 = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GNSSId,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 87, "GncP11_01ConvertGnssID", 770, a1);
      LbsOsaTrace_WriteLog(8u, __str, v5, 2, 1);
      v1 = 0;
    }
  }

  else
  {
    v1 = a1;
  }

  v6 = *MEMORY[0x29EDCA608];
  return v1;
}

uint64_t GncP11_02ConvertAGnssID(uint64_t result)
{
  v1 = result;
  v7 = *MEMORY[0x29EDCA608];
  if (((result - 1) > 0x3F || ((1 << (result - 1)) & 0x800000008000808BLL) == 0) && result != 128)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
    result = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx AGNSSId,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 87, "GncP11_02ConvertAGnssID", 770, v1);
      LbsOsaTrace_WriteLog(8u, __str, v5, 2, 1);
      result = 0;
    }
  }

  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GncP11_03ConvertGnssIDToGn(uint64_t result)
{
  v1 = result;
  v7 = *MEMORY[0x29EDCA608];
  if ((result - 1) > 0x3F || ((1 << (result - 1)) & 0x800000008000800BLL) == 0)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
    result = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Input,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 87, "GncP11_03ConvertGnssIDToGn", 770, v1);
      LbsOsaTrace_WriteLog(8u, __str, v5, 2, 1);
      result = 0;
    }
  }

  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GncP11_05ConvertGnssSignalID(uint64_t result)
{
  v1 = result;
  v7 = *MEMORY[0x29EDCA608];
  if (((result - 17) > 0x30 || ((1 << (result - 17)) & 0x1000F001F000FLL) == 0) && ((result - 81) > 0x14 || ((1 << (result - 81)) & 0x1F0007) == 0))
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
    result = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SignalID,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 87, "GncP11_05ConvertGnssSignalID", 770, v1);
      LbsOsaTrace_WriteLog(8u, __str, v5, 2, 1);
      result = 0;
    }
  }

  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GncP11_15PopulateGnssAssist(uint64_t result, uint64_t a2, char a3, char a4, char a5, char a6)
{
  v13 = *MEMORY[0x29EDCA608];
  *result = 1;
  *(result + 1) = a4;
  *(result + 2) = a5;
  *(result + 3) = a6;
  *(result + 23) = 0;
  *(result + 20) = a3;
  *(result + 24) = *(a2 + 10);
  *(result + 16) = *(a2 + 4);
  *(result + 21) = *(a2 + 8);
  *(result + 30) = *(a2 + 14);
  *(result + 28) = *(a2 + 16);
  *(result + 32) = *(a2 + 17);
  LODWORD(v6) = *(a2 + 18);
  *(result + 33) = v6;
  *(result + 8) = *(a2 + 168);
  if (v6)
  {
    if (v6 >= 0x30)
    {
      v6 = 48;
    }

    else
    {
      v6 = v6;
    }

    v7 = (a2 + 19);
    v8 = (a2 + 68);
    v9 = (result + 36);
    do
    {
      v10 = *v7++;
      *(v9 - 2) = v10;
      v11 = *v8++;
      *v9 = v11;
      v9 += 2;
      --v6;
    }

    while (v6);
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GncP11_23ConvertUsrState(unsigned int a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a1 >= 6)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
    v2 = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx UsrState,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 87, "GncP11_23ConvertUsrState", 770, a1);
      LbsOsaTrace_WriteLog(8u, __str, v5, 2, 1);
      v2 = 0;
    }
  }

  else
  {
    v2 = a1;
  }

  v6 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t GncP11_24ConvertGnssContent(unsigned int a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a1 >= 5)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
    v2 = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnssCntnt,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 87, "GncP11_24ConvertGnssContent", 770, a1);
      LbsOsaTrace_WriteLog(8u, __str, v5, 2, 1);
      v2 = 0;
    }
  }

  else
  {
    v2 = a1;
  }

  v6 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t GncP11_25ConvertReliab(unsigned int a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a1 >= 5)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
    v2 = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Reliab,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 87, "GncP11_25ConvertReliab", 770, a1);
      LbsOsaTrace_WriteLog(8u, __str, v5, 2, 1);
      v2 = 0;
    }
  }

  else
  {
    v2 = a1;
  }

  v6 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t GncP11_30CheckUtcValidity(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7)
{
  v7 = 0;
  v15 = *MEMORY[0x29EDCA608];
  if (a3 && a4 <= 0x17 && a5 <= 0x3B && a6 <= 0x3C && a7 <= 0x3E7)
  {
    if (a2 <= 0xC)
    {
      if (((1 << a2) & 0x15AA) != 0)
      {
        if (a3 <= 0x1F)
        {
          goto LABEL_18;
        }

        goto LABEL_12;
      }

      if (((1 << a2) & 0xA50) != 0)
      {
        if (a3 > 0x1E)
        {
          goto LABEL_12;
        }

        goto LABEL_18;
      }

      if (a2 == 2)
      {
        if ((a1 & 3) == 0)
        {
          HIDWORD(v9) = -1030792151 * a1;
          LODWORD(v9) = -1030792151 * a1;
          if ((v9 >> 2) > 0x28F5C28 || a1 == 400 * ((10737419 * a1) >> 32))
          {
            if (a3 <= 0x1D)
            {
              goto LABEL_18;
            }

            goto LABEL_12;
          }
        }

        if (a3 > 0x1C)
        {
LABEL_12:
          v7 = 0;
          goto LABEL_19;
        }

LABEL_18:
        v7 = 1;
        goto LABEL_19;
      }
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Month,%u\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 87, "GncP11_30CheckUtcValidity", 770, a2);
      LbsOsaTrace_WriteLog(8u, __str, v13, 2, 1);
    }

    goto LABEL_12;
  }

LABEL_19:
  v10 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t GncP11_32ConvertEstimatedTech(unsigned int a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a1 >= 4)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
    v2 = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EstimTech,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 87, "GncP11_32ConvertEstimatedTech", 770, a1);
      LbsOsaTrace_WriteLog(8u, __str, v5, 2, 1);
      v2 = 0;
    }
  }

  else
  {
    v2 = a1;
  }

  v6 = *MEMORY[0x29EDCA608];
  return v2;
}

double GLON_RealAlm2RefState(__int16 a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v20 = *MEMORY[0x29EDCA608];
  *(a5 + 172) = 0u;
  *(a5 + 144) = 0u;
  *(a5 + 160) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0u;
  if (a3 >= 1)
  {
    v10 = -1;
  }

  else
  {
    v10 = 86399;
  }

  *(a5 + 80) = 0uLL;
  *(a5 + 96) = 0uLL;
  *(a5 + 48) = 0uLL;
  *(a5 + 64) = 0uLL;
  *(a5 + 32) = 0uLL;
  *a5 = 0uLL;
  *(a5 + 16) = 0uLL;
  GLON_RealAlm2ECEF(v19, &v17, a4, v10 + a3, (a2 - (a3 < 1)));
  GLON_RealAlm2ECEF(a5, a5 + 24, a4, a3, a2);
  *(a5 + 48) = vsubq_f64(*(a5 + 24), v17);
  *(a5 + 64) = *(a5 + 40) - v18;
  *(a5 + 96) = -*(a4 + 72);
  *(a5 + 104) = 0;
  *(a5 + 168) = a3;
  *(a5 + 172) = a2;
  *(a5 + 174) = a1;
  *(a5 + 184) = 2;
  *(a5 + 166) = 123;
  *(a5 + 180) = *(a4 + 10);
  *(a5 + 176) = 2;
  v11 = a2 - *(a4 + 8);
  v12 = v11 + 1461;
  if (v11 >= -730)
  {
    v12 = a2 - *(a4 + 8);
  }

  if (v11 <= 730)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11 - 1461;
  }

  if (v13 < 0)
  {
    v13 = -v13;
  }

  if (v13 >= 0x281)
  {
    v14 = 65500;
  }

  else
  {
    v14 = 100 * v13 + 1500;
  }

  result = (v14 * v14);
  *(a5 + 112) = result;
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

void DD_Assist_GPS_Data(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a3;
  v8 = 0;
  v110 = *MEMORY[0x29EDCA608];
  v95 = a1 + 224;
  v99 = a1 + 192;
  v9 = a4 + 104;
  v98 = a2 - 241;
  v10 = a4 + 7016;
  v97 = a4 + 104;
  do
  {
    if (*(v6 + v8) > 0xA5u || *(*(a4 + 48) + v8) == 1 && (v98 - *(v9 + 108 * v8)) > 0xFFFFF806)
    {
      goto LABEL_37;
    }

    v108 = 0u;
    memset(v109, 0, 28);
    v107 = 0u;
    v105 = 0u;
    memset(v106, 0, sizeof(v106));
    if (!Core_Get_GPS_Eph((v8 + 1), a2, &v105))
    {
      goto LABEL_9;
    }

    v11 = *(a4 + 48);
    if (*(v11 + v8) == 1)
    {
      v12 = (v9 + 108 * v8);
      if (v105 <= *v12 && a2 - *v12 >= -1800)
      {
LABEL_9:
        *(*(a4 + 8) + 20 * v8 + 8) = 0;
LABEL_10:
        v6 = a3;
        goto LABEL_37;
      }

      v13 = DWORD2(v105);
      if (v105 - *v12 <= 10799 && Is_GPS_BinEph_Real(v12) && !Is_GPS_BinEph_Real(&v105))
      {
        *v12 = a2;
        v9 = v97;
        goto LABEL_10;
      }
    }

    else
    {
      v13 = DWORD2(v105);
    }

    v14 = (0xE4FE7F3uLL >> ((v13 >> 2) & 0x1F)) & 1;
    v15 = *a4;
    if (*(*a4 + v8))
    {
      v9 = v97;
    }

    else
    {
      v9 = v97;
      if (v14)
      {
        v16 = *(a4 + 64);
        if (*(v16 + v8) != 1)
        {
          goto LABEL_25;
        }

        v17 = (v10 + 44 * v8);
        v18 = 0xE4FE7F3uLL >> (v17[5] & 0x1F);
        v19 = *v17;
        if ((v18 & 1) != 0 || v19 + 3600 <= a2)
        {
          if (v19 + 100 < a2)
          {
            *(*(a4 + 24) + v8) = 0;
            *(v16 + v8) = 0;
            *(v99 + v8) = -1;
            v11 = *(a4 + 48);
            v15 = *a4;
          }

LABEL_25:
          LOBYTE(v14) = 1;
          goto LABEL_26;
        }

        LOBYTE(v14) = 0;
      }
    }

LABEL_26:
    v20 = v9 + 108 * v8;
    v21 = v109[0];
    *(v20 + 64) = v108;
    *(v20 + 80) = v21;
    *(v20 + 92) = *(v109 + 12);
    v22 = v106[0];
    *v20 = v105;
    *(v20 + 16) = v22;
    v23 = v107;
    *(v20 + 32) = v106[1];
    *(v20 + 48) = v23;
    *(*(a4 + 16) + v8) = 1;
    *(v11 + v8) = 1;
    v24 = v14 & 1;
    *(v15 + v8) = v24;
    if (v24)
    {
      v25 = 1;
    }

    else
    {
      v25 = 2;
    }

    v26 = *(a4 + 8) + 20 * v8;
    v27 = (v26 + 12);
    v28 = (v26 + 8);
    if (*(v20 + 4) == 5)
    {
      v29 = v28;
    }

    else
    {
      v29 = v27;
    }

    *v29 = v25;
    if (a2 >= 1)
    {
      *(*(a4 + 72) + v8) = 1;
      Core_Save_GPS_Eph((v8 + 1), 0, v20);
      v15 = *a4;
    }

    v30 = 0;
    LODWORD(v31) = 0;
    v32 = p_NV;
    v33 = v15[1];
    *(p_NV + 92) = *v15;
    *(v32 + 108) = v33;
    v34 = 55665;
    v6 = a3;
    do
    {
      v35 = *(v32 + 88 + v30) ^ BYTE1(v34);
      v34 = 52845 * (v34 + v35) + 22719;
      v31 = (v31 + v35);
      ++v30;
    }

    while (v30 != 40);
    *(v32 + 80) = v31;
    v36 = a1 + 6 * v8;
    *v36 = 16777472;
    *(v36 + 4) = 256;
    *(v95 + 2 * v8) = 256;
LABEL_37:
    ++v8;
  }

  while (v8 != 32);
  if (a2 >= 1)
  {
    v37 = 0;
    v38 = a4 + 3560;
    do
    {
      if (*(*a4 + v37) == 1 && (*(*(a5 + 896) + v37) & 1) == 0 && *(v6 + v37) <= 0xA5u && (*(*(a4 + 56) + v37) != 1 || a2 - *(v38 + 108 * v37) >= 241))
      {
        v108 = 0u;
        memset(v109, 0, 28);
        v107 = 0u;
        v105 = 0u;
        memset(v106, 0, sizeof(v106));
        GPS_BinEph = EE_Get_GPS_BinEph((v37 + 1), a2, &v105);
        v40 = *(a4 + 56);
        if (!GPS_BinEph || (v41 = v105, *(v40 + v37) == 1) && v105 <= *(v38 + 108 * v37))
        {
          *(v40 + v37) = 0;
        }

        else
        {
          v42 = v106[0];
          v43 = (v38 + 108 * v37);
          *v43 = v105;
          v43[1] = v42;
          *(v43 + 92) = *(v109 + 12);
          v44 = v109[0];
          v43[4] = v108;
          v43[5] = v44;
          v45 = v107;
          v43[2] = v106[1];
          v43[3] = v45;
          *(*(a4 + 16) + v37) = 1;
          *(v40 + v37) = 1;
          v46 = a1 + 6 * v37;
          *v46 = 16777472;
          *(v46 + 4) = 256;
          memset(v104, 0, sizeof(v104));
          v103 = 0u;
          v102 = 0u;
          v101[0] = v41;
          v101[1] = DWORD1(v105);
          LOBYTE(v102) = BYTE8(v105);
          v47 = 21;
          v48 = 11;
          *(&v102 + 1) = *(&v105 + 9);
          v49 = v106 + 8;
          *(v95 + 2 * v37) = 256;
          do
          {
            v50 = v101 + v48;
            *v50 = *v49;
            *(v50 + 1) = *(v49 + 1);
            v49 += 4;
            --v47;
            v48 += 3;
          }

          while (v47 > 1);
          Debug_Log_GPS_Eph(2, v37 + 1, v101);
        }
      }

      ++v37;
    }

    while (v37 != 32);
  }

  v51 = 0;
  v52 = 192;
  v105 = 0u;
  memset(v106, 0, 28);
  while (2)
  {
    if (*(*(a4 + 64) + v51) != 1 || a2 - *(v10 + 44 * v51) >= 1801)
    {
      *(&v105 | 0xC) = 0u;
      *((&v105 | 0xC) + 0x10) = 0u;
      if (Core_Get_GPS_Alm((v51 + 1), a2, &v105))
      {
        v53 = *(a4 + 64);
        if (*(v53 + v51) != 1 || v105 > *(v10 + 44 * v51))
        {
          v54 = (0xE4FE7F3uLL >> (BYTE4(v106[0]) & 0x1F)) & 1;
          v55 = *a4;
          if ((*(*a4 + v51) & 1) == 0 && v54)
          {
            v56 = *(a4 + 48);
            if (*(v56 + v51) == 1)
            {
              v57 = (v97 + 108 * v51);
              v58 = 0xE4FE7F3uLL >> ((v57[2] >> 2) & 0x1F);
              v59 = *v57;
              if ((v58 & 1) == 0 && v59 + 3600 > a2)
              {
                LOBYTE(v54) = 0;
                goto LABEL_68;
              }

              if (v59 + 100 < a2)
              {
                *(*(a4 + 16) + v51) = 0;
                *(v56 + v51) = 0;
                v60 = a1 + 6 * v51;
                *v60 = 16777472;
                *(v60 + 4) = 256;
                *(v95 + 2 * v51) = 256;
              }
            }

            LOBYTE(v54) = 1;
          }

LABEL_68:
          v61 = (v10 + 44 * v51);
          v62 = v106[0];
          *v61 = v105;
          v61[1] = v62;
          *(v61 + 28) = *(v106 + 12);
          *(*(a4 + 24) + v51) = 1;
          *(v53 + v51) = 1;
          *(v55 + v51) = v54;
          if (a2 >= 1)
          {
            v63 = 0;
            LODWORD(v64) = 0;
            v65 = p_NV;
            v66 = p_NV + 56 * v51;
            v67 = *v61;
            v68 = v61[1];
            *(v66 + 220) = *(v61 + 28);
            *(v66 + 192) = v67;
            *(v66 + 208) = v68;
            v69 = v65 + v52;
            v70 = 55665;
            do
            {
              v71 = *(v69 + v63) ^ BYTE1(v70);
              v70 = 52845 * (v70 + v71) + 22719;
              v64 = (v64 + v71);
              ++v63;
            }

            while (v63 != 48);
            *(v66 + 184) = v64;
            v55 = *a4;
          }

          v72 = 0;
          LODWORD(v73) = 0;
          v74 = p_NV;
          v75 = v55[1];
          *(p_NV + 92) = *v55;
          *(v74 + 108) = v75;
          v76 = 55665;
          do
          {
            v77 = *(v74 + 88 + v72) ^ BYTE1(v76);
            v76 = 52845 * (v76 + v77) + 22719;
            v73 = (v73 + v77);
            ++v72;
          }

          while (v72 != 40);
          *(v74 + 80) = v73;
          *(v99 + v51) = -1;
        }
      }
    }

    ++v51;
    v52 += 56;
    if (v51 != 32)
    {
      continue;
    }

    break;
  }

  v105 = 0uLL;
  if ((*(a4 + 8428) - 4) > 2 || a2 - *(a4 + 8424) >= 1801)
  {
    GPS_Klob = Core_Get_GPS_Klob(a2, &v105);
    v79 = *(a4 + 8428);
    if (GPS_Klob)
    {
      if ((v79 - 4) > 2 || v105 > *(a4 + 8424))
      {
        *(a4 + 8424) = v105;
        if (a2 >= 1 && *(a4 + 8428) != 3)
        {
          v80 = 0;
          LODWORD(v81) = 0;
          v82 = p_NV;
          v83 = p_NV + 136;
          *(p_NV + 136) = v105;
          v84 = 55665;
          do
          {
            v85 = *(v83 + v80) ^ BYTE1(v84);
            v84 = 52845 * (v84 + v85) + 22719;
            v81 = (v81 + v85);
            ++v80;
          }

          while (v80 != 16);
          *(v82 + 128) = v81;
        }
      }
    }

    else if (a2 >= 901 && !v79)
    {
      *(a4 + 8424) = a2 - 900;
      *(a4 + 8432) = 0xFAFF0427FFFF0205;
      *(a4 + 8428) = 1;
      EvLog("DD_Assist_GPS_Ion:  Iono Model missing, default used.");
    }
  }

  v105 = 0uLL;
  *&v106[0] = 0;
  v86 = (a4 + 8440);
  if (((*(a4 + 8444) - 4) > 2 || a2 - *v86 >= 1801) && Core_Get_GPS_UTC(a2, &v105) && ((*(a4 + 8444) - 4) > 2 || v105 > *v86))
  {
    *v86 = v105;
    *(a4 + 8456) = *&v106[0];
    if (a2 >= 1 && *(a4 + 8444) != 3)
    {
      v87 = 0;
      LODWORD(v88) = 0;
      v89 = p_NV;
      v90 = p_NV + 160;
      *(p_NV + 160) = v105;
      *(v89 + 176) = *&v106[0];
      v91 = 55665;
      do
      {
        v92 = *(v90 + v87) ^ BYTE1(v91);
        v91 = 52845 * (v91 + v92) + 22719;
        v88 = (v88 + v92);
        ++v87;
      }

      while (v87 != 24);
      *(v89 + 152) = v88;
    }
  }

  v93 = *MEMORY[0x29EDCA608];
}

uint64_t gps_find_session_info(int a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v1 = sessionInfoTable;
  if (sessionInfoTable)
  {
    while (*v1 != a1)
    {
      v1 = *(v1 + 192);
      if (!v1)
      {
        goto LABEL_7;
      }
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SessionId,%u,sessionProtocol,%u,posProtocol,%u,v_Emergency,%u,isMsrPosReqRcvd,%u\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 73, "gps_find_session_info", *v1, *(v1 + 4), *(v1 + 8), *(v1 + 14), *(v1 + 16));
      LbsOsaTrace_WriteLog(0x13u, __str, v3, 4, 1);
    }
  }

LABEL_7:
  v4 = *MEMORY[0x29EDCA608];
  return v1;
}

_OWORD *gps_create_session_info_ext(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 68, "gps_create_session_info_ext");
    LbsOsaTrace_WriteLog(0x13u, __str, v3, 5, 1);
  }

  v4 = operator new(0xC8uLL, MEMORY[0x29EDC9418]);
  v5 = v4;
  if (!v4)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      goto LABEL_11;
    }

    bzero(__str, 0x410uLL);
    v15 = mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v15), "PSP", 69, "gps_create_session_info_ext", 1537);
    v14 = 0;
    goto LABEL_10;
  }

  v6 = *(a1 + 176);
  v4[10] = *(a1 + 160);
  v4[11] = v6;
  *(v4 + 24) = *(a1 + 192);
  v7 = *(a1 + 112);
  v4[6] = *(a1 + 96);
  v4[7] = v7;
  v8 = *(a1 + 144);
  v4[8] = *(a1 + 128);
  v4[9] = v8;
  v9 = *(a1 + 48);
  v4[2] = *(a1 + 32);
  v4[3] = v9;
  v10 = *(a1 + 80);
  v4[4] = *(a1 + 64);
  v4[5] = v10;
  v11 = *(a1 + 16);
  *v4 = *a1;
  v4[1] = v11;
  if (sessionInfoTable)
  {
    *(v4 + 24) = sessionInfoTable;
  }

  sessionInfoTable = v4;
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 1, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SessionID,%u,SessionProtocol,%u,posProtocol,%u,v_Emergency,%u\n", (*&g_MacClockTicksToMsRelation * v12), "PSP", 65, "gps_create_session_info_ext", *v5, *(v5 + 4), *(v5 + 2), *(v5 + 14));
    v14 = 1;
LABEL_10:
    LbsOsaTrace_WriteLog(0x13u, __str, v13, v14, 1);
  }

LABEL_11:
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v16 = mach_continuous_time();
    v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "PSP", 68, "gps_create_session_info_ext");
    LbsOsaTrace_WriteLog(0x13u, __str, v17, 5, 1);
  }

  v18 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t gps_delete_session_info(int a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 68, "gps_delete_session_info");
    LbsOsaTrace_WriteLog(0x13u, __str, v3, 5, 1);
  }

  v4 = sessionInfoTable;
  if (sessionInfoTable)
  {
    if (*sessionInfoTable == a1)
    {
      v5 = 0;
LABEL_9:
      if (v5)
      {
        v7 = (v5 + 192);
      }

      else
      {
        v7 = &sessionInfoTable;
      }

      *v7 = *(v4 + 192);
      MEMORY[0x29C29EB20]();
    }

    else
    {
      v6 = sessionInfoTable;
      while (1)
      {
        v4 = *(v6 + 192);
        if (!v4)
        {
          break;
        }

        v5 = v6;
        v6 = *(v6 + 192);
        if (*v4 == a1)
        {
          goto LABEL_9;
        }
      }
    }
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "PSP", 68, "gps_delete_session_info");
    result = LbsOsaTrace_WriteLog(0x13u, __str, v10, 5, 1);
  }

  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t gps_delete_all_sessions(void)
{
  v8 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "PSP", 68, "gps_delete_all_sessions");
    LbsOsaTrace_WriteLog(0x13u, __str, v1, 5, 1);
  }

  for (i = sessionInfoTable; sessionInfoTable; i = sessionInfoTable)
  {
    sessionInfoTable = *(i + 192);
    HandlePPDUStopSession(i);
    MEMORY[0x29C29EB20](i, 0x1020C407D934135);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v4), "PSP", 68, "gps_delete_all_sessions");
    result = LbsOsaTrace_WriteLog(0x13u, __str, v5, 5, 1);
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t find_wlan_session_info(void)
{
  v6 = *MEMORY[0x29EDCA608];
  v0 = sessionInfoTable;
  if (sessionInfoTable)
  {
    while (*(v0 + 188) != 1)
    {
      v0 = *(v0 + 24);
      if (!v0)
      {
        goto LABEL_4;
      }
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: WLAN SessionId,%u\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 73, "find_wlan_session_info", *v0);
      LbsOsaTrace_WriteLog(0x13u, __str, v3, 4, 1);
    }

    result = *v0;
  }

  else
  {
LABEL_4:
    result = 0xFFFFFFFFLL;
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

SuplProvider *SUPL_Message_Handler(SuplProvider *result)
{
  v11 = *MEMORY[0x29EDCA608];
  v1 = SUPL_Queue;
  while (SUPL_Queue)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      SUPL_Queue = *(v1 + 8);
      *v2 = 0;
      *(v1 + 8) = 0;
    }

    else
    {
      SUPL_Queue = 0;
      qword_2A14BEA08 = 0;
    }

    v3 = *(v1 + 16);
    if (v3 > 5)
    {
      if (*(v1 + 16) > 8u)
      {
        switch(v3)
        {
          case 9u:
            SUPL_Recieve_LPP_Pos_Rsp(*(v1 + 96));
            break;
          case 0xAu:
            SUPL_Recieve_LPP_Cap_Rsp(*(v1 + 104));
            break;
          case 0xBu:
            SUPL_process_Abort_In(v1);
            break;
          default:
LABEL_34:
            if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v7 = mach_continuous_time();
              v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SUPL Event\n", (*&g_MacClockTicksToMsRelation * v7), "SPL", 69, "SUPL_Message_Handler", 770);
              LbsOsaTrace_WriteLog(0x12u, __str, v8, 0, 1);
            }

            break;
        }
      }

      else
      {
        switch(v3)
        {
          case 6u:
            LcsTimer::OnTimer(*(v1 + 20));
            break;
          case 7u:
            SUPL_HandleECIDParams(v1);
            break;
          case 8u:
            SUPL_Recieve_LPP_Ad_Rsp(*(v1 + 88));
            break;
          default:
            goto LABEL_34;
        }
      }
    }

    else if (*(v1 + 16) > 2u)
    {
      switch(v3)
      {
        case 3u:
          v4 = *(v1 + 20);
          Instance = SuplProvider::GetInstance(result);
          if (Instance)
          {
            v6 = Instance + 8;
          }

          else
          {
            v6 = 0;
          }

          (*(*v6 + 24))(v6, v4, v1 + 64);
          break;
        case 4u:
          SUPL_Process_AidResponse(v1);
          break;
        case 5u:
          SUPL_Process_posResponse(v1);
          break;
        default:
          goto LABEL_34;
      }
    }

    else if (*(v1 + 16))
    {
      if (v3 == 1)
      {
        SUPL_Handle_Comms_Close(v1);
      }

      else
      {
        SUPL_Handle_PUSH_Received(v1);
      }
    }

    else
    {
      SUPL_Handle_Comms_Open(v1);
    }

    result = SUPL_Message_Free(v1);
    v1 = SUPL_Queue;
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

void SUPL_Handle_Comms_Open(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  LcsFunctionEntryExitTrace::LcsFunctionEntryExitTrace(v13, 109, "SUPL_Handle_Comms_Open");
  if (a1)
  {
    v2 = *(a1 + 20);
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 0);
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Status,%u\n", (*&g_MacClockTicksToMsRelation * v4), "SPL", 73, "SUPL_Handle_Comms_Open", *(a1 + 24));
      IsLoggingAllowed = LbsOsaTrace_WriteLog(0x12u, __str, v5, 4, 1);
    }

    if (!v2)
    {
      IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
      if (IsLoggingAllowed)
      {
        bzero(__str, 0x410uLL);
        v6 = mach_continuous_time();
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx requestID\n", (*&g_MacClockTicksToMsRelation * v6), "SPL", 69, "SUPL_Handle_Comms_Open", 770);
        IsLoggingAllowed = LbsOsaTrace_WriteLog(0x12u, __str, v7, 0, 1);
      }
    }

    Instance = SuplProvider::GetInstance(IsLoggingAllowed);
    if (Instance)
    {
      v9 = Instance + 8;
    }

    else
    {
      v9 = 0;
    }

    (*(*v9 + 8))(v9, v2, *(a1 + 28));
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "SPL", 69, "SUPL_Handle_Comms_Open", 513);
    LbsOsaTrace_WriteLog(0x12u, __str, v11, 0, 1);
  }

  LcsFunctionEntryExitTrace::~LcsFunctionEntryExitTrace(v13);
  v12 = *MEMORY[0x29EDCA608];
}

void sub_299706214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  LcsFunctionEntryExitTrace::~LcsFunctionEntryExitTrace(va);
  _Unwind_Resume(a1);
}

uint64_t SUPL_Handle_Comms_Close(unsigned int *a1)
{
  v16 = *MEMORY[0x29EDCA608];
  Instance = LcsSuplGlueLayer::GetInstance(a1);
  if (!Instance)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (!result)
    {
      goto LABEL_14;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
LABEL_12:
    v8 = v10;
    v9 = 0;
    goto LABEL_13;
  }

  v3 = a1[5];
  if (!v3)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (!result)
    {
      goto LABEL_14;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx requestID\n");
    goto LABEL_12;
  }

  v4 = Instance;
  v5 = *(Instance + 5);
  if (!v5)
  {
LABEL_6:
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: No session exist with SessionID,%u\n", (*&g_MacClockTicksToMsRelation * v7), "SPL", 68, "SUPL_Handle_Comms_Close", v3);
      v9 = 5;
LABEL_13:
      result = LbsOsaTrace_WriteLog(0x12u, __str, v8, v9, 1);
    }

LABEL_14:
    v11 = *MEMORY[0x29EDCA608];
    return result;
  }

  while (*v5 != v3)
  {
    v5 = *(v5 + 8);
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v12 = SuplProvider::GetInstance(Instance);
  if (v12)
  {
    v13 = v12 + 8;
  }

  else
  {
    v13 = 0;
  }

  (*(*v13 + 16))(v13, v3, a1[7]);
  v14 = *MEMORY[0x29EDCA608];

  return LcsSuplGlueLayer::DeleteSessionInfo(v4, v3);
}

void SUPL_Handle_PUSH_Received(void *a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v1 = a1;
    v2 = *(a1 + 5);
    if (v2)
    {
      __p = 0;
      v10 = 0;
      v11 = 0;
      if (&__p != a1 + 5)
      {
        a1 = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, a1[5], a1[6], a1[6] - a1[5]);
      }

      Instance = SuplUtils::GetInstance(a1);
      SuplUtils::ProcessSuplMtlrMessage(Instance, *(v1 + 32), &__p, v2);
      if (__p)
      {
        v10 = __p;
        operator delete(__p);
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(&__p, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(&__p, 0x40FuLL, "%10u %s%c %s: #%04hx requestID\n", (*&g_MacClockTicksToMsRelation * v6), "SPL", 69, "SUPL_Handle_PUSH_Received", 770);
      LbsOsaTrace_WriteLog(0x12u, &__p, v7, 0, 1);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(&__p, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(&__p, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "SPL", 69, "SUPL_Handle_PUSH_Received", 513);
    LbsOsaTrace_WriteLog(0x12u, &__p, v5, 0, 1);
  }

  v8 = *MEMORY[0x29EDCA608];
}

SimUtils *SUPL_HandleECIDParams(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (!a1 || !*(a1 + 128))
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Either SuplMessage or locationIDInfo is NULL\n", (*&g_MacClockTicksToMsRelation * v6), "SPL", 69, "SUPL_HandleECIDParams", 770);
      result = LbsOsaTrace_WriteLog(0x12u, __str, v7, 0, 1);
    }

    goto LABEL_9;
  }

  result = SimUtils::GetInstance(a1);
  if (!result)
  {
LABEL_9:
    v8 = *MEMORY[0x29EDCA608];
    return result;
  }

  updated = SimUtils::UpdateLocationIdInfo(result, *(a1 + 32), *(a1 + 128));
  Instance = SuplUtils::GetInstance(updated);
  v5 = *MEMORY[0x29EDCA608];

  return SuplUtils::ProcessWaitingSuplInits(Instance);
}

uint64_t SUPL_Recieve_LPP_Ad_Rsp(_DWORD *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 0);
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: sessionID,%u\n", (*&g_MacClockTicksToMsRelation * v3), "SPL", 73, "SUPL_Recieve_LPP_Ad_Rsp", *a1);
      IsLoggingAllowed = LbsOsaTrace_WriteLog(0x12u, __str, v4, 4, 1);
    }

    Instance = SuplLppProvider::GetInstance(IsLoggingAllowed);
    result = SuplLppProvider::SetLppAdPayload(Instance, a1);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "SPL", 69, "SUPL_Recieve_LPP_Ad_Rsp", 513);
      result = LbsOsaTrace_WriteLog(0x12u, __str, v8, 0, 1);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SUPL_Recieve_LPP_Pos_Rsp(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 0);
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: sessionID,%u\n", (*&g_MacClockTicksToMsRelation * v3), "SPL", 73, "SUPL_Recieve_LPP_Pos_Rsp", *(a1 + 28));
      IsLoggingAllowed = LbsOsaTrace_WriteLog(0x12u, __str, v4, 4, 1);
    }

    Instance = SuplLppProvider::GetInstance(IsLoggingAllowed);
    v6 = SuplPosPayloadHandler::GetInstance(Instance);
    result = SuplPosPayloadHandler::HandleLppPosResponseFromStack(v6, a1);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "SPL", 69, "SUPL_Recieve_LPP_Pos_Rsp", 513);
      result = LbsOsaTrace_WriteLog(0x12u, __str, v9, 0, 1);
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SUPL_Recieve_LPP_Cap_Rsp(_DWORD *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 0);
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: sessionID,%u\n", (*&g_MacClockTicksToMsRelation * v3), "SPL", 73, "SUPL_Recieve_LPP_Cap_Rsp", *a1);
      IsLoggingAllowed = LbsOsaTrace_WriteLog(0x12u, __str, v4, 4, 1);
    }

    Instance = SuplLppProvider::GetInstance(IsLoggingAllowed);
    result = SuplLppProvider::SetLppCapPayload(Instance, a1);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "SPL", 69, "SUPL_Recieve_LPP_Cap_Rsp", 513);
      result = LbsOsaTrace_WriteLog(0x12u, __str, v8, 0, 1);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

void *SUPL_Process_AidResponse(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (!result)
    {
      goto LABEL_14;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
LABEL_13:
    result = LbsOsaTrace_WriteLog(0x12u, __str, v9, 0, 1);
    goto LABEL_14;
  }

  v2 = *(a1 + 20);
  if (!v2)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (!result)
    {
      goto LABEL_14;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx requestID\n");
    goto LABEL_13;
  }

  if (!*(a1 + 120))
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx AID Rsp\n");
      goto LABEL_13;
    }

LABEL_14:
    v10 = *MEMORY[0x29EDCA608];
    return result;
  }

  Instance = SuplProvider::GetInstance(a1);
  v4 = (*(*Instance + 8))(Instance, v2, **(a1 + 120));
  v5 = SuplUtils::GetInstance(v4);
  v6 = *(*(a1 + 120) + 8);
  v7 = *MEMORY[0x29EDCA608];

  return SuplUtils::StoreLastKnownPositionFix(v5, v6);
}

void SUPL_Process_posResponse(void *a1)
{
  v18 = *MEMORY[0x29EDCA608];
  if (a1 && (v1 = a1, (v2 = a1[14]) != 0))
  {
    if (*(v2 + 24) == 3)
    {
      v3 = *(a1 + 5);
      if (v3)
      {
        __p = 0;
        v13 = 0;
        v14 = 0;
        v15 = -1;
        v17 = 0;
        v16 = v3;
        if (&__p != v2)
        {
          a1 = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *v2, *(v2 + 8), *(v2 + 8) - *v2);
          v2 = v1[14];
        }

        v17 = *(v2 + 32);
        v15 = *(v2 + 28) != 2;
        Instance = SuplProvider::GetInstance(a1);
        (*(*Instance + 16))(Instance, &__p);
        if (__p)
        {
          v13 = __p;
          operator delete(__p);
        }
      }

      else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
      {
        bzero(&__p, 0x410uLL);
        v9 = mach_continuous_time();
        v10 = snprintf(&__p, 0x40FuLL, "%10u %s%c %s: #%04hx requestID\n", (*&g_MacClockTicksToMsRelation * v9), "SPL", 69, "SUPL_Process_posResponse", 770);
        LbsOsaTrace_WriteLog(0x12u, &__p, v10, 0, 1);
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(&__p, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(&__p, 0x40FuLL, "%10u %s%c %s: #%04hx posRspContentType\n", (*&g_MacClockTicksToMsRelation * v7), "SPL", 69, "SUPL_Process_posResponse", 770);
      LbsOsaTrace_WriteLog(0x12u, &__p, v8, 0, 1);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(&__p, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(&__p, 0x40FuLL, "%10u %s%c %s: #%04hx Either SuplMessage or ppduResponseMsg is NULL\n", (*&g_MacClockTicksToMsRelation * v5), "SPL", 69, "SUPL_Process_posResponse", 770);
    LbsOsaTrace_WriteLog(0x12u, &__p, v6, 0, 1);
  }

  v11 = *MEMORY[0x29EDCA608];
}

void sub_299707180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (***SUPL_process_Abort_In(SuplProvider *a1))(void, void, char *, void)
{
  v8 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 5);
  if (v1)
  {
    __str[0] = 1;
    v7 = v1;
    result = SuplProvider::GetInstance(a1);
    if (result)
    {
      result = (**result)(result, 0, __str, 0);
    }
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx requestID\n", (*&g_MacClockTicksToMsRelation * v3), "SPL", 69, "SUPL_process_Abort_In", 770);
      result = LbsOsaTrace_WriteLog(0x12u, __str, v4, 0, 1);
    }
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

char **KFP_printMeas(char **result)
{
  v19 = *MEMORY[0x29EDCA608];
  if ((g_FPE_LogSeverity & 0x80) != 0)
  {
    v1 = result;
    if (result)
    {
      if ((g_FPE_LogSeverity & 8) != 0)
      {
        v2 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v3 = *(g_TCU + 8);
        }

        else
        {
          v3 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f $LCMSG: nonSyncedFields = {KfirInputMeas:[%6.12f %d]}", "KFP_printMeas", 177, v2, v3, *v1, *(v1 + 2));
      }

      v6 = g_p_CB_LCD_SA_Dbg;
      if (g_p_CB_LCD_SA_Dbg)
      {
        v7 = *g_p_CB_LCD_SA_Dbg;
        v8 = 36;
        v9 = 1u;
        do
        {
          *v6 = v7 + 1;
          *v7 = v8;
          v7 = *v6;
          if (*v6 >= v6[3])
          {
            v7 = v6[2];
            *v6 = v7;
          }

          v8 = aKfiData[v9++];
        }

        while (v9 != 11);
        LCD_SA_Debug_Flush_Check(g_p_CB_LCD_SA_Dbg);
        v6 = g_p_CB_LCD_SA_Dbg;
      }

      v10 = 0;
      v18 = 216;
      v11 = v6;
      do
      {
        if (v11)
        {
          sprintf_02x(v11, *(&v18 + v10));
          LCD_SA_Debug_Flush_Check(g_p_CB_LCD_SA_Dbg);
          v6 = g_p_CB_LCD_SA_Dbg;
          v11 = g_p_CB_LCD_SA_Dbg;
        }

        ++v10;
      }

      while (v10 != 4);
      v12 = 0;
      v17 = *(v1 + 2);
      v13 = v6;
      do
      {
        if (v13)
        {
          sprintf_02x(v13, *(&v17 + v12));
          LCD_SA_Debug_Flush_Check(g_p_CB_LCD_SA_Dbg);
          v6 = g_p_CB_LCD_SA_Dbg;
          v13 = g_p_CB_LCD_SA_Dbg;
        }

        ++v12;
      }

      while (v12 != 4);
      v14 = 0;
      result = v6;
      do
      {
        if (result)
        {
          sprintf_02x(result, *(v1 + v14));
          LCD_SA_Debug_Flush_Check(g_p_CB_LCD_SA_Dbg);
          v6 = g_p_CB_LCD_SA_Dbg;
          result = g_p_CB_LCD_SA_Dbg;
        }

        ++v14;
      }

      while (v14 != 216);
      if (v6)
      {
        v15 = (*v6)++;
        *v15 = 10;
        if (*v6 >= v6[3])
        {
          *v6 = v6[2];
        }
      }
    }

    else
    {
      if (g_FPE_LogSeverity)
      {
        v4 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v5 = *(g_TCU + 8);
        }

        else
        {
          v5 = 0.0;
        }

        result = LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input meas is equal to nullptr!", "KFP_printMeas", 172, v4, v5);
      }

      g_FPE_AssertFlag = 1;
    }
  }

  v16 = *MEMORY[0x29EDCA608];
  return result;
}

void KFP_runLeveler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6);
  v8 = v7;
  v9 = v6;
  v82 = *MEMORY[0x29EDCA608];
  v10 = v6 + 1889392;
  v11 = *(v7 + 8);
  if (v11 == 6 || v11 == 0)
  {
    LVLR_Run(v6 + 1889376, v7);
  }

  if (*v10 == 1 && *(v8 + 8) == 2 && *(v8 + 208) == 1)
  {
    v70 = 0;
    v13 = (v9 + 1879576);
    memset(v69, 0, sizeof(v69));
    Set_Mat_Const(1, *(v9 + 1879576), 0x20, v69, *(v8 + 128));
    Copy_SubMat_to_Mat(1.0, 32, v69, 27, 0, 1024, (v9 + 1879584));
    v14 = (v8 + 80);
    v62 = (v8 + 16);
    Set_Mat_Const(1, *(v9 + 1879576), 0x20, v69, *(v8 + 80));
    Copy_SubMat_to_Mat(1.0, 32, v69, 28, 0, 1024, (v9 + 1879584));
    *&v66[0] = 0;
    if (R8_EQ((v8 + 80), v66) || (*&v78[0] = 0, R8_EQ((v8 + 88), v78)))
    {
      v15 = *v13;
      v16 = 0.0;
    }

    else
    {
      v15 = *v13;
      v16 = *(v8 + 88) - *v14;
    }

    Set_Mat_Const(1, v15, 0x20, v69, v16);
    Copy_SubMat_to_Mat(1.0, 32, v69, 29, 0, 1024, (v9 + 1879584));
    *&v66[0] = 0;
    if (R8_EQ((v8 + 80), v66) || (*&v78[0] = 0, R8_EQ((v8 + 96), v78)))
    {
      v17 = *v13;
      v18 = 0.0;
    }

    else
    {
      v17 = *v13;
      v18 = *(v8 + 96) - *v14;
    }

    Set_Mat_Const(1, v17, 0x20, v69, v18);
    Copy_SubMat_to_Mat(1.0, 32, v69, 31, 0, 1024, (v9 + 1879584));
    v19 = *v8;
    v81 = 0;
    v80 = 0u;
    memset(v79, 0, sizeof(v79));
    memset(v78, 0, sizeof(v78));
    LVLR_GetLevelerOutputs(v9 + 1889376, v78);
    v20 = *(&v80 + 1);
    v21 = v81;
    memset(v77, 0, sizeof(v77));
    Copy_Mat(3, v78, 3, v77);
    v76 = 0;
    v75 = 0u;
    memset(v74, 0, sizeof(v74));
    Copy_Mat(3, v79, 6, v74);
    Set_Mat_Size(6, v74, 4, 1);
    LODWORD(v22) = v79[2];
    *&v75 = v22;
    memset(v73, 0, sizeof(v73));
    Copy_Mat(3, &v79[2] + 2, 3, v73);
    memset(v72, 0, sizeof(v72));
    InsUtil_ECEF2Geo_Iterative(v62, v72, 6378137.0);
    memset(v71, 0, sizeof(v71));
    CreateC_e_n(v72, v71);
    bzero(v69, 0x2008uLL);
    Copy_Mat(1024, (v9 + 1890000), 0x400, v69);
    memset(v68, 0, sizeof(v68));
    Copy_SubMat_from_Mat(1.0, 1024, (v9 + 1890000), 0, 0, 3, 3u, 9, v68);
    Mult_MatT_Mat(9, v71, 9, v68, 9, v68);
    Mult_Mat_Mat(9, v68, 9, v71, 9, v68);
    Copy_SubMat_to_Mat(1.0, 9, v68, 0, 0, 1024, v69);
    Copy_SubMat_from_Mat(1.0, 1024, (v9 + 1890000), 18, 18, 3, 3u, 9, v68);
    Mult_MatT_Mat(9, v71, 9, v68, 9, v68);
    Mult_Mat_Mat(9, v68, 9, v71, 9, v68);
    Copy_SubMat_to_Mat(1.0, 9, v68, 18, 18, 1024, v69);
    v23 = v9 + 1890008;
    v61 = v10;
    v24 = *(v10 + 612);
    v25 = *(v9 + 1890008 + 8 * (28 * v24 + 28));
    v26 = *(v8 + 104);
    if (v25 < v26)
    {
      v25 = *(v8 + 104);
    }

    v27 = DWORD1(v69[0]);
    *(v69 + (28 * DWORD1(v69[0]) + 28) + 1) = v25;
    *&v66[0] = 0;
    if (!R8_EQ((v8 + 80), v66))
    {
      *&v64 = 0;
      if (!R8_EQ((v8 + 88), &v64))
      {
        v28 = *(v23 + 8 * (29 * v24 + 29));
        if (v28 < v26 + *(v8 + 112))
        {
          v28 = v26 + *(v8 + 112);
        }

        *(v69 + (29 * v27 + 29) + 1) = v28;
      }
    }

    v29 = *(v23 + 8 * (30 * v24 + 30));
    if (v29 < v26)
    {
      v29 = v26;
    }

    *(v69 + (30 * v27 + 30) + 1) = v29;
    *&v66[0] = 0;
    if (!R8_EQ((v8 + 80), v66))
    {
      *&v64 = 0;
      if (!R8_EQ((v8 + 96), &v64))
      {
        v30 = *(v23 + 8 * (31 * v24 + 31));
        if (v30 < v26 + *(v8 + 120))
        {
          v30 = v26 + *(v8 + 120);
        }

        *(v69 + (31 * v27 + 31) + 1) = v30;
      }
    }

    v63 = v8;
    if (All_Mat_Greater_Than(0.0, 3, v73))
    {
      Set_Mat_Const(3, 3u, 9, v68, 0.0);
      Copy_Vec_to_Mat_diag(3, v73, 0, 0, 1, 1, 9, v68);
      Copy_SubMat_to_Mat(1.0, 9, v68, 12, 12, 1024, v69);
    }

    if (*v13)
    {
      v31 = 0;
      v32 = 0;
      v33 = 252056;
      v34 = 302344;
      v35 = 1887792;
      v36 = 67400;
      do
      {
        v37 = *(v9 + v35);
        v67 = 0;
        memset(v66, 0, sizeof(v66));
        Copy_SubMat_from_Mat(1.0, 1024, (v9 + 1879584), 0, v32, *(v9 + 1879584), 1u, 32, v66);
        v64 = 0u;
        v65 = 0u;
        Set_Mat_Size(3, &v64, 1, 3);
        *(&v64 + 1) = v20;
        *&v65 = v21;
        *(&v65 + 1) = v37;
        KF_initKFafterLeveling(v9 + v31 + 24, v66, v69, &v64, v77, v62, (v63 + 48), v74, v19);
        if ((g_FPE_LogSeverity & 8) != 0)
        {
          v38 = mach_continuous_time();
          v39 = g_TCU ? *(g_TCU + 8) : 0.0;
          _X20 = v9 + v33;
          _X8 = v9 + v33 + 648;
          __asm { PRFM            #0, [X8] }

          LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f Attitude_State[deg] for Filter Index %d  =  {%lf, %lf, %lf}", "KFP_initPosAfterLeveling", 393, (*&g_MacClockTicksToMsRelation * v38), v39, v32, *(v9 + v31 + 17760), *(v9 + v31 + 17768), *(v9 + v31 + 17776));
          if ((g_FPE_LogSeverity & 8) != 0)
          {
            v46 = mach_continuous_time();
            v47 = g_TCU ? *(g_TCU + 8) : 0.0;
            LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f Attitude_Rate_State[deg/s]: for Filter Index %d  =  {%lf, %lf, %lf}", "KFP_initPosAfterLeveling", 400, (*&g_MacClockTicksToMsRelation * v46), v47, v32, *(v9 + v31 + 17792), *(v9 + v31 + 17800), *(v9 + v31 + 17808));
            if ((g_FPE_LogSeverity & 8) != 0)
            {
              v48 = mach_continuous_time();
              v49 = g_TCU ? *(g_TCU + 8) : 0.0;
              _X9 = v9 + v34;
              __asm { PRFM            #0, [X9] }

              v52 = *(v9 + v36);
              LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f CCH_Values_And_Lever_Arm: for Filter Index %d  =  {%lf, %lf}", "KFP_initPosAfterLeveling", 406, (*&g_MacClockTicksToMsRelation * v48), v49, v32, v52, *(v9 + v31 + 17744));
              if ((g_FPE_LogSeverity & 8) != 0)
              {
                v53 = mach_continuous_time();
                v54 = g_TCU ? *(g_TCU + 8) : 0.0;
                __asm { PRFM            #0, [X20] }

                LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f Accel_Bias[m/samp_period^2]: for Filter Index %d  =  {%lf, %lf, %lf}", "KFP_initPosAfterLeveling", 413, (*&g_MacClockTicksToMsRelation * v53), v54, v32, *(v9 + v31 + 17112), *(v9 + v31 + 17120), *(v9 + v31 + 17128));
                if ((g_FPE_LogSeverity & 8) != 0)
                {
                  v56 = mach_continuous_time();
                  if (g_TCU)
                  {
                    v57 = *(g_TCU + 8);
                  }

                  else
                  {
                    v57 = 0.0;
                  }

                  LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f Gyro_Bias[deg/samp_period]: for Filter Index %d  =  {%lf, %lf, %lf}", "KFP_initPosAfterLeveling", 420, (*&g_MacClockTicksToMsRelation * v56), v57, v32, *(v9 + v31 + 17144) * 57.2957795, *(v9 + v31 + 17152) * 57.2957795, *(v9 + v31 + 17160) * 57.2957795);
                }
              }
            }
          }
        }

        ++v32;
        v33 += 117472;
        v34 += 117472;
        v35 += 8;
        v31 += 117472;
        v36 += 117472;
      }

      while (v32 < *v13);
    }

    *(v9 + 8) = *v63;
    if ((g_FPE_LogSeverity & 8) != 0)
    {
      v58 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v59 = *(g_TCU + 8);
      }

      else
      {
        v59 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f KF_SM: Init After leveling", "KFP_runLeveler", 465, v58, v59);
    }

    *(v9 + 1898496) = *v9;
    *(v61 + 600) = 4;
  }

  v60 = *MEMORY[0x29EDCA608];
}

uint64_t KFP_runMeas(uint64_t a1, double *a2, uint64_t a3)
{
  v3 = a2;
  v4 = a1;
  v223 = *MEMORY[0x29EDCA608];
  if (*a2 < *a1)
  {
    if ((g_FPE_LogSeverity & 4) != 0)
    {
      v5 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v6 = *(g_TCU + 8);
      }

      else
      {
        v6 = 0.0;
      }

      v119 = *v3;
      LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f Ignoring meas type #%d measurements from the past (%0.2f) at time: %0.2f", "KFP_runMeas", 699, v5, v6, *(v3 + 8), *v3, *v4);
    }

    goto LABEL_151;
  }

  v7 = (a1 + 1879576);
  if (!*(a1 + 1879576))
  {
LABEL_151:
    result = 1;
    goto LABEL_152;
  }

  v8 = a3;
  v9 = 0;
  v10 = 0;
  v11 = (a1 + 1888048);
  v12 = a1 + 1888056;
  v136 = a1 + 24;
  v126 = a1 + 1888592;
  v127 = a1 + 1888328;
  v128 = a3 + 17520;
  v125 = vdupq_n_s64(0x40F86A0000000000uLL);
  v134 = (a1 + 1888048);
  v137 = a1 + 1888056;
  v129 = (a1 + 1879576);
  while (1)
  {
    if (*(v12 + 8 * v9) == 0.0)
    {
      goto LABEL_147;
    }

    v168 = 0;
    memset(v167, 0, sizeof(v167));
    v166 = 0;
    memset(v165, 0, sizeof(v165));
    v164 = *(v3 + 8);
    v13 = v11[486];
    if ((v13 & 0xFFFFFFFE) == 2)
    {
      v11[67];
    }

    v10 |= v13 == 3;
    v14 = v136 + 117472 * v9;
    v15 = KF_ApplySingleMeas(v14, v3, v10 & 1, v167, v165, &v164);
    v16 = v15;
    v17 = v11[486];
    if (v17 == 3)
    {
      if (v15)
      {
        v12 = v137;
        if (*(v3 + 8) != 4)
        {
          goto LABEL_123;
        }

        goto LABEL_121;
      }

      Shift_Left_Vec(*v4, 32, v4 + 474550, 0x20, v4 + 474550);
      v219 = 0;
      v217 = 0u;
      v218 = 0u;
      v215 = 0u;
      v216 = 0u;
      v213 = 0u;
      v214 = 0u;
      v211 = 0u;
      v212 = 0u;
      v209 = 0u;
      v210 = 0u;
      v207 = 0u;
      v208 = 0u;
      v205 = 0u;
      v206 = 0u;
      v203 = 0u;
      v204 = 0u;
      Diff_Vec(32, v4 + 474550, 0x20, &v203);
      Max_Vec(32, &v203, 0);
      v26 = v25;
      v202 = 0;
      v200 = 0u;
      v201 = 0u;
      v198 = 0u;
      v199 = 0u;
      v196 = 0u;
      v197 = 0u;
      v194 = 0u;
      v195 = 0u;
      v192 = 0u;
      v193 = 0u;
      v190 = 0u;
      v191 = 0u;
      v188 = 0u;
      v189 = 0u;
      v27 = *(v4 + 474550) - 4;
      v186 = 0u;
      v187 = 0u;
      Copy_SubMat_from_Mat(1.0, 32, v4 + 474550, v27, 0, 4, 1u, 32, &v186);
      v185 = 0;
      v183 = 0u;
      v184 = 0u;
      v181 = 0u;
      v182 = 0u;
      v179 = 0u;
      v180 = 0u;
      v177 = 0u;
      v178 = 0u;
      v175 = 0u;
      v176 = 0u;
      v173 = 0u;
      v174 = 0u;
      v171 = 0u;
      v172 = 0u;
      v169 = 0u;
      v170 = 0u;
      Diff_Vec(32, &v186, 0x20, &v169);
      Max_Vec(32, &v169, 0);
      if (v26 > 60.0)
      {
        v33 = v136 + 117472 * v9;
        v11 = v134;
        v30 = v136;
        if (v28 <= 60.0)
        {
          v45 = v136 + 117472 * v134[67];
          v46 = *v4 + 15.0;
          Set_Mat_Const(0x20, 1u, 0x20, (v45 + 67384), 10.0);
          *(v45 + 67648) = v46;
          v11 = v134;
          KF_softResetCmd(v136 + 117472 * v134[67], 0, 10.0);
          v47 = g_FPE_LogSeverity;
          if ((g_FPE_LogSeverity & 4) != 0)
          {
            v48 = mach_continuous_time();
            if (g_TCU)
            {
              v49 = *(g_TCU + 8);
            }

            else
            {
              v49 = 0.0;
            }

            LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f KFP requests Soft Reset (AllStates) during RUN mode, time=%f", "KFP_UpdateBankState", 617, (*&g_MacClockTicksToMsRelation * v48), v49, *v4);
            v47 = g_FPE_LogSeverity;
          }

          if ((v47 & 0x200) != 0)
          {
            LC_LOG_NMEA_GENERIC("%s,CCHA,%d", "$PFPEX", 3);
          }

          v59 = (v136 + 117472 * v134[67]);
          v59[23] = 0;
          v59[24] = 0;
          v59[22] = 0;
          KF_softResetCmd(v59, 3, 0.0);
        }

        else
        {
          v34 = v134[67];
          v35 = *v4 - *(v136 + 117472 * v34 + 48744);
          if (v35 < 0.0)
          {
            v35 = -v35;
          }

          if (v35 <= 80.0)
          {
            v52 = (v136 + 117472 * v34);
            v52[22] = 0;
            v52[23] = 0;
            v52[24] = 0;
            KF_softResetCmd(v52, 3, 0.0);
            v53 = v136 + 117472 * v134[67];
            v54 = *v4;
            *(v53 + 67560) = v125;
            *(v53 + 67576) = 0x40F86A0000000000;
            *(v53 + 67648) = v54 + 30.0;
            *(v53 + 48744) = v54;
            v55 = g_FPE_LogSeverity;
            if ((g_FPE_LogSeverity & 4) != 0)
            {
              v56 = mach_continuous_time();
              if (g_TCU)
              {
                v57 = *(g_TCU + 8);
              }

              else
              {
                v57 = 0.0;
              }

              LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f KFP requests Soft Reset (Unmount) during RUN mode, time=%f", "KFP_UpdateBankState", 651, (*&g_MacClockTicksToMsRelation * v56), v57, *v4);
              v55 = g_FPE_LogSeverity;
            }

            if ((v55 & 0x200) != 0)
            {
              v58 = 4;
              goto LABEL_58;
            }
          }

          else if ((g_FPE_LogSeverity & 4) != 0)
          {
            v36 = mach_continuous_time();
            if (g_TCU)
            {
              v37 = *(g_TCU + 8);
            }

            else
            {
              v37 = 0.0;
            }

            LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f KFP Divergence detected during run, time=%f", "KFP_UpdateBankState", 659, (*&g_MacClockTicksToMsRelation * v36), v37, *v4);
          }
        }
      }

      else
      {
        v29 = g_FPE_LogSeverity;
        v11 = v134;
        v30 = v136;
        if ((g_FPE_LogSeverity & 4) != 0)
        {
          v31 = mach_continuous_time();
          if (g_TCU)
          {
            v32 = *(g_TCU + 8);
          }

          else
          {
            v32 = 0.0;
          }

          LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f KFP requests Internal Reset during RUN mode, time=%f", "KFP_UpdateBankState", 600, (*&g_MacClockTicksToMsRelation * v31), v32, *v4);
          v29 = g_FPE_LogSeverity;
        }

        v33 = v136 + 117472 * v9;
        if ((v29 & 0x200) != 0)
        {
          v58 = 2;
LABEL_58:
          LC_LOG_NMEA_GENERIC("%s,CCHA,%d", "$PFPEX", v58);
        }
      }

      KF_softResetCmd(v30 + 117472 * v11[67], 0, 10.0);
      CCH_initStates((v30 + 117472 * v11[67] + 48760));
      v60 = (v30 + 117472 * v11[67] + 34376);
      *v60 = 0u;
      v60[1] = 0u;
      v60[2] = 0u;
      v60[3] = 0u;
      v60[4] = 0u;
      v60[5] = 0u;
      v60[6] = 0u;
      v60[7] = 0u;
      v60[8] = 0u;
      v60[9] = 0u;
      v60[10] = 0u;
      *(v60 + 169) = 0u;
      v14 = v33;
      if (v26 <= 60.0)
      {
        goto LABEL_160;
      }

      goto LABEL_90;
    }

    if (v17 == 2)
    {
      break;
    }

LABEL_91:
    if (*(v3 + 8) != 4)
    {
      v12 = v137;
      goto LABEL_122;
    }

    v12 = v137;
    if (v17 == 2 && (g_FPE_LogSeverity & 8) != 0)
    {
      v75 = mach_continuous_time();
      v76 = g_TCU ? *(g_TCU + 8) : 0.0;
      LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f Attitude_State[deg] for Filter Index %d  =  {%lf, %lf, %lf}", "KFP_runMeas", 755, (*&g_MacClockTicksToMsRelation * v75), v76, v9, *(v14 + 17736), *(v14 + 17744), *(v14 + 17752));
      if ((g_FPE_LogSeverity & 8) != 0)
      {
        v77 = mach_continuous_time();
        v78 = g_TCU ? *(g_TCU + 8) : 0.0;
        LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f Attitude_Rate_State[deg/s]: for Filter Index %d  =  {%lf, %lf, %lf}", "KFP_runMeas", 762, (*&g_MacClockTicksToMsRelation * v77), v78, v9, *(v14 + 17768), *(v14 + 17776), *(v14 + 17784));
        if ((g_FPE_LogSeverity & 8) != 0)
        {
          v79 = mach_continuous_time();
          v80 = g_TCU ? *(g_TCU + 8) : 0.0;
          v81 = *(v14 + 67376);
          LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f CCH_Values_And_Lever_Arm: for Filter Index %d  =  {%lf, %lf}", "KFP_runMeas", 768, (*&g_MacClockTicksToMsRelation * v79), v80, v9, v81, *(v14 + 17720));
          if ((g_FPE_LogSeverity & 8) != 0)
          {
            v82 = mach_continuous_time();
            v83 = g_TCU ? *(g_TCU + 8) : 0.0;
            LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f Accel_Bias[m/samp_period^2]: for Filter Index %d  =  {%lf, %lf, %lf}", "KFP_runMeas", 775, (*&g_MacClockTicksToMsRelation * v82), v83, v9, *(v14 + 17088), *(v14 + 17096), *(v14 + 17104));
            if ((g_FPE_LogSeverity & 8) != 0)
            {
              v84 = mach_continuous_time();
              if (g_TCU)
              {
                v85 = *(g_TCU + 8);
              }

              else
              {
                v85 = 0.0;
              }

              LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f Gyro_Bias[deg/samp_period]: for Filter Index %d  =  {%lf, %lf, %lf}", "KFP_runMeas", 782, (*&g_MacClockTicksToMsRelation * v84), v85, v9, *(v14 + 17120) * 57.2957795, *(v14 + 17128) * 57.2957795, *(v14 + 17136) * 57.2957795);
            }
          }
        }
      }
    }

LABEL_121:
    *(v14 + 117464) = *v3;
    v17 = v11[486];
LABEL_122:
    if ((v17 & 0xFFFFFFFE) == 2)
    {
LABEL_123:
      v86 = v11[67];
      if ((v86 & 0x80000000) == 0 && v9 == v86 && v164 == 3 && *(v8 + 17512))
      {
        v132 = v10;
        v133 = v9;
        v87 = 0;
        v88 = 0;
        v143 = (v14 + 17008);
        v142 = (v14 + 16944);
        v141 = v14 + 8;
        v160 = v160 & 0xFFFFFFFF00000000 | 3;
        v159 = v159 & 0xFFFFFFFF00000000 | 3;
        v157 = v157 & 0xFFFFFFFF00000000 | 3;
        v158 = v158 & 0xFFFFFFFF00000000 | 3;
        v156 = v156 & 0xFFFFFFFF00000000 | 3;
        v145 = v145 & 0xFFFFFFFF00000000 | 3;
        v146 = v146 & 0xFFFFFFFF00000000 | 3;
        v147 = v147 & 0xFFFFFFFF00000000 | 3;
        v148 = v148 & 0xFFFFFFFF00000000 | 3;
        v149 = v149 & 0xFFFFFFFF00000000 | 3;
        v150 = v150 & 0xFFFFFFFF00000000 | 3;
        v151 = v151 & 0xFFFFFFFF00000000 | 3;
        v152 = v152 & 0xFFFFFFFF00000000 | 3;
        v153 = v153 & 0xFFFFFFFF00000000 | 3;
        v154 = v154 & 0xFFFFFFFF00000000 | 3;
        v155 = v155 & 0xFFFFFFFF00000000 | 3;
        v89 = 17552;
        v90 = 17520;
        v91 = 6608;
        v92 = v128;
        v144 = v14;
        do
        {
          v203 = 0u;
          v204 = 0u;
          v186 = 0u;
          v187 = 0u;
          Set_Mat_Const(3, 1u, v160, &v203, 0.0);
          Set_Mat_Const(3, 1u, v159, &v186, 0.0);
          Sub_Mat(v158, v143, v157, (v92 + 48), v156, &v203);
          Sub_Mat(v153, v142, v149, (v92 + 80), v145, &v186);
          Transpose_Mat(v146, &v203, v147, &v203, v93, v94);
          Transpose_Mat(v148, &v186, v150, &v186, v95, v96);
          v162 = Dot_Vec_Vec(v151, v92, v152, &v203);
          v97 = Dot_Vec_Vec(v154, v92, v155, &v186);
          v98.f64[0] = *(v14 + 232);
          v99 = (v8 + 4 * v88);
          v100 = v99[148];
          if (((v100 - 1) & 0xFFFFFFFB) != 0)
          {
            v98.f64[0] = v98.f64[0] + *(v141 + 8 * (v100 + 27));
          }

          v101 = *(v14 + 224);
          v102 = v8 + v90;
          v103 = (v8 + v89);
          v98.f64[1] = v101;
          v104.f64[0] = v162;
          v104.f64[1] = v97;
          *(v8 + v89 + 96) = vaddq_f64(vsubq_f64(v98, *(v8 + v90 + 112)), vaddq_f64(v104, *(v8 + v89)));
          if (g_TCU)
          {
            v105 = *(v8 + 392) + *(g_TCU + 64);
          }

          else
          {
            v105 = 0.0;
          }

          v106 = v8 + 8 * v88;
          if (v105 - *(v106 + 8) > 0.5 && (g_FPE_LogSeverity & 8) != 0)
          {
            v138 = mach_continuous_time();
            if (g_TCU)
            {
              v107 = *(g_TCU + 8);
            }

            else
            {
              v107 = 0.0;
            }

            v108 = *&g_MacClockTicksToMsRelation;
            v109 = *(v106 + 8);
            v163 = v99[148];
            v140 = v99[100];
            v110 = *(v106 + 2808);
            v111 = v99[258];
            v139 = v99[258] == 0;
            if (v111 >= 0x1D)
            {
              gn_report_assertion_failure("SV_Meas_Edit_Char");
              v112 = 120;
            }

            else
            {
              v112 = dword_2997621C8[v111];
            }

            v113 = *(a3 + v87 + 8384);
            v114 = *(a3 + v91);
            v115 = *(a3 + v91) == 0;
            if (v114 >= 0x1D)
            {
              v135 = v112;
              gn_report_assertion_failure("SV_Meas_Edit_Char");
              v112 = v135;
              v116 = 120;
            }

            else
            {
              v116 = dword_2997621C8[v114];
            }

            v117 = *v103;
            v118 = *(v102 + 40);
            LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f SVLine  %6.1f   %6.1f   %d  %d    %6.1f %d%c    %6.1f %d%c    %6.1f    %6.1f    %6.1f    %6.1f    %6.1f    %6.1f", "KFP_runMeas", 879, (v108 * v138), v107, v105, v109, v163, v140, v110, v139, v112, v113, v115, v116, sqrt(*(a3 + v87 + 4824)), sqrt(*(a3 + v87 + 10400)), *v103, v103[12], v118, *(v102 + 136));
          }

          ++v88;
          v8 = a3;
          v92 += 144;
          v87 += 8;
          v91 += 4;
          v90 += 144;
          v89 += 144;
          v14 = v144;
        }

        while (v88 < *(a3 + 17512));
        v3 = a2;
        v4 = a1;
        v7 = v129;
        v9 = v133;
        v10 = v132;
        v11 = v134;
        v12 = v137;
      }
    }

LABEL_147:
    if (++v9 >= *v7)
    {
      goto LABEL_151;
    }
  }

  v18 = v164;
  *&v206 = 0;
  v204 = 0u;
  v205 = 0u;
  v203 = 0u;
  Mat_Eq_Scalar(1.0, 6, v167, 6, &v203);
  *&v189 = 0;
  v187 = 0u;
  v188 = 0u;
  v186 = 0u;
  Mat_Eq_Scalar(0.0, 6, v167, 6, &v186);
  if (*v4 - v4[1] > 10.0)
  {
    v19 = v186;
    if (v186)
    {
      v20 = 0;
      v21 = 0;
      v22 = 0.0;
      do
      {
        v23 = v20;
        v24 = DWORD1(v186);
        if (DWORD1(v186))
        {
          do
          {
            v22 = v22 + *(&v186 + ++v23);
            --v24;
          }

          while (v24);
        }

        ++v21;
        v20 += DWORD1(v186);
      }

      while (v21 != v186);
      v19 = v22 > 0.0;
    }

    if (v203)
    {
      v38 = 0;
      v39 = 0;
      v40 = 0.0;
      do
      {
        v41 = v38;
        v42 = DWORD1(v203);
        if (DWORD1(v203))
        {
          do
          {
            v40 = v40 + *(&v203 + ++v41);
            --v42;
          }

          while (v42);
        }

        ++v39;
        v38 += DWORD1(v203);
      }

      while (v39 != v203);
      v19 |= v40 > 0.0;
    }

    if (v18 & 0xFFFFFFF7) == 1 && (v19)
    {
      *&v172 = 0;
      v170 = 0u;
      v171 = 0u;
      v169 = 0u;
      v222 = 0;
      memset(v221, 0, sizeof(v221));
      memset(v220, 0, 56);
      if (v18 == 1)
      {
        v44 = 10.0;
        v43 = 1.0;
      }

      else if (v18 == 9)
      {
        v43 = 10.0;
        v44 = 100.0;
      }

      else
      {
        if (g_FPE_LogSeverity)
        {
          v50 = mach_continuous_time();
          if (g_TCU)
          {
            v51 = *(g_TCU + 8);
          }

          else
          {
            v51 = 0.0;
          }

          LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f meas type input is not legal in this context", "KFP_UpdateBankState", 539, (*&g_MacClockTicksToMsRelation * v50), v51);
        }

        g_FPE_AssertFlag = 1;
        v43 = 0.0;
        v44 = 0.0;
      }

      Min_Mat_Scalar(v44, 6, v165, 6, &v169);
      Max_Mat_Scalar(-v44, 6, &v169, 6, v221);
      ElMult_Mat_Mat(6, v221, 6, v221, 6, v220);
      if (LODWORD(v220[0]))
      {
        v61 = 0;
        v62 = 0;
        v63 = 0.0;
        do
        {
          v64 = v61;
          v65 = HIDWORD(v220[0]);
          if (HIDWORD(v220[0]))
          {
            do
            {
              v63 = v63 + *&v220[++v64];
              --v65;
            }

            while (v65);
          }

          ++v62;
          v61 += HIDWORD(v220[0]);
        }

        while (v62 != LODWORD(v220[0]));
      }

      else
      {
        v63 = 0.0;
      }

      *(v127 + 8 * v9) = *(v127 + 8 * v9) - v43 * v63;
      *(v126 + 8 * v9) = *(v126 + 8 * v9) + 1.0;
    }
  }

  v11 = v134;
  if ((v16 & 1) == 0)
  {
    *(v137 + 8 * v9) = 0;
    if ((g_FPE_LogSeverity & 8) != 0)
    {
      v66 = mach_continuous_time();
      if (g_TCU)
      {
        v67 = *(g_TCU + 8);
      }

      else
      {
        v67 = 0.0;
      }

      v68 = *v134;
      if (*v134)
      {
        v69 = 0;
        v70 = 0;
        v71 = v134[1];
        v72 = 0.0;
        do
        {
          v73 = v69;
          v74 = v134[1];
          if (v71)
          {
            do
            {
              v72 = v72 + *(v137 + 8 * v73++);
              --v74;
            }

            while (v74);
          }

          ++v70;
          v69 += v71;
        }

        while (v70 != v68);
        v68 = v72;
      }

      LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f Killing KF#%d by CCH (%d remains)", "KFP_UpdateBankState", 562, (*&g_MacClockTicksToMsRelation * v66), v67, v9, v68);
    }
  }

  if (Any_Mat_Greater_Than(0.0, 32, v134))
  {
LABEL_90:
    v17 = v11[486];
    goto LABEL_91;
  }

  v122 = g_FPE_LogSeverity;
  if ((g_FPE_LogSeverity & 4) != 0)
  {
    v123 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v124 = *(g_TCU + 8);
    }

    else
    {
      v124 = 0.0;
    }

    LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f KFP requests Internal Reset during CVG mode, because no kalmans left, time=%f", "KFP_UpdateBankState", 572, v123, v124, *v4);
    v122 = g_FPE_LogSeverity;
  }

  if ((v122 & 0x200) != 0)
  {
    LC_LOG_NMEA_GENERIC("%s,CCHA,%d", "$PFPEX", 1);
  }

LABEL_160:
  result = 0;
LABEL_152:
  v121 = *MEMORY[0x29EDCA608];
  return result;
}

void KFP_createOutputFromKFPool(uint64_t a1, int *a2, double a3)
{
  v75[33] = *MEMORY[0x29EDCA608];
  v6 = (a1 + 1898472);
  v7 = (a1 + 1888048);
  v8 = *(a1 + 1889992);
  if (v8 == 4 || v8 == 2)
  {
    v10 = Any_Mat_Greater_Than(1000.0, 32, (a1 + 1888584));
    v68 = 0;
    memset(v75, 0, 264);
    v11 = 0.0;
    Mat_Greater_than_Scalar(0.0, 32, (a1 + 1888584), 0x20, v75);
    ElMult_Mat_Mat(32, v7, 32, (a1 + 1888584), 0x20, v75);
    v74 = 0;
    memset(v73, 0, sizeof(v73));
    ElDiv_Mat_Mat_Cond(32, (a1 + 1888320), 32, (a1 + 1888584), 32, v75, 0x20, v73);
    if (!LODWORD(v75[0]))
    {
      goto LABEL_12;
    }

    v12 = 0;
    v13 = 0;
    do
    {
      v14 = v12;
      v15 = HIDWORD(v75[0]);
      if (HIDWORD(v75[0]))
      {
        do
        {
          v11 = v11 + *&v75[++v14];
          --v15;
        }

        while (v15);
      }

      ++v13;
      v12 += HIDWORD(v75[0]);
    }

    while (v13 != LODWORD(v75[0]));
    if (v11 != 0.0)
    {
      Max_Vec_Cond(32, v73, 32, v75, &v68);
      v18 = v17;
      v19 = v7[67];
      v20 = v68;
      if ((v19 & 0x80000000) == 0 && v19 != v68 && (g_FPE_LogSeverity & 8) != 0)
      {
        v21 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v22 = *(g_TCU + 8);
        }

        else
        {
          v22 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f Chosen filter changed from %d to %d", "KFP_UpdateChosenOne", 962, v21, v22, v7[67], v68);
        v20 = v68;
      }

      v7[67] = v20;
      memset(v72, 0, 264);
      Mat_Greater_than_Scalar(1000.0, 32, (a1 + 1888584), 0x20, v72);
      v23 = v72[0];
      if (LODWORD(v72[0]))
      {
        v24 = 0;
        v25 = 0;
        v26 = 0.0;
        do
        {
          v27 = v24;
          v28 = HIDWORD(v72[0]);
          if (HIDWORD(v72[0]))
          {
            do
            {
              v26 = v26 + *&v72[++v27];
              --v28;
            }

            while (v28);
          }

          ++v25;
          v24 += HIDWORD(v72[0]);
        }

        while (v25 != LODWORD(v72[0]));
        v23 = v26 != 0;
      }

      memset(v71, 0, 264);
      if (*a1 - *(a1 + 8) <= 60.0 || v23 == 0)
      {
        Set_Mat_Const(*(a1 + 1879576), 1u, 0x20, v71, 0.0);
      }

      else
      {
        v70 = 0;
        if (v10)
        {
          v30 = -2.22e-16;
        }

        else
        {
          v30 = 1.0;
        }

        memset(v69, 0, sizeof(v69));
        Set_Mat_Const(*(a1 + 1879576), 1u, 0x20, v69, v18);
        Sub_Mat(32, v69, 32, v73, 0x20, v69);
        Mat_Greater_than_Scalar(v30, 32, v69, 0x20, v69);
        ElMult_Mat_Mat(32, v69, 32, v75, 0x20, v69);
        Copy_Mat(32, v69, 0x20, v71);
        v31 = v7[67];
        if ((v31 & 0x80000000) != 0 || v31 >= *(a1 + 1879576))
        {
          if (g_FPE_LogSeverity)
          {
            v32 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            if (g_TCU)
            {
              v33 = *(g_TCU + 8);
            }

            else
            {
              v33 = 0.0;
            }

            LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f chosenOne = %d is not legal. prevent memory corruption!", "KFP_UpdateChosenOne", 1001, v32, v33, v7[67]);
          }

          v31 = 0;
          g_FPE_AssertFlag = 1;
          v7[67] = 0;
        }

        v71[v31 + 1] = 0;
      }

      Set_Mat_Const_Cond(0.0, 32, v71, 0x20, v7);
    }

    else
    {
LABEL_12:
      First_NonZero_in_Vector_Starting_At = Find_First_NonZero_in_Vector_Starting_At(32, v7, 0);
      v7[67] = First_NonZero_in_Vector_Starting_At < 0 ? 0 : First_NonZero_in_Vector_Starting_At;
    }

    v34 = *v7;
    if (*v7)
    {
      v35 = 0;
      v36 = 0;
      v37 = v7[1];
      v38 = 0.0;
      do
      {
        v39 = v35;
        v40 = v7[1];
        if (v37)
        {
          do
          {
            v38 = v38 + *(a1 + 1888056 + 8 * v39++);
            --v40;
          }

          while (v40);
        }

        ++v36;
        v35 += v37;
      }

      while (v36 != v34);
      v34 = v38;
    }

    v7[66] = v34;
    if (v10)
    {
      *(a1 + 117472 * v7[67] + 34392) = 0;
      if (v34 < 0xA)
      {
        if (v34 == 1)
        {
          v7[486] = 3;
          if ((g_FPE_LogSeverity & 8) != 0)
          {
            mach_continuous_time();
            if (g_TCU)
            {
              v48 = *(g_TCU + 8);
            }

            v66 = v7[67];
            LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f KF_SM: Finished Convergence. Chosen filter %d");
          }
        }
      }

      else
      {
        v41 = a1 + 1888056;
        while (1)
        {
          Min_Vec_Cond(32, v73, 32, v7, &v68);
          *(v41 + 8 * v68) = 0;
          if (!*v7)
          {
            break;
          }

          v42 = 0;
          v43 = 0;
          v44 = v7[1];
          v45 = 0.0;
          do
          {
            v46 = v42;
            v47 = v7[1];
            if (v44)
            {
              do
              {
                v45 = v45 + *(v41 + 8 * v46++);
                --v47;
              }

              while (v47);
            }

            ++v43;
            v42 += v44;
          }

          while (v43 != *v7);
          v7[66] = v45;
          if (v45 <= 9)
          {
            goto LABEL_68;
          }
        }

        v7[66] = 0;
LABEL_68:
        v7[486] = 2;
        if ((g_FPE_LogSeverity & 8) != 0)
        {
          mach_continuous_time();
          if (g_TCU)
          {
            v49 = *(g_TCU + 8);
          }

          v65 = v7[66];
          v67 = v7[67];
          LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f KF_SM: Reduced number of filters to %d. Chosen filter: %d");
        }
      }

      *(v6 + 4) = *a1;
    }
  }

  bzero(a2, 0x23E8uLL);
  if (v7[486] - 2 > 2)
  {
    Set_Mat_Const(1, 3u, 3, a2, NAN);
    Set_Mat_Const(1, 3u, 3, a2 + 8, NAN);
    *(a2 + 10) = 0x7FF8000000000000;
    Set_Mat_Const(3, 3u, 9, a2 + 2154, NAN);
    Set_Mat_Const(3, 3u, 9, a2 + 22, NAN);
    Set_Mat_Const(3, 3u, 9, a2 + 42, NAN);
    Set_Mat_Const(3, 3u, 9, a2 + 2114, NAN);
    Set_Mat_Const(3, 3u, 9, a2 + 2134, NAN);
    Set_Mat_Const(5, 5u, 0x24, a2 + 2174, NAN);
    Set_Mat_Const(5, 1u, 6, a2 + 2248, NAN);
    Set_Mat_Const(0x20, 0x20u, 0x400, a2 + 62, NAN);
    v50 = 0;
    v58 = 0;
    v57 = -1;
  }

  else
  {
    KF_prepOutput(a1 + 117472 * v7[67] + 24, a2, a3);
    v50 = *v7;
    if (*v7)
    {
      v51 = 0;
      v52 = 0;
      v53 = v7[1];
      v54 = 0.0;
      do
      {
        v55 = v51;
        v56 = v7[1];
        if (v53)
        {
          do
          {
            v54 = v54 + *(a1 + 1888056 + 8 * v55++);
            --v56;
          }

          while (v56);
        }

        ++v52;
        v51 += v53;
      }

      while (v52 != v50);
      v50 = v54;
    }

    v57 = v7[67];
    v58 = v50 < 0xB;
  }

  a2[2262] = v50;
  a2[2263] = v57;
  *(a2 + 8452) = v58;
  v59 = *v6 ^ 1;
  *(a2 + 8453) = v59;
  v60 = *(a2 + 8448);
  v61 = v58 & v59;
  if (v60 != 1)
  {
    v61 = 0;
  }

  *(a2 + 8448) = v61;
  if (v60 != v61 && (g_FPE_LogSeverity & 8) != 0)
  {
    v62 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v63 = *(g_TCU + 8);
    }

    else
    {
      v63 = 0.0;
    }

    LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f Valid Out = %d, [pos,head,extrp,mount,filt,outage] = [%d,%d,%d,%d,%d,%d]", "KFP_createOutputFromKFPool", 1136, v62, v63, *(a2 + 8448), *(a2 + 8449), *(a2 + 8450), *(a2 + 8451), *(a2 + 8454), *(a2 + 8452), *(a2 + 8453));
  }

  v64 = *MEMORY[0x29EDCA608];
}

uint64_t KFP_run(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v58 = *MEMORY[0x29EDCA608];
  if (!a3)
  {
    goto LABEL_91;
  }

  v8 = a1 + 1898468;
  v9 = (a1 + 1888048);
  if (a3 != 1)
  {
    if (g_FPE_LogSeverity)
    {
      v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v11 = *(g_TCU + 8);
      }

      else
      {
        v11 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f numOfMeas is greater than 1 (%d), which is unsupported", "KFP_run", 1166, v10, v11, a3);
    }

    g_FPE_AssertFlag = 1;
  }

  KFP_printMeas(a2);
  v16 = *(a2 + 8);
  if (v16 == 2)
  {
    v17 = *(v8 + 20);
    v18 = -1.0;
    v19 = -1.0;
    if (v17 >= 0.0)
    {
      v19 = *a1 - v17;
      if (v19 >= 99.0)
      {
        v19 = 99.0;
      }
    }

    v20 = *(v8 + 28);
    if (v20 >= 0.0)
    {
      v18 = *a1 - v20;
      if (v18 >= 99.0)
      {
        v18 = 99.0;
      }
    }

    v21 = *(v8 + 36);
    if (v21 >= 0.0)
    {
      v23 = *a1 - v21;
      if (v23 >= 99.0)
      {
        v23 = 99.0;
      }
    }

    else
    {
      v22 = v9[67];
      v23 = -1.0;
      if ((v22 & 0x80000000) == 0)
      {
        v24 = *(a1 + 8 * v22 + 1888592);
LABEL_22:
        if ((g_FPE_LogSeverity & 0x200) != 0)
        {
          v25 = *v9;
          if (*v9)
          {
            v26 = 0;
            v27 = 0;
            v28 = v9[1];
            v29 = 0.0;
            do
            {
              v30 = v26;
              v31 = v9[1];
              if (v28)
              {
                do
                {
                  v29 = v29 + *(a1 + 1888056 + 8 * v30++);
                  --v31;
                }

                while (v31);
              }

              ++v27;
              v26 += v28;
            }

            while (v27 != v25);
            v25 = v29;
          }

          LC_LOG_NMEA_GENERIC("%s,KFB,%.3f,%.1f,%.1f,%.1f,%.1f,%d,%d", "$PFPEX", *a1, v19, v18, v24, v23, v9[67], v25);
        }

        *a1 = *a2;
        *(v8 + 16) = *(a2 + 208);
        v16 = *(a2 + 8);
        goto LABEL_31;
      }
    }

    v24 = -1.0;
    goto LABEL_22;
  }

LABEL_31:
  if (v16 != 3)
  {
    goto LABEL_81;
  }

  v32 = *(a2 + 16);
  v33 = *(a1 + 1879576);
  if (v33)
  {
    v34 = (a1 + 40560);
    v35 = (v9 + 2);
    do
    {
      if (*v35 != 0.0)
      {
        *v34 = v32;
      }

      v34 += 29368;
      ++v35;
      --v33;
    }

    while (v33);
  }

  v36 = *(v8 + 12);
  if (v32)
  {
    if (v36 && (g_FPE_LogSeverity & 8) != 0)
    {
      v37 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v38 = *(g_TCU + 8);
      }

      else
      {
        v38 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f SvOutageSM: end of outage after %u sec", "KFP_runSVOSM", 1552, v37, v38, *(v8 + 12));
    }

    v39 = 0;
  }

  else
  {
    v39 = v36 + 1;
  }

  *(v8 + 12) = v39;
  v40 = *v8;
  if (*v8 == 2)
  {
    if (*(v8 + 16) != 1 || v39)
    {
      *(v8 + 8) = 0;
      v44 = g_FPE_LogSeverity;
    }

    else
    {
      v43 = *(v8 + 8) + 1;
      *(v8 + 8) = v43;
      v44 = g_FPE_LogSeverity;
      if (v43 >= 5)
      {
        if ((g_FPE_LogSeverity & 8) != 0)
        {
          v45 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          if (g_TCU)
          {
            v46 = *(g_TCU + 8);
          }

          else
          {
            v46 = 0.0;
          }

          LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f SvOutageSM: validCount=%u - all ok now", "KFP_runSVOSM", 1598, v45, v46, *(v8 + 8));
        }

        goto LABEL_79;
      }
    }

    if ((v44 & 8) != 0)
    {
      v49 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v50 = *(g_TCU + 8);
      }

      else
      {
        v50 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f SvOutageSM: validCount=%u - waiting", "KFP_runSVOSM", 1603, v49, v50, *(v8 + 8));
    }

    goto LABEL_80;
  }

  if (v40 != 1)
  {
    if (v40)
    {
      if (g_FPE_LogSeverity)
      {
        v47 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v48 = *(g_TCU + 8);
        }

        else
        {
          v48 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f SV Outage State %u is not supported!", "KFP_runSVOSM", 1608, v47, v48, *v8);
      }

      g_FPE_AssertFlag = 1;
    }

    else if (v39)
    {
      *v8 = 1;
    }

    goto LABEL_80;
  }

  if (v39)
  {
    if (v39 >= 0x28)
    {
      if ((g_FPE_LogSeverity & 8) != 0)
      {
        v41 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v42 = *(g_TCU + 8);
        }

        else
        {
          v42 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f SvOutageSM: reached maxOutageDR - invalidate output", "KFP_runSVOSM", 1580, v41, v42);
      }

      *v8 = 2;
      *(v8 + 8) = 0;
    }

    goto LABEL_80;
  }

LABEL_79:
  *v8 = 0;
LABEL_80:
  *(v8 + 4) = *v8 == 2;
LABEL_81:
  v51 = v9[486];
  if (v51 <= 1)
  {
    if (!v51)
    {
      v52 = 1;
      if (*(a1 + 16) == 1)
      {
        v9[486] = 1;
        KFP_runLeveler(a1, a2, v12, v13, v14, v15);
        *(v8 + 20) = *a2;
      }

      goto LABEL_92;
    }

    if (v51 == 1)
    {
      KFP_runLeveler(a1, a2, v12, v13, v14, v15);
      goto LABEL_91;
    }

LABEL_98:
    if (g_FPE_LogSeverity)
    {
      v56 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v57 = *(g_TCU + 8);
      }

      else
      {
        v57 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f KF BANK wrong state", "KFP_run", 1217, v56, v57);
    }

    v52 = 1;
    g_FPE_AssertFlag = 1;
    goto LABEL_92;
  }

  if (v51 != 2 && v51 != 3)
  {
    if (v51 == 4)
    {
      if (*(a2 + 8) != 1)
      {
        v52 = KFP_runMeas(a1, a2, a4);
        if (*(a2 + 8) == 4)
        {
          v9[486] = 2;
        }

        goto LABEL_92;
      }

LABEL_91:
      v52 = 1;
LABEL_92:
      v53 = *MEMORY[0x29EDCA608];
      return v52;
    }

    goto LABEL_98;
  }

  v55 = *MEMORY[0x29EDCA608];

  return KFP_runMeas(a1, a2, a4);
}

const char *KFP_init(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x29EDCA608];
  v17[0] = 0u;
  v4 = a1 + 1898464;
  v18 = 0;
  v5 = a1 + 1888312;
  memset(&v17[2], 0, 176);
  DWORD2(v17[0]) = 12;
  v17[1] = 0x4088480000000000uLL;
  KFP_printMeas(v17);
  if ((*v4 & 1) == 0)
  {
    *v4 = 1;
    *(a1 + 16) = *a2;
    Copy_Mat(1024, (a2 + 8936), 0x400, (a1 + 1890000));
    *(a1 + 1879576) = *(a2 + 4);
    Copy_Mat(1024, (a2 + 8), 0x400, (a1 + 1879584));
    Copy_Mat(32, (a2 + 8208), 0x20, (a1 + 1887784));
    Mult_Mat_scalar(0.0174532925, 32, (a1 + 1887784), 0x20, (a1 + 1887784));
  }

  *(v5 + 1680) = 0;
  *a1 = vdupq_n_s64(0xC0C3878000000000);
  Set_Mat_Const(*(a1 + 1879576), 1u, 0x20, (a1 + 1888048), 1.0);
  Set_Mat_Const(*(a1 + 1879576), 1u, 0x20, (a1 + 1888320), 0.0);
  Set_Mat_Const(*(a1 + 1879576), 1u, 0x20, (a1 + 1888584), 0.0);
  Set_Mat_Const(*(a1 + 1879576), 1u, 0x20, (a1 + 1888848), 0.0);
  Set_Mat_Const(*(a1 + 1879576), 1u, 0x20, (a1 + 1889112), 0.037);
  *v5 = 0xFFFFFFFF00000010;
  __asm { FMOV            V0.2D, #-1.0 }

  *(v4 + 24) = _Q0;
  *(v4 + 40) = 0xBFF0000000000000;
  LVLR_Init(a1 + 1889376);
  if (*(a1 + 1879576))
  {
    v11 = 0;
    v12 = a1 + 24;
    do
    {
      KF_initializeKalmanFilterCarMode(v12, a2 + 8480, v11++);
      v12 += 117472;
    }

    while (v11 < *(a1 + 1879576));
  }

  result = Set_Mat_Const(6, 1u, 0x20, (a1 + 1898200), -9999.0);
  *(v4 + 4) = 0;
  *(v4 + 8) = 0;
  *(a1 + 1898476) = 0;
  *(a1 + 1898484) = 0;
  if ((g_FPE_LogSeverity & 8) != 0)
  {
    v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v15 = *(g_TCU + 8);
    }

    else
    {
      v15 = 0.0;
    }

    result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f init KFB", "KFP_init", 1290, v14, v15);
  }

  v16 = *MEMORY[0x29EDCA608];
  return result;
}

void KFP_setDefaultConfig(int *a1)
{
  v29 = *MEMORY[0x29EDCA608];
  v2 = a1 + 2048;
  bzero(a1, 0x42F0uLL);
  v27[0] = xmmword_299762120;
  v27[1] = unk_299762130;
  v27[2] = xmmword_299762140;
  v28 = 0x3F50624DD2F1A9FCLL;
  v25[0] = xmmword_299762158;
  v25[1] = unk_299762168;
  v25[2] = xmmword_299762178;
  v26 = 0x3E45798EE2308C3ALL;
  v23[0] = xmmword_299762190;
  v23[1] = unk_2997621A0;
  v24 = 0x3F947AE147AE147BLL;
  v23[2] = xmmword_2997621B0;
  Copy_Mat(6, v27, 6, a1 + 2120);
  Copy_Mat(6, v25, 6, a1 + 2134);
  Copy_Mat(6, v23, 6, a1 + 2148);
  Set_Mat_Const(0x20, 1u, 0x20, a1 + 2168, 0.0);
  *(a1 + 1107) = 0x3FF0000000000000;
  a1[2162] = 32;
  v2[460] = 0;
  *(a1 + 8653) = 16843009;
  v2[465] = 0;
  *(a1 + 1083) = 0x4024000000000000;
  *a1 = 1;
  a1[1] = 16;
  *(a1 + 1059) = 0x4014000000000000;
  Set_Mat_Size(0x20, a1 + 2052, 1, 16);
  v3 = 0;
  v4 = 0x100000000;
  v19 = vdupq_n_s64(0x4036800000000000uLL);
  v18 = vdupq_n_s64(0x4076800000000000uLL);
  do
  {
    v5.i64[0] = v4.u32[0];
    v5.i64[1] = v4.u32[1];
    __x = vmlaq_f64(0, v19, vcvtq_f64_u64(v5));
    v21 = fmod(__x.f64[1], 360.0);
    v6.f64[0] = fmod(__x.f64[0], 360.0);
    v6.f64[1] = v21;
    *&a1[v3 + 2054] = vbslq_s8(vcltzq_f64(v6), vaddq_f64(v6, v18), v6);
    v4 = vadd_s32(v4, 0x200000002);
    v3 += 4;
  }

  while (v3 != 32);
  Set_Mat_Size(0x400, a1 + 2, 32, 16);
  for (i = 0; i != 16; ++i)
  {
    Copy_SubMat_to_Mat(1.0, 32, a1 + 2168, 0, i, 1024, a1 + 2);
  }

  memset(v22, 0, 264);
  v8 = 0.0;
  Set_Mat_Const(1, 0x20u, 0x20, v22, 0.0);
  __asm { FMOV            V0.2D, #0.25 }

  *(v22 + 8) = _Q0;
  *(&v22[1] + 8) = xmmword_2997620D0;
  __asm { FMOV            V1.2D, #2.25 }

  *(&v22[2] + 8) = _Q1;
  *(&v22[3] + 8) = vdupq_n_s64(0x4099000000000000uLL);
  *(&v22[4] + 8) = xmmword_2997620E0;
  *(&v22[5] + 8) = _Q0;
  *(&v22[6] + 8) = vdupq_n_s64(0x3F7F5C28F5C28F5BuLL);
  *(&v22[7] + 8) = xmmword_2997620F0;
  *(&v22[8] + 8) = *(&v22[3] + 8);
  *(&v22[9] + 8) = _Q0;
  *(&v22[10] + 8) = xmmword_299762100;
  __asm { FMOV            V0.2D, #10.0 }

  *(&v22[11] + 8) = _Q0;
  *(&v22[12] + 8) = _Q1;
  *(&v22[13] + 8) = xmmword_299762110;
  *(&v22[14] + 8) = vdupq_n_s64(0x4059000000000000uLL);
  *(&v22[15] + 8) = *(&v22[14] + 8);
  Set_Mat_Const(0x20, 0x20u, 0x400, a1 + 2234, 0.0);
  Copy_Vec_to_Mat_diag(32, v22, 0, 0, 1, 1, 1024, a1 + 2234);
  if ((g_FPE_LogSeverity & 8) != 0)
  {
    v16 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v8 = *(g_TCU + 8);
    }

    LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f KFP_INIT_CFG:  bankSize=%d, firstYaw=%f, deltaAngle=%f, lastYaw=%f", "KFP_setDefaultConfig", 1400, v16, v8, 16, *(a1 + 1027), 22.5, *(a1 + 1042));
  }

  v17 = *MEMORY[0x29EDCA608];
}

uint64_t KFP_ResetStatistics(uint64_t result)
{
  v1 = result;
  v65 = *MEMORY[0x29EDCA608];
  v2 = *(result + 1888316);
  if ((v2 & 0x80000000) == 0)
  {
    v3 = result + 24;
    v4 = result + 24 + 117472 * v2;
    v5 = *(v4 + 17192);
    v64 = 0;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    InsUtil_mat2quat(v4 + 16832, &v61);
    v60 = 0;
    v58 = 0u;
    v59 = 0u;
    v57 = 0u;
    InsUtil_mat2quat(v3 + 117472 * *(v1 + 1888316) + 16672, &v57);
    v55 = 0u;
    v56 = 0u;
    Copy_Mat(3, (v3 + 117472 * *(v1 + 1888316) + 16944), 3, &v55);
    v53 = 0u;
    v54 = 0u;
    Copy_SubMat_from_Mat(1.0, 32, (v3 + 117472 * *(v1 + 1888316)), 21, 0, 3, 1u, 3, &v53);
    v52 = 0.0;
    v50 = 0u;
    v51 = 0u;
    v49 = 0u;
    Set_Mat_Size(6, &v49, 6, 1);
    Copy_SubMat_to_Mat(1.0, 3, (v3 + 117472 * *(v1 + 1888316) + 17080), 0, 0, 6, &v49);
    Copy_SubMat_to_Mat(1.0, 3, (v3 + 117472 * *(v1 + 1888316) + 17112), 3, 0, 6, &v49);
    v48 = 0;
    v46 = 0u;
    v47 = 0u;
    v45 = 0u;
    Copy_SubMat_from_Mat(1.0, 32, (v3 + 117472 * *(v1 + 1888316)), 27, 0, 4, 1u, 6, &v45);
    if ((g_FPE_LogSeverity & 0x200) != 0)
    {
      LC_LOG_NMEA_GENERIC("%s,KFX,%.3f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.1f,%.1f,%.1f,%.2f,%.2f,%.2f,%.3f,%.3f,%.3f,%.3f,%.3f,%.3f,%.1f,%.1f,%.1f,%.1f", "$PFPEX", v5, *(&v61 + 1), *&v62, *(&v62 + 1), *&v63, *(&v57 + 1), *&v58, *(&v58 + 1), *&v59, *(&v55 + 1), *&v56, *(&v56 + 1), *(&v53 + 1), *&v54, *(&v54 + 1), *(&v49 + 1), *&v50, *(&v50 + 1), *&v51, *(&v51 + 1), v52, *(&v45 + 1), *&v46, *(&v46 + 1), *&v47);
    }

    memset(v44, 0, sizeof(v44));
    Copy_SubMat_from_Mat(1.0, 1024, (v3 + 117472 * *(v1 + 1888316) + 264), 0, 0, 3, 3u, 9, v44);
    v43 = 0.0;
    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
    CovMatToVec(v44, &v40, 1.0);
    Copy_SubMat_from_Mat(1.0, 1024, (v3 + 117472 * *(v1 + 1888316) + 264), 3, 3, 3, 3u, 9, v44);
    v39 = 0.0;
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    CovMatToVec(v44, &v36, 1.0);
    Copy_SubMat_from_Mat(1.0, 1024, (v3 + 117472 * *(v1 + 1888316) + 264), 6, 6, 3, 3u, 9, v44);
    v35 = 0.0;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    CovMatToVec(v44, &v32, 1.0);
    Copy_SubMat_from_Mat(1.0, 1024, (v3 + 117472 * *(v1 + 1888316) + 264), 9, 9, 3, 3u, 9, v44);
    v31 = 0.0;
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    CovMatToVec(v44, &v28, 100.0);
    Copy_SubMat_from_Mat(1.0, 1024, (v3 + 117472 * *(v1 + 1888316) + 264), 12, 12, 3, 3u, 9, v44);
    v27 = 0.0;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    CovMatToVec(v44, &v24, 1000.0);
    Copy_SubMat_from_Mat(1.0, 1024, (v3 + 117472 * *(v1 + 1888316) + 264), 21, 21, 3, 3u, 9, v44);
    v23 = 0.0;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    CovMatToVec(v44, &v20, 1.0);
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    Copy_Mat_diag_to_Vec(1024, (v3 + 117472 * *(v1 + 1888316) + 264), 0x1Bu, 4, 6, &v16);
    Sqrt_Mat(6, &v16, 6, &v16);
    if ((g_FPE_LogSeverity & 0x200) != 0)
    {
      v15 = *(v4 + 117352);
      v6 = *(v4 + 117360);
      v7 = *(v4 + 117376);
      v8 = *(v4 + 117384);
      v9 = *(v4 + 117328);
      v10 = *(v4 + 117336);
      LC_LOG_NMEA_GENERIC("%s,KFP1,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.3f,%.3f,%.3f,%.3f,%.3f,%.3f,%.3f,%.3f,%.3f,%.3f,%.3f,%.3f", "$PFPEX", *(&v32 + 1), *&v33, *(&v33 + 1), *&v34, *(&v34 + 1), v35, *(&v36 + 1), *&v37, *(&v37 + 1), *&v38, *(&v38 + 1), v39, *(&v40 + 1), *&v41, *(&v41 + 1), *&v42, *(&v42 + 1), v43, *(&v20 + 1), *&v21, *(&v21 + 1), *&v22, *(&v22 + 1), v23);
      if ((g_FPE_LogSeverity & 0x200) != 0)
      {
        LC_LOG_NMEA_GENERIC("%s,KFP2,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.3f,%.2f,%.2f,%.2f,%d,%d,%d", "$PFPEX", *(&v28 + 1), *&v29, *(&v29 + 1), *&v30, *(&v30 + 1), v31, *(&v24 + 1), *&v25, *(&v25 + 1), *&v26, *(&v26 + 1), v27, *(&v16 + 1), *&v17, *(&v17 + 1), *&v18, v6 + v15, v8 + v7, v10 + v9);
      }
    }

    result = CCH_logLastFeatures((v3 + 117472 * *(v1 + 1888316) + 48760));
  }

  v11 = *(v1 + 1879576);
  if (v11)
  {
    v12 = 0;
    v13 = v1 + 24;
    do
    {
      if (*(v1 + 1888056 + 8 * v12) != 0.0)
      {
        result = KF_ResetStatistics(v13);
        v11 = *(v1 + 1879576);
      }

      ++v12;
      v13 += 117472;
    }

    while (v12 < v11);
  }

  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Decode_BDS_2nd_Health_SF(uint64_t result, unsigned __int16 *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = *(result + 4);
  *a2 = ((*result & 3) << 7) | (v2 >> 15) & 0x7F;
  a2[1] = (v2 >> 6) & 0x1FF;
  v3 = 8 * (v2 & 0x3F);
  v4 = *(result + 8);
  v5 = *(result + 12);
  a2[2] = v3 & 0xFFF8 | (v4 >> 10) & 7;
  a2[3] = (v4 >> 10) & 0x1FF;
  a2[4] = (v4 >> 1) & 0x1FF;
  a2[5] = ((v4 & 1) << 8) | (v5 >> 14);
  a2[6] = (v5 >> 5) & 0x1FF;
  v6 = 16 * (v5 & 0x1F);
  v7 = *(result + 16);
  v8 = *(result + 20);
  a2[7] = v6 & 0xFFF0 | (v7 >> 18) & 0xF;
  a2[8] = (v7 >> 9) & 0x1FF;
  a2[9] = v7 & 0x1FF;
  a2[10] = (v8 >> 13) & 0x1FF;
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lsim02_22HandleGpsRefTimeInd(uint64_t a1)
{
  v37 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim02_22HandleGpsRefTimeInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_GPS_REFTIME_IND,Src,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim02_22HandleGpsRefTimeInd", *(a1 + 16));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GPSRFT,SId,%u\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim02_22HandleGpsRefTimeInd", *(a1 + 12));
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GPSRFT,Tow,%u,TowUnc,%u,RefDCTime,%d,Wk,%u,RCTUnc,%u,NumTowA,%u,OsTimeMs,%u\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "lsim02_22HandleGpsRefTimeInd", *(a1 + 24), *(a1 + 28), *(a1 + 32), *(a1 + 36), *(a1 + 40), *(a1 + 44), *(a1 + 144));
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  if (*(a1 + 44))
  {
    v10 = 0;
    v11 = (a1 + 50);
    do
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GPSTOWA,SvId,%u,Spoof,%u,Alert,%u,TlmRes,%u,TlmWord,%u\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 73, "lsim02_22HandleGpsRefTimeInd", *(v11 - 4), *(v11 - 3), *(v11 - 2), *(v11 - 1), *v11);
        LbsOsaTrace_WriteLog(0xCu, __str, v13, 4, 1);
      }

      ++v10;
      v11 += 3;
    }

    while (v10 < *(a1 + 44));
  }

  if (*(a1 + 16) == 7)
  {
    v14 = *(a1 + 24);
    v15 = *(a1 + 36);
    v16 = *(a1 + 28);
    v17 = gnssOsa_Calloc("lsim02_15SendGnmOsRefTime", 266, 1, 0x14uLL);
    if (v17)
    {
      v18 = v17;
      *(v17 + 3) = v14;
      *(v17 + 8) = v15;
      *(v17 + 9) = v16;
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v19 = mach_continuous_time();
        v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_REF_OS_TIME_IND =>GNM\n", (*&g_MacClockTicksToMsRelation * v19), "LSM", 73, "lsim02_15SendGnmOsRefTime");
        LbsOsaTrace_WriteLog(0xCu, __str, v20, 4, 1);
      }

      AgpsSendFsmMsg(131, 128, 8604931, v18);
    }
  }

  v21 = *(a1 + 16);
  v22 = gnssOsa_Calloc("lsim02_05RefTimeInd", 301, 1, 0x90uLL);
  if (v22)
  {
    v23 = v22;
    v24 = *(a1 + 24);
    v25 = *(a1 + 40);
    v26 = *(a1 + 56);
    *(v22 + 60) = *(a1 + 72);
    *(v22 + 44) = v26;
    *(v22 + 28) = v25;
    *(v22 + 12) = v24;
    v27 = *(a1 + 88);
    v28 = *(a1 + 104);
    v29 = *(a1 + 120);
    *(v22 + 120) = *(a1 + 132);
    *(v22 + 108) = v29;
    *(v22 + 92) = v28;
    *(v22 + 76) = v27;
    *(v22 + 34) = v21;
    *(v22 + 35) = -1;
    if ((v21 - 1) <= 3)
    {
      lsim02_02UpdateAsstBitmask(0, 4);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v30 = mach_continuous_time();
      v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASST_RTIME_IND =>GNCP\n", (*&g_MacClockTicksToMsRelation * v30), "LSM", 73, "lsim02_05RefTimeInd");
      LbsOsaTrace_WriteLog(0xCu, __str, v31, 4, 1);
    }

    AgpsSendFsmMsg(131, 134, 8585987, v23);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v32 = mach_continuous_time();
    v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v32), "LSM", 73, "lsim02_22HandleGpsRefTimeInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v33, 4, 1);
  }

  v34 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t lsim02_23HandleGpsNavModelInd(uint64_t a1)
{
  v34 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim02_23HandleGpsNavModelInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_GPS_NAVMODEL_IND,Src,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim02_23HandleGpsNavModelInd", *(a1 + 16));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GPSEPH,SId,%u,NumSv,%u\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim02_23HandleGpsNavModelInd", *(a1 + 12), *(a1 + 20));
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  v8 = *(a1 + 24);
  if (!v8)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      goto LABEL_22;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:NavModelList\n");
LABEL_20:
    LbsOsaTrace_WriteLog(0xCu, __str, v16, 2, 1);
    goto LABEL_22;
  }

  v9 = *(a1 + 20);
  if (!*(a1 + 20))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      goto LABEL_22;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:NumSvs\n");
    goto LABEL_20;
  }

  v10 = *(a1 + 16);
  v11 = gnssOsa_Calloc("lsim02_06NavModelElmInd", 344, 1, 0x20uLL);
  if (v11)
  {
    v12 = v11;
    v11[3] = v10;
    v11[7] = -1;
    *(v11 + 24) = v9;
    v13 = gnssOsa_Calloc("lsim02_06NavModelElmInd", 355, v9, 0x54uLL);
    *(v12 + 2) = v13;
    if (v13)
    {
      memcpy_s("lsim02_06NavModelElmInd", 366, v13, 84 * v9, v8, (84 * v9));
      if ((v10 - 1) <= 3)
      {
        lsim02_02UpdateAsstBitmask(1, 32);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASST_NAVM_IND =>GNCP\n", (*&g_MacClockTicksToMsRelation * v14), "LSM", 73, "lsim02_06NavModelElmInd");
        LbsOsaTrace_WriteLog(0xCu, __str, v15, 4, 1);
      }

      AgpsSendFsmMsg(131, 134, 8586243, v12);
    }

    else
    {
      free(v12);
    }
  }

LABEL_22:
  v17 = *(a1 + 24);
  if (v17)
  {
    if (!*(a1 + 20))
    {
      goto LABEL_33;
    }

    v18 = 0;
    v19 = 80;
    do
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v20 = mach_continuous_time();
        v21 = *(a1 + 24) + v19;
        v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GPSEPH,SvId,%u,CodeL2,%u,URA,%u,SvH,%u,L2PFlag,%u,Iodc,%u,Toc,%u,R1,%u,R2,%u,R3,%u,R4,%u\n", (*&g_MacClockTicksToMsRelation * v20), "LSM", 73, "lsim02_23HandleGpsNavModelInd", *(v21 - 80), *(v21 - 79), *(v21 - 78), *(v21 - 77), *(v21 - 76), *(v21 - 74), *(v21 - 72), *(v21 - 68), *(v21 - 64), *(v21 - 60), *(v21 - 56));
        LbsOsaTrace_WriteLog(0xCu, __str, v22, 4, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v23 = mach_continuous_time();
        v24 = *(a1 + 24) + v19;
        v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GPSEPH,Tgd,%d,Af2,%d,Af1,%d,Af0,%d,Crs,%d,DN,%d,Mo,%d,Cuc,%d,Cus,%d,e,%u,Powerhalf,%u\n", (*&g_MacClockTicksToMsRelation * v23), "LSM", 73, "lsim02_23HandleGpsNavModelInd", *(v24 - 52), *(v24 - 51), *(v24 - 50), *(v24 - 48), *(v24 - 44), *(v24 - 42), *(v24 - 40), *(v24 - 36), *(v24 - 34), *(v24 - 32), *(v24 - 28));
        LbsOsaTrace_WriteLog(0xCu, __str, v25, 4, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v26 = mach_continuous_time();
        v27 = (*(a1 + 24) + v19);
        v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GPSEPH,Toe,%u,FitF,%u,AODO,%u,Cic,%d,Cis,%d,OmegaA0,%d,Io,%d,Idot,%d,Crc,%d,W,%d,OmegaAdot,%d\n", (*&g_MacClockTicksToMsRelation * v26), "LSM", 73, "lsim02_23HandleGpsNavModelInd", *(v27 - 12), *(v27 - 22), *(v27 - 21), *(v27 - 10), *(v27 - 9), *(v27 - 4), *(v27 - 3), *(v27 - 4), *(v27 - 3), *(v27 - 1), *v27);
        LbsOsaTrace_WriteLog(0xCu, __str, v28, 4, 1);
      }

      ++v18;
      v19 += 84;
    }

    while (v18 < *(a1 + 20));
    v17 = *(a1 + 24);
    if (v17)
    {
LABEL_33:
      free(v17);
    }

    *(a1 + 24) = 0;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v29 = mach_continuous_time();
    v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v29), "LSM", 73, "lsim02_23HandleGpsNavModelInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v30, 4, 1);
  }

  v31 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t lsim02_24HandleGpsAcqAsstInd(uint64_t a1)
{
  v34 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim02_24HandleGpsAcqAsstInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_GPS_ACQASST_IND,Src,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim02_24HandleGpsAcqAsstInd", *(a1 + 16));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GPSACQ,SId,%u\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim02_24HandleGpsAcqAsstInd", *(a1 + 12));
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GPSACQ GEN,Tow,%u,TowUnc,%u,RefDCTime,%d,TimeUnc,%u,NrOfSats,%u\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "lsim02_24HandleGpsAcqAsstInd", *(a1 + 24), *(a1 + 28), *(a1 + 32), *(a1 + 36), *(a1 + 40));
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  if (*(a1 + 40))
  {
    v10 = 0;
    v11 = (a1 + 53);
    do
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GPSACQ,SvId,%u,D1,%u,D0,%d,Uncert,%u,Phase,%u,C_Phase,%u,BitNum,%u,Window,%u,Azimuth,%u,Elev,%u\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 73, "lsim02_24HandleGpsAcqAsstInd", *(v11 - 11), *(v11 - 10), *(v11 - 9), *(v11 - 7), *(v11 - 6), *(v11 - 5), *(v11 - 3), *(v11 - 2), *(v11 - 1), *v11);
        LbsOsaTrace_WriteLog(0xCu, __str, v13, 4, 1);
      }

      ++v10;
      v11 += 12;
    }

    while (v10 < *(a1 + 40));
  }

  v14 = *(a1 + 16);
  v15 = gnssOsa_Calloc("lsim02_07AcquisAssistInd", 397, 1, 0xE8uLL);
  if (v15)
  {
    v16 = v15;
    v17 = *(a1 + 24);
    *(v15 + 28) = *(a1 + 40);
    *(v15 + 12) = v17;
    v18 = *(a1 + 56);
    v19 = *(a1 + 72);
    v20 = *(a1 + 88);
    *(v15 + 92) = *(a1 + 104);
    *(v15 + 76) = v20;
    *(v15 + 60) = v19;
    *(v15 + 44) = v18;
    v21 = *(a1 + 120);
    v22 = *(a1 + 136);
    v23 = *(a1 + 152);
    *(v15 + 156) = *(a1 + 168);
    *(v15 + 140) = v23;
    *(v15 + 124) = v22;
    *(v15 + 108) = v21;
    v24 = *(a1 + 184);
    v25 = *(a1 + 200);
    v26 = *(a1 + 216);
    *(v15 + 110) = *(a1 + 232);
    *(v15 + 204) = v26;
    *(v15 + 188) = v25;
    *(v15 + 172) = v24;
    *(v15 + 56) = v14;
    *(v15 + 57) = -1;
    if ((v14 - 1) <= 3)
    {
      lsim02_02UpdateAsstBitmask(1, 64);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v27 = mach_continuous_time();
      v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASST_ACQ_IND =>GNCP\n", (*&g_MacClockTicksToMsRelation * v27), "LSM", 73, "lsim02_07AcquisAssistInd");
      LbsOsaTrace_WriteLog(0xCu, __str, v28, 4, 1);
    }

    AgpsSendFsmMsg(131, 134, 8586499, v16);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v29 = mach_continuous_time();
    v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v29), "LSM", 73, "lsim02_24HandleGpsAcqAsstInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v30, 4, 1);
  }

  v31 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t lsim02_25HandleGpsAlmInd(uint64_t a1)
{
  v35 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim02_25HandleGpsAlmInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_GPS_ALMANAC_IND,Src,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim02_25HandleGpsAlmInd", *(a1 + 16));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GPSALM,SId,%u,NumSv,%u\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim02_25HandleGpsAlmInd", *(a1 + 12), *(a1 + 20));
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  v8 = *(a1 + 24);
  if (!v8)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      goto LABEL_27;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:AlmanacList\n");
LABEL_23:
    LbsOsaTrace_WriteLog(0xCu, __str, v18, 2, 1);
    goto LABEL_27;
  }

  v9 = *(a1 + 20);
  if (!*(a1 + 20))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      goto LABEL_27;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:NumSvs\n");
    goto LABEL_23;
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 16);
  v12 = gnssOsa_Calloc("lsim02_08AlmanacElm", 442, 1, 0x30uLL);
  if (!v12)
  {
    goto LABEL_27;
  }

  v13 = v12;
  v12[3] = 0;
  *(v12 + 9) = v11;
  *(v12 + 10) = -1;
  *(v12 + 32) = v9;
  v14 = gnssOsa_Calloc("lsim02_08AlmanacElm", 454, v9, 0x24uLL);
  v13[2] = v14;
  if (!v14)
  {
    goto LABEL_26;
  }

  memcpy_s("lsim02_08AlmanacElm", 465, v14, 36 * v9, v8, (36 * v9));
  if ((v11 - 1) <= 3)
  {
    lsim02_02UpdateAsstBitmask(1, 8);
  }

  if (!v10)
  {
    goto LABEL_16;
  }

  v15 = gnssOsa_Calloc("lsim02_08AlmanacElm", 477, v9, 0x2EuLL);
  v13[3] = v15;
  if (!v15)
  {
    v19 = v13[2];
    if (v19)
    {
      free(v19);
    }

LABEL_26:
    free(v13);
    goto LABEL_27;
  }

  memcpy_s("lsim02_08AlmanacElm", 489, v15, 46 * v9, v10, (46 * v9));
LABEL_16:
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v16 = mach_continuous_time();
    v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASST_ALMANAC_IND =>GNCP\n", (*&g_MacClockTicksToMsRelation * v16), "LSM", 73, "lsim02_08AlmanacElm");
    LbsOsaTrace_WriteLog(0xCu, __str, v17, 4, 1);
  }

  AgpsSendFsmMsg(131, 134, 8586755, v13);
LABEL_27:
  v20 = *(a1 + 24);
  if (v20)
  {
    if (!*(a1 + 20))
    {
      goto LABEL_34;
    }

    v21 = 0;
    v22 = 32;
    do
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v23 = mach_continuous_time();
        v24 = (*(a1 + 24) + v22);
        v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GPSALM,SvId,%u,DId,%u,WNA,%u,E,%u,Toa,%u,SVh,%u,Deltai,%d,Asqrt,%u,Omega0,%d,Omega,%d,M0,%d,OmegaDot,%d,AF0,%d,AF1,%d\n", (*&g_MacClockTicksToMsRelation * v23), "LSM", 73, "lsim02_25HandleGpsAlmInd", *(v24 - 32), *(v24 - 31), *(v24 - 30), *(v24 - 14), *(v24 - 26), *(v24 - 25), *(v24 - 12), *(v24 - 5), *(v24 - 4), *(v24 - 3), *(v24 - 2), *(v24 - 2), *(v24 - 1), *v24);
        LbsOsaTrace_WriteLog(0xCu, __str, v25, 4, 1);
      }

      ++v21;
      v22 += 36;
    }

    while (v21 < *(a1 + 20));
    v20 = *(a1 + 24);
    if (v20)
    {
LABEL_34:
      free(v20);
    }

    *(a1 + 24) = 0;
  }

  v26 = *(a1 + 32);
  if (v26)
  {
    if (!*(a1 + 20))
    {
      goto LABEL_43;
    }

    v27 = 0;
    do
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v28 = mach_continuous_time();
        v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GPSALM,SvGHealth,%u\n", (*&g_MacClockTicksToMsRelation * v28), "LSM", 73, "lsim02_25HandleGpsAlmInd", *(*(a1 + 32) + v27));
        LbsOsaTrace_WriteLog(0xCu, __str, v29, 4, 1);
      }

      ++v27;
    }

    while (v27 < *(a1 + 20));
    v26 = *(a1 + 32);
    if (v26)
    {
LABEL_43:
      free(v26);
    }

    *(a1 + 32) = 0;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v30 = mach_continuous_time();
    v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v30), "LSM", 73, "lsim02_25HandleGpsAlmInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v31, 4, 1);
  }

  v32 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t lsim02_27HandleGpsIonoModelInd(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim02_27HandleGpsIonoModelInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_GPS_IONOMODEL_IND,Src,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim02_27HandleGpsIonoModelInd", *(a1 + 16));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GPSIONO,SId,%u\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim02_27HandleGpsIonoModelInd", *(a1 + 12));
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GPSIONO,A0,%d,A1,%d,A2,%d,A3,%d,B0,%d,B1,%d,B2,%d,B3,%d\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "lsim02_27HandleGpsIonoModelInd", *(a1 + 21), *(a1 + 22), *(a1 + 23), *(a1 + 24), *(a1 + 25), *(a1 + 26), *(a1 + 27), *(a1 + 28));
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  v10 = *(a1 + 16);
  v11 = gnssOsa_Calloc("lsim02_09IonoModelInd", 512, 1, 0x20uLL);
  if (v11)
  {
    v12 = v11;
    *(v11 + 2) = *(a1 + 21);
    *(v11 + 6) = v10;
    *(v11 + 7) = -1;
    *(v11 + 3) = 1;
    if ((v10 - 1) <= 3)
    {
      lsim02_02UpdateAsstBitmask(0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASST_IONO_MODEL_IND =>GNCP\n", (*&g_MacClockTicksToMsRelation * v13), "LSM", 73, "lsim02_09IonoModelInd");
      LbsOsaTrace_WriteLog(0xCu, __str, v14, 4, 1);
    }

    AgpsSendFsmMsg(131, 134, 8587779, v12);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v15 = mach_continuous_time();
    v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v15), "LSM", 73, "lsim02_27HandleGpsIonoModelInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v16, 4, 1);
  }

  v17 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t lsim02_28HandleGpsUtcModelInd(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim02_28HandleGpsUtcModelInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_GPS_UTCMODEL_IND,Src,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim02_28HandleGpsUtcModelInd", *(a1 + 16));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GPSUTC,SId,%u\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim02_28HandleGpsUtcModelInd", *(a1 + 12));
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GPSUTC, A1,%d,A0,%d,Tot,%u,WnT,%u,TLs,%d,WnLsf,%u,Dn,%d,TLsf,%d\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "lsim02_28HandleGpsUtcModelInd", *(a1 + 24), *(a1 + 28), *(a1 + 32), *(a1 + 33), *(a1 + 34), *(a1 + 35), *(a1 + 36), *(a1 + 37));
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  v10 = *(a1 + 16);
  v11 = gnssOsa_Calloc("lsim02_10UtcModelInd", 552, 1, 0x28uLL);
  if (v11)
  {
    v12 = v11;
    v13 = *(a1 + 24);
    *(v11 + 22) = *(a1 + 30);
    *(v11 + 2) = v13;
    *(v11 + 8) = v10;
    *(v11 + 9) = -1;
    *(v11 + 3) = 1;
    if ((v10 - 1) <= 3)
    {
      lsim02_02UpdateAsstBitmask(1, 16);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASST_UTC_MODEL_IND =>GNCP\n", (*&g_MacClockTicksToMsRelation * v14), "LSM", 73, "lsim02_10UtcModelInd");
      LbsOsaTrace_WriteLog(0xCu, __str, v15, 4, 1);
    }

    AgpsSendFsmMsg(131, 134, 8588035, v12);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v16 = mach_continuous_time();
    v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "LSM", 73, "lsim02_28HandleGpsUtcModelInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v17, 4, 1);
  }

  v18 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t lsim02_29HandleGpsRtiInd(uint64_t a1)
{
  v23 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim02_29HandleGpsRtiInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_GPS_BADSVLIST_IND,Src,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim02_29HandleGpsRtiInd", *(a1 + 16));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GPSRTI,SId,%u,NrOfSats,%u\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim02_29HandleGpsRtiInd", *(a1 + 12), *(a1 + 21));
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  v8 = (a1 + 21);
  if (*(a1 + 21))
  {
    v9 = 0;
    do
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GPSRTI,BadSatId,%u\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 73, "lsim02_29HandleGpsRtiInd", *(a1 + 22 + v9));
        LbsOsaTrace_WriteLog(0xCu, __str, v11, 4, 1);
      }

      ++v9;
    }

    while (v9 < *v8);
  }

  v12 = *(a1 + 16);
  v13 = gnssOsa_Calloc("lsim02_11RtIntegrityInd", 591, 1, 0x28uLL);
  if (v13)
  {
    v14 = v13;
    v15 = *v8;
    v13[28] = v8[16];
    *(v13 + 12) = v15;
    *(v13 + 8) = v12;
    *(v13 + 9) = -1;
    if ((v12 - 1) <= 3)
    {
      lsim02_02UpdateAsstBitmask(1, 128);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASST_RTI_IND =>GNCP\n", (*&g_MacClockTicksToMsRelation * v16), "LSM", 73, "lsim02_11RtIntegrityInd");
      LbsOsaTrace_WriteLog(0xCu, __str, v17, 4, 1);
    }

    AgpsSendFsmMsg(131, 134, 8587011, v14);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v18 = mach_continuous_time();
    v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v18), "LSM", 73, "lsim02_29HandleGpsRtiInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v19, 4, 1);
  }

  v20 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t lsim02_30HandleGnssRefTimeInd(uint64_t a1)
{
  v27 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim02_30HandleGnssRefTimeInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_GNSS_REFTIME_IND,Src,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim02_30HandleGnssRefTimeInd", *(a1 + 16));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GNSSRFT,SId,%u,GnssId,%u\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim02_30HandleGnssRefTimeInd", *(a1 + 12), *(a1 + 20));
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GNSSRFT,DayNum,%u,ToD,%u,ToDFracMs,%u,NLeapSec,%u,TimeUnc,%u,NumCells,%u,RefDCTime,%d,OsTimeMs,%u,NumTowA,%u\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "lsim02_30HandleGnssRefTimeInd", *(a1 + 24), *(a1 + 28), *(a1 + 32), *(a1 + 34), *(a1 + 36), *(a1 + 38), *(a1 + 40), *(a1 + 44), *(a1 + 48));
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  if (*(a1 + 48))
  {
    v10 = 0;
    v11 = (a1 + 54);
    do
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GNSSTOWA,SvId,%u,Spoof,%u,Alert,%u,TlmRes,%u,TlmWord,%u\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 73, "lsim02_30HandleGnssRefTimeInd", *(v11 - 4), *(v11 - 3), *(v11 - 2), *(v11 - 1), *v11);
        LbsOsaTrace_WriteLog(0xCu, __str, v13, 4, 1);
      }

      ++v10;
      v11 += 3;
    }

    while (v10 < *(a1 + 48));
  }

  v14 = *(a1 + 16);
  v15 = *(a1 + 20);
  v16 = gnssOsa_Calloc("lsim02_12GnssRefTimeInd", 630, 1, 0x1B4uLL);
  if (v16)
  {
    v17 = v16;
    v16[108] = -1;
    memcpy(v16 + 3, (a1 + 24), 0x19AuLL);
    v17[107] = v14;
    v17[106] = v15;
    if ((v14 - 1) <= 3)
    {
      lsim02_02UpdateAsstBitmask(0, 4);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:Tod,%u,DayNum,%u\n", (*&g_MacClockTicksToMsRelation * v18), "LSM", 68, "lsim02_12GnssRefTimeInd", v17[4], *(v17 + 6));
      LbsOsaTrace_WriteLog(0xCu, __str, v19, 5, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v20 = mach_continuous_time();
      v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASST_GNSS_RTIME_IND =>GNCP\n", (*&g_MacClockTicksToMsRelation * v20), "LSM", 73, "lsim02_12GnssRefTimeInd");
      LbsOsaTrace_WriteLog(0xCu, __str, v21, 4, 1);
    }

    AgpsSendFsmMsg(131, 134, 8588803, v17);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v22 = mach_continuous_time();
    v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v22), "LSM", 73, "lsim02_30HandleGnssRefTimeInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v23, 4, 1);
  }

  v24 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t lsim02_31HandleGnssTimeModelInd(uint64_t a1)
{
  v31 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim02_31HandleGnssTimeModelInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_GNSS_TIMEMODEL_IND,Src,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim02_31HandleGnssTimeModelInd", *(a1 + 16));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GNSSTM,SId,%u,GNSSIDFrom,%u,NumTM,%u\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim02_31HandleGnssTimeModelInd", *(a1 + 12), *(a1 + 24), *(a1 + 28));
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (*(a1 + 28))
  {
    v8 = 0;
    v9 = (a1 + 54);
    do
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GNSSTM,RefTime,%u,TA0,%d,TA1,%d,TA2,%d,GNSSIDTo,%u,WeekNum,%u,DeltaT,%d\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 73, "lsim02_31HandleGnssTimeModelInd", *(v9 - 11), *(v9 - 9), *(v9 - 7), *(v9 - 10), *(v9 - 3), *(v9 - 1), *v9);
        LbsOsaTrace_WriteLog(0xCu, __str, v11, 4, 1);
      }

      ++v8;
      v9 += 12;
    }

    while (v8 < *(a1 + 28));
  }

  v12 = *(a1 + 16);
  v13 = gnssOsa_Calloc("lsim02_15GnssTimeModelInd", 750, 1, 0xDCuLL);
  if (v13)
  {
    v14 = v13;
    *(v13 + 12) = *(a1 + 24);
    v15 = *(a1 + 40);
    v16 = *(a1 + 56);
    v17 = *(a1 + 72);
    *(v13 + 76) = *(a1 + 88);
    *(v13 + 60) = v17;
    *(v13 + 44) = v16;
    *(v13 + 28) = v15;
    v18 = *(a1 + 104);
    v19 = *(a1 + 120);
    v20 = *(a1 + 136);
    *(v13 + 140) = *(a1 + 152);
    *(v13 + 124) = v20;
    *(v13 + 108) = v19;
    *(v13 + 92) = v18;
    v21 = *(a1 + 168);
    v22 = *(a1 + 184);
    v23 = *(a1 + 200);
    *(v13 + 204) = *(a1 + 216);
    *(v13 + 188) = v23;
    *(v13 + 172) = v22;
    *(v13 + 156) = v21;
    *(v13 + 53) = v12;
    *(v13 + 54) = -1;
    if ((v12 - 1) <= 3)
    {
      lsim02_02UpdateAsstBitmask(*(a1 + 24), 256);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v24 = mach_continuous_time();
      v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASST_GNSS_TIME_MODEL_IND =>GNCP\n", (*&g_MacClockTicksToMsRelation * v24), "LSM", 73, "lsim02_15GnssTimeModelInd");
      LbsOsaTrace_WriteLog(0xCu, __str, v25, 4, 1);
    }

    AgpsSendFsmMsg(131, 134, 8589571, v14);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v26 = mach_continuous_time();
    v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v26), "LSM", 73, "lsim02_31HandleGnssTimeModelInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v27, 4, 1);
  }

  v28 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t lsim02_32HandleGnssRtiInd(uint64_t a1)
{
  v22 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim02_32HandleGnssRtiInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_GNSS_BADSVLIST_IND,Src,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim02_32HandleGnssRtiInd", *(a1 + 16));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GNSSRTI,SId,%u,NumBadSv,%u\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim02_32HandleGnssRtiInd", *(a1 + 12), *(a1 + 24));
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  v8 = (a1 + 24);
  if (*(a1 + 24))
  {
    v9 = 0;
    do
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GNSSRTI,GnssId,%u,BadSv,%u,SigId,%u\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 73, "lsim02_32HandleGnssRtiInd", *(a1 + 4 * v9 + 28), *(a1 + v9 + 284), *(a1 + v9 + 348));
        LbsOsaTrace_WriteLog(0xCu, __str, v11, 4, 1);
      }

      ++v9;
    }

    while (v9 < *v8);
  }

  v12 = *(a1 + 16);
  v13 = gnssOsa_Calloc("lsim02_13GnssRtIntegrityInd", 671, 1, 0x198uLL);
  if (v13)
  {
    v14 = v13;
    memcpy(v13 + 12, v8, 0x184uLL);
    *(v14 + 100) = v12;
    *(v14 + 101) = -1;
    if ((v12 - 1) <= 3)
    {
      lsim02_02UpdateAsstBitmask(32, 128);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASST_GNSS_RTI_IND =>GNCP\n", (*&g_MacClockTicksToMsRelation * v15), "LSM", 73, "lsim02_13GnssRtIntegrityInd");
      LbsOsaTrace_WriteLog(0xCu, __str, v16, 4, 1);
    }

    AgpsSendFsmMsg(131, 134, 8589059, v14);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v17 = mach_continuous_time();
    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v17), "LSM", 73, "lsim02_32HandleGnssRtiInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v18, 4, 1);
  }

  v19 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t lsim02_33HandleGnssAcqAsstInd(uint64_t a1)
{
  v24 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim02_33HandleGnssAcqAsstInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_GNSS_ACQASST_IND,Src,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim02_33HandleGnssAcqAsstInd", *(a1 + 16));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GNSSACQ,SId,%u\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim02_33HandleGnssAcqAsstInd", *(a1 + 12));
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GNSSACQ GEN,Tod,%u,Tow,%u,TimeId,%u,Conf,%u,NumAA,%u\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "lsim02_33HandleGnssAcqAsstInd", *(a1 + 24), *(a1 + 28), *(a1 + 32), *(a1 + 36), *(a1 + 37));
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  if (*(a1 + 37))
  {
    v10 = 0;
    v11 = (a1 + 60);
    do
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GNSSACQ,SvId,%d,GnssId,%u,SigID,%u,D0,%d,D1,%u,DUnc,%u,CPhase,%d,Int_Phase,%u,Window,%u,Azimuth,%d,Elev,%u\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 73, "lsim02_33HandleGnssAcqAsstInd", *(v11 - 20), *(v11 - 4), *(v11 - 12), *(v11 - 5), *(v11 - 8), *(v11 - 7), *(v11 - 3), *(v11 - 4), *(v11 - 3), *(v11 - 1), *v11);
        LbsOsaTrace_WriteLog(0xCu, __str, v13, 4, 1);
      }

      ++v10;
      v11 += 24;
    }

    while (v10 < *(a1 + 37));
  }

  v14 = *(a1 + 16);
  v15 = gnssOsa_Calloc("lsim02_14GnssAcquisAssistInd", 712, 1, 0x624uLL);
  if (v15)
  {
    v16 = v15;
    memcpy(v15 + 12, (a1 + 24), 0x610uLL);
    *(v16 + 391) = v14;
    *(v16 + 392) = -1;
    if ((v14 - 1) <= 3)
    {
      lsim02_02UpdateAsstBitmask(32, 64);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v17 = mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASST_GNSS_ACQ_IND =>GNCP\n", (*&g_MacClockTicksToMsRelation * v17), "LSM", 73, "lsim02_14GnssAcquisAssistInd");
      LbsOsaTrace_WriteLog(0xCu, __str, v18, 4, 1);
    }

    AgpsSendFsmMsg(131, 134, 8589315, v16);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v19 = mach_continuous_time();
    v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v19), "LSM", 73, "lsim02_33HandleGnssAcqAsstInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v20, 4, 1);
  }

  v21 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t lsim02_34HandleGnssRefPosInd(uint64_t a1)
{
  v29 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim02_34HandleGnssRefPosInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_GNSS_REFPOS_IND,Src,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim02_34HandleGnssRefPosInd", *(a1 + 16));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GNSSRFP,SId,%u\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim02_34HandleGnssRefPosInd", *(a1 + 12));
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 1))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GNSSRFP,OsTimeMs,%u,Stat,%u,FType,%u,SType,%u,LatSign,%u,Lat,%u,Long,%d,AltDir,%u,Alt,%u\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "lsim02_34HandleGnssRefPosInd", *(a1 + 24), *(a1 + 28), *(a1 + 32), *(a1 + 36), *(a1 + 40), *(a1 + 44), *(a1 + 48), *(a1 + 60), *(a1 + 52));
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 1))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GNSSRFP,UncSemiMaj,%u,UncSMin,%u,AxisBrng,%u,AltUnc,%u,Conf,%u,IncAngle,%u,OffAngle,%u,Radius,%u,Trust,%u\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 73, "lsim02_34HandleGnssRefPosInd", *(a1 + 54), *(a1 + 55), *(a1 + 56), *(a1 + 64), *(a1 + 65), *(a1 + 66), *(a1 + 67), *(a1 + 68), *(a1 + 72));
    LbsOsaTrace_WriteLog(0xCu, __str, v11, 4, 1);
  }

  v12 = *(a1 + 16);
  v13 = gnssOsa_Calloc("lsim02_03GnssRefPositionInd", 217, 1, 0x48uLL);
  if (v13)
  {
    v14 = v13;
    v15 = *(a1 + 24);
    v16 = *(a1 + 56);
    v17 = *(a1 + 72);
    *(v13 + 28) = *(a1 + 40);
    *(v13 + 44) = v16;
    *(v13 + 12) = v15;
    *(v13 + 15) = v17;
    *(v13 + 16) = v12;
    *(v13 + 17) = -1;
    v18 = *(v13 + 9);
    v19 = v18 & 0x7FFFFF;
    v20 = (v18 & 0x800000) == 0;
    v21 = v18 | 0xFF000000;
    if (v20)
    {
      v21 = v19;
    }

    *(v13 + 8) &= 0x7FFFFFu;
    *(v13 + 9) = v21;
    if ((v12 - 1) <= 3)
    {
      lsim02_02UpdateAsstBitmask(0, 2);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v22 = mach_continuous_time();
      v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASST_GNSS_RPOS_IND =>GNCP\n", (*&g_MacClockTicksToMsRelation * v22), "LSM", 73, "lsim02_03GnssRefPositionInd");
      LbsOsaTrace_WriteLog(0xCu, __str, v23, 4, 1);
    }

    AgpsSendFsmMsg(131, 134, 8585475, v14);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v24 = mach_continuous_time();
    v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v24), "LSM", 73, "lsim02_34HandleGnssRefPosInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v25, 4, 1);
  }

  v26 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GNS_AsstGpsRefTime(int a1, unsigned int a2, unsigned int *a3, char a4)
{
  v29 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "GNS_AsstGpsRefTime");
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  if (!a3)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      goto LABEL_19;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:RefTime\n");
    goto LABEL_18;
  }

  if (a2 > 7 || ((1 << a2) & 0xDE) == 0)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      goto LABEL_19;
    }

    bzero(__str, 0x410uLL);
    v25 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:AsstSrc,%u\n", v25);
    goto LABEL_18;
  }

  if (*a3 >= 0x240C8400)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      goto LABEL_19;
    }

    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v26 = *a3;
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:GpsTow,%u\n", (*&g_MacClockTicksToMsRelation * v10));
    goto LABEL_18;
  }

  if (*(a3 + 6) < 0x2000u)
  {
    v13 = gnssOsa_Calloc("GNS_AsstGpsRefTime", 1190, 1, 0x94uLL);
    v14 = v13;
    if (v13)
    {
      *(v13 + 3) = a1;
      *(v13 + 4) = a2;
      v13[20] = a4;
      v15 = *a3;
      v16 = *(a3 + 1);
      v17 = *(a3 + 2);
      *(v13 + 72) = *(a3 + 3);
      *(v13 + 56) = v17;
      *(v13 + 40) = v16;
      *(v13 + 24) = v15;
      v18 = *(a3 + 4);
      v19 = *(a3 + 5);
      v20 = *(a3 + 6);
      *(v13 + 132) = *(a3 + 27);
      *(v13 + 120) = v20;
      *(v13 + 104) = v19;
      *(v13 + 88) = v18;
      AgpsSendFsmMsg(131, 131, 8629763, v13);
      v14 = 0;
    }

    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, v14);
    if (result)
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v27 = *(a3 + 6);
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:GpsWkNum,%u\n", (*&g_MacClockTicksToMsRelation * v12));
LABEL_18:
    LbsOsaTrace_WriteLog(0xCu, __str, v11, 2, 1);
  }

LABEL_19:
  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
  if (result)
  {
LABEL_20:
    bzero(__str, 0x410uLL);
    v22 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v22, "LSM", 73, "GNS_AsstGpsRefTime");
    result = LbsOsaTrace_WriteLog(0xCu, __str, v23, 4, 1);
  }

LABEL_21:
  v24 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GNS_AsstGpsNavModel(int a1, int a2, int a3, const void *a4, char a5)
{
  v24 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 73, "GNS_AsstGpsNavModel");
    LbsOsaTrace_WriteLog(0xCu, __str, v11, 4, 1);
  }

  if (a3 && a4)
  {
    if ((a2 - 1) >= 4)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v18 = mach_continuous_time();
        v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:AsstSrc,%u\n", (*&g_MacClockTicksToMsRelation * v18), "LSM", 87, "GNS_AsstGpsNavModel", 515, a2);
        LbsOsaTrace_WriteLog(0xCu, __str, v19, 2, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
      if (result)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v12 = gnssOsa_Calloc("GNS_AsstGpsNavModel", 1271, 1, 0x20uLL);
      if (v12)
      {
        v13 = v12;
        v12[3] = a1;
        v12[4] = a2;
        *(v12 + 21) = a5;
        *(v12 + 20) = a3;
        v14 = gnssOsa_Calloc("GNS_AsstGpsNavModel", 1285, a3, 0x54uLL);
        *(v13 + 3) = v14;
        if (v14)
        {
          memcpy_s("GNS_AsstGpsNavModel", 1296, v14, 84 * a3, a4, (84 * a3));
          AgpsSendFsmMsg(131, 131, 8624643, v13);
          result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
          if (result)
          {
            goto LABEL_21;
          }
        }

        else
        {
          free(v13);
          result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
          if (result)
          {
LABEL_21:
            bzero(__str, 0x410uLL);
            v20 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v20, "LSM", 73, "GNS_AsstGpsNavModel");
            result = LbsOsaTrace_WriteLog(0xCu, __str, v21, 4, 1);
          }
        }
      }

      else
      {
        result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
        if (result)
        {
          goto LABEL_21;
        }
      }
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:NavModelElm NumSv,%d\n", (*&g_MacClockTicksToMsRelation * v16), "LSM", 87, "GNS_AsstGpsNavModel", 513, a3);
      LbsOsaTrace_WriteLog(0xCu, __str, v17, 2, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
    if (result)
    {
      goto LABEL_21;
    }
  }

  v22 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GNS_AsstGpsAcqAsst(int a1, int a2, __int128 *a3, char a4)
{
  v31 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "GNS_AsstGpsAcqAsst");
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  if (a3 && *(a3 + 16))
  {
    if ((a2 - 1) >= 4)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v25 = mach_continuous_time();
        v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:AsstSrc,%u\n", (*&g_MacClockTicksToMsRelation * v25), "LSM", 87, "GNS_AsstGpsAcqAsst", 515, a2);
        LbsOsaTrace_WriteLog(0xCu, __str, v26, 2, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
      if (result)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v10 = gnssOsa_Calloc("GNS_AsstGpsAcqAsst", 1362, 1, 0xECuLL);
      v11 = v10;
      if (v10)
      {
        *(v10 + 3) = a1;
        *(v10 + 4) = a2;
        v10[20] = a4;
        v12 = *a3;
        *(v10 + 40) = a3[1];
        *(v10 + 24) = v12;
        v13 = a3[2];
        v14 = a3[3];
        v15 = a3[4];
        *(v10 + 104) = a3[5];
        *(v10 + 88) = v15;
        *(v10 + 72) = v14;
        *(v10 + 56) = v13;
        v16 = a3[6];
        v17 = a3[7];
        v18 = a3[8];
        *(v10 + 168) = a3[9];
        *(v10 + 152) = v18;
        *(v10 + 136) = v17;
        *(v10 + 120) = v16;
        v19 = a3[10];
        v20 = a3[11];
        v21 = a3[12];
        *(v10 + 116) = *(a3 + 104);
        *(v10 + 216) = v21;
        *(v10 + 200) = v20;
        *(v10 + 184) = v19;
        AgpsSendFsmMsg(131, 131, 8624899, v10);
        v11 = 0;
      }

      result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, v11);
      if (result)
      {
LABEL_17:
        bzero(__str, 0x410uLL);
        v27 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v27, "LSM", 73, "GNS_AsstGpsAcqAsst");
        result = LbsOsaTrace_WriteLog(0xCu, __str, v28, 4, 1);
      }
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v22 = mach_continuous_time();
      v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:GpsAcqAsst\n", (*&g_MacClockTicksToMsRelation * v22), "LSM", 87, "GNS_AsstGpsAcqAsst", 513);
      LbsOsaTrace_WriteLog(0xCu, __str, v23, 2, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
    if (result)
    {
      goto LABEL_17;
    }
  }

  v29 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GNS_AsstGpsIonoModel(int a1, int a2, void *a3, char a4)
{
  v21 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "GNS_AsstGpsIonoModel");
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  if (a3)
  {
    if ((a2 - 1) >= 4)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v15 = mach_continuous_time();
        v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:AsstSrc,%u\n", (*&g_MacClockTicksToMsRelation * v15), "LSM", 87, "GNS_AsstGpsIonoModel", 515, a2);
        LbsOsaTrace_WriteLog(0xCu, __str, v16, 2, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
      if (result)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v10 = gnssOsa_Calloc("GNS_AsstGpsIonoModel", 1557, 1, 0x20uLL);
      v11 = v10;
      if (v10)
      {
        *(v10 + 3) = a1;
        *(v10 + 4) = a2;
        v10[20] = a4;
        *(v10 + 21) = *a3;
        AgpsSendFsmMsg(131, 131, 8625667, v10);
        v11 = 0;
      }

      result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, v11);
      if (result)
      {
LABEL_16:
        bzero(__str, 0x410uLL);
        v17 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v17, "LSM", 73, "GNS_AsstGpsIonoModel");
        result = LbsOsaTrace_WriteLog(0xCu, __str, v18, 4, 1);
      }
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:GpsIonoModel\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 87, "GNS_AsstGpsIonoModel", 513);
      LbsOsaTrace_WriteLog(0xCu, __str, v13, 2, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
    if (result)
    {
      goto LABEL_16;
    }
  }

  v19 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GNS_AsstGpsUtcModel(int a1, int a2, uint64_t *a3, char a4)
{
  v22 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "GNS_AsstGpsUtcModel");
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  if (a3)
  {
    if ((a2 - 1) >= 4)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:AsstSrc,%u\n", (*&g_MacClockTicksToMsRelation * v16), "LSM", 87, "GNS_AsstGpsUtcModel", 515, a2);
        LbsOsaTrace_WriteLog(0xCu, __str, v17, 2, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
      if (result)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v10 = gnssOsa_Calloc("GNS_AsstGpsUtcModel", 1632, 1, 0x28uLL);
      v11 = v10;
      if (v10)
      {
        *(v10 + 3) = a1;
        *(v10 + 4) = a2;
        v10[20] = a4;
        v12 = *a3;
        *(v10 + 30) = *(a3 + 6);
        *(v10 + 3) = v12;
        AgpsSendFsmMsg(131, 131, 8625923, v10);
        v11 = 0;
      }

      result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, v11);
      if (result)
      {
LABEL_16:
        bzero(__str, 0x410uLL);
        v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v18, "LSM", 73, "GNS_AsstGpsUtcModel");
        result = LbsOsaTrace_WriteLog(0xCu, __str, v19, 4, 1);
      }
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:GpsUtcModel\n", (*&g_MacClockTicksToMsRelation * v13), "LSM", 87, "GNS_AsstGpsUtcModel", 513);
      LbsOsaTrace_WriteLog(0xCu, __str, v14, 2, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
    if (result)
    {
      goto LABEL_16;
    }
  }

  v20 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GNS_AsstGpsRti(int a1, int a2, __int128 *a3, char a4)
{
  v22 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "GNS_AsstGpsRti");
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  if (a3 && *a3)
  {
    if ((a2 - 1) >= 4)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:AsstSrc,%u\n", (*&g_MacClockTicksToMsRelation * v16), "LSM", 87, "GNS_AsstGpsRti", 515, a2);
        LbsOsaTrace_WriteLog(0xCu, __str, v17, 2, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
      if (result)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v10 = gnssOsa_Calloc("GNS_AsstGpsRti", 1707, 1, 0x28uLL);
      v11 = v10;
      if (v10)
      {
        *(v10 + 3) = a1;
        *(v10 + 4) = a2;
        v10[20] = a4;
        v12 = *a3;
        v10[37] = *(a3 + 16);
        *(v10 + 21) = v12;
        AgpsSendFsmMsg(131, 131, 8626179, v10);
        v11 = 0;
      }

      result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, v11);
      if (result)
      {
LABEL_17:
        bzero(__str, 0x410uLL);
        v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v18, "LSM", 73, "GNS_AsstGpsRti");
        result = LbsOsaTrace_WriteLog(0xCu, __str, v19, 4, 1);
      }
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:GpsRti\n", (*&g_MacClockTicksToMsRelation * v13), "LSM", 87, "GNS_AsstGpsRti", 513);
      LbsOsaTrace_WriteLog(0xCu, __str, v14, 2, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
    if (result)
    {
      goto LABEL_17;
    }
  }

  v20 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GNS_AsstRefPos(int a1, unsigned int a2, __int128 *a3, char a4)
{
  v37 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "GNS_AsstRefPos");
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  if (!a3)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      goto LABEL_39;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:RefPos\n");
    goto LABEL_38;
  }

  if (a2 > 7)
  {
    goto LABEL_24;
  }

  if (((1 << a2) & 0xD4) != 0)
  {
    goto LABEL_6;
  }

  if (a2 != 1)
  {
    if (a2 == 3)
    {
      if (g_LsimEcallOngoing)
      {
        a2 = 4;
        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v14 = mach_continuous_time();
          v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:Updating SUPL to SUPL_ECALL\n", (*&g_MacClockTicksToMsRelation * v14), "LSM", 73, "GNS_AsstRefPos");
          a2 = 4;
          LbsOsaTrace_WriteLog(0xCu, __str, v15, 4, 1);
        }
      }

      else
      {
        a2 = 3;
      }

      goto LABEL_6;
    }

LABEL_24:
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      goto LABEL_39;
    }

    bzero(__str, 0x410uLL);
    v30 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:AsstSrc,%u\n", v30);
    goto LABEL_38;
  }

  if (g_LsimEcallOngoing)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v17 = mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:Updating CP to CP_ECALL\n", (*&g_MacClockTicksToMsRelation * v17), "LSM", 73, "GNS_AsstRefPos");
      LbsOsaTrace_WriteLog(0xCu, __str, v18, 4, 1);
    }

    a2 = 2;
  }

  else
  {
    a2 = 1;
  }

LABEL_6:
  if (*(a3 + 12) >= 5u)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      goto LABEL_39;
    }

    bzero(__str, 0x410uLL);
    v13 = mach_continuous_time();
    v32 = *(a3 + 12);
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:Trust,%u\n", (*&g_MacClockTicksToMsRelation * v13));
    goto LABEL_38;
  }

  v10 = *(a3 + 41);
  if (!*(a3 + 41) || v10 != 255 && v10 >= 0x65)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      goto LABEL_39;
    }

    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v31 = *(a3 + 41);
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:Confidence,%u\n", (*&g_MacClockTicksToMsRelation * v11));
    goto LABEL_38;
  }

  if (*(a3 + 30) <= -2)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      goto LABEL_39;
    }

    bzero(__str, 0x410uLL);
    v16 = mach_continuous_time();
    v33 = *(a3 + 30);
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:UncSemiMajor,%u\n", (*&g_MacClockTicksToMsRelation * v16));
    goto LABEL_38;
  }

  if (*(a3 + 31) <= -2)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      goto LABEL_39;
    }

    bzero(__str, 0x410uLL);
    v19 = mach_continuous_time();
    v34 = *(a3 + 31);
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:UncSemiMinor,%d\n", (*&g_MacClockTicksToMsRelation * v19));
    goto LABEL_38;
  }

  if (*(a3 + 40) > -2)
  {
    v25 = gnssOsa_Calloc("GNS_AsstRefPos", 2276, 1, 0x4CuLL);
    v26 = v25;
    if (v25)
    {
      v27 = *a3;
      v28 = a3[1];
      v29 = a3[2];
      *(v25 + 18) = *(a3 + 12);
      *(v25 + 56) = v29;
      *(v25 + 40) = v28;
      *(v25 + 24) = v27;
      *(v25 + 3) = a1;
      *(v25 + 4) = a2;
      v25[20] = a4;
      AgpsSendFsmMsg(131, 131, 8629251, v25);
      v26 = 0;
    }

    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, v26);
    if (result)
    {
      goto LABEL_40;
    }

    goto LABEL_41;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v20 = mach_continuous_time();
    v35 = *(a3 + 40);
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:UncAlt,%d\n", (*&g_MacClockTicksToMsRelation * v20));
LABEL_38:
    LbsOsaTrace_WriteLog(0xCu, __str, v12, 2, 1);
  }

LABEL_39:
  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
  if (result)
  {
LABEL_40:
    bzero(__str, 0x410uLL);
    v22 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v22, "LSM", 73, "GNS_AsstRefPos");
    result = LbsOsaTrace_WriteLog(0xCu, __str, v23, 4, 1);
  }

LABEL_41:
  v24 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lsim02_61HandleServerErrInd(_DWORD *a1)
{
  v15 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim02_61HandleServerErrInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_SVR_ERR_IND,Src,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim02_61HandleServerErrInd", a1[4]);
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:SId,%d,Cause,%d\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim02_61HandleServerErrInd", a1[3], a1[6]);
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (a1[6] > 4u)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:SvrErrCause,%u\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 87, "lsim02_61HandleServerErrInd", 515, a1[6]);
      LbsOsaTrace_WriteLog(0xCu, __str, v13, 2, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      goto LABEL_9;
    }
  }

  else
  {
    qword_2A14BEA20 = -1;
    *&dword_2A14BEA28 = -1;
    g_lsimAsstDelivered = -1;
    dword_2A14BEA30 = -1;
    dword_2A14BEA34 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
LABEL_9:
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "lsim02_61HandleServerErrInd");
      LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t lsim02_45CheckWithDeliveredAssistance(void *a1)
{
  v25 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim02_45CheckWithDeliveredAssistance");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    if (g_lsimAsstDelivered)
    {
      v5 = 89;
    }

    else
    {
      v5 = 78;
    }

    if ((g_lsimAsstDelivered & 2) != 0)
    {
      v6 = 89;
    }

    else
    {
      v6 = 78;
    }

    if ((g_lsimAsstDelivered & 4) != 0)
    {
      v7 = 89;
    }

    else
    {
      v7 = 78;
    }

    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:LSIMDA,LastUpdateOsTimeMs,%u,RefTime,%c,RefPos,%c,Iono,%c\n", v4, "LSM", 73, "lsim02_44TraceDeliveredAssistance", dword_2A14BEA34, v7, v6, v5);
    LbsOsaTrace_WriteLog(0xCu, __str, v8, 4, 1);
  }

  lsim02_47TraceDelvAsstForConstel(SWORD2(g_lsimAsstDelivered), "GPS ");
  lsim02_47TraceDelvAsstForConstel(qword_2A14BEA20, "GLON");
  lsim02_47TraceDelvAsstForConstel(dword_2A14BEA28, "BDS ");
  lsim02_47TraceDelvAsstForConstel(SWORD2(qword_2A14BEA20), "GAL ");
  lsim02_47TraceDelvAsstForConstel(dword_2A14BEA30, "QZSS");
  lsim02_47TraceDelvAsstForConstel(dword_2A14BEA2C, "SBAS");
  if (a1 && a1[1])
  {
    result = lsim02_01DeliveredAsstCheckNeeded();
    if (!result)
    {
      goto LABEL_41;
    }

    v10 = g_lsimAsstDelivered;
    v11 = a1[1];
    if (g_lsimAsstDelivered)
    {
      v11[2] = 0;
      if ((v10 & 2) == 0)
      {
LABEL_19:
        if ((v10 & 4) == 0)
        {
LABEL_21:
          if (v11[3] == 1)
          {
            v12 = a1[2];
            if (v12)
            {
              lsim02_46UpdateAidReqMask(SWORD2(g_lsimAsstDelivered), v12, v11 + 3);
              *(a1[2] + 11) = 0;
              v11 = a1[1];
            }
          }

          if (v11[4] == 1)
          {
            v13 = a1[3];
            if (v13)
            {
              lsim02_46UpdateAidReqMask(qword_2A14BEA20, v13, v11 + 4);
              *(a1[3] + 11) = 0;
              v11 = a1[1];
            }
          }

          if (v11[5] == 1)
          {
            v14 = a1[4];
            if (v14)
            {
              lsim02_46UpdateAidReqMask(dword_2A14BEA30, v14, v11 + 5);
              *(a1[4] + 11) = 0;
              v11 = a1[1];
            }
          }

          if (v11[6] == 1)
          {
            v15 = a1[5];
            if (v15)
            {
              lsim02_46UpdateAidReqMask(dword_2A14BEA2C, v15, v11 + 6);
              *(a1[5] + 11) = 0;
              v11 = a1[1];
            }
          }

          v17 = v11[7];
          v16 = v11 + 7;
          if (v17 == 1)
          {
            v18 = a1[6];
            if (v18)
            {
              lsim02_46UpdateAidReqMask(dword_2A14BEA28, v18, v16);
            }
          }

          result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
          if (result)
          {
            bzero(__str, 0x410uLL);
            v19 = mach_continuous_time();
            v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v19), "LSM", 73, "lsim02_45CheckWithDeliveredAssistance");
            v21 = 4;
LABEL_40:
            result = LbsOsaTrace_WriteLog(0xCu, __str, v20, v21, 1);
            goto LABEL_41;
          }

          goto LABEL_41;
        }

LABEL_20:
        *v11 = 0;
        goto LABEL_21;
      }
    }

    else if ((g_lsimAsstDelivered & 2) == 0)
    {
      goto LABEL_19;
    }

    v11[1] = 0;
    if ((v10 & 4) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v22 = mach_continuous_time();
    v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:AidReqParam\n", (*&g_MacClockTicksToMsRelation * v22), "LSM", 87, "lsim02_45CheckWithDeliveredAssistance", 513);
    v21 = 2;
    goto LABEL_40;
  }

LABEL_41:
  v23 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lsim02_01DeliveredAsstCheckNeeded(void)
{
  v10 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:LastDelAsstTime,%ums\n", (*&g_MacClockTicksToMsRelation * v0), "LSM", 68, "lsim02_01DeliveredAsstCheckNeeded", dword_2A14BEA34);
    LbsOsaTrace_WriteLog(0xCu, __str, v1, 5, 1);
  }

  v2 = dword_2A14BEA34;
  if (dword_2A14BEA34 && (v3 = (*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v2, v3 >> 4 >= 0x271))
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
    result = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:LastUpdate,%ums,Threshold,%ums\n", (*&g_MacClockTicksToMsRelation * v7), "LSM", 73, "lsim02_01DeliveredAsstCheckNeeded", v3, 10000);
      LbsOsaTrace_WriteLog(0xCu, __str, v8, 4, 1);
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

uint64_t lsim02_46UpdateAidReqMask(__int16 a1, _BYTE *a2, _BYTE *a3)
{
  v15 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim02_46UpdateAidReqMask");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (a3)
  {
    if ((a1 & 8) != 0)
    {
      a2[6] = 0;
      if ((a1 & 0x20) == 0)
      {
LABEL_6:
        if ((a1 & 0x10) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_32;
      }
    }

    else if ((a1 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    a2[7] = 0;
    if ((a1 & 0x10) == 0)
    {
LABEL_7:
      if ((a1 & 0x40) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_33;
    }

LABEL_32:
    a2[4] = 0;
    if ((a1 & 0x40) == 0)
    {
LABEL_8:
      if ((a1 & 0x200) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_34;
    }

LABEL_33:
    a2[8] = 0;
    if ((a1 & 0x200) == 0)
    {
LABEL_9:
      if ((a1 & 0x400) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_35;
    }

LABEL_34:
    a2[10] = 0;
    if ((a1 & 0x400) == 0)
    {
LABEL_10:
      if ((a1 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_36;
    }

LABEL_35:
    a2[9] = 0;
    if ((a1 & 0x80) == 0)
    {
LABEL_11:
      if ((a1 & 0x100) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_37;
    }

LABEL_36:
    a2[5] = 0;
    if ((a1 & 0x100) == 0)
    {
LABEL_12:
      if ((a1 & 0x800) == 0)
      {
LABEL_14:
        if ((a2[5] & 1) == 0 && (a2[6] & 1) == 0 && (a2[10] & 1) == 0 && (a2[9] & 1) == 0 && (a2[7] & 1) == 0 && (a2[8] & 1) == 0 && (a2[4] & 1) == 0 && (a2[11] & 1) == 0 && (a2[12] & 1) == 0)
        {
          *a3 = 0;
        }

        result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
        if (result)
        {
          bzero(__str, 0x410uLL);
          v9 = mach_continuous_time();
          v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 73, "lsim02_46UpdateAidReqMask");
          v11 = 4;
LABEL_28:
          result = LbsOsaTrace_WriteLog(0xCu, __str, v10, v11, 1);
          goto LABEL_29;
        }

        goto LABEL_29;
      }

LABEL_13:
      a2[11] = 0;
      goto LABEL_14;
    }

LABEL_37:
    a2[12] = 0;
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:ReqFlag\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 87, "lsim02_46UpdateAidReqMask", 513);
    v11 = 2;
    goto LABEL_28;
  }

LABEL_29:
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GNS_AsstServerError(int a1, int a2, unsigned int a3, char a4)
{
  v20 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "GNS_AsstServerError");
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  if ((a2 - 1) >= 4)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      goto LABEL_12;
    }

    bzero(__str, 0x410uLL);
    v17 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:AsstSrc,%u\n", v17);
LABEL_11:
    LbsOsaTrace_WriteLog(0xCu, __str, v12, 2, 1);
    goto LABEL_12;
  }

  if (a3 >= 5)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      goto LABEL_12;
    }

    bzero(__str, 0x410uLL);
    v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:Cause,%u\n", v18);
    goto LABEL_11;
  }

  v10 = gnssOsa_Calloc("GNS_AsstServerError", 2607, 1, 0x1CuLL);
  v11 = v10;
  if (v10)
  {
    v10[3] = a1;
    v10[4] = a2;
    *(v10 + 20) = a4;
    v10[6] = a3;
    AgpsSendFsmMsg(131, 131, 8633347, v10);
LABEL_12:
    v11 = 0;
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, v11);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v14), "LSM", 73, "GNS_AsstServerError");
    result = LbsOsaTrace_WriteLog(0xCu, __str, v15, 4, 1);
  }

  v16 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t lsim02_02UpdateAsstBitmask(int a1, int a2)
{
  v14 = *MEMORY[0x29EDCA608];
  v4 = a2 & 7;
  if ((a2 & 7) != 0)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      goto LABEL_8;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:Common AsstBitmask,%u\n");
    goto LABEL_7;
  }

  if ((a2 & 0x1F8) == 0)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0);
    if (!result)
    {
      goto LABEL_13;
    }

    bzero(__str, 0x410uLL);
    v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:AsstBitmask,%u\n", v11);
    goto LABEL_29;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:Constel,%u,AsstBitmask,%u\n", v10);
LABEL_7:
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

LABEL_8:
  if ((lsim02_01DeliveredAsstCheckNeeded() & 1) == 0)
  {
    memset_s(&g_lsimAsstDelivered, 0x20uLL, 0, 0x20uLL);
  }

  if (!v4)
  {
    if (a1 > 15)
    {
      switch(a1)
      {
        case 16:
          v6 = &dword_2A14BEA30;
          goto LABEL_12;
        case 32:
          v6 = &qword_2A14BEA20;
          goto LABEL_12;
        case 64:
          v6 = &dword_2A14BEA28;
          goto LABEL_12;
      }
    }

    else
    {
      switch(a1)
      {
        case 1:
          v6 = &g_lsimAsstDelivered + 1;
          goto LABEL_12;
        case 2:
          v6 = &qword_2A14BEA20 + 1;
          goto LABEL_12;
        case 4:
          v6 = &dword_2A14BEA2C;
          goto LABEL_12;
      }
    }

    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0);
    if (!result)
    {
      goto LABEL_13;
    }

    bzero(__str, 0x410uLL);
    v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:GnssID,%u\n", v12);
LABEL_29:
    result = LbsOsaTrace_WriteLog(0xCu, __str, v9, 2, 1);
    goto LABEL_13;
  }

  v6 = &g_lsimAsstDelivered;
LABEL_12:
  *v6 |= a2;
  result = mach_continuous_time();
  dword_2A14BEA34 = (*&g_MacClockTicksToMsRelation * result);
LABEL_13:
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lsim02_47TraceDelvAsstForConstel(__int16 a1, const char *a2)
{
  v24 = *MEMORY[0x29EDCA608];
  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v5 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v6 = 89;
    if ((a1 & 0x800) != 0)
    {
      v7 = 89;
    }

    else
    {
      v7 = 78;
    }

    if ((a1 & 0x400) != 0)
    {
      v8 = 89;
    }

    else
    {
      v8 = 78;
    }

    v21 = v8;
    v22 = v7;
    if ((a1 & 0x200) != 0)
    {
      v9 = 89;
    }

    else
    {
      v9 = 78;
    }

    if ((a1 & 0x80) != 0)
    {
      v10 = 89;
    }

    else
    {
      v10 = 78;
    }

    v19 = v10;
    v20 = v9;
    if ((a1 & 0x100) != 0)
    {
      v11 = 89;
    }

    else
    {
      v11 = 78;
    }

    if ((a1 & 0x10) != 0)
    {
      v12 = 89;
    }

    else
    {
      v12 = 78;
    }

    v17 = v12;
    v18 = v11;
    if ((a1 & 0x40) != 0)
    {
      v13 = 89;
    }

    else
    {
      v13 = 78;
    }

    if ((a1 & 0x20) != 0)
    {
      v14 = 89;
    }

    else
    {
      v14 = 78;
    }

    if ((a1 & 8) == 0)
    {
      v6 = 78;
    }

    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:LSIMDA,%s,Alm,%c,Eph,%c,AcqA,%c,UtcM,%c,TimeM,%c,Rti,%c,Aux,%c,DBit,%c,GrIono,%c\n", v5, "LSM", 73, "lsim02_47TraceDelvAsstForConstel", a2, v6, v14, v13, v17, v18, v19, v20, v21, v22);
    result = LbsOsaTrace_WriteLog(0xCu, __str, v15, 4, 1);
  }

  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t EE_Get_GPS_BinEph(int a1, int a2, uint64_t a3)
{
  v29 = *MEMORY[0x29EDCA608];
  strcpy(v28, "GN_EE_Get_GPS_Eph_El: ");
  if ((a1 + 53) > 0xF5u || (a1 - 33) > 0xDFu)
  {
    result = GN_EE_Get_GPS_Eph_El(a1, (((1861606989 * a2) >> 50) + ((1861606989 * a2) >> 63)), a2 - 604800 * (((1861606989 * a2) >> 50) + ((1861606989 * a2) >> 63)), &v18);
    if (result)
    {
      v9[2] = v19;
      v10 = v20;
      v11 = v21;
      v12 = v22;
      v13 = v23;
      v14 = v24;
      v15 = v25;
      v16 = v26;
      v17 = v27;
      v6 = *(p_api + 48);
      if (*(v6 + 5) == 1 && *v6 >= 3)
      {
        v7 = *(v6 + 24) + 604800 * *(v6 + 16);
      }

      else
      {
        v7 = 0;
      }

      v9[0] = v7;
      v9[1] = 6;
      if (g_Enable_Event_Log >= 4u)
      {
        EvLog_GPS_IntEph(v28, a1, v9);
      }

      result = Is_GPS_IntEph_Valid(v28, a1, v9);
      if (result)
      {
        GPS_EphInt2Bin(v9, a3);
        result = 1;
      }
    }
  }

  else
  {
    EvCrt_v("EE_Get_GLON_GPS_BinEph:  FAILED:  SV = %d, Out of range !", a1);
    result = 0;
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t EE_Set_GPS_BinEph(int a1, uint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  memset(v8, 0, 42);
  *(&v8[2] + 12) = 0u;
  *(&v8[3] + 12) = 0u;
  if ((a1 + 53) > 0xF5u || (a1 - 33) > 0xDFu)
  {
    GPS_EphBin2Int(a2, v8);
    v3 = LODWORD(v8[0]) - 16 * WORD1(v8[1]);
    LOWORD(v4) = v8[1];
    if (!LOWORD(v8[1]))
    {
      if (v3 < 619012800)
      {
        goto LABEL_12;
      }

      LOWORD(v8[1]) = (v3 + 302400) / 604800;
      v4 = (v3 + 302400) / 604800;
    }

    v5 = (v3 + 302400) / 604800 - 512;
    if (v5 > v4)
    {
      do
      {
        LOWORD(v4) = v4 + 1024;
      }

      while (v5 > v4);
      LOWORD(v8[1]) = v4;
    }

    if (g_Enable_Event_Log >= 4u)
    {
      EvLog_GPS_IntEph("GN_EE_Set_GPS_Eph_El: ", a1, v8);
    }
  }

  else
  {
    EvCrt_v("EE_Set_GPS_Eph_El:  FAILED  SV = %d, Out of range !", a1);
  }

LABEL_12:
  v6 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t EE_Get_GLON_GPS_BinEph(int a1, int a2, uint64_t a3)
{
  v29 = *MEMORY[0x29EDCA608];
  strcpy(v28, "GN_EE_Get_GLON_GPS_Eph_El: ");
  if ((a1 - 25) > 0xE7u)
  {
    result = GN_EE_Get_GLON_GPS_Eph_El(a1, (((1861606989 * a2) >> 50) + ((1861606989 * a2) >> 63)), a2 - 604800 * (((1861606989 * a2) >> 50) + ((1861606989 * a2) >> 63)), &v18);
    if (result)
    {
      v9[2] = v19;
      v10 = v20;
      v11 = v21;
      v12 = v22;
      v13 = v23;
      v14 = v24;
      v15 = v25;
      v16 = v26;
      v17 = v27;
      v6 = *(p_api + 48);
      if (*(v6 + 5) == 1 && *v6 >= 3)
      {
        v7 = *(v6 + 24) + 604800 * *(v6 + 16);
      }

      else
      {
        v7 = 0;
      }

      v9[0] = v7;
      v9[1] = 6;
      if (g_Enable_Event_Log >= 4u)
      {
        EvLog_GPS_IntEph(v28, a1, v9);
      }

      result = Is_GPS_IntEph_Valid(v28, a1, v9);
      if (result)
      {
        GPS_EphInt2Bin(v9, a3);
        result = 1;
      }
    }
  }

  else
  {
    EvCrt_v("EE_Get_GLON_GPS_BinEph:  FAILED:  SV = %d < %d || > %d, Out of range !", a1, 1, 24);
    result = 0;
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t EE_Get_GAL_IntEph(char a1, int a2, uint64_t a3)
{
  v32 = *MEMORY[0x29EDCA608];
  if ((a1 - 37) <= 0xDBu)
  {
    EvCrt_v("EE_Get_GAL_IntEph:  FAILED:  SV = %d, Out of range !");
    goto LABEL_5;
  }

  if (a2 < 619315200)
  {
LABEL_5:
    result = 0;
    goto LABEL_6;
  }

  result = GN_EE_Get_GAL_Eph_El(a1, (a2 / 0x93A80u - 1024), a2 % 0x93A80u, &v18);
  if (!result)
  {
    goto LABEL_6;
  }

  if (g_Enable_Event_Log >= 4u)
  {
    EvLog_GN_EE_GAL_Eph_El("GN_EE_Get_GAL_Eph_El: ", &v18);
  }

  v6 = BYTE6(v18) - 37;
  v7 = v6 < 0xFFFFFFDC;
  if (v6 <= 0xFFFFFFDB)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  SVid = %d, Out of range !", BYTE6(v18));
  }

  if (v18 > 0x93A7F)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  WeekNo = %d >= 604800, Out of range !", v18);
    v7 = 1;
  }

  if (WORD2(v18) >= 0x1000u)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  WeekNo = %d >= 4096, Out of range !", WORD2(v18));
    v7 = 1;
  }

  v8 = BYTE6(v18);
  if (BYTE6(v18) >= 0x41u)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  SVid = %d > 2^6, Out of range !", BYTE6(v18));
    v8 = BYTE6(v18);
    v7 = 1;
  }

  if (v8 >= 0x25)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  SVid = %d > 36, Unrealistic value !", v8);
    v7 = 1;
  }

  if (v26 >> 5 >= 0x13Bu)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  toc = %d > 10079, Out of range !", v26);
    v7 = 1;
  }

  if (HIWORD(v19) >> 5 >= 0x13Bu)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  toe = %d > 10079, Out of range !", HIWORD(v19));
    v7 = 1;
  }

  if (v19 >= 0x400u)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  IODnav = %d > 1023, Out of range !", v19);
    v7 = 1;
  }

  v9 = 0.03;
  v10 = 0.25;
  if (((BYTE6(v18) - 14) & 0xFB) == 0)
  {
    v9 = 0.25;
  }

  LODWORD(v10) = DWORD1(v20);
  v11 = v10 * 1.16415322e-10;
  if (v11 > v9)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  e = %g  > %g, Unrealistic value !", v11, v9);
    v7 = 1;
  }

  v12 = vcvtd_n_f64_u32(DWORD2(v20), 0x13uLL);
  if (v12 < 4800.0)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  sqrtA = %g  < %g, Unrealistic value !", v12, 4800.0);
    v7 = 1;
  }

  if (v12 > 5800.0)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  sqrtA = %g  > %g, Unrealistic value !", v12, 5800.0);
    v7 = 1;
  }

  if ((v22 - 0x800000) >> 24 == 255)
  {
    v13 = v22 * 3.57157734e-13;
    if (v13 >= -0.00000198862815)
    {
      if (v13 <= 0.0)
      {
        goto LABEL_41;
      }

      EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  OmegaDot = %e  > %e rad/s, Unrealistic value !");
    }

    else
    {
      EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  OmegaDot = %e  < %e rad/s, Unrealistic value !");
    }
  }

  else
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  OmegaDot = %d < -2^23 || >= 2^23, Out of range !");
  }

  v7 = 1;
LABEL_41:
  if (((v23 - 0x2000) >> 14) <= 2u)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  IDOT = %d < -2^13 || >= 2^13, Out of range !", v23);
    v7 = 1;
  }

  if (v24 - 0x40000000 >= 0)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  af0 = %d < -2^30 || >= 2^30, Out of range !", v24);
    v7 = 1;
  }

  if ((HIDWORD(v24) - 0x100000) >> 21 != 2047)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  af1 = %d < -2^20 || >= 2^20, Out of range !", HIDWORD(v24));
    v7 = 1;
  }

  if (((v25 - 32) >> 6) <= 0x3FEu)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  af2 = %d < -2^5 || >= 2^5, Out of range !", v25);
    v7 = 1;
  }

  if (((v27 - 512) >> 10) <= 0x3Eu)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  bgdE1E5b = %d < -2^9 || >= 2^9, Out of range !", v27);
    v7 = 1;
  }

  if (((HIWORD(v27) - 512) >> 10) <= 0x3Eu)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  bgdE1E5a = %d < -2^9 || >= 2^9, Out of range !", SHIWORD(v27));
    v7 = 1;
  }

  if (v28 >= 2u)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  Model_ID = %d < 0 || > 1, Out of range !", v28);
    v7 = 1;
  }

  if (BYTE1(v28) >= 2u)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  E5a_Nav_DVS = %d < 0 || > 1, Out of range !", BYTE1(v28));
    v7 = 1;
  }

  if (BYTE2(v28) >= 2u)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:   E5b_Nav_DVS = %d < 0 || > 1, Out of range !", BYTE2(v28));
    v7 = 1;
  }

  if (HIBYTE(v28) >= 2u)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  E1B_Nav_DVS = %d < 0 || > 1, Out of range !", HIBYTE(v28));
    v7 = 1;
  }

  if (v29 >= 4u)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  E5a_Sig_HS = %d < 0 || > 3, Out of range !", v29);
    v7 = 1;
  }

  v14 = v30;
  if (v30 > 3u)
  {
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  E5b_Sig_HS = %d < 0 || > 3, Out of range !", v30);
    if (v31 < 4u)
    {
      goto LABEL_5;
    }

LABEL_67:
    EvCrt_v("GN_EE_Get_GAL_Eph_El:  FAILED:  E1B_Sig_HS = %d < 0 || > 1, Out of range !");
    goto LABEL_5;
  }

  v15 = v31;
  if (v31 > 3u)
  {
    goto LABEL_67;
  }

  if (v7)
  {
    goto LABEL_5;
  }

  v16 = *(p_api + 48);
  if (*(v16 + 5) == 1 && *v16 >= 3)
  {
    v17 = 604800 * *(v16 + 16) + *(v16 + 24);
  }

  else
  {
    v17 = 0;
  }

  *a3 = v17;
  *(a3 + 4) = 6;
  *(a3 + 8) = v18;
  *(a3 + 16) = v19;
  *(a3 + 20) = v20;
  *(a3 + 36) = v21;
  *(a3 + 44) = v22;
  *(a3 + 48) = v23;
  *(a3 + 74) = v26;
  *(a3 + 64) = v24;
  *(a3 + 72) = v25;
  *(a3 + 76) = v27;
  *(a3 + 80) = v28;
  *(a3 + 84) = v29;
  *(a3 + 85) = v14;
  result = 1;
  *(a3 + 86) = v15;
LABEL_6:
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

_BYTE *EvLog_GN_EE_GAL_Eph_El(_BYTE *a1, unsigned int *a2)
{
  result = EvLog_nd(a1, 34, *(a2 + 25), *a2, *(a2 + 2), *(a2 + 6), *(a2 + 7), *(a2 + 4), *(a2 + 5), a2[3], a2[4], a2[5], a2[6], a2[7], a2[8], a2[9], *(a2 + 20), *(a2 + 21), *(a2 + 22), *(a2 + 23), *(a2 + 24), *(a2 + 25), *(a2 + 26), *(a2 + 27), *(a2 + 33), a2[14], a2[15], *(a2 + 32), *(a2 + 34), *(a2 + 35), *(a2 + 72), *(a2 + 73), *(a2 + 74), *(a2 + 75), *(a2 + 76), *(a2 + 77), *(a2 + 78), *(a2 + 5), *(a2 + 4), *(a2 + 7), *(a2 + 6), *(a2 + 2), a1, *MEMORY[0x29EDCA608]);
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t EE_Set_GAL_IntEph(int a1, uint64_t a2)
{
  v17 = *MEMORY[0x29EDCA608];
  if ((a1 - 37) > 0xFFFFFFDB)
  {
    v4 = *(a2 + 8);
    v5 = *(a2 + 16);
    v6 = *(a2 + 20);
    v7 = *(a2 + 36);
    v8 = *(a2 + 44);
    v9 = *(a2 + 48);
    v12 = *(a2 + 74);
    v10 = *(a2 + 64);
    v11 = *(a2 + 72);
    v13 = *(a2 + 76);
    v14 = *(a2 + 80);
    v15 = *(a2 + 84);
    v16 = *(a2 + 85);
    if (g_Enable_Event_Log >= 4u)
    {
      EvLog_GN_EE_GAL_Eph_El("GN_EE_Set_GAL_Eph_El: ", &v4);
    }
  }

  else
  {
    EvCrt_v("EE_Set_GAL_Eph_El:  FAILED  SV = %d, Out of range !", a1);
  }

  v2 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t EE_Get_BDS_IntEph(char a1, unsigned int a2, uint64_t a3)
{
  v34 = *MEMORY[0x29EDCA608];
  if ((a1 - 38) <= 0xDAu)
  {
    EvCrt_v("EE_Get_BDS_IntEph:  FAILED:  SV = %d, Out of range !");
    goto LABEL_5;
  }

  if (a2 < 820713600)
  {
LABEL_5:
    result = 0;
    goto LABEL_6;
  }

  v6 = a2 % 0x93A80;
  if (a2 % 0x93A80 < 0xE)
  {
    v7 = -1357;
  }

  else
  {
    v7 = -1356;
  }

  if (v6 < 0xE)
  {
    v6 = (a2 % 0x93A80) | 0x93A80;
  }

  result = GN_EE_Get_BDS_Eph_El(a1, (v7 + a2 / 0x93A80), v6 - 14, v19);
  if (result)
  {
    if (g_Enable_Event_Log >= 4u)
    {
      EvLog_GN_EE_BDS_Eph_El("GN_EE_Get_BDS_Eph_El: ", v19);
    }

    v9 = BYTE2(v22) - 38;
    v10 = v9 < 0xFFFFFFDB;
    if (v9 <= 0xFFFFFFDA)
    {
      EvCrt_v("GN_EE_Get_BDS_Eph_El:  FAILED:  SVid = %d, Out of range !", BYTE2(v22));
    }

    if (v19[0] >= 0x2000)
    {
      EvCrt_v("GN_EE_Get_BDS_Eph_El:  FAILED:  WeekNo = %d > 8191, Out of range !", v19[0]);
      v10 = 1;
    }

    if (v20 > 0x1274F)
    {
      EvCrt_v("GN_EE_Get_BDS_Eph_El:  FAILED:  toc = %d > 75599, Out of range !", v20);
      v10 = 1;
    }

    if (v21 > 0x1274F)
    {
      EvCrt_v("GN_EE_Get_BDS_Eph_El:  FAILED:  toe = %d > 75599, Out of range !", v21);
      v10 = 1;
    }

    if (v22 >= 0x20u)
    {
      EvCrt_v("GN_EE_Get_BDS_Eph_El:  FAILED:  AODE = %d > 31, Out of range !", v22);
      v10 = 1;
    }

    if (BYTE1(v22) >= 0x20u)
    {
      EvCrt_v("GN_EE_Get_BDS_Eph_El:  FAILED:  AODC = %d > 31, Out of range !", BYTE1(v22));
      v10 = 1;
    }

    if (BYTE2(v22) >= 0x26u)
    {
      EvCrt_v("GN_EE_Get_BDS_Eph_El:  FAILED:  SVid = %d > 37, Out of range !", BYTE2(v22));
      v10 = 1;
    }

    if (HIBYTE(v22) >= 0x10u)
    {
      EvCrt_v("GN_EE_Get_BDS_Eph_El:  FAILED:  URAI = %d > 15, Out of range !", HIBYTE(v22));
      v10 = 1;
    }

    if (v23 >= 2u)
    {
      EvCrt_v("GN_EE_Get_BDS_Eph_El:  FAILED:  SatH1 = %d > 15, Out of range !", v23);
      v10 = 1;
    }

    if (((v26 - 0x2000) >> 14) <= 2u)
    {
      EvCrt_v("GN_EE_Get_BDS_Eph_El:  FAILED:  IDOT = %d < -2^13 || >= 2^13, Out of range !", v26);
      v10 = 1;
    }

    if ((v29 - 0x20000) <= 0xFFFBFFFF)
    {
      EvCrt_v("GN_EE_Get_BDS_Eph_El:  FAILED:  Cuc = %d < -2^17 || >= 2^17, Out of range !", v29);
      v10 = 1;
    }

    if ((DWORD1(v29) - 0x20000) <= 0xFFFBFFFF)
    {
      EvCrt_v("GN_EE_Get_BDS_Eph_El:  FAILED:  Cus = %d < -2^17 || >= 2^17, Out of range !", DWORD1(v29));
      v10 = 1;
    }

    if ((DWORD2(v29) - 0x20000) <= 0xFFFBFFFF)
    {
      EvCrt_v("GN_EE_Get_BDS_Eph_El:  FAILED:  Crc = %d < -2^17 || >= 2^17, Out of range !", DWORD2(v29));
      v10 = 1;
    }

    if ((HIDWORD(v29) - 0x20000) <= 0xFFFBFFFF)
    {
      EvCrt_v("GN_EE_Get_BDS_Eph_El:  FAILED:  Crs = %d < -2^17 || >= 2^17, Out of range !", HIDWORD(v29));
      v10 = 1;
    }

    if ((v30 - 0x20000) <= 0xFFFBFFFF)
    {
      EvCrt_v("GN_EE_Get_BDS_Eph_El:  FAILED:  Cic = %d < -2^17 || >= 2^17, Out of range !", v30);
      v10 = 1;
    }

    if ((DWORD1(v30) - 0x20000) <= 0xFFFBFFFF)
    {
      EvCrt_v("GN_EE_Get_BDS_Eph_El:  FAILED:  Cis = %d < -2^17 || >= 2^17, Out of range !", DWORD1(v30));
      v10 = 1;
    }

    if ((DWORD2(v30) - 0x800000) >> 24 != 255)
    {
      EvCrt_v("GN_EE_Get_BDS_Eph_El:  FAILED:  af0 = %d < -2^23 || >= 2^23, Out of range !", DWORD2(v30));
      v10 = 1;
    }

    if ((HIDWORD(v30) - 0x200000) >> 22 != 1023)
    {
      EvCrt_v("GN_EE_Get_BDS_Eph_El:  FAILED:  af1 = %d < -2^21 || >= 2^23, Out of range !", HIDWORD(v30));
      v10 = 1;
    }

    if (((v31 - 1024) >> 11) <= 0x1Eu)
    {
      EvCrt_v("GN_EE_Get_BDS_Eph_El:  FAILED:  af2 = %d < -2^10 || >= 2^10, Out of range !", v31);
      v10 = 1;
    }

    v11 = v32;
    if (((v32 - 512) >> 10) < 0x3Fu)
    {
      EvCrt_v("GN_EE_Get_BDS_Eph_El:  FAILED:  TGD1 = %d < -2^9 || >= 2^9, Out of range !", v32);
      if (((v33 - 512) >> 10) > 0x3Eu)
      {
        goto LABEL_5;
      }

LABEL_57:
      EvCrt_v("GN_EE_Get_BDS_Eph_El:  FAILED:  TGD2 = %d < -2^9 || >= 2^9, Out of range !");
      goto LABEL_5;
    }

    v12 = v33;
    if (((v33 - 512) >> 10) < 0x3Fu)
    {
      goto LABEL_57;
    }

    if (v10)
    {
      goto LABEL_5;
    }

    v13 = *(p_api + 48);
    if (*(v13 + 5) == 1 && *v13 >= 3)
    {
      v8 = *(v13 + 24);
      v14 = v8 + 604800 * *(v13 + 16);
    }

    else
    {
      v14 = 0;
    }

    *a3 = v14;
    *(a3 + 4) = 6;
    *(a3 + 16) = v19[0];
    *(a3 + 22) = v23;
    LODWORD(v8) = v22;
    v15 = vmovl_u8(*&v8);
    *(a3 + 18) = v22;
    *(a3 + 24) = v24;
    *(a3 + 40) = v25;
    *(a3 + 52) = v28;
    *(a3 + 48) = v26;
    *(a3 + 50) = v27;
    v16 = v30;
    *(a3 + 56) = v29;
    v17 = v21;
    *(a3 + 8) = v20;
    *(a3 + 12) = v17;
    *(a3 + 72) = v16;
    *(a3 + 88) = v31;
    *(a3 + 90) = v11;
    *(a3 + 92) = v12;
    if (v15.u8[4] > 5u)
    {
      v18 = 0x7FFFFFF;
    }

    else
    {
      v18 = -1;
    }

    *(a3 + 96) = v18;
    result = 1;
  }

LABEL_6:
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

_BYTE *EvLog_GN_EE_BDS_Eph_El(_BYTE *a1, __int16 *a2)
{
  result = EvLog_nd(a1, 28, a2[42], *a2, *(a2 + 1), *(a2 + 2), *(a2 + 12), *(a2 + 13), *(a2 + 14), *(a2 + 15), *(a2 + 16), *(a2 + 5), *(a2 + 6), *(a2 + 7), *(a2 + 8), *(a2 + 9), *(a2 + 10), a2[22], a2[23], *(a2 + 12), *(a2 + 13), *(a2 + 14), *(a2 + 15), *(a2 + 16), *(a2 + 17), *(a2 + 18), *(a2 + 19), *(a2 + 20), a2[42], a2[43], a2[44], *MEMORY[0x29EDCA608]);
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t EE_Set_BDS_IntEph(int a1, uint64_t a2)
{
  v22 = *MEMORY[0x29EDCA608];
  if ((a1 - 38) > 0xFFFFFFDA)
  {
    v9 = *(a2 + 16);
    v13 = *(a2 + 22);
    v2 = *(a2 + 18);
    v14 = *(a2 + 24);
    v15 = *(a2 + 40);
    v3 = *(a2 + 52);
    v16 = *(a2 + 48);
    v17 = v3;
    v4 = *(a2 + 56);
    v5 = *(a2 + 8);
    v11 = *(a2 + 12);
    v12 = v2;
    v10 = v5;
    v6 = *(a2 + 72);
    v18 = v4;
    v19 = v6;
    v20 = *(a2 + 88);
    v21 = *(a2 + 90);
    if (g_Enable_Event_Log >= 4u)
    {
      EvLog_GN_EE_BDS_Eph_El("GN_EE_Set_BDS_Eph_El: ", &v9);
    }
  }

  else
  {
    EvCrt_v("EE_Set_BDS_Eph_El:  FAILED  SV = %d, Out of range !", a1);
  }

  v7 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GNS_Initialize(void)
{
  v2 = *MEMORY[0x29EDCA608];
  if (g_GnsInit)
  {
    result = 1;
  }

  else
  {
    gnssDataMgt_Init();
    result = AgpsSpawnFsm(&g_AgpsFsmTable, 8);
    g_GnsInit = result;
  }

  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GNS_ProductionInitialize(int a1, uint64_t a2, void *a3)
{
  v3 = 0;
  v9 = *MEMORY[0x29EDCA608];
  if (a2 && a3)
  {
    if ((g_GnsInit & 1) != 0 || !AgpsSpawnFsm(&g_AgpsProdFsmTable, 2))
    {
      v3 = 0;
    }

    else
    {
      gnssDataMgtProduction_Init(a3);
      v3 = 1;
      Hal_StartConn(a1, 1, a2);
      g_GnsInit = 1;
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t GNS_ProductionDeInitialize(void)
{
  v5 = *MEMORY[0x29EDCA608];
  if (g_GnsInit == 1)
  {
    v0 = AgpsShutdownAllFsm();
    g_GnsInit = 0;
    usleep(0x186A0u);
    v1 = *MEMORY[0x29EDCA608];
    return v0;
  }

  else
  {
    v3 = *MEMORY[0x29EDCA608];
    v4 = *MEMORY[0x29EDCA608];
    return 0;
  }
}

uint64_t SuplVersionNegotiation::GetInstance(SuplVersionNegotiation *this)
{
  v6 = *MEMORY[0x29EDCA608];
  if (SuplVersionNegotiation::GetInstance(void)::pred_suplVersionNegotiation != -1)
  {
    dispatch_once(&SuplVersionNegotiation::GetInstance(void)::pred_suplVersionNegotiation, &__block_literal_global_8);
  }

  result = SuplVersionNegotiation::m_supl_version_negotiation;
  if (!SuplVersionNegotiation::m_supl_version_negotiation)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v3), "OSA", 69, "GetInstance", "GetInstance");
      LbsOsaTrace_WriteLog(0xEu, __str, v4, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("GetInstance", "SuplVersionNegotiation.cpp", 44, "false && Memory allocation failure");
  }

  v2 = *MEMORY[0x29EDCA608];
  return result;
}

_DWORD *___ZN22SuplVersionNegotiation11GetInstanceEv_block_invoke()
{
  v2 = *MEMORY[0x29EDCA608];
  result = operator new(4uLL, MEMORY[0x29EDC9418]);
  if (result)
  {
    *result = 196352;
  }

  SuplVersionNegotiation::m_supl_version_negotiation = result;
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL SuplVersionNegotiation::Instance::NegotiateNetInitiated(SuplVersionNegotiation::Instance *this, unsigned int a2)
{
  v3 = this;
  v12 = *MEMORY[0x29EDCA608];
  Instance = SuplVersionNegotiation::GetInstance(this);
  result = 0;
  v6 = atomic_load((Instance + 1));
  v7 = v6 == 255;
  v8 = 1;
  if (v7)
  {
    v8 = 2;
  }

  v9 = atomic_load((Instance + v8));
  if (v3 >= a2 && a2 <= 2 && v9 <= 2)
  {
    v10 = atomic_load((Instance + 3));
    if (v10)
    {
      if (v3 > 2)
      {
        if (v9 < a2)
        {
          result = 0;
          goto LABEL_14;
        }

        atomic_store(v9, (Instance + 1));
      }

      else
      {
        atomic_store(v3, (Instance + 1));
      }

      result = 1;
      goto LABEL_14;
    }

    result = v9 == v3;
  }

LABEL_14:
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

unsigned __int8 *SuplVersionNegotiation::Instance::Reset(SuplVersionNegotiation::Instance *this)
{
  v11 = *MEMORY[0x29EDCA608];
  result = SuplVersionNegotiation::GetInstance(this);
  v2 = atomic_load(result + 1);
  v3 = v2 == 255;
  v4 = 1;
  if (v3)
  {
    v4 = 2;
  }

  v5 = atomic_load(&result[v4]);
  if (v5 > 2)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "SPL", 69, "Reset", 770);
      result = LbsOsaTrace_WriteLog(0x12u, __str, v8, 0, 1);
    }
  }

  else
  {
    v6 = atomic_load(result + 3);
    if (v6)
    {
      atomic_store(2u, result + 2);
    }

    atomic_store(0xFFu, result + 1);
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL NK_Crude_Apx_Pos_Core(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6);
  v509 = v11;
  v510 = v10;
  v511 = v12;
  v526 = v13;
  v544 = v14;
  v16 = v15;
  v562 = v17;
  v516 = v9;
  v673[48] = *MEMORY[0x29EDCA608];
  v568 = 0uLL;
  *&v569 = 0.0;
  __x = 0uLL;
  v578 = 0.0;
  v576 = 0;
  v574 = 0u;
  v575 = 0u;
  v515 = 0u;
  v18 = &unk_2A1928000;
  v19 = byte_2A1939000;
  if (g_Enable_Event_Log >= 2u)
  {
    v515 = vdupq_n_s32((*&g_MacClockTicksToMsRelation * mach_continuous_time()));
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = &(*v516)[2];
  do
  {
    if (v16[v20] == 3)
    {
      ++v22;
    }

    if (*(v23 - 2) && *(v23 - 1) && *v23)
    {
      ++v21;
    }

    ++v20;
    v23 += 3;
  }

  while (v20 != 48);
  v547 = v16;
  v508 = v21;
  v24 = Centroid_SV_Pos(v516, 0x30u, v582);
  if (v24)
  {
    *&v582[24] = 0;
    v583 = 0uLL;
    v579 = *v582;
    v580 = *&v582[16];
    v581 = 0uLL;
  }

  else
  {
    v580 = 0u;
    v581 = 0u;
    v579 = 0u;
  }

  v512 = v515;
  if (g_Enable_Event_Log >= 2u)
  {
    v25 = mach_continuous_time();
    v26 = v515;
    v26.i32[1] = (*&g_MacClockTicksToMsRelation * v25);
    v512 = v26;
  }

  v27 = 0uLL;
  xmmword_2A1938F80 = 0u;
  *&dword_2A1938F90 = 0u;
  *(&xmmword_2A1938F58 + 8) = 0u;
  *&byte_2A1938F70 = 0u;
  xmmword_2A1938F40 = 0u;
  *&qword_2A1938F50 = 0u;
  if (v22 > 2)
  {
    v28 = v24;
  }

  else
  {
    v28 = 0;
  }

  gDebug = 0uLL;
  unk_2A1938F30 = 0uLL;
  if (v28 != 1)
  {
    if (!v24)
    {
      v72 = 0;
      goto LABEL_222;
    }

    goto LABEL_139;
  }

  byte_2A1938F7E = 1;
  *v571 = *v582;
  v572 = *&v582[16];
  v573 = v583;
  bzero(v587, 0xA80uLL);
  v30 = 0;
  v31 = 0;
  v638 = 0;
  memset(v634, 0, sizeof(v634));
  memset(v635, 0, 345);
  v640 = 0;
  v637 = 0;
  v639 = 0;
  v651 = 0u;
  v652 = 0u;
  v653 = 0u;
  v654 = 0u;
  v655 = 0u;
  v656 = 0u;
  v657 = 0u;
  v658 = 0u;
  v659 = 0u;
  v660 = 0u;
  v661 = 0u;
  v662 = 0u;
  v643 = 1;
  v645 = &v629;
  v644 = &v584;
  v646 = v673;
  v647 = &v624;
  v648 = &v610;
  v642 = 0xFFFFFFFF00000000;
  v650 = 0u;
  v649 = 0u;
  v641 = 1;
  v636 = 0;
  dword_2A1938F68 = 0;
  memset(v585, 0, sizeof(v585));
  v584 = 0u;
  v609 = 0.0;
  v608 = 0u;
  v607 = 0u;
  v32 = &(*v516)[2];
  v33 = -1;
  v34 = 592;
  memset(__b, 0, sizeof(__b));
  do
  {
    v673[v30] = 1.0;
    if (v547[v30] == 3 && *(v32 - 2) && *(v32 - 1) && *v32)
    {
      *(&v585[-1] + v30) = 1;
      *(v634 + v34) = 1;
      ++v31;
      *(v562 + v30) = 1;
    }

    else if (v33 == -1)
    {
      HIDWORD(v642) = v30;
      v33 = v30;
    }

    ++v30;
    v34 += 4;
    v32 += 3;
  }

  while (v30 != 48);
  *(&v639 + 3) = -1;
  LODWORD(v639) = -16645888;
  v35 = 3;
  HIBYTE(v639) = 3;
  if (v31)
  {
    BYTE3(v639) = 3;
    v35 = 4;
    HIBYTE(v639) = 4;
  }

  LODWORD(v640) = 2;
  if (v31 < 3)
  {
LABEL_102:
    v87 = 0;
    goto LABEL_118;
  }

  v36 = 0;
  v37 = 0.0;
  while (2)
  {
    v38 = *v582;
    v39 = *&v582[8];
    *v612 = *v582;
    v40 = *&v582[16];
    *&v612[16] = *&v582[16];
    ECEF2Geo(v612, &WGS84_Datum, v604);
    v41 = *&v604[2];
    v42 = -6.28318531;
    if (*&v604[2] >= 3.14159265 || (v42 = 6.28318531, *&v604[2] < -3.14159265))
    {
      v41 = *&v604[2] + v42;
      *&v604[2] = *&v604[2] + v42;
    }

    v43 = __sincos_stret(*v604);
    v44 = __sincos_stret(v41);
    v45 = 0;
    *__b = -(v43.__sinval * v44.__cosval);
    *(__b + 1) = -(v43.__sinval * v44.__sinval);
    *&__b[1] = v43.__cosval;
    *(&__b[1] + 1) = -v44.__sinval;
    v607 = *&v44.__cosval;
    *&v608 = -(v43.__cosval * v44.__cosval);
    *(&v608 + 1) = -(v43.__cosval * v44.__sinval);
    v609 = -v43.__sinval;
    v46 = &(*v516)[2];
    v47 = &v587[2];
    do
    {
      if (*(v644 + v45) != 1)
      {
        goto LABEL_50;
      }

      v48 = *(v46 - 1);
      v49.i64[0] = v48;
      v49.i64[1] = SHIDWORD(v48);
      *v598 = vcvtq_f64_s64(v49);
      v599 = *v46;
      v600.f64[0] = v38;
      v600.f64[1] = v39;
      v601 = v40;
      v50 = Comp_SVrange_Sag_Corr(v602, v570, &v600, v598);
      *(v47 - 1) = *v602;
      *v47 = v603;
      v51 = *(v562 + v45);
      v52 = 0.0;
      if (v51 > 2)
      {
        if (v51 != 5)
        {
          if (v51 == 4)
          {
            LOBYTE(v53) = BYTE5(v639);
            if (SBYTE5(v639) < 1)
            {
              goto LABEL_49;
            }

LABEL_48:
            v52 = *&v582[8 * v53];
            goto LABEL_49;
          }

          if (v51 != 3)
          {
            goto LABEL_49;
          }
        }

LABEL_46:
        v53 = SBYTE3(v639);
        goto LABEL_47;
      }

      if (v51 == 1)
      {
        goto LABEL_46;
      }

      if (v51 != 2)
      {
        goto LABEL_49;
      }

      v53 = SBYTE4(v639);
LABEL_47:
      if (v53 > 0)
      {
        goto LABEL_48;
      }

LABEL_49:
      v645[v45] = v526[v45] - v50 - v52;
LABEL_50:
      ++v45;
      v47 += 7;
      v46 += 3;
    }

    while (v45 != 48);
    if (v31 > 4)
    {
      HIDWORD(v642) = -1;
    }

    else
    {
      v54 = SHIDWORD(v642);
      *(v644 + SHIDWORD(v642)) = 1;
      v55 = v645;
      v602[0] = 0;
      LODWORD(v600.f64[0]) = 0;
      v598[0] = 0;
      v570[0] = 0;
      *v612 = v38;
      *&v612[8] = v39;
      *&v612[16] = v40;
      ECEF2Geo(v612, &WGS84_Datum, v604);
      v57 = *&v604[2];
      v58 = -6.28318531;
      if (*&v604[2] >= 3.14159265 || (v58 = 6.28318531, *&v604[2] < -3.14159265))
      {
        v57 = *&v604[2] + v58;
        *&v604[2] = *&v604[2] + v58;
      }

      v59 = &v587[7 * v54];
      LODWORD(v56) = vcvtd_n_s64_f64(*v604, 0xFuLL);
      v60 = Taylor_sin_cos(v56, v602, &v600);
      LODWORD(v60) = vcvtd_n_s64_f64(v57, 0xFuLL);
      Taylor_sin_cos(v60, v598, v570);
      v61 = vcvtd_n_f64_s32(v598[0] * LODWORD(v600.f64[0]), 0x1EuLL);
      v62 = vcvtd_n_f64_s32(v602[0], 0xFuLL);
      *v59 = vcvtd_n_f64_s32(LODWORD(v600.f64[0]) * v570[0], 0x1EuLL);
      v59[1] = v61;
      v59[2] = v62;
      v55[v54] = v605;
      if (v31 == 4)
      {
        v646[SHIDWORD(v642)] = 1000000.0;
      }
    }

    v63 = NK_Least_Squares_Core(v587, __b, v35, 0, 0, &v664, &v670, &v586, v634);
    v64 = 0;
    v65 = 0.0;
    do
    {
      v66 = *(&v639 + v64);
      if ((v66 & 0x8000000000000000) == 0)
      {
        v67 = *(v634 + v66);
        *&v582[8 * v66] = *&v582[8 * v66] + v67;
        v65 = v65 + v67 * v67;
      }

      ++v64;
    }

    while (v64 != 7);
    v68 = v65 - v37 <= 2500.0 || v36 == 0;
    v69 = v68;
    v70 = v69 & v63;
    ++byte_2A1938F70;
    if (v70 == 1)
    {
      v71 = v36 + 1;
      if (v36 > 8)
      {
        goto LABEL_78;
      }

      ++v36;
      v37 = v65;
      if (v65 <= 10000.0)
      {
        goto LABEL_78;
      }

      continue;
    }

    break;
  }

  v71 = v36;
LABEL_78:
  if (v71 > 9)
  {
    v73 = v70;
  }

  else
  {
    v73 = 0;
  }

  if (v65 > 90000.0)
  {
    v74 = v73;
  }

  else
  {
    v74 = 0;
  }

  v75 = v74 ^ 1;
  if ((v74 & 1) != 0 || v70 != 1)
  {
    if (v74)
    {
      v76 = 1;
    }

    else
    {
      v76 = 2;
    }

    dword_2A1938F68 = v76;
  }

  v77 = v70 & v75;
  v18 = &unk_2A1928000;
  if (SHIDWORD(v642) >= 1)
  {
    *(&v585[-1] + HIDWORD(v642)) = 0;
  }

  if (!v77)
  {
    goto LABEL_102;
  }

  v78 = 0;
  v79 = v639;
  v80 = &v582[8 * v639];
  while (1)
  {
    if (*(&v585[-1] + v78) == 1)
    {
      v81 = v516[v78];
      v82.i64[0] = *v81;
      v82.i64[1] = HIDWORD(*v81);
      *v604 = vcvtq_f64_s64(v82);
      v605 = v81[2];
      v83 = 2;
      do
      {
        *&v612[8 * v83] = *&v604[2 * v83] - v80[v83];
        v84 = v83-- + 1;
      }

      while (v84 > 1);
      v85 = 0;
      v86 = 0.0;
      do
      {
        v86 = v86 + v80[v85] * *&v612[v85 * 8];
        ++v85;
      }

      while (v85 != 3);
      if (v86 < 0.0)
      {
        v87 = 0;
        v90 = &unk_2A1938000;
        v91 = 3;
        goto LABEL_117;
      }
    }

    if (v78 >= 0x2F)
    {
      break;
    }

    ++v78;
  }

  v88 = 0;
  v89 = 0.0;
  do
  {
    if (*(&v585[-1] + v88) == 1)
    {
      v89 = v89 + *&v624.i64[v88] * *&v624.i64[v88];
    }

    ++v88;
  }

  while (v88 != 48);
  if (v89 <= 225000000.0)
  {
    *v604 = *v80;
    v92 = 8 * v79 + 16;
    v605 = *&v582[v92];
    ECEF2Geo(v604, &WGS84_Datum, &__x);
    v93 = v578;
    dword_2A1938F9C = v578;
    v94 = __sincos_stret(*__x.i64);
    v95 = __sincos_stret(*&__x.i64[1]);
    *v612 = -(v94.__sinval * v95.__cosval);
    *&v612[8] = -(v94.__sinval * v95.__sinval);
    *&v612[16] = v94.__cosval;
    *&v612[24] = -v95.__sinval;
    v613 = *&v95.__cosval;
    *v614.i64 = -(v94.__cosval * v95.__cosval);
    *&v614.i64[1] = -(v94.__cosval * v95.__sinval);
    *v615.i64 = -v94.__sinval;
    Comp_NEDvar_UDU(v635, HIBYTE(v639), v79, v612, &v634[3] + v79 + 1);
    v96 = *(&v634[3] + v92 + 8);
    if (v96 < 100000000.0)
    {
      v97 = U4sqrt(v96);
      if (-500 - 1000 * v97 < v93 && 1000 * v97 + 18000 > v93)
      {
        v87 = 1;
        goto LABEL_118;
      }
    }

    v87 = 0;
    v90 = &unk_2A1938000;
    v91 = 5;
  }

  else
  {
    v87 = 0;
    v90 = &unk_2A1938000;
    v91 = 4;
  }

LABEL_117:
  v90[986] = v91;
LABEL_118:
  if (g_Enable_Event_Log >= 2u)
  {
    v99 = mach_continuous_time();
    v100 = v512;
    v100.i32[2] = (*&g_MacClockTicksToMsRelation * v99);
    v512 = v100;
  }

  if (v87)
  {
    v101 = CompVelDoLs(v516, v510, v511, v582, &v574, v29);
  }

  else
  {
    v101 = 0;
  }

  if (g_Enable_Event_Log >= 2u)
  {
    v102 = mach_continuous_time();
    v103 = v512;
    v103.i32[3] = (*&g_MacClockTicksToMsRelation * v102);
    v512 = v103;
  }

  if (v101)
  {
    v104 = __sincos_stret(*__x.i64);
    v105 = __sincos_stret(*&__x.i64[1]);
    v106 = 0;
    v587[0] = -(v104.__sinval * v105.__cosval);
    v587[1] = -(v104.__sinval * v105.__sinval);
    v107 = &v587[2];
    v587[2] = v104.__cosval;
    v587[3] = -v105.__sinval;
    v588 = *&v105.__cosval;
    *&v589 = -(v104.__cosval * v105.__cosval);
    *(&v589 + 1) = -(v104.__cosval * v105.__sinval);
    *&v590 = -v104.__sinval;
    v108 = v574;
    v109 = *&v575;
    do
    {
      v110 = *(v107 - 1) * *(&v108 + 1) + *(v107 - 2) * *&v108;
      v111 = *v107;
      v107 += 3;
      *(v634 + v106) = v110 + v111 * v109;
      v106 += 8;
    }

    while (v106 != 24);
    v112 = *(v634 + 1) * *(v634 + 1) + *v634 * *v634;
    v113 = fabs(*&v634[1]);
    v114 = v113 < 10.0 && v112 < 4556.25;
    HIDWORD(xmmword_2A1938F80) = sqrt(v112);
    dword_2A1938F90 = v113;
    if (!v114)
    {
      dword_2A1938F68 = 6;
    }
  }

  else
  {
    v114 = 0;
  }

  if (g_Enable_Event_Log >= 2u)
  {
    v115 = mach_continuous_time();
    v116 = v515;
    v116.i32[0] = (*&g_MacClockTicksToMsRelation * v115);
    v515 = v116;
  }

  if (v114)
  {
    *v509 = __x;
    v117 = 1;
    byte_2A1938F7D = 1;
    goto LABEL_630;
  }

  *v582 = *v571;
  *&v582[16] = v572;
  v583 = v573;
  v27 = 0uLL;
  v574 = 0u;
  v575 = 0u;
  v576 = 0;
  v578 = 0.0;
  __x = 0uLL;
  dword_2A1938F6C = dword_2A1938F68;
LABEL_139:
  v118 = 0;
  v119 = 0;
  v120 = 0;
  v620 = 0;
  v619 = v27;
  v618 = v27;
  v617 = v27;
  v616 = v27;
  v615 = v27;
  v614 = v27;
  v613 = v27;
  v622 = &v610;
  v623 = __b;
  v121 = &(*v510)[2];
  v621 = -1;
  v122 = &(*v516)[2];
  *&v612[16] = v27;
  *v612 = v27;
  while (2)
  {
    v123 = *v122;
    if (*(v122 - 1))
    {
      v124 = *(v122 - 1);
LABEL_144:
      v125 = *(v122 - 2);
      v122 += 3;
      v126 = (v634 + v118 * 8);
      *v126 = v125;
      v126[1] = v124;
      v127 = v123;
      v126[2] = v123;
      v128 = *(v121 - 2);
      v673[v120] = v511[v120];
      v129 = v128;
      v130 = &v629.i64[v118];
      v131 = v124 * v124 + v125 * v125;
      v132 = *(v121 - 1);
      v133 = v131 + v127 * v127;
      v134 = *v121;
      *&v624.i64[v120++] = v133;
      *v130 = v129;
      v130[1] = v132;
      v130[2] = v134;
      v119 += 8;
      v118 += 3;
      v121 += 3;
      if (v120 == 48)
      {
        memset_pattern16(__b, &unk_2997622C0, 0x180uLL);
LABEL_146:
        v559 = 0;
        goto LABEL_147;
      }

      continue;
    }

    break;
  }

  v124 = 0.0;
  if (v123)
  {
    goto LABEL_144;
  }

  v559 = v120 == 0;
  if (!v120)
  {
    v621 = 0;
    goto LABEL_517;
  }

  memset_pattern16(__b, &unk_2997622C0, v119);
  if (v120 >= 0x30)
  {
    goto LABEL_146;
  }

  v621 = v120;
  if (v120 == 5)
  {
    v559 = 0;
    *(&v607 + 1) = 0x3FF9000000000000;
    LODWORD(v120) = 5;
    goto LABEL_147;
  }

  if (v120 == 4)
  {
    v559 = 0;
    *&v607 = 0x3F647AE147AE147CLL;
    LODWORD(v120) = 4;
    goto LABEL_147;
  }

  if (v120 != 3)
  {
    if (v120 > 7)
    {
      v559 = 0;
      v429 = 0x4039000000000000;
      goto LABEL_518;
    }

LABEL_517:
    v429 = 0x4019000000000000;
LABEL_518:
    *(__b + v120) = v429;
    goto LABEL_147;
  }

  v559 = 0;
  *(&__b[1] + 1) = 0x3F647AE147AE147CLL;
  LODWORD(v120) = 3;
LABEL_147:
  v670 = *v582;
  *&v671 = *&v582[16];
  WGS84_ECEF2Geo(&v670, __x.i64);
  v135 = 0;
  *&v582[8] = __x;
  *v582 = 0x415854A640000000;
  *&v582[24] = 0;
  do
  {
    v136 = *v582;
    v137 = __sincos_stret(*&v582[8]);
    v138 = __sincos_stret(*&v582[16]);
    *v664.i64 = v137.__cosval * v138.__cosval;
    *&v664.i64[1] = v137.__cosval * v138.__sinval;
    v665.i64[0] = *&v137.__sinval;
    *&v665.i64[1] = -(v137.__sinval * v138.__cosval);
    *v666.i64 = -(v137.__sinval * v138.__sinval);
    v666.i64[1] = *&v137.__cosval;
    v667 = -(v137.__cosval * v138.__sinval);
    v668 = v137.__cosval * v138.__cosval;
    v669 = 0;
    if (!v559)
    {
      v139 = 0;
      v140 = -v136;
      v141 = v634;
      v142 = &v629;
      v143 = *&v582[24];
      do
      {
        v144 = 0;
        v145 = 0.0;
        v146 = &v665.i64[1];
        v147 = 0.0;
        v148 = 0.0;
        v149 = 0.0;
        v150 = 0.0;
        v151 = 0.0;
        v152 = 0.0;
        do
        {
          v153 = *(v146 - 3);
          v154 = *&v142->i64[v144];
          v152 = v152 + v153 * v154;
          v150 = v150 + *v146 * v154;
          v155 = v146[3];
          v148 = v148 + v155 * v154;
          v156 = *(v141 + v144);
          v151 = v151 + v153 * v156;
          v149 = v149 + *v146 * v156;
          v147 = v147 + v155 * v156;
          v145 = v145 + v156 * v154;
          ++v144;
          ++v146;
        }

        while (v144 != 3);
        v157 = *&v624.i64[v139] + v136 * v136 + v136 * -2.0 * v151;
        v158 = sqrt(v157);
        v159 = v157 * v158;
        v160 = 1.0 / v158;
        v161 = -(v145 - v152 * v136);
        v162 = v161 / v159;
        v163 = -((v136 - v151) * v162 + -v152 * v160);
        v164 = &v587[3 * v139];
        v165 = -(v162 * v136);
        *v164 = v163;
        v164[1] = -(v149 * v165 + v160 * v140 * v150);
        v164[2] = -(v147 * v165 + v160 * v140 * v148);
        v610.f64[v139] = v673[v139] - (v143 - v161 * v160);
        ++v139;
        v141 = (v141 + 24);
        v142 = (v142 + 24);
      }

      while (v139 != v120);
    }

    v166 = v621;
    if ((v621 & 0x80000000) == 0)
    {
      v167 = &v587[3 * v621];
      v167[1] = 0.0;
      v167[2] = 0.0;
      *v167 = -1.0;
      v610.f64[v166] = -(v136 + sqrt((v137.__cosval * v137.__cosval + v137.__sinval * v137.__sinval * 0.986656055) / (v137.__cosval * v137.__cosval + v137.__sinval * v137.__sinval * 0.99330562)) * -6378137.0);
    }

    v168 = CAP_LSQ4_Core(v587, v120, v612);
    v169 = 0;
    ++byte_2A1938F71;
    v170 = 0.0;
    do
    {
      v171 = *&v612[8 * v169];
      v172 = *&v582[8 * v169] + v171;
      *&v582[8 * v169] = v172;
      if ((v169 - 1) > 1)
      {
        v170 = v170 + v171 * v171;
      }

      else
      {
        if (v172 > 3.14159265)
        {
          do
          {
            v172 = v172 + -6.28318531;
          }

          while (v172 > 3.14159265);
          *&v582[8 * v169] = v172;
        }

        if (v172 < -3.14159265)
        {
          do
          {
            v172 = v172 + 6.28318531;
          }

          while (v172 < -3.14159265);
          *&v582[8 * v169] = v172;
        }

        v170 = v170 + v171 * v171 * 1.0e10;
      }

      ++v169;
    }

    while (v169 != 4);
    if (v170 > 40000.0)
    {
      v173 = v168;
    }

    else
    {
      v173 = 0;
    }

    v174 = v173 != 1 || v135++ >= 0xE;
  }

  while (!v174);
  if (v168)
  {
    v175 = 0.0;
    v18 = &unk_2A1928000;
    v19 = byte_2A1939000;
    if (!v559)
    {
      v176 = &v610;
      v177 = v120;
      do
      {
        v178 = v176->f64[0];
        v176 = (v176 + 8);
        v175 = v175 + v178 * v178;
        --v177;
      }

      while (v177);
    }

    if (v175 / v120 > 10000.0)
    {
      v179 = 4;
      goto LABEL_181;
    }

    v180 = 1;
  }

  else
  {
    v179 = 2;
    v18 = &unk_2A1928000;
    v19 = byte_2A1939000;
LABEL_181:
    v180 = 0;
    dword_2A1938F68 = v179;
  }

  __x = *&v582[8];
  v578 = 0.0;
  Geo2ECEF(&__x, &WGS84_Datum, &v670);
  *v582 = v670;
  *&v582[16] = v671;
  if (v120 && v180)
  {
    v181 = 0;
    v182 = v634;
    while (1)
    {
      v183 = 2;
      do
      {
        *&v664.i64[v183] = *(v182 + v183) - *&v582[8 * v183];
        v184 = v183-- + 1;
      }

      while (v184 > 1);
      v185 = 0;
      v186 = 0.0;
      do
      {
        v186 = v186 + *&v582[v185 * 8] * *&v664.i64[v185];
        ++v185;
      }

      while (v185 != 3);
      v187 = 0.0;
      v188 = &v582[16];
      for (i = 4; i > 1; --i)
      {
        v190 = *v188--;
        v187 = v187 + v190 * v190;
      }

      v191 = v186 / sqrt(v187);
      if (v191 < 0.0)
      {
        v192 = 0.0;
        v193 = 2;
        do
        {
          v192 = v192 + *&v664.i64[v193] * *&v664.i64[v193];
          v194 = v193-- + 1;
        }

        while (v194 > 1);
        if (v191 / sqrt(v192) < -0.087155743)
        {
          break;
        }
      }

      ++v181;
      v182 = (v182 + 24);
      if (v181 == v120)
      {
        goto LABEL_205;
      }
    }

    dword_2A1938F68 = 3;
LABEL_221:
    v72 = 0;
    __x = 0uLL;
    v6 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
    v578 = 0.0;
  }

  else
  {
    if (!v180)
    {
      goto LABEL_221;
    }

LABEL_205:
    v195 = 1;
    v196 = 6;
    v197 = 2;
    v198 = 6;
    v199 = 1;
    do
    {
      v200 = v199 + v199 * v199;
      v201 = v199 + (v200 >> 1);
      v202 = v200 >> 1;
      v203 = v196;
      v204 = v198;
      v205 = v197;
      v206 = v195;
      v207 = v199;
      do
      {
        if (v199 == v207)
        {
          v208 = *&v613.i64[v201];
          v209 = (v207 + v207 * v207) >> 1;
        }

        else
        {
          v209 = (v207 + v207 * v207) >> 1;
          v210 = v199 + v209;
          if (v199 >= v207)
          {
            v210 = v202 + v207;
          }

          v208 = *&v613.i64[v207 + v209] * *&v613.i64[v210];
        }

        v211 = v207 - 1;
        v212 = v203;
        v213 = v204;
        v214 = v205;
        v215 = v206;
        do
        {
          v216 = v215 + 1;
          v217 = (v215 + 2) * (v215 + 1);
          v218 = *&v613.i64[v214 + (v212 >> 1)] * *&v613.i64[v199 + (v217 >> 1)];
          v219 = v207 + (v217 >> 1);
          if (v216 <= v207)
          {
            v219 = v216 + v209;
          }

          v208 = v208 + v218 * *&v613.i64[v219];
          ++v214;
          v212 += v213;
          v213 += 2;
          v215 = v216;
        }

        while (v216 < 3);
        *&v664.i64[2 * v199 - 2 + v211] = v208;
        *&v664.i64[2 * v211 - 1 + v199] = v208;
        ++v206;
        ++v205;
        v203 += v204;
        v204 += 2;
        v68 = v207 == 2;
        v207 = 2;
      }

      while (!v68);
      ++v197;
      ++v195;
      v196 += v198;
      v198 += 2;
      v199 = 2;
    }

    while (v197 != 4);
    v220 = cos(*__x.i64);
    v6 = *v664.i64 * 4.06806316e13;
    v7 = *&v665.i64[1] * (v220 * v220 * 4.06806316e13);
    v8 = fabs(v220) * 4.06806316e13 * *&v664.i64[1];
    v72 = 1;
  }

LABEL_222:
  if (v18[547] >= 2u)
  {
    v221 = mach_continuous_time();
    v222 = v515;
    v222.i32[1] = (*(v19 + 200) * v221);
    v515 = v222;
  }

  if (!v72)
  {
    *v582 = v579;
    *&v582[16] = v580;
    v583 = v581;
LABEL_274:
    v256 = 0;
    v584 = xmmword_2997622A0;
    v257 = v582;
    do
    {
      v587[0] = 0.0;
      v258 = R8_EQ(v257, v587);
      if (v256 > 3)
      {
        break;
      }

      ++v256;
      ++v257;
    }

    while (v258);
    v259 = 0;
    v260 = 0;
    v261 = 0;
    v596 = 0u;
    v597 = 0u;
    v594 = 0u;
    v595 = 0u;
    v592 = 0u;
    v593 = 0u;
    v590 = 0u;
    v591 = 0u;
    v588 = 0u;
    v589 = 0u;
    memset(v587, 0, sizeof(v587));
    memset(__b, 0, 20);
    v670 = 0uLL;
    v262 = v516;
    v263 = &(*v516)[2];
    LODWORD(v671) = 0;
    do
    {
      if (*(v263 - 2) && *(v263 - 1) && *v263)
      {
        v264 = (v261 + 1);
        if (v261 <= 4)
        {
          v260 |= *(v562 + v259) == 2;
        }
      }

      else
      {
        v264 = v261;
      }

      ++v259;
      v263 += 3;
      v261 = v264;
    }

    while (v259 != 48);
    if (v264 < 1)
    {
      goto LABEL_311;
    }

    v265 = 0;
    v266 = 0;
    v267 = 0;
    v268 = 1;
    v269 = v264;
    while (1)
    {
      v270 = v547[v265];
      if (v270 == 1)
      {
        break;
      }

      if (v270 == 2)
      {
        v273 = *v547;
        if (v273 == 3)
        {
          goto LABEL_295;
        }

        if (v273 == 2)
        {
          v273 = 6;
LABEL_295:
          *(v587 + v265) = v273;
        }

        ++v266;
LABEL_304:
        if (v265 >= 5)
        {
          goto LABEL_309;
        }

LABEL_307:
        v272 = 5;
        v271 = 2;
LABEL_308:
        *(__b + v265) = v271;
        v268 *= v272;
        goto LABEL_309;
      }

      if (v270 == 3)
      {
        ++v267;
        *(v587 + v265) = 0;
        if (v265 < 5)
        {
          v271 = 0;
          v272 = 1;
          goto LABEL_308;
        }
      }

      else
      {
        *(v587 + v265) = 22;
        if (v265 <= 4)
        {
          goto LABEL_307;
        }
      }

LABEL_309:
      if (v264 == ++v265)
      {
        if (v264 < 4)
        {
LABEL_311:
          v277 = 0;
          v278 = byte_2A1939000;
          goto LABEL_608;
        }

        if (v264 >= 5)
        {
          v279 = 5;
        }

        else
        {
          v279 = v264;
        }

        v280 = v267 + v266 >= v279 || v258;
        v536 = v264;
        v534 = v268;
        v538 = v267;
        v556 = v279;
        if (v280)
        {
          memset(v612, 0, 20);
        }

        else
        {
          v405 = 0;
          *v629.i8 = vmovn_s64(vcvtq_s64_f64(*v582));
          v629.i32[2] = *&v582[16];
          do
          {
            *(v634 + v405 * 4) = v629.i32[v405] / 1000;
            ++v405;
          }

          while (v405 != 3);
          v406 = 0;
          v407 = 0;
          v408 = 1;
          v409 = v516;
          do
          {
            v410 = 0;
            v411 = 0;
            do
            {
              v412 = (*v409)[v410] / 1000 - *(v634 + v410 * 4);
              v411 += v412 * v412;
              ++v410;
            }

            while (v410 != 3);
            v413 = v526[v406] / -1000;
            v414 = U4sqrt(v411);
            if (!v406)
            {
              *v612 = 0;
              v407 = v413 + v414;
            }

            v415 = *(v587 + v406);
            if (v415 < 1)
            {
              v416 = 0;
            }

            else
            {
              v416 = (437 * (v413 + v414 - v407) + 65550) >> 17;
              if (v416 >= 0)
              {
                v417 = (437 * (v413 + v414 - v407) + 65550) >> 17;
              }

              else
              {
                v417 = -v416;
              }

              v408 &= v417 <= v415;
            }

            *&v612[4 * v406++] = v416;
            ++v409;
          }

          while (v406 != v556);
          if (v408)
          {
            if (g_Enable_Event_Log >= 2u)
            {
              EvLog_VecI4("SearchPrLs: CheckFit    OK , msCorr_Fit: ", v556, v612);
            }

            v418 = 0;
            v419 = 0;
            do
            {
              v420 = *&v612[4 * v418];
              if (v420 >= 0)
              {
                v421 = *&v612[4 * v418];
              }

              else
              {
                v421 = -v420;
              }

              v422 = *(__b + v418);
              v423 = v421 + v422;
              v424 = *(v587 + v418);
              if (v423 > v424)
              {
                v425 = v422 - v424;
                v426 = v424 - v422;
                if (v420 > 0)
                {
                  v425 = v426;
                }

                *&v612[4 * v418] = v425;
                v419 = 1;
              }

              ++v418;
            }

            while (v556 != v418);
            v262 = v516;
            v279 = v556;
            if ((v419 & (g_Enable_Event_Log > 1u)) == 1)
            {
              EvLog_VecI4("SearchPrLs: CheckFit    OK ADJ , msCorr_Fit: ", v556, v612);
            }
          }

          else
          {
            v279 = v556;
            if (g_Enable_Event_Log >= 2u)
            {
              EvLog_VecI4("SearchPrLs: CheckFit   FAIL , Unused msCorr_Fit: ", v556, v612);
            }

            memset(v612, 0, 20);
            v262 = v516;
          }
        }

        v554 = (v279 - 1);
        v430 = v279;
        v431 = &v634[1];
        v432 = &(*v262)[2];
        do
        {
          v433 = *(v432 - 1);
          v434.i64[0] = v433;
          v434.i64[1] = SHIDWORD(v433);
          *(v431 - 1) = vcvtq_f64_s64(v434);
          v435 = *v432;
          v432 += 3;
          *v431 = v435;
          v431 += 3;
          --v430;
        }

        while (v430);
        v664 = 0uLL;
        v665.i32[0] = 0;
        if (v267 <= 0)
        {
          v440 = v267;
        }

        else
        {
          if (v267 >= v279)
          {
            LODWORD(v436) = v279;
          }

          else
          {
            LODWORD(v436) = v267;
          }

          if (v436 <= 1)
          {
            v436 = 1;
          }

          else
          {
            v436 = v436;
          }

          v437 = v673;
          v438 = v526;
          do
          {
            v439 = *v438++;
            *v437++ = v439;
            --v436;
          }

          while (v436);
          v440 = v267;
        }

        v567 = 0;
        v441 = 0;
        v546 = v279 - 1;
        v541 = &v663[v279];
        v543 = v279 - v440;
        v537 = __b[0];
        v442 = *&v582[24];
        while (2)
        {
          v561 = v441;
          v604[0] = 0;
          v602[0] = 0;
          if (v267 < v279)
          {
            v443 = &v664.i32[v440];
            v444 = &v612[4 * v440];
            v445 = &v670 + v440;
            v446 = &v526[v440];
            v447 = &v673[v440];
            v448 = v543;
            do
            {
              v450 = *v443++;
              v449 = v450;
              v451 = *v444++;
              v452 = v451 + v449;
              *v445++ = v452;
              v453 = *v446++;
              *v447++ = (v453 + 299792 * v452);
              --v448;
            }

            while (v448);
          }

          ++v567;
          v625.i64[1] = v442;
          v624 = *v582;
          v625.i64[0] = *&v582[16];
          if (!CompPr_LSQ4(v634, v673, v279, v624.i64, v604, v602, v610.f64))
          {
            v470 = 0;
            goto LABEL_572;
          }

          if (v264 >= 6)
          {
            v454 = 0;
            v455 = 0;
            v456 = *v624.i64;
            v571[0] = *v624.i64 / 1000;
            v571[1] = *&v624.i64[1] / 1000;
            v571[2] = *v625.i64 / 1000;
            do
            {
              v457 = (*v262)[v454] / 1000 - v571[v454];
              v455 += v457 * v457;
              ++v454;
            }

            while (v454 != 3);
            v264 = 0;
            v458 = *v526 / 1000 - U4sqrt(v455);
            do
            {
              v459 = 0;
              v460 = 0;
              v462 = *(v587 + v264);
              do
              {
                v463 = (*v262)[v459] / 1000 - v571[v459];
                v460 += v463 * v463;
                ++v459;
              }

              while (v459 != 3);
              v461 = v526[v264];
              v464 = v458 + v461 / -1000 + U4sqrt(v460);
              if (v464 < 0)
              {
                v464 = -v464;
              }

              if (v464 < 0x97)
              {
                v467 = 0;
              }

              else
              {
                v465 = v464 - 450;
                if (v464 < 0x1C2)
                {
                  v465 = 0;
                }

                v466 = (v465 + 299) / 0x12Cu;
                v464 = v464 - 300 * v466 - 300;
                v467 = v466 + 1;
              }

              if (v464 < 0)
              {
                v464 = -v464;
              }

              v469 = v467 > v462 || v464 > 0xF;
              if (++v264 >= v269)
              {
                break;
              }

              ++v262;
            }

            while (!v469);
            if (v469)
            {
              EvLog_v("SearchPrLs:  BAD %d %d %d  %g %g %g   ClkB %g   ResSq %d", v264, v567, v534, v610.f64[0] * 57.2957795, v610.f64[1] * 57.2957795, v611, v456, v602[0]);
              v470 = 0;
              v262 = v516;
              LODWORD(v264) = v536;
              v267 = v538;
              goto LABEL_571;
            }

            LODWORD(v264) = v536;
            v267 = v538;
          }

          v471 = v602[0];
          if (v602[0] <= 0x57E3)
          {
            dword_2A1938F78 = v602[0];
            if (g_Enable_Event_Log >= 2u)
            {
              EvLog_v("SearchPrLs: GOOD %d %d %d  %g %g %g   ClkB %g  ResSq %d", v556, v567, v534, v610.f64[0] * 57.2957795, v610.f64[1] * 57.2957795, v611, *v624.i64, v602[0]);
              EvLog_VecI4("SearchPrLs: GOOD msCorr", v556, &v670);
            }

            __x = v610;
            v578 = v611;
            v470 = 1;
            v262 = v516;
LABEL_571:
            LODWORD(v279) = v556;
LABEL_572:
            v472 = v604[0];
            v664.i32[v554] = (v664.i32[v554] < 1) - v664.i32[v554];
            if (v554 > v267)
            {
              v473 = v546;
              v474 = v664.i32[v546];
              v475 = v541;
              do
              {
                if (v474 <= *(__b + v473))
                {
                  break;
                }

                --v473;
                v474 = (*v475 < 1) - *v475;
                *v475-- = v474;
              }

              while (v473 > v440);
            }

            v441 = v472 + v561;
            if (v267)
            {
              if (v267 >= v279)
              {
                goto LABEL_595;
              }

              v476 = v664.i32[v440];
              v477 = *(__b + v440);
            }

            else
            {
              v476 = v664.i32[0];
              v477 = v537;
            }

            if (v470 & 1 | (v476 > v477) || v441 > 149)
            {
LABEL_595:
              if (v470)
              {
                v277 = 1;
                v18 = &unk_2A1928000;
                v278 = byte_2A1939000;
              }

              else
              {
                if (v264 == 4)
                {
                  v480 = 22500;
                }

                else
                {
                  v480 = 250000 * v279;
                }

                dword_2A1938F78 = v584;
                v18 = &unk_2A1928000;
                v278 = byte_2A1939000;
                if (v584 >= v480)
                {
                  if (g_Enable_Event_Log >= 2u)
                  {
                    v482 = v441;
                    EvLog_v("SearchPrLs: FAIL %d %d %d", v567, v534, v441);
                    LOBYTE(v441) = v482;
                  }

                  v277 = 0;
                }

                else
                {
                  __x = v629;
                  v578 = v630[0];
                  if (g_Enable_Event_Log >= 2u)
                  {
                    v505 = v279;
                    v481 = v441;
                    EvLog_v("SearchPrLs:   OK %d %d %d  %g %g %g   ClkB %g  ResSq %d", v505, v567, v534, *__x.i64 * 57.2957795, *&__x.i64[1] * 57.2957795, v578, *v624.i64, v584);
                    LOBYTE(v441) = v481;
                  }

                  v277 = 1;
                }
              }

              byte_2A1938F7C = v260 & 1;
              byte_2A1938F73 = v277;
              byte_2A1938F74 = v441;
              goto LABEL_608;
            }

            continue;
          }

          break;
        }

        if (v602[0] < v584)
        {
          v478 = 0;
          goto LABEL_589;
        }

        if (v602[0] < DWORD1(v584))
        {
          v478 = 1;
          goto LABEL_589;
        }

        if (v602[0] >= DWORD2(v584))
        {
          if (v602[0] < HIDWORD(v584))
          {
            v478 = 3;
            goto LABEL_590;
          }
        }

        else
        {
          v478 = 2;
LABEL_589:
          memmove(&v630[3 * v478 + 1], &v629 + 24 * v478, 24 * (v478 ^ 3));
          memmove(((&v584 | (4 * v478)) + 4), (&v584 | (4 * v478)), 4 * (v478 ^ 3));
          v267 = v538;
LABEL_590:
          v479 = &v629.i64[3 * v478];
          *v479 = v610;
          v479[2] = v611;
          *(&v584 | (4 * v478)) = v471;
          if (g_Enable_Event_Log >= 2u)
          {
            LODWORD(v279) = v556;
            EvLog_v("SearchPrLs: WAIT %d %d %d  %g %g %g   ClkB %g  ResSq %d", v556, v567, v534, v610.f64[0] * 57.2957795, v610.f64[1] * 57.2957795, v611, *v624.i64, v584);
            EvLog_VecI4("SearchPrLs: WAIT msCorr", v556, &v670);
            v470 = 0;
            v262 = v516;
            goto LABEL_572;
          }
        }

        v470 = 0;
        v262 = v516;
        LODWORD(v279) = v556;
        goto LABEL_572;
      }
    }

    v274 = *v547;
    if (v274 == 2)
    {
      v275 = 14;
    }

    else
    {
      v275 = 22;
    }

    if (v274 == 3)
    {
      v276 = 11;
    }

    else
    {
      v276 = v275;
    }

    *(v587 + v265) = v276;
    goto LABEL_304;
  }

  Comp_ErrorEllipse(v6, v7, v8, &v568, &v568 + 1, &v569);
  xmmword_2A1938F58 = __x;
  if (v508 >= 5)
  {
    v223 = 5;
  }

  else
  {
    v223 = v508;
  }

  if (v223 <= 3)
  {
    v223 = 3;
  }

  v224 = vmulq_n_f64(v568, User_Velocity_Compensation[v223 - 3]);
  v568 = v224;
  v225 = 0.00000320473867 * v224.f64[0];
  v226 = v224.f64[1];
  v227 = vmuld_lane_f64(0.00000320473867 * v224.f64[0], v224, 1);
  if (v508 >= 8)
  {
    v228 = v227 * 0.0016;
    v229 = 2.0;
    if (v227 * 0.0016 <= 2500.0 && v228 * 4.0 >= 2500.0)
    {
      v229 = sqrt(2500.0 / v228);
    }

    v224.f64[0] = v224.f64[0] * v229;
    *&v568 = v224.f64[0];
    v230 = v224.f64[1] * v229;
    goto LABEL_238;
  }

  v230 = 200000.0;
  if (v224.f64[0] < 200000.0)
  {
    *&v568 = 0x41086A0000000000;
    v230 = 200000.0;
    v224.f64[0] = 200000.0;
    goto LABEL_238;
  }

  if (v224.f64[1] < 200000.0 && v227 < 1562500.0)
  {
    if (v225 * 200000.0 > 1562500.0)
    {
      v230 = 1562500.0 / v225;
    }

LABEL_238:
    *(&v568 + 1) = v230;
    v226 = v230;
  }

  if (v226 * (v224.f64[0] * 3.14159265) * 0.000001 > 1562500.0)
  {
    goto LABEL_274;
  }

  *v555 = __x;
  v563 = v224.f64[0];
  v584 = 0uLL;
  *&v585[0] = 0;
  v231 = *&v569;
  bzero(&v629, 0x220uLL);
  v232 = 0;
  v672 = 0u;
  v671 = 0u;
  v670 = 0u;
  v233 = -83886080;
  do
  {
    v234 = &v629.i8[v232];
    *v234 = 0;
    *(v234 + 2) = v233;
    *(v234 + 3) = v233;
    v232 += 68;
    v233 += 0x10000;
  }

  while (v232 != 544);
  v235 = 0;
  v236 = 0;
  v237 = 0;
  v238 = 0;
  v239 = v587;
  v240 = v634;
  v241 = v516;
  do
  {
    v242 = v516[v235];
    if (*v242)
    {
      if (*(v242 + 4))
      {
        v242 = *(v242 + 8);
        if (v242)
        {
          for (j = 0; j != 3; ++j)
          {
            v244 = (*v241)[j];
            if (v244 > 0)
            {
              v245 = 500;
            }

            else
            {
              v245 = -500;
            }

            *(v240 + j) = (v245 + v244) / 1000;
            v239[j] = v244;
          }

          v246 = 274877907 * (v526[v235] + 500);
          *(__b + v235) = (v246 >> 38) + (v246 >> 63);
          if (*(v544 + 4 * v235) == 1)
          {
            ++v237;
            v242 = 250000;
          }

          else
          {
            v242 = 2250000;
          }

          v236 += v242;
          ++v238;
        }
      }
    }

    ++v235;
    v239 += 3;
    v240 = (v240 + 12);
    ++v241;
  }

  while (v235 != 48);
  v247 = v231 * 0.0174532925;
  v560 = v238;
  if (v238 >= 1)
  {
    v248 = 0;
    while (1)
    {
      v249 = v547[v248];
      if (v249 == 1)
      {
        break;
      }

      if (v249 == 3)
      {
        v251 = 0;
        goto LABEL_267;
      }

      if (v249 != 2)
      {
        break;
      }

      v250 = *v547;
      if (v250 == 3)
      {
        v251 = 2;
        goto LABEL_267;
      }

      if (v250 == 2)
      {
        v251 = 4;
LABEL_267:
        *(&v670 + v248) = v251;
      }

      if (v238 == ++v248)
      {
        goto LABEL_269;
      }
    }

    v251 = 22;
    goto LABEL_267;
  }

LABEL_269:
  v506 = v237;
  v507 = v236;
  *&v584 = vmovn_s64(vcvtq_n_s64_f64(*v555, 0xFuLL));
  v252 = v584;
  if (v584 < 0)
  {
    v252 = -v584;
  }

  LODWORD(v242) = vcvtd_n_s64_f64(v247, 0xFuLL);
  DWORD2(v584) = ((40839 * (v252 >> 1)) >> 14) + 6335439;
  HIDWORD(v584) = v242;
  Taylor_sin_cos(v242, v585, v585 + 1);
  v253 = HIDWORD(v584);
  v540 = v238;
  if (v247 < 0.785398163 || v247 > 2.35619449)
  {
    v254 = -v247;
    v253 = (HIDWORD(v584) - 51472);
    v255 = v226;
  }

  else
  {
    v254 = 1.57079633 - v247;
    v255 = v563;
    v563 = v226;
  }

  Taylor_sin_cos(v253, v585, v585 + 1);
  v281 = v563 * v563 / (v255 * v255);
  v282 = tan(v254);
  v283 = v282 * v282 + v281;
  v284 = (v255 * sqrt(v283));
  *v285.i64 = cos(v254);
  if (v284 >= 1)
  {
    v287 = 0;
    v514 = (25000.0 / fabs(*v285.i64));
    v513 = v284 - v514;
    v520 = SDWORD2(v584) >> 6;
    v521 = v585[0];
    v518 = v238 - 1;
    v517 = v634 + 12 * v238 - 4;
    v288 = v563 * v563 * v283;
    v289 = DWORD1(v585[0]);
    v519 = DWORD1(v585[0]);
    v290 = v584;
    v533 = DWORD2(xmmword_2A1938F80);
    v535 = DWORD1(xmmword_2A1938F80);
    v531 = xmmword_2A1938F80;
    v529 = DWORD1(gDebug);
    v530 = 225 * v238;
    v557 = gDebug;
    v522 = v284;
    do
    {
      v291 = v287;
      v292 = v288 + -(v291 * v291) * v281;
      if (v292 < 0.0)
      {
        v292 = 0.0;
      }

      v293 = (v282 * (1.0 / v283) * v291);
      v294 = (1.0 / v283 * sqrt(v292));
      v524 = v287;
      v525 = -v287;
      v295 = 1;
      v523 = v294;
      while (1)
      {
        v602[0] = 0;
        LODWORD(v600.f64[0]) = 0;
        v528 = v295;
        if (v295 == 2)
        {
          v293 = -v293;
        }

        v296 = v294;
        v297 = v294 - v293;
        v298 = v293;
        v299 = v525;
        if (v295 != 2)
        {
          v299 = v287;
        }

        v300 = v297 >> 9;
        v301 = (v299 + (v282 * v297)) >> 9;
        v302 = v290 + 8 * ((v289 * (v297 >> 9) - v301 * v521) / v520);
        LODWORD(v303) = 102944 - v302;
        if (v302 <= 51472)
        {
          LODWORD(v303) = v290 + 8 * ((v289 * (v297 >> 9) - v301 * v521) / v520);
        }

        v303 = v302 >= -51472 ? v303 : (-102944 - v302);
        v304 = v303 >= 0 ? v303 : -v303;
        if (v304 >> 8 > 0xC8)
        {
          break;
        }

        v527 = v298;
        v305 = -v296 - v298;
        v564 = v299 + (v282 * v305);
        v532 = v303;
        Taylor_sin_cos(v303, v602, &v600);
        v306 = LODWORD(v600.f64[0]);
        v542 = LODWORD(v600.f64[0]);
        if (SLODWORD(v600.f64[0]) < 0)
        {
          v306 = -LODWORD(v600.f64[0]);
        }

        v552 = ((99658 * v306) >> 15) * (((17965 * v304) >> 23) | 0x8000);
        v307 = 8 * ((v521 * v300 + v301 * v289) / (v552 >> 15));
        LODWORD(v308) = HIDWORD(v290) + v307;
        v309 = (v521 * (v305 >> 9) + (v564 >> 9) * v289) / (v552 >> 15);
        v310 = HIDWORD(v290) + 8 * v309;
        v311 = v307 <= 8 * v309;
        if (v307 <= 8 * v309)
        {
          v312 = HIDWORD(v290) + 8 * v309;
        }

        else
        {
          v312 = HIDWORD(v290) + v307;
        }

        if (v311)
        {
          v308 = v308;
        }

        else
        {
          v308 = v310;
        }

        v313 = 102944;
        v314 = 4294864352;
        v315 = v540;
        if (v312 - v308 <= 205887)
        {
          if (v308 >= -205887)
          {
            if (v312 <= 205886)
            {
              v313 = v312;
              v314 = v308;
            }

            else
            {
              v313 = v312 % 0x3243Fu;
              v314 = v308 - 205887 * (v312 / 0x3243Fu);
            }
          }

          else
          {
            v314 = 205887 * (-v308 / 0x3243Fu) + v308;
            v313 = v312 - v308 - -v308 % 0x3243Fu;
          }
        }

        v316 = v602[0];
        v317 = 0x18EA2312 / U4sqrt(~(4 * v316 * v316 / 0x95));
        if (v540 >= 1)
        {
          v318 = ((v317 - ((112313 * v317 + 0x1000000) >> 24)) * v316) >> 15;
          v319 = v517;
          v320 = v518;
          do
          {
            v321 = *v319;
            v319 -= 3;
            v624.i32[v320] = (v321 - v318) * v316;
            *(v673 + v320) = (v321 - v318) * (v321 - v318);
            v322 = v320-- + 1;
          }

          while (v322 > 1);
        }

        if (v314 <= v313)
        {
          v549 = v302 - 51473;
          v539 = (v317 * v542 + 0x8000) >> 15;
          v548 = 0x30D40000 / (v552 >> 9);
          v545 = v313 - v548;
          v550 = v313;
          while (1)
          {
            v571[0] = 0;
            v604[0] = 0;
            v666 = 0u;
            v323 = 205887;
            v665 = 0u;
            v664 = 0u;
            if (v314 < -102944 || (v323 = -205887, v324 = v314, v314 > 102943))
            {
              v324 = (v323 + v314);
            }

            if (v549 < 0xFFFE6DDF)
            {
              if ((v324 & 0x80000000) != 0)
              {
                v324 = (v324 + 102944);
              }

              else
              {
                v324 = (v324 - 102944);
              }
            }

            v551 = v324;
            Taylor_sin_cos(v324, v571, v604);
            if (v315 < 1)
            {
              v342 = 0;
              v343 = 0;
LABEL_385:
              v344 = v314;
              v345 = 0;
              v346 = 0;
              v347 = 1000000 * v342;
              v348 = v630;
              while (1)
              {
                v349 = HIBYTE(v629.i32[17 * v346 + 2]);
                if (v315 < 1 || v349 > 0xFA)
                {
                  break;
                }

                v350 = 0;
                do
                {
                  v351 = *(v348 + v350);
                  v352 = v664.u8[v350++];
                }

                while (v350 < v540 && v351 == v352);
                if (v351 == v352)
                {
                  goto LABEL_396;
                }

                ++v346;
                v348 = (v348 + 68);
                v345 += 68;
                if (v346 == 8)
                {
                  goto LABEL_405;
                }
              }

              if (v349 >= 0xFB)
              {
                goto LABEL_405;
              }

LABEL_396:
              if ((v346 & 0x80000000) == 0)
              {
                v353 = &v629.i8[68 * (v346 & 0x7FFFFFFF)];
                v354 = *(v353 + 2);
                if (v347 < v354)
                {
                  v354 = v347;
                }

                *(v353 + 2) = v354 >> 1;
                if (v346)
                {
                  v355 = &v629;
                  v356 = v550;
                  do
                  {
                    if (*(v353 + 2) < v355->i32[2])
                    {
                      v357 = *(v353 + 3);
                      v613 = *(v353 + 2);
                      v614 = v357;
                      v615.i32[0] = *(v353 + 16);
                      v358 = *v353;
                      *&v612[16] = *(v353 + 1);
                      *v612 = v358;
                      memmove(v355[4].i64 + 4, v355, v345);
                      v359 = v614;
                      v355[2] = v613;
                      v355[3] = v359;
                      v355[4].i32[0] = v615.i32[0];
                      v285 = *&v612[16];
                      v286 = *v612;
                      *v355 = *v612;
                      v355[1] = v285;
                    }

                    v355 = (v355 + 68);
                    v345 -= 68;
                  }

                  while (v345);
                }

                else
                {
                  v356 = v550;
                }

                LODWORD(v314) = v344;
                goto LABEL_427;
              }

LABEL_405:
              v360 = 0;
              v361 = &v629;
              v362 = 476;
              LODWORD(v314) = v344;
              while (v347 >= v361->i32[2])
              {
                v361 = (v361 + 68);
                ++v360;
                v362 -= 68;
                if (v360 == 8)
                {
                  goto LABEL_424;
                }
              }

              if (v362)
              {
                v363 = v343;
                memmove(v361[4].i64 + 4, v361, v362 & 0xFFFFFFFC);
                v343 = v363;
              }

              else
              {
                v360 = 7;
              }

              v367 = (&v629 + 68 * v360);
              v367->i32[0] = v532;
              v367->i32[1] = v551;
              v367->i32[2] = v347;
              v286 = v665;
              v367[1] = v664;
              v367[2] = v286;
              v285 = v666;
              v367[3] = v666;
              v367[4].i32[0] = v343;
LABEL_424:
              v356 = v550;
              goto LABEL_427;
            }

            v553 = v314;
            v325 = 0;
            v326 = 0;
            v327 = 0;
            v565 = (v604[0] * v539) >> 15;
            v328 = (v571[0] * v539) >> 15;
            v329 = (v604[0] * v542) >> 15;
            v330 = (v571[0] * v542) >> 15;
            v331 = v634 + 1;
            do
            {
              v332 = *(v331 - 1) - v565;
              v333 = *v331 - v328;
              v334 = v624.i32[v325] + v332 * v329 + v333 * v330;
              v335 = U4sqrt(v332 * v332 + v333 * v333 + *(v673 + v325));
              if (v334 < 0 && v334 / v335 <= -2857)
              {
                DWORD1(gDebug) = ++v529;
                v315 = v540;
                goto LABEL_413;
              }

              if (!v325)
              {
                v326 = LODWORD(__b[0]) - v335;
              }

              v336 = *(__b + v325) - v335 - v326;
              v337 = *(&v670 + v325);
              if (*(&v670 + v325))
              {
                v338 = (437 * v336 + 65550) >> 17;
                if (v338 >= 0)
                {
                  v339 = (437 * v336 + 65550) >> 17;
                }

                else
                {
                  v339 = -v338;
                }

                v664.i8[v325] = v338;
                if (v339 > v337)
                {
                  DWORD2(xmmword_2A1938F80) = ++v533;
LABEL_412:
                  v315 = v540;
LABEL_413:
                  v356 = v550;
                  LODWORD(v314) = v553;
                  goto LABEL_427;
                }

                v336 -= (613975 * v338) >> 11;
              }

              *(v610.f64 + v325) = v336;
              if (v336 >= 0)
              {
                v340 = v336;
              }

              else
              {
                v340 = -v336;
              }

              if (v340 >= 0x1A)
              {
                DWORD1(xmmword_2A1938F80) = ++v535;
                goto LABEL_412;
              }

              v331 += 3;
              v327 += v336;
              ++v325;
            }

            while (v560 != v325);
            v315 = v540;
            if (v540 >= 15)
            {
              v341 = v327 / v540;
            }

            else
            {
              v341 = (v327 * num_SV_Div_Table[v540]) >> 15;
            }

            v342 = 0;
            v343 = v341 + v326;
            v364 = &v610;
            v365 = v560;
            v356 = v550;
            LODWORD(v314) = v553;
            do
            {
              v366 = LODWORD(v364->f64[0]);
              v364 = (v364 + 4);
              v342 += (v366 - v341) * (v366 - v341);
              if (v342 > v530)
              {
                LODWORD(xmmword_2A1938F80) = ++v531;
                goto LABEL_427;
              }

              --v365;
            }

            while (v365);
            if (v342 <= 0x1072)
            {
              goto LABEL_385;
            }

LABEL_427:
            ++v557;
            v368 = v545;
            if (v314 < v545)
            {
              v368 = v314;
            }

            if (v314 >= v356)
            {
              v368 = v314;
            }

            v314 = v368 + v548;
            if (v314 > v356)
            {
              LODWORD(gDebug) = v557;
              break;
            }
          }
        }

        v369 = v522;
        v294 = v523;
        v287 = v524;
        v289 = v519;
        if (v524)
        {
          v295 = v528 + 1;
          v293 = v527;
          if (v528 < 2)
          {
            continue;
          }
        }

        goto LABEL_437;
      }

      EvLog_d("SearchEllipse: Stop Candidate search near the poles - ", v303);
      v533 = DWORD2(xmmword_2A1938F80);
      v535 = DWORD1(xmmword_2A1938F80);
      v531 = xmmword_2A1938F80;
      v369 = v522;
      v287 = v522;
      v529 = DWORD1(gDebug);
      v557 = gDebug;
LABEL_437:
      v370 = v513;
      if (v287 < v513)
      {
        v370 = v287;
      }

      if (v287 >= v369)
      {
        v370 = v287;
      }

      v287 = v370 + v514;
    }

    while (v370 + v514 < v369);
  }

  if (v629.i32[2] < 0xFB000000)
  {
    v371 = 0;
    v372 = v630;
    v285 = vdupq_n_s64(0x3F00000000000000uLL);
    *v558 = v285;
    do
    {
      v373 = &v629.i8[68 * v371];
      v374 = *(v373 + 2);
      if (v374 >= 0xFB000000)
      {
        break;
      }

      v571[0] = 0;
      v375.i64[0] = *v373;
      v375.i64[1] = HIDWORD(*v373);
      v566 = vcvtq_f64_s64(v375);
      v610 = vmulq_f64(v566, *v558);
      v611 = 0.0;
      Geo2ECEF(&v610, &WGS84_Datum, v612);
      v376 = 1000 * *(v373 + 16);
      v624 = *v612;
      *&v625.i64[1] = v376;
      v625.i64[0] = *&v612[16];
      EvLog_v("SearchEllipse: Best Points: %d  %g %g  %u", v540, 0.00174852843 * v566.f64[0], vmuld_lane_f64(0.00174852843, v566, 1), v374);
      if (v540 >= 1)
      {
        v377 = v673;
        v378 = v526;
        v379 = v372;
        v380 = v560;
        do
        {
          v382 = *v378++;
          v381 = v382;
          v383 = *v379;
          v379 = (v379 + 1);
          *v377++ = (v381 - 299792 * v383);
          --v380;
        }

        while (v380);
      }

      if (CompPr_LSQ4(v587, v673, v540, v624.i64, v664.i32, v571, v610.f64))
      {
        v285 = vcvtq_n_s64_f64(v610, 0xFuLL);
        *v285.i8 = vmovn_s64(v285);
        *v373 = v285.i64[0];
        v384 = v571[0];
        *(v373 + 2) = v571[0];
        if (g_Enable_Event_Log >= 2u)
        {
          EvLog_v("SearchEllipse: LSQ Upd %d %d   ResSq %d", v285.i32[0], v285.i32[1], v384);
        }
      }

      else
      {
        *(v373 + 2) = -83886080;
        if (g_Enable_Event_Log >= 3u)
        {
          EvLog("SearchEllipse: ERROR DID NOT CONVERGE!");
        }
      }

      ++v371;
      v372 = (v372 + 68);
    }

    while (v371 != 8);
  }

  v385 = 0;
  v386 = &v633;
  v387 = -7;
  v18 = &unk_2A1928000;
  v278 = byte_2A1939000;
  do
  {
    if (v385 > 6)
    {
      v390 = v385;
    }

    else
    {
      v388 = v386;
      v389 = v387;
      v390 = v385;
      do
      {
        v391 = *v388;
        v388 += 17;
        if (v391 < v629.i32[17 * v390 + 2])
        {
          v390 = v389 + 8;
        }

        v174 = __CFADD__(v389++, 1);
      }

      while (!v174);
    }

    if (v385 != v390)
    {
      v392 = &v629.i8[68 * v385];
      v393 = *(v392 + 3);
      v626 = *(v392 + 2);
      v627 = v393;
      v628 = *(v392 + 16);
      v394 = *v392;
      v625 = *(v392 + 1);
      v624 = v394;
      v395 = &v629.i8[68 * v390];
      *v392 = *v395;
      v397 = *(v395 + 2);
      v396 = *(v395 + 3);
      v398 = *(v395 + 1);
      *(v392 + 16) = *(v395 + 16);
      *(v392 + 2) = v397;
      *(v392 + 3) = v396;
      *(v392 + 1) = v398;
      *(v395 + 16) = v628;
      v399 = v627;
      *(v395 + 2) = v626;
      *(v395 + 3) = v399;
      v285 = v624;
      v286 = v625;
      *v395 = v624;
      *(v395 + 1) = v286;
    }

    ++v385;
    ++v387;
    v386 += 17;
  }

  while (v385 != 8);
  for (k = 0; k != 136; k += 17)
  {
    if (v629.i32[k + 2] >= 0xFB000000)
    {
      break;
    }

    EvLog_v("SearchEllipse: Best Points Upd: %d  %g %g  %u", v540, v629.i32[k] * 0.00174852843, v629.i32[k + 1] * 0.00174852843, v629.i32[k + 2]);
  }

  v401 = v629.u32[2];
  if (v633 < 0xFB000000 && v540 <= 4)
  {
    v403 = v507;
    if (v540 == v506 && (v404 = 10000 * v540, v629.i32[2] < (10000 * v540)))
    {
      if (v629.i32[2] >= (1089 * v540))
      {
        v404 = 90000 * v540;
      }
    }

    else
    {
      v404 = 1000000 * v540;
    }

    if (v633 < v404 + v629.i32[2])
    {
      EvLog_v("Ellipse Candidate INVALID as not better than the next: 0 %g %g %d   %d %g %g  %d   %d", v629.i32[0] * 0.00174852843, v629.i32[1] * 0.00174852843, v629.i32[2], 1, v631 * 0.00174852843, v632 * 0.00174852843, v633, v540);
      v401 = -83886080;
    }
  }

  else
  {
    v403 = v507;
  }

  v427 = 16000000 * v540;
  if (v540 <= 5)
  {
    v427 = 0;
  }

  v285.i32[0] = v401;
  v286.i32[0] = v403 + v427;
  dword_2A1938F38 = v401 / v540;
  v428.i64[0] = v629.i32[0];
  v428.i64[1] = v629.i32[1];
  v277 = v401 < v403 + v427;
  __x = vandq_s8(vmulq_f64(vcvtq_f64_s64(v428), vdupq_n_s64(0x3F00000000000000uLL)), vdupq_lane_s32(*&vcgtq_u32(v286, v285), 0));
  v578 = 0.0;
LABEL_608:
  if (v18[547] >= 2u)
  {
    v483 = mach_continuous_time();
    v484 = v515;
    v484.i32[2] = (*(v278 + 200) * v483);
    v515 = v484;
  }

  if (v277)
  {
    Geo2ECEF(&__x, &WGS84_Datum, v634);
    *v582 = v634[0];
    *&v582[16] = *&v634[1];
    v486 = CompVelDoLs(v516, v510, v511, v582, &v574, v485);
  }

  else
  {
    v486 = 0;
  }

  if (v18[547] >= 2u)
  {
    v487 = mach_continuous_time();
    v488 = v515;
    v488.i32[3] = (*(v278 + 200) * v487);
    v515 = v488;
  }

  v489 = __x.i64[0];
  if (v486)
  {
    v490 = __sincos_stret(*__x.i64);
    v491 = __x.i64[1];
    v492 = __sincos_stret(*&__x.i64[1]);
    v493 = 0;
    v587[0] = -(v490.__sinval * v492.__cosval);
    v587[1] = -(v490.__sinval * v492.__sinval);
    v494 = &v587[2];
    v587[2] = v490.__cosval;
    v587[3] = -v492.__sinval;
    v588 = *&v492.__cosval;
    *&v589 = -(v490.__cosval * v492.__cosval);
    *(&v589 + 1) = -(v490.__cosval * v492.__sinval);
    *&v590 = -v490.__sinval;
    v495 = v574;
    v496 = *&v575;
    do
    {
      v497 = *(v494 - 1) * *(&v495 + 1) + *(v494 - 2) * *&v495;
      v498 = *v494;
      v494 += 3;
      *&v629.i64[v493++] = v497 + v498 * v496;
    }

    while (v493 != 3);
    v499 = *&v629.i64[1] * *&v629.i64[1] + *v629.i64 * *v629.i64;
    if (v508 >= 5)
    {
      v500 = 5;
    }

    else
    {
      v500 = v508;
    }

    if (v500 <= 3)
    {
      v500 = 3;
    }

    v501 = fabs(v630[0]);
    if (v501 < 10.0)
    {
      v502 = User_Velocity_Compensation[v500 - 3] * 1.5;
      v117 = v499 < v502 * v502;
    }

    else
    {
      v117 = 0;
    }

    dword_2A1938F94 = sqrt(v499);
    dword_2A1938F98 = v501;
    if (!v117)
    {
      dword_2A1938F68 = 6;
    }
  }

  else
  {
    v117 = 0;
    v491 = __x.i64[1];
  }

  v509->i64[0] = v489;
  v509->i64[1] = v491;
  xmmword_2A1938F40 = v568;
  qword_2A1938F50 = v569;
LABEL_630:
  if (v18[547] >= 3u)
  {
    EvLog_v("CAP Time Waypoints %u %d %d %d %d %d %d %d", v512.i32[0], v512.i32[1] - v512.i32[0], v512.i32[2] - v512.i32[0], v512.i32[3] - v512.i32[0], v515.i32[0] - v512.i32[0], v515.i32[1] - v512.i32[0], v515.i32[2] - v512.i32[0], v515.i32[3] - v512.i32[0]);
  }

  v503 = *MEMORY[0x29EDCA608];
  return v117;
}

uint64_t CompVelDoLs(int (*a1)[3], __int16 (*a2)[3], __int16 *a3, double *a4, uint64_t a5, double *a6)
{
  v6 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6);
  v8 = v7;
  v10 = v9;
  v82 = v11;
  v13 = v12;
  v14 = v6;
  v129 = *MEMORY[0x29EDCA608];
  bzero(v125, 0xA80uLL);
  v15 = 0;
  v16 = 0;
  v89[59] = 0;
  v90 = 0;
  memset(v89, 0, 457);
  v92 = 0;
  v91 = 0;
  v93 = 0;
  v94 = 0;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v95 = 2;
  v97 = &v88;
  v96 = v86;
  v98 = v87;
  v99 = &v85;
  v100 = &v84;
  v89[58] = 0;
  v89[54] = 0;
  v102 = 0u;
  v101 = 0u;
  dword_2A1938F68 = 0;
  memset(v86, 0, sizeof(v86));
  v118 = 0.0;
  v117 = 0u;
  v116 = 0u;
  v17 = (v14 + 8);
  v18 = -1;
  memset(v115, 0, sizeof(v115));
  do
  {
    v87[v15] = 0x3FF0000000000000;
    if (*(v17 - 2) && *(v17 - 1) && *v17)
    {
      v86[v15] = 1;
      ++v16;
    }

    else if (v18 == -1)
    {
      v18 = v15;
    }

    ++v15;
    v17 += 3;
  }

  while (v15 != 48);
  HIDWORD(v94) = v18;
  if (v16 >= 3)
  {
    if (v18 == -1)
    {
LABEL_18:
      v29 = 0;
      *(&v91 + 3) = -1;
      LODWORD(v91) = 50462976;
      HIBYTE(v91) = 4;
      LODWORD(v92) = 1;
      v81 = v14;
      v30 = (v14 + 4);
      v31 = 0.0;
      do
      {
        v32 = v29;
        v33 = v30;
        v34 = v97;
        v35 = (v13 + 4);
        v36 = v82;
        v37 = v97;
        for (i = 2; i != 338; i += 7)
        {
          v39 = *(v33 - 1);
          v40 = v33[1];
          if (*(v33 - 1))
          {
            v41 = *v33;
          }

          else
          {
            v41 = 0.0;
            if (!v40)
            {
              break;
            }
          }

          v33 += 3;
          v42 = v39 - *v10;
          v43 = v41 - v10[1];
          v44 = v40 - v10[2];
          v45 = 1.0 / sqrt(v43 * v43 + v42 * v42 + v44 * v44);
          v46 = *v36++;
          *v37++ = v46 * 0.190293673 - v45 * (v43 * -(v8[1] - *(v35 - 1) * 0.190293673) + v42 * -(*v8 - *(v35 - 2) * 0.190293673) + v44 * -(v8[2] - *v35 * 0.190293673)) - v8[3];
          *&v124[i * 8] = v42 * v45;
          v47 = &v125[i];
          *(v47 - 1) = v43 * v45;
          *v47 = v44 * v45;
          v35 += 3;
        }

        if (v16 <= 4)
        {
          v48 = 0;
          v49 = SHIDWORD(v94);
          v96[SHIDWORD(v94)] = 1;
          v50 = *v8;
          v51 = v8[1];
          v52 = v8[2];
          v53 = &v115[2];
          do
          {
            v54 = *(v53 - 1) * v51 + *(v53 - 2) * v50;
            v55 = *v53;
            v53 += 3;
            *&v127[v48] = v54 + v55 * v52;
            v48 += 2;
          }

          while (v48 != 6);
          v34[v49] = -v128;
        }

        v56 = NK_Least_Squares_Core(v125, v115, 4, 0, 0, &v122, &v120, &v119, v89);
        v57 = 0;
        v58 = 0.0;
        do
        {
          v59 = *(&v91 + v57);
          if ((v59 & 0x8000000000000000) == 0)
          {
            v60 = *&v89[v59];
            v8[v59] = v8[v59] + v60;
            v58 = v58 + v60 * v60;
          }

          ++v57;
        }

        while (v57 != 7);
        v62 = v58 <= v31 || v32 == 0;
        ++byte_2A1938F72;
        if (!v62 || !v56)
        {
          if (v32 > 9)
          {
            v79 = 1;
          }

          else
          {
            v79 = 2;
          }

          v63 = &unk_2A1938000;
          goto LABEL_62;
        }

        if (v32 > 8)
        {
          break;
        }

        v29 = v32 + 1;
        v31 = v58;
      }

      while (v58 > 1.0);
      v63 = &unk_2A1938000;
      if (v32 > 8)
      {
        v79 = 1;
      }

      else
      {
        v64 = 0;
        v65 = v97;
        v66 = &v126;
        v67 = (v81 + 8);
        v68 = (v13 + 4);
        do
        {
          v69 = *(v67 - 2);
          v70 = *v67;
          if (*(v67 - 1))
          {
            v71 = *(v67 - 1);
          }

          else
          {
            v71 = 0.0;
            if (!v70)
            {
              break;
            }
          }

          v67 += 3;
          v72 = v69 - *v10;
          v73 = v71 - v10[1];
          v74 = v70 - v10[2];
          v75 = 1.0 / sqrt(v73 * v73 + v72 * v72 + v74 * v74);
          v65[v64] = v82[v64] * 0.190293673 - v75 * (v73 * -(v8[1] - *(v68 - 1) * 0.190293673) + v72 * -(*v8 - *(v68 - 2) * 0.190293673) + v74 * -(v8[2] - *v68 * 0.190293673)) - v8[3];
          *(v66 - 2) = v72 * v75;
          *(v66 - 1) = v73 * v75;
          *v66 = v74 * v75;
          v66 += 7;
          ++v64;
          v68 += 3;
        }

        while (v64 != 48);
        v76 = 0;
        v77 = 0.0;
        do
        {
          if (v86[v76] == 1)
          {
            v77 = v77 + v65[v76] * v65[v76];
          }

          ++v76;
        }

        while (v76 != 48);
        v78 = v16 * 4.0;
        if (v16 >= 5)
        {
          v78 = 400.0;
        }

        if (v77 <= v78)
        {
          result = 1;
          goto LABEL_63;
        }

        v79 = 4;
      }

LABEL_62:
      result = 0;
      v63[986] = v79;
      goto LABEL_63;
    }

    v20 = &v125[7 * v18];
    v127[0] = 0;
    LODWORD(v119) = 0;
    *v83 = 0;
    v122 = *v10;
    v123 = *(v10 + 2);
    ECEF2Geo(&v122, &WGS84_Datum, &v120);
    v21 = v121;
    if (v121 >= 3.14159265)
    {
      v22 = -6.28318531;
    }

    else
    {
      if (v121 >= -3.14159265)
      {
LABEL_17:
        v23 = v120;
        v24 = __sincos_stret(v120);
        v25 = __sincos_stret(v21);
        v115[0] = -(v24.__sinval * v25.__cosval);
        v115[1] = -(v24.__sinval * v25.__sinval);
        v115[2] = v24.__cosval;
        v115[3] = -v25.__sinval;
        v116 = *&v25.__cosval;
        *&v117 = -(v24.__cosval * v25.__cosval);
        *(&v117 + 1) = -(v24.__cosval * v25.__sinval);
        v118 = -v24.__sinval;
        LODWORD(v26) = vcvtd_n_s64_f64(v23, 0xFuLL);
        v27 = Taylor_sin_cos(v26, v127, &v119);
        LODWORD(v27) = vcvtd_n_s64_f64(v21, 0xFuLL);
        Taylor_sin_cos(v27, &v83[1], v83);
        v28 = vcvtd_n_f64_s32(v83[1] * v119, 0x1EuLL);
        *v20 = vcvtd_n_f64_s32(v119 * v83[0], 0x1EuLL);
        v20[1] = v28;
        v20[2] = vcvtd_n_f64_s32(v127[0], 0xFuLL);
        goto LABEL_18;
      }

      v22 = 6.28318531;
    }

    v21 = v121 + v22;
    v121 = v121 + v22;
    goto LABEL_17;
  }

  result = 0;
LABEL_63:
  v80 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t CAP_LSQ4_Core(uint64_t a1, int a2, uint64_t a3)
{
  v24 = *MEMORY[0x29EDCA608];
  *(a3 + 32) = 0x426D1A94A2000000;
  v4 = a3 + 32;
  *(a3 + 40) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 136) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 48) = 0x426D1A94A2000000;
  *(a3 + 72) = 0x426D1A94A2000000;
  *(a3 + 104) = 0x426D1A94A2000000;
  v5 = a2 + (*(a3 + 152) >= 0);
  if (v5 >= 1)
  {
    v6 = 0;
    v16 = 0;
    v7 = (a1 + 16);
    do
    {
      if (v6 == *(a3 + 152))
      {
        v8 = 0.0;
      }

      else
      {
        v8 = 1.0;
      }

      v20 = vnegq_f64(*(v7 - 2));
      v9 = *v7;
      v7 += 3;
      v21 = -v9;
      v22 = v8;
      v10 = *(a3 + 168);
      v23 = *(*(a3 + 160) + 8 * v6);
      umeas(v4, 4u, *(v10 + 8 * v6++), v20.f64, v19, v18, &v16, 1.0e20);
    }

    while (v5 != v6);
  }

  ud2var(v4, 4u, 1, 4u, v17);
  if (v17[0] <= 1000000000.0)
  {
    v12 = 1;
    while (v12 != 4)
    {
      v13 = v17[v12++];
      if (v13 > 1000000000.0)
      {
        if ((v12 - 2) < 3)
        {
          goto LABEL_8;
        }

        break;
      }
    }

    v14 = *(a3 + 128);
    *a3 = *(a3 + 112);
    *(a3 + 16) = v14;
    result = 1;
  }

  else
  {
LABEL_8:
    result = 0;
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t CompPr_LSQ4(double (*a1)[3], double *a2, int a3, double *a4, int *a5, unsigned int *a6, double *a7)
{
  v8 = a3;
  v114 = *MEMORY[0x29EDCA608];
  v104 = 0;
  memset(v103, 0, sizeof(v103));
  memset(v102, 0, sizeof(v102));
  v106 = v101;
  v107 = __b;
  v105 = -1;
  dword_2A1938F68 = 0;
  memset(v108, 0, sizeof(v108));
  v109 = 0u;
  v110 = 0u;
  v11 = a3;
  v111 = 0.0;
  if (a3 < 1)
  {
    v14 = a3;
    __b[a3] = 5.0;
    v105 = a3;
  }

  else
  {
    memset_pattern16(__b, &unk_29972AEE0, 8 * a3);
    v12 = 5.0;
    if (v8 < 5 || (v12 = 25.0, v8 < 9))
    {
      __b[v11] = v12;
      v105 = v8;
    }

    v13 = 0;
    v14 = v8;
    v15 = *a4;
    v16 = a4[2];
    v17 = a4[3];
    do
    {
      v18 = &(*a1)[3 * v13];
      v19 = *v18;
      v20 = vsubq_f64(*v18, v15);
      *v99 = v20;
      v21 = v18[1].f64[0] - v16;
      *&v99[16] = v21;
      v22 = 0.0;
      v23 = 2;
      do
      {
        v22 = v22 + *&v99[8 * v23] * *&v99[8 * v23];
        v24 = v23-- + 1;
      }

      while (v24 > 1);
      v25 = 0;
      v26 = &v112[3 * v13];
      v27 = sqrt(v22);
      *v26 = vdivq_f64(v20, vdupq_lane_s64(*&v27, 0));
      v26[1].f64[0] = v21 / v27;
      v28 = vmulq_f64(v19, xmmword_29975D2A0);
      *v113 = vextq_s8(v28, v28, 8uLL);
      *&v113[16] = 0;
      v29 = 0.0;
      do
      {
        v29 = v29 + *&v113[v25] * *&v99[v25];
        v25 += 8;
      }

      while (v25 != 24);
      v101[v13] = a2[v13] - (v27 + v29 * -0.00000000333564095) - v17;
      ++v13;
    }

    while (v13 != v11);
  }

  v30 = 0;
  v95 = 0;
  v31 = v14 * 25.0;
  v32 = 0.0;
  v93 = vdupq_n_s64(0x4202A05F20000000uLL);
  v92 = v8;
  while (1)
  {
    v96 = v30;
    v33 = v105;
    if ((v105 & 0x80000000) == 0)
    {
      v34 = v106;
      *v97 = 0;
      *v98 = 0;
      *v99 = *a4;
      *&v99[16] = a4[2];
      ECEF2Geo(v99, &WGS84_Datum, v113);
      v36 = *&v113[8];
      v37 = -6.28318531;
      v94 = v34;
      if (*&v113[8] >= 3.14159265 || (v37 = 6.28318531, *&v113[8] < -3.14159265))
      {
        v36 = *&v113[8] + v37;
        *&v113[8] = *&v113[8] + v37;
      }

      v38 = &v112[3 * v33];
      LODWORD(v35) = vcvtd_n_s64_f64(*v113, 0xFuLL);
      v39 = Taylor_sin_cos(v35, &v98[1], v98);
      LODWORD(v39) = vcvtd_n_s64_f64(v36, 0xFuLL);
      Taylor_sin_cos(v39, &v97[1], v97);
      v40 = vcvtd_n_f64_s32(v97[1] * v98[0], 0x1EuLL);
      *v38 = vcvtd_n_f64_s32(v98[0] * v97[0], 0x1EuLL);
      v38[1] = v40;
      v38[2] = vcvtd_n_f64_s32(v98[1], 0xFuLL);
      v94[v33] = *&v113[16];
      v8 = v92;
    }

    if ((CAP_LSQ4_Core(v112, v8, v102) & 1) == 0)
    {
      result = 0;
      *a5 = v96 + 1;
      dword_2A1938F68 = 2;
      goto LABEL_84;
    }

    v41 = v102[0].f64[0];
    v42 = *(v102 + 8);
    v43.f64[0] = v102[1].f64[1];
    v43.f64[1] = v102[0].f64[0];
    if (vmaxv_u16(vmovn_s32(vuzp1q_s32(vcgtq_f64(v43, v93), vcgtq_f64(*(v102 + 8), v93)))))
    {
      EvLog_v("CompPR_LSQ4: StateVec Innovation Out Of Range! %f %f %f %f", v102[1].f64[1], v102[0].f64[0], v102[0].f64[1], v102[1].f64[0]);
      goto LABEL_83;
    }

    v44 = v102[1].f64[1] + a4[3];
    a4[3] = v44;
    v45 = v41 + *a4;
    *a4 = v45;
    v46 = vaddq_f64(v42, *(a4 + 1));
    *(a4 + 1) = v46;
    if (v8 < 1)
    {
      v60 = 0.0;
    }

    else
    {
      v47 = 0;
      do
      {
        v48 = &(*a1)[3 * v47];
        v49 = *v48;
        v50 = *v48 - v45;
        *v99 = v50;
        v51 = *(v48 + 1);
        v52 = vsubq_f64(v51, v46);
        *&v99[8] = v52;
        v53 = 0.0;
        v54 = 2;
        do
        {
          v53 = v53 + *&v99[8 * v54] * *&v99[8 * v54];
          v55 = v54-- + 1;
        }

        while (v55 > 1);
        v56 = 0;
        v57 = &v112[3 * v47];
        v58 = sqrt(v53);
        *v57 = v50 / v58;
        *(v57 + 1) = vdivq_f64(v52, vdupq_lane_s64(*&v58, 0));
        v51.f64[1] = v49;
        *v113 = vmulq_f64(v51, xmmword_2997622B0);
        *&v113[16] = 0;
        v59 = 0.0;
        do
        {
          v59 = v59 + *&v113[v56] * *&v99[v56];
          v56 += 8;
        }

        while (v56 != 24);
        v101[v47] = a2[v47] - (v58 + v59 * -0.00000000333564095) - v44;
        ++v47;
      }

      while (v47 != v11);
      v60 = 0.0;
      v61 = v101;
      v62 = v11;
      do
      {
        v63 = *v61++;
        v60 = v60 + v63 * v63;
        --v62;
      }

      while (v62);
    }

    if (v96)
    {
      break;
    }

LABEL_43:
    v67 = v96 + 1;
    if (v96 <= 3)
    {
      v30 = v96 + 1;
      v32 = v60;
      if (v95 != 2)
      {
        continue;
      }
    }

    goto LABEL_48;
  }

  if (v60 >= v31 && v60 * 8.0 <= v32)
  {
    if (v60 * 128.0 > v32)
    {
      if (v95 == 1)
      {
        v65 = 2;
      }

      else
      {
        v65 = 1;
      }

      v95 = v65;
    }

    goto LABEL_43;
  }

  v67 = v96 + 1;
LABEL_48:
  *a5 = v67;
  *v113 = v45;
  *&v113[8] = v46;
  ECEF2Geo(v113, &WGS84_Datum, a7);
  v68 = a7[1];
  if (v68 >= 3.14159265)
  {
    v69 = -6.28318531;
LABEL_52:
    v68 = v68 + v69;
    a7[1] = v68;
  }

  else if (v68 < -3.14159265)
  {
    v69 = 6.28318531;
    goto LABEL_52;
  }

  v70 = __sincos_stret(*a7);
  v71 = __sincos_stret(v68);
  v108[0] = -(v70.__sinval * v71.__cosval);
  v108[1] = -(v70.__sinval * v71.__sinval);
  v108[2] = v70.__cosval;
  v108[3] = -v71.__sinval;
  v109 = *&v71.__cosval;
  *&v110 = -(v70.__cosval * v71.__cosval);
  *(&v110 + 1) = -(v70.__cosval * v71.__sinval);
  v111 = -v70.__sinval;
  if (v8 < 1)
  {
    v80 = 1;
  }

  else
  {
    v72 = 0;
    do
    {
      v73 = 2;
      do
      {
        *&v99[8 * v73] = (*a1)[v73] - a4[v73];
        v74 = v73-- + 1;
      }

      while (v74 > 1);
      v75 = -(v70.__cosval * v71.__sinval) * *&v99[8] + -(v70.__cosval * v71.__cosval) * *v99 + -v70.__sinval * *&v99[16];
      if (v75 <= 0.0)
      {
        v80 = 1;
      }

      else
      {
        v76 = 0.0;
        v77 = &v99[16];
        for (i = 4; i > 1; --i)
        {
          v79 = *v77--;
          v76 = v76 + v79 * v79;
        }

        v80 = -v75 / sqrt(v76) >= -0.087155743;
      }

      ++v72;
      ++a1;
    }

    while (v80 && v72 < v11);
  }

  v82 = v60 <= 225000000.0 && v80;
  if (v8 <= 5 && v82)
  {
    Comp_NEDvar_UDU(v103, 4u, 0, v108, v99);
    if (*&v99[16] < 100000000.0)
    {
      v83 = a7[2];
      v84 = 1000 * U4sqrt(*&v99[16]);
      if (v84 <= 500)
      {
        v84 = 500;
      }

      v85 = -500 - v84;
      v86 = v84 + 18000;
      if (v85 < v83 && v86 > v83)
      {
        goto LABEL_81;
      }
    }
  }

  else if (v82)
  {
LABEL_81:
    *a6 = v60;
    result = 1;
    goto LABEL_84;
  }

LABEL_83:
  result = 0;
LABEL_84:
  v88 = *MEMORY[0x29EDCA608];
  return result;
}

void *GNSS_Init_p_list(gnss::GnssAdaptDevice *a1)
{
  v8 = *MEMORY[0x29EDCA608];
  g_GN_GPS_Data_p_list = 0u;
  *&qword_2A1926970 = 0u;
  xmmword_2A1926980 = 0u;
  *&qword_2A1926990 = 0u;
  xmmword_2A19269A0 = 0u;
  *&qword_2A19269B0 = 0u;
  xmmword_2A19269C0 = 0u;
  *&qword_2A19269D0 = 0u;
  xmmword_2A19269E0 = 0u;
  unk_2A19269F0 = 0u;
  xmmword_2A1926A00 = 0u;
  unk_2A1926A10 = 0u;
  xmmword_2A1926A20 = 0u;
  xmmword_2A1926A30 = 0u;
  xmmword_2A1926A40 = 0u;
  xmmword_2A1926A50 = 0u;
  *(&g_GN_GPS_Data_p_list + 1) = &unk_2A19720A0;
  qword_2A1926910 = &g_DB_Raw_Meas;
  qword_2A1926918 = &g_DB_SV_Subframes;
  unk_2A1926920 = &g_DB_SV_AzEl;
  qword_2A1926928 = &g_DB_Acq_Aid_Table;
  xmmword_2A1926A60 = 0u;
  xmmword_2A1926A70 = 0u;
  qword_2A1926930 = &g_DB_Time_Sync;
  qword_2A1926938 = &g_DB_SV_Nav_Mess;
  *&xmmword_2A1926940 = &unk_2A19725C8;
  *(&xmmword_2A1926940 + 1) = &xmmword_2A197C6F8;
  qword_2A1926950 = &g_DB_GNSS_Soln;
  unk_2A1926958 = &g_DB_Nav_Soln;
  xmmword_2A1926A80 = 0u;
  *&xmmword_2A1926960 = &g_DB_SV_State_Table;
  *(&xmmword_2A1926960 + 1) = &g_DB_Track_Meas;
  qword_2A1926970 = &g_DB_Sensor;
  if (gnss::GnssAdaptDevice::Ga05_08CheckIfInertialFusionShouldBeEnabled(a1))
  {
    if (!_MergedGlobals_9)
    {
      _MergedGlobals_9 = malloc_type_malloc(0x2068uLL, 0x10000405140872EuLL);
    }

    if (!qword_2A1972070)
    {
      qword_2A1972070 = malloc_type_malloc(0x128uLL, 0x10300408C5C66BBuLL);
    }

    if (!qword_2A1972078)
    {
      qword_2A1972078 = malloc_type_malloc(0x6CuLL, 0x100004024435D43uLL);
    }

    if (!qword_2A1972080)
    {
      qword_2A1972080 = malloc_type_malloc(0x3F8uLL, 0x10000402D7176F6uLL);
    }

    v1 = qword_2A1972088;
    if (!qword_2A1972088)
    {
      v1 = malloc_type_malloc(0x2804uLL, 0x10000407E7A484BuLL);
      qword_2A1972088 = v1;
    }
  }

  else
  {
    v1 = qword_2A1972088;
  }

  qword_2A1926978 = _MergedGlobals_9;
  xmmword_2A1926980 = *&qword_2A1972070;
  qword_2A1926990 = qword_2A1972080;
  unk_2A1926998 = v1;
  *&xmmword_2A19269A0 = &g_G5K_ME_SD;
  *(&xmmword_2A19269A0 + 1) = &g_SV_Gen_Meas_SD;
  qword_2A19269B0 = &g_Nav_Kalman_SD;
  unk_2A19269B8 = &g_SV_Data_Decode_SD;
  *&xmmword_2A19269C0 = &xmmword_2A1972304;
  *(&xmmword_2A19269C0 + 1) = &unk_2A1972148;
  v2 = gnss::GnssAdaptDevice::Ga05_08CheckIfInertialFusionShouldBeEnabled(v1);
  v3 = qword_2A1972090;
  if (v2 && !qword_2A1972090)
  {
    v3 = malloc_type_malloc(0x207538uLL, 0x1030040D565750FuLL);
    qword_2A1972090 = v3;
  }

  qword_2A19269D0 = v3;
  *algn_2A19269D8 = &g_Fused_Nav_SD;
  *(&xmmword_2A19269E0 + 1) = &g_Nav_Kalman_WD;
  unk_2A19269F0 = &xmmword_2A1972180;
  qword_2A19269F8 = &unk_2A19720B4;
  v4 = gnss::GnssAdaptDevice::Ga05_08CheckIfInertialFusionShouldBeEnabled(v3);
  v5 = qword_2A1972098;
  if (v4 && !qword_2A1972098)
  {
    v5 = malloc_type_malloc(0x5F70uLL, 0x10000404055741BuLL);
    qword_2A1972098 = v5;
  }

  *(&xmmword_2A1926A00 + 1) = v5;
  unk_2A1926A10 = &g_Fused_Nav_WD;
  qword_2A1926A18 = &g_GNSS_Debug_Data;
  *&xmmword_2A1926A20 = &g_GN_GNSS_IntVersion;
  *(&xmmword_2A1926A20 + 1) = &unk_2A19721D8;
  *&xmmword_2A1926A30 = &g_GN_GNSS_Nav_Data;
  *(&xmmword_2A1926A30 + 1) = &g_GN_GNSS_Dbg_Data;
  *&xmmword_2A1926A40 = &g_NV_Ram;
  *(&xmmword_2A1926A40 + 1) = &g_NA_Ram;
  *&xmmword_2A1926A50 = &unk_2A1972240;
  qword_2A19720D8 = &g_CBuff_Meas;
  unk_2A19720E0 = &g_CBuff_Meas + 6144;
  qword_2A19720C8 = &g_CBuff_Meas;
  unk_2A19720D0 = &g_CBuff_Meas;
  qword_2A19720F8 = &g_CBuff_Ctrl;
  unk_2A1972100 = getVersionString::a_Version;
  qword_2A19720F0 = &g_CBuff_Ctrl;
  qword_2A19720E8 = &g_CBuff_Ctrl;
  *(&xmmword_2A1926A50 + 1) = &qword_2A19720C8;
  *&xmmword_2A1926A60 = &qword_2A19720E8;
  qword_2A1972118 = &g_CBuff_NMEA;
  unk_2A1972120 = &g_CBuff_NMEA + 14336;
  qword_2A1972110 = &g_CBuff_NMEA;
  qword_2A1972108 = &g_CBuff_NMEA;
  qword_2A1938ED0 = &g_CBuff_NDbg;
  qword_2A1938ED8 = &g_CBuff_Meas;
  g_CB_NDbg = &g_CBuff_NDbg;
  *&dword_2A1938EC8 = &g_CBuff_NDbg;
  *(&xmmword_2A1926A60 + 1) = &qword_2A1972108;
  *&xmmword_2A1926A70 = &g_CB_NDbg;
  qword_2A1938EF0 = &unk_2A1972C28;
  qword_2A1938EF8 = &g_Nav_Kalman_SD;
  g_CB_ELog = &unk_2A1972828;
  *&dword_2A1938F08 = &unk_2A1972828;
  qword_2A1938F10 = &unk_2A1972828;
  qword_2A1938F18 = &unk_2A1972C28;
  g_CB_GDbg = &unk_2A1972C28;
  *&dword_2A1938EE8 = &unk_2A1972C28;
  *(&xmmword_2A1926A70 + 1) = &g_CB_ELog;
  *&xmmword_2A1926A80 = &g_CB_GDbg;
  qword_2A1972128 = &_MergedGlobals_51;
  qword_2A1972138 = &_MergedGlobals_51;
  unk_2A1972140 = &xmmword_2A197C6F8;
  qword_2A1972130 = &_MergedGlobals_51;
  *(&xmmword_2A1926A80 + 1) = &qword_2A1972128;
  LODWORD(g_GN_GPS_Data_p_list) = 2;
  p_api = &g_GN_GPS_Data_p_list;
  p_NA = &g_NA_Ram;
  p_NA = &g_NA_Ram;
  p_NA = &g_NA_Ram;
  p_NA = &g_NA_Ram;
  p_NA = &g_NA_Ram;
  p_NA = &g_NA_Ram;
  v6 = *MEMORY[0x29EDCA608];

  return memcpy(&unk_2A1972438, &g_GN_GPS_Data_p_list, 0x190uLL);
}

void *GNSS_Clear_DataAreas(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6);
  v199 = *MEMORY[0x29EDCA608];
  bzero(v198, 0x2C78uLL);
  for (i = 0; i != 160; i += 20)
  {
    v7 = v198 + i;
    v7[540] = 0;
    *(v7 + 68) = 0;
    *(&v198[34] + i + 7) = 0;
  }

  for (j = 0; j != 2688; j += 56)
  {
    v9 = v198 + j;
    *(v9 + 88) = 0;
    *(v9 + 356) = 0;
    *(&v198[44] + j + 12) = 0;
    *(v9 + 362) = 0;
    v10 = (&v198[45] + j + 8);
    *(v9 + 94) = 0;
    *(v9 + 372) = 0;
    *v10 = 0uLL;
  }

  for (k = 3392; k != 5120; k += 36)
  {
    v12 = v198 + k;
    v12[32] = 0;
    *v12 = 0uLL;
    *(v12 + 1) = 0uLL;
  }

  v13 = -960;
  do
  {
    v14 = v198 + v13;
    *(v14 + 3048) = 0;
    *(v14 + 380) = 0uLL;
    v13 += 20;
  }

  while (v13);
  v15 = 0xFFFFFFFFFFFFF80;
  do
  {
    *&v198[v15 + 508] = 0;
    *(&v198[v15 + 508] + 6) = 0;
    ++v15;
  }

  while (v15 * 16);
  v16 = 2688;
  v17 = &v198[511] + 4;
  do
  {
    *(v17 - 13) = 0;
    *v17 = 0;
    v17 += 56;
    v16 -= 56;
  }

  while (v16);
  WORD4(v198[697]) = 0;
  HIDWORD(v198[702]) = 0;
  LOBYTE(v198[703]) = 0;
  *(&v198[698] + 12) = 0u;
  *(&v198[699] + 12) = 0u;
  *(&v198[700] + 12) = 0u;
  *(&v198[701] + 10) = 0u;
  HIDWORD(v198[703]) = 0;
  *(&v198[703] + 7) = 0;
  DWORD1(v198[703]) = 0;
  memset(&v198[676], 0, 343);
  *(&v198[698] + 2) = 0;
  *(&v198[697] + 12) = 0;
  memcpy(&g_G5K_ME_SD, v198, 0x2C78uLL);
  qword_2A1951B90 = &g_G5K_ME_SD;
  bzero(&g_SV_Gen_Meas_SD, 0x8E0uLL);
  bzero(v198, 0x35A4uLL);
  v18 = &v198[350] + 4;
  v19 = 392;
  do
  {
    *(v18 - 3) = 0;
    *(v18 - 8) = 0;
    *(v18 - 3) = 0;
    *(v18 - 8) = 0;
    *(v18 - 1) = 0;
    *v18 = 0;
    v18 += 28;
    v19 -= 28;
  }

  while (v19);
  *(&v198[398] + 15) = 0u;
  *(&v198[397] + 4) = 0u;
  *(&v198[398] + 4) = 0u;
  *(&v198[395] + 4) = 0u;
  *(&v198[396] + 4) = 0u;
  *(&v198[393] + 4) = 0u;
  *(&v198[394] + 4) = 0u;
  *(&v198[391] + 4) = 0u;
  *(&v198[392] + 4) = 0u;
  *(&v198[389] + 4) = 0u;
  *(&v198[390] + 4) = 0u;
  *(&v198[387] + 4) = 0u;
  *(&v198[388] + 4) = 0u;
  *(&v198[385] + 4) = 0u;
  *(&v198[386] + 4) = 0u;
  *(&v198[383] + 4) = 0u;
  *(&v198[384] + 4) = 0u;
  *(&v198[381] + 4) = 0u;
  *(&v198[382] + 4) = 0u;
  *(&v198[379] + 4) = 0u;
  *(&v198[380] + 4) = 0u;
  *(&v198[377] + 4) = 0u;
  *(&v198[378] + 4) = 0u;
  *(&v198[375] + 4) = 0u;
  *(&v198[376] + 4) = 0u;
  *(&v198[373] + 4) = 0u;
  *(&v198[374] + 4) = 0u;
  memset(&v198[400], 0, 93);
  memset(&v198[406], 0, 86);
  bzero(&v198[411] + 8, 0x193DuLL);
  bzero(&v198[815] + 6, 0x2ACuLL);
  bzero(&v198[858] + 4, 0x10DCuLL);
  memcpy(&g_SV_Data_Decode_SD, v198, 0x4680uLL);
  bzero(v198, 0x69F0uLL);
  s_Nav_Kalman_SD::s_Nav_Kalman_SD(v198);
  g_Nav_Kalman_SD = v198[0];
  dword_2A1973038 = v198[1];
  unk_2A197303C = *(&v198[1] + 4);
  memcpy(&unk_2A1973044, &v198[1] + 12, 0x69D0uLL);
  xmmword_2A1972304 = 0u;
  unk_2A1972314 = 0u;
  xmmword_2A1972324 = 0u;
  unk_2A1972334 = 0u;
  xmmword_2A1972344 = 0u;
  unk_2A1972354 = 0u;
  xmmword_2A1972364 = 0u;
  unk_2A1972374 = 0u;
  xmmword_2A1972384 = 0u;
  unk_2A1972394 = 0u;
  xmmword_2A19723A4 = 0u;
  unk_2A19723B4 = 0u;
  xmmword_2A19723C4 = 0u;
  unk_2A19723D4 = 0u;
  xmmword_2A19723E4 = 0u;
  unk_2A19723F4 = 0u;
  xmmword_2A1972404 = 0u;
  unk_2A1972414 = 0u;
  xmmword_2A1972424 = 0u;
  *(&xmmword_2A1972424 + 15) = 0;
  byte_2A1972178 = 0;
  unk_2A1972168 = 0u;
  unk_2A1972158 = 0u;
  unk_2A1972148 = 0u;
  if (qword_2A1972090)
  {
    bzero(qword_2A1972090, 0x207538uLL);
  }

  memset(v192, 0, 288);
  memset(v198, 0, 408);
  memset(v170, 0, 24);
  memset(v194, 0, 27);
  memset(__src, 0, 288);
  memset(v193, 0, 408);
  memset(v167, 0, 24);
  memset(v164, 0, 24);
  memset(v169, 0, 22);
  g_Fused_Nav_SD = v169[0];
  *(&g_Fused_Nav_SD + 14) = 0;
  word_2A1954EA6 = 0;
  byte_2A1954EA8 = 0;
  memcpy(&unk_2A1954EA9, v192, 0x120uLL);
  xmmword_2A1954FC9 = 0u;
  unk_2A1954FD9 = 0u;
  xmmword_2A1954FE9 = 0u;
  unk_2A1954FF9 = 0u;
  xmmword_2A1955009 = 0u;
  unk_2A1955019 = 0u;
  xmmword_2A1955029 = 0u;
  unk_2A1955039 = 0u;
  xmmword_2A1955049 = 0u;
  unk_2A1955059 = 0u;
  xmmword_2A1955069 = 0u;
  unk_2A1955079 = 0u;
  xmmword_2A1955089 = 0u;
  unk_2A1955099 = 0u;
  xmmword_2A19550A9 = 0u;
  byte_2A19550B9 = 0;
  memcpy(&unk_2A19550BA, v198, 0x198uLL);
  xmmword_2A1955252 = 0u;
  qword_2A1955262 = 0;
  xmmword_2A195526A = v170[0];
  qword_2A195527A = *&v170[1];
  xmmword_2A1955282 = 0u;
  *(&xmmword_2A1955282 + 11) = 0u;
  byte_2A195529D = 0;
  word_2A195529E = 0;
  byte_2A19552A0 = 0;
  memcpy(&unk_2A19552A1, __src, 0x120uLL);
  xmmword_2A19553C1 = 0u;
  unk_2A19553D1 = 0u;
  xmmword_2A19553E1 = 0u;
  unk_2A19553F1 = 0u;
  xmmword_2A1955401 = 0u;
  unk_2A1955411 = 0u;
  xmmword_2A1955421 = 0u;
  unk_2A1955431 = 0u;
  xmmword_2A1955441 = 0u;
  unk_2A1955451 = 0u;
  xmmword_2A1955461 = 0u;
  unk_2A1955471 = 0u;
  xmmword_2A1955481 = 0u;
  unk_2A1955491 = 0u;
  xmmword_2A19554A1 = 0u;
  byte_2A19554B1 = 0;
  memcpy(&unk_2A19554B2, v193, 0x198uLL);
  xmmword_2A195564A = 0u;
  qword_2A195565A = 0;
  xmmword_2A1955662 = 0u;
  qword_2A1955672 = 0;
  xmmword_2A195567A = 0u;
  unk_2A195568A = 0u;
  xmmword_2A195569A = 0u;
  unk_2A19556AA = 0u;
  xmmword_2A19556BA = 0u;
  unk_2A19556CA = 0u;
  xmmword_2A19556DA = 0u;
  unk_2A19556EA = 0u;
  *algn_2A1972190 = 0u;
  xmmword_2A1972180 = 0u;
  byte_2A19721D0 = 0;
  xmmword_2A19721A0 = 0u;
  unk_2A19721B0 = 0u;
  xmmword_2A19721C0 = 0u;
  memset(v197, 0, sizeof(v197));
  v196 = 0u;
  memset(v195, 0, 491);
  memset(&v194[547], 0, 25);
  memset(&v194[515], 0, 119);
  memset(&v194[467], 0, 179);
  memset(&v194[435], 0, 113);
  bzero(v194, 0x6CBuLL);
  bzero(v193, 0x15C8uLL);
  bzero(v192, 0x15C8uLL);
  bzero(v198, 0x2258uLL);
  memset(v191, 0, sizeof(v191));
  LOWORD(v190) = 0;
  BYTE2(v190) = 0;
  memset(v189, 0, 56);
  LOWORD(v188) = 0;
  BYTE2(v188) = 0;
  memset(v187, 0, 56);
  BYTE2(v186) = 0;
  LOWORD(v186) = 0;
  memset(v185, 0, 56);
  BYTE2(v184) = 0;
  LOWORD(v184) = 0;
  memset(v183, 0, sizeof(v183));
  BYTE2(v182) = 0;
  LOWORD(v182) = 0;
  memset(v181, 0, 56);
  BYTE2(v180) = 0;
  LOWORD(v180) = 0;
  memset(&v179[15], 0, 104);
  memset(&v179[14] + 4, 0, 12);
  memset(&v179[10], 0, 53);
  memset(&v179[9] + 4, 0, 12);
  memset(&v179[5], 0, 53);
  memset(&v179[4] + 4, 0, 12);
  memset(v179, 0, 61);
  BYTE2(v178) = 0;
  LOWORD(v178) = 0;
  memset(v177, 0, 56);
  BYTE2(v176) = 0;
  LOWORD(v176) = 0;
  memset(&v175[7], 0, 56);
  memset(&v175[6] + 4, 0, 12);
  memset(&v175[2], 0, 61);
  memset(v175, 0, 31);
  v174 = 0u;
  v173 = 0u;
  v172 = 0u;
  BYTE2(v171) = 0;
  LOWORD(v171) = 0;
  memset(&v170[37], 0, 112);
  memset(&v170[36] + 4, 0, 12);
  memset(&v170[29], 0, 102);
  memset(v170, 0, 455);
  memset(&v169[13], 0, 12);
  memset(v169, 0, 199);
  memset(&v168[2] + 4, 0, 51);
  BYTE2(v168[0]) = 0;
  LOWORD(v168[0]) = 0;
  *&v167[3] = 0;
  *v167 = 0;
  memset(v164, 0, sizeof(v164));
  *(__src + 3) = 0;
  __src[0] = 0;
  v196 = 0uLL;
  *v197 = 0;
  memset(&v197[8], 0, 73);
  *(&v195[29] + 11) = 0u;
  *(&v195[29] + 2) = 0u;
  *(&v195[28] + 2) = 0u;
  *(&v195[27] + 2) = 0u;
  *(&v195[26] + 2) = 0u;
  *(&v195[25] + 2) = 0u;
  *(&v195[24] + 2) = 0u;
  *(&v195[23] + 2) = 0u;
  *(&v195[22] + 2) = 0u;
  *(&v195[21] + 2) = 0u;
  *(&v195[20] + 2) = 0u;
  *(&v195[19] + 2) = 0u;
  *(&v195[18] + 2) = 0u;
  *(&v195[17] + 2) = 0u;
  *(&v195[16] + 2) = 0u;
  *(&v195[15] + 2) = 0u;
  *(&v195[14] + 2) = 0u;
  *(&v195[13] + 2) = 0u;
  *(&v195[12] + 2) = 0u;
  *(&v195[11] + 2) = 0u;
  *(&v195[10] + 2) = 0u;
  *(&v195[9] + 2) = 0u;
  *(&v195[8] + 2) = 0u;
  *(&v195[7] + 2) = 0u;
  *(&v195[6] + 2) = 0u;
  *(&v195[5] + 2) = 0u;
  *(&v195[4] + 2) = 0u;
  *(&v195[3] + 2) = 0u;
  *(&v195[2] + 2) = 0u;
  *(&v195[1] + 2) = 0u;
  *(v195 + 2) = 0u;
  memset(&v194[548], 0, 21);
  memset(&v194[516], 0, 115);
  *(&v190 + 3) = 0;
  *(&v190 + 1) = 0;
  *(&v188 + 3) = 0;
  *(&v188 + 1) = 0;
  *(&v186 + 3) = 0;
  *(&v186 + 1) = 0;
  *(&v184 + 1) = 0;
  *(&v184 + 3) = 0;
  *(&v182 + 1) = 0;
  *(&v182 + 3) = 0;
  *(&v180 + 3) = 0;
  *(&v180 + 1) = 0;
  *(&v178 + 3) = 0;
  *(&v178 + 1) = 0;
  *(&v176 + 1) = 0;
  *(&v176 + 3) = 0;
  *(&v171 + 3) = 0;
  *(&v171 + 1) = 0;
  memset(&v168[5] + 7, 0, 25);
  memset(&v194[467] + 2, 0, 177);
  memset(&v194[435] + 3, 0, 96);
  *(&v194[459] + 1) = 0u;
  bzero(&v194[1] + 2, 0x6C5uLL);
  bzero(v193 + 3, 0x15C5uLL);
  bzero(&v192[3], 0x15C5uLL);
  bzero(v198 + 3, 0x2255uLL);
  memset(&v191[1], 0, 19);
  memset(v189 + 3, 0, 48);
  *&v189[3] = 0;
  memset(v187 + 3, 0, 48);
  *&v187[3] = 0;
  memset(v185 + 3, 0, 48);
  *&v185[3] = 0;
  memset(v183 + 3, 0, 96);
  v183[6] = 0u;
  memset(v181 + 3, 0, 53);
  memset(&v179[18] + 3, 0, 48);
  *&v179[21] = 0;
  memset(&v179[16] + 15, 0, 17);
  memset(&v179[15] + 7, 0, 17);
  memset(&v179[10] + 4, 0, 49);
  memset(&v179[5] + 4, 0, 49);
  memset(v179 + 4, 0, 57);
  memset(v177 + 3, 0, 53);
  memset(&v175[7] + 3, 0, 53);
  memset(&v175[2] + 4, 0, 57);
  memset(&v170[37] + 3, 0, 109);
  memset(&v170[29] + 4, 0, 98);
  *(&v170[28] + 5) = 0;
  *(&v170[27] + 5) = 0u;
  *(&v170[26] + 5) = 0u;
  *(&v170[25] + 5) = 0u;
  *(&v170[24] + 5) = 0u;
  *(&v170[23] + 5) = 0u;
  *(&v170[22] + 5) = 0u;
  *(&v170[21] + 5) = 0u;
  *(&v170[20] + 5) = 0u;
  *(&v170[19] + 5) = 0u;
  *(&v170[18] + 5) = 0u;
  *(&v170[17] + 5) = 0u;
  *(&v170[16] + 5) = 0u;
  *(&v170[15] + 5) = 0u;
  *(&v170[14] + 5) = 0u;
  *(&v170[13] + 5) = 0u;
  *(&v170[12] + 5) = 0u;
  *(&v170[11] + 5) = 0u;
  *(&v170[10] + 5) = 0u;
  *(&v170[9] + 5) = 0u;
  *(&v170[8] + 5) = 0u;
  *(&v170[7] + 5) = 0u;
  *(&v170[6] + 5) = 0u;
  *(&v170[5] + 5) = 0u;
  *(&v170[4] + 5) = 0u;
  *(&v170[3] + 5) = 0u;
  *(&v170[2] + 5) = 0u;
  *(&v170[1] + 5) = 0u;
  *(v170 + 5) = 0u;
  WORD5(v169[13]) = 0;
  *(&v169[13] + 2) = 0;
  memset(v169 + 2, 0, 197);
  memset(v168 + 3, 0, 33);
  memset(&v167[7], 0, 402);
  v165 = 0uLL;
  v166 = 0;
  bzero(&__src[1] + 3, 0x1491uLL);
  xmmword_2A193BEB0 = *&v197[48];
  unk_2A193BEC0 = *&v197[64];
  dword_2A193BED0 = *&v197[80];
  g_Nav_Kalman_WD = v196;
  *&dword_2A193BE80 = *v197;
  xmmword_2A193BE90 = *&v197[16];
  unk_2A193BEA0 = *&v197[32];
  *&dword_2A193BED4 = 0;
  word_2A193BEDC = 0;
  memcpy(algn_2A193BEDE, v195, 0x1EBuLL);
  dword_2A193C0C9 = 0;
  *(&dword_2A193C0C9 + 3) = 0;
  qword_2A193C0D0 = 0;
  dword_2A193C0D8 = -1;
  xmmword_2A193C0DC = *&v194[547];
  *(&xmmword_2A193C0DC + 9) = *(&v194[549] + 1);
  byte_2A193C0F5 = 0;
  word_2A193C0F6 = 0;
  dword_2A193C0F8 = 0;
  xmmword_2A193C11C = *&v194[523];
  unk_2A193C12C = *&v194[527];
  xmmword_2A193C0FC = *&v194[515];
  *algn_2A193C10C = *&v194[519];
  *(&xmmword_2A193C160 + 11) = *(&v194[542] + 3);
  xmmword_2A193C14C = *&v194[535];
  unk_2A193C15C = *&v194[539];
  xmmword_2A193C13C = *&v194[531];
  *(&qword_2A193C173 + 7) = 0;
  qword_2A193C173 = 0;
  *(&xmmword_2A193C190 + 14) = *&v194[475];
  unk_2A193C1AE = *&v194[479];
  xmmword_2A193C17E = *&v194[467];
  *algn_2A193C18E = *&v194[471];
  *(&xmmword_2A193C1D0 + 14) = *&v194[491];
  unk_2A193C1EE = *&v194[495];
  *(&xmmword_2A193C1B0 + 14) = *&v194[483];
  unk_2A193C1CE = *&v194[487];
  unk_2A193C22D = *(&v194[510] + 3);
  xmmword_2A193C20E = *&v194[503];
  unk_2A193C21E = *&v194[507];
  *(&xmmword_2A193C1F0 + 14) = *&v194[499];
  xmmword_2A193C271 = *&v194[451];
  unk_2A193C281 = *&v194[455];
  xmmword_2A193C291 = *&v194[459];
  byte_2A193C2A1 = v194[463];
  unk_2A193C231 = *&v194[435];
  unk_2A193C241 = *&v194[439];
  xmmword_2A193C251 = *&v194[443];
  unk_2A193C261 = *&v194[447];
  memcpy(&unk_2A193C2A2, v194, 0x6CBuLL);
  memcpy(&unk_2A193C96D, v193, 0x15C8uLL);
  memcpy(&g_Nav_Kalman_WD + 8389, v192, 0x15C8uLL);
  memcpy(&g_Nav_Kalman_WD + 13965, v198, 0x2258uLL);
  v20 = &g_Nav_Kalman_WD + 22757;
  *v20 = *v191;
  *(v20 + 4) = *&v191[16];
  *(&g_Nav_Kalman_WD + 22777) = v190;
  v21 = &g_Nav_Kalman_WD + 22793;
  v22 = v189[1];
  *v21 = v189[0];
  *(v21 + 1) = v22;
  *(v21 + 2) = v189[2];
  *(v21 + 6) = *&v189[3];
  *(&g_Nav_Kalman_WD + 22849) = v188;
  v23 = &g_Nav_Kalman_WD + 22865;
  v24 = v187[0];
  v25 = v187[1];
  v26 = v187[2];
  *(v23 + 6) = *&v187[3];
  *(v23 + 1) = v25;
  *(v23 + 2) = v26;
  *v23 = v24;
  *(&g_Nav_Kalman_WD + 22921) = v186;
  v27 = &g_Nav_Kalman_WD + 22937;
  *(v27 + 6) = *&v185[3];
  v28 = v185[2];
  v29 = v185[0];
  *(v27 + 1) = v185[1];
  *(v27 + 2) = v28;
  *v27 = v29;
  *(&g_Nav_Kalman_WD + 22993) = v184;
  v30 = (&g_Nav_Kalman_WD + 23009);
  v31 = v183[1];
  *v30 = v183[0];
  v30[1] = v31;
  v32 = v183[2];
  v33 = v183[3];
  v34 = v183[6];
  v35 = v183[4];
  v30[5] = v183[5];
  v30[6] = v34;
  v30[3] = v33;
  v30[4] = v35;
  v30[2] = v32;
  *(&g_Nav_Kalman_WD + 23121) = v182;
  v36 = &g_Nav_Kalman_WD + 23137;
  v37 = v181[0];
  v38 = v181[1];
  v39 = v181[2];
  *(v36 + 6) = *&v181[3];
  *(v36 + 1) = v38;
  *(v36 + 2) = v39;
  *v36 = v37;
  *(&g_Nav_Kalman_WD + 23193) = v180;
  v40 = &g_Nav_Kalman_WD + 23209;
  v41 = v179[18];
  v42 = v179[19];
  v43 = v179[20];
  *(v40 + 6) = *&v179[21];
  *(v40 + 1) = v42;
  *(v40 + 2) = v43;
  *v40 = v41;
  v44 = &g_Nav_Kalman_WD + 23265;
  v44[2] = 0;
  *(&g_Nav_Kalman_WD + 5817) = 0;
  *v44 = 0;
  *(&g_Nav_Kalman_WD + 23272) = 0;
  v45 = &g_Nav_Kalman_WD + 23273;
  v46 = *(&v179[16] + 8);
  *(v45 + 2) = *(&v179[17] + 1);
  *v45 = v46;
  v47 = &g_Nav_Kalman_WD + 23297;
  v48 = v179[15];
  *(v47 + 2) = *&v179[16];
  *v47 = v48;
  v49 = &g_Nav_Kalman_WD + 23321;
  v50 = *(&v179[14] + 4);
  *(v49 + 2) = HIDWORD(v179[14]);
  *v49 = v50;
  v51 = &g_Nav_Kalman_WD + 23333;
  v51[2] = 0;
  *(&g_Nav_Kalman_WD + 5834) = 0;
  *v51 = 0;
  v52 = &g_Nav_Kalman_WD + 23340;
  v53 = v179[10];
  v54 = v179[11];
  v55 = v179[12];
  *(v52 + 45) = *(&v179[12] + 13);
  *(v52 + 1) = v54;
  *(v52 + 2) = v55;
  *v52 = v53;
  v56 = &g_Nav_Kalman_WD + 23393;
  v57 = *(&v179[9] + 4);
  *(v56 + 2) = HIDWORD(v179[9]);
  *v56 = v57;
  v58 = &g_Nav_Kalman_WD + 23405;
  v58[2] = 0;
  *v58 = 0;
  *(&g_Nav_Kalman_WD + 5852) = 0;
  v59 = &g_Nav_Kalman_WD + 23412;
  v60 = v179[5];
  v61 = v179[6];
  v62 = v179[7];
  *(v59 + 45) = *(&v179[7] + 13);
  *(v59 + 1) = v61;
  *(v59 + 2) = v62;
  *v59 = v60;
  v63 = &g_Nav_Kalman_WD + 23465;
  v64 = *(&v179[4] + 4);
  *(v63 + 2) = HIDWORD(v179[4]);
  *v63 = v64;
  v65 = &g_Nav_Kalman_WD + 23477;
  v65[2] = 0;
  *v65 = 0;
  *(&g_Nav_Kalman_WD + 5870) = 0;
  v66 = (&g_Nav_Kalman_WD + 23484);
  v67 = v179[0];
  v68 = v179[1];
  v69 = v179[2];
  *(v66 + 45) = *(&v179[2] + 13);
  v66[1] = v68;
  v66[2] = v69;
  *v66 = v67;
  *(&g_Nav_Kalman_WD + 23545) = v178;
  v70 = &g_Nav_Kalman_WD + 23561;
  v71 = v177[0];
  v72 = v177[1];
  v73 = v177[2];
  *(v70 + 6) = *&v177[3];
  *(v70 + 1) = v72;
  *(v70 + 2) = v73;
  *(&g_Nav_Kalman_WD + 23617) = v176;
  *v70 = v71;
  v74 = &g_Nav_Kalman_WD + 23633;
  v75 = v175[7];
  v76 = v175[8];
  v77 = v175[9];
  *(v74 + 6) = *&v175[10];
  *(v74 + 1) = v76;
  *(v74 + 2) = v77;
  *v74 = v75;
  v78 = &g_Nav_Kalman_WD + 23689;
  v79 = *(&v175[6] + 4);
  *(v78 + 2) = HIDWORD(v175[6]);
  *v78 = v79;
  v80 = &g_Nav_Kalman_WD + 23701;
  v80[2] = 0;
  *v80 = 0;
  *(&g_Nav_Kalman_WD + 5926) = 0;
  v81 = (&g_Nav_Kalman_WD + 23708);
  v82 = v175[2];
  v83 = v175[3];
  v84 = v175[4];
  *(v81 + 45) = *(&v175[4] + 13);
  v81[1] = v83;
  v81[2] = v84;
  *v81 = v82;
  v85 = (&g_Nav_Kalman_WD + 23769);
  v86 = v172;
  v87 = v173;
  *(v85 + 63) = *(v175 + 15);
  v88 = v174;
  v89 = v175[0];
  *(&g_Nav_Kalman_WD + 23848) = 0;
  v85[2] = v88;
  v85[3] = v89;
  *(&g_Nav_Kalman_WD + 23849) = v171;
  *v85 = v86;
  v85[1] = v87;
  v90 = (&g_Nav_Kalman_WD + 23865);
  v91 = v170[38];
  *v90 = v170[37];
  v90[1] = v91;
  v92 = v170[39];
  v93 = v170[40];
  v94 = v170[43];
  v95 = v170[41];
  v90[5] = v170[42];
  v90[6] = v94;
  v90[3] = v93;
  v90[4] = v95;
  v90[2] = v92;
  v96 = &g_Nav_Kalman_WD + 23977;
  v97 = *(&v170[36] + 4);
  *(v96 + 2) = HIDWORD(v170[36]);
  *v96 = v97;
  v98 = &g_Nav_Kalman_WD + 23989;
  v98[2] = 0;
  *v98 = 0;
  *(&g_Nav_Kalman_WD + 5998) = 0;
  v99 = &g_Nav_Kalman_WD + 23996;
  v100 = v170[30];
  *v99 = v170[29];
  *(v99 + 1) = v100;
  v101 = v170[31];
  v102 = v170[32];
  v103 = v170[33];
  v104 = v170[34];
  *(v99 + 94) = *(&v170[34] + 14);
  *(v99 + 4) = v103;
  *(v99 + 5) = v104;
  *(v99 + 2) = v101;
  *(v99 + 3) = v102;
  v105 = &g_Nav_Kalman_WD + 24098;
  v105[32] = 0;
  *v105 = 0u;
  *(v105 + 1) = 0u;
  memcpy(&g_Nav_Kalman_WD + 24131, v170, 0x1C7uLL);
  v106 = &g_Nav_Kalman_WD + 24586;
  *v106 = *&v169[13];
  *(v106 + 2) = DWORD2(v169[13]);
  v107 = &g_Nav_Kalman_WD + 24598;
  v108 = v169[11];
  *(v107 + 10) = v169[10];
  *(v107 + 11) = v108;
  *(v107 + 191) = *(&v169[11] + 15);
  v109 = v169[7];
  *(v107 + 6) = v169[6];
  *(v107 + 7) = v109;
  v110 = v169[9];
  *(v107 + 8) = v169[8];
  *(v107 + 9) = v110;
  v111 = v169[3];
  *(v107 + 2) = v169[2];
  *(v107 + 3) = v111;
  v112 = v169[5];
  *(v107 + 4) = v169[4];
  *(v107 + 5) = v112;
  v113 = v169[1];
  *v107 = v169[0];
  *(v107 + 1) = v113;
  v114 = (&g_Nav_Kalman_WD + 24797);
  v115 = *(&v168[3] + 4);
  v116 = *(&v168[5] + 4);
  v114[2] = *(&v168[4] + 4);
  v114[3] = v116;
  *(v114 + 60) = v168[6];
  *v114 = *(&v168[2] + 4);
  v114[1] = v115;
  v117 = &g_Nav_Kalman_WD + 24873;
  *v117 = 0;
  v117[2] = 0;
  *(&g_Nav_Kalman_WD + 24876) = 0;
  v118 = &g_Nav_Kalman_WD + 24877;
  *v118 = 0;
  v118[2] = 0;
  *(&g_Nav_Kalman_WD + 6220) = 0;
  *(&g_Nav_Kalman_WD + 24884) = 0;
  v119 = &g_Nav_Kalman_WD + 24885;
  *v119 = 0;
  v119[2] = 0;
  *(&g_Nav_Kalman_WD + 6222) = 0;
  *(&g_Nav_Kalman_WD + 24892) = 0;
  v120 = &g_Nav_Kalman_WD + 24893;
  *v120 = 0;
  v120[2] = 0;
  *(&g_Nav_Kalman_WD + 6224) = 0;
  *(&g_Nav_Kalman_WD + 24900) = 0;
  v121 = &g_Nav_Kalman_WD + 24901;
  *v121 = 0;
  v121[2] = 0;
  *(&g_Nav_Kalman_WD + 6226) = 0;
  *(&g_Nav_Kalman_WD + 24908) = 0;
  v122 = &g_Nav_Kalman_WD + 24909;
  v122[2] = 0;
  *v122 = 0;
  *(&g_Nav_Kalman_WD + 6228) = 0;
  *(&g_Nav_Kalman_WD + 24916) = 0;
  v123 = &g_Nav_Kalman_WD + 24917;
  v123[2] = 0;
  *v123 = 0;
  *(&g_Nav_Kalman_WD + 6230) = 0;
  *(&g_Nav_Kalman_WD + 24924) = 0;
  v124 = &g_Nav_Kalman_WD + 24925;
  v124[2] = 0;
  *v124 = 0;
  *(&g_Nav_Kalman_WD + 6232) = 0;
  *(&g_Nav_Kalman_WD + 24932) = 0;
  v125 = &g_Nav_Kalman_WD + 24933;
  v125[2] = 0;
  *v125 = 0;
  *(&g_Nav_Kalman_WD + 6234) = 0;
  *(&g_Nav_Kalman_WD + 24940) = 0;
  v126 = &g_Nav_Kalman_WD + 24941;
  v126[2] = 0;
  *v126 = 0;
  *(&g_Nav_Kalman_WD + 6236) = 0;
  *(&g_Nav_Kalman_WD + 24948) = 0;
  v127 = &g_Nav_Kalman_WD + 24949;
  v127[2] = 0;
  *v127 = 0;
  *(&g_Nav_Kalman_WD + 6238) = 0;
  *(&g_Nav_Kalman_WD + 24956) = 0;
  v128 = &g_Nav_Kalman_WD + 24957;
  v128[2] = 0;
  *v128 = 0;
  *(&g_Nav_Kalman_WD + 6240) = 0;
  *(&g_Nav_Kalman_WD + 24964) = 0;
  v129 = &g_Nav_Kalman_WD + 24965;
  v129[2] = 0;
  *v129 = 0;
  *(&g_Nav_Kalman_WD + 6242) = 0;
  *(&g_Nav_Kalman_WD + 24972) = 0;
  v130 = &g_Nav_Kalman_WD + 24973;
  v130[2] = 0;
  *v130 = 0;
  *(&g_Nav_Kalman_WD + 6244) = 0;
  *(&g_Nav_Kalman_WD + 24980) = 0;
  v131 = &g_Nav_Kalman_WD + 24981;
  v131[2] = 0;
  *v131 = 0;
  *(&g_Nav_Kalman_WD + 6246) = 0;
  *(&g_Nav_Kalman_WD + 24988) = 0;
  v132 = &g_Nav_Kalman_WD + 24989;
  v132[2] = 0;
  *v132 = 0;
  *(&g_Nav_Kalman_WD + 6248) = 0;
  *(&g_Nav_Kalman_WD + 24996) = 0;
  v133 = &g_Nav_Kalman_WD + 24997;
  v133[2] = 0;
  *v133 = 0;
  *(&g_Nav_Kalman_WD + 6250) = 0;
  *(&g_Nav_Kalman_WD + 25004) = 0;
  v134 = &g_Nav_Kalman_WD + 25005;
  v134[2] = 0;
  *v134 = 0;
  *(&g_Nav_Kalman_WD + 6252) = 0;
  *(&g_Nav_Kalman_WD + 25012) = 0;
  v135 = &g_Nav_Kalman_WD + 25013;
  v135[2] = 0;
  *v135 = 0;
  *(&g_Nav_Kalman_WD + 6254) = 0;
  *(&g_Nav_Kalman_WD + 25020) = 0;
  v136 = &g_Nav_Kalman_WD + 25021;
  v136[2] = 0;
  *v136 = 0;
  *(&g_Nav_Kalman_WD + 6256) = 0;
  *(&g_Nav_Kalman_WD + 25028) = 0;
  v137 = &g_Nav_Kalman_WD + 25029;
  v137[2] = 0;
  *v137 = 0;
  *(&g_Nav_Kalman_WD + 6258) = 0;
  *(&g_Nav_Kalman_WD + 25036) = 0;
  v138 = &g_Nav_Kalman_WD + 25037;
  v138[2] = 0;
  *v138 = 0;
  *(&g_Nav_Kalman_WD + 6260) = 0;
  *(&g_Nav_Kalman_WD + 25044) = 0;
  v139 = &g_Nav_Kalman_WD + 25045;
  v139[2] = 0;
  *v139 = 0;
  *(&g_Nav_Kalman_WD + 6262) = 0;
  *(&g_Nav_Kalman_WD + 25052) = 0;
  v140 = &g_Nav_Kalman_WD + 25053;
  v140[2] = 0;
  *v140 = 0;
  *(&g_Nav_Kalman_WD + 6264) = 0;
  *(&g_Nav_Kalman_WD + 25060) = 0;
  v141 = &g_Nav_Kalman_WD + 25061;
  v141[2] = 0;
  *v141 = 0;
  *(&g_Nav_Kalman_WD + 6266) = 0;
  *(&g_Nav_Kalman_WD + 25068) = 0;
  v142 = &g_Nav_Kalman_WD + 25069;
  v142[2] = 0;
  *v142 = 0;
  *(&g_Nav_Kalman_WD + 6268) = 0;
  *(&g_Nav_Kalman_WD + 25076) = 0;
  v143 = &g_Nav_Kalman_WD + 25077;
  v143[2] = 0;
  *v143 = 0;
  *(&g_Nav_Kalman_WD + 6270) = 0;
  *(&g_Nav_Kalman_WD + 25084) = 0;
  v144 = &g_Nav_Kalman_WD + 25085;
  v144[2] = 0;
  *v144 = 0;
  *(&g_Nav_Kalman_WD + 6272) = 0;
  *(&g_Nav_Kalman_WD + 25092) = 0;
  v145 = &g_Nav_Kalman_WD + 25093;
  v145[2] = 0;
  *v145 = 0;
  *(&g_Nav_Kalman_WD + 6274) = 0;
  *(&g_Nav_Kalman_WD + 25100) = 0;
  v146 = &g_Nav_Kalman_WD + 25101;
  v146[2] = 0;
  *v146 = 0;
  *(&g_Nav_Kalman_WD + 6276) = 0;
  *(&g_Nav_Kalman_WD + 25108) = 0;
  v147 = &g_Nav_Kalman_WD + 25109;
  v147[2] = 0;
  *v147 = 0;
  *(&g_Nav_Kalman_WD + 6278) = 0;
  *(&g_Nav_Kalman_WD + 25116) = 0;
  v148 = &g_Nav_Kalman_WD + 25117;
  v148[2] = 0;
  *v148 = 0;
  *(&g_Nav_Kalman_WD + 6280) = 0;
  *(&g_Nav_Kalman_WD + 25124) = 0;
  v149 = &g_Nav_Kalman_WD + 25125;
  v149[2] = 0;
  *v149 = 0;
  *(&g_Nav_Kalman_WD + 6282) = 0;
  *(&g_Nav_Kalman_WD + 25132) = 0;
  v150 = &g_Nav_Kalman_WD + 25133;
  v150[2] = 0;
  *v150 = 0;
  *(&g_Nav_Kalman_WD + 6284) = 0;
  *(&g_Nav_Kalman_WD + 25140) = 0;
  v151 = &g_Nav_Kalman_WD + 25141;
  v152 = v168[0];
  v153 = v168[1];
  *(v151 + 8) = v168[2];
  *v151 = v152;
  *(v151 + 1) = v153;
  memcpy(&g_Nav_Kalman_WD + 25177, v167, 0x199uLL);
  v154 = &g_Nav_Kalman_WD + 25586;
  *v154 = 0;
  *(v154 + 2) = 0;
  qword_2A1942268 = 0;
  xmmword_2A1942270 = v165;
  *(&dword_2A193BE80 + 12800) = v166;
  memcpy(&g_Nav_Kalman_WD + 25618, v164, 0x142uLL);
  *(&g_Nav_Kalman_WD + 6485) = 0;
  v155 = &g_Nav_Kalman_WD + 25944;
  *(v155 + 2) = 0u;
  *(v155 + 3) = 0u;
  v155[64] = 0;
  *v155 = 0u;
  *(v155 + 1) = 0u;
  v156 = (&g_Nav_Kalman_WD + 26009);
  *v156 = 0;
  *(v156 + 3) = 0;
  qword_2A1942410 = 0;
  *(&g_Nav_Kalman_WD + 26024) = 0;
  v157 = (&g_Nav_Kalman_WD + 26025);
  *(v157 + 3) = 0;
  *v157 = 0;
  qword_2A1942420 = 0;
  v158 = &g_Nav_Kalman_WD + 26040;
  v158[64] = 0;
  *(v158 + 2) = 0u;
  *(v158 + 3) = 0u;
  *v158 = 0u;
  *(v158 + 1) = 0u;
  v159 = (&g_Nav_Kalman_WD + 26105);
  *(v159 + 3) = 0;
  *v159 = 0;
  qword_2A1942470 = 0;
  *(&g_Nav_Kalman_WD + 26120) = 0;
  memcpy(&g_Nav_Kalman_WD + 26121, __src, 0x1498uLL);
  v160 = (&g_Nav_Kalman_WD + 31393);
  *v160 = 0;
  *(&g_Nav_Kalman_WD + 31400) = xmmword_299762350;
  *(&g_Nav_Kalman_WD + 31416) = xmmword_299762360;
  *(v160 + 3) = 0;
  qword_2A1943938 = 0;
  byte_2A19720C4 = 0;
  unk_2A19720BC = 0;
  unk_2A19720B4 = 0;
  if (qword_2A1972098)
  {
    bzero(qword_2A1972098, 0x5F70uLL);
  }

  memset(v192, 0, 275);
  memset(v198, 0, 408);
  memset(v195, 0, 24);
  memset(v170, 0, 24);
  memset(v194, 0, 22);
  memset(__src, 0, 288);
  memset(v193, 0, 584);
  memset(v167, 0, 33);
  memset(v164, 0, 24);
  memset(v169, 0, 22);
  g_Fused_Nav_WD = v169[0];
  *(&g_Fused_Nav_WD + 14) = *(v169 + 14);
  word_2A195469E = 0;
  byte_2A19546A0 = 0;
  memcpy(&unk_2A19546A1, v192, 0x120uLL);
  xmmword_2A19547C1 = 0u;
  unk_2A19547D1 = 0u;
  xmmword_2A19547E1 = 0u;
  unk_2A19547F1 = 0u;
  xmmword_2A1954801 = 0u;
  unk_2A1954811 = 0u;
  xmmword_2A1954821 = 0u;
  unk_2A1954831 = 0u;
  xmmword_2A1954841 = 0u;
  unk_2A1954851 = 0u;
  xmmword_2A1954861 = 0u;
  unk_2A1954871 = 0u;
  xmmword_2A1954881 = 0u;
  unk_2A1954891 = 0u;
  xmmword_2A19548A1 = 0u;
  byte_2A19548B1 = 0;
  memcpy(&unk_2A19548B2, v198, 0x198uLL);
  xmmword_2A1954A4A = v195[0];
  qword_2A1954A5A = *&v195[1];
  xmmword_2A1954A62 = v170[0];
  qword_2A1954A72 = *&v170[1];
  xmmword_2A1954A7A = *v194;
  *(&xmmword_2A1954A7A + 11) = *(&v194[2] + 3);
  byte_2A1954A95 = 0;
  word_2A1954A96 = 0;
  byte_2A1954A98 = 0;
  memcpy(&unk_2A1954A99, __src, 0x120uLL);
  xmmword_2A1954BB9 = 0u;
  unk_2A1954BC9 = 0u;
  xmmword_2A1954BD9 = 0u;
  unk_2A1954BE9 = 0u;
  xmmword_2A1954BF9 = 0u;
  unk_2A1954C09 = 0u;
  xmmword_2A1954C19 = 0u;
  unk_2A1954C29 = 0u;
  xmmword_2A1954C39 = 0u;
  unk_2A1954C49 = 0u;
  xmmword_2A1954C59 = 0u;
  unk_2A1954C69 = 0u;
  xmmword_2A1954C79 = 0u;
  unk_2A1954C89 = 0u;
  xmmword_2A1954C99 = 0u;
  byte_2A1954CA9 = 0;
  memcpy(&unk_2A1954CAA, v193, 0x198uLL);
  xmmword_2A1954E42 = *v167;
  qword_2A1954E52 = *&v167[16];
  xmmword_2A1954E5A = *v164;
  qword_2A1954E6A = *&v164[16];
  qword_2A1954E7A = 0;
  unk_2A1954E82 = 0;
  qword_2A1954E72 = 0;
  qword_2A1954E88 = 0;
  DWORD1(v193[38]) = 0;
  *(&v193[42] + 1) = 0;
  memset(v195, 0, 33);
  memset(v192, 0, 322);
  memset(v170, 0, 33);
  memset(__src, 0, 322);
  *v167 = 0;
  *&v167[3] = 0;
  memset(v194, 0, 322);
  LODWORD(v198[0]) = 0;
  *(v198 + 3) = 0;
  *(&v193[40] + 8) = 0u;
  *(&v193[41] + 8) = 0u;
  *(&v193[38] + 8) = 0u;
  *(&v193[39] + 8) = 0u;
  *(&v193[37] + 4) = 0u;
  *(&v193[36] + 8) = 0u;
  memset(v193, 0, 408);
  *&v167[7] = 0;
  bzero(v198 + 7, 0x324uLL);
  memcpy(&g_GNSS_Debug_Data, v193, 0x2B0uLL);
  xmmword_2A1951030 = 0u;
  unk_2A1951040 = 0u;
  xmmword_2A1951050 = 0u;
  unk_2A1951060 = 0u;
  xmmword_2A1951070 = 0u;
  unk_2A1951080 = 0u;
  unk_2A1951089 = 0u;
  xmmword_2A1951099 = v195[0];
  unk_2A19510A9 = v195[1];
  byte_2A19510B9 = v195[2];
  memcpy(&unk_2A19510BA, v192, 0x142uLL);
  xmmword_2A19511FC = 0u;
  unk_2A195120C = 0u;
  xmmword_2A195121C = 0u;
  unk_2A195122C = 0u;
  xmmword_2A195123C = 0u;
  unk_2A195124C = 0u;
  xmmword_2A195125C = 0u;
  unk_2A195126C = 0u;
  xmmword_2A195127C = 0u;
  unk_2A195128C = 0u;
  xmmword_2A195129C = 0u;
  *(&xmmword_2A195129C + 13) = 0;
  xmmword_2A19512B1 = v170[0];
  unk_2A19512C1 = v170[1];
  byte_2A19512D1 = v170[2];
  memcpy(&unk_2A19512D2, __src, 0x142uLL);
  xmmword_2A1951414 = 0u;
  unk_2A1951424 = 0u;
  xmmword_2A1951434 = 0u;
  unk_2A1951444 = 0u;
  xmmword_2A1951454 = 0u;
  unk_2A1951464 = 0u;
  xmmword_2A1951474 = 0u;
  unk_2A1951484 = 0u;
  xmmword_2A1951494 = 0u;
  unk_2A19514A4 = 0u;
  xmmword_2A19514B4 = 0u;
  *(&xmmword_2A19514B4 + 13) = 0;
  xmmword_2A19514C9 = *v167;
  unk_2A19514D9 = *&v167[16];
  byte_2A19514E9 = v167[32];
  memcpy(&unk_2A19514EA, v194, 0x142uLL);
  xmmword_2A195162C = 0u;
  unk_2A195163C = 0u;
  xmmword_2A195164C = 0u;
  unk_2A195165C = 0u;
  xmmword_2A195166C = 0u;
  unk_2A195167C = 0u;
  xmmword_2A195168C = 0u;
  unk_2A195169C = 0u;
  xmmword_2A19516AC = 0u;
  unk_2A19516BC = 0u;
  xmmword_2A19516CC = 0u;
  *(&xmmword_2A19516CC + 13) = 0;
  result = memcpy(&unk_2A19516E1, v198, 0x32BuLL);
  v162 = *MEMORY[0x29EDCA608];
  return result;
}

char *GNSS_Log_p_list_Ptr_Mismatch(char *result, const void *a2, const void *a3)
{
  v20 = *MEMORY[0x29EDCA608];
  if (a2 != a3)
  {
    v4 = v19;
    v17 = v19;
    v18 = &v20;
    v16[1] = v19;
    v5 = 69;
    v6 = 1u;
    do
    {
      v16[0] = v4 + 1;
      *v4 = v5;
      v4 = v16[0];
      if (v16[0] >= v18)
      {
        v4 = v17;
        v16[0] = v17;
      }

      v5 = aErrorPListCorr[v6++];
    }

    while (v6 != 30);
    v7 = *result;
    if (*result)
    {
      v8 = (result + 1);
      do
      {
        v16[0] = v4 + 1;
        *v4 = v7;
        v4 = v16[0];
        if (v16[0] >= v18)
        {
          v4 = v17;
          v16[0] = v17;
        }

        v9 = *v8++;
        v7 = v9;
      }

      while (v9);
    }

    v10 = 0;
    v11 = 58;
    do
    {
      v16[0] = v4 + 1;
      *v4 = v11;
      v4 = v16[0];
      if (v16[0] >= v18)
      {
        v4 = v17;
        v16[0] = v17;
      }

      v11 = asc_2997CB0A0[++v10];
    }

    while (v10 != 2);
    sprintf_p(v16, a2);
    v12 = 0;
    v13 = 32;
    v14 = v16[0];
    do
    {
      v16[0] = v14 + 1;
      *v14 = v13;
      v14 = v16[0];
      if (v16[0] >= v18)
      {
        v14 = v17;
        v16[0] = v17;
      }

      v13 = asc_2997CB0A3[++v12];
    }

    while (v12 != 4);
    sprintf_p(v16, a3);
    *v16[0] = 0;
    result = EvCrt_v("%s", v19);
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GNSS_Validate_p_list(uint64_t result, const char *a2)
{
  v3 = result;
  v7 = *MEMORY[0x29EDCA608];
  v4 = *(result + 8);
  if (v4 != qword_2A1972440 || *(result + 16) != qword_2A1972448 || *(result + 24) != xmmword_2A1972450 || *(result + 40) != qword_2A1972460 || *(result + 48) != qword_2A1972468 || *(result + 56) != xmmword_2A1972470 || *(result + 72) != qword_2A1972480 || *(result + 80) != xmmword_2A1972488 || *(result + 96) != qword_2A1972498 || *(result + 104) != qword_2A19724A0 || *(result + 112) != qword_2A19724A8 || *(result + 120) != xmmword_2A19724B0 || *(result + 136) != qword_2A19724C0 || *(result + 144) != xmmword_2A19724C8 || *(result + 160) != qword_2A19724D8 || *(result + 168) != qword_2A19724E0 || *(result + 176) != qword_2A19724E8 || *(result + 184) != xmmword_2A19724F0 || *(result + 200) != qword_2A1972500 || *(result + 208) != qword_2A1972508 || *(result + 216) != qword_2A1972510 || *(result + 232) != qword_2A1972520 || *(result + 240) != qword_2A1972528 || *(result + 248) != qword_2A1972530 || *(result + 264) != qword_2A1972540 || *(result + 272) != qword_2A1972548 || *(result + 280) != xmmword_2A1972550 || *(result + 296) != qword_2A1972560 || *(result + 304) != qword_2A1972568 || *(result + 312) != xmmword_2A1972570 || *(result + 328) != qword_2A1972580 || *(result + 336) != qword_2A1972588 || *(result + 344) != xmmword_2A1972590 || *(result + 360) != qword_2A19725A0 || *(result + 368) != qword_2A19725A8 || *(result + 376) != xmmword_2A19725B0 || *(result + 392) != qword_2A19725C0)
  {
    GNSS_Log_p_list_Ptr_Mismatch("DBtt", v4, qword_2A1972440);
    GNSS_Log_p_list_Ptr_Mismatch("DBrm", v3[2], qword_2A1972448);
    GNSS_Log_p_list_Ptr_Mismatch("DBsf", v3[3], xmmword_2A1972450);
    GNSS_Log_p_list_Ptr_Mismatch("DBae", v3[4], *(&xmmword_2A1972450 + 1));
    GNSS_Log_p_list_Ptr_Mismatch("DBaa", v3[5], qword_2A1972460);
    GNSS_Log_p_list_Ptr_Mismatch("DBts", v3[6], qword_2A1972468);
    GNSS_Log_p_list_Ptr_Mismatch("DBnm", v3[7], xmmword_2A1972470);
    GNSS_Log_p_list_Ptr_Mismatch("DBcr", v3[8], *(&xmmword_2A1972470 + 1));
    GNSS_Log_p_list_Ptr_Mismatch("DBss", v3[9], qword_2A1972480);
    GNSS_Log_p_list_Ptr_Mismatch("DBgs", v3[10], xmmword_2A1972488);
    GNSS_Log_p_list_Ptr_Mismatch("DBns", v3[11], *(&xmmword_2A1972488 + 1));
    GNSS_Log_p_list_Ptr_Mismatch("DBst", v3[12], qword_2A1972498);
    GNSS_Log_p_list_Ptr_Mismatch("DBtm", v3[13], qword_2A19724A0);
    GNSS_Log_p_list_Ptr_Mismatch("DBsn", v3[14], qword_2A19724A8);
    GNSS_Log_p_list_Ptr_Mismatch("DBsa", v3[16], *(&xmmword_2A19724B0 + 1));
    GNSS_Log_p_list_Ptr_Mismatch("DBsi", v3[15], xmmword_2A19724B0);
    GNSS_Log_p_list_Ptr_Mismatch("DBsc", v3[17], qword_2A19724C0);
    GNSS_Log_p_list_Ptr_Mismatch("DBsa", v3[18], xmmword_2A19724C8);
    GNSS_Log_p_list_Ptr_Mismatch("MEsd", v3[20], qword_2A19724D8);
    GNSS_Log_p_list_Ptr_Mismatch("GMsd", v3[21], qword_2A19724E0);
    GNSS_Log_p_list_Ptr_Mismatch("NKsd", v3[22], qword_2A19724E8);
    GNSS_Log_p_list_Ptr_Mismatch("DDsd", v3[23], xmmword_2A19724F0);
    GNSS_Log_p_list_Ptr_Mismatch("STsd", v3[24], *(&xmmword_2A19724F0 + 1));
    GNSS_Log_p_list_Ptr_Mismatch("PPsd", v3[25], qword_2A1972500);
    GNSS_Log_p_list_Ptr_Mismatch("SAsd", v3[26], qword_2A1972508);
    GNSS_Log_p_list_Ptr_Mismatch("FNsd", v3[27], qword_2A1972510);
    GNSS_Log_p_list_Ptr_Mismatch("NKwd", v3[29], qword_2A1972520);
    GNSS_Log_p_list_Ptr_Mismatch("DDwd", v3[30], qword_2A1972528);
    GNSS_Log_p_list_Ptr_Mismatch("STwd", v3[31], qword_2A1972530);
    GNSS_Log_p_list_Ptr_Mismatch("SAwd", v3[33], qword_2A1972540);
    GNSS_Log_p_list_Ptr_Mismatch("FNwd", v3[34], qword_2A1972548);
    GNSS_Log_p_list_Ptr_Mismatch("GNdd", v3[35], xmmword_2A1972550);
    GNSS_Log_p_list_Ptr_Mismatch("Vers", v3[36], *(&xmmword_2A1972550 + 1));
    GNSS_Log_p_list_Ptr_Mismatch("GNcf", v3[37], qword_2A1972560);
    GNSS_Log_p_list_Ptr_Mismatch("GNnd", v3[38], qword_2A1972568);
    GNSS_Log_p_list_Ptr_Mismatch("GNdd", v3[39], xmmword_2A1972570);
    GNSS_Log_p_list_Ptr_Mismatch("NVrm", v3[40], *(&xmmword_2A1972570 + 1));
    GNSS_Log_p_list_Ptr_Mismatch("NArm", v3[41], qword_2A1972580);
    GNSS_Log_p_list_Ptr_Mismatch("NVrs", v3[42], qword_2A1972588);
    GNSS_Log_p_list_Ptr_Mismatch("Meas", v3[43], xmmword_2A1972590);
    GNSS_Log_p_list_Ptr_Mismatch("Ctrl", v3[44], *(&xmmword_2A1972590 + 1));
    GNSS_Log_p_list_Ptr_Mismatch("NMEA", v3[45], qword_2A19725A0);
    GNSS_Log_p_list_Ptr_Mismatch("NDbg", v3[46], qword_2A19725A8);
    GNSS_Log_p_list_Ptr_Mismatch("ELog", v3[47], xmmword_2A19725B0);
    GNSS_Log_p_list_Ptr_Mismatch("GDbg", v3[48], *(&xmmword_2A19725B0 + 1));
    strlcpy(__dst, a2, 0x69uLL);
    strlcat(__dst, ": p_list DB corrupted!", 0x80uLL);
    result = gn_report_assertion_failure(__dst);
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void _GLOBAL__sub_I_GNSS_Core_Data_cpp()
{
  v50 = *MEMORY[0x29EDCA608];
  g_GN_GPS_Data_p_list = 0u;
  *&qword_2A1926910 = 0u;
  unk_2A1926920 = 0u;
  *&qword_2A1926930 = 0u;
  xmmword_2A1926940 = 0u;
  *&qword_2A1926950 = 0u;
  xmmword_2A1926960 = 0u;
  *&qword_2A1926970 = 0u;
  xmmword_2A1926980 = 0u;
  *&qword_2A1926990 = 0u;
  xmmword_2A19269A0 = 0u;
  *&qword_2A19269B0 = 0u;
  xmmword_2A19269C0 = 0u;
  *algn_2A19269D8 = 0u;
  *(&xmmword_2A19269E0 + 8) = 0u;
  *&qword_2A19269F8 = 0u;
  unk_2A1926A10 = 0u;
  xmmword_2A1926A20 = 0u;
  xmmword_2A1926A30 = 0u;
  xmmword_2A1926A40 = 0u;
  xmmword_2A1926A50 = 0u;
  xmmword_2A1926A60 = 0u;
  v0 = &g_DB_SV_Subframes;
  xmmword_2A1926A70 = 0u;
  xmmword_2A1926A80 = 0u;
  v1 = 2688;
  do
  {
    *v0 = 0;
    *(v0 + 52) = 0;
    v0 += 14;
    v1 -= 56;
  }

  while (v1);
  qword_2A19645C0 = 0;
  *algn_2A19645C8 = 0;
  qword_2A19645D0 = 0;
  g_DB_Acq_Aid_Table = 0u;
  unk_2A197AA28 = 0u;
  unk_2A197AA35 = 0u;
  qword_2A197AA48 = 0x200000000;
  dword_2A197AA50 = 5;
  v2 = &xmmword_2A197AA5C;
  v3 = 3936;
  do
  {
    *(v2 - 2) = 0;
    *(v2 - 4) = 0;
    *v2 = 0uLL;
    v2[1] = 0uLL;
    *(v2 + 29) = 0;
    v2 += 3;
    v3 -= 48;
  }

  while (v3);
  qword_2A197C2F0 = 0;
  bzero(&unk_2A197B9B4, 0x85DuLL);
  *(&xmmword_2A197C244 + 9) = 0u;
  xmmword_2A197C244 = 0u;
  xmmword_2A197C234 = 0u;
  xmmword_2A197C224 = 0u;
  xmmword_2A197C214 = 0u;
  xmmword_2A197C260 = 0u;
  *algn_2A197C270 = 0u;
  xmmword_2A197C280 = 0u;
  unk_2A197C290 = 0u;
  xmmword_2A197C2A0 = 0u;
  unk_2A197C2B0 = 0u;
  xmmword_2A197C2C0 = 0u;
  unk_2A197C2D0 = 0u;
  unk_2A197C2DF = 0u;
  xmmword_2A197C6F8 = 0u;
  *(&xmmword_2A197C6F8 + 13) = 0;
  qword_2A197C720 = 0;
  dword_2A197C728 = 0;
  *&algn_2A197C708[8] = 0u;
  unk_2A197C72C = 0x500000002;
  dword_2A197C73C = 0;
  word_2A197C740 = 0;
  dword_2A197CAF8 = 0;
  word_2A197CAFC = 0;
  dword_2A197C734 = 0;
  *(&dword_2A197C734 + 3) = 0;
  xmmword_2A197C748 = 0u;
  unk_2A197C758 = 0u;
  xmmword_2A197C768 = 0u;
  unk_2A197C778 = 0u;
  xmmword_2A197C788 = 0u;
  unk_2A197C798 = 0u;
  xmmword_2A197C7A8 = 0u;
  unk_2A197C7B8 = 0u;
  xmmword_2A197C7C8 = 0u;
  unk_2A197C7D8 = 0u;
  xmmword_2A197C7E8 = 0u;
  unk_2A197C7F8 = 0u;
  xmmword_2A197C808 = 0u;
  unk_2A197C818 = 0u;
  xmmword_2A197C828 = 0u;
  unk_2A197C838 = 0u;
  xmmword_2A197C848 = 0u;
  unk_2A197C858 = 0u;
  xmmword_2A197C868 = 0u;
  unk_2A197C878 = 0u;
  xmmword_2A197C888 = 0u;
  *(&xmmword_2A197C888 + 15) = 0u;
  word_2A197C988 = 0;
  xmmword_2A197C968 = 0u;
  unk_2A197C978 = 0u;
  xmmword_2A197C948 = 0u;
  unk_2A197C958 = 0u;
  xmmword_2A197C928 = 0u;
  unk_2A197C938 = 0u;
  xmmword_2A197C908 = 0u;
  unk_2A197C918 = 0u;
  xmmword_2A197C8E8 = 0u;
  unk_2A197C8F8 = 0u;
  xmmword_2A197C8C8 = 0u;
  unk_2A197C8D8 = 0u;
  xmmword_2A197C8A8 = 0u;
  unk_2A197C8B8 = 0u;
  xmmword_2A197C990 = 0u;
  unk_2A197C9A0 = 0u;
  xmmword_2A197C9B0 = 0u;
  unk_2A197C9C0 = 0u;
  xmmword_2A197C9D0 = 0u;
  unk_2A197C9E0 = 0u;
  xmmword_2A197C9F0 = 0u;
  unk_2A197CA00 = 0u;
  xmmword_2A197CA10 = 0u;
  unk_2A197CA20 = 0u;
  xmmword_2A197CA30 = 0u;
  unk_2A197CA40 = 0u;
  xmmword_2A197CA50 = 0u;
  unk_2A197CA60 = 0u;
  word_2A197CA70 = 0;
  unk_2A197CAE7 = 0u;
  xmmword_2A197CAC8 = 0u;
  unk_2A197CAD8 = 0u;
  xmmword_2A197CAA8 = 0u;
  unk_2A197CAB8 = 0u;
  xmmword_2A197CA88 = 0u;
  unk_2A197CA98 = 0u;
  xmmword_2A197CA78 = 0u;
  word_2A197CB10 = 0;
  xmmword_2A197CB00 = 0u;
  xmmword_2A197CB44 = 0u;
  unk_2A197CB54 = 0u;
  xmmword_2A197CB24 = 0u;
  unk_2A197CB34 = 0u;
  xmmword_2A197CB14 = 0u;
  word_2A197CB64 = 1;
  byte_2A197CB66 = 1;
  qword_2A197CBFC = 0;
  word_2A197CBF7 = 0;
  xmmword_2A197CBD7 = 0u;
  unk_2A197CBE7 = 0u;
  xmmword_2A197CBB7 = 0u;
  unk_2A197CBC7 = 0u;
  xmmword_2A197CB97 = 0u;
  unk_2A197CBA7 = 0u;
  xmmword_2A197CB77 = 0u;
  unk_2A197CB87 = 0u;
  xmmword_2A197CB67 = 0u;
  dword_2A197CC38 = 0;
  xmmword_2A197CC28 = 0u;
  xmmword_2A197CC18 = 0u;
  g_DB_GNSS_Soln = 0;
  unk_2A197A21C = 0u;
  unk_2A197A22C = 0x500000002;
  word_2A197A24E = 0;
  dword_2A197A250 = 0;
  dword_2A197A2CC = 0;
  byte_2A197A2D0 = 0;
  *&algn_2A197A2D1[1] = 0;
  *(&xmmword_2A197A238 + 13) = 0;
  xmmword_2A197A238 = 0u;
  xmmword_2A197A258 = 0u;
  unk_2A197A268 = 0u;
  xmmword_2A197A278 = 0u;
  unk_2A197A288 = 0u;
  xmmword_2A197A298 = 0u;
  unk_2A197A2A8 = 0u;
  xmmword_2A197A2B8 = 0u;
  *(&xmmword_2A197A2B8 + 15) = 0;
  byte_2A197A3EC = 0;
  dword_2A197A3F0 = 0;
  byte_2A197A3F4 = 0;
  dword_2A197A3F8 = 0;
  byte_2A197A3FC = 0;
  dword_2A197A400 = 0;
  byte_2A197A404 = 0;
  dword_2A197A408 = 0;
  byte_2A197A40C = 0;
  dword_2A197A410 = 0;
  byte_2A197A414 = 0;
  dword_2A197A418 = 0;
  byte_2A197A41C = 0;
  dword_2A197A420 = 0;
  byte_2A197A424 = 0;
  dword_2A197A428 = 0;
  byte_2A197A42C = 0;
  dword_2A197A430 = 0;
  byte_2A197A434 = 0;
  dword_2A197A438 = 0;
  byte_2A197A43C = 0;
  dword_2A197A440 = 0;
  byte_2A197A444 = 0;
  dword_2A197A448 = 0;
  byte_2A197A44C = 0;
  dword_2A197A450 = 0;
  byte_2A197A454 = 0;
  dword_2A197A458 = 0;
  byte_2A197A45C = 0;
  dword_2A197A460 = 0;
  byte_2A197A464 = 0;
  dword_2A197A468 = 0;
  byte_2A197A46C = 0;
  dword_2A197A470 = 0;
  byte_2A197A474 = 0;
  dword_2A197A478 = 0;
  byte_2A197A47C = 0;
  dword_2A197A480 = 0;
  byte_2A197A484 = 0;
  dword_2A197A488 = 0;
  byte_2A197A48C = 0;
  dword_2A197A490 = 0;
  byte_2A197A494 = 0;
  dword_2A197A498 = 0;
  byte_2A197A49C = 0;
  dword_2A197A4A0 = 0;
  byte_2A197A4A4 = 0;
  dword_2A197A4A8 = 0;
  byte_2A197A4AC = 0;
  dword_2A197A4B0 = 0;
  byte_2A197A4B4 = 0;
  dword_2A197A4B8 = 0;
  byte_2A197A4BC = 0;
  dword_2A197A4C0 = 0;
  byte_2A197A4C4 = 0;
  dword_2A197A4C8 = 0;
  byte_2A197A4CC = 0;
  dword_2A197A4D0 = 0;
  byte_2A197A4D4 = 0;
  dword_2A197A4D8 = 0;
  byte_2A197A4DC = 0;
  dword_2A197A4E0 = 0;
  byte_2A197A4E4 = 0;
  dword_2A197A4E8 = 0;
  byte_2A197A4EC = 0;
  dword_2A197A4F0 = 0;
  byte_2A197A4F4 = 0;
  dword_2A197A4F8 = 0;
  xmmword_2A197A2D8 = 0u;
  xmmword_2A197CC08 = 0u;
  xmmword_2A197A3A0 = 0u;
  unk_2A197A3D9 = 0u;
  xmmword_2A197A3C0 = 0u;
  unk_2A197A3D0 = 0u;
  xmmword_2A197A3B0 = 0u;
  word_2A197A9F8 = 0;
  xmmword_2A197A9E8 = 0u;
  xmmword_2A197AA00 = 0u;
  word_2A197AA10 = 0;
  unk_2A197A2E8 = 0u;
  unk_2A197A2F8 = 0u;
  unk_2A197A308 = 0u;
  unk_2A197A318 = 0u;
  unk_2A197A328 = 0u;
  unk_2A197A338 = 0u;
  unk_2A197A348 = 0u;
  unk_2A197A358 = 0u;
  unk_2A197A368 = 0u;
  unk_2A197A378 = 0u;
  unk_2A197A388 = 0u;
  unk_2A197A395 = 0;
  bzero(&unk_2A197A500, 0x4E2uLL);
  g_DB_Nav_Soln = 0;
  unk_2A1979A1C = 0u;
  unk_2A1979A2C = 0x500000002;
  word_2A1979A4E = 0;
  dword_2A1979A50 = 0;
  dword_2A1979ACC = 0;
  byte_2A1979AD0 = 0;
  *&algn_2A1979AD1[1] = 0;
  xmmword_2A1979A38 = 0u;
  *(&xmmword_2A1979A38 + 13) = 0;
  xmmword_2A1979A58 = 0u;
  unk_2A1979A68 = 0u;
  xmmword_2A1979A78 = 0u;
  unk_2A1979A88 = 0u;
  xmmword_2A1979A98 = 0u;
  unk_2A1979AA8 = 0u;
  xmmword_2A1979AB8 = 0u;
  *(&xmmword_2A1979AB8 + 15) = 0;
  byte_2A1979BEC = 0;
  dword_2A1979BF0 = 0;
  byte_2A1979BF4 = 0;
  dword_2A1979BF8 = 0;
  byte_2A1979BFC = 0;
  dword_2A1979C00 = 0;
  byte_2A1979C04 = 0;
  dword_2A1979C08 = 0;
  byte_2A1979C0C = 0;
  dword_2A1979C10 = 0;
  byte_2A1979C14 = 0;
  dword_2A1979C18 = 0;
  byte_2A1979C1C = 0;
  dword_2A1979C20 = 0;
  byte_2A1979C24 = 0;
  dword_2A1979C28 = 0;
  byte_2A1979C2C = 0;
  dword_2A1979C30 = 0;
  byte_2A1979C34 = 0;
  dword_2A1979C38 = 0;
  byte_2A1979C3C = 0;
  dword_2A1979C40 = 0;
  byte_2A1979C44 = 0;
  dword_2A1979C48 = 0;
  byte_2A1979C4C = 0;
  dword_2A1979C50 = 0;
  byte_2A1979C54 = 0;
  dword_2A1979C58 = 0;
  byte_2A1979C5C = 0;
  dword_2A1979C60 = 0;
  byte_2A1979C64 = 0;
  dword_2A1979C68 = 0;
  byte_2A1979C6C = 0;
  dword_2A1979C70 = 0;
  byte_2A1979C74 = 0;
  dword_2A1979C78 = 0;
  byte_2A1979C7C = 0;
  dword_2A1979C80 = 0;
  byte_2A1979C84 = 0;
  dword_2A1979C88 = 0;
  byte_2A1979C8C = 0;
  dword_2A1979C90 = 0;
  byte_2A1979C94 = 0;
  dword_2A1979C98 = 0;
  byte_2A1979C9C = 0;
  dword_2A1979CA0 = 0;
  byte_2A1979CA4 = 0;
  dword_2A1979CA8 = 0;
  byte_2A1979CAC = 0;
  dword_2A1979CB0 = 0;
  byte_2A1979CB4 = 0;
  dword_2A1979CB8 = 0;
  byte_2A1979CBC = 0;
  dword_2A1979CC0 = 0;
  byte_2A1979CC4 = 0;
  dword_2A1979CC8 = 0;
  byte_2A1979CCC = 0;
  dword_2A1979CD0 = 0;
  byte_2A1979CD4 = 0;
  dword_2A1979CD8 = 0;
  byte_2A1979CDC = 0;
  dword_2A1979CE0 = 0;
  byte_2A1979CE4 = 0;
  dword_2A1979CE8 = 0;
  byte_2A1979CEC = 0;
  dword_2A1979CF0 = 0;
  byte_2A1979CF4 = 0;
  dword_2A1979CF8 = 0;
  xmmword_2A1979AD8 = 0u;
  unk_2A1979BD0 = 0u;
  unk_2A1979BC0 = 0u;
  unk_2A1979BB0 = 0u;
  unk_2A1979BA0 = 0u;
  unk_2A1979BD9 = 0u;
  xmmword_2A197A1E8 = 0u;
  word_2A197A1F8 = 0;
  word_2A197A210 = 0;
  xmmword_2A197A200 = 0u;
  xmmword_2A1979AE8 = 0u;
  unk_2A1979AF8 = 0u;
  xmmword_2A1979B08 = 0u;
  unk_2A1979B18 = 0u;
  xmmword_2A1979B28 = 0u;
  unk_2A1979B38 = 0u;
  xmmword_2A1979B48 = 0u;
  unk_2A1979B58 = 0u;
  xmmword_2A1979B68 = 0u;
  unk_2A1979B78 = 0u;
  xmmword_2A1979B88 = 0u;
  *(&xmmword_2A1979B88 + 13) = 0;
  bzero(&unk_2A1979D00, 0x4E2uLL);
  qword_2A1956458 = 0;
  unk_2A1956460 = 0;
  word_2A1956468 = 0;
  qword_2A19564B8 = 0;
  unk_2A19564C0 = 0;
  word_2A19564C8 = 0;
  qword_2A1956518 = 0;
  unk_2A1956520 = 0;
  word_2A1956528 = 0;
  dword_2A1951BE4 = 0;
  word_2A1951BE8 = 0;
  dword_2A1951C00 = 0;
  byte_2A1951C04 = 0;
  dword_2A1951C28 = 0;
  g_G5K_ME_SD[0] = 0u;
  unk_2A1951A20 = 0u;
  xmmword_2A1951A30 = 0u;
  unk_2A1951A40 = 0u;
  xmmword_2A1951A50 = 0u;
  unk_2A1951A60 = 0u;
  xmmword_2A1951A70 = 0u;
  unk_2A1951A80 = 0u;
  xmmword_2A1951A90 = 0u;
  unk_2A1951AA0 = 0u;
  xmmword_2A1951AB0 = 0u;
  unk_2A1951AC0 = 0u;
  xmmword_2A1951AD0 = 0u;
  unk_2A1951AE0 = 0u;
  xmmword_2A1951AF0 = 0u;
  unk_2A1951B00 = 0u;
  xmmword_2A1951B10 = 0u;
  unk_2A1951B20 = 0u;
  xmmword_2A1951B30 = 0u;
  unk_2A1951B40 = 0u;
  xmmword_2A1951B50 = 0u;
  unk_2A1951B60 = 0u;
  xmmword_2A1951B70 = 0u;
  unk_2A1951B80 = 0u;
  unk_2A1951B89 = 0u;
  qword_2A1951BA2 = 0;
  qword_2A1951B9A = 0;
  *(&qword_2A1951BAA + 7) = 0;
  qword_2A1951BAA = 0;
  qword_2A1951BBC = 0;
  *(&qword_2A1951BBC + 5) = 0;
  qword_2A1951BD4 = 0;
  qword_2A1951BCC = 0;
  *(&qword_2A1951BD4 + 6) = 0;
  qword_2A1951BF4 = 0;
  qword_2A1951BEC = 0;
  *(&qword_2A1951BF4 + 7) = 0;
  qword_2A1951C18 = 0;
  *(&qword_2A1951C18 + 5) = 0;
  v4 = &qword_2A1951C30;
  v5 = 160;
  qword_2A1951C08 = 0;
  unk_2A1951C10 = 0;
  do
  {
    *(v4 - 4) = 0;
    *v4 = 0;
    *(v4 + 7) = 0;
    v4 = (v4 + 20);
    v5 -= 20;
  }

  while (v5);
  for (i = 0; i != 2688; i += 56)
  {
    v7 = g_G5K_ME_SD + i;
    *(v7 + 88) = 0;
    *(v7 + 356) = 0;
    *(&g_G5K_ME_SD[44] + i + 12) = 0;
    *(v7 + 362) = 0;
    v8 = (&g_G5K_ME_SD[45] + i + 8);
    *(v7 + 94) = 0;
    *(v7 + 372) = 0;
    *v8 = 0uLL;
  }

  for (j = 0; j != 1728; j += 36)
  {
    v10 = g_G5K_ME_SD + j;
    v10[3424] = 0;
    *(v10 + 213) = 0uLL;
    *(v10 + 212) = 0uLL;
  }

  for (k = 0; k != 960; k += 20)
  {
    v12 = g_G5K_ME_SD + k;
    *(v12 + 641) = 0;
    *(v12 + 640) = 0;
    *(v12 + 2568) = 0;
  }

  for (m = 0; m != 128; ++m)
  {
    *&g_G5K_ME_SD[m + 380] = 0;
    *(&g_G5K_ME_SD[m + 380] + 6) = 0;
  }

  v14 = &byte_2A1953A04;
  v15 = 2688;
  do
  {
    *(v14 - 13) = 0;
    *v14 = 0;
    v14 += 56;
    v15 -= 56;
  }

  while (v15);
  word_2A19545A8 = 0;
  dword_2A19545FC = 0;
  byte_2A1954600 = 0;
  xmmword_2A19545BC = 0u;
  unk_2A19545CC = 0u;
  xmmword_2A19545DC = 0u;
  *(&xmmword_2A19545DC + 14) = 0u;
  dword_2A195460C = 0;
  dword_2A1954604 = 0;
  *(&dword_2A1954604 + 3) = 0;
  xmmword_2A1954450 = 0u;
  unk_2A1954460 = 0u;
  xmmword_2A1954470 = 0u;
  unk_2A1954480 = 0u;
  xmmword_2A1954490 = 0u;
  unk_2A19544A0 = 0u;
  xmmword_2A19544B0 = 0u;
  unk_2A19544C0 = 0u;
  xmmword_2A19544D0 = 0u;
  unk_2A19544E0 = 0u;
  xmmword_2A19544F0 = 0u;
  unk_2A1954500 = 0u;
  xmmword_2A1954510 = 0u;
  unk_2A1954520 = 0u;
  xmmword_2A1954530 = 0u;
  unk_2A1954540 = 0u;
  xmmword_2A1954550 = 0u;
  unk_2A1954560 = 0u;
  xmmword_2A1954570 = 0u;
  unk_2A1954580 = 0u;
  xmmword_2A1954590 = 0u;
  *(&xmmword_2A1954590 + 15) = 0;
  *(&qword_2A19545AC + 6) = 0;
  qword_2A19545AC = 0;
  s_Nav_Kalman_SD::s_Nav_Kalman_SD(&g_Nav_Kalman_SD);
  dword_2A193BED4 = 0;
  byte_2A193BED8 = 0;
  *&algn_2A193BED9[1] = 0;
  qword_2A193C0D0 = 0;
  g_Nav_Kalman_WD = 0u;
  dword_2A193BE80 = 0;
  *&algn_2A193BE84[4] = 0u;
  *(&xmmword_2A193BE90 + 8) = 0u;
  unk_2A193BEA8 = 0u;
  *(&xmmword_2A193BEB0 + 8) = 0u;
  unk_2A193BEC1 = 0u;
  xmmword_2A193BEE0 = 0u;
  unk_2A193BEF0 = 0u;
  xmmword_2A193BF00 = 0u;
  unk_2A193BF10 = 0u;
  xmmword_2A193BF20 = 0u;
  unk_2A193BF30 = 0u;
  xmmword_2A193BF40 = 0u;
  unk_2A193BF50 = 0u;
  xmmword_2A193BF60 = 0u;
  unk_2A193BF70 = 0u;
  xmmword_2A193BF80 = 0u;
  unk_2A193BF90 = 0u;
  xmmword_2A193BFA0 = 0u;
  unk_2A193BFB0 = 0u;
  xmmword_2A193BFC0 = 0u;
  unk_2A193BFD0 = 0u;
  xmmword_2A193BFE0 = 0u;
  unk_2A193BFF0 = 0u;
  xmmword_2A193C000 = 0u;
  unk_2A193C010 = 0u;
  xmmword_2A193C020 = 0u;
  unk_2A193C030 = 0u;
  xmmword_2A193C040 = 0u;
  unk_2A193C050 = 0u;
  xmmword_2A193C060 = 0u;
  unk_2A193C070 = 0u;
  xmmword_2A193C080 = 0u;
  unk_2A193C090 = 0u;
  xmmword_2A193C0A0 = 0u;
  unk_2A193C0B0 = 0u;
  xmmword_2A193C0B9 = 0u;
  dword_2A193C0D8 = -1;
  word_2A193C0F6 = 0;
  dword_2A193C0F8 = 0;
  *(&qword_2A193C173 + 1) = 0;
  BYTE5(qword_2A193C173) = 0;
  *(&qword_2A193C173 + 7) = 0;
  *(&xmmword_2A193C0DC + 4) = 0u;
  unk_2A193C0ED = 0;
  *(&xmmword_2A193C0FC + 4) = 0u;
  unk_2A193C110 = 0u;
  *(&xmmword_2A193C11C + 4) = 0u;
  unk_2A193C130 = 0u;
  *(&xmmword_2A193C13C + 4) = 0u;
  *(&xmmword_2A193C14C + 4) = 0u;
  xmmword_2A193C160 = 0u;
  *(&xmmword_2A193C160 + 15) = 0;
  v16 = (&g_Nav_Kalman_WD + 22780);
  *(v16 + 5) = 0;
  *v16 = 0;
  v17 = (&g_Nav_Kalman_WD + 22852);
  *(v17 + 5) = 0;
  *v17 = 0;
  v18 = (&g_Nav_Kalman_WD + 22924);
  *v18 = 0;
  *(v18 + 5) = 0;
  v19 = (&g_Nav_Kalman_WD + 22996);
  *v19 = 0;
  *(v19 + 5) = 0;
  v20 = (&g_Nav_Kalman_WD + 23124);
  *v20 = 0;
  *(v20 + 5) = 0;
  *(&g_Nav_Kalman_WD + 5817) = 0;
  *(&g_Nav_Kalman_WD + 23272) = 0;
  v21 = (&g_Nav_Kalman_WD + 23196);
  *v21 = 0;
  *(v21 + 5) = 0;
  *(&g_Nav_Kalman_WD + 5834) = 0;
  v22 = &g_Nav_Kalman_WD + 23324;
  *v22 = 0;
  v22[8] = 0;
  *(&g_Nav_Kalman_WD + 5852) = 0;
  v23 = &g_Nav_Kalman_WD + 23396;
  v23[8] = 0;
  *v23 = 0;
  *(&g_Nav_Kalman_WD + 5870) = 0;
  v24 = &g_Nav_Kalman_WD + 23468;
  v24[8] = 0;
  *v24 = 0;
  v25 = (&g_Nav_Kalman_WD + 23548);
  *(v25 + 5) = 0;
  *v25 = 0;
  v26 = (&g_Nav_Kalman_WD + 23620);
  *(v26 + 5) = 0;
  *v26 = 0;
  *(&g_Nav_Kalman_WD + 5926) = 0;
  v27 = &g_Nav_Kalman_WD + 23692;
  v27[8] = 0;
  *v27 = 0;
  *(&g_Nav_Kalman_WD + 23848) = 0;
  v28 = (&g_Nav_Kalman_WD + 23852);
  *v28 = 0;
  *(v28 + 5) = 0;
  *(&g_Nav_Kalman_WD + 5998) = 0;
  *(&g_Nav_Kalman_WD + 24100) = 0;
  v29 = &g_Nav_Kalman_WD + 23980;
  v29[8] = 0;
  *v29 = 0;
  *(&xmmword_2A1941C92 + 14) = 0u;
  *(&g_Nav_Kalman_WD + 24127) = 0;
  *(&g_Nav_Kalman_WD + 24876) = 0;
  *(&g_Nav_Kalman_WD + 6220) = 0;
  *(&g_Nav_Kalman_WD + 24884) = 0;
  *(&g_Nav_Kalman_WD + 6222) = 0;
  *(&g_Nav_Kalman_WD + 24892) = 0;
  *(&g_Nav_Kalman_WD + 6224) = 0;
  *(&g_Nav_Kalman_WD + 24900) = 0;
  *(&g_Nav_Kalman_WD + 6226) = 0;
  *(&g_Nav_Kalman_WD + 24908) = 0;
  *(&g_Nav_Kalman_WD + 6228) = 0;
  *(&g_Nav_Kalman_WD + 24916) = 0;
  *(&g_Nav_Kalman_WD + 6230) = 0;
  *(&g_Nav_Kalman_WD + 24924) = 0;
  *(&g_Nav_Kalman_WD + 6232) = 0;
  *(&g_Nav_Kalman_WD + 24932) = 0;
  *(&g_Nav_Kalman_WD + 6234) = 0;
  *(&g_Nav_Kalman_WD + 24940) = 0;
  *(&g_Nav_Kalman_WD + 6236) = 0;
  *(&g_Nav_Kalman_WD + 24948) = 0;
  *(&g_Nav_Kalman_WD + 6238) = 0;
  *(&g_Nav_Kalman_WD + 24956) = 0;
  *(&g_Nav_Kalman_WD + 6240) = 0;
  *(&g_Nav_Kalman_WD + 24964) = 0;
  *(&g_Nav_Kalman_WD + 6242) = 0;
  *(&g_Nav_Kalman_WD + 24972) = 0;
  *(&g_Nav_Kalman_WD + 6244) = 0;
  *(&g_Nav_Kalman_WD + 24980) = 0;
  *(&g_Nav_Kalman_WD + 6246) = 0;
  *(&g_Nav_Kalman_WD + 24988) = 0;
  *(&g_Nav_Kalman_WD + 6248) = 0;
  *(&g_Nav_Kalman_WD + 24996) = 0;
  *(&g_Nav_Kalman_WD + 6250) = 0;
  *(&g_Nav_Kalman_WD + 25004) = 0;
  *(&g_Nav_Kalman_WD + 6252) = 0;
  *(&g_Nav_Kalman_WD + 25012) = 0;
  *(&g_Nav_Kalman_WD + 6254) = 0;
  *(&g_Nav_Kalman_WD + 25020) = 0;
  *(&g_Nav_Kalman_WD + 6256) = 0;
  *(&g_Nav_Kalman_WD + 25028) = 0;
  *(&g_Nav_Kalman_WD + 6258) = 0;
  *(&g_Nav_Kalman_WD + 25036) = 0;
  *(&g_Nav_Kalman_WD + 6260) = 0;
  *(&g_Nav_Kalman_WD + 25044) = 0;
  *(&g_Nav_Kalman_WD + 6262) = 0;
  *(&g_Nav_Kalman_WD + 25052) = 0;
  *(&g_Nav_Kalman_WD + 6264) = 0;
  *(&g_Nav_Kalman_WD + 25060) = 0;
  *(&g_Nav_Kalman_WD + 6266) = 0;
  *(&g_Nav_Kalman_WD + 25068) = 0;
  *(&g_Nav_Kalman_WD + 6268) = 0;
  *(&g_Nav_Kalman_WD + 25076) = 0;
  *(&g_Nav_Kalman_WD + 6270) = 0;
  *(&g_Nav_Kalman_WD + 25084) = 0;
  *(&g_Nav_Kalman_WD + 6272) = 0;
  *(&g_Nav_Kalman_WD + 25092) = 0;
  *(&g_Nav_Kalman_WD + 6274) = 0;
  *(&g_Nav_Kalman_WD + 25100) = 0;
  *(&g_Nav_Kalman_WD + 6276) = 0;
  *(&g_Nav_Kalman_WD + 25108) = 0;
  *(&g_Nav_Kalman_WD + 6278) = 0;
  *(&g_Nav_Kalman_WD + 25116) = 0;
  *(&g_Nav_Kalman_WD + 6280) = 0;
  *(&g_Nav_Kalman_WD + 25124) = 0;
  *(&g_Nav_Kalman_WD + 6282) = 0;
  *(&g_Nav_Kalman_WD + 25132) = 0;
  *(&g_Nav_Kalman_WD + 6284) = 0;
  *(&g_Nav_Kalman_WD + 25140) = 0;
  *(&g_Nav_Kalman_WD + 24857) = 0u;
  xmmword_2A1941F80 = 0u;
  unk_2A1941F70 = 0u;
  xmmword_2A1941F60 = 0u;
  *(&xmmword_2A1941F4D + 3) = 0u;
  *(&g_Nav_Kalman_WD + 6398) = 0;
  *(&g_Nav_Kalman_WD + 12798) = 0;
  *(&g_Nav_Kalman_WD + 26024) = 0;
  qword_2A1942410 = 0;
  v30 = &g_Nav_Kalman_WD + 25944;
  *v30 = 0u;
  *(v30 + 1) = 0u;
  *(v30 + 2) = 0u;
  *(v30 + 3) = 0u;
  v30[64] = 0;
  qword_2A1942470 = 0;
  *(&g_Nav_Kalman_WD + 26120) = 0;
  *(&g_Nav_Kalman_WD + 6508) = 0;
  *(&g_Nav_Kalman_WD + 25924) = 0u;
  v31 = &g_Nav_Kalman_WD + 26040;
  v31[64] = 0;
  *(v31 + 2) = 0u;
  *(v31 + 3) = 0u;
  *v31 = 0u;
  *(v31 + 1) = 0u;
  v32 = (&g_Nav_Kalman_WD + 25624);
  v32[17] = 0u;
  v32[18] = 0u;
  v32[15] = 0u;
  v32[16] = 0u;
  v32[13] = 0u;
  v32[14] = 0u;
  v32[11] = 0u;
  v32[12] = 0u;
  v32[9] = 0u;
  v32[10] = 0u;
  v32[7] = 0u;
  v32[8] = 0u;
  v32[5] = 0u;
  v32[6] = 0u;
  v32[3] = 0u;
  v32[4] = 0u;
  v32[1] = 0u;
  v32[2] = 0u;
  *v32 = 0u;
  byte_2A193C230 = 0;
  *(&xmmword_2A193C20E + 2) = 0u;
  unk_2A193C220 = 0u;
  xmmword_2A193C1F0 = 0u;
  unk_2A193C200 = 0u;
  xmmword_2A193C1D0 = 0u;
  unk_2A193C1E0 = 0u;
  xmmword_2A193C1B0 = 0u;
  unk_2A193C1C0 = 0u;
  xmmword_2A193C190 = 0u;
  unk_2A193C1A0 = 0u;
  *(&xmmword_2A193C17E + 2) = 0u;
  unk_2A193C234 = 0u;
  unk_2A193C244 = 0u;
  *(&xmmword_2A193C251 + 3) = 0u;
  unk_2A193C264 = 0u;
  *(&xmmword_2A193C271 + 3) = 0u;
  unk_2A193C284 = 0u;
  *(&xmmword_2A193C291 + 1) = 0u;
  bzero(&unk_2A193C2A8, 0x6C5uLL);
  bzero(&unk_2A193C970, 0x15C5uLL);
  bzero(&g_Nav_Kalman_WD + 8392, 0x15C5uLL);
  bzero(&g_Nav_Kalman_WD + 873, 0x2255uLL);
  v33 = &g_Nav_Kalman_WD + 22758;
  *(v33 + 15) = 0;
  *v33 = 0u;
  v34 = &g_Nav_Kalman_WD + 22796;
  *v34 = 0u;
  *(v34 + 1) = 0u;
  *(v34 + 2) = 0u;
  *(v34 + 45) = 0;
  v35 = &g_Nav_Kalman_WD + 22868;
  *v35 = 0u;
  *(v35 + 1) = 0u;
  *(v35 + 2) = 0u;
  *(v35 + 45) = 0;
  v36 = &g_Nav_Kalman_WD + 22940;
  *v36 = 0u;
  *(v36 + 1) = 0u;
  *(v36 + 2) = 0u;
  *(v36 + 45) = 0;
  v37 = (&g_Nav_Kalman_WD + 23012);
  *v37 = 0u;
  v37[1] = 0u;
  v37[2] = 0u;
  v37[3] = 0u;
  v37[4] = 0u;
  v37[5] = 0u;
  *(v37 + 93) = 0u;
  v38 = &g_Nav_Kalman_WD + 23140;
  *(v38 + 45) = 0;
  *(v38 + 1) = 0u;
  *(v38 + 2) = 0u;
  *v38 = 0u;
  v39 = &g_Nav_Kalman_WD + 23212;
  *v39 = 0u;
  *(v39 + 1) = 0u;
  *(v39 + 2) = 0u;
  *(v39 + 45) = 0;
  *(&xmmword_2A1941959 + 7) = 0u;
  *(&dword_2A193BE80 + 23280) = 0;
  v40 = &g_Nav_Kalman_WD + 23304;
  *v40 = 0u;
  v40[16] = 0;
  *(&xmmword_2A194199C + 4) = 0u;
  *(&xmmword_2A19419AC + 4) = 0u;
  xmmword_2A19419C0 = 0u;
  *(&unk_2A193BEA0 + 23344) = 0;
  v41 = &g_Nav_Kalman_WD + 23416;
  *v41 = 0u;
  *(v41 + 1) = 0u;
  *(v41 + 2) = 0u;
  v41[48] = 0;
  *(&g_Nav_Kalman_WD + 23529) = 0u;
  xmmword_2A1941A50 = 0u;
  *(&xmmword_2A1941A3C + 4) = 0u;
  *(&xmmword_2A1941A2C + 4) = 0u;
  v42 = &g_Nav_Kalman_WD + 23564;
  *(v42 + 45) = 0;
  *(v42 + 1) = 0u;
  *(v42 + 2) = 0u;
  *v42 = 0u;
  v43 = &g_Nav_Kalman_WD + 23636;
  *(v43 + 45) = 0;
  *(v43 + 1) = 0u;
  *(v43 + 2) = 0u;
  *v43 = 0u;
  *(&g_Nav_Kalman_WD + 23753) = 0u;
  xmmword_2A1941B30 = 0u;
  *(&xmmword_2A1941B1C + 4) = 0u;
  *(&xmmword_2A1941B0C + 4) = 0u;
  v44 = (&g_Nav_Kalman_WD + 23868);
  *(v44 + 93) = 0u;
  v44[4] = 0u;
  v44[5] = 0u;
  v44[2] = 0u;
  v44[3] = 0u;
  *v44 = 0u;
  v44[1] = 0u;
  *(&dword_2A193BED0 + 12000) = 0;
  xmmword_2A1941C80 = 0u;
  unk_2A1941C70 = 0u;
  xmmword_2A1941C60 = 0u;
  unk_2A1941C50 = 0u;
  xmmword_2A1941C40 = 0u;
  *(&xmmword_2A1941C2C + 4) = 0u;
  v45 = &g_Nav_Kalman_WD + 24136;
  *(v45 + 224) = 0;
  *(v45 + 26) = 0u;
  *(v45 + 27) = 0u;
  *(v45 + 24) = 0u;
  *(v45 + 25) = 0u;
  *(v45 + 22) = 0u;
  *(v45 + 23) = 0u;
  *(v45 + 20) = 0u;
  *(v45 + 21) = 0u;
  *(v45 + 18) = 0u;
  *(v45 + 19) = 0u;
  *(v45 + 16) = 0u;
  *(v45 + 17) = 0u;
  *(v45 + 14) = 0u;
  *(v45 + 15) = 0u;
  *(v45 + 12) = 0u;
  *(v45 + 13) = 0u;
  *(v45 + 10) = 0u;
  *(v45 + 11) = 0u;
  *(v45 + 8) = 0u;
  *(v45 + 9) = 0u;
  *(v45 + 6) = 0u;
  *(v45 + 7) = 0u;
  *(v45 + 4) = 0u;
  *(v45 + 5) = 0u;
  *(v45 + 2) = 0u;
  *(v45 + 3) = 0u;
  *v45 = 0u;
  *(v45 + 1) = 0u;
  v46 = &g_Nav_Kalman_WD + 24588;
  *(v46 + 4) = 0;
  *v46 = 0;
  v47 = &g_Nav_Kalman_WD + 24600;
  *v47 = 0u;
  *(v47 + 1) = 0u;
  *(v47 + 2) = 0u;
  *(v47 + 3) = 0u;
  *(v47 + 4) = 0u;
  *(v47 + 5) = 0u;
  *(v47 + 6) = 0u;
  *(v47 + 7) = 0u;
  *(v47 + 8) = 0u;
  *(v47 + 9) = 0u;
  *(v47 + 10) = 0u;
  *(v47 + 11) = 0u;
  *(v47 + 189) = 0;
  v48 = &g_Nav_Kalman_WD + 25144;
  *v48 = 0u;
  *(v48 + 1) = 0u;
  v48[32] = 0;
  *(&xmmword_2A193C000 + 12592) = 0;
  xmmword_2A1942250 = 0u;
  xmmword_2A1942240 = 0u;
  xmmword_2A1942230 = 0u;
  xmmword_2A1942220 = 0u;
  xmmword_2A1942210 = 0u;
  xmmword_2A1942200 = 0u;
  xmmword_2A19421F0 = 0u;
  xmmword_2A19421E0 = 0u;
  xmmword_2A19421D0 = 0u;
  xmmword_2A19421C0 = 0u;
  xmmword_2A19421B0 = 0u;
  xmmword_2A19421A0 = 0u;
  xmmword_2A1942190 = 0u;
  xmmword_2A1942180 = 0u;
  xmmword_2A1942170 = 0u;
  xmmword_2A1942160 = 0u;
  xmmword_2A1942150 = 0u;
  xmmword_2A1942140 = 0u;
  xmmword_2A1942130 = 0u;
  xmmword_2A1942120 = 0u;
  xmmword_2A1942110 = 0u;
  xmmword_2A1942100 = 0u;
  xmmword_2A19420F0 = 0u;
  xmmword_2A19420E0 = 0u;
  xmmword_2A19420D0 = 0u;
  *(&dword_2A193BE80 + 12800) = 0;
  xmmword_2A1942270 = 0u;
  bzero(&g_Nav_Kalman_WD + 1633, 0x1491uLL);
  *(&g_Nav_Kalman_WD + 31400) = xmmword_299762350;
  *(&g_Nav_Kalman_WD + 31416) = xmmword_299762360;
  *(&g_Nav_Kalman_WD + 7858) = 0;
  *(&g_Nav_Kalman_WD + 31436) = 0;
  *(&g_Nav_Kalman_WD + 31437) = 0;
  s_NA_Ram::s_NA_Ram(&g_NA_Ram);
  *&qword_2A19724E8 = 0u;
  *(&xmmword_2A19724F0 + 8) = 0u;
  xmmword_2A19724C8 = 0u;
  *&qword_2A19724D8 = 0u;
  *&qword_2A19724A8 = 0u;
  *(&xmmword_2A19724B0 + 8) = 0u;
  xmmword_2A1972488 = 0u;
  *&qword_2A1972498 = 0u;
  *&qword_2A1972468 = 0u;
  *(&xmmword_2A1972470 + 8) = 0u;
  *&qword_2A1972448 = 0u;
  *(&xmmword_2A1972450 + 8) = 0u;
  unk_2A1972438 = 0u;
  *&qword_2A1972510 = 0u;
  *&qword_2A1972520 = 0u;
  *&qword_2A1972530 = 0u;
  *&qword_2A1972548 = 0u;
  *(&xmmword_2A1972550 + 8) = 0u;
  *&qword_2A1972568 = 0u;
  *(&xmmword_2A1972570 + 8) = 0u;
  *&qword_2A1972588 = 0u;
  *(&xmmword_2A1972590 + 8) = 0u;
  *&qword_2A19725A8 = 0u;
  *(&xmmword_2A19725B0 + 8) = 0u;
  v49 = *MEMORY[0x29EDCA608];
}

double Inc_Local_Time(int a1, int a2, double *a3, __int16 *a4)
{
  v14 = *MEMORY[0x29EDCA608];
  v4 = 1000 * a2;
  v5 = *a3 * 1000.0;
  v6 = -0.5;
  if (v5 > 0.0)
  {
    v6 = 0.5;
  }

  v7 = v5 + v6;
  if (v7 <= 2147483650.0)
  {
    if (v7 >= -2147483650.0)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0x80000000;
    }
  }

  else
  {
    v8 = 0x7FFFFFFF;
  }

  v9 = v8 + a1;
  if (v9 >= v4)
  {
    v10 = *a4;
    do
    {
      v9 -= v4;
      ++v10;
    }

    while (v9 >= v4);
    *a4 = v10;
  }

  if (v9 < 0)
  {
    v11 = *a4;
    do
    {
      v9 += v4;
      --v11;
    }

    while (v9 < 0);
    *a4 = v11;
  }

  result = v9 * 0.001;
  *a3 = result;
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lsim07_01HandleFtaApiStatus(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim07_01HandleFtaApiStatus");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (g_GnsFtaCallback)
  {
    v4 = gnssOsa_Calloc("lsim07_01HandleFtaApiStatus", 65, 1, 0xCuLL);
    if (v4)
    {
      v5 = v4;
      *v4 = *(a1 + 12);
      v4[1] = 0;
      v4[2] = *(a1 + 16);
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v6 = mach_continuous_time();
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:API_STATUS =>FtaCB,Id,%u,Status,%u\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim07_01HandleFtaApiStatus", *v5, v5[2]);
        LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
      }

      g_GnsFtaCallback(0, 12, v5);
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        goto LABEL_12;
      }

      goto LABEL_13;
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:FTA\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 87, "lsim07_01HandleFtaApiStatus", 258);
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 2, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
LABEL_12:
    bzero(__str, 0x410uLL);
    v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v10, "LSM", 73, "lsim07_01HandleFtaApiStatus");
    LbsOsaTrace_WriteLog(0xCu, __str, v11, 4, 1);
  }

LABEL_13:
  v12 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t lsim07_02FtaCbInit(uint64_t result)
{
  v1 = result;
  v8 = *MEMORY[0x29EDCA608];
  if (result)
  {
LABEL_2:
    g_GnsFtaCallback = v1;
    goto LABEL_3;
  }

  if (g_GnsFtaCallback)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DeRegistering\n", (*&g_MacClockTicksToMsRelation * v3), "LSM", 73, "lsim07_02FtaCbInit", 513);
      result = LbsOsaTrace_WriteLog(0xCu, __str, v4, 4, 1);
    }

    goto LABEL_2;
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CbPtr\n", (*&g_MacClockTicksToMsRelation * v5), "LSM", 87, "lsim07_02FtaCbInit", 513);
    result = LbsOsaTrace_WriteLog(0xCu, __str, v6, 2, 1);
  }

LABEL_3:
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GNS_FtaInitialize(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "GNS_FtaInitialize");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  v4 = gnssOsa_Calloc("GNS_FtaInitialize", 113, 1, 0x18uLL);
  if (v4)
  {
    v4[3] = 11;
    *(v4 + 2) = a1;
    AgpsSendFsmMsg(131, 131, 8635139, v4);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "LSM", 73, "GNS_FtaInitialize");
      v7 = 1;
      LbsOsaTrace_WriteLog(0xCu, __str, v6, 4, 1);
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 6;
  }

  v8 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t GNS_FtaPulseInd(uint64_t a1, __int128 *a2)
{
  v29 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "GNS_FtaPulseInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (!a2)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      goto LABEL_12;
    }

    bzero(__str, 0x410uLL);
    v25 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:FTA,PulseTime,Id,%u\n", v25);
    goto LABEL_11;
  }

  if (*(a2 + 4) >= 2u)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:FTA,TrgSrc,%u,Id,%u\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 87, "GNS_FtaPulseInd", 515, *(a2 + 4), a1);
      LbsOsaTrace_WriteLog(0xCu, __str, v10, 2, 1);
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if ((*(a2 + 3) + 1) <= 1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      goto LABEL_12;
    }

    bzero(__str, 0x410uLL);
    v6 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v26 = *(a2 + 3);
    v27 = a1;
    v7 = "%10u %s%c %s: #%04hx ASST:FTA,PulseUncUs,%u,Id,%u\n";
LABEL_8:
    v8 = snprintf(__str, 0x40FuLL, v7, v6, "LSM", 87, "GNS_FtaPulseInd", 515, v26, v27);
LABEL_11:
    LbsOsaTrace_WriteLog(0xCu, __str, v8, 2, 1);
    goto LABEL_12;
  }

  if (*(a2 + 1) >= 0x93A80u)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
LABEL_12:
      if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
LABEL_18:
        v13 = 2;
        goto LABEL_19;
      }

LABEL_17:
      bzero(__str, 0x410uLL);
      v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v11, "LSM", 73, "GNS_FtaPulseInd");
      LbsOsaTrace_WriteLog(0xCu, __str, v12, 4, 1);
      goto LABEL_18;
    }

    bzero(__str, 0x410uLL);
    v6 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v26 = *(a2 + 1);
    v27 = a1;
    v7 = "%10u %s%c %s: #%04hx ASST:FTA,GpsTowSec,%u,Id,%u\n";
    goto LABEL_8;
  }

  v16 = gnssOsa_Calloc("GNS_FtaPulseInd", 194, 1, 0x28uLL);
  if (v16)
  {
    v17 = v16;
    v18 = *a2;
    *(v16 + 28) = *(a2 + 2);
    *(v16 + 12) = v18;
    *(v16 + 9) = a1;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v19 = mach_continuous_time();
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_FTA_PULSE_IND =>GNCP\n", (*&g_MacClockTicksToMsRelation * v19), "LSM", 73, "GNS_FtaPulseInd");
      LbsOsaTrace_WriteLog(0xCu, __str, v20, 4, 1);
    }

    AgpsSendFsmMsg(131, 134, 8595203, v17);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v21 = mach_continuous_time();
      v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v21), "LSM", 73, "GNS_FtaPulseInd");
      v13 = 1;
      LbsOsaTrace_WriteLog(0xCu, __str, v22, 4, 1);
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v23 = mach_continuous_time();
      v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v23), "LSM", 73, "GNS_FtaPulseInd");
      LbsOsaTrace_WriteLog(0xCu, __str, v24, 4, 1);
    }

    v13 = 6;
  }

LABEL_19:
  v14 = *MEMORY[0x29EDCA608];
  return v13;
}

void GLON_Alm_Calc_ECEF_PosVel(double *a1, double *a2, double *a3, int a4)
{
  v37 = *MEMORY[0x29EDCA608];
  v8 = a1[4];
  if (v8 > 3.14159265)
  {
    do
    {
      v8 = v8 + -6.28318531;
    }

    while (v8 > 3.14159265);
    a1[4] = v8;
  }

  if (v8 < -3.14159265)
  {
    do
    {
      v8 = v8 + 6.28318531;
    }

    while (v8 < -3.14159265);
    a1[4] = v8;
  }

  v9 = a1[1];
  v10 = v8;
  do
  {
    v11 = v10;
    v10 = v8 + v9 * sin(v10);
  }

  while (vabdd_f64(v11, v10) > 2.22044605e-15);
  v12 = sqrt(1.0 - v9 * v9);
  v13 = __sincos_stret(v10);
  v14 = atan2(v12 * v13.__sinval, v13.__cosval - v9);
  v15 = v14 + a1[5];
  v16 = (1.0 - v9 * v13.__cosval) * *a1;
  v17 = sqrt(398600.44 / *a1);
  v18 = __sincos_stret(v14);
  v19 = v18.__sinval * (v9 * v17) / v12;
  v20 = (v9 * v18.__cosval + 1.0) * v17 / v12;
  v21 = __sincos_stret(v15);
  v22 = __sincos_stret(a1[2]);
  v23 = __sincos_stret(a1[3]);
  v24 = -(v21.__sinval * v22.__sinval) * v23.__cosval + v21.__cosval * v22.__cosval;
  v25 = v21.__sinval * v22.__cosval * v23.__cosval + v21.__cosval * v22.__sinval;
  *a2 = v16 * v24;
  a2[1] = v16 * v25;
  a2[2] = v16 * v21.__sinval * v23.__sinval;
  v26 = a2 + 2;
  *a3 = v19 * v24 - v20 * (v21.__cosval * v22.__sinval * v23.__cosval + v21.__sinval * v22.__cosval);
  a3[1] = v19 * v25 - v20 * (-(v21.__cosval * v22.__cosval) * v23.__cosval + v21.__sinval * v22.__sinval);
  a3[2] = v23.__sinval * (v21.__cosval * v20) + v21.__sinval * v19 * v23.__sinval;
  v27 = __sincos_stret((a4 % 86400 - 10800) * 0.00007292115);
  v28 = a2[1];
  v29 = v27.__sinval * v28 + *a2 * v27.__cosval;
  v30 = v27.__cosval * v28 - *a2 * v27.__sinval;
  *a2 = v29;
  a2[1] = v30;
  v31 = a3[1];
  v32 = v27.__cosval * v31 - *a3 * v27.__sinval;
  *a3 = v27.__sinval * v31 + *a3 * v27.__cosval + v30 * 0.00007292115;
  a3[1] = v32 + v29 * -0.00007292115;
  for (i = 4; i > 1; --i)
  {
    *v26 = *v26 * 1000.0;
    --v26;
  }

  v34 = a3 + 2;
  for (j = 4; j > 1; --j)
  {
    *v34 = *v34 * 1000.0;
    --v34;
  }

  v36 = *MEMORY[0x29EDCA608];
}

uint64_t gnss::GnssAdaptDevice::injectAssistancePosition(uint64_t a1, char a2, int a3, uint64_t a4, int a5, uint64_t *a6, uint64_t a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14)
{
  v37 = *MEMORY[0x29EDCA608];
  if (*(a7 + 24))
  {
    v25 = *a6;
    v26 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice24injectAssistancePositionEddbdddddNS_11ReliabilityEyNS_18PositionAssistTypeERKNS_20PositionAssistOriginENSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_19;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v32, a7);
    *&v32[4] = a8;
    *&v32[5] = a9;
    v35 = a2;
    *&v32[6] = a10;
    *&v32[7] = a11;
    *&v32[8] = a12;
    *&v32[9] = a13;
    *&v32[10] = a14;
    v33 = a3;
    v34 = a5;
    v32[11] = a4;
    v32[12] = v25;
    dispatch_async(v26, block);
    result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v32);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v28 = mach_continuous_time();
      v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v28), "ADP", 69, "injectAssistancePosition", 513);
      result = LbsOsaTrace_WriteLog(0x18u, __str, v29, 0, 1);
    }
  }

  v30 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice24injectAssistancePositionEddbdddddNS_11ReliabilityEyNS_18PositionAssistTypeERKNS_20PositionAssistOriginENSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v92 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "injectAssistancePosition_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if ((*(v2 + 88) & 1) == 0)
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v90, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v90, "injectAssistancePosition_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v90);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 69, "injectAssistancePosition_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v15, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 68, "injectAssistancePosition_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v17, 5, 1);
    }

    goto LABEL_17;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 3, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v6 = 70;
    if (*(a1 + 152))
    {
      v6 = 84;
    }

    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Lat,%f,Long,%f,Alt,%f,AltValid,%c,VUncert,%f,SemiMajHUnc,%f,SemiMinHUnc,%f,SemiMajAzmHUnc,%f,MachContTimeNs,%llu,Rel,%d,PosType,%u,mHash,%llu\n", v5, "ADP", 77, "injectAssistancePosition_block_invoke", *(a1 + 72), *(a1 + 80), *(a1 + 88), v6, *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 144), *(a1 + 148), *(a1 + 136));
    LbsOsaTrace_WriteLog(0x18u, __str, v7, 3, 1);
  }

  v8 = *(a1 + 72);
  if (fabs(v8) > 90.0)
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v89, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v89, "injectAssistancePosition_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v89);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Lat,%f\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 69, "injectAssistancePosition_block_invoke", 514, *(a1 + 72));
      LbsOsaTrace_WriteLog(0x18u, __str, v10, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 68, "injectAssistancePosition_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v13, 5, 1);
    }

    goto LABEL_17;
  }

  v19 = *(a1 + 80);
  if (fabs(v19) > 180.0)
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v88, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v88, "injectAssistancePosition_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v88);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v20 = mach_continuous_time();
      v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Long,%f\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 69, "injectAssistancePosition_block_invoke", 514, *(a1 + 80));
      LbsOsaTrace_WriteLog(0x18u, __str, v21, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v22 = mach_continuous_time();
      v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v22), "ADP", 68, "injectAssistancePosition_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v23, 5, 1);
    }

    goto LABEL_17;
  }

  v24 = *(a1 + 152);
  if (v24 == 1 && fabs(*(a1 + 88)) > 100000.0)
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v87, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v87, "injectAssistancePosition_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v87);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v25 = mach_continuous_time();
      v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Height,%f\n", (*&g_MacClockTicksToMsRelation * v25), "ADP", 69, "injectAssistancePosition_block_invoke", 514, *(a1 + 88));
      LbsOsaTrace_WriteLog(0x18u, __str, v26, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v27 = mach_continuous_time();
      v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v27), "ADP", 68, "injectAssistancePosition_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v28, 5, 1);
    }

    goto LABEL_17;
  }

  if (*(a1 + 96) < 0.0)
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v86, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v86, "injectAssistancePosition_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v86);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v29 = mach_continuous_time();
      v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx VUnc,%f\n", (*&g_MacClockTicksToMsRelation * v29), "ADP", 69, "injectAssistancePosition_block_invoke", 514, *(a1 + 96));
      LbsOsaTrace_WriteLog(0x18u, __str, v30, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v31 = mach_continuous_time();
      v32 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v31), "ADP", 68, "injectAssistancePosition_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v32, 5, 1);
    }

    goto LABEL_17;
  }

  v33 = *(a1 + 104);
  if (v33 < 0.0)
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v85, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v85, "injectAssistancePosition_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v85);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v34 = mach_continuous_time();
      v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SemiMajHUnc,%f\n", (*&g_MacClockTicksToMsRelation * v34), "ADP", 69, "injectAssistancePosition_block_invoke", 514, *(a1 + 104));
      LbsOsaTrace_WriteLog(0x18u, __str, v35, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v36 = mach_continuous_time();
      v37 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v36), "ADP", 68, "injectAssistancePosition_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v37, 5, 1);
    }

    goto LABEL_17;
  }

  v38 = *(a1 + 112);
  if (v38 < 0.0)
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v84, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v84, "injectAssistancePosition_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v84);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v39 = mach_continuous_time();
      v40 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SemiMinHUnc,%f\n", (*&g_MacClockTicksToMsRelation * v39), "ADP", 69, "injectAssistancePosition_block_invoke", 514, *(a1 + 112));
      LbsOsaTrace_WriteLog(0x18u, __str, v40, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v41 = mach_continuous_time();
      v42 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v41), "ADP", 68, "injectAssistancePosition_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v42, 5, 1);
    }

    goto LABEL_17;
  }

  v43 = *(a1 + 120);
  if (v43 < 0.0 || v43 > 360.0)
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v83, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v83, "injectAssistancePosition_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v83);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v47 = mach_continuous_time();
      v48 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SemiMajAzmHUnc,%f\n", (*&g_MacClockTicksToMsRelation * v47), "ADP", 69, "injectAssistancePosition_block_invoke", 514, *(a1 + 120));
      LbsOsaTrace_WriteLog(0x18u, __str, v48, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v49 = mach_continuous_time();
      v50 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v49), "ADP", 68, "injectAssistancePosition_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v50, 5, 1);
    }

    goto LABEL_17;
  }

  v75 = *(a1 + 96);
  v76 = 0x700000000;
  v77 = 0;
  if (fabs(v19 + 180.0) < 2.22044605e-16)
  {
    v19 = v19 + 360.0;
  }

  *(&v68 + 1) = v8;
  v69 = v19;
  v44 = *(a1 + 88);
  v73 = v24;
  v74 = v44;
  v70 = v33;
  v71 = v38;
  if (v43 <= 180.0)
  {
    v45 = v43;
  }

  else
  {
    v45 = v43 + -360.0;
  }

  v72 = v45;
  LODWORD(v68) = (*(a1 + 128) + 500000) / 0xF4240uLL;
  v46 = *(a1 + 144);
  if (v46 <= 24)
  {
    if (v46)
    {
      if (v46 != 10)
      {
        goto LABEL_81;
      }

      v46 = 1;
    }
  }

  else
  {
    switch(v46)
    {
      case 25:
        v46 = 2;
        break;
      case 50:
        v46 = 3;
        break;
      case 75:
        v46 = 4;
        break;
      default:
LABEL_81:
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v82, a1 + 40);
        gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v82, "injectAssistancePosition_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v82);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v64 = mach_continuous_time();
          v65 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Rel,%u\n", (*&g_MacClockTicksToMsRelation * v64), "ADP", 69, "injectAssistancePosition_block_invoke", 514, *(a1 + 144));
          LbsOsaTrace_WriteLog(0x18u, __str, v65, 0, 1);
        }

        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
        if (result)
        {
          bzero(__str, 0x410uLL);
          v66 = mach_continuous_time();
          v67 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v66), "ADP", 68, "injectAssistancePosition_block_invoke");
          result = LbsOsaTrace_WriteLog(0x18u, __str, v67, 5, 1);
        }

        goto LABEL_17;
    }
  }

  LODWORD(v76) = v46;
  if (*(a1 + 148) >= 3u)
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v81, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v81, "injectAssistancePosition_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v81);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v58 = mach_continuous_time();
      v59 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PosType,%u\n", (*&g_MacClockTicksToMsRelation * v58), "ADP", 69, "injectAssistancePosition_block_invoke", 514, *(a1 + 148));
      LbsOsaTrace_WriteLog(0x18u, __str, v59, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v60 = mach_continuous_time();
      v61 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v60), "ADP", 68, "injectAssistancePosition_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v61, 5, 1);
    }
  }

  else
  {
    v78 = *(a1 + 148);
    v77 = *(a1 + 136);
    v51 = ++gnss::GnssAdaptDevice::Ga07_00GenerateUID(void)::v_Key;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v80, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_13AddRespHndlToGnsLUT(v2, v51, v80);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v80);
    v52 = GNS_EaWgs84RefPos(v51, &v68);
    if (v52 == 1)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v53 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v54 = 70;
        if (v73)
        {
          v54 = 84;
        }

        v55 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Lat,%f,Long,%f,Ht,%f,HtPresent,%c,RmsHeight,%f,RmsSemiMaj,%f,RmsSemiMin,%f,RmsSemiMajBrg,%hd,SrcHash,%llu\n", v53, "ADP", 68, "injectAssistancePosition_block_invoke", *(&v68 + 1), v69, v74, v54, v75, v70, v71, v72, v77);
        LbsOsaTrace_WriteLog(0x18u, __str, v55, 5, 1);
      }

      *(v2 + 176) = 1;
      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
      if (result)
      {
LABEL_72:
        bzero(__str, 0x410uLL);
        v56 = mach_continuous_time();
        v57 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v56), "ADP", 68, "injectAssistancePosition_block_invoke");
        result = LbsOsaTrace_WriteLog(0x18u, __str, v57, 5, 1);
      }
    }

    else
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v79, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_15AdaptGnsEarlyResponse(v2, v52, v79, "injectAssistancePosition_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v79);
      gnss::GnssAdaptDevice::Ga07_14RemoveRespHndlFromGnsLut(v2, v51);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v62 = mach_continuous_time();
        v63 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EaWgs84RefPos,%u\n", (*&g_MacClockTicksToMsRelation * v62), "ADP", 69, "injectAssistancePosition_block_invoke", 257, v52);
        LbsOsaTrace_WriteLog(0x18u, __str, v63, 0, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
      if (result)
      {
        goto LABEL_72;
      }
    }
  }

LABEL_17:
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t gnss::GnssAdaptDevice::injectAssistanceTime(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x29EDCA608];
  if (*(a5 + 24))
  {
    v8 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice20injectAssistanceTimeEyyyNSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_25_5;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v14, a5);
    v14[4] = a2;
    v14[5] = a3;
    v14[6] = a4;
    dispatch_async(v8, block);
    result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v14);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 69, "injectAssistanceTime", 513);
      result = LbsOsaTrace_WriteLog(0x18u, __str, v11, 0, 1);
    }
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice20injectAssistanceTimeEyyyNSt3__18functionIFvNS_6ResultEEEE_block_invoke(void *a1)
{
  v46 = *MEMORY[0x29EDCA608];
  v2 = a1[4];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "injectAssistanceTime_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(v2 + 88))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 3, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GpsTimeNS,%llu,UncNS,%llu,MachContTimeNs,%llu\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 77, "injectAssistanceTime_block_invoke", a1[9], a1[10], a1[11]);
      LbsOsaTrace_WriteLog(0x18u, __str, v6, 3, 1);
    }

    v7 = a1[10];
    if (v7)
    {
      v8 = 0;
      v38 = 0x7FFFFFFF;
      v40 = -1;
      v41 = 0;
      do
      {
        v9 = &v36 + v8;
        v9[22] = -1;
        *(v9 + 23) = 0;
        v9[27] = 0;
        v8 += 6;
      }

      while (v8 != 96);
      v10 = a1[9];
      v39 = v10 / 0x2260FF9290000;
      v11 = v10 % 0x2260FF9290000;
      if (v11 < 0xF424000000000)
      {
        v36 = v11 / 0xF4240;
        if (v7 < 0xF42400000)
        {
          if (v7 > 0xF423F)
          {
            v37 = v7 / 0xF4240;
          }

          else
          {
            v37 = 1;
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v27 = mach_continuous_time();
              v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: RefTimeUncMs < 1ms\n", (*&g_MacClockTicksToMsRelation * v27), "ADP", 73, "injectAssistanceTime_block_invoke");
              LbsOsaTrace_WriteLog(0x18u, __str, v28, 4, 1);
            }
          }
        }

        else
        {
          v37 = -1;
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v25 = mach_continuous_time();
            v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: RefTimeUncMs > 65535ms\n", (*&g_MacClockTicksToMsRelation * v25), "ADP", 73, "injectAssistanceTime_block_invoke");
            LbsOsaTrace_WriteLog(0x18u, __str, v26, 4, 1);
          }
        }

        v42 = (a1[11] + 500000) / 0xF4240uLL;
        GNS_AsstGpsRefTime(0, 7u, &v36, 0);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v29 = mach_continuous_time();
          v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Wk,%u,Tow,%u,TowUnc,%u\n", (*&g_MacClockTicksToMsRelation * v29), "ADP", 68, "injectAssistanceTime_block_invoke", v39, v36, v37);
          LbsOsaTrace_WriteLog(0x18u, __str, v30, 5, 1);
        }

        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v34, (a1 + 5));
        gnss::GnssAdaptDevice::Ga07_15AdaptGnsEarlyResponse(v2, 1u, v34, "injectAssistanceTime_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v34);
        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
        if (result)
        {
          bzero(__str, 0x410uLL);
          v31 = mach_continuous_time();
          v32 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v31), "ADP", 68, "injectAssistanceTime_block_invoke");
          result = LbsOsaTrace_WriteLog(0x18u, __str, v32, 5, 1);
        }
      }

      else
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v35, (a1 + 5));
        gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v35, "injectAssistanceTime_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v35);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v12 = mach_continuous_time();
          v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Calc GpsTow invalid\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 69, "injectAssistanceTime_block_invoke", 515);
          LbsOsaTrace_WriteLog(0x18u, __str, v13, 0, 1);
        }

        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
        if (result)
        {
          bzero(__str, 0x410uLL);
          v15 = mach_continuous_time();
          v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 68, "injectAssistanceTime_block_invoke");
          result = LbsOsaTrace_WriteLog(0x18u, __str, v16, 5, 1);
        }
      }
    }

    else
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v43, (a1 + 5));
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v43, "injectAssistanceTime_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v43);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v21 = mach_continuous_time();
        v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RefTimeUnc\n", (*&g_MacClockTicksToMsRelation * v21), "ADP", 69, "injectAssistanceTime_block_invoke", 515);
        LbsOsaTrace_WriteLog(0x18u, __str, v22, 0, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v23 = mach_continuous_time();
        v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v23), "ADP", 68, "injectAssistanceTime_block_invoke");
        result = LbsOsaTrace_WriteLog(0x18u, __str, v24, 5, 1);
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v44, (a1 + 5));
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v44, "injectAssistanceTime_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v44);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v17 = mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 69, "injectAssistanceTime_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v18, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v19 = mach_continuous_time();
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 68, "injectAssistanceTime_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v20, 5, 1);
    }
  }

  v33 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29971F408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t gnss::GnssAdaptDevice::setAssistanceAlongTrackVelocity(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v16 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v8 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice31setAssistanceAlongTrackVelocityEyddNSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_32_0;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v14, a3);
    v14[4] = a2;
    *&v14[5] = a4;
    *&v14[6] = a5;
    dispatch_async(v8, block);
    result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v14);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 69, "setAssistanceAlongTrackVelocity", 513);
      result = LbsOsaTrace_WriteLog(0x18u, __str, v11, 0, 1);
    }
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice31setAssistanceAlongTrackVelocityEyddNSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setAssistanceAlongTrackVelocity_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(v2 + 88))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 3, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MachContTimeNs,%llu,VAlongTrack,%f,VAlongTrackUnc,%f\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 77, "setAssistanceAlongTrackVelocity_block_invoke", *(a1 + 72), *(a1 + 80), *(a1 + 88));
      LbsOsaTrace_WriteLog(0x18u, __str, v6, 3, 1);
    }

    v7 = *(a1 + 80);
    if (v7 > 100.0 || v7 < 0.0 || (v8 = *(a1 + 88), v8 <= 0.0))
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v32, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v32, "setAssistanceAlongTrackVelocity_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v32);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v21 = mach_continuous_time();
        v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx VAlongTrack,%f\n", (*&g_MacClockTicksToMsRelation * v21), "ADP", 69, "setAssistanceAlongTrackVelocity_block_invoke", 514, *(a1 + 80));
        LbsOsaTrace_WriteLog(0x18u, __str, v22, 0, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v23 = mach_continuous_time();
        v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v23), "ADP", 68, "setAssistanceAlongTrackVelocity_block_invoke");
        result = LbsOsaTrace_WriteLog(0x18u, __str, v24, 5, 1);
      }
    }

    else
    {
      v9 = (*(a1 + 72) + 500000) / 0xF4240uLL;
      LODWORD(v28) = v9;
      *(&v28 + 1) = v7;
      v29 = v8;
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: OsTimeMs,%u,Vel,%f,RmsVel,%f\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 68, "setAssistanceAlongTrackVelocity_block_invoke", v9, v7, v8);
        LbsOsaTrace_WriteLog(0x18u, __str, v11, 5, 1);
      }

      v12 = ++gnss::GnssAdaptDevice::Ga07_00GenerateUID(void)::v_Key;
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v31, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_13AddRespHndlToGnsLUT(v2, v12, v31);
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v31);
      v13 = GNS_EaAlongTrackVel(v12, &v28);
      if (v13 == 1)
      {
        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
        if (result)
        {
LABEL_13:
          bzero(__str, 0x410uLL);
          v15 = mach_continuous_time();
          v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 68, "setAssistanceAlongTrackVelocity_block_invoke");
          result = LbsOsaTrace_WriteLog(0x18u, __str, v16, 5, 1);
        }
      }

      else
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v30, a1 + 40);
        gnss::GnssAdaptDevice::Ga07_15AdaptGnsEarlyResponse(v2, v13, v30, "setAssistanceAlongTrackVelocity_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v30);
        gnss::GnssAdaptDevice::Ga07_14RemoveRespHndlFromGnsLut(v2, v12);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v26 = mach_continuous_time();
          v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx LongTrackVel,%u\n", (*&g_MacClockTicksToMsRelation * v26), "ADP", 69, "setAssistanceAlongTrackVelocity_block_invoke", 257, v13);
          LbsOsaTrace_WriteLog(0x18u, __str, v27, 0, 1);
        }

        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
        if (result)
        {
          goto LABEL_13;
        }
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v33, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v33, "setAssistanceAlongTrackVelocity_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v33);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v17 = mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 69, "setAssistanceAlongTrackVelocity_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v18, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v19 = mach_continuous_time();
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 68, "setAssistanceAlongTrackVelocity_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v20, 5, 1);
    }
  }

  v25 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29971FCB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t gnss::GnssAdaptDevice::setAssistanceDem(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v16 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v8 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice16setAssistanceDemEyddNSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_40_1;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v14, a3);
    v14[4] = a2;
    *&v14[5] = a4;
    *&v14[6] = a5;
    dispatch_async(v8, block);
    result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v14);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 69, "setAssistanceDem", 513);
      result = LbsOsaTrace_WriteLog(0x18u, __str, v11, 0, 1);
    }
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice16setAssistanceDemEyddNSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setAssistanceDem_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(v2 + 88))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 3, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MachContTimeNs,%llu,EllipAlt,%f,AltUnc,%f\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 77, "setAssistanceDem_block_invoke", *(a1 + 72), *(a1 + 80), *(a1 + 88));
      LbsOsaTrace_WriteLog(0x18u, __str, v6, 3, 1);
    }

    v7 = *(a1 + 80);
    if (v7 > 9000.0 || v7 < -500.0)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v37, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v37, "setAssistanceDem_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v37);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v22 = mach_continuous_time();
        v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EllipAlt,%f\n", (*&g_MacClockTicksToMsRelation * v22), "ADP", 69, "setAssistanceDem_block_invoke", 514, *(a1 + 80));
        LbsOsaTrace_WriteLog(0x18u, __str, v23, 0, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v24 = mach_continuous_time();
        v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v24), "ADP", 68, "setAssistanceDem_block_invoke");
        result = LbsOsaTrace_WriteLog(0x18u, __str, v25, 5, 1);
      }
    }

    else
    {
      v8 = *(a1 + 88);
      if (v8 <= 0.0 || v8 > 9000.0)
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v36, a1 + 40);
        gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v36, "setAssistanceDem_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v36);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v26 = mach_continuous_time();
          v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx AltUnc,%f\n", (*&g_MacClockTicksToMsRelation * v26), "ADP", 69, "setAssistanceDem_block_invoke", 514, *(a1 + 88));
          LbsOsaTrace_WriteLog(0x18u, __str, v27, 0, 1);
        }

        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
        if (result)
        {
          bzero(__str, 0x410uLL);
          v28 = mach_continuous_time();
          v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v28), "ADP", 68, "setAssistanceDem_block_invoke");
          result = LbsOsaTrace_WriteLog(0x18u, __str, v29, 5, 1);
        }
      }

      else
      {
        v33 = 0;
        LODWORD(v31) = (*(a1 + 72) + 500000) / 0xF4240uLL;
        *(&v31 + 1) = v7;
        v32 = v8;
        v9 = ++gnss::GnssAdaptDevice::Ga07_00GenerateUID(void)::v_Key;
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v35, a1 + 40);
        gnss::GnssAdaptDevice::Ga07_13AddRespHndlToGnsLUT(v2, v9, v35);
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v35);
        v10 = GNS_EaAltitude(v9, &v31);
        if (v10 != 1)
        {
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v34, a1 + 40);
          gnss::GnssAdaptDevice::Ga07_15AdaptGnsEarlyResponse(v2, v10, v34, "setAssistanceDem_block_invoke");
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v34);
          gnss::GnssAdaptDevice::Ga07_14RemoveRespHndlFromGnsLut(v2, v9);
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v11 = mach_continuous_time();
            v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EaAltitude,%u\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 69, "setAssistanceDem_block_invoke", 257, v10);
            LbsOsaTrace_WriteLog(0x18u, __str, v12, 0, 1);
          }
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v13 = mach_continuous_time();
          v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: OsTimeMs,%u,Alt,%f,RmsAlt,%f\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 68, "setAssistanceDem_block_invoke", v31, *(&v31 + 1), v32);
          LbsOsaTrace_WriteLog(0x18u, __str, v14, 5, 1);
        }

        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
        if (result)
        {
          bzero(__str, 0x410uLL);
          v16 = mach_continuous_time();
          v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 68, "setAssistanceDem_block_invoke");
          result = LbsOsaTrace_WriteLog(0x18u, __str, v17, 5, 1);
        }
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v38, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v38, "setAssistanceDem_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v38);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 69, "setAssistanceDem_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v19, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v20 = mach_continuous_time();
      v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 68, "setAssistanceDem_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v21, 5, 1);
    }
  }

  v30 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299720628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t gnss::GnssAdaptDevice::setAssistanceMapVector(uint64_t a1, uint64_t a2, char a3, char a4, char a5, char a6, char a7, char a8, double a9, double a10, double a11, double a12, double a13, double a14, uint64_t a15)
{
  v42 = *MEMORY[0x29EDCA608];
  if (*(a15 + 24))
  {
    v28 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice22setAssistanceMapVectorEyddbddddbbbbbNSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_50_0;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v34, a15);
    v34[4] = a2;
    *&v34[5] = a9;
    *&v34[6] = a10;
    v35 = a3;
    *&v34[7] = a11;
    *&v34[8] = a12;
    *&v34[9] = a13;
    *&v34[10] = a14;
    v36 = a4;
    v37 = a5;
    v38 = a6;
    v39 = a7;
    v40 = a8;
    dispatch_async(v28, block);
    result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v34);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v30 = mach_continuous_time();
      v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v30), "ADP", 69, "setAssistanceMapVector", 513);
      result = LbsOsaTrace_WriteLog(0x18u, __str, v31, 0, 1);
    }
  }

  v32 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice22setAssistanceMapVectorEyddbddddbbbbbNSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v84 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setAssistanceMapVector_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(v2 + 88))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 3, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (*(a1 + 133))
      {
        v6 = 84;
      }

      else
      {
        v6 = 70;
      }

      if (*(a1 + 132))
      {
        v7 = 84;
      }

      else
      {
        v7 = 70;
      }

      if (*(a1 + 131))
      {
        v8 = 84;
      }

      else
      {
        v8 = 70;
      }

      if (*(a1 + 130))
      {
        v9 = 84;
      }

      else
      {
        v9 = 70;
      }

      if (*(a1 + 129))
      {
        v10 = 84;
      }

      else
      {
        v10 = 70;
      }

      if (*(a1 + 128))
      {
        v11 = 84;
      }

      else
      {
        v11 = 70;
      }

      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MachContTimeNs,%llu,SegStartLat,%f,SegStartLong,%f,AltValid,%c,SegStartAltWgs84,%f,SegLenM,%f,SegDirDeg,%f,SegWidM,%f,Freeway,%c,Railway,%c,OneWayRoad,%c,Tunnel,%c,Bridge,%c\n", v5, "ADP", 77, "setAssistanceMapVector_block_invoke", *(a1 + 72), *(a1 + 80), *(a1 + 88), v11, *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120), v10, v9, v8, v7, v6);
      LbsOsaTrace_WriteLog(0x18u, __str, v12, 3, 1);
    }

    v13 = *(a1 + 80);
    if (fabs(v13) <= 90.0)
    {
      v24 = *(a1 + 88);
      if (fabs(v24) <= 180.0)
      {
        v29 = *(a1 + 128);
        if (v29 == 1 && fabs(*(a1 + 96)) > 100000.0)
        {
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v79, a1 + 40);
          gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v79, "setAssistanceMapVector_block_invoke");
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v79);
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v30 = mach_continuous_time();
            v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Alt,%f\n", (*&g_MacClockTicksToMsRelation * v30), "ADP", 69, "setAssistanceMapVector_block_invoke", 514, *(a1 + 96));
            LbsOsaTrace_WriteLog(0x18u, __str, v31, 0, 1);
          }

          result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
          if (result)
          {
            bzero(__str, 0x410uLL);
            v32 = mach_continuous_time();
            v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v32), "ADP", 68, "setAssistanceMapVector_block_invoke");
            result = LbsOsaTrace_WriteLog(0x18u, __str, v33, 5, 1);
          }
        }

        else
        {
          v34 = *(a1 + 104);
          if (v34 <= 100000.0)
          {
            v39 = *(a1 + 112);
            if (v39 < 0.0 || v39 > 360.0)
            {
              std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v77, a1 + 40);
              gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v77, "setAssistanceMapVector_block_invoke");
              std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v77);
              if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v45 = mach_continuous_time();
                v46 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Dir,%f\n", (*&g_MacClockTicksToMsRelation * v45), "ADP", 69, "setAssistanceMapVector_block_invoke", 514, *(a1 + 112));
                LbsOsaTrace_WriteLog(0x18u, __str, v46, 0, 1);
              }

              result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
              if (result)
              {
                bzero(__str, 0x410uLL);
                v47 = mach_continuous_time();
                v48 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v47), "ADP", 68, "setAssistanceMapVector_block_invoke");
                result = LbsOsaTrace_WriteLog(0x18u, __str, v48, 5, 1);
              }
            }

            else
            {
              v40 = *(a1 + 120);
              if (v40 <= 100000.0)
              {
                v49 = (*(a1 + 72) + 500000) / 0xF4240uLL;
                v66 = v49;
                if (fabs(v24 + 180.0) >= 2.22044605e-16)
                {
                  v50 = v24;
                }

                else
                {
                  v50 = v24 + 360.0;
                }

                v67 = v13;
                v68 = v50;
                v51 = *(a1 + 96);
                v69 = v51;
                v70 = v29;
                v71 = v39;
                v72 = v34;
                v73 = v40;
                LODWORD(v24) = *(a1 + 129);
                v52 = vmovl_u8(*&v24).u64[0];
                v53 = vext_s8(v52, v52, 6uLL);
                v74 = vuzp1_s8(v53, v53).u32[0];
                v54 = *(a1 + 133);
                v75 = *(a1 + 133);
                v55 = ++gnss::GnssAdaptDevice::Ga07_00GenerateUID(void)::v_Key;
                std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v65, a1 + 40);
                gnss::GnssAdaptDevice::Ga07_13AddRespHndlToGnsLUT(v2, v55, v65);
                std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v65);
                if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
                {
                  bzero(__str, 0x410uLL);
                  v56 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
                  v57 = 70;
                  if (v29)
                  {
                    v57 = 84;
                  }

                  v58 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: OsTimeMs,%u,StartLat,%f,StartLong,%f,StartAlt,%f,HtAvail,%c,Dir,%f,Len,%f,Width,%f,Bridge,%d\n", v56, "ADP", 68, "setAssistanceMapVector_block_invoke", v49, v13, v50, v51, v57, v39, v34, v40, v54);
                  LbsOsaTrace_WriteLog(0x18u, __str, v58, 5, 1);
                }

                v59 = GNS_EaMapVectorSeg(v55, &v66);
                if (v59 != 1)
                {
                  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v64, a1 + 40);
                  gnss::GnssAdaptDevice::Ga07_15AdaptGnsEarlyResponse(v2, v59, v64, "setAssistanceMapVector_block_invoke");
                  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v64);
                  gnss::GnssAdaptDevice::Ga07_14RemoveRespHndlFromGnsLut(v2, v55);
                  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
                  {
                    bzero(__str, 0x410uLL);
                    v60 = mach_continuous_time();
                    v61 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EaMapVectorSeg,%u\n", (*&g_MacClockTicksToMsRelation * v60), "ADP", 69, "setAssistanceMapVector_block_invoke", 257, v59);
                    LbsOsaTrace_WriteLog(0x18u, __str, v61, 0, 1);
                  }
                }

                result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
                if (result)
                {
                  bzero(__str, 0x410uLL);
                  v62 = mach_continuous_time();
                  v63 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v62), "ADP", 68, "setAssistanceMapVector_block_invoke");
                  result = LbsOsaTrace_WriteLog(0x18u, __str, v63, 5, 1);
                }
              }

              else
              {
                std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v76, a1 + 40);
                gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v76, "setAssistanceMapVector_block_invoke");
                std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v76);
                if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
                {
                  bzero(__str, 0x410uLL);
                  v41 = mach_continuous_time();
                  v42 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Width,%f\n", (*&g_MacClockTicksToMsRelation * v41), "ADP", 69, "setAssistanceMapVector_block_invoke", 514, *(a1 + 120));
                  LbsOsaTrace_WriteLog(0x18u, __str, v42, 0, 1);
                }

                result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
                if (result)
                {
                  bzero(__str, 0x410uLL);
                  v43 = mach_continuous_time();
                  v44 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v43), "ADP", 68, "setAssistanceMapVector_block_invoke");
                  result = LbsOsaTrace_WriteLog(0x18u, __str, v44, 5, 1);
                }
              }
            }
          }

          else
          {
            std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v78, a1 + 40);
            gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v78, "setAssistanceMapVector_block_invoke");
            std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v78);
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v35 = mach_continuous_time();
              v36 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Len,%f\n", (*&g_MacClockTicksToMsRelation * v35), "ADP", 69, "setAssistanceMapVector_block_invoke", 514, *(a1 + 104));
              LbsOsaTrace_WriteLog(0x18u, __str, v36, 0, 1);
            }

            result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
            if (result)
            {
              bzero(__str, 0x410uLL);
              v37 = mach_continuous_time();
              v38 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v37), "ADP", 68, "setAssistanceMapVector_block_invoke");
              result = LbsOsaTrace_WriteLog(0x18u, __str, v38, 5, 1);
            }
          }
        }
      }

      else
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v80, a1 + 40);
        gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v80, "setAssistanceMapVector_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v80);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v25 = mach_continuous_time();
          v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Long,%f\n", (*&g_MacClockTicksToMsRelation * v25), "ADP", 69, "setAssistanceMapVector_block_invoke", 514, *(a1 + 88));
          LbsOsaTrace_WriteLog(0x18u, __str, v26, 0, 1);
        }

        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
        if (result)
        {
          bzero(__str, 0x410uLL);
          v27 = mach_continuous_time();
          v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v27), "ADP", 68, "setAssistanceMapVector_block_invoke");
          result = LbsOsaTrace_WriteLog(0x18u, __str, v28, 5, 1);
        }
      }
    }

    else
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v81, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v81, "setAssistanceMapVector_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v81);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Lat,%f\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 69, "setAssistanceMapVector_block_invoke", 514, *(a1 + 80));
        LbsOsaTrace_WriteLog(0x18u, __str, v15, 0, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v17 = mach_continuous_time();
        v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 68, "setAssistanceMapVector_block_invoke");
        result = LbsOsaTrace_WriteLog(0x18u, __str, v18, 5, 1);
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v82, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v82, "setAssistanceMapVector_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v82);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v19 = mach_continuous_time();
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 69, "setAssistanceMapVector_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v20, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v21 = mach_continuous_time();
      v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v21), "ADP", 68, "setAssistanceMapVector_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v22, 5, 1);
    }
  }

  v23 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t gnss::GnssAdaptDevice::setAssistanceMotionActivityContext(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  v21 = *MEMORY[0x29EDCA608];
  if (*(a6 + 24))
  {
    v10 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice34setAssistanceMotionActivityContextEyNS_21MotionActivityContextENS_11MovingStateENS_11ReliabilityENSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_59_1;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v16, a6);
    v16[4] = a2;
    v17 = a3;
    v18 = a4;
    v19 = a5;
    dispatch_async(v10, block);
    result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v16);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 69, "setAssistanceMotionActivityContext", 513);
      result = LbsOsaTrace_WriteLog(0x18u, __str, v13, 0, 1);
    }
  }

  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice34setAssistanceMotionActivityContextEyNS_21MotionActivityContextENS_11MovingStateENS_11ReliabilityENSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setAssistanceMotionActivityContext_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(v2 + 88))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 3, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MachContTimeNs,%llu,Ctxt,%u,MovState,%u,Rel,%u\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 77, "setAssistanceMotionActivityContext_block_invoke", *(a1 + 72), *(a1 + 80), *(a1 + 84), *(a1 + 88));
      LbsOsaTrace_WriteLog(0x18u, __str, v6, 3, 1);
    }

    v7 = (*(a1 + 72) + 500000) / 0xF4240uLL;
    LODWORD(v40) = v7;
    v38 = v7;
    v8 = *(a1 + 80);
    if (v8 >= 9)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Context,%u\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 69, "setAssistanceMotionActivityContext_block_invoke", 515, *(a1 + 80));
        LbsOsaTrace_WriteLog(0x18u, __str, v17, 0, 1);
      }

      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v47, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v47, "setAssistanceMotionActivityContext_block_invoke");
      v18 = v47;
      goto LABEL_38;
    }

    v9 = dword_299762370[v8];
    HIDWORD(v40) = v9;
    v10 = *(a1 + 88);
    if (v10 <= 24)
    {
      if (!v10)
      {
        goto LABEL_26;
      }

      if (v10 == 10)
      {
LABEL_11:
        v10 = 1;
LABEL_26:
        v41 = v10;
        v39 = v10;
        v21 = *(a1 + 84);
        if (v21 < 4)
        {
          HIDWORD(v38) = *(a1 + 84);
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v22 = mach_continuous_time();
            v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ActCtx,%u,MovState,%u,Rel,%u,TimeMs,%u\n", (*&g_MacClockTicksToMsRelation * v22), "ADP", 68, "setAssistanceMotionActivityContext_block_invoke", v9, v21, v10, v7);
            LbsOsaTrace_WriteLog(0x18u, __str, v23, 5, 1);
          }

          v24 = GNS_EaUsrActCtxt(++gnss::GnssAdaptDevice::Ga07_00GenerateUID(void)::v_Key, &v40);
          if (v24 == 1)
          {
            v25 = ++gnss::GnssAdaptDevice::Ga07_00GenerateUID(void)::v_Key;
            std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v43, a1 + 40);
            gnss::GnssAdaptDevice::Ga07_13AddRespHndlToGnsLUT(v2, v25, v43);
            std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v43);
            v26 = GNS_EaDevMovState(v25, &v38);
            if (v26 != 1)
            {
              std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v42, a1 + 40);
              gnss::GnssAdaptDevice::Ga07_15AdaptGnsEarlyResponse(v2, v26, v42, "setAssistanceMotionActivityContext_block_invoke");
              std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v42);
              gnss::GnssAdaptDevice::Ga07_14RemoveRespHndlFromGnsLut(v2, v25);
              if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v27 = mach_continuous_time();
                v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EaDevMovState,%u\n", (*&g_MacClockTicksToMsRelation * v27), "ADP", 69, "setAssistanceMotionActivityContext_block_invoke", 257, v26);
                LbsOsaTrace_WriteLog(0x18u, __str, v28, 0, 1);
              }
            }

            result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
            if (result)
            {
              bzero(__str, 0x410uLL);
              v29 = mach_continuous_time();
              v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v29), "ADP", 68, "setAssistanceMotionActivityContext_block_invoke");
              result = LbsOsaTrace_WriteLog(0x18u, __str, v30, 5, 1);
            }
          }

          else
          {
            std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v44, a1 + 40);
            gnss::GnssAdaptDevice::Ga07_15AdaptGnsEarlyResponse(v2, v24, v44, "setAssistanceMotionActivityContext_block_invoke");
            std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v44);
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v34 = mach_continuous_time();
              v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EaUsrActCtxt,%u\n", (*&g_MacClockTicksToMsRelation * v34), "ADP", 69, "setAssistanceMotionActivityContext_block_invoke", 257, v24);
              LbsOsaTrace_WriteLog(0x18u, __str, v35, 0, 1);
            }

            result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
            if (result)
            {
              bzero(__str, 0x410uLL);
              v36 = mach_continuous_time();
              v37 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v36), "ADP", 68, "setAssistanceMotionActivityContext_block_invoke");
              result = LbsOsaTrace_WriteLog(0x18u, __str, v37, 5, 1);
            }
          }

          goto LABEL_39;
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v31 = mach_continuous_time();
          v32 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Moving State,%u\n", (*&g_MacClockTicksToMsRelation * v31), "ADP", 69, "setAssistanceMotionActivityContext_block_invoke", 515, *(a1 + 84));
          LbsOsaTrace_WriteLog(0x18u, __str, v32, 0, 1);
        }

        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v45, a1 + 40);
        gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v45, "setAssistanceMotionActivityContext_block_invoke");
        v18 = v45;
LABEL_38:
        result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v18);
        goto LABEL_39;
      }
    }

    else
    {
      switch(v10)
      {
        case 75:
          v10 = 3;
          goto LABEL_26;
        case 50:
          v10 = 2;
          goto LABEL_26;
        case 25:
          goto LABEL_11;
      }
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v19 = mach_continuous_time();
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Rel,%u\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 69, "setAssistanceMotionActivityContext_block_invoke", 515, *(a1 + 88));
      LbsOsaTrace_WriteLog(0x18u, __str, v20, 0, 1);
    }

    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v46, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v46, "setAssistanceMotionActivityContext_block_invoke");
    v18 = v46;
    goto LABEL_38;
  }

  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v48, a1 + 40);
  gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v48, "setAssistanceMotionActivityContext_block_invoke");
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v48);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 69, "setAssistanceMotionActivityContext_block_invoke", 1302);
    LbsOsaTrace_WriteLog(0x18u, __str, v12, 0, 1);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 68, "setAssistanceMotionActivityContext_block_invoke");
    result = LbsOsaTrace_WriteLog(0x18u, __str, v15, 5, 1);
  }

LABEL_39:
  v33 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29972216C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t gnss::GnssAdaptDevice::setAssistanceMountState(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v15 = *MEMORY[0x29EDCA608];
  if (*(a4 + 24))
  {
    v6 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice23setAssistanceMountStateEyNS_16DeviceMountStateENSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_66;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v12, a4);
    v12[4] = a2;
    v13 = a3;
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
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 69, "setAssistanceMountState", 513);
      result = LbsOsaTrace_WriteLog(0x18u, __str, v9, 0, 1);
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice23setAssistanceMountStateEyNS_16DeviceMountStateENSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setAssistanceMountState_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(v2 + 88))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 3, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MachContTimeNs,%llu,MtState,%u\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 77, "setAssistanceMountState_block_invoke", *(a1 + 72), *(a1 + 80));
      LbsOsaTrace_WriteLog(0x18u, __str, v6, 3, 1);
    }

    LODWORD(v26) = (*(a1 + 72) + 500000) / 0xF4240uLL;
    v7 = *(a1 + 80);
    if (v7 >= 3)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v21 = mach_continuous_time();
        v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MountState,%u\n", (*&g_MacClockTicksToMsRelation * v21), "ADP", 69, "setAssistanceMountState_block_invoke", 515, *(a1 + 80));
        LbsOsaTrace_WriteLog(0x18u, __str, v22, 0, 1);
      }

      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v30, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v30, "setAssistanceMountState_block_invoke");
      result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v30);
    }

    else
    {
      v8 = dword_299762394[v7];
      v9 = dword_2997623A0[v7];
      HIDWORD(v26) = v8;
      v27 = v9;
      v10 = ++gnss::GnssAdaptDevice::Ga07_00GenerateUID(void)::v_Key;
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v29, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_13AddRespHndlToGnsLUT(v2, v10, v29);
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v29);
      v11 = GNS_EaFixedInVehicle(v10, &v26);
      if (v11 == 1)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v12 = mach_continuous_time();
          v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: OsTimeMs,%u,FivInd,%u\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 68, "setAssistanceMountState_block_invoke", v26, HIDWORD(v26));
          LbsOsaTrace_WriteLog(0x18u, __str, v13, 5, 1);
        }

        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
        if (result)
        {
LABEL_11:
          bzero(__str, 0x410uLL);
          v15 = mach_continuous_time();
          v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 68, "setAssistanceMountState_block_invoke");
          result = LbsOsaTrace_WriteLog(0x18u, __str, v16, 5, 1);
        }
      }

      else
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v28, a1 + 40);
        gnss::GnssAdaptDevice::Ga07_15AdaptGnsEarlyResponse(v2, v11, v28, "setAssistanceMountState_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v28);
        gnss::GnssAdaptDevice::Ga07_14RemoveRespHndlFromGnsLut(v2, v10);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v24 = mach_continuous_time();
          v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx FixedInVeh,%u\n", (*&g_MacClockTicksToMsRelation * v24), "ADP", 69, "setAssistanceMountState_block_invoke", 257, v11);
          LbsOsaTrace_WriteLog(0x18u, __str, v25, 0, 1);
        }

        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
        if (result)
        {
          goto LABEL_11;
        }
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v31, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v31, "setAssistanceMountState_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v31);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v17 = mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 69, "setAssistanceMountState_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v18, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v19 = mach_continuous_time();
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 68, "setAssistanceMountState_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v20, 5, 1);
    }
  }

  v23 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2997229A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t gnss::GnssAdaptDevice::setAssistanceSignalEnvironment(uint64_t a1, int a2, uint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v4 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice30setAssistanceSignalEnvironmentENS_21SignalEnvironmentTypeENSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_73_0;
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
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "setAssistanceSignalEnvironment", 513);
      result = LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice30setAssistanceSignalEnvironmentENS_21SignalEnvironmentTypeENSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setAssistanceSignalEnvironment_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(v2 + 88))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 3, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SigEnv,%u\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 77, "setAssistanceSignalEnvironment_block_invoke", *(a1 + 72));
      LbsOsaTrace_WriteLog(0x18u, __str, v6, 3, 1);
    }

    v7 = *(a1 + 72);
    if (v7 >= 7)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v22 = mach_continuous_time();
        v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SigEnv,%u\n", (*&g_MacClockTicksToMsRelation * v22), "ADP", 69, "setAssistanceSignalEnvironment_block_invoke", 515, *(a1 + 72));
        LbsOsaTrace_WriteLog(0x18u, __str, v23, 0, 1);
      }

      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v27, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v27, "setAssistanceSignalEnvironment_block_invoke");
      result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v27);
    }

    else
    {
      v8 = dword_2997623AC[v7];
      v9 = ++gnss::GnssAdaptDevice::Ga07_00GenerateUID(void)::v_Key;
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v26, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_13AddRespHndlToGnsLUT(v2, v9, v26);
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v26);
      v10 = GNS_EaSigEnvSev(v9, v8);
      if (v10 != 1)
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v25, a1 + 40);
        gnss::GnssAdaptDevice::Ga07_15AdaptGnsEarlyResponse(v2, v10, v25, "setAssistanceSignalEnvironment_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v25);
        gnss::GnssAdaptDevice::Ga07_14RemoveRespHndlFromGnsLut(v2, v9);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v11 = mach_continuous_time();
          v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SigEnvSev,%u\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 69, "setAssistanceSignalEnvironment_block_invoke", 257, v10);
          LbsOsaTrace_WriteLog(0x18u, __str, v12, 0, 1);
        }
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v13 = mach_continuous_time();
        v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SESInd,%d\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 68, "setAssistanceSignalEnvironment_block_invoke", v8);
        LbsOsaTrace_WriteLog(0x18u, __str, v14, 5, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 68, "setAssistanceSignalEnvironment_block_invoke");
        result = LbsOsaTrace_WriteLog(0x18u, __str, v17, 5, 1);
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v28, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v28, "setAssistanceSignalEnvironment_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v28);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 69, "setAssistanceSignalEnvironment_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v19, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v20 = mach_continuous_time();
      v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 68, "setAssistanceSignalEnvironment_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v21, 5, 1);
    }
  }

  v24 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2997230F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t gnss::GnssAdaptDevice::setAssistanceSpeedConstraint(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v18 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v10 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice28setAssistanceSpeedConstraintEydddNSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_80;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v16, a3);
    v16[4] = a2;
    *&v16[5] = a4;
    *&v16[6] = a5;
    *&v16[7] = a6;
    dispatch_async(v10, block);
    result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v16);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 69, "setAssistanceSpeedConstraint", 513);
      result = LbsOsaTrace_WriteLog(0x18u, __str, v13, 0, 1);
    }
  }

  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice28setAssistanceSpeedConstraintEydddNSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setAssistanceSpeedConstraint_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(v2 + 88))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 3, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MachContTimeNs,%llu,DurSec,%f,SpeedLwrBound,%f,SpeedUprBound,%f\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 77, "setAssistanceSpeedConstraint_block_invoke", *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96));
      LbsOsaTrace_WriteLog(0x18u, __str, v6, 3, 1);
    }

    v7 = *(a1 + 80);
    if (v7 > 86400.0 || (v8 = *(a1 + 88), v8 < 0.0) || (v19 = *(a1 + 96), v19 < v8) || v19 < 0.0 || v19 > 100.0)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v9 = mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MachContiTimeNs,%llu,Dur,%f,SpeedLwrBound,%f,SpeedUprBound,%f\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 69, "setAssistanceSpeedConstraint_block_invoke", 514, *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96));
        LbsOsaTrace_WriteLog(0x18u, __str, v10, 0, 1);
      }

      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v34, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v34, "setAssistanceSpeedConstraint_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v34);
      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 68, "setAssistanceSpeedConstraint_block_invoke");
        result = LbsOsaTrace_WriteLog(0x18u, __str, v13, 5, 1);
      }
    }

    else
    {
      v20 = (v7 * 1000.0);
      v21 = (*(a1 + 72) + 500000) / 0xF4240uLL;
      *&v30 = __PAIR64__(v20, v21);
      *(&v30 + 1) = v8;
      v31 = v19;
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v22 = mach_continuous_time();
        v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: OsTimeMs,%u,DurMs,%d,SpeedL,%f,SpeedU,%f\n", (*&g_MacClockTicksToMsRelation * v22), "ADP", 68, "setAssistanceSpeedConstraint_block_invoke", v21, v20, v8, v19);
        LbsOsaTrace_WriteLog(0x18u, __str, v23, 5, 1);
      }

      v24 = ++gnss::GnssAdaptDevice::Ga07_00GenerateUID(void)::v_Key;
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v33, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_13AddRespHndlToGnsLUT(v2, v24, v33);
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v33);
      v25 = GNS_EaSpeedConstraint(v24, &v30);
      if (v25 == 1)
      {
        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
        if (result)
        {
LABEL_24:
          bzero(__str, 0x410uLL);
          v26 = mach_continuous_time();
          v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v26), "ADP", 68, "setAssistanceSpeedConstraint_block_invoke");
          result = LbsOsaTrace_WriteLog(0x18u, __str, v27, 5, 1);
        }
      }

      else
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v32, a1 + 40);
        gnss::GnssAdaptDevice::Ga07_15AdaptGnsEarlyResponse(v2, v25, v32, "setAssistanceSpeedConstraint_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v32);
        gnss::GnssAdaptDevice::Ga07_14RemoveRespHndlFromGnsLut(v2, v24);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v28 = mach_continuous_time();
          v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SpeedConstraint,%u\n", (*&g_MacClockTicksToMsRelation * v28), "ADP", 69, "setAssistanceSpeedConstraint_block_invoke", 257, v25);
          LbsOsaTrace_WriteLog(0x18u, __str, v29, 0, 1);
        }

        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
        if (result)
        {
          goto LABEL_24;
        }
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v35, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v35, "setAssistanceSpeedConstraint_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v35);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 69, "setAssistanceSpeedConstraint_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v15, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 68, "setAssistanceSpeedConstraint_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v17, 5, 1);
    }
  }

  v18 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2997239F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t gnss::GnssAdaptDevice::startTimeTransferSession(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x29EDCA608];
  if (!*(a3 + 24))
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (!result)
    {
      goto LABEL_8;
    }

LABEL_7:
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 69, "startTimeTransferSession", 513);
    result = LbsOsaTrace_WriteLog(0x18u, __str, v9, 0, 1);
    goto LABEL_8;
  }

  if (!*(a4 + 24))
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (!result)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v6 = *(a1 + 288);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZN4gnss15GnssAdaptDevice24startTimeTransferSessionENSt3__18functionIFvNS_6ResultENS_16TimeTransferDataEEEENS2_IFvS3_EEES8__block_invoke;
  block[3] = &__block_descriptor_tmp_85;
  block[4] = a1;
  std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::__value_func[abi:ne200100](v12, a2);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v13, a3);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v14, a4);
  dispatch_async(v6, block);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v14);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v13);
  result = std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::~__value_func[abi:ne200100](v12);
LABEL_8:
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299723C5C(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v1 + 72);
  std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::~__value_func[abi:ne200100](v1 + 40);
  _Unwind_Resume(a1);
}

uint64_t ___ZN4gnss15GnssAdaptDevice24startTimeTransferSessionENSt3__18functionIFvNS_6ResultENS_16TimeTransferDataEEEENS2_IFvS3_EEES8__block_invoke(uint64_t a1)
{
  v41[3] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "startTimeTransferSession_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(a1 + 64))
  {
    if (*(v2 + 88))
    {
      if (*(v2 + 92) == 1)
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v36, a1 + 72);
        gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 0, v36, "startTimeTransferSession_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v36);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v5 = mach_continuous_time();
          v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx TimeMark\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "startTimeTransferSession_block_invoke", 2056);
          LbsOsaTrace_WriteLog(0x18u, __str, v6, 0, 1);
        }

        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
        if (result)
        {
          bzero(__str, 0x410uLL);
          v8 = mach_continuous_time();
          v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "startTimeTransferSession_block_invoke");
          result = LbsOsaTrace_WriteLog(0x18u, __str, v9, 5, 1);
        }
      }

      else
      {
        std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::__value_func[abi:ne200100](__str, a1 + 40);
        v18 = v2 + 440;
        if (__str != (v2 + 440))
        {
          v19 = v40;
          v20 = *(v2 + 464);
          if (v40 == __str)
          {
            if (v20 == v18)
            {
              (*(*v40 + 24))();
              (*(*v40 + 32))(v40);
              v40 = 0;
              (*(**(v2 + 464) + 24))(*(v2 + 464), __str);
              (*(**(v2 + 464) + 32))(*(v2 + 464));
              *(v2 + 464) = 0;
              v40 = __str;
              (*(v41[0] + 24))(v41, v2 + 440);
              (*(v41[0] + 32))(v41);
            }

            else
            {
              (*(*v40 + 24))();
              (*(*v40 + 32))(v40);
              v40 = *(v2 + 464);
            }

            *(v2 + 464) = v18;
          }

          else if (v20 == v18)
          {
            (*(*v20 + 24))(*(v2 + 464), __str);
            (*(**(v2 + 464) + 32))(*(v2 + 464));
            *(v2 + 464) = v40;
            v40 = __str;
          }

          else
          {
            v40 = *(v2 + 464);
            *(v2 + 464) = v19;
          }
        }

        std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::~__value_func[abi:ne200100](__str);
        v34 = 0;
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v35, a1 + 104);
        gnss::GnssAdaptDevice::Ga07_10AddRespHndlToGnmLUT(v2, 0x12u, v33);
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v35);
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v33);
        started = Gnm_StartTimeMarkSesion(gnss::GnssAdaptDevice::Ga03_03GnssTimeMarkDataCallBack);
        if (started)
        {
          v22 = *(v2 + 464);
          *(v2 + 464) = 0;
          if (v22 == v18)
          {
            (*(*v22 + 32))(v22);
          }

          else if (v22)
          {
            (*(*v22 + 40))(v22);
          }

          gnss::GnssAdaptDevice::Ga07_11HandleGnmStatusResponses(v2, started, 0x12u);
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v27 = mach_continuous_time();
            v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx TimeMark,%u\n", (*&g_MacClockTicksToMsRelation * v27), "ADP", 69, "startTimeTransferSession_block_invoke", 2049, started);
            LbsOsaTrace_WriteLog(0x18u, __str, v28, 0, 1);
          }

          result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
          if (result)
          {
            bzero(__str, 0x410uLL);
            v29 = mach_continuous_time();
            v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v29), "ADP", 68, "startTimeTransferSession_block_invoke");
            result = LbsOsaTrace_WriteLog(0x18u, __str, v30, 5, 1);
          }
        }

        else
        {
          *(v2 + 92) = 1;
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v32, a1 + 72);
          gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 1, v32, "startTimeTransferSession_block_invoke");
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v32);
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 3, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v23 = mach_continuous_time();
            v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Started\n", (*&g_MacClockTicksToMsRelation * v23), "ADP", 77, "startTimeTransferSession_block_invoke");
            LbsOsaTrace_WriteLog(0x18u, __str, v24, 3, 1);
          }

          result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
          if (result)
          {
            bzero(__str, 0x410uLL);
            v25 = mach_continuous_time();
            v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v25), "ADP", 68, "startTimeTransferSession_block_invoke");
            result = LbsOsaTrace_WriteLog(0x18u, __str, v26, 5, 1);
          }
        }
      }
    }

    else
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v37, a1 + 72);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 0, v37, "startTimeTransferSession_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v37);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 69, "startTimeTransferSession_block_invoke", 1302);
        LbsOsaTrace_WriteLog(0x18u, __str, v15, 0, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 68, "startTimeTransferSession_block_invoke");
        result = LbsOsaTrace_WriteLog(0x18u, __str, v17, 5, 1);
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v38, a1 + 72);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v38, "startTimeTransferSession_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v38);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DataCB\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 69, "startTimeTransferSession_block_invoke", 258);
      LbsOsaTrace_WriteLog(0x18u, __str, v11, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 68, "startTimeTransferSession_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v13, 5, 1);
    }
  }

  v31 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299724660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void gnss::GnssAdaptDevice::Ga03_03GnssTimeMarkDataCallBack(gnss::GnssAdaptDevice *a1, char *a2)
{
  v3 = a1;
  v36 = *MEMORY[0x29EDCA608];
  DeviceInstance = gnss::GnssAdaptDevice::Ga00_00GetDeviceInstance(a1);
  if (DeviceInstance)
  {
    v5 = DeviceInstance;
    memset(&v35[4], 0, 17);
    if (a2)
    {
      v6 = *a2;
      v7 = a2[1];
      v8 = *(a2 + 1);
      *v35 = *(a2 + 4);
      *&v35[13] = *(a2 + 17);
      *v18 = *(a2 + 25);
      *&v18[3] = *(a2 + 7);
      v9 = *(a2 + 4);
      v10 = *(a2 + 10);
      v11 = a2[44];
      v12 = a2[45];
      v13 = *(a2 + 23);
    }

    else
    {
      v9 = 0;
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx TimeMarkData\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 69, "Ga03_02HandleTimeMarkDataCallback", 770);
        LbsOsaTrace_WriteLog(0x18u, __str, v15, 0, 1);
      }

      v13 = 0;
      v11 = 0;
      v10 = 0;
      v8 = 0;
      v6 = 0;
      v3 = 11;
    }

    v16 = *(v5 + 288);
    *__str = MEMORY[0x29EDCA5F8];
    v20 = 0x40000000;
    v21 = ___ZN4gnss15GnssAdaptDevice33Ga03_02HandleTimeMarkDataCallbackE11e_Gnm_ErrorP18s_Gnm_TimeMarkData_block_invoke;
    v22 = &__block_descriptor_tmp_117;
    v23 = v5;
    v34 = v3;
    v24 = v6;
    v25 = v7;
    v26 = v8;
    *v27 = *v35;
    *&v27[13] = *&v35[13];
    *v28 = *v18;
    *&v28[3] = *&v18[3];
    v29 = v9;
    v30 = v10;
    v31 = v11;
    v32 = v12;
    v33 = v13;
    dispatch_async(v16, __str);
  }

  v17 = *MEMORY[0x29EDCA608];
}

uint64_t __copy_helper_block_e8_40c63_ZTSNSt3__18functionIFvN4gnss6ResultENS1_16TimeTransferDataEEEE72c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE104c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::__value_func[abi:ne200100](a1 + 40, a2 + 40);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](a1 + 72, a2 + 72);
  result = std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](a1 + 104, a2 + 104);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29972495C(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v1 + 72);
  std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::~__value_func[abi:ne200100](v1 + 40);
  _Unwind_Resume(a1);
}

uint64_t __destroy_helper_block_e8_40c63_ZTSNSt3__18functionIFvN4gnss6ResultENS1_16TimeTransferDataEEEE72c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE104c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 104);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 72);
  v2 = *MEMORY[0x29EDCA608];

  return std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::~__value_func[abi:ne200100](a1 + 40);
}

uint64_t gnss::GnssAdaptDevice::stopTimeTransferSession(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if (*(a2 + 24))
  {
    v2 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice23stopTimeTransferSessionENSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_88;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v8, a2);
    dispatch_async(v2, block);
    result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v8);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "stopTimeTransferSession", 513);
      result = LbsOsaTrace_WriteLog(0x18u, __str, v5, 0, 1);
    }
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice23stopTimeTransferSessionENSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  *(v1 + 92) = 0;
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v4, a1 + 40);
  gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v1, 1, v4, "stopTimeTransferSession_block_invoke");
  result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v4);
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299724BD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void gnss::GnssAdaptDevice::Ga03_00RegisterGnsEaStatusResponse(gnss::GnssAdaptDevice *a1, uint64_t a2, int *a3)
{
  v4 = a1;
  v26 = *MEMORY[0x29EDCA608];
  DeviceInstance = gnss::GnssAdaptDevice::Ga00_00GetDeviceInstance(a1);
  if (DeviceInstance)
  {
    v6 = DeviceInstance;
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Type,%u\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 73, "Ga03_01HandleGnsEaStatusResponse", v4);
      LbsOsaTrace_WriteLog(0x18u, __str, v8, 4, 1);
    }

    if (a3)
    {
      v9 = a3[1];
      if (v9 != 3)
      {
        v14 = *a3;
        v15 = a3[2];
        v16 = *(v6 + 288);
        *__str = MEMORY[0x29EDCA5F8];
        v19 = 0x40000000;
        v20 = ___ZN4gnss15GnssAdaptDevice32Ga03_01HandleGnsEaStatusResponseE15e_gnsEA_MsgTypejP17s_gnsEA_ApiStatus_block_invoke;
        v21 = &__block_descriptor_tmp_98_1;
        v22 = v6;
        v23 = v14;
        v24 = v9;
        v25 = v15;
        dispatch_async(v16, __str);
        goto LABEL_12;
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Resp rcvd for E_gnsEA_DATA_UAC\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 73, "Ga03_01HandleGnsEaStatusResponse");
        v12 = 4;
LABEL_10:
        LbsOsaTrace_WriteLog(0x18u, __str, v11, v12, 1);
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MsgData,%u\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 69, "Ga03_01HandleGnsEaStatusResponse", 770, v4);
      v12 = 0;
      goto LABEL_10;
    }
  }

LABEL_12:
  v17 = *MEMORY[0x29EDCA608];
}

uint64_t ___ZN4gnss15GnssAdaptDevice32Ga03_01HandleGnsEaStatusResponseE15e_gnsEA_MsgTypejP17s_gnsEA_ApiStatus_block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v32 = 0;
  v2 = *(v1 + 264);
  if (!v2)
  {
    goto LABEL_34;
  }

  v4 = v1 + 264;
  v5 = *(a1 + 40);
  v6 = v1 + 264;
  v7 = *(v1 + 264);
  do
  {
    v8 = *(v7 + 32);
    v9 = v8 >= v5;
    v10 = v8 < v5;
    if (v9)
    {
      v6 = v7;
    }

    v7 = *(v7 + 8 * v10);
  }

  while (v7);
  if (v6 != v4 && v5 >= *(v6 + 32))
  {
    v13 = v1 + 264;
    do
    {
      v14 = *(v2 + 32);
      v9 = v14 >= v5;
      v15 = v14 < v5;
      if (v9)
      {
        v13 = v2;
      }

      v2 = *(v2 + 8 * v15);
    }

    while (v2);
    if (v13 == v4 || v5 < *(v13 + 32))
    {
      v13 = v1 + 264;
    }

    std::function<void ()(gnss::Result)>::operator=(v31, v13 + 40);
    std::__tree<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::__map_value_compare<e_Gnm_Api,std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::less<e_Gnm_Api>,true>,std::allocator<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>>>::__remove_node_pointer((v1 + 256), v6);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v6 + 40);
    operator delete(v6);
    if (v32)
    {
      v16 = gnss::GnssAdaptDevice::Ga07_16MapGnsRespToGnssResult(v1, *(a1 + 48));
      if (*(a1 + 44) == 1)
      {
        if (*(a1 + 48) == 1)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v17 = mach_continuous_time();
            v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ExtPosAssist Accepted\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 73, "Ga03_01HandleGnsEaStatusResponse_block_invoke");
            LbsOsaTrace_WriteLog(0x18u, __str, v18, 4, 1);
          }
        }

        else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v21 = mach_continuous_time();
          v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ExtPosAssist Rejected\n", (*&g_MacClockTicksToMsRelation * v21), "ADP", 73, "Ga03_01HandleGnsEaStatusResponse_block_invoke");
          LbsOsaTrace_WriteLog(0x18u, __str, v22, 4, 1);
        }
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v23 = mach_continuous_time();
        v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Ea Type,%u,ID,%u\n", (*&g_MacClockTicksToMsRelation * v23), "ADP", 73, "Ga03_01HandleGnsEaStatusResponse_block_invoke", *(a1 + 44), *(a1 + 40));
        LbsOsaTrace_WriteLog(0x18u, __str, v24, 4, 1);
      }

      v25 = *(v1 + 296);
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 1174405120;
      block[2] = ___ZN4gnss15GnssAdaptDevice32Ga03_01HandleGnsEaStatusResponseE15e_gnsEA_MsgTypejP17s_gnsEA_ApiStatus_block_invoke_2;
      block[3] = &__block_descriptor_tmp_97;
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v29, v31);
      v29[8] = v16;
      dispatch_async(v25, block);
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v29);
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v19 = mach_continuous_time();
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx API type,%u ID,%d\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 87, "Ga03_01HandleGnsEaStatusResponse_block_invoke", 770, *(a1 + 44), *(a1 + 40));
      LbsOsaTrace_WriteLog(0x18u, __str, v20, 2, 1);
    }
  }

  else
  {
LABEL_34:
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnsStatusRespLut Hdl\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 87, "Ga03_01HandleGnsEaStatusResponse_block_invoke", 770);
      LbsOsaTrace_WriteLog(0x18u, __str, v12, 2, 1);
    }
  }

  result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v31);
  v27 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice32Ga03_01HandleGnsEaStatusResponseE15e_gnsEA_MsgTypejP17s_gnsEA_ApiStatus_block_invoke_2(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 64);
  v2 = *MEMORY[0x29EDCA608];
  v3 = a1 + 32;

  return std::function<void ()(gnss::Result)>::operator()(v3, v1);
}

uint64_t ___ZN4gnss15GnssAdaptDevice33Ga03_02HandleTimeMarkDataCallbackE11e_Gnm_ErrorP18s_Gnm_TimeMarkData_block_invoke(uint64_t a1)
{
  v79 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::__value_func[abi:ne200100](v77, v2 + 440);
  if (v78)
  {
    if (*(a1 + 88))
    {
      v3 = *(v2 + 296);
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 1174405120;
      block[2] = ___ZN4gnss15GnssAdaptDevice33Ga03_02HandleTimeMarkDataCallbackE11e_Gnm_ErrorP18s_Gnm_TimeMarkData_block_invoke_2;
      block[3] = &__block_descriptor_tmp_101;
      std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::__value_func[abi:ne200100](v67, v77);
      v67[32] = 0;
      v68 = 0;
      v69 = -1082130432;
      v70 = 0;
      v71 = 0;
      v72 = -1;
      v73 = 0u;
      v74 = 0u;
      v75 = 0;
      dispatch_async(v3, block);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v4 = mach_continuous_time();
        v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Status Unavailable\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "Ga03_02HandleTimeMarkDataCallback_block_invoke", 770);
        LbsOsaTrace_WriteLog(0x18u, __str, v5, 0, 1);
      }

      v6 = v67;
    }

    else
    {
      if (*(a1 + 40) == 1)
      {
        v9 = (*(a1 + 48) * 1000000.0) + 604800000000000 * *(a1 + 42);
        v10 = *(a1 + 56) * 1000000.0;
        v11 = v10 <= 3.40282347e38;
        v12 = v10;
        if (v11)
        {
          v13 = v12;
        }

        else
        {
          v13 = 3.4028e38;
        }

        v14 = 1;
      }

      else
      {
        v9 = 0;
        v14 = 0;
        v13 = -1.0;
      }

      v15 = 1000000 * *(a1 + 80);
      v16 = *(a1 + 72);
      if (v16 <= 2147483650.0)
      {
        if (v16 <= 0.0)
        {
          v21 = -0.5;
        }

        else
        {
          v21 = 0.5;
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v22 = mach_continuous_time();
          v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: UTCCorr %.9f,LeapSec,%d\n", (*&g_MacClockTicksToMsRelation * v22), "ADP", 68, "Ga03_02HandleTimeMarkDataCallback_block_invoke", v16, (v16 + v21));
          LbsOsaTrace_WriteLog(0x18u, __str, v23, 5, 1);
        }

        v24 = v16 - v16;
        if (v24 > 0.0000005 && v24 < 0.9999995 && LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v25 = mach_continuous_time();
          v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx UtcCorr beyond 500ns from seconds boundary,%.9f\n", (*&g_MacClockTicksToMsRelation * v25), "ADP", 87, "Ga03_02HandleTimeMarkDataCallback_block_invoke", 770, v16);
          LbsOsaTrace_WriteLog(0x18u, __str, v26, 2, 1);
        }

        if (*(a1 + 64) == 1)
        {
          v27 = *(a1 + 40);
        }

        else
        {
          v27 = 0;
        }

        v28 = *(a1 + 84);
        if (v28 >= 6)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v29 = mach_continuous_time();
            v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Invalid TimeMark Qual\n", (*&g_MacClockTicksToMsRelation * v29), "ADP", 73, "Ga03_02HandleTimeMarkDataCallback_block_invoke");
            LbsOsaTrace_WriteLog(0x18u, __str, v30, 4, 1);
          }

          v28 = 0;
        }

        v31 = *(a1 + 86);
        if ((v31 & 8) != 0 && LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v32 = mach_continuous_time();
          v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Constel E_GNM_GNSSID_MODGPS\n", (*&g_MacClockTicksToMsRelation * v32), "ADP", 69, "Ga03_02HandleTimeMarkDataCallback_block_invoke", 770);
          LbsOsaTrace_WriteLog(0x18u, __str, v33, 0, 1);
        }

        v34 = v27 & 1;
        v35 = v31 & 0x11 | (8 * ((v31 >> 1) & 1)) | (v31 >> 4) & 6;
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v36 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v37 = 70;
          if (v34)
          {
            v38 = 84;
          }

          else
          {
            v38 = 70;
          }

          if (v14)
          {
            v37 = 84;
          }

          v39 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: WkValid,%c,TimeNs,%llu,TimeUncNs,%f,ClkNs,%llu,LeapSecValid,%c,LeapSec,%d,Qual,%u,ConstUsed,%u\n", v36, "ADP", 73, "Ga03_02HandleTimeMarkDataCallback_block_invoke", v37, v9, v13, v15, v38, (v16 + v21), v28, v35);
          LbsOsaTrace_WriteLog(0x18u, __str, v39, 4, 1);
        }

        v40 = *(v2 + 296);
        v18 = v43;
        v43[0] = MEMORY[0x29EDCA5F8];
        v43[1] = 1174405120;
        v43[2] = ___ZN4gnss15GnssAdaptDevice33Ga03_02HandleTimeMarkDataCallbackE11e_Gnm_ErrorP18s_Gnm_TimeMarkData_block_invoke_2_113;
        v43[3] = &__block_descriptor_tmp_116;
        std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::__value_func[abi:ne200100](v44, v77);
        v44[32] = v14;
        v45 = v9;
        v46 = v13;
        v47 = v34;
        v48 = (v16 + v21);
        v50 = 0;
        v51 = 0;
        v49 = v15;
        v52 = v28;
        v53 = v35;
        v54 = 0;
        v55 = 0;
        dispatch_async(v40, v43);
      }

      else
      {
        v17 = *(v2 + 296);
        v18 = v56;
        v56[0] = MEMORY[0x29EDCA5F8];
        v56[1] = 1174405120;
        v56[2] = ___ZN4gnss15GnssAdaptDevice33Ga03_02HandleTimeMarkDataCallbackE11e_Gnm_ErrorP18s_Gnm_TimeMarkData_block_invoke_2_103;
        v56[3] = &__block_descriptor_tmp_106_0;
        std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::__value_func[abi:ne200100](v57, v77);
        v57[32] = v14;
        v58 = v9;
        v59 = v13;
        v60 = 0;
        v61 = 0;
        v63 = 0u;
        v64 = 0u;
        v62 = v15;
        v65 = 0;
        dispatch_async(v17, v56);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v19 = mach_continuous_time();
          v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx UTCorr,%.9f \n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 69, "Ga03_02HandleTimeMarkDataCallback_block_invoke", 770, v16);
          LbsOsaTrace_WriteLog(0x18u, __str, v20, 0, 1);
        }
      }

      v6 = v18 + 4;
    }

    std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::~__value_func[abi:ne200100](v6);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx TimeTransferDataCB\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "Ga03_02HandleTimeMarkDataCallback_block_invoke", 770);
    LbsOsaTrace_WriteLog(0x18u, __str, v8, 0, 1);
  }

  result = std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::~__value_func[abi:ne200100](v77);
  v42 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice33Ga03_02HandleTimeMarkDataCallbackE11e_Gnm_ErrorP18s_Gnm_TimeMarkData_block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 96);
  v6 = *(a1 + 112);
  v7 = *(a1 + 128);
  v3 = *(a1 + 64);
  v4 = *(a1 + 80);
  result = std::function<void ()(gnss::Result,gnss::TimeTransferData)>::operator()(*(a1 + 56), 8);
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t std::function<void ()(gnss::Result,gnss::TimeTransferData)>::operator()(uint64_t a1, int a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v4 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  result = (*(*a1 + 48))(a1, &v4);
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __copy_helper_block_e8_32c63_ZTSNSt3__18functionIFvN4gnss6ResultENS1_16TimeTransferDataEEEE(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *MEMORY[0x29EDCA608];
  v3 = a1 + 32;
  v4 = a2 + 32;

  return std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::__value_func[abi:ne200100](v3, v4);
}

uint64_t __destroy_helper_block_e8_32c63_ZTSNSt3__18functionIFvN4gnss6ResultENS1_16TimeTransferDataEEEE(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *MEMORY[0x29EDCA608];
  v2 = a1 + 32;

  return std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::~__value_func[abi:ne200100](v2);
}

uint64_t ___ZN4gnss15GnssAdaptDevice33Ga03_02HandleTimeMarkDataCallbackE11e_Gnm_ErrorP18s_Gnm_TimeMarkData_block_invoke_2_103(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 96);
  v6 = *(a1 + 112);
  v7 = *(a1 + 128);
  v3 = *(a1 + 64);
  v4 = *(a1 + 80);
  result = std::function<void ()(gnss::Result,gnss::TimeTransferData)>::operator()(*(a1 + 56), 8);
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice33Ga03_02HandleTimeMarkDataCallbackE11e_Gnm_ErrorP18s_Gnm_TimeMarkData_block_invoke_2_113(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 96);
  v6 = *(a1 + 112);
  v7 = *(a1 + 128);
  v3 = *(a1 + 64);
  v4 = *(a1 + 80);
  result = std::function<void ()(gnss::Result,gnss::TimeTransferData)>::operator()(*(a1 + 56), 1);
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t NK_Reflection_Rejection_Ped(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v96 = *MEMORY[0x29EDCA608];
  v4 = a3 + 0x2000;
  if (*(a4 + 968))
  {
    if (*(a3 + 11048))
    {
      if (!*(a4 + 600) && *(a3 + 11432) <= 6.0 && (*(a3 + 20) - 4) >= 5 && *(a4 + 977) > 0xEu)
      {
        v10 = result;
        if (!*(result + 248) || (v11 = *(result + 80), v11 >= -10.0) && v11 <= 70.0 && fabs(*(result + 120)) <= 0.3)
        {
          v7 = (a3 + 11644);
          if ((*(a3 + 11644) & 1) == 0)
          {
            *(a3 + 11644) = 1;
            bzero((a3 + 11872), 0x3A80uLL);
            *(a3 + 11870) = -1;
            *&v12 = -1;
            *(&v12 + 1) = -1;
            *(a3 + 11838) = v12;
            *(a3 + 11854) = v12;
            *(a3 + 11806) = v12;
            *(a3 + 11822) = v12;
            *(a3 + 11774) = v12;
            *(a3 + 11790) = v12;
            *(a3 + 11742) = v12;
            *(a3 + 11758) = v12;
            *(a3 + 11710) = v12;
            *(a3 + 11726) = v12;
            *(a3 + 11678) = v12;
            *(a3 + 11694) = v12;
            *(a3 + 11646) = v12;
            *(a3 + 11662) = v12;
          }

          v13 = 0;
          v90 = 0;
          *&v14 = -1;
          *(&v14 + 1) = -1;
          v95[1] = v14;
          v95[2] = v14;
          v95[0] = v14;
          v91 = a3 + 11646;
          v93 = a3 + 11824;
          v89 = a3 + 2088;
          v92 = a4 + 26304;
          while (1)
          {
            v15 = *(a2 + 76 + 4 * v13);
            result = Is_Legal(v15);
            if (result)
            {
              v16 = v15 == 6;
            }

            else
            {
              v16 = 1;
            }

            if (!v16)
            {
              v17 = v15 != 4 || BYTE2(v15) >= 5u;
              if (v17 && *(a4 + 2864 + v13) == 1 && *(a4 + 8440 + v13) == 1 && *(a4 + 49 + v13) == 1)
              {
                if (*(a4 + 26208 + v13) == 1 && *(a4 + 26160 + v13) == 1)
                {
                  result = GNSS_Id_To_Num_Prn_Idx(v15);
                  LODWORD(v18) = *(v91 + result);
                  if (v18 == 255)
                  {
                    v19 = *(v4 + 3453);
                    if (v19 == 48)
                    {
                      result = EvLog("NK_Reflection_Rejection_Ped: No space");
LABEL_57:
                      if (v90 < 4)
                      {
                        goto LABEL_8;
                      }

                      VecMedian8(v94, v90);
                      v27 = 0;
                      v28 = a3 + 11872;
                      v29 = a2 + 1232;
                      v31 = -v30;
                      v32 = a3 + 11904;
                      v33 = a3 + 12104;
                      v34 = a3 + 11900;
                      result = a3 + 12112;
                      v35 = a3 + 11646;
                      v36 = v93;
                      while (2)
                      {
                        v37 = *(v36 + v27);
                        if (v37 == 255)
                        {
                          goto LABEL_87;
                        }

                        v38 = *(v95 + v27);
                        if (v38 == 255)
                        {
                          v47 = v28 + 312 * v27;
                          if (*v47 >= 1 && (v48 = *(v47 + 4)) != 0 && *(v47 + 32 + 4 * (*v47 - 1)) && (v49 = *a4, (10 * *(v10 + 948) + 300000 + *(v47 + 32)) > *a4))
                          {
                            *(v47 + 24) = *(v47 + 24) + v31 * ((v49 - v48) * 0.001);
                            *(v47 + 4) = v49;
                          }

                          else
                          {
                            *(v47 + 304) = 0;
                            *(v47 + 272) = 0uLL;
                            *(v47 + 288) = 0uLL;
                            *(v47 + 240) = 0uLL;
                            *(v47 + 256) = 0uLL;
                            *(v47 + 208) = 0uLL;
                            *(v47 + 224) = 0uLL;
                            *(v47 + 176) = 0uLL;
                            *(v47 + 192) = 0uLL;
                            *(v47 + 144) = 0uLL;
                            *(v47 + 160) = 0uLL;
                            *(v47 + 112) = 0uLL;
                            *(v47 + 128) = 0uLL;
                            *(v47 + 80) = 0uLL;
                            *(v47 + 96) = 0uLL;
                            *(v47 + 48) = 0uLL;
                            *(v47 + 64) = 0uLL;
                            *(v47 + 16) = 0uLL;
                            *(v47 + 32) = 0uLL;
                            *v47 = 0uLL;
                            *(v35 + v37) = -1;
                            *(v36 + v27) = -1;
                            --*(v4 + 3453);
                          }

                          goto LABEL_87;
                        }

                        v39 = (v28 + 312 * v27);
                        v40 = *v39;
                        if (!v40)
                        {
                          *(v39 + 38) = 0;
                          *(v39 + 17) = 0uLL;
                          *(v39 + 18) = 0uLL;
                          *(v39 + 15) = 0uLL;
                          *(v39 + 16) = 0uLL;
                          *(v39 + 13) = 0uLL;
                          *(v39 + 14) = 0uLL;
                          *(v39 + 11) = 0uLL;
                          *(v39 + 12) = 0uLL;
                          *(v39 + 9) = 0uLL;
                          *(v39 + 10) = 0uLL;
                          *(v39 + 7) = 0uLL;
                          *(v39 + 8) = 0uLL;
                          *(v39 + 5) = 0uLL;
                          *(v39 + 6) = 0uLL;
                          *(v39 + 3) = 0uLL;
                          *(v39 + 4) = 0uLL;
                          *(v39 + 1) = 0uLL;
                          *(v39 + 2) = 0uLL;
                          *v39 = 0uLL;
                          v45 = *a4;
                          *v39 = 1;
                          v39[1] = v45;
                          v46 = a4 + 26304;
LABEL_71:
                          *(v39 + 1) = *(v46 + 8 * v38);
                          v39[8] = v45;
                          *(v39 + 9) = 0;
                          *(v39 + 2) = *(v29 + 8 * v38);
                          goto LABEL_87;
                        }

                        v41 = v40 - 1;
                        v42 = *a4;
                        v43 = v39[v41 + 8];
                        v44 = *a4 - v43;
                        if (v44 > 300000)
                        {
                          *(v39 + 38) = 0;
                          *(v39 + 17) = 0uLL;
                          *(v39 + 18) = 0uLL;
                          *(v39 + 15) = 0uLL;
                          *(v39 + 16) = 0uLL;
                          *(v39 + 13) = 0uLL;
                          *(v39 + 14) = 0uLL;
                          *(v39 + 11) = 0uLL;
                          *(v39 + 12) = 0uLL;
                          *(v39 + 9) = 0uLL;
                          *(v39 + 10) = 0uLL;
                          *(v39 + 7) = 0uLL;
                          *(v39 + 8) = 0uLL;
                          *(v39 + 5) = 0uLL;
                          *(v39 + 6) = 0uLL;
                          *(v39 + 3) = 0uLL;
                          *(v39 + 4) = 0uLL;
                          *(v39 + 1) = 0uLL;
                          *(v39 + 2) = 0uLL;
                          *v39 = 0uLL;
                          v45 = *a4;
                          *v39 = 1;
                          v39[1] = v45;
                          v46 = a4 + 26304;
                          v36 = v93;
                          goto LABEL_71;
                        }

                        v50 = *(v39 + 2);
                        if (vabdd_f64(*(v29 + 8 * v38), v50) > 149896.229)
                        {
                          *(v39 + 38) = 0;
                          *(v39 + 17) = 0uLL;
                          *(v39 + 18) = 0uLL;
                          *(v39 + 15) = 0uLL;
                          *(v39 + 16) = 0uLL;
                          *(v39 + 13) = 0uLL;
                          *(v39 + 14) = 0uLL;
                          *(v39 + 11) = 0uLL;
                          *(v39 + 12) = 0uLL;
                          *(v39 + 9) = 0uLL;
                          *(v39 + 10) = 0uLL;
                          *(v39 + 7) = 0uLL;
                          *(v39 + 8) = 0uLL;
                          *(v39 + 5) = 0uLL;
                          *(v39 + 6) = 0uLL;
                          *(v39 + 3) = 0uLL;
                          *(v39 + 4) = 0uLL;
                          *(v39 + 1) = 0uLL;
                          *(v39 + 2) = 0uLL;
                          *v39 = 0uLL;
                          goto LABEL_86;
                        }

                        v51 = v39[1];
                        v52 = *(v39 + 3) + v31 * ((v42 - v51) * 0.001);
                        *(v39 + 3) = v52;
                        v53 = 1.5;
                        v54 = 0.15;
                        if (*(v4 + 2970) == 1)
                        {
                          v54 = 0.15;
                          if (*(a3 + 11432) > 1.5)
                          {
                            if (*(a4 + 24712) >= 0.15)
                            {
                              v54 = *(a4 + 24712);
                            }

                            else
                            {
                              v54 = 0.15;
                            }

                            v53 = *(a3 + 11432);
                          }
                        }

                        v55 = v44;
                        v56 = v44 * 0.001;
                        v57 = v56 * ((*(v39 + 1) + *(v92 + 8 * v38)) * 0.5);
                        v58 = *(v89 + 40 * v38 + 16);
                        v59 = v56 * (v54 * 3.0 + v58 * v53);
                        v60 = *(v29 + 8 * v38);
                        v61 = v60 - (v50 + v52 + v57 + v59 + 50.0);
                        v62 = v61 < 1000.0 && v61 > 0.0;
                        if (v62)
                        {
                          v62 = 1;
                          v35 = a3 + 11646;
LABEL_85:
                          v39[1] = v42;
                          *(a4 + 3056 + 4 * v38) = v62;
                          ++*(a4 + 2812);
                          *(a4 + 2960 + v38) = 0;
                          --*(a4 + 2811);
                          *(a4 + 8632 + 4 * v38) = v62;
                          ++*(a4 + 8388);
                          *(a4 + 8536 + v38) = 0;
                          --*(a4 + 8387);
LABEL_86:
                          v36 = v93;
LABEL_87:
                          ++v27;
                          v32 += 312;
                          v33 += 312;
                          v34 += 312;
                          result += 312;
                          if (v27 == 48)
                          {
                            goto LABEL_9;
                          }

                          continue;
                        }

                        break;
                      }

                      if (v40 <= 1)
                      {
                        v35 = a3 + 11646;
                      }

                      else
                      {
                        v63 = 0;
                        v64 = v40 - 1;
                        while (*(v32 + 4 * v63) < v42 - 10 * *(v10 + 948))
                        {
                          ++v63;
                          --v64;
                          if (v40 == v63)
                          {
                            goto LABEL_105;
                          }
                        }

                        v66 = 1.0;
                        v67 = v50;
                        if (v41 > v63)
                        {
                          v68 = v40 - v63;
                          v69 = 0.0;
                          v67 = v50;
                          v70 = v50;
                          v71 = (v33 + 8 * v41);
                          do
                          {
                            v69 = v69 + *(v71 - 10) + *v71;
                            v70 = v70 - *(v71 - 20);
                            v67 = v69 + v67 + v70;
                            --v71;
                            --v64;
                          }

                          while (v64);
                          v66 = v68;
                        }

                        v72 = v60 - (50.0 / v66 + v59 + v57 + v52 + v67 / v66 + 20.0);
                        if (v72 < 1000.0 && v72 > 0.0)
                        {
                          v62 = 2;
                        }

LABEL_105:
                        if (v51 != v43)
                        {
                          v35 = a3 + 11646;
                          if (v62)
                          {
                            goto LABEL_85;
                          }

                          goto LABEL_114;
                        }

                        v35 = a3 + 11646;
                        if (v62)
                        {
                          goto LABEL_85;
                        }

                        if (v40 > 5)
                        {
                          v74 = fmax(v54, 0.75) * 3.0;
                          v75 = v52 + v57;
                          v76 = v50 + v52 + v57 - v60;
                          v77 = v76 * v55;
                          v78 = v55 * v55;
                          v79 = (v34 + 4 * v41);
                          v80 = (v33 + 8 * v41);
                          v81 = 1;
                          v82 = v50;
                          do
                          {
                            v83 = *v79--;
                            v84 = (v42 - v83);
                            v75 = v75 + *(v80 - 10) + *v80;
                            v82 = v82 - *(v80 - 20);
                            v85 = v75 + v82 - v60;
                            ++v81;
                            v55 = v55 + v84;
                            v78 = v78 + v84 * v84;
                            v76 = v76 + v85;
                            v77 = v77 + v85 * v84;
                            --v80;
                          }

                          while (v40 != v81);
                          v86 = v40 * v78 - v55 * v55;
                          if (v86 > 0.0 && (v76 * -v55 + v40 * v77) * -1000.0 / v86 > v74 + v58 * v53)
                          {
                            v62 = 3;
                            goto LABEL_85;
                          }

LABEL_114:
                          if (v40 == 10)
                          {
                            v87 = 0;
                            v88 = result;
                            do
                            {
                              *(v32 + v87) = *(v32 + v87 + 4);
                              *(v88 - 21) = *(v88 - 20);
                              *(v88 - 11) = *(v88 - 10);
                              *(v88 - 1) = *v88;
                              v87 += 4;
                              ++v88;
                            }

                            while (v87 != 36);
                            v42 = *a4;
                            v60 = *(v29 + 8 * v38);
                            LODWORD(v40) = 9;
                          }
                        }
                      }

                      *v39 = v40 + 1;
                      v39[1] = v42;
                      v39[v40 + 8] = v42;
                      v65 = &v39[2 * v40];
                      *(v65 + 9) = v60 - v50;
                      *(v39 + 2) = *(v29 + 8 * v38);
                      *(v65 + 19) = *(v39 + 3);
                      *(v65 + 29) = v57;
                      *(v39 + 3) = 0;
                      v36 = v93;
                      *(v39 + 1) = *(v92 + 8 * v38);
                      goto LABEL_87;
                    }

                    v18 = 0;
                    while (*(v93 + v18) != 255)
                    {
                      if (++v18 == 48)
                      {
                        result = EvCrt_v("NK_Reflection_Rejection_Ped: CODING ERROR");
                        goto LABEL_8;
                      }
                    }

                    *(v93 + v18) = result;
                    *(v91 + result) = v18;
                    *(v4 + 3453) = v19 + 1;
                  }

                  *(v95 + v18) = v13;
                  if (*(a2 + 604 + v13) >= 0x13u && *(v89 + 40 * v13) >= 45)
                  {
                    v20 = *(v92 + 8 * v13) + *(a2 + 1616 + 8 * v13) * 0.190293673;
                    v21 = v90;
                    if (v90)
                    {
                      if (v90 < 1)
                      {
LABEL_49:
                        v21 = v90;
                        v94[v90] = v20;
                      }

                      else
                      {
                        v22 = 0;
                        v23 = v90;
                        while (v20 >= v94[v22])
                        {
                          if (v90 == ++v22)
                          {
                            goto LABEL_49;
                          }
                        }

                        if (v90 > v22)
                        {
                          v24 = &v94[v90];
                          v25 = v24;
                          do
                          {
                            --v23;
                            v26 = *(v25-- - 1);
                            *v24 = v26;
                            v24 = v25;
                          }

                          while (v23 > v22);
                        }

                        v94[v22] = v20;
                        v21 = v90;
                      }
                    }

                    else
                    {
                      v94[0] = *(v92 + 8 * v13) + *(a2 + 1616 + 8 * v13) * 0.190293673;
                    }

                    v90 = v21 + 1;
                  }
                }

                else
                {
                  result = EvLog("NK_Reflection_Rejection_Ped: No SAPE data");
                }
              }
            }

            if (++v13 == 48)
            {
              goto LABEL_57;
            }
          }
        }
      }
    }
  }

  v7 = (a3 + 11644);
LABEL_8:
  *v7 = 0;
LABEL_9:
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t MeasSyncher_Init(uint64_t a1)
{
  v1 = 0;
  v14 = *MEMORY[0x29EDCA608];
  *(a1 + 80) = 75600;
  v2 = a1 + 76176;
  *(a1 + 56) = a1 + 576;
  *(a1 + 64) = a1 + 76176;
  *a1 = a1 + 576;
  *(a1 + 72) = 0x15E000000D8;
  do
  {
    *(a1 + 8 * v1 + 8) = a1 + 576;
    *(a1 + v1++ + 84) = 0;
  }

  while (v1 != 6);
  v3 = 0;
  *(a1 + 96) = v2;
  v4 = a1 + 119376;
  *(a1 + 152) = v2;
  *(a1 + 160) = a1 + 119376;
  *(a1 + 168) = 0xC8000000D8;
  *(a1 + 176) = 43200;
  do
  {
    *(a1 + 8 * v3 + 104) = v2;
    *(a1 + v3++ + 180) = 0;
  }

  while (v3 != 6);
  v5 = 0;
  *(a1 + 192) = v4;
  v6 = a1 + 121536;
  *(a1 + 248) = v4;
  *(a1 + 256) = a1 + 121536;
  *(a1 + 264) = 0xA000000D8;
  *(a1 + 272) = 2160;
  do
  {
    *(a1 + 8 * v5 + 200) = v4;
    *(a1 + v5++ + 276) = 0;
  }

  while (v5 != 6);
  v7 = 0;
  v8 = a1 + 123696;
  *(a1 + 344) = v6;
  *(a1 + 352) = a1 + 123696;
  *(a1 + 288) = v6;
  *(a1 + 360) = 0xA000000D8;
  *(a1 + 368) = 2160;
  do
  {
    *(a1 + 8 * v7 + 296) = v6;
    *(a1 + v7++ + 372) = 0;
  }

  while (v7 != 6);
  v9 = 0;
  v10 = a1 + 125856;
  *(a1 + 440) = v8;
  *(a1 + 448) = a1 + 125856;
  *(a1 + 384) = v8;
  *(a1 + 456) = 0xA000000D8;
  *(a1 + 464) = 2160;
  do
  {
    *(a1 + 8 * v9 + 392) = v8;
    *(a1 + v9++ + 468) = 0;
  }

  while (v9 != 6);
  v11 = 0;
  *(a1 + 536) = v10;
  *(a1 + 544) = a1 + 128016;
  *(a1 + 480) = v10;
  *(a1 + 552) = 0xA000000D8;
  *(a1 + 560) = 2160;
  do
  {
    *(a1 + 8 * v11 + 488) = v10;
    *(a1 + v11++ + 564) = 0;
  }

  while (v11 != 6);
  *(a1 + 128024) = a1;
  *(a1 + 128016) = a1 + 96;
  *(a1 + 128032) = a1 + 192;
  *(a1 + 128040) = a1 + 288;
  *(a1 + 128056) = a1 + 384;
  *(a1 + 128048) = a1 + 480;
  *(a1 + 129360) = 0;
  *(a1 + 129364) = 0;
  *(a1 + 129368) = 0;
  v12 = *MEMORY[0x29EDCA608];
  return 1;
}

BOOL MeasSyncher_applyNewRecord(int a1, _DWORD *a2, uint64_t a3)
{
  v21 = *MEMORY[0x29EDCA608];
  v6 = a2[2];
  if (a1 >= 7)
  {
    if (g_FPE_LogSeverity)
    {
      v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v10 = *(g_TCU + 8);
      }

      else
      {
        v10 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f fifo type not in range", "MeasSyncher_applyNewRecord", 209, v9, v10);
    }

    g_FPE_AssertFlag = 1;
  }

  else
  {
    v7 = v6 - 5;
    if (a1 == 1 && v7 <= 0xFFFFFFFB)
    {
      if (g_FPE_LogSeverity)
      {
        mach_continuous_time();
        if (g_TCU)
        {
          v8 = *(g_TCU + 8);
        }

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Incompatible measurement type for GNSS FIFO");
      }

LABEL_49:
      g_FPE_AssertFlag = 1;
      goto LABEL_50;
    }

    if (!a1 && v6)
    {
      if (g_FPE_LogSeverity)
      {
        mach_continuous_time();
        if (g_TCU)
        {
          v11 = *(g_TCU + 8);
        }

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Incompatible measurement type for SENSORS FIFO");
      }

      goto LABEL_49;
    }

    if (a1 == 2)
    {
      if (v7 < 4 || v6 == 12)
      {
        goto LABEL_50;
      }

      if (g_FPE_LogSeverity)
      {
        mach_continuous_time();
        if (g_TCU)
        {
          v13 = *(g_TCU + 8);
        }

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Incompatible measurement type for CTX FIFO");
      }

      goto LABEL_49;
    }

    if (a1 == 3 && (v6 - 13) <= 0xFFFFFFFD)
    {
      if (g_FPE_LogSeverity)
      {
        mach_continuous_time();
        if (g_TCU)
        {
          v16 = *(g_TCU + 8);
        }

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Incompatible measurement type for DEM FIFO");
      }

      goto LABEL_49;
    }
  }

  if (a1 == 4)
  {
    if (v6 != 10 && v6 != 12)
    {
      if (g_FPE_LogSeverity)
      {
        mach_continuous_time();
        if (g_TCU)
        {
          v15 = *(g_TCU + 8);
        }

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Incompatible measurement type for MAP FIFO");
      }

      goto LABEL_49;
    }
  }

  else if (a1 == 5 && v6 != 9 && v6 != 12)
  {
    if (g_FPE_LogSeverity)
    {
      mach_continuous_time();
      if (g_TCU)
      {
        v14 = *(g_TCU + 8);
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Incompatible measurement type for EXT_POSITION FIFO");
    }

    goto LABEL_49;
  }

LABEL_50:
  v17 = *(a3 + 8 * a1 + 128016);
  v18 = Cyc_Record_Count_Free(v17, 1u);
  if (v18)
  {
    Cyc_Record_Write(v17, a2);
  }

  result = v18 != 0;
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t readNextSample(uint64_t a1, unsigned int a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = a1 + 129360;
  if (*(a1 + 129360 + a2))
  {
    v3 = 1;
  }

  else
  {
    v5 = a2;
    v6 = *(a1 + 8 * a2 + 128016);
    v3 = 1;
    if (Cyc_Record_IsEmpty(v6, 1u))
    {
      v3 = 0;
    }

    else
    {
      Cyc_Record_Read(v6, 1u, (a1 + 216 * v5 + 128064));
      *(v2 + v5) = 1;
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return v3;
}

BOOL MeasSyncher_getNextRecord(uint64_t a1, uint64_t *a2)
{
  v4 = 0;
  v5 = 0;
  v29 = *MEMORY[0x29EDCA608];
  v6 = a1 + 126976;
  do
  {
    v5 |= readNextSample(a1, v4++) ^ 1;
  }

  while (v4 != 6);
  if ((v5 & 1) == 0)
  {
    v7 = 0;
    v8 = 0;
    v9 = *(v6 + 1088);
    v10 = (v6 + 1088);
    do
    {
      v11 = *v10;
      v10 += 27;
      v12 = v11;
      if (v11 < v9)
      {
        v9 = v12;
        v8 = v7;
      }

      ++v7;
    }

    while (v7 != 6);
    v13 = v6 + 1088 + 216 * v8;
    v14 = *(v13 + 16);
    *a2 = *v13;
    *(a2 + 1) = v14;
    v15 = *(v13 + 32);
    v16 = *(v13 + 48);
    v17 = *(v13 + 80);
    *(a2 + 4) = *(v13 + 64);
    *(a2 + 5) = v17;
    *(a2 + 2) = v15;
    *(a2 + 3) = v16;
    v18 = *(v13 + 96);
    v19 = *(v13 + 112);
    v20 = *(v13 + 144);
    *(a2 + 8) = *(v13 + 128);
    *(a2 + 9) = v20;
    *(a2 + 6) = v18;
    *(a2 + 7) = v19;
    v21 = *(v13 + 160);
    v22 = *(v13 + 176);
    v23 = *(v13 + 192);
    a2[26] = *(v13 + 208);
    *(a2 + 11) = v22;
    *(a2 + 12) = v23;
    *(a2 + 10) = v21;
    *(a1 + v8 + 129360) = 0;
    v24 = *a2;
    if (*a2 < *(v6 + 2392))
    {
      if (g_FPE_LogSeverity)
      {
        v25 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v26 = *(g_TCU + 8);
        }

        else
        {
          v26 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f measurement from the past in MeasSyncher: measToReadTime=%f, lastRecordTime=%f", "MeasSyncher_getNextRecord", 330, v25, v26, v9, *(v6 + 2392));
        v24 = *a2;
      }

      g_FPE_AssertFlag = 1;
    }

    *(v6 + 2392) = v24;
  }

  v27 = *MEMORY[0x29EDCA608];
  return (v5 & 1) == 0;
}

uint64_t SV_Gen_Meas_Update_Wrapper(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6);
  v7 = 0;
  v38[198] = *MEMORY[0x29EDCA608];
  do
  {
    v8 = &__dst[v7];
    v8[32] = 0;
    *v8 = 0uLL;
    *(v8 + 1) = 0uLL;
    v7 += 36;
  }

  while (v7 != 1728);
  for (i = 0; i != 2688; i += 56)
  {
    v10 = &__dst[i];
    *(v10 + 216) = 0;
    *(v10 + 868) = 0;
    *&__dst[i + 1740] = 0;
    *(v10 + 874) = 0;
    v11 = &__dst[i + 1752];
    *(v10 + 222) = 0;
    *(v10 + 884) = 0;
    *v11 = 0uLL;
  }

  v18 = 0;
  v17 = 0;
  v12 = v19;
  v13 = 2304;
  do
  {
    *(v12 - 2) = 0;
    *(v12 - 4) = 0;
    *v12 = 0uLL;
    *(v12 + 1) = 0uLL;
    *(v12 + 29) = 0;
    v12 += 12;
    v13 -= 48;
  }

  while (v13);
  v19[574] = 0;
  v20 = 0;
  v23 = 0;
  v21 = 0u;
  v22 = 0;
  v24 = 0u;
  v25 = 0;
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
  memset(v37, 0, sizeof(v37));
  bzero(v38, 0x630uLL);
  GNSS_Validate_p_list(v6, "SV_Gen_Meas_Update_Wrapper: Entry");
  *(v6 + 224) = __dst;
  SV_Gen_Meas(*(v6 + 168), __dst, *(v6 + 280), *(v6 + 80), *(v6 + 16), *(v6 + 72), *(v6 + 40), *(v6 + 56), *(v6 + 48), *(v6 + 104), *(v6 + 64));
  *(v6 + 224) = 0;
  result = GNSS_Validate_p_list(v6, "SV_Gen_Meas_Update_Wrapper:  Exit");
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm30_00InitConfig(void)
{
  v2 = *MEMORY[0x29EDCA608];
  Gnm33_10InitTraceCfg();
  dword_2A193B808 = 0;
  *&byte_2A193B6E0[200] = 0u;
  *&byte_2A193B6E0[184] = 0u;
  *&byte_2A193B6E0[168] = 0u;
  *&byte_2A193B6E0[152] = 0u;
  *&byte_2A193B6E0[136] = 0u;
  *&byte_2A193B6E0[120] = 0u;
  *&byte_2A193B6E0[104] = 0u;
  *&byte_2A193B6E0[88] = 0u;
  *&byte_2A193B6E0[72] = 0u;
  *&byte_2A193B6E0[56] = 0u;
  *&byte_2A193B6E0[40] = 0u;
  *&byte_2A193B6E0[24] = 0u;
  *&byte_2A193B6E0[8] = 0u;
  *&dword_2A193B6D8 = 0u;
  *&dword_2A193B6C8 = 0u;
  unk_2A193B6B8 = 0u;
  xmmword_2A193B7E8 = 0u;
  *&qword_2A193B7F8 = 0u;
  unk_2A193B7C8 = 0u;
  *(&qword_2A193B7D6 + 2) = 0u;
  xmmword_2A193B7B8 = 0u;
  g_PltfmConfig = 0x332E352E322E76;
  *&dword_2A193B6BC = 0x50004000000727;
  dword_2A193B6D8 = 131073796;
  WORD2(qword_2A193B6C0) = 64;
  LODWORD(qword_2A193B6CC) = 36700192;
  WORD2(qword_2A193B6CC) = 32;
  word_2A193B7D4 = 140;
  Gnm32_00PrintPltfmCfg("INITIALIZED DEFAULT VALUE");
  LOBYTE(qword_2A1920C38) = 2;
  dword_2A1920C34 = 33686018;
  Gnm34_00PrintTaTraceCfg("INITIALIZED DEFAULT VALUE");
  v0 = *MEMORY[0x29EDCA608];

  return Gnm31_10InitUserCfg();
}

uint64_t Gnm30_10GetConfig(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_GET_CONFIG\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm30_10GetConfig");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      goto LABEL_19;
    }

    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 69, "Gnm30_10GetConfig", 517);
    v8 = 0;
LABEL_18:
    LbsOsaTrace_WriteLog(0xBu, __str, v7, v8, 1);
    goto LABEL_19;
  }

  v4 = *(a1 + 24);
  if (!v4)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      goto LABEL_19;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
    goto LABEL_17;
  }

  v5 = *(a1 + 16);
  if (v5 == 3)
  {
    Gnm33_16GetTraceCfg(*(a1 + 12), v4);
    goto LABEL_19;
  }

  if (v5 == 2)
  {
    Gnm32_14GetPltfmCfg(*(a1 + 12), v4);
    goto LABEL_19;
  }

  if (v5 != 1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      goto LABEL_19;
    }

    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v13 = *(a1 + 16);
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ConfigType,%hhu\n", (*&g_MacClockTicksToMsRelation * v10));
LABEL_17:
    v7 = v9;
    v8 = 2;
    goto LABEL_18;
  }

  Gnm31_14GetUserCfg(*(a1 + 12), v4);
LABEL_19:
  v11 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2A1C6FE18]();
}

{
  return MEMORY[0x2A1C6FE20]();
}

{
  return MEMORY[0x2A1C6FE40]();
}

void operator delete[](void *__p, const std::nothrow_t *a2)
{
    ;
  }
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete(void *__p, const std::nothrow_t *a2)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2A1C76650](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

ldiv_t ldiv(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C753C8](a1, a2);
  result.rem = v3;
  result.quot = v2;
  return result;
}