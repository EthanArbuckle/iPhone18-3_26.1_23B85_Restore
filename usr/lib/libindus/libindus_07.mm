char *DD_Proc_Glon_Eph_Bit_Validation(char *result, int a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x29EDCA608];
  v4 = (result - 1);
  v5 = a2 - 1;
  if (v4 <= 0x17 && v5 <= 3)
  {
    v9 = result;
    v10 = 0;
    v11 = a4 + (v4 << 6) + 11928;
    v12 = 3 * v5;
    v14 = &MaskToStrCheck + 12 * v5;
    v15 = 3 * a2 - 3;
    do
    {
      v16 = *(v11 + 60);
      if (((v16 >> (v15 + v10)) & 1) == 0)
      {
        v17 = *(a3 + 4 * v10);
        v18 = *&v14[4 * v10];
        v13 = v11 + 4 * v12 + 12;
        if (((*(v13 + 4 * v10) ^ v17) & v18) != 0)
        {
          result = EvDbg_v("DD_Proc_Glon_Eph_Bit_Validation:  Fail SV %d  St %d  Wd %d  0x%x 0x%x 0x%x", v9, a2, v10, v17, *(v13 + 4 * v10), v18);
        }

        else
        {
          *(v11 + 60) = v16 | (1 << (v12 + v10));
        }
      }

      ++v10;
    }

    while (v10 != 3);
  }

  v19 = *MEMORY[0x29EDCA608];
  return result;
}

