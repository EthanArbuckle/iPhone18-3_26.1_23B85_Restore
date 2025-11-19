uint64_t DD_Delete_Bad_GPS_Data(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = 0;
  v5 = 0;
  v15 = *MEMORY[0x29EDCA608];
  v6 = a4 + 13;
  v7 = a4 + 877;
  v8 = (a1 + 4);
  v9 = 1984;
  result = 0xFFFFFFFFLL;
  do
  {
    v11 = a4[4];
    if (*(v11 + v5) == 1)
    {
      *(v8 - 1) = 16777472;
      *v8 = 256;
      *(a2 + 2 * v5) = 256;
      *(v11 + v5) = 0;
      *(a4[2] + v5) = 0;
      *(a4[6] + v5) = 0;
      *(v6 + 92) = 0uLL;
      v6[4] = 0uLL;
      v6[5] = 0uLL;
      v6[2] = 0uLL;
      v6[3] = 0uLL;
      *v6 = 0uLL;
      v6[1] = 0uLL;
      *(a4[12] + v5) = 0;
      *(a4[9] + v5) = 1;
      v12 = (p_NV + v9);
      *(v12 - 1) = 0xFFFFFFFFLL;
      *v12 = 0uLL;
      v12[1] = 0uLL;
      v12[2] = 0uLL;
      v12[3] = 0uLL;
      v12[4] = 0uLL;
      v12[5] = 0uLL;
      *(v12 + 92) = 0uLL;
    }

    if (*(a4[5] + v5) == 1)
    {
      *(a3 + v5) = -1;
      *(a4[5] + v5) = 0;
      *(a4[3] + v5) = 0;
      *(a4[8] + v5) = 0;
      *(v7 + 28) = 0uLL;
      *v7 = 0uLL;
      v7[1] = 0uLL;
      *(a4[12] + v5) = 0;
      v13 = p_NV + v4;
      *(v13 + 184) = 0xFFFFFFFFLL;
      *(v13 + 192) = 0uLL;
      *(v13 + 208) = 0uLL;
      *(v13 + 220) = 0uLL;
    }

    ++v5;
    v4 += 56;
    v9 += 120;
    v7 = (v7 + 44);
    v6 = (v6 + 108);
    v8 += 3;
  }

  while (v5 != 32);
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DD_Delete_Inhib_GPS_Data(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = 0;
  v6 = 0;
  v14 = *MEMORY[0x29EDCA608];
  v7 = a5 + 877;
  v8 = (a2 + 4);
  v9 = 1984;
  v10 = a5;
  do
  {
    if (*(result + v6) == 1)
    {
      *(v8 - 1) = 16777472;
      *v8 = 256;
      *(a3 + 2 * v6) = 256;
      *(a5[4] + v6) = 0;
      *(a5[2] + v6) = 0;
      *(a5[6] + v6) = 0;
      *(v10 + 196) = 0uLL;
      *(v10 + 23) = 0uLL;
      *(v10 + 21) = 0uLL;
      *(v10 + 19) = 0uLL;
      *(v10 + 17) = 0uLL;
      *(v10 + 15) = 0uLL;
      *(v10 + 13) = 0uLL;
      *(a5[7] + v6) = 0;
      *(v10 + 3652) = 0uLL;
      *(v10 + 453) = 0uLL;
      *(v10 + 455) = 0uLL;
      *(v10 + 449) = 0uLL;
      *(v10 + 451) = 0uLL;
      *(v10 + 445) = 0uLL;
      *(v10 + 447) = 0uLL;
      *(a5[12] + v6) = 0;
      *(a5[9] + v6) = 1;
      v11 = (p_NV + v9);
      *(v11 - 1) = 0xFFFFFFFFLL;
      *v11 = 0uLL;
      v11[1] = 0uLL;
      v11[2] = 0uLL;
      v11[3] = 0uLL;
      v11[4] = 0uLL;
      v11[5] = 0uLL;
      *(v11 + 92) = 0uLL;
      *(a4 + v6) = -1;
      *(a5[5] + v6) = 0;
      *(a5[3] + v6) = 0;
      *(a5[8] + v6) = 0;
      *(v7 + 28) = 0uLL;
      *v7 = 0uLL;
      v7[1] = 0uLL;
      v12 = p_NV + v5;
      *(v12 + 184) = 0xFFFFFFFFLL;
      *(v12 + 192) = 0uLL;
      *(v12 + 208) = 0uLL;
      *(v12 + 220) = 0uLL;
    }

    ++v6;
    v9 += 120;
    v5 += 56;
    v7 = (v7 + 44);
    v10 = (v10 + 108);
    v8 += 3;
  }

  while (v6 != 32);
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DD_Check_Age_GPS_Data(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = *MEMORY[0x29EDCA608];
  if (result < 1)
  {
LABEL_68:
    v32 = *MEMORY[0x29EDCA608];
    return result;
  }

  v7 = result;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v37 = (result + 900);
  if (result <= 0x15180)
  {
    v11 = 86400;
  }

  else
  {
    v11 = result;
  }

  v12 = v11 - 86400;
  v13 = *(a6 + 48);
  v14 = (a6 + 104);
  v36 = (result - a2 / 0x3E8) & ~((result - a2 / 0x3E8) >> 31);
  do
  {
    if (*(v13 + v8) != 1)
    {
      goto LABEL_17;
    }

    v15 = *v14;
    if (*v14 < v12 && v15 >= 1)
    {
LABEL_15:
      v10 = 1;
      *(*(a6 + 32) + v8) = 1;
      goto LABEL_17;
    }

    if (v15)
    {
      if (v15 > v37)
      {
        v9 = (v9 + 1);
        if ((*(a6 + 39302) & 1) == 0)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      *v14 = v36;
    }

LABEL_17:
    ++v8;
    v14 += 27;
  }

  while (v8 != 32);
  if (v9 >= 1)
  {
    EvLog_nd("DD_Check_Age_GPS_Data: Deleting EPH since in the future", 1, a3, v9);
    if (*(a6 + 39302) == 1)
    {
      EvLog("DD_Check_Age_GPS_Data: Skipping since SkipFutureCheck set");
    }
  }

  v17 = 0;
  v18 = 0;
  if (v7 <= 15724800)
  {
    v19 = 15724800;
  }

  else
  {
    v19 = v7;
  }

  v20 = v19 - 15724800;
  v21 = 7016;
  do
  {
    if (*(*(a6 + 64) + v17) == 1)
    {
      v22 = *(a6 + v21);
      if (v22 >= v20 || v22 < 1)
      {
        if (v22)
        {
          if (v22 > v37)
          {
            v18 = (v18 + 1);
            EvLog_v("DD_Check_Age_GPS_Data: Future almanac deleted SV %d age %d thresh %d", v17 + 1, (v7 - v22) / 604800, 0);
            if ((*(a6 + 39302) & 1) == 0)
            {
              v10 = 1;
              *(*(a6 + 40) + v17) = 1;
            }
          }
        }

        else
        {
          *(a6 + v21) = v36;
        }
      }

      else
      {
        v10 = 1;
        *(*(a6 + 40) + v17) = 1;
        EvLog_v("DD_Check_Age_GPS_Data: Old almanac deleted SV %d age %d thresh %d", v17 + 1, (v7 - v22) / 604800, (v7 - v20) / 604800);
      }
    }

    ++v17;
    v21 += 44;
  }

  while (v17 != 32);
  if (v18 >= 1)
  {
    EvLog_nd("DD_Check_Age_GPS_Data: Deleting ALM since in the future", 1, a3, v18);
    if (*(a6 + 39302) == 1)
    {
      EvLog("DD_Check_Age_GPS_Data: Skipping since SkipFutureCheck set");
    }
  }

  if (v7 <= 2419200)
  {
    v24 = 2419200;
  }

  else
  {
    v24 = v7;
  }

  v25 = v24 - 2419200;
  if (*(a6 + 8428))
  {
    v26 = (a6 + 8424);
    v27 = *(a6 + 8424);
    if (v27 >= v25 || v27 < 1)
    {
      if (v27)
      {
        if (v27 > v37)
        {
          EvLog_nd("DD_Check_Age_GPS_Data: Deleting Iono Model since in the future", 2, a3, *(a6 + 8424), v37);
          if ((*(a6 + 39302) & 1) == 0)
          {
            goto LABEL_53;
          }

          EvLog("DD_Check_Age_GPS_Data: Skipping since SkipFutureCheck set");
        }
      }

      else
      {
        *v26 = v36;
      }
    }

    else
    {
LABEL_53:
      *v26 = 0;
      *(a6 + 8432) = 0;
    }
  }

  if (*(a6 + 8444))
  {
    v29 = (a6 + 8440);
    v30 = *(a6 + 8440);
    if (v30 >= v25 || v30 < 1)
    {
      if (v30)
      {
        if (v30 > v37)
        {
          EvLog_nd("DD_Check_Age_GPS_Data: Deleting UTC since in the future", 2, a3, *(a6 + 8440), v37);
          if ((*(a6 + 39302) & 1) == 0)
          {
            goto LABEL_58;
          }

          EvLog("DD_Check_Age_GPS_Data: Skipping since SkipFutureCheck set");
        }
      }

      else
      {
        *v29 = v36;
      }
    }

    else
    {
LABEL_58:
      *v29 = 0;
      *(a6 + 8448) = 0;
      *(a6 + 8456) = 0;
    }
  }

  result = a3;
  if ((v10 & 1) == 0)
  {
    goto LABEL_68;
  }

  v31 = *MEMORY[0x29EDCA608];

  return DD_Delete_Bad_GPS_Data(a3, a4, a5, a6);
}

uint64_t DD_Proc_GPS_Data(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t a4, int *a5, uint64_t a6)
{
  v152 = *MEMORY[0x29EDCA608];
  v129 = 0;
  v10 = *(a2 + 8);
  v11 = *(a6 + 104 + 108 * v10 + 104);
  if (!v11)
  {
    *(*(a6 + 96) + v10) = 0;
  }

  v12 = *(a2 + 56);
  if ((v12 & 1) == 0 || *(a2 + 18) << 16 != 9109504)
  {
    goto LABEL_8;
  }

  if ((v12 & 2) == 0)
  {
LABEL_6:
    *(a2 + 12) = 0;
    goto LABEL_8;
  }

  v13 = *(a2 + 20);
  v14 = (v13 >> 2) & 7;
  *(a2 + 12) = (v13 >> 2) & 7;
  if ((v14 - 6) < 0xFFFFFFFB)
  {
    goto LABEL_8;
  }

  v124 = (a2 + 16);
  v125 = result;
  v121 = a6 + 104;
  v128 = 0;
  result = DD_Predict_Subframe_Number(a4, &v128);
  if (!result || v14 == v128 || *a3 || (*(*(a6 + 48) + v10) & 1) != 0)
  {
    if ((v13 & 0x18) == 0x10)
    {
      if ((~v12 & 0x3FE) != 0)
      {
        goto LABEL_8;
      }

      if (*(a4 + 5) != 1)
      {
        goto LABEL_8;
      }

      v16 = *(a4 + 16);
      if (v16 < 1025)
      {
        goto LABEL_8;
      }

      v17 = *(a2 + 24);
      v18 = HIWORD(v17) & 0x3F;
      *(a2 + 13) = BYTE2(v17) & 0x3F;
      v19 = (v17 >> 22) & 3;
      *(a2 + 14) = v19;
      if (v19 == 1)
      {
        v20 = (v18 - 1);
        if (v20 > 0x1F)
        {
          goto LABEL_100;
        }

        result = Decode_GPS_Check_Alm_TOA(v124, *(*a6 + v20), v16, &v125[v20 + 192], (a2 + 10), &v129);
        if (result)
        {
          result = DD_Proc_GPS_Alm_Subframe(*(a2 + 13), *(a2 + 10), v124, *a5, v125, (v125 + 224), a6);
        }

        else if (v129)
        {
          v70 = *(a2 + 13);
          v71 = a6 + 44 * (v70 - 1);
          v72 = *(v71 + 7016);
          v73 = *a5;
          *(v71 + 7016) = *a5;
          if (!v72 && v73 >= 1)
          {
            v74 = 0;
            LODWORD(v75) = 0;
            v76 = (v71 + 7016);
            v77 = p_NV;
            v78 = p_NV + 56 * (v70 - 1);
            v79 = *v76;
            v80 = v76[1];
            *(v78 + 220) = *(v76 + 28);
            *(v78 + 192) = v79;
            *(v78 + 208) = v80;
            v81 = v77 + 56 * v70 + 136;
            v82 = 55665;
            do
            {
              v83 = *(v81 + v74) ^ BYTE1(v82);
              v82 = 52845 * (v82 + v83) + 22719;
              v75 = (v75 + v83);
              ++v74;
            }

            while (v74 != 48);
            *(v78 + 184) = v75;
          }
        }
      }

      v18 = *(a2 + 13);
LABEL_100:
      v85 = v124;
      v84 = v125;
      if (v18 == 51)
      {
        result = DD_Proc_GPS_Health_Subframe(v124, *a5, v125, (v125 + 224), (v125 + 192), a6);
        v85 = v124;
        v84 = v125;
        *(a6 + 8464) = 0;
        *&v86 = 0x101010101010101;
        *(&v86 + 1) = 0x101010101010101;
        *(a6 + 8466) = v86;
        *(a6 + 8482) = v86;
        *(v125 + 1125) = 0u;
        *(v125 + 1124) = 0u;
        *&v87 = -1;
        *(&v87 + 1) = -1;
        *(v125 + 1126) = v87;
        *(v125 + 1127) = v87;
        v88 = *(a6 + 96);
        *v88 = 0u;
        v88[1] = 0u;
        v18 = *(a2 + 13);
      }

      if (v18 == 56)
      {
        result = DD_Proc_GPS_ION_UTC_Subframe(*(a2 + 8), v85, *a5, v16, *(a6 + 96), a6);
        v85 = v124;
        v84 = v125;
        v18 = *(a2 + 13);
      }

      if (v18 == 63)
      {
        result = DD_Proc_GPS_AS_SV_Config_Subframe(v85, *a5, (v84 + 17984), v84, v84 + 224, v84 + 192, a6);
        v89 = *a6;
        v90 = *(a2 + 8);
        if (*(*a6 + v90) == 1)
        {
          v91 = (a6 + 37344);
          v92 = v125 + 18016;
          v93 = (a6 + 8466);
          v94 = 32;
          while (1)
          {
            v95 = *(v92 - 32);
            if ((v95 & 7u) - 5 >= 0xFFFFFFFC)
            {
              v96 = *v92;
              if (v96 >= 2)
              {
                if (*v89 == 1 && *v91 == 1)
                {
                  *v93 = (v95 & 8) != 0;
                }

                goto LABEL_112;
              }
            }

            else
            {
              *(*(a6 + 96) + v90) = 1;
              v96 = *v92;
              if (v96 > 1)
              {
                goto LABEL_112;
              }
            }

            *v93 = v96;
LABEL_112:
            ++v93;
            ++v91;
            ++v89;
            ++v92;
            if (!--v94)
            {
              goto LABEL_8;
            }
          }
        }
      }

      goto LABEL_8;
    }
  }

  else if ((v14 != 1 || v128 != 2) && (v14 != 2 || v128 != 3) && (v14 != 3 || v128 != 4))
  {
    result = EvCrt_v("DD_Proc_GPS_Data:  SV %2d Subframe Number Error - decoded %d  expected %d", v10 + 1, (v13 >> 2) & 7, v128);
    goto LABEL_6;
  }

  *(a2 + 13) = 0;
  v21 = *a6;
  v35 = v11 == 0xFFFFFF;
  v22 = v11 != 0xFFFFFF;
  v122 = a2;
  v116 = a5;
  v119 = a6;
  if (v35 || v21[v10] == 1 && *(*(a6 + 48) + v10) == 1 && (DD_Proc_Eph_Bit_Validation(v10, (v13 >> 2) & 7, v124, v12, a6), v10 = *(a2 + 8), v21 = *a6, *(v121 + 108 * v10 + 104) == 0xFFFFFF))
  {
    v114 = v22;
    if (v21[v10] == 1 && (*(a2 + 56) & 2) != 0)
    {
      v125[v10 + 18016] = (*(a2 + 20) & 0x20) != 0;
      LODWORD(v10) = *(a2 + 8);
      v21 = *a6;
    }
  }

  else
  {
    v114 = 0;
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = *(v122 + 12);
  v29 = *(v122 + 56);
  v120 = v10;
  v115 = v21[v10];
  v117 = (v125 + 288);
  result = v28 - 1;
  v118 = v125 + 3360;
  v30 = &v125[6 * v10 + 3360];
  v126 = v10 + 1;
  v127 = v28;
  v31 = &v125[96 * v10 + 256 + 32 * v28];
  v32 = v122 + 24;
  do
  {
    v33 = 1 << (v23 + 2);
    v34 = (v33 & *(v30 + 2 * result));
    if (v34)
    {
      ++v24;
    }

    if ((v33 & v29) != 0)
    {
      ++v25;
      v35 = v34 == 0;
    }

    else
    {
      v35 = 1;
    }

    if (!v35)
    {
      ++v26;
      v36 = *(v31 + 4 * v23);
      if (*(v32 + 4 * v23) != v36)
      {
        v37 = v27 + 1;
        v38 = result;
        v39 = v29;
        EvLog_v("DD_Proc_GPS_Eph_Subframe: SV %d SF %d Diff Wd %d 0x%x 0x%x", v126, v127, v23 + 2, *(v32 + 4 * v23), v36);
        v29 = v39;
        v27 = v37;
        result = v38;
      }
    }

    ++v23;
  }

  while (v23 != 8);
  LODWORD(v40) = v120;
  if (v27 >= 1)
  {
    if (v27 == 1 && v26 >= 4 && (v127 == 1 && (v29 & 0x3C4) != 0x3C4 || v127 >= 2 && (v29 & 0x3FC) != 0x3FC))
    {
      goto LABEL_8;
    }

    v24 = 0;
    v41 = 2 * v127 - 2;
    *(v118 + 6 * v120 + v41) = 0;
    *&v125[6 * v120 + v41] = 256;
  }

  if (v26 - v27 <= 1)
  {
    if (v25 >= v24)
    {
      *(v118 + 3 * v120 + result) = v29;
      v52 = *(v122 + 40);
      v53 = (v117 + 96 * v120 + 32 * result);
      *v53 = *(v122 + 24);
      v53[1] = v52;
    }
  }

  else
  {
    v42 = 0;
    v43 = v118 + 6 * v120 + 2 * v127;
    v46 = *(v43 - 2);
    v44 = (v43 - 2);
    v45 = v46;
    v47 = v122 + 24;
    v48 = &v125[96 * v120 + 256 + 32 * v127];
    do
    {
      v49 = 1 << (v42 + 2);
      v50 = v49 & v45;
      if ((v49 & v29) != 0 && v50 == 0)
      {
        *(v48 + 4 * v42) = *(v47 + 4 * v42);
        v45 |= (1 << (v42 + 2));
        *v44 = v45;
      }

      else if ((v49 & v29) == 0 && v50)
      {
        *(v47 + 4 * v42) = *(v48 + 4 * v42);
        LODWORD(v29) = v29 | (1 << (v42 + 2));
      }

      ++v42;
    }

    while (v42 != 8);
  }

  v54 = v125;
  if ((v127 - 1) <= 2)
  {
    v55 = 0x90207u >> (8 * ((v127 - 1) & 0x1F));
    if ((v29 >> (v55 & 0xF)))
    {
      v56 = BYTE2(v124[v55 & 0xF]);
      if ((v127 != 1 || (v29 & 0x3C4) == 0x3C4) && (v127 < 2 || (v29 & 0x3FC) == 0x3FC))
      {
        v57 = v125 + 224;
        v58 = &v125[6 * v120];
        v59 = *&v58[2 * result];
        if (v56 != v59)
        {
          *&v58[2 * result] = v56;
        }

        if (v56 != *(v57 + v120))
        {
          for (i = 0; i != 6; i += 2)
          {
            if (2 * result != i)
            {
              *&v125[6 * v120 + 3360 + i] = 0;
            }
          }

          *(v57 + v120) = v56;
          v54 = v125;
        }

        v61 = v118 + 3 * v120;
        v62 = *v61;
        if ((~v62 & 0x3C4) != 0)
        {
          goto LABEL_122;
        }

        if ((~v61[1] & 0x3FC) != 0)
        {
          goto LABEL_121;
        }

        if ((~v61[2] & 0x3FC) != 0)
        {
          goto LABEL_121;
        }

        v63 = *v58;
        if (v63 != *(v58 + 1))
        {
          goto LABEL_121;
        }

        v54 = v125;
        if (v63 != *(v58 + 2))
        {
LABEL_122:
          if ((~v62 & 0x3C4) != 0)
          {
            goto LABEL_8;
          }

          if ((~v61[1] & 0x3FC) != 0)
          {
            goto LABEL_8;
          }

          if ((~v61[2] & 0x3FC) != 0)
          {
            goto LABEL_8;
          }

          v97 = *v58;
          if (v97 != *(v58 + 1) || v97 != *(v58 + 2))
          {
            goto LABEL_8;
          }

          v98 = v54 + 3552;
          v99 = *(v117 + 96 * v40);
          v100 = 0xE4FE7F3uLL >> ((v99 >> 2) & 0x1F);
          if (v56 == v59 && *(v121 + 108 * v120 + 104) == 0xFFFFFF && ((v115 & 1) != 0 || (v100 & 1) == 0))
          {
            v101 = v98[v120] == 0;
          }

          else
          {
            v101 = 0;
            v98[v120] = 1;
          }

          *v61 = 0;
          v61[2] = 0;
          if ((v100 & 1) == 0 || !v115)
          {
            goto LABEL_148;
          }

          v102 = (v99 >> 14) & 0x3FF;
          if (*(a4 + 5))
          {
            do
            {
              v103 = v102;
              v102 += 1024;
            }

            while (*(a4 + 16) - 512 > v103);
            if (*(a4 + 16) == v103)
            {
              goto LABEL_148;
            }

            if (*a4 < 3)
            {
              goto LABEL_148;
            }

            v104 = *(a4 + 24);
            if ((v104 - 32) >= 0x93A41)
            {
              goto LABEL_148;
            }
          }

          else
          {
            v105 = *(*(p_api + 72) + 1026);
            if (v102 > v105)
            {
              LOWORD(v105) = v102;
            }

            v103 = ((v102 ^ 0x3FF) + v105) & 0xFC00 | v102;
            v104 = *(a4 + 24);
          }

          v106 = v103;
          result = DD_Submit_WeekNum((v120 + 1), v103, v119, v117, a4);
          if (result)
          {
            v107 = v104 + 604800 * v106;
            if (*a4 <= 2)
            {
              v107 = 0;
            }

            v108 = v116;
            *v116 = v107;
            v110 = v121;
            v109 = v122;
            if (!v101)
            {
              goto LABEL_8;
            }

LABEL_150:
            v111 = *(v109 + 8);
            v112 = v110 + 108 * v111;
            v113 = *v112 != 0;
            *v112 = v107;
            *(v112 + 4) = 4;
            if ((v113 & ~v114 & 1) == 0 && *v108 >= 1)
            {
              *(*(v119 + 72) + v111) = 1;
              result = Core_Save_GPS_Eph((v111 + 1), 0, v112);
            }

            goto LABEL_8;
          }

LABEL_148:
          v110 = v121;
          v109 = v122;
          v108 = v116;
          if (!v101)
          {
            goto LABEL_8;
          }

          v107 = *v116;
          goto LABEL_150;
        }

        v64 = (v117 + 96 * v120);
        v65 = v64[3];
        v147 = v64[2];
        v148 = v65;
        v66 = v64[5];
        v149 = v64[4];
        v150 = v66;
        v67 = v64[1];
        v145 = *v64;
        v151 = 0;
        v144[0] = *v116;
        v144[1] = 4;
        v146 = v67;
        memset(v130, 0, sizeof(v130));
        v131 = 0;
        v132 = 0u;
        v133 = 0u;
        v134 = 0u;
        v135 = 0u;
        v136 = 0u;
        v137 = 0u;
        v138 = 0u;
        v139 = 0u;
        v140 = 0u;
        v141 = 0u;
        v142 = 0u;
        v143 = 0;
        Get_GPS_Kep_Ephemeris(1, v120 + 1, v144, v130);
        v68 = Kep_Check_Ephemeris(*v116 / 604800, *v116 % 604800, v130);
        v69 = v68;
        result = ST_Check_Eph_Kep_Err("DD_Proc_GPS_Eph_Subframe:", v68, v130);
        if ((result & 1) == 0)
        {
          if ((v69 & 0xC) != 0)
          {
            *v61 = 0;
          }

          if ((v69 & 0x3F0) != 0)
          {
            v61[1] = 0;
          }

          if ((v69 & 0xC00) != 0)
          {
            v61[2] = 0;
            v40 = v120;
LABEL_119:
            *(*(v119 + 96) + v40) = 1;
            goto LABEL_120;
          }

          v40 = v120;
          if ((v69 & 0x3FC) != 0)
          {
            goto LABEL_119;
          }
        }

LABEL_120:
        v62 = *v61;
LABEL_121:
        v54 = v125;
        goto LABEL_122;
      }
    }
  }

LABEL_8:
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL DD_Predict_Subframe_Number(uint64_t a1, _BYTE *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  if (*a1 < 4)
  {
    LOBYTE(v3) = -1;
  }

  else
  {
    v2 = ((*(a1 + 24) + 0.5) % 30) / 6.0 + 4.5;
    v3 = v2 - 5 * ((((103 * v2) >> 15) & 1) + ((103 * v2) >> 9)) + 1;
  }

  result = *a1 > 3;
  *a2 = v3;
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DD_Proc_Eph_Bit_Validation(uint64_t result, int a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v12 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v5 = 0;
    v6 = a5 + 108 * result;
    v7 = v6 + 104;
    v8 = v6 + 104 + 4 * (8 * a2 - 8) + 8;
    v9 = *(v6 + 208);
    do
    {
      v10 = 1 << (8 * a2 - 8 + v5);
      if ((v9 & v10) == 0 && ((a4 >> v5) & 1) != 0 && *(a3 + 8 + 4 * v5) == *(v8 + 4 * v5))
      {
        v9 |= v10;
        *(v7 + 104) = v9;
      }

      ++v5;
    }

    while (v5 != 8);
  }

  v11 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL DD_Proc_GPS_Alm_Subframe(unsigned int a1, __int16 a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, void *a7)
{
  v52 = *MEMORY[0x29EDCA608];
  v12 = ((*(a3 + 16) & 0xE0) == 0) & (0xE4FE7F3uLL >> *(a3 + 16));
  v13 = (a1 - 1);
  v14 = *(*a7 + v13);
  if (v14 == 1 && v12 == 0)
  {
    goto LABEL_9;
  }

  if (((v14 == 0) & v12) != 1)
  {
    goto LABEL_13;
  }

  v16 = a7[6];
  if (*(v16 + v13) == 1)
  {
    v17 = a7 + 108 * (a1 - 1);
    v18 = *(v17 + 26);
    if (((0xE4FE7F3uLL >> ((*(v17 + 28) >> 2) & 0x1F)) & 1) == 0 && v18 + 3600 > a4)
    {
LABEL_9:
      LOBYTE(v12) = 0;
      goto LABEL_13;
    }

    if (v18 + 100 < a4)
    {
      *(a7[2] + v13) = 0;
      *(v16 + v13) = 0;
      v19 = a5 + 6 * (a1 - 1);
      *v19 = 16777472;
      *(v19 + 4) = 256;
      *(a6 + 2 * v13) = 256;
    }
  }

  LOBYTE(v12) = 1;
LABEL_13:
  v49 = 0;
  v48 = a4;
  v50 = *(a3 + 8);
  v51 = *(a3 + 24);
  v43 = 0;
  memset(v42, 0, 15);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  memset(v47, 0, sizeof(v47));
  Get_GPS_Kep_Almanac(&v48, v42);
  v20 = Kep_Check_Almanac(a4 / 604800, v42);
  if (v20)
  {
    *(a7[12] + v13) = 1;
  }

  result = ST_Check_Alm_Kep_Err("DD_Proc_GPS_Alm_Subframe:", v20, v42);
  if (result)
  {
    v22 = *a7;
    v23 = a7[1];
    *(v22 + v13) = v12;
    v24 = a7 + 44 * v13;
    *(v24 + 3513) = a2;
    v25 = (v24 + 7016);
    v26 = *(a3 + 8);
    *(v24 + 7044) = *(a3 + 24);
    *(v24 + 7028) = v26;
    *(v24 + 1754) = a4;
    *(v24 + 1755) = 4;
    *(a7[3] + v13) = 1;
    *(a7[8] + v13) = 1;
    if (*(v22 + v13))
    {
      v27 = 1;
    }

    else
    {
      v27 = 2;
    }

    *(v23 + 20 * v13 + 4) = v27;
    if (a4 >= 1)
    {
      v28 = 0;
      LODWORD(v29) = 0;
      v30 = p_NV + 56 * a1;
      v31 = *v25;
      v32 = v25[1];
      *(v30 + 164) = *(v25 + 28);
      *(v30 + 152) = v32;
      *(v30 + 136) = v31;
      v33 = 55665;
      do
      {
        v34 = *(v30 + 136 + v28) ^ BYTE1(v33);
        v33 = 52845 * (v33 + v34) + 22719;
        v29 = (v29 + v34);
        ++v28;
      }

      while (v28 != 48);
      *(v30 + 128) = v29;
      v22 = *a7;
    }

    v35 = 0;
    LODWORD(v36) = 0;
    v37 = p_NV;
    v38 = v22[1];
    *(p_NV + 92) = *v22;
    *(v37 + 108) = v38;
    v39 = 55665;
    do
    {
      v40 = *(v37 + 88 + v35) ^ BYTE1(v39);
      v39 = 52845 * (v39 + v40) + 22719;
      v36 = (v36 + v40);
      ++v35;
    }

    while (v35 != 40);
    *(v37 + 80) = v36;
  }

  v41 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DD_Proc_GPS_Health_Subframe(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 **a6)
{
  v33 = *MEMORY[0x29EDCA608];
  result = Decode_GPS_Health_Subframe(a1, &v31);
  v12 = 0;
  v13 = (a3 + 4);
  v14 = 4;
  v15 = 7036;
  v16 = 112;
  do
  {
    v17 = *(&v31 + v12);
    if (*(*a6 + v12))
    {
      if (*(&v31 + v12))
      {
        goto LABEL_4;
      }
    }

    else if (*(&v31 + v12))
    {
      v19 = a6 + v16;
      v20 = a6[6];
      result = *(v20 + v12);
      if (result != 1 || ((0xE4FE7F3uLL >> ((*(a6 + v16) >> 2) & 0x1F)) & 1) != 0 || *(v19 - 8) + 3600 <= a2)
      {
        v21 = a6[8];
        if (*(v21 + v12) != 1)
        {
          goto LABEL_19;
        }

        v22 = *(a6 + v15 - 20);
        if (((0xE4FE7F3uLL >> (*(a6 + v15) & 0x1F)) & 1) != 0 || v22 + 3600 <= a2)
        {
          if (v22 + 100 >= a2)
          {
LABEL_19:
            if (*(v20 + v12))
            {
LABEL_20:
              if (*(v19 - 8) + 100 < a2)
              {
                *(a6[2] + v12) = 0;
                *(v20 + v12) = 0;
                *(v13 - 1) = 16777472;
                *v13 = 256;
                *(a4 + 2 * v12) = 256;
              }
            }
          }

          else
          {
            *(a6[3] + v12) = 0;
            *(v21 + v12) = 0;
            *(a5 + v12) = -1;
            v20 = a6[6];
            result = *(v20 + v12);
            if (result)
            {
              goto LABEL_20;
            }
          }

LABEL_4:
          v18 = 1;
          goto LABEL_14;
        }
      }

      *(&v31 + v12) = 0;
    }

    v18 = 2;
LABEL_14:
    *(a6[1] + v14) = v18;
    ++v12;
    v14 += 20;
    v13 += 3;
    v15 += 44;
    v16 += 108;
  }

  while (v12 != 24);
  v23 = 0;
  LODWORD(v24) = 0;
  v25 = *a6;
  *v25 = v31;
  *(v25 + 2) = v32;
  v26 = p_NV;
  v27 = **a6;
  *(p_NV + 108) = (*a6)[1];
  *(v26 + 92) = v27;
  v28 = 55665;
  do
  {
    v29 = *(v26 + 88 + v23) ^ BYTE1(v28);
    v28 = 52845 * (v28 + v29) + 22719;
    v24 = (v24 + v29);
    ++v23;
  }

  while (v23 != 40);
  *(v26 + 80) = v24;
  v30 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DD_Proc_GPS_ION_UTC_Subframe(unsigned int a1, _DWORD *a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v50 = *MEMORY[0x29EDCA608];
  v9 = a2[7];
  v8 = a2[8];
  v10 = a2[9];
  v11 = HIWORD(v10);
  if (BYTE2(v8) >= 0x21u)
  {
    v12 = SBYTE2(v10);
LABEL_3:
    result = EvCrt_v("DD_Proc_GPS_ION_UTC_Subframe:  Rejected:  Invalid UTC Model  %d %d %d  %d %d %d", a2[7], BYTE1(a2[7]), SBYTE2(v8), v12, BYTE1(a2[8]), a2[8]);
    *(a5 + a1) = 1;
    goto LABEL_4;
  }

  v12 = SBYTE2(v10);
  v15 = (HIWORD(v8) & 0x3F) - SBYTE2(v10);
  if (v15 < 0)
  {
    v15 = SBYTE2(v10) - (HIWORD(v8) & 0x3F);
  }

  v16 = (v8 - 8) < 0xF9u || v15 > 1;
  if (v16 || BYTE1(v9) >= 0x93u)
  {
    goto LABEL_3;
  }

  v44 = a2[2];
  v45 = a2[3];
  v19 = a2[5];
  v46 = a2[4];
  v20 = a2[6];
  if (BYTE2(v10) == BYTE2(v8) || (v43 = a2[5], v21 = a3, v22 = Is_Future_Leap_Sec_Date_Not_Valid(a3 / 604800, 1, BYTE1(v8), v8), v19 = v43, a3 = v21, !v22))
  {
    v42 = a4;
    v23 = a6 + 0x2000;
    v24 = v19 << 8 >> 8;
    v25 = (v20 << 8) | BYTE2(v9);
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v26 = a6;
    v27 = a3;
    result = Core_Get_GPS_UTC(a3, &v47);
    if (result)
    {
      if (BYTE2(v49) != BYTE2(v8))
      {
        goto LABEL_20;
      }

      v28 = SBYTE5(v49) - v11;
      if (v28 < 0)
      {
        v28 = v11 - SBYTE5(v49);
      }

      if (v28 >= 2)
      {
LABEL_20:
        *(v23 + 272) = 1;
        result = EvCrt_v("DD_Proc_GPS_ION_UTC_Subframe:  Rejected:  OTA UTC Leap Seconds  %d  %d  incompatible with Assistance  %d  %d");
        goto LABEL_4;
      }

      v29 = v42 - 1024 - BYTE1(v49);
      if (v29 >= 127)
      {
        v29 = 127;
      }

      v30 = v42 - 1024 - v9;
      if (v30 >= 127)
      {
        v30 = 127;
      }

      if (vabdd_f64(v24 * 8.8817842e-16 * (v27 - 619315200 - (BYTE1(v9) << 12) - 604800 * ((v42 - 769 - (v30 + v9)) & 0x1FFFF00 | v9)) + v25 * 9.31322575e-10, v48 * 8.8817842e-16 * (v27 - 619315200 - (v49 << 12) - 604800 * ((v42 - 769 - BYTE1(v49) - v29) & 0x1FFFF00 | BYTE1(v49))) + SHIDWORD(v48) * 9.31322575e-10) > 0.000001)
      {
        *(v23 + 273) = 1;
        result = EvCrt_v("DD_Proc_GPS_ION_UTC_Subframe:  Rejected:  OTA UTC Correction  %d ns incompatible with Assistance %d ns");
        goto LABEL_4;
      }
    }

    *(v26 + 8424) = v27;
    *(v23 + 240) = BYTE1(v44);
    *(v23 + 241) = v44;
    *(v23 + 242) = BYTE2(v45);
    *(v23 + 243) = BYTE1(v45);
    *(v23 + 244) = v45;
    *(v23 + 245) = BYTE2(v46);
    *(v23 + 246) = BYTE1(v46);
    *(v23 + 247) = v46;
    *(v26 + 8440) = v27;
    *(v26 + 8448) = v24;
    *(v26 + 8452) = v25;
    *(v23 + 264) = BYTE1(v9);
    *(v23 + 265) = v9;
    *(v23 + 266) = BYTE2(v8);
    *(v23 + 267) = BYTE1(v8);
    *(v23 + 268) = v8;
    *(v23 + 269) = v11;
    *(v23 + 270) = 0;
    *(v26 + 8428) = 4;
    *(v26 + 8444) = 4;
    if (v27 >= 1)
    {
      v31 = 0;
      LODWORD(v32) = 0;
      v33 = p_NV;
      v34 = p_NV + 136;
      *(p_NV + 136) = *(v26 + 8424);
      v35 = 55665;
      do
      {
        v36 = *(v34 + v31) ^ BYTE1(v35);
        v35 = 52845 * (v35 + v36) + 22719;
        v32 = (v32 + v36);
        ++v31;
      }

      while (v31 != 16);
      v37 = 0;
      LODWORD(v38) = 0;
      *(v33 + 128) = v32;
      v39 = *(v26 + 8440);
      *(v33 + 176) = *(v26 + 8456);
      *(v33 + 160) = v39;
      v40 = 55665;
      do
      {
        v41 = *(v33 + 160 + v37) ^ BYTE1(v40);
        v40 = 52845 * (v40 + v41) + 22719;
        v38 = (v38 + v41);
        ++v37;
      }

      while (v37 != 24);
      *(v33 + 152) = v38;
    }
  }

  else
  {
    result = EvCrt_v("DD_Proc_GPS_ION_UTC_Subframe:  Rejected:  Invalid UTC Future Leap Second date  %d  %d %d %d");
  }

LABEL_4:
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DD_Proc_GPS_AS_SV_Config_Subframe(const unsigned int *a1, int a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, _OWORD **a7)
{
  v32[1] = *MEMORY[0x29EDCA608];
  Decode_GPS_AS_SV_Config_Subframe(a1, a3);
  Decode_GPS_Health_From_AS_Subfr(a1, v32);
  v13 = (a4 + 148);
  v14 = 24;
  v15 = 484;
  v16 = 8092;
  v17 = 2704;
  do
  {
    result = v32 + v14;
    v19 = v32[-3].i8[v14];
    if (*(*a7 + v14))
    {
      if (v32[-3].i8[v14])
      {
        goto LABEL_4;
      }
    }

    else if (v32[-3].i8[v14])
    {
      v21 = a7 + v17;
      v22 = a7[6];
      if (*(v22 + v14) != 1 || ((0xE4FE7F3uLL >> ((*(a7 + v17) >> 2) & 0x1F)) & 1) != 0 || *(v21 - 2) + 3600 <= a2)
      {
        v23 = a7[8];
        if (*(v23 + v14) != 1)
        {
          goto LABEL_19;
        }

        v24 = *(a7 + v16 - 20);
        if (((0xE4FE7F3uLL >> (*(a7 + v16) & 0x1F)) & 1) != 0 || v24 + 3600 <= a2)
        {
          result = (v24 + 100);
          if (result >= a2)
          {
LABEL_19:
            if (*(v22 + v14))
            {
LABEL_20:
              if (*(v21 - 2) + 100 < a2)
              {
                *(a7[2] + v14) = 0;
                *(v22 + v14) = 0;
                *(v13 - 1) = 16777472;
                *v13 = 256;
                *(a5 + 2 * v14) = 256;
              }
            }
          }

          else
          {
            *(a7[3] + v14) = 0;
            *(v23 + v14) = 0;
            *(a6 + v14) = -1;
            v22 = a7[6];
            result = *(v22 + v14);
            if (result)
            {
              goto LABEL_20;
            }
          }

LABEL_4:
          v20 = 1;
          goto LABEL_14;
        }
      }

      *(result - 24) = 0;
    }

    v20 = 2;
LABEL_14:
    *(a7[1] + v15) = v20;
    ++v14;
    v15 += 20;
    v13 += 3;
    v16 += 44;
    v17 += 108;
  }

  while (v14 != 32);
  v25 = 0;
  LODWORD(v26) = 0;
  *(*a7 + 3) = v32[0];
  v27 = p_NV;
  v28 = (*a7)[1];
  *(p_NV + 92) = **a7;
  *(v27 + 108) = v28;
  v29 = 55665;
  do
  {
    v30 = *(v27 + 88 + v25) ^ BYTE1(v29);
    v29 = 52845 * (v29 + v30) + 22719;
    v26 = (v26 + v30);
    ++v25;
  }

  while (v25 != 40);
  *(v27 + 80) = v26;
  v31 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DD_Save_New_GPS_Eph(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v28 = *MEMORY[0x29EDCA608];
  v11 = a5 + 13;
  v12 = 7036;
  do
  {
    if (*(a3 + v10) != 1)
    {
      goto LABEL_19;
    }

    v13 = (a2 + v8);
    v14 = *(a2 + v8);
    if (!DD_Check_New_GPS_Eph(v10, a2, a5))
    {
      *(a3 + v10) = 0;
      v13[4] = 0u;
      v13[5] = 0u;
      v13[2] = 0u;
      v13[3] = 0u;
      *v13 = 0u;
      v13[1] = 0u;
      goto LABEL_19;
    }

    v15 = (*a5 + v10);
    v16 = (0xE4FE7F3uLL >> ((v14 >> 2) & 0x1F)) & 1;
    if (!v16 || (*v15 & 1) != 0)
    {
      *v15 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v17 = a5[8];
      if (*(v17 + v10) == 1)
      {
        v18 = *(a5 + v12 - 20);
        if (((0xE4FE7F3uLL >> (*(a5 + v12) & 0x1F)) & 1) == 0 && v18 + 3600 > a1)
        {
          *v15 = 0;
LABEL_12:
          v19 = 2;
          goto LABEL_17;
        }

        if (v18 + 100 < a1)
        {
          *(a5[3] + v10) = 0;
          *(v17 + v10) = 0;
          *(a4 + v10) = -1;
          v15 = (*a5 + v10);
        }
      }

      *v15 = 1;
    }

    v19 = 1;
LABEL_17:
    *(a5[1] + v9) = v19;
    v20 = *v13;
    *(v11 + 3) = v13[1];
    *(v11 + 1) = v20;
    v21 = v13[2];
    v22 = v13[3];
    v23 = v13[4];
    *(v11 + 11) = v13[5];
    *(v11 + 9) = v23;
    *(v11 + 7) = v22;
    *(v11 + 5) = v21;
    *v11 = a1;
    *(a5[2] + v10) = 1;
    *(a5[6] + v10) = 1;
    *(v11 + 26) = 0;
    *(a5[11] + v10) = 0;
    *(a3 + v10) = 0;
    if (a1 >= 1)
    {
      *(a5[9] + v10) = 1;
      Core_Save_GPS_Eph((v10 + 1), 0, v11);
    }

LABEL_19:
    ++v10;
    v11 = (v11 + 108);
    v9 += 20;
    v12 += 44;
    v8 += 96;
  }

  while (v10 != 32);
  v24 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t DD_Check_New_GPS_Eph(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x29EDCA608];
  v3 = *(*(a3 + 48) + a1);
  v4 = a3 + 108 * a1;
  v5 = *(v4 + 160);
  v17 = *(v4 + 144);
  v18 = v5;
  v6 = *(v4 + 192);
  v19 = *(v4 + 176);
  v20 = v6;
  v7 = *(v4 + 128);
  v15 = *(v4 + 112);
  v16 = v7;
  if (v3 == 1 && (v8 = a2 + 96 * a1, ((*(v8 + 20) ^ DWORD1(v16)) & 0xFF0000) == 0))
  {
    v11 = 0;
    v12 = *(v4 + 208);
    v13 = 0uLL;
    do
    {
      v13 = vsubq_s32(v13, vmvnq_s8(vceqq_s32(*(&v15 + v11), *(v8 + v11))));
      v11 += 16;
    }

    while (v11 != 96);
    if (vaddvq_s32(v13))
    {
      v14 = v12 == 0xFFFFFF;
    }

    else
    {
      v14 = 0;
    }

    result = !v14;
  }

  else
  {
    result = 1;
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DD_Submit_WeekNum(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = *MEMORY[0x29EDCA608];
  if (*(*(a3 + 48) + (a1 - 1)) == 1)
  {
    v8 = DD_Check_New_GPS_Eph((a1 - 1), a4, a3);
  }

  else
  {
    v8 = 0;
  }

  if ((*(a5 + 5) & 1) == 0)
  {
    EvLog_v("Week Num initialised to %d from SV%d");
LABEL_13:
    *(a5 + 16) = a2;
    v10 = 1;
    *(a5 + 5) = 1;
    *(a5 + 48) = -1;
    *(a5 + 52) = -1;
    *(a5 + 54) = 0;
    *(a5 + 58) = 0;
    goto LABEL_27;
  }

  v9 = *(a5 + 16);
  if ((v9 == a2) | v8 & 1)
  {
    v10 = 0;
    if (v9 != a2 && ((v8 ^ 1) & 1) == 0)
    {
      v11 = 0;
      v12 = (a5 + 54);
      while (*(v12 - 3) != a2)
      {
        ++v11;
        ++v12;
        if (v11 == 3)
        {
          goto LABEL_16;
        }
      }

      if (v11 >= 3)
      {
LABEL_16:
        v13 = 0;
        v14 = (a5 + 48);
        while (*v14 != -1)
        {
          --v13;
          ++v14;
          if (v13 == -3)
          {
            v15 = 3;
            goto LABEL_25;
          }
        }

        v16 = -v13;
        if (v16 < 3)
        {
          v10 = 0;
          *v14 = a2;
          v14[3] = 1;
          goto LABEL_27;
        }

        v15 = v16;
LABEL_25:
        *(a5 + 52) = -1;
        *(a5 + 48) = -1;
        *(a5 + 54) = 0;
        *(a5 + 58) = 0;
        EvLog_v("GPS DD_Submit_WeekNum: WeekNum Candidate overflow, %d >= %d", v15, 3);
        goto LABEL_26;
      }

      v17 = ++*v12;
      if (v17 < 3)
      {
        goto LABEL_26;
      }

      EvLog_v("Week Num Candidate %d accepted based on %d observations");
      goto LABEL_13;
    }
  }

  else
  {
    EvCrt_v("DD_Submit_WeekNum:  Week Num Candidate %d found on SV%d which fails bit validation check", a2, a1);
LABEL_26:
    v10 = 0;
  }

LABEL_27:
  EvLog_v("Week Num Submit %d %d SV %d", v10, a2, a1);
  v18 = *MEMORY[0x29EDCA608];
  return v10;
}

{
  v20 = *MEMORY[0x29EDCA608];
  if (*(*(a3 + 8552) + (a1 + 63)) == 1)
  {
    v8 = DD_Check_New_QZSS_Eph((a1 + 63), a4, a3);
  }

  else
  {
    v8 = 0;
  }

  if ((*(a5 + 5) & 1) == 0)
  {
    EvLog_v("Week Num initialised to %d from SV%d");
LABEL_13:
    *(a5 + 16) = a2;
    v10 = 1;
    *(a5 + 5) = 1;
    *(a5 + 48) = -1;
    *(a5 + 52) = -1;
    *(a5 + 54) = 0;
    *(a5 + 58) = 0;
    goto LABEL_27;
  }

  v9 = *(a5 + 16);
  if ((v9 == a2) | v8 & 1)
  {
    v10 = 0;
    if (v9 != a2 && ((v8 ^ 1) & 1) == 0)
    {
      v11 = 0;
      v12 = (a5 + 54);
      while (*(v12 - 3) != a2)
      {
        ++v11;
        ++v12;
        if (v11 == 3)
        {
          goto LABEL_16;
        }
      }

      if (v11 >= 3)
      {
LABEL_16:
        v13 = 0;
        v14 = (a5 + 48);
        while (*v14 != -1)
        {
          --v13;
          ++v14;
          if (v13 == -3)
          {
            v15 = 3;
            goto LABEL_25;
          }
        }

        v16 = -v13;
        if (v16 < 3)
        {
          v10 = 0;
          *v14 = a2;
          v14[3] = 1;
          goto LABEL_27;
        }

        v15 = v16;
LABEL_25:
        *(a5 + 52) = -1;
        *(a5 + 48) = -1;
        *(a5 + 54) = 0;
        *(a5 + 58) = 0;
        EvLog_v("QZSS DD_Submit_WeekNum: WeekNum Candidate overflow, %d >= %d", v15, 3);
        goto LABEL_26;
      }

      v17 = ++*v12;
      if (v17 < 3)
      {
        goto LABEL_26;
      }

      EvLog_v("Week Num Candidate %d accepted based on %d observations");
      goto LABEL_13;
    }
  }

  else
  {
    EvCrt_v("DD_Submit_WeekNum:  Week Num Candidate %d found on SV%d which fails bit validation check", a2, a1);
LABEL_26:
    v10 = 0;
  }

LABEL_27:
  EvLog_v("Week Num Submit %d %d SV %d", v10, a2, a1);
  v18 = *MEMORY[0x29EDCA608];
  return v10;
}

void Comp_Track8(long double *a1)
{
  v2 = *MEMORY[0x29EDCA608];
  if (fabs(*a1) > 0.0005 || fabs(a1[1]) > 0.0005)
  {
    atan2(a1[1], *a1);
  }

  v1 = *MEMORY[0x29EDCA608];
}

uint64_t ds_Config(char **a1, uint64_t a2, uint64_t a3, double *a4)
{
  v145 = *MEMORY[0x29EDCA608];
  v8 = *a1;
  v9 = 83;
  v10 = 1u;
  do
  {
    *a1 = v8 + 1;
    *v8 = v9;
    v8 = *a1;
    if (*a1 >= a1[3])
    {
      v8 = a1[2];
      *a1 = v8;
    }

    v9 = aSoftwareConfig[v10++];
  }

  while (v10 != 32);
  *a1 = v8 + 1;
  *v8 = 10;
  v11 = *a1;
  if (*a1 >= a1[3])
  {
    v11 = a1[2];
  }

  v12 = 83;
  v13 = 1u;
  do
  {
    *a1 = v11 + 1;
    *v11 = v12;
    v11 = *a1;
    if (*a1 >= a1[3])
    {
      v11 = a1[2];
      *a1 = v11;
    }

    v12 = aSystemStatus[v13++];
  }

  while (v13 != 16);
  v14 = 32;
  v15 = 1u;
  do
  {
    *a1 = v11 + 1;
    *v11 = v14;
    v11 = *a1;
    if (*a1 >= a1[3])
    {
      v11 = a1[2];
      *a1 = v11;
    }

    v14 = aFixInt[v15++];
  }

  while (v15 != 10);
  sprintf_4f(a1, *(a2 + 948), 4);
  v16 = 0;
  v17 = *a1;
  v18 = 32;
  do
  {
    *a1 = v17 + 1;
    *v17 = v18;
    v17 = *a1;
    if (*a1 >= a1[3])
    {
      v17 = a1[2];
      *a1 = v17;
    }

    v18 = aRunTimeout[++v16];
  }

  while (v16 != 16);
  sprintf_4f(a1, *(a2 + 956), 4);
  v19 = 0;
  v20 = *a1;
  v21 = 32;
  do
  {
    *a1 = v20 + 1;
    *v20 = v21;
    v20 = *a1;
    if (*a1 >= a1[3])
    {
      v20 = a1[2];
      *a1 = v20;
    }

    v21 = aBirthGpsWn[++v19];
  }

  while (v19 != 16);
  sprintf_5d(a1, *(a2 + 1028));
  v22 = *a1;
  v23 = 32;
  v24 = 1u;
  do
  {
    *a1 = v22 + 1;
    *v22 = v23;
    v22 = *a1;
    if (*a1 >= a1[3])
    {
      v22 = a1[2];
      *a1 = v22;
    }

    v23 = aAccMasks[v24++];
  }

  while (v24 != 14);
  sprintf_ACC(a1, *(a2 + 960));
  sprintf_ACC(a1, *(a2 + 976));
  sprintf_ACC(a1, *(a2 + 968));
  sprintf_ACC(a1, *(a2 + 984));
  v25 = (*a1)++;
  *v25 = 10;
  v26 = *a1;
  if (*a1 >= a1[3])
  {
    v26 = a1[2];
  }

  v27 = 32;
  v28 = 1u;
  do
  {
    *a1 = v26 + 1;
    *v26 = v27;
    v26 = *a1;
    if (*a1 >= a1[3])
    {
      v26 = a1[2];
      *a1 = v26;
    }

    v27 = aNomclkdriftNsS[v28++];
  }

  while (v28 != 36);
  v29 = *(a2 + 992) * 1000000000.0;
  v30 = -0.5;
  if (v29 > 0.0)
  {
    v30 = 0.5;
  }

  v31 = v29 + v30;
  if (v31 <= 2147483650.0)
  {
    if (v31 >= -2147483650.0)
    {
      v32 = v31;
    }

    else
    {
      v32 = 0x80000000;
    }
  }

  else
  {
    v32 = 0x7FFFFFFF;
  }

  sprintf_6d(a1, v32);
  v33 = *a1;
  v34 = 32;
  v35 = 1u;
  do
  {
    *a1 = v33 + 1;
    *v33 = v34;
    v33 = *a1;
    if (*a1 >= a1[3])
    {
      v33 = a1[2];
      *a1 = v33;
    }

    v34 = aNomclkdriftdev[v35++];
  }

  while (v35 != 25);
  v36 = *(a2 + 1000) * 1000000000.0;
  v37 = -0.5;
  if (v36 > 0.0)
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

  sprintf_6d(a1, v39);
  v40 = *a1;
  v41 = 32;
  v42 = 1u;
  do
  {
    *a1 = v40 + 1;
    *v40 = v41;
    v40 = *a1;
    if (*a1 >= a1[3])
    {
      v40 = a1[2];
      *a1 = v40;
    }

    v41 = aDynamics[v42++];
  }

  while (v42 != 13);
  sprintf_2d(a1, *(a2 + 52));
  v43 = *a1;
  v44 = 32;
  v45 = 1u;
  do
  {
    *a1 = v43 + 1;
    *v43 = v44;
    v43 = *a1;
    if (*a1 >= a1[3])
    {
      v43 = a1[2];
      *a1 = v43;
    }

    v44 = aMpathEnv[v45++];
  }

  while (v45 != 14);
  sprintf_2d(a1, *(a2 + 65));
  v46 = (*a1)++;
  *v46 = 10;
  v47 = *a1;
  if (*a1 >= a1[3])
  {
    v47 = a1[2];
  }

  v48 = 80;
  v49 = 1u;
  do
  {
    *a1 = v47 + 1;
    *v47 = v48;
    v47 = *a1;
    if (*a1 >= a1[3])
    {
      v47 = a1[2];
      *a1 = v47;
    }

    v48 = aProcessNoiseBo[v49++];
  }

  while (v49 != 27);
  sprintf_sgR8(a1, a4[4]);
  v50 = *a1;
  v51 = 32;
  v52 = 1u;
  do
  {
    *a1 = v50 + 1;
    *v50 = v51;
    v50 = *a1;
    if (*a1 >= a1[3])
    {
      v50 = a1[2];
      *a1 = v50;
    }

    v51 = aClkGSens[v52++];
  }

  while (v52 != 14);
  sprintf_sgR8(a1, a4[5]);
  v53 = *a1;
  v54 = 32;
  v55 = 1u;
  do
  {
    *a1 = v53 + 1;
    *v53 = v54;
    v53 = *a1;
    if (*a1 >= a1[3])
    {
      v53 = a1[2];
      *a1 = v53;
    }

    v54 = aClkPhase[v55++];
  }

  while (v55 != 14);
  sprintf_sgR8(a1, a4[7]);
  v56 = *a1;
  v57 = 32;
  v58 = 1u;
  do
  {
    *a1 = v56 + 1;
    *v56 = v57;
    v56 = *a1;
    if (*a1 >= a1[3])
    {
      v56 = a1[2];
      *a1 = v56;
    }

    v57 = aClkFreq[v58++];
  }

  while (v58 != 14);
  sprintf_sgR8(a1, a4[8]);
  v59 = (*a1)++;
  *v59 = 10;
  v60 = *a1;
  if (*a1 >= a1[3])
  {
    v60 = a1[2];
  }

  v61 = 32;
  v62 = 1u;
  do
  {
    *a1 = v60 + 1;
    *v60 = v61;
    v60 = *a1;
    if (*a1 >= a1[3])
    {
      v60 = a1[2];
      *a1 = v60;
    }

    v61 = aHorzPos[v62++];
  }

  while (v62 != 27);
  sprintf_sgR8(a1, a4[9]);
  v63 = *a1;
  v64 = 32;
  v65 = 1u;
  do
  {
    *a1 = v63 + 1;
    *v63 = v64;
    v63 = *a1;
    if (*a1 >= a1[3])
    {
      v63 = a1[2];
      *a1 = v63;
    }

    v64 = aVertPos[v65++];
  }

  while (v65 != 14);
  sprintf_sgR8(a1, a4[10]);
  v66 = *a1;
  v67 = 32;
  v68 = 1u;
  do
  {
    *a1 = v66 + 1;
    *v66 = v67;
    v66 = *a1;
    if (*a1 >= a1[3])
    {
      v66 = a1[2];
      *a1 = v66;
    }

    v67 = aHorzAcc[v68++];
  }

  while (v68 != 14);
  sprintf_sgR8(a1, a4[13]);
  v69 = *a1;
  v70 = 32;
  v71 = 1u;
  do
  {
    *a1 = v69 + 1;
    *v69 = v70;
    v69 = *a1;
    if (*a1 >= a1[3])
    {
      v69 = a1[2];
      *a1 = v69;
    }

    v70 = aVertAcc[v71++];
  }

  while (v71 != 14);
  sprintf_sgR8(a1, a4[14]);
  v72 = (*a1)++;
  *v72 = 10;
  v73 = *a1;
  if (*a1 >= a1[3])
  {
    v73 = a1[2];
  }

  v74 = 82;
  v75 = 1u;
  do
  {
    *a1 = v73 + 1;
    *v73 = v74;
    v73 = *a1;
    if (*a1 >= a1[3])
    {
      v73 = a1[2];
      *a1 = v73;
    }

    v74 = aReferencePosit[v75++];
  }

  while (v75 != 24);
  v142 = a3;
  v76 = 0;
  v77 = a4 + 3379;
  v78 = 1;
  while (1)
  {
    v79 = v77[v76] * 57.2957795;
    v80 = -v79;
    if (v79 >= 0.0)
    {
      v80 = v77[v76] * 57.2957795;
    }

    v81 = v80;
    v82 = (v80 - v80) * 60.0;
    v83 = v82;
    v84 = (v82 - v82) * 60.0;
    sprintf_3d(a1, v81);
    sprintf_3d(a1, v83);
    v85 = v84 * 100000.0 <= 0.0 ? -0.5 : 0.5;
    v86 = v84 * 100000.0 + v85;
    if (v86 <= 2147483650.0)
    {
      v87 = v86 >= -2147483650.0 ? v86 : 0x80000000;
    }

    else
    {
      v87 = 0x7FFFFFFF;
    }

    sprintf_8f(a1, v87, 6);
    v88 = v77[v76];
    if ((v78 & 1) == 0)
    {
      break;
    }

    v78 = 0;
    if (v88 >= 0.0)
    {
      v89 = " N ";
    }

    else
    {
      v89 = " S ";
    }

    v90 = *v89;
    v76 = 1;
    if (*v89)
    {
      v91 = *a1;
      v92 = (v89 + 1);
      do
      {
        *a1 = v91 + 1;
        *v91 = v90;
        v91 = *a1;
        if (*a1 >= a1[3])
        {
          v91 = a1[2];
          *a1 = v91;
        }

        v93 = *v92++;
        v90 = v93;
      }

      while (v93);
      v78 = 0;
      v76 = 1;
    }
  }

  v94 = " E ";
  if (v88 < 0.0)
  {
    v94 = " W ";
  }

  v95 = *v94;
  if (*v94)
  {
    v96 = *a1;
    v97 = (v94 + 1);
    do
    {
      *a1 = v96 + 1;
      *v96 = v95;
      v96 = *a1;
      if (*a1 >= a1[3])
      {
        v96 = a1[2];
        *a1 = v96;
      }

      v98 = *v97++;
      v95 = v98;
    }

    while (v98);
  }

  sprintf_sgR8(a1, a4[3381]);
  v99 = (*a1)++;
  *v99 = 10;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  GNSS_Nav_Debug_Flush_Check(a1);
  v100 = *a1;
  v101 = 71;
  v102 = 1u;
  do
  {
    *a1 = v100 + 1;
    *v100 = v101;
    v100 = *a1;
    if (*a1 >= a1[3])
    {
      v100 = a1[2];
      *a1 = v100;
    }

    v101 = aGlonassL1ofInt[v102++];
  }

  while (v102 != 35);
  v103 = 9 * *(a2 + 1022);
  v104 = ICB_Model_Name[v103];
  if (v104)
  {
    v105 = &ICB_Model_Name[v103 + 1];
    do
    {
      *a1 = v100 + 1;
      *v100 = v104;
      v100 = *a1;
      if (*a1 >= a1[3])
      {
        v100 = a1[2];
        *a1 = v100;
      }

      v106 = *v105++;
      v104 = v106;
    }

    while (v106);
  }

  v107 = 32;
  v108 = 1u;
  do
  {
    *a1 = v100 + 1;
    *v100 = v107;
    v100 = *a1;
    if (*a1 >= a1[3])
    {
      v100 = a1[2];
      *a1 = v100;
    }

    v107 = asc_2997B516F[v108++];
  }

  while (v108 != 4);
  v144 = 55;
  LOBYTE(v109) = 45;
  v110 = 1;
  do
  {
    *a1 = v100 + 1;
    *v100 = v109;
    v100 = *a1;
    if (*a1 >= a1[3])
    {
      v100 = a1[2];
      *a1 = v100;
    }

    v109 = *(&v143 + v110++);
  }

  while (v109);
  v111 = 46;
  v112 = 1u;
  do
  {
    *a1 = v100 + 1;
    *v100 = v111;
    v100 = *a1;
    if (*a1 >= a1[3])
    {
      v100 = a1[2];
      *a1 = v100;
    }

    v111 = asc_2997B5173[v112++];
  }

  while (v112 != 4);
  LOBYTE(v144) = 0;
  LOBYTE(v113) = 54;
  v114 = 1;
  do
  {
    *a1 = v100 + 1;
    *v100 = v113;
    v100 = *a1;
    if (*a1 >= a1[3])
    {
      v100 = a1[2];
      *a1 = v100;
    }

    v113 = *(&v143 + v114++);
  }

  while (v113);
  *a1 = v100 + 1;
  *v100 = 93;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  for (i = 0; i != 112; i += 8)
  {
    v116 = *(a2 + 1152 + i) * 100.0;
    if (v116 <= 2147483650.0)
    {
      if (v116 >= -2147483650.0)
      {
        v117 = v116;
      }

      else
      {
        v117 = 0x80000000;
      }
    }

    else
    {
      v117 = 0x7FFFFFFF;
    }

    sprintf_9f(a1, v117, 3);
  }

  v118 = (*a1)++;
  *v118 = 10;
  v119 = *a1;
  if (*a1 >= a1[3])
  {
    v119 = a1[2];
  }

  v120 = 66;
  v121 = 1u;
  do
  {
    *a1 = v119 + 1;
    *v119 = v120;
    v119 = *a1;
    if (*a1 >= a1[3])
    {
      v119 = a1[2];
      *a1 = v119;
    }

    v120 = aBeidouB1InterC[v121++];
  }

  while (v121 != 32);
  v122 = 9 * *(a2 + 1022);
  v123 = ICB_Model_Name[v122];
  if (v123)
  {
    v124 = &ICB_Model_Name[v122 + 1];
    do
    {
      *a1 = v119 + 1;
      *v119 = v123;
      v119 = *a1;
      if (*a1 >= a1[3])
      {
        v119 = a1[2];
        *a1 = v119;
      }

      v125 = *v124++;
      v123 = v125;
    }

    while (v125);
  }

  v126 = *(a2 + 1264) * 100.0;
  if (v126 <= 2147483650.0)
  {
    if (v126 >= -2147483650.0)
    {
      v127 = v126;
    }

    else
    {
      v127 = 0x80000000;
    }
  }

  else
  {
    v127 = 0x7FFFFFFF;
  }

  sprintf_9f(a1, v127, 3);
  v128 = (*a1)++;
  *v128 = 10;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  GNSS_Nav_Debug_Flush_Check(a1);
  v129 = *a1;
  v130 = 73;
  v131 = 1u;
  do
  {
    *a1 = v129 + 1;
    *v129 = v130;
    v129 = *a1;
    if (*a1 >= a1[3])
    {
      v129 = a1[2];
      *a1 = v129;
    }

    v130 = aInitialData[v131++];
  }

  while (v131 != 16);
  for (j = 3; j > 1; --j)
  {
    *a1 = v129 + 1;
    *v129 = 32;
    v129 = *a1;
    if (*a1 >= a1[3])
    {
      v129 = a1[2];
      *a1 = v129;
    }
  }

  sprintf_6d(a1, *(a2 + 1288));
  sprintf_sgR8(a1, *(a2 + 1304));
  sprintf_sgR8(a1, *(a2 + 1296));
  v133 = *a1;
  for (k = 3; k > 1; --k)
  {
    *a1 = v133 + 1;
    *v133 = 32;
    v133 = *a1;
    if (*a1 >= a1[3])
    {
      v133 = a1[2];
      *a1 = v133;
    }
  }

  v135 = &g_TOW_Stat_As_String[10 * *(v142 + 88) + 1];
  v136 = 32;
  do
  {
    *a1 = v133 + 1;
    *v133 = v136;
    v133 = *a1;
    if (*a1 >= a1[3])
    {
      v133 = a1[2];
      *a1 = v133;
    }

    v137 = *v135++;
    v136 = v137;
  }

  while (v137);
  sprintf_10u(a1, *(v142 + 100));
  sprintf_6d(a1, *(v142 + 92));
  sprintf_10d(a1, *(v142 + 96));
  v138 = (*a1)++;
  *v138 = 10;
  v139 = *a1;
  if (*a1 >= a1[3])
  {
    v139 = a1[2];
  }

  *a1 = v139 + 1;
  *v139 = 10;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  v140 = *MEMORY[0x29EDCA608];

  return GNSS_Nav_Debug_Flush_Check(a1);
}

uint64_t asn1PD_SupportedWcdmaInfo(uint64_t a1, _BYTE *a2)
{
  v12 = *MEMORY[0x29EDCA608];
  BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
LABEL_5:
    SuplAsn1Logger::TraceError(v8, v6, v7);
    goto LABEL_6;
  }

  v9 = BitFromBuffer;
  *a2 = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_5;
  }

  if (!v9)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v8 = Asn1Coder::SkipSequenceExtension(a1);
  v5 = v8;
  if (v8)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_5;
  }

LABEL_6:
  v10 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t asn1PD_SupportedWLANApsChannel11a(uint64_t a1, _BYTE *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  *a2 = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
LABEL_33:
    SuplAsn1Logger::TraceError(v7, v5, v6);
    goto LABEL_34;
  }

  a2[1] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_33;
  }

  a2[2] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_33;
  }

  a2[3] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_33;
  }

  a2[4] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_33;
  }

  a2[5] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_33;
  }

  a2[6] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_33;
  }

  a2[7] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_33;
  }

  a2[8] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_33;
  }

  a2[9] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_33;
  }

  a2[10] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_33;
  }

  a2[11] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_33;
  }

  a2[12] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_33;
  }

  a2[13] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_33;
  }

  a2[14] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_33;
  }

  a2[15] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_33;
  }

