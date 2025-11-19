void *print_line_LS(void *result, int a2)
{
  v86 = *MEMORY[0x29EDCA608];
  v2 = result[46];
  v3 = result[10];
  v4 = result[22];
  v5 = result[35];
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      if (g_Enable_Nav_Debug >= 3u)
      {
        v6 = v5 + 103;
        v7 = v5 + 111;
        v8 = "LS_Glo ";
        goto LABEL_26;
      }

      goto LABEL_16;
    }

    if (a2 == 4)
    {
      if (g_Enable_Nav_Debug >= 3u)
      {
        v6 = v5 + 170;
        v7 = v5 + 176;
        v8 = "LS_GAL ";
        goto LABEL_26;
      }

LABEL_16:
      v15 = *MEMORY[0x29EDCA608];
      v16 = *MEMORY[0x29EDCA608];
      return result;
    }

LABEL_10:
    if (g_Enable_Nav_Debug >= 3u)
    {
      v6 = v5 + 237;
      v7 = v5 + 247;
      v8 = "LS_BDS ";
      goto LABEL_26;
    }

    goto LABEL_16;
  }

  if (a2 != 1)
  {
    if (a2 == 2)
    {
      if (g_Enable_Nav_Debug >= 3u)
      {
        v6 = v5 + 36;
        v7 = v5 + 42;
        v8 = "LS_GPS ";
LABEL_26:
        v13 = *v7;
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v9 = result[29];
  v10 = *(v9 + 26143);
  v11 = *(v9 + 26144);
  v12 = *(v9 + 26145);
  v13 = 0.0;
  if (v10 < 0)
  {
    v14 = 9999000.0;
  }

  else
  {
    v14 = 9999000.0;
    if (*(v9 + 8 * v10 + 25848) <= 9999000.0)
    {
      v13 = *(v9 + 25664);
      v14 = *(v9 + 8 * v10 + 25848);
    }
  }

  v6 = (v9 + 25616);
  if ((v11 & 0x80000000) == 0 && v14 >= *(v9 + 8 * v11 + 25848))
  {
    v13 = *(v9 + 25680);
    v14 = *(v9 + 8 * v11 + 25848);
  }

  if ((v12 & 0x80000000) == 0 && v14 >= *(v9 + 8 * v12 + 25848))
  {
    v7 = (v9 + 25696);
    v8 = "LS_All ";
    goto LABEL_26;
  }

  v8 = "LS_All ";
LABEL_27:
  v17 = *v8;
  if (*v8)
  {
    v18 = *v2;
    v19 = (v8 + 1);
    do
    {
      *v2 = v18 + 1;
      *v18 = v17;
      v18 = *v2;
      if (*v2 >= *(v2 + 24))
      {
        v18 = *(v2 + 16);
        *v2 = v18;
      }

      v20 = *v19++;
      v17 = v20;
    }

    while (v20);
  }

  v21 = 0;
  v22 = v3 + 208;
  v23 = v4 + 27072;
  do
  {
    if (v6[51] < 0)
    {
      v24 = 0.0;
    }

    else
    {
      v24 = v6[v21 + 16] - *(v22 + 8 * v21);
    }

    if (v21 != 2)
    {
      if (v21 == 1)
      {
        v25 = -6.28318531;
        if (v24 >= 3.14159265 || (v25 = 6.28318531, v24 < -3.14159265))
        {
          v24 = v24 + v25;
        }
      }

      v24 = v24 * *(v23 + 8 * v21);
    }

    v26 = (*v2)++;
    *v26 = 32;
    if (*v2 >= *(v2 + 24))
    {
      *v2 = *(v2 + 16);
    }

    sprintf_12f3(v2, v24);
    ++v21;
  }

  while (v21 != 3);
  v27 = (*v2)++;
  *v27 = 32;
  if (*v2 >= *(v2 + 24))
  {
    *v2 = *(v2 + 16);
  }

  sprintf_sgR8(v2, v6[24]);
  sprintf_sgR8(v2, -v6[23]);
  sprintf_6d(v2, v6[25]);
  v28 = *v2;
  v29 = 32;
  v30 = 1u;
  do
  {
    *v2 = v28 + 1;
    *v28 = v29;
    v28 = *v2;
    if (*v2 >= *(v2 + 24))
    {
      v28 = *(v2 + 16);
      *v2 = v28;
    }

    v29 = aClk[v30++];
  }

  while (v30 != 6);
  sprintf_8d(v2, v13);
  sprintf_sgR8(v2, v6[20]);
  sprintf_sgR8(v2, v6[12]);
  v31 = (*v2)++;
  *v31 = 32;
  v32 = *v2;
  if (*v2 >= *(v2 + 24))
  {
    v32 = *(v2 + 16);
  }

  *v2 = v32 + 1;
  *v32 = 80;
  if (*v2 >= *(v2 + 24))
  {
    *v2 = *(v2 + 16);
  }

  sprintf_2d(v2, *(v6 + 392));
  sprintf_3d(v2, *(v6 + 408));
  v33 = fmin(v6[50], 9.89999962) * 10.0;
  v34 = -0.5;
  if (v33 > 0.0)
  {
    v34 = 0.5;
  }

  v35 = v33 + v34;
  if (v35 <= 2147483650.0)
  {
    if (v35 >= -2147483650.0)
    {
      v36 = v35;
    }

    else
    {
      v36 = 0x80000000;
    }
  }

  else
  {
    v36 = 0x7FFFFFFF;
  }

  sprintf_3f(v2, v36, 2);
  v37 = 0;
  v38 = *v2;
  v39 = 32;
  do
  {
    *v2 = v38 + 1;
    *v38 = v39;
    v38 = *v2;
    if (*v2 >= *(v2 + 24))
    {
      v38 = *(v2 + 16);
      *v2 = v38;
    }

    v39 = aEl[++v37];
  }

  while (v37 != 4);
  sprintf_ACC(v2, v6[26]);
  v40 = (*v2)++;
  *v40 = 32;
  if (*v2 >= *(v2 + 24))
  {
    *v2 = *(v2 + 16);
  }

  sprintf_ACC(v2, v6[27]);
  v41 = (*v2)++;
  *v41 = 32;
  if (*v2 >= *(v2 + 24))
  {
    *v2 = *(v2 + 16);
  }

  sprintf_ACC(v2, v6[28]);
  v42 = 0;
  v43 = *v2;
  v44 = 32;
  do
  {
    *v2 = v43 + 1;
    *v43 = v44;
    v43 = *v2;
    if (*v2 >= *(v2 + 24))
    {
      v43 = *(v2 + 16);
      *v2 = v43;
    }

    v44 = aVf[++v42];
  }

  while (v42 != 4);
  sprintf_sgR8(v2, v6[2]);
  v45 = (*v2)++;
  *v45 = 32;
  if (*v2 >= *(v2 + 24))
  {
    *v2 = *(v2 + 16);
  }

  sprintf_sgR8(v2, v6[4]);
  v46 = (*v2)++;
  *v46 = 32;
  v47 = *v2;
  if (*v2 >= *(v2 + 24))
  {
    v47 = *(v2 + 16);
  }

  *v2 = v47 + 1;
  *v47 = 72;
  if (*v2 >= *(v2 + 24))
  {
    *v2 = *(v2 + 16);
  }

  sprintf_6d(v2, fmin(v6[45], 99999.0));
  v48 = (*v2)++;
  *v48 = 32;
  v49 = *v2;
  if (*v2 >= *(v2 + 24))
  {
    v49 = *(v2 + 16);
  }

  *v2 = v49 + 1;
  *v49 = 86;
  if (*v2 >= *(v2 + 24))
  {
    *v2 = *(v2 + 16);
  }

  sprintf_6d(v2, fmin(v6[46], 99999.0));
  v50 = (*v2)++;
  *v50 = 32;
  v51 = *v2;
  if (*v2 >= *(v2 + 24))
  {
    v51 = *(v2 + 16);
  }

  *v2 = v51 + 1;
  *v51 = 66;
  if (*v2 >= *(v2 + 24))
  {
    *v2 = *(v2 + 16);
  }

  sprintf_6d(v2, fmin(v6[47], 99999.0));
  v52 = (*v2)++;
  *v52 = 32;
  v53 = *v2;
  if (*v2 >= *(v2 + 24))
  {
    v53 = *(v2 + 16);
  }

  *v2 = v53 + 1;
  *v53 = 83;
  if (*v2 >= *(v2 + 24))
  {
    *v2 = *(v2 + 16);
  }

  sprintf_6d(v2, fmin(v6[48], 99999.0));
  v54 = (*v2)++;
  *v54 = 32;
  v55 = *v2;
  if (*v2 >= *(v2 + 24))
  {
    v55 = *(v2 + 16);
  }

  *v2 = v55 + 1;
  *v55 = 72;
  if (*v2 >= *(v2 + 24))
  {
    *v2 = *(v2 + 16);
  }

  sprintf_3d(v2, *(v6 + 320));
  v56 = (*v2)++;
  *v56 = 32;
  v57 = *v2;
  if (*v2 >= *(v2 + 24))
  {
    v57 = *(v2 + 16);
  }

  *v2 = v57 + 1;
  *v57 = 86;
  if (*v2 >= *(v2 + 24))
  {
    *v2 = *(v2 + 16);
  }

  sprintf_3d(v2, *(v6 + 321));
  v58 = (*v2)++;
  *v58 = 32;
  v59 = *v2;
  if (*v2 >= *(v2 + 24))
  {
    v59 = *(v2 + 16);
  }

  *v2 = v59 + 1;
  *v59 = 66;
  if (*v2 >= *(v2 + 24))
  {
    *v2 = *(v2 + 16);
  }

  sprintf_3d(v2, *(v6 + 322));
  v60 = (*v2)++;
  *v60 = 32;
  v61 = *v2;
  if (*v2 >= *(v2 + 24))
  {
    v61 = *(v2 + 16);
  }

  *v2 = v61 + 1;
  *v61 = 83;
  if (*v2 >= *(v2 + 24))
  {
    *v2 = *(v2 + 16);
  }

  sprintf_3d(v2, *(v6 + 323));
  v62 = (*v2)++;
  *v62 = 32;
  v63 = *v2;
  if (*v2 >= *(v2 + 24))
  {
    v63 = *(v2 + 16);
  }

  *v2 = v63 + 1;
  *v63 = 86;
  if (*v2 >= *(v2 + 24))
  {
    *v2 = *(v2 + 16);
  }

  sprintf_2d(v2, *(v6 + 488));
  sprintf_3d(v2, *(v6 + 504));
  v64 = fmin(v6[62], 9.98999977) * 100.0;
  v65 = -0.5;
  if (v64 > 0.0)
  {
    v65 = 0.5;
  }

  v66 = v64 + v65;
  if (v66 <= 2147483650.0)
  {
    if (v66 >= -2147483650.0)
    {
      v67 = v66;
    }

    else
    {
      v67 = 0x80000000;
    }
  }

  else
  {
    v67 = 0x7FFFFFFF;
  }

  sprintf_4f(v2, v67, 3);
  if (g_Enable_Nav_Debug >= 2u)
  {
    v68 = (*v2)++;
    *v68 = 32;
    v69 = *v2;
    if (*v2 >= *(v2 + 24))
    {
      v69 = *(v2 + 16);
    }

    *v2 = v69 + 1;
    *v69 = 72;
    if (*v2 >= *(v2 + 24))
    {
      *v2 = *(v2 + 16);
    }

    sprintf_3d(v2, fmin(v6[57], 99.0));
    v70 = (*v2)++;
    *v70 = 32;
    v71 = *v2;
    if (*v2 >= *(v2 + 24))
    {
      v71 = *(v2 + 16);
    }

    *v2 = v71 + 1;
    *v71 = 86;
    if (*v2 >= *(v2 + 24))
    {
      *v2 = *(v2 + 16);
    }

    sprintf_3d(v2, fmin(v6[58], 99.0));
    v72 = (*v2)++;
    *v72 = 32;
    v73 = *v2;
    if (*v2 >= *(v2 + 24))
    {
      v73 = *(v2 + 16);
    }

    *v2 = v73 + 1;
    *v73 = 66;
    if (*v2 >= *(v2 + 24))
    {
      *v2 = *(v2 + 16);
    }

    sprintf_3d(v2, fmin(v6[59], 99.0));
    v74 = (*v2)++;
    *v74 = 32;
    v75 = *v2;
    if (*v2 >= *(v2 + 24))
    {
      v75 = *(v2 + 16);
    }

    *v2 = v75 + 1;
    *v75 = 83;
    if (*v2 >= *(v2 + 24))
    {
      *v2 = *(v2 + 16);
    }

    sprintf_3d(v2, fmin(v6[60], 99.0));
    v76 = (*v2)++;
    *v76 = 32;
    v77 = *v2;
    if (*v2 >= *(v2 + 24))
    {
      v77 = *(v2 + 16);
    }

    *v2 = v77 + 1;
    *v77 = 72;
    if (*v2 >= *(v2 + 24))
    {
      *v2 = *(v2 + 16);
    }

    sprintf_3d(v2, *(v6 + 416));
    v78 = (*v2)++;
    *v78 = 32;
    v79 = *v2;
    if (*v2 >= *(v2 + 24))
    {
      v79 = *(v2 + 16);
    }

    *v2 = v79 + 1;
    *v79 = 86;
    if (*v2 >= *(v2 + 24))
    {
      *v2 = *(v2 + 16);
    }

    sprintf_3d(v2, *(v6 + 417));
    v80 = (*v2)++;
    *v80 = 32;
    v81 = *v2;
    if (*v2 >= *(v2 + 24))
    {
      v81 = *(v2 + 16);
    }

    *v2 = v81 + 1;
    *v81 = 66;
    if (*v2 >= *(v2 + 24))
    {
      *v2 = *(v2 + 16);
    }

    sprintf_3d(v2, *(v6 + 418));
    v82 = (*v2)++;
    *v82 = 32;
    v83 = *v2;
    if (*v2 >= *(v2 + 24))
    {
      v83 = *(v2 + 16);
    }

    *v2 = v83 + 1;
    *v83 = 83;
    if (*v2 >= *(v2 + 24))
    {
      *v2 = *(v2 + 16);
    }

    sprintf_3d(v2, *(v6 + 419));
  }

  v84 = (*v2)++;
  *v84 = 10;
  if (*v2 >= *(v2 + 24))
  {
    *v2 = *(v2 + 16);
  }

  v85 = *MEMORY[0x29EDCA608];

  return GNSS_Nav_Debug_Flush_Check(v2);
}

const char *Get_Str_FIX_TYPE(unsigned int a1)
{
  v3 = *MEMORY[0x29EDCA608];
  if (a1 >= 6)
  {
    EvCrt_Illegal_Default("Get_Str_FIX_TYPE", 0x10DAu);
    result = "xx";
  }

  else
  {
    result = off_29EF26A20[a1];
  }

  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sprintf_LaLo(char **a1, uint64_t a2)
{
  v4 = 0;
  v23 = *MEMORY[0x29EDCA608];
  v5 = 1;
  do
  {
    v6 = v5;
    v7 = *(a2 + 8 * v4) * 57.2957795;
    v8 = -v7;
    if (v7 >= 0.0)
    {
      v8 = *(a2 + 8 * v4) * 57.2957795;
    }

    v9 = v8;
    v10 = (v8 - v8) * 60.0;
    v11 = v10;
    v12 = (v10 - v10) * 60.0;
    sprintf_4d(a1, v9);
    sprintf_3d(a1, v11);
    if (v12 * 100000.0 <= 0.0)
    {
      v13 = -0.5;
    }

    else
    {
      v13 = 0.5;
    }

    v14 = v12 * 100000.0 + v13;
    if (v14 <= 2147483650.0)
    {
      if (v14 >= -2147483650.0)
      {
        v15 = v14;
      }

      else
      {
        v15 = 0x80000000;
      }
    }

    else
    {
      v15 = 0x7FFFFFFF;
    }

    result = sprintf_8f(a1, v15, 6);
    v17 = &ch_NSEW[8 * v4];
    if (*(a2 + 8 * v4) < 0.0)
    {
      v17 += 4;
    }

    v18 = *v17;
    if (*v17)
    {
      v19 = *a1;
      v20 = (v17 + 1);
      do
      {
        *a1 = v19 + 1;
        *v19 = v18;
        v19 = *a1;
        if (*a1 >= a1[3])
        {
          v19 = a1[2];
          *a1 = v19;
        }

        v21 = *v20++;
        v18 = v21;
      }

      while (v21);
    }

    v5 = 0;
    v4 = 1;
  }

  while ((v6 & 1) != 0);
  v22 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Get_Char_Ass_Status_Edit(int a1)
{
  v5 = *MEMORY[0x29EDCA608];
  result = 45;
  switch(a1)
  {
    case 0:
      break;
    case 1:
      result = 82;
      break;
    case 2:
    case 16:
    case 38:
      result = 65;
      break;
    case 3:
      result = 73;
      break;
    case 4:
      result = 83;
      break;
    case 5:
    case 39:
      result = 77;
      break;
    case 6:
    case 27:
    case 31:
      result = 68;
      break;
    case 7:
      result = 84;
      break;
    case 8:
    case 17:
      result = 66;
      break;
    case 9:
      result = 85;
      break;
    case 10:
    case 37:
      result = 80;
      break;
    case 11:
      result = 67;
      break;
    case 12:
      result = 86;
      break;
    case 13:
      goto LABEL_4;
    case 14:
      result = 88;
      break;
    case 15:
    case 30:
    case 34:
    case 36:
      result = 78;
      break;
    case 18:
      result = 72;
      break;
    case 19:
      result = 104;
      break;
    case 20:
      result = 54;
      break;
    case 21:
      result = 51;
      break;
    case 22:
      result = 55;
      break;
    case 23:
      result = 49;
      break;
    case 24:
      result = 50;
      break;
    case 25:
      result = 52;
      break;
    case 26:
      result = 79;
      break;
    case 28:
    case 32:
      result = 75;
      break;
    case 29:
    case 33:
    case 35:
      result = 69;
      break;
    default:
      if ((a1 - 1000) >= 0xE)
      {
        gn_report_assertion_failure("Ass_Status_Edit_Char");
        result = 120;
      }

      else
      {
LABEL_4:
        result = 76;
      }

      break;
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t LOGASN1Error(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  result = LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0);
  if (a2)
  {
    if (result)
    {
      bzero(__str, 0x410uLL);
      v4 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ErrorStr,%s, path,%s\n", v4, "PSP");
LABEL_6:
      result = LbsOsaTrace_WriteLog(0x13u, __str, v5, 0, 1);
    }
  }

  else if (result)
  {
    bzero(__str, 0x410uLL);
    v7 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ErrorStr,%s\n", v7);
    goto LABEL_6;
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GN_AGLON_Set_Alm_El(unsigned __int16 *a1)
{
  v50 = *MEMORY[0x29EDCA608];
  result = Is_GN_API_Set_Allowed("GN_AGLON_Set_Alm_El");
  if (result)
  {
    if (g_Enable_Event_Log >= 5u)
    {
      EvLog_v("GN_AGLON_Set_Alm_El: %4d %2d %2d %8d %7d %7d %8d %3d %5d %4d %d %d %d %d", *a1, *(a1 + 2), *(a1 + 3), *(a1 + 1), *(a1 + 2), *(a1 + 3), *(a1 + 4), *(a1 + 20), a1[11], a1[12], a1[13], *(a1 + 28), *(a1 + 29), *(a1 + 30));
    }

    v3 = *(a1 + 2);
    if ((v3 - 25) <= 0xFFFFFFE7)
    {
      EvCrt_v("GN_AGLON_Set_Alm_El: FAILED: Sat_ID = %d <%d or >%d, Out of range!");
LABEL_20:
      result = 0;
      goto LABEL_21;
    }

    v4 = *a1;
    if ((v4 - 1462) <= 0xFFFFFA4A)
    {
      v17 = *a1;
      EvCrt_v("GN_AGLON_Set_Alm_El: FAILED: gloAlmNA = %d <1 or >%d, Out of range!");
      goto LABEL_20;
    }

    v5 = *(a1 + 3);
    if (v5 >= 0x20)
    {
      v18 = *(a1 + 3);
      EvCrt_v("GN_AGLON_Set_Alm_El: FAILED: gloAlmHA = %d >31, Out of range!");
      goto LABEL_20;
    }

    v6 = *(a1 + 1);
    if ((v6 - 0x100000) >> 21 != 2047)
    {
      v19 = *(a1 + 1);
      EvCrt_v("GN_AGLON_Set_Alm_El: FAILED: gloAlmLambdaA = %d <-2^20 or >=2^20, Out of range!");
      goto LABEL_20;
    }

    v7 = *(a1 + 2);
    if (v7 >= 0x200000)
    {
      v20 = *(a1 + 2);
      EvCrt_v("GN_AGLON_Set_Alm_El: FAILED: gloAlmtlambdaA = %d >=2^21, Out of range!");
      goto LABEL_20;
    }

    v8 = *(a1 + 3);
    if ((v8 - 0x20000) <= 0xFFFBFFFF)
    {
      v21 = *(a1 + 3);
      EvCrt_v("GN_AGLON_Set_Alm_El: FAILED: gloAlmDeltaIa = %d <-2^17 or >=2^17, Out of range!");
      goto LABEL_20;
    }

    v9 = *(a1 + 4);
    if ((v9 - 0x200000) >> 22 != 1023)
    {
      v22 = *(a1 + 4);
      EvCrt_v("GN_AGLON_Set_Alm_El: FAILED: gloAlmDeltaTA = %d <-2^21 or >=2^21, Out of range!");
      goto LABEL_20;
    }

    v10 = *(a1 + 20);
    if (((v10 - 64) & 0x80) == 0)
    {
      v23 = *(a1 + 20);
      EvCrt_v("GN_AGLON_Set_Alm_El: FAILED: gloAlmDeltaTdotA = %d <-2^6 or >=2^6, Out of range!");
      goto LABEL_20;
    }

    v12 = a1[11];
    if (v12 < 0)
    {
      EvCrt_v("GN_AGLON_Set_Alm_El: FAILED: gloAlmEpsilonA = %d >=2^15, Out of range!");
      goto LABEL_20;
    }

    v13 = a1[13];
    if (((v13 - 512) >> 10) <= 0x3Eu)
    {
      v24 = a1[13];
      EvCrt_v("GN_AGLON_Set_Alm_El: FAILED: gloAlmTauA = %d <-2^9 or >=2^9, Out of range!");
      goto LABEL_20;
    }

    v14 = *(a1 + 28);
    if (v14 >= 2)
    {
      v25 = *(a1 + 28);
      EvCrt_v("GN_AGLON_Set_Alm_El: FAILED: gloAlmCA = %d >1, Out of range!");
      goto LABEL_20;
    }

    v15 = *(a1 + 29);
    if (v15 >= 4)
    {
      v26 = *(a1 + 29);
      EvCrt_v("GN_AGLON_Set_Alm_El: FAILED: gloAlmMA = %d >3, Out of range!");
      goto LABEL_20;
    }

    if (*(a1 + 30))
    {
      v16 = 5;
    }

    else
    {
      v16 = 3;
    }

    v27[0] = 0;
    v27[1] = v16;
    v28 = v4;
    v29 = v3;
    v30 = v5;
    v31 = v6;
    v32 = v7;
    v33 = v8;
    v34 = v9;
    v35 = v10;
    v36 = v12;
    v37 = a1[12];
    v38 = v13;
    v41 = 1;
    v39 = v14;
    v40 = v15;
    v46 = 0;
    v47 = 0;
    v48 = 0uLL;
    v49 = 0;
    GLON_AlmInt2Bin(v27, &v46);
    v42 = 0;
    v43 = v48;
    v44 = v49;
    v45 = HIDWORD(v46) == 5;
    WORD2(v42) = v47;
    result = GN_AGLON_Set_Alm(*(a1 + 2), &v42);
  }

LABEL_21:
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lsim17_04SiCbInit(void (*a1)(void))
{
  v17 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    g_SimInfoCallback = a1;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v1 = mach_continuous_time();
      v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v1), "LSM", 73, "GNS_ExecuteSimInfoCallback");
      LbsOsaTrace_WriteLog(0xCu, __str, v2, 4, 1);
    }

    if (g_SimInfoCallback)
    {
      IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
      if (IsLoggingAllowed)
      {
        bzero(__str, 0x410uLL);
        v4 = mach_continuous_time();
        v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:SIMS_INFO_REQ =>SiCB\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "GNS_ExecuteSimInfoCallback");
        IsLoggingAllowed = LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
      }

      g_SimInfoCallback(IsLoggingAllowed);
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SimInfo\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 87, "GNS_ExecuteSimInfoCallback", 258);
      LbsOsaTrace_WriteLog(0xCu, __str, v10, 2, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 73, "GNS_ExecuteSimInfoCallback");
      v13 = 4;
LABEL_16:
      result = LbsOsaTrace_WriteLog(0xCu, __str, v12, v13, 1);
    }
  }

  else
  {
    if (!g_SimInfoCallback)
    {
      result = LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0);
      if (!result)
      {
        goto LABEL_17;
      }

      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CbPtr\n", (*&g_MacClockTicksToMsRelation * v15), "LSM", 87, "lsim17_04SiCbInit", 513);
      v13 = 2;
      goto LABEL_16;
    }

    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DeRegistering\n", (*&g_MacClockTicksToMsRelation * v7), "LSM", 73, "lsim17_04SiCbInit", 513);
      result = LbsOsaTrace_WriteLog(0xCu, __str, v8, 4, 1);
    }

    g_SimInfoCallback = 0;
  }

LABEL_17:
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lsim17_05SimInfoUpdateInd(_BYTE *a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim17_05SimInfoUpdateInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  v4 = byte_2A1920A85;
  v5 = a1[15];
  byte_2A1920A82 = a1[12];
  byte_2A1920A85 = v5;
  byte_2A1920A86 = a1[16];
  memcpy_s("lsim17_05SimInfoUpdateInd", 113, &unk_2A1920A83, 2u, a1 + 13, 2uLL);
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_SIMINFO_UPDATE_IND,NumActiveSim,%u,DataSim,%u,CpSim,%u\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim17_05SimInfoUpdateInd", byte_2A1920A82, byte_2A1920A85, byte_2A1920A86);
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  byte_2A1920A81 = 1;
  if (v4 != v5)
  {
    lsim05_42CloseSuplSessions(255, 0);
    lsim09_34SendClientSlpInfo();
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "lsim17_05SimInfoUpdateInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  v10 = *MEMORY[0x29EDCA608];
  return 0;
}

BOOL GNS_SimsInfoInitialize(void (*a1)(void))
{
  v11 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "GNS_SimsInfoInitialize");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  v4 = gnssOsa_Calloc("GNS_SimsInfoInitialize", 184, 1, 0x18uLL);
  v5 = v4;
  if (v4)
  {
    v4[3] = 9;
    *(v4 + 2) = a1;
    AgpsSendFsmMsg(131, 131, 8635139, v4);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "GNS_SimsInfoInitialize");
      LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
    }
  }

  result = v5 != 0;
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GNS_SimsInfoInd(int *a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "GNS_SimsInfoInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (a1)
  {
    v4 = gnssOsa_Calloc("GNS_SimsInfoInd", 223, 1, 0x14uLL);
    v5 = v4;
    if (!v4)
    {
      goto LABEL_9;
    }

    v6 = *a1;
    v4[16] = *(a1 + 4);
    *(v4 + 3) = v6;
    AgpsSendFsmMsg(131, 131, 8634627, v4);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xCu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SimsInfo\n", (*&g_MacClockTicksToMsRelation * v7), "LSM", 69, "GNS_SimsInfoInd", 513);
    LbsOsaTrace_WriteLog(0xCu, __str, v8, 0, 1);
  }

  v5 = 0;
LABEL_9:
  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, v5);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 73, "GNS_SimsInfoInd");
    result = LbsOsaTrace_WriteLog(0xCu, __str, v11, 4, 1);
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void GncP07_06SendPENVRestoreResp(int a1, int a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v4 = gnssOsa_Calloc("GncP07_06SendPENVRestoreResp", 47, 1, 0x10uLL);
  if (v4)
  {
    v5 = v4;
    v4[12] = a1;
    v4[13] = a2;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_PE_NV_RESTORE_RSP =>GNM Code,%hhu,SeqNum,%u\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 73, "GncP07_06SendPENVRestoreResp", a1, a2);
      LbsOsaTrace_WriteLog(8u, __str, v7, 4, 1);
    }

    AgpsSendFsmMsg(134, 128, 8787460, v5);
  }

  v8 = *MEMORY[0x29EDCA608];
}

uint64_t GncP07_07HandlePENVRestore(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_PE_NV_RESTORE_REQ NVSize,%u,SeqNum,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP07_07HandlePENVRestore", *(a1 + 12), *(a1 + 24));
      LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
    }

    v4 = *(a1 + 12);
    if (*(a1 + 12) && (v5 = *(a1 + 16)) != 0)
    {
      if (v4 == 22944)
      {
        if (xmmword_2A1926A40)
        {
          memcpy_s("GncP07_07HandlePENVRestore", 107, xmmword_2A1926A40, 0x59A0u, v5, v4);
          v6 = *(a1 + 16);
          if (v6)
          {
            free(v6);
          }

          v7 = 0;
          *(a1 + 16) = 0;
        }

        else
        {
          if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v16 = mach_continuous_time();
            v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v16), "GNC", 87, "GncP07_07HandlePENVRestore", 769);
            LbsOsaTrace_WriteLog(8u, __str, v17, 2, 1);
          }

          v7 = 3;
        }
      }

      else if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NVSize Mismatch PESize,%u,GNMSize,%u\n", (*&g_MacClockTicksToMsRelation * v14), "GNC", 87, "GncP07_07HandlePENVRestore", 22944, *(a1 + 12));
        v7 = 1;
        LbsOsaTrace_WriteLog(8u, __str, v15, 2, 1);
      }

      else
      {
        v7 = 1;
      }

      v10 = *(a1 + 24);
      v11 = v7;
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 87, "GncP07_07HandlePENVRestore", 513);
        LbsOsaTrace_WriteLog(8u, __str, v9, 2, 1);
      }

      v10 = *(a1 + 24);
      v11 = 2;
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 69, "GncP07_07HandlePENVRestore", 517);
      LbsOsaTrace_WriteLog(8u, __str, v13, 0, 1);
    }

    v11 = 2;
    v10 = 255;
  }

  GncP07_06SendPENVRestoreResp(v11, v10);
  v18 = *MEMORY[0x29EDCA608];
  return 0;
}