char *DD_Proc_Glon_Eph_String(char *result, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v8 = result;
  v41[1] = *MEMORY[0x29EDCA608];
  v9 = (*(a2 + 62) + 7);
  v10 = &result[4 * v9 + 4788];
  v11 = (*(a2 + 63) - 1);
  v12 = &v10[v11];
  v13 = v10[v11];
  if (v10[v11])
  {
    if (((*&result[48 * (*(a2 + 62) + 7) + 4844 + 12 * (*(a2 + 63) - 1)] ^ *(a2 + 20)) & MaskToStrCheck[3 * *(a2 + 63) - 3]) != 0)
    {
      v13 = 0;
    }

    else
    {
      v14 = 0;
      do
      {
        v15 = v14;
        if (v14 == 2)
        {
          break;
        }

        v16 = MaskToStrCheck[3 * *(a2 + 63) - 2 + v14];
        v17 = *&result[48 * (*(a2 + 62) + 7) + 4848 + 12 * (*(a2 + 63) - 1) + 4 * v14] ^ *(a2 + 24 + 4 * v14);
        ++v14;
      }

      while ((v17 & v16) == 0);
      v13 = v15 > 1;
    }
  }

  v18 = &result[48 * (*(a2 + 62) + 7) + 4844 + 12 * (*(a2 + 63) - 1)];
  v19 = *(a2 + 20);
  *(v18 + 8) = *(a2 + 28);
  *v18 = v19;
  v20 = &result[4 * v9 + 5516];
  *(v20 + v11) = *(a2 + 16);
  v21 = &result[4 * v9];
  *(v21 + 1397) = *a5;
  if (v13)
  {
    v22 = *v12 + 1;
  }

  else
  {
    v22 = 1;
  }

  *v12 = v22;
  if (!*(result + 1196))
  {
    v23 = *(a2 + 64);
    if (v23 >= 1)
    {
      *(result + 1196) = v23;
    }
  }

  v24 = *(a2 + 63);
  if (v24 == 1)
  {
    if ((*&result[48 * v9 + 4846] & 0x180) == 0)
    {
      goto LABEL_47;
    }

    *v10 = 1;
    v24 = *(a2 + 63);
  }

  if (v24 != 4)
  {
    goto LABEL_47;
  }

  v25 = result[4 * v9 + 4791];
  if (!result[4 * v9 + 4791])
  {
    goto LABEL_24;
  }

  v26 = (*&result[48 * v9 + 4888] >> 21) & 0x1F;
  if ((v26 - 1) > 0x17)
  {
    *v10 = 0;
    result = EvCrt_v("DD_Proc_Glon_Eph_String:  WARNING:  FrqId %d  Illegal SlotId %d !", *(a2 + 62), v26);
    goto LABEL_55;
  }

  v27 = a3 + 4 * (v26 - 1);
  if (*(a3 + 17424 + 4 * v9) == 2139062143 || *(v27 + 17328) == 2139062143)
  {
    if (v25 == 1 && *(v20 + 3))
    {
LABEL_24:
      v28 = (a4 + 80);
      if (*(a4 + 80))
      {
        goto LABEL_47;
      }

      goto LABEL_25;
    }

    *(v27 + 17328) = v9 - 7;
    *(a3 + 17424 + 4 * v9) = v26;
    *(a3 + 4 * v9 + 17480) = 2;
    result = EvLog_v("DD_Proc_Glon_Eph_String:  Set Slot Num %d for FreqId %d  (Str 4)", v26, *(v27 + 17328));
    if (*(a2 + 63) != 4)
    {
      goto LABEL_47;
    }

    v25 = v10[3];
  }

  v28 = (a4 + 80);
  v29 = *(a4 + 80);
  if (v25 > 1)
  {
    goto LABEL_31;
  }

  if ((*(a4 + 80) & 1) == 0)
  {
LABEL_25:
    if (!*(a2 + 16))
    {
      v29 = 0;
LABEL_31:
      v30 = *(a4 + 84);
      HIDWORD(v31) = *&v8[48 * v9 + 4884];
      LODWORD(v31) = *&v8[48 * v9 + 4888];
      v32 = (v31 >> 26) & 0x7FF;
      *(a4 + 84) = v32;
      if (v29)
      {
        if (v30 != v32)
        {
          *v28 = 0;
          result = EvCrt_nd("DD_Proc_Glon_Eph_String:  WARNING:  DayNo miss-match", 3, a3, v32, v30, *(a2 + 62));
        }
      }

      else if (*(a4 + 82) >= 1)
      {
        *v28 = 1;
        result = EvLog_nd("DD_Proc_Glon_Eph_String:  New DayNo ", 2, a3, v32, *(a2 + 62));
      }

      if (*v28 == 1 && (*(a4 + 16) != 1 || !*a4))
      {
        *v40 = 0;
        v41[0] = 0.0;
        v39 = 0.0;
        API_Get_UTC_Cor(1, v41);
        Glon_To_GPS_Time(*(a4 + 82), *(a4 + 84), *(a4 + 88), v41[0], &v40[1], v40, &v39);
        result = DD_Submit_WeekNum(*(a2 + 62), v40[1], SLOWORD(v40[0]), a4, v39);
        if (!*a5)
        {
          v33 = *(p_api + 48);
          if (*(v33 + 16) == 1 && *v33 >= 3)
          {
            v34 = *(v33 + 40) + 604800 * *(v33 + 32);
          }

          else
          {
            v34 = 0;
          }

          *a5 = v34;
        }
      }
    }
  }

LABEL_47:
  v35 = *v10;
  if (*v10 && v10[1] && v10[2] && v10[3])
  {
    v36 = 0;
    v8[v9 + 5572] = v35;
    do
    {
      v37 = v21[v36 + 4789];
      if (v37 < v35)
      {
        v8[v9 + 5572] = v37;
        v35 = v37;
      }

      ++v36;
    }

    while (v36 != 3);
  }

LABEL_55:
  v38 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DD_Save_New_GLON_Alm(uint64_t result, void *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v93 = *MEMORY[0x29EDCA608];
  v4 = a3 + 4096;
  if (a3[6461] <= 1u && !a3[6462])
  {
    goto LABEL_96;
  }

  v5 = 0;
  memset(v88, 0, sizeof(v88));
  v89 = 0;
  memset(v90, 0, 14);
  memset(v87, 0, 14);
  *&v6 = 0x7F7F7F7F7F7F7F7FLL;
  *(&v6 + 1) = 0x7F7F7F7F7F7F7F7FLL;
  v83 = a3 + 6068;
  v91[0] = v6;
  v91[1] = v6;
  v7 = a3 + 6069;
  v92 = 0x7F7F7F7F7F7F7F7FLL;
  v8 = 2139062143;
  v91[2] = v6;
  do
  {
    v9 = *(v7 - 1);
    if ((v9 - 6) <= 8 && *v7 == v9 + 1 && a3[v5 + 6036] == 1)
    {
      if (v8 == 2139062143)
      {
        v8 = v5;
      }

      else
      {
        v8 = v8;
      }

      v90[v5] = 1;
    }

    ++v5;
    v7 += 2;
  }

  while (v5 != 14);
  if (v8 == 2139062143)
  {
    if (g_Logging_Cfg >= 7)
    {
      result = EvLog("DD_Check_GLON_Alm:  No valid Freq Id Channels for Cross-Checking Almanacs");
    }

    goto LABEL_93;
  }

  v72 = result;
  v10 = 0;
  v11 = 0;
  *(v88 + v8) = 1;
  v12 = a3 + 6050;
  v80 = a3 + 6096;
  v77 = a3 + 4096;
  v78 = a3 + 6432;
  v76 = a3 + 6132;
  v75 = a3 + 6120;
  v13 = 1;
  v14 = &MaskToAlmCheck;
  while (v8 >= 13)
  {
    v38 = v13 - 1;
    LOBYTE(v18) = 1;
    v20 = v8;
    v15 = v8;
LABEL_42:
    if (v12[v15] != 5 || v83[2 * v15] != 14)
    {
      v39 = &v78[2 * v15];
      if (!*v39 && !v39[1])
      {
        if (v4[2365] == v18)
        {
          goto LABEL_72;
        }

        v40 = (*&v80[24 * v15] >> 19) & 0x1F;
        if ((v40 - 1) <= 0x17 && (*(a2[2148] + v40 - 1) & 1) == 0)
        {
LABEL_40:
          v87[v38] = 1;
        }
      }
    }

    if (v87[v38] == 1)
    {
      *(v91 + v38) = v8;
      ++v10;
    }

    if (v20 != v8)
    {
      v11 += v18;
      *(v88 + v20) = ++v13;
      v8 = v20;
      if (v11 <= v4[2365])
      {
        continue;
      }
    }

    v3 = a2;
    if (v10 >= 1)
    {
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v45 = a3;
      v46 = a3 + 5644;
      do
      {
        if (v87[v41] == 1)
        {
          v47 = *(v91 + v41);
          v48 = *&v46[28 * v47 + 8];
          if (v43)
          {
            v49 = v48 - v44 + 1461;
            if (v48 - v44 >= -730)
            {
              v49 = v48 - v44;
            }

            if (v48 - v44 <= 730)
            {
              result = v49;
            }

            else
            {
              result = (v48 - v44 - 1461);
            }

            if (result <= 0)
            {
              v47 = v42;
            }

            else
            {
              v47 = v47;
            }

            if (result > 0)
            {
              v44 = v48;
            }
          }

          else
          {
            v43 = v41 + 1;
            v44 = *&v46[28 * v47 + 8];
          }
        }

        else
        {
          v47 = v42;
        }

        ++v41;
        v42 = v47;
      }

      while ((v13 + 1) - 1 != v41);
      goto LABEL_73;
    }

    goto LABEL_93;
  }

  v81 = v11;
  v82 = v10;
  v15 = v8;
  v16 = &v83[2 * v8];
  v79 = &v80[24 * v8];
  v85 = v8 - 7;
  v17 = &v76[24 * v8];
  v18 = 1;
  v19 = v8;
  v20 = v8;
  v21 = &v75[24 * v8];
  v84 = v17;
  do
  {
    v22 = v19++;
    if (v90[v19] == 1 && *(v88 + v19) <= 0)
    {
      if (v12[v15] == 5 && *v16 == 14 && v12[v19] == 5 && v83[2 * v19] == 14)
      {
        if (((*&v80[24 * v19] ^ *v79) & 0x78000030) == 0)
        {
LABEL_36:
          *(v88 + v19) = v13;
          v18 = (v18 + 1);
          goto LABEL_20;
        }
      }

      else
      {
        v29 = v21;
        v30 = v14;
        v31 = v17;
        v32 = 3;
        v33 = v14;
        v34 = v21;
        while (1)
        {
          v36 = *v33++;
          v35 = v36;
          v37 = *v34++;
          result = v37;
          if (((v37 ^ *(v31 - 9)) & v35) != 0 || ((*(v29 + 3) ^ *(v31 - 6)) & v30[3]) != 0)
          {
            break;
          }

          v31 += 4;
          v29 = v34;
          v30 = v33;
          if (!--v32)
          {
            goto LABEL_36;
          }
        }
      }

      if (v20 == v8)
      {
        v20 = v19;
      }

      else
      {
        v20 = v20;
      }

      if (g_Logging_Cfg >= 7)
      {
        v71 = v12[v15];
        v23 = v12;
        v24 = v14;
        v86 = v20;
        v25 = v8;
        v26 = v15;
        v27 = v18;
        v28 = v16;
        result = EvLog_v("DD_Check_GLON_Alm:  Different Almanacs, FrqId_1 %d  FrqId_2 %d  FramId %d  StrId %d ", v85, v22 - 6, v71, *v16);
        v16 = v28;
        v18 = v27;
        v15 = v26;
        v8 = v25;
        v20 = v86;
        v14 = v24;
        v12 = v23;
        v17 = v84;
      }
    }

LABEL_20:
    v21 += 24;
  }

  while (v19 != 13);
  v38 = v13 - 1;
  if (v18 < 2u)
  {
    v4 = v77;
    v11 = v81;
    v10 = v82;
    goto LABEL_42;
  }

  v4 = v77;
  v11 = v81;
  v10 = v82;
  if (v77[2365] != v18)
  {
    goto LABEL_40;
  }

LABEL_72:
  LODWORD(v47) = v8;
  v45 = a3;
  v3 = a2;
LABEL_73:
  v50 = v47;
  v51 = v12[v47];
  if (v51 == 5 && v83[2 * v47] == 14)
  {
    goto LABEL_77;
  }

  v52 = &v80[24 * v47];
  v53 = (*v52 >> 19) & 0x1F;
  if ((v53 - 25) <= 0xFFFFFFE7)
  {
    result = EvCrt_v("DD_Validate_GLON_Alm:  Rejected:  FrqCh %d   Slot Number %d - Out of range", v47 - 7, v53);
    goto LABEL_77;
  }

  v54 = (v53 - 1);
  v55 = v3[2148];
  if (*(v55 + v54) == 1)
  {
    v56 = *&v45[28 * v50 + 5652] - *(v3 + 18 * v54 + 8128);
    v57 = v56 - 1461;
    if (v56 <= 730)
    {
      v57 = *&v45[28 * v50 + 5652] - *(v3 + 18 * v54 + 8128);
    }

    v58 = v56 >= -730 ? v57 : v56 + 1461;
    if (v58 <= 0)
    {
      if (v72 >= 1 && !v58 && (v51 != 5 || v83[2 * v50] != 14 && v54 <= 0x17))
      {
        v70 = v3 + 36 * v54 + 16248;
        if (!*v70)
        {
          *v70 = v72;
          *(v70 + 4) = 4;
          result = Core_Save_GLON_Alm(v53, 0, v70);
        }
      }

LABEL_77:
      if (v4[2365] == v4[2364])
      {
        goto LABEL_92;
      }

      goto LABEL_93;
    }
  }

  if (v51 != 5 || v83[2 * v50] != 14)
  {
    v59 = v3 + 36 * v54 + 16248;
    v60 = *v52;
    *(v59 + 28) = *(v52 + 2);
    *(v59 + 12) = v60;
    if (g_Logging_Cfg >= 7)
    {
      EvLog_v("DD_Save_New_GLON_Alm:  New Alm  Slot %d  FrqId %d  FramId %d  StrId %d  Suspect_Bits %d %d  Word[0] 0x%x  NA_Clk1 %d  NA_DBnmAlm  %d ", v53, v50 + 65, v12[v50], v83[2 * v50], v78[2 * v50], v78[2 * v50 + 1], *v52, *&v45[28 * v50 + 5652], *(v3 + 18 * v54 + 8128));
      v55 = v3[2148];
    }

    *(v3 + 18 * v54 + 8128) = *&v45[28 * v50 + 5652];
    *v59 = v72;
    *(v3 + 9 * v54 + 4063) = 4;
    *(v3[2144] + v54) = 1;
    *(v55 + v54) = 1;
    result = DD_GLON_Alm_Set_Health_Frq(v3 + 36 * v54 + 16248, v3);
    if (v72 >= 1)
    {
      result = Core_Save_GLON_Alm(v53, 0, (v3 + 36 * v54 + 16248));
    }
  }

LABEL_92:
  *v83 = 0;
  *(v83 + 1) = 0;
  *(v83 + 6) = 0;
  *(v83 + 2) = 0;
  v4[2366] = 0;
  *(v4 + 1182) = 0;
LABEL_93:
  v61 = 0;
  LODWORD(v62) = 0;
  v63 = v3[1489];
  v64 = p_NV;
  v65 = p_NV + 29172;
  v66 = *(v63 + 16);
  *(p_NV + 29172) = *v63;
  *(v65 + 16) = v66;
  v67 = 55665;
  do
  {
    v68 = *(v64 + 29168 + v61) ^ BYTE1(v67);
    v67 = 52845 * (v67 + v68) + 22719;
    v62 = (v62 + v68);
    ++v61;
  }

  while (v61 != 32);
  *(v64 + 29160) = v62;
LABEL_96:
  v69 = *MEMORY[0x29EDCA608];
  return result;
}

void DD_Save_New_GLON_Eph(int a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  v106 = *MEMORY[0x29EDCA608];
  if (a1 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (a1 + 10800) / 0x15180u;
    v12 = (a1 + 10800) % 0x15180u;
    v13 = a4 + 11928;
    v14 = ((22967 * (v11 - 5839)) >> 25) + ((22967 * (v11 - 5839)) >> 31);
    v15 = v11 - 1461 * v14 - 5838;
    v16 = v14 + 1;
    do
    {
      if (*(*(v6 + 17168) + v9) == 1)
      {
        v17 = *(v6 + 17200);
        if ((*(v17 + v9) & 1) == 0)
        {
          v18 = v8 == 0;
          if (v8)
          {
            v19 = v7;
          }

          else
          {
            v19 = v15;
          }

          if (!v8)
          {
            v8 = v16;
          }

          HIDWORD(v21) = *(v13 + 52);
          LODWORD(v21) = *(v13 + 56);
          v20 = v21 >> 26;
          if (v18)
          {
            v10 = v12;
          }

          v22 = v20 & 0x7FF;
          v23 = *(v13 + 26) & 0x7F;
          *(v17 + v9) = 1;
          if (v22 - v19 <= 730)
          {
            v7 = v19;
          }

          else
          {
            v7 = v19 + 1461;
          }

          *v13 = a1 - ((v10 - 900 * v23 + 86400 * (v7 - v22)) & ~((v10 - 900 * v23 + 86400 * (v7 - v22)) >> 31));
          *(v13 + 4) = 4;
          Core_Save_GLON_Eph((v9 + 1), 0, v13);
        }
      }

      ++v9;
      v13 += 64;
    }

    while (v9 != 24);
  }

  v24 = 0;
  v25 = a5 + 5572;
  v94 = a5 + 4844;
  v93 = a5 + 5516;
  v26 = v6 + 17424;
  v95 = v6 + 17328;
  v87 = a5 + 4788;
  v92 = v6 + 17480;
  v84 = ((2 * (a3 / 1800)) | 1);
  v83 = v6 + 11928;
  v27 = a5 + 5517;
  v86 = vdupq_n_s64(0x3FDF400000000000uLL);
  v85 = vdupq_n_s64(0x3F4F400000000000uLL);
  v91 = v6 + 17424;
  do
  {
    if (!*(v25 + v24))
    {
      goto LABEL_62;
    }

    memset(&v100[1], 0, 46);
    v100[0] = 0u;
    v28 = (v94 + 48 * v24);
    v29 = v28[1];
    *(v100 + 12) = *v28;
    v97 = 0u;
    memset(v98, 0, 30);
    v96 = 0u;
    *(&v100[1] + 12) = v29;
    *(&v100[2] + 12) = v28[2];
    GLON_EphBin2Int(v100, &v96, *(&v100[2] + 12));
    v30 = 0;
    v31 = SBYTE12(v96);
    v32 = BYTE12(v96);
    v33 = (v93 + 4 * v24);
    LOBYTE(v34) = *v33;
    do
    {
      if (*(v27 + v30) <= v34)
      {
        v34 = v34;
      }

      else
      {
        v34 = *(v27 + v30);
      }

      ++v30;
    }

    while (v30 != 3);
    v35 = SBYTE12(v96) - 1;
    if (*(v25 + v24) >= 2u)
    {
      v36 = *(v26 + 4 * v24);
LABEL_26:
      v37 = (v26 + 4 * v24);
      v38 = v35;
      v39 = BYTE12(v96);
      if (v36 != v31)
      {
LABEL_27:
        v40 = SBYTE12(v96) - 1;
        v41 = v25;
        v42 = v6;
        v43 = BYTE12(v96);
        EvLog_v("DD_Save_New_GLON_Eph:  Set Slot Num %d for FreqId %d  (Eph)", SBYTE12(v96), *(v95 + 4 * v38));
        v32 = v43;
        v6 = v42;
        v25 = v41;
        v35 = v40;
        v39 = BYTE12(v96);
      }

      *(v95 + 4 * v38) = v24 - 7;
      *v37 = v31;
      v26 = v91;
      goto LABEL_29;
    }

    if ((*(*(v6 + 17176) + v35) & 1) != 0 || (*(*(v6 + 17168) + v35) & 1) != 0 || v34)
    {
      if ((*(v26 + 4 * v24) == 2139062143 || *(v95 + 4 * v35) == 2139062143) && (*(v87 + 4 * v24 + 3) > 1u || !v33[3]))
      {
        *(v95 + 4 * v35) = v24 - 7;
        *(v26 + 4 * v24) = v31;
        *(v92 + 4 * v24) = 2;
        EvLog_v("DD_Save_New_GLON_Eph:  Set Slot Num %d for FreqId %d  (Str 4)", v31, *(v95 + 4 * v35));
      }

      goto LABEL_61;
    }

    v37 = (v26 + 4 * v24);
    v36 = *v37;
    v38 = SBYTE12(v96) - 1;
    if (*v37 == 2139062143)
    {
      goto LABEL_27;
    }

    v39 = BYTE12(v96);
    v26 = v91;
    if (*(v95 + 4 * v35) == 2139062143)
    {
      goto LABEL_26;
    }

LABEL_29:
    *(v92 + 4 * v24) = 2;
    if ((v39 - 25) <= 0xE7u)
    {
      if (g_Logging_Cfg >= 5)
      {
        EvCrt_v("DD_Validate_GLON_Eph:  Rejected:  Invalid Out-of-range GLON Slot Num %d");
      }

      goto LABEL_61;
    }

    if (a2 < 4 || (*(v6 + 8972) - 1) > 5 || v84 == BYTE13(v96))
    {
      v44 = v39 - 1;
      v45.i64[0] = SHIDWORD(v97);
      v45.i64[1] = v98[0];
      v104 = vmulq_f64(vcvtq_f64_s64(v45), v86);
      v105 = v98[1] * 0.48828125;
      v46 = 0.0;
      v47 = 2;
      do
      {
        v46 = v46 + v104.f64[v47] * v104.f64[v47];
        v48 = v47-- + 1;
      }

      while (v48 > 1);
      v49 = sqrt(v46);
      if (v49 < 25200000.0 || v49 > 25800000.0)
      {
        EvCrt_v("DD_Validate_GLON_Eph:  Rejected:  SV Pos check, R %d  Mag_Pos %g");
      }

      else
      {
        v50.i64[0] = v98[2];
        v50.i64[1] = v98[3];
        v102 = vmulq_f64(vcvtq_f64_s64(v50), v85);
        v103 = v98[4] * 0.000953674316;
        v51 = 0.0;
        v52 = 2;
        do
        {
          v51 = v51 + v102.f64[v52] * v102.f64[v52];
          v53 = v52-- + 1;
        }

        while (v53 > 1);
        v54 = sqrt(v51);
        if (v54 >= 2720.0 && v54 <= 4000.0)
        {
          v101[0] = SLOBYTE(v98[5]) * 0.000000931322575;
          v101[1] = SBYTE1(v98[5]) * 0.000000931322575;
          v101[2] = SBYTE2(v98[5]) * 0.000000931322575;
          v55 = 0.0;
          v56 = 2;
          do
          {
            v55 = v55 + v101[v56] * v101[v56];
            v57 = v56-- + 1;
          }

          while (v57 > 1);
          v58 = sqrt(v55);
          v82 = v32;
          if (v58 > 0.000009)
          {
            EvCrt_v("DD_Validate_GLON_Eph:  Rejected:  SV Acc check, R %d  Mag_Acc %g", v39, v58);
            v59 = 0;
            *(*(v6 + 17224) + v44) = 1;
            goto LABEL_90;
          }

          if (v97 - 1462 <= 0xFFFFFA4A)
          {
            EvCrt_v("DD_Validate_GLON_Eph:  Rejected:  Eph Nt check, R %d  Nt %d", v39, v97);
            v59 = 0;
            goto LABEL_90;
          }

          v60 = (v39 - 1);
          if (*(*(v6 + 17168) + v44) == 1)
          {
            v61 = v83 + (v60 << 6);
            memset(v99, 0, 62);
            GLON_EphBin2Int(v61, v99, 0);
            if (BYTE13(v96) == BYTE13(v99[0]) || g_Logging_Cfg < 7)
            {
              if (BYTE13(v96) == BYTE13(v99[0]))
              {
                v62 = *(v61 + 60);
                if (v62 == 4095)
                {
                  v59 = 1;
                  goto LABEL_90;
                }

                if (g_Logging_Cfg >= 5)
                {
                  EvLog_v("DD_Validate_GLON_Eph:  (Adopted) Eph Binary difference with same tb SV %d tb %d checked 0x%x", SBYTE12(v96), BYTE13(v96), v62);
                }

                v63 = 1;
LABEL_75:
                v64 = v83 + (v35 << 6);
                v65 = *v28;
                v66 = v28[1];
                *(v64 + 44) = v28[2];
                *(v64 + 28) = v66;
                *(v64 + 12) = v65;
                *v64 = a1;
                *(v64 + 4) = 4;
                if (*(v25 + v24) <= 1u)
                {
                  v67 = 0;
                }

                else
                {
                  v67 = 4095;
                }

                *(v64 + 60) = v67;
                *(*(v6 + 17168) + v35) = 1;
                *(*(v6 + 17216) + v35) = 0;
                *(v64 + 8) = v24 - 7;
                v68 = *(v6 + 11912);
                v69 = BYTE5(v97);
                if (*(v68 + v35) == 1)
                {
                  v70 = "DD_GLON_Alm_Set_Health_Frq:  Health H->U Eph:  Slot %d  FrqId %d ";
                  if ((BYTE5(v97) & 1) == 0)
                  {
                    goto LABEL_85;
                  }
                }

                else
                {
                  if (BYTE5(v97))
                  {
                    v69 = 1;
LABEL_85:
                    *(v68 + v35) = v69 ^ 1;
                    if (v69)
                    {
                      v71 = 2;
                    }

                    else
                    {
                      v71 = 1;
                    }

                    *(*(v6 + 11920) + 20 * v35) = v71;
                    if (a1 < 1)
                    {
                      goto LABEL_61;
                    }

                    v59 = v63;
                    *(*(v6 + 17200) + v35) = 1;
                    Core_Save_GLON_Eph(v82, 0, v64);
LABEL_90:
                    if (a1 >= 1)
                    {
                      if (v59)
                      {
                        v72 = v83 + (v35 << 6);
                        if (!*v72)
                        {
                          *v72 = a1;
                          *(v72 + 4) = 4;
                          *(*(v6 + 17200) + v35) = 1;
                          Core_Save_GLON_Eph(v82, 0, v72);
                        }
                      }
                    }

                    goto LABEL_61;
                  }

                  v70 = "DD_GLON_Alm_Set_Health_Frq:  Health U->H Eph:  Slot %d  FrqId %d ";
                }

                EvLog_v(v70, v31);
                v64 = v83 + (v35 << 6);
                v69 = BYTE5(v97);
                v68 = *(v6 + 11912);
                goto LABEL_85;
              }
            }

            else
            {
              EvLog_v("DD_Validate_GLON_Eph:  New Eph SV %d  new Tb %d  existing Tb%d", SBYTE12(v96), BYTE13(v96), BYTE13(v99[0]));
            }
          }

          v63 = 0;
          goto LABEL_75;
        }

        EvCrt_v("DD_Validate_GLON_Eph:  Rejected:  SV Vel check, R %d  Vel_Mag %g");
      }

      *(*(v6 + 17224) + v44) = 1;
    }

    else
    {
      EvCrt_v("DD_Validate_GLON_Eph:  FAIL:  Tb check, R %d  est %d  dec %d");
    }

LABEL_61:
    *(v25 + v24) = 0;
LABEL_62:
    ++v24;
    v27 += 4;
  }

  while (v24 != 14);
  v73 = 0;
  LODWORD(v74) = 0;
  v75 = *(v6 + 11912);
  v76 = p_NV;
  v77 = p_NV + 29172;
  v78 = *(v75 + 16);
  *(p_NV + 29172) = *v75;
  *(v77 + 16) = v78;
  v79 = 55665;
  do
  {
    v80 = *(v76 + 29168 + v73) ^ BYTE1(v79);
    v79 = 52845 * (v79 + v80) + 22719;
    v74 = (v74 + v80);
    ++v73;
  }

  while (v73 != 32);
  *(v76 + 29160) = v74;
  v81 = *MEMORY[0x29EDCA608];
}

int *DD_Check_Age_GLON_Data(int *result, void *a2, uint64_t a3)
{
  v22 = *MEMORY[0x29EDCA608];
  if (*(result + 80) == 1)
  {
    v3 = result;
    if (result[19] >= 2)
    {
      v5 = 0;
      v6 = a2 + 2154;
      v7 = (a2 + 2032);
      v8 = a2 + 1498;
      v9 = 29248;
      do
      {
        v10 = a2[2146];
        if (*(v10 + v5) == 1)
        {
          HIDWORD(v11) = *(v8 - 1);
          LODWORD(v11) = *v8;
          LODWORD(v12) = *(v3 + 11) - 900 * (*(v8 - 15) & 0x7F);
          v13 = (v11 >> 26) & 0x7FF;
          if (((v11 >> 26) & 0x7FF) != 0)
          {
            LODWORD(v12) = v12 + 86400 * (*(v3 + 42) - v13);
            if (v12 > 63115200)
            {
              LODWORD(v12) = v12 - 126230400;
            }

            if (v12 >= -63115200)
            {
              v12 = v12;
            }

            else
            {
              v12 = (v12 + 126230400);
            }
          }

          else
          {
            if (v12 < -43200)
            {
              LODWORD(v12) = v12 + 86400;
            }

            if (v12 <= 43199)
            {
              v12 = v12;
            }

            else
            {
              v12 = (v12 - 86400);
            }
          }

          *(v6 + v5) = v12;
          if (v12 >= 0)
          {
            v14 = v12;
          }

          else
          {
            v14 = -v12;
          }

          if (v14 >= 0x26AD)
          {
            v15 = v8 - 14;
            *(v10 + v5) = 0;
            *(a2[2152] + v5) = 0;
            *(v15 + 46) = 0u;
            v15[1] = 0u;
            v15[2] = 0u;
            *v15 = 0u;
            *(v6 + v5) = 0;
            *(a2[2145] + v5) = 1;
            *(a2[2153] + v5) = 0;
            if (g_Logging_Cfg >= 5)
            {
              result = EvLog_nd("DD_Check_Age_GLON_Data:  Delete ", 2, a3, v5 + 1, v12);
            }
          }
        }

        v16 = a2[2148];
        if (*(v16 + v5) == 1)
        {
          v17 = *(v3 + 42) - *v7;
          v18 = v17 + 1461;
          if (v17 >= -730)
          {
            v18 = *(v3 + 42) - *v7;
          }

          if (v17 <= 729)
          {
            v19 = v18;
          }

          else
          {
            v19 = v17 - 1461;
          }

          if ((v19 - 183) <= 0xFFFFFF3A)
          {
            *(a2[2144] + v5) = 0;
            *(v16 + v5) = 0;
            *(v7 + 6) = 0;
            *(v7 - 4) = 0u;
            *(v7 + 4) = 0u;
            *(a2[2152] + v5) = 0;
            *(a2[2153] + v5) = 0;
            if ((v5 + 1) - 1 <= 0x17)
            {
              v20 = p_NV + v9;
              *(v20 - 8) = 0xFFFFFFFFLL;
              *v20 = 0uLL;
              *(v20 + 16) = 0uLL;
              *(v20 + 32) = 0;
            }

            if (v19 <= 182)
            {
              result = EvLog_v("DD_Check_Age_GLON_Data:  Future Almanac deleted,  SV %d age %d");
            }

            else
            {
              result = EvLog_v("DD_Check_Age_GLON_Data:  Old Almanac deleted,  SV %d age %d");
            }
          }
        }

        ++v5;
        v9 += 48;
        v7 += 18;
        v8 += 16;
      }

      while (v5 != 24);
    }
  }

  v21 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DD_Check_GLON_Strings(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x29EDCA608];
  if (result >= 3 && (*(a4 + 8972) - 1) <= 5)
  {
    if ((a2 % 30 + 1) >= 3)
    {
      v4 = ((a2 % 30 + (((a2 % 30) & 0x80u) >> 7)) << 24) >> 25;
    }

    else
    {
      v4 = 15;
    }

    v5 = *(a3 + 6064);
    v6 = a2 - v5;
    if (a2 < v5)
    {
      v6 = a2 - v5 + 86400;
    }

    v7 = v6 > 24;
    v8 = v5 >= 1 && v7;
    if (a2 < 1)
    {
      v8 = 0;
    }

    if (v4 == 2 && result != 3 || v8)
    {
      *(a3 + 6064) = 0u;
      *(a3 + 6080) = 0u;
    }

    if (a2 >= 1 && (v11 = *(a3 + 4784), v11 >= 1) && (v11 + 10) / 0x708u != (a2 + 10) / 0x708u || (a2 % 1800 >= 1771 ? (v12 = v4 == 10) : (v12 = 0), v12))
    {
      *(a3 + 5578) = 0;
      *(a3 + 5572) = 0;
      *(a3 + 4784) = 0u;
      *(a3 + 4800) = 0u;
      *(a3 + 4816) = 0u;
      *(a3 + 4828) = 0u;
    }
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

char *DD_LS_Delete_EphAlm_Str(char *result, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x29EDCA608];
  if (result >= 1 && *(a2 + 16) == 1 && *a2 >= 1)
  {
    v3 = result;
    v4 = *(a2 + 40);
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

    if ((result - 604800 * *(a2 + 32) - v7) >= 0xFFFFF1F1)
    {
      v8 = 0;
      v9 = a3 + 5588;
      v10 = a3 + 4788;
      v11 = a3 + 5572;
      v12 = a3 + 6464;
      v13 = a3 + 6096;
      v14 = a3 + 6068;
      v15 = (a3 + 6461);
      do
      {
        v16 = *(v9 + 4 * v8);
        if (v16 >= 1 && v16 <= v3)
        {
          *(v10 + 4 * v8) = 0;
          *(v11 + v8) = 0;
          *(v9 + 4 * v8) = 0;
          result = EvLog_v("DD_LS_Delete_EphAlm_Str:  Del Eph , Frq %2d ", v8 + 1);
        }

        v18 = *(v12 + 4 * v8);
        if (v18 >= 1 && v18 <= v3)
        {
          v20 = (v13 + 24 * v8);
          *v20 = 0;
          v20[1] = 0;
          v20[2] = 0;
          *(v14 + 2 * v8) = 0;
          *v15 = 0;
          *(v12 + 4 * v8++) = 0;
          result = EvLog_v("DD_LS_Delete_EphAlm_Str:  Del Alm , Frq %2d ", v8);
        }

        else
        {
          ++v8;
        }
      }

      while (v8 != 14);
    }
  }

  v21 = *MEMORY[0x29EDCA608];
  return result;
}

void *DD_Delete_Bad_GLON_Data(uint64_t a1, void *a2)
{
  v2 = 0;
  v16 = *MEMORY[0x29EDCA608];
  v3 = a2 + 2166;
  v4 = a1 + 4788;
  v5 = a1 + 4844;
  v6 = a1 + 5516;
  v7 = a1 + 5572;
  v8 = a2 + 1491;
  v9 = 30400;
  result = &unk_2A13ED000;
  do
  {
    v11 = a2[2145];
    if (*(v11 + v2) == 1)
    {
      v12 = *v3 + 7;
      if (v12 <= 0xD)
      {
        *(v4 + 4 * v12) = 0;
        v13 = (v5 + 48 * v12);
        *v13 = 0uLL;
        v13[1] = 0uLL;
        v13[2] = 0uLL;
        *(v6 + 4 * v12) = 0;
        *(v7 + v12) = 0;
        v11 = a2[2145];
      }

      *(v11 + v2) = 0;
      *(a2[2143] + v2) = 0;
      *(a2[2146] + v2) = 0;
      *(v8 + 46) = 0uLL;
      v8[1] = 0uLL;
      v8[2] = 0uLL;
      *v8 = 0uLL;
      *(v3 - 24) = 0;
      *(a2[2153] + v2) = 0;
      *(a2[2150] + v2) = 1;
      v14 = (p_NV + v9);
      *(v14 - 1) = 0xFFFFFFFFLL;
      *v14 = 0uLL;
      v14[1] = 0uLL;
      v14[2] = 0uLL;
      *(v14 + 46) = 0uLL;
    }

    ++v2;
    v9 += 72;
    v8 += 4;
    ++v3;
  }

  while (v2 != 24);
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DD_Delete_Inhib_GLON_Data(uint64_t result, uint64_t a2, void *a3)
{
  v3 = 0;
  v20 = *MEMORY[0x29EDCA608];
  v4 = a3 + 2166;
  v5 = a2 + 4788;
  v6 = a2 + 4844;
  v7 = a2 + 5516;
  v8 = a2 + 5572;
  v9 = a3 + 1491;
  v10 = a3 + 1683;
  v11 = a3 + 2031;
  v12 = 29248;
  v13 = 30400;
  do
  {
    if (*(result + v3) == 1)
    {
      v14 = (*v4 + 7);
      if (v14 <= 0xD && v3 + 1 == *(a3 + v14 + 4356))
      {
        *(v5 + 4 * v14) = 0;
        v15 = (v6 + 48 * v14);
        *v15 = 0uLL;
        v15[1] = 0uLL;
        v15[2] = 0uLL;
        *(v7 + 4 * v14) = 0;
        *(v8 + v14) = 0;
      }

      *(a3[2145] + v3) = 0;
      *(a3[2143] + v3) = 0;
      *(a3[2146] + v3) = 0;
      *(v9 + 46) = 0uLL;
      v9[1] = 0uLL;
      v9[2] = 0uLL;
      *v9 = 0uLL;
      *(a3[2147] + v3) = 0;
      *(v4 - 24) = 0;
      *(v10 + 111) = 0;
      *(v10 + 5) = 0uLL;
      *(v10 + 6) = 0uLL;
      *(v10 + 3) = 0uLL;
      *(v10 + 4) = 0uLL;
      *(v10 + 1) = 0uLL;
      *(v10 + 2) = 0uLL;
      *v10 = 0uLL;
      *(a3[2153] + v3) = 0;
      *(a3[2150] + v3) = 1;
      v16 = p_NV;
      v17 = (p_NV + v13);
      *v17 = 0uLL;
      v17[1] = 0uLL;
      v17[2] = 0uLL;
      *(v17 + 46) = 0uLL;
      *(a3[2144] + v3) = 0;
      *(v17 - 1) = 0xFFFFFFFFLL;
      *(a3[2148] + v3) = 0;
      *(v11 + 8) = 0;
      *v11 = 0uLL;
      *(v11 + 1) = 0uLL;
      v18 = v16 + v12;
      *(v18 - 8) = 0xFFFFFFFFLL;
      *v18 = 0uLL;
      *(v18 + 16) = 0uLL;
      *(v18 + 32) = 0;
    }

    ++v3;
    v12 += 48;
    v13 += 72;
    v11 = (v11 + 36);
    v10 = (v10 + 116);
    v9 += 4;
    ++v4;
  }

  while (v3 != 24);
  v19 = *MEMORY[0x29EDCA608];
  return result;
}

_BYTE *DD_Submit_WeekNum(_BYTE *result, __int16 a2, uint64_t a3, double *a4, double a5)
{
  v21 = *MEMORY[0x29EDCA608];
  if (a4[2])
  {
    goto LABEL_28;
  }

  v7 = result;
  if (*a4)
  {
    v8 = a5;
    v9 = a4[5];
    v10 = v8 - v9;
    v11 = v10 + 604800;
    if (v10 <= -302401)
    {
      v12 = a3 - 1;
    }

    else
    {
      v12 = a3;
    }

    if (v10 > -302401)
    {
      v11 = v8 - v9;
    }

    if (v10 >= 302400)
    {
      v13 = a3 + 1;
    }

    else
    {
      v13 = v12;
    }

    if (v10 >= 302400)
    {
      v14 = v10 - 604800;
    }

    else
    {
      v14 = v11;
    }

    if ((v14 + 129599) >= 0x2A2FF)
    {
      v15 = ((v14 + 43200) / 86400);
      v16 = v9 + (86400 * v15);
      a4[5] = v16;
      result = EvLog_nd("DD_Submit_WeekNum(R): Day number set ", 3, a3, v15, v16, v8);
    }

    v17 = v13 + (a2 << 10);
    goto LABEL_25;
  }

  a4[5] = a5;
  v18 = *(a4 + 19);
  if (v18 && (v18 >= 3 ? (v19 = 3) : (v19 = *(a4 + 19)), *a4 = v19, v18 > 2) || a5 >= 86370.0 && a5 < 518370.0)
  {
    v17 = a3 + (a2 << 10);
LABEL_25:
    *(a4 + 16) = v17;
    *(a4 + 16) = 1;
    *(a4 + 5) = *(a4 + 6);
    goto LABEL_26;
  }

  v17 = *(a4 + 16);
LABEL_26:
  if (v17)
  {
    result = EvLog_nd("DD_Submit_WeekNum(R): GPS Week No set from Glon SV", 4, a3, v7, v17, a4[5], *a4);
  }

LABEL_28:
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Inc_CA_Chips(uint64_t result, int *a2, int *a3)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = *a2 + result;
  for (*a2 = v3; *a2 > 1534499; v3 = *a2)
  {
    *a2 = v3 - 1534500;
    if (*a3 <= 403198)
    {
      v4 = 1;
    }

    else
    {
      v4 = -403199;
    }

    *a3 += v4;
  }

  if (v3 < 0)
  {
    do
    {
      *a2 = v3 + 1534500;
      if (*a3 < 1)
      {
        v5 = 403199;
      }

      else
      {
        v5 = -1;
      }

      *a3 += v5;
      v3 = *a2;
    }

    while (*a2 < 0);
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Nav_Kalman_Update(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, _BYTE *a12, uint64_t a13)
{
  v13 = MEMORY[0x2A1C7C4A8](a1);
  v329 = v15;
  v330 = v14;
  v339 = v16;
  v341 = v17;
  v346 = v18;
  v327 = v19;
  v21 = v20;
  v22 = v13;
  v398 = *MEMORY[0x29EDCA608];
  v23 = *(v13 + 136);
  v335 = v20 + 19918;
  *(v13 + 177) = 0;
  v326 = v13 + 177;
  v24 = v20 + 14995;
  v345 = (v13 + 136);
  *(v13 + 181) = 0;
  if (v23 == 1)
  {
    *a12 = 0;
  }

  else if (*a12 == 1)
  {
    *a12 = 0;
    *(v13 + 136) = 1;
    *(v13 + 140) = 77;
  }

  v396 = 0u;
  memset(v397, 0, 28);
  v394 = 0u;
  v395 = 0u;
  v392 = 0u;
  v393 = 0u;
  v390 = 0u;
  v391 = 0u;
  v388 = 0u;
  v389 = 0u;
  v387 = 0u;
  bzero(v386, 0x50BuLL);
  memset(&v385[156], 0, 52);
  memset(&v385[120], 0, 135);
  memset(&v385[76], 0, 171);
  memset(v385, 0, 289);
  bzero(v384, 0x120BuLL);
  bzero(v383, 0x3A38uLL);
  bzero(v382, 0x3A38uLL);
  bzero(v381, 0x5B68uLL);
  memset(v380, 0, sizeof(v380));
  LOWORD(v379) = 0;
  BYTE2(v379) = 0;
  memset(v378, 0, 56);
  LOWORD(v377) = 0;
  BYTE2(v377) = 0;
  memset(v376, 0, 56);
  BYTE2(v375) = 0;
  LOWORD(v375) = 0;
  memset(v374, 0, 56);
  BYTE2(v373) = 0;
  LOWORD(v373) = 0;
  memset(v372, 0, sizeof(v372));
  BYTE2(v371) = 0;
  LOWORD(v371) = 0;
  memset(v370, 0, 56);
  BYTE2(v369) = 0;
  LOWORD(v369) = 0;
  memset(&v368[15], 0, 104);
  memset(&v368[14] + 4, 0, 12);
  memset(&v368[10], 0, 53);
  memset(&v368[9] + 4, 0, 12);
  memset(&v368[5], 0, 53);
  memset(&v368[4] + 4, 0, 12);
  memset(v368, 0, 61);
  BYTE2(v367) = 0;
  LOWORD(v367) = 0;
  memset(v366, 0, 56);
  BYTE2(v365) = 0;
  LOWORD(v365) = 0;
  memset(&v364[7], 0, 56);
  memset(&v364[6] + 4, 0, 12);
  memset(&v364[2], 0, 61);
  v364[0] = 0uLL;
  *(&v364[1] + 5) = 0;
  *&v364[1] = 0;
  memset(v363, 0, 36);
  BYTE2(v362) = 0;
  LOWORD(v362) = 0;
  memset(&v361[5], 0, 112);
  memset(&v361[4] + 4, 0, 12);
  memset(v361, 0, 53);
  BYTE2(v360) = 0;
  LOWORD(v360) = 0;
  memset(&v359[31], 0, 105);
  memset(v359, 0, 495);
  memset(&v358[2], 0, 229);
  memset(v351, 0, sizeof(v351));
  memset(&__src[3984], 0, 33);
  memset(&v385[121], 0, 131);
  *(&v379 + 1) = 0;
  *(&v379 + 3) = 0;
  *(&v377 + 1) = 0;
  *(&v377 + 3) = 0;
  *(&v375 + 1) = 0;
  *(&v375 + 3) = 0;
  *(&v373 + 1) = 0;
  *(&v373 + 3) = 0;
  *(&v371 + 1) = 0;
  *(&v371 + 3) = 0;
  *(&v369 + 1) = 0;
  *(&v369 + 3) = 0;
  *(&v367 + 1) = 0;
  *(&v367 + 3) = 0;
  *(&v365 + 1) = 0;
  *(&v365 + 3) = 0;
  *(&v362 + 1) = 0;
  *(&v362 + 3) = 0;
  *(&v360 + 1) = 0;
  *(&v360 + 3) = 0;
  memset(v358, 0, 27);
  v357 = 0u;
  v356 = 0u;
  v355 = 0u;
  v387 = 0uLL;
  DWORD2(v388) = 0;
  *&v388 = 0;
  v389 = 0u;
  v390 = 0u;
  v391 = 0u;
  v392 = 0u;
  v393 = 0u;
  v394 = 0u;
  v395 = 0u;
  v396 = 0u;
  memset(v397, 0, 25);
  bzero(&v386[2], 0x509uLL);
  memset(&v385[157] + 3, 0, 45);
  *(&v385[76] + 2) = 0u;
  *(&v385[80] + 2) = 0u;
  *(&v385[84] + 2) = 0u;
  *(&v385[88] + 2) = 0u;
  *(&v385[92] + 2) = 0u;
  *(&v385[96] + 2) = 0u;
  *(&v385[100] + 2) = 0u;
  *(&v385[104] + 2) = 0u;
  *(&v385[108] + 2) = 0u;
  *(&v385[112] + 2) = 0u;
  *(&v385[114] + 3) = 0u;
  *(&v385[64] + 3) = 0u;
  *(&v385[68] + 1) = 0u;
  *(v385 + 3) = 0u;
  *(&v385[4] + 3) = 0u;
  *(&v385[8] + 3) = 0u;
  *(&v385[12] + 3) = 0u;
  *(&v385[16] + 3) = 0u;
  *(&v385[20] + 3) = 0u;
  *(&v385[24] + 3) = 0u;
  *(&v385[28] + 3) = 0u;
  *(&v385[32] + 3) = 0u;
  *(&v385[36] + 3) = 0u;
  *(&v385[40] + 3) = 0u;
  *(&v385[44] + 3) = 0u;
  *(&v385[48] + 3) = 0u;
  *(&v385[52] + 3) = 0u;
  *(&v385[56] + 3) = 0u;
  *(&v385[60] + 3) = 0u;
  bzero(&v384[6], 0x1205uLL);
  bzero(v383 + 3, 0x3A35uLL);
  bzero(v382 + 3, 0x3A35uLL);
  bzero(v381 + 3, 0x5B65uLL);
  memset(&v380[1], 0, 19);
  memset(v378 + 3, 0, 48);
  *&v378[3] = 0;
  memset(v376 + 3, 0, 48);
  *&v376[3] = 0;
  memset(v374 + 3, 0, 48);
  *&v374[3] = 0;
  memset(v372 + 3, 0, 96);
  v372[6] = 0u;
  memset(v370 + 3, 0, 53);
  memset(&v368[18] + 3, 0, 48);
  *&v368[21] = 0;
  memset(&v368[16] + 15, 0, 17);
  memset(&v368[15] + 7, 0, 17);
  memset(&v368[10] + 4, 0, 49);
  memset(&v368[5] + 4, 0, 49);
  memset(v368 + 4, 0, 57);
  memset(v366 + 3, 0, 53);
  memset(&v364[7] + 3, 0, 53);
  memset(&v364[2] + 4, 0, 57);
  *(v364 + 12) = 0uLL;
  *(v364 + 4) = 0;
  BYTE12(v364[1]) = 0;
  *(v363 + 7) = 0uLL;
  *(&v363[1] + 12) = 0;
  *(&v363[1] + 7) = 0;
  memset(&v361[5] + 3, 0, 109);
  memset(v361 + 4, 0, 49);
  memset(&v359[31] + 3, 0, 102);
  *(&v359[29] + 15) = 0u;
  *(&v359[29] + 5) = 0u;
  bzero(v354, 0x314uLL);
  v353 = 0;
  v352 = 0uLL;
  bzero(__src, 0x3E3DuLL);
  v25 = v396;
  *(v21 + 8) = v395;
  *(v21 + 9) = v25;
  *(v21 + 10) = v397[0];
  *(v21 + 43) = *(v397 + 12);
  v26 = v392;
  *(v21 + 4) = v391;
  *(v21 + 5) = v26;
  v27 = v394;
  *(v21 + 6) = v393;
  *(v21 + 7) = v27;
  v28 = v388;
  *v21 = v387;
  *(v21 + 1) = v28;
  v29 = v390;
  *(v21 + 2) = v389;
  *(v21 + 3) = v29;
  *(v21 + 98) = 0;
  *(v21 + 47) = 0;
  memcpy(v21 + 198, v386, 0x50BuLL);
  v30 = *&v385[160];
  *(v21 + 1489) = *&v385[156];
  *(v21 + 1505) = v30;
  *(v21 + 1521) = *&v385[164];
  *(v21 + 1537) = v385[168];
  *(v21 + 1541) = 0;
  *(v21 + 771) = 0;
  v21[386] = 0;
  v31 = *&v385[148];
  *(v21 + 411) = *&v385[144];
  *(v21 + 415) = v31;
  *(v21 + 1675) = *(&v385[151] + 3);
  v32 = *&v385[132];
  *(v21 + 395) = *&v385[128];
  *(v21 + 399) = v32;
  v33 = *&v385[140];
  *(v21 + 403) = *&v385[136];
  *(v21 + 407) = v33;
  v34 = *&v385[124];
  *(v21 + 387) = *&v385[120];
  *(v21 + 391) = v34;
  *(v21 + 1690) = 0;
  *(v21 + 1683) = 0;
  v35 = *&v385[112];
  *(v21 + 1822) = *&v385[108];
  *(v21 + 1838) = v35;
  *(v21 + 1849) = *(&v385[114] + 3);
  v36 = *&v385[96];
  *(v21 + 1758) = *&v385[92];
  *(v21 + 1774) = v36;
  v37 = *&v385[104];
  *(v21 + 1790) = *&v385[100];
  *(v21 + 1806) = v37;
  v38 = *&v385[80];
  *(v21 + 1694) = *&v385[76];
  *(v21 + 1710) = v38;
  v39 = *&v385[88];
  *(v21 + 1726) = *&v385[84];
  *(v21 + 1742) = v39;
  memcpy(v21 + 1865, v385, 0x121uLL);
  memcpy(v21 + 2154, v384, 0x120BuLL);
  memcpy(v21 + 6773, v383, 0x3A38uLL);
  memcpy(v21 + 21677, v382, 0x3A38uLL);
  memcpy(v21 + 36581, v381, 0x5B68uLL);
  *(v21 + 59981) = *v380;
  *(v21 + 59997) = *&v380[16];
  *(v21 + 60001) = v379;
  v40 = v378[1];
  *(v21 + 60017) = v378[0];
  *(v21 + 60033) = v40;
  *(v21 + 60049) = v378[2];
  *(v21 + 60065) = *&v378[3];
  *(v21 + 60073) = v377;
  v41 = v376[0];
  v42 = v376[1];
  v43 = v376[2];
  *(v21 + 60137) = *&v376[3];
  *(v21 + 60105) = v42;
  *(v21 + 60121) = v43;
  *(v21 + 60089) = v41;
  *(v21 + 60145) = v375;
  *(v21 + 60209) = *&v374[3];
  v44 = v374[2];
  v45 = v374[0];
  *(v21 + 60177) = v374[1];
  *(v21 + 60193) = v44;
  *(v21 + 60161) = v45;
  *(v21 + 60217) = v373;
  v46 = v372[1];
  *(v21 + 60233) = v372[0];
  *(v21 + 60249) = v46;
  v47 = v372[2];
  v48 = v372[3];
  v49 = v372[6];
  v50 = v372[4];
  *(v21 + 60313) = v372[5];
  *(v21 + 60329) = v49;
  *(v21 + 60281) = v48;
  *(v21 + 60297) = v50;
  *(v21 + 60265) = v47;
  *(v21 + 60345) = v371;
  v51 = v370[0];
  v52 = v370[1];
  v53 = v370[2];
  *(v21 + 60409) = *&v370[3];
  *(v21 + 60377) = v52;
  *(v21 + 60393) = v53;
  *(v21 + 60361) = v51;
  *(v21 + 60417) = v369;
  v54 = v368[18];
  v55 = v368[19];
  v56 = v368[20];
  *(v21 + 60481) = *&v368[21];
  *(v21 + 60449) = v55;
  *(v21 + 60465) = v56;
  *(v21 + 60433) = v54;
  *(v21 + 60491) = 0;
  *(v21 + 60489) = 0;
  v24[128] = 0;
  *(v24 + 516) = 0;
  v57 = *(&v368[16] + 8);
  *(v21 + 60513) = *(&v368[17] + 1);
  *(v21 + 60497) = v57;
  v58 = v368[15];
  *(v21 + 60537) = *&v368[16];
  *(v21 + 60521) = v58;
  v59 = *(&v368[14] + 4);
  *(v21 + 60553) = HIDWORD(v368[14]);
  *(v21 + 60545) = v59;
  *(v21 + 60559) = 0;
  *(v21 + 60557) = 0;
  v24[145] = 0;
  v60 = v368[10];
  v61 = v368[11];
  v62 = v368[12];
  *(v21 + 60609) = *(&v368[12] + 13);
  *(v21 + 15145) = v61;
  *(v21 + 15149) = v62;
  *(v21 + 15141) = v60;
  v63 = *(&v368[9] + 4);
  *(v21 + 60625) = HIDWORD(v368[9]);
  *(v21 + 60617) = v63;
  *(v21 + 60631) = 0;
  *(v21 + 60629) = 0;
  v24[163] = 0;
  v64 = v368[5];
  v65 = v368[6];
  v66 = v368[7];
  *(v21 + 60681) = *(&v368[7] + 13);
  *(v21 + 15163) = v65;
  *(v21 + 15167) = v66;
  *(v21 + 15159) = v64;
  v67 = *(&v368[4] + 4);
  *(v21 + 60697) = HIDWORD(v368[4]);
  *(v21 + 60689) = v67;
  *(v21 + 60703) = 0;
  *(v21 + 60701) = 0;
  v24[181] = 0;
  v68 = v368[0];
  v69 = v368[1];
  v70 = v368[2];
  *(v21 + 60753) = *(&v368[2] + 13);
  *(v21 + 15181) = v69;
  *(v21 + 15185) = v70;
  *(v21 + 60769) = v367;
  *(v21 + 15177) = v68;
  v71 = v366[0];
  v72 = v366[1];
  v73 = v366[2];
  *(v21 + 60833) = *&v366[3];
  *(v21 + 60801) = v72;
  *(v21 + 60817) = v73;
  *(v21 + 60785) = v71;
  *(v21 + 60841) = v365;
  v74 = v364[7];
  v75 = v364[8];
  v76 = v364[9];
  *(v21 + 60905) = *&v364[10];
  *(v21 + 60873) = v75;
  *(v21 + 60889) = v76;
  *(v21 + 60857) = v74;
  v77 = *(&v364[6] + 4);
  *(v21 + 60921) = HIDWORD(v364[6]);
  *(v21 + 60913) = v77;
  *(v21 + 60927) = 0;
  *(v21 + 60925) = 0;
  v24[237] = 0;
  v78 = v364[2];
  v79 = v364[3];
  v80 = v364[4];
  *(v21 + 60977) = *(&v364[4] + 13);
  *(v21 + 15237) = v79;
  *(v21 + 15241) = v80;
  *(v21 + 15233) = v78;
  v21[15249] = 0;
  *(v21 + 60993) = 0;
  v24[255] = 0;
  v81 = v364[0];
  *(v21 + 61017) = *(v364 + 13);
  *(v21 + 15251) = v81;
  v82 = v363[0];
  v83 = v363[1];
  *(v21 + 61065) = v363[2];
  *(v21 + 61033) = v82;
  *(v21 + 61049) = v83;
  *(v21 + 61071) = 0;
  *(v21 + 61069) = 0;
  *(v24 + 1092) = 0;
  *(v21 + 61073) = v362;
  v84 = v361[6];
  *(v21 + 61089) = v361[5];
  *(v21 + 61105) = v84;
  v85 = v361[7];
  v86 = v361[8];
  v87 = v361[11];
  v88 = v361[9];
  *(v21 + 61169) = v361[10];
  *(v21 + 61185) = v87;
  *(v21 + 61137) = v86;
  *(v21 + 61153) = v88;
  *(v21 + 61121) = v85;
  v89 = *(&v361[4] + 4);
  *(v21 + 61209) = HIDWORD(v361[4]);
  *(v21 + 61201) = v89;
  *(v21 + 61215) = 0;
  *(v21 + 61213) = 0;
  v24[309] = 0;
  v90 = v361[0];
  v91 = v361[1];
  v92 = v361[2];
  *(v21 + 61265) = *(&v361[2] + 13);
  *(v21 + 15309) = v91;
  *(v21 + 15313) = v92;
  *(v21 + 15305) = v90;
  *(v21 + 61273) = v360;
  v93 = v359[32];
  *(v21 + 61289) = v359[31];
  *(v21 + 61305) = v93;
  v94 = v359[33];
  v95 = v359[34];
  *(v21 + 61378) = *(&v359[36] + 9);
  v96 = v359[36];
  *(v21 + 61353) = v359[35];
  *(v21 + 61369) = v96;
  *(v21 + 61321) = v94;
  *(v21 + 61337) = v95;
  *(v21 + 7675) = 0;
  *(v21 + 61394) = 0;
  *(v21 + 61423) = 0;
  *(v21 + 3838) = 0u;
  memcpy(v21 + 61427, v359, 0x1EFuLL);
  v97 = v358[15];
  *(v21 + 62114) = v358[14];
  *(v21 + 62130) = v97;
  *(v21 + 62143) = *(&v358[15] + 13);
  v98 = v358[11];
  *(v21 + 62050) = v358[10];
  *(v21 + 62066) = v98;
  v99 = v358[13];
  *(v21 + 62082) = v358[12];
  *(v21 + 62098) = v99;
  v100 = v358[7];
  *(v21 + 61986) = v358[6];
  *(v21 + 62002) = v100;
  v101 = v358[9];
  *(v21 + 62018) = v358[8];
  *(v21 + 62034) = v101;
  v102 = v358[3];
  *(v21 + 61922) = v358[2];
  *(v21 + 61938) = v102;
  v103 = v358[5];
  *(v21 + 61954) = v358[4];
  *(v21 + 61970) = v103;
  *(v24 + 2171) = 0;
  v104 = v358[0];
  *(v24 + 551) = v357;
  *(v24 + 555) = v104;
  *(v24 + 2231) = *(v358 + 11);
  v105 = v356;
  *(v24 + 543) = v355;
  *(v24 + 547) = v105;
  *(v24 + 2247) = 0;
  *(v21 + 62229) = 0;
  *(v21 + 62231) = 0;
  v24[563] = 0;
  *(v24 + 2256) = 0;
  *(v21 + 62237) = 0;
  *(v21 + 62239) = 0;
  v24[565] = 0;
  *(v24 + 2264) = 0;
  *(v21 + 62245) = 0;
  *(v21 + 62247) = 0;
  v24[567] = 0;
  *(v24 + 2272) = 0;
  *(v21 + 62253) = 0;
  *(v21 + 62255) = 0;
  v24[569] = 0;
  *(v24 + 2280) = 0;
  *(v21 + 62263) = 0;
  *(v21 + 62261) = 0;
  v24[571] = 0;
  *(v24 + 2288) = 0;
  *(v21 + 62271) = 0;
  *(v21 + 62269) = 0;
  v24[573] = 0;
  *(v24 + 2296) = 0;
  *(v21 + 62279) = 0;
  *(v21 + 62277) = 0;
  v24[575] = 0;
  *(v24 + 2304) = 0;
  *(v21 + 62287) = 0;
  *(v21 + 62285) = 0;
  v24[577] = 0;
  *(v24 + 2312) = 0;
  *(v21 + 62295) = 0;
  *(v21 + 62293) = 0;
  v24[579] = 0;
  *(v24 + 2320) = 0;
  *(v21 + 62303) = 0;
  *(v21 + 62301) = 0;
  v24[581] = 0;
  *(v24 + 2328) = 0;
  *(v21 + 62311) = 0;
  *(v21 + 62309) = 0;
  v24[583] = 0;
  *(v24 + 2336) = 0;
  *(v21 + 62319) = 0;
  *(v21 + 62317) = 0;
  v24[585] = 0;
  *(v24 + 2344) = 0;
  *(v21 + 62327) = 0;
  *(v21 + 62325) = 0;
  v24[587] = 0;
  *(v24 + 2352) = 0;
  *(v21 + 62335) = 0;
  *(v21 + 62333) = 0;
  v24[589] = 0;
  *(v24 + 2360) = 0;
  *(v21 + 62343) = 0;
  *(v21 + 62341) = 0;
  v24[591] = 0;
  *(v24 + 2368) = 0;
  *(v21 + 62351) = 0;
  *(v21 + 62349) = 0;
  v24[593] = 0;
  *(v24 + 2376) = 0;
  *(v21 + 62359) = 0;
  *(v21 + 62357) = 0;
  v24[595] = 0;
  *(v24 + 2384) = 0;
  *(v21 + 62367) = 0;
  *(v21 + 62365) = 0;
  v24[597] = 0;
  *(v24 + 2392) = 0;
  *(v21 + 62375) = 0;
  *(v21 + 62373) = 0;
  v24[599] = 0;
  *(v24 + 2400) = 0;
  *(v21 + 62383) = 0;
  *(v21 + 62381) = 0;
  v24[601] = 0;
  *(v24 + 2408) = 0;
  *(v21 + 62391) = 0;
  *(v21 + 62389) = 0;
  v24[603] = 0;
  *(v24 + 2416) = 0;
  *(v21 + 62399) = 0;
  *(v21 + 62397) = 0;
  v24[605] = 0;
  *(v24 + 2424) = 0;
  *(v21 + 62407) = 0;
  *(v21 + 62405) = 0;
  v24[607] = 0;
  *(v24 + 2432) = 0;
  *(v21 + 62415) = 0;
  *(v21 + 62413) = 0;
  v24[609] = 0;
  *(v24 + 2440) = 0;
  *(v21 + 62423) = 0;
  *(v21 + 62421) = 0;
  v24[611] = 0;
  *(v24 + 2448) = 0;
  *(v21 + 62431) = 0;
  *(v21 + 62429) = 0;
  v24[613] = 0;
  *(v24 + 2456) = 0;
  *(v21 + 62439) = 0;
  *(v21 + 62437) = 0;
  v24[615] = 0;
  *(v24 + 2464) = 0;
  *(v21 + 62447) = 0;
  *(v21 + 62445) = 0;
  v24[617] = 0;
  *(v24 + 2472) = 0;
  *(v21 + 62455) = 0;
  *(v21 + 62453) = 0;
  v24[619] = 0;
  *(v24 + 2480) = 0;
  *(v21 + 62463) = 0;
  *(v21 + 62461) = 0;
  v24[621] = 0;
  *(v24 + 2488) = 0;
  *(v21 + 62471) = 0;
  *(v21 + 62469) = 0;
  v24[623] = 0;
  *(v24 + 2496) = 0;
  *(v21 + 62479) = 0;
  *(v21 + 62477) = 0;
  v24[625] = 0;
  *(v24 + 2504) = 0;
  *(v21 + 62487) = 0;
  *(v21 + 62485) = 0;
  v24[627] = 0;
  *(v24 + 2512) = 0;
  *(v21 + 62495) = 0;
  *(v21 + 62493) = 0;
  *(v24 + 629) = 0;
  memcpy(v21 + 15626, v354, 0x314uLL);
  *(v21 + 15823) = 0;
  v21[15825] = 0;
  *(v21 + 15826) = v352;
  *(v21 + 63320) = v353;
  *(v21 + 63321) = 0;
  v21[15831] = 0;
  *(v24 + 1674) = 0;
  memcpy(v21 + 63330, v351, 0x142uLL);
  v24[918] = 0;
  *(v21 + 15922) = 0u;
  *(v21 + 15926) = 0u;
  *(v21 + 63720) = 0;
  *(v21 + 15914) = 0u;
  *(v21 + 15918) = 0u;
  *(v21 + 63721) = 0;
  v21[15931] = 0;
  *(v24 + 937) = 0;
  *(v24 + 3756) = 0;
  v21[15935] = 0;
  *(v21 + 63737) = 0;
  *(v24 + 941) = 0;
  *(v21 + 63816) = 0;
  *(v21 + 15946) = 0u;
  *(v21 + 15950) = 0u;
  *(v21 + 15938) = 0u;
  *(v21 + 15942) = 0u;
  v21[15955] = 0;
  *(v21 + 63817) = 0;
  *(v24 + 961) = 0;
  *(v24 + 3852) = 0;
  v106 = *&__src[3988];
  *(v21 + 63833) = *&__src[3984];
  *(v21 + 63849) = v106;
  *(v21 + 63865) = __src[3992];
  *(v24 + 1943) = 0;
  memcpy(v21 + 15967, __src, 0x3E3DuLL);
  *(v21 + 79801) = 0;
  v21[19951] = 0;
  *(v335 + 34) = xmmword_299051010;
  *(v335 + 38) = xmmword_299051020;
  *(v335 + 21) = 0;
  *(v24 + 626) = 0u;
  *(v24 + 619) = 0u;
  *(v24 + 623) = 0u;
  *(v24 + 611) = 0u;
  *(v24 + 615) = 0u;
  *(v24 + 603) = 0u;
  *(v24 + 607) = 0u;
  *(v24 + 595) = 0u;
  *(v24 + 599) = 0u;
  *(v24 + 587) = 0u;
  *(v24 + 591) = 0u;
  *(v24 + 579) = 0u;
  *(v24 + 583) = 0u;
  *(v24 + 571) = 0u;
  *(v24 + 575) = 0u;
  *(v24 + 563) = 0u;
  *(v24 + 567) = 0u;
  *(v24 + 555) = 0u;
  *(v24 + 559) = 0u;
  *(v24 + 547) = 0u;
  *(v24 + 551) = 0u;
  *(v24 + 539) = 0u;
  *(v24 + 543) = 0u;
  v337 = (v24 + 535);
  *(v24 + 535) = 0u;
  *(v24 + 2140) = NK_Sample_Track_Meas(v346, (v22 + 15608), (v22 + 15616), v21, 0.0, v107, v108);
  *(v346 + 48) = 0;
  *(v346 + 7760) = 0u;
  *(v346 + 7744) = 0u;
  *(v346 + 7728) = 0u;
  *(v346 + 7712) = 0u;
  *(v346 + 7696) = 0u;
  *(v346 + 7680) = 0u;
  *(v346 + 7664) = 0u;
  *(v346 + 7648) = 0u;
  *(v346 + 7632) = 0u;
  *(v346 + 7616) = 0u;
  *(v346 + 7600) = 0u;
  *(v346 + 7584) = 0u;
  *(v346 + 7568) = 0u;
  *(v346 + 7552) = 0u;
  *(v346 + 7536) = 0u;
  *(v346 + 7520) = 0u;
  v344 = (v21 + 378);
  memcpy(v21 + 378, (a10 + 32), 0x160uLL);
  v109 = *(a10 + 824);
  v110 = *(a10 + 840);
  v111 = *(a10 + 872);
  *(v21 + 15506) = *(a10 + 856);
  *(v21 + 15510) = v111;
  *(v21 + 15498) = v109;
  *(v21 + 15502) = v110;
  v112 = *(a10 + 888);
  v113 = *(a10 + 904);
  v114 = *(a10 + 936);
  *(v21 + 15522) = *(a10 + 920);
  *(v21 + 15526) = v114;
  *(v21 + 15514) = v112;
  *(v21 + 15518) = v113;
  *(v21 + 1864) = *(a10 + 18);
  v21[467] = *(a10 + 12);
  *(v24 + 1954) = *(a10 + 19);
  *(v24 + 1955) = *(a10 + 20);
  v115 = a11;
  v116 = *(a11 + 2072);
  v21[14988] = *(a11 + 2080);
  *(v21 + 7493) = v116;
  v117 = *(a11 + 2084);
  v21[14991] = *(a11 + 2092);
  *(v21 + 14989) = v117;
  v118 = *(a11 + 2096);
  v21[14994] = *(a11 + 2104);
  *(v21 + 7496) = v118;
  NK_Get_Ext_CTXT(v21[1], v21, v22, a11);
  v21[468] = *a11;
  v119 = *(a11 + 52);
  if (v119 == 2)
  {
    v120 = *(v22 + 20);
    v121 = v341;
    v122 = v345;
    if (v120 - 2 <= 2)
    {
      if (*(v21 + 1864) == 1)
      {
        if (v120 > 3 || v21[467] >= 2)
        {
          goto LABEL_25;
        }
      }

      else if (v120 > 3)
      {
        goto LABEL_25;
      }

      v123 = 4;
      goto LABEL_23;
    }

LABEL_18:
    if (v119 == v120)
    {
      goto LABEL_25;
    }

    *(v22 + 20) = v119;
    *(v22 + 24) = *(a11 + 56);
    goto LABEL_24;
  }

  v120 = *(v22 + 20);
  v121 = v341;
  v122 = v345;
  if ((v119 - 5) > 3 || v120 - 5 > 3)
  {
    goto LABEL_18;
  }

  if (*(v21 + 1864) != 1 || v21[467] <= 1)
  {
    if (v120 == 5)
    {
      v123 = 6;
    }

    else
    {
      if (v120 != 6)
      {
        goto LABEL_25;
      }

      v123 = 7;
    }

LABEL_23:
    *(v22 + 20) = v123;
LABEL_24:
    NK_Set_Dynamics(*(v22 + 20), v22 + 32);
  }

LABEL_25:
  v349 = v122 + 26980;
  v124 = *(a10 + 184);
  NK_Set_XO_PN(a11, v22 + 32);
  if (!*(a10 + 56))
  {
    *(v22 + 136) = 1;
    *(v22 + 140) = 20;
  }

  if (*(v22 + 7) == 1)
  {
    *(v22 + 7) = 0;
    *(v22 + 136) = 1;
    v125 = 33;
LABEL_31:
    *(v22 + 140) = v125;
    goto LABEL_32;
  }

  if (*(v22 + 140) == 33)
  {
    v125 = 34;
    goto LABEL_31;
  }

LABEL_32:
  v126 = (v122 + 68040);
  NK_Check_TOW_Adjust(v22, v21);
  v342 = (v122 + 26984);
  v127 = *(a11 + 1668);
  v128 = *(v22 + 18);
  if (v127 * *(v122 + 26984) > (1000 * v128) && *(a10 + 360) > 0.0)
  {
    NK_Decay_Speed(v128, v127, v344, v22);
  }

  NK_Predict_State(v21, v344);
  v129 = *(a10 + 224);
  if (fabs(v129) < 1.48352986)
  {
    v130 = __sincos_stret(v129);
    v131 = 1.0 / sqrt(v130.__sinval * v130.__sinval * -0.00669437999 + 1.0);
    v132 = v130.__cosval * (*(a10 + 240) + v131 * 6378137.0);
    if (v132 < 1.0)
    {
      v132 = 1.0;
    }

    *(v122 + 68160) = v132;
    *(v122 + 68152) = *(a10 + 240) + v131 * (v131 * v131) * 6335439.33;
  }

  v133 = *v21;
  v21[379] = v21[1];
  *(v21 + 190) = *(v21 + 1);
  if ((*v126 & 1) == 0)
  {
    *v126 = 1;
    *(v122 + 68044) = v133;
  }

  NK_Get_Ext_Meas(v133, v21[4], a11, v21, v22);
  v134 = *(v24 + 236);
  v343 = (v24 + 59);
  v333 = v122 + 68040;
  v332 = v134 == 1 && v24[61] - 3 < 2;
  if (*(v22 + 20) <= 4u && (*(v22 + 241) != 1 || (v134 & 1) != 0 && *(v24 + 364) == 1 && v21[5] >= 4 && *(v24 + 71) <= 6250000.0 && *(v24 + 99) <= 250000.0))
  {
    *(v21 + 1880) = 1;
  }

  if ((*(v21 + 1864) != 1 || (*(v122 + 68168) & 1) != 0 || (v21[467] < 2 || *(v24 + 511) > 30000.0 || !*(v122 + 27000)) && ((v332 & v134) != 1 || *(v24 + 71) > 900000000.0)) && *(v21 + 25) == 1 && v21[5] >= 1)
  {
    NK_Crude_Apx_Pos(v346);
  }

  NK_Transform_State(v344);
  v331 = (v22 + 27624);
  v338 = (v22 + 14208);
  if ((NK_Init_Cov_Mat(*(v21 + 1864), *(v22 + 20), v21[5], v343, v22 + 352, v122, (v22 + 14208), v22 + 27528, *(a11 + 1720), v22 + 27624, (v21 + 15498), (v24 + 461)) & 1) == 0)
  {
    NK_Prop_Cov_Mat(*(v21 + 194), (v22 + 352));
    NK_Add_Nominal_PN(v22, v344, *(v21 + 1488), (v22 + 32), (v22 + 352), v122, (v24 + 461));
    if (*(v22 + 136) == 1)
    {
      NK_Init_Cov_Mat(*(v21 + 1864), *(v22 + 20), v21[5], v343, v22 + 352, v122, v338, v22 + 27528, *(a11 + 1720), v331, (v21 + 15498), (v24 + 461));
    }
  }

  v334 = (v24 + 461);
  bzero(v21 + 540, 0x1200uLL);
  v347 = (v346 + 96);
  NK_Comp_DR_Meas(0x80u, v21[13], v346 + 96, v346 + 736, v346 + 1760, v346 + 2912, v346 + 6496, v346 + 4448, *(v21 + 194), v346 + 992, v346 + 1248, v22 + 20160, v22 + 25792, v21 + 52, v21 + 9158);
  *(v24 + 1953) = NK_PrePro_SV_Meas(*(v22 + 20), v121 + 50616, v121 + 50834, v346, v339, v329, a11, v330, a12, v121, v22, v21);
  NK_Set_Environ_Severity(v346, a11, v22, v21);
  NK_Set_PR_Meas_Var(v346, a11, v22, v21);
  NK_Set_DO_Meas_Var(v346, a11, v22, v21);
  NK_Set_DR_Meas_Var(v346, v21);
  if (*(v122 + 27040) == 1 && *(v122 + 26992) <= 1u)
  {
    v135 = 0;
    v136 = (v21 + 1996);
    v137 = (v346 + 96);
    do
    {
      if (*(v21 + v135 + 6824) == 1)
      {
        v138 = *v136;
        if (*v136 >= dbl_299051030[*v137 == 2])
        {
          v138 = dbl_299051030[*v137 == 2];
        }

        *v136 = v138;
      }

      ++v135;
      v136 += 3;
      v137 += 4;
    }

    while (v135 != 128);
  }

  if ((*(v121 + 25344) - 2) <= 4)
  {
    if (*(v121 + 25388) - *(v21 + 13) >= 0)
    {
      v140 = -((*(v121 + 25388) - *(v21 + 13)) & 0x3F);
    }

    else
    {
      v140 = (*(v21 + 13) - *(v121 + 25388)) & 0x3F;
    }

    if (v140 > 31)
    {
      v140 -= 64;
    }

    v141 = *(v121 + 25368) + *(v121 + 25376) * (*(v21 + 4) - *(v121 + 25384) + 604800 * v140);
    *(v21 + 187) = v141;
    *(v22 + 15544) = v141 * 299792458.0;
  }

  if ((*(v121 + 50556) - 2) >= 5)
  {
    v145 = *(v22 + 15576);
  }

  else
  {
    if (*(v121 + 50612) - *(v21 + 13) >= 0)
    {
      v142 = -((*(v121 + 50612) - *(v21 + 13)) & 0x3FF);
    }

    else
    {
      v142 = (*(v21 + 13) - *(v121 + 50612)) & 0x3FF;
    }

    if (v142 > 511)
    {
      v142 -= 1024;
    }

    if (v142 < -512)
    {
      v142 += 1024;
    }

    v143 = *(v21 + 4) - *(v121 + 50608) + (604800 * v142);
    v144 = *(v121 + 50584) + *(v121 + 50592) * v143 + *(v121 + 50600) * (v143 * v143);
    *(v21 + 188) = v144;
    v145 = v144 * 299792458.0;
    *(v22 + 15576) = v145;
  }

  v146 = v21[13];
  v147 = *(v22 + 25920) + v146 * 299792.458;
  *(v22 + 25920) = v147;
  v148 = *(v22 + 20112) + v146 * 299792.458;
  *(v22 + 20112) = v148;
  v149 = *(v22 + 20128) + v146 * 299792.458;
  *(v22 + 20128) = v149;
  v139 = v345 + 19968;
  Corr_Old_PR_Est(v347, *v139, v139[2], v139[16], v139[32], v139[1], 0x80u, v22 + 17032, *(v22 + 20152), v147, v148, v149, *(v22 + 20144), 0.0, 0.0, *(v22 + 15544) - *(v22 + 15592), v145 - *(v22 + 15600), v22 + 25928, v22 + 21184, (v22 + 24256), (v22 + 24768));
  v150 = v346;
  NK_Comp_PR_DO_Res(v346, v339, v121, a11, a9, v330, v22, v21);
  if (*(v21 + 1680) != 1 || *(v21 + 1681) != 1 || (*(v21 + 1682) & 1) == 0)
  {
    NK_Set_Constell_Clock_Bias(v347, v21, v121, *(v22 + 241), v22 + 352, v151, v152, v153, v154, v155);
  }

  NK_Comp_DR_Res(v346, v22, v21);
  if ((*(v22 + 136) & 1) == 0)
  {
    NK_Add_SV_ARes_PN_ClkDrift(v22, v21, *(a11 + 112));
  }

  NK_SV_PR_LvsE_Check(a11, v346, v22, v21);
  NK_Reflection_Rejection_Ped(a11, v346, v22, v21);
  NK_Reduce_Num_SV(v346, v22, v21, a12);
  NK_Dopp_Outlier(v346, v22, v21);
  NK_SV_Res_RTests_FDist(*(a11 + 60), v346, v22, v21);
  v156 = *(a11 + 60);
  LOWORD(v381[0]) = 0;
  v381[1074] = 0.0;
  LOBYTE(v381[1075]) = 0;
  memset(&v381[1065], 0, 65);
  v381[1086] = 0.0;
  LOBYTE(v381[1087]) = 0;
  LODWORD(v381[1076]) = 0;
  memset(&v381[1077], 0, 65);
  bzero(&v381[1], 0x213CuLL);
  memset(&v381[1088], 0, 24);
  v157 = *(v21 + 1880);
  NK_Least_Squares_Check(v346);
  NK_Least_Squares_Publish_Soln((v24 + 837), v381);
  memcpy((v327 + 3168), &v381[1], 0x400uLL);
  memcpy((v327 + 4192), &v381[131], 0x400uLL);
  NK_Least_Squares_Cross_Check(v347, v22, v21, v381);
  if (*v335 == 1 && (*(v21 + 1680) != 1 || *(v21 + 1681) != 1 || (*(v21 + 1682) & 1) == 0))
  {
    NK_Set_Constell_Clock_Bias(v347, v21, v121, *(v22 + 241), v22 + 352, v158, v159, v160, v161, v162);
  }

  NK_Least_Squares_Check(v346);
  NK_Least_Squares_Publish_Soln(v327 + 1024, v381);
  NK_Least_Squares_Check(v346);
  NK_Least_Squares_Publish_Soln(v327 + 1560, v381);
  NK_Least_Squares_Check(v346);
  NK_Least_Squares_Publish_Soln(v327 + 2096, v381);
  NK_Least_Squares_Check(v346);
  NK_Least_Squares_Publish_Soln(v327 + 2632, v381);
  NK_BDS_Consistency_Checks(a11, v327, v346, v22, v21);
  NK_SV_Meas_IVar(1, v347, (v21 + 13194), (v22 + 352), (v21 + 1692), *(v21 + 194));
  v340 = (v21 + 5418);
  NK_SV_Meas_IVar(2, v347, (v21 + 13194), (v22 + 352), (v21 + 5418), *(v21 + 194));
  NK_SV_Meas_IVar(3, v347, (v21 + 13194), (v22 + 352), (v21 + 9144), *(v21 + 194));
  NK_Bit_Sync_Check(v346, v22, v21, a12);
  NK_Range_Chip_Check(v346, v22, v21, a12);
  v163 = 0;
  v164 = v21 + 1770;
  do
  {
    if (*(v164 + v163) == 1 && (*(v21 + v163 + 57) & 1) == 0)
    {
      *(v164 + v163) = 0;
      --*(v21 + 6771);
    }

    ++v163;
  }

  while (v163 != 128);
  v166 = *(v22 + 20);
  v165 = *(v22 + 24);
  if (v166 == v165)
  {
    goto LABEL_133;
  }

  if (v166 > 2)
  {
    if (v166 > 4)
    {
      if (v166 == 5)
      {
        if ((v165 & 0xFFFFFFFE) != 6)
        {
          goto LABEL_133;
        }
      }

      else if (v166 != 6 || v165 != 7)
      {
        goto LABEL_133;
      }
    }

    else if (v166 == 3)
    {
      if (v165 <= 2)
      {
        goto LABEL_133;
      }
    }

    else if (v165 - 5 >= 3)
    {
      goto LABEL_133;
    }

LABEL_126:
    if (*v342 <= *(v22 + 16) && v21[468] == 1)
    {
      v167 = *(v22 + 148);
      if (v167 >= *(v22 + 152))
      {
        v167 = *(v22 + 152);
      }

      if (v167 >= *(v22 + 156))
      {
        v167 = *(v22 + 156);
      }

      if (v167 > 0xA)
      {
        goto LABEL_134;
      }
    }

    goto LABEL_133;
  }

  if (!v166)
  {
    goto LABEL_126;
  }

  if (v166 != 1)
  {
    if (v166 != 2 || v165 <= 1)
    {
      goto LABEL_133;
    }

    goto LABEL_126;
  }

  if (v165)
  {
    goto LABEL_126;
  }

LABEL_133:
  NK_SV_Res_RTests(v346, v22, v21, a12);
LABEL_134:
  NK_SV_Res_RTests_Riskier_SVs(v346, v21);
  v336 = (v24 + 71);
  NK_Check_Num_SV_Res(*(v21 + 1864), *(v22 + 20), *(v22 + 2), *(v24 + 236), v24[61], *(v349 + 20), (v21 + 1692), (v21 + 9144), *(v24 + 71), v340);
  v168 = 0;
  v169 = v21 + 11814;
  do
  {
    if (*(v21 + v168 + 36888) == 1 && v21[v168 + 1834] - 1 <= 0x1D)
    {
      *&v169[2 * v168] = *&v169[2 * v168] + 1.0;
      *(v169 + v168 - 128) = 1;
    }

    ++v168;
  }

  while (v168 != 128);
  if (*v345 & 1) != 0 || (NK_Add_SV_ARes_PN(*(a10 + 4), *(a10 + 17), v346, v22, v21, *(a11 + 60)), (*(v22 + 136)))
  {
    NK_Init_Cov_Mat(*(v21 + 1864), *(v22 + 20), v21[5], v343, v22 + 352, v345, v338, v22 + 27528, *(a11 + 1720), v331, (v21 + 15498), v334);
  }

  if ((*(v22 + 6) & 1) == 0 && *(v21 + 6771) >= 6u && (*(v22 + 241) & 1) == 0 && v21[5] - 3 <= 2)
  {
    v170 = *(v24 + 471) * 25.0;
    *(v24 + 471) = v170;
    *(v22 + 512) = v170;
    EvLog("Nav_Kalman_Update: Freeing-up dT Synch ");
    v171 = *v334 * 25.0;
    *v334 = v171;
    *(v22 + 352) = v171;
    v172 = *(v24 + 463) * 25.0;
    *(v24 + 463) = v172;
    *(v22 + 368) = v172;
    v173 = *(v24 + 465) * 25.0;
    *(v24 + 465) = v173;
    *(v22 + 392) = v173;
  }

  NK_Get_Ext_Time(*v21, v21, v22);
  NK_DeCor_Ext_Meas(v22, v21);
  v328 = NK_Tunnel_Assist(v22, v21);
  memcpy((v22 + 976), (v22 + 352), 0x270uLL);
  v176 = 0.0;
  *(v22 + 1600) = 0u;
  *(v22 + 1616) = 0u;
  *(v22 + 1632) = 0u;
  *(v22 + 1648) = 0u;
  *(v22 + 1664) = 0u;
  *(v22 + 1680) = 0u;
  *(v22 + 1696) = 0;
  if (*(v24 + 20) == 1 && KFSt_Meas_Update(5u, 0xCu, (v24 + 5), (v22 + 976), (v22 + 27078), *(v21 + 209)))
  {
    v24[543] = v24[6];
  }

  v177 = *(v24 + 471);
  if (v177 > 0.000000001)
  {
    if ((v174 = *(v24 + 473), v176 = 1600000000.0, v174 < 1600000000.0) && (v174 = *(v24 + 475), v174 < 1600000000.0) && (v174 = *(v24 + 477), v174 < 1600000000.0) || *v343 == 1 && (v174 = *v336, *v336 < 1600000000.0))
    {
      v176 = 0.0001;
      if (*(v21 + 56) == 2)
      {
        goto LABEL_164;
      }

      if (v21[6])
      {
        goto LABEL_164;
      }

      if (*(v24 + 20) == 1 && v24[6] == 1)
      {
        v174 = *(v24 + 15);
        v175 = 0.00000004;
        if (v174 < 0.00000004)
        {
          goto LABEL_164;
        }
      }
    }
  }

  if (*(v21 + 56))
  {
    v176 = 0.9;
    if (v177 > 0.9)
    {
      v176 = 1.0;
      if (v21[466])
      {
LABEL_164:
        v178 = *(v21 + 209);
        v382[0] = 0.0;
        memset(&__src[28], 0, 152);
        memset(&__src[12], 0, 48);
        memset(__src, 0, 40);
        *&__src[10] = 0x3FF0000000000000;
        *&__src[24] = v178;
        umeas(v22 + 976, 0xCu, v176, __src, v381, v383, v382, 1.0e20);
        v24[543] = 2;
      }
    }
  }

  if (*(v24 + 92) != 1)
  {
    goto LABEL_187;
  }

  v179 = 0;
  v180 = 0;
  v181 = 0;
  v182 = 0;
  v183 = (v346 + 96);
  do
  {
    if (*(v164 + v179) != 1)
    {
      goto LABEL_179;
    }

    v184 = *v183;
    if (v184 > 3)
    {
      if (v184 - 5 < 2)
      {
        goto LABEL_178;
      }

      if (v184 != 4)
      {
        if (v184 != 7)
        {
          goto LABEL_179;
        }

LABEL_175:
        EvCrt_Illegal_switch_case("Nav_Kalman_Update", 0x4F5u);
        goto LABEL_179;
      }

      ++v182;
    }

    else
    {
      if (*v183 <= 1u)
      {
        if (!*v183)
        {
          goto LABEL_175;
        }

LABEL_178:
        ++v180;
        goto LABEL_179;
      }

      if (v184 != 2)
      {
        if (v184 != 3)
        {
          goto LABEL_179;
        }

        goto LABEL_178;
      }

      ++v181;
    }

LABEL_179:
    ++v179;
    v183 += 4;
  }

  while (v179 != 128);
  v177 = *(v21 + 204);
  v176 = 299792458.0;
  if (!v180 && v181 | v182)
  {
    v150 = v346;
    if (v181)
    {
      v115 = a11;
      v121 = v341;
      if ((KFSt_Meas_Update(1u, 0xCu, (v24 + 23), (v22 + 976), (v22 + 27080), *(v21 + 205) * 299792458.0) & 1) == 0)
      {
        goto LABEL_187;
      }
    }

    else
    {
      v115 = a11;
      v121 = v341;
      if (!v182 || !KFSt_Meas_Update(2u, 0xCu, (v24 + 23), (v22 + 976), (v22 + 27080), *(v21 + 206) * 299792458.0))
      {
        goto LABEL_187;
      }
    }

LABEL_186:
    v24[544] = v24[24];
    goto LABEL_187;
  }

  v115 = a11;
  v121 = v341;
  v150 = v346;
  if (KFSt_Meas_Update(0, 0xCu, (v24 + 23), (v22 + 976), (v22 + 27080), v177 * 299792458.0))
  {
    goto LABEL_186;
  }

LABEL_187:
  v185 = a10;
  if (*(v21 + 6771))
  {
    v186 = *v334;
    if (*v334 >= 90000.0)
    {
      v187 = 0;
    }

    else
    {
      v176 = *(v24 + 463);
      v187 = v176 < 90000.0;
    }

    if (v21[5] == 11 && (v381[0] = 0.0, !R8_EQ(v21 + 204, v381)))
    {
      *__src = 0;
      v204 = R8_EQ(v21 + 205, __src);
      v188 = 0;
      v176 = 900000000.0;
      if (v186 < 900000000.0 && !v204)
      {
        v177 = *(v24 + 463);
        v188 = v177 < 900000000.0;
      }
    }

    else
    {
      v188 = 0;
    }

    v189 = !*(v349 + 20) && (v200 = *(v24 + 3298), v200 >= 1) && (v201 = *(v24 + 3297), v201 >= 1) && v201 + v200 < 6;
    if (v187 || v188 || v189)
    {
      *(v24 + 508) = 2;
      v24[128] = 1;
      NK_IntConstel_TO_IntMeas(v22, v21, v121, v176, v177, v174, v175);
      v186 = *v334;
    }

    if (v186 >= 90000.0)
    {
      v190 = 0;
    }

    else
    {
      v176 = *(v24 + 465);
      v190 = v176 < 90000.0;
    }

    if (v21[5] == 11 && (v381[0] = 0.0, !R8_EQ(v21 + 204, v381)))
    {
      *__src = 0;
      v205 = R8_EQ(v21 + 206, __src);
      v191 = 0;
      v176 = 900000000.0;
      if (v186 < 900000000.0 && !v205)
      {
        v177 = *(v24 + 465);
        v191 = v177 < 900000000.0;
      }
    }

    else
    {
      v191 = 0;
    }

    v192 = !*(v349 + 20) && (v202 = *(v24 + 3300), v202 >= 1) && (v203 = *(v24 + 3297), v203 >= 1) && v203 + v202 < 6;
    if (v190 || v191 || v192)
    {
      *(v24 + 508) = 4;
      v24[128] = 4;
      NK_IntConstel_TO_IntMeas(v22, v21, v121, v176, v177, v174, v175);
    }

    if (*(v24 + 463) < 90000.0)
    {
      v193 = *(v24 + 465);
      if (v193 < 90000.0)
      {
        *(v24 + 508) = 4;
        v24[128] = 5;
        NK_IntConstel_TO_IntMeas(v22, v21, v121, v193, v177, v174, v175);
      }
    }
  }

  if (*(v24 + 164) == 1)
  {
    v194 = *(v21 + 208) * 299792458.0;
    v195 = *(v24 + 469);
    if (v195 <= 80.8879661)
    {
      *(v24 + 164) = 0;
      *(v24 + 180) = 1;
      v196 = *(v24 + 47);
      v197 = v195 + *(v24 + 49);
      if ((v196 - v194) * (v196 - v194) > v197 * 9.0)
      {
        EvLog_v("Nav_Kalman_Update: WARNING: Ext ClkD %g incompatible with NK ClkD %g Unc %g", v196, v194, sqrt(v197));
      }
    }

    else if (KFSt_Meas_Update(4u, 0xCu, (v24 + 41), (v22 + 976), (v22 + 27088), v194))
    {
      v24[547] = v24[42];
    }
  }

  *(v24 + 1012) = NK_Map_Vector(v21, v22, a10);
  if (*(v24 + 236) == 1)
  {
    if (Horz_Meas_Update(6u, v21 + 213, v21 + 217, 0xCu, v343, v22 + 976, (v22 + 27090)))
    {
      v24[549] = v24[60];
      if (*(v24 + 2392) == 1 && *v336 < 160000.0)
      {
        *(v24 + 2400) = 1;
      }

      if (*(v24 + 2424) == 1 && *v336 < 160000.0)
      {
        *(v24 + 2432) = 1;
      }
    }

    else
    {
      v24[599] = 3;
      if (*(v24 + 2424) == 1)
      {
        v24[607] = 3;
      }

      if (v24[61] - 3 <= 1)
      {
        *(p_NA + 632) = 2;
      }

      v198 = *(v24 + 83) * *(v24 + 83) + *(v24 + 81) * *(v24 + 81);
      if (v198 > *(v24 + 77))
      {
        v199 = p_NA;
        *(p_NA + 576) = v198;
        *(v199 + 584) = v198;
      }
    }
  }

  if (*(v24 + 364) == 1)
  {
    if (Vert_Meas_Update(6u, v21 + 217, 0xCu, (v24 + 91), (v22 + 976), (v22 + 27092), *(v21 + 215)))
    {
      v24[550] = v24[92];
      if ((v24[596] & 1) == 0 && *(v24 + 2408) == 1 && *(v24 + 99) < 160000.0)
      {
        *(v24 + 2416) = 1;
      }
    }

    else if (*(v24 + 2384) == 1)
    {
      *(v24 + 2384) = 0;
      v24[595] = 3;
    }

    else if (v24[92] == 1)
    {
      v24[603] = 3;
    }
  }

  if (*v24 == 1 && *(v21 + 36579) | *(v21 + 21675))
  {
    *(v24 + 564) = 1;
    v24[142] = 1;
    v24[145] = *v21;
    *(v24 + 147) = xmmword_299051040;
    *(v24 + 155) = 0x4022000000000000;
  }

  if (*(v24 + 564) == 1 && Speed_Meas_Update(9u, v21 + 198, 0xCu, (v24 + 141), (v22 + 976), (v22 + 27100), 1.0))
  {
    v24[554] = v24[142];
  }

  if (*(v24 + 636) == 1 && *(v349 + 88) != 3)
  {
    v206 = *(v24 + 525);
    v207 = (v22 + 25944);
    v208 = 0.0;
    for (i = 4; i > 1; --i)
    {
      v210 = *v207--;
      v208 = v208 + v210 * v210;
    }

    if (v206 < 45.0 && *(v24 + 165) > 0.75)
    {
      v211 = *(v21 + 231);
      if (v211 > 0.75 && *(v24 + 885) > 0.75 && sqrt(v208) > 0.5)
      {
        v212 = cos(v206 * 0.0174532925);
        if (GSpeed_Meas_Update(9, v21 + 217, 0xCu, (v24 + 159), v22 + 976, (v22 + 27104), v211, *(v22 + 27280), 1.0, 1.0 / v212))
        {
          v24[556] = v24[160];
        }

        else if (*(v24 + 2464) == 1)
        {
          *(v24 + 2464) = 0;
          v24[615] = 3;
        }
      }
    }
  }

  if (*(v24 + 436) == 1)
  {
    if (Vert_Meas_Update(9u, v21 + 217, 0xCu, (v24 + 109), (v22 + 976), (v22 + 27094), -*(v21 + 229)))
    {
      v24[551] = v24[110];
    }

    else if (*(v24 + 2480) == 1)
    {
      *(v24 + 2480) = 0;
      v24[619] = 3;
    }
  }

  if (*(v24 + 708) == 1)
  {
    v213 = *(v21 + 232);
    *(v24 + 187) = v213;
    if (Track_Meas_Update(9, v21 + 217, 0xCu, v24 + 708, v22 + 976, (v22 + 27108), v213, *(v21 + 231), 1.0))
    {
      v24[558] = v24[178];
    }

    else if (*(v24 + 2496) == 1)
    {
      *(v24 + 2496) = 0;
      v24[623] = 3;
    }
  }

  v215 = *(v22 + 20);
  v214 = *(v22 + 24);
  if (v215 != v214)
  {
    if (v215 <= 2)
    {
      switch(v215)
      {
        case 0:
          goto LABEL_310;
        case 1:
          if (!v214)
          {
            goto LABEL_311;
          }

          goto LABEL_310;
        case 2:
          if (v214 > 1)
          {
            goto LABEL_310;
          }

          goto LABEL_311;
      }
    }

    else if (v215 > 4)
    {
      if (v215 == 5)
      {
        if ((v214 & 0xFFFFFFFE) == 6)
        {
          goto LABEL_310;
        }

        goto LABEL_311;
      }

      if (v215 == 6)
      {
        if (v214 == 7)
        {
          goto LABEL_310;
        }

        goto LABEL_311;
      }
    }

    else
    {
      if (v215 != 3)
      {
        if (v214 - 5 >= 3)
        {
          goto LABEL_311;
        }

LABEL_310:
        NK_Define_Meas_Innov_Sat_Thresh(v21, v22, v344);
        v214 = *(v22 + 24);
        goto LABEL_311;
      }

      if (v214 > 2)
      {
        goto LABEL_310;
      }

LABEL_311:
      v215 = *(v22 + 20);
    }

    if (v215 != v214)
    {
      if (v215 <= 2)
      {
        if (v215)
        {
          if (v215 == 1)
          {
            if (!v214)
            {
              goto LABEL_341;
            }
          }

          else if (v215 != 2 || v214 <= 1)
          {
            goto LABEL_341;
          }
        }

        goto LABEL_332;
      }

      if (v215 > 4)
      {
        if (v215 != 5)
        {
          if (v215 != 6 || v214 != 7)
          {
            goto LABEL_341;
          }

          goto LABEL_332;
        }

        if ((v214 & 0xFFFFFFFE) == 6)
        {
          goto LABEL_332;
        }
      }

      else if (v215 == 3)
      {
        if (v214 > 2)
        {
          goto LABEL_332;
        }
      }

      else
      {
        if (v214 - 5 >= 3)
        {
          goto LABEL_341;
        }

LABEL_332:
        memset_pattern16(v21 + 7800, &unk_299051060, 0x400uLL);
        v185 = a10;
        memset_pattern16(v21 + 11526, &unk_299051060, 0x400uLL);
        if ((*(v22 + 241) & 1) == 0 && *v342 <= *(v22 + 16) && v21[468] == 1)
        {
          v216 = *(v22 + 148);
          if (v216 >= *(v22 + 152))
          {
            v216 = *(v22 + 152);
          }

          if (v216 >= *(v22 + 156))
          {
            v216 = *(v22 + 156);
          }

          if (v216 >= 0xB)
          {
            NK_Meas_Outlier_Check(2, v347, *(v21 + 56), 0, v340, (v21 + 9144));
            NK_Meas_ARP_Check(2u, v347, v340, v334, v331);
          }
        }
      }
    }
  }

LABEL_341:
  if (*v342 > *(v22 + 16) || v21[468] != 1)
  {
    goto LABEL_349;
  }

  v217 = *(v22 + 148);
  if (v217 >= *(v22 + 152))
  {
    v217 = *(v22 + 152);
  }

  if (v217 >= *(v22 + 156))
  {
    v217 = *(v22 + 156);
  }

  if (v217 < 0xB || (v219 = *(v22 + 20), v218 = *(v22 + 24), v219 == v218))
  {
LABEL_349:
    v220 = 0;
    goto LABEL_350;
  }

  if (v219 <= 2)
  {
    if (v219)
    {
      if (v219 != 1)
      {
        if (v219 != 2)
        {
          goto LABEL_349;
        }

        v304 = v218 > 1;
        goto LABEL_672;
      }

      v220 = v218 != 0;
    }

    else
    {
      v220 = 1;
    }
  }

  else if (v219 > 4)
  {
    if (v219 == 5)
    {
      v307 = (v218 & 0xFFFFFFFE) == 6;
    }

    else
    {
      if (v219 != 6)
      {
        goto LABEL_349;
      }

      v307 = v218 == 7;
    }

    v220 = v307;
  }

  else
  {
    if (v219 != 3)
    {
      v220 = v218 - 5 < 3;
      goto LABEL_350;
    }

    v304 = v218 > 2;
LABEL_672:
    v220 = v304;
  }

LABEL_350:
  NK_SV_Meas_Update(2, v347, (v21 + 13194), v21 + 57, v340, (v22 + 976), v220, v21 + 99, *(v21 + 194), (v21 + 15348));
  v222 = *(v22 + 20);
  v221 = *(v22 + 24);
  if (v222 != v221)
  {
    if (v222 <= 2)
    {
      if (v222)
      {
        if (v222 == 1)
        {
          if (!v221)
          {
            goto LABEL_383;
          }
        }

        else if (v222 != 2 || v221 <= 1)
        {
          goto LABEL_383;
        }
      }

      goto LABEL_374;
    }

    if (v222 > 4)
    {
      if (v222 != 5)
      {
        if (v222 != 6 || v221 != 7)
        {
          goto LABEL_383;
        }

        goto LABEL_374;
      }

      if ((v221 & 0xFFFFFFFE) == 6)
      {
        goto LABEL_374;
      }
    }

    else if (v222 == 3)
    {
      if (v221 > 2)
      {
        goto LABEL_374;
      }
    }

    else
    {
      if (v221 - 5 >= 3)
      {
        goto LABEL_383;
      }

LABEL_374:
      if ((*(v22 + 241) & 1) == 0 && *v342 <= *(v22 + 16) && v21[468] == 1)
      {
        v223 = *(v22 + 148);
        if (v223 >= *(v22 + 152))
        {
          v223 = *(v22 + 152);
        }

        if (v223 >= *(v22 + 156))
        {
          v223 = *(v22 + 156);
        }

        if (v223 >= 0xB)
        {
          NK_Meas_ARP_Check(3u, v347, (v21 + 9144), v334, v331);
        }
      }
    }
  }

LABEL_383:
  if (*v342 > *(v22 + 16) || v21[468] != 1)
  {
    goto LABEL_391;
  }

  v224 = *(v22 + 148);
  if (v224 >= *(v22 + 152))
  {
    v224 = *(v22 + 152);
  }

  if (v224 >= *(v22 + 156))
  {
    v224 = *(v22 + 156);
  }

  if (v224 < 0xB || (v226 = *(v22 + 20), v225 = *(v22 + 24), v226 == v225))
  {
LABEL_391:
    v227 = 0;
    goto LABEL_392;
  }

  if (v226 <= 2)
  {
    if (v226)
    {
      if (v226 != 1)
      {
        if (v226 != 2)
        {
          goto LABEL_391;
        }

        v305 = v225 > 1;
        goto LABEL_676;
      }

      v227 = v225 != 0;
    }

    else
    {
      v227 = 1;
    }
  }

  else if (v226 > 4)
  {
    if (v226 == 5)
    {
      v308 = (v225 & 0xFFFFFFFE) == 6;
    }

    else
    {
      if (v226 != 6)
      {
        goto LABEL_391;
      }

      v308 = v225 == 7;
    }

    v227 = v308;
  }

  else
  {
    if (v226 != 3)
    {
      v227 = v225 - 5 < 3;
      goto LABEL_392;
    }

    v305 = v225 > 2;
LABEL_676:
    v227 = v305;
  }

LABEL_392:
  NK_SV_Meas_Update(3, v347, (v21 + 13194), v21 + 57, (v21 + 9144), (v22 + 976), v227, v21 + 99, *(v21 + 194), (v21 + 15348));
  NK_Update_Intermediate_Residual(1, v347, v22, v21);
  NK_PR_Res_ReWeight(v115, v150, v22, v21);
  v229 = *(v22 + 20);
  v228 = *(v22 + 24);
  if (v229 != v228)
  {
    if (v229 <= 2)
    {
      if (v229)
      {
        if (v229 == 1)
        {
          if (!v228)
          {
            goto LABEL_425;
          }
        }

        else if (v229 != 2 || v228 <= 1)
        {
          goto LABEL_425;
        }
      }

      goto LABEL_416;
    }

    if (v229 > 4)
    {
      if (v229 != 5)
      {
        if (v229 != 6 || v228 != 7)
        {
          goto LABEL_425;
        }

        goto LABEL_416;
      }

      if ((v228 & 0xFFFFFFFE) == 6)
      {
        goto LABEL_416;
      }
    }

    else if (v229 == 3)
    {
      if (v228 > 2)
      {
        goto LABEL_416;
      }
    }

    else
    {
      if (v228 - 5 >= 3)
      {
        goto LABEL_425;
      }

LABEL_416:
      memset_pattern16(v21 + 4074, &unk_299051060, 0x400uLL);
      if ((*(v22 + 241) & 1) == 0 && *v342 <= *(v22 + 16) && v21[468] == 1)
      {
        v230 = *(v22 + 148);
        if (v230 >= *(v22 + 152))
        {
          v230 = *(v22 + 152);
        }

        if (v230 >= *(v22 + 156))
        {
          v230 = *(v22 + 156);
        }

        if (v230 >= 0xB)
        {
          NK_Meas_Outlier_Check(1, v347, *(v21 + 56), (v21 + 1692), 0, 0);
          NK_Meas_ARP_Check(1u, v347, (v21 + 1692), v334, (v22 + 27528));
        }
      }
    }
  }

LABEL_425:
  if (*v342 > *(v22 + 16) || v21[468] != 1)
  {
    goto LABEL_433;
  }

  v231 = *(v22 + 148);
  if (v231 >= *(v22 + 152))
  {
    v231 = *(v22 + 152);
  }

  if (v231 >= *(v22 + 156))
  {
    v231 = *(v22 + 156);
  }

  if (v231 < 0xB || (v233 = *(v22 + 20), v232 = *(v22 + 24), v233 == v232))
  {
LABEL_433:
    v234 = 0;
    goto LABEL_434;
  }

  if (v233 <= 2)
  {
    if (v233)
    {
      if (v233 != 1)
      {
        if (v233 != 2)
        {
          goto LABEL_433;
        }

        v306 = v232 > 1;
        goto LABEL_680;
      }

      v234 = v232 != 0;
    }

    else
    {
      v234 = 1;
    }
  }

  else if (v233 > 4)
  {
    if (v233 == 5)
    {
      v309 = (v232 & 0xFFFFFFFE) == 6;
    }

    else
    {
      if (v233 != 6)
      {
        goto LABEL_433;
      }

      v309 = v232 == 7;
    }

    v234 = v309;
  }

  else
  {
    if (v233 != 3)
    {
      v234 = v232 - 5 < 3;
      goto LABEL_434;
    }

    v306 = v232 > 2;
LABEL_680:
    v234 = v306;
  }

LABEL_434:
  NK_SV_Meas_Update(1, v347, (v21 + 13194), v21 + 57, (v21 + 1692), (v22 + 976), v234, v21 + 99, 0.0, (v21 + 15348));
  *(v24 + 2512) = *(v24 + 1413);
  NK_Reject_DO_For_Rejected_PR((v21 + 13194), v347, v22, v21);
  *(v21 + 13190) = 0u;
  v236 = *(v22 + 20);
  v235 = *(v22 + 24);
  if (v236 == v235)
  {
    goto LABEL_465;
  }

  if (v236 <= 2)
  {
    if (!v236)
    {
      goto LABEL_458;
    }

    if (v236 == 1)
    {
      if (!v235)
      {
        goto LABEL_465;
      }

      goto LABEL_458;
    }

    if (v236 == 2 && v235 > 1)
    {
      goto LABEL_458;
    }

    goto LABEL_465;
  }

  if (v236 > 4)
  {
    if (v236 == 5)
    {
      if ((v235 & 0xFFFFFFFE) == 6)
      {
        goto LABEL_458;
      }
    }

    else if (v236 == 6 && v235 == 7)
    {
      goto LABEL_458;
    }

    goto LABEL_465;
  }

  if (v236 == 3)
  {
    if (v235 > 2)
    {
      goto LABEL_458;
    }

    goto LABEL_465;
  }

  if (v235 - 5 >= 3)
  {
    goto LABEL_465;
  }

LABEL_458:
  if (*v342 > *(v22 + 16) || v21[468] != 1)
  {
    goto LABEL_465;
  }

  v237 = *(v22 + 148);
  if (v237 >= *(v22 + 152))
  {
    v237 = *(v22 + 152);
  }

  if (v237 >= *(v22 + 156))
  {
    v237 = *(v22 + 156);
  }

  if (v237 <= 0xA)
  {
LABEL_465:
    NK_SV_Meas_Check(v150, v22, v21);
  }

  v238 = NK_SV_Meas_AP_Stats(1, v150, v22, v21);
  *(v24 + 2141) = v238;
  *(v24 + 2142) = 0;
  if (v238)
  {
    v239 = v238 - 1;
    *(v24 + 2142) = v238 - 1;
    if (*(v24 + 2147))
    {
      if (*(v24 + 2152) && !v24[545])
      {
        v239 = v238 - 2;
        *(v24 + 2142) = v238 - 2;
      }

      if (*(v24 + 2157) && !v24[546])
      {
        *(v24 + 2142) = v239 - 1;
      }
    }

    if ((*(v22 + 6) & 1) == 0)
    {
      *(v22 + 6) = 1;
    }
  }

  v240 = v328 | v332;
  if (*(v21 + 850) > 10000.0 && *v343 == 1 && v24[60] == 1 && !((*(v24 + 77) >= 900000000.0) | v240 & 1))
  {
    v241 = vdupq_n_s64(0x41E2A05F20000000uLL);
    *v336 = v241;
    *(v24 + 77) = v241;
    v242 = p_NA;
    *(p_NA + 576) = v241;
    if (*(v24 + 364) == 1)
    {
      v243 = dbl_299051050[*(v22 + 20) < 5u];
      if (*(v24 + 101) < v243)
      {
        *(v24 + 99) = v243;
        *(v24 + 101) = v243;
        *(v242 + 624) = v243;
      }
    }

    if (v21[467] >= 2)
    {
      v21[467] = 1;
    }

    *(v22 + 136) = 1;
    *(v22 + 140) = 38;
  }

  if (v238 >= 3 && *v342 >= 0x1F && *(v21 + 1881) >= 0x1Bu && !(v240 & 1 | ((*v343 & 1) == 0)) && v24[60] == 1)
  {
    *(p_NA + 8) = 0;
    *(v24 + 236) = 0;
    v24[599] = 21;
    *(v24 + 364) = 0;
    v24[603] = 21;
    if (v21[467] >= 2)
    {
      v21[467] = 1;
    }

    *(v22 + 136) = 1;
    *(v22 + 140) = 39;
  }

  v244 = NK_SV_Meas_AP_Stats(2, v150, v22, v21);
  *(v24 + 2143) = v244;
  *(v24 + 2145) = v244;
  v245 = NK_SV_Meas_AP_Stats(3, v150, v22, v21);
  *(v24 + 2144) = v245;
  *(v24 + 2145) = *(v24 + 2143) + v245;
  *(v24 + 2150) = *(v24 + 2149) + *(v24 + 2148);
  *(v24 + 2155) = *(v24 + 2154) + *(v24 + 2153);
  *(v24 + 2160) = *(v24 + 2159) + *(v24 + 2158);
  *(v24 + 2165) = *(v24 + 2164) + *(v24 + 2163);
  *(v24 + 2170) = *(v24 + 2169) + *(v24 + 2168);
  v246 = NK_VVel_Aiding_Required(v22, v21, (v24 + 197));
  *(v24 + 788) = v246;
  if (v246 && Vert_Meas_Update(9u, v21 + 217, 0xCu, (v24 + 197), (v22 + 976), (v22 + 27094), -*(v21 + 229)))
  {
    v24[551] = v24[198];
  }

  v247 = (v22 + 1600);
  v248 = NK_AltP_Aiding_Required(v22, v21, (v24 + 215));
  *(v24 + 860) = v248;
  if (v248 && Vert_Meas_Update(6u, v21 + 217, 0xCu, (v24 + 215), (v22 + 976), (v22 + 27092), *(v21 + 215)))
  {
    v24[550] = v24[216];
  }

  *(v24 + 932) = 0;
  NK_Comp_DOPS(v22, v21);
  v249 = v24 + 643;
  v250 = *(v22 + 1616);
  *(v24 + 643) = *v247;
  *(v24 + 647) = v250;
  v251 = *(v22 + 1632);
  v252 = *(v22 + 1648);
  v253 = *(v22 + 1680);
  *(v24 + 659) = *(v22 + 1664);
  *(v24 + 663) = v253;
  *(v24 + 651) = v251;
  *(v24 + 655) = v252;
  NK_Comp_Sol_Acc(v22, v21);
  NK_Static_Filter(v22, v21, v185);
  v254 = *(v22 + 1616);
  *(v24 + 643) = *v247;
  *(v24 + 647) = v254;
  v255 = *(v22 + 1632);
  v256 = *(v22 + 1648);
  v257 = *(v22 + 1680);
  *(v24 + 659) = *(v22 + 1664);
  *(v24 + 663) = v257;
  *(v24 + 651) = v255;
  *(v24 + 655) = v256;
  *(v22 + 1632) = 0u;
  *(v22 + 1648) = 0u;
  *(v22 + 1664) = 0u;
  *(v22 + 1680) = 0u;
  *v247 = 0u;
  *(v22 + 1616) = 0u;
  NK_Validate_Cor(v337, (v24 + 363), v334, (v21 + 434), *(v22 + 20), *v21, (v22 + 241), v21 + 1864, v345, (v22 + 244), a12, (v24 + 643), v21 + 7703, v21 + 7691, (v24 + 640), (v21 + 15662), v21 + 15686, v24 + 692, v21 + 15688, v21 + 15689, v24 + 695, v338);
  NK_ARP_Kalman(v347, (v346 + 736), v21, v22);
  v348 = (v24 + 363);
  if (*(v24 + 363) > 1000000000.0)
  {
    *v249 = 0;
    *(v24 + 2560) = 0;
  }

  if (!*(v24 + 2152) && !v24[544] && *(v24 + 508) == 2 && !v24[128] || *(v24 + 365) > 1000000000.0)
  {
    *(v24 + 645) = 0;
    *(v24 + 2561) = 0;
  }

  if (!*(v24 + 2157) && !v24[544] && *(v24 + 508) == 4 && !v24[128] || *(v24 + 367) > 1000000000.0)
  {
    *(v24 + 647) = 0;
    *(v24 + 2562) = 0;
  }

  v345[19968] = *(v24 + 2560);
  v345[19970] = *(v24 + 2561);
  v345[19984] = *(v24 + 2562);
  v345[20000] = *(v24 + 2563);
  v345[19969] = *(v24 + 2566);
  *(v22 + 25920) = *v249;
  *(v22 + 20112) = *(v24 + 645);
  *(v22 + 20128) = *(v24 + 647);
  *(v22 + 20144) = *(v24 + 649);
  v258 = *(v21 + 15650);
  *(v22 + 25944) = *(v21 + 7827);
  *(v22 + 25928) = v258;
  NK_Correct_State((v24 + 643), v24 + 2560, v344);
  NK_Transform_State(v344);
  NK_Heading(v22, v21, *(a11 + 60));
  NK_DT_Synch_ProcNoise(v22, v21);
  v259 = *(v21 + 209);
  v260 = -0.5;
  if (v259 > 0.0)
  {
    v260 = 0.5;
  }

  v261 = v259 + v260;
  if (v261 > 2147483650.0)
  {
    v262 = 0x7FFFFFFF;
    goto LABEL_521;
  }

  if (v261 < -2147483650.0)
  {
    v262 = 0x80000000;
    goto LABEL_521;
  }

  v262 = v261;
  if (v261)
  {
LABEL_521:
    v263 = v262;
    v264 = v262 * 0.001;
    Inc_GPS_TOW(v264, v21 + 191, v21 + 771);
    v381[0] = 0.0;
    if (!R8_EQ(v21 + 204, v381))
    {
      *(v21 + 204) = *(v21 + 204) + *(v21 + 208) * v264;
    }

    v381[0] = 0.0;
    if (!R8_EQ(v21 + 205, v381))
    {
      *(v21 + 205) = *(v21 + 205) + *(v21 + 208) * v264;
    }

    v381[0] = 0.0;
    if (!R8_EQ(v21 + 206, v381))
    {
      *(v21 + 206) = *(v21 + 206) + *(v21 + 208) * v264;
    }

    *(v21 + 209) = *(v21 + 209) - v263;
  }

  NK_Set_Fix_Type(v24 + 2560, v21 + 7691, v337, v345, *(a11 + 1668), v24[692], v24[695], *(v22 + 20), *v336, *(v24 + 99), *(v22 + 16), (v328 | v332) & 1, *(v349 + 20), v21[5], (v22 + 241), v349, v342, (v22 + 27112), v21 + 15481, v21 + 15482);
  NK_Set_TTFF(v22, v21);
  NK_Check_State(v346 + 1760, v22, v21);
  NK_Limited_Reset(v22, v21, *(a11 + 52), *(a11 + 1720));
  if (*(v21 + 1680) == 1)
  {
    v265 = a10;
    goto LABEL_536;
  }

  v265 = a10;
  if (*(v24 + 2147))
  {
    v381[0] = 0.0;
    if (!R8_EQ((v24 + 643), v381))
    {
      *(v21 + 1680) = 1;
      goto LABEL_536;
    }
  }

  v381[0] = 0.0;
  if (!R8_EQ((v24 + 643), v381))
  {
LABEL_536:
    v266 = a12;
    goto LABEL_537;
  }

  *__src = 0;
  v266 = a12;
  if (!R8_EQ(v21 + 204, __src))
  {
    *(v21 + 204) = 0;
  }

LABEL_537:
  if (*(v21 + 1681) == 1)
  {
    goto LABEL_544;
  }

  if (*(v24 + 2152))
  {
    v381[0] = 0.0;
    if (!R8_EQ((v24 + 645), v381))
    {
      *(v21 + 1681) = 1;
      goto LABEL_544;
    }
  }

  v381[0] = 0.0;
  if (!R8_EQ((v24 + 645), v381))
  {
LABEL_544:
    v267 = v341;
    v268 = (v349 + 4);
    goto LABEL_545;
  }

  *__src = 0;
  v267 = v341;
  v268 = (v349 + 4);
  if (!R8_EQ(v21 + 205, __src))
  {
    *(v21 + 205) = 0;
  }

LABEL_545:
  if (*(v21 + 1682) == 1)
  {
    goto LABEL_552;
  }

  if (*(v24 + 2157))
  {
    v381[0] = 0.0;
    if (!R8_EQ((v24 + 647), v381))
    {
      *(v21 + 1682) = 1;
      goto LABEL_552;
    }
  }

  v381[0] = 0.0;
  if (!R8_EQ((v24 + 647), v381))
  {
LABEL_552:
    v269 = a11;
    v270 = a13;
    goto LABEL_553;
  }

  *__src = 0;
  v269 = a11;
  v270 = a13;
  if (!R8_EQ(v21 + 206, __src))
  {
    *(v21 + 206) = 0;
  }

LABEL_553:
  NK_Final_Check(v22, v21, v269, v266, v346, *(v269 + 52), *(v269 + 1712), *(v269 + 1720));
  NK_Set_Accuracy(*(v269 + 1772), v346 + 1760, *(v269 + 60), v346, v269, v22, v21);
  NK_Set_TOW_Status(v22, v21);
  if (*(v21 + 1540) == 1)
  {
    v271 = v21[384];
    if (v271 >= 3 && (!R8_EQ(v21 + 191, v21 + 4) || v271 != v21[5]))
    {
      __src[0] = 0;
      LODWORD(v383[0]) = 0;
      v381[0] = 0.0;
      API_Get_UTC_Cor(1, v381);
      GPS_To_Glon_Time(0, *(v21 + 13), *(v21 + 191), v381[0], v383, __src, v21 + 212);
      *(v21 + 845) = LOWORD(v383[0]);
      *(v21 + 846) = __src[0];
      *(v21 + 1688) = 1;
      v272 = v21[384];
      if (v21[421] < v272 && (*(v267 + 8972) - 2) <= 4)
      {
        v21[421] = v272;
      }
    }
  }

  NK_Publish_Nav_Soln(v346, v21, v22, v265);
  if (*(v21 + 1864) == 1)
  {
    *(v22 + 28) = 1;
  }

  NK_Validate_Fix(v346, v22, v21, v269);
  *v265 = *(v24 + 1940);
  v273 = *(v24 + 1941);
  *(v265 + 1) = v273;
  *(v265 + 19) = *(v24 + 977);
  if (v273 == 1)
  {
    *(v22 + 27344) = *(v265 + 368);
    *(v349 + 236) = *v21;
  }

  if (*v268)
  {
    if (*(v24 + 2541) <= 2u)
    {
      ++*(v349 + 8);
    }
  }

  else
  {
    *(v349 + 8) = 0;
  }

  if (*(v22 + 27344) < 10.0 || *(v349 + 8) < 4u)
  {
    if (*v349 >= 0x10u)
    {
      *(v349 + 60) = 0;
      *(v349 + 64) = *v21;
      *(v22 + 27184) = *(v21 + 208) * 299792458.0;
      *(v22 + 27192) = *(v21 + 231);
    }
  }

  else
  {
    *(v349 + 60) = 1;
  }

  v274 = v21[469];
  if (v274 && !*(v266 + 4))
  {
    *(v266 + 4) = v274;
  }

  *(v270 + 24) = *(v265 + 32);
  *(v270 + 8) = *(v265 + 40);
  *(v270 + 32) = *(v265 + 62);
  *(v270 + 16) = *(v265 + 60);
  *(v270 + 40) = *(v265 + 48);
  *v270 = *(v265 + 56);
  v275 = *v348;
  v276 = *(v24 + 365);
  if (*v348 > v276)
  {
    v275 = *(v24 + 365);
  }

  v277 = 168;
  if (*v348 > v276 && v275 <= *(v24 + 367))
  {
    v277 = 160;
  }

  v278 = 152;
  if (v275 > *(v24 + 367) || *v348 > v276)
  {
    v278 = v277;
  }

  *(v270 + 48) = *(v265 + v278);
  *(v270 + 82) = *(v265 + 210);
  *(v270 + 84) = *(v265 + 212);
  *(v270 + 80) = *(v265 + 208);
  *(v270 + 88) = *(v265 + 216);
  *(v270 + 76) = *(v265 + 204);
  *(v270 + 56) = *(v265 + 184);
  *(v270 + 4) = *(v21 + 24);
  if (*(v24 + 3340) == 1)
  {
    ++*(v269 + 1788);
  }

  v279 = *(v24 + 515);
  if (v279 >= 9999000.0)
  {
    v281 = v21[5];
    if (v281 >= 0xC)
    {
      __assert_rtn("Generate_DollarG_Message", "Nav_Kalman_Update.cpp", 3152, "FALSE");
    }

    v280 = dword_2990510D0[v281];
  }

  else
  {
    v280 = fmin(v279 * 0.00000333564095, 999999999.0);
  }

  v282 = g_CB_GDbg;
  v283 = 36;
  v284 = 1u;
  do
  {
    g_CB_GDbg = (v282 + 1);
    *v282 = v283;
    v282 = g_CB_GDbg;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      v282 = qword_2A1453F90;
      g_CB_GDbg = qword_2A1453F90;
    }

    v283 = aG_0[v284++];
  }

  while (v284 != 4);
  sprintf_2d(&g_CB_GDbg, ((*(v21 + 191) + 0.0005) * 1000.0));
  v285 = g_CB_GDbg++;
  *v285 = 32;
  if (g_CB_GDbg >= qword_2A1453F98)
  {
    g_CB_GDbg = qword_2A1453F90;
  }

  sprintf_1u(&g_CB_GDbg, v21[1]);
  v286 = g_CB_GDbg++;
  *v286 = 32;
  if (g_CB_GDbg >= qword_2A1453F98)
  {
    g_CB_GDbg = qword_2A1453F90;
  }

  sprintf_2d(&g_CB_GDbg, v280);
  v287 = g_CB_GDbg++;
  *v287 = 32;
  if (g_CB_GDbg >= qword_2A1453F98)
  {
    g_CB_GDbg = qword_2A1453F90;
  }

  sprintf_1u(&g_CB_GDbg, *v21);
  v288 = g_CB_GDbg++;
  *v288 = 10;
  v289 = g_CB_GDbg;
  if (g_CB_GDbg >= qword_2A1453F98)
  {
    v289 = qword_2A1453F90;
    g_CB_GDbg = qword_2A1453F90;
  }

  *v289 = 0;
  GNB_Debug_Flush_Check();
  if (!*(v22 + 152))
  {
    *(v22 + 183) = *v326;
    *(v22 + 187) = *(v326 + 4);
  }

  result = NK_Set_Aid_Data(v22, v21, v22 + 280);
  v291 = v21[384];
  if (v291 >= 1)
  {
    result = Core_Save_ApxTime(*(v21 + 1540), v291, *(v21 + 771), v21[379], *(v21 + 191));
    v292 = *(v267 + 8972);
    if (v292 != 3 && (v292 - 7) >= 0xFFFFFFFB)
    {
      v293 = 0;
      LODWORD(v294) = 0;
      v295 = p_NV;
      v296 = *(v267 + 8984);
      v297 = p_NV + 168;
      *(p_NV + 168) = *(v267 + 8968);
      *(v295 + 184) = v296;
      v298 = 55665;
      do
      {
        v299 = *(v297 + v293) ^ BYTE1(v298);
        v298 = 52845 * (v298 + v299) + 22719;
        v294 = (v294 + v299);
        ++v293;
      }

      while (v293 != 24);
      *(v295 + 160) = v294;
    }
  }

  if (*(v270 + 16) == 1 && *(v270 + 32) >= 1717 && v21[384] >= 9 && *v21 != *(v333 + 4))
  {
    v300 = *(v21 + 191) * 1000.0;
    v301 = -0.5;
    if (v300 > 0.0)
    {
      v301 = 0.5;
    }

    v302 = v300 + v301;
    if (v302 <= 2147483650.0)
    {
      if (v302 >= -2147483650.0)
      {
        v303 = v302;
      }

      else
      {
        v303 = 0x80000000;
      }
    }

    else
    {
      v303 = 0x7FFFFFFF;
    }

    v310 = 0;
    LODWORD(v311) = 0;
    v312 = v303 - *v21;
    v313 = p_NV;
    v314 = p_NV + 0x8000;
    v315 = p_NV + 33200;
    *(p_NV + 33200) = v312;
    *(v313 + 33204) = *v344;
    v316 = 55665;
    do
    {
      v317 = *(v315 + v310) ^ BYTE1(v316);
      v316 = 52845 * (v316 + v317) + 22719;
      v311 = (v311 + v317);
      ++v310;
    }

    while (v310 != 16);
    *(v314 + 424) = v311;
  }

  v318 = v21[467];
  if (v318 == 3)
  {
    if (*v349 && v21[384] >= 3)
    {
      if (*(v24 + 527) < 10.0)
      {
        result = Core_Save_Clk_Drift(1, *(v21 + 191) + 604800 * *(v21 + 771), *(v21 + 208));
        *(v269 + 1712) = *(v21 + 208);
        v319 = *(v269 + 240) * 0.000000001;
        if (!*(v269 + 240))
        {
          v319 = 0.0000001;
        }

        *(v269 + 1720) = v319;
      }

      if (*(v24 + 511) < 400.0)
      {
        *(v349 + 28) = v21[378];
        v320 = *(v21 + 426);
        *(v22 + 27168) = *(v21 + 215);
        *(v22 + 27152) = v320;
      }
    }
  }

  else if (v318 <= 1)
  {
    if (*(v269 + 240))
    {
      *(v269 + 1720) = *(v269 + 240) * 0.000000001;
    }

    else if (*v268 >= 0x385u)
    {
      *(v269 + 1720) = 0x3EA0C6F7A0B5ED8ELL;
    }
  }

  if (v21[468] == 1 && *(v21 + 1540) == 1 && v21[384] >= 10 && v21[467] == 3 && *v349 >= 0xAu)
  {
    v321 = *(v21 + 207);
    if (fabs(v321) <= 0.000000066712819 && *(v24 + 511) <= 10.0 && *(v24 + 513) <= 10.0 && *(v24 + 517) <= 1.0)
    {
      result = Core_Save_Clk_L5L1(1, *(v21 + 191) + 604800 * *(v21 + 771), v321);
    }
  }

  v322 = *(v21 + 7493);
  *(a11 + 2080) = v21[14988];
  *(a11 + 2072) = v322;
  v323 = *(v21 + 14989);
  *(a11 + 2092) = v21[14991];
  *(a11 + 2084) = v323;
  v324 = *(v21 + 7496);
  *(a11 + 2104) = v21[14994];
  *(a11 + 2096) = v324;
  v325 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Extract_GAL_INAV_ALM(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  v15 = *MEMORY[0x29EDCA608];
  v3 = *a1;
  v4 = *a2;
  if (((v4 ^ v3) & 0x3C0) != 0)
  {
    goto LABEL_2;
  }

  v7 = v3 >> 10;
  v8 = v4 >> 10;
  if (v3 >> 10 == 9)
  {
    if (v8 == 10)
    {
      *(a3 + 8) = v3;
      v13 = a1[1];
      *(a3 + 10) = v13;
      *(a3 + 10) = v13 & 0xFC00 | (2 * (a1[4] & 0x1FF)) | (a1[5] >> 15);
      HIDWORD(v14) = a1[5];
      LODWORD(v14) = a1[6] << 16;
      *(a3 + 12) = v14 >> 31;
      HIDWORD(v14) = a1[6];
      LODWORD(v14) = a1[7] << 16;
      *(a3 + 14) = v14 >> 31;
      *(a3 + 16) = (2 * a1[7]) | (*a2 >> 5) & 1;
      HIDWORD(v14) = *a2;
      LODWORD(v14) = a2[1] << 16;
      *(a3 + 18) = v14 >> 21;
      HIDWORD(v14) = a2[1];
      LODWORD(v14) = a2[2] << 16;
      *(a3 + 20) = v14 >> 21;
      HIDWORD(v14) = a2[2];
      LODWORD(v14) = a2[3] << 16;
      *(a3 + 22) = v14 >> 21;
      HIDWORD(v14) = a2[3];
      LODWORD(v14) = a2[4] << 16;
      *(a3 + 24) = v14 >> 21;
      v12 = (a2[5] >> 5) & 0x7E0 | (a2[4] << 11);
      goto LABEL_14;
    }
  }

  else if (v7 == 8)
  {
    if (v8 == 9)
    {
      *(a3 + 8) = v4;
      v10 = a2[1];
      *(a3 + 10) = v10;
      *(a3 + 10) = v10 & 0xFC00 | (32 * (a1[2] & 0x1F)) | (a1[3] >> 11);
      HIDWORD(v11) = a1[3];
      LODWORD(v11) = a1[4] << 16;
      *(a3 + 12) = v11 >> 27;
      HIDWORD(v11) = a1[4];
      LODWORD(v11) = a1[5] << 16;
      *(a3 + 14) = v11 >> 27;
      HIDWORD(v11) = a1[5];
      LODWORD(v11) = a1[6] << 16;
      *(a3 + 16) = v11 >> 27;
      HIDWORD(v11) = a1[6];
      LODWORD(v11) = a1[7] << 16;
      *(a3 + 18) = v11 >> 27;
      *(a3 + 20) = (32 * a1[7]) & 0xFFC0 | (a2[1] >> 4) & 0x3F;
      HIDWORD(v11) = a2[1];
      LODWORD(v11) = a2[2] << 16;
      *(a3 + 22) = v11 >> 20;
      HIDWORD(v11) = a2[2];
      LODWORD(v11) = a2[3] << 16;
      *(a3 + 24) = v11 >> 20;
      HIDWORD(v11) = a2[3];
      LODWORD(v11) = a2[4] << 16;
      v9 = v11 >> 20;
      goto LABEL_11;
    }
  }

  else if (v7 == 7 && v8 == 8)
  {
    *(a3 + 8) = *a1;
    *(a3 + 22) = *(a3 + 22) & 0xFFC0 | *a2 & 0x3F;
    *(a3 + 24) = a2[1];
    v9 = a2[2];
LABEL_11:
    LOWORD(v12) = v9 & 0xFFE0;
LABEL_14:
    *(a3 + 26) = v12;
    *(a3 + 28) = 0;
    result = 1;
    goto LABEL_3;
  }

LABEL_2:
  result = 0;
LABEL_3:
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GPS_L1_Iono_Scale_factor(uint64_t result)
{
  if ((result - 2) <= 0xC)
  {
    v1 = qword_299051100[(result - 2)];
  }

  v2 = *MEMORY[0x29EDCA608];
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t XofAlmanacData::Decode(uint64_t a1, void *a2, _DWORD *a3, unsigned __int8 *a4)
{
  v29 = *MEMORY[0x29EDCA608];
  v8 = a4[17];
  memset(v28, 0, sizeof(v28));
  XofGpsQzssAlmCodec::XofGpsQzssAlmCodec(v28);
  v9 = XofAlmanacData::DecodeSVs<std::map<unsigned char,XofGpsQzssAlmanac>,XofGpsQzssAlmCodec>(a1, a2, a3, v8, 0, v28, a1);
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(v28);
  if (v9 != 1)
  {
    goto LABEL_9;
  }

  v10 = a4[113];
  memset(v27, 0, sizeof(v27));
  XofGpsQzssAlmCodec::XofGpsQzssAlmCodec(v27);
  v11 = XofAlmanacData::DecodeSVs<std::map<unsigned char,XofGpsQzssAlmanac>,XofGpsQzssAlmCodec>(a1, a2, a3, v10, 2u, v27, a1 + 72);
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(v27);
  if (v11 != 1)
  {
    goto LABEL_9;
  }

  v12 = a4[161];
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  XofGalileoAlmCodec::XofGalileoAlmCodec(v25);
  v13 = XofAlmanacData::DecodeSVs<std::map<unsigned char,XofGalileoAlmanac>,XofGalileoAlmCodec>(a1, a2, a3, v12, 3u, v25, a1 + 48);
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(v25);
  if (v13 != 1)
  {
    goto LABEL_9;
  }

  v14 = a4[209];
  bzero(v24, 0x280uLL);
  XofGlonassAlmCodec::XofGlonassAlmCodec(v24);
  v15 = XofAlmanacData::DecodeSVs<std::map<unsigned char,XofGlonassAlmanac>,XofGlonassAlmCodec>(a1, a2, a3, v14, 4u, v24, a1 + 24);
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>>::~__tuple_impl(v24);
  if (v15 != 1)
  {
    goto LABEL_9;
  }

  v16 = a4[257];
  bzero(v23, 0x250uLL);
  XofBeidouAlmCodec::XofBeidouAlmCodec(v23);
  v17 = XofAlmanacData::DecodeSVs<std::map<unsigned char,XofBeidouAlmanac>,XofBeidouAlmCodec>(a1, a2, a3, v16, 5u, v23, a1 + 96);
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(v23);
  if (v17 == 1)
  {
    v18 = a4[305];
    bzero(v22, 0x230uLL);
    XofNavicAlmCodec::XofNavicAlmCodec(v22);
    v19 = XofAlmanacData::DecodeSVs<std::map<unsigned char,XofNavicAlmanac>,XofNavicAlmCodec>(a1, a2, a3, v18, 6u, v22, a1 + 120);
    std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>>::~__tuple_impl(v22);
    if (v19 == 1)
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

  v21 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t XofAlmanacData::DecodeSVs<std::map<unsigned char,XofGpsQzssAlmanac>,XofGpsQzssAlmCodec>(uint64_t a1, void *a2, _DWORD *a3, int a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v76 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    v10 = 0;
    v50 = (a7 + 8);
    v56 = (a6 + 376);
    v57 = (a6 + 296);
    v53 = a6 + 392;
    v54 = a6 + 312;
    v51 = a6 + 456;
    v52 = a6 + 424;
    v11 = 0uLL;
    while (1)
    {
      v55 = v10;
      *v75 = v11;
      *&v75[16] = v11;
      *v74 = v11;
      *&v74[16] = v11;
      *&v73[16] = v11;
      *&v73[32] = v11;
      v72 = v11;
      *v73 = v11;
      *&v70[32] = v11;
      v71 = v11;
      *v70 = v11;
      *&v70[16] = v11;
      v68 = v11;
      v69 = v11;
      *v67 = v11;
      *&v67[16] = v11;
      *v66 = v11;
      *&v66[16] = v11;
      *v65 = v11;
      *&v65[16] = v11;
      *v64 = v11;
      *&v64[16] = v11;
      *&v63[16] = v11;
      *&v62[16] = v11;
      *v63 = v11;
      *&v61[16] = v11;
      *v62 = v11;
      *&__str[16] = v11;
      *v61 = v11;
      *__str = v11;
      XofGpsQzssAlmCodec::XofGpsQzssAlmCodec(__str);
      *a6 = *__str;
      if (*(a6 + 31) < 0)
      {
        operator delete(*(a6 + 8));
      }

      *(a6 + 8) = *&__str[8];
      *(a6 + 24) = *&__str[24];
      __str[31] = 0;
      __str[8] = 0;
      *(a6 + 32) = *v61;
      if (*(a6 + 63) < 0)
      {
        operator delete(*(a6 + 40));
      }

      *(a6 + 40) = *&v61[8];
      *(a6 + 56) = *&v61[24];
      v61[31] = 0;
      v61[8] = 0;
      *(a6 + 64) = *v62;
      if (*(a6 + 95) < 0)
      {
        operator delete(*(a6 + 72));
      }

      *(a6 + 72) = *&v62[8];
      *(a6 + 88) = *&v62[24];
      v62[31] = 0;
      v62[8] = 0;
      *(a6 + 96) = *v63;
      if (*(a6 + 127) < 0)
      {
        operator delete(*(a6 + 104));
      }

      *(a6 + 104) = *&v63[8];
      v12 = *&v63[24];
      v63[31] = 0;
      v63[8] = 0;
      v13 = *v64;
      *(a6 + 120) = v12;
      *(a6 + 128) = v13;
      if (*(a6 + 159) < 0)
      {
        operator delete(*(a6 + 136));
      }

      *(a6 + 136) = *&v64[8];
      v14 = *&v64[24];
      v64[31] = 0;
      v64[8] = 0;
      v15 = *v65;
      *(a6 + 152) = v14;
      *(a6 + 160) = v15;
      if (*(a6 + 191) < 0)
      {
        operator delete(*(a6 + 168));
      }

      *(a6 + 168) = *&v65[8];
      v16 = *&v65[24];
      v65[31] = 0;
      v65[8] = 0;
      v17 = *v66;
      *(a6 + 184) = v16;
      *(a6 + 192) = v17;
      if (*(a6 + 223) < 0)
      {
        operator delete(*(a6 + 200));
      }

      *(a6 + 200) = *&v66[8];
      v18 = *&v66[24];
      v66[31] = 0;
      v66[8] = 0;
      v19 = *v67;
      *(a6 + 216) = v18;
      *(a6 + 224) = v19;
      if (*(a6 + 255) < 0)
      {
        operator delete(*(a6 + 232));
      }

      *(a6 + 232) = *&v67[8];
      *(a6 + 248) = *&v67[24];
      v67[31] = 0;
      v67[8] = 0;
      *(a6 + 256) = v68;
      if (*(a6 + 295) < 0)
      {
        operator delete(*(a6 + 272));
      }

      *(a6 + 272) = v69;
      *(a6 + 288) = *v70;
      v70[7] = 0;
      LOBYTE(v69) = 0;
      *v57 = *&v70[8];
      if (*(a6 + 335) < 0)
      {
        operator delete(*v54);
      }

      *v54 = *&v70[24];
      *(v54 + 16) = *&v70[40];
      v70[47] = 0;
      v70[24] = 0;
      *(a6 + 336) = v71;
      if (*(a6 + 375) < 0)
      {
        operator delete(*(a6 + 352));
      }

      *(a6 + 352) = v72;
      *(a6 + 368) = *v73;
      v73[7] = 0;
      LOBYTE(v72) = 0;
      *v56 = *&v73[8];
      if (*(a6 + 415) < 0)
      {
        operator delete(*v53);
      }

      *v53 = *&v73[24];
      *(v53 + 16) = *&v73[40];
      v73[47] = 0;
      v73[24] = 0;
      *(a6 + 416) = *v74;
      if (*(a6 + 447) < 0)
      {
        operator delete(*v52);
      }

      *v52 = *&v74[8];
      *(v52 + 16) = *&v74[24];
      v74[31] = 0;
      v74[8] = 0;
      *(a6 + 448) = *v75;
      if (*(a6 + 479) < 0)
      {
        operator delete(*v51);
      }

      *v51 = *&v75[8];
      *(v51 + 16) = *&v75[24];
      v75[31] = 0;
      v75[8] = 0;
      std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(__str);
      if (XofIntegralType<unsigned char>::DecodeFromHexData(a6, a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a6 + 32), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a6 + 64), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a6 + 96), a2, a3) != 1 || XofIntegralType<unsigned short>::DecodeFromHexData((a6 + 128), a2, a3) != 1 || XofIntegralType<short>::DecodeFromHexData((a6 + 160), a2, a3) != 1 || XofIntegralType<short>::DecodeFromHexData((a6 + 192), a2, a3) != 1 || XofIntegralType<unsigned short>::DecodeFromHexData((a6 + 224), a2, a3) != 1 || XofIntegralType<unsigned int>::DecodeFromHexData((a6 + 256), a2, a3) != 1 || XofIntegralType<int>::DecodeFromHexData(v57, a2, a3) != 1 || XofIntegralType<int>::DecodeFromHexData((a6 + 336), a2, a3) != 1 || XofIntegralType<int>::DecodeFromHexData(v56, a2, a3) != 1 || XofIntegralType<short>::DecodeFromHexData((a6 + 416), a2, a3) != 1 || XofIntegralType<short>::DecodeFromHexData((a6 + 448), a2, a3) != 1)
      {
        break;
      }

      v20 = *(a6 + 3);
      v21 = *v50;
      if (*v50)
      {
        v22 = v50;
        v23 = *v50;
        do
        {
          v24 = *(v23 + 28);
          v25 = v24 >= v20;
          v26 = v24 < v20;
          if (v25)
          {
            v22 = v23;
          }

          v23 = *(v23 + 8 * v26);
        }

        while (v23);
        if (v22 != v50 && v20 >= *(v22 + 28))
        {
          if (g_LbsOsaTrace_Config >= 2)
          {
            bzero(__str, 0x3C6uLL);
            v38 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Duplicate entry found for Broadcast Almanac data: Satellite Id [ %d ]\n", (*&g_MacClockTicksToMsRelation * v38), "GNC", 87, "DecodeSVs", v20);
            gnssOsa_PrintLog(__str, 2, 1, 0);
          }

          goto LABEL_72;
        }
      }

      v27 = *(a6 + 35);
      v28 = *(a6 + 67);
      v47 = *(a6 + 134);
      v48 = *(a6 + 99);
      v45 = *(a6 + 198);
      v46 = *(a6 + 166);
      v43 = *(a6 + 308);
      v44 = *(a6 + 268);
      v41 = *(a6 + 388);
      v42 = *(a6 + 348);
      v40 = *(a6 + 422);
      v29 = *(a6 + 454);
      if (!v21)
      {
LABEL_59:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v30 = v21;
          v31 = *(v21 + 28);
          if (v31 <= v20)
          {
            break;
          }

          v21 = *v30;
          if (!*v30)
          {
            goto LABEL_59;
          }
        }

        if (v31 >= v20)
        {
          break;
        }

        v21 = v30[1];
        if (!v21)
        {
          goto LABEL_59;
        }
      }

      v10 = v55 + 1;
      v11 = 0uLL;
      if (v55 + 1 == a4)
      {
        goto LABEL_61;
      }
    }

    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v33 = mach_continuous_time();
      if (a5 > 7)
      {
        v34 = "   ";
      }

      else
      {
        v34 = off_29EF06478[a5];
      }

      v35 = *&g_MacClockTicksToMsRelation;
      std::string::basic_string[abi:ne200100]<0>(__p, v34);
      if (v59 >= 0)
      {
        v36 = __p;
      }

      else
      {
        v36 = __p[0];
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Almanac decode failure, constellation Id = [ %s ], sequence Id = [ %d ]\n", (v35 * v33), "GNC", 87, "DecodeSVs", v36, v55 + 1);
      if (v59 < 0)
      {
        operator delete(__p[0]);
      }

      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

LABEL_72:
    result = 5;
  }

  else
  {
LABEL_61:
    result = 1;
  }

  v37 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t XofAlmanacData::DecodeSVs<std::map<unsigned char,XofGalileoAlmanac>,XofGalileoAlmCodec>(uint64_t a1, void *a2, _DWORD *a3, int a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v92 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    v10 = 0;
    v62 = (a7 + 8);
    while (1)
    {
      v63 = v10;
      v91 = 0;
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v68 = 0u;
      v67 = 0u;
      memset(__str, 0, sizeof(__str));
      XofGalileoAlmCodec::XofGalileoAlmCodec(__str);
      *a6 = *__str;
      if (*(a6 + 31) < 0)
      {
        operator delete(*(a6 + 8));
      }

      *(a6 + 8) = *&__str[8];
      *(a6 + 24) = *&__str[24];
      __str[31] = 0;
      __str[8] = 0;
      *(a6 + 32) = *&__str[32];
      if (*(a6 + 63) < 0)
      {
        operator delete(*(a6 + 40));
      }

      *(a6 + 40) = *&__str[40];
      v11 = *&__str[56];
      __str[63] = 0;
      __str[40] = 0;
      v12 = *&__str[64];
      *(a6 + 56) = v11;
      *(a6 + 64) = v12;
      if (*(a6 + 95) < 0)
      {
        operator delete(*(a6 + 72));
      }

      *(a6 + 72) = *&__str[72];
      *(a6 + 88) = *&__str[88];
      __str[95] = 0;
      __str[72] = 0;
      *(a6 + 96) = v67;
      if (*(a6 + 135) < 0)
      {
        operator delete(*(a6 + 112));
      }

      *(a6 + 112) = v68;
      v13 = v69;
      BYTE7(v69) = 0;
      LOBYTE(v68) = 0;
      v14 = *(&v69 + 1);
      *(a6 + 128) = v13;
      *(a6 + 136) = v14;
      if (*(a6 + 167) < 0)
      {
        operator delete(*(a6 + 144));
      }

      *(a6 + 144) = v70;
      v15 = v71;
      BYTE7(v71) = 0;
      LOBYTE(v70) = 0;
      v16 = *(&v71 + 1);
      *(a6 + 160) = v15;
      *(a6 + 168) = v16;
      if (*(a6 + 199) < 0)
      {
        operator delete(*(a6 + 176));
      }

      *(a6 + 176) = v72;
      v17 = v73;
      BYTE7(v73) = 0;
      LOBYTE(v72) = 0;
      v18 = *(&v73 + 1);
      *(a6 + 192) = v17;
      *(a6 + 200) = v18;
      if (*(a6 + 231) < 0)
      {
        operator delete(*(a6 + 208));
      }

      *(a6 + 208) = v74;
      *(a6 + 224) = v75;
      BYTE7(v75) = 0;
      LOBYTE(v74) = 0;
      *(a6 + 232) = DWORD2(v75);
      if (*(a6 + 263) < 0)
      {
        operator delete(*(a6 + 240));
      }

      *(a6 + 240) = v76;
      *(a6 + 256) = v77;
      BYTE7(v77) = 0;
      LOBYTE(v76) = 0;
      *(a6 + 264) = DWORD2(v77);
      if (*(a6 + 295) < 0)
      {
        operator delete(*(a6 + 272));
      }

      *(a6 + 272) = v78;
      v19 = v79;
      BYTE7(v79) = 0;
      LOBYTE(v78) = 0;
      v20 = *(&v79 + 1);
      *(a6 + 288) = v19;
      *(a6 + 296) = v20;
      if (*(a6 + 327) < 0)
      {
        operator delete(*(a6 + 304));
      }

      *(a6 + 304) = v80;
      v21 = v81;
      BYTE7(v81) = 0;
      LOBYTE(v80) = 0;
      v22 = *(&v81 + 1);
      *(a6 + 320) = v21;
      *(a6 + 328) = v22;
      if (*(a6 + 359) < 0)
      {
        operator delete(*(a6 + 336));
      }

      *(a6 + 336) = v82;
      v23 = v83;
      BYTE7(v83) = 0;
      LOBYTE(v82) = 0;
      v24 = *(&v83 + 1);
      *(a6 + 352) = v23;
      *(a6 + 360) = v24;
      if (*(a6 + 391) < 0)
      {
        operator delete(*(a6 + 368));
      }

      *(a6 + 368) = v84;
      v25 = v85;
      BYTE7(v85) = 0;
      LOBYTE(v84) = 0;
      v26 = *(&v85 + 1);
      *(a6 + 384) = v25;
      *(a6 + 392) = v26;
      if (*(a6 + 423) < 0)
      {
        operator delete(*(a6 + 400));
      }

      *(a6 + 400) = v86;
      v27 = v87;
      BYTE7(v87) = 0;
      LOBYTE(v86) = 0;
      v28 = *(&v87 + 1);
      *(a6 + 416) = v27;
      *(a6 + 424) = v28;
      if (*(a6 + 455) < 0)
      {
        operator delete(*(a6 + 432));
      }

      *(a6 + 432) = v88;
      v29 = v89;
      BYTE7(v89) = 0;
      LOBYTE(v88) = 0;
      v30 = *(&v89 + 1);
      *(a6 + 448) = v29;
      *(a6 + 456) = v30;
      if (*(a6 + 487) < 0)
      {
        operator delete(*(a6 + 464));
      }

      *(a6 + 464) = v90;
      *(a6 + 480) = v91;
      HIBYTE(v91) = 0;
      LOBYTE(v90) = 0;
      std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(__str);
      if (XofIntegralType<unsigned char>::DecodeFromHexData(a6, a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a6 + 32), a2, a3) != 1 || XofIntegralType<unsigned short>::DecodeFromHexData((a6 + 64), a2, a3) != 1 || XofIntegralType<unsigned int>::DecodeFromHexData((a6 + 96), a2, a3) != 1 || XofIntegralType<unsigned short>::DecodeFromHexData((a6 + 136), a2, a3) != 1 || XofIntegralType<short>::DecodeFromHexData((a6 + 168), a2, a3) != 1 || XofIntegralType<short>::DecodeFromHexData((a6 + 200), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a6 + 232), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a6 + 264), a2, a3) != 1 || !XofGenericCodec::Decode<9ul,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>(a6, a2, a3))
      {
        break;
      }

      v31 = *(a6 + 3);
      v32 = *v62;
      if (*v62)
      {
        v33 = v62;
        v34 = *v62;
        do
        {
          v35 = *(v34 + 28);
          v36 = v35 >= v31;
          v37 = v35 < v31;
          if (v36)
          {
            v33 = v34;
          }

          v34 = *(v34 + 8 * v37);
        }

        while (v34);
        if (v33 != v62 && v31 >= *(v33 + 28))
        {
          if (g_LbsOsaTrace_Config >= 2)
          {
            bzero(__str, 0x3C6uLL);
            v49 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Duplicate entry found for Broadcast Almanac data: Satellite Id [ %d ]\n", (*&g_MacClockTicksToMsRelation * v49), "GNC", 87, "DecodeSVs", v31);
            gnssOsa_PrintLog(__str, 2, 1, 0);
          }

          goto LABEL_70;
        }
      }

      v38 = *(a6 + 35);
      v39 = *(a6 + 142);
      v60 = *(a6 + 174);
      v61 = *(a6 + 108);
      v58 = *(a6 + 235);
      v59 = *(a6 + 206);
      v56 = *(a6 + 302);
      v57 = *(a6 + 267);
      v54 = *(a6 + 366);
      v55 = *(a6 + 334);
      v52 = *(a6 + 430);
      v53 = *(a6 + 398);
      v40 = *(a6 + 462);
      if (!v32)
      {
LABEL_57:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v41 = v32;
          v42 = *(v32 + 28);
          if (v42 <= v31)
          {
            break;
          }

          v32 = *v41;
          if (!*v41)
          {
            goto LABEL_57;
          }
        }

        if (v42 >= v31)
        {
          break;
        }

        v32 = v41[1];
        if (!v32)
        {
          goto LABEL_57;
        }
      }

      v10 = v63 + 1;
      if (v63 + 1 == a4)
      {
        goto LABEL_59;
      }
    }

    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v44 = mach_continuous_time();
      if (a5 > 7)
      {
        v45 = "   ";
      }

      else
      {
        v45 = off_29EF06478[a5];
      }

      v46 = *&g_MacClockTicksToMsRelation;
      std::string::basic_string[abi:ne200100]<0>(__p, v45);
      if (v65 >= 0)
      {
        v47 = __p;
      }

      else
      {
        v47 = __p[0];
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Almanac decode failure, constellation Id = [ %s ], sequence Id = [ %d ]\n", (v46 * v44), "GNC", 87, "DecodeSVs", v47, v63 + 1);
      if (v65 < 0)
      {
        operator delete(__p[0]);
      }

      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

LABEL_70:
    result = 5;
  }

  else
  {
LABEL_59:
    result = 1;
  }

  v48 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t XofAlmanacData::DecodeSVs<std::map<unsigned char,XofGlonassAlmanac>,XofGlonassAlmCodec>(uint64_t a1, void *a2, _DWORD *a3, int a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v119 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    v10 = 0;
    v46 = (a7 + 8);
    v58 = (a6 + 344);
    v59 = (a6 + 264);
    v55 = a6 + 360;
    v56 = a6 + 280;
    v53 = a6 + 424;
    v54 = a6 + 392;
    v51 = a6 + 488;
    v52 = a6 + 456;
    v49 = a6 + 552;
    v50 = a6 + 520;
    v47 = a6 + 616;
    v48 = a6 + 584;
    while (1)
    {
      v57 = v10;
      bzero(__str, 0x280uLL);
      XofGlonassAlmCodec::XofGlonassAlmCodec(__str);
      *a6 = *__str;
      if (*(a6 + 31) < 0)
      {
        operator delete(*(a6 + 8));
      }

      *(a6 + 8) = v63;
      *(a6 + 24) = v64;
      HIBYTE(v64) = 0;
      LOBYTE(v63) = 0;
      *(a6 + 32) = v65;
      if (*(a6 + 63) < 0)
      {
        operator delete(*(a6 + 40));
      }

      *(a6 + 40) = v66;
      *(a6 + 56) = v67;
      HIBYTE(v67) = 0;
      LOBYTE(v66) = 0;
      *(a6 + 64) = v68;
      if (*(a6 + 95) < 0)
      {
        operator delete(*(a6 + 72));
      }

      *(a6 + 72) = v69;
      *(a6 + 88) = v70;
      HIBYTE(v70) = 0;
      LOBYTE(v69) = 0;
      *(a6 + 96) = v71;
      if (*(a6 + 127) < 0)
      {
        operator delete(*(a6 + 104));
      }

      *(a6 + 104) = v72;
      v11 = v73;
      HIBYTE(v73) = 0;
      LOBYTE(v72) = 0;
      v12 = v74;
      *(a6 + 120) = v11;
      *(a6 + 128) = v12;
      if (*(a6 + 159) < 0)
      {
        operator delete(*(a6 + 136));
      }

      *(a6 + 136) = v75;
      *(a6 + 152) = v76;
      HIBYTE(v76) = 0;
      LOBYTE(v75) = 0;
      *(a6 + 160) = v77;
      if (*(a6 + 191) < 0)
      {
        operator delete(*(a6 + 168));
      }

      *(a6 + 168) = v78;
      *(a6 + 184) = v79;
      HIBYTE(v79) = 0;
      LOBYTE(v78) = 0;
      *(a6 + 192) = v80;
      if (*(a6 + 223) < 0)
      {
        operator delete(*(a6 + 200));
      }

      *(a6 + 200) = v81;
      *(a6 + 216) = v82;
      HIBYTE(v82) = 0;
      LOBYTE(v81) = 0;
      *(a6 + 224) = v83;
      if (*(a6 + 263) < 0)
      {
        operator delete(*(a6 + 240));
      }

      *(a6 + 240) = v84;
      *(a6 + 256) = v85;
      HIBYTE(v85) = 0;
      LOBYTE(v84) = 0;
      *v59 = v86;
      if (*(a6 + 303) < 0)
      {
        operator delete(*v56);
      }

      *v56 = v87;
      *(v56 + 16) = v88;
      HIBYTE(v88) = 0;
      LOBYTE(v87) = 0;
      *(a6 + 304) = v89;
      if (*(a6 + 343) < 0)
      {
        operator delete(*(a6 + 320));
      }

      *(a6 + 320) = v90;
      *(a6 + 336) = v91;
      HIBYTE(v91) = 0;
      LOBYTE(v90) = 0;
      *v58 = v92;
      if (*(a6 + 383) < 0)
      {
        operator delete(*v55);
      }

      *v55 = v93;
      *(v55 + 16) = v94;
      HIBYTE(v94) = 0;
      LOBYTE(v93) = 0;
      *(a6 + 384) = v95;
      if (*(a6 + 415) < 0)
      {
        operator delete(*v54);
      }

      *v54 = v96;
      *(v54 + 16) = v97;
      HIBYTE(v97) = 0;
      LOBYTE(v96) = 0;
      *(a6 + 416) = v98;
      if (*(a6 + 447) < 0)
      {
        operator delete(*v53);
      }

      *v53 = v99;
      *(v53 + 16) = v100;
      HIBYTE(v100) = 0;
      LOBYTE(v99) = 0;
      *(a6 + 448) = v101;
      if (*(a6 + 479) < 0)
      {
        operator delete(*v52);
      }

      *v52 = v102;
      *(v52 + 16) = v103;
      HIBYTE(v103) = 0;
      LOBYTE(v102) = 0;
      *(a6 + 480) = v104;
      if (*(a6 + 511) < 0)
      {
        operator delete(*v51);
      }

      *v51 = v105;
      *(v51 + 16) = v106;
      HIBYTE(v106) = 0;
      LOBYTE(v105) = 0;
      *(a6 + 512) = v107;
      if (*(a6 + 543) < 0)
      {
        operator delete(*v50);
      }

      *v50 = v108;
      *(v50 + 16) = v109;
      HIBYTE(v109) = 0;
      LOBYTE(v108) = 0;
      *(a6 + 544) = v110;
      if (*(a6 + 575) < 0)
      {
        operator delete(*v49);
      }

      *v49 = v111;
      *(v49 + 16) = v112;
      HIBYTE(v112) = 0;
      LOBYTE(v111) = 0;
      *(a6 + 576) = v113;
      if (*(a6 + 607) < 0)
      {
        operator delete(*v48);
      }

      *v48 = v114;
      *(v48 + 16) = v115;
      HIBYTE(v115) = 0;
      LOBYTE(v114) = 0;
      *(a6 + 608) = v116;
      if (*(a6 + 639) < 0)
      {
        operator delete(*v47);
      }

      *v47 = v117;
      *(v47 + 16) = v118;
      HIBYTE(v118) = 0;
      LOBYTE(v117) = 0;
      std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>>::~__tuple_impl(__str);
      if (XofIntegralType<unsigned char>::DecodeFromHexData(a6, a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a6 + 32), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a6 + 64), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a6 + 96), a2, a3) != 1 || XofIntegralType<unsigned short>::DecodeFromHexData((a6 + 128), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a6 + 160), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a6 + 192), a2, a3) != 1 || XofIntegralType<int>::DecodeFromHexData((a6 + 224), a2, a3) != 1 || XofIntegralType<unsigned int>::DecodeFromHexData(v59, a2, a3) != 1 || XofIntegralType<int>::DecodeFromHexData((a6 + 304), a2, a3) != 1 || XofIntegralType<int>::DecodeFromHexData(v58, a2, a3) != 1 || XofIntegralType<signed char>::DecodeFromHexData((a6 + 384), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a6 + 416), a2, a3) != 1 || !XofGenericCodec::Decode<13ul,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>>(a6, a2, a3))
      {
        break;
      }

      v13 = *(a6 + 3);
      v14 = *v46;
      if (*v46)
      {
        v15 = v46;
        v16 = *v46;
        do
        {
          v17 = *(v16 + 28);
          v18 = v17 >= v13;
          v19 = v17 < v13;
          if (v18)
          {
            v15 = v16;
          }

          v16 = *(v16 + 8 * v19);
        }

        while (v16);
        if (v15 != v46 && v13 >= *(v15 + 28))
        {
          if (g_LbsOsaTrace_Config >= 2)
          {
            bzero(__str, 0x3C6uLL);
            v31 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Duplicate entry found for Broadcast Almanac data: Satellite Id [ %d ]\n", (*&g_MacClockTicksToMsRelation * v31), "GNC", 87, "DecodeSVs", v13);
            gnssOsa_PrintLog(__str, 2, 1, 0);
          }

          goto LABEL_82;
        }
      }

      v37 = *(a6 + 99);
      v38 = *(a6 + 67);
      v35 = *(a6 + 35);
      v36 = *(a6 + 134);
      v43 = *(a6 + 276);
      v44 = *(a6 + 236);
      v41 = *(a6 + 356);
      v42 = *(a6 + 316);
      v39 = *(a6 + 163);
      v40 = *(a6 + 387);
      v20 = *(a6 + 454);
      v21 = *(a6 + 486);
      v22 = *(a6 + 518);
      v34 = *(a6 + 547);
      v33 = *(a6 + 579);
      if (!v14)
      {
LABEL_69:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v23 = v14;
          v24 = *(v14 + 28);
          if (v24 <= v13)
          {
            break;
          }

          v14 = *v23;
          if (!*v23)
          {
            goto LABEL_69;
          }
        }

        if (v24 >= v13)
        {
          break;
        }

        v14 = v23[1];
        if (!v14)
        {
          goto LABEL_69;
        }
      }

      v10 = v57 + 1;
      if (v57 + 1 == a4)
      {
        goto LABEL_71;
      }
    }

    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v26 = mach_continuous_time();
      if (a5 > 7)
      {
        v27 = "   ";
      }

      else
      {
        v27 = off_29EF06478[a5];
      }

      v28 = *&g_MacClockTicksToMsRelation;
      std::string::basic_string[abi:ne200100]<0>(__p, v27);
      if (v61 >= 0)
      {
        v29 = __p;
      }

      else
      {
        v29 = __p[0];
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Almanac decode failure, constellation Id = [ %s ], sequence Id = [ %d ]\n", (v28 * v26), "GNC", 87, "DecodeSVs", v29, v57 + 1);
      if (v61 < 0)
      {
        operator delete(__p[0]);
      }

      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

LABEL_82:
    result = 5;
  }

  else
  {
LABEL_71:
    result = 1;
  }

  v30 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t XofAlmanacData::DecodeSVs<std::map<unsigned char,XofBeidouAlmanac>,XofBeidouAlmCodec>(uint64_t a1, void *a2, _DWORD *a3, int a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v110 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    v10 = 0;
    v46 = (a7 + 8);
    v55 = (a6 + 344);
    v56 = (a6 + 264);
    v52 = a6 + 360;
    v53 = a6 + 280;
    v45 = (a6 + 424);
    v50 = a6 + 472;
    v51 = a6 + 440;
    v48 = a6 + 536;
    v49 = a6 + 504;
    v47 = a6 + 568;
    while (1)
    {
      v54 = v10;
      bzero(__str, 0x250uLL);
      XofBeidouAlmCodec::XofBeidouAlmCodec(__str);
      *a6 = *__str;
      if (*(a6 + 31) < 0)
      {
        operator delete(*(a6 + 8));
      }

      *(a6 + 8) = v60;
      *(a6 + 24) = v61;
      HIBYTE(v61) = 0;
      LOBYTE(v60) = 0;
      *(a6 + 32) = v62;
      if (*(a6 + 63) < 0)
      {
        operator delete(*(a6 + 40));
      }

      *(a6 + 40) = v63;
      *(a6 + 56) = v64;
      HIBYTE(v64) = 0;
      LOBYTE(v63) = 0;
      *(a6 + 64) = v65;
      if (*(a6 + 95) < 0)
      {
        operator delete(*(a6 + 72));
      }

      *(a6 + 72) = v66;
      *(a6 + 88) = v67;
      HIBYTE(v67) = 0;
      LOBYTE(v66) = 0;
      *(a6 + 96) = v68;
      if (*(a6 + 127) < 0)
      {
        operator delete(*(a6 + 104));
      }

      *(a6 + 104) = v69;
      *(a6 + 120) = v70;
      HIBYTE(v70) = 0;
      LOBYTE(v69) = 0;
      *(a6 + 128) = v71;
      if (*(a6 + 159) < 0)
      {
        operator delete(*(a6 + 136));
      }

      *(a6 + 136) = v72;
      *(a6 + 152) = v73;
      HIBYTE(v73) = 0;
      LOBYTE(v72) = 0;
      *(a6 + 160) = v74;
      if (*(a6 + 191) < 0)
      {
        operator delete(*(a6 + 168));
      }

      *(a6 + 168) = v75;
      v11 = v76;
      HIBYTE(v76) = 0;
      LOBYTE(v75) = 0;
      v12 = v77;
      *(a6 + 184) = v11;
      *(a6 + 192) = v12;
      if (*(a6 + 223) < 0)
      {
        operator delete(*(a6 + 200));
      }

      *(a6 + 200) = v78;
      *(a6 + 216) = v79;
      HIBYTE(v79) = 0;
      LOBYTE(v78) = 0;
      *(a6 + 224) = v80;
      if (*(a6 + 263) < 0)
      {
        operator delete(*(a6 + 240));
      }

      *(a6 + 240) = v81;
      *(a6 + 256) = v82;
      HIBYTE(v82) = 0;
      LOBYTE(v81) = 0;
      *v56 = v83;
      if (*(a6 + 303) < 0)
      {
        operator delete(*v53);
      }

      *v53 = v84;
      *(v53 + 16) = v85;
      HIBYTE(v85) = 0;
      LOBYTE(v84) = 0;
      *(a6 + 304) = v86;
      if (*(a6 + 343) < 0)
      {
        operator delete(*(a6 + 320));
      }

      *(a6 + 320) = v87;
      *(a6 + 336) = v88;
      HIBYTE(v88) = 0;
      LOBYTE(v87) = 0;
      *v55 = v89;
      if (*(a6 + 383) < 0)
      {
        operator delete(*v52);
      }

      *v52 = v90;
      *(v52 + 16) = v91;
      HIBYTE(v91) = 0;
      LOBYTE(v90) = 0;
      *(a6 + 384) = v92;
      if (*(a6 + 423) < 0)
      {
        operator delete(*(a6 + 400));
      }

      *(a6 + 400) = v93;
      *(a6 + 416) = v94;
      HIBYTE(v94) = 0;
      LOBYTE(v93) = 0;
      *v45 = v95;
      if (*(a6 + 463) < 0)
      {
        operator delete(*v51);
      }

      *v51 = v96;
      *(v51 + 16) = v97;
      HIBYTE(v97) = 0;
      LOBYTE(v96) = 0;
      *(a6 + 464) = v98;
      if (*(a6 + 495) < 0)
      {
        operator delete(*v50);
      }

      *v50 = v99;
      *(v50 + 16) = v100;
      HIBYTE(v100) = 0;
      LOBYTE(v99) = 0;
      *(a6 + 496) = v101;
      if (*(a6 + 527) < 0)
      {
        operator delete(*v49);
      }

      *v49 = v102;
      *(v49 + 16) = v103;
      HIBYTE(v103) = 0;
      LOBYTE(v102) = 0;
      *(a6 + 528) = v104;
      if (*(a6 + 559) < 0)
      {
        operator delete(*v48);
      }

      *v48 = v105;
      *(v48 + 16) = v106;
      HIBYTE(v106) = 0;
      LOBYTE(v105) = 0;
      *(a6 + 560) = v107;
      if (*(a6 + 591) < 0)
      {
        operator delete(*v47);
      }

      *v47 = v108;
      *(v47 + 16) = v109;
      HIBYTE(v109) = 0;
      LOBYTE(v108) = 0;
      std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(__str);
      if (XofIntegralType<unsigned char>::DecodeFromHexData(a6, a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a6 + 32), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a6 + 64), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a6 + 96), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a6 + 128), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a6 + 160), a2, a3) != 1 || XofIntegralType<unsigned short>::DecodeFromHexData((a6 + 192), a2, a3) != 1 || XofIntegralType<unsigned int>::DecodeFromHexData((a6 + 224), a2, a3) != 1 || XofIntegralType<unsigned int>::DecodeFromHexData(v56, a2, a3) != 1 || XofIntegralType<int>::DecodeFromHexData((a6 + 304), a2, a3) != 1 || XofIntegralType<int>::DecodeFromHexData(v55, a2, a3) != 1 || !XofGenericCodec::Decode<11ul,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>(a6, a2, a3))
      {
        break;
      }

      v13 = *(a6 + 3);
      v14 = *v46;
      if (*v46)
      {
        v15 = v46;
        v16 = *v46;
        do
        {
          v17 = *(v16 + 28);
          v18 = v17 >= v13;
          v19 = v17 < v13;
          if (v18)
          {
            v15 = v16;
          }

          v16 = *(v16 + 8 * v19);
        }

        while (v16);
        if (v15 != v46 && v13 >= *(v15 + 28))
        {
          if (g_LbsOsaTrace_Config >= 2)
          {
            bzero(__str, 0x3C6uLL);
            v31 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Duplicate entry found for Broadcast Almanac data: Satellite Id [ %d ]\n", (*&g_MacClockTicksToMsRelation * v31), "GNC", 87, "DecodeSVs", v13);
            gnssOsa_PrintLog(__str, 2, 1, 0);
          }

          goto LABEL_76;
        }
      }

      v20 = *(a6 + 35);
      v21 = *(a6 + 67);
      v42 = *(a6 + 131);
      v43 = *(a6 + 99);
      v40 = *(a6 + 276);
      v41 = *(a6 + 236);
      v38 = *(a6 + 356);
      v39 = *(a6 + 316);
      v36 = *(a6 + 436);
      v37 = *(a6 + 396);
      v34 = *(a6 + 502);
      v35 = *(a6 + 470);
      v33 = *(a6 + 534);
      v22 = *(a6 + 566);
      if (!v14)
      {
LABEL_63:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v23 = v14;
          v24 = *(v14 + 28);
          if (v24 <= v13)
          {
            break;
          }

          v14 = *v23;
          if (!*v23)
          {
            goto LABEL_63;
          }
        }

        if (v24 >= v13)
        {
          break;
        }

        v14 = v23[1];
        if (!v14)
        {
          goto LABEL_63;
        }
      }

      v10 = v54 + 1;
      if (v54 + 1 == a4)
      {
        goto LABEL_65;
      }
    }

    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v26 = mach_continuous_time();
      if (a5 > 7)
      {
        v27 = "   ";
      }

      else
      {
        v27 = off_29EF06478[a5];
      }

      v28 = *&g_MacClockTicksToMsRelation;
      std::string::basic_string[abi:ne200100]<0>(__p, v27);
      if (v58 >= 0)
      {
        v29 = __p;
      }

      else
      {
        v29 = __p[0];
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Almanac decode failure, constellation Id = [ %s ], sequence Id = [ %d ]\n", (v28 * v26), "GNC", 87, "DecodeSVs", v29, v54 + 1);
      if (v58 < 0)
      {
        operator delete(__p[0]);
      }

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

  v30 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t XofAlmanacData::DecodeSVs<std::map<unsigned char,XofNavicAlmanac>,XofNavicAlmCodec>(uint64_t a1, void *a2, _DWORD *a3, int a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v114 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    v10 = 0;
    v57 = (a7 + 8);
    v63 = (a6 + 296);
    v60 = a6 + 392;
    v61 = a6 + 312;
    v56 = (a6 + 376);
    v58 = a6 + 536;
    v59 = a6 + 496;
    v55 = (a6 + 520);
    while (1)
    {
      v62 = v10;
      bzero(__str, 0x230uLL);
      XofNavicAlmCodec::XofNavicAlmCodec(__str);
      *a6 = *__str;
      if (*(a6 + 31) < 0)
      {
        operator delete(*(a6 + 8));
      }

      *(a6 + 8) = v67;
      v11 = v68;
      HIBYTE(v68) = 0;
      LOBYTE(v67) = 0;
      v12 = v69;
      *(a6 + 24) = v11;
      *(a6 + 32) = v12;
      if (*(a6 + 63) < 0)
      {
        operator delete(*(a6 + 40));
      }

      *(a6 + 40) = v70;
      v13 = v71;
      HIBYTE(v71) = 0;
      LOBYTE(v70) = 0;
      v14 = v72;
      *(a6 + 56) = v13;
      *(a6 + 64) = v14;
      if (*(a6 + 95) < 0)
      {
        operator delete(*(a6 + 72));
      }

      *(a6 + 72) = v73;
      v15 = v74;
      HIBYTE(v74) = 0;
      LOBYTE(v73) = 0;
      v16 = v75;
      *(a6 + 88) = v15;
      *(a6 + 96) = v16;
      if (*(a6 + 127) < 0)
      {
        operator delete(*(a6 + 104));
      }

      *(a6 + 104) = v76;
      *(a6 + 120) = v77;
      HIBYTE(v77) = 0;
      LOBYTE(v76) = 0;
      *(a6 + 128) = v78;
      if (*(a6 + 159) < 0)
      {
        operator delete(*(a6 + 136));
      }

      *(a6 + 136) = v79;
      *(a6 + 152) = v80;
      HIBYTE(v80) = 0;
      LOBYTE(v79) = 0;
      *(a6 + 160) = v81;
      if (*(a6 + 199) < 0)
      {
        operator delete(*(a6 + 176));
      }

      *(a6 + 176) = v82;
      v17 = v83;
      HIBYTE(v83) = 0;
      LOBYTE(v82) = 0;
      v18 = v84;
      *(a6 + 192) = v17;
      *(a6 + 200) = v18;
      if (*(a6 + 231) < 0)
      {
        operator delete(*(a6 + 208));
      }

      *(a6 + 208) = v85;
      *(a6 + 224) = v86;
      HIBYTE(v86) = 0;
      LOBYTE(v85) = 0;
      *(a6 + 232) = v87;
      if (*(a6 + 263) < 0)
      {
        operator delete(*(a6 + 240));
      }

      *(a6 + 240) = v88;
      *(a6 + 256) = v89;
      HIBYTE(v89) = 0;
      LOBYTE(v88) = 0;
      *(a6 + 264) = v90;
      if (*(a6 + 295) < 0)
      {
        operator delete(*(a6 + 272));
      }

      *(a6 + 272) = v91;
      *(a6 + 288) = v92;
      HIBYTE(v92) = 0;
      LOBYTE(v91) = 0;
      *v63 = v93;
      if (*(a6 + 335) < 0)
      {
        operator delete(*v61);
      }

      *v61 = v94;
      *(v61 + 16) = v95;
      HIBYTE(v95) = 0;
      LOBYTE(v94) = 0;
      *(a6 + 336) = v96;
      if (*(a6 + 375) < 0)
      {
        operator delete(*(a6 + 352));
      }

      *(a6 + 352) = v97;
      *(a6 + 368) = v98;
      HIBYTE(v98) = 0;
      LOBYTE(v97) = 0;
      *v56 = v99;
      if (*(a6 + 415) < 0)
      {
        operator delete(*v60);
      }

      *v60 = v100;
      *(v60 + 16) = v101;
      HIBYTE(v101) = 0;
      LOBYTE(v100) = 0;
      *(a6 + 416) = v102;
      if (*(a6 + 455) < 0)
      {
        operator delete(*(a6 + 432));
      }

      *(a6 + 432) = v103;
      v19 = v104;
      HIBYTE(v104) = 0;
      LOBYTE(v103) = 0;
      v20 = v105;
      *(a6 + 448) = v19;
      *(a6 + 456) = v20;
      if (*(a6 + 487) < 0)
      {
        operator delete(*(a6 + 464));
      }

      *(a6 + 464) = v106;
      v21 = v107;
      HIBYTE(v107) = 0;
      LOBYTE(v106) = 0;
      v22 = v108;
      *(a6 + 480) = v21;
      *(a6 + 488) = v22;
      if (*(a6 + 519) < 0)
      {
        operator delete(*v59);
      }

      *v59 = v109;
      *(v59 + 16) = v110;
      HIBYTE(v110) = 0;
      LOBYTE(v109) = 0;
      *v55 = v111;
      if (*(a6 + 559) < 0)
      {
        operator delete(*v58);
      }

      *v58 = v112;
      *(v58 + 16) = v113;
      HIBYTE(v113) = 0;
      LOBYTE(v112) = 0;
      std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>>::~__tuple_impl(__str);
      if (XofIntegralType<unsigned char>::DecodeFromHexData(a6, a2, a3) != 1 || XofIntegralType<unsigned short>::DecodeFromHexData((a6 + 32), a2, a3) != 1 || XofIntegralType<unsigned short>::DecodeFromHexData((a6 + 64), a2, a3) != 1 || XofIntegralType<unsigned short>::DecodeFromHexData((a6 + 96), a2, a3) != 1 || XofIntegralType<signed char>::DecodeFromHexData((a6 + 128), a2, a3) != 1 || XofIntegralType<int>::DecodeFromHexData((a6 + 160), a2, a3) != 1 || XofIntegralType<short>::DecodeFromHexData((a6 + 200), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a6 + 232), a2, a3) != 1 || XofIntegralType<unsigned char>::DecodeFromHexData((a6 + 264), a2, a3) != 1 || XofIntegralType<unsigned int>::DecodeFromHexData(v63, a2, a3) != 1 || !XofGenericCodec::Decode<10ul,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>>(a6, a2, a3))
      {
        break;
      }

      v23 = *(a6 + 3);
      v24 = *v57;
      if (*v57)
      {
        v25 = v57;
        v26 = *v57;
        do
        {
          v27 = *(v26 + 28);
          v28 = v27 >= v23;
          v29 = v27 < v23;
          if (v28)
          {
            v25 = v26;
          }

          v26 = *(v26 + 8 * v29);
        }

        while (v26);
        if (v25 != v57 && v23 >= *(v25 + 28))
        {
          if (g_LbsOsaTrace_Config >= 2)
          {
            bzero(__str, 0x3C6uLL);
            v41 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Duplicate entry found for Broadcast Almanac data: Satellite Id [ %d ]\n", (*&g_MacClockTicksToMsRelation * v41), "GNC", 87, "DecodeSVs", v23);
            gnssOsa_PrintLog(__str, 2, 1, 0);
          }

          goto LABEL_73;
        }
      }

      v53 = *(a6 + 70);
      v54 = *(a6 + 38);
      v30 = *(a6 + 131);
      v51 = *(a6 + 172);
      v52 = *(a6 + 102);
      v31 = *(a6 + 235);
      v49 = *(a6 + 267);
      v50 = *(a6 + 206);
      v47 = *(a6 + 348);
      v48 = *(a6 + 308);
      v45 = *(a6 + 428);
      v46 = *(a6 + 388);
      v44 = *(a6 + 462);
      v32 = *(a6 + 494);
      if (!v24)
      {
LABEL_60:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v33 = v24;
          v34 = *(v24 + 28);
          if (v34 <= v23)
          {
            break;
          }

          v24 = *v33;
          if (!*v33)
          {
            goto LABEL_60;
          }
        }

        if (v34 >= v23)
        {
          break;
        }

        v24 = v33[1];
        if (!v24)
        {
          goto LABEL_60;
        }
      }

      v10 = v62 + 1;
      if (v62 + 1 == a4)
      {
        goto LABEL_62;
      }
    }

    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v36 = mach_continuous_time();
      if (a5 > 7)
      {
        v37 = "   ";
      }

      else
      {
        v37 = off_29EF06478[a5];
      }

      v38 = *&g_MacClockTicksToMsRelation;
      std::string::basic_string[abi:ne200100]<0>(__p, v37);
      if (v65 >= 0)
      {
        v39 = __p;
      }

      else
      {
        v39 = __p[0];
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Almanac decode failure, constellation Id = [ %s ], sequence Id = [ %d ]\n", (v38 * v36), "GNC", 87, "DecodeSVs", v39, v62 + 1);
      if (v65 < 0)
      {
        operator delete(__p[0]);
      }

      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

LABEL_73:
    result = 5;
  }

  else
  {
LABEL_62:
    result = 1;
  }

  v40 = *MEMORY[0x29EDCA608];
  return result;
}