LABEL_34:
  v8 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t asn1PD_SupportedWLANApsChannel11bg(uint64_t a1, _BYTE *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  *a2 = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
LABEL_29:
    SuplAsn1Logger::TraceError(v7, v5, v6);
    goto LABEL_30;
  }

  a2[1] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_29;
  }

  a2[2] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_29;
  }

  a2[3] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_29;
  }

  a2[4] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_29;
  }

  a2[5] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_29;
  }

  a2[6] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_29;
  }

  a2[7] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_29;
  }

  a2[8] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_29;
  }

  a2[9] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_29;
  }

  a2[10] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_29;
  }

  a2[11] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_29;
  }

  a2[12] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_29;
  }

  a2[13] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_29;
  }

LABEL_30:
  v8 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t asn1PD_SupportedWLANApsList(uint64_t a1, uint64_t a2)
{
  v48 = *MEMORY[0x29EDCA608];
  BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  v37 = 0;
  if (v5)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    v8 = v5;
LABEL_7:
    SuplAsn1Logger::TraceError(v8, v6, v7);
    goto LABEL_8;
  }

  v9 = BitFromBuffer;
  *a2 = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    v8 = *(a1 + 16);
    goto LABEL_7;
  }

  *(a2 + 1) = Asn1Coder::GetBitFromBuffer(a1);
  LOBYTE(v5) = *(a1 + 16);
  if (v5)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    v8 = *(a1 + 16);
    goto LABEL_7;
  }

  v5 = Asn1Coder::DecodeInteger(a1, 1, 0x80u, &v37);
  v36 = v9;
  v12 = (a2 + 8);
  std::vector<ASN1T_SupportedWLANApData>::clear[abi:ne200100]((a2 + 8));
  if (!v5 && v37)
  {
    v13 = 0;
    while (1)
    {
      v43 = 0;
      v45 = 0;
      v46 = 0;
      __p = 0;
      v47 = -1;
      v14 = Asn1Coder::GetBitFromBuffer(a1);
      v15 = *(a1 + 16);
      if (*(a1 + 16) || (v16 = v14, v43 = 48, Asn1Coder::GetBitStringFromBuffer(a1, 0x30u, &__p, 0), v15 = *(a1 + 16), *(a1 + 16)))
      {
        SuplAsn1Logger::TraceError(*(a1 + 16), *(a1 + 8), *(a1 + 12));
        goto LABEL_28;
      }

      LOBYTE(v38) = 0;
      v17 = Asn1Coder::GetBitFromBuffer(a1);
      v15 = *(a1 + 16);
      if (*(a1 + 16))
      {
        break;
      }

      if (v17)
      {
        v18 = Asn1Coder::DecodeEnumerationExtension(a1, &v38);
      }

      else
      {
        v18 = Asn1Coder::DecodeInteger(a1, 0, 2u, &v38);
      }

      v15 = v18;
      if (v18)
      {
        SuplAsn1Logger::TraceError(v18, *(a1 + 8), *(a1 + 12));
        goto LABEL_27;
      }

      if (v38 >= 3u)
      {
        v15 = 4;
        *(a1 + 16) = 4;
        SuplAsn1Logger::TraceError(4u, *(a1 + 8), *(a1 + 12));
        goto LABEL_27;
      }

      v47 = v38;
      if (v16)
      {
        v19 = Asn1Coder::SkipSequenceExtension(a1);
        v15 = v19;
        if (v19)
        {
          SuplAsn1Logger::TraceError(v19, *(a1 + 8), *(a1 + 12));
        }
      }

      else
      {
        v15 = 0;
      }

LABEL_28:
      v21 = *(a2 + 16);
      v20 = *(a2 + 24);
      if (v21 >= v20)
      {
        v23 = 0xCCCCCCCCCCCCCCCDLL * ((v21 - *v12) >> 3);
        v24 = v23 + 1;
        if (v23 + 1 > 0x666666666666666)
        {
          std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
        }

        v25 = 0xCCCCCCCCCCCCCCCDLL * ((v20 - *v12) >> 3);
        if (2 * v25 > v24)
        {
          v24 = 2 * v25;
        }

        if (v25 >= 0x333333333333333)
        {
          v26 = 0x666666666666666;
        }

        else
        {
          v26 = v24;
        }

        v42 = a2 + 8;
        if (v26)
        {
          if (v26 <= 0x666666666666666)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v27 = 40 * v23;
        v38 = 0;
        v39 = v27;
        v40 = v27;
        v41 = 0;
        *v27 = v43;
        *(v27 + 16) = 0;
        *(v27 + 24) = 0;
        *(v27 + 8) = 0;
        std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v27 + 8, __p, v45, v45 - __p);
        *(v27 + 32) = v47;
        v22 = v40 + 40;
        v40 += 40;
        v29 = *(a2 + 8);
        v28 = *(a2 + 16);
        v30 = v39 + v29 - v28;
        if (v29 != v28)
        {
          v31 = *(a2 + 8);
          v32 = v39 + v29 - v28;
          do
          {
            *v32 = *v31;
            *(v32 + 16) = 0;
            *(v32 + 24) = 0;
            *(v32 + 8) = 0;
            *(v32 + 8) = *(v31 + 8);
            *(v32 + 24) = *(v31 + 24);
            *(v31 + 8) = 0;
            *(v31 + 16) = 0;
            *(v31 + 24) = 0;
            *(v32 + 32) = *(v31 + 32);
            v31 += 40;
            v32 += 40;
          }

          while (v31 != v28);
          do
          {
            v33 = *(v29 + 8);
            if (v33)
            {
              *(v29 + 16) = v33;
              operator delete(v33);
            }

            v29 += 40;
          }

          while (v29 != v28);
          v29 = *v12;
          v22 = v40;
        }

        *(a2 + 8) = v30;
        *(a2 + 16) = v22;
        v34 = *(a2 + 24);
        *(a2 + 24) = v41;
        v40 = v29;
        v41 = v34;
        v38 = v29;
        v39 = v29;
        std::__split_buffer<ASN1T_SupportedWLANApData>::~__split_buffer(&v38);
      }

      else
      {
        *v21 = v43;
        *(v21 + 16) = 0;
        *(v21 + 24) = 0;
        *(v21 + 8) = 0;
        std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v21 + 8, __p, v45, v45 - __p);
        *(v21 + 32) = v47;
        v22 = v21 + 40;
        *(a2 + 16) = v21 + 40;
      }

      *(a2 + 16) = v22;
      if (v15)
      {
        SuplAsn1Logger::TraceError(v15, *(a1 + 8), *(a1 + 12));
        LOBYTE(v5) = v15;
      }

      if (__p)
      {
        v45 = __p;
        operator delete(__p);
      }

      if (v15)
      {
        goto LABEL_8;
      }

      if (++v13 >= v37)
      {
        goto LABEL_57;
      }
    }

    SuplAsn1Logger::TraceError(*(a1 + 16), *(a1 + 8), *(a1 + 12));