void GncP07_08WriteNVStore(size_t a1, unsigned __int8 *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      goto LABEL_13;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NVStore\n");
LABEL_12:
    LbsOsaTrace_WriteLog(8u, __str, v9, 2, 1);
    goto LABEL_13;
  }

  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      goto LABEL_13;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NVSize,0\n");
    goto LABEL_12;
  }

  v4 = gnssOsa_Calloc("GncP07_08WriteNVStore", 134, 1, 0x18uLL);
  if (!v4)
  {
LABEL_13:
    v10 = *MEMORY[0x29EDCA608];
    return;
  }

  v5 = v4;
  v6 = gnssOsa_Calloc("GncP07_08WriteNVStore", 140, a1, 1uLL);
  v5[2] = v6;
  if (v6)
  {
    *(v5 + 6) = a1;
    memcpy_s("GncP07_08WriteNVStore", 148, v6, a1, a2, a1);
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_PE_NV_BACKUP_IND =>GNM NVSize,%u\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 73, "GncP07_08WriteNVStore", a1);
      LbsOsaTrace_WriteLog(8u, __str, v8, 4, 1);
    }

    AgpsSendFsmMsg(134, 128, 8787203, v5);
    goto LABEL_13;
  }

  v11 = *MEMORY[0x29EDCA608];

  free(v5);
}

uint64_t lsim15_02SendMobileInfoReq(int a1, char a2)
{
  v15 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim15_02SendMobileInfoReq");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (g_GnsCellInfoCallback)
  {
    memset_s(&__s, 8uLL, 0, 8uLL);
    __s = a1;
    v13 = a2;
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
    if (a1)
    {
      if (IsLoggingAllowed)
      {
        bzero(__str, 0x410uLL);
        mach_continuous_time();
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:INFO_REQ => CiCB,ReqMask,%X\n");
LABEL_9:
        LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
      }
    }

    else if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: DeReg MobInfo\n");
      goto LABEL_9;
    }

    GNS_ExecuteCiCb(0, 8, &__s);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 73, "lsim15_02SendMobileInfoReq");
    result = LbsOsaTrace_WriteLog(0xCu, __str, v10, 4, 1);
  }

  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GNS_ExecuteCiCb(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "GNS_ExecuteCiCb");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (g_GnsCellInfoCallback)
  {
    g_GnsCellInfoCallback(a1, a2, a3);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CellInfo\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 87, "GNS_ExecuteCiCb", 258);
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 2, 1);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 73, "GNS_ExecuteCiCb");
    result = LbsOsaTrace_WriteLog(0xCu, __str, v12, 4, 1);
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lsim15_12HandleMobileInfo()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  *&v82[6212] = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v1 = mach_continuous_time();
    v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v1), "LSM", 73, "lsim15_12HandleMobileInfo");
    LbsOsaTrace_WriteLog(0xCu, __str, v2, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_MOBILE_INFO_IND\n", (*&g_MacClockTicksToMsRelation * v3), "LSM", 73, "lsim15_12HandleMobileInfo");
    LbsOsaTrace_WriteLog(0xCu, __str, v4, 4, 1);
  }

  if (v0)
  {
    if (*(v0 + 6232) != 1)
    {
      memset_s(&g_LsimMobInfo, 0x10uLL, 0, 0x10uLL);
      g_LsimMobInfo = 0;
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v13 = mach_continuous_time();
        v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MobInfoType,%u\n", (*&g_MacClockTicksToMsRelation * v13), "LSM", 87, "lsim15_12HandleMobileInfo", 515, *(v0 + 6232));
        LbsOsaTrace_WriteLog(0xCu, __str, v14, 2, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v15, "LSM", 73, "lsim15_12HandleMobileInfo");
LABEL_99:
        LbsOsaTrace_WriteLog(0xCu, __str, v16, 4, 1);
        goto LABEL_100;
      }

      goto LABEL_100;
    }

    v5 = *(v0 + 12);
    if (v5 != 255)
    {
      v6 = 0;
      v7 = qword_2A1926810;
      v8 = -1;
      v9 = 1;
      do
      {
        v10 = v9;
        v11 = *(qword_2A1926810 + 6220 * v6);
        if (v5 == v11)
        {
          v8 = v6;
          goto LABEL_29;
        }

        v9 = 0;
        if (v8 < v6)
        {
          LOBYTE(v6) = v8;
        }

        if (v11 == 255)
        {
          v8 = v6;
        }

        v6 = 1;
      }

      while ((v10 & 1) != 0);
      if (v8 >= 2u)
      {
        if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
        {
          goto LABEL_25;
        }

        bzero(__str, 0x410uLL);
        mach_continuous_time();
        v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SimIndex\n");
        goto LABEL_24;
      }

LABEL_29:
      v19 = v8;
      v20 = qword_2A1926810 + 6220 * v8;
      memcpy_s("lsim15_12HandleMobileInfo", 220, v20, 0x184Cu, (v0 + 12), 0x184CuLL);
      v21 = g_LsimMobInfo & 0xFE;
      if (*(v20 + 8) == 2)
      {
        ++v21;
      }

      g_LsimMobInfo = v21;
      v22 = *(v20 + 4);
      if (v22 <= 1)
      {
        if (!v22)
        {
          v62 = *(v0 + 6232);
          v63 = 1;
LABEL_96:
          lsim15_06SendMobInfoApiStatus(v62, v63, 0);
          if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
          {
            goto LABEL_100;
          }

          bzero(__str, 0x410uLL);
          v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          goto LABEL_98;
        }

        if (v22 != 1)
        {
LABEL_85:
          v73 = v5;
          v74 = v0;
          if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v64 = mach_continuous_time();
            v65 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CellType,%u\n", (*&g_MacClockTicksToMsRelation * v64), "LSM", 73, "lsim15_12HandleMobileInfo", 515, *(v20 + 4));
            LbsOsaTrace_WriteLog(0xCu, __str, v65, 4, 1);
          }

          goto LABEL_87;
        }

        v73 = v5;
        v74 = v0;
        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v29 = mach_continuous_time();
          v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CIGSM,Mcc,%u,Mnc,%u,Lac,%u,Ci,%u,Ta,%u,NumNmr,%u\n", (*&g_MacClockTicksToMsRelation * v29), "LSM", 68, "lsim15_12HandleMobileInfo", *(v20 + 12), *(v20 + 14), *(v20 + 16), *(v20 + 20), *(v20 + 24), *(v20 + 26));
          LbsOsaTrace_WriteLog(0xCu, __str, v30, 5, 1);
        }

        if (*(v20 + 26))
        {
          v31 = 0;
          v32 = (v7 + 6220 * v19 + 31);
          do
          {
            if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v33 = mach_continuous_time();
              v34 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CIGSM NMR,Arfcn,%u,Bsic,%u,RxLev,%u\n", (*&g_MacClockTicksToMsRelation * v33), "LSM", 68, "lsim15_12HandleMobileInfo", *(v32 - 3), *(v32 - 1), *v32);
              LbsOsaTrace_WriteLog(0xCu, __str, v34, 5, 1);
            }

            ++v31;
            v32 += 4;
          }

          while (v31 < *(v20 + 26));
        }
      }

      else
      {
        switch(v22)
        {
          case 2:
            v73 = v5;
            v74 = v0;
            if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v35 = mach_continuous_time();
              v36 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CIWCDMAF,Mcc,%u,Mnc,%u,Lac,%u,Ci,%u,UarfcnDl,%u,UarfcnUl,%u,Psc,%u,NumMeasRes,%u\n", (*&g_MacClockTicksToMsRelation * v35), "LSM", 68, "lsim15_12HandleMobileInfo", *(v20 + 12), *(v20 + 14), *(v20 + 16), *(v20 + 20), *(v20 + 24), *(v20 + 26), *(v20 + 28), *(v20 + 30));
              LbsOsaTrace_WriteLog(0xCu, __str, v36, 5, 1);
            }

            if (*(v20 + 30))
            {
              v37 = 0;
              v38 = v7 + 6220 * v19 + 48;
              do
              {
                v39 = (v20 + 32 + 392 * v37);
                if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5, 0, 0))
                {
                  bzero(__str, 0x410uLL);
                  v40 = mach_continuous_time();
                  v41 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CIWCDMAF MEASLIST,UarfcnDl,%u,UarfcnUl,%u,Rssi,%u,NumMeas,%u\n", (*&g_MacClockTicksToMsRelation * v40), "LSM", 68, "lsim15_12HandleMobileInfo", *v39, v39[1], *(v39 + 4), *(v39 + 5));
                  LbsOsaTrace_WriteLog(0xCu, __str, v41, 5, 1);
                }

                if (*(v39 + 5))
                {
                  v42 = 0;
                  v43 = v38;
                  do
                  {
                    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5, 0, 0))
                    {
                      bzero(__str, 0x410uLL);
                      v44 = mach_continuous_time();
                      v45 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CIWCDMAF MEAS,Ci,%u,Psc,%u,EcNo,%u,Rscp,%u,PathLoss,%u\n", (*&g_MacClockTicksToMsRelation * v44), "LSM", 68, "lsim15_12HandleMobileInfo", *(v43 - 2), *(v43 - 2), *(v43 - 2), *(v43 - 1), *v43);
                      LbsOsaTrace_WriteLog(0xCu, __str, v45, 5, 1);
                    }

                    ++v42;
                    v43 += 12;
                  }

                  while (v42 < *(v39 + 5));
                }

                ++v37;
                v38 += 392;
              }

              while (v37 < *(v20 + 30));
            }

            break;
          case 3:
            v73 = v5;
            v74 = v0;
            if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v46 = mach_continuous_time();
              v47 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CIWCDMAT,Mcc,%u,Mnc,%u,Lac,%u,Ci,%u,UarfcnNt,%u,CparamId,%u,NumMeasRes,%u\n", (*&g_MacClockTicksToMsRelation * v46), "LSM", 68, "lsim15_12HandleMobileInfo", *(v20 + 12), *(v20 + 14), *(v20 + 16), *(v20 + 20), *(v20 + 24), *(v20 + 26), *(v20 + 28));
              LbsOsaTrace_WriteLog(0xCu, __str, v47, 5, 1);
            }

            if (*(v20 + 28))
            {
              v48 = 0;
              v75 = v20 + 32;
              v76 = v7 + 6220 * v19;
              v78 = v76 + 45;
              do
              {
                v77 = v48;
                v49 = (v75 + 772 * v48);
                if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5, 0, 0))
                {
                  bzero(__str, 0x410uLL);
                  v50 = mach_continuous_time();
                  v51 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CIWCDMAT MEASLIST,UarfcnNt,%u,Rssi,%u,NumMeas,%u\n", (*&g_MacClockTicksToMsRelation * v50), "LSM", 68, "lsim15_12HandleMobileInfo", *v49, *(v49 + 2), *(v49 + 3));
                  LbsOsaTrace_WriteLog(0xCu, __str, v51, 5, 1);
                }

                if (*(v49 + 3))
                {
                  v52 = 0;
                  v53 = v49 + 2;
                  v54 = v78;
                  do
                  {
                    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5, 0, 0))
                    {
                      bzero(__str, 0x410uLL);
                      v55 = mach_continuous_time();
                      v56 = &v53[12 * v52];
                      v57 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CIWCDMAT MEAS,Ci,%u,CparamId,%u,Tgsn,%u,Rscp,%u,PathLoss,%u,NumIscp,%u\n", (*&g_MacClockTicksToMsRelation * v55), "LSM", 68, "lsim15_12HandleMobileInfo", *v56, *(v56 + 4), *(v56 + 5), *(v56 + 6), *(v56 + 7), *(v56 + 8));
                      LbsOsaTrace_WriteLog(0xCu, __str, v57, 5, 1);
                    }

                    v58 = &v53[12 * v52];
                    if (*(v58 + 8))
                    {
                      v59 = 0;
                      do
                      {
                        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5, 0, 0))
                        {
                          bzero(__str, 0x410uLL);
                          v60 = mach_continuous_time();
                          v61 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CIWCDMAT ISCP,%u\n", (*&g_MacClockTicksToMsRelation * v60), "LSM", 68, "lsim15_12HandleMobileInfo", *(v54 + v59));
                          LbsOsaTrace_WriteLog(0xCu, __str, v61, 5, 1);
                        }

                        ++v59;
                      }

                      while (v59 < *(v58 + 8));
                    }

                    ++v52;
                    v54 += 24;
                  }

                  while (v52 < *(v49 + 3));
                }

                v48 = v77 + 1;
                v78 += 772;
              }

              while (v77 + 1 < *(v76 + 28));
            }

            break;
          case 4:
            v73 = v5;
            v74 = v0;
            if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v23 = mach_continuous_time();
              v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CILTE,Mcc,%u,Mnc,%u,Ci,%u,Pci,%u,Tac,%u,Rsrp,%u,Rsrq,%u,Earfcn,%u,Ta,%u,NumNmr,%u\n", (*&g_MacClockTicksToMsRelation * v23), "LSM", 68, "lsim15_12HandleMobileInfo", *(v20 + 12), *(v20 + 14), *(v20 + 16), *(v20 + 20), *(v20 + 24), *(v20 + 28), *(v20 + 29), *(v20 + 32), *(v20 + 36), *(v20 + 38));
              LbsOsaTrace_WriteLog(0xCu, __str, v24, 5, 1);
            }

            if (*(v20 + 38))
            {
              v25 = 0;
              v26 = (v7 + 6220 * v19 + 56);
              do
              {
                if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5, 0, 0))
                {
                  bzero(__str, 0x410uLL);
                  v27 = mach_continuous_time();
                  v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CILTE NMR,Mcc,%u,Mnc,%u,Ci,%u,Pci,%u,Rsrp,%u,Rsrq,%u,Tac,%u,Earfcn,%u\n", (*&g_MacClockTicksToMsRelation * v27), "LSM", 68, "lsim15_12HandleMobileInfo", *(v26 - 8), *(v26 - 7), *(v26 - 3), *(v26 - 4), *(v26 - 6), *(v26 - 5), *(v26 - 1), *v26);
                  LbsOsaTrace_WriteLog(0xCu, __str, v28, 5, 1);
                }

                ++v25;
                v26 += 5;
              }

              while (v25 < *(v20 + 38));
            }

            break;
          default:
            goto LABEL_85;
        }
      }

LABEL_87:
      *__str = 0;
      v81 = -1;
      memset_s(v82, 0x1840uLL, 0, 0x1840uLL);
      if (lsim05_37FillSuplLocIdFromLsimLocId(__str, v73, *(v74 + 6232)))
      {
        if (GN_SUPL_Mobile_Info_Ind_In(__str))
        {
          if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5, 0, 0))
          {
            bzero(v79, 0x410uLL);
            v66 = mach_continuous_time();
            v67 = snprintf(v79, 0x40FuLL, "%10u %s%c %s: GN_SUPL_Mobile_Info_Ind_In successful\n", (*&g_MacClockTicksToMsRelation * v66), "LSM", 68, "lsim15_12HandleMobileInfo");
            LbsOsaTrace_WriteLog(0xCu, v79, v67, 5, 1);
          }

          GN_SUPL_Handler();
          v63 = 1;
          goto LABEL_95;
        }

        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
        {
          bzero(v79, 0x410uLL);
          v68 = mach_continuous_time();
          v69 = snprintf(v79, 0x40FuLL, "%10u %s%c %s: GN_SUPL_Mobile_Info_Ind_In failed\n", (*&g_MacClockTicksToMsRelation * v68), "LSM", 87, "lsim15_12HandleMobileInfo");
          LbsOsaTrace_WriteLog(0xCu, v79, v69, 2, 1);
        }
      }

      v63 = 0;
LABEL_95:
      v62 = *(v74 + 6232);
      goto LABEL_96;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v17 = mach_continuous_time();
      v72 = *(v0 + 12);
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SimId,%u\n", (*&g_MacClockTicksToMsRelation * v17));
LABEL_24:
      LbsOsaTrace_WriteLog(0xCu, __str, v12, 2, 1);
    }

LABEL_25:
    lsim15_06SendMobInfoApiStatus(*(v0 + 6232), 2, 0);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
LABEL_98:
    v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v18, "LSM", 73, "lsim15_12HandleMobileInfo");
    goto LABEL_99;
  }

LABEL_100:
  v70 = *MEMORY[0x29EDCA608];
  return 0;
}

void lsim15_06SendMobInfoApiStatus(int a1, int a2, int a3)
{
  v14 = *MEMORY[0x29EDCA608];
  if (a1 == 1)
  {
    v5 = gnssOsa_Calloc("lsim15_06SendMobInfoApiStatus", 116, 1, 8uLL);
    if (v5)
    {
      v6 = v5;
      *v5 = a3;
      v5[1] = a2;
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v7 = mach_continuous_time();
        v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:API_STATUS =>CiCB,Api,%u,Status,%u\n", (*&g_MacClockTicksToMsRelation * v7), "LSM", 73, "lsim15_06SendMobInfoApiStatus", a3, a2);
        LbsOsaTrace_WriteLog(0xCu, __str, v8, 4, 1);
      }

      GNS_ExecuteCiCb(1, 8, v6);
      free(v6);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Type,%u\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 87, "lsim15_06SendMobInfoApiStatus", 515, a1);
    LbsOsaTrace_WriteLog(0xCu, __str, v11, 2, 1);
  }

  v12 = *MEMORY[0x29EDCA608];
}

uint64_t lsim15_13HandleImsiInfo(uint64_t a1)
{
  v26 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim15_13HandleImsiInfo");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_IMSI_INFO_IND\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim15_13HandleImsiInfo");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (a1)
  {
    if (*(a1 + 40) == 255)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SimId,%u\n", (*&g_MacClockTicksToMsRelation * v14), "LSM", 87, "lsim15_13HandleImsiInfo", 515, *(a1 + 40));
        LbsOsaTrace_WriteLog(0xCu, __str, v15, 2, 1);
      }

      lsim15_06SendMobInfoApiStatus(1, 2, 1);
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        goto LABEL_26;
      }
    }

    else if (*(a1 + 39) < 0 && *(a1 + 24) >= 0x100uLL)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
        v7 = *(a1 + 39);
        if (v7 < 0)
        {
          v7 = *(a1 + 24);
        }

        v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ImsiLength,%lu\n", v6, "LSM", 87, "lsim15_13HandleImsiInfo", 514, v7);
        LbsOsaTrace_WriteLog(0xCu, __str, v8, 2, 1);
      }

      lsim15_06SendMobInfoApiStatus(1, 2, 1);
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
LABEL_26:
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "LSM", 73, "lsim15_13HandleImsiInfo");
        LbsOsaTrace_WriteLog(0xCu, __str, v17, 4, 1);
      }
    }

    else
    {
      memset(&v24, 0, sizeof(v24));
      std::string::operator=(&v24, (a1 + 16));
      if (GN_SUPL_Set_SetIdParams(&v24, *(a1 + 40)))
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v11 = mach_continuous_time();
          v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GN_SUPL_Set_SetIdParams Imsi Success\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 68, "lsim15_13HandleImsiInfo");
          LbsOsaTrace_WriteLog(0xCu, __str, v12, 5, 1);
        }

        v13 = 1;
      }

      else
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v18 = mach_continuous_time();
          v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GN_SUPL_Set_SetIdParams Imsi Rejected\n", (*&g_MacClockTicksToMsRelation * v18), "LSM", 87, "lsim15_13HandleImsiInfo");
          LbsOsaTrace_WriteLog(0xCu, __str, v19, 2, 1);
        }

        v13 = 0;
      }

      lsim15_06SendMobInfoApiStatus(1, v13, 1);
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v20 = mach_continuous_time();
        v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v20), "LSM", 73, "lsim15_13HandleImsiInfo");
        LbsOsaTrace_WriteLog(0xCu, __str, v21, 4, 1);
      }

      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Imsi\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 69, "lsim15_13HandleImsiInfo", 517);
      LbsOsaTrace_WriteLog(0xCu, __str, v10, 0, 1);
    }

    lsim15_06SendMobInfoApiStatus(1, 2, 1);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      goto LABEL_26;
    }
  }

  v22 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_2994EBBC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *lsim15_21InitMobileInfo(void)
{
  v2 = *MEMORY[0x29EDCA608];
  g_LsimMobInfo = 0;
  result = gnssOsa_Calloc("lsim15_21InitMobileInfo", 477, 2, 0x184CuLL);
  qword_2A1926810 = result;
  if (result)
  {
    *result = -1;
    result[6220] = -1;
  }

  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lsim15_23CiCbInit(uint64_t result)
{
  v1 = result;
  v8 = *MEMORY[0x29EDCA608];
  if (result)
  {
LABEL_2:
    g_GnsCellInfoCallback = v1;
    goto LABEL_3;
  }

  if (g_GnsCellInfoCallback)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DeRegistering\n", (*&g_MacClockTicksToMsRelation * v3), "LSM", 73, "lsim15_23CiCbInit", 513);
      result = LbsOsaTrace_WriteLog(0xCu, __str, v4, 4, 1);
    }

    goto LABEL_2;
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CbPtr\n", (*&g_MacClockTicksToMsRelation * v5), "LSM", 87, "lsim15_23CiCbInit", 513);
    result = LbsOsaTrace_WriteLog(0xCu, __str, v6, 2, 1);
  }

LABEL_3:
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL GNS_CellInfoInitialize(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "GNS_CellInfoInitialize");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  v4 = gnssOsa_Calloc("GNS_CellInfoInitialize", 526, 1, 0x18uLL);
  v5 = v4;
  if (v4)
  {
    v4[3] = 10;
    *(v4 + 2) = a1;
    AgpsSendFsmMsg(131, 131, 8635139, v4);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "GNS_CellInfoInitialize");
      LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
    }
  }

  result = v5 != 0;
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GNS_CellInfo(const void *a1, char a2)
{
  v21 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "GNS_CellInfo");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (a1)
  {
    v6 = 1;
    v7 = gnssOsa_Calloc("GNS_CellInfo", 587, 1, 0x185CuLL);
    if (v7)
    {
      v8 = v7;
      *(v7 + 1558) = 1;
      v7[12] = a2;
      v9 = v7 + 12;
      memcpy_s("GNS_CellInfo", 599, v7 + 12, 0x184Cu, a1, 0x184CuLL);
      *v9 = a2;
      AgpsSendFsmMsg(131, 131, 8621571, v8);
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 73, "GNS_CellInfo");
        LbsOsaTrace_WriteLog(0xCu, __str, v11, 4, 1);
      }
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "LSM", 73, "GNS_CellInfo");
        LbsOsaTrace_WriteLog(0xCu, __str, v17, 4, 1);
      }

      v6 = 6;
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MobileInfo\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 87, "GNS_CellInfo", 513);
      LbsOsaTrace_WriteLog(0xCu, __str, v13, 2, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v14), "LSM", 73, "GNS_CellInfo");
      LbsOsaTrace_WriteLog(0xCu, __str, v15, 4, 1);
    }

    v6 = 2;
  }

  v18 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t GNS_SetImsi(uint64_t a1, char a2)
{
  v20 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "GNS_SetImsi");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if ((*(a1 + 23) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 8))
    {
LABEL_5:
      v6 = gnssOsa_Calloc("GNS_SetImsi", 628, 1, 0x30uLL);
      if (v6)
      {
        v7 = v6;
        std::string::operator=((v6 + 16), a1);
        v7[40] = a2;
        AgpsSendFsmMsg(131, 131, 8636675, v7);
        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v8 = mach_continuous_time();
          v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "GNS_SetImsi");
          v10 = 1;
          LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
        }

        else
        {
          v10 = 1;
        }
      }

      else
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v15 = mach_continuous_time();
          v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v15), "LSM", 73, "GNS_SetImsi");
          LbsOsaTrace_WriteLog(0xCu, __str, v16, 4, 1);
        }

        v10 = 6;
      }

      goto LABEL_18;
    }
  }

  else if (*(a1 + 23))
  {
    goto LABEL_5;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Imsi\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 87, "GNS_SetImsi", 513);
    LbsOsaTrace_WriteLog(0xCu, __str, v12, 2, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v13 = mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "LSM", 73, "GNS_SetImsi");
    LbsOsaTrace_WriteLog(0xCu, __str, v14, 4, 1);
  }

  v10 = 2;
LABEL_18:
  v17 = *MEMORY[0x29EDCA608];
  return v10;
}

uint64_t asn1PD_PosMethod(uint64_t a1, unsigned __int8 *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v8 = 0;
  BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    if (BitFromBuffer)
    {
      v5 = Asn1Coder::DecodeEnumerationExtension(a1, &v8);
      v8 += 10;
      if (v5)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v5 = Asn1Coder::DecodeInteger(a1, 0, 9u, &v8);
      if (v5)
      {
        goto LABEL_9;
      }
    }

    if (v8 > 0x10u)
    {
      v5 = 4;
      *(a1 + 16) = 4;
      SuplAsn1Logger::TraceError(4u, *(a1 + 8), *(a1 + 12));
    }

    else
    {
      v5 = 0;
      *a2 = v8;
    }
  }

LABEL_9:
  v6 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t asn1PD_QoP(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x29EDCA608];
  BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
LABEL_11:
    SuplAsn1Logger::TraceError(v8, v6, v7);
LABEL_12:
    v10 = *MEMORY[0x29EDCA608];
    return v5;
  }

  v9 = BitFromBuffer;
  *a2 = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_11;
  }

  *(a2 + 1) = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_11;
  }

  *(a2 + 2) = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_11;
  }

  v8 = Asn1Coder::DecodeInteger(a1, 0, 0x7Fu, (a2 + 3));
  if (v8)
  {
    v5 = v8;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_11;
  }

  if (*a2)
  {
    v8 = Asn1Coder::DecodeInteger(a1, 0, 0x7Fu, (a2 + 4));
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_11;
    }
  }

  if (*(a2 + 1))
  {
    v8 = Asn1Coder::DecodeInteger(a1, 0, 0xFFFFu, (a2 + 8));
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_11;
    }
  }

  if (*(a2 + 2))
  {
    v8 = Asn1Coder::DecodeInteger(a1, 0, 7u, (a2 + 12));
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_11;
    }
  }

  if (!v9)
  {
    v5 = 0;
    goto LABEL_12;
  }

  v12 = *MEMORY[0x29EDCA608];

  return Asn1Coder::SkipSequenceExtension(a1);
}

uint64_t asn1PE_UTCTime(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = Asn1Coder::EncodeVisibleString7(a1, 0, 255, *(a2 + 8) - *a2, a2, 0);
  v4 = v3;
  if (v3)
  {
    SuplAsn1Logger::TraceError(v3, *(a1 + 8), *(a1 + 12));
  }

  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t asn1PD_UTCTime(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v7 = 0;
  Asn1Coder::DecodeInteger(a1, 0, 0xFFu, &v7);
  Asn1Coder::GetVisibleStringFromBuffer(a1, 7 * v7, 7, a2);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    SuplAsn1Logger::TraceError(*(a1 + 16), *(a1 + 8), *(a1 + 12));
  }

  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t asn1PE_PositionEstimate_uncertainty(uint64_t a1, unsigned __int8 *a2)
{
  v12 = *MEMORY[0x29EDCA608];
  v4 = Asn1Coder::EncodeInteger(a1, 0, 127, *a2);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
LABEL_5:
    SuplAsn1Logger::TraceError(v4, v6, v7);
    v8 = *MEMORY[0x29EDCA608];
    return v5;
  }

  v4 = Asn1Coder::EncodeInteger(a1, 0, 127, a2[1]);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_5;
  }

  v10 = a2[2];
  v11 = *MEMORY[0x29EDCA608];

  return Asn1Coder::EncodeInteger(a1, 0, 180, v10);
}

uint64_t asn1PD_PositionEstimate_uncertainty(uint64_t a1, _BYTE *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v4 = Asn1Coder::DecodeInteger(a1, 0, 0x7Fu, a2);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
LABEL_5:
    SuplAsn1Logger::TraceError(v4, v6, v7);
    v8 = *MEMORY[0x29EDCA608];
    return v5;
  }

  v4 = Asn1Coder::DecodeInteger(a1, 0, 0x7Fu, a2 + 1);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_5;
  }

  v10 = *MEMORY[0x29EDCA608];

  return Asn1Coder::DecodeInteger(a1, 0, 0xB4u, a2 + 2);
}

uint64_t asn1PE_AltitudeInfo(uint64_t a1, unsigned __int8 *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  Asn1Coder::AddBitToBuffer(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
LABEL_12:
    SuplAsn1Logger::TraceError(v7, v5, v6);
    v12 = *MEMORY[0x29EDCA608];
    return v4;
  }

  v8 = *a2;
  if (v8 >= 2)
  {
    if (v8 == 255)
    {
      v4 = 1;
      *(a1 + 16) = 1;
      v9 = *(a1 + 8);
      v10 = *(a1 + 12);
      v11 = 1;
    }

    else
    {
      v4 = 4;
      *(a1 + 16) = 4;
      v9 = *(a1 + 8);
      v10 = *(a1 + 12);
      v11 = 4;
    }

    SuplAsn1Logger::TraceError(v11, v9, v10);
    goto LABEL_11;
  }

  v4 = Asn1Coder::EncodeInteger(a1, 0, 1, v8);
  if (v4)
  {
LABEL_11:
    SuplAsn1Logger::TraceError(v4, *(a1 + 8), *(a1 + 12));
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = v4;
    goto LABEL_12;
  }

  v7 = Asn1Coder::EncodeInteger(a1, 0, 0x7FFF, *(a2 + 1));
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_12;
  }

  v14 = a2[4];
  v15 = *MEMORY[0x29EDCA608];

  return Asn1Coder::EncodeInteger(a1, 0, 127, v14);
}

uint64_t asn1PD_AltitudeInfo(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x29EDCA608];
  BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
LABEL_10:
    SuplAsn1Logger::TraceError(v8, v6, v7);
LABEL_11:
    v13 = *MEMORY[0x29EDCA608];
    return v5;
  }

  v9 = BitFromBuffer;
  v16 = 0;
  v10 = Asn1Coder::DecodeInteger(a1, 0, 1u, &v16);
  if (v10)
  {
    v5 = v10;
    v11 = *(a1 + 8);
    v12 = *(a1 + 12);
LABEL_9:
    SuplAsn1Logger::TraceError(v10, v11, v12);
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = v5;
    goto LABEL_10;
  }

  if (v16 >= 2u)
  {
    v5 = 4;
    *(a1 + 16) = 4;
    v11 = *(a1 + 8);
    v12 = *(a1 + 12);
    LODWORD(v10) = 4;
    goto LABEL_9;
  }

  *a2 = v16;
  v8 = Asn1Coder::DecodeInteger(a1, 0, 0x7FFFu, (a2 + 2));
  if (v8)
  {
    v5 = v8;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_10;
  }

  v8 = Asn1Coder::DecodeInteger(a1, 0, 0x7Fu, (a2 + 4));
  if (v8)
  {
    v5 = v8;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_10;
  }

  if (!v9)
  {
    v5 = 0;
    goto LABEL_11;
  }

  v15 = *MEMORY[0x29EDCA608];

  return Asn1Coder::SkipSequenceExtension(a1);
}