void XofGpsQzssAlmCodec::XofGpsQzssAlmCodec(XofGpsQzssAlmCodec *this)
{
  v77 = *MEMORY[0x29EDCA608];
  std::string::basic_string[abi:ne200100]<0>(&v73, "svId");
  XofIntegralType<unsigned char>::XofIntegralType(&v74, &v73, 1, 202, 0);
  std::string::basic_string[abi:ne200100]<0>(&v69, "weekNo");
  XofIntegralType<unsigned char>::XofIntegralType(&v70, &v69, 0, 255, 0);
  std::string::basic_string[abi:ne200100]<0>(&v65, "toa");
  XofIntegralType<unsigned char>::XofIntegralType(&v66, &v65, 0, 255, 0);
  std::string::basic_string[abi:ne200100]<0>(&v61, "svHealth");
  XofIntegralType<unsigned char>::XofIntegralType(&v62, &v61, 0, 255, 0);
  std::string::basic_string[abi:ne200100]<0>(&v57, "e");
  XofIntegralType<unsigned short>::XofIntegralType(&v58, &v57, 0, 0xFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v53, "deltaI");
  XofIntegralType<short>::XofIntegralType(&v54, &v53, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v49, "omegaDot");
  XofIntegralType<short>::XofIntegralType(&v50, &v49, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v45, "reserved");
  XofIntegralType<unsigned short>::XofIntegralType(&v46, &v45, 0, 0xFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v41, "sqrtA");
  XofIntegralType<unsigned int>::XofIntegralType(&v42, &v41, 0, 0xFFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v37, "omega0");
  XofIntegralType<int>::XofIntegralType(&v38, &v37, -8388608, 0x7FFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v33, "w");
  XofIntegralType<int>::XofIntegralType(&v34, &v33, -8388608, 0x7FFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v29, "m");
  XofIntegralType<int>::XofIntegralType(&v30, &v29, -8388608, 0x7FFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v25, "af0");
  XofIntegralType<short>::XofIntegralType(&v26, &v25, -1024, 1023, 0);
  std::string::basic_string[abi:ne200100]<0>(&__p, "af1");
  XofIntegralType<short>::XofIntegralType(&v22, &__p, -1024, 1023, 0);
  *(this + 8) = v75;
  *(this + 40) = v71;
  *(this + 72) = v67;
  *(this + 104) = v63;
  *(this + 136) = v59;
  *(this + 168) = v55;
  *(this + 200) = v51;
  *(this + 232) = v47;
  v2 = v43;
  *(this + 16) = v42;
  *(this + 17) = v2;
  v3 = v39;
  *(this + 296) = v38;
  *(this + 312) = v3;
  v4 = v35;
  *(this + 21) = v34;
  *(this + 22) = v4;
  v5 = v31;
  *(this + 376) = v30;
  *this = v74;
  *(this + 3) = v76;
  v75 = 0uLL;
  v76 = 0;
  *(this + 8) = v70;
  *(this + 7) = v72;
  v72 = 0;
  v71 = 0uLL;
  *(this + 16) = v66;
  *(this + 11) = v68;
  v67 = 0uLL;
  v68 = 0;
  *(this + 24) = v62;
  v6 = v64;
  v63 = 0uLL;
  v64 = 0;
  v7 = v58;
  v8 = v60;
  *(this + 15) = v6;
  *(this + 16) = v7;
  v59 = 0uLL;
  v60 = 0;
  v9 = v54;
  v10 = v56;
  *(this + 19) = v8;
  *(this + 20) = v9;
  v55 = 0uLL;
  v56 = 0;
  v11 = v50;
  v12 = v52;
  *(this + 23) = v10;
  *(this + 24) = v11;
  v51 = 0uLL;
  v52 = 0;
  v13 = v46;
  v14 = v48;
  *(this + 27) = v12;
  *(this + 28) = v13;
  *(this + 31) = v14;
  v47 = 0uLL;
  v48 = 0;
  *(this + 36) = v44;
  v43 = 0uLL;
  v44 = 0;
  *(this + 41) = v40;
  v39 = 0uLL;
  v40 = 0;
  *(this + 46) = v36;
  v35 = 0uLL;
  v36 = 0;
  v15 = v32;
  *(this + 392) = v5;
  v31 = 0uLL;
  v32 = 0;
  v16 = v26;
  *(this + 51) = v15;
  *(this + 52) = v16;
  v17 = v28;
  *(this + 424) = *v27;
  v27[0] = 0;
  v27[1] = 0;
  v28 = 0;
  v18 = v22;
  *(this + 55) = v17;
  *(this + 56) = v18;
  v19 = v23;
  *(this + 59) = v24;
  *(this + 456) = v19;
  v23 = 0uLL;
  v24 = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(v27[0]);
    }
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(v35);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v56) < 0)
  {
    operator delete(v55);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59);
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v64) < 0)
  {
    operator delete(v63);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v68) < 0)
  {
    operator delete(v67);
  }

  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v72) < 0)
  {
    operator delete(v71);
  }

  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v76) < 0)
  {
    operator delete(v75);
  }

  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  v20 = *MEMORY[0x29EDCA608];
}