LABEL_27:
    SuplAsn1Logger::TraceError(v15, *(a1 + 8), *(a1 + 12));
    goto LABEL_28;
  }

  if (v5)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    v8 = v5;
    goto LABEL_7;
  }

LABEL_57:
  if (*a2)
  {
    v35 = asn1PD_SupportedWLANApsChannel11a(a1, (a2 + 32));
    LOBYTE(v5) = v35;
    if (v35)
    {
      goto LABEL_64;
    }
  }

  if (*(a2 + 1))
  {
    v35 = asn1PD_SupportedWLANApsChannel11bg(a1, (a2 + 48));
    LOBYTE(v5) = v35;
    if (v35)
    {
      goto LABEL_64;
    }
  }

  if (!v36)
  {
    LOBYTE(v5) = 0;
    goto LABEL_8;
  }

  v35 = Asn1Coder::SkipSequenceExtension(a1);
  LOBYTE(v5) = v35;
  if (v35)
  {
LABEL_64:
    SuplAsn1Logger::TraceError(v35, *(a1 + 8), *(a1 + 12));
  }

LABEL_8:
  v10 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t asn1PD_SupportedWLANInfo(uint64_t a1, _BYTE *a2)
{
  v12 = *MEMORY[0x29EDCA608];
  BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
LABEL_27:
    SuplAsn1Logger::TraceError(v8, v6, v7);
    goto LABEL_28;
  }

  v9 = BitFromBuffer;
  *a2 = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_27;
  }

  a2[1] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_27;
  }

  a2[2] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_27;
  }

  a2[3] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_27;
  }

  a2[4] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_27;
  }

  a2[5] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_27;
  }

  a2[6] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_27;
  }

  a2[7] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_27;
  }

  a2[8] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_27;
  }

  a2[9] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_27;
  }

  a2[10] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_27;
  }

  a2[11] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_27;
  }

  if (!v9)
  {
    v5 = 0;
    goto LABEL_28;
  }

  v8 = Asn1Coder::SkipSequenceExtension(a1);
  v5 = v8;
  if (!v8)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_27;
  }

LABEL_28:
  v10 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t asn1PD_SupportedNetworkInformation(uint64_t a1, _BYTE *a2)
{
  v12 = *MEMORY[0x29EDCA608];
  BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
LABEL_11:
    SuplAsn1Logger::TraceError(v8, v6, v7);
    goto LABEL_12;
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

  a2[1] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_11;
  }

  a2[2] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_11;
  }

  a2[3] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_11;
  }

  if (*a2)
  {
    v8 = asn1PD_SupportedWLANInfo(a1, a2 + 4);
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_11;
    }
  }

  if (a2[1])
  {
    v8 = asn1PD_SupportedWLANApsList(a1, (a2 + 16));
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_11;
    }
  }

  a2[80] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_11;
  }

  a2[81] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_11;
  }

  if (a2[2])
  {
    v8 = asn1PD_SupportedWcdmaInfo(a1, a2 + 82);
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_11;
    }
  }

  a2[83] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_11;
  }

  a2[84] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_11;
  }

  a2[85] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_11;
  }

  a2[86] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_11;
  }

  a2[87] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_11;
  }

  a2[88] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_11;
  }

  a2[89] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_11;
  }

  a2[90] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_11;
  }

  a2[91] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_11;
  }

  if (v9)
  {
    Asn1Coder::SkipSequenceExtension(a1);
  }

  v5 = 0;
LABEL_12:
  v10 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t asn1PD_GNSSPosTechnology(uint64_t a1, _BYTE *a2)
{
  v12 = *MEMORY[0x29EDCA608];
  BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
LABEL_15:
    SuplAsn1Logger::TraceError(v8, v6, v7);
    goto LABEL_16;
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

  a2[1] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_15;
  }

  a2[2] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_15;
  }

  a2[3] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_15;
  }

  a2[4] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    SuplAsn1Logger::TraceError(*(a1 + 16), *(a1 + 8), *(a1 + 12));
LABEL_14:
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = v5;
    goto LABEL_15;
  }

  a2[5] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    goto LABEL_14;
  }

  if (!v9)
  {
    v5 = 0;
    goto LABEL_16;
  }

  v8 = Asn1Coder::SkipSequenceExtension(a1);
  v5 = v8;
  if (v8)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_15;
  }

LABEL_16:
  v10 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t asn1PE_MCC_MNC_Digit(uint64_t a1, unsigned __int8 a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = Asn1Coder::EncodeInteger(a1, 0, 9, a2);
  v4 = v3;
  if (v3)
  {
    SuplAsn1Logger::TraceError(v3, *(a1 + 8), *(a1 + 12));
  }

  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t asn1PE_CellGlobalIdEUTRA(uint64_t a1, unsigned __int8 *a2)
{
  v22 = *MEMORY[0x29EDCA608];
  Asn1Coder::AddBitToBuffer(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
LABEL_25:
    SuplAsn1Logger::TraceError(v7, v5, v6);
    goto LABEL_26;
  }

  Asn1Coder::AddBitToBuffer(a1, *a2);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v8 = *(a1 + 8);
    v9 = *(a1 + 12);
    v10 = *(a1 + 16);
LABEL_24:
    SuplAsn1Logger::TraceError(v10, v8, v9);
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = v4;
    goto LABEL_25;
  }

  if (*a2)
  {
    v11 = *(a2 + 1);
    v12 = *(a2 + 2);
    if (v12 - v11 != 3)
    {
      *(a1 + 16) = 4;
      SuplAsn1Logger::TraceError(4u, *(a1 + 8), *(a1 + 12));
      v4 = *(a1 + 16);
      if (*(a1 + 16))
      {
        v13 = *(a1 + 8);
        v14 = *(a1 + 12);
        LODWORD(v15) = *(a1 + 16);
LABEL_23:
        SuplAsn1Logger::TraceError(v15, v13, v14);
        v8 = *(a1 + 8);
        v9 = *(a1 + 12);
        v10 = v4;
        goto LABEL_24;
      }

      v11 = *(a2 + 1);
      v12 = *(a2 + 2);
    }

    if (v12 != v11)
    {
      v16 = 0;
      while (1)
      {
        v15 = asn1PE_MCC_MNC_Digit(a1, *(v11 + v16));
        if (v15)
        {
          break;
        }

        ++v16;
        v11 = *(a2 + 1);
        if (v16 >= *(a2 + 2) - v11)
        {
          goto LABEL_14;
        }
      }

      v4 = v15;
      v13 = *(a1 + 8);
      v14 = *(a1 + 12);
      goto LABEL_23;
    }
  }

LABEL_14:
  v15 = Asn1Coder::EncodeInteger(a1, 2, 3, *(a2 + 10) - *(a2 + 8));
  if (v15)
  {
    v4 = v15;
    v13 = *(a1 + 8);
    v14 = *(a1 + 12);
    goto LABEL_23;
  }

  v17 = *(a2 + 4);
  if (*(a2 + 5) != v17)
  {
    v18 = 0;
    while (1)
    {
      v15 = asn1PE_MCC_MNC_Digit(a1, *(v17 + v18));
      if (v15)
      {
        break;
      }

      ++v18;
      v17 = *(a2 + 4);
      if (v18 >= *(a2 + 5) - v17)
      {
        goto LABEL_20;
      }
    }

    v4 = v15;
    v13 = *(a1 + 8);
    v14 = *(a1 + 12);
    goto LABEL_23;
  }

LABEL_20:
  v19 = Asn1Coder::EncodeBitString(a1, 0, 0, 0x1Cu, a2 + 7, 1);
  v4 = v19;
  if (v19)
  {
    SuplAsn1Logger::TraceError(v19, *(a1 + 8), *(a1 + 12));
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = v4;
    goto LABEL_25;
  }

LABEL_26:
  v20 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t asn1PE_TrackingAreaCode(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = Asn1Coder::EncodeBitString(a1, 0, 0, 0x10u, a2, 1);
  v4 = v3;
  if (v3)
  {
    SuplAsn1Logger::TraceError(v3, *(a1 + 8), *(a1 + 12));
  }

  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t asn1PE_PhysCellId(uint64_t a1, unsigned __int16 a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = Asn1Coder::EncodeInteger(a1, 0, 503, a2);
  v4 = v3;
  if (v3)
  {
    SuplAsn1Logger::TraceError(v3, *(a1 + 8), *(a1 + 12));
  }

  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t asn1PE_RSRP_Range(uint64_t a1, unsigned __int8 a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = Asn1Coder::EncodeInteger(a1, 0, 97, a2);
  v4 = v3;
  if (v3)
  {
    SuplAsn1Logger::TraceError(v3, *(a1 + 8), *(a1 + 12));
  }

  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t asn1PE_RSRQ_Range(uint64_t a1, unsigned __int8 a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = Asn1Coder::EncodeInteger(a1, 0, 34, a2);
  v4 = v3;
  if (v3)
  {
    SuplAsn1Logger::TraceError(v3, *(a1 + 8), *(a1 + 12));
  }

  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t asn1PE_MeasResultListEUTRA(uint64_t a1, uint64_t *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = Asn1Coder::EncodeInteger(a1, 1, 8, -286331153 * ((a2[1] - *a2) >> 3));
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_31;
  }

  v8 = *a2;
  if (a2[1] == *a2)
  {
LABEL_18:
    v5 = 0;
    goto LABEL_32;
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    Asn1Coder::AddBitToBuffer(a1, *(v8 + v9));
    v5 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v18 = *(a1 + 8);
      v19 = *(a1 + 12);
      LODWORD(v11) = *(a1 + 16);
      goto LABEL_30;
    }

    v11 = asn1PE_PhysCellId(a1, *(v8 + v9 + 2));
    if (v11)
    {
      v5 = v11;
      v18 = *(a1 + 8);
      v19 = *(a1 + 12);
      goto LABEL_30;
    }

    if (*(v8 + v9))
    {
      v12 = asn1PE_CellGlobalIdEUTRA(a1, (v8 + v9 + 8));
      if (v12)
      {
        v5 = v12;
        v22 = *(a1 + 8);
        v23 = *(a1 + 12);
      }

      else
      {
        v12 = asn1PE_TrackingAreaCode(a1, (v8 + v9 + 88));
        if (!v12)
        {
          goto LABEL_10;
        }

        v5 = v12;
        v22 = *(a1 + 8);
        v23 = *(a1 + 12);
      }

      SuplAsn1Logger::TraceError(v12, v22, v23);
      v18 = *(a1 + 8);
      v19 = *(a1 + 12);
      LODWORD(v11) = v5;
      goto LABEL_30;
    }

LABEL_10:
    Asn1Coder::AddBitToBuffer(a1, 0);
    v5 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v20 = *(a1 + 8);
      v21 = *(a1 + 12);
      LODWORD(v15) = *(a1 + 16);
      goto LABEL_28;
    }

    v13 = v8 + v9;
    Asn1Coder::AddBitToBuffer(a1, *(v13 + 114) < 0x62u);
    v5 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v20 = *(a1 + 8);
      v21 = *(a1 + 12);
      LODWORD(v15) = *(a1 + 16);
      goto LABEL_28;
    }

    Asn1Coder::AddBitToBuffer(a1, *(v13 + 115) < 0x23u);
    v5 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v20 = *(a1 + 8);
      v21 = *(a1 + 12);
      LODWORD(v15) = *(a1 + 16);
      goto LABEL_28;
    }

    v14 = *(v13 + 114);
    if (v14 <= 0x61)
    {
      v15 = asn1PE_RSRP_Range(a1, v14);
      if (v15)
      {
        break;
      }
    }

    v16 = *(v13 + 115);
    if (v16 < 0x23)
    {
      v17 = asn1PE_RSRQ_Range(a1, v16);
      if (v17)
      {
        v5 = v17;
        goto LABEL_29;
      }
    }

    ++v10;
    v8 = *a2;
    v9 += 120;
    if (v10 >= 0xEEEEEEEEEEEEEEEFLL * ((a2[1] - *a2) >> 3))
    {
      goto LABEL_18;
    }
  }

  v5 = v15;
  v20 = *(a1 + 8);
  v21 = *(a1 + 12);
LABEL_28:
  SuplAsn1Logger::TraceError(v15, v20, v21);
LABEL_29:
  v18 = *(a1 + 8);
  v19 = *(a1 + 12);
  LODWORD(v11) = v5;
LABEL_30:
  SuplAsn1Logger::TraceError(v11, v18, v19);
  v6 = *(a1 + 8);
  v7 = *(a1 + 12);
  LODWORD(v4) = v5;
LABEL_31:
  SuplAsn1Logger::TraceError(v4, v6, v7);
LABEL_32:
  v24 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t asn1PE_LteCellInformation(uint64_t a1, unsigned __int8 *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  Asn1Coder::AddBitToBuffer(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
LABEL_17:
    SuplAsn1Logger::TraceError(v7, v5, v6);
    goto LABEL_18;
  }

  Asn1Coder::AddBitToBuffer(a1, *a2);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_17;
  }

  Asn1Coder::AddBitToBuffer(a1, a2[1]);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_17;
  }

  Asn1Coder::AddBitToBuffer(a1, a2[2]);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_17;
  }

  Asn1Coder::AddBitToBuffer(a1, a2[3]);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_17;
  }

  v7 = asn1PE_CellGlobalIdEUTRA(a1, a2 + 8);
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_17;
  }

  v7 = asn1PE_PhysCellId(a1, *(a2 + 44));
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_17;
  }

  v7 = asn1PE_TrackingAreaCode(a1, a2 + 12);
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_17;
  }

  if (*a2)
  {
    v7 = asn1PE_RSRP_Range(a1, a2[120]);
    if (v7)
    {
      v4 = v7;
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      goto LABEL_17;
    }
  }

  if (a2[1])
  {
    v7 = asn1PE_RSRQ_Range(a1, a2[121]);
    if (v7)
    {
      v4 = v7;
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      goto LABEL_17;
    }
  }

  if (a2[2])
  {
    v7 = Asn1Coder::EncodeInteger(a1, 0, 1282, *(a2 + 61));
    if (v7)
    {
      v4 = v7;
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      goto LABEL_17;
    }
  }

  if (!a2[3])
  {
    v4 = 0;
    goto LABEL_18;
  }

  v7 = asn1PE_MeasResultListEUTRA(a1, a2 + 16);
  v4 = v7;
  if (v7)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_17;
  }

LABEL_18:
  v8 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t asn1PE_CellInfo_VER2(uint64_t a1, uint64_t a2)
{
  v15[1] = *MEMORY[0x29EDCA608];
  v4 = Asn1Coder::EncodeChoiceExtension(a1, 0);
  v15[0] = 0;
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
LABEL_25:
    SuplAsn1Logger::TraceError(v4, v6, v7);
    goto LABEL_26;
  }

  v4 = Asn1Coder::EncodeOpenTypeFieldStart(a1, v15);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_25;
  }

  Asn1Coder::AddBitToBuffer(a1, 0);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v4) = *(a1 + 16);
    goto LABEL_25;
  }

  v4 = Asn1Coder::EncodeInteger(a1, 0, 5, **(a2 + 128) - 1);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_25;
  }

  v8 = *(a2 + 128);
  v9 = *v8;
  if (v9 <= 2)
  {
    if (v9 == 1)
    {
      v5 = 1;
      *(a1 + 16) = 1;
      v10 = *(a1 + 8);
      v11 = *(a1 + 12);
      v12 = 1;
      goto LABEL_23;
    }

    if (v9 == 2)
    {
      v5 = 1;
      *(a1 + 16) = 1;
      v10 = *(a1 + 8);
      v11 = *(a1 + 12);
      v12 = 1;
      goto LABEL_23;
    }

LABEL_22:
    v5 = 4;
    *(a1 + 16) = 4;
    v10 = *(a1 + 8);
    v11 = *(a1 + 12);
    v12 = 4;
    goto LABEL_23;
  }

  if (v9 != 3)
  {
    if (v9 == 4)
    {
      v5 = 1;
      *(a1 + 16) = 1;
      v10 = *(a1 + 8);
      v11 = *(a1 + 12);
      v12 = 1;
      goto LABEL_23;
    }

    if (v9 == 5)
    {
      v5 = 1;
      *(a1 + 16) = 1;
      v10 = *(a1 + 8);
      v11 = *(a1 + 12);
      v12 = 1;
LABEL_23:
      SuplAsn1Logger::TraceError(v12, v10, v11);
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v5 = asn1PE_LteCellInformation(a1, v8 + 8);
  if (v5)
  {
LABEL_24:
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v4) = v5;
    goto LABEL_25;
  }

  v4 = Asn1Coder::EncodeOpenTypeFieldEnd(a1, v15);
  v5 = v4;
  if (v4)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_25;
  }