uint64_t asn1PE_PositionEstimate_latitudeSign(uint64_t a1, unsigned __int8 a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a2 >= 2u)
  {
    if (a2 == 255)
    {
      v3 = 1;
      *(a1 + 16) = 1;
      v4 = *(a1 + 8);
      v5 = *(a1 + 12);
      v6 = 1;
    }

    else
    {
      v3 = 4;
      *(a1 + 16) = 4;
      v4 = *(a1 + 8);
      v5 = *(a1 + 12);
      v6 = 4;
    }

    SuplAsn1Logger::TraceError(v6, v4, v5);
  }

  else
  {
    v3 = Asn1Coder::EncodeInteger(a1, 0, 1, a2);
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  SuplAsn1Logger::TraceError(v3, *(a1 + 8), *(a1 + 12));
LABEL_9:
  v7 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t asn1PD_PositionEstimate_latitudeSign(uint64_t a1, unsigned __int8 *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v10 = 0;
  v4 = Asn1Coder::DecodeInteger(a1, 0, 1u, &v10);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
LABEL_6:
    SuplAsn1Logger::TraceError(v4, v6, v7);
    goto LABEL_7;
  }

  if (v10 > 1u)
  {
    v5 = 4;
    *(a1 + 16) = 4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v4) = 4;
    goto LABEL_6;
  }

  v5 = 0;
  *a2 = v10;
LABEL_7:
  v8 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t asn1PE_PositionEstimate(uint64_t a1, unsigned __int8 *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  Asn1Coder::AddBitToBuffer(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
LABEL_15:
    SuplAsn1Logger::TraceError(v7, v5, v6);
LABEL_16:
    v8 = *MEMORY[0x29EDCA608];
    return v4;
  }

  Asn1Coder::AddBitToBuffer(a1, *a2);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_15;
  }

  Asn1Coder::AddBitToBuffer(a1, a2[1]);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_15;
  }

  Asn1Coder::AddBitToBuffer(a1, a2[2]);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_15;
  }

  v7 = asn1PE_PositionEstimate_latitudeSign(a1, a2[3]);
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_15;
  }

  v7 = Asn1Coder::EncodeInteger(a1, 0, 0x7FFFFF, *(a2 + 1));
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_15;
  }

  v7 = Asn1Coder::EncodeInteger(a1, -8388608, 0x7FFFFF, *(a2 + 2));
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_15;
  }

  if (*a2)
  {
    v7 = asn1PE_PositionEstimate_uncertainty(a1, a2 + 12);
    if (v7)
    {
      v4 = v7;
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      goto LABEL_15;
    }
  }

  if (a2[1])
  {
    v7 = Asn1Coder::EncodeInteger(a1, 0, 100, a2[15]);
    if (v7)
    {
      v4 = v7;
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      goto LABEL_15;
    }
  }

  if (!a2[2])
  {
    v4 = 0;
    goto LABEL_16;
  }

  v10 = *MEMORY[0x29EDCA608];

  return asn1PE_AltitudeInfo(a1, a2 + 16);
}

uint64_t asn1PD_PositionEstimate(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x29EDCA608];
  BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
LABEL_15:
    SuplAsn1Logger::TraceError(v8, v6, v7);
LABEL_16:
    v10 = *MEMORY[0x29EDCA608];
    return v5;
  }

  v9 = BitFromBuffer;
  *a2 = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_15;
  }

  *(a2 + 1) = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_15;
  }

  *(a2 + 2) = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_15;
  }

  v8 = asn1PD_PositionEstimate_latitudeSign(a1, (a2 + 3));
  if (v8)
  {
    v5 = v8;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_15;
  }

  v8 = Asn1Coder::DecodeInteger(a1, 0, 0x7FFFFFu, (a2 + 4));
  if (v8)
  {
    v5 = v8;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_15;
  }

  v8 = Asn1Coder::DecodeInteger(a1, -8388608, 0x7FFFFF, (a2 + 8));
  if (v8)
  {
    v5 = v8;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_15;
  }

  if (*a2)
  {
    v8 = asn1PD_PositionEstimate_uncertainty(a1, (a2 + 12));
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_15;
    }
  }

  if (*(a2 + 1))
  {
    v8 = Asn1Coder::DecodeInteger(a1, 0, 0x64u, (a2 + 15));
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_15;
    }
  }

  if (*(a2 + 2))
  {
    v8 = asn1PD_AltitudeInfo(a1, a2 + 16);
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_15;
    }
  }

  if (!v9)
  {
    v5 = 0;
    goto LABEL_16;
  }

  v12 = *MEMORY[0x29EDCA608];

  return Asn1Coder::SkipSequenceExtension(a1);
}

uint64_t asn1PD_Horvel_bearing(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  Asn1Coder::GetBitStringFromBuffer(a1, 9u, a2, 0);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    SuplAsn1Logger::TraceError(*(a1 + 16), *(a1 + 8), *(a1 + 12));
  }

  v4 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t asn1PD_Horvel_horspeed(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  Asn1Coder::GetBitStringFromBuffer(a1, 0x10u, a2, 0);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    SuplAsn1Logger::TraceError(*(a1 + 16), *(a1 + 8), *(a1 + 12));
  }

  v4 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t asn1PD_Horvel(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
LABEL_7:
    SuplAsn1Logger::TraceError(v8, v6, v7);
LABEL_8:
    v10 = *MEMORY[0x29EDCA608];
    return v5;
  }

  v9 = BitFromBuffer;
  v8 = asn1PD_Horvel_bearing(a1, a2);
  if (v8)
  {
    v5 = v8;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_7;
  }

  v8 = asn1PD_Horvel_horspeed(a1, a2 + 3);
  if (v8)
  {
    v5 = v8;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_7;
  }

  if (!v9)
  {
    v5 = 0;
    goto LABEL_8;
  }

  v12 = *MEMORY[0x29EDCA608];

  return Asn1Coder::SkipSequenceExtension(a1);
}

uint64_t asn1PD_Horandvervel_verdirect(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  Asn1Coder::GetBitStringFromBuffer(a1, 1u, a2, 0);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    SuplAsn1Logger::TraceError(*(a1 + 16), *(a1 + 8), *(a1 + 12));
  }

  v4 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t asn1PD_Horandvervel_bearing(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  Asn1Coder::GetBitStringFromBuffer(a1, 9u, a2, 0);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    SuplAsn1Logger::TraceError(*(a1 + 16), *(a1 + 8), *(a1 + 12));
  }

  v4 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t asn1PD_Horandvervel_horspeed(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  Asn1Coder::GetBitStringFromBuffer(a1, 0x10u, a2, 0);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    SuplAsn1Logger::TraceError(*(a1 + 16), *(a1 + 8), *(a1 + 12));
  }

  v4 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t asn1PD_Horandvervel_verspeed(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  Asn1Coder::GetBitStringFromBuffer(a1, 8u, a2, 0);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    SuplAsn1Logger::TraceError(*(a1 + 16), *(a1 + 8), *(a1 + 12));
  }

  v4 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t asn1PD_Horandvervel(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
LABEL_11:
    SuplAsn1Logger::TraceError(v8, v6, v7);
LABEL_12:
    v10 = *MEMORY[0x29EDCA608];
    return v5;
  }

  v9 = BitFromBuffer;
  v8 = asn1PD_Horandvervel_verdirect(a1, a2);
  if (v8)
  {
    v5 = v8;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_11;
  }

  v8 = asn1PD_Horandvervel_bearing(a1, a2 + 3);
  if (v8)
  {
    v5 = v8;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_11;
  }

  v8 = asn1PD_Horandvervel_horspeed(a1, a2 + 6);
  if (v8)
  {
    v5 = v8;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_11;
  }

  v8 = asn1PD_Horandvervel_verspeed(a1, a2 + 9);
  if (v8)
  {
    v5 = v8;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_11;
  }

  if (!v9)
  {
    v5 = 0;
    goto LABEL_12;
  }

  v12 = *MEMORY[0x29EDCA608];

  return Asn1Coder::SkipSequenceExtension(a1);
}

uint64_t asn1PD_Horveluncert_bearing(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  Asn1Coder::GetBitStringFromBuffer(a1, 9u, a2, 0);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    SuplAsn1Logger::TraceError(*(a1 + 16), *(a1 + 8), *(a1 + 12));
  }

  v4 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t asn1PD_Horveluncert_horspeed(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  Asn1Coder::GetBitStringFromBuffer(a1, 0x10u, a2, 0);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    SuplAsn1Logger::TraceError(*(a1 + 16), *(a1 + 8), *(a1 + 12));
  }

  v4 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t asn1PD_Horveluncert_uncertspeed(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  Asn1Coder::GetBitStringFromBuffer(a1, 8u, a2, 0);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    SuplAsn1Logger::TraceError(*(a1 + 16), *(a1 + 8), *(a1 + 12));
  }

  v4 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t asn1PD_Horveluncert(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
LABEL_9:
    SuplAsn1Logger::TraceError(v8, v6, v7);
LABEL_10:
    v10 = *MEMORY[0x29EDCA608];
    return v5;
  }

  v9 = BitFromBuffer;
  v8 = asn1PD_Horveluncert_bearing(a1, a2);
  if (v8)
  {
    v5 = v8;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_9;
  }

  v8 = asn1PD_Horveluncert_horspeed(a1, a2 + 3);
  if (v8)
  {
    v5 = v8;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_9;
  }

  v8 = asn1PD_Horveluncert_uncertspeed(a1, a2 + 6);
  if (v8)
  {
    v5 = v8;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_9;
  }

  if (!v9)
  {
    v5 = 0;
    goto LABEL_10;
  }

  v12 = *MEMORY[0x29EDCA608];

  return Asn1Coder::SkipSequenceExtension(a1);
}

uint64_t asn1PD_Horandveruncert_verspeed(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  Asn1Coder::GetBitStringFromBuffer(a1, 8u, a2, 0);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    SuplAsn1Logger::TraceError(*(a1 + 16), *(a1 + 8), *(a1 + 12));
  }

  v4 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t asn1PD_Horandveruncert_horuncertspeed(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  Asn1Coder::GetBitStringFromBuffer(a1, 8u, a2, 0);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    SuplAsn1Logger::TraceError(*(a1 + 16), *(a1 + 8), *(a1 + 12));
  }

  v4 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t asn1PD_Horandveruncert_veruncertspeed(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  Asn1Coder::GetBitStringFromBuffer(a1, 8u, a2, 0);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    SuplAsn1Logger::TraceError(*(a1 + 16), *(a1 + 8), *(a1 + 12));
  }

  v4 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t asn1PD_Horandveruncert(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
LABEL_14:
    SuplAsn1Logger::TraceError(v8, v6, v7);
LABEL_15:
    v10 = *MEMORY[0x29EDCA608];
    return v5;
  }

  v9 = BitFromBuffer;
  Asn1Coder::GetBitStringFromBuffer(a1, 1u, a2, 0);
  v5 = *(a1 + 16);
  if (*(a1 + 16) || (Asn1Coder::GetBitStringFromBuffer(a1, 9u, a2 + 3, 0), v5 = *(a1 + 16), *(a1 + 16)) || (Asn1Coder::GetBitStringFromBuffer(a1, 0x10u, a2 + 6, 0), v5 = *(a1 + 16), *(a1 + 16)))
  {
    SuplAsn1Logger::TraceError(*(a1 + 16), *(a1 + 8), *(a1 + 12));
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = v5;
    goto LABEL_14;
  }

  v8 = asn1PD_Horandveruncert_verspeed(a1, a2 + 9);
  if (v8)
  {
    v5 = v8;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_14;
  }

  v8 = asn1PD_Horandveruncert_horuncertspeed(a1, a2 + 12);
  if (v8)
  {
    v5 = v8;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_14;
  }

  v8 = asn1PD_Horandveruncert_veruncertspeed(a1, a2 + 15);
  if (v8)
  {
    v5 = v8;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_14;
  }

  if (!v9)
  {
    v5 = 0;
    goto LABEL_15;
  }

  v12 = *MEMORY[0x29EDCA608];

  return Asn1Coder::SkipSequenceExtension(a1);
}

uint64_t asn1PD_Velocity(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x29EDCA608];
  BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
LABEL_3:
    SuplAsn1Logger::TraceError(v8, v6, v7);
LABEL_4:
    v9 = *MEMORY[0x29EDCA608];
    return v5;
  }

  if (!BitFromBuffer)
  {
    v17 = 0;
    v8 = Asn1Coder::DecodeInteger(a1, 0, 3u, &v17);
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_3;
    }

    v12 = v17;
    *a2 = v17;
    if (v12 <= 1)
    {
      if (v12)
      {
        v16 = asn1PD_Horandvervel(a1, (a2 + 56));
      }

      else
      {
        v16 = asn1PD_Horvel(a1, (a2 + 8));
      }
    }

    else if (v12 == 2)
    {
      v16 = asn1PD_Horveluncert(a1, (a2 + 152));
    }

    else
    {
      if (v12 != 3)
      {
        if (v12 == 255)
        {
          v5 = 1;
          *(a1 + 16) = 1;
          v13 = *(a1 + 8);
          v14 = *(a1 + 12);
          v15 = 1;
        }

        else
        {
          v5 = 4;
          *(a1 + 16) = 4;
          v13 = *(a1 + 8);
          v14 = *(a1 + 12);
          v15 = 4;
        }

        SuplAsn1Logger::TraceError(v15, v13, v14);
LABEL_25:
        v6 = *(a1 + 8);
        v7 = *(a1 + 12);
        LODWORD(v8) = v5;
        goto LABEL_3;
      }

      v16 = asn1PD_Horandveruncert(a1, (a2 + 224));
    }

    v5 = v16;
    if (!v16)
    {
      goto LABEL_4;
    }

    goto LABEL_25;
  }

  v11 = *MEMORY[0x29EDCA608];

  return Asn1Coder::SkipChoiceExtension(a1);
}

uint64_t asn1PE_Position(uint64_t a1, unsigned __int8 *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  Asn1Coder::AddBitToBuffer(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
LABEL_7:
    SuplAsn1Logger::TraceError(v7, v5, v6);
    v8 = *MEMORY[0x29EDCA608];
    return v4;
  }

  Asn1Coder::AddBitToBuffer(a1, *a2);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_7;
  }

  v7 = asn1PE_UTCTime(a1, (a2 + 8));
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_7;
  }

  v10 = *MEMORY[0x29EDCA608];

  return asn1PE_PositionEstimate(a1, a2 + 32);
}

uint64_t asn1PD_Position(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x29EDCA608];
  BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
LABEL_9:
    SuplAsn1Logger::TraceError(v8, v6, v7);
LABEL_10:
    v10 = *MEMORY[0x29EDCA608];
    return v5;
  }

  v9 = BitFromBuffer;
  *a2 = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_9;
  }

  v8 = asn1PD_UTCTime(a1, (a2 + 8));
  if (v8)
  {
    v5 = v8;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_9;
  }

  v8 = asn1PD_PositionEstimate(a1, a2 + 32);
  if (v8)
  {
    v5 = v8;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_9;
  }

  if (*a2)
  {
    v8 = asn1PD_Velocity(a1, a2 + 56);
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_9;
    }
  }

  if (!v9)
  {
    v5 = 0;
    goto LABEL_10;
  }

  v12 = *MEMORY[0x29EDCA608];

  return Asn1Coder::SkipSequenceExtension(a1);
}

_LPP_TRANSACTION *lpp_transaction_start(uint64_t a1, _DWORD *a2, int a3)
{
  v22 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    v7 = 2;
    v8 = 16426;
    v9 = 445;
    goto LABEL_40;
  }

  if (!a2)
  {
    v7 = 2;
    v8 = 16427;
    v9 = 451;
    goto LABEL_40;
  }

  v4 = a3;
  if (*a2 == 1)
  {
    v6 = 0;
    if (a3 > 4)
    {
      if (a3 <= 6)
      {
        if (a3 == 5)
        {
          v4 = 1;
          goto LABEL_29;
        }

        v4 = 2;
        goto LABEL_27;
      }

      if (a3 == 7)
      {
        v6 = 0;
        v4 = 5;
        goto LABEL_29;
      }

      if (a3 != 8)
      {
        goto LABEL_41;
      }
    }

    else if ((a3 - 2) >= 3 && a3)
    {
      if (a3 != 1)
      {
        goto LABEL_41;
      }

      ++*(a1 + 24);
LABEL_26:
      v4 = 3;
LABEL_27:
      v10 = lpp_transaction_assistance_data_abort;
LABEL_28:
      v6 = v10;
      goto LABEL_29;
    }

    v7 = 2;
    v8 = 16390;
    v9 = 518;
    goto LABEL_40;
  }

  if (*a2)
  {
    v7 = 1;
    v8 = 16436;
    v9 = 524;
    goto LABEL_40;
  }

  v6 = 0;
  if (a3 <= 2)
  {
    if (!a3)
    {
LABEL_29:
      v11 = operator new(0x1E8uLL, MEMORY[0x29EDC9418]);
      if (!v11)
      {
        v7 = 2;
        v8 = 12288;
        v9 = 538;
        goto LABEL_40;
      }

      v12 = v11;
      _LPP_TRANSACTION::_LPP_TRANSACTION(v11);
      v13 = *a2;
      *(v12 + 2) = *a2;
      if (v13 == 1)
      {
        v14 = *(a1 + 24);
        *(v12 + 5) = v14;
        *(a1 + 24) = v14 + 1;
      }

      *(v12 + 24) = v4;
      *(v12 + 28) = *(a1 + 16);
      *(v12 + 25) = 0;
      *(v12 + 60) = v6;
      v15 = *(a1 + 40);
      if (v15)
      {
        v16 = *v15;
        *v15 = v12;
        *v12 = v16;
        *(v12 + 1) = 0;
        if (v16)
        {
          v15 = v16;
        }

        v15[1] = v12;
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v17 = mach_continuous_time();
        v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Transaction Data,Type,%hhu,SessionId,%u,CurState,%u,NextState,Initial\n", (*&g_MacClockTicksToMsRelation * v17), "PSP", 68, "lpp_transaction_start", *(v12 + 24), *(v12 + 8), *(v12 + 25));
        LbsOsaTrace_WriteLog(0x13u, __str, v18, 5, 1);
      }

      v6 = v12;
      goto LABEL_41;
    }

    if (a3 != 1)
    {
      if (a3 != 2)
      {
        goto LABEL_41;
      }

      v4 = 4;
      v10 = lpp_transaction_location_information_abort;
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  if ((a3 - 3) < 6)
  {
    v7 = 2;
    v8 = 16390;
    v9 = 483;
LABEL_40:
    ms_report_exception(v7, v8, v9, "lpp_transaction_start");
    v6 = 0;
  }

LABEL_41:
  v19 = *MEMORY[0x29EDCA608];
  return v6;
}

void lpp_transaction_assistance_data_abort(unsigned __int8 *a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v1 = a1[24];
  if (v1 > 6)
  {
    goto LABEL_9;
  }

  if (((1 << v1) & 0x73) == 0)
  {
    if (!lpp_session_detect(a1 + 28))
    {
      v8 = *MEMORY[0x29EDCA608];
      v4 = 16388;
      v5 = 2097;
      goto LABEL_4;
    }

    a1[25] = 2;
LABEL_9:
    v7 = *MEMORY[0x29EDCA608];
    return;
  }

  v2 = *MEMORY[0x29EDCA608];
  v3 = *MEMORY[0x29EDCA608];
  v4 = 16409;
  v5 = 2107;
LABEL_4:

  ms_report_exception(2, v4, v5, "lpp_transaction_assistance_data_abort");
}

void lpp_transaction_location_information_abort(uint64_t a1, uint64_t a2, int a3)
{
  v17[36] = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 24);
  if (v3 > 6)
  {
    goto LABEL_15;
  }

  if (v3 == 4)
  {
    v9 = lpp_session_detect((a1 + 28));
    if (!v9)
    {
      v15 = *MEMORY[0x29EDCA608];
      v5 = 16388;
      v6 = 1996;
      goto LABEL_4;
    }

    if (*(a1 + 48) == 1)
    {
      v10 = v9;
      if (a3 == 1)
      {
        for (i = 0; i != 288; i += 48)
        {
          v12 = &v16[i];
          *(v12 + 5) = 0;
          *(v12 + 12) = 0;
          *(v12 + 2) = 0;
          *(v12 + 3) = 0;
          *(v12 + 1) = 0;
          *(v12 + 8) = 0;
        }

        v13 = gnssOsa_Calloc("posp_alloc", 18, 1, 0x578uLL);
        v17[2] = v13;
        v13[12] = 6;
        v13[14] = 0;
        v13[16] = 0;
        *(v13 + 76) = 1;
        v13[18] = 2;
        v16[0] = 1;
        *v13 = *(a1 + 16);
        *(v13 + 4) = 257;
        *(v13 + 1392) = 1;
        lpp_transaction_send_uplink_message(a1, v17);
      }

      *(a1 + 48) = 4;
      *(v10 + 68) = 0x10000000000;
    }

    *(a1 + 25) = 2;
    lpp_transaction_location_information_cleanup(a1);
LABEL_15:
    v14 = *MEMORY[0x29EDCA608];
    return;
  }

  v4 = *MEMORY[0x29EDCA608];
  v5 = 16409;
  v6 = 2010;
LABEL_4:

  ms_report_exception(2, v5, v6, "lpp_transaction_location_information_abort");
}

