void *sprintf_sgR8(void *a1, double a2)
{
  v24 = *MEMORY[0x29EDCA608];
  v2 = fabs(a2);
  v3 = (*a1)++;
  *v3 = 32;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  if (v2 < 99.0)
  {
    v4 = a2 * 1000.0;
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

    v14 = *MEMORY[0x29EDCA608];
    v15 = 4;
LABEL_40:

    return sprintf_6f(a1, v7, v15);
  }

  if (v2 < 999.0)
  {
    v8 = a2 * 100.0;
    v9 = -0.5;
    if (v8 > 0.0)
    {
      v9 = 0.5;
    }

    v10 = v8 + v9;
    if (v10 <= 2147483650.0)
    {
      if (v10 >= -2147483650.0)
      {
        v7 = v10;
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

    v19 = *MEMORY[0x29EDCA608];
    v15 = 3;
    goto LABEL_40;
  }

  if (v2 < 9999.0)
  {
    v11 = a2 * 10.0;
    v12 = -0.5;
    if (v11 > 0.0)
    {
      v12 = 0.5;
    }

    v13 = v11 + v12;
    if (v13 <= 2147483650.0)
    {
      if (v13 >= -2147483650.0)
      {
        v7 = v13;
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

    v22 = *MEMORY[0x29EDCA608];
    v15 = 2;
    goto LABEL_40;
  }

  if (v2 >= 99999.0)
  {
    v20 = *MEMORY[0x29EDCA608];

    return sprintf_seR8(a1, a2);
  }

  else
  {
    v16 = -0.5;
    if (a2 > 0.0)
    {
      v16 = 0.5;
    }

    v17 = v16 + a2;
    if (v17 <= 2147483650.0)
    {
      if (v17 >= -2147483650.0)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0x80000000;
      }
    }

    else
    {
      v18 = 0x7FFFFFFF;
    }

    v23 = *MEMORY[0x29EDCA608];

    return sprintf_7d(a1, v18);
  }
}

void *sprintf_sgR8F(void *a1, double a2)
{
  v24 = *MEMORY[0x29EDCA608];
  v2 = fabs(a2);
  v3 = (*a1)++;
  *v3 = 32;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  if (v2 < 99.0)
  {
    v4 = a2 * 1000.0;
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

    v14 = *MEMORY[0x29EDCA608];
    v15 = 4;
LABEL_40:

    return sprintf_8f(a1, v7, v15);
  }

  if (v2 < 999.0)
  {
    v8 = a2 * 100.0;
    v9 = -0.5;
    if (v8 > 0.0)
    {
      v9 = 0.5;
    }

    v10 = v8 + v9;
    if (v10 <= 2147483650.0)
    {
      if (v10 >= -2147483650.0)
      {
        v7 = v10;
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

    v19 = *MEMORY[0x29EDCA608];
    v15 = 3;
    goto LABEL_40;
  }

  if (v2 < 9999.0)
  {
    v11 = a2 * 10.0;
    v12 = -0.5;
    if (v11 > 0.0)
    {
      v12 = 0.5;
    }

    v13 = v11 + v12;
    if (v13 <= 2147483650.0)
    {
      if (v13 >= -2147483650.0)
      {
        v7 = v13;
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

    v22 = *MEMORY[0x29EDCA608];
    v15 = 2;
    goto LABEL_40;
  }

  if (v2 >= 99999.0)
  {
    v20 = *MEMORY[0x29EDCA608];

    return sprintf_seR8(a1, a2);
  }

  else
  {
    v16 = -0.5;
    if (a2 > 0.0)
    {
      v16 = 0.5;
    }

    v17 = v16 + a2;
    if (v17 <= 2147483650.0)
    {
      if (v17 >= -2147483650.0)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0x80000000;
      }
    }

    else
    {
      v18 = 0x7FFFFFFF;
    }

    v23 = *MEMORY[0x29EDCA608];

    return sprintf_9d(a1, v18);
  }
}

char **sprintf_ACC(char **result, double a2)
{
  v26 = *MEMORY[0x29EDCA608];
  if (a2 <= 99999.0)
  {
    if (a2 <= 9.9)
    {
      if (a2 <= 0.99)
      {
        if (a2 <= 0.099)
        {
          v16 = a2 * 1000.0;
          v17 = -0.5;
          if (v16 > 0.0)
          {
            v17 = 0.5;
          }

          v18 = v16 + v17;
          if (v18 <= 2147483650.0)
          {
            if (v18 >= -2147483650.0)
            {
              v12 = v18;
            }

            else
            {
              v12 = 0x80000000;
            }
          }

          else
          {
            v12 = 0x7FFFFFFF;
          }

          v24 = *MEMORY[0x29EDCA608];
          v25 = *MEMORY[0x29EDCA608];
          v21 = 4;
        }

        else
        {
          v13 = a2 * 100.0;
          v14 = -0.5;
          if (v13 > 0.0)
          {
            v14 = 0.5;
          }

          v15 = v13 + v14;
          if (v15 <= 2147483650.0)
          {
            if (v15 >= -2147483650.0)
            {
              v12 = v15;
            }

            else
            {
              v12 = 0x80000000;
            }
          }

          else
          {
            v12 = 0x7FFFFFFF;
          }

          v22 = *MEMORY[0x29EDCA608];
          v23 = *MEMORY[0x29EDCA608];
          v21 = 3;
        }
      }

      else
      {
        v9 = a2 * 10.0;
        v10 = -0.5;
        if (v9 > 0.0)
        {
          v10 = 0.5;
        }

        v11 = v9 + v10;
        if (v11 <= 2147483650.0)
        {
          if (v11 >= -2147483650.0)
          {
            v12 = v11;
          }

          else
          {
            v12 = 0x80000000;
          }
        }

        else
        {
          v12 = 0x7FFFFFFF;
        }

        v19 = *MEMORY[0x29EDCA608];
        v20 = *MEMORY[0x29EDCA608];
        v21 = 2;
      }

      return sprintf_4f(result, v12, v21);
    }

    else
    {
      v6 = a2 + 0.5;
      if (v6 >= 2147483650.0)
      {
        v6 = 2147483650.0;
      }

      v7 = *MEMORY[0x29EDCA608];
      v8 = *MEMORY[0x29EDCA608];

      return sprintf_5d(result, v6);
    }
  }

  else
  {
    v2 = *result;
    v3 = 57;
    v4 = 1u;
    do
    {
      *result = v2 + 1;
      *v2 = v3;
      v2 = *result;
      if (*result >= result[3])
      {
        v2 = result[2];
        *result = v2;
      }

      v3 = str_10[v4++];
    }

    while (v4 != 6);
    v5 = *MEMORY[0x29EDCA608];
  }

  return result;
}

uint64_t sprintf_v(uint64_t result, char *a2, int *a3)
{
  v3 = result;
  v33 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (*a2)
  {
    v5 = a2;
    v6 = 0;
    do
    {
      if (v4 != 37 && (v6 & 1) == 0)
      {
        goto LABEL_5;
      }

      if ((v6 & 1) == 0)
      {
        v8 = *++v5;
        v4 = v8;
        if (!v8)
        {
          goto LABEL_50;
        }
      }

      if (v4 <= 101)
      {
        if (v4 > 99)
        {
          if (v4 == 100)
          {
            v15 = a3;
            a3 += 2;
            v16 = *v15;
            if (v16 >= 0)
            {
              v17 = v16;
            }

            else
            {
              v17 = -v16;
            }

            result = sprintf1da(v3, v17, v32, 0, v16 >> 31);
          }

          else
          {
            v12 = a3;
            a3 += 2;
            result = sprintf_eR8(v3, *v12);
          }

          goto LABEL_7;
        }

        if (v4 == 88)
        {
          v14 = a3;
          a3 += 2;
          result = sprintf_1X(v3, *v14);
          goto LABEL_7;
        }

        if (v4 == 99)
        {
          v11 = a3;
          a3 += 2;
          v4 = *v11;
LABEL_5:
          v7 = (*v3)++;
          *v7 = v4;
          goto LABEL_6;
        }
      }

      else if (v4 <= 114)
      {
        if (v4 == 102)
        {
          v24 = a3;
          a3 += 2;
          result = sprintf_sgR8(v3, *v24);
          goto LABEL_7;
        }

        if (v4 == 103)
        {
          v13 = a3;
          a3 += 2;
          result = sprintf_gR8(v3, *v13);
          goto LABEL_7;
        }
      }

      else
      {
        switch(v4)
        {
          case 's':
            v18 = a3;
            a3 += 2;
            v19 = *v18;
            v20 = *v19;
            if (*v19)
            {
              v21 = *v3;
              v22 = v19 + 1;
              do
              {
                *v3 = v21 + 1;
                *v21 = v20;
                v21 = *v3;
                if (*v3 >= v3[3])
                {
                  v21 = v3[2];
                  *v3 = v21;
                }

                v23 = *v22++;
                v20 = v23;
              }

              while (v23);
            }

            goto LABEL_7;
          case 'u':
            v25 = a3;
            a3 += 2;
            result = sprintf_1u(v3, *v25);
            goto LABEL_7;
          case 'x':
            v9 = a3;
            a3 += 2;
            result = sprintf_1x(v3, *v9);
            goto LABEL_7;
        }
      }

      if ((v4 - 48) < 0xA || v4 <= 0x2E && ((1 << v4) & 0x680800000000) != 0)
      {
        v6 = 1;
        goto LABEL_17;
      }

      v26 = (*v3)++;
      *v26 = 37;
      v27 = *v3;
      if (*v3 >= v3[3])
      {
        v27 = v3[2];
        *v3 = v27;
      }

      v28 = *v5;
      *v3 = v27 + 1;
      *v27 = v28;
LABEL_6:
      if (*v3 >= v3[3])
      {
        v6 = 0;
        *v3 = v3[2];
        goto LABEL_17;
      }

LABEL_7:
      v6 = 0;
LABEL_17:
      v10 = *++v5;
      v4 = v10;
    }

    while (v10);
  }

  v29 = (*v3)++;
  *v29 = 10;
  if (*v3 >= v3[3])
  {
    *v3 = v3[2];
  }

LABEL_50:
  v30 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GncP04_05HandlePosEventInd(uint64_t a1)
{
  v57 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 69, "GncP04_05HandlePosEventInd", 517);
      v15 = 0;
LABEL_16:
      LbsOsaTrace_WriteLog(8u, __str, v14, v15, 1);
      goto LABEL_68;
    }

    goto LABEL_68;
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_POS_EVENT SMClient,%hhu,Ses,%u,PosOp,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP04_05HandlePosEventInd", *(a1 + 12), *(a1 + 14), *(a1 + 16));
    LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
  }

  v4 = *(a1 + 12);
  v5 = *(a1 + 14);
  if (!*(a1 + 16))
  {
    v16 = 0;
    v17 = 1;
    while (1)
    {
      v18 = v17;
      v19 = &g_GncPCntxtInfo + 36 * v16;
      if (v19[8] == 1 && v19[4] == v4 && *(v19 + 3) == v5)
      {
        break;
      }

      v17 = 0;
      v16 = 1;
      if ((v18 & 1) == 0)
      {
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
        {
          goto LABEL_49;
        }

        bzero(__str, 0x410uLL);
        v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v54 = *(a1 + 14);
        v55 = *(a1 + 16);
        v50 = 2050;
        v52 = *(a1 + 12);
        v11 = "GncP04_06HandleStopPosEvent";
        v12 = "%10u %s%c %s: #%04hx Client,%hhu,Ses,%u,PosOp,%u\n";
LABEL_24:
        v20 = snprintf(__str, 0x40FuLL, v12, v10, "GNC", 87, v11, v50, v52, v54, v55);
        goto LABEL_48;
      }
    }

    if (v4 != 1)
    {
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        goto LABEL_49;
      }

      bzero(__str, 0x410uLL);
      v40 = mach_continuous_time();
      v53 = *(a1 + 12);
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ClientID,%hhu\n", (*&g_MacClockTicksToMsRelation * v40));
      goto LABEL_48;
    }

    *(v19 + 35) = 0;
    *(v19 + 20) = 0u;
    *(v19 + 4) = 0u;
    if ((BYTE2(g_GncPCntxtInfo) - 3) > 0xFDu)
    {
      --BYTE2(g_GncPCntxtInfo);
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
      {
        goto LABEL_78;
      }

      bzero(__str, 0x410uLL);
      v41 = mach_continuous_time();
      v38 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Instance,%u\n", (*&g_MacClockTicksToMsRelation * v41), "GNC", 73, "GncP04_04DecreaseInstnCount", BYTE2(g_GncPCntxtInfo));
      v39 = 4;
    }

    else
    {
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        goto LABEL_78;
      }

      bzero(__str, 0x410uLL);
      v37 = mach_continuous_time();
      v38 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Count,%u\n", (*&g_MacClockTicksToMsRelation * v37), "GNC", 87, "GncP04_04DecreaseInstnCount", 770, BYTE2(g_GncPCntxtInfo));
      v39 = 2;
    }

    LbsOsaTrace_WriteLog(8u, __str, v38, v39, 1);
LABEL_78:
    v42 = 0;
    v43 = 1;
    while (1)
    {
      v44 = v43;
      v45 = &g_GncPCntxtInfo + 36 * v42;
      if (v45[8] == 1 && !v45[36])
      {
        break;
      }

      v43 = 0;
      v42 = 1;
      if ((v44 & 1) == 0)
      {
        GncP16_23UpdateStateFGSession(0);
        break;
      }
    }

    v46 = 0;
    v47 = 1;
    while (1)
    {
      v48 = v47;
      v49 = &g_GncPCntxtInfo + 36 * v46;
      if (v49[8] == 1 && (v49[9] & 8) != 0)
      {
        goto LABEL_49;
      }

      v47 = 0;
      v46 = 1;
      if ((v48 & 1) == 0)
      {
        if (qword_2A191FD10)
        {
          free(qword_2A191FD10);
        }

        qword_2A191FD10 = 0;
        goto LABEL_49;
      }
    }
  }

  v6 = 0;
  v7 = 1;
  do
  {
    v8 = v7;
    v9 = &g_GncPCntxtInfo + 36 * v6;
    if (v9[8] == 1 && v9[4] == v4 && *(v9 + 3) == v5)
    {
      v21 = 1;
      goto LABEL_35;
    }

    v7 = 0;
    v6 = 1;
  }

  while ((v8 & 1) != 0);
  if (BYTE8(g_GncPCntxtInfo))
  {
    if (byte_2A1939EAC)
    {
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        goto LABEL_49;
      }

      bzero(__str, 0x410uLL);
      v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v54 = *(a1 + 14);
      v55 = *(a1 + 16);
      v50 = 2054;
      v52 = *(a1 + 12);
      v11 = "GncP04_07ProcessPosEvent";
      v12 = "%10u %s%c %s: #%04hx Client,%hhu,ID,%u,PosOp,%u\n";
      goto LABEL_24;
    }

    LOBYTE(v6) = 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  if (BYTE2(g_GncPCntxtInfo) < 2u)
  {
    ++BYTE2(g_GncPCntxtInfo);
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v25 = mach_continuous_time();
      v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Instance,%u\n", (*&g_MacClockTicksToMsRelation * v25), "GNC", 73, "GncP04_03IncreaseInstnCount", BYTE2(g_GncPCntxtInfo));
      v24 = 4;
      goto LABEL_33;
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v22 = mach_continuous_time();
    v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Count,%u\n", (*&g_MacClockTicksToMsRelation * v22), "GNC", 87, "GncP04_03IncreaseInstnCount", 770, BYTE2(g_GncPCntxtInfo));
    v24 = 2;
LABEL_33:
    LbsOsaTrace_WriteLog(8u, __str, v23, v24, 1);
  }

  v21 = 0;
LABEL_35:
  v26 = &g_GncPCntxtInfo + 36 * v6;
  v26[4] = *(a1 + 12);
  v27 = (v26 + 4);
  v27[4] = 1;
  *(v27 + 1) = *(a1 + 14);
  v27[5] = *(a1 + 16);
  *(v27 + 8) = *(a1 + 20);
  *(v27 + 12) = *(a1 + 36);
  *(v27 + 26) = *(a1 + 38);
  *(v27 + 30) = *(a1 + 42);
  v27[34] = *(a1 + 46);
  if (LbsOsaTrace_IsLoggingAllowed(8u, 3, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v28 = mach_continuous_time();
    v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Client,%hhu,ID,%u,Output,%u,ReqRcvd,%u,Deadline,%u,Emergency,%u\n", (*&g_MacClockTicksToMsRelation * v28), "GNC", 77, "GncP04_07ProcessPosEvent", 2057, *v27, *(v27 + 1), v27[5], *(v27 + 2), *(v27 + 3), v27[33]);
    LbsOsaTrace_WriteLog(8u, __str, v29, 3, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 3, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v30 = mach_continuous_time();
    v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx StartTime,%u,Int,%u,HAcc,%u,Vacc,%u,ConstMask,%u,PrefFtaMeasTime,%u\n", (*&g_MacClockTicksToMsRelation * v30), "GNC", 77, "GncP04_07ProcessPosEvent", 2057, *(v27 + 4), *(v27 + 5), *(v27 + 12), *(v27 + 13), v27[30], v27[34]);
    LbsOsaTrace_WriteLog(8u, __str, v31, 3, 1);
  }

  if (*v27 == 1)
  {
    GncP16_23UpdateStateFGSession(1);
    if ((*(a1 + 16) & 4) != 0)
    {
      v32 = v21;
    }

    else
    {
      v32 = 1;
    }

    if ((v32 & 1) == 0)
    {
      GncP12_10ClearPeRtiInfo();
    }

    goto LABEL_49;
  }

  if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
  {
    goto LABEL_49;
  }

  bzero(__str, 0x410uLL);
  mach_continuous_time();
  v51 = *v27;
  v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Invalid ClientID,%hhu\n");
LABEL_48:
  LbsOsaTrace_WriteLog(8u, __str, v20, 2, 1);
LABEL_49:
  if (g_GncPStateInfo <= 2u)
  {
    if (!g_GncPStateInfo)
    {
      goto LABEL_68;
    }

    if (g_GncPStateInfo != 1)
    {
      if (g_GncPStateInfo != 2)
      {
LABEL_63:
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
        {
          goto LABEL_68;
        }

        bzero(__str, 0x410uLL);
        v34 = mach_continuous_time();
        v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v34), "GNC", 87, "GncP04_05HandlePosEventInd", 770);
        v15 = 2;
        goto LABEL_16;
      }

LABEL_58:
      v33 = 3;
      goto LABEL_67;
    }

LABEL_65:
    v33 = 2;
    goto LABEL_67;
  }

  if (g_GncPStateInfo > 0x10u)
  {
LABEL_61:
    if (g_GncPStateInfo != 3)
    {
      if (g_GncPStateInfo != 4)
      {
        goto LABEL_63;
      }

      goto LABEL_58;
    }

    goto LABEL_65;
  }

  if (((1 << g_GncPStateInfo) & 0xC380) != 0)
  {
    if (*(a1 + 16))
    {
      v33 = 6;
    }

    else
    {
      v33 = 1;
    }

    goto LABEL_67;
  }

  if (((1 << g_GncPStateInfo) & 0x10C20) == 0)
  {
    if (g_GncPStateInfo == 6)
    {
      v33 = 7;
LABEL_67:
      GncP04_19SendPosEvntResp(v33);
      goto LABEL_68;
    }

    goto LABEL_61;
  }

LABEL_68:
  v35 = *MEMORY[0x29EDCA608];
  return 0;
}

void GncP04_19SendPosEvntResp(char a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = gnssOsa_Calloc("GncP04_19SendPosEvntResp", 496, 1, 0x10uLL);
  if (v2)
  {
    v3 = v2;
    v2[12] = a1;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_POS_EVENT_RSP =>GNCS Status,%hhu\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 73, "GncP04_19SendPosEvntResp", v3[12]);
      LbsOsaTrace_WriteLog(8u, __str, v5, 4, 1);
    }

    AgpsSendFsmMsg(134, 130, 8784387, v3);
  }

  v6 = *MEMORY[0x29EDCA608];
}

uint64_t GncP04_08GetNextSessInstn(unsigned int a1, void *a2, unsigned __int8 a3)
{
  v15 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v3 = 0;
    v4 = 0;
    v5 = 1;
    while (1)
    {
      v6 = v5;
      v7 = &g_GncPCntxtInfo + 36 * v3;
      if (v7[8] == 1 && (v7[9] & a3) != 0 && a1 < ++v4)
      {
        break;
      }

      v5 = 0;
      v8 = 0;
      v3 = 1;
      if ((v6 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    memcpy_s("GncP04_08GetNextSessInstn", 391, a2, 0x24u, v7 + 4, 0x24uLL);
    v8 = 1;
  }

  else
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
    v8 = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 87, "GncP04_08GetNextSessInstn", 513);
      LbsOsaTrace_WriteLog(8u, __str, v11, 2, 1);
      v8 = 0;
    }
  }

LABEL_11:
  v12 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t GncP04_18ChkAnyFGSessQualMet(void)
{
  v0 = 0;
  v10 = *MEMORY[0x29EDCA608];
  v1 = 1;
  while (1)
  {
    v2 = v1;
    v3 = &g_GncPCntxtInfo + 36 * v0;
    if (v3[8] == 1 && v3[4] == 1 && GncP01_33CheckSessionQualMet((v3 + 4)))
    {
      break;
    }

    v1 = 0;
    v4 = 0;
    v0 = 1;
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SesId,%u,Output,%u\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 73, "GncP04_18ChkAnyFGSessQualMet", *(v3 + 3), v3[9]);
    v4 = 1;
    LbsOsaTrace_WriteLog(8u, __str, v8, 4, 1);
  }

  else
  {
    v4 = 1;
  }

LABEL_6:
  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

void GncP04_21SendClearGnssAck(char a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v1 = g_GnssDataClrMask;
  if (g_GnssDataClrMask)
  {
    v3 = gnssOsa_Calloc("GncP04_21SendClearGnssAck", 524, 1, 0x14uLL);
    if (v3)
    {
      v4 = v3;
      v3[12] = a1;
      *(v3 + 4) = v1;
      if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_CLEAR_GNSS_RSP =>GNM Status,%u\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 73, "GncP04_21SendClearGnssAck", v4[12]);
        LbsOsaTrace_WriteLog(8u, __str, v6, 4, 1);
      }

      AgpsSendFsmMsg(134, 128, 8786436, v4);
      g_GnssDataClrMask = 0;
    }
  }

  v7 = *MEMORY[0x29EDCA608];
}

uint64_t GncP04_30HandleNmeaDataReq(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_NMEA_DATA_REQ Req,%u,Mask,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP04_30HandleNmeaDataReq", *(a1 + 12), *(a1 + 14));
      LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
    }

    if (*(a1 + 12) == 1)
    {
      v4 = *(a1 + 14);
      if (!v4)
      {
        if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v5 = mach_continuous_time();
          v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 87, "GncP04_30HandleNmeaDataReq", 515);
          v7 = 2;
LABEL_10:
          LbsOsaTrace_WriteLog(8u, __str, v6, v7, 1);
          goto LABEL_13;
        }

        goto LABEL_13;
      }
    }

    else
    {
      v4 = 0;
    }

    LOWORD(g_GncPCntxtInfo) = v4;
    GncP03_12SendUpdtCfg(&g_GncPCntxtInfo, 0);
    goto LABEL_13;
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 69, "GncP04_30HandleNmeaDataReq", 517);
    v7 = 0;
    goto LABEL_10;
  }

LABEL_13:
  v9 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t NK_IntConstel_TO_IntMeas(uint64_t result, uint64_t a2, uint64_t a3)
{
  v27 = *MEMORY[0x29EDCA608];
  v4 = (a2 + 23264);
  v26 = 0;
  v25 = 0u;
  memset(v24, 0, sizeof(v24));
  v5 = *(a2 + 23264);
  if (v5 != 4)
  {
    if (v5 != 2 || *(a3 + 16296) != 1)
    {
      goto LABEL_47;
    }

    v6 = vcvtd_n_f64_s32(*(a3 + 16236), 0x1EuLL) * 299792458.0;
    if (v6 >= 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = -v6;
    }

    if (v7 >= 0x12D)
    {
      result = EvLog_v(" NK_IntConstel_TO_IntMeas: Large GGTO: %d");
      goto LABEL_47;
    }

    *(result + 7288) = v6;
    *(result + 7296) = 0x4024000000000000;
    v13 = *(a2 + 23268);
    if (v13 != 1)
    {
      goto LABEL_47;
    }

    v11 = 0;
    v12 = 10.0;
    v14 = 10992;
    v15 = 736;
    v16 = 744;
    goto LABEL_36;
  }

  if (*(a3 + 33548) >= 1 && *(a3 + 33556) && *(a3 + 33564))
  {
    v8 = *(a2 + 23268);
    if (v8 == 5)
    {
      v17 = *(a2 + 24) + -14.0;
      if (v17 < 0.0)
      {
        v17 = v17 + 604800.0;
      }

      v6 = (*(a3 + 33564) * 0.1 + *(a3 + 33566) * 0.1 * v17) * 0.000000001 * 299792458.0;
      if (v6 >= 0)
      {
        v18 = v6;
      }

      else
      {
        v18 = -v6;
      }

      if (v18 >= 0x12D)
      {
        result = EvLog_v(" NK_IntConstel_TO_IntMeas: Large BDS-GLO Tim Off: %d");
        goto LABEL_47;
      }

      v11 = 1;
      v12 = 10.0;
      v13 = 2;
      v14 = 10996;
      v15 = 744;
      goto LABEL_35;
    }

    if (v8 != 4)
    {
      goto LABEL_47;
    }

    v9 = *(a2 + 24) + -14.0;
    if (v9 < 0.0)
    {
      v9 = v9 + 604800.0;
    }

    v6 = (*(a3 + 33556) * 0.1 + *(a3 + 33558) * 0.1 * v9) * 0.000000001 * 299792458.0;
    if (v6 >= 0)
    {
      v10 = v6;
    }

    else
    {
      v10 = -v6;
    }

    if (v10 >= 0x1F)
    {
      result = EvLog_v(" NK_IntConstel_TO_IntMeas: Large BDS-GPS Tim Off: %d");
      goto LABEL_47;
    }

    v11 = 0;
    *(result + 7320) = v6;
    *(result + 7328) = 0x4024000000000000;
    v12 = 10.0;
  }

  else
  {
    if (*(result + 11048) || *(a2 + 23268) != 4)
    {
      goto LABEL_47;
    }

    v11 = 0;
    v12 = 30.0;
    v6 = 0.0;
  }

  v13 = 2;
  v14 = 10994;
  v15 = 736;
LABEL_35:
  v16 = 752;
LABEL_36:
  v19 = (*(a2 + v16) - *(a2 + v15)) * 299792458.0;
  *(&v24[1] + 1) = v6;
  *&v24[2] = v12 * v12;
  LOBYTE(v24[0]) = 1;
  DWORD1(v24[0]) = 2;
  *(&v25 + 1) = 0x4415AF1D78B58C40;
  result = KFSt_DMeas_Update(v13, v11, 0xBu, v24, (result + 872), (result + v14), v19);
  if (result)
  {
    v20 = *v4;
    if (v20 == 4)
    {
      *(v4 + 387) = DWORD1(v24[0]);
      v21 = *(v4 + 1);
      if (v21 == 5)
      {
        v4[1608] = 1;
      }

      else if (v21 == 4)
      {
        v4[1607] = 1;
        v4[32] = 1;
        *(v4 + 40) = *(&v24[1] + 8);
      }
    }

    else if (v20 == 2)
    {
      *(v4 + 386) = DWORD1(v24[0]);
      v4[1606] = 1;
      v4[8] = 1;
      *(a2 + 23280) = *(&v24[1] + 8);
    }

    if (g_Enable_Event_Log >= 6u)
    {
      v23 = *(v4 + 1);
      result = EvLog_v(" NK_IntConstel_TO_IntMeas: Time Offset applied: %d %d ");
    }
  }

LABEL_47:
  v22 = *MEMORY[0x29EDCA608];
  return result;
}