LABEL_26:
  v13 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t std::__split_buffer<ASN1T_SupportedWLANApData>::~__split_buffer(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 40;
    v4 = *(v2 - 32);
    if (v4)
    {
      *(v2 - 24) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 40;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  v5 = *MEMORY[0x29EDCA608];
  return a1;
}

uint64_t gnssTest::GnssAdaptDeviceTest::Ga22_01TriggerProdIndReq(NSObject **this)
{
  v30 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "ADP", 68, "Ga22_01TriggerProdIndReq");
    LbsOsaTrace_WriteLog(0x18u, __str, v3, 5, 1);
  }

  v26 = 0;
  v27 = 0;
  v28 = 0;
  if (!gnssTest::ZxFactoryHandler::Ga23_34BuildZxProdIndProdMsg(this + 140, &v26) || v27 == v26)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 68, "Ga22_01TriggerProdIndReq");
      LbsOsaTrace_WriteLog(0x18u, __str, v15, 5, 1);
    }

    v13 = 8;
  }

  else
  {
    memset(&v25, 0, sizeof(v25));
    v23 = 0;
    v24 = 0;
    __p = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v26, v27, v27 - v26);
    gnssTest::ZxHandler::Ga23_00GetZxBufAsStr(this + 140, &__p, &v25);
    if (__p)
    {
      v23 = __p;
      operator delete(__p);
    }

    gnssTest::GnssAdaptDeviceTest::Ga24_01SendDataToChip(this, (v27 - v26), v26);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v5 = &v25;
      if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v5 = v25.__r_.__value_.__r.__words[0];
      }

      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Size,%u,ZxReq,%s\n", v4, "ADP", 68, "Ga22_01TriggerProdIndReq", v27 - v26, v5);
      LbsOsaTrace_WriteLog(0x18u, __str, v6, 5, 1);
    }

    if (gnssOsa_SemWaitTimeOut(this[10], 0xC8u))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v7 = mach_continuous_time();
        v8 = *&g_MacClockTicksToMsRelation;
        v9 = __error();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v8 * v7), "ADP", 69, "Ga22_01TriggerProdIndReq", 1543, *v9);
        LbsOsaTrace_WriteLog(0x18u, __str, v10, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v11 = mach_continuous_time();
        v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 68, "Ga22_01TriggerProdIndReq");
        LbsOsaTrace_WriteLog(0x18u, __str, v12, 5, 1);
      }

      v13 = 6;
    }

    else if (gnssTest::GnssAdaptDeviceTest::Ga22_34GetStatusCode(this) == 1)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 68, "Ga22_01TriggerProdIndReq");
        LbsOsaTrace_WriteLog(0x18u, __str, v17, 5, 1);
      }

      v13 = 1;
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v18 = mach_continuous_time();
        v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 68, "Ga22_01TriggerProdIndReq");
        LbsOsaTrace_WriteLog(0x18u, __str, v19, 5, 1);
      }

      v13 = 8;
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  v20 = *MEMORY[0x29EDCA608];
  return v13;
}

void sub_29966B2E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a24)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gnssTest::GnssAdaptDeviceTest::Ga22_34GetStatusCode(gnssTest::GnssAdaptDeviceTest *this)
{
  v10 = *MEMORY[0x29EDCA608];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 8;
  v1 = *(this + 9);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN8gnssTest19GnssAdaptDeviceTest20Ga22_34GetStatusCodeEv_block_invoke;
  block[3] = &unk_29EF6B1F0;
  block[4] = &v6;
  block[5] = this;
  dispatch_sync(v1, block);
  v2 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  v3 = *MEMORY[0x29EDCA608];
  return v2;
}

void gnssTest::GnssAdaptDeviceTest::Ga22_02HandleProdIndicationRsp(uint64_t a1, uint64_t *a2)
{
  v34 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 68, "Ga22_02HandleProdIndicationRsp");
    LbsOsaTrace_WriteLog(0x18u, __str, v5, 5, 1);
  }

  memset(&v27, 0, sizeof(v27));
  v25 = 0;
  v26 = 0;
  __p = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a2, a2[1], a2[1] - *a2);
  gnssTest::ZxHandler::Ga23_00GetZxBufAsStr(a1 + 140, &__p, &v27);
  if (__p)
  {
    v25 = __p;
    operator delete(__p);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v7 = &v27;
    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v7 = v27.__r_.__value_.__r.__words[0];
    }

    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Size,%u,ZxRsp,%s\n", v6, "ADP", 68, "Ga22_02HandleProdIndicationRsp", *(a2 + 2) - *a2, v7);
    LbsOsaTrace_WriteLog(0x18u, __str, v8, 5, 1);
  }

  if (gnssTest::ZxFactoryHandler::Ga23_15ParseZxProdModeIndProdMsg(a1 + 140, a2))
  {
    v9 = *(a1 + 72);
    *__str = MEMORY[0x29EDCA5F8];
    v29 = 0x40000000;
    v30 = ___ZN8gnssTest19GnssAdaptDeviceTest20Ga22_33SetStatusCodeEN4gnss6ResultE_block_invoke;
    v31 = &__block_descriptor_tmp_98_0;
    v32 = a1;
    v33 = 1;
    dispatch_sync(v9, __str);
    if (!gnssOsa_SemRelease(*(a1 + 80)) && LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = *&g_MacClockTicksToMsRelation;
      v12 = __error();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v11 * v10), "ADP", 87, "Ga22_02HandleProdIndicationRsp", 1542, *v12);
      LbsOsaTrace_WriteLog(0x18u, __str, v13, 2, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
LABEL_21:
      bzero(__str, 0x410uLL);
      v21 = mach_continuous_time();
      v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v21), "ADP", 68, "Ga22_02HandleProdIndicationRsp");
      LbsOsaTrace_WriteLog(0x18u, __str, v22, 5, 1);
    }
  }

  else
  {
    v14 = *(a1 + 72);
    *__str = MEMORY[0x29EDCA5F8];
    v29 = 0x40000000;
    v30 = ___ZN8gnssTest19GnssAdaptDeviceTest20Ga22_33SetStatusCodeEN4gnss6ResultE_block_invoke;
    v31 = &__block_descriptor_tmp_98_0;
    v32 = a1;
    v33 = 8;
    dispatch_sync(v14, __str);
    if (!gnssOsa_SemRelease(*(a1 + 80)) && LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = *&g_MacClockTicksToMsRelation;
      v17 = __error();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v16 * v15), "ADP", 87, "Ga22_02HandleProdIndicationRsp", 1542, *v17);
      LbsOsaTrace_WriteLog(0x18u, __str, v18, 2, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v19 = mach_continuous_time();
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Prod Ind Rsp\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 69, "Ga22_02HandleProdIndicationRsp", 776);
      LbsOsaTrace_WriteLog(0x18u, __str, v20, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
      goto LABEL_21;
    }
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  v23 = *MEMORY[0x29EDCA608];
}

void sub_29966B9B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gnssTest::GnssAdaptDeviceTest::Ga22_03TriggerCpMeRomCsReq(NSObject **this)
{
  v51 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "ADP", 68, "Ga22_03TriggerCpMeRomCsReq");
    LbsOsaTrace_WriteLog(0x18u, __str, v3, 5, 1);
  }

  v47 = 0;
  v48 = 0;
  v49 = 0;
  if (gnssTest::ZxFactoryHandler::Ga23_03BuildZxCpRomCSProdMsg(this + 140, &v47) && v48 != v47)
  {
    memset(&v46, 0, sizeof(v46));
    v44 = 0;
    v45 = 0;
    __p = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v47, v48, v48 - v47);
    gnssTest::ZxHandler::Ga23_00GetZxBufAsStr(this + 140, &__p, &v46);
    if (__p)
    {
      v44 = __p;
      operator delete(__p);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v5 = &v46;
      if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v5 = v46.__r_.__value_.__r.__words[0];
      }

      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CPCS,Size,%u,ZxReq,%s\n", v4, "ADP", 68, "Ga22_03TriggerCpMeRomCsReq", v48 - v47, v5);
      LbsOsaTrace_WriteLog(0x18u, __str, v6, 5, 1);
    }

    gnssTest::GnssAdaptDeviceTest::Ga24_01SendDataToChip(this, (v48 - v47), v47);
    if (gnssOsa_SemWaitTimeOut(this[10], 0x12Cu))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v7 = mach_continuous_time();
        v8 = *&g_MacClockTicksToMsRelation;
        v9 = __error();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v8 * v7), "ADP", 69, "Ga22_03TriggerCpMeRomCsReq", 1543, *v9);
        LbsOsaTrace_WriteLog(0x18u, __str, v10, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v11 = mach_continuous_time();
        v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 68, "Ga22_03TriggerCpMeRomCsReq");
        LbsOsaTrace_WriteLog(0x18u, __str, v12, 5, 1);
      }

LABEL_16:
      v13 = 6;
      goto LABEL_17;
    }

    StatusCode = gnssTest::GnssAdaptDeviceTest::Ga22_34GetStatusCode(this);
    if (StatusCode != 1)
    {
      v13 = StatusCode;
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v21 = mach_continuous_time();
        v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CP-ME ROM CS\n", (*&g_MacClockTicksToMsRelation * v21), "ADP", 69, "Ga22_03TriggerCpMeRomCsReq", 1302);
        LbsOsaTrace_WriteLog(0x18u, __str, v22, 0, 1);
      }

      goto LABEL_17;
    }

    v48 = v47;
    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      *v46.__r_.__value_.__l.__data_ = 0;
      v46.__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      v46.__r_.__value_.__s.__data_[0] = 0;
      *(&v46.__r_.__value_.__s + 23) = 0;
    }

    if (!gnssTest::ZxFactoryHandler::Ga23_05BuildZxMeRomCSProdMsg(this + 140, &v47) || v48 == v47)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v32 = mach_continuous_time();
        v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Build CPCS\n", (*&g_MacClockTicksToMsRelation * v32), "ADP", 69, "Ga22_03TriggerCpMeRomCsReq", 775);
        LbsOsaTrace_WriteLog(0x18u, __str, v33, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v34 = mach_continuous_time();
        v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v34), "ADP", 68, "Ga22_03TriggerCpMeRomCsReq");
        LbsOsaTrace_WriteLog(0x18u, __str, v35, 5, 1);
      }
    }

    else
    {
      v40 = 0;
      v41 = 0;
      v42 = 0;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v40, v47, v48, v48 - v47);
      gnssTest::ZxHandler::Ga23_00GetZxBufAsStr(this + 140, &v40, &v46);
      if (v40)
      {
        v41 = v40;
        operator delete(v40);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v23 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
        v24 = &v46;
        if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v24 = v46.__r_.__value_.__r.__words[0];
        }

        v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MECS,Size,%u,ZxReq,%s\n", v23, "ADP", 68, "Ga22_03TriggerCpMeRomCsReq", v48 - v47, v24);
        LbsOsaTrace_WriteLog(0x18u, __str, v25, 5, 1);
      }

      gnssTest::GnssAdaptDeviceTest::Ga24_01SendDataToChip(this, (v48 - v47), v47);
      if (gnssOsa_SemWaitTimeOut(this[10], 0x12Cu))
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v26 = mach_continuous_time();
          v27 = *&g_MacClockTicksToMsRelation;
          v28 = __error();
          v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v27 * v26), "ADP", 69, "Ga22_03TriggerCpMeRomCsReq", 1543, *v28);
          LbsOsaTrace_WriteLog(0x18u, __str, v29, 0, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v30 = mach_continuous_time();
          v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v30), "ADP", 68, "Ga22_03TriggerCpMeRomCsReq");
          LbsOsaTrace_WriteLog(0x18u, __str, v31, 5, 1);
        }

        goto LABEL_16;
      }

      if (gnssTest::GnssAdaptDeviceTest::Ga22_34GetStatusCode(this) == 1)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v36 = mach_continuous_time();
          v37 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v36), "ADP", 68, "Ga22_03TriggerCpMeRomCsReq");
          LbsOsaTrace_WriteLog(0x18u, __str, v37, 5, 1);
        }

        v13 = 1;
        goto LABEL_17;
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v38 = mach_continuous_time();
        v39 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v38), "ADP", 68, "Ga22_03TriggerCpMeRomCsReq");
        LbsOsaTrace_WriteLog(0x18u, __str, v39, 5, 1);
      }
    }

    v13 = 8;
LABEL_17:
    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    goto LABEL_24;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Build CPCS\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 69, "Ga22_03TriggerCpMeRomCsReq", 775);
    LbsOsaTrace_WriteLog(0x18u, __str, v15, 0, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v16 = mach_continuous_time();
    v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 68, "Ga22_03TriggerCpMeRomCsReq");
    LbsOsaTrace_WriteLog(0x18u, __str, v17, 5, 1);
  }

  v13 = 8;
LABEL_24:
  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }

  v18 = *MEMORY[0x29EDCA608];
  return v13;
}

void sub_29966C3B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a28)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

void gnssTest::GnssAdaptDeviceTest::Ga22_04HandleCpMeRomCsRsp(uint64_t a1, uint64_t *a2, int a3)
{
  v33 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 68, "Ga22_04HandleCpMeRomCsRsp");
    LbsOsaTrace_WriteLog(0x18u, __str, v7, 5, 1);
  }

  memset(&v26, 0, sizeof(v26));
  v24 = 0;
  v25 = 0;
  __p = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a2, a2[1], a2[1] - *a2);
  gnssTest::ZxHandler::Ga23_00GetZxBufAsStr(a1 + 140, &__p, &v26);
  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v9 = &v26;
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v26.__r_.__value_.__r.__words[0];
    }

    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: RomCSType,%u,Size,%u,ZxRsp,%s\n", v8, "ADP", 68, "Ga22_04HandleCpMeRomCsRsp", a3, *(a2 + 2) - *a2, v9);
    LbsOsaTrace_WriteLog(0x18u, __str, v10, 5, 1);
  }

  if (a3 == 1)
  {
    v11 = gnssTest::ZxFactoryHandler::Ga23_06ParseZxMeRomCSProdMsg(a1 + 140, a2);
  }

  else
  {
    if (a3)
    {
      goto LABEL_19;
    }

    v11 = gnssTest::ZxFactoryHandler::Ga23_04ParseZxCpRomCSProdMsg(a1 + 140, a2);
  }

  if ((v11 & 1) == 0)
  {
LABEL_19:
    v17 = *(a1 + 72);
    *__str = MEMORY[0x29EDCA5F8];
    v28 = 0x40000000;
    v29 = ___ZN8gnssTest19GnssAdaptDeviceTest20Ga22_33SetStatusCodeEN4gnss6ResultE_block_invoke;
    v30 = &__block_descriptor_tmp_98_0;
    v31 = a1;
    v32 = 8;
    dispatch_sync(v17, __str);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Rom Resp,RomCSType,%u\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 69, "Ga22_04HandleCpMeRomCsRsp", 784, a3);
      LbsOsaTrace_WriteLog(0x18u, __str, v19, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v12 = *(a1 + 72);
  *__str = MEMORY[0x29EDCA5F8];
  v28 = 0x40000000;
  v29 = ___ZN8gnssTest19GnssAdaptDeviceTest20Ga22_33SetStatusCodeEN4gnss6ResultE_block_invoke;
  v30 = &__block_descriptor_tmp_98_0;
  v31 = a1;
  v32 = 1;
  dispatch_sync(v12, __str);
  if (!gnssOsa_SemRelease(*(a1 + 80)) && LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v13 = mach_continuous_time();
    v14 = *&g_MacClockTicksToMsRelation;
    v15 = __error();
    v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v14 * v13), "ADP", 87, "Ga22_04HandleCpMeRomCsRsp", 1542, *v15);
    LbsOsaTrace_WriteLog(0x18u, __str, v16, 2, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
LABEL_22:
    bzero(__str, 0x410uLL);
    v20 = mach_continuous_time();
    v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 68, "Ga22_04HandleCpMeRomCsRsp");
    LbsOsaTrace_WriteLog(0x18u, __str, v21, 5, 1);
  }

LABEL_23:
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  v22 = *MEMORY[0x29EDCA608];
}

void sub_29966C960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL gnssTest::GnssAdaptDeviceTest::Ga22_05ValidateBands(uint64_t a1, int a2, int a3)
{
  v3 = 0;
  v13 = *MEMORY[0x29EDCA608];
  if (a2 <= 3)
  {
    if ((a2 - 2) >= 2)
    {
      if (a2)
      {
        if (a2 != 1)
        {
          goto LABEL_25;
        }

        v3 = (a3 - 1) < 0x20;
        if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
        {
          goto LABEL_25;
        }

LABEL_23:
        bzero(__str, 0x410uLL);
        v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Band,%u,PRN,%d\n", v9);
        goto LABEL_24;
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v8 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Band,%u,PRN,Fcn,%d,%d\n", v8, "ADP");
        goto LABEL_15;
      }

LABEL_16:
      v3 = 0;
      goto LABEL_25;
    }

LABEL_13:
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Band,%u,PRN,%d,Fcn,%d\n", v4, "ADP");
LABEL_15:
      LbsOsaTrace_WriteLog(0x18u, __str, v5, 0, 1);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  if (a2 > 0xA)
  {
LABEL_17:
    if (a2 == 4)
    {
      v3 = (a3 + 7) < 0xE;
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
      {
        goto LABEL_19;
      }
    }

    goto LABEL_25;
  }

  if (((1 << a2) & 0x6C0) != 0)
  {
    goto LABEL_13;
  }

  if (a2 == 5)
  {
    v3 = (a3 - 1) < 0x25;
    if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  if (a2 != 8)
  {
    goto LABEL_17;
  }

  v3 = (a3 - 1) < 0x24;
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
LABEL_19:
    bzero(__str, 0x410uLL);
    v6 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Band,%u,Fcn,%d\n", v6);
LABEL_24:
    LbsOsaTrace_WriteLog(0x18u, __str, v7, 5, 1);
  }

LABEL_25:
  v10 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t gnssTest::GnssAdaptDeviceTest::Ga22_07IsFeatureSupported(gnssTest::GnssAdaptDeviceTest *a1, int a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v9 = 4;
  gnssTest::GnssAdaptDeviceTest::Ga21_01GetPlatformType(a1, &v9);
  v3 = a2 == 3 && v9 == 1;
  v4 = !v3;
  if (v3 && LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Unsupported Pltfm\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "Ga22_07IsFeatureSupported", 264);
    LbsOsaTrace_WriteLog(0x18u, __str, v6, 0, 1);
  }

  v7 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t gnssTest::GnssAdaptDeviceTest::Ga22_08InjectLtlTable(gnssTest::GnssAdaptDeviceTest *this)
{
  v33 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "ADP", 68, "Ga22_08InjectLtlTable");
    LbsOsaTrace_WriteLog(0x18u, __str, v3, 5, 1);
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x2000000000;
  v30 = 0;
  v4 = *(this + 9);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN8gnssTest19GnssAdaptDeviceTest21Ga22_08InjectLtlTableEv_block_invoke;
  block[3] = &unk_29EF6AE30;
  block[4] = &v27;
  block[5] = this;
  dispatch_sync(v4, block);
  if (*(v28 + 24) == 1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 68, "Ga22_08InjectLtlTable");
      LbsOsaTrace_WriteLog(0x18u, __str, v6, 5, 1);
    }

LABEL_6:
    v7 = 1;
    goto LABEL_25;
  }

  memcpy(__dst, &unk_2997604D0, sizeof(__dst));
  if (off_2A1939588)
  {
    off_2A1939588(818, __dst);
  }

  if (gnssOsa_SemWaitTimeOut(*(this + 10), 0x12Cu))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = *&g_MacClockTicksToMsRelation;
      v10 = __error();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v9 * v8), "ADP", 69, "Ga22_08InjectLtlTable", 1543, *v10);
      LbsOsaTrace_WriteLog(0x18u, __str, v11, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 68, "Ga22_08InjectLtlTable");
      LbsOsaTrace_WriteLog(0x18u, __str, v13, 5, 1);
    }

    v7 = 6;
  }

  else
  {
    v14 = *(this + 9);
    v25[0] = MEMORY[0x29EDCA5F8];
    v25[1] = 0x40000000;
    v25[2] = ___ZN8gnssTest19GnssAdaptDeviceTest21Ga22_08InjectLtlTableEv_block_invoke_2;
    v25[3] = &unk_29EF6AE58;
    v25[4] = &v27;
    v25[5] = this;
    dispatch_sync(v14, v25);
    if (v28[3])
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v15 = mach_continuous_time();
        v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL Injected Successfully\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 73, "Ga22_08InjectLtlTable");
        LbsOsaTrace_WriteLog(0x18u, __str, v16, 4, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v17 = mach_continuous_time();
        v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 68, "Ga22_08InjectLtlTable");
        LbsOsaTrace_WriteLog(0x18u, __str, v18, 5, 1);
      }

      goto LABEL_6;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v19 = mach_continuous_time();
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx LTL Load Failed\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 69, "Ga22_08InjectLtlTable", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v20, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v21 = mach_continuous_time();
      v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v21), "ADP", 68, "Ga22_08InjectLtlTable");
      LbsOsaTrace_WriteLog(0x18u, __str, v22, 5, 1);
    }

    v7 = 8;
  }

LABEL_25:
  _Block_object_dispose(&v27, 8);
  v23 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t ___ZN8gnssTest19GnssAdaptDeviceTest21Ga22_08InjectLtlTableEv_block_invoke(uint64_t result)
{
  v2 = *MEMORY[0x29EDCA608];
  *(*(*(result + 32) + 8) + 24) = *(*(result + 40) + 137);
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN8gnssTest19GnssAdaptDeviceTest21Ga22_08InjectLtlTableEv_block_invoke_2(uint64_t result)
{
  v2 = *MEMORY[0x29EDCA608];
  *(*(*(result + 32) + 8) + 24) = *(*(result + 40) + 137);
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t gnssTest::GnssAdaptDeviceTest::Ga22_09ReportInitStatus(uint64_t a1, uint64_t a2, int a3)
{
  v17[4] = *MEMORY[0x29EDCA608];
  v12 = 0;
  v13 = &v12;
  v14 = 0x4802000000;
  v15 = __Block_byref_object_copy__2;
  v16 = __Block_byref_object_dispose__2;
  v17[3] = 0;
  v5 = *(a1 + 72);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN8gnssTest19GnssAdaptDeviceTest23Ga22_09ReportInitStatusENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEN4gnss6ResultE_block_invoke;
  block[3] = &unk_29EF6AE80;
  block[4] = &v12;
  block[5] = a1;
  dispatch_sync(v5, block);
  std::string::basic_string[abi:ne200100]<0>(__p, "Ga22_09ReportInitStatus");
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v11, (v13 + 5));
  gnssTest::GnssAdaptDeviceTest::Ga22_11TestStatusResponse(a1, __p, a3, v11);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v11);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  _Block_object_dispose(&v12, 8);
  result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v17);
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29966D644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](&a22);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a26, 8);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v26 + 40);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *MEMORY[0x29EDCA608];
  v3 = a1 + 40;
  v4 = a2 + 40;

  return std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v3, v4);
}

uint64_t __Block_byref_object_dispose__2(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *MEMORY[0x29EDCA608];
  v2 = a1 + 40;

  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v2);
}

void *___ZN8gnssTest19GnssAdaptDeviceTest23Ga22_09ReportInitStatusENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEN4gnss6ResultE_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 40);
  v2 = *MEMORY[0x29EDCA608];
  v3 = (*(*(a1 + 32) + 8) + 40);

  return std::function<void ()(gnss::Result)>::operator=(v3, v1 + 152);
}

uint64_t gnssTest::GnssAdaptDeviceTest::Ga22_11TestStatusResponse(uint64_t a1, const char *a2, int a3, uint64_t a4)
{
  v24 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    if (a2[23] < 0)
    {
      a2 = *a2;
    }

    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s,%u\n", v8, "ADP", 73, "Ga22_11TestStatusResponse", a2, a3);
    LbsOsaTrace_WriteLog(0x18u, __str, v9, 4, 1);
  }

  v10 = *(a1 + 72);
  *__str = MEMORY[0x29EDCA5F8];
  v19 = 0x40000000;
  v20 = ___ZN8gnssTest19GnssAdaptDeviceTest20Ga22_33SetStatusCodeEN4gnss6ResultE_block_invoke;
  v21 = &__block_descriptor_tmp_98_0;
  v22 = a1;
  v23 = 0;
  dispatch_sync(v10, __str);
  if (*(a4 + 24))
  {
    v11 = *(a1 + 64);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN8gnssTest19GnssAdaptDeviceTest25Ga22_11TestStatusResponseENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEN4gnss6ResultENS1_8functionIFvS9_EEE_block_invoke;
    block[3] = &__block_descriptor_tmp_25_2;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v17, a4);
    v17[8] = a3;
    dispatch_async(v11, block);
    result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v17);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Invalid Status CB\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 69, "Ga22_11TestStatusResponse", 258);
      result = LbsOsaTrace_WriteLog(0x18u, __str, v14, 0, 1);
    }
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN8gnssTest19GnssAdaptDeviceTest25Ga22_11TestStatusResponseENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEN4gnss6ResultENS1_8functionIFvS9_EEE_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 64);
  v2 = *MEMORY[0x29EDCA608];
  v3 = a1 + 32;

  return std::function<void ()(gnss::Result)>::operator()(v3, v1);
}

void gnssTest::GnssAdaptDeviceTest::Ga22_13HandleLtlRsp(uint64_t a1, uint64_t *a2)
{
  v34 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 68, "Ga22_13HandleLtlRsp");
    LbsOsaTrace_WriteLog(0x18u, __str, v5, 5, 1);
  }

  memset(&v27, 0, sizeof(v27));
  v25 = 0;
  v26 = 0;
  __p = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a2, a2[1], a2[1] - *a2);
  gnssTest::ZxHandler::Ga23_00GetZxBufAsStr(a1 + 140, &__p, &v27);
  if (__p)
  {
    v25 = __p;
    operator delete(__p);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v7 = &v27;
    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v7 = v27.__r_.__value_.__r.__words[0];
    }

    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Size,%u,ZxRsp,%s\n", v6, "ADP", 68, "Ga22_13HandleLtlRsp", *(a2 + 2) - *a2, v7);
    LbsOsaTrace_WriteLog(0x18u, __str, v8, 5, 1);
  }

  v9 = gnssTest::ZxFactoryHandler::Ga23_35ParseLtlRespMsg(a1 + 140, a2);
  v10 = *(a1 + 72);
  if (v9)
  {
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZN8gnssTest19GnssAdaptDeviceTest19Ga22_13HandleLtlRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke_2;
    block[3] = &__block_descriptor_tmp_28;
    block[4] = a1;
    dispatch_sync(v10, block);
    v11 = *(a1 + 72);
    *__str = MEMORY[0x29EDCA5F8];
    v29 = 0x40000000;
    v30 = ___ZN8gnssTest19GnssAdaptDeviceTest20Ga22_33SetStatusCodeEN4gnss6ResultE_block_invoke;
    v31 = &__block_descriptor_tmp_98_0;
    v32 = a1;
    v33 = 1;
    dispatch_sync(v11, __str);
  }

  else
  {
    v23[0] = MEMORY[0x29EDCA5F8];
    v23[1] = 0x40000000;
    v23[2] = ___ZN8gnssTest19GnssAdaptDeviceTest19Ga22_13HandleLtlRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke;
    v23[3] = &__block_descriptor_tmp_26;
    v23[4] = a1;
    dispatch_sync(v10, v23);
    v12 = *(a1 + 72);
    *__str = MEMORY[0x29EDCA5F8];
    v29 = 0x40000000;
    v30 = ___ZN8gnssTest19GnssAdaptDeviceTest20Ga22_33SetStatusCodeEN4gnss6ResultE_block_invoke;
    v31 = &__block_descriptor_tmp_98_0;
    v32 = a1;
    v33 = 8;
    dispatch_sync(v12, __str);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Parse LTL\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 69, "Ga22_13HandleLtlRsp", 776);
      LbsOsaTrace_WriteLog(0x18u, __str, v14, 0, 1);
    }
  }

  if (!gnssOsa_SemRelease(*(a1 + 80)) && LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v15 = mach_continuous_time();
    v16 = *&g_MacClockTicksToMsRelation;
    v17 = __error();
    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v16 * v15), "ADP", 87, "Ga22_13HandleLtlRsp", 1542, *v17);
    LbsOsaTrace_WriteLog(0x18u, __str, v18, 2, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v19 = mach_continuous_time();
    v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 68, "Ga22_13HandleLtlRsp");
    LbsOsaTrace_WriteLog(0x18u, __str, v20, 5, 1);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  v21 = *MEMORY[0x29EDCA608];
}

void sub_29966DF68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN8gnssTest19GnssAdaptDeviceTest19Ga22_13HandleLtlRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke(uint64_t result)
{
  v2 = *MEMORY[0x29EDCA608];
  *(*(result + 32) + 137) = 0;
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN8gnssTest19GnssAdaptDeviceTest19Ga22_13HandleLtlRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke_2(uint64_t result)
{
  v2 = *MEMORY[0x29EDCA608];
  *(*(result + 32) + 137) = 1;
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t gnssTest::GnssAdaptDeviceTest::Ga22_14TriggerCwModulated(NSObject **a1, int a2, int a3, int a4, int a5, int a6, double a7)
{
  v48 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 68, "Ga22_14TriggerCwModulated");
    LbsOsaTrace_WriteLog(0x18u, __str, v15, 5, 1);
  }

  v44 = 0;
  v45 = 0;
  v46 = 0;
  memset(&v43, 0, sizeof(v43));
  if (!gnssTest::ZxFactoryHandler::Ga23_07BuildZxMeCwModProdMsg(a1 + 140, &v44, a3, a4, a5, a6, a7) || v45 == v44)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v26 = mach_continuous_time();
      v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v26), "ADP", 68, "Ga22_14TriggerCwModulated");
      LbsOsaTrace_WriteLog(0x18u, __str, v27, 5, 1);
    }

    v25 = 0;
  }

  else
  {
    __p = 0;
    v41 = 0;
    v42 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v44, v45, v45 - v44);
    gnssTest::ZxHandler::Ga23_00GetZxBufAsStr(a1 + 140, &__p, &v43);
    if (__p)
    {
      v41 = __p;
      operator delete(__p);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v17 = &v43;
      if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v17 = v43.__r_.__value_.__r.__words[0];
      }

      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Size,%u,ZxReq,%s\n", v16, "ADP", 68, "Ga22_14TriggerCwModulated", v45 - v44, v17);
      LbsOsaTrace_WriteLog(0x18u, __str, v18, 5, 1);
    }

    v19 = 1000 * a2;
    if (!a2)
    {
      v19 = 20000;
    }

    v20 = v19 / (a6 + 100);
    if (v20)
    {
      v21 = 0;
      while (1)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v22 = mach_continuous_time();
          v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Iteration,%u,%u\n", (*&g_MacClockTicksToMsRelation * v22), "ADP", 68, "Ga22_14TriggerCwModulated", v20, v21 + 1);
          LbsOsaTrace_WriteLog(0x18u, __str, v23, 5, 1);
        }

        gnssTest::GnssAdaptDeviceTest::Ga24_01SendDataToChip(a1, (v45 - v44), v44);
        if (gnssOsa_SemWaitTimeOut(a1[10], a6 + 100))
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v32 = mach_continuous_time();
            v33 = *&g_MacClockTicksToMsRelation;
            v34 = __error();
            v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v33 * v32), "ADP", 69, "Ga22_14TriggerCwModulated", 1543, *v34);
            LbsOsaTrace_WriteLog(0x18u, __str, v35, 0, 1);
          }

          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v36 = mach_continuous_time();
            v37 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v36), "ADP", 68, "Ga22_14TriggerCwModulated");
            LbsOsaTrace_WriteLog(0x18u, __str, v37, 5, 1);
          }

          v25 = 6;
          goto LABEL_24;
        }

        StatusCode = gnssTest::GnssAdaptDeviceTest::Ga22_34GetStatusCode(a1);
        if (StatusCode != 1)
        {
          break;
        }

        if (v20 == ++v21)
        {
          v25 = 1;
          goto LABEL_30;
        }
      }

      v25 = StatusCode;
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v38 = mach_continuous_time();
        v39 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Test Completed with Failure\n", (*&g_MacClockTicksToMsRelation * v38), "ADP", 69, "Ga22_14TriggerCwModulated", 257);
        LbsOsaTrace_WriteLog(0x18u, __str, v39, 0, 1);
      }

      if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
      {
        goto LABEL_24;
      }

      goto LABEL_31;
    }

    v25 = 0;