uint64_t *lpp_lazy_transaction_detect(uint64_t a1, _DWORD *a2, int a3)
{
  v9 = *MEMORY[0x29EDCA608];
  for (i = **(a1 + 40); i; i = *i)
  {
    if (*(i + 4) == *a2)
    {
      v6 = *(i + 24);
      if (v6 == lpp_transaction_get_transaction_type(a3) && *(i + 25) == 2)
      {
        break;
      }
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return i;
}

uint64_t lpp_transaction_get_transaction_type(int a1)
{
  v7 = *MEMORY[0x29EDCA608];
  result = 6;
  if (a1 <= 4)
  {
    if (a1 <= 2)
    {
      if (a1 == 2)
      {
        v3 = 4;
      }

      else
      {
        v3 = 6;
      }

      if (a1 == 1)
      {
        v4 = 3;
      }

      else
      {
        v4 = v3;
      }

      if (a1)
      {
        result = v4;
      }

      else
      {
        result = 0;
      }

      goto LABEL_23;
    }

LABEL_21:
    ms_report_exception(2, 16390, 689, "lpp_transaction_get_transaction_type");
    result = 6;
    goto LABEL_23;
  }

  if (a1 > 6)
  {
    if (a1 == 7)
    {
      result = 5;
      goto LABEL_23;
    }

    if (a1 == 8)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (a1 == 6)
    {
      v5 = 2;
    }

    else
    {
      v5 = 6;
    }

    if (a1 == 5)
    {
      result = 1;
    }

    else
    {
      result = v5;
    }
  }

LABEL_23:
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lpp_transaction_abort(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 25);
  if (v2 == 1)
  {
    v3 = *(a1 + 480);
    if (v3)
    {
      v3(a1);
      *(a1 + 480) = 0;
      SendStatusReport(*(a1 + 32), 4, 0, 0, 0, 255);
    }
  }

  *(a1 + 25) = 2;
  result = LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Transaction Data,Type,%hhu,SessionId,%u,CurState,%u,NextState,%u\n", (*&g_MacClockTicksToMsRelation * v5), "PSP", 68, "lpp_transaction_abort", *(a1 + 24), *(a1 + 32), v2, *(a1 + 25));
    result = LbsOsaTrace_WriteLog(0x13u, __str, v6, 5, 1);
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lpp_transaction_process_downlink_message(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (a2)
    {
      v3 = *(a2 + 16);
      if (v3)
      {
        v5 = lpp_transaction_convert_air_msg_to_event_type(*(v3 + 48));
        v6 = *(a2 + 16);
        v7 = **(a1 + 40);
        if (v7)
        {
          while (v7[4] != *v6 || v7[5] != v6[1])
          {
            v7 = *v7;
            if (!v7)
            {
              goto LABEL_8;
            }
          }
        }

        else
        {
LABEL_8:
          v7 = lpp_lazy_transaction_detect(a1, v6, v5);
          if (!v7)
          {
            goto LABEL_11;
          }
        }

        if (*(v7 + 25) != 2)
        {
          goto LABEL_12;
        }

        lpp_transaction_delete(v7);
LABEL_11:
        v7 = lpp_transaction_start(a1, *(a2 + 16), v5);
        if (!v7)
        {
LABEL_27:
          result = 5;
          goto LABEL_28;
        }

LABEL_12:
        v8 = *(v7 + 24);
        if (*(v7 + 24))
        {
          if (!*(a1 + 84) && *(a1 + 16) != 1)
          {
            v14[0] = 0x10000000001;
            v9 = lpp_transaction_start(a1, v14, 5);
            if (v9)
            {
              lpp_transaction_act(v9, 5, 0);
              *(a1 + 84) = 1;
            }

            v8 = *(v7 + 24);
          }

          if (v8 == 3)
          {
            *(v7 + 40) = *(*(a2 + 16) + 9);
          }

          else if (v8 == 2)
          {
            *(v7 + 41) = *(*(a2 + 16) + 9);
          }
        }

        else
        {
          *(a1 + 84) = 1;
        }

        lpp_transaction_act(v7, v5, (*(a2 + 16) + 48));
        goto LABEL_27;
      }
    }

    v10 = 16444;
    v11 = 768;
  }

  else
  {
    v10 = 16426;
    v11 = 762;
  }

  ms_report_exception(2, v10, v11, "lpp_transaction_process_downlink_message");
  result = 0;
LABEL_28:
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lpp_transaction_convert_air_msg_to_event_type(uint64_t result)
{
  v5 = *MEMORY[0x29EDCA608];
  if (result > 5)
  {
    if ((result - 8) >= 8)
    {
      if (result == 6)
      {
        result = 4;
        goto LABEL_9;
      }

      if (result == 7)
      {
        result = 3;
        goto LABEL_9;
      }

      goto LABEL_18;
    }

    goto LABEL_7;
  }

  if (result > 2)
  {
    if (result == 3)
    {
      result = 1;
      goto LABEL_9;
    }

    if (result == 4)
    {
      result = 2;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if ((result - 1) < 2)
  {
LABEL_7:
    v1 = 2;
    v2 = 16390;
    v3 = 1012;
LABEL_8:
    ms_report_exception(v1, v2, v3, "lpp_transaction_convert_air_msg_to_event_type");
    result = 8;
    goto LABEL_9;
  }

  if (result)
  {
LABEL_18:
    v1 = 1;
    v2 = 16436;
    v3 = 1015;
    goto LABEL_8;
  }

LABEL_9:
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lpp_transaction_delete(uint64_t result)
{
  v10 = *MEMORY[0x29EDCA608];
  if (result)
  {
    v1 = result;
    v2 = lpp_session_detect((result + 28));
    lpp_transaction_abort(v1);
    if (v2)
    {
      v3 = v2[5];
      if (v3)
      {
        v5 = *v1;
        v4 = v1[1];
        if (v4)
        {
          v6 = v1[1];
        }

        else
        {
          v6 = v2[5];
        }

        *v6 = v5;
        if (v5)
        {
          v3 = v5;
        }

        *(v3 + 8) = v4;
        *v1 = 0;
        v1[1] = 0;
      }
    }

    memset_s(v1, 0x1E8uLL, 0, 0x1E8uLL);
    v7 = *MEMORY[0x29EDCA608];

    JUMPOUT(0x29C29EB20);
  }

  v8 = *MEMORY[0x29EDCA608];
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

void lpp_transaction_act(uint64_t a1, int a2, _BYTE *a3)
{
  v28[34] = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    v6 = 16425;
    v7 = 884;
    goto LABEL_5;
  }

  v4 = *(a1 + 24);
  if (v4 == 6)
  {
    v5 = *MEMORY[0x29EDCA608];
    v6 = 16390;
    v7 = 890;
LABEL_5:

    ms_report_exception(2, v6, v7, "lpp_transaction_act");
    return;
  }

  v8 = 0;
  v26[0] = 0;
  do
  {
    v9 = &v26[v8];
    *(v9 + 5) = 0;
    *(v9 + 12) = 0;
    *(v9 + 2) = 0;
    *(v9 + 3) = 0;
    *(v9 + 1) = 0;
    v8 += 48;
    *(v9 + 8) = 0;
  }

  while (v8 != 288);
  v10 = *(a1 + 25);
  v11 = *(*(&LPP_EVENT_TABLE + v4) + 8 * v10 + a2);
  if (v11 == 2)
  {
    ms_report_exception(2, 16432, 935, "lpp_transaction_act");
LABEL_22:
    v13 = 0;
    goto LABEL_23;
  }

  if (v11 != 1)
  {
    if (!v11)
    {
      if (!*(a1 + 25))
      {
        *(a1 + 25) = 1;
      }

      if (a2 <= 7)
      {
        if (a2 > 3)
        {
          if (a2 > 5)
          {
            if (a2 == 6)
            {
              v12 = 1;
              v26[0] = 1;
              lpp_transaction_process_request_assistance_data(a1, a3, v27);
              goto LABEL_52;
            }

            v24 = lpp_transaction_process_provide_location_information(a1, a3, v26);
LABEL_51:
            v12 = v24;
            goto LABEL_52;
          }

          if (a2 != 4)
          {
            v12 = 1;
            v26[0] = 1;
            lpp_transaction_process_provide_capabilities(a1, v27);
            goto LABEL_52;
          }
        }

        else
        {
          if (a2 <= 1)
          {
            if (!a2)
            {
              v12 = 1;
              v26[0] = 1;
              lpp_transaction_process_request_capabilities(a1, a3, v27);
LABEL_52:
              v13 = v12 != 0;
              goto LABEL_23;
            }

            v26[0] = 1;
            lpp_transaction_process_provide_assistance_data(a1, a3);
LABEL_49:
            v12 = 0;
            goto LABEL_52;
          }

          if (a2 == 2)
          {
            v26[0] = 1;
            v24 = lpp_transaction_process_request_location_information(a1, a3, v27);
            goto LABEL_51;
          }
        }

        lpp_transaction_abort(a1);
        goto LABEL_49;
      }
    }

    goto LABEL_22;
  }

  v13 = 1;
  lpp_transaction_abort(a1);
  v14 = gnssOsa_Calloc("posp_alloc", 18, 1, 0x578uLL);
  v28[0] = v14;
  v14[8] = 1;
  *v14 = *(a1 + 16);
  v14[32] = 0;
  v14[9] = 0;
  v14[1392] = 1;
  *(v14 + 10) = 0;
  *(v14 + 12) = 7;
  *(v14 + 14) = 0;
  v14[68] = 1;
  *(v14 + 16) = 0;
  v26[0] = 1;
LABEL_23:
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v15 = mach_continuous_time();
    v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Transaction Data,Type,%hhu,SessionId,%u,CurState,%u,NextState,%u\n", (*&g_MacClockTicksToMsRelation * v15), "PSP", 68, "lpp_transaction_act", *(a1 + 24), *(a1 + 32), v10, *(a1 + 25));
    LbsOsaTrace_WriteLog(0x13u, __str, v16, 5, 1);
  }

  v17 = v26[0];
  if (v13)
  {
    if (v26[0])
    {
      v18 = 0;
      v19 = v27;
      do
      {
        v20 = lpp_session_detect((a1 + 28));
        if (v20)
        {
          (v20[7])(v20, v19);
        }

        ++v18;
        v19 += 48;
      }

      while (v18 < v26[0]);
    }
  }

  else
  {
    if (v26[0])
    {
      v21 = 0;
      v22 = v28;
      do
      {
        if (*v22)
        {
          free(*v22);
          *v22 = 0;
        }

        ++v21;
        v22 += 6;
      }

      while (v21 < v17);
    }

    if (*(a1 + 25) == 2)
    {
      lpp_transaction_delete(a1);
    }
  }

  v23 = *MEMORY[0x29EDCA608];
}

void lpp_transaction_send_uplink_message(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (a2)
    {
      v2 = lpp_session_detect((a1 + 28));
      if (v2)
      {
        v3 = v2[7];
        v4 = *MEMORY[0x29EDCA608];

        v3();
      }

      else
      {
        v9 = *MEMORY[0x29EDCA608];
      }

      return;
    }

    v8 = *MEMORY[0x29EDCA608];
    v6 = 16442;
    v7 = 863;
  }

  else
  {
    v5 = *MEMORY[0x29EDCA608];
    v6 = 16425;
    v7 = 857;
  }

  ms_report_exception(2, v6, v7, "lpp_transaction_send_uplink_message");
}

uint64_t lpp_transaction_process_request_capabilities(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x29EDCA608];
  v6 = gnssOsa_Calloc("posp_alloc", 18, 1, 0x578uLL);
  *(a3 + 16) = v6;
  v6[1392] = 1;
  *(v6 + 10) = 0;
  *(v6 + 12) = 1;
  v7 = *(a3 + 16);
  *(v7 + 8) = 1;
  *v7 = *(a1 + 16);
  v8 = *(a3 + 16);
  *(v8 + 9) = 1;
  *(v8 + 32) = 1;
  *(v8 + 20) = 1;
  *(v8 + 28) = 0;
  if (*(a2 + 8))
  {
    *(v8 + 56) = 1;
  }

  else
  {
    *(v8 + 56) = 0;
    if (*(a2 + 16))
    {
      *(v8 + 64) = 1;
    }

    else
    {
      *(v8 + 64) = 0;
      *(v8 + 76) = 0;
      if (*(GetStaticLppPrivate() + 2) == 1 && *(a2 + 32) == 1)
      {
        *(v8 + 240) = 1;
        *(v8 + 224) = *(a2 + 30);
        *(v8 + 104) = *(a2 + 29);
        if ((*(GetStaticLppPrivate() + 3) & 6) != 0 && *(a2 + 31) == 1)
        {
          *(v8 + 232) = 1;
          *(v8 + 237) = 1;
        }

        else
        {
          *(v8 + 232) = 0;
          *(v8 + 237) = 0;
        }
      }

      else
      {
        *(v8 + 240) = 0;
      }

      *(v8 + 408) = 0;
      lpp_transaction_add_provideCapabilities_r9((v8 + 72));
    }
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Transaction Data,Type,%hhu,SessionId,%u,CurState,%u,NextState,Terminated\n", (*&g_MacClockTicksToMsRelation * v10), "PSP", 68, "lpp_transaction_process_request_capabilities", *(a1 + 24), *(a1 + 32), *(a1 + 25));
    result = LbsOsaTrace_WriteLog(0x13u, __str, v11, 5, 1);
  }

  *(a1 + 25) = 2;
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

_BYTE *lpp_transaction_add_provideCapabilities_r9(_BYTE *result)
{
  v1 = result;
  v4 = *MEMORY[0x29EDCA608];
  if (result[168] == 1)
  {
    result = lpp_transaction_add_provideCapabilities_a_gnss((result + 8));
  }

  if (v1[424] == 1)
  {
    v2 = *MEMORY[0x29EDCA608];

    return lpp_transaction_add_provideCapabilities_wlan(v1 + 392);
  }

  else
  {
    v3 = *MEMORY[0x29EDCA608];
  }

  return result;
}

uint64_t lpp_transaction_process_provide_capabilities(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x29EDCA608];
  v4 = gnssOsa_Calloc("posp_alloc", 18, 1, 0x578uLL);
  *(a2 + 16) = v4;
  v4[1392] = 1;
  *(v4 + 12) = 1;
  v5 = *(a2 + 16);
  *(v5 + 8) = 1;
  *v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  *(v6 + 9) = 1;
  *(v6 + 32) = 1;
  *(v6 + 20) = 1;
  *(v6 + 28) = 0;
  *(v6 + 40) = 0;
  *(v6 + 48) = 1;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 76) = 0;
  if (*(GetStaticLppPrivate() + 2) == 1)
  {
    *(v6 + 240) = 1;
    *(v6 + 224) = 1;
    *(v6 + 104) = 1;
    if ((*(GetStaticLppPrivate() + 3) & 6) != 0)
    {
      *(v6 + 232) = 1;
      *(v6 + 237) = 1;
    }

    else
    {
      *(v6 + 232) = 0;
      *(v6 + 237) = 0;
    }
  }

  else
  {
    *(v6 + 240) = 0;
  }

  *(v6 + 408) = 0;
  *(v6 + 496) = *(GetStaticLppPrivate() + 4) == 1;
  lpp_transaction_add_provideCapabilities_r9((v6 + 72));
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Transaction Data,Type,%hhu,SessionId,%u,CurState,%u,NextState,Terminated\n", (*&g_MacClockTicksToMsRelation * v7), "PSP", 68, "lpp_transaction_process_provide_capabilities", *(a1 + 24), *(a1 + 32), *(a1 + 25));
    LbsOsaTrace_WriteLog(0x13u, __str, v8, 5, 1);
  }

  *(a1 + 25) = 2;
  v9 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t lpp_transaction_process_request_assistance_data(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = *MEMORY[0x29EDCA608];
  v6 = gnssOsa_Calloc("posp_alloc", 18, 1, 0x578uLL);
  *(a3 + 16) = v6;
  v7 = v6;
  if (*(a1 + 20) == 256)
  {
LABEL_4:
    v7[1392] = 1;
    *(v7 + 10) = 0;
    v8 = 2;
    *(v7 + 12) = 2;
    v9 = *(a3 + 16);
    *(v9 + 8) = 1;
    *v9 = *(a1 + 16);
    v10 = *(a3 + 16);
    if (*(a1 + 20) == 256)
    {
      *(v10 + 4) = 0;
    }

    *(v10 + 9) = 0;
    *(v6 + 10) = 0;
    *(v6 + 12) = 2;
    *(v6 + 14) = 0;
    *(v6 + 16) = 0;
    v6[144] = 1;
    v6[136] = 1;
    StaticLppPrivate = GetStaticLppPrivate();
    lpp_fill_in_bitstr_from_ulong(StaticLppPrivate[6], 0x1CuLL, (v6 + 120));
    *(v6 + 11) = 0x100000003;
    v12 = gnssOsa_Calloc("posp_alloc", 18, 1, 0x10uLL);
    *v12 = 0;
    *(v6 + 9) = v12;
    *(v6 + 10) = v12;
    do
    {
      v13 = gnssOsa_Calloc("posp_alloc", 18, 1, 0x10uLL);
      **(v6 + 10) = v13;
      *(v6 + 10) = v13;
      --v8;
    }

    while (v8);
    v14 = GetStaticLppPrivate();
    v15 = v14[22] == 1;
    if (v14[22] == 1)
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    *(v6 + 28) = v16;
    *(v6 + 29) = 1;
    if (v15)
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v18 = gnssOsa_Calloc("posp_alloc", 18, 1, 0x10uLL);
    *v18 = 0;
    *(v6 + 12) = v18;
    *(v6 + 13) = v18;
    v19 = v17 - 1;
    do
    {
      v20 = gnssOsa_Calloc("posp_alloc", 18, 1, 0x10uLL);
      **(v6 + 13) = v20;
      *(v6 + 13) = v20;
      --v19;
    }

    while (v19);
    v21 = GetStaticLppPrivate();
    v22 = *(v21 + 18) | (*(v21 + 11) << 32);
    v23 = *(v6 + 9);
    v24 = *(v6 + 12);
    v25 = *(v21 + 18) / 0x64u;
    *(v23 + 8) = v25;
    LOBYTE(v25) = v22 - 100 * v25;
    v26 = *v23;
    v26[2] = v25 / 0xAu;
    *(*v26 + 8) = v25 % 0xAu;
    if ((v22 & 0xFF00000000) == 0x100000000)
    {
      v27 = (v22 & 0xFFFFFFFFFFFFLL) >> 16;
      v24[2] = v27 / 0x64u;
      LOWORD(v27) = v27 % 0x64u;
      v24 = *v24;
    }

    else
    {
      v27 = v22 >> 16;
    }

    v24[2] = v27 / 0xAu;
    *(*v24 + 8) = v27 % 0xAu;
    if (*a2)
    {
      goto LABEL_20;
    }

    v29 = *(a2 + 64);
    if (*(GetStaticLppPrivate() + 2) && (v29 & 1) != 0)
    {
      *(a1 + 40) |= 1u;
      v6[288] = 1;
      v30 = *(a2 + 16);
      if ((v30 & 0x64) != 0)
      {
        v6[248] = 1;
        v6[184] = 0;
        if ((v30 & 0x40) != 0)
        {
          *(v6 + 21) = 0x100000001;
          v31 = gnssOsa_Calloc("posp_alloc", 18, 1, 0x10uLL);
          *v31 = 0;
          *(v6 + 19) = v31;
          *(v6 + 20) = v31;
          v30 = *(a2 + 16);
          if ((v30 & 0x40) != 0)
          {
            v6[184] = 1;
            v31[2] = 0;
            *(v6 + 88) = 257;
            v6[179] = 0;
          }
        }

        v6[192] = (v30 & 0x20) != 0;
        if ((v30 & 4) != 0)
        {
          v6[224] = 0;
          v6[216] = 0;
          v32 = 1;
        }

        else
        {
          v32 = 0;
        }

        v6[232] = v32;
        v6[240] = 0;
        v30 = *(a2 + 16);
      }

      else
      {
        v6[248] = 0;
      }

      if ((v30 & 0x19B) != 0)
      {
        v6[280] = 1;
        *(v6 + 34) = 0x100000001;
        v33 = gnssOsa_Calloc("posp_alloc", 18, 1, 0x150uLL);
        v34 = v33;
        *v33 = 0;
        *(v6 + 32) = v33;
        *(v6 + 33) = v33;
        *(v33 + 2) = 0;
        v33[16] = 0;
        v33[48] = 0;
        v33[80] = 0;
        if ((*(a2 + 16) & 8) != 0)
        {
          v33[176] = 1;
          *(v33 + 22) = 0;
          *(v33 + 24) = *(a2 + 18);
          *(v33 + 25) = *(a2 + 20);
          *(v33 + 26) = *(a2 + 22);
          v35 = v33 + 136;
          if (*(a2 + 21))
          {
            *v35 = 1;
            if (*(a2 + 21))
            {
              *(v33 + 33) = 1;
              *(v33 + 32) = *(a2 + 21);
              v36 = gnssOsa_Calloc("posp_alloc", 18, 1, 0x30uLL);
              *(v34 + 14) = v36;
              v37 = v34 + 112;
              *v36 = 0;
              *(v34 + 15) = *(v34 + 14);
              LODWORD(v38) = *(a2 + 21);
              if (v38 >= 2)
              {
                v39 = 1;
                do
                {
                  **(v34 + 15) = gnssOsa_Calloc("posp_alloc", 18, 1, 0x30uLL);
                  *(v34 + 15) = **(v34 + 15);
                  ++v39;
                  v38 = *(a2 + 21);
                }

                while (v39 < v38);
              }

              if (v38)
              {
                v40 = 0;
                do
                {
                  v37 = *v37;
                  *(v37 + 2) = *(a2 + v40 + 31);
                  lpp_fill_in_bitstr_from_byte(v37 + 16, 0xBuLL, *(a2 + v40 + 47));
                  v37[36] = 1;
                  *(v37 + 8) = 2;
                  v37[44] = 1;
                  *(v37 + 10) = 2;
                  ++v40;
                }

                while (v40 < *(a2 + 21));
              }
            }

            goto LABEL_50;
          }
        }

        else
        {
          v35 = v33 + 176;
        }

        *v35 = 0;
LABEL_50:
        v41 = 0;
        v42 = *(a2 + 16);
        v34[184] = HIBYTE(v42) & 1;
        v34[256] = 0;
        if ((v42 & 0x80) != 0)
        {
          *(v34 + 65) = 0;
          v41 = 1;
        }

        v34[264] = v41;
        if (v42)
        {
          v43 = 1;
          v34[272] = 1;
          *(v34 + 67) = 2;
        }

        else
        {
          v43 = 0;
        }

        v34[276] = v43;
        if ((v42 & 2) != 0)
        {
          v44 = 1;
          *(v34 + 70) = 1;
          v34[284] = 1;
        }

        else
        {
          v44 = 0;
        }

        v34[288] = v44;
        v28 = v34 + 296;
        goto LABEL_59;
      }
    }

    else
    {
      if (!*(a1 + 40))
      {
LABEL_20:
        v28 = v6 + 288;
LABEL_59:
        *v28 = 0;
        v6[328] = 0;
        goto LABEL_60;
      }

      v6[288] = 1;
      v6[248] = 0;
    }

    v28 = v6 + 280;
    goto LABEL_59;
  }

  if (lpp_session_detect((a1 + 28)))
  {
    v7 = *(a3 + 16);
    goto LABEL_4;
  }

  ms_report_exception(2, 16388, 1209, "lpp_transaction_process_request_assistance_data");
  if (v6)
  {
    free(v6);
  }

LABEL_60:
  v45 = *MEMORY[0x29EDCA608];
  return 1;
}

void lpp_transaction_process_provide_assistance_data(unsigned __int8 *a1, uint64_t a2)
{
  v14 = *MEMORY[0x29EDCA608];
  v4 = a1[24];
  if (v4 == 3)
  {
    v5 = a1[40];
  }

  else if (v4 == 2)
  {
    v5 = a1[41];
  }

  else
  {
    v5 = 0;
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx transaction type,%u\n", (*&g_MacClockTicksToMsRelation * v6), "PSP", 69, "lpp_transaction_process_provide_assistance_data", 770, a1[24]);
      LbsOsaTrace_WriteLog(0x13u, __str, v7, 0, 1);
      v5 = 0;
    }
  }

  if (*a2 == 3 && !*(a2 + 8) && !*(a2 + 16) && *(GetStaticLppPrivate() + 2) == 1 && *(a2 + 424) == 1)
  {
    if (*(a2 + 352) == 1)
    {
      lpp_transaction_process_provide_assistance_data_a_gnss_common(a2 + 32, a1);
    }

    if (*(a2 + 384) == 1)
    {
      lpp_transaction_process_provide_assistance_data_a_gnss_generic((a2 + 360), a1);
    }

    v8 = a1[24];
    if (v8 == 3)
    {
      v5 = a1[40];
    }

    else if (v8 == 2)
    {
      v5 = a1[41];
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx transaction type,%u\n", (*&g_MacClockTicksToMsRelation * v9), "PSP", 69, "lpp_transaction_process_provide_assistance_data", 770, a1[24]);
      LbsOsaTrace_WriteLog(0x13u, __str, v10, 0, 1);
    }

    if (*(a2 + 420) == 1 && v5 == 1)
    {
      lpp_transaction_process_provide_assistance_data_a_gnss_error((a2 + 388), a1);
    }
  }

  if (a1[25] == 1 && v5 == 1)
  {
    a1[25] = 2;
  }

  v12 = *MEMORY[0x29EDCA608];
}

void lpp_transaction_process_provide_assistance_data_a_gnss_common(uint64_t a1, uint64_t a2)
{
  v132 = *MEMORY[0x29EDCA608];
  v111 = *(a2 + 28);
  v112 = *(a2 + 32);
  if (*(a1 + 120) != 1)
  {
    goto LABEL_106;
  }

  for (i = 0; i != 128; i += 8)
  {
    v5 = &__s[i];
    *v5 = -1;
    *(v5 + 2) = -1;
    v5[6] = -1;
  }

  memset_s(__s, 0x80uLL, 0, 0x80uLL);
  if (*a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GNSS ID\n", (*&g_MacClockTicksToMsRelation * v6), "PSP", 69, "lpp_transaction_process_provide_assistance_data_a_gnss_common", 770);
      LbsOsaTrace_WriteLog(0x13u, __str, v7, 0, 1);
    }

    goto LABEL_106;
  }

  if (*(GetStaticLppPrivate() + 2) != 1)
  {
    goto LABEL_106;
  }

  LOWORD(v115[0]) = -1;
  BYTE2(v115[0]) = -1;
  v115[1] = -1;
  LOWORD(v115[2]) = 255;
  T_UTRAN_GPS_TIME_s::T_UTRAN_GPS_TIME_s(&v115[3]);
  v8 = 0;
  DWORD2(v117) = 2;
  WORD6(v117) = 32512;
  BYTE14(v117) = 0;
  LOWORD(v118) = -1;
  BYTE2(v118) = -1;
  DWORD1(v118) = -1;
  WORD4(v118) = -1;
  BYTE12(v118) = 0;
  do
  {
    v9 = &v115[v8];
    *(v9 + 62) = -1;
    v9[16] = -1;
    *(v9 + 68) = -1;
    v8 += 2;
  }

  while (v8 != 32);
  v121 = -1;
  v122 = 0;
  v123 = -1;
  memset_s(v115, 0xD0uLL, 0, 0xD0uLL);
  v10 = *(a1 + 4);
  v11 = *(a1 + 8);
  v12 = (v10 / 7) & 0x3FF;
  if (v10 / -7 >= 0)
  {
    v12 = -((v10 / -7) & 0x3FF);
  }

  LOWORD(v115[0]) = v12;
  v115[1] = 86400000 * (v10 % 7) + 1000 * v11;
  if (*(a1 + 16) == 1)
  {
    v115[1] = *(a1 + 12) + 86400000 * (v10 % 7) + 1000 * v11;
  }

  memset_s(&v118 + 14, 0x80uLL, 0, 0x80uLL);
  if (*(a1 + 72) == 1 && (*(a1 + 64) - 1) <= 0x3F)
  {
    v13 = 0;
    v14 = (a1 + 48);
    v15 = v119 + 4;
    do
    {
      v14 = *v14;
      v16 = *(v14 + 2);
      if (v16 > 0xFF)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v17 = mach_continuous_time();
          v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatID,%d\n", (*&g_MacClockTicksToMsRelation * v17), "PSP", 69, "lpp_transaction_add_ProvideGnssReferenceTime", 772, *(v14 + 2));
          LbsOsaTrace_WriteLog(0x13u, __str, v18, 0, 1);
        }
      }

      else
      {
        *(v15 - 6) = v16 - 1;
      }

      v19 = *(v14 + 3);
      if (HIWORD(v19))
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v20 = mach_continuous_time();
          v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx tlmWord,%d\n", (*&g_MacClockTicksToMsRelation * v20), "PSP", 69, "lpp_transaction_add_ProvideGnssReferenceTime", 772, *(v14 + 3));
          LbsOsaTrace_WriteLog(0x13u, __str, v21, 0, 1);
        }
      }

      else
      {
        *(v15 - 2) = v19;
      }

      v22 = *(v14 + 4);
      if (v22 > 0xFF)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v23 = mach_continuous_time();
          v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx antiSpoof,%d\n", (*&g_MacClockTicksToMsRelation * v23), "PSP", 69, "lpp_transaction_add_ProvideGnssReferenceTime", 772, *(v14 + 4));
          LbsOsaTrace_WriteLog(0x13u, __str, v24, 0, 1);
        }
      }

      else
      {
        *(v15 - 2) = v22;
      }

      v25 = *(v14 + 5);
      if (v25 > 0xFF)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v26 = mach_continuous_time();
          v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx alert,%d\n", (*&g_MacClockTicksToMsRelation * v26), "PSP", 69, "lpp_transaction_add_ProvideGnssReferenceTime", 772, *(v14 + 5));
          LbsOsaTrace_WriteLog(0x13u, __str, v27, 0, 1);
        }
      }

      else
      {
        *(v15 - 1) = v25;
      }

      v28 = *(v14 + 6);
      if (v28 > 0xFF)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v29 = mach_continuous_time();
          v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx tlmRsvdBits,%d\n", (*&g_MacClockTicksToMsRelation * v29), "PSP", 69, "lpp_transaction_add_ProvideGnssReferenceTime", 772, *(v14 + 6));
          LbsOsaTrace_WriteLog(0x13u, __str, v30, 0, 1);
        }
      }

      else
      {
        *v15 = v28;
      }

      v31 = v13 + 1;
      if (v13 > 0xE)
      {
        break;
      }

      v15 += 8;
      ++v13;
    }

    while (v31 < *(a1 + 64));
  }

  else
  {
    LOBYTE(v31) = 0;
  }

  BYTE12(v118) = v31;
  if (*(a1 + 84) == 1)
  {
    v32 = *(a1 + 80);
    if (v32 > 0xFF)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v33 = mach_continuous_time();
        v34 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx referenceTimeUnc,%d\n", (*&g_MacClockTicksToMsRelation * v33), "PSP", 69, "lpp_transaction_add_ProvideGnssReferenceTime", 772, *(a1 + 80));
        LbsOsaTrace_WriteLog(0x13u, __str, v34, 0, 1);
      }

      goto LABEL_47;
    }
  }

  else
  {
    LOBYTE(v32) = -1;
  }

  LOBYTE(v115[2]) = v32;
LABEL_47:
  BYTE2(v115[0]) = -1;
  if (*(a1 + 112) == 1)
  {
    v35 = *(a1 + 104);
    if ((v35 - 1) <= 0xE)
    {
      v36 = *(a1 + 88);
      v37 = operator new[](32 * v35, MEMORY[0x29EDC9418]);
      if (v37)
      {
        v38 = v37;
        v39 = v37;
        v40 = &v37[32 * v35];
        do
        {
          *v39 = -1;
          *(v39 + 1) = -1;
          *(v39 + 4) = -129;
          v41 = v39 + 12;
          v39[10] = 0;
          memset_s(v39 + 12, 0x14uLL, 0, 0x14uLL);
          v39 = v41 + 20;
        }

        while (v41 + 20 != v40);
        v42 = *(a1 + 104);
        if (v42)
        {
          v43 = 0;
          v44 = 0;
          do
          {
            if (!*(v36 + 6))
            {
              v45 = *(v36 + 2);
              if (HIWORD(v45))
              {
                if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
                {
                  bzero(__str, 0x410uLL);
                  v46 = mach_continuous_time();
                  v47 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx secondsFromFrameStructureStart,%d\n", (*&g_MacClockTicksToMsRelation * v46), "PSP", 69, "lpp_transaction_add_ProvideGnssReferenceTime", 772, *(v36 + 2));
                  LbsOsaTrace_WriteLog(0x13u, __str, v47, 0, 1);
                }
              }

              else
              {
                *&v38[32 * v44] = v45;
              }

              v48 = &v38[32 * v44];
              *(v48 + 1) = *(v36 + 3);
              v49 = *(v36 + 4);
              if (v49 == v49)
              {
                v48[8] = v49;
              }

              else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v50 = mach_continuous_time();
                v51 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx frameDrift,%d\n", (*&g_MacClockTicksToMsRelation * v50), "PSP", 69, "lpp_transaction_add_ProvideGnssReferenceTime", 772, *(v36 + 4));
                LbsOsaTrace_WriteLog(0x13u, __str, v51, 0, 1);
              }

              v52 = *(v36 + 32);
              if (v52 > 0xFF)
              {
                if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
                {
                  bzero(__str, 0x410uLL);
                  v53 = mach_continuous_time();
                  v54 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx referenceTimeUnc,%d\n", (*&g_MacClockTicksToMsRelation * v53), "PSP", 69, "lpp_transaction_add_ProvideGnssReferenceTime", 772, *(v36 + 32));
                  LbsOsaTrace_WriteLog(0x13u, __str, v54, 0, 1);
                }
              }

              else
              {
                v48[9] = v52;
              }

              v55 = *(v36 + 136) == 1 && !*(v36 + 33);
              v48[10] = v55;
              v56 = *(v36 + 8);
              if (HIWORD(v56))
              {
                if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
                {
                  bzero(__str, 0x410uLL);
                  v57 = mach_continuous_time();
                  v58 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx physCellId,%d\n", (*&g_MacClockTicksToMsRelation * v57), "PSP", 69, "lpp_transaction_add_ProvideGnssReferenceTime", 772, *(v36 + 8));
                  LbsOsaTrace_WriteLog(0x13u, __str, v58, 0, 1);
                }
              }

              else
              {
                *(v48 + 6) = v56;
              }

              if (*(v36 + 124) == 1)
              {
                v59 = 120;
              }

              else
              {
                v59 = 116;
              }

              *(v48 + 4) = *(v36 + v59);
              if (*(v36 + 112) == 1 && !*(v36 + 22))
              {
                v48[20] = 1;
                if (*(v36 + 100))
                {
                  v60 = 0;
                  *(v48 + 7) = 0;
                  v61 = v36[13];
                  v62 = 28;
                  do
                  {
                    v63 = *v61++;
                    v60 |= v63 << --v62;
                    *(v48 + 7) = v60;
                  }

                  while (v62);
                }

                *(v48 + 11) = 0;
                if (*(v36 + 14))
                {
                  v64 = 0;
                  v65 = 0;
                  v66 = v36 + 5;
                  v67 = 100;
                  do
                  {
                    v66 = *v66;
                    v64 += *(v66 + 2) * v67;
                    *(v48 + 11) = v64;
                    v67 /= 0xAu;
                    ++v65;
                  }

                  while (v65 < *(v36 + 14));
                }

                else
                {
                  v67 = 100;
                }

                v68 = *(v36 + 20);
                v48[26] = v68 != 2;
                if (*(v36 + 20))
                {
                  v69 = 0;
                  if (v68 == 2)
                  {
                    v70 = 10;
                  }

                  else
                  {
                    v70 = v67;
                  }

                  v71 = v36 + 8;
                  v72 = *(v48 + 12);
                  do
                  {
                    v71 = *v71;
                    v72 += *(v71 + 2) * v70;
                    *(v48 + 12) = v72;
                    v70 /= 0xAu;
                    ++v69;
                  }

                  while (v69 < *(v36 + 20));
                }
              }

              else
              {
                v48[20] = 0;
              }

              ++v44;
              v42 = *(a1 + 104);
            }

            v36 = *v36;
            ++v43;
          }

          while (v43 < v42);
        }

        else
        {
          v44 = 0;
        }

        v121 = v44;
        v122 = v38;
      }

      else
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v73 = mach_continuous_time();
          v74 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx gnss ref time allocation failed\n", (*&g_MacClockTicksToMsRelation * v73), "PSP", 69, "lpp_transaction_add_ProvideGnssReferenceTime", 1537);
          LbsOsaTrace_WriteLog(0x13u, __str, v74, 0, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v75 = mach_continuous_time();
          v76 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v75), "PSP", 68, "lpp_transaction_add_ProvideGnssReferenceTime");
          LbsOsaTrace_WriteLog(0x13u, __str, v76, 5, 1);
        }
      }
    }
  }

  v123 = v111;
  v113 = (v111 << 32) | 2;
  v114 = v112;
  lpm_map_transaction_id(a2, __str);
  gps_set_gps_time(v115, 0, &v113);