unsigned __int16 *Gnm02_11ReqNewInstn(void)
{
  v13 = *MEMORY[0x29EDCA608];
  v0 = 2u;
  while (*&g_GnmInstances[v0])
  {
    v0 += 2;
    if (v0 == 8)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v1 = mach_continuous_time();
        v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v1), "GNM", 87, "Gnm02_11ReqNewInstn", 2054);
        LbsOsaTrace_WriteLog(0xBu, __str, v2, 2, 1);
      }

      v3 = 0;
      goto LABEL_18;
    }
  }

  v4 = gnssOsa_Calloc("Gnm02_11ReqNewInstn", 186, 1, 0x10uLL);
  v3 = v4;
  *&g_GnmInstances[v0] = v4;
  if (v4)
  {
    v5 = LOWORD(g_GnmInstances[0]);
LABEL_9:
    if (v5 >> 2 < 0xFFF)
    {
      ++v5;
    }

    else
    {
      v5 = 1;
    }

    v6 = 2u;
    do
    {
      v7 = *&g_GnmInstances[v6];
      if (v7 && *v7 == v5)
      {
        goto LABEL_9;
      }

      v6 += 2;
    }

    while (v6 != 8);
    g_GnmInstances[0] = __PAIR32__(HIWORD(g_GnmInstances[0]), v5) + 0x10000;
    *v4 = v5;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx InstnId,%u\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 73, "Gnm02_11ReqNewInstn", 2057, *v3);
      LbsOsaTrace_WriteLog(0xBu, __str, v9, 4, 1);
    }
  }

LABEL_18:
  v10 = *MEMORY[0x29EDCA608];
  return v3;
}

unsigned __int16 *Gnm02_12ReqAssistInstn(int a1, const char *a2, int a3, _BYTE *a4)
{
  v5 = a3;
  v25 = *MEMORY[0x29EDCA608];
  InstnFromAssistId = Gnm02_33GetInstnFromAssistId(a1, a3);
  if (InstnFromAssistId)
  {
    v9 = InstnFromAssistId;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MODIFY %s GNMInstn,%u,AssistInstn,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 73, "Gnm02_12ReqAssistInstn", 2057, a2, *v9, **(v9 + 1));
      LbsOsaTrace_WriteLog(0xBu, __str, v11, 4, 1);
    }

    if (a4)
    {
      *a4 = 1;
    }

    goto LABEL_25;
  }

  v12 = Gnm02_11ReqNewInstn();
  if (v12)
  {
    v9 = v12;
    v13 = 2u;
    while (*&g_GnmInstances[v13] != v12)
    {
      v13 += 2;
      if (v13 == 8)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
        {
          bzero(__str, 0x410uLL);
          mach_continuous_time();
          v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Instn\n");
          goto LABEL_20;
        }

LABEL_21:
        if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v17 = mach_continuous_time();
          v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NewAssistInstn %s\n", (*&g_MacClockTicksToMsRelation * v17), "GNM", 87, "Gnm02_12ReqAssistInstn", 2049, a2);
          LbsOsaTrace_WriteLog(0xBu, __str, v18, 2, 1);
        }

        Gnm02_21DeleteInstn(v9);
        goto LABEL_24;
      }
    }

    if (*(v12 + 2))
    {
      if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
      {
        goto LABEL_21;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx InstnType\n");
LABEL_20:
      LbsOsaTrace_WriteLog(0xBu, __str, v14, 2, 1);
      goto LABEL_21;
    }

    if (*(v12 + 1))
    {
      if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
      {
        goto LABEL_21;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
      goto LABEL_20;
    }

    v21 = gnssOsa_Calloc("Gnm02_03AddAssistParams", 107, 1, 0x50uLL);
    *(v9 + 1) = v21;
    if (!v21)
    {
      goto LABEL_21;
    }

    *(v9 + 2) = 2;
    *v21 = a1;
    *(*(v9 + 1) + 5) = v5;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v22 = mach_continuous_time();
      v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SETUP %s GNMInstn,%u,AssistInstn,%u\n", (*&g_MacClockTicksToMsRelation * v22), "GNM", 73, "Gnm02_12ReqAssistInstn", 2057, a2, *v9, **(v9 + 1));
      LbsOsaTrace_WriteLog(0xBu, __str, v23, 4, 1);
    }

    if (a4)
    {
      *a4 = 0;
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NewInstn %s\n", (*&g_MacClockTicksToMsRelation * v15), "GNM", 87, "Gnm02_12ReqAssistInstn", 2049, a2);
      LbsOsaTrace_WriteLog(0xBu, __str, v16, 2, 1);
    }

LABEL_24:
    v9 = 0;
  }

LABEL_25:
  v19 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t Gnm02_33GetInstnFromAssistId(int a1, int a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v3 = 2u;
  while (1)
  {
    v4 = *&g_GnmInstances[v3];
    if (v4)
    {
      v5 = *(v4 + 8);
      if (v5)
      {
        if (*(v4 + 2) == 2 && *(v5 + 5) == a2 && *v5 == a1)
        {
          break;
        }
      }
    }

    v3 += 2;
    if (v3 == 8)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v6 = mach_continuous_time();
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx AsstId,%u\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 87, "Gnm02_33GetInstnFromAssistId", 2052, a1);
        LbsOsaTrace_WriteLog(0xBu, __str, v7, 2, 1);
      }

      result = 0;
      goto LABEL_11;
    }
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GNMInstn,%u,AsstId,%u found\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 73, "Gnm02_33GetInstnFromAssistId", **&g_GnmInstances[v3], a1);
    LbsOsaTrace_WriteLog(0xBu, __str, v11, 4, 1);
  }

  result = *&g_GnmInstances[v3];
LABEL_11:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL Gnm02_21DeleteInstn(unsigned __int16 *a1)
{
  v19 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
LABEL_5:
    v3 = 0;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Instn\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 87, "Gnm02_21DeleteInstn", 2050);
      LbsOsaTrace_WriteLog(0xBu, __str, v5, 2, 1);
      v3 = 0;
    }

    goto LABEL_29;
  }

  v2 = 2u;
  while (*&g_GnmInstances[v2] != a1)
  {
    v2 += 2;
    if (v2 == 8)
    {
      goto LABEL_5;
    }
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Deleted GNMInstn,%u\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 73, "Gnm02_21DeleteInstn", *a1);
    LbsOsaTrace_WriteLog(0xBu, __str, v7, 4, 1);
  }

  v8 = *(a1 + 1);
  if (v8)
  {
    v9 = *(a1 + 2);
    if ((v9 - 2) >= 2)
    {
      if (v9 == 1)
      {
        v12 = *(v8 + 72);
        if (v12)
        {
          free(v12);
        }

        *(v8 + 72) = 0;
        v3 = (*(v8 + 4) & 7) != 0;
      }

      else
      {
        v3 = 0;
        if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v13 = mach_continuous_time();
          v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx InstnType,%hhu\n", (*&g_MacClockTicksToMsRelation * v13), "GNM", 87, "Gnm02_21DeleteInstn", 2050, *(a1 + 2));
          LbsOsaTrace_WriteLog(0xBu, __str, v14, 2, 1);
          v3 = 0;
        }
      }

      v8 = *(a1 + 1);
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v3 = 1;
    }

    free(v8);
LABEL_22:
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
    goto LABEL_23;
  }

  v3 = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx InstnInfo\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 87, "Gnm02_21DeleteInstn", 2050);
    LbsOsaTrace_WriteLog(0xBu, __str, v11, 2, 1);
    v3 = 0;
  }

LABEL_23:
  v15 = 2u;
  while (*&g_GnmInstances[v15] != a1)
  {
    v15 += 2;
    if (v15 == 8)
    {
      goto LABEL_29;
    }
  }

  free(a1);
  *&g_GnmInstances[v15] = 0;
  if (HIWORD(g_GnmInstances[0]))
  {
    --HIWORD(g_GnmInstances[0]);
  }

LABEL_29:
  v16 = *MEMORY[0x29EDCA608];
  return v3;
}

unsigned __int16 *Gnm02_13ReqNewNafInstn(int a1, const char *a2)
{
  v19 = *MEMORY[0x29EDCA608];
  if (Gnm02_32GetInstnFromNafId(a1))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
LABEL_23:
      v6 = 0;
      goto LABEL_24;
    }

    bzero(__str, 0x410uLL);
    v16 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx %s\n", v16);
LABEL_4:
    LbsOsaTrace_WriteLog(0xBu, __str, v4, 2, 1);
    goto LABEL_23;
  }

  v5 = Gnm02_11ReqNewInstn();
  if (!v5)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      goto LABEL_23;
    }

    bzero(__str, 0x410uLL);
    v17 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NewInstn %s\n", v17);
    goto LABEL_4;
  }

  v6 = v5;
  v7 = 2u;
  while (*&g_GnmInstances[v7] != v5)
  {
    v7 += 2;
    if (v7 == 8)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        mach_continuous_time();
        v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Instn\n");
        goto LABEL_19;
      }

LABEL_20:
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v9 = mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NewNafInst %s\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 87, "Gnm02_13ReqNewNafInstn", 2049, a2);
        LbsOsaTrace_WriteLog(0xBu, __str, v10, 2, 1);
      }

      Gnm02_21DeleteInstn(v6);
      goto LABEL_23;
    }
  }

  if (*(v5 + 2))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      goto LABEL_20;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx InstnType\n");
LABEL_19:
    LbsOsaTrace_WriteLog(0xBu, __str, v8, 2, 1);
    goto LABEL_20;
  }

  if (*(v5 + 1))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      goto LABEL_20;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
    goto LABEL_19;
  }

  v13 = gnssOsa_Calloc("Gnm02_04AddNafParams", 147, 1, 0x50uLL);
  *(v6 + 1) = v13;
  if (!v13)
  {
    goto LABEL_20;
  }

  *(v6 + 2) = 1;
  *v13 = a1;
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx %s GNMInstn,%u,NaftInstn,%u\n", (*&g_MacClockTicksToMsRelation * v14), "GNM", 73, "Gnm02_13ReqNewNafInstn", 2057, a2, *v6, a1);
    LbsOsaTrace_WriteLog(0xBu, __str, v15, 4, 1);
  }

LABEL_24:
  v11 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t Gnm02_32GetInstnFromNafId(int a1)
{
  v12 = *MEMORY[0x29EDCA608];
  v2 = 2u;
  while (1)
  {
    v3 = *&g_GnmInstances[v2];
    if (v3)
    {
      v4 = *(v3 + 8);
      if (v4)
      {
        if (*(v3 + 2) == 1 && *v4 == a1)
        {
          break;
        }
      }
    }

    v2 += 2;
    if (v2 == 8)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NafId,%u\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 68, "Gnm02_32GetInstnFromNafId", 2052, a1);
        LbsOsaTrace_WriteLog(0xBu, __str, v6, 5, 1);
      }

      result = 0;
      goto LABEL_10;
    }
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GNMInstn,%u,NafInstn,%u found\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 73, "Gnm02_32GetInstnFromNafId", **&g_GnmInstances[v2], a1);
    LbsOsaTrace_WriteLog(0xBu, __str, v10, 4, 1);
  }

  result = *&g_GnmInstances[v2];
LABEL_10:
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm02_15AddEarlyStartParams(unsigned __int16 *a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
LABEL_5:
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Instn\n");
LABEL_13:
      LbsOsaTrace_WriteLog(0xBu, __str, v3, 2, 1);
    }

LABEL_14:
    v4 = 0;
    goto LABEL_15;
  }

  v2 = 2u;
  while (*&g_GnmInstances[v2] != a1)
  {
    v2 += 2;
    if (v2 == 8)
    {
      goto LABEL_5;
    }
  }

  if (*(a1 + 2))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx InstnType\n");
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (*(a1 + 1))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v7 = gnssOsa_Calloc("Gnm02_15AddEarlyStartParams", 361, 1, 0x50uLL);
  *(a1 + 1) = v7;
  if (!v7)
  {
    goto LABEL_14;
  }

  *(a1 + 2) = 3;
  *v7 = *a1;
  v8 = byte_2A192082E;
  if ((dword_2A1920820 & 0x400) == 0)
  {
    v8 = 30;
  }

  *(*(a1 + 1) + 4) = v8;
  *(*(a1 + 1) + 5) = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GNMInstn,%u,EarlyStartInstn,%u,Timeout,%u\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 73, "Gnm02_15AddEarlyStartParams", *a1, **(a1 + 1), *(*(a1 + 1) + 4));
    v4 = 1;
    LbsOsaTrace_WriteLog(0xBu, __str, v10, 4, 1);
  }

  else
  {
    v4 = 1;
  }

LABEL_15:
  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

BOOL Gnm02_23StopNafSession(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 8);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Clearing Instance NafID,%u,PosnType,%u\n", (*&g_MacClockTicksToMsRelation * v3), "GNM", 73, "Gnm02_23StopNafSession", *v2, *(v2 + 4));
    LbsOsaTrace_WriteLog(0xBu, __str, v4, 4, 1);
  }

  v5 = *(v2 + 4);
  v6 = v5 > 4;
  v7 = (1 << v5) & 0x16;
  if (v6 || v7 == 0)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0);
    result = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PosnType,%u\n", (*&g_MacClockTicksToMsRelation * v12), "GNM", 87, "Gnm02_23StopNafSession", 770, *(v2 + 4));
      LbsOsaTrace_WriteLog(0xBu, __str, v13, 2, 1);
      result = 0;
    }
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
  v14 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Aborting all NAF sessions\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm02_24AbortAllNafSessions");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  v4 = 2u;
  do
  {
    result = *&g_GnmInstances[v4];
    if (result)
    {
      v6 = *(result + 8);
      if (v6)
      {
        if (*(result + 2) == 1)
        {
          if ((v6[1] & 7) != 0 && *(v6 + 64) == 1)
          {
            v7 = *(v6 + 7);
            v8 = *v6;
            *__str = 0;
            v11 = 0;
            v12 = 0;
            v13 = 1;
            v7(a1, v8, __str);
            result = *&g_GnmInstances[v4];
          }

          Gnm02_23StopNafSession(result);
          result = Gnm02_21DeleteInstn(*&g_GnmInstances[v4]);
        }
      }
    }

    v4 += 2;
  }

  while (v4 != 8);
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm02_26AbortAllAssistSessions(void)
{
  v9 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Aborting all assist sessions\n", (*&g_MacClockTicksToMsRelation * v0), "GNM", 73, "Gnm02_26AbortAllAssistSessions");
    LbsOsaTrace_WriteLog(0xBu, __str, v1, 4, 1);
  }

  v2 = 2u;
  do
  {
    result = *&g_GnmInstances[v2];
    if (result)
    {
      v4 = *(result + 8);
      if (v4)
      {
        if (*(result + 2) == 2 && *(v4 + 5) == 1)
        {
          if ((*(v4 + 6) & 4) != 0)
          {
            result = Gnm13_09SendAsstGadData(result, 0, 1);
          }

          else if ((*(v4 + 6) & 2) != 0)
          {
            result = Gnm13_11SendAsstGnssMeas(result, 0, 1);
          }

          else
          {
            result = LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0);
            if (result)
            {
              bzero(__str, 0x410uLL);
              v5 = mach_continuous_time();
              v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ReqType,%u\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 87, "Gnm02_26AbortAllAssistSessions", 770, *(v4 + 6));
              result = LbsOsaTrace_WriteLog(0xBu, __str, v6, 2, 1);
            }
          }
        }
      }
    }

    v2 += 2;
  }

  while (v2 != 8);
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

unsigned __int16 *Gnm02_31GetInstnFromInstnId(int a1)
{
  v8 = *MEMORY[0x29EDCA608];
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
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v4 = mach_continuous_time();
        v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx InstnId,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 68, "Gnm02_31GetInstnFromInstnId", 2052, a1);
        LbsOsaTrace_WriteLog(0xBu, __str, v5, 5, 1);
      }

      result = 0;
      break;
    }
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm02_37GetInstnAssistReq(void)
{
  v0 = 2u;
  v22 = *MEMORY[0x29EDCA608];
  do
  {
    v1 = *&g_GnmInstances[v0];
    if (v1)
    {
      v2 = *(v1 + 8);
      if (v2)
      {
        v3 = *(v1 + 2);
        if (v3 != 3)
        {
          if (v3 == 2)
          {
            if (*(v2 + 59) == 1)
            {
              if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
              {
                goto LABEL_23;
              }

              bzero(__str, 0x410uLL);
              v15 = mach_continuous_time();
              v16 = *&g_GnmInstances[v0];
              v18 = *v16;
              v20 = **(v16 + 1);
              v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GNMInstn,%u,AsstInstn,%u found requiring Asst\n", (*&g_MacClockTicksToMsRelation * v15));
              goto LABEL_22;
            }
          }

          else if (v3 == 1)
          {
            if (*(v2 + 5) == 1)
            {
              if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
              {
                goto LABEL_23;
              }

              bzero(__str, 0x410uLL);
              v11 = mach_continuous_time();
              v12 = *&g_GnmInstances[v0];
              v17 = *v12;
              v19 = **(v12 + 1);
              v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GNMInstn,%u,NafInstn,%u found requiring Asst\n", (*&g_MacClockTicksToMsRelation * v11));
LABEL_22:
              LbsOsaTrace_WriteLog(0xBu, __str, v13, 4, 1);
LABEL_23:
              result = *&g_GnmInstances[v0];
              goto LABEL_17;
            }
          }

          else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v4 = mach_continuous_time();
            v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx InstnType,%hhu\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 87, "Gnm02_37GetInstnAssistReq", 770, *(*&g_GnmInstances[v0] + 2));
            LbsOsaTrace_WriteLog(0xBu, __str, v5, 2, 1);
          }
        }
      }
    }

    v0 += 2;
  }

  while (v0 != 8);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 87, "Gnm02_37GetInstnAssistReq", 2052);
    LbsOsaTrace_WriteLog(0xBu, __str, v7, 2, 1);
  }

  result = 0;
LABEL_17:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm02_39GetEarlyStartInstn(void)
{
  v9 = *MEMORY[0x29EDCA608];
  v0 = 2u;
  while (1)
  {
    v1 = *&g_GnmInstances[v0];
    if (v1)
    {
      if (*(v1 + 8) && *(v1 + 2) == 3)
      {
        break;
      }
    }

    v0 += 2;
    if (v0 == 8)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v2 = mach_continuous_time();
        v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm02_39GetEarlyStartInstn", 2052);
        LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
      }

      result = 0;
      goto LABEL_12;
    }
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ECALL:GNMInstn,%u,EarlyStartInstn,%u found\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 73, "Gnm02_39GetEarlyStartInstn", **&g_GnmInstances[v0], **(*&g_GnmInstances[v0] + 8));
    LbsOsaTrace_WriteLog(0xBu, __str, v6, 4, 1);
  }

  result = *&g_GnmInstances[v0];
LABEL_12:
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BaseBufInitBufWithMemory(uint64_t a1, int a2, uint64_t a3)
{
  v14 = *MEMORY[0x29EDCA608];
  if (!a3)
  {
    v8 = 6;
LABEL_14:
    v13 = *MEMORY[0x29EDCA608];
    return v8;
  }

  v6 = gnssOsa_Calloc("posp_alloc", 18, 1, 0x470uLL);
  *a1 = v6;
  if (!v6)
  {
    v8 = 1;
    v9 = 1;
LABEL_13:
    CUCFErrorHandler(v6, v9);
    goto LABEL_14;
  }

  if (a2 == 1)
  {
    v7 = &UserBuffer;
    goto LABEL_9;
  }

  if (a2)
  {
    v6[196] = 0;
    v8 = 3;
    v9 = 3;
    goto LABEL_13;
  }

  v7 = &SmallBuffer;
LABEL_9:
  memcpy(v6 + 752, v7, 0x120uLL);
  v10 = *(*a1 + 824);
  v11 = *MEMORY[0x29EDCA608];

  return v10(a1, a3);
}