LABEL_30:
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
LABEL_31:
      bzero(__str, 0x410uLL);
      v30 = mach_continuous_time();
      v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v30), "ADP", 68, "Ga22_14TriggerCwModulated");
      LbsOsaTrace_WriteLog(0x18u, __str, v31, 5, 1);
    }
  }

LABEL_24:
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  v28 = *MEMORY[0x29EDCA608];
  return v25;
}

void sub_29966E6A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a25)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

void gnssTest::GnssAdaptDeviceTest::Ga22_15HandleCwModulatedRsp(uint64_t a1, uint64_t *a2, int a3)
{
  v47 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 68, "Ga22_15HandleCwModulatedRsp");
    LbsOsaTrace_WriteLog(0x18u, __str, v7, 5, 1);
  }

  memset(&v40, 0, sizeof(v40));
  v38 = 0;
  v39 = 0;
  __p = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a2, a2[1], a2[1] - *a2);
  gnssTest::ZxHandler::Ga23_00GetZxBufAsStr(a1 + 140, &__p, &v40);
  if (__p)
  {
    v38 = __p;
    operator delete(__p);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v9 = &v40;
    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v40.__r_.__value_.__r.__words[0];
    }

    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Size,%u,ZxRsp,%s\n", v8, "ADP", 68, "Ga22_15HandleCwModulatedRsp", *(a2 + 2) - *a2, v9);
    LbsOsaTrace_WriteLog(0x18u, __str, v10, 5, 1);
  }

  if ((a2[1] - *a2) > 8)
  {
    v34 = 0u;
    v35 = 0u;
    v36 = 0x7FF8000000000000;
    if (gnssTest::ZxFactoryHandler::Ga23_08ParseZxMeCwModProdMsg(a1 + 140, a2, &v34, a3))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v20 = mach_continuous_time();
        v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CN0,%f,Power,%f,FreqOffsetHz,%f,band,%u,fcn,%d,prn,%d\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 73, "Ga22_15HandleCwModulatedRsp", *(&v34 + 1), *&v35, *(&v35 + 1), v34, DWORD1(v34), DWORD1(v34));
        LbsOsaTrace_WriteLog(0x18u, __str, v21, 4, 1);
      }

      if ((*(&v34 + 1) < 26.0 || *&v35 < -160.0 || fabs(*(&v35 + 1)) > 3200.0) && LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v22 = mach_continuous_time();
        v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Meas are out of range\n", (*&g_MacClockTicksToMsRelation * v22), "ADP", 87, "Ga22_15HandleCwModulatedRsp", 770);
        LbsOsaTrace_WriteLog(0x18u, __str, v23, 2, 1);
      }

      operator new();
    }

    v24 = *(a1 + 72);
    *__str = MEMORY[0x29EDCA5F8];
    v42 = 0x40000000;
    v43 = ___ZN8gnssTest19GnssAdaptDeviceTest20Ga22_33SetStatusCodeEN4gnss6ResultE_block_invoke;
    v44 = &__block_descriptor_tmp_98_0;
    v45 = a1;
    v46 = 8;
    dispatch_sync(v24, __str);
    if (!gnssOsa_SemRelease(*(a1 + 80)) && LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v25 = mach_continuous_time();
      v26 = *&g_MacClockTicksToMsRelation;
      v27 = __error();
      v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v26 * v25), "ADP", 87, "Ga22_15HandleCwModulatedRsp", 1542, *v27);
      LbsOsaTrace_WriteLog(0x18u, __str, v28, 2, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v29 = mach_continuous_time();
      v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CWMod Invalid Pl\n", (*&g_MacClockTicksToMsRelation * v29), "ADP", 69, "Ga22_15HandleCwModulatedRsp", 776);
      LbsOsaTrace_WriteLog(0x18u, __str, v30, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v31 = mach_continuous_time();
      v32 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v31), "ADP", 68, "Ga22_15HandleCwModulatedRsp");
      LbsOsaTrace_WriteLog(0x18u, __str, v32, 5, 1);
    }
  }

  else
  {
    v11 = *(a1 + 72);
    *__str = MEMORY[0x29EDCA5F8];
    v42 = 0x40000000;
    v43 = ___ZN8gnssTest19GnssAdaptDeviceTest20Ga22_33SetStatusCodeEN4gnss6ResultE_block_invoke;
    v44 = &__block_descriptor_tmp_98_0;
    v45 = a1;
    v46 = 8;
    dispatch_sync(v11, __str);
    if (!gnssOsa_SemRelease(*(a1 + 80)) && LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = *&g_MacClockTicksToMsRelation;
      v14 = __error();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v13 * v12), "ADP", 87, "Ga22_15HandleCwModulatedRsp", 1542, *v14);
      LbsOsaTrace_WriteLog(0x18u, __str, v15, 2, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CWMod Invalid Pl\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 69, "Ga22_15HandleCwModulatedRsp", 776);
      LbsOsaTrace_WriteLog(0x18u, __str, v17, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 68, "Ga22_15HandleCwModulatedRsp");
      LbsOsaTrace_WriteLog(0x18u, __str, v19, 5, 1);
    }
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  v33 = *MEMORY[0x29EDCA608];
}

void sub_29966F1B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, char a48)
{
  if (a47 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __Block_byref_object_copy__34(uint64_t result, uint64_t a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = a2 + 64;
  v3 = *(a2 + 64);
  if (v3)
  {
    if (v3 == a2 + 40)
    {
      *(result + 64) = result + 40;
      result = (*(**v2 + 24))();
      goto LABEL_7;
    }

    *(result + 64) = v3;
  }

  else
  {
    v2 = result + 64;
  }

  *v2 = 0;
LABEL_7:
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29966F2FC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t __Block_byref_object_dispose__35(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *MEMORY[0x29EDCA608];
  v2 = a1 + 40;

  return std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::~__value_func[abi:ne200100](v2);
}

void *___ZN8gnssTest19GnssAdaptDeviceTest27Ga22_15HandleCwModulatedRspERNSt3__16vectorIhNS1_9allocatorIhEEEE17e_Ga_CharTestType_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 40);
  v2 = *MEMORY[0x29EDCA608];
  v3 = (*(*(a1 + 32) + 8) + 40);

  return std::function<void ()(std::vector<gnssTest::RfMeasurement>)>::operator=(v3, v1 + 184);
}

void ___ZN8gnssTest19GnssAdaptDeviceTest27Ga22_15HandleCwModulatedRspERNSt3__16vectorIhNS1_9allocatorIhEEEE17e_Ga_CharTestType_block_invoke_2(void *a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v1 = a1[5];
  v2 = *(a1[4] + 8);
  v6 = 0;
  v7 = 0;
  __p = 0;
  std::vector<gnssTest::RfMeasurement>::__init_with_size[abi:ne200100]<gnssTest::RfMeasurement*,gnssTest::RfMeasurement*>(&__p, v1, a1[6], 0xCCCCCCCCCCCCCCCDLL * ((a1[6] - v1) >> 3));
  v3 = *(v2 + 64);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v3 + 48))(v3, &__p);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  v4 = *MEMORY[0x29EDCA608];
}

void __copy_helper_block_e8_40c66_ZTSNSt3__16vectorIN8gnssTest13RfMeasurementENS_9allocatorIS2_EEEE(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v3 = a1 + 40;
  *(v3 + 16) = 0;
  v4 = *(a2 + 40);
  v5 = *(a2 + 48);

  std::vector<gnssTest::RfMeasurement>::__init_with_size[abi:ne200100]<gnssTest::RfMeasurement*,gnssTest::RfMeasurement*>(v3, v4, v5, 0xCCCCCCCCCCCCCCCDLL * ((v5 - v4) >> 3));
}

void __destroy_helper_block_e8_40c66_ZTSNSt3__16vectorIN8gnssTest13RfMeasurementENS_9allocatorIS2_EEEE(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;

    operator delete(v2);
  }

  else
  {
    v3 = *MEMORY[0x29EDCA608];
  }
}

uint64_t gnssTest::GnssAdaptDeviceTest::Ga22_16TriggerCommPing(gnssTest::GnssAdaptDeviceTest *this, unsigned int a2)
{
  v51 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 68, "Ga22_16TriggerCommPing");
    LbsOsaTrace_WriteLog(0x18u, __str, v5, 5, 1);
  }

  v6 = *(this + 9);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN8gnssTest19GnssAdaptDeviceTest22Ga22_16TriggerCommPingEj_block_invoke;
  block[3] = &__block_descriptor_tmp_38;
  block[4] = this;
  dispatch_sync(v6, block);
  v46 = 0;
  v47 = 0;
  v48 = 0;
  if (gnssTest::ZxFactoryHandler::Ga23_16BuildZxPingProdMsg(this + 140, &v46, 0) && v47 != v46)
  {
    memset(&v45, 0, sizeof(v45));
    v43 = 0;
    v44 = 0;
    __p = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v46, v47, v47 - v46);
    gnssTest::ZxHandler::Ga23_00GetZxBufAsStr(this + 140, &__p, &v45);
    if (__p)
    {
      v43 = __p;
      operator delete(__p);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v8 = &v45;
      if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v8 = v45.__r_.__value_.__r.__words[0];
      }

      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Size,%u,ZxReqCP,%s\n", v7, "ADP", 68, "Ga22_16TriggerCommPing", v47 - v46, v8);
      LbsOsaTrace_WriteLog(0x18u, __str, v9, 5, 1);
    }

    gnssTest::GnssAdaptDeviceTest::Ga24_01SendDataToChip(this, (v47 - v46), v46);
    v10 = a2 >> 1;
    if (gnssOsa_SemWaitTimeOut(*(this + 10), v10))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v11 = mach_continuous_time();
        v12 = *&g_MacClockTicksToMsRelation;
        v13 = __error();
        v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v12 * v11), "ADP", 69, "Ga22_16TriggerCommPing", 1543, *v13);
        LbsOsaTrace_WriteLog(0x18u, __str, v14, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v15 = mach_continuous_time();
        v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 68, "Ga22_16TriggerCommPing");
        LbsOsaTrace_WriteLog(0x18u, __str, v16, 5, 1);
      }
    }

    else
    {
      v47 = v46;
      if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
      {
        *v45.__r_.__value_.__l.__data_ = 0;
        v45.__r_.__value_.__l.__size_ = 0;
      }

      else
      {
        v45.__r_.__value_.__s.__data_[0] = 0;
        *(&v45.__r_.__value_.__s + 23) = 0;
      }

      if (!gnssTest::ZxFactoryHandler::Ga23_16BuildZxPingProdMsg(this + 140, &v46, 1) || v47 == v46)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v31 = mach_continuous_time();
          v32 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Ping ME\n", (*&g_MacClockTicksToMsRelation * v31), "ADP", 69, "Ga22_16TriggerCommPing", 775);
          LbsOsaTrace_WriteLog(0x18u, __str, v32, 0, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v33 = mach_continuous_time();
          v34 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v33), "ADP", 68, "Ga22_16TriggerCommPing");
          LbsOsaTrace_WriteLog(0x18u, __str, v34, 5, 1);
        }

        StatusCode = 0;
        goto LABEL_43;
      }

      v39 = 0;
      v40 = 0;
      v41 = 0;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v39, v46, v47, v47 - v46);
      gnssTest::ZxHandler::Ga23_00GetZxBufAsStr(this + 140, &v39, &v45);
      if (v39)
      {
        v40 = v39;
        operator delete(v39);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v22 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
        v23 = &v45;
        if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v23 = v45.__r_.__value_.__r.__words[0];
        }

        v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Size,%u,ZxReqME,%s\n", v22, "ADP", 68, "Ga22_16TriggerCommPing", v47 - v46, v23);
        LbsOsaTrace_WriteLog(0x18u, __str, v24, 5, 1);
      }

      gnssTest::GnssAdaptDeviceTest::Ga24_01SendDataToChip(this, (v47 - v46), v46);
      if (!gnssOsa_SemWaitTimeOut(*(this + 10), v10))
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v37 = mach_continuous_time();
          v38 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v37), "ADP", 68, "Ga22_16TriggerCommPing");
          LbsOsaTrace_WriteLog(0x18u, __str, v38, 5, 1);
        }

        StatusCode = gnssTest::GnssAdaptDeviceTest::Ga22_34GetStatusCode(this);
        goto LABEL_43;
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v25 = mach_continuous_time();
        v26 = *&g_MacClockTicksToMsRelation;
        v27 = __error();
        v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v26 * v25), "ADP", 69, "Ga22_16TriggerCommPing", 1543, *v27);
        LbsOsaTrace_WriteLog(0x18u, __str, v28, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v29 = mach_continuous_time();
        v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v29), "ADP", 68, "Ga22_16TriggerCommPing");
        LbsOsaTrace_WriteLog(0x18u, __str, v30, 5, 1);
      }
    }

    StatusCode = 6;
LABEL_43:
    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    goto LABEL_45;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v18 = mach_continuous_time();
    v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Build Ping Msg\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 69, "Ga22_16TriggerCommPing", 775);
    LbsOsaTrace_WriteLog(0x18u, __str, v19, 0, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v20 = mach_continuous_time();
    v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 68, "Ga22_16TriggerCommPing");
    LbsOsaTrace_WriteLog(0x18u, __str, v21, 5, 1);
  }

  StatusCode = 0;
LABEL_45:
  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  v35 = *MEMORY[0x29EDCA608];
  return StatusCode;
}

void sub_29966FE7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a27)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN8gnssTest19GnssAdaptDeviceTest22Ga22_16TriggerCommPingEj_block_invoke(uint64_t result)
{
  v3 = *MEMORY[0x29EDCA608];
  v1 = *(result + 32);
  if (*(v1 + 111) < 0)
  {
    **(v1 + 88) = 0;
    *(v1 + 96) = 0;
  }

  else
  {
    *(v1 + 88) = 0;
    *(v1 + 111) = 0;
  }

  v2 = *MEMORY[0x29EDCA608];
  return result;
}

void gnssTest::GnssAdaptDeviceTest::Ga22_17HandleCommPingRsp(NSObject **a1, void *a2)
{
  v78 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 68, "Ga22_17HandleCommPingRsp");
    LbsOsaTrace_WriteLog(0x18u, __str, v5, 5, 1);
  }

  v58 = 0;
  v59 = &v58;
  v60 = 0x4002000000;
  v61 = __Block_byref_object_copy__43;
  v62 = __Block_byref_object_dispose__44;
  __p = 0;
  v64 = 0;
  v65 = 0;
  v6 = a1[9];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN8gnssTest19GnssAdaptDeviceTest24Ga22_17HandleCommPingRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke;
  block[3] = &unk_29EF6AF30;
  block[4] = &v58;
  block[5] = a1;
  dispatch_sync(v6, block);
  v56 = 0;
  if (gnssTest::ZxFactoryHandler::Ga23_21ParseZxPingProdMsg(a1 + 140, a2, (v59 + 5), &v56))
  {
    v52 = 0;
    v53 = &v52;
    v54 = 0x2000000000;
    v55 = 0;
    if (v56 == 1)
    {
      v19 = a1[9];
      v50[0] = MEMORY[0x29EDCA5F8];
      v50[1] = 0x40000000;
      v50[2] = ___ZN8gnssTest19GnssAdaptDeviceTest24Ga22_17HandleCommPingRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke_3;
      v50[3] = &unk_29EF6AF80;
      v50[4] = &v52;
      v50[5] = a1;
      dispatch_sync(v19, v50);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v20 = mach_continuous_time();
        v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ME Ping response\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 68, "Ga22_17HandleCommPingRsp");
        LbsOsaTrace_WriteLog(0x18u, __str, v21, 5, 1);
      }
    }

    else if (v56)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v22 = mach_continuous_time();
        v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Unknown CPU Type\n", (*&g_MacClockTicksToMsRelation * v22), "ADP", 69, "Ga22_17HandleCommPingRsp", 515);
        LbsOsaTrace_WriteLog(0x18u, __str, v23, 0, 1);
      }
    }

    else
    {
      v55 = 1;
      v7 = a1[9];
      v51[0] = MEMORY[0x29EDCA5F8];
      v51[1] = 0x40000000;
      v51[2] = ___ZN8gnssTest19GnssAdaptDeviceTest24Ga22_17HandleCommPingRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke_2;
      v51[3] = &unk_29EF6AF58;
      v51[4] = &v58;
      v51[5] = a1;
      dispatch_sync(v7, v51);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CP Ping response\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "Ga22_17HandleCommPingRsp");
        LbsOsaTrace_WriteLog(0x18u, __str, v9, 5, 1);
      }
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v24 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v25 = (v59 + 5);
      if (*(v59 + 63) < 0)
      {
        v25 = *v25;
      }

      v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FW Ver Resp,%s\n", v24, "ADP", 68, "Ga22_17HandleCommPingRsp", v25);
      LbsOsaTrace_WriteLog(0x18u, __str, v26, 5, 1);
    }

    if (*(v53 + 24) == 1 && v56 == 1)
    {
      *(v53 + 24) = 0;
      v66 = 0;
      v67 = &v66;
      v68 = 0x4802000000;
      v69 = __Block_byref_object_copy__53;
      v70 = __Block_byref_object_dispose__54;
      v71[3] = 0;
      v27 = a1[9];
      v49[0] = MEMORY[0x29EDCA5F8];
      v49[1] = 0x40000000;
      v49[2] = ___ZN8gnssTest19GnssAdaptDeviceTest24Ga22_17HandleCommPingRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke_55;
      v49[3] = &unk_29EF6AFA8;
      v49[4] = &v66;
      v49[5] = a1;
      dispatch_sync(v27, v49);
      v28 = v67[8];
      if (v28)
      {
        v29 = a1[8];
        v48[0] = MEMORY[0x29EDCA5F8];
        v48[1] = 0x40000000;
        v48[2] = ___ZN8gnssTest19GnssAdaptDeviceTest24Ga22_17HandleCommPingRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke_2_58;
        v48[3] = &unk_29EF6AFD0;
        v48[4] = &v66;
        v48[5] = &v58;
        dispatch_async(v29, v48);
        v30 = a1[9];
        *__str = MEMORY[0x29EDCA5F8];
        v73 = 0x40000000;
        v74 = ___ZN8gnssTest19GnssAdaptDeviceTest20Ga22_33SetStatusCodeEN4gnss6ResultE_block_invoke;
        v75 = &__block_descriptor_tmp_98_0;
        v76 = a1;
        v77 = 1;
        dispatch_sync(v30, __str);
      }

      else
      {
        v32 = a1[9];
        *__str = MEMORY[0x29EDCA5F8];
        v73 = 0x40000000;
        v74 = ___ZN8gnssTest19GnssAdaptDeviceTest20Ga22_33SetStatusCodeEN4gnss6ResultE_block_invoke;
        v75 = &__block_descriptor_tmp_98_0;
        v76 = a1;
        v77 = 0;
        dispatch_sync(v32, __str);
        if (!gnssOsa_SemRelease(a1[10]) && LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v33 = mach_continuous_time();
          v34 = *&g_MacClockTicksToMsRelation;
          v35 = __error();
          v36 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v34 * v33), "ADP", 87, "Ga22_17HandleCommPingRsp", 1542, *v35);
          LbsOsaTrace_WriteLog(0x18u, __str, v36, 2, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v37 = mach_continuous_time();
          v38 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Invalid Ver Report CB\n", (*&g_MacClockTicksToMsRelation * v37), "ADP", 69, "Ga22_17HandleCommPingRsp", 516);
          LbsOsaTrace_WriteLog(0x18u, __str, v38, 0, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v39 = mach_continuous_time();
          v40 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v39), "ADP", 68, "Ga22_17HandleCommPingRsp");
          LbsOsaTrace_WriteLog(0x18u, __str, v40, 5, 1);
        }
      }

      _Block_object_dispose(&v66, 8);
      std::__function::__value_func<void ()(std::string const&,std::string const&)>::~__value_func[abi:ne200100](v71);
      if (!v28)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v31 = a1[9];
      *__str = MEMORY[0x29EDCA5F8];
      v73 = 0x40000000;
      v74 = ___ZN8gnssTest19GnssAdaptDeviceTest20Ga22_33SetStatusCodeEN4gnss6ResultE_block_invoke;
      v75 = &__block_descriptor_tmp_98_0;
      v76 = a1;
      v77 = 8;
      dispatch_sync(v31, __str);
    }

    if (!gnssOsa_SemRelease(a1[10]) && LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v41 = mach_continuous_time();
      v42 = *&g_MacClockTicksToMsRelation;
      v43 = __error();
      v44 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v42 * v41), "ADP", 87, "Ga22_17HandleCommPingRsp", 1542, *v43);
      LbsOsaTrace_WriteLog(0x18u, __str, v44, 2, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v45 = mach_continuous_time();
      v46 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v45), "ADP", 68, "Ga22_17HandleCommPingRsp");
      LbsOsaTrace_WriteLog(0x18u, __str, v46, 5, 1);
    }

LABEL_41:
    _Block_object_dispose(&v52, 8);
    goto LABEL_42;
  }

  v10 = a1[9];
  *__str = MEMORY[0x29EDCA5F8];
  v73 = 0x40000000;
  v74 = ___ZN8gnssTest19GnssAdaptDeviceTest20Ga22_33SetStatusCodeEN4gnss6ResultE_block_invoke;
  v75 = &__block_descriptor_tmp_98_0;
  v76 = a1;
  v77 = 8;
  dispatch_sync(v10, __str);
  if (!gnssOsa_SemRelease(a1[10]) && LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = *&g_MacClockTicksToMsRelation;
    v13 = __error();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v12 * v11), "ADP", 87, "Ga22_17HandleCommPingRsp", 1542, *v13);
    LbsOsaTrace_WriteLog(0x18u, __str, v14, 2, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v15 = mach_continuous_time();
    v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Ping Rsp\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 69, "Ga22_17HandleCommPingRsp", 776);
    LbsOsaTrace_WriteLog(0x18u, __str, v16, 0, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v17 = mach_continuous_time();
    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 68, "Ga22_17HandleCommPingRsp");
    LbsOsaTrace_WriteLog(0x18u, __str, v18, 5, 1);
  }

LABEL_42:
  _Block_object_dispose(&v58, 8);
  if (SHIBYTE(v65) < 0)
  {
    operator delete(__p);
  }

  v47 = *MEMORY[0x29EDCA608];
}

void sub_299670B60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *__p, uint64_t a57, int a58, __int16 a59, char a60, char a61, char a62)
{
  _Block_object_dispose(&a62, 8);
  std::__function::__value_func<void ()(std::string const&,std::string const&)>::~__value_func[abi:ne200100](v62 + 40);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(&a51, 8);
  if (a61 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__43(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDCA608];
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void __Block_byref_object_dispose__44(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  if (*(a1 + 63) < 0)
  {
    v3 = *(a1 + 40);
    v4 = *MEMORY[0x29EDCA608];
    v5 = *MEMORY[0x29EDCA608];

    operator delete(v3);
  }

  else
  {
    v1 = *MEMORY[0x29EDCA608];
    v2 = *MEMORY[0x29EDCA608];
  }
}

std::string *___ZN8gnssTest19GnssAdaptDeviceTest24Ga22_17HandleCommPingRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 40);
  v2 = *MEMORY[0x29EDCA608];
  v3 = (*(*(a1 + 32) + 8) + 40);

  return std::string::operator=(v3, (v1 + 88));
}

std::string *___ZN8gnssTest19GnssAdaptDeviceTest24Ga22_17HandleCommPingRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke_2(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 40);
  result = std::string::operator=((v1 + 88), (*(*(a1 + 32) + 8) + 40));
  *(v1 + 138) = 1;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN8gnssTest19GnssAdaptDeviceTest24Ga22_17HandleCommPingRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke_3(uint64_t result)
{
  v3 = *MEMORY[0x29EDCA608];
  v1 = *(result + 40);
  *(*(*(result + 32) + 8) + 24) = *(v1 + 138);
  *(v1 + 138) = 0;
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __Block_byref_object_copy__53(uint64_t result, uint64_t a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = a2 + 64;
  v3 = *(a2 + 64);
  if (v3)
  {
    if (v3 == a2 + 40)
    {
      *(result + 64) = result + 40;
      result = (*(**v2 + 24))();
      goto LABEL_7;
    }

    *(result + 64) = v3;
  }

  else
  {
    v2 = result + 64;
  }

  *v2 = 0;
LABEL_7:
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299670EAC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t __Block_byref_object_dispose__54(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *MEMORY[0x29EDCA608];
  v2 = a1 + 40;

  return std::__function::__value_func<void ()(std::string const&,std::string const&)>::~__value_func[abi:ne200100](v2);
}

void *___ZN8gnssTest19GnssAdaptDeviceTest24Ga22_17HandleCommPingRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke_55(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 40);
  v2 = *MEMORY[0x29EDCA608];
  v3 = (*(*(a1 + 32) + 8) + 40);

  return std::function<void ()(std::string const&,std::string const&)>::operator=(v3, v1 + 216);
}

void ___ZN8gnssTest19GnssAdaptDeviceTest24Ga22_17HandleCommPingRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke_2_58(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v1 = *(*(a1 + 32) + 8);
  v2 = *(*(a1 + 40) + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, "NA");
  v3 = *(v1 + 64);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v3 + 48))(v3, v2 + 40, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = *MEMORY[0x29EDCA608];
}

uint64_t gnssTest::GnssAdaptDeviceTest::Ga22_18ValidatePowerMode(uint64_t a1, unsigned int a2)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a2 < 5)
  {
    if (a2 - 1 >= 3)
    {
      result = 1;
    }

    else
    {
      result = 7;
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PwrMode,%u\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 69, "Ga22_18ValidatePowerMode", 514, a2);
      LbsOsaTrace_WriteLog(0x18u, __str, v4, 0, 1);
    }

    result = 4;
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t gnssTest::GnssAdaptDeviceTest::Ga22_19TriggerPowerMode(NSObject **a1, unsigned int a2)
{
  v39 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 68, "Ga22_19TriggerPowerMode");
    LbsOsaTrace_WriteLog(0x18u, __str, v5, 5, 1);
  }

  v35 = 0;
  v36 = 0;
  v37 = 0;
  *__str = 0;
  gnssTest::GnssAdaptDeviceTest::Ga21_01GetPlatformType(a1, __str);
  if (!gnssTest::ZxFactoryHandler::Ga23_11BuildZxMePowerProdMsg(a1 + 140, &v35, a2, (*__str - 1) < 3) || v36 == v35)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v20 = mach_continuous_time();
      v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PwrMode\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 69, "Ga22_19TriggerPowerMode", 775);
      LbsOsaTrace_WriteLog(0x18u, __str, v21, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v22 = mach_continuous_time();
      v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v22), "ADP", 68, "Ga22_19TriggerPowerMode");
      LbsOsaTrace_WriteLog(0x18u, __str, v23, 5, 1);
    }

    StatusCode = 0;
  }

  else
  {
    memset(&v34, 0, sizeof(v34));
    v32 = 0;
    v33 = 0;
    __p = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v35, v36, v36 - v35);
    gnssTest::ZxHandler::Ga23_00GetZxBufAsStr(a1 + 140, &__p, &v34);
    if (__p)
    {
      v32 = __p;
      operator delete(__p);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v7 = &v34;
      if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v7 = v34.__r_.__value_.__r.__words[0];
      }

      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Size,%u,ZxReq,%s\n", v6, "ADP", 68, "Ga22_19TriggerPowerMode", v36 - v35, v7);
      LbsOsaTrace_WriteLog(0x18u, __str, v8, 5, 1);
    }

    v9 = a1[9];
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZN8gnssTest19GnssAdaptDeviceTest23Ga22_19TriggerPowerModeENS_9PowerModeE_block_invoke;
    block[3] = &__block_descriptor_tmp_63;
    block[4] = a1;
    v30 = a2;
    dispatch_sync(v9, block);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PowerTestState START\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 68, "Ga22_19TriggerPowerMode");
      LbsOsaTrace_WriteLog(0x18u, __str, v11, 5, 1);
    }

    gnssTest::GnssAdaptDeviceTest::Ga24_01SendDataToChip(a1, (v36 - v35), v35);
    if (gnssOsa_SemWaitTimeOut(a1[10], 0xC8u))
    {
      gnssTest::GnssAdaptDeviceTest::Ga22_27GnssStopFWTest(a1);
      v12 = a1[9];
      v28[0] = MEMORY[0x29EDCA5F8];
      v28[1] = 0x40000000;
      v28[2] = ___ZN8gnssTest19GnssAdaptDeviceTest23Ga22_19TriggerPowerModeENS_9PowerModeE_block_invoke_2;
      v28[3] = &__block_descriptor_tmp_65;
      v28[4] = a1;
      dispatch_sync(v12, v28);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v13 = mach_continuous_time();
        v14 = *&g_MacClockTicksToMsRelation;
        v15 = __error();
        v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v14 * v13), "ADP", 69, "Ga22_19TriggerPowerMode", 1543, *v15);
        LbsOsaTrace_WriteLog(0x18u, __str, v16, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v17 = mach_continuous_time();
        v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 68, "Ga22_19TriggerPowerMode");
        LbsOsaTrace_WriteLog(0x18u, __str, v18, 5, 1);
      }

      StatusCode = 6;
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v24 = mach_continuous_time();
        v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v24), "ADP", 68, "Ga22_19TriggerPowerMode");
        LbsOsaTrace_WriteLog(0x18u, __str, v25, 5, 1);
      }

      StatusCode = gnssTest::GnssAdaptDeviceTest::Ga22_34GetStatusCode(a1);
    }

    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  v26 = *MEMORY[0x29EDCA608];
  return StatusCode;
}