LABEL_106:
  if (*(a1 + 164) == 1)
  {
    T_GNSS_POSITION_s::T_GNSS_POSITION_s(v115);
    memset_s(v115, 0x70uLL, 0, 0x70uLL);
    ref_loc_bitmap = lpp_transaction_get_ref_loc_bitmap(a2);
    LOWORD(v115[0]) = 0;
    *&v115[2] = 0;
    DWORD1(v119[0]) = 0;
    LODWORD(v116) = 590335;
    if (*(a1 + 124) > 0xFFu)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v78 = mach_continuous_time();
        v79 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx latitudeSign,%d\n", (*&g_MacClockTicksToMsRelation * v78), "PSP", 69, "lpp_transaction_add_ProvideGnssReferenceLocation", 772, *(a1 + 124));
        LbsOsaTrace_WriteLog(0x13u, __str, v79, 0, 1);
      }
    }

    else
    {
      BYTE4(v116) = *(a1 + 124);
    }

    v80 = *(a1 + 132);
    *(&v116 + 1) = *(a1 + 128);
    LODWORD(v117) = v80;
    if (*(a1 + 144) > 0xFFu)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v81 = mach_continuous_time();
        v82 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx uncertaintySemiMajor,%d\n", (*&g_MacClockTicksToMsRelation * v81), "PSP", 69, "lpp_transaction_add_ProvideGnssReferenceLocation", 772, *(a1 + 144));
        LbsOsaTrace_WriteLog(0x13u, __str, v82, 0, 1);
      }
    }

    else
    {
      BYTE4(v117) = *(a1 + 144);
    }

    if (*(a1 + 148) > 0xFFu)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v83 = mach_continuous_time();
        v84 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx uncertaintySemiMinor,%d\n", (*&g_MacClockTicksToMsRelation * v83), "PSP", 69, "lpp_transaction_add_ProvideGnssReferenceLocation", 772, *(a1 + 148));
        LbsOsaTrace_WriteLog(0x13u, __str, v84, 0, 1);
      }
    }

    else
    {
      BYTE5(v117) = *(a1 + 148);
    }

    if (*(a1 + 152) > 0xFFu)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v85 = mach_continuous_time();
        v86 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx orientationMajorAxis,%d\n", (*&g_MacClockTicksToMsRelation * v85), "PSP", 69, "lpp_transaction_add_ProvideGnssReferenceLocation", 772, *(a1 + 152));
        LbsOsaTrace_WriteLog(0x13u, __str, v86, 0, 1);
      }
    }

    else
    {
      BYTE6(v117) = *(a1 + 152);
    }

    if (*(a1 + 136) > 0xFFu)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v87 = mach_continuous_time();
        v88 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx altitudeDirection,%d\n", (*&g_MacClockTicksToMsRelation * v87), "PSP", 69, "lpp_transaction_add_ProvideGnssReferenceLocation", 772, *(a1 + 136));
        LbsOsaTrace_WriteLog(0x13u, __str, v88, 0, 1);
      }
    }

    else
    {
      BYTE7(v117) = *(a1 + 136);
    }

    *(&v117 + 1) = *(a1 + 140);
    if (*(a1 + 156) > 0xFFu)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v89 = mach_continuous_time();
        v90 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx uncertaintyAltitude,%d\n", (*&g_MacClockTicksToMsRelation * v89), "PSP", 69, "lpp_transaction_add_ProvideGnssReferenceLocation", 772, *(a1 + 156));
        LbsOsaTrace_WriteLog(0x13u, __str, v90, 0, 1);
      }
    }

    else
    {
      LOBYTE(v118) = *(a1 + 156);
    }

    if (*(a1 + 160) > 0xFFu)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v91 = mach_continuous_time();
        v92 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx confidence,%d\n", (*&g_MacClockTicksToMsRelation * v91), "PSP", 69, "lpp_transaction_add_ProvideGnssReferenceLocation", 772, *(a1 + 160));
        LbsOsaTrace_WriteLog(0x13u, __str, v92, 0, 1);
      }
    }

    else
    {
      BYTE1(v118) = *(a1 + 160);
    }

    BYTE2(v118) = 0;
    BYTE13(v120) = v111;
    v129 = v119[0];
    v130 = v119[1];
    v131 = v120;
    *__str = *v115;
    v126 = v116;
    v127 = v117;
    v128 = v118;
    v113 = (v111 << 32) | 2;
    v114 = v112;
    lpm_map_transaction_id(a2, __s);
    gps_set_gnss_ref_loc(__str, ref_loc_bitmap, 0, &v113);
  }

  if (*(a1 + 280) == 1 && *(a1 + 216) == 1)
  {
    LOWORD(v115[0]) = -256;
    *(v115 + 2) = 0x7F7F7F7F7F7F7F7FLL;
    BYTE2(v115[2]) = -1;
    memset_s(v115, 0xBuLL, 0, 0xBuLL);
    v93 = lpp_transaction_get_ref_loc_bitmap(a2);
    LOBYTE(v115[0]) = 1;
    BYTE1(v115[0]) = **(a1 + 176);
    if (*(a1 + 184) == *(a1 + 184))
    {
      BYTE2(v115[0]) = *(a1 + 184);
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v94 = mach_continuous_time();
      v95 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx alfa0,%d\n", (*&g_MacClockTicksToMsRelation * v94), "PSP", 69, "lpp_transaction_add_ProvideGnssIonosphericModel", 772, *(a1 + 184));
      LbsOsaTrace_WriteLog(0x13u, __str, v95, 0, 1);
    }

    if (*(a1 + 188) == *(a1 + 188))
    {
      HIBYTE(v115[0]) = *(a1 + 188);
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v96 = mach_continuous_time();
      v97 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx alfa1,%d\n", (*&g_MacClockTicksToMsRelation * v96), "PSP", 69, "lpp_transaction_add_ProvideGnssIonosphericModel", 772, *(a1 + 188));
      LbsOsaTrace_WriteLog(0x13u, __str, v97, 0, 1);
    }

    if (*(a1 + 192) == *(a1 + 192))
    {
      LOBYTE(v115[1]) = *(a1 + 192);
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v98 = mach_continuous_time();
      v99 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx alfa2,%d\n", (*&g_MacClockTicksToMsRelation * v98), "PSP", 69, "lpp_transaction_add_ProvideGnssIonosphericModel", 772, *(a1 + 192));
      LbsOsaTrace_WriteLog(0x13u, __str, v99, 0, 1);
    }

    if (*(a1 + 196) == *(a1 + 196))
    {
      BYTE1(v115[1]) = *(a1 + 196);
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v100 = mach_continuous_time();
      v101 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx alfa3,%d\n", (*&g_MacClockTicksToMsRelation * v100), "PSP", 69, "lpp_transaction_add_ProvideGnssIonosphericModel", 772, *(a1 + 196));
      LbsOsaTrace_WriteLog(0x13u, __str, v101, 0, 1);
    }

    if (*(a1 + 200) == *(a1 + 200))
    {
      BYTE2(v115[1]) = *(a1 + 200);
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v102 = mach_continuous_time();
      v103 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx beta0,%d\n", (*&g_MacClockTicksToMsRelation * v102), "PSP", 69, "lpp_transaction_add_ProvideGnssIonosphericModel", 772, *(a1 + 200));
      LbsOsaTrace_WriteLog(0x13u, __str, v103, 0, 1);
    }

    if (*(a1 + 204) == *(a1 + 204))
    {
      HIBYTE(v115[1]) = *(a1 + 204);
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v104 = mach_continuous_time();
      v105 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx beta1,%d\n", (*&g_MacClockTicksToMsRelation * v104), "PSP", 69, "lpp_transaction_add_ProvideGnssIonosphericModel", 772, *(a1 + 204));
      LbsOsaTrace_WriteLog(0x13u, __str, v105, 0, 1);
    }

    if (*(a1 + 208) == *(a1 + 208))
    {
      LOBYTE(v115[2]) = *(a1 + 208);
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v106 = mach_continuous_time();
      v107 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx beta2,%d\n", (*&g_MacClockTicksToMsRelation * v106), "PSP", 69, "lpp_transaction_add_ProvideGnssIonosphericModel", 772, *(a1 + 208));
      LbsOsaTrace_WriteLog(0x13u, __str, v107, 0, 1);
    }

    if (*(a1 + 212) == *(a1 + 212))
    {
      BYTE1(v115[2]) = *(a1 + 212);
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v108 = mach_continuous_time();
      v109 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx beta3,%d\n", (*&g_MacClockTicksToMsRelation * v108), "PSP", 69, "lpp_transaction_add_ProvideGnssIonosphericModel", 772, *(a1 + 212));
      LbsOsaTrace_WriteLog(0x13u, __str, v109, 0, 1);
    }

    BYTE2(v115[2]) = v111;
    send_to_lpi_gnss_iono_model_req(*v115, LOWORD(v115[2]) | (v111 << 16), v93, (v111 << 32) | 2, v112, a2);
  }

  v110 = *MEMORY[0x29EDCA608];
}

void lpp_transaction_process_provide_assistance_data_a_gnss_generic(uint64_t *a1, uint64_t a2)
{
  v148 = *MEMORY[0x29EDCA608];
  if ((*(a1 + 4) - 1) > 0xF)
  {
    goto LABEL_225;
  }

  v3 = 0;
  v136 = *(a2 + 28);
  v138 = (v136 << 32) | 2;
  v137 = *(a2 + 32);
  v4 = MEMORY[0x29EDC9418];
  v5 = a1;
  do
  {
    v5 = *v5;
    if (*(v5 + 328) != 1)
    {
      goto LABEL_13;
    }

    if (*(v5 + 2) || *(GetStaticLppPrivate() + 2) != 1)
    {
      if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        goto LABEL_13;
      }

      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GNSS ID,%u\n", (*&g_MacClockTicksToMsRelation * v9), "PSP", 69, "lpp_transaction_provide_almanac_assistance", 770, *(v5 + 2));
      v11 = 0;
      goto LABEL_12;
    }

    v6 = operator new(0x18uLL, v4);
    if (!v6)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v13 = mach_continuous_time();
        v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionList allocation failed\n", (*&g_MacClockTicksToMsRelation * v13), "PSP", 69, "lpp_transaction_provide_gps_almanac_assistance", 1537);
        LbsOsaTrace_WriteLog(0x13u, __str, v14, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
      {
LABEL_18:
        bzero(__str, 0x410uLL);
        v15 = mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v15), "PSP", 68, "lpp_transaction_provide_gps_almanac_assistance");
        v11 = 5;
LABEL_12:
        LbsOsaTrace_WriteLog(0x13u, __str, v10, v11, 1);
        goto LABEL_13;
      }

      goto LABEL_13;
    }

    v7 = v6;
    *v6 = 255;
    v6[2] = 0;
    *(v6 + 1) = 0;
    v6[16] = -1;
    if (*(v5 + 268) == 1)
    {
      v8 = *(v5 + 66);
      if (v8 > 0xFF)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v16 = mach_continuous_time();
          v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx weekNumber,%d\n", (*&g_MacClockTicksToMsRelation * v16), "PSP", 69, "lpp_transaction_provide_gps_almanac_assistance", 772, *(v5 + 66));
          LbsOsaTrace_WriteLog(0x13u, __str, v17, 0, 1);
        }
      }

      else
      {
        *v6 = v8;
      }
    }

    if (*(v5 + 276) != 1)
    {
      goto LABEL_25;
    }

    v18 = *(v5 + 68);
    if (v18 > 0xFF)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v19 = mach_continuous_time();
        v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx toa,%d\n", (*&g_MacClockTicksToMsRelation * v19), "PSP", 69, "lpp_transaction_provide_gps_almanac_assistance", 772, *(v5 + 68));
        LbsOsaTrace_WriteLog(0x13u, __str, v20, 0, 1);
      }

LABEL_25:
      LOBYTE(v18) = 0;
    }

    v7[1] = *(v5 + 285);
    v7[2] = 0;
    *(v7 + 1) = 0;
    v21 = *(v5 + 76);
    if ((v21 - 1) > 0x3F)
    {
      ms_report_exception(2, 16399, 3118, "lpp_transaction_provide_gps_almanac_assistance");
      goto LABEL_50;
    }

    v22 = 0;
    v23 = *(v5 + 76);
    v24 = v5 + 36;
    do
    {
      v24 = *v24;
      if (*(v24 + 2) == 1)
      {
        ++v22;
      }

      --v23;
    }

    while (v23);
    if (!v22)
    {
      goto LABEL_49;
    }

    v25 = operator new[](32 * v21, v4);
    if (v25)
    {
      v26 = v25;
      v27 = v25;
      do
      {
        *v27 = -1;
        *(v27 + 1) = -1;
        v27[4] = -1;
        *(v27 + 6) = 2147450879;
        v27[10] = -1;
        *(v27 + 12) = xmmword_299728330;
        *(v27 + 7) = 2147450879;
        v27 += 32;
      }

      while (v27 != &v25[32 * v21]);
      v28 = 0;
      *(v7 + 1) = v25;
      v29 = v5 + 36;
      do
      {
        v29 = *v29;
        if (*(v5[36] + 8) == 1)
        {
          *v26 = *(v29 + 4);
          *(v26 + 1) = *(v29 + 5);
          v26[4] = v18;
          *(v26 + 3) = *(v29 + 6);
          *(v26 + 4) = *(v29 + 7);
          v26[10] = *(v29 + 8);
          *(v26 + 12) = *(v29 + 36);
          *(v26 + 14) = *(v29 + 13);
          *(v26 + 15) = *(v29 + 14);
          ++v7[2];
          v26 += 32;
        }

        else
        {
          ms_report_exception(2, 16398, 3101, "lpp_transaction_provide_gps_almanac_assistance");
          LODWORD(v21) = *(v5 + 76);
        }

        ++v28;
      }

      while (v28 < v21);
      if (v7[2])
      {
        *__str = *v7;
        v147 = *(v7 + 2);
        v140 = (v136 << 32) | 2;
        v141 = v137;
        lpm_map_transaction_id(a2, &__s);
        gps_set_almanac_aid(__str, 0, &v140);
        v4 = MEMORY[0x29EDC9418];
      }

      else
      {
        v32 = *(v7 + 1);
        v4 = MEMORY[0x29EDC9418];
        if (v32)
        {
          MEMORY[0x29C29EAF0](v32, 0x1000C800FACD818);
        }

LABEL_49:
        *(v7 + 1) = 0;
      }

LABEL_50:
      MEMORY[0x29C29EB20](v7, 0x1020C40D0709D06);
      goto LABEL_13;
    }

    *(v7 + 1) = 0;
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v30 = mach_continuous_time();
      v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Almanac list allocation failed\n", (*&g_MacClockTicksToMsRelation * v30), "PSP", 69, "lpp_transaction_provide_gps_almanac_assistance", 1537);
      LbsOsaTrace_WriteLog(0x13u, __str, v31, 0, 1);
    }

    MEMORY[0x29C29EB20](v7, 0x1020C40D0709D06);
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
    {
      goto LABEL_18;
    }

LABEL_13:
    ++v3;
    v12 = *(a1 + 4);
  }

  while (v3 < v12);
  if (v12)
  {
    v33 = 0;
    v34 = a1;
    do
    {
      v34 = *v34;
      if (*(v34 + 128) == 1 && !*(v34 + 2) && *(GetStaticLppPrivate() + 2) == 1)
      {
        if (*(v34 + 30) < 1)
        {
          ms_report_exception(2, 16401, 3455, "lpp_transaction_provide_gps_navigation_assistance");
        }

        else
        {
          LOBYTE(__s) = 0;
          *(&__s + 1) = 0;
          LOBYTE(v145) = -1;
          memset_s(&__s, 0x18uLL, 0, 0x18uLL);
          LOBYTE(__s) = 0;
          if (*(v34 + 30) <= 16)
          {
            v35 = *(v34 + 30);
          }

          else
          {
            v35 = 16;
          }

          v36 = operator new[](100 * v35, MEMORY[0x29EDC9418]);
          if (v36)
          {
            if (v35)
            {
              v37 = v36;
              v38 = v34 + 13;
              v39 = v36;
              do
              {
                *v39 = 255;
                *(v39 + 4) = -1;
                v39[10] = -1;
                *(v39 + 2) = -1;
                v39[6] = -1;
                *(v39 + 12) = -1;
                *(v39 + 20) = -1;
                *(v39 + 28) = -COERCE_DOUBLE(0x800000008000);
                *(v39 + 36) = 0x7FFF7FFF7FFFFFFFLL;
                *(v39 + 11) = 0x7FFFFFFF;
                *(v39 + 24) = 0x7FFF;
                *(v39 + 13) = -1;
                *(v39 + 28) = 0x7FFF;
                *(v39 + 60) = -1;
                *(v39 + 34) = 0x7FFF;
                *(v39 + 18) = 0x7FFFFFFF;
                *(v39 + 38) = 0x7FFF;
                *(v39 + 20) = 0x7FFFFFFF;
                *(v39 + 42) = 0x7FFF;
                *(v39 + 11) = 0x8000000080000000;
                *(v39 + 48) = 0x7FFF;
                v39 += 100;
              }

              while (v39 != &v36[100 * v35]);
              v40 = 0;
              *(&__s + 1) = v36;
              do
              {
                v38 = *v38;
                v41 = *(v38 + 2);
                if (v41 > 0xFF)
                {
                  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
                  {
                    bzero(__str, 0x410uLL);
                    v42 = mach_continuous_time();
                    v43 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatID,%d\n", (*&g_MacClockTicksToMsRelation * v42), "PSP", 69, "lpp_transaction_provide_gps_navigation_assistance", 772, *(v38 + 2));
                    LbsOsaTrace_WriteLog(0x13u, __str, v43, 0, 1);
                  }
                }

                else
                {
                  *v37 = v41;
                }

                *(v37 + 1) = 0;
                v37[1] = 0;
                if (*(v38 + 20))
                {
                  v44 = 0;
                  v45 = 0;
                  v37[6] = 0;
                  v46 = 7;
                  do
                  {
                    v44 |= *(v38[3] + v45) << v46;
                    v37[6] = v44;
                    ++v45;
                    --v46;
                  }

                  while (v45 != 8);
                }

                else
                {
                  LOBYTE(v44) = v37[6];
                }

                v37[6] = v44 >> 2;
                if (*(v38 + 36))
                {
                  v47 = 0;
                  *(v37 + 4) = 0;
                  v48 = v38[5];
                  v49 = 11;
                  do
                  {
                    v50 = *v48++;
                    v47 |= v50 << --v49;
                    *(v37 + 4) = v47;
                  }

                  while (v49);
                }

                if (*(v38 + 12) == 1 && *(v38 + 36) == 1)
                {
                  v51 = *(v38 + 14);
                  if (HIWORD(v51))
                  {
                    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
                    {
                      bzero(__str, 0x410uLL);
                      v52 = mach_continuous_time();
                      v53 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx navToc,%d\n", (*&g_MacClockTicksToMsRelation * v52), "PSP", 69, "lpp_transaction_provide_gps_navigation_assistance", 772, *(v38 + 14));
                      LbsOsaTrace_WriteLog(0x13u, __str, v53, 0, 1);
                    }
                  }

                  else
                  {
                    *(v37 + 15) = v51;
                  }

                  v54 = *(v38 + 15);
                  if (v54 == v54)
                  {
                    *(v37 + 16) = v54;
                  }

                  else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
                  {
                    bzero(__str, 0x410uLL);
                    v55 = mach_continuous_time();
                    v56 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx navaf2,%d\n", (*&g_MacClockTicksToMsRelation * v55), "PSP", 69, "lpp_transaction_provide_gps_navigation_assistance", 772, *(v38 + 15));
                    LbsOsaTrace_WriteLog(0x13u, __str, v56, 0, 1);
                  }

                  v57 = *(v38 + 16);
                  if (v57 == v57)
                  {
                    *(v37 + 17) = v57;
                  }

                  else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
                  {
                    bzero(__str, 0x410uLL);
                    v58 = mach_continuous_time();
                    v59 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx navaf1,%d\n", (*&g_MacClockTicksToMsRelation * v58), "PSP", 69, "lpp_transaction_provide_gps_navigation_assistance", 772, *(v38 + 16));
                    LbsOsaTrace_WriteLog(0x13u, __str, v59, 0, 1);
                  }

                  *(v37 + 9) = *(v38 + 17);
                  v60 = *(v38 + 18);
                  if (v60 == v60)
                  {
                    *(v37 + 14) = v60;
                  }

                  else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
                  {
                    bzero(__str, 0x410uLL);
                    v61 = mach_continuous_time();
                    v62 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx navTgd,%u\n", (*&g_MacClockTicksToMsRelation * v61), "PSP", 69, "lpp_transaction_provide_gps_navigation_assistance", 772, *(v38 + 18));
                    LbsOsaTrace_WriteLog(0x13u, __str, v62, 0, 1);
                  }

                  v63 = *(v38 + 38);
                  if (v63 > 0xFF)
                  {
                    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
                    {
                      bzero(__str, 0x410uLL);
                      v64 = mach_continuous_time();
                      v65 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx navURA,%d\n", (*&g_MacClockTicksToMsRelation * v64), "PSP", 69, "lpp_transaction_provide_gps_navigation_assistance", 772, *(v38 + 38));
                      LbsOsaTrace_WriteLog(0x13u, __str, v65, 0, 1);
                    }
                  }

                  else
                  {
                    v37[5] = v63;
                  }

                  v66 = *(v38 + 39);
                  if (v66 > 0xFF)
                  {
                    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
                    {
                      bzero(__str, 0x410uLL);
                      v67 = mach_continuous_time();
                      v68 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx navFitFlag,%d\n", (*&g_MacClockTicksToMsRelation * v67), "PSP", 69, "lpp_transaction_provide_gps_navigation_assistance", 772, *(v38 + 39));
                      LbsOsaTrace_WriteLog(0x13u, __str, v68, 0, 1);
                    }
                  }

                  else
                  {
                    v37[66] = v66;
                  }

                  v69 = *(v38 + 40);
                  if (HIWORD(v69))
                  {
                    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
                    {
                      bzero(__str, 0x410uLL);
                      v70 = mach_continuous_time();
                      v71 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx navToe,%d\n", (*&g_MacClockTicksToMsRelation * v70), "PSP", 69, "lpp_transaction_provide_gps_navigation_assistance", 772, *(v38 + 40));
                      LbsOsaTrace_WriteLog(0x13u, __str, v71, 0, 1);
                    }
                  }

                  else
                  {
                    *(v37 + 32) = v69;
                  }

                  *(v37 + 22) = *(v38 + 41);
                  v72 = *(v38 + 42);
                  if (v72 == v72)
                  {
                    *(v37 + 21) = v72;
                  }

                  else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
                  {
                    bzero(__str, 0x410uLL);
                    v73 = mach_continuous_time();
                    v74 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx navDeltaN,%d\n", (*&g_MacClockTicksToMsRelation * v73), "PSP", 69, "lpp_transaction_provide_gps_navigation_assistance", 772, *(v38 + 42));
                    LbsOsaTrace_WriteLog(0x13u, __str, v74, 0, 1);
                  }

                  *(v37 + 11) = *(v38 + 43);
                  *(v37 + 23) = *(v38 + 44);
                  *(v37 + 13) = *(v38 + 45);
                  v75 = *(v38 + 46);
                  if (v75 == v75)
                  {
                    *(v37 + 48) = v75;
                  }

                  else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
                  {
                    bzero(__str, 0x410uLL);
                    v76 = mach_continuous_time();
                    v77 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx navIDot,%d\n", (*&g_MacClockTicksToMsRelation * v76), "PSP", 69, "lpp_transaction_provide_gps_navigation_assistance", 772, *(v38 + 46));
                    LbsOsaTrace_WriteLog(0x13u, __str, v77, 0, 1);
                  }

                  *(v37 + 15) = *(v38 + 47);
                  *(v37 + 20) = *(v38 + 48);
                  *(v37 + 18) = *(v38 + 49);
                  v78 = *(v38 + 50);
                  if (v78 == v78)
                  {
                    *(v37 + 20) = v78;
                  }

                  else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
                  {
                    bzero(__str, 0x410uLL);
                    v79 = mach_continuous_time();
                    v80 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx navCrs,%d\n", (*&g_MacClockTicksToMsRelation * v79), "PSP", 69, "lpp_transaction_provide_gps_navigation_assistance", 772, *(v38 + 50));
                    LbsOsaTrace_WriteLog(0x13u, __str, v80, 0, 1);
                  }

                  v81 = *(v38 + 51);
                  if (v81 == v81)
                  {
                    *(v37 + 38) = v81;
                  }

                  else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
                  {
                    bzero(__str, 0x410uLL);
                    v82 = mach_continuous_time();
                    v83 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx navCis,%d\n", (*&g_MacClockTicksToMsRelation * v82), "PSP", 69, "lpp_transaction_provide_gps_navigation_assistance", 772, *(v38 + 51));
                    LbsOsaTrace_WriteLog(0x13u, __str, v83, 0, 1);
                  }

                  v84 = *(v38 + 52);
                  if (v84 == v84)
                  {
                    *(v37 + 28) = v84;
                  }

                  else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
                  {
                    bzero(__str, 0x410uLL);
                    v85 = mach_continuous_time();
                    v86 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx navCus,%d\n", (*&g_MacClockTicksToMsRelation * v85), "PSP", 69, "lpp_transaction_provide_gps_navigation_assistance", 772, *(v38 + 52));
                    LbsOsaTrace_WriteLog(0x13u, __str, v86, 0, 1);
                  }

                  v87 = *(v38 + 53);
                  if (v87 == v87)
                  {
                    *(v37 + 42) = v87;
                  }

                  else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
                  {
                    bzero(__str, 0x410uLL);
                    v88 = mach_continuous_time();
                    v89 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx navCrc,%d\n", (*&g_MacClockTicksToMsRelation * v88), "PSP", 69, "lpp_transaction_provide_gps_navigation_assistance", 772, *(v38 + 53));
                    LbsOsaTrace_WriteLog(0x13u, __str, v89, 0, 1);
                  }

                  v90 = *(v38 + 54);
                  if (v90 == v90)
                  {
                    *(v37 + 34) = v90;
                  }

                  else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
                  {
                    bzero(__str, 0x410uLL);
                    v91 = mach_continuous_time();
                    v92 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx navCic,%d\n", (*&g_MacClockTicksToMsRelation * v91), "PSP", 69, "lpp_transaction_provide_gps_navigation_assistance", 772, *(v38 + 54));
                    LbsOsaTrace_WriteLog(0x13u, __str, v92, 0, 1);
                  }

                  v93 = *(v38 + 55);
                  if (v93 == v93)
                  {
                    *(v37 + 24) = v93;
                  }

                  else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
                  {
                    bzero(__str, 0x410uLL);
                    v94 = mach_continuous_time();
                    v95 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx navCuc,%d\n", (*&g_MacClockTicksToMsRelation * v94), "PSP", 69, "lpp_transaction_provide_gps_navigation_assistance", 772, *(v38 + 55));
                    LbsOsaTrace_WriteLog(0x13u, __str, v95, 0, 1);
                  }

                  if (*(v38 + 252) == 1)
                  {
                    v96 = *(v38 + 56);
                    if (v96 > 0xFF)
                    {
                      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
                      {
                        bzero(__str, 0x410uLL);
                        v97 = mach_continuous_time();
                        v98 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ephemCodeOnL2,%d\n", (*&g_MacClockTicksToMsRelation * v97), "PSP", 69, "lpp_transaction_provide_gps_navigation_assistance", 772, *(v38 + 56));
                        LbsOsaTrace_WriteLog(0x13u, __str, v98, 0, 1);
                      }
                    }

                    else
                    {
                      v37[4] = v96;
                    }

                    v99 = *(v38 + 57);
                    if (v99 > 0xFF)
                    {
                      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
                      {
                        bzero(__str, 0x410uLL);
                        v100 = mach_continuous_time();
                        v101 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ephemL2Pflag,%d\n", (*&g_MacClockTicksToMsRelation * v100), "PSP", 69, "lpp_transaction_provide_gps_navigation_assistance", 772, *(v38 + 57));
                        LbsOsaTrace_WriteLog(0x13u, __str, v101, 0, 1);
                      }
                    }

                    else
                    {
                      v37[10] = v99;
                    }

                    v102 = *(v38 + 62);
                    if (v102 > 0xFF)
                    {
                      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
                      {
                        bzero(__str, 0x410uLL);
                        v103 = mach_continuous_time();
                        v104 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ephemAODA,%d\n", (*&g_MacClockTicksToMsRelation * v103), "PSP", 69, "lpp_transaction_provide_gps_navigation_assistance", 772, *(v38 + 62));
                        LbsOsaTrace_WriteLog(0x13u, __str, v104, 0, 1);
                      }
                    }

                    else
                    {
                      v37[67] = v102;
                    }

                    *(v37 + 12) = *(v38 + 29);
                  }

                  else
                  {
                    v37[4] = 0;
                    v37[10] = 0;
                    v37[67] = 0;
                    *(v37 + 20) = 0;
                    *(v37 + 12) = 0;
                  }

                  LOBYTE(__s) = __s + 1;
                  v37 += 100;
                }

                else
                {
                  ms_report_exception(2, 16400, 3441, "lpp_transaction_provide_gps_navigation_assistance");
                }

                ++v40;
              }

              while (v40 != v35);
              if (__s)
              {
                LOBYTE(v145) = v136;
                *__str = __s;
                v147 = v145;
                v142 = (v136 << 32) | 2;
                v143 = v137;
                lpm_map_transaction_id(a2, &v140);
                gps_set_based_aid(__str, 0, &v142);
              }
            }
          }

          else
          {
            *(&__s + 1) = 0;
            if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v105 = mach_continuous_time();
              v106 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NAvData allocation failed\n", (*&g_MacClockTicksToMsRelation * v105), "PSP", 69, "lpp_transaction_provide_gps_navigation_assistance", 1537);
              LbsOsaTrace_WriteLog(0x13u, __str, v106, 0, 1);
            }

            if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v107 = mach_continuous_time();
              v108 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v107), "PSP", 68, "lpp_transaction_provide_gps_navigation_assistance");
              LbsOsaTrace_WriteLog(0x13u, __str, v108, 5, 1);
            }
          }
        }
      }

      ++v33;
    }

    while (v33 < *(a1 + 4));
  }

  *&__s = 0x8000000080000000;
  DWORD2(__s) = 0x800000;
  WORD6(__s) = 32639;
  memset_s(&__s, 0x10uLL, 0, 0x10uLL);
  if (*(a1 + 4))
  {
    v109 = 0;
    v110 = 0;
    v111 = a1;
    while (1)
    {
      v111 = *v111;
      if (*(v111 + 400) == 1)
      {
        if (*(v111 + 2) || *(GetStaticLppPrivate() + 2) != 1)
        {
          v112 = 3684;
LABEL_174:
          ms_report_exception(2, 16404, v112, "lpp_transaction_provide_utc_model_assistance");
          goto LABEL_175;
        }

        if (*(v111 + 84) | v109)
        {
          v112 = 3679;
          goto LABEL_174;
        }

        *&__s = v111[43];
        if (*(v111 + 88) > 0xFFu)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v113 = mach_continuous_time();
            v114 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx gnss_Utc_Tot,%d\n", (*&g_MacClockTicksToMsRelation * v113), "PSP", 69, "lpp_transaction_provide_utc_model_assistance", 772, *(v111 + 88));
            LbsOsaTrace_WriteLog(0x13u, __str, v114, 0, 1);
          }
        }

        else
        {
          BYTE8(__s) = *(v111 + 88);
        }

        if (*(v111 + 89) > 0xFFu)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v115 = mach_continuous_time();
            v116 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx gnss_Utc_WNt,%d\n", (*&g_MacClockTicksToMsRelation * v115), "PSP", 69, "lpp_transaction_provide_utc_model_assistance", 772, *(v111 + 89));
            LbsOsaTrace_WriteLog(0x13u, __str, v116, 0, 1);
          }
        }

        else
        {
          BYTE9(__s) = *(v111 + 89);
        }

        if (*(v111 + 90) > 0xFFu)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v117 = mach_continuous_time();
            v118 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx gnss_Utc_DeltaTls,%d\n", (*&g_MacClockTicksToMsRelation * v117), "PSP", 69, "lpp_transaction_provide_utc_model_assistance", 772, *(v111 + 90));
            LbsOsaTrace_WriteLog(0x13u, __str, v118, 0, 1);
          }
        }

        else
        {
          BYTE10(__s) = *(v111 + 90);
        }

        if (*(v111 + 91) > 0xFFu)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v119 = mach_continuous_time();
            v120 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx gnss_Utc_WNlsf,%d\n", (*&g_MacClockTicksToMsRelation * v119), "PSP", 69, "lpp_transaction_provide_utc_model_assistance", 772, *(v111 + 91));
            LbsOsaTrace_WriteLog(0x13u, __str, v120, 0, 1);
          }
        }

        else
        {
          BYTE11(__s) = *(v111 + 91);
        }

        if (*(v111 + 92) == *(v111 + 92))
        {
          BYTE12(__s) = *(v111 + 92);
        }

        else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v121 = mach_continuous_time();
          v122 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx gnss_Utc_DN,%d\n", (*&g_MacClockTicksToMsRelation * v121), "PSP", 69, "lpp_transaction_provide_utc_model_assistance", 772, *(v111 + 92));
          LbsOsaTrace_WriteLog(0x13u, __str, v122, 0, 1);
        }

        if (*(v111 + 93) == *(v111 + 93))
        {
          BYTE13(__s) = *(v111 + 93);
LABEL_200:
          v109 = 1;
          goto LABEL_175;
        }

        if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
        {
          goto LABEL_200;
        }

        bzero(__str, 0x410uLL);
        v123 = mach_continuous_time();
        v124 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx gnss_Utc_DeltaTlsf,%d\n", (*&g_MacClockTicksToMsRelation * v123), "PSP", 69, "lpp_transaction_provide_utc_model_assistance", 772, *(v111 + 93));
        v109 = 1;
        LbsOsaTrace_WriteLog(0x13u, __str, v124, 0, 1);
      }