void sub_298F8840C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, void *a61, uint64_t a62, int a63)
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

  if (a46 < 0)
  {
    operator delete(a41);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a60 < 0)
  {
    operator delete(a55);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  if (a72 < 0)
  {
    operator delete(a69);
  }

  if (a66 < 0)
  {
    operator delete(a61);
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

  if (SLOBYTE(STACK[0x21F]) < 0)
  {
    operator delete(STACK[0x208]);
  }

  if (a86 < 0)
  {
    operator delete(a85);
  }

  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
  }

  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(STACK[0x220]);
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

uint64_t XofIntegralType<short>::XofIntegralType(uint64_t a1, const std::string *a2, __int16 a3, __int16 a4, __int16 a5)
{
  v11 = *MEMORY[0x29EDCA608];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::string::operator=((a1 + 8), a2);
  *a1 = a4;
  *(a1 + 2) = a3;
  *(a1 + 4) = a5;
  *(a1 + 6) = a5;
  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_298F88738(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XofIntegralType<unsigned int>::XofIntegralType(uint64_t a1, const std::string *a2, int a3, int a4, int a5)
{
  v11 = *MEMORY[0x29EDCA608];
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  std::string::operator=((a1 + 16), a2);
  *a1 = a4;
  *(a1 + 4) = a3;
  *(a1 + 8) = a5;
  *(a1 + 12) = a5;
  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_298F887E4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XofIntegralType<int>::XofIntegralType(uint64_t a1, const std::string *a2, int a3, int a4, int a5)
{
  v11 = *MEMORY[0x29EDCA608];
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  std::string::operator=((a1 + 16), a2);
  *a1 = a4;
  *(a1 + 4) = a3;
  *(a1 + 8) = a5;
  *(a1 + 12) = a5;
  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_298F88890(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  if (*(a1 + 479) < 0)
  {
    operator delete(*(a1 + 456));
  }

  if (*(a1 + 447) < 0)
  {
    operator delete(*(a1 + 424));
  }

  if (*(a1 + 415) < 0)
  {
    operator delete(*(a1 + 392));
  }

  if (*(a1 + 375) < 0)
  {
    operator delete(*(a1 + 352));
  }

  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
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

void XofGalileoAlmCodec::XofGalileoAlmCodec(XofGalileoAlmCodec *this)
{
  v90 = *MEMORY[0x29EDCA608];
  std::string::basic_string[abi:ne200100]<0>(&v86, "svId");
  XofIntegralType<unsigned char>::XofIntegralType(&v87, &v86, 1, 36, 0);
  std::string::basic_string[abi:ne200100]<0>(&v82, "iod");
  XofIntegralType<unsigned char>::XofIntegralType(&v83, &v82, 0, 15, 0);
  std::string::basic_string[abi:ne200100]<0>(&v78, "reserved");
  XofIntegralType<unsigned short>::XofIntegralType(&v79, &v78, 0, 0xFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v74, "absToa");
  XofIntegralType<unsigned int>::XofIntegralType(&v75, &v74, 0, 0x7FFFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v70, "e");
  XofIntegralType<unsigned short>::XofIntegralType(&v71, &v70, 0, 2047, 0);
  std::string::basic_string[abi:ne200100]<0>(&v66, "deltaI");
  XofIntegralType<short>::XofIntegralType(&v67, &v66, -1024, 1023, 0);
  std::string::basic_string[abi:ne200100]<0>(&v62, "omegaDot");
  XofIntegralType<short>::XofIntegralType(&v63, &v62, -1024, 1023, 0);
  std::string::basic_string[abi:ne200100]<0>(&v58, "healthINAV");
  XofIntegralType<unsigned char>::XofIntegralType(&v59, &v58, 0, 255, 0);
  std::string::basic_string[abi:ne200100]<0>(&v54, "healthFNAV");
  XofIntegralType<unsigned char>::XofIntegralType(&v55, &v54, 0, 255, 0);
  std::string::basic_string[abi:ne200100]<0>(&v50, "deltaSqrtA");
  XofIntegralType<short>::XofIntegralType(&v51, &v50, -4096, 4095, 0);
  std::string::basic_string[abi:ne200100]<0>(&v46, "omega0");
  XofIntegralType<short>::XofIntegralType(&v47, &v46, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v42, "w");
  XofIntegralType<short>::XofIntegralType(&v43, &v42, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v38, "m");
  XofIntegralType<short>::XofIntegralType(&v39, &v38, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v34, "af0");
  XofIntegralType<short>::XofIntegralType(&v35, &v34, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&__p, "af1");
  XofIntegralType<short>::XofIntegralType(&v31, &__p, -4096, 4095, 0);
  *this = v87;
  *(this + 8) = v88;
  *(this + 3) = v89;
  v88 = 0uLL;
  v89 = 0;
  *(this + 8) = v83;
  *(this + 40) = v84;
  v2 = v85;
  v85 = 0;
  v84 = 0uLL;
  v3 = v79;
  v4 = v81;
  *(this + 7) = v2;
  *(this + 8) = v3;
  v5 = v80;
  *(this + 11) = v4;
  *(this + 72) = v5;
  v80 = 0uLL;
  v81 = 0;
  v6 = v76;
  v7 = v77;
  *(this + 6) = v75;
  *(this + 7) = v6;
  v76 = 0uLL;
  v77 = 0;
  v8 = v71;
  v9 = v73;
  *(this + 16) = v7;
  *(this + 17) = v8;
  *(this + 9) = v72;
  v72 = 0uLL;
  v73 = 0;
  v10 = v67;
  v11 = v69;
  *(this + 20) = v9;
  *(this + 21) = v10;
  *(this + 11) = v68;
  v68 = 0uLL;
  v69 = 0;
  v12 = v63;
  v13 = v65;
  *(this + 24) = v11;
  *(this + 25) = v12;
  v14 = v64;
  *(this + 28) = v13;
  *(this + 13) = v14;
  v64 = 0uLL;
  v65 = 0;
  *(this + 58) = v59;
  v15 = v60;
  *(this + 32) = v61;
  *(this + 15) = v15;
  v60 = 0uLL;
  v61 = 0;
  *(this + 66) = v55;
  v16 = v57;
  *(this + 17) = v56;
  v56 = 0uLL;
  v57 = 0;
  v17 = v51;
  v18 = v53;
  *(this + 36) = v16;
  *(this + 37) = v17;
  *(this + 19) = v52;
  v52 = 0uLL;
  v53 = 0;
  v19 = v47;
  v20 = v49;
  *(this + 40) = v18;
  *(this + 41) = v19;
  *(this + 21) = v48;
  v48 = 0uLL;
  v49 = 0;
  v21 = v43;
  v22 = v45;
  *(this + 44) = v20;
  *(this + 45) = v21;
  *(this + 23) = v44;
  v44 = 0uLL;
  v45 = 0;
  v23 = v39;
  v24 = v41;
  *(this + 48) = v22;
  *(this + 49) = v23;
  *(this + 25) = v40;
  v40 = 0uLL;
  v41 = 0;
  v25 = v35;
  *(this + 52) = v24;
  *(this + 53) = v25;
  v26 = v37;
  *(this + 27) = *v36;
  v36[0] = 0;
  v36[1] = 0;
  v37 = 0;
  v27 = v31;
  *(this + 56) = v26;
  *(this + 57) = v27;
  v28 = v32;
  *(this + 60) = v33;
  *(this + 29) = v28;
  v32 = 0uLL;
  v33 = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v37) < 0)
    {
      operator delete(v36[0]);
    }
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(v44);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49) < 0)
  {
    operator delete(v48);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v57) < 0)
  {
    operator delete(v56);
  }

  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v61) < 0)
  {
    operator delete(v60);
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

  v29 = *MEMORY[0x29EDCA608];
}