void sub_2996717B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a36)
  {
    operator delete(a36);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN8gnssTest19GnssAdaptDeviceTest23Ga22_19TriggerPowerModeENS_9PowerModeE_block_invoke(uint64_t result)
{
  v3 = *MEMORY[0x29EDCA608];
  v1 = *(result + 32);
  *(v1 + 132) = 256;
  *(v1 + 124) = *(result + 40);
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

void gnssTest::GnssAdaptDeviceTest::Ga22_27GnssStopFWTest(NSObject **this)
{
  v24 = *MEMORY[0x29EDCA608];
  v20 = 0;
  v21 = 0;
  v22 = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "ADP", 68, "Ga22_27GnssStopFWTest");
    LbsOsaTrace_WriteLog(0x18u, __str, v3, 5, 1);
  }

  if (gnssTest::ZxFactoryHandler::Ga23_24BuildZxStopProdMsg(this + 140, &v20) && v21 != v20)
  {
    memset(&v19, 0, sizeof(v19));
    v17 = 0;
    v18 = 0;
    __p = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v20, v21, v21 - v20);
    gnssTest::ZxHandler::Ga23_00GetZxBufAsStr(this + 140, &__p, &v19);
    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v5 = &v19;
      if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v5 = v19.__r_.__value_.__r.__words[0];
      }

      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Size,%u,ZxReq,%s\n", v4, "ADP", 68, "Ga22_27GnssStopFWTest", v21 - v20, v5);
      LbsOsaTrace_WriteLog(0x18u, __str, v6, 5, 1);
    }

    gnssTest::GnssAdaptDeviceTest::Ga24_01SendDataToChip(this, (v21 - v20), v20);
    if (gnssOsa_SemWaitTimeOut(this[10], 0x7D0u))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v7 = mach_continuous_time();
        v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx StopTest\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "Ga22_27GnssStopFWTest", 1543);
        LbsOsaTrace_WriteLog(0x18u, __str, v8, 0, 1);
      }

      if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
      {
        goto LABEL_22;
      }
    }

    else if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
      goto LABEL_22;
    }

    bzero(__str, 0x410uLL);
    v13 = mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 68, "Ga22_27GnssStopFWTest");
    LbsOsaTrace_WriteLog(0x18u, __str, v14, 5, 1);
LABEL_22:
    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    goto LABEL_24;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Stop Zx mesg\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 69, "Ga22_27GnssStopFWTest", 775);
    LbsOsaTrace_WriteLog(0x18u, __str, v10, 0, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 68, "Ga22_27GnssStopFWTest");
    LbsOsaTrace_WriteLog(0x18u, __str, v12, 5, 1);
  }

LABEL_24:
  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  v15 = *MEMORY[0x29EDCA608];
}

void sub_299671D4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a24)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN8gnssTest19GnssAdaptDeviceTest23Ga22_19TriggerPowerModeENS_9PowerModeE_block_invoke_2(uint64_t result)
{
  v2 = *MEMORY[0x29EDCA608];
  *(*(result + 32) + 137) = 0;
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

void gnssTest::GnssAdaptDeviceTest::Ga22_20HandleMePowerModeRsp(NSObject **a1, uint64_t *a2)
{
  v58 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 68, "Ga22_20HandleMePowerModeRsp");
    LbsOsaTrace_WriteLog(0x18u, __str, v5, 5, 1);
  }

  memset(&v51, 0, sizeof(v51));
  v49 = 0;
  v50 = 0;
  __p = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a2, a2[1], a2[1] - *a2);
  gnssTest::ZxHandler::Ga23_00GetZxBufAsStr(a1 + 140, &__p, &v51);
  if (__p)
  {
    v49 = __p;
    operator delete(__p);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v7 = &v51;
    if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v7 = v51.__r_.__value_.__r.__words[0];
    }

    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Size,%u,ZxRsp,%s\n", v6, "ADP", 68, "Ga22_20HandleMePowerModeRsp", *(a2 + 2) - *a2, v7);
    LbsOsaTrace_WriteLog(0x18u, __str, v8, 5, 1);
  }

  v47 = 0;
  *__str = 0;
  gnssTest::GnssAdaptDeviceTest::Ga21_01GetPlatformType(a1, __str);
  if (gnssTest::ZxFactoryHandler::Ga23_12ParseZxMePowerProdMsg(a1 + 140, a2, &v47, (*__str - 1) < 3))
  {
    v43 = 0;
    v44 = &v43;
    v45 = 0x2000000000;
    v46 = 0;
    v9 = a1[9];
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZN8gnssTest19GnssAdaptDeviceTest27Ga22_20HandleMePowerModeRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke;
    block[3] = &unk_29EF6B038;
    block[4] = &v43;
    block[5] = a1;
    v42 = v47;
    dispatch_sync(v9, block);
    if (v47 == *(v44 + 6))
    {
      if (v47)
      {
        if (v47 == 4 && LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v10 = mach_continuous_time();
          v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CurPowState LP entered\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 73, "Ga22_20HandleMePowerModeRsp");
          LbsOsaTrace_WriteLog(0x18u, __str, v11, 4, 1);
        }
      }

      else
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v25 = mach_continuous_time();
          v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CurPowState Normal\n", (*&g_MacClockTicksToMsRelation * v25), "ADP", 73, "Ga22_20HandleMePowerModeRsp");
          LbsOsaTrace_WriteLog(0x18u, __str, v26, 4, 1);
        }

        v27 = a1[9];
        v40[0] = MEMORY[0x29EDCA5F8];
        v40[1] = 0x40000000;
        v40[2] = ___ZN8gnssTest19GnssAdaptDeviceTest27Ga22_20HandleMePowerModeRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke_2;
        v40[3] = &__block_descriptor_tmp_70;
        v40[4] = a1;
        dispatch_sync(v27, v40);
      }

      v28 = a1[9];
      *__str = MEMORY[0x29EDCA5F8];
      v53 = 0x40000000;
      v54 = ___ZN8gnssTest19GnssAdaptDeviceTest20Ga22_33SetStatusCodeEN4gnss6ResultE_block_invoke;
      v55 = &__block_descriptor_tmp_98_0;
      v56 = a1;
      v57 = 1;
      dispatch_sync(v28, __str);
      if (!gnssOsa_SemRelease(a1[10]))
      {
        v31 = a1[9];
        *__str = MEMORY[0x29EDCA5F8];
        v53 = 0x40000000;
        v54 = ___ZN8gnssTest19GnssAdaptDeviceTest20Ga22_33SetStatusCodeEN4gnss6ResultE_block_invoke;
        v55 = &__block_descriptor_tmp_98_0;
        v56 = a1;
        v57 = 8;
        dispatch_sync(v31, __str);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v32 = mach_continuous_time();
          v33 = *&g_MacClockTicksToMsRelation;
          v34 = __error();
          v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v33 * v32), "ADP", 87, "Ga22_20HandleMePowerModeRsp", 1542, *v34);
          LbsOsaTrace_WriteLog(0x18u, __str, v35, 2, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v36 = mach_continuous_time();
          v37 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v36), "ADP", 68, "Ga22_20HandleMePowerModeRsp");
          LbsOsaTrace_WriteLog(0x18u, __str, v37, 5, 1);
        }

        goto LABEL_35;
      }
    }

    else
    {
      v21 = a1[9];
      v39[0] = MEMORY[0x29EDCA5F8];
      v39[1] = 0x40000000;
      v39[2] = ___ZN8gnssTest19GnssAdaptDeviceTest27Ga22_20HandleMePowerModeRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke_3;
      v39[3] = &__block_descriptor_tmp_71_0;
      v39[4] = a1;
      dispatch_sync(v21, v39);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v22 = mach_continuous_time();
        v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PwrModeRsp\n", (*&g_MacClockTicksToMsRelation * v22), "ADP", 69, "Ga22_20HandleMePowerModeRsp", 1302);
        LbsOsaTrace_WriteLog(0x18u, __str, v23, 0, 1);
      }

      v24 = a1[9];
      *__str = MEMORY[0x29EDCA5F8];
      v53 = 0x40000000;
      v54 = ___ZN8gnssTest19GnssAdaptDeviceTest20Ga22_33SetStatusCodeEN4gnss6ResultE_block_invoke;
      v55 = &__block_descriptor_tmp_98_0;
      v56 = a1;
      v57 = 8;
      dispatch_sync(v24, __str);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v29 = mach_continuous_time();
      v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v29), "ADP", 68, "Ga22_20HandleMePowerModeRsp");
      LbsOsaTrace_WriteLog(0x18u, __str, v30, 5, 1);
    }

LABEL_35:
    _Block_object_dispose(&v43, 8);
    goto LABEL_36;
  }

  v12 = a1[9];
  *__str = MEMORY[0x29EDCA5F8];
  v53 = 0x40000000;
  v54 = ___ZN8gnssTest19GnssAdaptDeviceTest20Ga22_33SetStatusCodeEN4gnss6ResultE_block_invoke;
  v55 = &__block_descriptor_tmp_98_0;
  v56 = a1;
  v57 = 8;
  dispatch_sync(v12, __str);
  if (!gnssOsa_SemRelease(a1[10]) && LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v13 = mach_continuous_time();
    v14 = *&g_MacClockTicksToMsRelation;
    v15 = __error();
    v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v14 * v13), "ADP", 87, "Ga22_20HandleMePowerModeRsp", 1542, *v15);
    LbsOsaTrace_WriteLog(0x18u, __str, v16, 2, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v17 = mach_continuous_time();
    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Parse Pwr Mode Rsp\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 69, "Ga22_20HandleMePowerModeRsp", 776);
    LbsOsaTrace_WriteLog(0x18u, __str, v18, 0, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v19 = mach_continuous_time();
    v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 68, "Ga22_20HandleMePowerModeRsp");
    LbsOsaTrace_WriteLog(0x18u, __str, v20, 5, 1);
  }

LABEL_36:
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  v38 = *MEMORY[0x29EDCA608];
}

void sub_2996727AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  _Block_object_dispose(&a33, 8);
  if (a46 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZN8gnssTest19GnssAdaptDeviceTest27Ga22_20HandleMePowerModeRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke(uint64_t result)
{
  v3 = *MEMORY[0x29EDCA608];
  v1 = *(result + 40);
  *(*(*(result + 32) + 8) + 24) = *(v1 + 124);
  *(v1 + 128) = *(result + 48);
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN8gnssTest19GnssAdaptDeviceTest27Ga22_20HandleMePowerModeRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke_2(uint64_t result)
{
  v2 = *MEMORY[0x29EDCA608];
  *(*(result + 32) + 137) = 0;
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN8gnssTest19GnssAdaptDeviceTest27Ga22_20HandleMePowerModeRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke_3(uint64_t result)
{
  v2 = *MEMORY[0x29EDCA608];
  *(*(result + 32) + 137) = 0;
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t gnssTest::GnssAdaptDeviceTest::Ga22_21TriggerApSignalGpio(gnssTest::GnssAdaptDeviceTest *this, int a2)
{
  v50 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 68, "Ga22_21TriggerApSignalGpio");
    LbsOsaTrace_WriteLog(0x18u, __str, v5, 5, 1);
  }

  v6 = *(this + 9);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN8gnssTest19GnssAdaptDeviceTest26Ga22_21TriggerApSignalGpioEj_block_invoke;
  block[3] = &__block_descriptor_tmp_73;
  block[4] = this;
  dispatch_sync(v6, block);
  v45 = 0;
  v46 = 0;
  v47 = 0;
  if (!gnssTest::ZxFactoryHandler::Ga23_22BuildZxApSignalGpioProdMsg(this + 140, &v45, 100) || v46 == v45)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GPIO Enc\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 69, "Ga22_21TriggerApSignalGpio", 775);
      LbsOsaTrace_WriteLog(0x18u, __str, v13, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 68, "Ga22_21TriggerApSignalGpio");
      LbsOsaTrace_WriteLog(0x18u, __str, v15, 5, 1);
    }

    v16 = 0;
  }

  else
  {
    memset(&v44, 0, sizeof(v44));
    v42 = 0;
    v43 = 0;
    __p = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v45, v46, v46 - v45);
    gnssTest::ZxHandler::Ga23_00GetZxBufAsStr(this + 140, &__p, &v44);
    if (__p)
    {
      v42 = __p;
      operator delete(__p);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v8 = &v44;
      if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v8 = v44.__r_.__value_.__r.__words[0];
      }

      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TimeoutMs,%u,Size,%u,ZxReq,%s\n", v7, "ADP", 68, "Ga22_21TriggerApSignalGpio", a2, v46 - v45, v8);
      LbsOsaTrace_WriteLog(0x18u, __str, v9, 5, 1);
    }

    if (a2 < 200)
    {
      v10 = 0;
LABEL_23:
      v37 = 0;
      v38 = &v37;
      v39 = 0x2000000000;
      v40 = 0;
      v17 = *(this + 9);
      v36[0] = MEMORY[0x29EDCA5F8];
      v36[1] = 0x40000000;
      v36[2] = ___ZN8gnssTest19GnssAdaptDeviceTest26Ga22_21TriggerApSignalGpioEj_block_invoke_2;
      v36[3] = &unk_29EF6B0C0;
      v36[4] = &v37;
      v36[5] = this;
      dispatch_sync(v17, v36);
      if (v10 == *(v38 + 6))
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v18 = mach_continuous_time();
          v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 68, "Ga22_21TriggerApSignalGpio");
          LbsOsaTrace_WriteLog(0x18u, __str, v19, 5, 1);
        }

        v16 = 1;
      }

      else
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v20 = mach_continuous_time();
          v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Wake cnt mismatch WakeReq,%u,ApWakeEvt,%u\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 69, "Ga22_21TriggerApSignalGpio", 770, v10, *(v38 + 6));
          LbsOsaTrace_WriteLog(0x18u, __str, v21, 0, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v22 = mach_continuous_time();
          v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v22), "ADP", 68, "Ga22_21TriggerApSignalGpio");
          LbsOsaTrace_WriteLog(0x18u, __str, v23, 5, 1);
        }

        v16 = 8;
      }

      _Block_object_dispose(&v37, 8);
    }

    else
    {
      v10 = a2 / 200;
      v11 = v10;
      while (1)
      {
        gnssTest::GnssAdaptDeviceTest::Ga24_01SendDataToChip(this, (v46 - v45), v45);
        if (gnssOsa_SemWaitTimeOut(*(this + 10), 0xC8u))
        {
          break;
        }

        if (gnssTest::GnssAdaptDeviceTest::Ga22_34GetStatusCode(this) != 1)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v30 = mach_continuous_time();
            v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GPIO Rsp Fail\n", (*&g_MacClockTicksToMsRelation * v30), "ADP", 69, "Ga22_21TriggerApSignalGpio", 257);
            LbsOsaTrace_WriteLog(0x18u, __str, v31, 0, 1);
          }

          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v32 = mach_continuous_time();
            v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v32), "ADP", 68, "Ga22_21TriggerApSignalGpio");
            LbsOsaTrace_WriteLog(0x18u, __str, v33, 5, 1);
          }

          v16 = 8;
          goto LABEL_43;
        }

        if (!--v11)
        {
          goto LABEL_23;
        }
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v24 = mach_continuous_time();
        v25 = *&g_MacClockTicksToMsRelation;
        v26 = __error();
        v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v25 * v24), "ADP", 69, "Ga22_21TriggerApSignalGpio", 1543, *v26);
        LbsOsaTrace_WriteLog(0x18u, __str, v27, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v28 = mach_continuous_time();
        v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v28), "ADP", 68, "Ga22_21TriggerApSignalGpio");
        LbsOsaTrace_WriteLog(0x18u, __str, v29, 5, 1);
      }

      v16 = 6;
    }

LABEL_43:
    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }
  }

  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  v34 = *MEMORY[0x29EDCA608];
  return v16;
}

void sub_299673180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a35)
  {
    operator delete(a35);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN8gnssTest19GnssAdaptDeviceTest26Ga22_21TriggerApSignalGpioEj_block_invoke(uint64_t result)
{
  v2 = *MEMORY[0x29EDCA608];
  *(*(result + 32) + 112) = 0;
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN8gnssTest19GnssAdaptDeviceTest26Ga22_21TriggerApSignalGpioEj_block_invoke_2(uint64_t result)
{
  v2 = *MEMORY[0x29EDCA608];
  *(*(*(result + 32) + 8) + 24) = *(*(result + 40) + 112);
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

void gnssTest::GnssAdaptDeviceTest::Ga22_22HandleApSignalGpioRsp(uint64_t a1, uint64_t *a2)
{
  v34 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 68, "Ga22_22HandleApSignalGpioRsp");
    LbsOsaTrace_WriteLog(0x18u, __str, v5, 5, 1);
  }

  memset(&v27, 0, sizeof(v27));
  v25 = 0;
  v26 = 0;
  __p = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a2, a2[1], a2[1] - *a2);
  gnssTest::ZxHandler::Ga23_00GetZxBufAsStr(a1 + 140, &__p, &v27);
  if (__p)
  {
    v25 = __p;
    operator delete(__p);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v7 = &v27;
    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v7 = v27.__r_.__value_.__r.__words[0];
    }

    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Size,%u,ZxRsp,%s\n", v6, "ADP", 68, "Ga22_22HandleApSignalGpioRsp", *(a2 + 2) - *a2, v7);
    LbsOsaTrace_WriteLog(0x18u, __str, v8, 5, 1);
  }

  if (gnssTest::ZxFactoryHandler::Ga23_23ParseZxApSignalGpioProdMsg((a1 + 140), a2))
  {
    v9 = *(a1 + 72);
    *__str = MEMORY[0x29EDCA5F8];
    v29 = 0x40000000;
    v30 = ___ZN8gnssTest19GnssAdaptDeviceTest20Ga22_33SetStatusCodeEN4gnss6ResultE_block_invoke;
    v31 = &__block_descriptor_tmp_98_0;
    v32 = a1;
    v33 = 1;
    dispatch_sync(v9, __str);
    if (!gnssOsa_SemRelease(*(a1 + 80)) && LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = *&g_MacClockTicksToMsRelation;
      v12 = __error();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v11 * v10), "ADP", 87, "Ga22_22HandleApSignalGpioRsp", 1542, *v12);
      LbsOsaTrace_WriteLog(0x18u, __str, v13, 2, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
LABEL_21:
      bzero(__str, 0x410uLL);
      v21 = mach_continuous_time();
      v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v21), "ADP", 68, "Ga22_22HandleApSignalGpioRsp");
      LbsOsaTrace_WriteLog(0x18u, __str, v22, 5, 1);
    }
  }

  else
  {
    v14 = *(a1 + 72);
    *__str = MEMORY[0x29EDCA5F8];
    v29 = 0x40000000;
    v30 = ___ZN8gnssTest19GnssAdaptDeviceTest20Ga22_33SetStatusCodeEN4gnss6ResultE_block_invoke;
    v31 = &__block_descriptor_tmp_98_0;
    v32 = a1;
    v33 = 8;
    dispatch_sync(v14, __str);
    if (!gnssOsa_SemRelease(*(a1 + 80)) && LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = *&g_MacClockTicksToMsRelation;
      v17 = __error();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v16 * v15), "ADP", 87, "Ga22_22HandleApSignalGpioRsp", 1542, *v17);
      LbsOsaTrace_WriteLog(0x18u, __str, v18, 2, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v19 = mach_continuous_time();
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx AP Sig GPIO\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 69, "Ga22_22HandleApSignalGpioRsp", 776);
      LbsOsaTrace_WriteLog(0x18u, __str, v20, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
      goto LABEL_21;
    }
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  v23 = *MEMORY[0x29EDCA608];
}

void sub_299673848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void gnssTest::GnssAdaptDeviceTest::Ga22_23FactoryGpioNotif (gnssTest::GnssAdaptDeviceTest *a1)
{
  v1 = a1;
  v13 = *MEMORY[0x29EDCA608];
  GnssAdaptDeviceTestInstance = gnssTest::GnssAdaptDeviceTest::Ga21_06GetGnssAdaptDeviceTestInstance(a1);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Notif event,%u\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 73, "Ga22_24HandleGpioNotif", v1);
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 4, 1);
  }

  v5 = *(GnssAdaptDeviceTestInstance + 56);
  *__str = MEMORY[0x29EDCA5F8];
  v8 = 0x40000000;
  v9 = ___ZN8gnssTest19GnssAdaptDeviceTest22Ga22_24HandleGpioNotifEN7GnssHal16GpioNotificationE_block_invoke;
  v10 = &__block_descriptor_tmp_84;
  v11 = GnssAdaptDeviceTestInstance;
  v12 = v1;
  dispatch_async(v5, __str);
  v6 = *MEMORY[0x29EDCA608];
}

uint64_t ___ZN8gnssTest19GnssAdaptDeviceTest22Ga22_24HandleGpioNotifEN7GnssHal16GpioNotificationE_block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "Ga22_24HandleGpioNotif_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  v5 = *(a1 + 40);
  if ((v5 - 2) >= 4 && v5 != 0)
  {
    if (v5 == 1)
    {
      v11 = *(v2 + 72);
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 0x40000000;
      block[2] = ___ZN8gnssTest19GnssAdaptDeviceTest22Ga22_24HandleGpioNotifEN7GnssHal16GpioNotificationE_block_invoke_2;
      block[3] = &__block_descriptor_tmp_82;
      block[4] = v2;
      v15 = 1;
      dispatch_sync(v11, block);
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GpioNotif,%u\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 87, "Ga22_24HandleGpioNotif_block_invoke", 770, *(a1 + 40));
      LbsOsaTrace_WriteLog(0x18u, __str, v13, 2, 1);
    }
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "Ga22_24HandleGpioNotif_block_invoke");
    result = LbsOsaTrace_WriteLog(0x18u, __str, v9, 5, 1);
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN8gnssTest19GnssAdaptDeviceTest22Ga22_24HandleGpioNotifEN7GnssHal16GpioNotificationE_block_invoke_2(uint64_t result)
{
  v7 = *MEMORY[0x29EDCA608];
  v1 = *(result + 32);
  if (*(v1 + 133) == 1)
  {
    v2 = result;
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Pwr Mode GPIO event,%u\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 73, "Ga22_24HandleGpioNotif_block_invoke_2", *(v2 + 40));
      result = LbsOsaTrace_WriteLog(0x18u, __str, v4, 4, 1);
    }

    *(v1 + 132) = 1;
  }

  else
  {
    ++*(v1 + 112);
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t gnssTest::GnssAdaptDeviceTest::Ga22_25TriggerTimeMark(gnssTest::GnssAdaptDeviceTest *this, unsigned int a2)
{
  v38 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 68, "Ga22_25TriggerTimeMark");
    LbsOsaTrace_WriteLog(0x18u, __str, v5, 5, 1);
  }

  v29 = 0;
  v30 = 0;
  v31 = 0;
  if (!gnssTest::ZxFactoryHandler::Ga23_24BuildZxTimeMarkProdMsg(this + 140, &v29) || v30 == v29)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v17 = mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Timemark\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 69, "Ga22_25TriggerTimeMark", 775);
      LbsOsaTrace_WriteLog(0x18u, __str, v18, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v19 = mach_continuous_time();
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 68, "Ga22_25TriggerTimeMark");
      LbsOsaTrace_WriteLog(0x18u, __str, v20, 5, 1);
    }

    StatusCode = 8;
  }

  else
  {
    memset(&v28, 0, sizeof(v28));
    v26 = 0;
    v27 = 0;
    __p = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v29, v30, v30 - v29);
    gnssTest::ZxHandler::Ga23_00GetZxBufAsStr(this + 140, &__p, &v28);
    if (__p)
    {
      v26 = __p;
      operator delete(__p);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v7 = &v28;
      if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v7 = v28.__r_.__value_.__r.__words[0];
      }

      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Size,%u,ZxReq,%s\n", v6, "ADP", 68, "Ga22_25TriggerTimeMark", v30 - v29, v7);
      LbsOsaTrace_WriteLog(0x18u, __str, v8, 5, 1);
    }

    v9 = *(this + 9);
    *__str = MEMORY[0x29EDCA5F8];
    v33 = 0x40000000;
    v34 = ___ZN8gnssTest19GnssAdaptDeviceTest27Ga22_35UpdateTimeMarkStatusEb_block_invoke;
    v35 = &__block_descriptor_tmp_100_0;
    v36 = this;
    v37 = 0;
    dispatch_sync(v9, __str);
    gnssTest::GnssAdaptDeviceTest::Ga24_01SendDataToChip(this, (v30 - v29), v29);
    if (gnssOsa_SemWaitTimeOut(*(this + 10), a2))
    {
      gnssTest::GnssAdaptDeviceTest::Ga22_27GnssStopFWTest(this);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = *&g_MacClockTicksToMsRelation;
        v12 = __error();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v11 * v10), "ADP", 69, "Ga22_25TriggerTimeMark", 1543, *v12);
        LbsOsaTrace_WriteLog(0x18u, __str, v13, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 68, "Ga22_25TriggerTimeMark");
        LbsOsaTrace_WriteLog(0x18u, __str, v15, 5, 1);
      }

      StatusCode = 6;
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v21 = mach_continuous_time();
        v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v21), "ADP", 68, "Ga22_25TriggerTimeMark");
        LbsOsaTrace_WriteLog(0x18u, __str, v22, 5, 1);
      }

      StatusCode = gnssTest::GnssAdaptDeviceTest::Ga22_34GetStatusCode(this);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }
  }

  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  v23 = *MEMORY[0x29EDCA608];
  return StatusCode;
}

void sub_2996742CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a24)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

void gnssTest::GnssAdaptDeviceTest::Ga22_26HandleTimeMarkRsp(NSObject **a1, uint64_t *a2)
{
  v77 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 68, "Ga22_26HandleTimeMarkRsp");
    LbsOsaTrace_WriteLog(0x18u, __str, v5, 5, 1);
  }

  v70 = 0;
  v69 = 0;
  if (gnssTest::ZxFactoryHandler::Ga23_25ParseZxTimeMarkProdMsg(a1 + 140, a2, &v70, &v69))
  {
    memset(&v67, 0, sizeof(v67));
    v65 = 0;
    v66 = 0;
    __p = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a2, a2[1], a2[1] - *a2);
    gnssTest::ZxHandler::Ga23_00GetZxBufAsStr(a1 + 140, &__p, &v67);
    if (__p)
    {
      v65 = __p;
      operator delete(__p);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v7 = &v67;
      if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v7 = v67.__r_.__value_.__r.__words[0];
      }

      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TTick,%u,SubMsCount,%u,Size,%u,ZxRsp,%s\n", v6, "ADP", 73, "Ga22_26HandleTimeMarkRsp", v70, v69, *(a2 + 2) - *a2, v7);
      LbsOsaTrace_WriteLog(0x18u, __str, v8, 4, 1);
    }

    v60 = 0;
    v61 = &v60;
    v62 = 0x2000000000;
    v63 = 0;
    v9 = a1[9];
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZN8gnssTest19GnssAdaptDeviceTest24Ga22_26HandleTimeMarkRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke_2;
    block[3] = &unk_29EF6B148;
    block[4] = &v60;
    block[5] = a1;
    dispatch_sync(v9, block);
    if (v61[3])
    {
      v10 = a1[6];
      v56[0] = MEMORY[0x29EDCA5F8];
      v56[1] = 0x40000000;
      v56[2] = ___ZN8gnssTest19GnssAdaptDeviceTest24Ga22_26HandleTimeMarkRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke_5;
      v56[3] = &__block_descriptor_tmp_94;
      v56[4] = a1;
      dispatch_async(v10, v56);
      v11 = a1[9];
      *__str = MEMORY[0x29EDCA5F8];
      v72 = 0x40000000;
      v73 = ___ZN8gnssTest19GnssAdaptDeviceTest27Ga22_35UpdateTimeMarkStatusEb_block_invoke;
      v74 = &__block_descriptor_tmp_100_0;
      v75 = a1;
      LOBYTE(v76) = 0;
      dispatch_sync(v11, __str);
      v12 = a1[9];
      *__str = MEMORY[0x29EDCA5F8];
      v72 = 0x40000000;
      v73 = ___ZN8gnssTest19GnssAdaptDeviceTest20Ga22_33SetStatusCodeEN4gnss6ResultE_block_invoke;
      v74 = &__block_descriptor_tmp_98_0;
      v75 = a1;
      v76 = 1;
      dispatch_sync(v12, __str);
      if (!gnssOsa_SemRelease(a1[10]) && LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v13 = mach_continuous_time();
        v14 = *&g_MacClockTicksToMsRelation;
        v15 = __error();
        v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v14 * v13), "ADP", 87, "Ga22_26HandleTimeMarkRsp", 1542, *v15);
        LbsOsaTrace_WriteLog(0x18u, __str, v16, 2, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v17 = mach_continuous_time();
        v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TimeMark Success\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 68, "Ga22_26HandleTimeMarkRsp");
        LbsOsaTrace_WriteLog(0x18u, __str, v18, 5, 1);
      }
    }

    else
    {
      if (v69 && v70)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v29 = mach_continuous_time();
          v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TimeMark failed\n", (*&g_MacClockTicksToMsRelation * v29), "ADP", 68, "Ga22_26HandleTimeMarkRsp");
          LbsOsaTrace_WriteLog(0x18u, __str, v30, 5, 1);
        }

        v31 = a1[6];
        v58[0] = MEMORY[0x29EDCA5F8];
        v58[1] = 0x40000000;
        v58[2] = ___ZN8gnssTest19GnssAdaptDeviceTest24Ga22_26HandleTimeMarkRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke_3;
        v58[3] = &__block_descriptor_tmp_91;
        v58[4] = a1;
        dispatch_async(v31, v58);
        v32 = a1[9];
        *__str = MEMORY[0x29EDCA5F8];
        v72 = 0x40000000;
        v73 = ___ZN8gnssTest19GnssAdaptDeviceTest20Ga22_33SetStatusCodeEN4gnss6ResultE_block_invoke;
        v74 = &__block_descriptor_tmp_98_0;
        v75 = a1;
        v76 = 8;
        dispatch_sync(v32, __str);
        if (!gnssOsa_SemRelease(a1[10]) && LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v33 = mach_continuous_time();
          v34 = *&g_MacClockTicksToMsRelation;
          v35 = __error();
          v36 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v34 * v33), "ADP", 87, "Ga22_26HandleTimeMarkRsp", 1542, *v35);
          LbsOsaTrace_WriteLog(0x18u, __str, v36, 2, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v37 = mach_continuous_time();
          v38 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx TimemarkRsp\n", (*&g_MacClockTicksToMsRelation * v37), "ADP", 69, "Ga22_26HandleTimeMarkRsp", 776);
          LbsOsaTrace_WriteLog(0x18u, __str, v38, 0, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v39 = mach_continuous_time();
          v40 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v39), "ADP", 68, "Ga22_26HandleTimeMarkRsp");
          LbsOsaTrace_WriteLog(0x18u, __str, v40, 5, 1);
        }

        goto LABEL_37;
      }

      v41 = a1[9];
      *__str = MEMORY[0x29EDCA5F8];
      v72 = 0x40000000;
      v73 = ___ZN8gnssTest19GnssAdaptDeviceTest27Ga22_35UpdateTimeMarkStatusEb_block_invoke;
      v74 = &__block_descriptor_tmp_100_0;
      v75 = a1;
      LOBYTE(v76) = 1;
      dispatch_sync(v41, __str);
      if ((Hal25_TriggerTimeMarkStrobe(0) & 1) == 0)
      {
        v45 = a1[6];
        v57[0] = MEMORY[0x29EDCA5F8];
        v57[1] = 0x40000000;
        v57[2] = ___ZN8gnssTest19GnssAdaptDeviceTest24Ga22_26HandleTimeMarkRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke_4;
        v57[3] = &__block_descriptor_tmp_92;
        v57[4] = a1;
        dispatch_async(v45, v57);
        v46 = a1[9];
        *__str = MEMORY[0x29EDCA5F8];
        v72 = 0x40000000;
        v73 = ___ZN8gnssTest19GnssAdaptDeviceTest27Ga22_35UpdateTimeMarkStatusEb_block_invoke;
        v74 = &__block_descriptor_tmp_100_0;
        v75 = a1;
        LOBYTE(v76) = 0;
        dispatch_sync(v46, __str);
        v47 = a1[9];
        *__str = MEMORY[0x29EDCA5F8];
        v72 = 0x40000000;
        v73 = ___ZN8gnssTest19GnssAdaptDeviceTest20Ga22_33SetStatusCodeEN4gnss6ResultE_block_invoke;
        v74 = &__block_descriptor_tmp_98_0;
        v75 = a1;
        v76 = 8;
        dispatch_sync(v47, __str);
        if (!gnssOsa_SemRelease(a1[10]) && LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v48 = mach_continuous_time();
          v49 = *&g_MacClockTicksToMsRelation;
          v50 = __error();
          v51 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v49 * v48), "ADP", 87, "Ga22_26HandleTimeMarkRsp", 1542, *v50);
          LbsOsaTrace_WriteLog(0x18u, __str, v51, 2, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v52 = mach_continuous_time();
          v53 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Timemark Hal Trigger\n", (*&g_MacClockTicksToMsRelation * v52), "ADP", 69, "Ga22_26HandleTimeMarkRsp", 776);
          LbsOsaTrace_WriteLog(0x18u, __str, v53, 0, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v54 = mach_continuous_time();
          v55 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v54), "ADP", 68, "Ga22_26HandleTimeMarkRsp");
          LbsOsaTrace_WriteLog(0x18u, __str, v55, 5, 1);
        }

        goto LABEL_37;
      }
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v42 = mach_continuous_time();
      v43 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v42), "ADP", 68, "Ga22_26HandleTimeMarkRsp");
      LbsOsaTrace_WriteLog(0x18u, __str, v43, 5, 1);
    }