double GAL_EphReal2Kep(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  *a2 = *a1;
  *(a2 + 8) = 3;
  *(a2 + 12) = *(a1 + 14);
  v2 = *(a1 + 15);
  if (v2 <= 0x31)
  {
    if (!*(a1 + 15))
    {
      v3 = -14;
      goto LABEL_41;
    }

    if (v2 <= 4)
    {
      v3 = v2 - 15;
LABEL_41:
      *(a2 + 15) = v3;
      goto LABEL_42;
    }

    if (v2 <= 6)
    {
      v3 = -11;
      goto LABEL_41;
    }

    if (v2 <= 8)
    {
      v3 = -10;
      goto LABEL_41;
    }

    if (v2 <= 0xB)
    {
      v3 = -9;
      goto LABEL_41;
    }

    if (v2 <= 0xF)
    {
      v3 = -8;
      goto LABEL_41;
    }

    if (v2 <= 0x15)
    {
      v3 = -7;
      goto LABEL_41;
    }

    if (v2 <= 0x1E)
    {
      v3 = -6;
      goto LABEL_41;
    }

    if (v2 <= 0x2B)
    {
      v3 = -5;
      goto LABEL_41;
    }

LABEL_7:
    v3 = -4;
    goto LABEL_41;
  }

  if (v2 <= 0x4A)
  {
    if (v2 <= 0x37)
    {
      goto LABEL_7;
    }

    if (v2 <= 0x43)
    {
      v3 = -3;
      goto LABEL_41;
    }

LABEL_20:
    v3 = -2;
    goto LABEL_41;
  }

  if (v2 > 0x63)
  {
    if (v2 > 0x7D)
    {
      if (v2 == 255)
      {
        v3 = 15;
      }

      else
      {
        v3 = 14;
      }

      goto LABEL_41;
    }

    if (v2 > 0x66)
    {
      if (v2 > 0x6C)
      {
        if (v2 > 0x75)
        {
          v3 = 3;
        }

        else
        {
          v3 = 2;
        }
      }

      else
      {
        v3 = 1;
      }

      goto LABEL_41;
    }
  }

  else
  {
    if (v2 <= 0x50)
    {
      goto LABEL_20;
    }

    if (v2 <= 0x5C)
    {
      v3 = -1;
      goto LABEL_41;
    }
  }

  *(a2 + 15) = 0;
LABEL_42:
  *(a2 + 14) = 0;
  v4 = v2 == 255;
  *(a2 + 13) = v4 << 6;
  *(a2 + 13) = *(a1 + 201) | (4 * *(a1 + 198)) | (8 * *(a1 + 200)) | (32 * *(a1 + 197)) | (v4 << 6);
  *(a2 + 16) = *(a1 + 194);
  *(a2 + 18) = *(a1 + 12) + 1024;
  v5 = *(a1 + 16);
  *(a2 + 20) = *(a1 + 144);
  *(a2 + 24) = v5;
  *(a2 + 32) = *(a1 + 152);
  *(a2 + 48) = *(a1 + 168);
  *(a2 + 64) = *(a1 + 184);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0;
  *(a2 + 96) = *(a1 + 88);
  *(a2 + 104) = *(a1 + 112);
  *(a2 + 120) = *(a1 + 96);
  *(a2 + 136) = *(a1 + 128);
  v6 = *(a1 + 24);
  *(a2 + 152) = *(a1 + 80);
  *(a2 + 160) = v6;
  *(a2 + 168) = *(a1 + 40);
  *(a2 + 184) = *(a1 + 56);
  result = *(a1 + 32);
  v8 = *(a1 + 72);
  *(a2 + 200) = result;
  *(a2 + 208) = v8;
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

double *NK_Comp_DOPS(uint64_t a1, uint64_t a2)
{
  v43 = *MEMORY[0x29EDCA608];
  v34 = 0u;
  v36 = 0;
  memset(&v33[1], 0, 32);
  v35 = 0u;
  v38 = 0u;
  v39 = 0u;
  v33[0] = 20000.0;
  *&v34 = 0x40D3880000000000;
  v37 = 0x40D3880000000000;
  v40 = 0x40D3880000000000;
  memset(&v26[1], 0, 32);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = 1.99960002e14;
  if (*(a1 + 7174) == 1)
  {
    v4 = *(a1 + 7200) + fabs((*a2 - *(a1 + 7192)) * 0.001);
  }

  *&v27 = v4;
  v26[0] = v4;
  v5 = 1.99960002e14;
  if (*(a1 + 7175) == 1)
  {
    v5 = *(a1 + 7216) + fabs((*a2 - *(a1 + 7208)) * 0.001);
  }

  *(&v29 + 1) = v5;
  v6 = 1.99960002e14;
  if (*(a1 + 7173) == 1)
  {
    v6 = *(a1 + 7184) + fabs((*a2 - *(a1 + 7176)) * 0.001);
  }

  v7 = 0;
  v32 = v6;
  do
  {
    if (v26[v7] > 1.99960002e14)
    {
      v26[v7] = 1.99960002e14;
    }

    v7 += 5;
  }

  while (v7 != 20);
  v25 = a1 + 4096;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0.0;
  v12 = (a1 + 2096);
  do
  {
    if (*(a1 + 6696 + v8) == 1)
    {
      v13 = v12->f64[0];
      v14 = vmulq_n_f64(v12[120], v12->f64[1]);
      v41 = vextq_s8(v14, v14, 8uLL);
      v42 = v13;
      v15 = *(a2 + v8 + 1176) ? a2 + 1656 : a1 + 6312;
      v16 = *(v15 + 8 * v8) >= 0.0001 ? *(v15 + 8 * v8) : 0.0001;
      DOP4_Upd_W_Meas(v41.i64, v16, v26);
      if (v16 < 800000.0)
      {
        ++v9;
        v11 = v11 + v16;
        if (*(a2 + v8 + 2960) == 1)
        {
          DOP4_Upd_U_Meas(&v41, v33);
          ++v10;
        }
      }
    }

    ++v8;
    v12 = (v12 + 40);
  }

  while (v8 != 48);
  if (v10 <= 3)
  {
    DOP4_Upd_U_Elem(2, v33);
  }

  result = DOP4_Calc_U(v33, (a2 + 24600));
  if (v9)
  {
    v18 = v11 / v9;
  }

  else
  {
    v18 = 0.0;
  }

  *(a1 + 6744) = v18;
  v19 = v32 * 8.0;
  *(a1 + 7248) = v32 * 8.0;
  v20.f64[0] = *(&v29 + 1);
  v21 = *&v27;
  v22 = v26[0] + v26[0];
  *(a1 + 7256) = v26[0] + v26[0];
  *(a1 + 7264) = v21 + v21;
  v20.f64[1] = v26[1];
  v23 = vmulq_f64(v20, xmmword_2997290E0);
  *(v25 + 3176) = v23;
  if (v19 > 3600.0)
  {
    *(a1 + 7248) = 0x40AC200000000000;
  }

  if (v23.f64[0] > 3600.0)
  {
    *(v25 + 3176) = 0x40AC200000000000;
  }

  if (v22 > 900.0 || v21 + v21 > 900.0)
  {
    *(v25 + 3160) = vdupq_n_s64(0x408C200000000000uLL);
    *(a1 + 7280) = 0;
  }

  v24 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL NK_Get_Ext_Time(_BOOL8 result, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x29EDCA608];
  v3 = a2 + 20480;
  *(a2 + 22776) = 0;
  *(a2 + 22792) = 0;
  *(a2 + 22848) = 0;
  *(a2 + 22864) = 0;
  v4 = *(a2 + 24);
  if (v4 > 3.0 && v4 < 604797.0)
  {
    v7 = result;
    v24 = 0;
    result = Get_FSP_Time(result, (a2 + 22758), (a2 + 22760), (a2 + 22768), &v24);
    if (result)
    {
      v8 = *(a2 + 22760);
      v9 = *(a2 + 632);
      v10 = v8 - (v9 - *(a2 + 736));
      *(a2 + 26152) = v10;
      v11 = *(a2 + 22768);
      v12 = *(a2 + 12);
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

        *(v3 + 2296) = 1;
        *(v3 + 2300) = 1;
        *(v3 + 2316) = v7;
        *(a2 + 22800) = v16;
        *(a2 + 22808) = v11 * 1000000.0;
        v17 = *(a3 + 233);
        v18 = 36.0;
        if (*(a3 + 233))
        {
          v18 = 1.0e20;
        }

        *(a2 + 22832) = v18;
        v19 = v24;
        *(v3 + 2308) = v24;
        if (v11 <= 0.00000025 || v12 <= 8)
        {
          *(v3 + 2368) = 1;
          *(v3 + 2372) = 1;
          *(v3 + 2388) = v7;
          *(a2 + 22872) = (v9 + v16 * 0.001 - v8) * 299792458.0;
          *(a2 + 22880) = v11 * 8.98755179e16;
          v20 = 16.0;
          if (v17)
          {
            v20 = 1.0e20;
          }

          *(a2 + 22904) = v20;
          *(v3 + 2380) = v19;
        }

        v21 = *(v3 + 2278);
        *(a2 + 646) = v21;
        *(a2 + 18) = v21;
      }
    }

    if (*(v3 + 2368) == 1 && (v22 = *(a2 + 22880), v22 < 2.25e10))
    {
      *(a3 + 7173) = 1;
      *(a3 + 7176) = *(v3 + 2388);
      *(a3 + 7184) = v22;
    }

    else if (*(a3 + 7173) == 1 && (v7 - *(a3 + 7176)) >= 0x1D4C1)
    {
      *(a3 + 7173) = 0;
    }
  }

  v23 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t NK_Prop_Cov_Mat(double a1, double *a2)
{
  v11[11] = *MEMORY[0x29EDCA608];
  v4 = 1;
  v11[0] = a1;
  v11[1] = a1;
  v5 = 16843009;
  v6 = 1;
  v11[2] = a1;
  v11[3] = a1;
  *v7 = 100860417;
  *v9 = 151258116;
  v8 = 2055;
  v10 = 2826;
  v11[4] = a1;
  v11[5] = a1;
  result = stphiu(a2, 0xBu, v11, v9, 6, v7, &v4);
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void *Cyc_Record_Write(uint64_t a1, const void *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  result = memcpy(*a1, a2, *(a1 + 72));
  v4 = *a1 + *(a1 + 72);
  *a1 = v4;
  if (v4 >= *(a1 + 64))
  {
    v4 = *(a1 + 56);
    *a1 = v4;
  }

  for (i = 0; i != 6; ++i)
  {
    *(a1 + 84 + i) = v4 == *(a1 + 84 + 8 * i - 76);
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void *Cyc_Record_Read(uint64_t a1, unsigned int a2, void *__dst)
{
  v10 = *MEMORY[0x29EDCA608];
  if (a2 >= 6)
  {
    __assert_rtn("Cyc_Record_Read", "cyc_record_buf.cpp", 144, "Consumer_Idx < MAX_READER_NUM");
  }

  v4 = a1 + 8;
  v5 = a2;
  v6 = *(a1 + 8 + 8 * a2);
  if (v6 == *a1 && (*(a1 + v5 + 84) & 1) == 0)
  {
    __assert_rtn("Cyc_Record_Read", "cyc_record_buf.cpp", 148, "p_CRB->Next_Read[Consumer_Idx] != p_CRB->Next_Write || p_CRB->Full_Flag[Consumer_Idx]");
  }

  *(a1 + v5 + 84) = 0;
  result = memcpy(__dst, v6, *(a1 + 72));
  v8 = *(v4 + 8 * v5) + *(a1 + 72);
  *(v4 + 8 * v5) = v8;
  if (v8 >= *(a1 + 64))
  {
    *(v4 + 8 * v5) = *(a1 + 56);
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

void *Cyc_Record_Peek(uint64_t a1, unsigned int a2, int a3, void *__dst)
{
  if (a2 >= 6)
  {
    __assert_rtn("Cyc_Record_Peek", "cyc_record_buf.cpp", 182, "Consumer_Idx < MAX_READER_NUM");
  }

  v5 = *(a1 + 8 * a2 + 8);
  if (v5 == *a1 && (*(a1 + a2 + 84) & 1) == 0)
  {
    __assert_rtn("Cyc_Record_Peek", "cyc_record_buf.cpp", 186, "p_CRB->Next_Read[Consumer_Idx] != p_CRB->Next_Write || p_CRB->Full_Flag[Consumer_Idx]");
  }

  v6 = *(a1 + 72);
  v7 = (v5 + (v6 * a3));
  v8 = *(a1 + 56);
  if (v7 < v8)
  {
    v7 += *(a1 + 80);
  }

  v9 = *(a1 + 64);
  if (v7 >= v9)
  {
    v7 -= *(a1 + 80);
  }

  if (v7 < v8 || v7 > v9)
  {
    __assert_rtn("Cyc_Record_Peek", "cyc_record_buf.cpp", 202, "p_Rec_Peek >= p_CRB->Start_Buf && p_Rec_Peek <= p_CRB->End_Buf");
  }

  v11 = *MEMORY[0x29EDCA608];
  v12 = *MEMORY[0x29EDCA608];

  return memcpy(__dst, v7, v6);
}

uint64_t Cyc_Record_IsEmpty(uint64_t *a1, unsigned int a2)
{
  if (a2 >= 6)
  {
    __assert_rtn("Cyc_Record_IsEmpty", "cyc_record_buf.cpp", 225, "Consumer_Idx < MAX_READER_NUM");
  }

  v2 = a1[a2 + 1];
  v3 = *a1;
  v4 = *(a1 + a2 + 84) ^ 1;
  if ((v4 & 1) == 0 && v2 != v3)
  {
    __assert_rtn("Cyc_Record_IsEmpty", "cyc_record_buf.cpp", 231, "p_CRB->Next_Read[Consumer_Idx] == p_CRB->Next_Write");
  }

  v5 = v2 == v3;
  v6 = *MEMORY[0x29EDCA608];
  v7 = *MEMORY[0x29EDCA608];
  return v4 & v5;
}

uint64_t Cyc_Record_Count_Occupied(_DWORD *a1, unsigned int a2)
{
  if (a2 >= 6)
  {
    __assert_rtn("Cyc_Record_Count_Occupied", "cyc_record_buf.cpp", 270, "Consumer_Idx < MAX_READER_NUM");
  }

  v2 = a1[2 * a2 + 2];
  v3 = *a1 - v2;
  if (*a1 == v2)
  {
    if ((*(a1 + a2 + 84) & 1) == 0)
    {
      result = 0;
      goto LABEL_9;
    }
  }

  else if (v3 >= 1)
  {
    v4 = a1[20];
    goto LABEL_7;
  }

  v4 = a1[20];
  v3 += v4;
  if (v3 < 1)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (v3 > v4)
  {
LABEL_11:
    __assert_rtn("Cyc_Record_Count_Occupied", "cyc_record_buf.cpp", 290, "Diff > 0 && Diff <= (I4)p_CRB->Buf_Len");
  }

  v5 = a1[18];
  result = v3 / v5;
  if (v3 % v5)
  {
    __assert_rtn("Cyc_Record_Count_Occupied", "cyc_record_buf.cpp", 293, "( Diff % p_CRB->Rec_Size) == 0");
  }

LABEL_9:
  v7 = *MEMORY[0x29EDCA608];
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Cyc_Record_Count_Free(_DWORD *a1, unsigned int a2)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a2 >= 6)
  {
    __assert_rtn("Cyc_Record_Count_Free", "cyc_record_buf.cpp", 311, "Consumer_Idx < MAX_READER_NUM");
  }

  v3 = Cyc_Record_Count_Occupied(a1, a2);
  v4 = a1[19];
  v5 = v4 >= v3;
  result = v4 - v3;
  if (!v5)
  {
    __assert_rtn("Cyc_Record_Count_Free", "cyc_record_buf.cpp", 317, "Occupied_Records <= p_CRB->Rec_Num");
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

float *ltl_least_squares_polynom(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v6 = 0;
  v136 = *MEMORY[0x29EDCA608];
  memset(v135, 0, 100);
  v133[0] = 0;
  v133[1] = 0;
  v134 = 0;
  v132[0] = 0x100000001;
  v130[0] = 0;
  v130[1] = 0;
  v127[0] = xmmword_299729130;
  v127[1] = xmmword_299729140;
  v128 = 0x2000000D3;
  v131 = 0;
  do
  {
    *(v130 + v6) = *(v127 + v6) * 0.000061035;
    v6 += 4;
  }

  while (v6 != 20);
  memset_pattern16(&v132[1], &unk_299729150, 0xCuLL);
  if (a2)
  {
    v7 = 0;
    v8 = vcvtq_f32_s32(*(v132 + 4));
    do
    {
      v9 = (vcvts_n_f32_u32(v7, 1uLL) + -30.0) + -30.0;
      v10 = a1 + 8 * v7;
      v11 = *(v10 + 4);
      v12 = *v10;
      __s = 1065353216;
      v13 = 1.0;
      for (i = 4; i != 20; i += 4)
      {
        v13 = v9 * v13;
        *(&__s + i) = v13;
      }

      v15 = 0;
      v16 = v12;
      v122 = vmulq_f32(v122, v8);
      v17 = v11 * 0.000005421;
      v18 = v135;
      v19 = 1;
      do
      {
        v20 = 0;
        v21 = *(&__s + v15);
        do
        {
          *&v18[v20] = *&v18[v20] + ((v21 * *(&__s + v20)) * v17);
          ++v20;
        }

        while (v19 != v20);
        *(v133 + v15) = *(v133 + v15) + ((v17 * v21) * v16);
        ++v15;
        ++v19;
        v18 += 5;
      }

      while (v15 != 5);
      ++v7;
    }

    while (v7 != a2);
  }

  v22 = 0;
  v23 = v135;
  do
  {
    v24 = *(&v127[1] + v22 + 4) * 0.000061035;
    v25 = 1.0 / (v24 * v24);
    *v23 = *v23 + v25;
    v23 += 6;
    *(v133 + v22) = *(v133 + v22) + (v25 * *(v130 + v22));
    v22 += 4;
  }

  while (v22 != 20);
  v26 = 0;
  v27 = v135;
  do
  {
    v28 = *v27;
    v27 += 6;
    v29 = 1.0 / sqrtf(v28);
    v129[v26] = v29;
    *(v133 + v26 * 4) = *(v133 + v26 * 4) * v29;
    ++v26;
  }

  while (v26 != 5);
  v30 = 0;
  v31 = v135;
  v32 = 1;
  do
  {
    v33 = 0;
    v34 = v129[v30];
    do
    {
      *&v31[v33] = *&v31[v33] * (v34 * v129[v33]);
      ++v33;
    }

    while (v32 != v33);
    ++v30;
    ++v32;
    v31 += 5;
  }

  while (v30 != 5);
  v35 = 0;
  v36 = &v135[1];
  v37 = &v135[5];
  v38 = 4;
  do
  {
    if (v35 <= 3)
    {
      v39 = v37;
      v40 = v36;
      v41 = v38;
      do
      {
        v42 = *v39;
        v39 += 5;
        *v40++ = v42;
        --v41;
      }

      while (v41);
    }

    ++v35;
    --v38;
    v36 += 6;
    v37 += 6;
  }

  while (v35 != 5);
  memset_s(&__s, 0x64uLL, 0, 0x64uLL);
  __s = 1065353216;
  v123 = 1065353216;
  v124 = 1065353216;
  v125 = 1065353216;
  v43 = 1;
  v126 = 1065353216;
  do
  {
    v44 = 0;
    v45 = 0;
    result = v135;
    p_s = &__s;
    v48 = &v122;
    v49 = &v135[2];
    v51 = &v135[7];
    v50 = &v135[6];
    v52 = &v135[1];
    v53 = &v135[1];
    v54 = 1;
    do
    {
      v55 = 0;
      v56 = &v135[5 * v44 + v44];
      v57 = v48;
      v58 = v49;
      v59 = v51;
      v60 = v44;
      v61 = v50;
      v62 = v53;
      v63 = v54;
      do
      {
        v64 = &v135[5 * v44 + v63];
        v65 = *v64;
        if (*v64 != 0.0)
        {
          v66 = &v135[5 * v63];
          v67 = *&v66[v63];
          v68 = *v56;
          v69 = (v67 - *v56) / (v65 + v65);
          if (v69 <= 0.0)
          {
            v70 = -1.0;
          }

          else
          {
            v70 = 1.0;
          }

          v71 = v70 / (fabsf(v69) + sqrtf((v69 * v69) + 1.0));
          v72 = 1.0 / sqrtf((v71 * v71) + 1.0);
          v73 = v71 * v72;
          v74 = (v71 * v72) / (v72 + 1.0);
          *v56 = v68 - (v71 * v65);
          v75 = *&v66[v63] + (v71 * v65);
          *&v66[v63] = v75;
          if (vabds_f32(*v56, v68) > 0.00000011921)
          {
            ++v45;
          }

          *v64 = 0.0;
          v66[v44] = 0;
          if (vabds_f32(v75, v67) > 0.00000011921)
          {
            ++v45;
          }

          v76 = -(v71 * v72);
          v77 = -v74;
          v78 = result;
          v79 = v62;
          for (j = v44; j; --j)
          {
            v81 = *v78;
            v82 = *v79;
            *v78 = *v78 + (v76 * (*v79 + (v74 * *v78)));
            v78 += 5;
            *v79 = *v79 + (v73 * (v81 + (v77 * v82)));
            v79 += 5;
          }

          v83 = v52;
          v84 = v61;
          v85 = v55;
          if (v54 < v63)
          {
            do
            {
              v86 = *v83;
              v87 = *v84;
              *v83 = *v83 + (v76 * (*v84 + (v74 * *v83)));
              ++v83;
              *v84 = *v84 + (v73 * (v86 + (v77 * v87)));
              v84 += 5;
              --v85;
            }

            while (v85);
          }

          v88 = v58;
          v89 = v59;
          v90 = v60;
          if (v63 <= 3)
          {
            do
            {
              v91 = *v88;
              v92 = *v89;
              *v88 = *v88 + (v76 * (*v89 + (v74 * *v88)));
              ++v88;
              *v89 = *v89 + (v73 * (v91 + (v77 * v92)));
              ++v89;
              ++v90;
            }

            while (v90 < 3);
          }

          for (k = 0; k != 25; k += 5)
          {
            v94 = *&p_s[k];
            v95 = v57->f32[k];
            *&p_s[k] = v94 + (v76 * (v95 + (v74 * v94)));
            v57->f32[k] = v57->f32[k] + (v73 * (v94 + (v77 * v95)));
          }
        }

        ++v63;
        ++v62;
        ++v55;
        ++v61;
        ++v60;
        v59 += 6;
        ++v58;
        v57 = (v57 + 4);
      }

      while (v63 != 5);
      ++v54;
      ++v44;
      ++v53;
      ++result;
      v50 += 6;
      v52 += 6;
      v51 += 6;
      v49 += 6;
      v48 = (v48 + 4);
      ++p_s;
    }

    while (v44 != 4);
    if (!v45)
    {
      break;
    }

    ++v43;
  }

  while (v43 != 11);
  v96 = 0;
  v97 = 0.0;
  v98 = v135;
  do
  {
    v99 = *v98;
    v98 += 6;
    *&v120[v96 + 20] = v99;
    v100 = fabsf(v99);
    if (v100 > v97)
    {
      v97 = v100;
    }

    v96 += 4;
  }

  while (v96 != 20);
  v101 = 0;
  v102 = v97 * 0.000001;
  do
  {
    v103 = *&v120[v101 + 20];
    v104 = fabsf(v103);
    v105 = 1.0 / v103;
    if (v104 < v102)
    {
      v105 = 0.0;
    }

    *&v120[v101 + 20] = v105;
    v101 += 4;
  }

  while (v101 != 20);
  v106 = 0;
  v107 = &__s;
  do
  {
    v108 = 0;
    v109 = 0.0;
    v110 = v107;
    do
    {
      v111 = *v110;
      v110 += 5;
      v109 = v109 + (v111 * *(v133 + v108));
      v108 += 4;
    }

    while (v108 != 20);
    *&v120[4 * v106++] = v109;
    ++v107;
  }

  while (v106 != 5);
  for (m = 0; m != 20; m += 4)
  {
    *&v120[m] = *&v120[m + 20] * *&v120[m];
  }

  if (a4)
  {
    v113 = 0;
    v114 = &__s;
    do
    {
      v115 = 0;
      v116 = 0.0;
      do
      {
        v116 = v116 + (*&v114[v115] * *&v120[v115 * 4]);
        ++v115;
      }

      while (v115 != 5);
      *(a3 + 4 * v113) = vcvtms_s32_f32(((v116 * v129[v113]) * 16384.0) + 0.5);
      ++v113;
      v114 += 5;
    }

    while (v113 != a4);
  }

  v117 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ltl_least_squares_set(uint64_t result, int a2, int *a3, unsigned int a4)
{
  v12 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    for (i = 0; i != a2; *(result + 8 * i++) = vcvtms_s32_f32((v6 * 0.000061035) + 0.5))
    {
      v5 = (vcvts_n_f32_u32(i, 1uLL) + -30.0) + -30.0;
      v6 = *a3 + (v5 * a3[1]);
      v7 = a3 + 2;
      v8 = a4 - 2;
      v9 = v5;
      if (a4 >= 3)
      {
        do
        {
          v9 = v5 * v9;
          v10 = *v7++;
          v6 = v6 + (v9 * v10);
          --v8;
        }

        while (v8);
      }
    }
  }

  v11 = *MEMORY[0x29EDCA608];
  return result;
}

void PEREncVal(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v41 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v5 = *(a1 + 1040);
    *(a1 + 1040) = a2;
    v6 = *a2;
    if (v6 <= 0x30)
    {
      switch(*a2)
      {
        case 1u:
          PERPutBit(a1, *a3 != 0);
          goto LABEL_108;
        case 2u:
          PEREncodeINTEGER(a1, *(*(a2 + 1) + 8), a3);
          goto LABEL_108;
        case 3u:
          PEREncodeBIT_STRING(a1, a3);
          goto LABEL_108;
        case 4u:
          PEREncodeOCTET_STRING(a1, a3);
          goto LABEL_108;
        case 5u:
          goto LABEL_108;
        case 6u:
          PEREncodeOBJECT_IDENTIFIER(a1, a3);
          goto LABEL_108;
        case 7u:
        case 8u:
        case 9u:
        case 0xBu:
        case 0xCu:
        case 0xDu:
        case 0xEu:
        case 0xFu:
        case 0x14u:
        case 0x15u:
        case 0x19u:
        case 0x1Bu:
        case 0x1Cu:
        case 0x1Du:
        case 0x1Eu:
        case 0x1Fu:
          goto LABEL_81;
        case 0xAu:
          PEREncodeENUMERATED(a1, a2, *a3);
          goto LABEL_108;
        case 0x10u:
        case 0x11u:
          PEREncodeStruct(a1, a2, a3);
          goto LABEL_108;
        case 0x12u:
        case 0x13u:
        case 0x16u:
        case 0x17u:
        case 0x18u:
        case 0x1Au:
          *(&v36 + 1) = 0;
          if (v6 <= 0x1A && ((1 << v6) & 0x5CC0000) != 0)
          {
            v8 = *a3;
            if (*a3)
            {
              v9 = strnlen(*a3, 0x400uLL);
              v10 = v9 - 1;
              if (v9 == 1)
              {
LABEL_90:
                if ((*(a1 + 1056) & 0x40) != 0)
                {
                  v26 = *(a1 + 1105);
                  if (v26 != 7)
                  {
                    *(*(a1 + 1096))++ &= 510 << v26;
                    *(a1 + 1105) = 7;
                  }
                }

                PERPutByte(a1, 0);
                goto LABEL_108;
              }
            }

            else
            {
              v10 = -2;
            }

            *&v35 = v8 + 1;
            *(&v35 + 1) = v10;
            if (v6 == 18)
            {
              v16 = 4;
              v17 = 1;
              v18 = 11;
              v19 = " 0123456789";
            }

            else
            {
              v17 = 0;
              v19 = 0;
              v18 = 0;
              if ((*(a1 + 1056) & 0x40) != 0)
              {
                v16 = 8;
              }

              else
              {
                v16 = 7;
              }
            }

            BYTE9(v36) = v17;
            *&v37 = v19;
            *(&v37 + 1) = v18;
            BYTE8(v36) = v16;
            *&v36 = PEREncodePrimCHARACTER_STRING;
            PERConstructedEncode(a1, &v35);
            goto LABEL_108;
          }

          CUCFErrorHandler(a1, 15);
          goto LABEL_90;
        case 0x20u:
          PEREncodeCHOICE(a1, a2, a3);
          goto LABEL_108;
        default:
          if (v6 != 48)
          {
            goto LABEL_81;
          }

          PEREncodeSEQUENCE_OF(a1, a2, a3);
          goto LABEL_108;
      }
    }

    if (*a2 <= 0x59u)
    {
      if (*a2 <= 0x43u)
      {
        if (*a2 > 0x41u)
        {
          if (v6 == 66)
          {
            PEREncodeConstrainedINTEGER(a1, a2, a3);
          }

          else
          {
            PEREncodeConstrainedBIT_STRING(a1, a2, *a3, *(a3 + 8));
          }

          goto LABEL_108;
        }

        if (v6 == 49)
        {
          PEREncodeSET_OF(a1, a2, a3);
          goto LABEL_108;
        }

        if (v6 == 64)
        {
          PEREncodeOPEN(a1, a2, a3);
LABEL_108:
          *(a1 + 1040) = v5;
          goto LABEL_109;
        }

        goto LABEL_81;
      }

      if (v6 - 82 >= 2)
      {
        if (v6 == 68)
        {
          PEREncodeConstrainedOCTET_STRING(a1, a2, *a3, *(a3 + 8));
          goto LABEL_108;
        }

        if (v6 != 86)
        {
          goto LABEL_81;
        }
      }

LABEL_30:
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v36 = 0u;
      v37 = 0u;
      v35 = 0u;
      v11 = v6 & 0x1F;
      v12 = a2[40];
      if (v11 > 22)
      {
        if (v11 != 23 && v11 != 24 && v11 != 26)
        {
          goto LABEL_119;
        }
      }

      else if (v11 != 18 && v11 != 19 && v11 != 22)
      {
LABEL_119:
        CUCFErrorHandler(a1, 15);
        v14 = 0;
        v15 = 0;
        goto LABEL_56;
      }

      v13 = *a3;
      v14 = (*a3 + 1);
      v38 = v14;
      if (v13)
      {
        v15 = strnlen(v13, 0x400uLL) - 1;
      }

      else
      {
        v15 = -2;
      }

      v39 = v15;
      LOBYTE(v40) = 1;
LABEL_56:
      if (a2[41] == 1)
      {
        if (v15 < *(a2 + 6) || a2[40] < 0 && *(a2 + 7) < v15)
        {
          PERPutBit(a1, 1);
          v12 = 0;
          *&v35 = v14;
          *(&v35 + 1) = v15;
          goto LABEL_77;
        }

        PERPutBit(a1, 0);
      }

      else
      {
        CUCFCheckCHARACTER_STRINGConstraint(a1, a2, &v38);
        v14 = v38;
        v15 = v39;
      }

      *&v35 = v14;
      *(&v35 + 1) = v15;
      v20 = *(a2 + 4);
      if (v20)
      {
        v21 = *(a2 + 3);
        *&v37 = v21;
        *(&v37 + 1) = v20;
        v22 = v20 - 1;
        if (v20 == 1)
        {
          BYTE8(v36) = 0;
          if ((*(a1 + 1056) & 0x40) == 0)
          {
            goto LABEL_99;
          }

          v23 = 0;
          LODWORD(v22) = 1;
        }

        else
        {
          LOBYTE(v23) = 64 - __clz(v22);
          BYTE8(v36) = v23;
          LOBYTE(v22) = v23;
          if ((*(a1 + 1056) & 0x40) == 0)
          {
            goto LABEL_99;
          }

          v24 = v23;
          LOBYTE(v22) = 1;
          do
          {
            LOBYTE(v22) = 2 * v22;
            v25 = v24 > 1;
            v24 >>= 1;
          }

          while (v25);
          LODWORD(v22) = v22;
          v23 = v23;
        }

        if (v22 >> 1 >= v23)
        {
          LOBYTE(v22) = v22 >> 1;
        }

        BYTE8(v36) = v22;
LABEL_99:
        if (*(v21 + v20 - 1) > ~(-1 << v22))
        {
          BYTE9(v36) = 1;
          goto LABEL_102;
        }

LABEL_101:
        BYTE9(v36) = 0;
LABEL_102:
        if ((v12 & 0x80) == 0)
        {
LABEL_103:
          *&v36 = PEREncodePrimCHARACTER_STRING;
          PERConstructedEncode(a1, &v35);
LABEL_104:
          if (!v40 && v39 && v38)
          {
            free(v38);
          }

          goto LABEL_108;
        }

        if ((v12 & 2) != 0)
        {
          v31 = *(a2 + 6);
          if (!v31)
          {
            goto LABEL_104;
          }

          if (v31 > 2)
          {
            if (v31 >> 16)
            {
              goto LABEL_103;
            }

            if ((*(a1 + 1056) & 0x40) != 0 && v31 * v22 >= 0x11)
            {
              v32 = *(a1 + 1105);
              if (v32 != 7)
              {
                *(*(a1 + 1096))++ &= 510 << v32;
                *(a1 + 1105) = 7;
                v31 = *(a2 + 6);
              }
            }
          }
        }

        else
        {
          v28 = *(a2 + 6);
          v29 = *(a2 + 7) - v28;
          if ((v29 + 1) >> 16)
          {
            goto LABEL_103;
          }

          v33 = v15 - v28;
          v34 = v29;
          PEREncodeConstrainedWholeNumberFunc(a1, &v34, &v33);
          if ((*(a1 + 1056) & 0x40) != 0)
          {
            v30 = *(a1 + 1105);
            if (v30 != 7)
            {
              *(*(a1 + 1096))++ &= 510 << v30;
              *(a1 + 1105) = 7;
            }
          }

          v31 = v39;
        }

        PEREncodePrimCHARACTER_STRING(a1, v31, &v35);
        goto LABEL_104;
      }

      if ((*a2 & 0x1F) == 0x12)
      {
        *&v37 = " 0123456789";
        *(&v37 + 1) = 11;
        WORD4(v36) = 260;
        LOBYTE(v22) = 4;
        goto LABEL_102;
      }

LABEL_77:
      v37 = 0uLL;
      if ((*(a1 + 1056) & 0x40) != 0)
      {
        LOBYTE(v22) = 8;
      }

      else
      {
        LOBYTE(v22) = 7;
      }

      BYTE8(v36) = v22;
      goto LABEL_101;
    }

    if (*a2 <= 0x70u)
    {
      if (v6 == 90)
      {
        goto LABEL_30;
      }

      if (v6 != 96)
      {
        if (v6 == 112)
        {
          PEREncodeConstrainedSEQUENCE_OF(a1, a2, a3);
          goto LABEL_108;
        }

LABEL_81:
        CUCFErrorHandler(a1, 16);
        goto LABEL_108;
      }
    }

    else if (*a2 > 0x9Fu)
    {
      if (v6 != 160)
      {
        if (v6 == 162)
        {
          PEREncodeSizeConstrainedINTEGER(a1, a2[24], a3);
          goto LABEL_108;
        }

        goto LABEL_81;
      }
    }

    else
    {
      if (v6 == 113)
      {
        PEREncodeConstrainedSET_OF(a1, a2, a3);
        goto LABEL_108;
      }

      if (v6 != 128)
      {
        goto LABEL_81;
      }
    }

    PEREncVal(a1, *(a2 + 3), a3);
    goto LABEL_108;
  }

LABEL_109:
  v27 = *MEMORY[0x29EDCA608];
}

uint64_t PEREncodeINTEGER(uint64_t a1, uint64_t a2, int *a3)
{
  v8 = *MEMORY[0x29EDCA608];
  v3 = *a3;
  if ((*(a1 + 1056) & 0x40) != 0)
  {
    v4 = *(a1 + 1105);
    if (v4 != 7)
    {
      *(*(a1 + 1096))++ &= 510 << v4;
      *(a1 + 1105) = 7;
    }
  }

  v7[0] = v3 < 0;
  v7[1] = v3 ^ (v3 >> 31);
  result = PEREncodeUnconstrainedWholeNumberFunc(a1, v7);
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t PEREncodeConstrainedINTEGER(uint64_t a1, uint64_t a2, int *a3)
{
  v15 = *MEMORY[0x29EDCA608];
  v5 = *(a2 + 24);
  v6 = *(*(a2 + 8) + 8);
  v7 = *a3;
  v14 = *a3;
  if (*(a2 + 25) != 1)
  {
    CUCFCheckINTEGERConstraint(a1, a2, &v14);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_8:
    if (v5 < 0)
    {
      v10 = *(a2 + 32);
      v13 = v14 - v10;
      v12[0] = *(a2 + 40) - v10;
      result = PEREncodeConstrainedWholeNumberFunc(a1, v12, &v13);
    }

    else
    {
      v12[0] = v14 - *(a2 + 32);
      result = PEREncodeSemiConstrainedWholeNumberFunc(a1, v12);
    }

    goto LABEL_16;
  }

  if ((v5 & 0x20) != 0 && *(a2 + 32) > v7 || (v5 & 8) != 0 && *(a2 + 40) < v7)
  {
    PERPutBit(a1, 1);
    goto LABEL_11;
  }

  PERPutBit(a1, 0);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  if ((*(a1 + 1056) & 0x40) != 0)
  {
    v9 = *(a1 + 1105);
    if (v9 != 7)
    {
      *(*(a1 + 1096))++ &= 510 << v9;
      *(a1 + 1105) = 7;
    }
  }

  v12[0] = v14 < 0;
  v12[1] = v14 ^ (v14 >> 31);
  result = PEREncodeUnconstrainedWholeNumberFunc(a1, v12);
LABEL_16:
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t PEREncodeSizeConstrainedINTEGER(uint64_t a1, unsigned __int8 a2, int *a3)
{
  v22 = *MEMORY[0x29EDCA608];
  if (a2 == 3)
  {
    v6 = *a3;
    if ((*a3 - 0x100000000) < 0xFFFFFFFE00000000)
    {
      EPErrorHandler(a1, 18);
    }

    v5 = v6 + 0x100000000;
    if ((*(a1 + 1056) & 0x40) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  if (a2 != 2)
  {
    if (a2 == 1)
    {
      v5 = *a3 + 0x80000000;
      goto LABEL_6;
    }

    v5 = *a3;
    if (a2 == 4 && v5 >> 33 || a2 == 16 && v5 >> 39)
    {
      EPErrorHandler(a1, 18);
    }

    if ((*(a1 + 1056) & 0x40) != 0)
    {
      goto LABEL_24;
    }

    if (a2 < 3u)
    {
LABEL_23:
      v8 = *MEMORY[0x29EDCA608];
      v9 = a1;
      v10 = v5;
      v11 = 32;
      goto LABEL_40;
    }

LABEL_19:
    if (a2 == 16)
    {
      v7 = 7;
    }

    else
    {
      v7 = 1;
    }

    PERPutBits(a1, v5 >> 32, v7);
    goto LABEL_23;
  }

  v5 = *a3;
LABEL_6:
  if ((*(a1 + 1056) & 0x40) == 0)
  {
    goto LABEL_23;
  }

LABEL_24:
  if (a2 < 3u)
  {
    v12 = 2;
  }

  else
  {
    v12 = 3;
  }

  if (v5 < 1)
  {
    v18 = 0;
    v17 = 1;
  }

  else
  {
    v13 = 0;
    v14 = v5;
    do
    {
      v15 = v13++;
      v16 = v14 > 1;
      v14 >>= 1;
    }

    while (v16);
    if ((v13 & 7) != 0)
    {
      v17 = (v13 >> 3) + 1;
    }

    else
    {
      v17 = v13 >> 3;
    }

    v18 = v15 > 0x1Fu;
  }

  PERPutBits(a1, v17 - 1, v12);
  v19 = *(a1 + 1105);
  if (v19 != 7)
  {
    *(*(a1 + 1096))++ &= 510 << v19;
    *(a1 + 1105) = 7;
  }

  if (v18)
  {
    PERPutBits(a1, v5 >> 32, 8u);
    --v17;
  }

  v20 = *MEMORY[0x29EDCA608];
  v11 = 8 * (v17 & 0x1F);
  v9 = a1;
  v10 = v5;
LABEL_40:

  return PERPutBits(v9, v10, v11);
}

uint64_t PEREncodeBIT_STRING(uint64_t a1, unsigned int *a2)
{
  v7[3] = *MEMORY[0x29EDCA608];
  v2 = *a2;
  if (v2)
  {
    v7[0] = *(a2 + 1);
    v7[1] = v2;
    v7[2] = PEREncodePrimBIT_STRING;
    result = PERConstructedEncode(a1, v7);
    v4 = *MEMORY[0x29EDCA608];
  }

  else
  {
    if ((*(a1 + 1056) & 0x40) != 0)
    {
      v5 = *(a1 + 1105);
      if (v5 != 7)
      {
        *(*(a1 + 1096))++ &= 510 << v5;
        *(a1 + 1105) = 7;
      }
    }

    v6 = *MEMORY[0x29EDCA608];

    return PERPutByte(a1, 0);
  }

  return result;
}

void PEREncodeConstrainedBIT_STRING(uint64_t a1, uint64_t a2, unsigned int a3, unsigned __int8 *a4)
{
  v22 = *MEMORY[0x29EDCA608];
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v8 = *(a2 + 24);
  v9 = a3;
  if (*(a2 + 25) == 1)
  {
    if (*(a2 + 32) > a3 || (*(a2 + 24) & 0x80) != 0 && *(a2 + 40) < a3)
    {
      PERPutBit(a1, 1);
      v19 = a4;
      v20 = v9;
      goto LABEL_9;
    }

    PERPutBit(a1, 0);
  }

  else
  {
    CUCFCheckStringConstraint(a1, a2, a3);
  }

  v19 = a4;
  v20 = v9;
  if (v8 < 0)
  {
    if ((v8 & 2) != 0)
    {
      v15 = *(a2 + 32);
      if (!v15)
      {
        goto LABEL_10;
      }

      if (v15 > 0x10)
      {
        if (v15 >> 16)
        {
          goto LABEL_9;
        }

        if ((*(a1 + 1056) & 0x40) != 0)
        {
          v16 = *(a1 + 1105);
          if (v16 != 7)
          {
            *(*(a1 + 1096))++ &= 510 << v16;
            *(a1 + 1105) = 7;
            v15 = *(a2 + 32);
          }
        }
      }

      v14 = a1;
    }

    else
    {
      v11 = *(a2 + 40);
      if (v11 >> 16)
      {
        goto LABEL_9;
      }

      v12 = *(a2 + 32);
      v17 = a3 - v12;
      v18 = v11 - v12;
      PEREncodeConstrainedWholeNumberFunc(a1, &v18, &v17);
      if ((*(a1 + 1056) & 0x40) != 0)
      {
        v13 = *(a1 + 1105);
        if (v13 != 7)
        {
          *(*(a1 + 1096))++ &= 510 << v13;
          *(a1 + 1105) = 7;
        }
      }

      v14 = a1;
      v15 = v9;
    }

    PEREncodePrimBIT_STRING(v14, v15, &v19);
    goto LABEL_10;
  }

LABEL_9:
  v21 = PEREncodePrimBIT_STRING;
  PERConstructedEncode(a1, &v19);
LABEL_10:
  v10 = *MEMORY[0x29EDCA608];
}

uint64_t PEREncodeOCTET_STRING(uint64_t a1, unsigned int *a2)
{
  v7[3] = *MEMORY[0x29EDCA608];
  v2 = *a2;
  if (v2)
  {
    v7[0] = *(a2 + 1);
    v7[1] = v2;
    v7[2] = PEREncodePrimOCTET_STRING;
    result = PERConstructedEncode(a1, v7);
    v4 = *MEMORY[0x29EDCA608];
  }

  else
  {
    if ((*(a1 + 1056) & 0x40) != 0)
    {
      v5 = *(a1 + 1105);
      if (v5 != 7)
      {
        *(*(a1 + 1096))++ &= 510 << v5;
        *(a1 + 1105) = 7;
      }
    }

    v6 = *MEMORY[0x29EDCA608];

    return PERPutByte(a1, 0);
  }

  return result;
}

void PEREncodeConstrainedOCTET_STRING(uint64_t a1, uint64_t a2, unsigned int a3, unsigned __int8 *a4)
{
  v25 = *MEMORY[0x29EDCA608];
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v8 = *(a2 + 24);
  v9 = a3;
  if (*(a2 + 25) == 1)
  {
    if (*(a2 + 32) > a3 || (*(a2 + 24) & 0x80) != 0 && *(a2 + 40) < a3)
    {
      PERPutBit(a1, 1);
      v22 = a4;
      v23 = v9;
LABEL_9:
      v24 = PEREncodePrimOCTET_STRING;
      PERConstructedEncode(a1, &v22);
LABEL_10:
      v10 = *MEMORY[0x29EDCA608];
      return;
    }

    PERPutBit(a1, 0);
  }

  else
  {
    CUCFCheckStringConstraint(a1, a2, a3);
  }

  v22 = a4;
  v23 = v9;
  if ((v8 & 0x80) == 0)
  {
    goto LABEL_9;
  }

  if ((v8 & 2) != 0)
  {
    v15 = *(a2 + 32);
    if (!v15)
    {
      goto LABEL_10;
    }

    if (v15 > 2)
    {
      if (v15 >> 16)
      {
        goto LABEL_9;
      }

      if ((*(a1 + 1056) & 0x40) != 0)
      {
        v19 = *(a1 + 1105);
        if (v19 != 7)
        {
          *(*(a1 + 1096))++ &= 510 << v19;
          *(a1 + 1105) = 7;
          v15 = *(a2 + 32);
          a4 = v22;
        }
      }
    }

    v18 = *MEMORY[0x29EDCA608];
    v17 = a1;
    v14 = a4;
  }

  else
  {
    v11 = *(a2 + 40);
    if (v11 >> 16)
    {
      goto LABEL_9;
    }

    v12 = *(a2 + 32);
    v20 = a3 - v12;
    v21 = v11 - v12;
    PEREncodeConstrainedWholeNumberFunc(a1, &v21, &v20);
    if ((*(a1 + 1056) & 0x40) != 0)
    {
      v13 = *(a1 + 1105);
      if (v13 != 7)
      {
        *(*(a1 + 1096))++ &= 510 << v13;
        *(a1 + 1105) = 7;
      }
    }

    v14 = v22;
    v15 = v23;
    v16 = *MEMORY[0x29EDCA608];
    v17 = a1;
  }

  PERPutSeg(v17, v14, v15);
}

void *PEREncodeOBJECT_IDENTIFIER(uint64_t a1, uint64_t *a2)
{
  v31 = *MEMORY[0x29EDCA608];
  if ((*(a1 + 1056) & 0x40) != 0)
  {
    v4 = *(a1 + 1105);
    if (v4 != 7)
    {
      *(*(a1 + 1096))++ &= 510 << v4;
      *(a1 + 1105) = 7;
    }
  }

  v5 = *(a1 + 1096);
  v6 = *(a1 + 1088);
  PERSkipBytes(a1, 1uLL);
  v7 = *(a2 + 4);
  v8 = *a2;
  if (*a2)
  {
    v8 = *(v8 + 8);
  }

  v9 = 0;
  v10 = v5 - v6;
  v11 = 40 * v8;
  v12 = a2;
  while (1)
  {
    v12 = *v12;
    if (!v12)
    {
      break;
    }

    v13 = v9;
    v9 = 1;
    if (v13)
    {
      v8 = *(v12 + 2);
      break;
    }
  }

  v14 = v8 + v11;
  if (((v8 + v11) & 0xFFFFFF80) != 0)
  {
    EPErrorHandler(a1, 28);
  }

  result = PERPutByte(a1, v14);
  if (v7 >= 3)
  {
    v16 = 2;
    v17 = 3;
    do
    {
      v18 = *a2;
      v19 = v17;
      if (*a2)
      {
        while (--v19)
        {
          v18 = *v18;
          if (!v18)
          {
            goto LABEL_19;
          }
        }

        v14 = *(v18 + 2);
      }

LABEL_19:
      if (v14 >= 0x80)
      {
        v21 = 0;
        v22 = v14;
        do
        {
          v21 += 7;
          v23 = v22 >= 0x4000;
          v22 >>= 7;
        }

        while (v23);
        for (; v21; v21 -= 7)
        {
          PERPutByte(a1, (v14 >> v21) | 0x80);
        }

        v20 = v14 & 0x7F;
      }

      else
      {
        v20 = v14;
      }

      result = PERPutByte(a1, v20);
      ++v16;
      ++v17;
    }

    while (v16 != v7);
  }

  v24 = *(a1 + 1088);
  v25 = *(a1 + 1096) - v24 + ~v10;
  if (v25 > 0x7F)
  {
    if (*(a1 + 1105) == 7)
    {
      v28 = *MEMORY[0x29EDCA608];

      return PEROctetsFragmentation(a1, v25);
    }

    else
    {
      v30 = *MEMORY[0x29EDCA608];

      return PEROctetsFragmentationWithOffset(a1, v25);
    }
  }

  else
  {
    v26 = (v24 + v10);
    v27 = *(a1 + 1105);
    if (v27 == 7)
    {
      *v26 = v25;
    }

    else
    {
      *v26 |= v25 >> (7 - v27);
      v26[1] |= v25 << (*(a1 + 1105) + 1);
    }

    v29 = *MEMORY[0x29EDCA608];
  }

  return result;
}

uint64_t PEREncodeENUMERATED(uint64_t a1, uint64_t a2, signed int a3)
{
  v14 = *MEMORY[0x29EDCA608];
  if (*(a2 + 40) <= a3)
  {
    EPErrorHandler(a1, 21);
  }

  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    v12 = a3;
    v7 = *(a2 + 40);
    goto LABEL_7;
  }

  if (v6 > a3)
  {
    PERPutBit(a1, 0);
    v12 = a3;
    v7 = *(a2 + 24);
LABEL_7:
    v13 = v7 - 1;
    result = PEREncodeConstrainedWholeNumberFunc(a1, &v13, &v12);
    v9 = *MEMORY[0x29EDCA608];
    return result;
  }

  PERPutBit(a1, 1);
  v10 = *MEMORY[0x29EDCA608];
  v11 = a3 - *(a2 + 24);

  return PEREncodeNormallySmallNonNegativeWholeNumber(a1, v11);
}

void PEREncodeStruct(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v77 = *MEMORY[0x29EDCA608];
  if ((*(a2 + 48) & 1) == 0)
  {
    v6 = *(a2 + 80);
    if (v6)
    {
      v74 = 0;
      v75 = 0;
      v76 = 0;
      if (v6 >> 16)
      {
        PERSkipConsBitField(a1, &v74, v6);
      }

      else
      {
        PERSkipPrimBitField(a1, &v74, v6);
      }

      PEREncodeStructRootWithOptDef(a1, &v74, v4, a3);
      goto LABEL_101;
    }

    v11 = *MEMORY[0x29EDCA608];

    PEREncodeStructRoot(a1, a2, a3);
    return;
  }

  v7 = *(a1 + 1096);
  v8 = *(a1 + 1088);
  v9 = *(a1 + 1105);
  PERPutBit(a1, 0);
  v10 = v4[10];
  if (v10)
  {
    v74 = 0;
    v75 = 0;
    v76 = 0;
    if (v10 >> 16)
    {
      PERSkipConsBitField(a1, &v74, v10);
    }

    else
    {
      PERSkipPrimBitField(a1, &v74, v10);
    }

    PEREncodeStructRootWithOptDef(a1, &v74, v4, a3);
  }

  else
  {
    PEREncodeStructRoot(a1, v4, a3);
  }

  v12 = v4[11];
  if (!v12)
  {
    goto LABEL_101;
  }

  memset(v73, 0, sizeof(v73));
  v13 = *(a1 + 1096);
  v14 = *(a1 + 1105);
  v66 = *(a1 + 1088);
  if (v12 < 0x41)
  {
    PERPutBits(a1, v12 - 1, 7u);
    PERSkipPrimBitField(a1, v73, v4[11]);
  }

  else
  {
    PERPutBit(a1, 1);
    PERSkipConsBitField(a1, v73, v4[11]);
  }

  v15 = v4[8];
  if (!v15)
  {
LABEL_99:
    v60 = *(a1 + 1088);
    *(a1 + 1096) = v60 + v13 - v66;
    *(a1 + 1105) = v14;
    *(v60 + v13 - v66) &= -2 << v14;
    goto LABEL_101;
  }

  v64 = v14;
  v65 = v9;
  v16 = 0;
  v17 = 0;
  v62 = v7 - v8;
  v63 = v13;
  v18 = v4[4];
  v71 = a1 + 200;
  v72 = v4;
  do
  {
    v19 = *(v18 + 16);
    if (v19 <= 2)
    {
      if (v19 < 2)
      {
        v20 = *(v4[1] + 24) + 24 * v18[3];
        if (*(a3 + **(v20 + 16)) == 1)
        {
          v21 = *(v20 + 8);
          PERSetBitToBitField(a1, v73, 1);
          v22 = *(a1 + 712);
          if (v22 >= 0x40)
          {
            CUCFErrorHandler(a1, 15);
            v22 = *(a1 + 712);
          }

          *(v71 + 8 * v22) = v18;
          *(a1 + 712) = v22 + 1;
          PEREncodeOPENTypeField(a1, *v18, a3 + v21);
          --*(a1 + 712);
          ++v16;
          goto LABEL_39;
        }

LABEL_40:
        PERSetBitToBitField(a1, v73, 0);
        goto LABEL_97;
      }

      v23 = *(v4[1] + 24) + 24 * v18[3];
      if (*(a3 + **(v23 + 16)) != 1)
      {
        goto LABEL_40;
      }

      v24 = *(v23 + 8);
      PERSetBitToBitField(a1, v73, 1);
      v25 = *(a1 + 712);
      if (v25 >= 0x40)
      {
        goto LABEL_37;
      }

      goto LABEL_38;
    }

    if (v19 == 3)
    {
      v26 = *(v4[1] + 24) + 24 * v18[3];
      if (*(a3 + **(v26 + 16)) != 1)
      {
        goto LABEL_40;
      }

      v24 = *(v26 + 8);
      PERSetBitToBitField(a1, v73, 1);
      v25 = *(a1 + 712);
      if (v25 >= 0x40)
      {
LABEL_37:
        CUCFErrorHandler(a1, 15);
        v25 = *(a1 + 712);
      }

LABEL_38:
      *(v71 + 8 * v25) = v18;
      *(a1 + 712) = v25 + 1;
      PEREncodeOPENTypeField(a1, *v18, a3 + v24);
      --*(a1 + 712);
      ++v17;
LABEL_39:
      v4 = v72;
      goto LABEL_97;
    }

    if (v19 != 4)
    {
      if (v19 != 5)
      {
        CUCFErrorHandler(a1, 15);
        goto LABEL_97;
      }

      goto LABEL_40;
    }

    v27 = v18[3];
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v28 = 0;
    if (v27)
    {
      v29 = (v18 + 6);
      v30 = v27;
      do
      {
        v31 = *v29;
        v29 += 32;
        if (v31)
        {
          ++v28;
        }

        --v30;
      }

      while (v30);
    }

    if ((*(a1 + 1056) & 0x40) != 0)
    {
      v33 = *(a1 + 1105);
      v32 = *(a1 + 1096);
      v70 = 7;
      if (v33 != 7)
      {
        *v32 &= 510 << v33;
        v32 = (*(a1 + 1096) + 1);
        *(a1 + 1096) = v32;
        *(a1 + 1105) = 7;
      }
    }

    else
    {
      v32 = *(a1 + 1096);
      v70 = *(a1 + 1105);
    }

    v34 = *(a1 + 1088);
    PERSkipBytes(a1, 1uLL);
    v69 = v17;
    if (v28 >> 16)
    {
      PERSkipConsBitField(a1, &v74, v28);
    }

    else
    {
      PERSkipPrimBitField(a1, &v74, v28);
    }

    v15 -= v27;
    v35 = &v32[-v34];
    if (!v18[3])
    {
      v4 = v72;
LABEL_85:
      v17 = v69;
      v56 = *(a1 + 1088);
      *(a1 + 1096) = v56 + v35;
      *(a1 + 1105) = v70;
      *(v56 + v35) &= -2 << v70;
      PERSetBitToBitField(a1, v73, 0);
      goto LABEL_97;
    }

    v67 = &v32[-v34];
    v68 = v16;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = v18 + 4;
    v4 = v72;
    do
    {
      v41 = *(v40 + 16);
      if (v41 > 2)
      {
        if (v41 == 3)
        {
          v48 = *(v4[1] + 24) + 24 * v40[3];
          if (*(a3 + **(v48 + 16)) == 1)
          {
            v46 = *(v48 + 8);
            PERSetBitToBitField(a1, &v74, 1);
            v47 = *(a1 + 712);
            if (v47 >= 0x40)
            {
              goto LABEL_72;
            }

            goto LABEL_73;
          }
        }

        else if (v41 != 5)
        {
          CUCFErrorHandler(a1, 15);
          goto LABEL_76;
        }
      }

      else
      {
        if (v41 < 2)
        {
          v42 = *(v4[1] + 24) + 24 * v40[3];
          if (*(a3 + **(v42 + 16)) != 1)
          {
            ++v38;
            goto LABEL_76;
          }

          v43 = *(v42 + 8);
          v44 = *(a1 + 712);
          if (v44 >= 0x40)
          {
            CUCFErrorHandler(a1, 15);
            v44 = *(a1 + 712);
          }

          *(v71 + 8 * v44) = v40;
          *(a1 + 712) = v44 + 1;
          PEREncVal(a1, *v40, a3 + v43);
          --*(a1 + 712);
          if (*(v40 + 16) == 1)
          {
            PERSetBitToBitField(a1, &v74, 1);
          }

          ++v37;
          goto LABEL_74;
        }

        v45 = *(v4[1] + 24) + 24 * v40[3];
        if (*(a3 + **(v45 + 16)) == 1)
        {
          v46 = *(v45 + 8);
          PERSetBitToBitField(a1, &v74, 1);
          v47 = *(a1 + 712);
          if (v47 >= 0x40)
          {
LABEL_72:
            CUCFErrorHandler(a1, 15);
            v47 = *(a1 + 712);
          }

LABEL_73:
          *(v71 + 8 * v47) = v40;
          *(a1 + 712) = v47 + 1;
          PEREncVal(a1, *v40, a3 + v46);
          --*(a1 + 712);
          ++v36;
LABEL_74:
          v4 = v72;
          goto LABEL_76;
        }
      }

      PERSetBitToBitField(a1, &v74, 0);
LABEL_76:
      ++v39;
      v40 += 4;
    }

    while (v39 < v18[3]);
    v18 = v40 - 4;
    if (v38 && v36)
    {
      EPErrorHandler(a1, 33);
      v35 = v67;
      v16 = v68;
      goto LABEL_82;
    }

    v49 = v37 | v36;
    v35 = v67;
    v16 = v68;
    if (!v49)
    {
      goto LABEL_85;
    }

LABEL_82:
    v50 = *(a1 + 1096);
    v51 = (v50 - *(a1 + 1088));
    v52 = *(a1 + 1105);
    v53 = v52 >= v70;
    v54 = v52 - v70;
    if (v53)
    {
      v55 = &v51[~v35];
      if (v55)
      {
        PERPutBits(a1, 0, v54);
        goto LABEL_88;
      }

LABEL_91:
      v4 = v72;
      *(a1 + 1096) = v50 - 1;
      PERPutBits(a1, 0x100uLL, 0x10u);
    }

    else
    {
      PERPutBits(a1, 0, (v54 + 8));
      v55 = &v51[-v35];
      if (v51 == v35)
      {
        v50 = *(a1 + 1096);
        goto LABEL_91;
      }

LABEL_88:
      v4 = v72;
      if (v55 > 0x7F)
      {
        if (*(a1 + 1105) == 7)
        {
          PEROctetsFragmentation(a1, v55);
        }

        else
        {
          PEROctetsFragmentationWithOffset(a1, v55);
        }
      }

      else
      {
        v57 = (*(a1 + 1088) + v35);
        v58 = *(a1 + 1105);
        if (v58 == 7)
        {
          *v57 = v55;
        }

        else
        {
          *v57 |= v55 >> (7 - v58);
          v57[1] |= v55 << (*(a1 + 1105) + 1);
        }
      }
    }

    PERSetBitToBitField(a1, v73, 1);
    v17 = v69 + 1;
LABEL_97:
    v18 += 4;
    --v15;
  }

  while (v15);
  v59 = v16 | v17;
  v14 = v64;
  v13 = v63;
  if (!v59)
  {
    goto LABEL_99;
  }

  *(*(a1 + 1088) + v62) |= 1 << v65;
LABEL_101:
  v61 = *MEMORY[0x29EDCA608];
}

uint64_t PEREncodeSEQUENCE_OF(uint64_t a1, uint64_t a2, int *a3)
{
  v15 = *MEMORY[0x29EDCA608];
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v6 = **(a2 + 8);
  if (v6 == 181)
  {
    v7 = a3[4];
    goto LABEL_5;
  }

  if (v6 == 182)
  {
    v7 = *a3;
LABEL_5:
    *&v12 = v7;
    goto LABEL_7;
  }

  CUCFErrorHandler(a1, 15);
LABEL_7:
  v11 = a3;
  *&v13 = 0;
  *(&v13 + 1) = a2;
  v8 = *(a1 + 712);
  if (v8 >= 0x40)
  {
    CUCFErrorHandler(a1, 15);
    v8 = *(a1 + 712);
  }

  *(a1 + 8 * v8 + 200) = &v13;
  *(a1 + 712) = v8 + 1;
  *(&v12 + 1) = PEREncodePrimSEQUENCE_OF;
  result = PERConstructedEncode(a1, &v11);
  --*(a1 + 712);
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void PEREncodeConstrainedSEQUENCE_OF(uint64_t a1, uint64_t a2, int *a3)
{
  v20 = *MEMORY[0x29EDCA608];
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v6 = *(a2 + 32);
  v7 = **(a2 + 8);
  if (v7 == 181)
  {
    v8 = a3[4];
    goto LABEL_5;
  }

  if (v7 == 182)
  {
    v8 = *a3;
LABEL_5:
    *&v17 = v8;
    goto LABEL_7;
  }

  CUCFErrorHandler(a1, 15);
  v8 = 0;
LABEL_7:
  v16 = a3;
  *&v18 = 0;
  *(&v18 + 1) = a2;
  if (*(a2 + 33) == 1)
  {
    if (v8 < *(a2 + 40) || *(a2 + 32) < 0 && *(a2 + 48) < v8)
    {
      PERPutBit(a1, 1);
      v6 = 0;
    }

    else
    {
      PERPutBit(a1, 0);
    }
  }

  else
  {
    CUCFCheckStructOfConstraint(a1, a2, v8);
  }

  v9 = *(a1 + 712);
  if (v9 >= 0x40)
  {
    CUCFErrorHandler(a1, 15);
    v9 = *(a1 + 712);
  }

  *(a1 + 200 + 8 * v9) = &v18;
  *(a1 + 712) = v9 + 1;
  if ((v6 & 0x80) == 0)
  {
    goto LABEL_17;
  }

  if ((v6 & 2) != 0)
  {
    v13 = *(a2 + 40);
    if (!v13)
    {
      goto LABEL_18;
    }

    if (!(v13 >> 16))
    {
LABEL_24:
      PEREncodePrimSEQUENCE_OF(a1, v13, &v16);
      goto LABEL_18;
    }
  }

  else
  {
    v11 = *(a2 + 48);
    if (!(v11 >> 16))
    {
      v12 = *(a2 + 40);
      v14 = v8 - v12;
      v15 = v11 - v12;
      PEREncodeConstrainedWholeNumberFunc(a1, &v15, &v14);
      v13 = v17;
      goto LABEL_24;
    }
  }

LABEL_17:
  *(&v17 + 1) = PEREncodePrimSEQUENCE_OF;
  PERConstructedEncode(a1, &v16);
LABEL_18:
  --*(a1 + 712);
  v10 = *MEMORY[0x29EDCA608];
}

uint64_t PEREncodeSET_OF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[3] = *MEMORY[0x29EDCA608];
  v9[1] = a2;
  v9[2] = 0;
  v4 = *(a3 + 16);
  v8[0] = a3;
  v8[1] = v4;
  v9[0] = 0;
  v5 = *(a1 + 712);
  if (v5 >= 0x40)
  {
    CUCFErrorHandler(a1, 15);
    v5 = *(a1 + 712);
  }

  *(a1 + 8 * v5 + 200) = v9;
  *(a1 + 712) = v5 + 1;
  v8[2] = PEREncodePrimSET_OF;
  result = PERConstructedEncode(a1, v8);
  --*(a1 + 712);
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t PEREncodeConstrainedSET_OF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x29EDCA608];
  v18 = 0u;
  v17 = 0u;
  v5 = *(a2 + 32);
  v6 = *(a3 + 16);
  v15 = a3;
  v16 = v6;
  *&v18 = a2;
  if (*(a2 + 33) == 1)
  {
    if (*(a2 + 40) > v6 || v5 < 0 && *(a2 + 48) < v6)
    {
      PERPutBit(a1, 1);
      v5 = 0;
    }

    else
    {
      PERPutBit(a1, 0);
    }
  }

  else
  {
    CUCFCheckStructOfConstraint(a1, a2, v6);
  }

  v7 = *(a1 + 712);
  if (v7 >= 0x40)
  {
    CUCFErrorHandler(a1, 15);
    v7 = *(a1 + 712);
  }

  *(a1 + 200 + 8 * v7) = &v17 + 8;
  *(a1 + 712) = v7 + 1;
  if ((v5 & 0x80) == 0)
  {
    goto LABEL_11;
  }

  if ((v5 & 2) != 0)
  {
    v12 = *(a2 + 40);
    if (!(v12 >> 16))
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = *(a2 + 48);
    if (!(v10 >> 16))
    {
      v11 = *(a2 + 40);
      v13 = v6 - v11;
      v14 = v10 - v11;
      PEREncodeConstrainedWholeNumberFunc(a1, &v14, &v13);
      v12 = v16;
LABEL_17:
      result = PEREncodePrimSET_OF(a1, v12, &v15);
      goto LABEL_12;
    }
  }

LABEL_11:
  *&v17 = PEREncodePrimSET_OF;
  result = PERConstructedEncode(a1, &v15);
LABEL_12:
  --*(a1 + 712);
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

void *PEREncodeCHOICE(uint64_t a1, void *a2, __int16 *a3)
{
  v24 = *MEMORY[0x29EDCA608];
  v5 = a2[1];
  v6 = *(v5 + 40);
  if (v6 > 3)
  {
LABEL_5:
    v7 = *a3;
    goto LABEL_7;
  }

  if (v6 != 1)
  {
    if (v6 == 2)
    {
      v7 = *a3;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v7 = *a3;
LABEL_7:
  v8 = a2[5];
  if (v8)
  {
    v9 = a2[5];
    v10 = a2[4];
    while (*(v10 + 16) == 5 || v10[3] != v7)
    {
      v10 += 4;
      if (!--v9)
      {
        v10 = a2[4];
        break;
      }
    }

    v11 = a3 + *(v5 + 36);
    v12 = v10 - a2[4];
    v14 = a2 + 3;
    v13 = a2[3];
    if (v13 == -1)
    {
      if (v8 != 1)
      {
        v22 = v12 >> 5;
        v16 = v8 - 1;
        goto LABEL_27;
      }

LABEL_29:
      v17 = (a1 + 712);
      v20 = *(a1 + 712);
      if (v20 >= 0x40)
      {
        CUCFErrorHandler(a1, 15);
        v20 = *(a1 + 712);
      }

      *(a1 + 200 + 8 * v20) = v10;
      *(a1 + 712) = v20 + 1;
      result = PEREncVal(a1, *v10, v11);
      goto LABEL_32;
    }

    v15 = v12 >> 5;
  }

  else
  {
    v11 = a3 + *(v5 + 36);
    v14 = a2 + 3;
    v13 = a2[3];
    if (v13 == -1)
    {
      v10 = a2[4];
      goto LABEL_29;
    }

    v15 = 0;
    v10 = a2[4];
  }

  if (v15 < v13)
  {
    PERPutBit(a1, 0);
    if (a2[5] >= 2uLL)
    {
      v22 = v15;
      v16 = *v14 - 1;
LABEL_27:
      v23 = v16;
      PEREncodeConstrainedWholeNumberFunc(a1, &v23, &v22);
      goto LABEL_29;
    }

    goto LABEL_29;
  }

  PERPutBit(a1, 1);
  if (a2[5] >= 2uLL)
  {
    PEREncodeNormallySmallNonNegativeWholeNumber(a1, v15 - *v14);
  }

  v17 = (a1 + 712);
  v18 = *(a1 + 712);
  if (v18 >= 0x40)
  {
    CUCFErrorHandler(a1, 15);
    v18 = *(a1 + 712);
  }

  *(a1 + 200 + 8 * v18) = v10;
  *(a1 + 712) = v18 + 1;
  result = PEREncodeOPENTypeField(a1, *v10, v11);
LABEL_32:
  --*v17;
  v21 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t PEREncodeOPEN(uint64_t result, void *a2, __int16 *a3)
{
  v4 = result;
  v13 = *MEMORY[0x29EDCA608];
  v5 = a2[1];
  v6 = a2[5];
  v7 = *(v5 + 40);
  if (v7 > 3)
  {
    goto LABEL_6;
  }

  if (v7 != 1)
  {
    if (v7 == 2)
    {
      v8 = *a3;
      if (!v6)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

LABEL_6:
    v8 = *a3;
    if (!v6)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v8 = *a3;
  if (!v6)
  {
LABEL_12:
    v9 = 0;
    goto LABEL_13;
  }

LABEL_9:
  v9 = a2[4];
  while (v9[3] != v8)
  {
    v9 += 4;
    if (!--v6)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  v10 = *(v5 + 36);
  v11 = *(result + 712);
  if (v11 >= 0x40)
  {
    result = CUCFErrorHandler(result, 15);
    v11 = *(v4 + 712);
  }

  *(v4 + 200 + 8 * v11) = v9;
  *(v4 + 712) = v11 + 1;
  if (v9)
  {
    result = PEREncodeOPENTypeField(v4, *v9, a3 + v10);
    v11 = *(v4 + 712) - 1;
  }

  *(v4 + 712) = v11;
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void PERDecVal(unint64_t a1, unsigned __int8 *a2, _DWORD *a3, void **a4)
{
  v45 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v8 = *(a1 + 1040);
    *(a1 + 1040) = a2;
    v9 = *a2;
    if (v9 <= 0x30)
    {
      switch(*a2)
      {
        case 1u:
          *a3 = PERGetBit(a1);
          goto LABEL_125;
        case 2u:
          PERDecodeINTEGER(a1, a2, a3);
          goto LABEL_125;
        case 3u:
          PERDecodeBIT_STRING(a1, a3);
          goto LABEL_125;
        case 4u:
          PERDecodeOCTET_STRING(a1, a3);
          goto LABEL_125;
        case 5u:
          *a3 = 0;
          goto LABEL_125;
        case 6u:
          PERDecodeOBJECT_IDENTIFIER(a1, a3);
          goto LABEL_125;
        case 7u:
        case 8u:
        case 9u:
        case 0xBu:
        case 0xCu:
        case 0xDu:
        case 0xEu:
        case 0xFu:
        case 0x14u:
        case 0x15u:
        case 0x19u:
        case 0x1Bu:
        case 0x1Cu:
        case 0x1Du:
        case 0x1Eu:
        case 0x1Fu:
          goto LABEL_74;
        case 0xAu:
          PERDecodeENUMERATED(a1, a2, a3);
          goto LABEL_125;
        case 0x10u:
        case 0x11u:
          v22 = *(*(a2 + 1) + 8);
          memset_s(a3, v22, 0, v22);
          PERDecodeStruct(a1, a2, a3, a4);
          goto LABEL_125;
        case 0x12u:
        case 0x13u:
        case 0x16u:
        case 0x17u:
        case 0x18u:
        case 0x1Au:
          v41 = 0u;
          v42 = 0u;
          v40 = 0u;
          if (v9 == 18)
          {
            BYTE8(v41) = 4;
            *&v41 = PERDecodePrimCHARACTER_STRING;
            PERConstructedDecode(a1, &v40);
            v10 = *(&v40 + 1);
            if (*(&v40 + 1))
            {
              v11 = v40;
              do
              {
                if (*v11)
                {
                  v12 = *v11 + 47;
                }

                else
                {
                  v12 = 32;
                }

                *v11++ = v12;
                --v10;
              }

              while (v10);
            }
          }

          else
          {
            if ((*(a1 + 1056) & 0x40) != 0)
            {
              v19 = 8;
            }

            else
            {
              v19 = 7;
            }

            BYTE8(v41) = v19;
            *&v41 = PERDecodePrimCHARACTER_STRING;
            PERConstructedDecode(a1, &v40);
          }

          v20 = v40;
          *(a1 + 1112) = 0;
          v21 = *a2 & 0x1F;
          if (v21 > 0x16)
          {
            if (v21 != 23 && v21 != 24 && v21 != 26)
            {
LABEL_83:
              CUCFErrorHandler(a1, 15);
              if (*(&v20 + 1) && v20)
              {
                v24 = v20;
                goto LABEL_124;
              }

              goto LABEL_125;
            }
          }

          else if (v21 != 18 && v21 != 19 && v21 != 22)
          {
            goto LABEL_83;
          }

          if (*(&v20 + 1))
          {
            *(v20 + *(&v20 + 1)) = 0;
            *a3 = v20 - 1;
          }

          else
          {
            v23 = gnssOsa_Calloc("posp_alloc", 18, 1, 2uLL);
            *a3 = v23;
            *v23 = 86;
            *(*a3 + 1) = 0;
          }

          goto LABEL_125;
        case 0x20u:
          PERDecodeCHOICE(a1, a2, a3, a4);
          goto LABEL_125;
        default:
          if (v9 != 48)
          {
            goto LABEL_74;
          }

          PERDecodeSEQUENCE_OF(a1, a2, a3, a4);
          goto LABEL_125;
      }
    }

    if (*a2 > 0x59u)
    {
      if (*a2 > 0x70u)
      {
        if (*a2 > 0x9Fu)
        {
          if (v9 != 160)
          {
            if (v9 == 162)
            {
              PERDecodeSizeConstrainedINTEGER(a1, a2, a3);
              goto LABEL_125;
            }

            goto LABEL_74;
          }
        }

        else
        {
          if (v9 == 113)
          {
            PERDecodeConstrainedSET_OF(a1, a2, a3, a4);
            goto LABEL_125;
          }

          if (v9 != 128)
          {
            goto LABEL_74;
          }
        }

        PERDecVal(a1, *(a2 + 3), a3, a4);
        goto LABEL_125;
      }

      if (v9 != 90)
      {
        if (v9 == 96)
        {
          PERDecodeOPEN_ID(a1, a2, a3, a4);
          goto LABEL_125;
        }

        if (v9 == 112)
        {
          PERDecodeConstrainedSEQUENCE_OF(a1, a2, a3, a4);
          goto LABEL_125;
        }

LABEL_74:
        CUCFErrorHandler(a1, 16);
        goto LABEL_125;
      }
    }

    else
    {
      if (*a2 <= 0x43u)
      {
        if (*a2 > 0x41u)
        {
          if (v9 == 66)
          {
            PERDecodeConstrainedINTEGER(a1, a2, a3);
          }

          else
          {
            PERDecodeConstrainedBIT_STRING(a1, a2, a3);
          }

          goto LABEL_125;
        }

        if (v9 == 49)
        {
          PERDecodeSET_OF(a1, a2, a3, a4);
          goto LABEL_125;
        }

        if (v9 == 64)
        {
          PERDecodeOPEN(a1, a2, a3, a4);
LABEL_125:
          *(a1 + 1040) = v8;
          goto LABEL_126;
        }

        goto LABEL_74;
      }

      if (v9 - 82 >= 2)
      {
        if (v9 == 68)
        {
          PERDecodeConstrainedOCTET_STRING(a1, a2, a3);
          goto LABEL_125;
        }

        if (v9 != 86)
        {
          goto LABEL_74;
        }
      }
    }

    v44 = 0;
    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
    if (a2[41] == 1 && PERGetBit(a1))
    {
      *(&v42 + 1) = 0;
      if ((*(a1 + 1056) & 0x40) != 0)
      {
        v13 = 8;
      }

      else
      {
        v13 = 7;
      }

      BYTE8(v41) = v13;
      goto LABEL_96;
    }

    v14 = *(a2 + 4);
    if (v14)
    {
      *&v42 = *(a2 + 3);
      *(&v42 + 1) = v14;
      v15 = v14 - 1;
      if (v15)
      {
        LOBYTE(v15) = 64 - __clz(v15);
        BYTE8(v41) = v15;
        if ((*(a1 + 1056) & 0x40) == 0)
        {
          goto LABEL_95;
        }

        v16 = v15;
        LOBYTE(v17) = 1;
        do
        {
          LOBYTE(v17) = 2 * v17;
          v18 = v16 > 1;
          v16 >>= 1;
        }

        while (v18);
        v17 = v17;
        LODWORD(v15) = v15;
      }

      else
      {
        BYTE8(v41) = 0;
        if ((*(a1 + 1056) & 0x40) == 0)
        {
          goto LABEL_95;
        }

        LODWORD(v15) = 0;
        v17 = 1;
      }

      if (v17 >> 1 >= v15)
      {
        LOBYTE(v15) = v17 >> 1;
      }

      else
      {
        LOBYTE(v15) = v17;
      }
    }

    else if ((*a2 & 0x1F) == 0x12)
    {
      *&v42 = " 0123456789";
      *(&v42 + 1) = 11;
      LOBYTE(v15) = 4;
    }

    else
    {
      *(&v42 + 1) = 0;
      if ((*(a1 + 1056) & 0x40) != 0)
      {
        LOBYTE(v15) = 8;
      }

      else
      {
        LOBYTE(v15) = 7;
      }
    }

    BYTE8(v41) = v15;
LABEL_95:
    v25 = a2[40];
    if ((v25 & 0x80000000) == 0)
    {
LABEL_96:
      *&v41 = PERDecodePrimCHARACTER_STRING;
      PERConstructedDecode(a1, &v40);
LABEL_97:
      if (*(&v42 + 1))
      {
        if (*(v42 + *(&v42 + 1) - 1) > ~(-1 << SBYTE8(v41)))
        {
          v26 = *(&v40 + 1);
          if (*(&v40 + 1))
          {
            v27 = v40;
            do
            {
              *v27 = *(v42 + *v27);
              ++v27;
              --v26;
            }

            while (v26);
          }
        }
      }

      v29 = *(&v40 + 1);
      v28 = v40;
      v43 = v40;
      *(a1 + 1112) = 0;
      v30 = *a2 & 0x1F;
      if (v30 > 0x16)
      {
        if (v30 != 23 && v30 != 24 && v30 != 26)
        {
          goto LABEL_118;
        }
      }

      else if (v30 != 18 && v30 != 19 && v30 != 22)
      {
LABEL_118:
        CUCFErrorHandler(a1, 15);
        v31 = 0;
LABEL_119:
        if (!a2[41])
        {
          CUCFCheckCHARACTER_STRINGConstraint(a1, a2, &v43);
          v31 = v44;
          v29 = *(&v43 + 1);
        }

        if (!v31)
        {
          if (v29)
          {
            v24 = v43;
            if (v43)
            {
LABEL_124:
              free(v24);
            }
          }
        }

        goto LABEL_125;
      }

      if (v29)
      {
        *(v28 + v29) = 0;
        *a3 = v28 - 1;
        v31 = 1;
        LOBYTE(v44) = 1;
      }

      else
      {
        v32 = gnssOsa_Calloc("posp_alloc", 18, 1, 2uLL);
        v31 = 0;
        *a3 = v32;
        *v32 = 86;
        *(*a3 + 1) = 0;
        LOBYTE(v44) = 0;
      }

      goto LABEL_119;
    }

    if ((v25 & 2) != 0)
    {
      v34 = *(a2 + 6);
      if (!v34)
      {
        goto LABEL_97;
      }

      if (v34 > 2)
      {
        if (v34 >> 16)
        {
          goto LABEL_96;
        }

        if ((*(a1 + 1056) & 0x40) != 0 && v34 * v15 >= 0x11)
        {
          v37 = *(a1 + 1105);
          if (v37 != 7)
          {
            *(*(a1 + 1096))++ &= 510 << v37;
            *(a1 + 1105) = 7;
            v34 = *(a2 + 6);
          }
        }
      }
    }

    else
    {
      v33 = *(a2 + 7) - *(a2 + 6);
      if ((v33 + 1) >> 16)
      {
        goto LABEL_96;
      }

      v38 = 0;
      v39 = v33;
      PERDecodeConstrainedWholeNumberFunc(a1, &v39, &v38);
      v34 = (v38 + *(a2 + 12));
      *(&v40 + 1) = v34;
      if ((*(a1 + 1056) & 0x40) != 0)
      {
        v35 = *(a1 + 1105);
        if (v35 != 7)
        {
          *(*(a1 + 1096))++ &= 510 << v35;
          *(a1 + 1105) = 7;
          v34 = *(&v40 + 1);
        }
      }
    }

    PERDecodePrimCHARACTER_STRING(a1, v34, &v40);
    goto LABEL_97;
  }

LABEL_126:
  v36 = *MEMORY[0x29EDCA608];
}

unint64_t PERDecodeINTEGER(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v8[1] = *MEMORY[0x29EDCA608];
  if ((*(a1 + 1056) & 0x40) != 0)
  {
    v5 = *(a1 + 1105);
    if (v5 != 7)
    {
      *(*(a1 + 1096))++ &= 510 << v5;
      *(a1 + 1105) = 7;
    }
  }

  v8[0] = 0;
  result = PERDecodeUnconstrainedWholeNumberFunc(a1, v8);
  if (*(*(a2 + 8) + 8) == 4)
  {
    *a3 = HIDWORD(v8[0]);
  }

  else
  {
    *a3 = SHIDWORD(v8[0]);
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

void PERDecodeConstrainedINTEGER(uint64_t a1, uint64_t a2, int *a3)
{
  v18 = *MEMORY[0x29EDCA608];
  v6 = *(a2 + 24);
  v7 = v6;
  if (*(a2 + 25) == 1)
  {
    if (PERGetBit(a1))
    {
      goto LABEL_5;
    }

    v7 = *(a2 + 24);
  }

  if ((v7 & 0x20) != 0)
  {
    if (v7 < 0)
    {
      v12 = *(a2 + 40) - *(a2 + 32);
      v15 = 0;
      v16[0] = v12;
      PERDecodeConstrainedWholeNumberFunc(a1, v16, &v15);
      v10 = *(a2 + 32);
      v11 = v15;
    }

    else
    {
      v16[0] = 0;
      PERDecodeSemiConstrainedWholeNumberFunc(a1, v16);
      v10 = *(a2 + 32);
      v11 = v16[0];
    }

    v9 = v11 + v10;
    goto LABEL_13;
  }

LABEL_5:
  if ((*(a1 + 1056) & 0x40) != 0)
  {
    v8 = *(a1 + 1105);
    if (v8 != 7)
    {
      *(*(a1 + 1096))++ &= 510 << v8;
      *(a1 + 1105) = 7;
    }
  }

  *v16 = 0;
  PERDecodeUnconstrainedWholeNumberFunc(a1, v16);
  v9 = v16[1];
LABEL_13:
  v17 = v9;
  v13 = *(*(a2 + 8) + 8);
  if ((v6 & 1) == 0)
  {
    if (v13 != 4)
    {
      goto LABEL_18;
    }

LABEL_17:
    *a3 = v9;
    goto LABEL_19;
  }

  if (v13 == 4)
  {
    goto LABEL_17;
  }

LABEL_18:
  *a3 = v9;
LABEL_19:
  if (!*(a2 + 25))
  {
    CUCFCheckINTEGERConstraint(a1, a2, &v17);
  }

  v14 = *MEMORY[0x29EDCA608];
}

void PERDecodeSizeConstrainedINTEGER(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v6 = *(a2 + 24);
  if ((*(a1 + 1056) & 0x40) != 0)
  {
    if (v6 < 3)
    {
      v9 = 2;
    }

    else
    {
      v9 = 3;
    }

    v10 = PERGetBits(a1, v9);
    v11 = v10;
    v12 = *(a1 + 1105);
    if (v12 != 7)
    {
      *(*(a1 + 1096))++ &= 510 << v12;
      *(a1 + 1105) = 7;
    }

    if (v10 == 4)
    {
      PERGetByte(a1);
      v11 = 3;
    }

    v8 = 8 * v11 + 8;
  }

  else
  {
    if (v6 >= 3)
    {
      if (v6 == 16)
      {
        v7 = 7;
      }

      else
      {
        v7 = 1;
      }

      PERGetBits(a1, v7);
    }

    v8 = 32;
  }

  v13 = PERGetBits(a1, v8);
  v14 = v13;
  if (v6 == 1)
  {
    v14 = v13 - 0x80000000;
  }

  if (v6 == 3)
  {
    v14 = *&v13 | 0xFFFFFFFF00000000;
  }

  v15 = *(a2 + 24);
  if (v15 != 3 && (v15 == 2 || v15 == 1))
  {
    *a3 = v14;
  }

  else
  {
    *a3 = v14;
  }

  if (v6 == 4 && v14 >> 33 || v6 == 16 && v14 >> 39)
  {
    EPErrorHandler(a1, 18);
  }

  v16 = *MEMORY[0x29EDCA608];
}

uint64_t PERDecodeBIT_STRING(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v8 = 0;
  v9 = 0;
  v10 = PERDecodePrimBIT_STRING;
  result = PERConstructedDecode(a1, &v8);
  v6 = v8;
  v5 = v9;
  *(a1 + 1112) = 0;
  if (v5)
  {
    a2[1] = v6;
    *a2 = v5;
    *(a2 + 4) = 8;
  }

  else
  {
    result = memset_s(a2, 0x10uLL, 0, 0x10uLL);
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

void PERDecodeConstrainedBIT_STRING(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x29EDCA608];
  v17 = 0;
  v18 = 0;
  v19 = 0;
  if (*(a2 + 25) == 1 && PERGetBit(a1))
  {
    goto LABEL_4;
  }

  v6 = *(a2 + 24);
  if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  if ((v6 & 2) == 0)
  {
    v10 = *(a2 + 40);
    if (!(v10 >> 16))
    {
      v11 = v10 - *(a2 + 32);
      v15 = 0;
      v16 = v11;
      PERDecodeConstrainedWholeNumberFunc(a1, &v16, &v15);
      v12 = (v15 + *(a2 + 32));
      v18 = v12;
      if ((*(a1 + 1056) & 0x40) != 0)
      {
        v13 = *(a1 + 1105);
        if (v13 != 7)
        {
          *(*(a1 + 1096))++ &= 510 << v13;
          *(a1 + 1105) = 7;
          v12 = v18;
        }
      }

      goto LABEL_18;
    }

LABEL_4:
    v19 = PERDecodePrimBIT_STRING;
    PERConstructedDecode(a1, &v17);
    goto LABEL_5;
  }

  v12 = *(a2 + 32);
  if (!v12)
  {
    goto LABEL_5;
  }

  if (v12 > 0x10)
  {
    if (!(v12 >> 16))
    {
      if ((*(a1 + 1056) & 0x40) != 0)
      {
        v14 = *(a1 + 1105);
        if (v14 != 7)
        {
          *(*(a1 + 1096))++ &= 510 << v14;
          *(a1 + 1105) = 7;
          v12 = *(a2 + 32);
        }
      }

      goto LABEL_18;
    }

    goto LABEL_4;
  }

LABEL_18:
  PERDecodePrimBIT_STRING(a1, v12, &v17);
LABEL_5:
  v7 = v17;
  v8 = v18;
  *(a1 + 1112) = 0;
  if (v8)
  {
    a3[1] = v7;
    *a3 = v8;
    *(a3 + 4) = 8;
  }

  else
  {
    memset_s(a3, 0x10uLL, 0, 0x10uLL);
  }

  if (!*(a2 + 25))
  {
    CUCFCheckStringConstraint(a1, a2, v8);
  }

  v9 = *MEMORY[0x29EDCA608];
}

uint64_t PERDecodeOCTET_STRING(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v8 = 0;
  v9 = 0;
  v10 = PERDecodePrimOCTET_STRING;
  result = PERConstructedDecode(a1, &v8);
  v6 = v8;
  v5 = v9;
  *(a1 + 1112) = 0;
  if (v5)
  {
    a2[1] = v6;
    *a2 = v5;
    *(a2 + 4) = 8;
  }

  else
  {
    result = memset_s(a2, 0x10uLL, 0, 0x10uLL);
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

void PERDecodeConstrainedOCTET_STRING(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x29EDCA608];
  v17 = 0;
  v18 = 0;
  v19 = 0;
  if (*(a2 + 25) == 1 && PERGetBit(a1))
  {
    goto LABEL_4;
  }

  v6 = *(a2 + 24);
  if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  if ((v6 & 2) == 0)
  {
    v10 = *(a2 + 40);
    if (!(v10 >> 16))
    {
      v11 = v10 - *(a2 + 32);
      v15 = 0;
      v16 = v11;
      PERDecodeConstrainedWholeNumberFunc(a1, &v16, &v15);
      v12 = (v15 + *(a2 + 32));
      v18 = v12;
      if ((*(a1 + 1056) & 0x40) != 0)
      {
        v13 = *(a1 + 1105);
        if (v13 != 7)
        {
          *(*(a1 + 1096))++ &= 510 << v13;
          *(a1 + 1105) = 7;
          v12 = v18;
        }
      }

      goto LABEL_18;
    }

LABEL_4:
    v19 = PERDecodePrimOCTET_STRING;
    PERConstructedDecode(a1, &v17);
    goto LABEL_5;
  }

  v12 = *(a2 + 32);
  if (!v12)
  {
    goto LABEL_5;
  }

  if (v12 > 2)
  {
    if (!(v12 >> 16))
    {
      if ((*(a1 + 1056) & 0x40) != 0)
      {
        v14 = *(a1 + 1105);
        if (v14 != 7)
        {
          *(*(a1 + 1096))++ &= 510 << v14;
          *(a1 + 1105) = 7;
          v12 = *(a2 + 32);
        }
      }

      goto LABEL_18;
    }

    goto LABEL_4;
  }

LABEL_18:
  PERDecodePrimOCTET_STRING(a1, v12, &v17);
LABEL_5:
  v7 = v17;
  v8 = v18;
  *(a1 + 1112) = 0;
  if (v8)
  {
    a3[1] = v7;
    *a3 = v8;
    *(a3 + 4) = 8;
  }

  else
  {
    memset_s(a3, 0x10uLL, 0, 0x10uLL);
  }

  if (!*(a2 + 25))
  {
    CUCFCheckStringConstraint(a1, a2, v8);
  }

  v9 = *MEMORY[0x29EDCA608];
}

void PERDecodeOBJECT_IDENTIFIER(uint64_t a1, void *__s)
{
  v17 = *MEMORY[0x29EDCA608];
  memset_s(__s, 0x18uLL, 0, 0x18uLL);
  if ((*(a1 + 1056) & 0x40) != 0)
  {
    v4 = *(a1 + 1105);
    if (v4 != 7)
    {
      *(*(a1 + 1096))++ &= 510 << v4;
      *(a1 + 1105) = 7;
    }
  }

  v5 = PERGetByte(a1);
  if (v5 >= 0xC1)
  {
    --*(a1 + 1096);
    v6 = *(a1 + 1105);
    if (v6 == 7)
    {
      v7 = PEROctetsDefragmentation(a1);
      PERDecodeOBJECT_IDENTIFIERComps(a1, v7, __s);
      if (*(a1 + 1105) <= 6u)
      {
        ++*(a1 + 1096);
        *(a1 + 1105) = 7;
      }

      v8 = *MEMORY[0x29EDCA608];

      PEROctetsFragmentation(a1, v7);
    }

    else
    {
      v13 = PEROctetsDefragmentationWithOffset(a1);
      PERDecodeOBJECT_IDENTIFIERComps(a1, v13, __s);
      if (*(a1 + 1105) < v6)
      {
        ++*(a1 + 1096);
      }

      *(a1 + 1105) = v6;
      v14 = *MEMORY[0x29EDCA608];

      PEROctetsFragmentationWithOffset(a1, v13);
    }

    return;
  }

  v9 = v5;
  if ((v5 & 0xC0) == 0x80)
  {
    v10 = PERGetByte(a1);
    v11 = *MEMORY[0x29EDCA608];
    v12 = v10 & 0xFFFFC0FF | ((v9 & 0x3F) << 8);
LABEL_22:

    PERDecodeOBJECT_IDENTIFIERComps(a1, v12, __s);
    return;
  }

  if ((v5 & 0x80) == 0)
  {
    if (!v5)
    {
      EPErrorHandler(a1, 26);
    }

    v15 = *MEMORY[0x29EDCA608];
    v12 = v9;
    goto LABEL_22;
  }

  v16 = *MEMORY[0x29EDCA608];

  EPErrorHandler(a1, 26);
}

void PERDecodeENUMERATED(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v11 = *MEMORY[0x29EDCA608];
  v9 = 0;
  if (*(a2 + 24) == -1)
  {
    v8 = 0;
    v10 = *(a2 + 40) - 1;
    PERDecodeConstrainedWholeNumberFunc(a1, &v10, &v8);
    v6 = v8;
    if (*(a2 + 40) <= v8)
    {
      EPErrorHandler(a1, 21);
    }
  }

  else if (PERGetBit(a1))
  {
    PERDecodeNormallySmallNonNegativeWholeNumber(a1, &v9);
    v6 = v9 + *(a2 + 24);
  }

  else
  {
    v8 = 0;
    v10 = *(a2 + 24) - 1;
    PERDecodeConstrainedWholeNumberFunc(a1, &v10, &v8);
    v6 = v8;
    if (*(a2 + 40) <= v8)
    {
      EPErrorHandler(a1, 21);
    }
  }

  *a3 = v6;
  v7 = *MEMORY[0x29EDCA608];
}

void PERDecodeStruct(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v179 = *MEMORY[0x29EDCA608];
  v174 = 0;
  v175 = 0;
  v7 = *(a2 + 48);
  v8 = a4;
  if ((v7 & 0x10) != 0)
  {
    if (a4)
    {
      v174 = *a4;
    }

    v8 = &v174;
  }

  v169 = (v7 & 1) != 0 && PERGetBit(a1) != 0;
  v9 = *(a2 + 80);
  if (v9)
  {
    v176 = 0;
    v177 = 0;
    v178 = 0;
    if (v9 >> 16)
    {
      PERGetConsBitField(a1, &v176);
    }

    else
    {
      v176 = *(a1 + 1096);
      LOWORD(v177) = *(a1 + 1105);
      v178 = v9 + 1;
      PERGetSkipBytes(a1, v9 >> 3);
      PERGetBits(a1, v9 & 7);
    }

    v24 = *(a2 + 56);
    if (v24)
    {
      v25 = *(a2 + 24);
      while (1)
      {
        v26 = *(v25 + 16);
        if (v26 <= 1)
        {
          break;
        }

        if (v26 == 2)
        {
          v29 = *v176;
          v30 = v177;
          if (v177)
          {
            v31 = v177 - 1;
          }

          else
          {
            ++v176;
            v31 = 7;
          }

          LOBYTE(v177) = v31;
          --v178;
          v35 = *(*(a2 + 8) + 24);
          v36 = *(v25 + 24);
          if (((v29 >> v30) & 1) == 0)
          {
            *(a3 + **(v35 + 24 * v36 + 16)) = 0;
            goto LABEL_56;
          }

          v37 = v35 + 24 * v36;
          v38 = *(v37 + 8);
          *(a3 + **(v37 + 16)) = 1;
          v39 = *(a1 + 712);
          if (v39 < 0x40)
          {
            goto LABEL_55;
          }

LABEL_54:
          CUCFErrorHandler(a1, 15);
          v39 = *(a1 + 712);
          goto LABEL_55;
        }

        if (v26 != 3)
        {
          if (v26 == 5)
          {
            if (v177)
            {
              v27 = v177 - 1;
            }

            else
            {
              ++v176;
              v27 = 7;
            }

            LOBYTE(v177) = v27;
            --v178;
          }

          goto LABEL_56;
        }

        v32 = *v176;
        v33 = v177;
        if (v177)
        {
          v34 = v177 - 1;
        }

        else
        {
          ++v176;
          v34 = 7;
        }

        LOBYTE(v177) = v34;
        --v178;
        v40 = *(a2 + 8);
        v41 = *(v40 + 24);
        v42 = *(v25 + 24);
        if (((v32 >> v33) & 1) == 0)
        {
          *(a3 + **(v41 + 24 * v42 + 16)) = 0;
          v44 = *(v40 + 24) + 24 * *(v25 + 24);
          GenericAssignSort((a3 + *(v44 + 8)), *(*(v44 + 16) + 8), 10, *v44);
          goto LABEL_56;
        }

        v43 = v41 + 24 * v42;
        v38 = *(v43 + 8);
        *(a3 + **(v43 + 16)) = 1;
        v39 = *(a1 + 712);
        if (v39 >= 0x40)
        {
          goto LABEL_54;
        }

LABEL_55:
        *(a1 + 200 + 8 * v39) = v25;
        *(a1 + 712) = v39 + 1;
        PERDecVal(a1, *v25, a3 + v38, v8);
        --*(a1 + 712);
LABEL_56:
        if (!v178 && BYTE1(v177) == 1)
        {
          PERSetBitFieldLength(&v176);
        }

        v25 += 32;
        if (!--v24)
        {
          goto LABEL_60;
        }
      }

      if (*(v25 + 16))
      {
        if (v26 != 1)
        {
          goto LABEL_56;
        }

        if (v177)
        {
          v28 = v177 - 1;
        }

        else
        {
          ++v176;
          v28 = 7;
        }

        LOBYTE(v177) = v28;
        --v178;
      }

      v38 = *(*(*(a2 + 8) + 24) + 24 * *(v25 + 24) + 8);
      v39 = *(a1 + 712);
      if (v39 < 0x40)
      {
        goto LABEL_55;
      }

      goto LABEL_54;
    }

LABEL_60:
    v45 = *(a2 + 72);
    if (v45)
    {
      v46 = *(a2 + 40);
      while (1)
      {
        v47 = *(v46 + 16);
        if (v47 <= 1)
        {
          break;
        }

        if (v47 == 2)
        {
          v50 = *v176;
          v51 = v177;
          if (v177)
          {
            v52 = v177 - 1;
          }

          else
          {
            ++v176;
            v52 = 7;
          }

          LOBYTE(v177) = v52;
          --v178;
          v56 = *(*(a2 + 8) + 24);
          v57 = *(v46 + 24);
          if (((v50 >> v51) & 1) == 0)
          {
            *(a3 + **(v56 + 24 * v57 + 16)) = 0;
            goto LABEL_93;
          }

          v58 = v56 + 24 * v57;
          v59 = *(v58 + 8);
          *(a3 + **(v58 + 16)) = 1;
          v60 = *(a1 + 712);
          if (v60 < 0x40)
          {
            goto LABEL_92;
          }

LABEL_91:
          CUCFErrorHandler(a1, 15);
          v60 = *(a1 + 712);
          goto LABEL_92;
        }

        if (v47 != 3)
        {
          if (v47 == 5)
          {
            if (v177)
            {
              v48 = v177 - 1;
            }

            else
            {
              ++v176;
              v48 = 7;
            }

            LOBYTE(v177) = v48;
            --v178;
          }

          goto LABEL_93;
        }

        v53 = *v176;
        v54 = v177;
        if (v177)
        {
          v55 = v177 - 1;
        }

        else
        {
          ++v176;
          v55 = 7;
        }

        LOBYTE(v177) = v55;
        --v178;
        v61 = *(a2 + 8);
        v62 = *(v61 + 24);
        v63 = *(v46 + 24);
        if (((v53 >> v54) & 1) == 0)
        {
          *(a3 + **(v62 + 24 * v63 + 16)) = 0;
          v65 = *(v61 + 24) + 24 * *(v46 + 24);
          GenericAssignSort((a3 + *(v65 + 8)), *(*(v65 + 16) + 8), 10, *v65);
          goto LABEL_93;
        }

        v64 = v62 + 24 * v63;
        v59 = *(v64 + 8);
        *(a3 + **(v64 + 16)) = 1;
        v60 = *(a1 + 712);
        if (v60 >= 0x40)
        {
          goto LABEL_91;
        }

LABEL_92:
        *(a1 + 200 + 8 * v60) = v46;
        *(a1 + 712) = v60 + 1;
        PERDecVal(a1, *v46, a3 + v59, v8);
        --*(a1 + 712);
LABEL_93:
        if (!v178 && BYTE1(v177) == 1)
        {
          PERSetBitFieldLength(&v176);
        }

        v46 += 32;
        if (!--v45)
        {
          goto LABEL_97;
        }
      }

      if (*(v46 + 16))
      {
        if (v47 != 1)
        {
          goto LABEL_93;
        }

        if (v177)
        {
          v49 = v177 - 1;
        }

        else
        {
          ++v176;
          v49 = 7;
        }

        LOBYTE(v177) = v49;
        --v178;
      }

      v59 = *(*(*(a2 + 8) + 24) + 24 * *(v46 + 24) + 8);
      v60 = *(a1 + 712);
      if (v60 < 0x40)
      {
        goto LABEL_92;
      }

      goto LABEL_91;
    }

LABEL_97:
    v10 = a2;
  }

  else
  {
    v10 = a2;
    v11 = *(a2 + 56);
    v12 = v8;
    if (v11)
    {
      v13 = *(v10 + 24);
      v14 = *(a1 + 712);
      do
      {
        v15 = *(*(*(v10 + 8) + 24) + 24 * v13[3] + 8);
        if (v14 >= 0x40)
        {
          CUCFErrorHandler(a1, 15);
          v14 = *(a1 + 712);
        }

        *(a1 + 200 + 8 * v14) = v13;
        *(a1 + 712) = v14 + 1;
        v16 = *v13;
        v13 += 4;
        v17 = a3 + v15;
        v8 = v12;
        PERDecVal(a1, v16, v17, v12);
        v14 = *(a1 + 712) - 1;
        *(a1 + 712) = v14;
        --v11;
      }

      while (v11);
    }

    v18 = *(v10 + 72);
    if (v18)
    {
      v19 = *(v10 + 40);
      v20 = *(a1 + 712);
      do
      {
        v21 = *(*(*(v10 + 8) + 24) + 24 * v19[3] + 8);
        if (v20 >= 0x40)
        {
          CUCFErrorHandler(a1, 15);
          v20 = *(a1 + 712);
        }

        *(a1 + 200 + 8 * v20) = v19;
        *(a1 + 712) = v20 + 1;
        v22 = *v19;
        v19 += 4;
        v23 = a3 + v21;
        v8 = v12;
        PERDecVal(a1, v22, v23, v12);
        v20 = *(a1 + 712) - 1;
        *(a1 + 712) = v20;
        --v18;
      }

      while (v18);
    }
  }

  if (!v169)
  {
    v66 = *(v10 + 64);
    v67 = a4;
    if (v66)
    {
      PERInitAbsentStructExtAdd(a1, v10, v66, a3);
    }

    goto LABEL_242;
  }

  v171 = 0;
  v172 = 0;
  v173 = 0;
  if (PERGetBit(a1))
  {
    PERGetConsBitField(a1, &v171);
  }

  else
  {
    v68 = PERGetBits(a1, 6u);
    v171 = *(a1 + 1096);
    LOWORD(v172) = *(a1 + 1105);
    v173 = v68 + 1;
    PERGetSkipBytes(a1, v173 >> 3);
    PERGetBits(a1, v173 & 7);
  }

  if (!*(v10 + 88))
  {
    goto LABEL_228;
  }

  v69 = *(v10 + 64);
  if (!v69)
  {
    goto LABEL_228;
  }

  v166 = 0;
  v70 = *(v10 + 32);
  v168 = 0;
  v170 = a1 + 200;
  while (2)
  {
    v71 = *(v70 + 16);
    if (v71 <= 2)
    {
      if (v71 < 2)
      {
        v72 = v171;
        v73 = v172;
        if (v172)
        {
          v74 = v172 - 1;
        }

        else
        {
          ++v171;
          v74 = 7;
        }

        v86 = *v72;
        LOBYTE(v172) = v74;
        v82 = --v173;
        v87 = *(*(v10 + 8) + 24);
        v88 = *(v70 + 24);
        if ((v86 >> v73))
        {
          v89 = v87 + 24 * v88;
          v90 = *(v89 + 8);
          *(a3 + **(v89 + 16)) = 1;
          v91 = *(a1 + 712);
          if (v91 >= 0x40)
          {
            CUCFErrorHandler(a1, 15);
            v91 = *(a1 + 712);
          }

          *(v170 + 8 * v91) = v70;
          *(a1 + 712) = v91 + 1;
          PERDecodeOPENTypeField(a1, *v70, a3 + v90, v8);
          --*(a1 + 712);
        }

        else
        {
          *(a3 + **(v87 + 24 * v88 + 16)) = 0;
          ++v166;
        }

        goto LABEL_217;
      }

      v76 = v171;
      v77 = v172;
      if (v172)
      {
        v78 = v172 - 1;
      }

      else
      {
        ++v171;
        v78 = 7;
      }

      v100 = *v76;
      LOBYTE(v172) = v78;
      v82 = --v173;
      v101 = *(*(v10 + 8) + 24);
      v102 = *(v70 + 24);
      if (((v100 >> v77) & 1) == 0)
      {
        *(a3 + **(v101 + 24 * v102 + 16)) = 0;
        goto LABEL_217;
      }

      v103 = v101 + 24 * v102;
      v97 = *(v103 + 8);
      *(a3 + **(v103 + 16)) = 1;
      v98 = *(a1 + 712);
      if (v98 >= 0x40)
      {
        goto LABEL_137;
      }

      goto LABEL_138;
    }

    if (v71 == 3)
    {
      v79 = v171;
      v80 = v172;
      if (v172)
      {
        v81 = v172 - 1;
      }

      else
      {
        ++v171;
        v81 = 7;
      }

      v92 = *v79;
      LOBYTE(v172) = v81;
      v82 = --v173;
      v93 = *(v10 + 8);
      v94 = *(v93 + 24);
      v95 = *(v70 + 24);
      if (((v92 >> v80) & 1) == 0)
      {
        *(a3 + **(v94 + 24 * v95 + 16)) = 0;
        v99 = *(v93 + 24) + 24 * *(v70 + 24);
        GenericAssignSort((a3 + *(v99 + 8)), *(*(v99 + 16) + 8), 10, *v99);
        goto LABEL_217;
      }

      v96 = v94 + 24 * v95;
      v97 = *(v96 + 8);
      *(a3 + **(v96 + 16)) = 1;
      v98 = *(a1 + 712);
      if (v98 >= 0x40)
      {
LABEL_137:
        CUCFErrorHandler(a1, 15);
        v98 = *(a1 + 712);
      }

LABEL_138:
      *(v170 + 8 * v98) = v70;
      *(a1 + 712) = v98 + 1;
      PERDecodeOPENTypeField(a1, *v70, a3 + v97, v8);
      --*(a1 + 712);
      goto LABEL_216;
    }

    if (v71 != 4)
    {
      if (v71 == 5)
      {
        if (v172)
        {
          v75 = v172 - 1;
        }

        else
        {
          ++v171;
          v75 = 7;
        }

        LOBYTE(v172) = v75;
        v82 = --v173;
      }

      else
      {
        CUCFErrorHandler(a1, 15);
        v82 = v173;
      }

      goto LABEL_217;
    }

    v83 = v171;
    v84 = v172;
    if (v172)
    {
      v85 = v172 - 1;
    }

    else
    {
      ++v171;
      v85 = 7;
    }

    v104 = *(v70 + 24);
    v69 -= v104;
    v105 = *v83;
    LOBYTE(v172) = v85;
    v82 = --v173;
    if (((v105 >> v84) & 1) == 0)
    {
      for (; v104; --v104)
      {
        v111 = *(v70 + 48);
        if (v111 >= 3)
        {
          if (v111 == 3)
          {
            v112 = *(v10 + 8);
            *(a3 + **(*(v112 + 24) + 24 * *(v70 + 56) + 16)) = 0;
            v113 = *(v112 + 24) + 24 * *(v70 + 56);
            GenericAssignSort((a3 + *(v113 + 8)), *(*(v113 + 16) + 8), 10, *v113);
          }

          else if (v111 != 5)
          {
            CUCFErrorHandler(a1, 15);
          }
        }

        else
        {
          *(a3 + **(*(*(v10 + 8) + 24) + 24 * *(v70 + 56) + 16)) = 0;
        }

        v70 += 32;
      }

      goto LABEL_217;
    }

    v176 = 0;
    v177 = 0;
    v178 = 0;
    v106 = 0;
    if (v104)
    {
      v107 = (v70 + 48);
      do
      {
        v108 = *v107;
        v107 += 32;
        if (v108)
        {
          ++v106;
        }

        --v104;
      }

      while (v104);
    }

    if ((*(a1 + 1056) & 0x40) != 0)
    {
      v109 = *(a1 + 1105);
      if (v109 != 7)
      {
        *(*(a1 + 1096))++ &= 510 << v109;
        *(a1 + 1105) = 7;
      }
    }

    v110 = PERGetByte(a1);
    if (v110 < 0xC1)
    {
      if ((v110 & 0xC0) == 0x80)
      {
        v165 = 0;
        v163 = PERGetByte(a1) & 0xFFFFC0FF | ((v110 & 0x3F) << 8);
        v114 = *(a1 + 1096) + v163;
      }

      else
      {
        if ((v110 & 0x80) != 0)
        {
          v164 = v110;
          EPErrorHandler(a1, 26);
          v165 = 0;
          v162 = 0;
          v163 = 0;
          goto LABEL_170;
        }

        v165 = 0;
        v163 = v110;
        v114 = *(a1 + 1096) + v110;
      }

      v162 = v114;
      v164 = *(a1 + 1105);
    }

    else
    {
      --*(a1 + 1096);
      v164 = v110;
      v165 = *(a1 + 1105);
      if (v165 == 7)
      {
        v162 = 0;
        v163 = PEROctetsDefragmentation(a1);
        v165 = 255;
      }

      else
      {
        v162 = 0;
        v163 = PEROctetsDefragmentationWithOffset(a1);
      }
    }

LABEL_170:
    if (v106 >> 16)
    {
      PERGetConsBitField(a1, &v176);
    }

    else
    {
      v176 = *(a1 + 1096);
      LOWORD(v177) = *(a1 + 1105);
      v178 = v106 + 1;
      PERGetSkipBytes(a1, v106 >> 3);
      PERGetBits(a1, v106 & 7);
    }

    v115 = *(v70 + 24);
    if (!v115)
    {
      goto LABEL_211;
    }

    v116 = v70 + 32;
    do
    {
      v117 = *(v116 + 16);
      if (v117 <= 1)
      {
        if (!*(v116 + 16))
        {
          goto LABEL_203;
        }

        if (v117 == 1)
        {
          if (v177)
          {
            v119 = v177 - 1;
          }

          else
          {
            ++v176;
            v119 = 7;
          }

          LOBYTE(v177) = v119;
          --v178;
LABEL_203:
          v136 = *(*(v10 + 8) + 24) + 24 * *(v116 + 24);
          v129 = *(v136 + 8);
          *(a3 + **(v136 + 16)) = 1;
          v130 = *(a1 + 712);
          if (v130 >= 0x40)
          {
LABEL_204:
            CUCFErrorHandler(a1, 15);
            v130 = *(a1 + 712);
          }

LABEL_205:
          *(v170 + 8 * v130) = v116;
          *(a1 + 712) = v130 + 1;
          PERDecVal(a1, *v116, a3 + v129, v8);
          --*(a1 + 712);
        }
      }

      else
      {
        switch(v117)
        {
          case 2u:
            v120 = *v176;
            v121 = v177;
            if (v177)
            {
              v122 = v177 - 1;
            }

            else
            {
              ++v176;
              v122 = 7;
            }

            LOBYTE(v177) = v122;
            --v178;
            v126 = *(*(v10 + 8) + 24);
            v127 = *(v116 + 24);
            if ((v120 >> v121))
            {
              v128 = v126 + 24 * v127;
              v129 = *(v128 + 8);
              *(a3 + **(v128 + 16)) = 1;
              v130 = *(a1 + 712);
              if (v130 >= 0x40)
              {
                goto LABEL_204;
              }

              goto LABEL_205;
            }

            *(a3 + **(v126 + 24 * v127 + 16)) = 0;
            break;
          case 3u:
            v123 = *v176;
            v124 = v177;
            if (v177)
            {
              v125 = v177 - 1;
            }

            else
            {
              ++v176;
              v125 = 7;
            }

            LOBYTE(v177) = v125;
            --v178;
            v131 = *(v10 + 8);
            v132 = *(v131 + 24);
            v133 = *(v116 + 24);
            if ((v123 >> v124))
            {
              v134 = v132 + 24 * v133;
              v129 = *(v134 + 8);
              *(a3 + **(v134 + 16)) = 1;
              v130 = *(a1 + 712);
              if (v130 >= 0x40)
              {
                goto LABEL_204;
              }

              goto LABEL_205;
            }

            *(a3 + **(v132 + 24 * v133 + 16)) = 0;
            v135 = *(v131 + 24) + 24 * *(v116 + 24);
            GenericAssignSort((a3 + *(v135 + 8)), *(*(v135 + 16) + 8), 10, *v135);
            break;
          case 5u:
            if (v177)
            {
              v118 = v177 - 1;
            }

            else
            {
              ++v176;
              v118 = 7;
            }

            LOBYTE(v177) = v118;
            --v178;
            break;
        }
      }

      if (!v178 && BYTE1(v177) == 1)
      {
        PERSetBitFieldLength(&v176);
      }

      v116 += 32;
      --v115;
    }

    while (v115);
    v70 = v116 - 32;
LABEL_211:
    if (v165)
    {
      if (*(a1 + 1105) < v165)
      {
        ++*(a1 + 1096);
      }

      *(a1 + 1105) = v165;
      PEROctetsFragmentationWithOffset(a1, v163);
    }

    else
    {
      *(a1 + 1096) = v162;
      *(a1 + 1105) = v164;
    }

LABEL_216:
    ++v168;
LABEL_217:
    --v69;
    if (v82)
    {
LABEL_220:
      v70 += 32;
      if (!v69)
      {
        goto LABEL_223;
      }

      continue;
    }

    break;
  }

  if (BYTE1(v172) == 1)
  {
    PERSetBitFieldLength(&v171);
    goto LABEL_220;
  }

LABEL_223:
  if (v166 && v168)
  {
    EPErrorHandler(a1, 33);
  }

  if (v69)
  {
    PERInitAbsentStructExtAdd(a1, v10, v69, a3);
    goto LABEL_241;
  }

LABEL_228:
  v137 = v173;
  if (v173)
  {
    if (!BYTE1(v172))
    {
LABEL_230:
      v138 = v171;
      v139 = v172;
      do
      {
        v140 = *v138;
        if (v139)
        {
          v141 = v139 - 1;
        }

        else
        {
          ++v138;
          v141 = 7;
        }

        if ((v140 >> v139))
        {
          PERSkipOPENTypeField(a1);
        }

        v139 = v141;
        --v137;
      }

      while (v137);
    }
  }

  else if (BYTE1(v172) == 1)
  {
    PERSetBitFieldLength(&v171);
    v137 = v173;
    if (v173)
    {
      if (!BYTE1(v172))
      {
        goto LABEL_230;
      }
    }
  }

LABEL_241:
  v67 = a4;
LABEL_242:
  if ((*(v10 + 48) & 0x10) == 0)
  {
    goto LABEL_286;
  }

  v142 = v175;
  if (!v175)
  {
    if (v67)
    {
      goto LABEL_280;
    }

    goto LABEL_285;
  }

  v143 = 0;
  v144 = v175;
  do
  {
    do
    {
LABEL_245:
      v145 = v174;
      v146 = v142[2];
      do
      {
        v146 = *(v146 + 3);
      }

      while (*v146 == 128);
      if (!v174)
      {
        goto LABEL_264;
      }

      while (v146 != *v145)
      {
LABEL_251:
        v145 = *(v145 + 2);
        if (!v145)
        {
          goto LABEL_264;
        }
      }

      v176 = 0;
      v147 = CUCFGetOpenTypeObject(a1, v142[2], *(v145 + 1), &v176);
      if (!v147)
      {
        EPErrorHandler(a1, 39);
        goto LABEL_251;
      }

      v148 = v147;
      v149 = *(a1 + 1096);
      v150 = *(a1 + 1105);
      *(a1 + 1096) = *v142;
      *(a1 + 1105) = *(v142 + 8);
      v151 = v142[3];
      v152 = *(v142[2] + 1);
      v153 = *(v152 + 40);
      v154 = *(v147 + 24);
      if (v153 > 3)
      {
        if (v153 != 8)
        {
          goto LABEL_259;
        }

        *v151 = v154;
      }

      else if (v153 == 1)
      {
        *v151 = v154;
        v151 = v142[3];
      }

      else
      {
        if (v153 == 2)
        {
          *v151 = v154;
          goto LABEL_261;
        }

LABEL_259:
        *v151 = v154;
      }

LABEL_261:
      v155 = *(v152 + 36);
      v156 = *(a1 + 712);
      if (v156 >= 0x40)
      {
        CUCFErrorHandler(a1, 15);
        v156 = *(a1 + 712);
      }

      *(a1 + 200 + 8 * v156) = v148;
      *(a1 + 712) = v156 + 1;
      PERDecodeOPENTypeField(a1, *v148, v151 + v155, 0);
      --*(a1 + 712);
      *(a1 + 1096) = v149;
      *(a1 + 1105) = v150;
      *v142 = 0;
LABEL_264:
      if (*v142)
      {
        v144 = v142;
        v142 = v142[4];
        if (!v142)
        {
          break;
        }

        goto LABEL_245;
      }

      if (v142 != v175)
      {
        *(v144 + 4) = v142[4];
        MMSFree(a1, v142, 0x28);
        v142 = *(v144 + 4);
        v143 = 1;
        if (!v142)
        {
          break;
        }

        goto LABEL_245;
      }

      v175 = v142[4];
      MMSFree(a1, v142, 0x28);
      v143 = 1;
      v144 = v175;
      v142 = v175;
    }

    while (v175);
    v142 = v175;
    if (!v143)
    {
      break;
    }

    v143 = 0;
    v144 = v175;
  }

  while (v175);
  v67 = a4;
  if (!a4)
  {
    if (v175)
    {
      EPErrorHandler(a1, 38);
    }

LABEL_285:
    while (1)
    {
      v160 = v174;
      if (!v174)
      {
        break;
      }

      v174 = *(v174 + 2);
      MMSFree(a1, v160, 0x18);
    }

    goto LABEL_286;
  }

  if (v175)
  {
    v157 = a4 + 1;
    v158 = a4[1];
    if (v158)
    {
      do
      {
        v159 = v158;
        v158 = v158[4];
      }

      while (v158);
      v157 = (v159 + 4);
    }

    *v157 = v175;
  }

LABEL_280:
  if (!*v67)
  {
    *v67 = v174;
  }

LABEL_286:
  v161 = *MEMORY[0x29EDCA608];
}

uint64_t PERDecodeSEQUENCE_OF(uint64_t a1, uint64_t a2, void *__s, uint64_t a4)
{
  v13[3] = *MEMORY[0x29EDCA608];
  v12[1] = 0;
  v8 = *(*(a2 + 8) + 8);
  memset_s(__s, v8, 0, v8);
  v12[0] = __s;
  v13[0] = 0;
  v13[1] = a2;
  v13[2] = a4;
  v9 = *(a1 + 712);
  if (v9 >= 0x40)
  {
    CUCFErrorHandler(a1, 15);
    v9 = *(a1 + 712);
  }

  *(a1 + 8 * v9 + 200) = v13;
  *(a1 + 712) = v9 + 1;
  v12[2] = PERDecodePrimSEQUENCE_OF;
  result = PERConstructedDecode(a1, v12);
  --*(a1 + 712);
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

void PERDecodeConstrainedSEQUENCE_OF(uint64_t a1, uint64_t a2, void *__s, unint64_t a4)
{
  v20[3] = *MEMORY[0x29EDCA608];
  v18 = 0;
  v19 = 0;
  v8 = *(*(a2 + 8) + 8);
  memset_s(__s, v8, 0, v8);
  v17 = __s;
  v20[0] = 0;
  v20[1] = a2;
  v20[2] = a4;
  v9 = *(a1 + 712);
  if (v9 >= 0x40)
  {
    CUCFErrorHandler(a1, 15);
    v9 = *(a1 + 712);
  }

  *(a1 + 200 + 8 * v9) = v20;
  *(a1 + 712) = v9 + 1;
  if (*(a2 + 33) == 1 && PERGetBit(a1))
  {
    goto LABEL_6;
  }

  v10 = *(a2 + 32);
  if ((v10 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  if ((v10 & 2) == 0)
  {
    v12 = *(a2 + 48);
    if (!(v12 >> 16))
    {
      v13 = v12 - *(a2 + 40);
      v15 = 0;
      v16 = v13;
      PERDecodeConstrainedWholeNumberFunc(a1, &v16, &v15);
      v14 = (v15 + *(a2 + 40));
      v18 = v14;
      goto LABEL_15;
    }

LABEL_6:
    v19 = PERDecodePrimSEQUENCE_OF;
    PERConstructedDecode(a1, &v17);
    goto LABEL_7;
  }

  v14 = *(a2 + 40);
  if (!v14)
  {
    goto LABEL_7;
  }

  if (v14 >> 16)
  {
    goto LABEL_6;
  }

LABEL_15:
  PERDecodePrimSEQUENCE_OF(a1, v14, &v17);
LABEL_7:
  --*(a1 + 712);
  if (!*(a2 + 33))
  {
    CUCFCheckStructOfConstraint(a1, a2, v20[0]);
  }

  v11 = *MEMORY[0x29EDCA608];
}

uint64_t PERDecodeSET_OF(uint64_t a1, uint64_t a2, void *__s, uint64_t a4)
{
  v12[3] = *MEMORY[0x29EDCA608];
  v11[1] = 0;
  memset_s(__s, 0x18uLL, 0, 0x18uLL);
  v11[0] = __s;
  v12[0] = 0;
  v12[1] = a2;
  v12[2] = a4;
  v8 = *(a1 + 712);
  if (v8 >= 0x40)
  {
    CUCFErrorHandler(a1, 15);
    v8 = *(a1 + 712);
  }

  *(a1 + 8 * v8 + 200) = v12;
  *(a1 + 712) = v8 + 1;
  v11[2] = PERDecodePrimSET_OF;
  result = PERConstructedDecode(a1, v11);
  --*(a1 + 712);
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void PERDecodeConstrainedSET_OF(uint64_t a1, uint64_t a2, void *__s, unint64_t a4)
{
  v19[3] = *MEMORY[0x29EDCA608];
  v17 = 0;
  v18 = 0;
  memset_s(__s, 0x18uLL, 0, 0x18uLL);
  v16 = __s;
  v19[0] = 0;
  v19[1] = a2;
  v19[2] = a4;
  v8 = *(a1 + 712);
  if (v8 >= 0x40)
  {
    CUCFErrorHandler(a1, 15);
    v8 = *(a1 + 712);
  }

  *(a1 + 200 + 8 * v8) = v19;
  *(a1 + 712) = v8 + 1;
  if (*(a2 + 33) == 1 && PERGetBit(a1))
  {
    goto LABEL_6;
  }

  v9 = *(a2 + 32);
  if ((v9 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  if ((v9 & 2) == 0)
  {
    v11 = *(a2 + 48);
    if (!(v11 >> 16))
    {
      v12 = v11 - *(a2 + 40);
      v14 = 0;
      v15 = v12;
      PERDecodeConstrainedWholeNumberFunc(a1, &v15, &v14);
      v13 = (v14 + *(a2 + 40));
      v17 = v13;
      goto LABEL_15;
    }

LABEL_6:
    v18 = PERDecodePrimSET_OF;
    PERConstructedDecode(a1, &v16);
    goto LABEL_7;
  }

  v13 = *(a2 + 40);
  if (!v13)
  {
    goto LABEL_7;
  }

  if (v13 >> 16)
  {
    goto LABEL_6;
  }

LABEL_15:
  PERDecodePrimSET_OF(a1, v13, &v16);
LABEL_7:
  --*(a1 + 712);
  if (!*(a2 + 33))
  {
    CUCFCheckStructOfConstraint(a1, a2, v19[0]);
  }

  v10 = *MEMORY[0x29EDCA608];
}

void PERDecodeCHOICE(uint64_t a1, void *a2, char *__s, uint64_t a4)
{
  v35[1] = *MEMORY[0x29EDCA608];
  v8 = a2[4];
  v35[0] = 0;
  v9 = *(a2[1] + 8);
  memset_s(__s, v9, 0, v9);
  if (a2[3] == -1)
  {
    v13 = a2[5];
    if (v13 >= 2)
    {
      v33 = 0;
      v14 = v13 - 1;
LABEL_9:
      v34 = v14;
      PERDecodeConstrainedWholeNumberFunc(a1, &v34, &v33);
      v15 = v33;
      goto LABEL_11;
    }

LABEL_10:
    v15 = 0;
LABEL_11:
    v16 = v15;
    if (a2[5] <= v15)
    {
      EPErrorHandler(a1, 37);
    }

    v17 = v8 + 32 * v16;
    if (*(v17 + 16) == 5)
    {
      goto LABEL_21;
    }

    v18 = a2[1];
    v19 = *(v18 + 40);
    v20 = *(v17 + 24);
    if (v19 > 3)
    {
      if (v19 == 8)
      {
        *__s = v20;
        goto LABEL_37;
      }
    }

    else
    {
      if (v19 == 1)
      {
        *__s = v20;
        goto LABEL_37;
      }

      if (v19 == 2)
      {
        *__s = v20;
LABEL_37:
        v28 = *(v18 + 36);
        v29 = *(a1 + 712);
        if (v29 >= 0x40)
        {
          CUCFErrorHandler(a1, 15);
          v29 = *(a1 + 712);
        }

        *(a1 + 200 + 8 * v29) = v17;
        *(a1 + 712) = v29 + 1;
        PERDecVal(a1, *v17, &__s[v28], a4);
        goto LABEL_47;
      }
    }

    *__s = v20;
    goto LABEL_37;
  }

  v10 = PERGetBit(a1);
  v11 = a2[5];
  if (!v10)
  {
    if (v11 >= 2)
    {
      v33 = 0;
      v14 = *(a2 + 6) - 1;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (v11 < 2)
  {
    v12 = 0;
  }

  else
  {
    PERDecodeNormallySmallNonNegativeWholeNumber(a1, v35);
    v11 = a2[5];
    v12 = v35[0];
  }

  v21 = a2[3] + v12;
  if (v21 < v11)
  {
    v22 = v8 + 32 * v21;
    if (*(v22 + 16) == 5)
    {
LABEL_21:
      v23 = *MEMORY[0x29EDCA608];

      EPErrorHandler(a1, 37);
      return;
    }

    v25 = a2[1];
    v26 = *(v25 + 40);
    v27 = *(v22 + 24);
    if (v26 > 3)
    {
      if (v26 == 8)
      {
        *__s = v27;
        goto LABEL_44;
      }
    }

    else
    {
      if (v26 == 1)
      {
        *__s = v27;
        goto LABEL_44;
      }

      if (v26 == 2)
      {
        *__s = v27;
LABEL_44:
        v30 = *(v25 + 36);
        v31 = *(a1 + 712);
        if (v31 >= 0x40)
        {
          CUCFErrorHandler(a1, 15);
          v31 = *(a1 + 712);
        }

        *(a1 + 200 + 8 * v31) = v22;
        *(a1 + 712) = v31 + 1;
        PERDecodeOPENTypeField(a1, *v22, &__s[v30], a4);
LABEL_47:
        --*(a1 + 712);
        v32 = *MEMORY[0x29EDCA608];
        return;
      }
    }

    *__s = v27;
    goto LABEL_44;
  }

  if (v11 == 1)
  {
    PERDecodeNormallySmallNonNegativeWholeNumber(a1, v35);
  }

  v24 = *MEMORY[0x29EDCA608];

  PERSkipOPENTypeField(a1);
}

void *PERDecodeOPEN_ID(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10 = *MEMORY[0x29EDCA608];
  PERDecVal(a1, *(a2 + 24), a3, 0);
  result = MMSAlloc(a1, 0x18uLL);
  *result = a2;
  result[1] = a3;
  result[2] = *a4;
  *a4 = result;
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

void PERDecodeOPEN(uint64_t a1, unsigned __int8 *a2, void *a3, uint64_t *a4)
{
  v22[1] = *MEMORY[0x29EDCA608];
  if (a4)
  {
    v8 = *a4;
    if (*a4)
    {
      while (1)
      {
        v9 = a2;
        do
        {
          v9 = *(v9 + 3);
        }

        while (*v9 == 128);
        if (v9 == *v8)
        {
          break;
        }

        v8 = *(v8 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v22[0] = 0;
      v14 = CUCFGetOpenTypeObject(a1, a2, *(v8 + 8), v22);
      if (!v14)
      {
        EPErrorHandler(a1, 39);
LABEL_23:
        v21 = *MEMORY[0x29EDCA608];
        return;
      }

      v15 = v14;
      v16 = *(a2 + 1);
      v17 = *(v16 + 40);
      v18 = *(v14 + 24);
      if (v17 > 3)
      {
        if (v17 == 8)
        {
          *a3 = v18;
          goto LABEL_20;
        }
      }

      else
      {
        if (v17 == 1)
        {
          *a3 = v18;
          goto LABEL_20;
        }

        if (v17 == 2)
        {
          *a3 = v18;
LABEL_20:
          v19 = *(v16 + 36);
          v20 = *(a1 + 712);
          if (v20 >= 0x40)
          {
            CUCFErrorHandler(a1, 15);
            v20 = *(a1 + 712);
          }

          *(a1 + 200 + 8 * v20) = v15;
          *(a1 + 712) = v20 + 1;
          PERDecodeOPENTypeField(a1, *v15, a3 + v19, 0);
          --*(a1 + 712);
          goto LABEL_23;
        }
      }

      *a3 = v18;
      goto LABEL_20;
    }
  }

LABEL_7:
  v10 = *(a1 + 1096);
  v11 = *(a1 + 1105);
  v12 = MMSAlloc(a1, 0x28uLL);
  *v12 = v10;
  v12[8] = v11;
  *(v12 + 2) = a2;
  *(v12 + 3) = a3;
  *(v12 + 4) = a4[1];
  a4[1] = v12;
  v13 = *MEMORY[0x29EDCA608];

  PERSkipOPENTypeField(a1);
}

uint64_t PEREncodeUnconstrainedWholeNumberFunc(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v4 = *(a2 + 4);
  if (v4 >= 0x80)
  {
    if (v4 >= 0x8000)
    {
      if (v4 >= 0x800000)
      {
        PERPutByte(a1, 4u);
        v5 = *(a2 + 4);
        if (*a2)
        {
          v5 = ~v5;
          *(a2 + 4) = v5;
        }
      }

      else
      {
        if (*a2)
        {
          v4 = 0xFFFFFF - v4;
          *(a2 + 4) = v4;
        }

        v5 = v4 | 0x3000000;
      }

      v6 = 32;
    }

    else
    {
      if (*a2)
      {
        v4 = 0xFFFF - v4;
        *(a2 + 4) = v4;
      }

      v5 = v4 | 0x20000;
      v6 = 24;
    }
  }

  else
  {
    if (*a2)
    {
      v4 = 255 - v4;
      *(a2 + 4) = v4;
    }

    v5 = v4 | 0x100;
    v6 = 16;
  }

  v7 = *MEMORY[0x29EDCA608];

  return PERPutBits(a1, v5, v6);
}

unint64_t PERDecodeUnconstrainedWholeNumberFunc(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v4 = PERGetByte(a1);
  if ((v4 - 5) <= 0xFFFFFFFB)
  {
    EPErrorHandler(a1, 24);
  }

  v5 = 8 * v4;
  result = PERGetBits(a1, (8 * v4));
  *(a2 + 4) = result;
  if ((v4 - 1) <= 2 && ((result >> (v5 - 8)) & 0x80) != 0)
  {
    *(a2 + 4) = (-1 << v5) | result;
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t PEREncodeConstrainedWholeNumberFunc(uint64_t result, unsigned int *a2, unsigned int *a3)
{
  v4 = result;
  v41 = *MEMORY[0x29EDCA608];
  v5 = *a2;
  if ((*(result + 1056) & 0x40) == 0)
  {
    if (v5)
    {
      v6 = __clz(v5);
      v7 = 32 - v6;
      v8 = v6 - 32;
      do
      {
        v5 >>= 1;
        v9 = __CFADD__(v8++, 1);
      }

      while (!v9);
      *a2 = v5;
    }

    else
    {
      v7 = 0;
    }

    v12 = *a3;
    v14 = *MEMORY[0x29EDCA608];
    goto LABEL_14;
  }

  if (!v5)
  {
LABEL_46:
    v40 = *MEMORY[0x29EDCA608];
    return result;
  }

  if (v5 > 0xFE)
  {
    if (v5 == 255)
    {
      v15 = *(result + 1105);
      if (v15 == 7)
      {
        v16 = *(result + 1096);
      }

      else
      {
        **(result + 1096) &= 510 << v15;
        v16 = (*(result + 1096) + 1);
        *(result + 1096) = v16;
        *(result + 1105) = 7;
      }

      if (v16 == *(result + 1080))
      {
        v19 = *(result + 1072);
        v20 = *(result + 1088) - v19;
        v21 = &v16[-v19];
        result = (*(result + 856))(result, 1);
        *(v4 + 1072) = result;
        v16 = &v21[result];
        *(v4 + 1080) = &v21[result + 1];
        *(v4 + 1088) = result + v20;
        *(v4 + 1096) = &v21[result];
      }

      *v16 = *a3;
    }

    else
    {
      if (HIWORD(v5))
      {
        v22 = *a3;
        v23 = __clz(v5);
        v24 = 32 - v23;
        v25 = v23 - 32;
        do
        {
          v5 >>= 1;
          v9 = __CFADD__(v25++, 1);
        }

        while (!v9);
        *a2 = v5;
        v26 = v24 >> 3;
        if ((v24 & 7) != 0)
        {
          ++v26;
        }

        v27 = 8 - __clz((v26 << 24) - 0x1000000);
        v28 = 32 - __clz(v22);
        if ((v28 & 7) != 0)
        {
          v29 = (v28 >> 3) + 1;
        }

        else
        {
          v29 = v28 >> 3;
        }

        if (v22)
        {
          v30 = v29;
        }

        else
        {
          v30 = 1;
        }

        PERPutBits(result, v30 - 1, v27);
        v31 = *(v4 + 1105);
        if (v31 != 7)
        {
          *(*(v4 + 1096))++ &= 510 << v31;
          *(v4 + 1105) = 7;
        }

        v12 = *a3;
        v32 = *MEMORY[0x29EDCA608];
        v7 = 8 * (v30 & 0x1F);
        goto LABEL_14;
      }

      v17 = *(result + 1105);
      if (v17 == 7)
      {
        v18 = *(result + 1096);
      }

      else
      {
        **(result + 1096) &= 510 << v17;
        v18 = (*(result + 1096) + 1);
        *(result + 1096) = v18;
        *(result + 1105) = 7;
      }

      v33 = *(result + 1080);
      if (v33 - v18 <= 1)
      {
        v34 = 2 - (v33 - v18);
        v35 = *(result + 1072);
        v36 = *(result + 1088) - v35;
        v37 = &v18[-v35];
        v38 = v33 - v35;
        result = (*(result + 856))(result, v34);
        *(v4 + 1072) = result;
        *(v4 + 1080) = result + v38 + v34;
        *(v4 + 1088) = result + v36;
        v18 = &v37[result];
        *(v4 + 1096) = &v37[result];
      }

      *v18 = BYTE1(*a3);
      v39 = *(v4 + 1096);
      *(v4 + 1096) = v39 + 1;
      *(v39 + 1) = *a3;
    }

    ++*(v4 + 1096);
    goto LABEL_46;
  }

  v10 = 0;
  do
  {
    v11 = v5;
    ++v10;
    v5 >>= 1;
  }

  while (v11 > 1);
  *a2 = v5;
  v12 = *a3;
  v13 = *MEMORY[0x29EDCA608];
  v7 = v10;
LABEL_14:

  return PERPutBits(v4, v12, v7);
}

uint64_t PEREncodeSemiConstrainedWholeNumberFunc(uint64_t a1, unsigned int *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if ((*(a1 + 1056) & 0x40) != 0)
  {
    v4 = *(a1 + 1105);
    if (v4 != 7)
    {
      *(*(a1 + 1096))++ &= 510 << v4;
      *(a1 + 1105) = 7;
    }
  }

  v5 = *a2;
  if (*a2 >= 0x100)
  {
    if (v5 >= 0x10000)
    {
      if (HIBYTE(v5))
      {
        PERPutByte(a1, 4u);
        v6 = *a2;
      }

      else
      {
        v6 = v5 | 0x3000000;
      }

      v7 = 32;
    }

    else
    {
      v6 = v5 | 0x20000;
      v7 = 24;
    }
  }

  else
  {
    v6 = v5 | 0x100;
    v7 = 16;
  }

  v8 = *MEMORY[0x29EDCA608];

  return PERPutBits(a1, v6, v7);
}

void PERDecodeConstrainedWholeNumberFunc(uint64_t a1, unsigned int *a2, int *a3)
{
  v4 = a1;
  v28 = *MEMORY[0x29EDCA608];
  v5 = *a2;
  if ((*(a1 + 1056) & 0x40) == 0)
  {
    if (v5)
    {
      v6 = __clz(v5);
      v7 = 32 - v6;
      v8 = v6 - 32;
      do
      {
        v5 >>= 1;
        v9 = __CFADD__(v8++, 1);
      }

      while (!v9);
      *a2 = v5;
    }

    else
    {
      v7 = 0;
    }

    v12 = v7;
    goto LABEL_15;
  }

  if (!v5)
  {
    *a3 = 0;
    goto LABEL_41;
  }

  if (v5 > 0xFE)
  {
    if (v5 == 255)
    {
      v13 = *(a1 + 1105);
      if (v13 == 7)
      {
        v14 = *(a1 + 1096);
      }

      else
      {
        **(a1 + 1096) &= 510 << v13;
        v14 = (*(a1 + 1096) + 1);
        *(a1 + 1096) = v14;
        *(a1 + 1105) = 7;
      }

      if (v14 == *(a1 + 1088))
      {
        PERAppendData(a1, 1uLL);
        v14 = *(v4 + 1096);
      }

      v18 = *v14;
      v17 = v14 + 1;
      *a3 = v18;
    }

    else
    {
      if (HIWORD(v5))
      {
        v19 = __clz(v5);
        v20 = 32 - v19;
        v21 = v19 - 32;
        do
        {
          v5 >>= 1;
          v9 = __CFADD__(v21++, 1);
        }

        while (!v9);
        *a2 = v5;
        if ((v20 & 7) != 0)
        {
          v22 = (v20 >> 3) + 1;
        }

        else
        {
          v22 = v20 >> 3;
        }

        v23 = PERGetBits(a1, (8 - __clz((v22 << 24) - 0x1000000)));
        *a3 = v23;
        v24 = *(v4 + 1105);
        if (v24 != 7)
        {
          *(*(v4 + 1096))++ &= 510 << v24;
          *(v4 + 1105) = 7;
          v23 = *a3;
        }

        v12 = (8 * v23 + 8) & 0xF8;
        goto LABEL_12;
      }

      v15 = *(a1 + 1105);
      if (v15 == 7)
      {
        v16 = *(a1 + 1096);
      }

      else
      {
        **(a1 + 1096) &= 510 << v15;
        v16 = (*(a1 + 1096) + 1);
        *(a1 + 1096) = v16;
        *(a1 + 1105) = 7;
      }

      v25 = *(a1 + 1088) - v16;
      if (v25 <= 1)
      {
        PERAppendData(a1, 2 - v25);
        v16 = *(v4 + 1096);
      }

      v26 = *v16;
      *a3 = v26 << 8;
      *(v4 + 1096) = v16 + 1;
      *a3 = v16[1] | (v26 << 8);
      v17 = v16 + 2;
    }

    *(v4 + 1096) = v17;
    goto LABEL_41;
  }

  v10 = 0;
  do
  {
    v11 = v5;
    ++v10;
    v5 >>= 1;
  }

  while (v11 > 1);
  *a2 = v5;
  v12 = v10;
LABEL_12:
  a1 = v4;
LABEL_15:
  *a3 = PERGetBits(a1, v12);
LABEL_41:
  v27 = *MEMORY[0x29EDCA608];
}

unint64_t PERDecodeSemiConstrainedWholeNumberFunc(uint64_t a1, _DWORD *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  if ((*(a1 + 1056) & 0x40) != 0)
  {
    v4 = *(a1 + 1105);
    if (v4 != 7)
    {
      *(*(a1 + 1096))++ &= 510 << v4;
      *(a1 + 1105) = 7;
    }
  }

  v5 = PERGetByte(a1);
  if ((v5 - 5) <= 0xFBu)
  {
    EPErrorHandler(a1, 24);
  }

  result = PERGetBits(a1, 8 * (v5 & 0x1Fu));
  *a2 = result;
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t PEREncodePrimBIT_STRING(uint64_t result, unint64_t a2, unsigned __int8 **a3)
{
  v4 = result;
  v44 = *MEMORY[0x29EDCA608];
  v5 = a2 & 7;
  v6 = *a3;
  v7 = *a3;
  if (a2 >= 8)
  {
    v9 = a2 >> 3;
    v10 = *(result + 1105);
    v11 = *(result + 1096);
    v12 = &v11[a2 >> 3];
    if (v10 == 7)
    {
      v13 = *(result + 1080);
      if (v12 > v13)
      {
        v14 = &v11[v9 - v13];
        v15 = *(result + 1072);
        v16 = *(result + 1088) - v15;
        v17 = &v11[-v15];
        v18 = v13 - v15;
        result = (*(result + 856))(result, v14);
        *(v4 + 1072) = result;
        *(v4 + 1080) = &v14[v18 + result];
        *(v4 + 1088) = result + v16;
        v11 = &v17[result];
        *(v4 + 1096) = &v17[result];
      }

      v19 = 0;
      if (v9 <= 1)
      {
        v20 = 1;
      }

      else
      {
        v20 = a2 >> 3;
      }

      do
      {
        v21 = 0;
        *v11 = 0;
        do
        {
          **(v4 + 1096) |= v7[v21] << (7 - v21);
          ++v21;
        }

        while (v21 != 8);
        ++v19;
        v11 = (*(v4 + 1096) + 1);
        *(v4 + 1096) = v11;
        v7 += 8;
      }

      while (v19 != v20);
    }

    else
    {
      v22 = *(result + 1080);
      if ((v12 + 1) > v22)
      {
        v23 = &v11[v9 - v22 + 1];
        v24 = *(result + 1072);
        v25 = *(result + 1088) - v24;
        v43 = &v11[-v24];
        v26 = v22 - v24;
        result = (*(result + 856))(result, v23);
        *(v4 + 1072) = result;
        *(v4 + 1080) = result + v26 + v23;
        *(v4 + 1088) = result + v25;
        v11 = &v43[result];
        *(v4 + 1096) = &v43[result];
        v10 = *(v4 + 1105);
      }

      v27 = 0;
      v28 = 7;
      v29 = (v10 + 1);
      do
      {
        v30 = *v7++;
        v27 |= v30 << v28--;
        --v29;
      }

      while (v29);
      v7 = &v6[v10 + 1];
      *v11 |= v27 >> (7 - v10);
      v31 = (*(v4 + 1096) + 1);
      *(v4 + 1096) = v31;
      if (v9 != 1)
      {
        v32 = 0;
        do
        {
          v33 = 0;
          *v31 = 0;
          do
          {
            **(v4 + 1096) |= v7[v33] << (7 - v33);
            ++v33;
          }

          while (v33 != 8);
          ++v32;
          v31 = (*(v4 + 1096) + 1);
          *(v4 + 1096) = v31;
          v7 += 8;
        }

        while (v32 != v9 - 1);
      }

      *v31 = 0;
      if (*(v4 + 1105) != 7)
      {
        v34 = 0;
        v35 = 7;
        do
        {
          **(v4 + 1096) |= v7[v34++] << v35--;
        }

        while (v34 < 7 - *(v4 + 1105));
        v7 += v34;
      }
    }

    v36 = &a3[1][-a2];
    *a3 += a2;
    a3[1] = v36;
  }

  if (v5)
  {
    v37 = 0;
    v38 = a2 & 7;
    if ((a2 & 7) != 0)
    {
      v39 = 7;
      do
      {
        v40 = *v7++;
        v37 |= (v40 << v39--);
        --v38;
      }

      while (v38);
    }

    v41 = *MEMORY[0x29EDCA608];

    return PERPutBits(v4, v37 >> (8 - v5), v5);
  }

  else
  {
    v42 = *MEMORY[0x29EDCA608];
  }

  return result;
}

uint64_t PERDecodePrimBIT_STRING(uint64_t result, size_t a2, uint64_t a3)
{
  v32 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v5 = result;
    v6 = *(result + 1104);
    if (v6 == 7)
    {
      v7 = *(result + 1105) + 8 * (*(result + 1088) - *(result + 1096)) - 7;
    }

    else
    {
      v7 = *(result + 1105) - v6 + 8 * (~*(result + 1096) + *(result + 1088));
    }

    v8 = a2 >= v7;
    v9 = a2 - v7;
    if (v9 != 0 && v8)
    {
      if ((v9 & 7) != 0)
      {
        v10 = (v9 >> 3) + 1;
      }

      else
      {
        v10 = v9 >> 3;
      }

      PERAppendData(result, v10);
    }

    v11 = *a3;
    if (*a3)
    {
      v12 = gnssOsa_Calloc("posp_alloc", 18, 1, *(a3 + 8) + a2);
      *a3 = v12;
      memcpy_s("posp_memcpy", 29, v12, *(a3 + 8), v11, *(a3 + 8));
      free(v11);
      result = *a3;
      v13 = *(a3 + 8);
      v14 = (*a3 + v13);
      v15 = v13 + a2;
    }

    else
    {
      result = gnssOsa_Calloc("posp_alloc", 18, 1, a2);
      *a3 = result;
      v15 = a2;
      v14 = result;
    }

    *(a3 + 8) = v15;
    *(v5 + 1112) = result;
    if (a2 >= 8)
    {
      v16 = a2 >> 3;
      v17 = *(v5 + 1105);
      if (v17 == 7)
      {
        do
        {
          for (i = 0; i != 8; ++i)
          {
            *v14++ = (**(v5 + 1096) >> (7 - i)) & 1;
          }

          ++*(v5 + 1096);
          --v16;
        }

        while (v16);
      }

      else
      {
        v19 = 7;
        v20 = (**(v5 + 1096) << (7 - v17));
        v21 = -1;
        do
        {
          *v14++ = (v20 >> v19) & 1;
          v22 = *(v5 + 1105);
          ++v21;
          --v19;
        }

        while (v21 < v22);
        ++*(v5 + 1096);
        if (a2 >= 0x10)
        {
          do
          {
            for (j = 0; j != 8; ++j)
            {
              *v14++ = (**(v5 + 1096) >> (7 - j)) & 1;
            }

            --v16;
            ++*(v5 + 1096);
          }

          while (v16 > 1);
          LODWORD(v22) = *(v5 + 1105);
        }

        if (v22 != 7)
        {
          v24 = 0;
          v25 = 7;
          do
          {
            *v14++ = (**(v5 + 1096) >> v25) & 1;
            ++v24;
            --v25;
          }

          while (v24 < 7 - *(v5 + 1105));
        }
      }
    }

    if ((a2 & 7) != 0)
    {
      result = PERGetBits(v5, a2 & 7);
      v26 = vdupq_n_s64((a2 & 7) - 1);
      v27 = vmovn_s64(vcgeq_u64(v26, xmmword_299728F20));
      if (vuzp1_s8(vuzp1_s16(v27, *v26.i8), *v26.i8).u8[0])
      {
        *v14 = ((result << (8 - (a2 & 7))) & 0x80) != 0;
      }

      if (vuzp1_s8(vuzp1_s16(v27, *&v26), *&v26).i8[1])
      {
        v14[1] = ((result << (8 - (a2 & 7))) & 0x40) != 0;
      }

      if (vuzp1_s8(vuzp1_s16(*&v26, vmovn_s64(vcgeq_u64(v26, xmmword_299729020))), *&v26).i8[2])
      {
        v14[2] = ((result << (8 - (a2 & 7))) & 0x20) != 0;
        v14[3] = ((result << (8 - (a2 & 7))) & 0x10) != 0;
      }

      v28 = vmovn_s64(vcgeq_u64(v26, xmmword_299729170));
      if (vuzp1_s8(*&v26, vuzp1_s16(v28, *&v26)).i32[1])
      {
        v14[4] = ((result << (8 - (a2 & 7))) & 8) != 0;
      }

      if (vuzp1_s8(*&v26, vuzp1_s16(v28, *&v26)).i8[5])
      {
        v14[5] = ((result << (8 - (a2 & 7))) & 4) != 0;
      }

      v29 = vmovn_s64(vcgeq_u64(v26, xmmword_299729180));
      if (vuzp1_s8(*&v29, vuzp1_s16(v29, v29)).i8[6])
      {
        v14[6] = ((result << (8 - (a2 & 7))) & 2) != 0;
      }

      v30 = vuzp1_s16(v29, v29);
      if (vuzp1_s8(v30, v30).i8[7])
      {
        v14[7] = 0;
      }
    }
  }

  v31 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t PEREncodePrimOCTET_STRING(uint64_t a1, size_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x29EDCA608];
  result = PERPutSeg(a1, *a3, a2);
  v6 = *(a3 + 8) - a2;
  *a3 += a2;
  *(a3 + 8) = v6;
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

void PERDecodePrimOCTET_STRING(uint64_t a1, size_t a2, uint64_t a3)
{
  v3 = a2;
  v16 = *MEMORY[0x29EDCA608];
  if (a2 - 1 <= 0x1FFE)
  {
    if (*a3)
    {
      v6 = gnssOsa_Calloc("posp_alloc", 18, 1, *(a3 + 8) + a2);
      memcpy_s("posp_memcpy", 29, v6, *(a3 + 8) + v3, *a3, *(a3 + 8));
      if (*a3)
      {
        free(*a3);
      }

      v7 = *(a3 + 8);
      v8 = &v6[v7];
      *a3 = v6;
      *(a3 + 8) = v7 + v3;
    }

    else
    {
      v6 = gnssOsa_Calloc("posp_alloc", 18, 1, a2);
      *a3 = v6;
      *(a3 + 8) = v3;
      v8 = v6;
    }

    *(a1 + 1112) = v6;
    v10 = *(a1 + 1096);
    v11 = *(a1 + 1088) - v10;
    if (*(a1 + 1105) == 7)
    {
      if (v3 > v11)
      {
        PERAppendData(a1, v3 - v11);
        v10 = *(a1 + 1096);
      }

      memcpy_s("posp_memcpy", 29, v8, v3, v10, v3);
      *(a1 + 1096) += v3;
    }

    else
    {
      v12 = v3 >= v11;
      v13 = v3 - v11;
      if (v12)
      {
        PERAppendData(a1, v13 + 1);
      }

      do
      {
        *v8 = **(a1 + 1096) << (7 - *(a1 + 1105));
        v14 = (*(a1 + 1096) + 1);
        *(a1 + 1096) = v14;
        *v8++ |= *v14 >> (*(a1 + 1105) + 1);
        --v3;
      }

      while (v3);
    }

    goto LABEL_19;
  }

  if (a2 <= 0x2000)
  {
LABEL_19:
    v15 = *MEMORY[0x29EDCA608];
    return;
  }

  v9 = *MEMORY[0x29EDCA608];

  EPErrorHandler(a1, 28);
}

_DWORD *PERDecodeOBJECT_IDENTIFIERComps(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x29EDCA608];
  v6 = PERGetByte(a1);
  if ((v6 & 0x80) != 0)
  {
    EPErrorHandler(a1, 28);
  }

  v7 = gnssOsa_Calloc("posp_alloc", 18, 1, 0x10uLL);
  v7[2] = v6 / 0x28u;
  *v7 = 0;
  if (*a3)
  {
    **(a3 + 8) = v7;
    ++*(a3 + 16);
  }

  else
  {
    *a3 = v7;
    *(a3 + 16) = 1;
  }

  v8 = a2 - 1;
  *(a3 + 8) = v7;
  *(a3 + 20) = 8;
  result = gnssOsa_Calloc("posp_alloc", 18, 1, 0x10uLL);
  result[2] = v6 % 0x28u;
  *result = 0;
  if (*a3)
  {
    **(a3 + 8) = result;
    ++*(a3 + 16);
  }

  else
  {
    *a3 = result;
    *(a3 + 16) = 1;
  }

  *(a3 + 8) = result;
  *(a3 + 20) = 8;
  if (a2 != 1)
  {
    do
    {
      v10 = PERGetByte(a1);
      v11 = v10 & 0x7F;
      if (v10 < 0)
      {
        v13 = 1;
        do
        {
          v14 = PERGetByte(a1);
          v11 = v14 & 0x7F | (v11 << 7);
          v12 = v13 + 1;
          if ((v14 & 0x80) == 0)
          {
            break;
          }
        }

        while (v13++ < 5);
      }

      else
      {
        v12 = 1;
      }

      result = gnssOsa_Calloc("posp_alloc", 18, 1, 0x10uLL);
      result[2] = v11;
      *result = 0;
      if (*a3)
      {
        **(a3 + 8) = result;
        v16 = *(a3 + 16) + 1;
      }

      else
      {
        *a3 = result;
        v16 = 1;
      }

      *(a3 + 16) = v16;
      *(a3 + 8) = result;
      *(a3 + 20) = 8;
      v8 -= v12;
    }

    while (v8);
  }

  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t PEREncodePrimCHARACTER_STRING(uint64_t result, uint64_t a2, char **a3)
{
  v4 = a2;
  v5 = result;
  v15 = *MEMORY[0x29EDCA608];
  if (*(a3 + 25) == 1)
  {
    if (a2)
    {
      v6 = *a3;
      do
      {
        v7 = a3[4];
        v8 = *v6;
        if (*v7 == v8)
        {
          v9 = 0;
        }

        else
        {
          v10 = 0;
          v11 = (v7 + 1);
          while (a3[5] != v10)
          {
            v9 = (v10 + 1);
            v12 = (v10++)[v11];
            if (v12 == v8)
            {
              goto LABEL_11;
            }
          }

          v9 = a3[5];
        }

LABEL_11:
        result = PERPutBits(v5, v9, *(a3 + 24));
        v6 = *a3 + 1;
        *a3 = v6;
        --v4;
      }

      while (v4);
    }
  }

  else if (a2)
  {
    v13 = *a3;
    do
    {
      result = PERPutBits(v5, *v13, *(a3 + 24));
      v13 = *a3 + 1;
      *a3 = v13;
      --v4;
    }

    while (v4);
  }

  v14 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t PERDecodePrimCHARACTER_STRING(unint64_t result, uint64_t a2, uint64_t *a3)
{
  v14 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v4 = a2;
    v5 = result;
    if (*a3)
    {
      v6 = (*a3 - 1);
      v7 = gnssOsa_Calloc("posp_alloc", 18, 1, a2 + a3[1] + 2);
      *a3 = v7;
      memcpy_s("posp_memcpy", 29, v7, *(a3 + 2) + v4 + 2, v6, *(a3 + 2));
      free(v6);
      v8 = *a3;
      v9 = a3[1];
      v10 = *a3 + 1;
      v11 = (v10 + v9);
      *a3 = v10;
      a3[1] = v9 + v4;
    }

    else
    {
      v12 = gnssOsa_Calloc("posp_alloc", 18, 1, a2 + 2);
      *a3 = v12;
      *v12 = 86;
      v8 = *a3;
      v11 = (*a3 + 1);
      *a3 = v11;
      a3[1] = v4;
    }

    *(v5 + 1112) = v8;
    do
    {
      result = PERGetBits(v5, *(a3 + 24));
      *v11++ = result;
      --v4;
    }

    while (v4);
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t PEREncodeNormallySmallNonNegativeWholeNumber(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v8 = *MEMORY[0x29EDCA608];
  if (a2 > 0x3E)
  {
    PERPutBit(a1, 1);
    v7 = v2;
    result = PEREncodeSemiConstrainedWholeNumberFunc(a1, &v7);
    v6 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v4 = *MEMORY[0x29EDCA608];

    return PERPutBits(a1, a2, 7u);
  }

  return result;
}

unint64_t PERDecodeNormallySmallNonNegativeWholeNumber(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  if (PERGetBit(a1))
  {
    v7 = 0;
    result = PERDecodeSemiConstrainedWholeNumberFunc(a1, &v7);
    v5 = v7;
  }

  else
  {
    result = PERGetBits(a1, 6u);
    v5 = result;
  }

  *a2 = v5;
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t PERSkipPrimBitField(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v7 = *MEMORY[0x29EDCA608];
  *a2 = *(a1 + 1096) - *(a1 + 1088);
  *(a2 + 8) = *(a1 + 1105);
  *(a2 + 16) = a3 + 1;
  PERSkipBytes(a1, a3 >> 3);
  v5 = *MEMORY[0x29EDCA608];

  return PERPutBits(a1, 0, v3 & 7);
}

uint64_t PERSkipConsBitField(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v12 = *MEMORY[0x29EDCA608];
  if ((*(a1 + 1056) & 0x40) != 0)
  {
    v6 = *(a1 + 1105);
    if (v6 != 7)
    {
      *(*(a1 + 1096))++ &= 510 << v6;
      *(a1 + 1105) = 7;
    }
  }

  *(a2 + 16) = 0;
  if (a3 >= 0x10000)
  {
    do
    {
      PERPutByte(a1, 0xC4u);
      if (!*(a2 + 16))
      {
        *a2 = *(a1 + 1096) - *(a1 + 1088);
        *(a2 + 8) = *(a1 + 1105);
        *(a2 + 16) = 0x10000;
      }

      PERSkipBytes(a1, 0x2000uLL);
      v3 -= 0x10000;
    }

    while (v3 >> 16);
  }

  v7 = v3 - 49152;
  if (v3 > 0xC000)
  {
    PERPutByte(a1, 0xC3u);
    if (!*(a2 + 16))
    {
      *a2 = *(a1 + 1096) - *(a1 + 1088);
      *(a2 + 8) = *(a1 + 1105);
      *(a2 + 16) = 49152;
    }

    v8 = a1;
    v9 = 6144;
LABEL_20:
    PERSkipBytes(v8, v9);
    v3 = v7;
    goto LABEL_21;
  }

  if (v3 >= 0x8000)
  {
    PERPutByte(a1, 0xC2u);
    if (!*(a2 + 16))
    {
      *a2 = *(a1 + 1096) - *(a1 + 1088);
      *(a2 + 8) = *(a1 + 1105);
      *(a2 + 16) = 0x8000;
    }

    PERSkipBytes(a1, 0x1000uLL);
    v3 -= 0x8000;
  }

  v7 = v3 - 0x4000;
  if (v3 >= 0x4000)
  {
    PERPutByte(a1, 0xC1u);
    if (!*(a2 + 16))
    {
      *a2 = *(a1 + 1096) - *(a1 + 1088);
      *(a2 + 8) = *(a1 + 1105);
      *(a2 + 16) = 0x4000;
    }

    v8 = a1;
    v9 = 2048;
    goto LABEL_20;
  }

LABEL_21:
  if (v3 > 0x7F)
  {
    PERPutBits(a1, v3 | 0x8000, 0x10u);
  }

  else
  {
    PERPutByte(a1, v3);
  }

  if (!*(a2 + 16))
  {
    *a2 = *(a1 + 1096) - *(a1 + 1088);
    *(a2 + 8) = *(a1 + 1105);
    *(a2 + 16) = v3;
  }

  PERSkipBytes(a1, v3 >> 3);
  v10 = *MEMORY[0x29EDCA608];

  return PERPutBits(a1, 0, v3 & 7);
}

void PEREncodeStructRootWithOptDef(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v23 = *MEMORY[0x29EDCA608];
  v8 = a3[7];
  if (v8)
  {
    v9 = a3[3];
    while (1)
    {
      v10 = *(v9 + 16);
      if (v10 > 1)
      {
        break;
      }

      if (!*(v9 + 16))
      {
        goto LABEL_11;
      }

      if (v10 == 1)
      {
        PERSetBitToBitField(a1, a2, 1);
LABEL_11:
        v11 = *(*(a3[1] + 24) + 24 * *(v9 + 24) + 8);
        v12 = *(a1 + 712);
        if (v12 >= 0x40)
        {
LABEL_12:
          CUCFErrorHandler(a1, 15);
          v12 = *(a1 + 712);
        }

LABEL_13:
        *(a1 + 200 + 8 * v12) = v9;
        *(a1 + 712) = v12 + 1;
        PEREncVal(a1, *v9, a4 + v11);
        --*(a1 + 712);
      }

LABEL_21:
      v9 += 32;
      if (!--v8)
      {
        goto LABEL_22;
      }
    }

    switch(v10)
    {
      case 2u:
        v13 = *(a3[1] + 24) + 24 * *(v9 + 24);
        if (*(a4 + **(v13 + 16)) != 1)
        {
          goto LABEL_20;
        }

        v11 = *(v13 + 8);
        PERSetBitToBitField(a1, a2, 1);
        v12 = *(a1 + 712);
        if (v12 >= 0x40)
        {
          goto LABEL_12;
        }

        break;
      case 3u:
        v14 = *(a3[1] + 24) + 24 * *(v9 + 24);
        if (*(a4 + **(v14 + 16)) != 1)
        {
          goto LABEL_20;
        }

        v11 = *(v14 + 8);
        PERSetBitToBitField(a1, a2, 1);
        v12 = *(a1 + 712);
        if (v12 >= 0x40)
        {
          goto LABEL_12;
        }

        break;
      case 5u:
LABEL_20:
        PERSetBitToBitField(a1, a2, 0);
        goto LABEL_21;
      default:
        goto LABEL_21;
    }

    goto LABEL_13;
  }

LABEL_22:
  v15 = a3[9];
  if (v15)
  {
    v16 = a3[5];
    while (1)
    {
      v17 = *(v16 + 16);
      if (v17 > 1)
      {
        break;
      }

      if (!*(v16 + 16))
      {
        goto LABEL_32;
      }

      if (v17 == 1)
      {
        PERSetBitToBitField(a1, a2, 1);
LABEL_32:
        v18 = *(*(a3[1] + 24) + 24 * *(v16 + 24) + 8);
        v19 = *(a1 + 712);
        if (v19 >= 0x40)
        {
LABEL_33:
          CUCFErrorHandler(a1, 15);
          v19 = *(a1 + 712);
        }

LABEL_34:
        *(a1 + 200 + 8 * v19) = v16;
        *(a1 + 712) = v19 + 1;
        PEREncVal(a1, *v16, a4 + v18);
        --*(a1 + 712);
      }

LABEL_42:
      v16 += 32;
      if (!--v15)
      {
        goto LABEL_43;
      }
    }

    switch(v17)
    {
      case 2u:
        v20 = *(a3[1] + 24) + 24 * *(v16 + 24);
        if (*(a4 + **(v20 + 16)) != 1)
        {
          goto LABEL_41;
        }

        v18 = *(v20 + 8);
        PERSetBitToBitField(a1, a2, 1);
        v19 = *(a1 + 712);
        if (v19 >= 0x40)
        {
          goto LABEL_33;
        }

        break;
      case 3u:
        v21 = *(a3[1] + 24) + 24 * *(v16 + 24);
        if (*(a4 + **(v21 + 16)) != 1)
        {
          goto LABEL_41;
        }

        v18 = *(v21 + 8);
        PERSetBitToBitField(a1, a2, 1);
        v19 = *(a1 + 712);
        if (v19 >= 0x40)
        {
          goto LABEL_33;
        }

        break;
      case 5u:
LABEL_41:
        PERSetBitToBitField(a1, a2, 0);
        goto LABEL_42;
      default:
        goto LABEL_42;
    }

    goto LABEL_34;
  }

LABEL_43:
  v22 = *MEMORY[0x29EDCA608];
}

uint64_t PEREncodeStructRoot(uint64_t result, void *a2, uint64_t a3)
{
  v5 = result;
  v17 = *MEMORY[0x29EDCA608];
  v6 = a2[7];
  if (v6)
  {
    v7 = a2[3];
    v8 = *(result + 712);
    do
    {
      v9 = *(*(a2[1] + 24) + 24 * v7[3] + 8);
      if (v8 >= 0x40)
      {
        CUCFErrorHandler(v5, 15);
        v8 = *(v5 + 712);
      }

      *(v5 + 200 + 8 * v8) = v7;
      *(v5 + 712) = v8 + 1;
      v10 = *v7;
      v7 += 4;
      result = PEREncVal(v5, v10, a3 + v9);
      v8 = *(v5 + 712) - 1;
      *(v5 + 712) = v8;
      --v6;
    }

    while (v6);
  }

  v11 = a2[9];
  if (v11)
  {
    v12 = a2[5];
    v13 = *(v5 + 712);
    do
    {
      v14 = *(*(a2[1] + 24) + 24 * v12[3] + 8);
      if (v13 >= 0x40)
      {
        CUCFErrorHandler(v5, 15);
        v13 = *(v5 + 712);
      }

      *(v5 + 200 + 8 * v13) = v12;
      *(v5 + 712) = v13 + 1;
      v15 = *v12;
      v12 += 4;
      result = PEREncVal(v5, v15, a3 + v14);
      v13 = *(v5 + 712) - 1;
      *(v5 + 712) = v13;
      --v11;
    }

    while (v11);
  }

  v16 = *MEMORY[0x29EDCA608];
  return result;
}