void sub_298F8902C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
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

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
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

void XofGlonassAlmCodec::XofGlonassAlmCodec(XofGlonassAlmCodec *this)
{
  v104 = *MEMORY[0x29EDCA608];
  std::string::basic_string[abi:ne200100]<0>(&v100, "svId");
  XofIntegralType<unsigned char>::XofIntegralType(&v101, &v100, 1, 24, 0);
  std::string::basic_string[abi:ne200100]<0>(&v96, "weekNo");
  XofIntegralType<unsigned char>::XofIntegralType(&v97, &v96, 0, 255, 0);
  std::string::basic_string[abi:ne200100]<0>(&v92, "toa");
  XofIntegralType<unsigned char>::XofIntegralType(&v93, &v92, 0, 255, 0);
  std::string::basic_string[abi:ne200100]<0>(&v88, "iod");
  XofIntegralType<unsigned char>::XofIntegralType(&v89, &v88, 0, 3, 0);
  std::string::basic_string[abi:ne200100]<0>(&v84, "n");
  XofIntegralType<unsigned short>::XofIntegralType(&v85, &v84, 1, 1461, 0);
  std::string::basic_string[abi:ne200100]<0>(&v80, "h");
  XofIntegralType<unsigned char>::XofIntegralType(&v81, &v80, 0, 31, 0);
  std::string::basic_string[abi:ne200100]<0>(&v76, "reserved1");
  XofIntegralType<unsigned char>::XofIntegralType(&v77, &v76, 0, 255, 0);
  std::string::basic_string[abi:ne200100]<0>(&v72, "lambda");
  XofIntegralType<int>::XofIntegralType(&v73, &v72, -1048576, 0xFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v68, "t");
  XofIntegralType<unsigned int>::XofIntegralType(&v69, &v68, 0, 0x1FFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v64, "deltaI");
  XofIntegralType<int>::XofIntegralType(&v65, &v64, -131072, 0x1FFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v60, "deltaT");
  XofIntegralType<int>::XofIntegralType(&v61, &v60, -2097152, 0x1FFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v56, "deltaTDot");
  XofIntegralType<signed char>::XofIntegralType(&v57, &v56, -64, 63, 0);
  std::string::basic_string[abi:ne200100]<0>(&v52, "reserved2");
  XofIntegralType<unsigned char>::XofIntegralType(&v53, &v52, 0, 255, 0);
  std::string::basic_string[abi:ne200100]<0>(&v48, "e");
  XofIntegralType<unsigned short>::XofIntegralType(&v49, &v48, 0, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v44, "w");
  XofIntegralType<short>::XofIntegralType(&v45, &v44, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v40, "time");
  XofIntegralType<short>::XofIntegralType(&v41, &v40, -512, 511, 0);
  std::string::basic_string[abi:ne200100]<0>(&v36, "can");
  XofIntegralType<unsigned char>::XofIntegralType(&v37, &v36, 0, 1, 0);
  std::string::basic_string[abi:ne200100]<0>(&v32, "m");
  XofIntegralType<unsigned char>::XofIntegralType(&v33, &v32, 0, 255, 0);
  std::string::basic_string[abi:ne200100]<0>(&__p, "reserved3");
  XofIntegralType<unsigned short>::XofIntegralType(&v29, &__p, 0, 0xFFFF, 0);
  *this = v101;
  *(this + 8) = v102;
  *(this + 3) = v103;
  v102 = 0uLL;
  v103 = 0;
  *(this + 8) = v97;
  *(this + 40) = v98;
  *(this + 7) = v99;
  v99 = 0;
  v98 = 0uLL;
  *(this + 16) = v93;
  v2 = v94;
  *(this + 11) = v95;
  *(this + 72) = v2;
  v94 = 0uLL;
  v95 = 0;
  *(this + 24) = v89;
  v3 = v91;
  *(this + 104) = v90;
  v90 = 0uLL;
  v91 = 0;
  v4 = v85;
  v5 = v87;
  *(this + 15) = v3;
  *(this + 16) = v4;
  v6 = v86;
  *(this + 19) = v5;
  *(this + 136) = v6;
  v86 = 0uLL;
  v87 = 0;
  *(this + 40) = v81;
  v7 = v82;
  *(this + 23) = v83;
  *(this + 168) = v7;
  v82 = 0uLL;
  v83 = 0;
  *(this + 48) = v77;
  v8 = v78;
  *(this + 27) = v79;
  *(this + 200) = v8;
  v78 = 0uLL;
  v79 = 0;
  v9 = v73;
  v10 = v74;
  *(this + 32) = v75;
  *(this + 14) = v9;
  *(this + 15) = v10;
  v74 = 0uLL;
  v75 = 0;
  *(this + 264) = v69;
  v11 = v70;
  *(this + 37) = v71;
  *(this + 280) = v11;
  v70 = 0uLL;
  v71 = 0;
  v12 = v65;
  v13 = v66;
  *(this + 42) = v67;
  *(this + 19) = v12;
  *(this + 20) = v13;
  v66 = 0uLL;
  v67 = 0;
  *(this + 344) = v61;
  v14 = v62;
  *(this + 47) = v63;
  *(this + 360) = v14;
  v62 = 0uLL;
  v63 = 0;
  *(this + 96) = v57;
  v15 = v58;
  *(this + 51) = v59;
  *(this + 392) = v15;
  v58 = 0uLL;
  v59 = 0;
  *(this + 104) = v53;
  v16 = v55;
  *(this + 424) = v54;
  v54 = 0uLL;
  v55 = 0;
  v17 = v49;
  v18 = v51;
  *(this + 55) = v16;
  *(this + 56) = v17;
  *(this + 456) = v50;
  v50 = 0uLL;
  v51 = 0;
  v19 = v45;
  v20 = v47;
  *(this + 59) = v18;
  *(this + 60) = v19;
  *(this + 488) = v46;
  v46 = 0uLL;
  v47 = 0;
  v21 = v41;
  v22 = v43;
  *(this + 63) = v20;
  *(this + 64) = v21;
  v23 = v42;
  *(this + 67) = v22;
  *(this + 520) = v23;
  v42 = 0uLL;
  v43 = 0;
  *(this + 136) = v37;
  v24 = v38;
  *(this + 71) = v39;
  *(this + 552) = v24;
  v38 = 0uLL;
  v39 = 0;
  *(this + 144) = v33;
  v25 = *v34;
  *(this + 75) = v35;
  *(this + 584) = v25;
  v34[0] = 0;
  v34[1] = 0;
  v35 = 0;
  *(this + 76) = v29;
  v26 = v30;
  *(this + 79) = v31;
  *(this + 616) = v26;
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

  v27 = *MEMORY[0x29EDCA608];
}