LABEL_37:
    _Block_object_dispose(&v60, 8);
    if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v67.__r_.__value_.__l.__data_);
    }

    goto LABEL_39;
  }

  v19 = a1[6];
  v68[0] = MEMORY[0x29EDCA5F8];
  v68[1] = 0x40000000;
  v68[2] = ___ZN8gnssTest19GnssAdaptDeviceTest24Ga22_26HandleTimeMarkRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke;
  v68[3] = &__block_descriptor_tmp_86;
  v68[4] = a1;
  dispatch_async(v19, v68);
  v20 = a1[9];
  *__str = MEMORY[0x29EDCA5F8];
  v72 = 0x40000000;
  v73 = ___ZN8gnssTest19GnssAdaptDeviceTest20Ga22_33SetStatusCodeEN4gnss6ResultE_block_invoke;
  v74 = &__block_descriptor_tmp_98_0;
  v75 = a1;
  v76 = 8;
  dispatch_sync(v20, __str);
  if (!gnssOsa_SemRelease(a1[10]) && LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v21 = mach_continuous_time();
    v22 = *&g_MacClockTicksToMsRelation;
    v23 = __error();
    v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v22 * v21), "ADP", 87, "Ga22_26HandleTimeMarkRsp", 1542, *v23);
    LbsOsaTrace_WriteLog(0x18u, __str, v24, 2, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v25 = mach_continuous_time();
    v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx TimemarkRsp\n", (*&g_MacClockTicksToMsRelation * v25), "ADP", 69, "Ga22_26HandleTimeMarkRsp", 776);
    LbsOsaTrace_WriteLog(0x18u, __str, v26, 0, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v27 = mach_continuous_time();
    v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v27), "ADP", 68, "Ga22_26HandleTimeMarkRsp");
    LbsOsaTrace_WriteLog(0x18u, __str, v28, 5, 1);
  }

LABEL_39:
  v44 = *MEMORY[0x29EDCA608];
}

void sub_2996750B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  _Block_object_dispose(&a38, 8);
  if (a50 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZN8gnssTest19GnssAdaptDeviceTest24Ga22_26HandleTimeMarkRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke(uint64_t a1)
{
  v3 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v2 = *MEMORY[0x29EDCA608];

  gnssTest::GnssAdaptDeviceTest::Ga22_27GnssStopFWTest(v1);
}

uint64_t ___ZN8gnssTest19GnssAdaptDeviceTest24Ga22_26HandleTimeMarkRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke_2(uint64_t result)
{
  v2 = *MEMORY[0x29EDCA608];
  *(*(*(result + 32) + 8) + 24) = *(*(result + 40) + 139);
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

void ___ZN8gnssTest19GnssAdaptDeviceTest24Ga22_26HandleTimeMarkRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke_3(uint64_t a1)
{
  v3 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v2 = *MEMORY[0x29EDCA608];

  gnssTest::GnssAdaptDeviceTest::Ga22_27GnssStopFWTest(v1);
}

void ___ZN8gnssTest19GnssAdaptDeviceTest24Ga22_26HandleTimeMarkRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke_4(uint64_t a1)
{
  v3 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v2 = *MEMORY[0x29EDCA608];

  gnssTest::GnssAdaptDeviceTest::Ga22_27GnssStopFWTest(v1);
}

void ___ZN8gnssTest19GnssAdaptDeviceTest24Ga22_26HandleTimeMarkRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke_5(uint64_t a1)
{
  v3 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v2 = *MEMORY[0x29EDCA608];

  gnssTest::GnssAdaptDeviceTest::Ga22_27GnssStopFWTest(v1);
}

uint64_t ___ZN8gnssTest19GnssAdaptDeviceTest20Ga22_33SetStatusCodeEN4gnss6ResultE_block_invoke(uint64_t result)
{
  v2 = *MEMORY[0x29EDCA608];
  *(*(result + 32) + 120) = *(result + 40);
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN8gnssTest19GnssAdaptDeviceTest20Ga22_34GetStatusCodeEv_block_invoke(uint64_t result)
{
  v2 = *MEMORY[0x29EDCA608];
  *(*(*(result + 32) + 8) + 24) = *(*(result + 40) + 120);
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN8gnssTest19GnssAdaptDeviceTest27Ga22_35UpdateTimeMarkStatusEb_block_invoke(uint64_t result)
{
  v2 = *MEMORY[0x29EDCA608];
  *(*(result + 32) + 139) = *(result + 40);
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

void std::vector<gnssTest::RfMeasurement>::__init_with_size[abi:ne200100]<gnssTest::RfMeasurement*,gnssTest::RfMeasurement*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x666666666666667)
    {
      operator new();
    }

    std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
  }

  v4 = *MEMORY[0x29EDCA608];
  v5 = *MEMORY[0x29EDCA608];
}

void sub_2996754D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void gnss::GnssAdaptDevice::Ga06_00GnssPeriodicFixCB(gnss::GnssAdaptDevice *a1, uint64_t a2, uint64_t *a3)
{
  v4 = a1;
  v81 = *MEMORY[0x29EDCA608];
  DeviceInstance = gnss::GnssAdaptDevice::Ga00_00GetDeviceInstance(a1);
  if (DeviceInstance)
  {
    v6 = DeviceInstance;
    v7 = *a3;
    v8 = a3[1];
    v9 = *(a3 + 4);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Result,%u,Type,%u\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 73, "Ga06_01ReportPvtm", v4, v9);
      LbsOsaTrace_WriteLog(0x18u, __str, v11, 4, 1);
    }

    if (v4)
    {
      if (v4 == 8)
      {
        v12 = *(v6 + 288);
        block[0] = MEMORY[0x29EDCA5F8];
        block[1] = 0x40000000;
        block[2] = ___ZN4gnss15GnssAdaptDevice17Ga06_01ReportPvtmE11e_Gnm_Error16s_Gnm_AppNavData_block_invoke;
        block[3] = &__block_descriptor_tmp_12;
        block[4] = v6;
        v74 = 8;
        dispatch_async(v12, block);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v13 = mach_continuous_time();
        v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PVTM Resp,%u\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 69, "Ga06_01ReportPvtm", 769, v4);
        LbsOsaTrace_WriteLog(0x18u, __str, v14, 0, 1);
      }
    }

    else if (v9 == 2)
    {
      if (v7)
      {
        operator new();
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v40 = mach_continuous_time();
        v41 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NavData\n", (*&g_MacClockTicksToMsRelation * v40), "ADP", 69, "Ga06_01ReportPvtm", 770);
        LbsOsaTrace_WriteLog(0x18u, __str, v41, 0, 1);
      }
    }

    else if (v9 == 4)
    {
      if (v8)
      {
        v15 = &v49;
        v49 = 0;
        v50 = &v49;
        v51 = 0x13802000000;
        v52 = __Block_byref_object_copy__3;
        v53 = __Block_byref_object_dispose__3;
        v57 = 0;
        v60 = 0;
        v70 = 0;
        v71 = 0;
        v72 = 0;
        v54 = 0u;
        v55 = 0u;
        memset(v56, 0, sizeof(v56));
        *v58 = 0;
        *(&v58[2] + 1) = 0;
        *&v58[7] = 0;
        v59 = 0;
        v62 = 0;
        v61 = 0;
        *(&v63[1] + 3) = 0;
        *v63 = 0;
        *&v63[5] = 0;
        *&v63[7] = 0;
        v64 = 0;
        *(v66 + 6) = 0;
        v65 = 0;
        v66[0] = 0;
        v67 = 0u;
        v68 = 0u;
        memset(v69, 0, sizeof(v69));
        v57 = *(v8 + 32);
        v16 = v57;
        if (v57)
        {
          v17 = operator new[](176 * v57, MEMORY[0x29EDC9418]);
          if (!v17)
          {
            *v58 = 0;
            snprintf(block, 0x400uLL, "ASSERT,%s,%d,%s", "Ga06_01ReportPvtm", 101, "Memory allocation failed for SigMeas ");
            if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v43 = mach_continuous_time();
              v44 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v43), "OSA", 69, "Ga06_01ReportPvtm", block);
              LbsOsaTrace_WriteLog(0xEu, __str, v44, 0, 1);
            }

            if (gp_Logger)
            {
              (*(*gp_Logger + 48))(gp_Logger);
            }

            __assert_rtn("Ga06_01ReportPvtm", "ga06GnssPvtmUtils.cpp", 101, "false && Memory allocation failed for SigMeas ");
          }

          v18 = v17;
          do
          {
            *v18 = 0xFFFF;
            *(v18 + 2) = 0;
            *(v18 + 37) = 0;
            *(v18 + 15) = 0;
            v18[128] = 0;
            *(v18 + 170) = 0;
            *(v18 + 2) = 0;
            *(v18 + 3) = 0;
            *(v18 + 1) = 0;
            v18[32] = 0;
            *(v18 + 40) = 0uLL;
            *(v18 + 56) = 0uLL;
            v18[72] = 0;
            *(v18 + 5) = 0uLL;
            *(v18 + 6) = 0uLL;
            *(v18 + 111) = 0;
            *(v18 + 136) = 0uLL;
            *(v18 + 152) = 0uLL;
            v18[168] = 0;
            v18 += 176;
          }

          while (v18 != &v17[176 * v16]);
          *v58 = v17;
          memcpy_s("Ga06_01ReportPvtm", 108, v17, 176 * v16, *(v8 + 9), 176 * *(v8 + 32));
          v15 = v50;
        }

        v19 = *(v8 + 120);
        *(v15 + 140) = v19;
        if (v19)
        {
          v20 = operator new[](104 * v19, MEMORY[0x29EDC9418]);
          if (!v20)
          {
            v15[36] = 0;
            snprintf(block, 0x400uLL, "ASSERT,%s,%d,%s", "Ga06_01ReportPvtm", 118, "Memory allocation failed for SVUsage");
            if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v45 = mach_continuous_time();
              v46 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v45), "OSA", 69, "Ga06_01ReportPvtm", block);
              LbsOsaTrace_WriteLog(0xEu, __str, v46, 0, 1);
            }

            if (gp_Logger)
            {
              (*(*gp_Logger + 48))(gp_Logger);
            }

            __assert_rtn("Ga06_01ReportPvtm", "ga06GnssPvtmUtils.cpp", 118, "false && Memory allocation failed for SVUsage");
          }

          v21 = v20;
          do
          {
            *v21 = 0;
            v21[2] = 0;
            *(v21 + 1) = 0;
            *(v21 + 2) = 0;
            *(v21 + 12) = 0;
            *(v21 + 2) = 0uLL;
            *(v21 + 3) = 0uLL;
            *(v21 + 4) = 0uLL;
            *(v21 + 5) = 0uLL;
            *(v21 + 12) = 0;
            v21 += 104;
          }

          while (v21 != &v20[104 * v19]);
          v15[36] = v20;
          memcpy_s("Ga06_01ReportPvtm", 127, v20, 104 * *(v15 + 140), *(v8 + 31), (104 * v19));
          v15 = v50;
        }

        v22 = *(v8 + 128);
        *(v15 + 148) = v22;
        if (v22)
        {
          v23 = operator new[](312 * v22, MEMORY[0x29EDC9418]);
          if (!v23)
          {
            v15[38] = 0;
            snprintf(block, 0x400uLL, "ASSERT,%s,%d,%s", "Ga06_01ReportPvtm", 137, "Memory allocation failed for SVState");
            if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v47 = mach_continuous_time();
              v48 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v47), "OSA", 69, "Ga06_01ReportPvtm", block);
              LbsOsaTrace_WriteLog(0xEu, __str, v48, 0, 1);
            }

            if (gp_Logger)
            {
              (*(*gp_Logger + 48))(gp_Logger);
            }

            __assert_rtn("Ga06_01ReportPvtm", "ga06GnssPvtmUtils.cpp", 137, "false && Memory allocation failed for SVState");
          }

          v24 = v23;
          do
          {
            *v24 = 0;
            *(v24 + 1) = 0;
            v24[4] = 0;
            v24[8] = 0;
            *(v24 + 21) = 0;
            *(v24 + 88) = 0;
            *(v24 + 178) = 0;
            *(v24 + 1) = 0uLL;
            *(v24 + 2) = 0uLL;
            *(v24 + 3) = 0uLL;
            *(v24 + 4) = 0uLL;
            *(v24 + 5) = 0uLL;
            *(v24 + 6) = 0uLL;
            *(v24 + 7) = 0uLL;
            *(v24 + 8) = 0uLL;
            *(v24 + 9) = 0uLL;
            *(v24 + 157) = 0;
            *(v24 + 200) = 0uLL;
            *(v24 + 216) = 0uLL;
            *(v24 + 232) = 0uLL;
            *(v24 + 248) = 0uLL;
            v25 = v24 + 312;
            *(v24 + 184) = 0uLL;
            v26 = v24 + 184;
            v26[5] = 0uLL;
            v26[6] = 0uLL;
            v26[7] = 0uLL;
            v24 = v25;
          }

          while (v25 != &v23[312 * v22]);
          v15[38] = v23;
          memcpy_s("Ga06_01ReportPvtm", 148, v23, 312 * *(v15 + 148), *(v8 + 33), (312 * v22));
          v15 = v50;
        }

        v27 = *v8;
        v28 = v8[1];
        v29 = v8[2];
        *(v15 + 84) = *(v8 + 44);
        *(v15 + 9) = v29;
        *(v15 + 7) = v28;
        *(v15 + 5) = v27;
        v30 = v8[9];
        v31 = v8[10];
        v32 = v8[8];
        *(v15 + 19) = v8[7];
        *(v15 + 25) = v31;
        *(v15 + 23) = v30;
        *(v15 + 21) = v32;
        v33 = v8[13];
        v34 = v8[14];
        v35 = v8[12];
        *(v15 + 27) = v8[11];
        *(v15 + 33) = v34;
        *(v15 + 31) = v33;
        *(v15 + 29) = v35;
        v36 = v8[5];
        *(v15 + 17) = v8[6];
        *(v15 + 15) = v36;
        v37 = *(v6 + 288);
        *__str = MEMORY[0x29EDCA5F8];
        v76 = 0x40000000;
        v77 = ___ZN4gnss15GnssAdaptDevice17Ga06_01ReportPvtmE11e_Gnm_Error16s_Gnm_AppNavData_block_invoke_14;
        v78 = &unk_29EF6B258;
        v80 = v6;
        v79 = &v49;
        dispatch_async(v37, __str);
        _Block_object_dispose(&v49, 8);
      }

      else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v38 = mach_continuous_time();
        v39 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MeasData\n", (*&g_MacClockTicksToMsRelation * v38), "ADP", 69, "Ga06_01ReportPvtm", 770);
        LbsOsaTrace_WriteLog(0x18u, __str, v39, 0, 1);
      }
    }
  }

  v42 = *MEMORY[0x29EDCA608];
}

void sub_299676070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN4gnss15GnssAdaptDevice17Ga06_01ReportPvtmE11e_Gnm_Error16s_Gnm_AppNavData_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Positioning Session Aborted,%u\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "Ga06_01ReportPvtm_block_invoke", 1025, *(a1 + 40));
    result = LbsOsaTrace_WriteLog(0x18u, __str, v5, 0, 1);
  }

  *(v2 + 89) = 0;
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void *__Block_byref_object_copy__3(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *MEMORY[0x29EDCA608];
  v3 = (a1 + 40);
  v4 = (a2 + 40);

  return memcpy(v3, v4, 0x110uLL);
}

uint64_t *___ZN4gnss15GnssAdaptDevice17Ga06_01ReportPvtmE11e_Gnm_Error16s_Gnm_AppNavData_block_invoke_14(uint64_t a1)
{
  v1 = a1;
  v258 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v236 = 0;
  v237 = &v236;
  v238 = 0x3002000000;
  v239 = __Block_byref_object_copy__15;
  v240 = __Block_byref_object_dispose__16;
  v241 = 0;
  v3 = *(v2 + 280);
  v218 = v2;
  if ((v3 & 2) != 0)
  {
    v220 = *(v2 + 280);
    v4 = *(*(a1 + 32) + 8);
    v5 = operator new(0x88uLL, MEMORY[0x29EDC9418]);
    if (!v5)
    {
      v230 = 0;
      snprintf(v255, 0x400uLL, "ASSERT,%s,%d,%s", "Ga06_04GetMeasReport", 525, "Memory allocation failed for Measurement Report");
      if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v204 = mach_continuous_time();
        v205 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v204), "OSA", 69, "Ga06_04GetMeasReport", v255);
        LbsOsaTrace_WriteLog(0xEu, __str, v205, 0, 1);
      }

      if (gp_Logger)
      {
        (*(*gp_Logger + 48))(gp_Logger);
      }

      __assert_rtn("Ga06_04GetMeasReport", "ga06GnssPvtmUtils.cpp", 525, "false && Memory allocation failed for Measurement Report");
    }

    *v5 = -1;
    _Q0 = vdupq_n_s64(0x7FF8000000000000uLL);
    *(v5 + 1) = _Q0;
    *(v5 + 3) = _Q0;
    *(v5 + 20) = 0;
    v217 = _Q0;
    *(v5 + 3) = _Q0;
    v7 = vneg_f32(0x3F0000003FLL);
    v5[8] = v7;
    *(v5 + 18) = 2143289344;
    v5[10] = 0x8000000000000000;
    __asm { FMOV            V0.2S, #-1.0 }

    v5[11] = _Q0.i64[0];
    v5[12] = 0x7FF8000000000000;
    *(v5 + 26) = -1082130432;
    v5[15] = 0;
    v5[16] = 0;
    v5[14] = 0;
    v230 = v5;
    v12 = &unk_2A1939000;
    if (*(v4 + 104))
    {
      v13 = 0;
      if (*(v4 + 104) >= 0x100u)
      {
        v14 = 256;
      }

      else
      {
        v14 = *(v4 + 104);
      }

      v221 = v14;
      v15.i64[0] = 0x3F0000003FLL;
      v15.i64[1] = 0x3F0000003FLL;
      v216 = vnegq_f32(v15);
      while (1)
      {
        *v244 = 0;
        *&v244[4] = 0;
        v244[6] = 127;
        *&v244[8] = 0;
        *&v244[15] = 0;
        memset(&v244[24], 255, 24);
        *&v245 = 0x7FF8000000000000;
        DWORD2(v245) = -1082130432;
        v246 = xmmword_299760840;
        v247 = xmmword_299760840;
        v248 = xmmword_299760840;
        v249[0] = 1;
        *&v249[8] = -1;
        *&v249[16] = -1;
        *&v249[24] = xmmword_299760840;
        v249[40] = 0;
        v250 = 0;
        v251 = -1.0;
        v252 = 0;
        v16 = *(v4 + 112);
        if (!v16)
        {
          std::unique_ptr<gnss::MeasurementExtension>::reset[abi:ne200100](&v250, 0);
          goto LABEL_144;
        }

        if (*(v4 + 104) <= v13)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v21 = mach_continuous_time();
            v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Indx\n", (v12[200] * v21), "ADP", 69, "Ga06_05GetMeasSvId", 514);
            LbsOsaTrace_WriteLog(0x18u, __str, v22, 0, 1);
          }

          goto LABEL_132;
        }

        v17 = (v16 + 176 * v13);
        v18 = *(v17 + 2);
        if (v18 <= 3)
        {
          break;
        }

        if (v18 - 5 < 2)
        {
          v19 = *(v16 + 176 * v13 + 4);
          if ((v19 - 1) > 0x3E)
          {
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v35 = mach_continuous_time();
              v36 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx BEID SvID,%d\n", (v12[200] * v35), "ADP", 87, "Ga06_05GetMeasSvId", 770, *(*(v4 + 112) + 176 * v13 + 4));
              LbsOsaTrace_WriteLog(0x18u, __str, v36, 2, 1);
            }

            goto LABEL_132;
          }

          v20 = 4;
          goto LABEL_24;
        }

        if (v18 - 7 < 2)
        {
          v19 = *(v16 + 176 * v13 + 4);
          if ((v19 - 1) > 0x31)
          {
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v33 = mach_continuous_time();
              v34 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GAL SvId,%d\n", (v12[200] * v33), "ADP", 87, "Ga06_05GetMeasSvId", 772, *(*(v4 + 112) + 176 * v13 + 4));
              LbsOsaTrace_WriteLog(0x18u, __str, v34, 2, 1);
            }

            goto LABEL_132;
          }

          v20 = 8;
          goto LABEL_24;
        }

        if (v18 != 4)
        {
          goto LABEL_54;
        }

        v28 = v17[2];
        if ((v28 + 7) > 0xDu)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v41 = mach_continuous_time();
            v42 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GLON SvID,%d\n", (v12[200] * v41), "ADP", 87, "Ga06_05GetMeasSvId", 772, *(*(v4 + 112) + 176 * v13 + 4));
            LbsOsaTrace_WriteLog(0x18u, __str, v42, 2, 1);
          }

          goto LABEL_132;
        }

        *v244 = 2;
        v244[6] = v28;
        v29 = *v17;
        if ((v29 & 0x8000000000000000) == 0 && *(v4 + 280) > v29)
        {
          v30 = *(v4 + 288);
          if (v30)
          {
            if (*(v30 + 104 * *v17 + 1) - 25 <= 0xFFFFFFE7)
            {
              if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v31 = mach_continuous_time();
                v32 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GLON SlotNum,%u\n", (v12[200] * v31), "ADP", 87, "Ga06_05GetMeasSvId", 772, *(*(v4 + 288) + 104 * v29 + 1));
                LbsOsaTrace_WriteLog(0x18u, __str, v32, 2, 1);
              }

              goto LABEL_132;
            }

            v244[4] = *(v30 + 104 * *v17 + 1);
            v67 = *(v30 + 104 * v29 + 2);
            if (v67 <= 2)
            {
              v244[5] = v67 >= 2;
              goto LABEL_26;
            }

            if (v67 == 3)
            {
              v110 = 2;
              goto LABEL_140;
            }

            if (v67 == 4)
            {
              v110 = 3;
LABEL_140:
              v244[5] = v110;
              goto LABEL_26;
            }

            v244[5] = 0;
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v111 = mach_continuous_time();
              v112 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GLON SlotNum,%u\n", (v12[200] * v111), "ADP", 87, "Ga06_05GetMeasSvId", 770, *(*(v4 + 288) + 104 * v29 + 2));
              LbsOsaTrace_WriteLog(0x18u, __str, v112, 2, 1);
            }
          }
        }

LABEL_26:
        v23 = *(v4 + 112);
        if (!v23)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v26 = mach_continuous_time();
            v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SVMeasElem\n", (v12[200] * v26), "ADP", 69, "Ga06_06GetMeasSyncState", 513);
            LbsOsaTrace_WriteLog(0x18u, __str, v27, 0, 1);
          }

          goto LABEL_132;
        }

        v24 = v23 + 176 * v13;
        v25 = *(v24 + 2);
        if (v25 > 4)
        {
          if (*(v24 + 2) <= 6u)
          {
            if (v25 == 5)
            {
              goto LABEL_69;
            }

            if (v25 == 6)
            {
              LOBYTE(v25) = 7;
              goto LABEL_69;
            }
          }

          else
          {
            switch(v25)
            {
              case 7u:
                LOBYTE(v25) = 8;
LABEL_69:
                v244[8] = v25;
LABEL_70:
                v244[9] = *(v24 + 32) & 1;
                v244[10] = (*(v24 + 32) & 2) != 0;
                v244[11] = (*(v24 + 32) & 4) != 0;
                v244[12] = (*(v24 + 32) & 8) != 0;
                goto LABEL_74;
              case 8u:
                v244[8] = 9;
                goto LABEL_74;
              case 9u:
                goto LABEL_61;
            }
          }
        }

        else
        {
          if (*(v24 + 2) <= 1u)
          {
            if (!*(v24 + 2))
            {
LABEL_61:
              v244[8] = 0;
              goto LABEL_74;
            }

            v244[8] = 1;
            goto LABEL_70;
          }

          switch(v25)
          {
            case 2u:
              v244[8] = 2;
              v244[9] = *(v24 + 32) & 1;
              v244[10] = *(v24 + 32) & 1;
              goto LABEL_67;
            case 3u:
              goto LABEL_69;
            case 4u:
              v244[8] = 4;
              *&v244[9] = *(v24 + 32) & 1;
LABEL_67:
              v244[11] = (*(v24 + 32) & 2) != 0;
              v244[12] = (*(v24 + 32) & 4) != 0;
              v244[13] = (*(v24 + 32) & 8) != 0;
              goto LABEL_74;
          }
        }

        v244[8] = 0;
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v43 = mach_continuous_time();
          v44 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Meas SigId,%u\n", (v12[200] * v43), "ADP", 87, "Ga06_06GetMeasSyncState", 770, *(v24 + 2));
          LbsOsaTrace_WriteLog(0x18u, __str, v44, 2, 1);
        }