LABEL_175:
      if (++v110 >= *(a1 + 4))
      {
        if (v109)
        {
          send_to_lpi_gps_utc_model_req(__s, *(&__s + 1), v138, v137, a2);
        }

        break;
      }
    }
  }

  LOBYTE(__s) = 0;
  *(&__s + 1) = 0;
  memset_s(&__s, 0x10uLL, 0, 0x10uLL);
  if (*(a1 + 4))
  {
    v125 = 0;
    v126 = 0;
    v127 = 0;
    v128 = a1;
    do
    {
      v128 = *v128;
      if (*(v128 + 160) == 1)
      {
        if (!*(v128 + 2) && (*(GetStaticLppPrivate() + 2) == 1 ? (v129 = v126 == 0) : (v129 = 0), v129))
        {
          if (*(v128 + 38) > 255)
          {
            if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v130 = mach_continuous_time();
              v131 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Length,%u\n", (*&g_MacClockTicksToMsRelation * v130), "PSP", 69, "lpp_transaction_provide_realtime_integrity_assistance", 772, *(v128 + 38));
              LbsOsaTrace_WriteLog(0x13u, __str, v131, 0, 1);
            }
          }

          else
          {
            LOBYTE(__s) = *(v128 + 38);
          }

          v132 = gnssOsa_Calloc("posp_alloc", 18, 1, __s);
          v125 = v132;
          if (__s)
          {
            v133 = 0;
            v134 = v128 + 17;
            do
            {
              v134 = *v134;
              v132[v133++] = *(v134 + 2);
            }

            while (v133 < __s);
          }

          v126 = 1;
        }

        else
        {
          ms_report_exception(2, 16402, 3553, "lpp_transaction_provide_realtime_integrity_assistance");
        }
      }

      ++v127;
    }

    while (v127 < *(a1 + 4));
  }

  else
  {
    v125 = 0;
  }

  if (__s)
  {
    *(&__s + 1) = v125;
    send_to_lpi_gps_real_time_integrity_req(__s, v125, v138, v137, a2);
  }

LABEL_225:
  v135 = *MEMORY[0x29EDCA608];
}

uint64_t lpp_transaction_process_provide_assistance_data_a_gnss_error(_DWORD *a1, uint64_t a2)
{
  v12 = *MEMORY[0x29EDCA608];
  v3 = *(a2 + 28);
  v4 = *(a2 + 32);
  if (*a1)
  {
    v5 = 1;
  }

  else
  {
    v6 = a1[1];
    if ((v6 - 1) >= 3)
    {
      v5 = 1;
      ms_report_exception(1, 16436, 5886, "lpp_transaction_map_location_server_error_cause");
    }

    else
    {
      v5 = v6 + 1;
    }
  }

  v10 = (v3 << 32) | 2;
  v11 = v4;
  lpm_map_transaction_id(a2, v9);
  result = gps_set_gnss_assist_data_error_req(v5, &v10);
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lpp_transaction_handle_request_location_error(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, int a5, int a6, unsigned int *a7, uint64_t a8, uint64_t a9, int a10)
{
  v21 = *MEMORY[0x29EDCA608];
  if (*a3 == 1 || a3[1] == 1)
  {
    if (a6 == 1)
    {
      send_to_lpi_pos_loc_info_req(a7, a9, a10, a1);
    }

    result = 0;
  }

  else
  {
    v15 = gnssOsa_Calloc("posp_alloc", 18, 1, 0x578uLL);
    *(a2 + 16) = v15;
    v15[8] = 1;
    *v15 = *(a1 + 16);
    v15[1392] = 1;
    *(v15 + 10) = 0;
    *(v15 + 12) = 5;
    v16 = *(a2 + 16);
    *(v16 + 9) = 1;
    *(v16 + 32) = 1;
    *(v16 + 28) = 0;
    *(v16 + 20) = 1;
    *(v16 + 56) = 0;
    *(v16 + 64) = 0;
    *(v16 + 216) = 1;
    *(v16 + 160) = 1;
    *(v16 + 156) = a5;
    if (a5 != 1)
    {
      SendStatusReport(*(a4 + 20), 31, 0, 0, 0, 255);
    }

    if (*(a1 + 25) == 1 && LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v17 = mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Transaction Data,Type,%hhu,SessionId,%u,CurState,%u,NextState,Terminated\n", (*&g_MacClockTicksToMsRelation * v17), "PSP", 68, "lpp_transaction_handle_request_location_error", *(a1 + 24), *(a1 + 32), *(a1 + 25));
      LbsOsaTrace_WriteLog(0x13u, __str, v18, 5, 1);
    }

    *(a1 + 25) = 2;
    lpp_transaction_location_information_cleanup(a1);
    result = 1;
  }

  v19 = *MEMORY[0x29EDCA608];
  return result;
}

void lpp_transaction_location_information_cleanup(_LPP_TRANSACTION *a1)
{
  v18 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    goto LABEL_26;
  }

  v2 = *(a1 + 24);
  if (v2 > 6)
  {
    goto LABEL_26;
  }

  if (v2 == 4)
  {
    if (*(a1 + 25) != 2)
    {
      v16 = *MEMORY[0x29EDCA608];
      v17 = *MEMORY[0x29EDCA608];
      v5 = 16414;
      v6 = 2055;
      goto LABEL_5;
    }

    v7 = *(a1 + 12);
    if (v7)
    {
      MEMORY[0x29C29EB20](v7, 0x1000C40605036ACLL);
    }

    *(a1 + 12) = 0;
    v8 = *(a1 + 8);
    if (v8)
    {
      free(v8);
      *(a1 + 8) = 0;
    }

    v9 = *(a1 + 9);
    if (v9)
    {
      GenericFreeSort(v9, &ySDL_T_LASN_A_GNSS_ProvideLocationInformation);
      v10 = *(a1 + 9);
      if (v10)
      {
        free(v10);
      }

      *(a1 + 9) = 0;
    }

    v11 = *(a1 + 11);
    if (v11)
    {
      GenericFreeSort(v11, &ySDL_T_LASN_A_GNSS_ProvideLocationInformation);
      v12 = *(a1 + 11);
      if (v12)
      {
        free(v12);
      }

      *(a1 + 11) = 0;
    }

    v13 = *(a1 + 10);
    if (v13)
    {
      GenericFreeSort(v13, &ySDL_T_LASN_WLAN_ProvideLocationInformation_r13);
      v14 = *(a1 + 10);
      if (v14)
      {
        free(v14);
      }

      *(a1 + 10) = 0;
    }

    *(a1 + 40) = 0;
LABEL_26:
    v15 = *MEMORY[0x29EDCA608];
    return;
  }

  v3 = *MEMORY[0x29EDCA608];
  v4 = *MEMORY[0x29EDCA608];
  v5 = 16409;
  v6 = 2069;
LABEL_5:

  ms_report_exception(2, v5, v6, "lpp_transaction_location_information_cleanup");
}

uint64_t lpp_transaction_process_request_location_information(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = *MEMORY[0x29EDCA608];
  if (*(a1 + 24) != 4)
  {
    v19 = 16409;
    v20 = 1471;
LABEL_19:
    ms_report_exception(2, v19, v20, "lpp_transaction_process_request_location_information");
LABEL_20:
    result = 0;
    goto LABEL_21;
  }

  if (*a2 != 4)
  {
    v19 = 16390;
    v20 = 1479;
    goto LABEL_19;
  }

  *(a1 + 112) = 0;
  v6 = lpp_session_detect((a1 + 28));
  if (!v6)
  {
    v19 = 16388;
    v20 = 1491;
    goto LABEL_19;
  }

  v8 = v6;
  __src = 0x7FFF;
  v38 = -1;
  v39 = 255;
  v40 = -256;
  v41 = 0;
  v42 = 255;
  v43 = -1;
  v44 = 0x200000003;
  v9 = -1;
  v45 = -1;
  v47 = 0;
  v46[0] = 0;
  *(v46 + 6) = 0;
  v48 = -1;
  if (*a2 != 4 || *(a2 + 8) || *(a2 + 16) || *(a2 + 128) != 1)
  {
    goto LABEL_13;
  }

  if (*(a2 + 160) == 1)
  {
    *(a1 + 48) = 1;
    if (!*(GetStaticLppPrivate() + 2))
    {
      *(a1 + 48) = 2;
    }
  }

  else if (!*(a2 + 160) && !*(a2 + 162) && !*(a2 + 184) && !*(a2 + 240))
  {
LABEL_13:
    v10 = 0;
    v11 = 0;
    v12 = 0xFF000000FFLL;
LABEL_14:
    v35 = v12;
    v36 = v9;
    v13 = (a1 + 48);
    v14 = a1;
    v15 = a3;
    v16 = v8;
    v17 = v11;
LABEL_15:
    result = lpp_transaction_handle_request_location_error(v14, v15, v13, v16, v17, v10, &__src, v7, v35, v36);
    goto LABEL_21;
  }

  if (*(a2 + 240) == 1)
  {
    *(a1 + 49) = 1;
    if (!*(GetStaticLppPrivate() + 4))
    {
      *(a1 + 49) = 2;
    }
  }

  if (*(a1 + 48) != 1 && *(a1 + 49) != 1)
  {
    SendStatusReport(*(v8 + 5), 22, 0, 0, 0, 255);
    v35 = 0xFF000000FFLL;
    v36 = -1;
    v13 = (a1 + 48);
    v14 = a1;
    v15 = a3;
    v16 = v8;
    v17 = 1;
    goto LABEL_57;
  }

  v22 = lpp_transaction_process_request_location_information_a_pos(a2 + 24, a1 + 48, &__src, *(v8 + 5));
  v17 = v22;
  v23 = *(a1 + 48);
  if (v23 == 1)
  {
    v24 = *(v8 + 18);
    if (v24 == 256 || v24 == *(a1 + 20))
    {
      v11 = 0;
      v23 = 1;
    }

    else
    {
      v23 = 2;
      *(a1 + 48) = 2;
      v11 = 2;
    }
  }

  else
  {
    v11 = 0;
  }

  if (*(a1 + 49) == 1)
  {
    v25 = *(v8 + 20);
    if (v25 == 256 || v25 == *(a1 + 20))
    {
      v26 = 1;
    }

    else
    {
      v26 = 0;
      v11 = 2;
      *(a1 + 49) = 2;
    }
  }

  else
  {
    v26 = 0;
  }

  if (v23 != 1)
  {
    if (v26)
    {
      if (*(a1 + 56) != 2)
      {
        goto LABEL_46;
      }

      goto LABEL_44;
    }

    if (!v22)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v28 = mach_continuous_time();
        v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Req Loc Info location failure cause,%u\n", (*&g_MacClockTicksToMsRelation * v28), "PSP", 73, "lpp_transaction_process_request_location_information", v11);
        LbsOsaTrace_WriteLog(0x13u, __str, v29, 4, 1);
      }

      v17 = v11;
    }

    v35 = 0xFF000000FFLL;
    v36 = -1;
    v13 = (a1 + 48);
    v14 = a1;
    v15 = a3;
    v16 = v8;
LABEL_57:
    v10 = 0;
    goto LABEL_15;
  }

  if (*(a1 + 56) != 2)
  {
    v23 = 1;
LABEL_46:
    v9 = *(v8 + 5);
    v12 = (*(v8 + 16) << 32) | 2;
    __src *= 1000;
    if (v23 == 1)
    {
      *(v8 + 68) = *(a1 + 16);
    }

    if (*(a1 + 49) == 1)
    {
      *(v8 + 76) = *(a1 + 16);
    }

    v10 = 1;
    goto LABEL_14;
  }

LABEL_44:
  *(a1 + 104) = 1;
  v27 = operator new(0x3CuLL, MEMORY[0x29EDC9418]);
  if (v27)
  {
    *v27 = 0x7FFF;
    v27[4] = -1;
    *(v27 + 2) = 255;
    *(v27 + 6) = -256;
    v27[14] = 0;
    *(v27 + 4) = 255;
    v27[20] = -1;
    *(v27 + 3) = 0x200000003;
    *(v27 + 8) = -1;
    *(v27 + 13) = 0;
    *(v27 + 36) = 0;
    *(v27 + 42) = 0;
    v27[56] = -1;
    *(a1 + 96) = v27;
    memcpy_s("lpp_transaction_process_request_location_information", 1611, v27, 0x3Cu, &__src, 0x3CuLL);
    v38 = __src;
    __src = 0;
    v23 = *(a1 + 48);
    goto LABEL_46;
  }

  *(a1 + 96) = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v30 = mach_continuous_time();
    v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Location request allocation failed\n", (*&g_MacClockTicksToMsRelation * v30), "PSP", 69, "lpp_transaction_process_request_location_information", 1537);
    LbsOsaTrace_WriteLog(0x13u, __str, v31, 0, 1);
  }

  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0);
  result = 0;
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v33 = mach_continuous_time();
    v34 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v33), "PSP", 68, "lpp_transaction_process_request_location_information");
    LbsOsaTrace_WriteLog(0x13u, __str, v34, 5, 1);
    goto LABEL_20;
  }

LABEL_21:
  v21 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lpp_transaction_process_request_location_information_a_pos(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v43 = *MEMORY[0x29EDCA608];
  v8 = *a1;
  if (*a1 <= 1)
  {
    if (v8)
    {
      if (v8 != 1)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }

LABEL_7:
    if (*(a1 + 136) != 1)
    {
      goto LABEL_60;
    }

    v9 = 1;
    *(a3 + 56) = 1;
    if (*(a1 + 216) == 1)
    {
      *(a1 + 216) = 0;
      *(a2 + 1) = 0;
    }

    v10 = 2;
    goto LABEL_17;
  }

  if (v8 != 3)
  {
    if (v8 != 2)
    {
LABEL_14:
      *a2 = 514;
LABEL_62:
      result = 1;
      goto LABEL_63;
    }

    goto LABEL_7;
  }

LABEL_11:
  *(a3 + 56) = 0;
  if (*(a1 + 136) != 1)
  {
    v9 = 0;
    v11 = (a3 + 40);
    *(a3 + 36) = 1;
    goto LABEL_22;
  }

  if (*(a1 + 216) == 1)
  {
    SendStatusReport(a4, 22, 0, 0, 0, 255);
    goto LABEL_14;
  }

  v9 = 0;
  v10 = 1;
LABEL_17:
  *(a3 + 40) = 0;
  v11 = (a3 + 40);
  *(a3 + 36) = v10;
  if (*(a1 + 112))
  {
    if (**(a1 + 120))
    {
      *(a2 + 3) = 1;
      if (*(GetStaticLppPrivate() + 2) == 1 && ((*(GetStaticLppPrivate() + 3) >> v9) & 1) != 0)
      {
        *(a2 + 5) = 1;
        *(a3 + 44) |= 1u;
        *(a3 + 40) |= 1u;
      }
    }
  }

LABEL_22:
  if (*(a1 + 216))
  {
    *(a2 + 4) = 1;
    if (*(GetStaticLppPrivate() + 4) == 1 && ((*(GetStaticLppPrivate() + 5) >> v9) & 1) != 0)
    {
      *(a2 + 6) = 1;
      *v11 |= 2u;
    }
  }

  v12 = *(a2 + 5);
  if (!*(a2 + 5))
  {
    if (*(a2 + 3) == 1)
    {
      *a2 = 2;
    }

    v13 = (a2 + 6);
    if (*(a2 + 6))
    {
      *(a2 + 2) = *(a3 + 56);
      goto LABEL_38;
    }

LABEL_33:
    if (*(a2 + 4) == 1)
    {
      *(a2 + 1) = 2;
    }

    v14 = *(a3 + 56);
    if (v12)
    {
      goto LABEL_36;
    }

    *a2 = 2;
    if (v14 != 1)
    {
      if (v14)
      {
        goto LABEL_62;
      }

      v21 = a4;
      v22 = 22;
LABEL_61:
      SendStatusReport(v21, v22, 0, 0, 0, 255);
      goto LABEL_62;
    }

LABEL_60:
    v21 = a4;
    v22 = 23;
    goto LABEL_61;
  }

  v13 = (a2 + 6);
  if (!*(a2 + 6))
  {
    goto LABEL_33;
  }

  LOBYTE(v14) = *(a3 + 56);
LABEL_36:
  *(a2 + 2) = v14;
  if (v12 == 1)
  {
    *(a3 + 49) = *(a1 + 131);
    *(a3 + 46) = 0;
  }

LABEL_38:
  if (*(a1 + 80) == 1 && *(a1 + 76) == 1)
  {
    v15 = *(a1 + 28);
    *a3 = 0;
    *(a3 + 34) = 0;
    if (v15 != 1)
    {
      *(a2 + 8) = 0;
      v16 = *(a1 + 64);
      if (v16 > 0xFF)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v24 = mach_continuous_time();
          v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx time,%d\n", (*&g_MacClockTicksToMsRelation * v24), "PSP", 69, "lpp_transaction_process_request_location_information_a_pos", 772, *(a1 + 64));
          LbsOsaTrace_WriteLog(0x13u, __str, v25, 0, 1);
        }
      }

      else
      {
        *(a3 + 4) = v16;
      }

      if (*(a1 + 72) == 1 && (v26 = *(a1 + 68), *(a1 + 64) > v26))
      {
        if (v26 > 0xFF)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v27 = mach_continuous_time();
            v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx responseTimeEarlyFix_r12,%d\n", (*&g_MacClockTicksToMsRelation * v27), "PSP", 69, "lpp_transaction_process_request_location_information_a_pos", 772, *(a1 + 68));
            LbsOsaTrace_WriteLog(0x13u, __str, v28, 0, 1);
          }
        }

        else
        {
          *(a3 + 35) = v26;
        }

        *(a2 + 64) = 1025;
      }

      else
      {
        *(a3 + 35) = -1;
        *(a2 + 64) = 0;
      }

LABEL_75:
      *(a3 + 28) = 0;
      if (*(a1 + 36) == 1)
      {
        *(a3 + 28) = *(a1 + 32);
      }

      if (*(a1 + 48) == 1)
      {
        *(a3 + 8) = *(a1 + 40);
        v29 = *(a1 + 44);
        if (v29 > 0xFF)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v30 = mach_continuous_time();
            v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx confidence,%d\n", (*&g_MacClockTicksToMsRelation * v30), "PSP", 69, "lpp_transaction_process_request_location_information_a_pos", 772, *(a1 + 44));
            LbsOsaTrace_WriteLog(0x13u, __str, v31, 0, 1);
          }
        }

        else
        {
          *(a3 + 13) = v29;
        }
      }

      v32 = *(a1 + 49);
      *(a3 + 14) = v32;
      if (v32 == 1 && *(a1 + 60) == 1)
      {
        *(a3 + 16) = *(a1 + 52);
        v33 = *(a1 + 56);
        if (v33 > 0xFF)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v34 = mach_continuous_time();
            v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx confidence,%d\n", (*&g_MacClockTicksToMsRelation * v34), "PSP", 69, "lpp_transaction_process_request_location_information_a_pos", 772, *(a1 + 56));
            LbsOsaTrace_WriteLog(0x13u, __str, v35, 0, 1);
          }
        }

        else
        {
          *(a3 + 20) = v33;
        }
      }

      *(a3 + 12) = *(a1 + 77);
      *(a3 + 48) = 0;
      *(a3 + 24) = 2;
      if (*(a1 + 88) == 1)
      {
        *(a3 + 24) = *(a1 + 84);
      }

      *(a3 + 32) = -1;
      if (*(a1 + 96) == 1)
      {
        v36 = *(a1 + 89) == 1;
        *(a3 + 32) = v36;
        if (*(a1 + 90) == 1)
        {
          v36 |= 2u;
          *(a3 + 32) = v36;
        }

        if (*(a1 + 91) == 1)
        {
          v36 |= 4u;
          *(a3 + 32) = v36;
        }

        if (*(a1 + 92) == 1)
        {
          v36 |= 8u;
          *(a3 + 32) = v36;
        }

        if (*(a1 + 93) == 1)
        {
          v36 |= 0x10u;
          *(a3 + 32) = v36;
        }

        if (*(a1 + 94) == 1)
        {
          v36 |= 0x20u;
          *(a3 + 32) = v36;
        }

        if (*(a1 + 95) == 1)
        {
          *(a3 + 32) = v36 | 0x40;
        }
      }

      *(a3 + 33) = -1;
      if (*(a1 + 101) == 1)
      {
        v37 = *(a1 + 97) == 1;
        *(a3 + 33) = v37;
        if (*(a1 + 98) == 1)
        {
          v37 |= 2u;
          *(a3 + 33) = v37;
        }

        if (*(a1 + 99) == 1)
        {
          v37 |= 4u;
          *(a3 + 33) = v37;
        }

        if (*(a1 + 100) == 1)
        {
          *(a3 + 33) = v37 | 8;
        }
      }

      if (*v13 != 1)
      {
        goto LABEL_117;
      }

      *(a3 + 52) = 0;
      v38 = *(a1 + 200);
      if (!v38)
      {
        goto LABEL_117;
      }

      v39 = 0;
      v40 = 0;
      v41 = *(a1 + 208);
      do
      {
        v39 |= (*(v41 + v40) & 1) << v40;
        *(a3 + 52) = v39;
        ++v40;
      }

      while (v38 != v40);
      if (v39 & 2) == 0 && ((v39 & 1) == 0 || ((*(GetStaticLppPrivate() + 6) >> *(a3 + 52))))
      {
LABEL_117:
        result = 0;
        goto LABEL_63;
      }

      *(a2 + 1) = 2;
      goto LABEL_62;
    }
  }

  else
  {
    if (*(a1 + 28) != 1)
    {
      result = 0;
      *a2 = 514;
      goto LABEL_63;
    }

    *a3 = 0;
    *(a3 + 34) = 0;
  }

  v17 = *(a1 + 24);
  if (v17)
  {
    v18 = *(a1 + 16);
    if (v18)
    {
      if (v17 >= 0xA)
      {
        ms_report_exception(1, 16436, 256, "lpp_convert_reporting_interval");
        *a3 = 0;
      }

      else
      {
        *a3 = dword_2997283D0[v17 - 1];
        *(a2 + 8) = 2;
        if (v18 == 7)
        {
          LOBYTE(v19) = -1;
        }

        else
        {
          v19 = 1 << v18;
        }

        if (*(a1 + 20) != 1)
        {
          LOBYTE(v19) = -1;
        }

        *(a2 + 57) = v19;
        *(a2 + 58) = 0;
        *(a3 + 34) = v19;
      }

      goto LABEL_75;
    }
  }

  result = 2;
  if (*a2 == 1)
  {
    *a2 = 2;
  }

LABEL_63:
  v23 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lpp_transaction_process_provide_location_information(uint64_t a1, _BYTE *a2, unsigned __int8 *a3)
{
  v53 = *MEMORY[0x29EDCA608];
  *a3 = 0;
  if (*(a1 + 24) != 4)
  {
    v10 = 16409;
    v11 = 1759;
LABEL_13:
    ms_report_exception(2, v10, v11, "lpp_transaction_process_provide_location_information");
    v12 = 0;
    goto LABEL_14;
  }

  v6 = lpp_session_detect((a1 + 28));
  if (!v6)
  {
    v10 = 16388;
    v11 = 1769;
    goto LABEL_13;
  }

  v7 = v6;
  if (*a2 != 1)
  {
    goto LABEL_22;
  }

  if (*(a1 + 48) != 1 && *(a1 + 49) != 1)
  {
    v15 = 16413;
    v16 = 1831;
LABEL_17:
    ms_report_exception(2, v15, v16, "lpp_transaction_process_provide_location_information");
    goto LABEL_22;
  }

  v8 = a2[8];
  v9 = *(a1 + 50);
  if (v8 != v9 && ((v9 - 1) | (v8 - 1)) > 1u)
  {
    v15 = 16412;
    v16 = 1825;
    goto LABEL_17;
  }

  if (*(a1 + 112) == 1)
  {
    if (a2[280] == 1)
    {
      *(a1 + 113) = 2;
    }

    else
    {
      *(a1 + 113) = 3;
      lpp_transaction_add_provide_location_information_a_pos(a1 + 48, a2, 1);
    }
  }

  if (!*(a1 + 40))
  {
    *(a1 + 40) = 1;
  }

  lpp_transaction_add_provide_location_information_a_pos(a1 + 48, a2, 0);
LABEL_22:
  if (*(a1 + 56))
  {
    ms_report_exception(1, 16436, 1744, "lpp_transaction_process_provide_location_information_trigger_type");
LABEL_24:
    v17 = 1;
    v18 = gnssOsa_Calloc("posp_alloc", 18, 1, 0x578uLL);
    *(a3 + 3) = v18;
    v19 = 6;
    v18[12] = 6;
    v18[14] = 0;
    v18[16] = 0;
    *(v18 + 76) = 1;
    v18[18] = 2;
    *a3 = 1;
    goto LABEL_25;
  }

  v25 = *(a1 + 72);
  if (v25 && (!*(a1 + 112) || *(a1 + 112) == 1 && *(a1 + 113) == 3) && *(a1 + 48) == 1)
  {
    *(a1 + 48) = 5;
  }

  v26 = *(a1 + 80);
  if (v26 && *(a1 + 49) == 1)
  {
    *(a1 + 49) = 5;
  }

  if (*(a1 + 48) != 1 && *(a1 + 49) != 1)
  {
    if (*(a1 + 112) == 1)
    {
LABEL_62:
      v31 = *(a1 + 64);
      if (!v31)
      {
        v31 = gnssOsa_Calloc("posp_alloc", 18, 1, 0x90uLL);
        *(a1 + 64) = v31;
      }

      v32 = *(a1 + 113);
      v31[96] = 1;
      if (v32 == 3)
      {
        *(v31 + 23) = 0;
      }

      else if (v32 == 2)
      {
        *(v31 + 23) = 1;
        if (*(a1 + 112) == 1)
        {
          *(a1 + 113) = 4;
        }
      }

      goto LABEL_75;
    }

    if (!*(a1 + 64))
    {
      if (v25)
      {
        if (*(v25 + 352) == 1 || *(v25 + 176) == 1)
        {
          goto LABEL_75;
        }

        if (!v26)
        {
          goto LABEL_104;
        }
      }

      else if (!v26)
      {
        goto LABEL_24;
      }

      if (*(v26 + 48) != 1)
      {
LABEL_104:
        v51 = gnssOsa_Calloc("posp_alloc", 18, 1, 0x90uLL);
        *(a1 + 64) = v51;
        v51[48] = 0;
        v51[80] = 0;
        v51[88] = 1;
        *(v51 + 21) = 2;
      }
    }

LABEL_75:
    if (*(a1 + 40))
    {
      v33 = 0;
      v34 = (a1 + 64);
      v35 = 24;
      do
      {
        v36 = gnssOsa_Calloc("posp_alloc", 18, 1, 0x578uLL);
        *&a3[v35] = v36;
        memset_s(v36 + 48, 0x540uLL, 0, 0x540uLL);
        *(v36 + 12) = 5;
        *(v36 + 14) = 0;
        *(v36 + 16) = 0;
        if (*v34)
        {
          v36[216] = 1;
          v37 = *v34;
          *(v36 + 72) = **v34;
          v38 = v37[1];
          v39 = v37[2];
          v40 = v37[3];
          *(v36 + 136) = v37[4];
          *(v36 + 120) = v40;
          *(v36 + 104) = v39;
          *(v36 + 88) = v38;
          v41 = v37[5];
          v42 = v37[6];
          v43 = v37[7];
          *(v36 + 200) = v37[8];
          *(v36 + 184) = v43;
          *(v36 + 168) = v42;
          *(v36 + 152) = v41;
          if (*v34)
          {
            free(*v34);
          }

          *v34 = 0;
        }

        if (v34[1])
        {
          v36[616] = 1;
          memcpy(v36 + 224, v34[1], 0x188uLL);
          v44 = v34[1];
          if (v44)
          {
            free(v44);
          }

          v34[1] = 0;
        }

        else if (v34[3] && *(v34 + 49) == 3)
        {
          v36[616] = 1;
          memcpy(v36 + 224, v34[3], 0x188uLL);
          v50 = v34[3];
          if (v50)
          {
            free(v50);
          }

          v34[3] = 0;
        }

        else if (*(v34 - 16) == 2)
        {
          v36[616] = 1;
          v36[612] = 1;
          *(v36 + 580) = 1;
        }

        if (v34[2])
        {
          v36[1304] = 1;
          v45 = v34[2];
          *(v36 + 1224) = *v45;
          v46 = v45[1];
          v47 = v45[2];
          v48 = v45[4];
          *(v36 + 1272) = v45[3];
          *(v36 + 1288) = v48;
          *(v36 + 1240) = v46;
          *(v36 + 1256) = v47;
          v49 = v34[2];
          if (v49)
          {
            free(v49);
            v34[2] = 0;
          }
        }

        else if (*(v34 - 15) == 2)
        {
          v36[1304] = 1;
          v36[1300] = 1;
          *(v36 + 1276) = 1;
        }

        v17 = *a3 + 1;
        *a3 = v17;
        ++v33;
        v35 += 48;
        v34 += 9;
      }

      while (v33 < *(a1 + 40));
    }

    else
    {
      v17 = *a3;
    }

    if (!v17)
    {
      goto LABEL_32;
    }

    v19 = 5;
LABEL_25:
    v20 = 0;
    v21 = v17;
    v22 = 24;
    do
    {
      v23 = *&a3[v22];
      *(v23 + 8) = 1;
      *v23 = *(a1 + 16);
      if (*(a1 + 48) != 1 && *(a1 + 49) != 1)
      {
        *(v23 + 9) = v20 == v21 - 1;
      }

      *(v23 + 1392) = 1;
      *(v23 + 40) = 0;
      *(v23 + 48) = v19;
      v24 = *&a3[v22];
      if ((*(v24 + 48) - 5) <= 1)
      {
        *(v24 + 32) = 1;
        *(v24 + 28) = 0;
        *(v24 + 20) = 1;
      }

      ++v20;
      v21 = *a3;
      v22 += 48;
    }

    while (v20 < v21);
LABEL_32:
    v12 = 1;
    goto LABEL_47;
  }

  if (*(a1 + 112) == 1 && *(a1 + 113) != 4)
  {
    goto LABEL_62;
  }

  ms_report_exception(2, 16433, 1917, "lpp_transaction_process_provide_location_information");
  v12 = 0;
LABEL_47:
  v27 = *(a1 + 48);
  if (v27 == 1)
  {
    if (*(a1 + 49) == 1)
    {
      goto LABEL_14;
    }

    v28 = *(a1 + 16);
    goto LABEL_54;
  }

  v28 = *(a1 + 16);
  if (*(v7 + 17) == v28 && *(v7 + 18) == *(a1 + 20))
  {
    *(v7 + 68) = 0x10000000000;
  }

  if (*(a1 + 49) != 1)
  {
LABEL_54:
    if (*(v7 + 19) == v28 && *(v7 + 20) == *(a1 + 20))
    {
      *(v7 + 76) = 0x10000000000;
    }

    if (v27 != 1)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v29 = mach_continuous_time();
        v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Transaction Data,Type,%hhu,SessionId,%u,CurState,%u,NextState,Terminated\n", (*&g_MacClockTicksToMsRelation * v29), "PSP", 68, "lpp_transaction_process_provide_location_information", *(a1 + 24), *(a1 + 32), *(a1 + 25));
        LbsOsaTrace_WriteLog(0x13u, __str, v30, 5, 1);
      }

      *(a1 + 25) = 2;
      lpp_transaction_location_information_cleanup(a1);
    }
  }