void sub_298F89C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
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

  if (a86 < 0)
  {
    operator delete(a85);
  }

  if (a84 < 0)
  {
    operator delete(a83);
  }

  if (SLOBYTE(STACK[0x23F]) < 0)
  {
    operator delete(STACK[0x228]);
  }

  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  if (SLOBYTE(STACK[0x27F]) < 0)
  {
    operator delete(STACK[0x268]);
  }

  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
  }

  if (SLOBYTE(STACK[0x2BF]) < 0)
  {
    operator delete(STACK[0x2A8]);
  }

  if (SLOBYTE(STACK[0x297]) < 0)
  {
    operator delete(STACK[0x280]);
  }

  if (SLOBYTE(STACK[0x2F7]) < 0)
  {
    operator delete(STACK[0x2E0]);
  }

  if (SLOBYTE(STACK[0x2D7]) < 0)
  {
    operator delete(STACK[0x2C0]);
  }

  if (SLOBYTE(STACK[0x32F]) < 0)
  {
    operator delete(STACK[0x318]);
  }

  if (SLOBYTE(STACK[0x30F]) < 0)
  {
    operator delete(STACK[0x2F8]);
  }

  if (SLOBYTE(STACK[0x367]) < 0)
  {
    operator delete(STACK[0x350]);
  }

  if (SLOBYTE(STACK[0x347]) < 0)
  {
    operator delete(STACK[0x330]);
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

uint64_t XofIntegralType<signed char>::XofIntegralType(uint64_t a1, const std::string *a2, char a3, char a4, char a5)
{
  v11 = *MEMORY[0x29EDCA608];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::string::operator=((a1 + 8), a2);
  *a1 = a4;
  *(a1 + 1) = a3;
  *(a1 + 2) = a5;
  *(a1 + 3) = a5;
  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_298F8A094(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>>::~__tuple_impl(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  if (*(a1 + 639) < 0)
  {
    operator delete(*(a1 + 616));
  }

  if (*(a1 + 607) < 0)
  {
    operator delete(*(a1 + 584));
  }

  if (*(a1 + 575) < 0)
  {
    operator delete(*(a1 + 552));
  }

  if (*(a1 + 543) < 0)
  {
    operator delete(*(a1 + 520));
  }

  if (*(a1 + 511) < 0)
  {
    operator delete(*(a1 + 488));
  }

  if (*(a1 + 479) < 0)
  {
    operator delete(*(a1 + 456));
  }

  if (*(a1 + 447) < 0)
  {
    operator delete(*(a1 + 424));
  }

  if (*(a1 + 415) < 0)
  {
    operator delete(*(a1 + 392));
  }

  if (*(a1 + 383) < 0)
  {
    operator delete(*(a1 + 360));
  }

  if (*(a1 + 343) < 0)
  {
    operator delete(*(a1 + 320));
  }

  if (*(a1 + 303) < 0)
  {
    operator delete(*(a1 + 280));
  }

  if (*(a1 + 263) < 0)
  {
    operator delete(*(a1 + 240));
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

void XofBeidouAlmCodec::XofBeidouAlmCodec(XofBeidouAlmCodec *this)
{
  v88 = *MEMORY[0x29EDCA608];
  std::string::basic_string[abi:ne200100]<0>(&v84, "svId");
  XofIntegralType<unsigned char>::XofIntegralType(&v85, &v84, 1, 63, 0);
  std::string::basic_string[abi:ne200100]<0>(&v80, "weekNum");
  XofIntegralType<unsigned char>::XofIntegralType(&v81, &v80, 0, 255, 0);
  std::string::basic_string[abi:ne200100]<0>(&v76, "toa");
  XofIntegralType<unsigned char>::XofIntegralType(&v77, &v76, 0, 255, 0);
  std::string::basic_string[abi:ne200100]<0>(&v72, "iod");
  XofIntegralType<unsigned char>::XofIntegralType(&v73, &v72, 0, 3, 0);
  std::string::basic_string[abi:ne200100]<0>(&v68, "almToa");
  XofIntegralType<unsigned char>::XofIntegralType(&v69, &v68, 0, 255, 0);
  std::string::basic_string[abi:ne200100]<0>(&v64, "reserved1");
  XofIntegralType<unsigned char>::XofIntegralType(&v65, &v64, 0, 255, 0);
  std::string::basic_string[abi:ne200100]<0>(&v60, "reserved2");
  XofIntegralType<unsigned short>::XofIntegralType(&v61, &v60, 0, 0xFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v56, "sqrtA");
  XofIntegralType<unsigned int>::XofIntegralType(&v57, &v56, 0, 0xFFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v52, "e");
  XofIntegralType<unsigned int>::XofIntegralType(&v53, &v52, 0, 0x1FFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v48, "w");
  XofIntegralType<int>::XofIntegralType(&v49, &v48, -8388608, 0x7FFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v44, "m");
  XofIntegralType<int>::XofIntegralType(&v45, &v44, -8388608, 0x7FFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v40, "omega0");
  XofIntegralType<int>::XofIntegralType(&v41, &v40, -8388608, 0x7FFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v36, "omegaDot");
  XofIntegralType<int>::XofIntegralType(&v37, &v36, -65536, 0xFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v32, "deltaI");
  XofIntegralType<short>::XofIntegralType(&v33, &v32, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v28, "a0");
  XofIntegralType<short>::XofIntegralType(&v29, &v28, -1024, 1023, 0);
  std::string::basic_string[abi:ne200100]<0>(&v24, "a1");
  XofIntegralType<short>::XofIntegralType(&v25, &v24, -1024, 1023, 0);
  std::string::basic_string[abi:ne200100]<0>(&__p, "svHealth");
  XofIntegralType<short>::XofIntegralType(&v21, &__p, 0, 511, 0);
  *(this + 8) = v86;
  *(this + 40) = v82;
  *(this + 72) = v78;
  *(this + 104) = v74;
  *(this + 136) = v70;
  *(this + 168) = v66;
  *(this + 200) = v62;
  v2 = v58;
  *(this + 14) = v57;
  *(this + 15) = v2;
  v3 = v54;
  *(this + 264) = v53;
  *(this + 280) = v3;
  v4 = v50;
  *(this + 19) = v49;
  *(this + 20) = v4;
  v5 = v46;
  *(this + 344) = v45;
  *(this + 360) = v5;
  v6 = v42;
  *(this + 24) = v41;
  *(this + 25) = v6;
  v7 = v38;
  *(this + 424) = v37;
  *this = v85;
  *(this + 3) = v87;
  v86 = 0uLL;
  v87 = 0;
  *(this + 8) = v81;
  *(this + 7) = v83;
  v83 = 0;
  v82 = 0uLL;
  *(this + 16) = v77;
  *(this + 11) = v79;
  v78 = 0uLL;
  v79 = 0;
  *(this + 24) = v73;
  *(this + 15) = v75;
  v74 = 0uLL;
  v75 = 0;
  *(this + 32) = v69;
  *(this + 19) = v71;
  v70 = 0uLL;
  v71 = 0;
  *(this + 40) = v65;
  v8 = v67;
  v66 = 0uLL;
  v67 = 0;
  v9 = v61;
  v10 = v63;
  *(this + 23) = v8;
  *(this + 24) = v9;
  *(this + 27) = v10;
  v62 = 0uLL;
  v63 = 0;
  *(this + 32) = v59;
  v58 = 0uLL;
  v59 = 0;
  *(this + 37) = v55;
  v54 = 0uLL;
  v55 = 0;
  *(this + 42) = v51;
  v50 = 0uLL;
  v51 = 0;
  *(this + 47) = v47;
  v46 = 0uLL;
  v47 = 0;
  *(this + 52) = v43;
  v42 = 0uLL;
  v43 = 0;
  v11 = v39;
  *(this + 440) = v7;
  v38 = 0uLL;
  v39 = 0;
  v12 = v33;
  v13 = v35;
  *(this + 57) = v11;
  *(this + 58) = v12;
  *(this + 472) = v34;
  v34 = 0uLL;
  v35 = 0;
  v14 = v29;
  v15 = v31;
  *(this + 61) = v13;
  *(this + 62) = v14;
  v16 = v30;
  *(this + 65) = v15;
  *(this + 504) = v16;
  v30 = 0uLL;
  v31 = 0;
  *(this + 66) = v25;
  v17 = *v26;
  *(this + 69) = v27;
  *(this + 536) = v17;
  v26[0] = 0;
  v26[1] = 0;
  v27 = 0;
  *(this + 70) = v21;
  v18 = v22;
  *(this + 73) = v23;
  *(this + 568) = v18;
  v22 = 0uLL;
  v23 = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26[0]);
    }
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30);
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

  v19 = *MEMORY[0x29EDCA608];
}

void sub_298F8A980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
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

  if (a71 < 0)
  {
    operator delete(a66);
  }

  if (a63 < 0)
  {
    operator delete(a58);
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

  if (SLOBYTE(STACK[0x21F]) < 0)
  {
    operator delete(STACK[0x208]);
  }

  if (a85 < 0)
  {
    operator delete(a84);
  }

  if (SLOBYTE(STACK[0x25F]) < 0)
  {
    operator delete(STACK[0x248]);
  }

  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(STACK[0x220]);
  }

  if (SLOBYTE(STACK[0x297]) < 0)
  {
    operator delete(STACK[0x280]);
  }

  if (SLOBYTE(STACK[0x277]) < 0)
  {
    operator delete(STACK[0x260]);
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

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(uint64_t a1)
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

  if (*(a1 + 423) < 0)
  {
    operator delete(*(a1 + 400));
  }

  if (*(a1 + 383) < 0)
  {
    operator delete(*(a1 + 360));
  }

  if (*(a1 + 343) < 0)
  {
    operator delete(*(a1 + 320));
  }

  if (*(a1 + 303) < 0)
  {
    operator delete(*(a1 + 280));
  }

  if (*(a1 + 263) < 0)
  {
    operator delete(*(a1 + 240));
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

void XofNavicAlmCodec::XofNavicAlmCodec(XofNavicAlmCodec *this)
{
  v85 = *MEMORY[0x29EDCA608];
  std::string::basic_string[abi:ne200100]<0>(&v81, "svId");
  XofIntegralType<unsigned char>::XofIntegralType(&v82, &v81, 1, 14, 0);
  std::string::basic_string[abi:ne200100]<0>(&v77, "weekNo");
  XofIntegralType<unsigned short>::XofIntegralType(&v78, &v77, 0, 1023, 0);
  std::string::basic_string[abi:ne200100]<0>(&v73, "toa");
  XofIntegralType<unsigned short>::XofIntegralType(&v74, &v73, 0, 37799, 0);
  std::string::basic_string[abi:ne200100]<0>(&v69, "e");
  XofIntegralType<unsigned short>::XofIntegralType(&v70, &v69, 0, 0xFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v65, "intSigCor");
  XofIntegralType<signed char>::XofIntegralType(&v66, &v65, -128, 127, 0);
  std::string::basic_string[abi:ne200100]<0>(&v61, "i0");
  XofIntegralType<int>::XofIntegralType(&v62, &v61, -8388608, 0x7FFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v57, "omegaDot");
  XofIntegralType<short>::XofIntegralType(&v58, &v57, -32768, 0x7FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v53, "L5Health");
  XofIntegralType<unsigned char>::XofIntegralType(&v54, &v53, 0, 1, 0);
  std::string::basic_string[abi:ne200100]<0>(&v49, "SHealth");
  XofIntegralType<unsigned char>::XofIntegralType(&v50, &v49, 0, 1, 0);
  std::string::basic_string[abi:ne200100]<0>(&v45, "sqrtA");
  XofIntegralType<unsigned int>::XofIntegralType(&v46, &v45, 0, 0xFFFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v41, "omega0");
  XofIntegralType<int>::XofIntegralType(&v42, &v41, -8388608, 0x7FFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v37, "w");
  XofIntegralType<int>::XofIntegralType(&v38, &v37, -8388608, 0x7FFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v33, "m");
  XofIntegralType<int>::XofIntegralType(&v34, &v33, -8388608, 0x7FFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v29, "af0");
  XofIntegralType<short>::XofIntegralType(&v30, &v29, -1024, 1023, 0);
  std::string::basic_string[abi:ne200100]<0>(&v25, "af1");
  XofIntegralType<short>::XofIntegralType(&v26, &v25, -1024, 1023, 0);
  std::string::basic_string[abi:ne200100]<0>(&__p, "reserved2");
  XofIntegralType<unsigned int>::XofIntegralType(&v22, &__p, 0, -1, 0);
  *(this + 8) = v83;
  *(this + 40) = v79;
  *(this + 72) = v75;
  *(this + 104) = v71;
  *(this + 136) = v67;
  v2 = v63;
  *(this + 10) = v62;
  *(this + 11) = v2;
  *(this + 13) = v59;
  *(this + 15) = v55;
  *(this + 17) = v51;
  *(this + 296) = v46;
  *(this + 312) = v47;
  v3 = v43;
  *(this + 21) = v42;
  *(this + 22) = v3;
  *(this + 376) = v38;
  *(this + 392) = v39;
  v4 = v35;
  *(this + 26) = v34;
  *(this + 27) = v4;
  *(this + 29) = v31;
  *(this + 31) = *v27;
  v5 = v23;
  *(this + 520) = v22;
  *this = v82;
  v6 = v84;
  v83 = 0uLL;
  v84 = 0;
  v7 = v78;
  v8 = v80;
  *(this + 3) = v6;
  *(this + 4) = v7;
  v80 = 0;
  v79 = 0uLL;
  v9 = v74;
  v10 = v76;
  *(this + 7) = v8;
  *(this + 8) = v9;
  v75 = 0uLL;
  v76 = 0;
  v11 = v70;
  v12 = v72;
  *(this + 11) = v10;
  *(this + 12) = v11;
  *(this + 15) = v12;
  v71 = 0uLL;
  v72 = 0;
  *(this + 32) = v66;
  *(this + 19) = v68;
  v67 = 0uLL;
  v68 = 0;
  v13 = v64;
  v63 = 0uLL;
  v64 = 0;
  v14 = v58;
  v15 = v60;
  *(this + 24) = v13;
  *(this + 25) = v14;
  *(this + 28) = v15;
  v59 = 0uLL;
  v60 = 0;
  *(this + 58) = v54;
  *(this + 32) = v56;
  v55 = 0uLL;
  v56 = 0;
  *(this + 66) = v50;
  *(this + 36) = v52;
  v51 = 0uLL;
  v52 = 0;
  *(this + 41) = v48;
  v47 = 0uLL;
  v48 = 0;
  *(this + 46) = v44;
  v43 = 0uLL;
  v44 = 0;
  *(this + 51) = v40;
  v39 = 0uLL;
  v40 = 0;
  v16 = v36;
  v35 = 0uLL;
  v36 = 0;
  v17 = v30;
  v18 = v32;
  *(this + 56) = v16;
  *(this + 57) = v17;
  v31 = 0uLL;
  v32 = 0;
  v19 = v26;
  *(this + 60) = v18;
  *(this + 61) = v19;
  *(this + 64) = v28;
  v27[0] = 0;
  v27[1] = 0;
  v28 = 0;
  *(this + 69) = v24;
  *(this + 536) = v5;
  v23 = 0uLL;
  v24 = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(v27[0]);
    }
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(v35);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v56) < 0)
  {
    operator delete(v55);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59);
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v64) < 0)
  {
    operator delete(v63);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v68) < 0)
  {
    operator delete(v67);
  }

  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v72) < 0)
  {
    operator delete(v71);
  }

  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v76) < 0)
  {
    operator delete(v75);
  }

  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v80) < 0)
  {
    operator delete(v79);
  }

  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v84) < 0)
  {
    operator delete(v83);
  }

  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v81.__r_.__value_.__l.__data_);
  }

  v20 = *MEMORY[0x29EDCA608];
}