LABEL_74:
        v45 = *(v4 + 112);
        v46 = v45 + 176 * v13;
        *&v244[24] = *(v46 + 8);
        *&v244[40] = *(v46 + 24);
        HIBYTE(v252) = *(v46 + 118);
        *&v245 = *(v46 + 40);
        v47 = *(v46 + 48);
        *(&v245 + 2) = v47;
        v246 = *(v46 + 80);
        v48 = *(v46 + 104);
        if (v48 > 0.0)
        {
          *&v247 = *(v46 + 96);
          *(&v247 + 1) = v48;
        }

        if (*(v46 + 128) == 2)
        {
          *&v249[8] = vcvtq_u64_f64(*(v46 + 136));
          *&v249[24] = *(v45 + 176 * v13 + 152);
          v249[40] = 0;
        }

        v49 = v45 + 176 * v13;
        v50 = *(v49 + 56);
        v251 = v50;
        v51 = *(v49 + 168);
        if (v51)
        {
          if (v51 == 1)
          {
            LOBYTE(v252) = 1;
          }

          else if (v51 == 2)
          {
            LOBYTE(v252) = 2;
          }

          else
          {
            LOBYTE(v252) = 0;
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v52 = mach_continuous_time();
              v53 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Multipath Ind,%d\n", (v12[200] * v52), "ADP", 87, "Ga06_04GetMeasReport", 770, *(*(v4 + 112) + 176 * v13 + 168));
              LbsOsaTrace_WriteLog(0x18u, __str, v53, 2, 1);
            }
          }
        }

        else
        {
          LOBYTE(v252) = 0;
        }

        if ((v220 & 4) == 0)
        {
          goto LABEL_113;
        }

        v54 = operator new(0x98uLL, MEMORY[0x29EDC9418]);
        if (!v54)
        {
          v224 = 0;
          snprintf(v255, 0x400uLL, "ASSERT,%s,%d,%s", "Ga06_07GetMeasExtn", 1151, "Memory allocation failed for MeasExtn");
          if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v202 = mach_continuous_time();
            v203 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v202), "OSA", 69, "Ga06_07GetMeasExtn", v255);
            LbsOsaTrace_WriteLog(0xEu, __str, v203, 0, 1);
          }

          if (gp_Logger)
          {
            (*(*gp_Logger + 48))(gp_Logger);
          }

          __assert_rtn("Ga06_07GetMeasExtn", "ga06GnssPvtmUtils.cpp", 1151, "false && Memory allocation failed for MeasExtn");
        }

        v55 = v54;
        *v54 = v7;
        *(v54 + 8) = v217;
        v54[24] = 0;
        *(v54 + 2) = v216;
        *(v54 + 3) = v216;
        *(v54 + 8) = 0xFFFF7FC00000;
        v54[72] = 0;
        v54[76] = 0;
        v54[80] = 0;
        v54[84] = 0;
        v54[88] = 0;
        *(v54 + 46) = 0;
        v54[124] = 0;
        *(v54 + 17) = 0;
        *(v54 + 18) = 0;
        *(v54 + 16) = 0;
        *(v54 + 12) = 0;
        *(v54 + 13) = 0;
        v54[120] = 0;
        *(v54 + 14) = 0;
        v224 = v54;
        if (*(v4 + 104) <= v13)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v65 = mach_continuous_time();
            v66 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Indx\n", (v12[200] * v65), "ADP", 69, "Ga06_07GetMeasExtn", 514);
            LbsOsaTrace_WriteLog(0x18u, __str, v66, 0, 1);
          }

          v55 = 0;
          goto LABEL_112;
        }

        v56 = *(v4 + 112) + 176 * v13;
        *(v54 + 34) = *(v56 + 114);
        *v54 = 0;
        v57 = *(v56 + 64);
        *(v54 + 1) = v57;
        *(v54 + 35) = *(v56 + 74);
        v54[72] = *(v56 + 72);
        v54[92] = gnss::GnssAdaptDevice::Ga06_17GetDetectionMethod(*(v56 + 112));
        *(v55 + 93) = gnss::GnssAdaptDevice::Ga06_17GetDetectionMethod(*(*(v4 + 112) + 176 * v13 + 113));
        v58 = (*(v4 + 112) + 176 * v13);
        LOWORD(v59) = v58[85];
        *&v60 = v59 * 0.001;
        *(v55 + 76) = *&v60;
        *(v55 + 80) = 1;
        LOWORD(v60) = v58[86];
        *(v55 + 84) = v60 * 0.001;
        *(v55 + 88) = 1;
        v61 = *v58;
        if ((v61 & 0x8000000000000000) == 0 && *(v4 + 280) > v61)
        {
          v62 = *(v4 + 288);
          if (v62)
          {
            v63 = v62 + 104 * v61;
            *(v55 + 8) = *(v63 + 8);
            *(v55 + 16) = *(v63 + 80);
            v64 = *(v63 + 24);
            if (v64 <= 1)
            {
              if (v64)
              {
                LOBYTE(v64) = 2;
                goto LABEL_102;
              }

              *(v55 + 24) = 0;
            }

            else
            {
              switch(v64)
              {
                case 2:
                  *(v55 + 24) = 1;
                  break;
                case 3:
                  *(v55 + 24) = 3;
                  break;
                case 4:
LABEL_102:
                  *(v55 + 24) = v64;
                  break;
                default:
                  *(v55 + 24) = 0;
                  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
                  {
                    bzero(__str, 0x410uLL);
                    v108 = mach_continuous_time();
                    v109 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ToTsource,%u\n", (v12[200] * v108), "ADP", 87, "Ga06_07GetMeasExtn", 770, *(*(v4 + 288) + 104 * v61 + 24));
                    LbsOsaTrace_WriteLog(0x18u, __str, v109, 2, 1);
                  }

                  break;
              }
            }

            v68 = (*(v4 + 288) + 104 * v61);
            v69 = v68[6].f64[0];
            if (v69 >= 3.40282347e38)
            {
              v69 = 3.40282347e38;
            }

            v70 = v69;
            *(v55 + 64) = v70;
            v71 = vcvt_hight_f32_f64(vcvt_f32_f64(v68[2]), v68[3]);
            v72 = vcvt_hight_f32_f64(vcvt_f32_f64(v68[4]), v68[5]);
            v73 = vtrn2q_s32(vextq_s8(v72, v71, 4uLL), v71);
            v74 = vtrn2q_s32(vextq_s8(v71, v72, 4uLL), v72);
            *(v55 + 32) = vextq_s8(v73, v73, 8uLL);
            *(v55 + 48) = vextq_s8(v74, v74, 8uLL);
          }
        }

        v224 = 0;
LABEL_112:
        std::unique_ptr<gnss::MeasurementExtension>::reset[abi:ne200100](&v224, 0);
        v243[0] = 0;
        std::unique_ptr<gnss::MeasurementExtension>::reset[abi:ne200100](&v250, v55);
        std::unique_ptr<gnss::MeasurementExtension>::reset[abi:ne200100](v243, 0);
LABEL_113:
        v75 = v230;
        v77 = v230[15];
        v76 = v230[16];
        if (v77 >= v76)
        {
          v87 = v230[14];
          v88 = 0x2E8BA2E8BA2E8BA3 * ((v77 - v87) >> 4) + 1;
          if (v88 > 0x1745D1745D1745DLL)
          {
            std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
          }

          v89 = 0x2E8BA2E8BA2E8BA3 * ((v76 - v87) >> 4);
          if (2 * v89 > v88)
          {
            v88 = 2 * v89;
          }

          if (v89 >= 0xBA2E8BA2E8BA2ELL)
          {
            v90 = 0x1745D1745D1745DLL;
          }

          else
          {
            v90 = v88;
          }

          if (v90)
          {
            if (v90 <= 0x1745D1745D1745DLL)
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v91 = *v249;
          v92 = 16 * ((v77 - v87) >> 4);
          *(v92 + 96) = v248;
          *(v92 + 112) = v91;
          *(v92 + 128) = *&v249[16];
          *(v92 + 137) = *&v249[25];
          v93 = v245;
          *(v92 + 32) = *&v244[32];
          *(v92 + 48) = v93;
          v94 = v247;
          *(v92 + 64) = v246;
          *(v92 + 80) = v94;
          v95 = *&v244[16];
          *v92 = *v244;
          *(v92 + 16) = v95;
          v96 = v250;
          v250 = 0;
          *(v92 + 160) = v96;
          *(v92 + 168) = v251;
          v97 = v92 - (v77 - v87);
          *(v92 + 172) = v252;
          if (v87 != v77)
          {
            v98 = v87;
            v99 = v92 - (v77 - v87);
            do
            {
              v100 = *(v98 + 1);
              *v99 = *v98;
              *(v99 + 16) = v100;
              v101 = *(v98 + 2);
              v102 = *(v98 + 3);
              v103 = *(v98 + 5);
              *(v99 + 64) = *(v98 + 4);
              *(v99 + 80) = v103;
              *(v99 + 32) = v101;
              *(v99 + 48) = v102;
              v104 = *(v98 + 6);
              v105 = *(v98 + 7);
              v106 = *(v98 + 8);
              *(v99 + 137) = *(v98 + 137);
              *(v99 + 112) = v105;
              *(v99 + 128) = v106;
              *(v99 + 96) = v104;
              v107 = v98[20];
              v98[20] = 0;
              *(v99 + 160) = v107;
              LODWORD(v107) = *(v98 + 42);
              *(v99 + 172) = *(v98 + 86);
              *(v99 + 168) = v107;
              v98 += 22;
              v99 += 176;
            }

            while (v98 != v77);
            do
            {
              std::unique_ptr<gnss::MeasurementExtension>::reset[abi:ne200100](v87 + 20, 0);
              v87 += 22;
            }

            while (v87 != v77);
            v87 = v75[14];
          }

          v86 = v92 + 176;
          v75[14] = v97;
          v75[15] = v86;
          v75[16] = 0;
          v1 = a1;
          v12 = &unk_2A1939000;
          if (v87)
          {
            operator delete(v87);
          }
        }

        else
        {
          v78 = *&v244[16];
          *v77 = *v244;
          *(v77 + 16) = v78;
          v79 = *&v244[32];
          v80 = v245;
          v81 = v247;
          *(v77 + 64) = v246;
          *(v77 + 80) = v81;
          *(v77 + 32) = v79;
          *(v77 + 48) = v80;
          v82 = v248;
          v83 = *v249;
          v84 = *&v249[16];
          *(v77 + 137) = *&v249[25];
          *(v77 + 112) = v83;
          *(v77 + 128) = v84;
          *(v77 + 96) = v82;
          v85 = v250;
          v250 = 0;
          *(v77 + 160) = v85;
          *&v85 = v251;
          *(v77 + 172) = v252;
          *(v77 + 168) = v85;
          v86 = v77 + 176;
          v1 = a1;
          v12 = &unk_2A1939000;
        }

        v75[15] = v86;
LABEL_132:
        std::unique_ptr<gnss::MeasurementExtension>::reset[abi:ne200100](&v250, 0);
        if (++v13 == v221)
        {
          goto LABEL_144;
        }
      }

      if (v18 - 1 < 3)
      {
        v19 = *(v16 + 176 * v13 + 4);
        if ((v19 - 1) <= 0x1F)
        {
          *v244 = 1;
LABEL_25:
          v244[4] = v19;
          goto LABEL_26;
        }

        if ((v19 - 193) > 9)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v39 = mach_continuous_time();
            v40 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PRN,%d,Signal,%u\n", (v12[200] * v39), "ADP", 87, "Ga06_05GetMeasSvId", 770, *(*(v4 + 112) + 176 * v13 + 4), *(*(v4 + 112) + 176 * v13 + 2));
            LbsOsaTrace_WriteLog(0x18u, __str, v40, 2, 1);
          }

          goto LABEL_132;
        }

        v20 = 16;
LABEL_24:
        *v244 = v20;
        goto LABEL_25;
      }

      if (!*(v17 + 2))
      {
        *v244 = 0;
        goto LABEL_26;
      }

LABEL_54:
      *v244 = 0;
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v37 = mach_continuous_time();
        v38 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SigID,%u\n", (v12[200] * v37), "ADP", 87, "Ga06_05GetMeasSvId", 770, *(*(v4 + 112) + 176 * v13 + 2));
        LbsOsaTrace_WriteLog(0x18u, __str, v38, 2, 1);
      }

      goto LABEL_26;
    }

LABEL_144:
    v113 = v230;
    *v230 = *(v4 + 40);
    *(v113 + 8) = *(v4 + 64);
    *(v113 + 24) = *(v4 + 80);
    *(v113 + 48) = *(v4 + 48);
    if (*(v4 + 256) <= 0.0)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v120 = mach_continuous_time();
        v121 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GpsBiasUncns is unknown\n", (v12[200] * v120), "ADP", 68, "Ga06_04GetMeasReport");
        LbsOsaTrace_WriteLog(0x18u, __str, v121, 5, 1);
      }
    }

    else
    {
      *(v113 + 80) = *(v4 + 240);
      if (fabs(*(v4 + 248)) > 0.5 && LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v114 = mach_continuous_time();
        v115 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GpsBiassubns,%f\n", (v12[200] * v114), "ADP", 87, "Ga06_04GetMeasReport", 514, *(v4 + 248));
        LbsOsaTrace_WriteLog(0x18u, __str, v115, 2, 1);
      }

      v116 = *(v4 + 248);
      *(v113 + 88) = v116;
      v117 = *(v4 + 256);
      if (v117 <= 3.40282347e38)
      {
        v122 = v117;
        *(v113 + 92) = v122;
      }

      else
      {
        *(v113 + 92) = 2139095039;
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v118 = mach_continuous_time();
          v119 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: RxGpsBiasUncns larger than float max,limiting to float max,%f\n", (v12[200] * v118), "ADP", 68, "Ga06_04GetMeasReport", *(v4 + 256));
          LbsOsaTrace_WriteLog(0x18u, __str, v119, 5, 1);
        }
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v123 = mach_continuous_time();
        v124 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: OffsetNs,%lld,SubOffsetNs,%f,OffsetUncNs,%f\n", (v12[200] * v123), "ADP", 68, "Ga06_04GetMeasReport", *(v113 + 80), *(v113 + 88), *(v113 + 92));
        LbsOsaTrace_WriteLog(0x18u, __str, v124, 5, 1);
      }
    }

    *(v113 + 96) = *(v4 + 264);
    v125 = *(v4 + 272);
    if (v125 <= 3.40282347e38)
    {
      v128 = v125;
      *(v113 + 104) = v128;
    }

    else
    {
      *(v113 + 104) = 2139095039;
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v126 = mach_continuous_time();
        v127 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: RxGpsFrqUncppb larger than float max,limiting to float max,%f\n", (v12[200] * v126), "ADP", 68, "Ga06_04GetMeasReport", *(v4 + 272));
        LbsOsaTrace_WriteLog(0x18u, __str, v127, 5, 1);
      }
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v129 = mach_continuous_time();
      v130 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: DriftPpb,%f,DriftUncPpb,%f\n", (v12[200] * v129), "ADP", 68, "Ga06_04GetMeasReport", *(v113 + 96), *(v113 + 104));
      LbsOsaTrace_WriteLog(0x18u, __str, v130, 5, 1);
    }

    v230 = 0;
    std::unique_ptr<gnss::MeasurementReport>::reset[abi:ne200100](&v230, 0);
    *&v242 = 0;
    std::unique_ptr<gnss::MeasurementReport>::reset[abi:ne200100](v237 + 5, v113);
    std::unique_ptr<gnss::MeasurementReport>::reset[abi:ne200100](&v242, 0);
    v3 = *(v2 + 280);
  }

  *v244 = 0;
  *&v244[8] = v244;
  *&v244[16] = 0x4002000000;
  *&v244[24] = __Block_byref_object_copy__17;
  *&v244[32] = __Block_byref_object_dispose__18;
  *&v244[40] = 0;
  v245 = 0uLL;
  if ((v3 & 0x10) == 0)
  {
    goto LABEL_212;
  }

  v131 = *(*(v1 + 32) + 8);
  v132 = *(v131 + 296);
  if (!*(v131 + 296))
  {
    v159 = 0;
    v158 = 0;
    v155 = v244;
    v1 = a1;
    goto LABEL_211;
  }

  v222 = 0;
  __src = 0;
  v133 = 0;
  v134 = 0;
  v135 = 0;
  v136 = *(v131 + 304);
  do
  {
    if (!*(v136 + 312 * v135 + 176))
    {
      goto LABEL_206;
    }

    v137 = 0;
    do
    {
      v138 = v137;
      v139 = *(v136 + 312 * v135 + v137 + 178);
      if (v139 <= 3)
      {
        if (*(v136 + 312 * v135 + v137 + 178) > 1u)
        {
          if (v139 == 2)
          {
            v140 = 2;
          }

          else
          {
            v140 = 3;
          }
        }

        else
        {
          if (!*(v136 + 312 * v135 + v137 + 178))
          {
            goto LABEL_204;
          }

          v140 = 1;
        }
      }

      else if (*(v136 + 312 * v135 + v137 + 178) <= 5u)
      {
        if (v139 == 4)
        {
          v140 = 4;
        }

        else
        {
          v140 = 5;
        }
      }

      else
      {
        switch(v139)
        {
          case 6u:
            v139 = 7;
            v140 = 6;
            break;
          case 7u:
            v139 = 8;
            v140 = 7;
            break;
          case 8u:
            v139 = 9;
            v140 = 8;
            break;
          default:
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v141 = mach_continuous_time();
              v142 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx BandID,%u\n", (*&g_MacClockTicksToMsRelation * v141), "ADP", 87, "Ga06_08GetBandCorrection", 770, v139);
              LbsOsaTrace_WriteLog(0x18u, __str, v142, 2, 1);
            }

            v139 = 0;
            v140 = 0;
            break;
        }
      }

      v143 = 1 << v140;
      v136 = *(v131 + 304);
      if ((v143 & v134) == 0)
      {
        v144 = v136 + 312 * v135 + 8 * v138;
        v145 = *(v144 + 216) * 3.33564095;
        v146 = *(v144 + 248) * 3.33564095;
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v147 = mach_continuous_time();
          v148 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: BAND,%u,RfTimeBiasNs,%f,RfTimeBiasUncNs,%f\n", (*&g_MacClockTicksToMsRelation * v147), "ADP", 73, "Ga06_08GetBandCorrection", v139, v145, v146);
          LbsOsaTrace_WriteLog(0x18u, __str, v148, 4, 1);
        }

        v149 = v133 - __src;
        v150 = 0xAAAAAAAAAAAAAAABLL * (v149 >> 3) + 1;
        if (v150 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * (-__src >> 3) > v150)
        {
          v150 = 0x5555555555555556 * (-__src >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * (-__src >> 3) >= 0x555555555555555)
        {
          v151 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v151 = v150;
        }

        if (v151)
        {
          if (v151 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v152 = 8 * (v149 >> 3);
        *v152 = v145;
        *(v152 + 8) = v146;
        *(v152 + 12) = 2143289344;
        *(v152 + 16) = v139;
        v153 = v152 + 24;
        v154 = (v152 + 24 * (v149 / -24));
        memcpy(v154, __src, v149);
        if (__src)
        {
          operator delete(__src);
        }

        __src = v154;
        v134 |= v143;
        v136 = *(v131 + 304);
        v222 = v153;
        v133 = v153;
      }

LABEL_204:
      v137 = v138 + 1;
    }

    while (*(v136 + 312 * v135 + 176) > (v138 + 1));
    v132 = *(v131 + 296);
LABEL_206:
    ++v135;
  }

  while (v135 < v132);
  v155 = *&v244[8];
  v157 = (*&v244[8] + 40);
  v156 = *(*&v244[8] + 40);
  v2 = v218;
  if (v156)
  {
    *(*&v244[8] + 48) = v156;
    operator delete(v156);
    *v157 = 0;
    v157[1] = 0;
    v157[2] = 0;
  }

  v1 = a1;
  v159 = v222;
  v158 = __src;
LABEL_211:
  v155[5] = v158;
  v155[6] = v159;
  v155[7] = 0;
  v3 = *(v2 + 280);
LABEL_212:
  v230 = 0;
  v231 = &v230;
  v232 = 0x3002000000;
  v233 = __Block_byref_object_copy__19;
  v234 = __Block_byref_object_dispose__20;
  v235 = 0;
  if ((v3 & 0x20) != 0)
  {
    v160 = *(*(v1 + 32) + 8);
    v161 = operator new(0x28uLL, MEMORY[0x29EDC9418]);
    if (!v161)
    {
      v224 = 0;
      snprintf(v255, 0x400uLL, "ASSERT,%s,%d,%s", "Ga06_09GetTimeConv", 1384, "Memory allocation failed for TimeConversion");
      if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v206 = mach_continuous_time();
        v207 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v206), "OSA", 69, "Ga06_09GetTimeConv", v255);
        LbsOsaTrace_WriteLog(0xEu, __str, v207, 0, 1);
      }

      if (gp_Logger)
      {
        (*(*gp_Logger + 48))(gp_Logger);
      }

      __assert_rtn("Ga06_09GetTimeConv", "ga06GnssPvtmUtils.cpp", 1384, "false && Memory allocation failed for TimeConversion");
    }

    v162 = v161;
    v161[4] = 0;
    *v161 = 0u;
    *(v161 + 1) = 0u;
    v224 = v161;
    v163 = operator new(0x40uLL, MEMORY[0x29EDC9418]);
    if (!v163)
    {
      snprintf(v255, 0x400uLL, "ASSERT,%s,%d,%s", "Ga06_10GetTimeConvGPS", 1414, "Memory allocation failed for GpsTimeInfo");
      if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v208 = mach_continuous_time();
        v209 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v208), "OSA", 69, "Ga06_10GetTimeConvGPS", v255);
        LbsOsaTrace_WriteLog(0xEu, __str, v209, 0, 1);
      }

      if (gp_Logger)
      {
        (*(*gp_Logger + 48))(gp_Logger);
      }

      __assert_rtn("Ga06_10GetTimeConvGPS", "ga06GnssPvtmUtils.cpp", 1414, "false && Memory allocation failed for GpsTimeInfo");
    }

    v164 = v163;
    *(v163 + 10) = 0;
    *(v163 + 2) = 0;
    v163[12] = 0x8000;
    *(v163 + 4) = 0;
    *(v163 + 20) = vdupq_n_s64(0x7FF8000000000000uLL);
    *(v163 + 7) = 0x7FF8000000000000;
    *v163 = *(v160 + 120);
    v165 = *(v160 + 134);
    v163[4] = v165;
    v166 = *(v160 + 130);
    if (*(v160 + 130) && (v167 = *(v160 + 132), *(v160 + 132)) && (v168 = *(v160 + 133), *(v160 + 133)))
    {
      if (v165 == v168)
      {
        *(v163 + 10) = 1;
      }

      else
      {
        *(v163 + 10) = 2;
        *(v163 + 2) = 604800000000000 * v166 + 86400000000000 * v167;
        v163[12] = v168;
      }
    }

    else
    {
      *(v163 + 10) = 0;
    }

    *(v163 + 4) = 604800000000000 * *(v160 + 136) + 1000000000 * *(v160 + 140);
    *(v163 + 20) = *(v160 + 144);
    *(v163 + 7) = *(v160 + 160);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v169 = mach_continuous_time();
      v170 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Week,%u,CurLeapSec,%d,NewLeapSecKnwdg,%hhu,TimeOfChangeNs,%llu,NewLeapSec,%d,TimeNs,%llu,OffsetNs,%f,DriftPpb,%f,AccelPpbPerSec,%f\n", (*&g_MacClockTicksToMsRelation * v169), "ADP", 68, "Ga06_10GetTimeConvGPS", *v164, v164[4], *(v164 + 10), *(v164 + 2), v164[12], *(v164 + 4), *(v164 + 5), *(v164 + 6), *(v164 + 7));
      LbsOsaTrace_WriteLog(0x18u, __str, v170, 5, 1);
    }

    v171 = *v162;
    *v162 = v164;
    if (v171)
    {
      MEMORY[0x29C29EB20](v171, 0x1000C4079AA8B5ELL);
    }

    v172 = operator new(0x18uLL, MEMORY[0x29EDC9418]);
    if (!v172)
    {
      snprintf(v255, 0x400uLL, "ASSERT,%s,%d,%s", "Ga06_11GetTimeConvGlonass", 1480, "Memory allocation failed for GlonTimeInfo");
      if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v210 = mach_continuous_time();
        v211 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v210), "OSA", 69, "Ga06_11GetTimeConvGlonass", v255);
        LbsOsaTrace_WriteLog(0xEu, __str, v211, 0, 1);
      }

      if (gp_Logger)
      {
        (*(*gp_Logger + 48))(gp_Logger);
      }

      __assert_rtn("Ga06_11GetTimeConvGlonass", "ga06GnssPvtmUtils.cpp", 1480, "false && Memory allocation failed for GlonTimeInfo");
    }

    v173 = v172;
    v174 = *(v160 + 124);
    *v172 = v174;
    v175 = *(v160 + 122);
    v172[1] = v175;
    *(v172 + 1) = 126230400000000000 * v174 + 86400000000000 * v175;
    *(v172 + 2) = -*(v160 + 184);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v176 = mach_continuous_time();
      v177 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: 4YrPeriod,%u,Day,%u,CollecnTimeNs,%llu,OffsetNs,%f\n", (*&g_MacClockTicksToMsRelation * v176), "ADP", 68, "Ga06_11GetTimeConvGlonass", *v173, v173[1], *(v173 + 1), *(v173 + 2));
      LbsOsaTrace_WriteLog(0x18u, __str, v177, 5, 1);
    }

    v178 = v162[1];
    v162[1] = v173;
    if (v178)
    {
      MEMORY[0x29C29EB20](v178, 0x1000C40D315E998);
    }

    v179 = operator new(0x20uLL, MEMORY[0x29EDC9418]);
    if (!v179)
    {
      snprintf(v255, 0x400uLL, "ASSERT,%s,%d,%s", "Ga06_12GetTimeConvBeidou", 1515, "Memory allocation failed for BeidouTimeInfo");
      if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v212 = mach_continuous_time();
        v213 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v212), "OSA", 69, "Ga06_12GetTimeConvBeidou", v255);
        LbsOsaTrace_WriteLog(0xEu, __str, v213, 0, 1);
      }

      if (gp_Logger)
      {
        (*(*gp_Logger + 48))(gp_Logger);
      }

      __assert_rtn("Ga06_12GetTimeConvBeidou", "ga06GnssPvtmUtils.cpp", 1515, "false && Memory allocation failed for BeidouTimeInfo");
    }

    v180 = v179;
    *v179 = *(v160 + 126);
    *(v179 + 1) = 604800000000000 * *(v160 + 216) + 1000000000 * *(v160 + 220);
    *(v179 + 1) = *(v160 + 224);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v181 = mach_continuous_time();
      v182 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Week,%u,GpsTimeNs,%llu,OffsetNs,%f,DriftPpb,%f\n", (*&g_MacClockTicksToMsRelation * v181), "ADP", 73, "Ga06_12GetTimeConvBeidou", *v180, *(v180 + 1), *(v180 + 2), *(v180 + 3));
      LbsOsaTrace_WriteLog(0x18u, __str, v182, 4, 1);
    }

    v183 = v162[2];
    v162[2] = v180;
    if (v183)
    {
      MEMORY[0x29C29EB20](v183, 0x1000C4095D96C66);
    }

    v184 = operator new(0x20uLL, MEMORY[0x29EDC9418]);
    if (!v184)
    {
      snprintf(v255, 0x400uLL, "ASSERT,%s,%d,%s", "Ga06_13GetTimeConvGalileo", 1550, "Memory allocation failed for GalTimeInfo");
      if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v214 = mach_continuous_time();
        v215 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v214), "OSA", 69, "Ga06_13GetTimeConvGalileo", v255);
        LbsOsaTrace_WriteLog(0xEu, __str, v215, 0, 1);
      }

      if (gp_Logger)
      {
        (*(*gp_Logger + 48))(gp_Logger);
      }

      __assert_rtn("Ga06_13GetTimeConvGalileo", "ga06GnssPvtmUtils.cpp", 1550, "false && Memory allocation failed for GalTimeInfo");
    }

    v185 = v184;
    *v184 = *(v160 + 128);
    *(v184 + 1) = 604800000000000 * *(v160 + 192) + 1000000000 * *(v160 + 196);
    *(v184 + 1) = *(v160 + 200);
    v2 = v218;
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v186 = mach_continuous_time();
      v187 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Week,%u,TimeNs,%llu,OffsetNs,%f,DriftPpb,%f\n", (*&g_MacClockTicksToMsRelation * v186), "ADP", 73, "Ga06_13GetTimeConvGalileo", *v185, *(v185 + 1), *(v185 + 2), *(v185 + 3));
      LbsOsaTrace_WriteLog(0x18u, __str, v187, 4, 1);
    }

    v188 = v162[3];
    v162[3] = v185;
    if (v188)
    {
      MEMORY[0x29C29EB20](v188, 0x1000C4095D96C66);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v189 = mach_continuous_time();
      v190 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Time info populated\n", (*&g_MacClockTicksToMsRelation * v189), "ADP", 68, "Ga06_09GetTimeConv");
      LbsOsaTrace_WriteLog(0x18u, __str, v190, 5, 1);
    }

    v224 = 0;
    std::unique_ptr<gnss::TimeConversionInfo>::reset[abi:ne200100](&v224, 0);
    v243[0] = 0;
    std::unique_ptr<gnss::TimeConversionInfo>::reset[abi:ne200100](v231 + 5, v162);
    std::unique_ptr<gnss::TimeConversionInfo>::reset[abi:ne200100](v243, 0);
    v3 = *(v218 + 280);
  }

  v224 = 0;
  v225 = &v224;
  v226 = 0x4002000000;
  v227 = __Block_byref_object_copy__21;
  v228 = __Block_byref_object_dispose__22;
  memset(v229, 0, sizeof(v229));
  if ((v3 & 8) != 0)
  {
    if (*(*(*(v1 + 32) + 8) + 296) >= 0x100u)
    {
      v192 = 256;
    }

    else
    {
      v192 = *(*(*(v1 + 32) + 8) + 296);
    }

    if (*(*(*(v1 + 32) + 8) + 296))
    {
      v257 = v229;
      std::__allocate_at_least[abi:ne200100]<std::allocator<gnss::SvInfo>>(v192);
    }

    v191 = -252645135 * ((v225[6] - v225[5]) >> 3);
    v2 = v218;
    v1 = a1;
  }

  else
  {
    v191 = 0;
  }

  v193 = *(*(v1 + 32) + 8);
  v194 = v193[14];
  if (v194)
  {
    MEMORY[0x29C29EAF0](v194, 0x1000C807B0C7242);
    v193 = *(*(v1 + 32) + 8);
  }

  v195 = v193[36];
  if (v195)
  {
    MEMORY[0x29C29EAF0](v195, 0x1000C80F973AAC2);
    v193 = *(*(v1 + 32) + 8);
  }

  v196 = v193[38];
  if (v196)
  {
    MEMORY[0x29C29EAF0](v196, 0x1000C80E6928973);
    v193 = *(*(v1 + 32) + 8);
  }

  v193[14] = 0;
  *(*(*(v1 + 32) + 8) + 288) = 0;
  *(*(*(v1 + 32) + 8) + 304) = 0;
  std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::__value_func[abi:ne200100](v255, v2 + 312);
  v197 = *(v2 + 296);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZN4gnss15GnssAdaptDevice17Ga06_01ReportPvtmE11e_Gnm_Error16s_Gnm_AppNavData_block_invoke_23;
  block[3] = &unk_2A1F89D60;
  std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::__value_func[abi:ne200100](v254, v255);
  block[4] = &v236;
  block[5] = &v224;
  block[6] = v244;
  block[7] = &v230;
  dispatch_async(v197, block);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v198 = mach_continuous_time();
    v199 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Meas update,SvInfo Size,%u\n", (*&g_MacClockTicksToMsRelation * v198), "ADP", 73, "Ga06_01ReportPvtm_block_invoke", v191);
    LbsOsaTrace_WriteLog(0x18u, __str, v199, 4, 1);
  }

  std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](v254);
  std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](v255);
  _Block_object_dispose(&v224, 8);
  *__str = v229;
  std::vector<gnss::SvInfo>::__destroy_vector::operator()[abi:ne200100](__str);
  _Block_object_dispose(&v230, 8);
  std::unique_ptr<gnss::TimeConversionInfo>::reset[abi:ne200100](&v235, 0);
  _Block_object_dispose(v244, 8);
  if (*&v244[40])
  {
    *&v245 = *&v244[40];
    operator delete(*&v244[40]);
  }

  _Block_object_dispose(&v236, 8);
  result = std::unique_ptr<gnss::MeasurementReport>::reset[abi:ne200100](&v241, 0);
  v201 = *MEMORY[0x29EDCA608];
  return result;
}