LABEL_14:
  v13 = *MEMORY[0x29EDCA608];
  return v12;
}

void lpp_transaction_add_provide_location_information_a_pos(uint64_t a1, uint64_t a2, int a3)
{
  v42 = *MEMORY[0x29EDCA608];
  if (!a1 || !a2)
  {
    goto LABEL_54;
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    free(v6);
    *(a1 + 16) = 0;
  }

  if (a3 == 1)
  {
    v7 = 40;
  }

  else
  {
    v7 = 24;
  }

  v8 = *(a1 + v7);
  if (v8)
  {
    free(v8);
    *(a1 + v7) = 0;
  }

  v9 = *(a2 + 8);
  if (v9 > 1)
  {
    if (v9 != 255)
    {
      if (v9 == 2)
      {
        ms_report_exception(2, 16407, 5203, "lpp_transaction_add_provide_location_information_a_pos");
LABEL_17:
        v10 = *MEMORY[0x29EDCA608];

        lpp_transaction_add_provide_location_information_a_gnss_ue_based(a1, a2 + 8, a3);
        return;
      }

LABEL_54:
      v36 = *MEMORY[0x29EDCA608];
      return;
    }

    v11 = *MEMORY[0x29EDCA608];
    v12 = "lpp_transaction_add_provide_location_information_a_pos";
    v13 = 2;
    v14 = 16417;
    v15 = 5215;
  }

  else
  {
    if (*(a2 + 8))
    {
      if (v9 != 1)
      {
        goto LABEL_54;
      }

      goto LABEL_17;
    }

    if (*(a2 + 284))
    {
      *a1 = 1028;
      goto LABEL_54;
    }

    if ((*(a2 + 128) & 2) == 0)
    {
      goto LABEL_54;
    }

    v16 = gnssOsa_Calloc("posp_alloc", 18, 1, 0x50uLL);
    *(a1 + 32) = v16;
    memset_s(v16, 0x50uLL, 0, 0x50uLL);
    if (!*(a2 + 276))
    {
      v20 = *(a2 + 226);
      v21 = *(a2 + 232);
      v22 = *(a2 + 240);
      v23 = *(a2 + 242);
      v24 = *(a2 + 244);
      v25 = *(a2 + 246);
      v26 = *(a2 + 248);
      v27 = *(a2 + 250);
      v28 = *(a2 + 264);
      *(v16 + 48) = 1;
      if (v28 == 1)
      {
        *(v16 + 8) = 1;
        v39 = v26;
        v40 = v27;
        v38 = v25;
        v29 = gnssOsa_Calloc("posp_alloc", 18, 1, 0xEuLL);
        *__str = 0;
        snprintf(__str, 2uLL, "%.1d", v22 % 0xAu);
        snprintf(&__str[2], 2uLL, "%.1d", (v22 / 0xAu - 10 * ((6554 * (v22 / 0xAu)) >> 16)));
        *v29 = __str[2];
        v29[1] = __str[0];
        snprintf(__str, 2uLL, "%.1d", v23 % 0xAu);
        snprintf(&__str[2], 2uLL, "%.1d", (v23 / 0xAu - 10 * ((6554 * (v23 / 0xAu)) >> 16)));
        v29[2] = __str[2];
        v29[3] = __str[0];
        snprintf(__str, 2uLL, "%.1d", v24 % 0xAu);
        snprintf(&__str[2], 2uLL, "%.1d", (v24 / 0xAu - 10 * ((6554 * (v24 / 0xAu)) >> 16)));
        v29[4] = __str[2];
        v29[5] = __str[0];
        snprintf(__str, 2uLL, "%.1d", v38 % 0xAu);
        snprintf(&__str[2], 2uLL, "%.1d", (v38 / 0xAu - 10 * ((6554 * (v38 / 0xAu)) >> 16)));
        v29[6] = __str[2];
        v29[7] = __str[0];
        snprintf(__str, 2uLL, "%.1d", v39 % 0xAu);
        snprintf(&__str[2], 2uLL, "%.1d", (v39 / 0xAu - 10 * ((6554 * (v39 / 0xAu)) >> 16)));
        v29[8] = __str[2];
        v29[9] = __str[0];
        snprintf(__str, 2uLL, "%.1d", v40 % 0xAu);
        snprintf(&__str[2], 2uLL, "%.1d", (v40 / 0xAu - 10 * ((6554 * (v40 / 0xAu)) >> 16)));
        v29[10] = __str[2];
        v29[11] = __str[0];
        *(v29 + 6) = 90;
        *v16 = v29;
      }

      if (v20)
      {
        *(v16 + 40) = 1;
        *(v16 + 8) = v20;
        *(v16 + 9) = 1;
        v30 = gnssOsa_Calloc("posp_alloc", 18, 1, 0x58uLL);
        v16[2] = v30;
        v31 = v16 + 2;
        *v30 = 0;
        v16[3] = v30;
        if (v20 != 1)
        {
          v32 = v20 - 1;
          do
          {
            v33 = gnssOsa_Calloc("posp_alloc", 18, 1, 0x58uLL);
            *v16[3] = v33;
            v16[3] = v33;
            --v32;
          }

          while (v32);
        }

        do
        {
          v31 = *v31;
          *(v31 + 12) = 1;
          *(v31 + 2) = 6;
          v34 = gnssOsa_Calloc("posp_alloc", 18, 1, 6uLL);
          v31[2] = v34;
          memcpy_s("lpp_transaction_add_provide_location_information_a_wlan_ue_assisted", 3819, v34, *(v31 + 2), v21, 6uLL);
          if (*(v21 + 6) == 1)
          {
            *(v31 + 52) = 1;
            *(v31 + 12) = *(v21 + 8);
          }

          if (*(v21 + 10) == 1)
          {
            *(v31 + 72) = 1;
            v35 = *(v21 + 24);
            *(v31 + 14) = *(v21 + 16);
            *(v31 + 15) = v35;
            if (*(v21 + 29) == 1)
            {
              *(v31 + 68) = 1;
              *(v31 + 16) = *(v21 + 28);
            }
          }

          if (*(v21 + 32) == 1)
          {
            *(v31 + 80) = 1;
            *(v31 + 19) = *(v21 + 34);
          }

          if (*(v21 + 36) == 1)
          {
            *(v31 + 82) = 1;
            *(v31 + 81) = *(v21 + 37);
          }

          v21 += 40;
          --v20;
        }

        while (v20);
      }

      goto LABEL_54;
    }

    v17 = *(a2 + 269);
    v18 = *(a2 + 272);
    v19 = *(a2 + 268);
    *(v16 + 76) = 1;
    *(v16 + 13) = 1;
    if (v19 == 1)
    {
      *(v16 + 64) = 1;
    }

    if (v17 == 1)
    {
      *(v16 + 72) = 1;
    }

    if (v18 == 2 || v18 == 1)
    {
      *(v16 + 14) = v18;
      goto LABEL_54;
    }

    if (!v18)
    {
      *(v16 + 14) = 0;
      goto LABEL_54;
    }

    v37 = *MEMORY[0x29EDCA608];
    v12 = "lpp_transaction_add_provide_location_information_a_wlan_ue_assisted";
    v13 = 1;
    v14 = 16436;
    v15 = 3897;
  }

  ms_report_exception(v13, v14, v15, v12);
}