void sub_298F8B4E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, void *a61, uint64_t a62, int a63)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (a60 < 0)
  {
    operator delete(a55);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  if (a72 < 0)
  {
    operator delete(a69);
  }

  if (a66 < 0)
  {
    operator delete(a61);
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

  if (SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(a85);
  }

  if (SLOBYTE(STACK[0x25F]) < 0)
  {
    operator delete(STACK[0x248]);
  }

  if (SLOBYTE(STACK[0x23F]) < 0)
  {
    operator delete(STACK[0x228]);
  }

  if (SLOBYTE(STACK[0x29F]) < 0)
  {
    operator delete(STACK[0x288]);
  }

  if (SLOBYTE(STACK[0x277]) < 0)
  {
    operator delete(STACK[0x260]);
  }

  if (SLOBYTE(STACK[0x2D7]) < 0)
  {
    operator delete(STACK[0x2C0]);
  }

  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
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

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>>::~__tuple_impl(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  if (*(a1 + 559) < 0)
  {
    operator delete(*(a1 + 536));
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

  if (*(a1 + 415) < 0)
  {
    operator delete(*(a1 + 392));
  }

  if (*(a1 + 375) < 0)
  {
    operator delete(*(a1 + 352));
  }

  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
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

uint64_t XofIntegralType<short>::DecodeFromHexData(__int16 *a1, void *a2, _DWORD *a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  if ((a2[1] - (*a2 + v5)) <= 1)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v7 = (a1 + 4);
      if (*(a1 + 31) < 0)
      {
        v7 = *v7;
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Insufficient data to decode, in the buffer! Field decoding is %s\n", v6, "GNC", 87, "DecodeFromHexData", v7);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    goto LABEL_9;
  }

  *__str = 0;
  if (!XofBaseType::CopyDataFromBuffer(a1, a2, v5, 2uLL, __str))
  {
LABEL_9:
    result = 5;
    goto LABEL_16;
  }

  v8 = *__str;
  a1[3] = *__str;
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, *(a1 + 1), *(a1 + 2));
  }

  else
  {
    v15 = *(a1 + 4);
  }

  v13 = XofBaseType::ValidateSignedRange(a1, v8, v9, v10, v11, &v15);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  *a3 += 2;
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

void sub_298F8BAEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XofIntegralType<int>::DecodeFromHexData(int *a1, void *a2, _DWORD *a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  if ((a2[1] - (*a2 + v5)) <= 3)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v7 = (a1 + 4);
      if (*(a1 + 39) < 0)
      {
        v7 = *v7;
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Insufficient data to decode, in the buffer! Field decoding is %s\n", v6, "GNC", 87, "DecodeFromHexData", v7);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    goto LABEL_9;
  }

  *__str = 0;
  if (!XofBaseType::CopyDataFromBuffer(a1, a2, v5, 4uLL, __str))
  {
LABEL_9:
    result = 5;
    goto LABEL_16;
  }

  v8 = *__str;
  a1[3] = *__str;
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  if (*(a1 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, *(a1 + 2), *(a1 + 3));
  }

  else
  {
    v15 = *(a1 + 4);
  }

  v13 = XofBaseType::ValidateSignedRange(a1, v8, v9, v10, v11, &v15);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  *a3 += 4;
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

void sub_298F8BCC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XofIntegralType<signed char>::DecodeFromHexData(char *a1, void *a2, _DWORD *a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  if (a2[1] - *a2 == v5)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v7 = a1 + 8;
      if (a1[31] < 0)
      {
        v7 = *v7;
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Insufficient data to decode, in the buffer! Field decoding is %s\n", v6, "GNC", 87, "DecodeFromHexData", v7);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    goto LABEL_9;
  }

  *__str = 0;
  if (!XofBaseType::CopyDataFromBuffer(a1, a2, v5, 1uLL, __str))
  {
LABEL_9:
    result = 5;
    goto LABEL_16;
  }

  v8 = __str[0];
  a1[3] = __str[0];
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  if (a1[31] < 0)
  {
    std::string::__init_copy_ctor_external(&v15, *(a1 + 1), *(a1 + 2));
  }

  else
  {
    v15 = *(a1 + 8);
  }

  v13 = XofBaseType::ValidateSignedRange(a1, v8, v9, v10, v11, &v15);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  ++*a3;
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

void sub_298F8BE9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL XofGenericCodec::Decode<13ul,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>>(uint64_t a1, void *a2, _DWORD *a3)
{
  v8 = *MEMORY[0x29EDCA608];
  result = XofIntegralType<unsigned short>::DecodeFromHexData((a1 + 448), a2, a3) == 1 && XofIntegralType<short>::DecodeFromHexData((a1 + 480), a2, a3) == 1 && XofIntegralType<short>::DecodeFromHexData((a1 + 512), a2, a3) == 1 && XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 544), a2, a3) == 1 && XofIntegralType<unsigned char>::DecodeFromHexData((a1 + 576), a2, a3) == 1 && XofIntegralType<unsigned short>::DecodeFromHexData((a1 + 608), a2, a3) == 1;
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL XofGenericCodec::Decode<9ul,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>(__int16 *a1, void *a2, _DWORD *a3)
{
  v8 = *MEMORY[0x29EDCA608];
  result = XofIntegralType<short>::DecodeFromHexData(a1 + 148, a2, a3) == 1 && XofIntegralType<short>::DecodeFromHexData(a1 + 164, a2, a3) == 1 && XofIntegralType<short>::DecodeFromHexData(a1 + 180, a2, a3) == 1 && XofIntegralType<short>::DecodeFromHexData(a1 + 196, a2, a3) == 1 && XofIntegralType<short>::DecodeFromHexData(a1 + 212, a2, a3) == 1 && XofIntegralType<short>::DecodeFromHexData(a1 + 228, a2, a3) == 1;
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL XofGenericCodec::Decode<11ul,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>(uint64_t a1, void *a2, _DWORD *a3)
{
  v8 = *MEMORY[0x29EDCA608];
  result = XofIntegralType<int>::DecodeFromHexData((a1 + 384), a2, a3) == 1 && XofIntegralType<int>::DecodeFromHexData((a1 + 424), a2, a3) == 1 && XofIntegralType<short>::DecodeFromHexData((a1 + 464), a2, a3) == 1 && XofIntegralType<short>::DecodeFromHexData((a1 + 496), a2, a3) == 1 && XofIntegralType<short>::DecodeFromHexData((a1 + 528), a2, a3) == 1 && XofIntegralType<short>::DecodeFromHexData((a1 + 560), a2, a3) == 1;
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL XofGenericCodec::Decode<10ul,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>>(uint64_t a1, void *a2, _DWORD *a3)
{
  v8 = *MEMORY[0x29EDCA608];
  result = XofIntegralType<int>::DecodeFromHexData((a1 + 336), a2, a3) == 1 && XofIntegralType<int>::DecodeFromHexData((a1 + 376), a2, a3) == 1 && XofIntegralType<int>::DecodeFromHexData((a1 + 416), a2, a3) == 1 && XofIntegralType<short>::DecodeFromHexData((a1 + 456), a2, a3) == 1 && XofIntegralType<short>::DecodeFromHexData((a1 + 488), a2, a3) == 1 && XofIntegralType<unsigned int>::DecodeFromHexData((a1 + 520), a2, a3) == 1;
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t *std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  v8 = *MEMORY[0x29EDCA608];
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v21 = *MEMORY[0x29EDCA608];
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          break;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          break;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  v20 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Get_Constell_Prn(unsigned int a1)
{
  v3 = *MEMORY[0x29EDCA608];
  if (a1 >= 0x20)
  {
    if (a1 >= 0x38)
    {
      if (a1 >= 0x5C)
      {
        if (a1 >= 0x9B)
        {
          if (a1 >= 0xA5)
          {
            if (a1 >= 0xB3)
            {
              if (a1 >= 0xDA)
              {
                gn_report_assertion_failure("Get_Constell_Prn:");
                result = 0;
              }

              else
              {
                result = 7;
              }
            }

            else
            {
              result = 6;
            }
          }

          else
          {
            result = 5;
          }
        }

        else
        {
          result = 4;
        }
      }

      else
      {
        result = 3;
      }
    }

    else
    {
      result = 2;
    }
  }

  else
  {
    result = 1;
  }

  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Get_Constell_Pos(unsigned int a1)
{
  v3 = *MEMORY[0x29EDCA608];
  if (a1 >= 0x20)
  {
    if (a1 >= 0x38)
    {
      if (a1 >= 0x5C)
      {
        if (a1 >= 0x9B)
        {
          if (a1 >= 0xA5)
          {
            if (a1 >= 0xB3)
            {
              if (a1 >= 0xC5)
              {
                gn_report_assertion_failure("Get_Constell_Pos:");
                result = 0;
              }

              else
              {
                result = 7;
              }
            }

            else
            {
              result = 6;
            }
          }

          else
          {
            result = 5;
          }
        }

        else
        {
          result = 4;
        }
      }

      else
      {
        result = 3;
      }
    }

    else
    {
      result = 2;
    }
  }

  else
  {
    result = 1;
  }

  v2 = *MEMORY[0x29EDCA608];
  return result;
}