uint64_t lpp_transaction_get_ref_loc_bitmap(_LPP_TRANSACTION *a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 24);
  if (v1 == 2)
  {
    result = *(a1 + 40);
  }

  else if (v1 == 3)
  {
    result = *(GetStaticLppPrivate() + 2) == 1;
  }

  else
  {
    ms_report_exception(2, 16409, 2979, "lpp_transaction_get_ref_loc_bitmap");
    result = 0;
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void *lpp_fill_location_source(uint64_t a1, unsigned int a2)
{
  v7 = *MEMORY[0x29EDCA608];
  *a1 = 5;
  *(a1 + 4) = 1;
  result = gnssOsa_Calloc("posp_alloc", 18, 1, 5uLL);
  v5 = 0;
  *(a1 + 8) = result;
  do
  {
    *(*(a1 + 8) + v5) = (a2 >> v5) & 1;
    ++v5;
  }

  while (v5 != 5);
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

char *lpp_transaction_add_provide_location_information_a_gnss_ue_based(char *result, uint64_t a2, int a3)
{
  v5 = result;
  v32 = *MEMORY[0x29EDCA608];
  v6 = *(a2 + 8);
  if (v6 > 3)
  {
    if (v6 != 4)
    {
      if (v6 != 5)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    *result = 4;
LABEL_67:
    v30 = *MEMORY[0x29EDCA608];
    return result;
  }

  if (*(a2 + 8))
  {
    if (v6 != 1)
    {
LABEL_8:
      result = LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v7 = mach_continuous_time();
        v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Location Info Response\n", (*&g_MacClockTicksToMsRelation * v7), "PSP", 69, "lpp_transaction_add_provide_location_information_a_gnss_ue_based", 770);
        result = LbsOsaTrace_WriteLog(0x13u, __str, v8, 0, 1);
      }

      goto LABEL_67;
    }

LABEL_7:
    if (!*(a2 + 118))
    {
      result = gnssOsa_Calloc("posp_alloc", 18, 1, 0x188uLL);
      v11 = 24;
      if (a3 == 1)
      {
        v11 = 40;
      }

      *&v5[v11] = result;
      result[388] = 1;
      result[352] = 0;
      result[176] = 0;
      *(result + 89) = 1;
      *(result + 90) = 1;
      goto LABEL_67;
    }

    goto LABEL_8;
  }

  result = gnssOsa_Calloc("posp_alloc", 18, 1, 0x188uLL);
  v9 = result;
  v10 = 24;
  if (a3 == 1)
  {
    v10 = 40;
  }

  *&v5[v10] = result;
  if (v5[5] != 1 || (*(a2 + 116) & 1) == 0)
  {
    if (!*(a2 + 118))
    {
      result[388] = 1;
      result[352] = 0;
      result[176] = 0;
      *(result + 356) = 1;
    }

LABEL_66:
    *(*(v5 + 2) + 120) = 0;
    goto LABEL_67;
  }

  v12 = gnssOsa_Calloc("posp_alloc", 18, 1, 0x90uLL);
  *(v5 + 2) = v12;
  v13 = *(a2 + 58);
  v12[80] = v13;
  if (v13 != 1)
  {
LABEL_30:
    v12[88] = 0;
    v12[48] = 1;
    v20 = *(a2 + 26);
    if (v20 > 4)
    {
      if (*(a2 + 26) > 8u)
      {
        if (v20 == 9)
        {
          *v12 = 5;
          *(v12 + 2) = *(a2 + 28);
          *(*(v5 + 2) + 12) = *(a2 + 32);
          *(*(v5 + 2) + 16) = *(a2 + 40);
          *(*(v5 + 2) + 20) = *(a2 + 47);
          *(*(v5 + 2) + 24) = *(a2 + 48);
          *(*(v5 + 2) + 28) = *(a2 + 44);
          *(*(v5 + 2) + 32) = *(a2 + 45);
          *(*(v5 + 2) + 36) = *(a2 + 46);
          *(*(v5 + 2) + 40) = *(a2 + 56);
          *(*(v5 + 2) + 44) = *(a2 + 57);
          goto LABEL_48;
        }

        if (v20 != 10)
        {
          goto LABEL_43;
        }

        v21 = 6;
      }

      else
      {
        if (v20 != 5)
        {
          if (v20 == 8)
          {
            *v12 = 4;
            *(v12 + 2) = *(a2 + 28);
            *(*(v5 + 2) + 12) = *(a2 + 32);
            *(*(v5 + 2) + 16) = *(a2 + 40);
            *(*(v5 + 2) + 20) = *(a2 + 47);
            *(*(v5 + 2) + 24) = *(a2 + 48);
            goto LABEL_48;
          }

LABEL_43:
          ms_report_exception(1, 16436, 5693, "lpp_map_gnss_location_estimate");
          goto LABEL_48;
        }

        v21 = 3;
      }

      *v12 = v21;
      goto LABEL_48;
    }

    if (!*(a2 + 26))
    {
      *v12 = 0;
      *(v12 + 2) = *(a2 + 28);
      *(*(v5 + 2) + 12) = *(a2 + 32);
      *(*(v5 + 2) + 16) = *(a2 + 40);
      goto LABEL_48;
    }

    if (v20 == 1)
    {
      *v12 = 1;
      *(v12 + 2) = *(a2 + 28);
      *(*(v5 + 2) + 12) = *(a2 + 32);
      *(*(v5 + 2) + 16) = *(a2 + 40);
      *(*(v5 + 2) + 20) = *(a2 + 56);
      goto LABEL_48;
    }

    if (v20 == 3)
    {
      *v12 = 2;
      *(v12 + 2) = *(a2 + 28);
      *(*(v5 + 2) + 12) = *(a2 + 32);
      *(*(v5 + 2) + 16) = *(a2 + 40);
      *(*(v5 + 2) + 20) = *(a2 + 44);
      *(*(v5 + 2) + 24) = *(a2 + 45);
      *(*(v5 + 2) + 28) = *(a2 + 46);
      *(*(v5 + 2) + 32) = *(a2 + 57);
      goto LABEL_48;
    }

    goto LABEL_43;
  }

  if (*(a2 + 66) == 1)
  {
    if (*(a2 + 73) == 1)
    {
      v14 = *(a2 + 60);
      *(v12 + 13) = 3;
      *(v12 + 14) = v14;
      *(*(v5 + 2) + 60) = *(a2 + 62);
      *(*(v5 + 2) + 68) = *(a2 + 72);
      *(*(v5 + 2) + 64) = *(a2 + 68);
      *(*(v5 + 2) + 72) = *(a2 + 65);
      v15 = *(a2 + 74);
      v16 = 76;
      goto LABEL_29;
    }

    v18 = *(a2 + 60);
    *(v12 + 13) = 1;
    *(v12 + 14) = v18;
    *(*(v5 + 2) + 60) = *(a2 + 62);
    *(*(v5 + 2) + 68) = *(a2 + 72);
    v15 = *(a2 + 68);
    goto LABEL_27;
  }

  if (*(a2 + 64) == 1)
  {
    v17 = *(a2 + 60);
    *(v12 + 13) = 2;
    *(v12 + 14) = v17;
    *(*(v5 + 2) + 60) = *(a2 + 62);
    v15 = *(a2 + 65);
LABEL_27:
    v16 = 64;
    goto LABEL_29;
  }

  v19 = *(a2 + 60);
  *(v12 + 13) = 0;
  *(v12 + 14) = v19;
  v15 = *(a2 + 62);
  v16 = 60;
LABEL_29:
  *(*(v5 + 2) + v16) = v15;
  v12 = *(v5 + 2);
  if (v12)
  {
    goto LABEL_30;
  }

LABEL_48:
  v9[388] = 0;
  v9[176] = 0;
  v9[352] = 1;
  if (v5[5] == 1 && (*(a2 + 116) & 1) != 0)
  {
    v9[340] = 1;
    *(v9 + 84) = 1;
    v22 = gnssOsa_Calloc("posp_alloc", 18, 1, 1uLL);
    *(v9 + 43) = v22;
    if (*(a2 + 116))
    {
      *v22 = 1;
    }
  }

  if (*(a2 + 112) == 5)
  {
    *(v9 + 46) = *(a2 + 16) % 0x36EE80uLL;
    v9[192] = 0;
    v23 = *(a2 + 24);
  }

  else
  {
    *(v9 + 46) = *(a2 + 104);
    v24 = *(a2 + 108);
    if (v24 == 0xFFFF)
    {
      v25 = 0;
    }

    else
    {
      *(v9 + 47) = v24;
      v25 = 1;
    }

    v9[192] = v25;
    v23 = *(a2 + 110);
  }

  if (v23 == 255)
  {
    v26 = 0;
  }

  else
  {
    *(v9 + 49) = v23;
    v26 = 1;
  }

  v9[200] = v26;
  *(v9 + 51) = 0;
  v9[328] = 0;
  result = GetStaticLppPrivate();
  if (result[7] != 1)
  {
    goto LABEL_66;
  }

  v27 = *(a2 + 280);
  if (!*(a2 + 280))
  {
    goto LABEL_66;
  }

  v28 = *(v5 + 2);
  *(v28 + 120) = 1;
  v29 = *MEMORY[0x29EDCA608];

  return lpp_fill_location_source(v28 + 104, v27);
}

_BYTE *lpp_transaction_add_provideCapabilities_a_gnss(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  result = GetStaticLppPrivate();
  v3 = result[2];
  if (v3 == 1 && *(a1 + 24) == 1)
  {
    *(a1 + 16) = 0x100000001;
    v5 = gnssOsa_Calloc("posp_alloc", 18, 1, 0x70uLL);
    *v5 = 0;
    *a1 = v5;
    *(a1 + 8) = v5;
    result = GetStaticLppPrivate();
    if (result[2] == 1)
    {
      v5[2] = 0;
      *(v5 + 32) = 0;
      StaticLppPrivate = GetStaticLppPrivate();
      lpp_fill_in_bitstr_from_byte(v5 + 40, 3uLL, StaticLppPrivate[3]);
      result = lpp_fill_in_bitstr_from_byte(v5 + 56, 8uLL, 0x80u);
      *(v5 + 52) = 0;
      *(v5 + 106) = 1;
    }
  }

  if (*(a1 + 144) == 1)
  {
    *(a1 + 72) = 1;
    result = GetStaticLppPrivate();
    if (v3 == 1 && result[2] == 1)
    {
      *(a1 + 36) = 1;
      *(a1 + 32) = 1;
      *(a1 + 40) = gnssOsa_Calloc("posp_alloc", 18, 1, 1uLL);
      if (*(GetStaticLppPrivate() + 2) == 1)
      {
        **(a1 + 40) = 1;
      }

      *(a1 + 64) = 0;
      lpp_fill_in_bitstr_from_byte((a1 + 48), 1uLL, 1u);
      *(a1 + 80) = 1;
      *(a1 + 104) = 1;
      lpp_fill_in_bitstr_from_byte((a1 + 88), 1uLL, 1u);
      *(a1 + 112) = 0;
      *(a1 + 136) = 0x100000001;
      v8 = gnssOsa_Calloc("posp_alloc", 18, 1, 0x100uLL);
      *v8 = 0;
      *(a1 + 120) = v8;
      *(a1 + 128) = v8;
      result = GetStaticLppPrivate();
      if (result[2] == 1)
      {
        v8[2] = 0;
        *(v8 + 16) = 0;
        *(v8 + 24) = 0;
        *(v8 + 56) = 0;
        *(v8 + 112) = 1;
        *(v8 + 80) = 1;
        v9 = gnssOsa_Calloc("posp_alloc", 18, 1, 2uLL);
        *(v8 + 9) = v9;
        *(v8 + 68) = 1;
        v8[16] = 2;
        v9[1] |= 1u;
        *(v8 + 104) = 1;
        v10 = gnssOsa_Calloc("posp_alloc", 18, 1, 2uLL);
        *(v8 + 12) = v10;
        *(v8 + 92) = 1;
        v8[22] = 2;
        v10[1] |= 1u;
        *(v8 + 128) = 0;
        v11 = GetStaticLppPrivate();
        v12 = 0;
        if (v11[3])
        {
          v12 = 1;
          *(v8 + 136) = 1;
          *(v8 + 144) = 1;
        }

        *(v8 + 148) = v12;
        *(v8 + 176) = 1;
        *(v8 + 168) = 1;
        v13 = gnssOsa_Calloc("posp_alloc", 18, 1, 2uLL);
        *(v8 + 20) = v13;
        *(v8 + 156) = 1;
        v8[38] = 2;
        v13[1] |= 1u;
        *(v8 + 208) = 1;
        *(v8 + 200) = 1;
        result = gnssOsa_Calloc("posp_alloc", 18, 1, 1uLL);
        *(v8 + 24) = result;
        *(v8 + 188) = 1;
        v8[46] = 1;
        *result |= 1u;
        *(v8 + 120) = 1;
        *(v8 + 216) = 0;
      }

      if (*(a1 + 152) == 1)
      {
        *(a1 + 145) = 0;
        *(a1 + 149) = 256;
        *(a1 + 151) = 0;
      }

      if (*(a1 + 157) == 1)
      {
        *(a1 + 153) = 0;
      }
    }
  }

  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lpp_transaction_add_provideCapabilities_wlan(_BYTE *a1)
{
  v6 = *MEMORY[0x29EDCA608];
  StaticLppPrivate = GetStaticLppPrivate();
  lpp_fill_in_bitstr_from_byte(a1, 2uLL, StaticLppPrivate[5]);
  v3 = *(GetStaticLppPrivate() + 6);
  v4 = *MEMORY[0x29EDCA608];

  return lpp_fill_in_bitstr_from_byte(a1 + 16, 2uLL, v3);
}

void lpp_transaction_pos_aid_req(_BYTE *a1, unsigned __int8 *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v3 = lpp_session_detect(a2);
  if (v3)
  {
    v4 = v3;
    memset_s(&v8, 8uLL, 0, 8uLL);
    v8 = 1;
    v5 = lpp_transaction_start(v4, &v8, 6);
    if (v5)
    {
      lpp_transaction_act(v5, 6, a1);
    }

    else
    {
      ms_report_exception(2, 16425, 5850, "lpp_transaction_pos_aid_req");
    }

    v7 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v6 = *MEMORY[0x29EDCA608];

    ms_report_exception(2, 16426, 5837, "lpp_transaction_pos_aid_req");
  }
}

void _LPP_TRANSACTION::_LPP_TRANSACTION(_LPP_TRANSACTION *this)
{
  v3 = *MEMORY[0x29EDCA608];
  *this = 0;
  *(this + 1) = 0;
  *(this + 12) = 6;
  *(this + 28) = -1;
  *(this + 8) = -1;
  *(this + 60) = 0;
  memset_s(this + 40, 0x1B8uLL, 0, 0x1B8uLL);
  memset_s(this + 16, 8uLL, 0, 8uLL);
  v2 = *MEMORY[0x29EDCA608];
}

void T_UTRAN_GPS_TIME_s::T_UTRAN_GPS_TIME_s(T_UTRAN_GPS_TIME_s *this)
{
  v3 = *MEMORY[0x29EDCA608];
  *(this + 2) = -1;
  *(this + 12) = 0;
  memset_s(this + 16, 0xCuLL, 0, 0xCuLL);
  memset_s(this, 8uLL, 0, 8uLL);
  v2 = *MEMORY[0x29EDCA608];
}

void T_GNSS_POSITION_s::T_GNSS_POSITION_s(T_GNSS_POSITION_s *this)
{
  v2 = *MEMORY[0x29EDCA608];
  *this = -1;
  *(this + 1) = -1;
  *(this + 13) = -1;
  *(this + 3) = -1;
  *(this + 4) = -1;
  *(this + 5) = -1;
  *(this + 24) = -1;
  *(this + 50) = 0;
  *(this + 13) = -1;
  *(this + 28) = -256;
  *(this + 58) = 0;
  *(this + 15) = 255;
  *(this + 32) = 255;
  *(this + 66) = -1;
  *(this + 17) = 4;
  *(this + 12) = 0;
  *(this + 26) = 5;
  *(this + 54) = -1;
  *(this + 110) = 0;
  memset_s(this + 72, 0x18uLL, 0, 0x18uLL);
  v1 = *MEMORY[0x29EDCA608];
}

BOOL Is_BDS_IntEph_Same(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 16) == *(a2 + 16) && *(a1 + 8) == *(a2 + 8) && *(a1 + 12) == *(a2 + 12) && *(a1 + 18) == *(a2 + 18) && *(a1 + 19) == *(a2 + 19) && *(a1 + 20) == *(a2 + 20) && *(a1 + 21) == *(a2 + 21) && *(a1 + 22) == *(a2 + 22) && *(a1 + 24) == *(a2 + 24) && *(a1 + 28) == *(a2 + 28) && *(a1 + 32) == *(a2 + 32) && *(a1 + 36) == *(a2 + 36) && *(a1 + 40) == *(a2 + 40) && *(a1 + 44) == *(a2 + 44) && *(a1 + 48) == *(a2 + 48) && *(a1 + 50) == *(a2 + 50) && *(a1 + 52) == *(a2 + 52) && *(a1 + 56) == *(a2 + 56) && *(a1 + 60) == *(a2 + 60) && *(a1 + 64) == *(a2 + 64) && *(a1 + 68) == *(a2 + 68) && *(a1 + 72) == *(a2 + 72) && *(a1 + 76) == *(a2 + 76) && *(a1 + 80) == *(a2 + 80) && *(a1 + 84) == *(a2 + 84) && *(a1 + 88) == *(a2 + 88) && *(a1 + 90) == *(a2 + 90) && *(a1 + 92) == *(a2 + 92);
  v3 = *MEMORY[0x29EDCA608];
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GN_AGAL_Set_Eph_El(unsigned int *a1)
{
  v60 = *MEMORY[0x29EDCA608];
  if (!Is_GN_API_Set_Allowed("GN_AGAL_Set_Eph"))
  {
    goto LABEL_64;
  }

  if (*a1 > 0x93A7F)
  {
    v38 = *a1;
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: TOW = %d >604800, Out of range!");
LABEL_64:
    v33 = 0;
    goto LABEL_65;
  }

  v2 = *(a1 + 2);
  if (v2 >= 0x1000)
  {
    v39 = *(a1 + 2);
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: Week = %d >=4096, Out of range!");
    goto LABEL_64;
  }

  v3 = *(a1 + 6);
  if (v3 >= 0x40)
  {
    v40 = *(a1 + 6);
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: SVid = %d >=64, Out of range!");
    goto LABEL_64;
  }

  if (v3 >= 0x25)
  {
    v41 = *(a1 + 6);
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: SVid = %d >36, Unrealistic value!");
    goto LABEL_64;
  }

  v4 = *(a1 + 4);
  if (v4 >= 0x400)
  {
    v42 = *(a1 + 4);
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: IODnav = %d >=1024, Out of range!");
    goto LABEL_64;
  }

  v5 = *(a1 + 5);
  if (v5 >> 5 >= 0x13B)
  {
    v43 = *(a1 + 5);
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: toe = %d >=10080, Out of range!");
    goto LABEL_64;
  }

  v6 = 0.03;
  if (((v3 - 14) & 0xFB) == 0)
  {
    v6 = 0.25;
  }

  v7 = a1[4];
  if (v7 * 1.16415322e-10 > v6)
  {
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: e = %g > %g, Unrealistic value!");
    goto LABEL_64;
  }

  v8 = a1[5];
  v9 = vcvtd_n_f64_u32(v8, 0x13uLL);
  if (v9 < 4800.0)
  {
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: sqrtA = %g < %g, Unrealistic value!");
    goto LABEL_64;
  }

  if (v9 > 5800.0)
  {
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: sqrtA = %g > %g, Unrealistic value!");
    goto LABEL_64;
  }

  if (((*(a1 + 20) - 0x2000) >> 14) <= 2u)
  {
    v44 = *(a1 + 20);
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: IDot = %d <-2^13 or >=2^13, Out of range!");
    goto LABEL_64;
  }

  v10 = a1[9];
  if ((v10 - 0x800000) >> 24 != 255)
  {
    v45 = a1[9];
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: OmegaDot = %d <-2^23 or >=2^23, Out of range!");
    goto LABEL_64;
  }

  v11 = v10 * 3.57157734e-13;
  if (v11 < -0.00000198862815)
  {
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: OmegaDot = %g < %g, Unrealistic value!");
    goto LABEL_64;
  }

  if (v11 > 0.0)
  {
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: OmegaDot = %g > %g, Unrealistic value!");
    goto LABEL_64;
  }

  v59 = *(a1 + 6);
  v12 = a1[14];
  if ((v12 - 0x40000000) >= 0)
  {
    v46 = a1[14];
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: af0 = %d <-2^30 or >=2^30, Out of range!");
    goto LABEL_64;
  }

  v13 = a1[15];
  if ((v13 - 0x100000) >> 21 != 2047)
  {
    v47 = a1[15];
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: af1 = %d <-2^20 or >=2^20, Out of range!");
    goto LABEL_64;
  }

  v14 = *(a1 + 32);
  if (((v14 - 32) >> 6) <= 0x3FEu)
  {
    v48 = *(a1 + 32);
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: af2 = %d <-2^5 or >=2^5, Out of range!");
    goto LABEL_64;
  }

  v15 = *(a1 + 33);
  if (v15 >> 5 >= 0x13B)
  {
    v49 = *(a1 + 33);
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: toc = %d >=10080, Out of range!");
    goto LABEL_64;
  }

  v16 = *(a1 + 34);
  if (((v16 - 512) >> 10) <= 0x3Eu)
  {
    v50 = *(a1 + 34);
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: bgdE1E5b = %d <-2^9 or >=2^9, Out of range!");
    goto LABEL_64;
  }

  v17 = *(a1 + 35);
  if (((v17 - 512) >> 10) <= 0x3Eu)
  {
    v51 = *(a1 + 35);
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: bgdE1E5a = %d <-2^9 or >=2^9, Out of range!");
    goto LABEL_64;
  }

  v18 = *(a1 + 72);
  if (v18 >= 2)
  {
    v52 = *(a1 + 72);
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: Model_ID = %d >1, Out of range!");
    goto LABEL_64;
  }

  v19 = *(a1 + 73);
  if (v19 >= 2)
  {
    v53 = *(a1 + 73);
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: E5a_Nav_DVS = %d >1, Out of range!");
    goto LABEL_64;
  }

  v20 = *(a1 + 74);
  if (v20 >= 2)
  {
    v54 = *(a1 + 74);
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: E5b_Nav_DVS = %d >1, Out of range!");
    goto LABEL_64;
  }

  v21 = *(a1 + 75);
  if (v21 >= 2)
  {
    v55 = *(a1 + 75);
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: E1B_Nav_DVS = %d >1, Out of range!");
    goto LABEL_64;
  }

  v22 = *(a1 + 76);
  if (v22 >= 4)
  {
    v56 = *(a1 + 76);
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: E5a_Sig_HS = %d >3, Out of range!");
    goto LABEL_64;
  }

  v23 = *(a1 + 77);
  if (v23 >= 4)
  {
    v57 = *(a1 + 77);
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: E5b_Sig_HS = %d >3, Out of range!");
    goto LABEL_64;
  }

  v24 = *(a1 + 78);
  if (v24 >= 4)
  {
    v58 = *(a1 + 78);
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: E1B_Sig_HS = %d >3, Out of range!");
    goto LABEL_64;
  }

  v25 = (v59 - 1);
  if (v25 > 0x23)
  {
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: SVid = %d <%d or >%d, Out of range!");
    goto LABEL_64;
  }

  v26 = *(a1 + 20);
  v27 = p_NA;
  v28 = p_NA + 5400;
  v29 = p_NA + 5400 + 88 * v25;
  *(v29 + 8) = *a1;
  *(v29 + 12) = v2;
  *(v29 + 14) = v59;
  *(v29 + 15) = *(a1 + 7);
  *(v29 + 16) = v4;
  *(v29 + 18) = v5;
  *(v29 + 20) = a1[3];
  *(v29 + 24) = v7;
  *(v29 + 28) = v8;
  *(v29 + 32) = *(a1 + 3);
  *(v29 + 40) = a1[8];
  *(v29 + 44) = v10;
  *(v29 + 48) = v26;
  *(v29 + 50) = *(a1 + 42);
  *(v29 + 58) = *(a1 + 25);
  *(v29 + 60) = a1[13];
  *(v29 + 64) = v12;
  *(v29 + 68) = v13;
  *(v29 + 72) = v14;
  *(v29 + 74) = v15;
  *(v29 + 76) = v16;
  *(v29 + 78) = v17;
  *(v29 + 80) = v18;
  *(v29 + 81) = v19;
  *(v29 + 82) = v20;
  *(v29 + 83) = v21;
  *(v29 + 84) = v22;
  *(v29 + 85) = v23;
  *(v29 + 86) = v24;
  if (*(a1 + 79))
  {
    v30 = 5;
  }

  else
  {
    v30 = 3;
  }

  *(v29 + 4) = v30;
  *(v27 + v25 + 150) = 1;
  v31 = *(p_api + 48);
  if (*(v31 + 5) == 1 && *v31 >= 3)
  {
    v32 = 604800 * *(v31 + 16) + *(v31 + 24);
  }

  else
  {
    v32 = 0;
  }

  v36 = (v28 + 88 * v25);
  *v36 = v32;
  v33 = 1;
  Debug_Log_GAL_Eph(1, v36);
  if (g_Enable_Event_Log >= 3u)
  {
    EvLog_nd("GN_AGAL_Set_Eph: ", 2, v37, v59, *(p_NA + 88 * v25 + 5400));
  }

LABEL_65:
  v34 = *MEMORY[0x29EDCA608];
  return v33;
}

uint64_t GN_AGAL_Set_Alm_El(unsigned __int8 *a1)
{
  v45 = *MEMORY[0x29EDCA608];
  if (!Is_GN_API_Set_Allowed("GN_AGAL_Set_Alm"))
  {
    goto LABEL_48;
  }

  v2 = *a1;
  if (v2 >= 0x40)
  {
    v31 = *a1;
    EvCrt_v("GN_AGAL_Set_Alm: FAILED: SVid = %d >=64, Out of range!");
LABEL_48:
    v26 = 0;
    goto LABEL_49;
  }

  if (v2 >= 0x25)
  {
    v32 = *a1;
    EvCrt_v("GN_AGAL_Set_Alm: FAILED: SVid = %d >36, Unrealistic value!");
    goto LABEL_48;
  }

  v3 = a1[1];
  if (v3 >= 0x10)
  {
    v33 = a1[1];
    EvCrt_v("GN_AGAL_Set_Alm: FAILED: IODa = %d > 15, Out of range!");
    goto LABEL_48;
  }

  v4 = a1[2];
  if (v4 >= 4)
  {
    v34 = a1[2];
    EvCrt_v("GN_AGAL_Set_Alm: FAILED: WNa = %d > 3, Out of range!");
    goto LABEL_48;
  }

  v5 = *(a1 + 2);
  if (v5 >= 0x400)
  {
    v35 = *(a1 + 2);
    EvCrt_v("GN_AGAL_Set_Alm: FAILED: toa = %d > 1023, Out of range!");
    goto LABEL_48;
  }

  v6 = *(a1 + 3);
  if ((v6 - 4097) <= 0xDFFEu)
  {
    v36 = *(a1 + 3);
    EvCrt_v("GN_AGAL_Set_Alm: FAILED: dsqrtA = %d <-2^12 or >=2^12, Out of range!");
    goto LABEL_48;
  }

  v7 = vcvtd_n_f64_s32(v6, 9uLL);
  if (v7 < -640.588203)
  {
    EvCrt_v("GN_AGAL_Set_Alm: FAILED: dsqrtA = %g < %g, Unrealistic value!");
    goto LABEL_48;
  }

  if (v7 > 359.411797)
  {
    EvCrt_v("GN_AGAL_Set_Alm: FAILED: dsqrtA = %g > %g, Unrealistic value!");
    goto LABEL_48;
  }

  v8 = *(a1 + 4);
  if (v8 >= 0x800)
  {
    v37 = *(a1 + 4);
    EvCrt_v("GN_AGAL_Set_Alm: FAILED: e = %d >= 2^11, Out of range!");
    goto LABEL_48;
  }

  v9 = 0.03;
  if (((v2 - 14) & 0xFB) == 0)
  {
    v9 = 0.25;
  }

  if (vcvtd_n_f64_u32(v8, 0x10uLL) > v9)
  {
    EvCrt_v("GN_AGAL_Set_Alm: FAILED: e = %g > %g, Unrealistic value!");
    goto LABEL_48;
  }

  if ((*(a1 + 5) - 1025) <= 0xF7FEu)
  {
    v38 = *(a1 + 5);
    EvCrt_v("GN_AGAL_Set_Alm: FAILED: di0 = %d <-2^10 or >2^10, Out of range!");
    goto LABEL_48;
  }

  v10 = *(a1 + 7);
  if ((v10 - 1025) <= 0xF7FEu)
  {
    v39 = *(a1 + 7);
    EvCrt_v("GN_AGAL_Set_Alm: FAILED: OmegaDot = %d <-2^10 or >2^10, Out of range!");
    goto LABEL_48;
  }

  v11 = v10 * 3.6572952e-10;
  if (v11 < -0.00000198862815)
  {
    EvCrt_v("GN_AGAL_Set_Alm: FAILED: OmegaDot = %e < %e, Unrealistic value!");
    goto LABEL_48;
  }

  v44 = *a1;
  if (v11 > 0.0)
  {
    EvCrt_v("GN_AGAL_Set_Alm: FAILED: OmegaDot = %e > %e, Unrealistic value!");
    goto LABEL_48;
  }

  if (((*(a1 + 11) - 4096) >> 13) <= 6u)
  {
    v40 = *(a1 + 11);
    EvCrt_v("GN_AGAL_Set_Alm: FAILED: af1 = %d <-2^12 or >=2^12, Out of range!");
    goto LABEL_48;
  }

  v12 = a1[24];
  if (v12 >= 4)
  {
    v41 = a1[24];
    EvCrt_v("GN_AGAL_Set_Alm: FAILED: E5a_Sig_HS = %d >3, Out of range!");
    goto LABEL_48;
  }

  v13 = a1[25];
  if (v13 >= 4)
  {
    v42 = a1[25];
    EvCrt_v("GN_AGAL_Set_Alm: FAILED: E5b_Sig_HS = %d >3, Out of range!");
    goto LABEL_48;
  }

  v14 = a1[26];
  if (v14 >= 4)
  {
    v43 = a1[26];
    EvCrt_v("GN_AGAL_Set_Alm: FAILED: E1B_Sig_HS = %d >3, Out of range!");
    goto LABEL_48;
  }

  v15 = *a1;
  v16 = (v44 - 1);
  if (v16 > 0x23)
  {
    EvCrt_v("GN_AGAL_Set_Alm: FAILED: SVid = %d <%d or >%d, Out of range!");
    goto LABEL_48;
  }

  v17 = *(a1 + 5);
  v18 = *(a1 + 11);
  v19 = p_NA;
  v20 = p_NA + 8568;
  v21 = p_NA + 8568 + 36 * v16;
  v22 = *a1;
  *(v21 + 8) = v44;
  *(v21 + 9) = v3;
  *(v21 + 10) = v4;
  *(v21 + 12) = v5;
  *(v21 + 14) = v6;
  *(v21 + 16) = v8;
  *(v21 + 18) = v17;
  *(v21 + 20) = *(a1 + 6);
  *(v21 + 22) = v10;
  *(v21 + 24) = *(a1 + 8);
  *(v21 + 26) = *(a1 + 18);
  *(v21 + 30) = v18;
  *(v21 + 32) = v12;
  *(v21 + 33) = v13;
  *(v21 + 34) = v14;
  if (a1[27])
  {
    v23 = 5;
  }

  else
  {
    v23 = 3;
  }

  *(v21 + 4) = v23;
  *(v19 + v16 + 186) = 1;
  v24 = *(p_api + 48);
  if (*(v24 + 5) == 1 && *v24 >= 3)
  {
    v25 = *(v24 + 24) + 604800 * *(v24 + 16);
  }

  else
  {
    v25 = 0;
  }

  v29 = (v20 + 36 * v16);
  *v29 = v25;
  v26 = 1;
  Debug_Log_GAL_Alm(1, v29);
  if (g_Enable_Event_Log >= 3u)
  {
    EvLog_nd("GN_AGAL_Set_Alm: ", 2, v30, v44, *(p_NA + 36 * v16 + 8568));
  }

LABEL_49:
  v27 = *MEMORY[0x29EDCA608];
  return v26;
}

uint64_t GN_AGAL_Set_GGTO(__int16 *a1)
{
  v17 = *MEMORY[0x29EDCA608];
  if (!Is_GN_API_Set_Allowed("GN_AGAL_Set_GGTO"))
  {
    goto LABEL_6;
  }

  v3 = a1[1];
  if ((a1[1] - 2049) <= 0xEFFEu)
  {
    v15 = a1[1];
    EvCrt_v("GN_AGAL_Set_BGTO: FAILED: A1G = %d < -2^11 or >= 2^11, Out of range!");
LABEL_6:
    v5 = 0;
    goto LABEL_7;
  }

  v4 = *(a1 + 5);
  if (v4 >= 0x40)
  {
    v16 = *(a1 + 5);
    EvCrt_v("GN_AGAL_Set_BGTO: FAILED: WNoG = %d > 63, Out of range!");
    goto LABEL_6;
  }

  v8 = *(p_api + 48);
  if (*(v8 + 5) == 1 && *v8 >= 3)
  {
    v9 = *(v8 + 24) + 604800 * *(v8 + 16);
  }

  else
  {
    v9 = 0;
  }

  v10 = p_NA;
  v11 = p_NA + 4096;
  *(p_NA + 5384) = v9;
  if (*(a1 + 6))
  {
    v12 = 5;
  }

  else
  {
    v12 = 3;
  }

  *(v10 + 5388) = v12;
  v13 = *a1;
  *(v10 + 5392) = v13;
  *(v10 + 5394) = v3;
  v14 = *(a1 + 4);
  *(v11 + 1300) = v14;
  *(v11 + 1301) = v4;
  v5 = 1;
  *(v10 + 149) = 1;
  EvLog_nd("GN_AGAL_Set_GGTO: ", 4, v2, v13, v3, v14, v4);
LABEL_7:
  v6 = *MEMORY[0x29EDCA608];
  return v5;
}

void Gnm32_10SendPltCfgGnc(void)
{
  v9 = *MEMORY[0x29EDCA608];
  v0 = gnssOsa_Calloc("Gnm32_10SendPltCfgGnc", 108, 1, 0x50uLL);
  if (!v0)
  {
    goto LABEL_9;
  }

  v1 = v0;
  *(v0 + 3) = 4;
  *(v0 + 26) = -65281;
  v0[30] = -1;
  v2 = dword_2A193B6BC;
  if ((dword_2A193B6BC & 0x100) == 0)
  {
    if ((dword_2A193B6BC & 0x400) == 0)
    {
      goto LABEL_4;
    }

LABEL_13:
    *(v0 + 14) = word_2A193B7D4;
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = dword_2A193B7D0;
  if (dword_2A193B7D0 > 0xFF)
  {
    v7 = 0;
  }

  v0[30] = v7;
  if ((v2 & 0x400) != 0)
  {
    goto LABEL_13;
  }

LABEL_4:
  if ((v2 & 0x1000) != 0)
  {
LABEL_5:
    *(v0 + 3) = 260;
    v3 = xmmword_2A193B7E8;
    *(v0 + 56) = *&qword_2A193B7F8;
    *(v0 + 40) = v3;
  }

LABEL_6:
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_CFG_UPDATE_IND =>GNCP CfgMask,0x%X\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm32_10SendPltCfgGnc", *(v1 + 3));
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 4, 1);
  }

  AgpsSendFsmMsg(128, 134, 8394499, v1);
LABEL_9:
  v6 = *MEMORY[0x29EDCA608];
}

void Gnm32_11SendPltCfgLsim(void)
{
  v8 = *MEMORY[0x29EDCA608];
  v0 = gnssOsa_Calloc("Gnm32_11SendPltCfgLsim", 156, 1, 0x20uLL);
  if (!v0)
  {
LABEL_6:
    v5 = *MEMORY[0x29EDCA608];
    return;
  }

  v1 = v0;
  v0[2] = 0;
  v2 = gnssOsa_Calloc("Gnm32_11SendPltCfgLsim", 164, 1, 0x1CuLL);
  v1[3] = v2;
  if (v2)
  {
    *v2 = dword_2A193B6D8;
    *(v2 + 2) = qword_2A193B6C0;
    *(v2 + 6) = vuzp1_s16(*(&qword_2A193B6C0 + 4), vext_s8(*(&qword_2A193B6C0 + 4), *(&qword_2A193B6C0 + 4), 6uLL));
    v2[14] = BYTE1(dword_2A193B6D8);
    *(v2 + 4) = qword_2A193B6CC;
    *(v2 + 20) = vuzp1_s16(*(&qword_2A193B6CC + 4), vext_s8(*(&qword_2A193B6CC + 4), *(&qword_2A193B6CC + 4), 6uLL));
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_LSIM_LSIM_CONFIG_IND =>LSIM\n", (*&g_MacClockTicksToMsRelation * v3), "GNM", 73, "Gnm32_11SendPltCfgLsim");
      LbsOsaTrace_WriteLog(0xBu, __str, v4, 4, 1);
    }

    AgpsSendFsmMsg(128, 131, 8594435, v1);
    goto LABEL_6;
  }

  v6 = *MEMORY[0x29EDCA608];

  free(v1);
}

uint64_t Gnm32_00PrintPltfmCfg(const char *a1)
{
  v44 = *MEMORY[0x29EDCA608];
  if (strnlen(&g_PltfmConfig, 0xCuLL) <= 11 && LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PLTCFG:%s Version,%s \n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm32_00PrintPltfmCfg", a1, &g_PltfmConfig);
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PLTCFG:ConfigMask,0x%X\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm32_00PrintPltfmCfg", dword_2A193B6BC);
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PLTCFG:CommonMSAMask,0x%02X\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 73, "Gnm32_00PrintPltfmCfg", dword_2A193B6D8);
    LbsOsaTrace_WriteLog(0xBu, __str, v7, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PLTCFG:CommonMSBMask,0x%02X\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 73, "Gnm32_00PrintPltfmCfg", BYTE1(dword_2A193B6D8));
    LbsOsaTrace_WriteLog(0xBu, __str, v9, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PLTCFG:GPS  MSAMask,0x%04X,MSBMask,0x%04X\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 73, "Gnm32_00PrintPltfmCfg", qword_2A193B6C0, qword_2A193B6CC);
    LbsOsaTrace_WriteLog(0xBu, __str, v11, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PLTCFG:GLON MSAMask,0x%04X,MSBMask,0x%04X\n", (*&g_MacClockTicksToMsRelation * v12), "GNM", 73, "Gnm32_00PrintPltfmCfg", WORD1(qword_2A193B6C0), WORD1(qword_2A193B6CC));
    LbsOsaTrace_WriteLog(0xBu, __str, v13, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PLTCFG:BDS  MSAMask,0x%04X,MSBMask,0x%04X\n", (*&g_MacClockTicksToMsRelation * v14), "GNM", 73, "Gnm32_00PrintPltfmCfg", WORD2(qword_2A193B6C0), WORD2(qword_2A193B6CC));
    LbsOsaTrace_WriteLog(0xBu, __str, v15, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v16 = mach_continuous_time();
    v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PLTCFG:GAL  MSAMask,0x%04X,MSBMask,0x%04X\n", (*&g_MacClockTicksToMsRelation * v16), "GNM", 73, "Gnm32_00PrintPltfmCfg", HIWORD(qword_2A193B6C0), HIWORD(qword_2A193B6CC));
    LbsOsaTrace_WriteLog(0xBu, __str, v17, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v18 = mach_continuous_time();
    v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PLTCFG:SBAS MSAMask,0x%04X,MSBMask,0x%04X\n", (*&g_MacClockTicksToMsRelation * v18), "GNM", 73, "Gnm32_00PrintPltfmCfg", dword_2A193B6C8, dword_2A193B6D4);
    LbsOsaTrace_WriteLog(0xBu, __str, v19, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v20 = mach_continuous_time();
    v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PLTCFG:QZSS MSAMask,0x%04X,MSBMask,0x%04X\n", (*&g_MacClockTicksToMsRelation * v20), "GNM", 73, "Gnm32_00PrintPltfmCfg", HIWORD(dword_2A193B6C8), HIWORD(dword_2A193B6D4));
    LbsOsaTrace_WriteLog(0xBu, __str, v21, 4, 1);
  }

  if (strnlen(byte_2A193B6E0, 0xF0uLL) <= 239 && LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v22 = mach_continuous_time();
    v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PLTCFG:DeviceName,%s\n", (*&g_MacClockTicksToMsRelation * v22), "GNM", 73, "Gnm32_00PrintPltfmCfg", byte_2A193B6E0);
    LbsOsaTrace_WriteLog(0xBu, __str, v23, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v24 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v25 = 89;
    if ((dword_2A193B6BC & 0x80) == 0)
    {
      v25 = 78;
    }

    v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PLTCFG:DynamicSSF,%c\n", v24, "GNM", 73, "Gnm32_00PrintPltfmCfg", v25);
    LbsOsaTrace_WriteLog(0xBu, __str, v26, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v27 = mach_continuous_time();
    v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PLTCFG:SleepTO,%us\n", (*&g_MacClockTicksToMsRelation * v27), "GNM", 73, "Gnm32_00PrintPltfmCfg", dword_2A193B7D0);
    LbsOsaTrace_WriteLog(0xBu, __str, v28, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v29 = mach_continuous_time();
    v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PLTCFG:GuardTimeVal,%ums\n", (*&g_MacClockTicksToMsRelation * v29), "GNM", 73, "Gnm32_00PrintPltfmCfg", HIWORD(dword_2A193B6D8));
    LbsOsaTrace_WriteLog(0xBu, __str, v30, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v31 = mach_continuous_time();
    v32 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PLTCFG:MeasDelay,%ums\n", (*&g_MacClockTicksToMsRelation * v31), "GNM", 73, "Gnm32_00PrintPltfmCfg", word_2A193B7D4);
    LbsOsaTrace_WriteLog(0xBu, __str, v32, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v33 = mach_continuous_time();
    v34 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PLTCFG:XCOR SigThreshold,%fdBHz\n", (*&g_MacClockTicksToMsRelation * v33), "GNM", 73, "Gnm32_00PrintPltfmCfg", *&xmmword_2A193B7E8);
    LbsOsaTrace_WriteLog(0xBu, __str, v34, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v35 = mach_continuous_time();
    v36 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PLTCFG:XCOR MarginL1,%fdBHz\n", (*&g_MacClockTicksToMsRelation * v35), "GNM", 73, "Gnm32_00PrintPltfmCfg", *(&xmmword_2A193B7E8 + 1));
    LbsOsaTrace_WriteLog(0xBu, __str, v36, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v37 = mach_continuous_time();
    v38 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PLTCFG:XCOR MarginE1,%fdBHz\n", (*&g_MacClockTicksToMsRelation * v37), "GNM", 73, "Gnm32_00PrintPltfmCfg", *&qword_2A193B7F8);
    LbsOsaTrace_WriteLog(0xBu, __str, v38, 4, 1);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v40 = mach_continuous_time();
    v41 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PLTCFG:XCOR MarginB1,%fdBHz\n", (*&g_MacClockTicksToMsRelation * v40), "GNM", 73, "Gnm32_00PrintPltfmCfg", *&qword_2A193B800);
    result = LbsOsaTrace_WriteLog(0xBu, __str, v41, 4, 1);
  }

  v42 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm32_13UpdatePltfmCfg(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_SET_PLTFM_CONFIG\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm32_13UpdatePltfmCfg");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    v4 = *(a1 + 28);
    dword_2A193B6BC |= v4;
    v5 = v4 & 1;
    if (v4)
    {
      LOBYTE(dword_2A193B6D8) = *(a1 + 56);
      qword_2A193B6C0 = *(a1 + 32);
      dword_2A193B6C8 = *(a1 + 40);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 0x40) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_19;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

    BYTE1(dword_2A193B6D8) = *(a1 + 57);
    qword_2A193B6CC = *(a1 + 44);
    dword_2A193B6D4 = *(a1 + 52);
    v4 = *(a1 + 28);
    v5 = 1;
    if ((v4 & 0x40) == 0)
    {
LABEL_7:
      if ((v4 & 0x100) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_22;
    }

LABEL_19:
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: HWCfg changed BaudRate,%u,DeviceName,%s\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 73, "Gnm32_13UpdatePltfmCfg", *(a1 + 60), (a1 + 64));
      LbsOsaTrace_WriteLog(0xBu, __str, v11, 4, 1);
    }

    dword_2A193B6DC = *(a1 + 60);
    memcpy_s("Gnm32_13UpdatePltfmCfg", 314, byte_2A193B6E0, 0xF0u, (a1 + 64), 0xF0uLL);
    v4 = *(a1 + 28);
    if ((v4 & 0x100) == 0)
    {
LABEL_8:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_23;
    }

LABEL_22:
    dword_2A193B7D0 = *(a1 + 304);
    if ((v4 & 0x400) == 0)
    {
LABEL_9:
      if ((v4 & 0x200) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_24;
    }

LABEL_23:
    word_2A193B7D4 = *(a1 + 308);
    if ((v4 & 0x200) == 0)
    {
LABEL_10:
      if ((v4 & 0x1000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_25;
    }

LABEL_24:
    HIWORD(dword_2A193B6D8) = *(a1 + 58);
    if ((v4 & 0x1000) == 0)
    {
LABEL_11:
      if (!v5)
      {
LABEL_13:
        Gnm32_10SendPltCfgGnc();
        Gnm32_00PrintPltfmCfg("UPDATED");
        goto LABEL_16;
      }

LABEL_12:
      Gnm32_11SendPltCfgLsim();
      goto LABEL_13;
    }

LABEL_25:
    v12 = *(a1 + 344);
    xmmword_2A193B7E8 = *(a1 + 328);
    *&qword_2A193B7F8 = v12;
    if (!v5)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 69, "Gnm32_13UpdatePltfmCfg", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v7, 0, 1);
  }

LABEL_16:
  v8 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Gnm32_14GetPltfmCfg(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, int *))
{
  v21 = *MEMORY[0x29EDCA608];
  memset_s(&__s, 0x270uLL, 0, 0x270uLL);
  __s = dword_2A193B6BC;
  v12 = qword_2A193B6CC;
  v13 = dword_2A193B6D4;
  v14 = dword_2A193B6D8;
  v10 = qword_2A193B6C0;
  v11 = dword_2A193B6C8;
  v17 = dword_2A193B7D0;
  v18 = word_2A193B7D4;
  v20 = *&qword_2A193B7F8;
  v19 = xmmword_2A193B7E8;
  if ((dword_2A193B6BC & 0x40) != 0)
  {
    v15 = dword_2A193B6DC;
    strncpy(v16, byte_2A193B6E0, 0xF0uLL);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GetCfgCB returned PltfmCfg\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm32_14GetPltfmCfg");
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 4, 1);
  }

  result = a2(a1, 2, &__s);
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

_DWORD *Gnm32_21GetHwConfig(_DWORD *result)
{
  v1 = result;
  v5 = *MEMORY[0x29EDCA608];
  if ((dword_2A193B6BC & 0x40) != 0 && ((v3 = dword_2A193B6DC) != 0 || (result = strnlen(byte_2A193B6E0, 0xF0uLL), result)))
  {
    *v1 = 1;
    v1[2] = v3;
    v4 = *MEMORY[0x29EDCA608];

    return memcpy_s("Gnm32_21GetHwConfig", 424, v1 + 3, 0xF0u, byte_2A193B6E0, 0xF0uLL);
  }

  else
  {
    *v1 = 0;
    v2 = *MEMORY[0x29EDCA608];
  }

  return result;
}

void INS_CalcGlobalParameters(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 528);
  if ((*(a1 + 552) & 1) != 0 || v2 - *(a1 + 544) > *(a1 + 536))
  {
    v13 = 0u;
    *v14 = 0u;
    memset(v12, 0, sizeof(v12));
    *(a1 + 552) = 0;
    *(a1 + 544) = v2;
    v3 = InsUtil_ECEF2Geo_Iterative((a1 + 376), &v13, *(a1 + 408));
    *(a1 + 408) = v3;
    v4 = __sincos_stret(v14[0]);
    v5 = v4.__cosval * v4.__cosval + v4.__sinval * v4.__sinval * 0.986656055;
    if (v5 < 0.0)
    {
      if (g_FPE_LogSeverity)
      {
        v6 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v7 = *(g_TCU + 8);
        }

        else
        {
          v7 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to sqrt a negative number %f", "INS_CalcGlobalParameters", 90, v6, v7, v5);
        v3 = *(a1 + 408);
      }

      g_FPE_AssertFlag = 1;
      v5 = 1.0;
    }

    *(a1 + 488) = v3 * sqrt(v5);
    G_0 = CreateG_0(&v13);
    *(a1 + 480) = G_0;
    *&v9.f64[0] = vdupq_lane_s64(*&v14[1], 0).u64[0];
    v9.f64[1] = 2.0;
    v10 = vdivq_f64(vmulq_f64(vmulq_n_f64(v9, v14[1]), xmmword_299728460), xmmword_299728470);
    VecSet_3x1(3, v12, 0.0, 0.0, G_0 * (v10.f64[0] + 1.0 - v10.f64[1]));
    CreateC_e_n(&v13, (a1 + 168));
    Mult_MatT_Mat(9, a1 + 168, 3, v12, 3, a1 + 248);
  }

  v11 = *MEMORY[0x29EDCA608];
}

const char *LC_LOG_SEVERITY_GENERIC(const char *__format, ...)
{
  va_start(va, __format);
  *&v12[1999] = *MEMORY[0x29EDCA608];
  if (g_p_CB_LCD_SA_Dbg)
  {
    v1 = vsnprintf(&__str, 0x7D0uLL, __format, va);
    strcpy(&v12[v1 - 1], "\r\n");
    v2 = g_p_CB_LCD_SA_Dbg;
    v3 = __str;
    if (__str)
    {
      v4 = *g_p_CB_LCD_SA_Dbg;
      v5 = v12;
      do
      {
        *v2 = v4 + 1;
        *v4 = v3;
        v4 = *v2;
        if (*v2 >= v2[3])
        {
          v4 = v2[2];
          *v2 = v4;
        }

        v6 = *v5++;
        v3 = v6;
      }

      while (v6);
      v2 = g_p_CB_LCD_SA_Dbg;
    }

    if (v1 == 2000)
    {
      v7 = *v2;
      v8 = 114;
      v9 = 1u;
      do
      {
        *v2 = v7 + 1;
        *v7 = v8;
        v7 = *v2;
        if (*v2 >= v2[3])
        {
          v7 = v2[2];
          *v2 = v7;
        }

        v8 = str_3_0[v9++];
      }

      while (v9 != 29);
      v2 = g_p_CB_LCD_SA_Dbg;
    }

    __format = LCD_SA_Debug_Flush_Check(v2);
  }

  v10 = *MEMORY[0x29EDCA608];
  return __format;
}