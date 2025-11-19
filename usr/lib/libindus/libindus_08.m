uint64_t LongPrnIdx_To_Prn(unsigned int a1, int *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = __OFSUB__(a1, 31);
  result = a1 - 31;
  if ((result < 0) ^ v3 | (result == 0))
  {
    if (a2)
    {
      *a2 = 1;
    }

    result = a1 + 1;
  }

  else if (a1 > 0x37)
  {
    result = a1 - 91;
    if (a1 > 0x5B)
    {
      if (a1 <= 0x9A)
      {
        if (!a2)
        {
          goto LABEL_14;
        }

        v5 = 4;
        goto LABEL_9;
      }

      result = a1 - 164;
      if (a1 > 0xA4)
      {
        if (a1 <= 0xB2)
        {
          if (!a2)
          {
            goto LABEL_14;
          }

          v5 = 6;
          goto LABEL_9;
        }

        if (a1 > 0xD9)
        {
          if (a2)
          {
            *a2 = 0;
          }

          gn_report_assertion_failure("LPrn_2_Prn:");
          result = 0;
        }

        else
        {
          if (a2)
          {
            *a2 = 7;
          }

          result = a1 - 59;
        }
      }

      else
      {
        if (a2)
        {
          *a2 = 5;
        }

        result = a1 + 38;
      }
    }

    else
    {
      if (a2)
      {
        *a2 = 3;
      }

      result = a1 - 55;
    }
  }

  else if (a2)
  {
    v5 = 2;
LABEL_9:
    *a2 = v5;
  }

LABEL_14:
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t LongPrnIdx_To_ShortPrnIdx(uint64_t result, _DWORD *a2)
{
  v3 = *MEMORY[0x29EDCA608];
  if ((result & 0x80000000) != 0)
  {
    if (a2)
    {
      result = 0;
      *a2 = 0;
      goto LABEL_35;
    }

LABEL_34:
    result = 0;
    goto LABEL_35;
  }

  if (result <= 0x1F)
  {
    if (a2)
    {
      *a2 = 1;
    }

    goto LABEL_35;
  }

  if (result <= 0x37)
  {
    if (a2)
    {
      *a2 = 2;
    }

    result = (result - 32);
    goto LABEL_35;
  }

  if (result <= 0x5B)
  {
    if (a2)
    {
      *a2 = 3;
    }

    result = (result - 56);
    goto LABEL_35;
  }

  if (result <= 0x9A)
  {
    if (a2)
    {
      *a2 = 4;
    }

    result = (result - 92);
    goto LABEL_35;
  }

  if (result <= 0xA4)
  {
    if (a2)
    {
      *a2 = 5;
    }

    result = (result - 155);
    goto LABEL_35;
  }

  if (result <= 0xB2)
  {
    if (a2)
    {
      *a2 = 6;
    }

    result = (result - 165);
    goto LABEL_35;
  }

  if (result > 0xD9)
  {
    if (a2)
    {
      *a2 = 0;
    }

    gn_report_assertion_failure("LPrn_2_SPrn:");
    goto LABEL_34;
  }

  if (a2)
  {
    *a2 = 7;
  }

  result = (result - 179);
LABEL_35:
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GNSS_Id_To_Num_Prn_Idx(int a1)
{
  v1 = a1;
  v10 = *MEMORY[0x29EDCA608];
  v2 = a1;
  v3 = BYTE2(a1);
  if (!BYTE2(a1))
  {
    gn_report_assertion_failure("Id_2_NPrn: 0");
  }

  if ((v2 - 1) > 6)
  {
    v6 = 0;
    v7 = "Id_2_NPrn: 1";
    goto LABEL_9;
  }

  v4 = v3 - Prn_Offset[v1];
  v5 = Num_Prn[v2 - 1];
  v6 = (v4 + v5);
  if (v4 + v5 < 0)
  {
    v6 = 0;
    v7 = "Id_2_NPrn: 2";
    goto LABEL_9;
  }

  if (v6 >= 0xDA)
  {
    v6 = 217;
    v7 = "Id_2_NPrn: 3";
LABEL_9:
    gn_report_assertion_failure(v7);
  }

  v8 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t Num_Prn_Idx_To_GNSS_Id(int a1)
{
  v9 = *MEMORY[0x29EDCA608];
  Constell_Prn = Get_Constell_Prn(a1);
  if (!Constell_Prn)
  {
    v5 = 0;
    v6 = "NPrn_2_Id: 1";
    goto LABEL_7;
  }

  v3 = Prn_Offset[Constell_Prn] + a1;
  v4 = Num_Prn[Constell_Prn - 1];
  v5 = (v3 - v4);
  if (v3 - v4 < 0)
  {
    v5 = 0;
    v6 = "NPrn_2_Id: 2";
    goto LABEL_7;
  }

  if (v5 >= 0x100)
  {
    v5 = 255;
    v6 = "NPrn_2_Id: 3";
LABEL_7:
    gn_report_assertion_failure(v6);
  }

  v7 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t GNSS_Id_To_Num_Pos_Idx(int a1)
{
  v1 = a1;
  v10 = *MEMORY[0x29EDCA608];
  v2 = a1;
  v3 = BYTE2(a1);
  if (!BYTE2(a1))
  {
    gn_report_assertion_failure("Id_2_NPos: 0");
  }

  if ((v2 - 1) > 6)
  {
    v6 = 0;
    v7 = "Id_2_NPos: 1";
    goto LABEL_9;
  }

  v4 = v3 - Prn_Offset[v1];
  v5 = Num_Pos[v2 - 1];
  v6 = (v4 + v5);
  if (v4 + v5 < 0)
  {
    v6 = 0;
    v7 = "Id_2_NPos: 2";
    goto LABEL_9;
  }

  if (v6 >= 0xC5)
  {
    v6 = 196;
    v7 = "Id_2_NPos: 3";
LABEL_9:
    gn_report_assertion_failure(v7);
  }

  v8 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t Num_Pos_Idx_To_GNSS_Id(int a1)
{
  v9 = *MEMORY[0x29EDCA608];
  Constell_Pos = Get_Constell_Pos(a1);
  if (!Constell_Pos)
  {
    v5 = 0;
    v6 = "NPos_2_Id: 1";
    goto LABEL_7;
  }

  v3 = Prn_Offset[Constell_Pos] + a1;
  v4 = Num_Pos[Constell_Pos - 1];
  v5 = (v3 - v4);
  if (v3 - v4 < 0)
  {
    v5 = 0;
    v6 = "NPos_2_Id: 2";
    goto LABEL_7;
  }

  if (v5 >= 0x100)
  {
    v5 = 255;
    v6 = "NPos_2_Id: 3";
LABEL_7:
    gn_report_assertion_failure(v6);
  }

  v7 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t GNSS_SVId_Constell_To_Num_Pos_Idx(int a1, int a2)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a2 < 1)
  {
    v4 = 0;
    v5 = "Id&C_2_NPos: 1";
    goto LABEL_7;
  }

  v2 = a1 - Prn_Offset[a2];
  v3 = Num_Pos[a2 - 1];
  v4 = (v2 + v3);
  if (v2 + v3 < 0)
  {
    v4 = 0;
    v5 = "Id&C_2_NPos: 2";
    goto LABEL_7;
  }

  if (v4 >= 0xC5)
  {
    v4 = 196;
    v5 = "Id&C_2_NPos: 3";
LABEL_7:
    gn_report_assertion_failure(v5);
  }

  v6 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t Num_Pos_Idx_To_Num_Prn_Idx(int a1)
{
  v9 = *MEMORY[0x29EDCA608];
  Constell_Pos = Get_Constell_Pos(a1);
  if (!Constell_Pos)
  {
    v5 = 0;
    v6 = "NPos_2_NPrn: 1";
    goto LABEL_7;
  }

  v3 = a1 - Num_Pos[Constell_Pos - 1];
  v4 = Num_Prn[Constell_Pos - 1];
  v5 = (v3 + v4);
  if (v3 + v4 < 0)
  {
    v5 = 0;
    v6 = "NPos_2_NPrn: 2";
    goto LABEL_7;
  }

  if (v5 >= 0xDA)
  {
    v5 = 217;
    v6 = "NPos_2_NPrn: 3";
LABEL_7:
    gn_report_assertion_failure(v6);
  }

  v7 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t Num_Prn_Idx_To_Num_Pos_Idx(int a1)
{
  v9 = *MEMORY[0x29EDCA608];
  Constell_Prn = Get_Constell_Prn(a1);
  if (!Constell_Prn)
  {
    v5 = 0;
    v6 = "NPrn_2_NPos: 1";
    goto LABEL_7;
  }

  v3 = a1 - Num_Prn[Constell_Prn - 1];
  v4 = Num_Pos[Constell_Prn - 1];
  v5 = (v3 + v4);
  if (v3 + v4 < 0)
  {
    v5 = 0;
    v6 = "NPrn_2_NPos: 2";
    goto LABEL_7;
  }

  if (v5 >= 0xC5)
  {
    v5 = 196;
    v6 = "NPrn_2_NPos: 3";
LABEL_7:
    gn_report_assertion_failure(v6);
  }

  v7 = *MEMORY[0x29EDCA608];
  return v5;
}

char **STEU_Encode(char **a1, char a2, unsigned __int8 *a3, unint64_t *a4)
{
  v18 = *MEMORY[0x29EDCA608];
  v5 = *a4;
  v6 = (*a4 - a3) % 3;
  if (v6)
  {
    if (v6 == 1)
    {
      *v5 = 0;
      v5 = (*a4 + 1);
      *a4 = v5;
    }

    *v5 = 0;
    ++*a4;
  }

  v7 = (*a1)++;
  *v7 = 123;
  v8 = *a1;
  if (*a1 >= a1[3])
  {
    v8 = a1[2];
  }

  *a1 = v8 + 1;
  *v8 = a2;
  v9 = *a1;
  if (*a1 >= a1[3])
  {
    v9 = a1[2];
    *a1 = v9;
  }

  v17[4] = 0;
  v10 = *a4;
  do
  {
    v11 = *a3;
    v12 = (v11 >> 2) + 48;
    v13 = a3[1];
    v17[1] = ((v13 >> 4) & 0xCF | (16 * (v11 & 3))) + 48;
    LOBYTE(v11) = a3[2];
    v17[2] = ((v11 >> 6) & 0xC3 | (4 * (v13 & 0xF))) + 48;
    v17[3] = (v11 & 0x3F) + 48;
    v14 = 1;
    do
    {
      *a1 = v9 + 1;
      *v9 = v12;
      v9 = *a1;
      if (*a1 >= a1[3])
      {
        v9 = a1[2];
        *a1 = v9;
      }

      v12 = v17[v14++];
    }

    while (v12);
    a3 += 3;
  }

  while (a3 < v10);
  *a4 = a3;
  v15 = *MEMORY[0x29EDCA608];

  return STEU_Add_Checksum_LF(a1, v8);
}

char **STEU_Add_Checksum_LF(uint64_t a1, char *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v3 = *a1;
  if (*a1 == a2)
  {
    v7 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      v6 = *a2++;
      v5 = v6;
      if (a2 >= *(a1 + 24))
      {
        a2 = *(a1 + 16);
      }

      v4 += v5;
    }

    while (a2 != v3);
    v7 = v4;
  }

  *a1 = v3 + 1;
  *v3 = 125;
  if (*a1 >= *(a1 + 24))
  {
    *a1 = *(a1 + 16);
  }

  result = sprintf_02x(a1, v7);
  v9 = (*a1)++;
  *v9 = 10;
  if (*a1 >= *(a1 + 24))
  {
    *a1 = *(a1 + 16);
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

char **STEU_Encode_c(char **a1, char a2, int a3, unsigned __int8 *a4)
{
  v17 = *MEMORY[0x29EDCA608];
  v5 = (*a1)++;
  *v5 = 123;
  v6 = *a1;
  if (*a1 >= a1[3])
  {
    v6 = a1[2];
  }

  *a1 = v6 + 1;
  *v6 = 99;
  v7 = *a1;
  if (*a1 >= a1[3])
  {
    v7 = a1[2];
  }

  *a1 = v7 + 1;
  *v7 = a2;
  v8 = *a1;
  if (*a1 >= a1[3])
  {
    v8 = a1[2];
    *a1 = v8;
  }

  v16[4] = 0;
  v9 = &a4[a3];
  do
  {
    v10 = *a4;
    v11 = (v10 >> 2) + 48;
    v12 = a4[1];
    v16[1] = ((v12 >> 4) & 0xCF | (16 * (v10 & 3))) + 48;
    LOBYTE(v10) = a4[2];
    v16[2] = ((v10 >> 6) & 0xC3 | (4 * (v12 & 0xF))) + 48;
    v16[3] = (v10 & 0x3F) + 48;
    v13 = 1;
    do
    {
      *a1 = v8 + 1;
      *v8 = v11;
      v8 = *a1;
      if (*a1 >= a1[3])
      {
        v8 = a1[2];
        *a1 = v8;
      }

      v11 = v16[v13++];
    }

    while (v11);
    a4 += 3;
  }

  while (a4 < v9);
  v14 = *MEMORY[0x29EDCA608];

  return STEU_Add_Checksum_LF(a1, v6);
}

void *GNSS_Write_NMEA(void *result)
{
  v11 = *MEMORY[0x29EDCA608];
  if (result)
  {
    v1 = result;
    v3 = *result;
    v2 = result[1];
    if (v2 != *result)
    {
      if (v2 > *result)
      {
        v3 = result[3];
      }

      v4 = v3 - v2;
      result = GN_GPS_Write_NMEA((v3 - v2), v2);
      v5 = result;
      if (g_Logging_Cfg >= 7)
      {
        result = GN_GPS_Write_Nav_Debug(result, v1[1]);
      }

      v6 = (v1[1] + v5);
      v1[1] = v6;
      if (v6 >= v1[3])
      {
        v6 = v1[2];
        v1[1] = v6;
        if (v5 == v4)
        {
          v7 = (*v1 - v6);
          result = GN_GPS_Write_NMEA((*v1 - v6), v6);
          v8 = result;
          if (g_Logging_Cfg >= 8)
          {
            result = GN_GPS_Write_Nav_Debug(result, v1[1]);
          }

          v6 = (v1[1] + v8);
          v1[1] = v6;
        }
      }

      if (v6 == *v1)
      {
        v9 = v1[2];
        *v1 = v9;
        v1[1] = v9;
      }
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

char **NMEA_Encode(char **result, uint64_t a2, uint64_t a3)
{
  v912 = *MEMORY[0x29EDCA608];
  if (!result || !a2)
  {
LABEL_662:
    v326 = *MEMORY[0x29EDCA608];
    return result;
  }

  v5 = result;
  v6 = (*result)++;
  *v6 = 36;
  v7 = *result;
  if (*result >= result[3])
  {
    v7 = result[2];
  }

  v895 = result + 2;
  v8 = 71;
  v9 = 1u;
  v10 = v7;
  do
  {
    *result = v10 + 1;
    *v10 = v8;
    v10 = *result;
    if (*result >= result[3])
    {
      v10 = result[2];
      *result = v10;
    }

    v8 = aGpgga[v9++];
  }

  while (v9 != 7);
  sprintf_HHMMSS(result, a2);
  v11 = *(a2 + 308);
  v12 = *(a2 + 334) != 1 || v11 == 0;
  v894 = a2;
  if (v12)
  {
    v13 = 0;
    v14 = *v5;
    v15 = 44;
    do
    {
      *v5 = v14 + 1;
      *v14 = v15;
      v14 = *v5;
      if (*v5 >= *(v5 + 24))
      {
        v14 = *(v5 + 16);
        *v5 = v14;
      }

      v15 = a00MM[++v13];
    }

    while (v13 != 16);
  }

  else
  {
    sprintf_LatLon(v5, *(a2 + 104), *(a2 + 112));
    v16 = 0x323132313630uLL >> (8 * v11);
    if (v11 >= 6)
    {
      LOBYTE(v16) = 48;
    }

    v17 = (*v5)++;
    *v17 = v16;
    v18 = *v5;
    if (*v5 >= *(v5 + 24))
    {
      v18 = *v895;
    }

    *v5 = v18 + 1;
    *v18 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf1da(v5, *(a2 + 345), v911, 0, 0);
    v19 = (*v5)++;
    *v19 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf_DOP(v5, *(a2 + 272));
    v20 = (*v5)++;
    *v20 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    v21 = *(a2 + 128) * 1000.0;
    v22 = -0.5;
    if (v21 > 0.0)
    {
      v22 = 0.5;
    }

    v23 = v21 + v22;
    if (v23 <= 2147483650.0)
    {
      if (v23 >= -2147483650.0)
      {
        v24 = v23;
      }

      else
      {
        v24 = 0x80000000;
      }
    }

    else
    {
      v24 = 0x7FFFFFFF;
    }

    sprintf_4f(v5, v24, 4);
    v25 = *v5;
    v26 = 44;
    v27 = 1u;
    do
    {
      *v5 = v25 + 1;
      *v25 = v26;
      v25 = *v5;
      if (*v5 >= *(v5 + 24))
      {
        v25 = *(v5 + 16);
        *v5 = v25;
      }

      v26 = aM_0[v27++];
    }

    while (v27 != 4);
    v28 = (*(a2 + 120) - *(a2 + 128)) * 1000.0;
    v29 = -0.5;
    if (v28 > 0.0)
    {
      v29 = 0.5;
    }

    v30 = v28 + v29;
    if (v30 <= 2147483650.0)
    {
      if (v30 >= -2147483650.0)
      {
        v31 = v30;
      }

      else
      {
        v31 = 0x80000000;
      }
    }

    else
    {
      v31 = 0x7FFFFFFF;
    }

    sprintf_4f(v5, v31, 4);
    v32 = *v5;
    v33 = 44;
    v34 = 1u;
    do
    {
      *v5 = v32 + 1;
      *v32 = v33;
      v32 = *v5;
      if (*v5 >= *(v5 + 24))
      {
        v32 = *(v5 + 16);
        *v5 = v32;
      }

      v33 = aM_0[v34++];
    }

    while (v34 != 4);
    *v5 = v32 + 1;
    *v32 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }
  }

  NMEA_Add_checksum(v5, v7);
  v35 = (*v5)++;
  *v35 = 36;
  v36 = *v5;
  if (*v5 >= *(v5 + 24))
  {
    v36 = *v895;
  }

  v37 = 71;
  v38 = 1u;
  v39 = v36;
  do
  {
    *v5 = v39 + 1;
    *v39 = v37;
    v39 = *v5;
    if (*v5 >= *(v5 + 24))
    {
      v39 = *(v5 + 16);
      *v5 = v39;
    }

    v37 = aGpgll[v38++];
  }

  while (v38 != 7);
  v40 = *(a2 + 308);
  if (*(a2 + 334) != 1 || v40 == 0)
  {
    v42 = 0;
    v43 = 44;
    v44 = a2;
    do
    {
      *v5 = v39 + 1;
      *v39 = v43;
      v39 = *v5;
      if (*v5 >= *(v5 + 24))
      {
        v39 = *(v5 + 16);
        *v5 = v39;
      }

      v43 = asc_29906A308[++v42];
    }

    while (v42 != 4);
    sprintf_HHMMSS(v5, a2);
    v45 = "V,N";
  }

  else
  {
    sprintf_LatLon(v5, *(a2 + 104), *(a2 + 112));
    sprintf_HHMMSS(v5, a2);
    if (v40 > 5)
    {
      v45 = "V,N";
    }

    else
    {
      v45 = off_29EF064B8[v40 - 1];
    }

    v44 = a2;
  }

  v46 = *v45;
  if (*v45)
  {
    v47 = *v5;
    v48 = (v45 + 1);
    do
    {
      *v5 = v47 + 1;
      *v47 = v46;
      v47 = *v5;
      if (*v5 >= *(v5 + 24))
      {
        v47 = *(v5 + 16);
        *v5 = v47;
      }

      v49 = *v48++;
      v46 = v49;
    }

    while (v49);
  }

  NMEA_Add_checksum(v5, v36);
  v910 = 0;
  v909 = 0;
  v908 = 0;
  v907 = 0;
  v906 = 0;
  v905 = 0;
  v904 = 0;
  v903 = 0;
  v902 = 0;
  v901 = 0;
  v900 = 0;
  v899 = 0;
  v50 = *(v44 + 344);
  if (*(v44 + 344))
  {
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = (v44 + 348);
    v60 = v44;
    while (1)
    {
      if (*(v60 + 6112) == 1 && (v61 = *(v60 + 1756), *(v60 + 1756)) && ((v62 = *v59, v61 == v55) ? (v63 = v62 == v54) : (v63 = 0), !v63))
      {
        if (v62 > 3)
        {
          switch(v62)
          {
            case 4:
              if (v58 <= 11)
              {
                *(&v903 + v58++) = v61;
              }

              v54 = 4;
              goto LABEL_94;
            case 5:
              if (v57 <= 11)
              {
                *(&v901 + v57++) = v61;
              }

              v54 = 5;
              goto LABEL_94;
            case 6:
              if (v56 <= 11)
              {
                *(&v899 + v56++) = v61;
              }

              v54 = 6;
              goto LABEL_94;
          }
        }

        else
        {
          switch(v62)
          {
            case 1:
              if (v51 <= 11)
              {
                *(&v909 + v51++) = v61;
              }

              v54 = 1;
              goto LABEL_94;
            case 2:
              if (v52 <= 11)
              {
                *(&v907 + v52++) = v61;
              }

              v54 = 2;
              goto LABEL_94;
            case 3:
              if (v53 <= 11)
              {
                *(&v905 + v53++) = v61;
              }

              v54 = 3;
              goto LABEL_94;
          }
        }

        v54 = *v59;
      }

      else
      {
        v61 = v55;
      }

LABEL_94:
      ++v59;
      ++v60;
      v55 = v61;
      if (!--v50)
      {
        goto LABEL_116;
      }
    }
  }

  v58 = 0;
  v57 = 0;
  v56 = 0;
  v53 = 0;
  v52 = 0;
  v51 = 0;
LABEL_116:
  v876 = v58;
  v878 = v56;
  v881 = v53;
  v883 = v52;
  v874 = a3;
  v896 = 0;
  if (*(v44 + 332) == 1)
  {
    v64 = 77;
  }

  else
  {
    v64 = 65;
  }

  v65 = *(v44 + 308);
  if (!*(v44 + 334))
  {
    v65 = 0;
  }

  v890 = v65;
  v892 = v64;
  v66 = v65 & 0xFFFFFFFE;
  if (v66 == 2)
  {
    v67 = 50;
  }

  else
  {
    v67 = 49;
  }

  if (v66 == 4)
  {
    v68 = 51;
  }

  else
  {
    v68 = v67;
  }

  v888 = v68;
  v885 = v51;
  v875 = v51 > 0;
  v69 = 1;
  do
  {
    v70 = v69;
    v12 = (v69 & 1) == 0;
    v71 = "GP";
    if (v12)
    {
      v71 = "GN";
    }

    v897 = *v71;
    v886 = v71 + 1;
    v72 = 1;
    v893 = v70;
    do
    {
      if ((v70 & (v72 != 1)) != 0)
      {
        goto LABEL_209;
      }

      if (v72 > 3)
      {
        switch(v72)
        {
          case 4:
            v73 = &v903;
            v74 = 4;
            v75 = v876;
            break;
          case 5:
            v73 = &v905;
            v74 = 3;
            v75 = v881;
            break;
          case 6:
            v73 = &v899;
            v74 = 6;
            v75 = v878;
            break;
          default:
LABEL_144:
            EvCrt_Illegal_switch_default("NMEA_Encode_GSA", 0x279u);
            goto LABEL_209;
        }
      }

      else
      {
        switch(v72)
        {
          case 1:
            v73 = &v909;
            v76 = v875;
            v75 = v885;
            v74 = 1;
            goto LABEL_149;
          case 2:
            v73 = &v907;
            v74 = 2;
            v75 = v883;
            break;
          case 3:
            v73 = &v901;
            v74 = 5;
            v75 = v57;
            break;
          default:
            goto LABEL_144;
        }
      }

      if (v75 < 1)
      {
        goto LABEL_209;
      }

      v76 = 1;
LABEL_149:
      v77 = (*v5)++;
      *v77 = 36;
      v78 = *v5;
      if (*v5 >= *(v5 + 24))
      {
        v78 = *v895;
      }

      v79 = v78;
      if (v897)
      {
        v80 = v886;
        v79 = v78;
        v81 = v897;
        do
        {
          *v5 = v79 + 1;
          *v79 = v81;
          v79 = *v5;
          if (*v5 >= *(v5 + 24))
          {
            v79 = *(v5 + 16);
            *v5 = v79;
          }

          v82 = *v80++;
          v81 = v82;
        }

        while (v82);
      }

      v83 = 0;
      v84 = 71;
      do
      {
        *v5 = v79 + 1;
        *v79 = v84;
        v79 = *v5;
        if (*v5 >= *(v5 + 24))
        {
          v79 = *(v5 + 16);
          *v5 = v79;
        }

        v84 = aGsa[++v83];
      }

      while (v83 != 4);
      *v5 = v79 + 1;
      *v79 = v892;
      v85 = *v5;
      if (*v5 >= *(v5 + 24))
      {
        v85 = *v895;
      }

      *v5 = v85 + 1;
      *v85 = 44;
      v86 = *v5;
      if (*v5 >= *(v5 + 24))
      {
        v86 = *v895;
      }

      *v5 = v86 + 1;
      *v86 = v888;
      v87 = *v5;
      if (*v5 >= *(v5 + 24))
      {
        v87 = *v895;
      }

      *v5 = v87 + 1;
      *v87 = 44;
      v88 = *v5;
      if (*v5 >= *(v5 + 24))
      {
        v88 = *(v5 + 16);
        *v5 = v88;
      }

      if (v890)
      {
        if (v75 <= 0)
        {
          goto LABEL_183;
        }

        v89 = v75;
        do
        {
          v91 = *v73;
          v73 = (v73 + 1);
          v90 = v91;
          if (v91)
          {
            v92 = v90 + 64;
            if (v74 != 2)
            {
              v92 = v90 - 192;
            }

            if (v74 == 1)
            {
              v92 = v90;
            }

            if (v74 <= 3)
            {
              v93 = v92;
            }

            else
            {
              v93 = v90;
            }

            sprintf_02d(v5, v93);
            v94 = (*v5)++;
            *v94 = 44;
            v88 = *v5;
            if (*v5 >= *(v5 + 24))
            {
              v88 = *(v5 + 16);
              *v5 = v88;
            }
          }

          --v89;
        }

        while (v89);
        v44 = v894;
        if (v75 < 12)
        {
LABEL_183:
          v95 = v75 - 12;
          do
          {
            *v5 = v88 + 1;
            *v88 = 44;
            v88 = *v5;
            if (*v5 >= *(v5 + 24))
            {
              v88 = *(v5 + 16);
              *v5 = v88;
            }
          }

          while (!__CFADD__(v95++, 1));
        }
      }

      else
      {
        for (i = 15; i > 1; --i)
        {
          *v5 = v88 + 1;
          *v88 = 44;
          v88 = *v5;
          if (*v5 >= *(v5 + 24))
          {
            v88 = *(v5 + 16);
            *v5 = v88;
          }
        }
      }

      if (v76 && *(v44 + 272) < 99.99)
      {
        sprintf_DOP(v5, *(v44 + 288));
        v98 = (*v5)++;
        *v98 = 44;
        if (*v5 >= *(v5 + 24))
        {
          *v5 = *(v5 + 16);
        }

        sprintf_DOP(v5, *(v44 + 272));
        v99 = (*v5)++;
        *v99 = 44;
        if (*v5 >= *(v5 + 24))
        {
          *v5 = *(v5 + 16);
        }

        sprintf_DOP(v5, *(v44 + 280));
      }

      else
      {
        *v5 = v88 + 1;
        *v88 = 44;
        v100 = *v5;
        if (*v5 >= *(v5 + 24))
        {
          v100 = *v895;
        }

        *v5 = v100 + 1;
        *v100 = 44;
        if (*v5 >= *(v5 + 24))
        {
          *v5 = *(v5 + 16);
        }
      }

      if (v896)
      {
        v101 = (*v5)++;
        *v101 = 44;
        if (*v5 >= *(v5 + 24))
        {
          *v5 = *(v5 + 16);
        }

        sprintf1da(v5, v72, v911, 0, 0);
      }

      NMEA_Add_checksum(v5, v78);
      v70 = v893;
LABEL_209:
      ++v72;
    }

    while (v72 != 7);
    v69 = 0;
    v896 = 1;
  }

  while ((v70 & 1) != 0);
  v102 = (*v5)++;
  *v102 = 36;
  v103 = *v5;
  if (*v5 >= *(v5 + 24))
  {
    v103 = *v895;
  }

  v104 = 0;
  v105 = 71;
  v106 = v103;
  do
  {
    *v5 = v106 + 1;
    *v106 = v105;
    v106 = *v5;
    if (*v5 >= *(v5 + 24))
    {
      v106 = *(v5 + 16);
      *v5 = v106;
    }

    v105 = aGn[++v104];
  }

  while (v104 != 2);
  v107 = 0;
  v108 = 71;
  do
  {
    *v5 = v106 + 1;
    *v106 = v108;
    v106 = *v5;
    if (*v5 >= *(v5 + 24))
    {
      v106 = *(v5 + 16);
      *v5 = v106;
    }

    v108 = aGst[++v107];
  }

  while (v107 != 4);
  sprintf_HHMMSS(v5, v44);
  if (*(v44 + 345))
  {
    v109 = *(v44 + 256);
    if (v109 > 0.0)
    {
      sprintf_AccEst(v5, v109);
    }
  }

  v110 = (*v5)++;
  *v110 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf_AccEst(v5, *(v894 + 208));
  v111 = (*v5)++;
  *v111 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf_AccEst(v5, *(v894 + 216));
  v112 = (*v5)++;
  *v112 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  v113 = *(v894 + 224);
  if (v113 >= 0)
  {
    v114 = *(v894 + 224);
  }

  else
  {
    v114 = -v113;
  }

  sprintf1da(v5, v114, v911, 0, v113 >> 31);
  v115 = (*v5)++;
  *v115 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf_AccEst(v5, *(v894 + 184));
  v116 = (*v5)++;
  *v116 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf_AccEst(v5, *(v894 + 192));
  v117 = (*v5)++;
  *v117 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  v118 = v894;
  sprintf_AccEst(v5, *(v894 + 200));
  NMEA_Add_checksum(v5, v103);
  v119 = 0;
  v120 = v894 + 1756;
  v121 = v894 + 348;
  while (2)
  {
    v122 = &NMEA_Encode_GSV(Cyc_buffer *,GN_GPS_Nav_Data const*)::GSV_Types[2 * v119];
    v123 = *v122;
    v898 = v122[1];
    v877 = v119;
    if (*v122 > 2)
    {
      v124 = &unk_299066A3A;
      v125 = "GI";
      if (v123 != 6)
      {
        v125 = &unk_299066A3A;
      }

      if (v123 == 5)
      {
        v125 = "GA";
      }

      if (v123 == 4)
      {
        v124 = "GB";
      }

      if (v123 == 3)
      {
        v124 = "GQ";
      }

      if (v123 <= 4)
      {
        v125 = v124;
      }

      goto LABEL_257;
    }

    if (v123)
    {
      v125 = &unk_299066A3A;
      if (v123 == 2)
      {
        v125 = "GL";
      }

      if (v123 == 1)
      {
        v125 = "GP";
      }

LABEL_257:
      v879 = v125;
      v126 = *(v118 + 344);
      if (*(v118 + 344))
      {
        v127 = 0;
        v128 = (v894 + 1756);
        v129 = v118;
        do
        {
          v130 = *v128++;
          if (v130 && *(v129 + 348) == v123 && *(v129 + 860) == v898)
          {
            ++v127;
          }

          v129 += 4;
          --v126;
        }

        while (v126);
        if (v127 > 0)
        {
          v131 = 0;
          v132 = ((v127 - 1) >> 2) + 1;
          v887 = *v879;
          v880 = (v879 + 1);
          v133 = 1;
          v882 = v132;
          v884 = v127;
          while (1)
          {
            v134 = (*v5)++;
            *v134 = 36;
            v135 = *v5;
            if (*v5 >= *(v5 + 24))
            {
              v135 = *v895;
            }

            v136 = v135;
            if (v887)
            {
              v137 = v880;
              v136 = v135;
              v138 = v887;
              do
              {
                *v5 = v136 + 1;
                *v136 = v138;
                v136 = *v5;
                if (*v5 >= *(v5 + 24))
                {
                  v136 = *(v5 + 16);
                  *v5 = v136;
                }

                v139 = *v137++;
                v138 = v139;
              }

              while (v139);
            }

            v140 = 0;
            v141 = 71;
            do
            {
              *v5 = v136 + 1;
              *v136 = v141;
              v136 = *v5;
              if (*v5 >= *(v5 + 24))
              {
                v136 = *(v5 + 16);
                *v5 = v136;
              }

              v141 = aGsv[++v140];
            }

            while (v140 != 4);
            v889 = v135;
            sprintf1da(v5, v132, v911, 0, 0);
            v142 = (*v5)++;
            *v142 = 44;
            if (*v5 >= *(v5 + 24))
            {
              *v5 = *(v5 + 16);
            }

            sprintf1da(v5, v133, v911, 0, 0);
            v143 = (*v5)++;
            *v143 = 44;
            if (*v5 >= *(v5 + 24))
            {
              *v5 = *(v5 + 16);
            }

            v891 = v133;
            sprintf_02d(v5, v127);
            v144 = *(v118 + 344);
            if (v131 < v144)
            {
              v145 = 0;
              v146 = v131;
              v147 = v898;
              while (1)
              {
                if (!*(v120 + v131) || *(v121 + 4 * v131) != v123 || *(v894 + 860 + 4 * v131) != v147)
                {
                  ++v131;
                  goto LABEL_294;
                }

                v148 = (*v5)++;
                *v148 = 44;
                if (*v5 >= *(v5 + 24))
                {
                  *v5 = *(v5 + 16);
                }

                v149 = *(v120 + v131);
                v150 = *(v121 + 4 * v131);
                if (v150 > 3)
                {
                  if (v150 == 6)
                  {
                    v151 = *(v120 + v131);
                  }

                  else
                  {
                    v151 = 0;
                  }

                  if (v150 != 4 && v150 != 5)
                  {
                    v149 = v151;
                  }
                }

                else if (v150 != 1)
                {
                  if (v150 == 2)
                  {
                    v149 += 64;
                  }

                  else if (v150 == 3)
                  {
                    v149 -= 192;
                  }

                  else
                  {
                    v149 = 0;
                  }
                }

                sprintf_02d(v5, v149);
                v153 = (*v5)++;
                *v153 = 44;
                v154 = *v5;
                if (*v5 >= *(v5 + 24))
                {
                  v154 = *(v5 + 16);
                  *v5 = v154;
                }

                v155 = *(v894 + 5088 + 8 * v131);
                if (v155 >= -5.0)
                {
                  v158 = v155 * 10.0;
                  if (v158 <= 0.0)
                  {
                    v159 = -0.5;
                  }

                  else
                  {
                    v159 = 0.5;
                  }

                  v160 = v158 + v159;
                  if (v160 <= 2147483650.0)
                  {
                    if (v160 >= -2147483650.0)
                    {
                      v161 = v160;
                    }

                    else
                    {
                      v161 = 0x80000000;
                    }
                  }

                  else
                  {
                    v161 = 0x7FFFFFFF;
                  }

                  sprintf_2f(v5, v161);
                  v162 = (*v5)++;
                  *v162 = 44;
                  if (*v5 >= *(v5 + 24))
                  {
                    *v5 = *(v5 + 16);
                  }

                  v163 = *(v894 + 4064 + 8 * v131) * 10.0;
                  if (v163 <= 0.0)
                  {
                    v164 = -0.5;
                  }

                  else
                  {
                    v164 = 0.5;
                  }

                  v165 = v163 + v164;
                  if (v165 <= 2147483650.0)
                  {
                    if (v165 >= -2147483650.0)
                    {
                      v166 = v165;
                    }

                    else
                    {
                      v166 = 0x80000000;
                    }
                  }

                  else
                  {
                    v166 = 0x7FFFFFFF;
                  }

                  sprintf_2f(v5, v166);
                  v157 = v5;
                  v147 = v898;
                }

                else
                {
                  *v5 = v154 + 1;
                  *v154 = 44;
                  v156 = *v5;
                  v157 = v895;
                  v147 = v898;
                  if (*v5 < *(v5 + 24))
                  {
                    goto LABEL_331;
                  }
                }

                v156 = *v157;
LABEL_331:
                *v5 = v156 + 1;
                *v156 = 44;
                if (*v5 >= *(v5 + 24))
                {
                  *v5 = *(v5 + 16);
                }

                v167 = *(v894 + 2016 + 8 * v131);
                if (v167 > 0.0)
                {
                  v168 = v167 * 10.0;
                  if (v168 <= 0.0)
                  {
                    v169 = -0.5;
                  }

                  else
                  {
                    v169 = 0.5;
                  }

                  v170 = v168 + v169;
                  if (v170 <= 2147483650.0)
                  {
                    if (v170 >= -2147483650.0)
                    {
                      v171 = v170;
                    }

                    else
                    {
                      v171 = 0x80000000;
                    }
                  }

                  else
                  {
                    v171 = 0x7FFFFFFF;
                  }

                  sprintf_2f(v5, v171);
                  v147 = v898;
                }

                ++v131;
                if (v145 > 2)
                {
                  goto LABEL_346;
                }

                ++v145;
                v144 = *(v894 + 344);
LABEL_294:
                if (++v146 >= v144)
                {
                  goto LABEL_346;
                }
              }
            }

            v147 = v898;
LABEL_346:
            v172 = (*v5)++;
            *v172 = 44;
            v173 = *v5;
            if (*v5 >= *(v5 + 24))
            {
              v173 = *(v5 + 16);
              *v5 = v173;
            }

            v174 = 48;
            v118 = v894;
            if (v147 > 50)
            {
              break;
            }

            if (v147 > 32)
            {
              v127 = v884;
              if (v147 > 35)
              {
                if (v147 == 36)
                {
                  goto LABEL_383;
                }

                if (v147 == 49)
                {
                  goto LABEL_379;
                }

                if (v147 != 50)
                {
                  goto LABEL_387;
                }
              }

              else if (v147 == 33 || v147 == 34)
              {
LABEL_379:
                v174 = 49;
                goto LABEL_387;
              }

              goto LABEL_372;
            }

            v127 = v884;
            if (v147 > 17)
            {
              if (v147 != 18)
              {
                if (v147 != 19)
                {
                  if (v147 != 20)
                  {
                    goto LABEL_387;
                  }

LABEL_382:
                  v174 = 56;
                  goto LABEL_387;
                }

                goto LABEL_383;
              }

              goto LABEL_372;
            }

            if (v147)
            {
              if (v147 == 17)
              {
                goto LABEL_379;
              }

LABEL_387:
              *v5 = v173 + 1;
              *v173 = v174;
              if (*v5 >= *(v5 + 24))
              {
                *v5 = *(v5 + 16);
              }
            }

            NMEA_Add_checksum(v5, v889);
            v132 = v882;
            v133 = v891 + 1;
            if (v891 == v882)
            {
              goto LABEL_392;
            }
          }

          if (v147 > 67)
          {
            v127 = v884;
            if (v147 > 82)
            {
              if (v147 == 83 || v147 == 97)
              {
                v174 = 50;
              }

              else if (v147 == 98)
              {
                goto LABEL_379;
              }
            }

            else
            {
              switch(v147)
              {
                case 'D':
                  v174 = 54;
                  break;
                case 'Q':
                  v174 = 55;
                  break;
                case 'R':
                  goto LABEL_379;
              }
            }

            goto LABEL_387;
          }

          v127 = v884;
          if (v147 <= 64)
          {
            if (v147 != 51)
            {
              if (v147 != 52)
              {
                goto LABEL_387;
              }

              goto LABEL_382;
            }

LABEL_383:
            v174 = 53;
            goto LABEL_387;
          }

          if (v147 == 65)
          {
            goto LABEL_379;
          }

          if (v147 != 66)
          {
            goto LABEL_383;
          }

LABEL_372:
          v174 = 51;
          goto LABEL_387;
        }
      }
    }

    else
    {
      EvCrt_Illegal_switch_case("NMEA_Encode_GSV", 0x328u);
    }

LABEL_392:
    v119 = v877 + 1;
    if (v877 != 10)
    {
      continue;
    }

    break;
  }

  v175 = (*v5)++;
  *v175 = 36;
  v176 = *v5;
  if (*v5 >= *(v5 + 24))
  {
    v176 = *v895;
  }

  v177 = 71;
  v178 = 1u;
  v179 = v176;
  do
  {
    *v5 = v179 + 1;
    *v179 = v177;
    v179 = *v5;
    if (*v5 >= *(v5 + 24))
    {
      v179 = *(v5 + 16);
      *v5 = v179;
    }

    v177 = aGprmc[v178++];
  }

  while (v178 != 7);
  sprintf_HHMMSS(v5, v118);
  if (*(v118 + 334))
  {
    v180 = *(v118 + 308);
  }

  else
  {
    v180 = 0;
  }

  if (v180)
  {
    if (v180 <= 0)
    {
      v181 = 86;
    }

    else
    {
      v181 = 65;
    }

    v182 = (*v5)++;
    *v182 = v181;
    v183 = *v5;
    if (*v5 >= *(v5 + 24))
    {
      v183 = *v895;
    }

    *v5 = v183 + 1;
    *v183 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf_LatLon(v5, *(v894 + 104), *(v894 + 112));
    v184 = *(v894 + 136) * 1.94279547 * 1000.0;
    v185 = -0.5;
    if (v184 > 0.0)
    {
      v185 = 0.5;
    }

    v186 = v184 + v185;
    if (v186 <= 2147483650.0)
    {
      if (v186 >= -2147483650.0)
      {
        v187 = v186;
      }

      else
      {
        v187 = 0x80000000;
      }
    }

    else
    {
      v187 = 0x7FFFFFFF;
    }

    sprintf_4f(v5, v187, 4);
    v191 = (*v5)++;
    *v191 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    v192 = *(v894 + 144) * 10.0;
    v193 = -0.5;
    if (v192 > 0.0)
    {
      v193 = 0.5;
    }

    v194 = v192 + v193;
    if (v194 <= 2147483650.0)
    {
      if (v194 >= -2147483650.0)
      {
        v195 = v194;
      }

      else
      {
        v195 = 0x80000000;
      }
    }

    else
    {
      v195 = 0x7FFFFFFF;
    }

    sprintf_2f(v5, v195);
    v196 = (*v5)++;
    *v196 = 44;
    v189 = *v5;
    if (*v5 >= *(v5 + 24))
    {
      v189 = *(v5 + 16);
      *v5 = v189;
    }
  }

  else
  {
    v188 = 0;
    v189 = *v5;
    v190 = 86;
    do
    {
      *v5 = v189 + 1;
      *v189 = v190;
      v189 = *v5;
      if (*v5 >= *(v5 + 24))
      {
        v189 = *(v5 + 16);
        *v5 = v189;
      }

      v190 = aV[++v188];
    }

    while (v188 != 8);
  }

  if (*(v894 + 17) == 1)
  {
    sprintf_02d(v5, *(v894 + 22));
    sprintf_02d(v5, *(v894 + 20));
    sprintf_02d(v5, *(v894 + 18) - 2000);
    v189 = *v5;
  }

  *v5 = v189 + 1;
  *v189 = 44;
  v197 = *v5;
  if (*v5 >= *(v5 + 24))
  {
    v197 = *v895;
  }

  *v5 = v197 + 1;
  *v197 = 44;
  v198 = *v5;
  if (*v5 >= *(v5 + 24))
  {
    v198 = *v895;
  }

  *v5 = v198 + 1;
  *v198 = 44;
  v199 = *v5;
  if (*v5 >= *(v5 + 24))
  {
    v199 = *v895;
  }

  v200 = 0x44414441454EuLL >> (8 * v180);
  if (v180 >= 6)
  {
    LOBYTE(v200) = 78;
  }

  *v5 = v199 + 1;
  *v199 = v200;
  v201 = *v5;
  if (*v5 >= *(v5 + 24))
  {
    v201 = *v895;
  }

  v202 = 0;
  v203 = 44;
  do
  {
    *v5 = v201 + 1;
    *v201 = v203;
    v201 = *v5;
    if (*v5 >= *(v5 + 24))
    {
      v201 = *(v5 + 16);
      *v5 = v201;
    }

    v203 = aV_0[++v202];
  }

  while (v202 != 2);
  NMEA_Add_checksum(v5, v176);
  v204 = (*v5)++;
  *v204 = 36;
  v205 = *v5;
  if (*v5 >= *(v5 + 24))
  {
    v205 = *v895;
  }

  v206 = 71;
  v207 = 1u;
  v208 = v205;
  do
  {
    *v5 = v208 + 1;
    *v208 = v206;
    v208 = *v5;
    if (*v5 >= *(v5 + 24))
    {
      v208 = *(v5 + 16);
      *v5 = v208;
    }

    v206 = aGpvtg[v207++];
  }

  while (v207 != 7);
  v209 = *(v894 + 308);
  if (*(v894 + 334) != 1 || v209 == 0)
  {
    v211 = 44;
    v212 = 1u;
    v213 = v894;
    do
    {
      *v5 = v208 + 1;
      *v208 = v211;
      v208 = *v5;
      if (*v5 >= *(v5 + 24))
      {
        v208 = *(v5 + 16);
        *v5 = v208;
      }

      v211 = aTMNKN[v212++];
    }

    while (v212 != 14);
  }

  else
  {
    v214 = *(v894 + 144) * 10.0;
    v215 = -0.5;
    if (v214 > 0.0)
    {
      v215 = 0.5;
    }

    v216 = v214 + v215;
    if (v216 <= 2147483650.0)
    {
      if (v216 >= -2147483650.0)
      {
        v217 = v216;
      }

      else
      {
        v217 = 0x80000000;
      }
    }

    else
    {
      v217 = 0x7FFFFFFF;
    }

    sprintf_2f(v5, v217);
    v218 = *v5;
    v219 = 44;
    v220 = 1u;
    do
    {
      *v5 = v218 + 1;
      *v218 = v219;
      v218 = *v5;
      if (*v5 >= *(v5 + 24))
      {
        v218 = *(v5 + 16);
        *v5 = v218;
      }

      v219 = aT_2[v220++];
    }

    while (v220 != 4);
    v221 = 44;
    v222 = 1u;
    do
    {
      *v5 = v218 + 1;
      *v218 = v221;
      v218 = *v5;
      if (*v5 >= *(v5 + 24))
      {
        v218 = *(v5 + 16);
        *v5 = v218;
      }

      v221 = aM_0[v222++];
    }

    while (v222 != 4);
    v223 = *(v894 + 136) * 1.94279547 * 1000.0;
    v224 = -0.5;
    if (v223 > 0.0)
    {
      v224 = 0.5;
    }

    v225 = v223 + v224;
    if (v225 <= 2147483650.0)
    {
      if (v225 >= -2147483650.0)
      {
        v226 = v225;
      }

      else
      {
        v226 = 0x80000000;
      }
    }

    else
    {
      v226 = 0x7FFFFFFF;
    }

    v213 = v894;
    sprintf_4f(v5, v226, 4);
    v227 = *v5;
    v228 = 44;
    v229 = 1u;
    do
    {
      *v5 = v227 + 1;
      *v227 = v228;
      v227 = *v5;
      if (*v5 >= *(v5 + 24))
      {
        v227 = *(v5 + 16);
        *v5 = v227;
      }

      v228 = aN_2[v229++];
    }

    while (v229 != 4);
    v230 = *(v894 + 136) * 3.6 * 1000.0;
    v231 = -0.5;
    if (v230 > 0.0)
    {
      v231 = 0.5;
    }

    v232 = v230 + v231;
    if (v232 <= 2147483650.0)
    {
      if (v232 >= -2147483650.0)
      {
        v233 = v232;
      }

      else
      {
        v233 = 0x80000000;
      }
    }

    else
    {
      v233 = 0x7FFFFFFF;
    }

    sprintf_4f(v5, v233, 4);
    v234 = *v5;
    v235 = 44;
    v236 = 1u;
    do
    {
      *v5 = v234 + 1;
      *v234 = v235;
      v234 = *v5;
      if (*v5 >= *(v5 + 24))
      {
        v234 = *(v5 + 16);
        *v5 = v234;
      }

      v235 = aK[v236++];
    }

    while (v236 != 4);
    if (v209 <= 2)
    {
      if (v209 == 1)
      {
        *v5 = v234 + 1;
        v237 = 69;
      }

      else
      {
        if (v209 != 2)
        {
          goto LABEL_509;
        }

LABEL_506:
        *v5 = v234 + 1;
        v237 = 65;
      }
    }

    else if (v209 == 3 || v209 == 5)
    {
      *v5 = v234 + 1;
      v237 = 68;
    }

    else
    {
      if (v209 == 4)
      {
        goto LABEL_506;
      }

LABEL_509:
      *v5 = v234 + 1;
      v237 = 78;
    }

    *v234 = v237;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }
  }

  NMEA_Add_checksum(v5, v205);
  v238 = (*v5)++;
  *v238 = 36;
  v239 = *v5;
  if (*v5 >= *(v5 + 24))
  {
    v239 = *v895;
  }

  v240 = 0;
  v241 = 71;
  v242 = v239;
  do
  {
    *v5 = v242 + 1;
    *v242 = v241;
    v242 = *v5;
    if (*v5 >= *(v5 + 24))
    {
      v242 = *(v5 + 16);
      *v5 = v242;
    }

    v241 = aGn[++v240];
  }

  while (v240 != 2);
  v243 = 0;
  v244 = 90;
  do
  {
    *v5 = v242 + 1;
    *v242 = v244;
    v242 = *v5;
    if (*v5 >= *(v5 + 24))
    {
      v242 = *(v5 + 16);
      *v5 = v242;
    }

    v244 = aZcd[++v243];
  }

  while (v243 != 4);
  v245 = *(v213 + 4);
  v246 = v245 % 0x3E8;
  sprintf1da(v5, v245 / 0x3E8, v911, 0, 0);
  v247 = (*v5)++;
  *v247 = 46;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf_03d(v5, v246);
  v248 = 0;
  v249 = *v5;
  v250 = 44;
  do
  {
    *v5 = v249 + 1;
    *v249 = v250;
    v249 = *v5;
    if (*v5 >= *(v5 + 24))
    {
      v249 = *(v5 + 16);
      *v5 = v249;
    }

    v250 = asc_29906A3B6[++v248];
  }

  while (v248 != 2);
  NMEA_Add_checksum(v5, v239);
  v251 = (*v5)++;
  *v251 = 36;
  v252 = *v5;
  if (*v5 >= *(v5 + 24))
  {
    v252 = *v895;
  }

  v253 = 0;
  v254 = 71;
  v255 = v252;
  do
  {
    *v5 = v255 + 1;
    *v255 = v254;
    v255 = *v5;
    if (*v5 >= *(v5 + 24))
    {
      v255 = *(v5 + 16);
      *v5 = v255;
    }

    v254 = aGn[++v253];
  }

  while (v253 != 2);
  v256 = 0;
  v257 = 90;
  do
  {
    *v5 = v255 + 1;
    *v255 = v257;
    v255 = *v5;
    if (*v5 >= *(v5 + 24))
    {
      v255 = *(v5 + 16);
      *v5 = v255;
    }

    v257 = aZda[++v256];
  }

  while (v256 != 4);
  sprintf_HHMMSS(v5, v213);
  if (*(v213 + 17) == 1)
  {
    sprintf_02d(v5, *(v213 + 22));
    v258 = (*v5)++;
    *v258 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf_02d(v5, *(v894 + 20));
    v259 = (*v5)++;
    *v259 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    v213 = v894;
    sprintf_02d(v5, *(v894 + 18));
    v260 = *v5;
  }

  else
  {
    v261 = 0;
    v260 = *v5;
    v262 = 44;
    do
    {
      *v5 = v260 + 1;
      *v260 = v262;
      v260 = *v5;
      if (*v5 >= *(v5 + 24))
      {
        v260 = *(v5 + 16);
        *v5 = v260;
      }

      v262 = asc_29906A3BE[++v261];
    }

    while (v261 != 2);
  }

  v263 = 0;
  v264 = 44;
  do
  {
    *v5 = v260 + 1;
    *v260 = v264;
    v260 = *v5;
    if (*v5 >= *(v5 + 24))
    {
      v260 = *(v5 + 16);
      *v5 = v260;
    }

    v264 = asc_29906A3BE[++v263];
  }

  while (v263 != 2);
  NMEA_Add_checksum(v5, v252);
  v265 = (*v5)++;
  *v265 = 36;
  v266 = *v5;
  if (*v5 >= *(v5 + 24))
  {
    v266 = *v895;
  }

  v267 = 80;
  v268 = 1u;
  v269 = v266;
  do
  {
    *v5 = v269 + 1;
    *v269 = v267;
    v269 = *v5;
    if (*v5 >= *(v5 + 24))
    {
      v269 = *(v5 + 16);
      *v5 = v269;
    }

    v267 = aPdbga[v268++];
  }

  while (v268 != 7);
  sprintf_HHMMSS(v5, v213);
  v270 = *(v213 + 304);
  if (v270 >= 0)
  {
    v271 = *(v213 + 304);
  }

  else
  {
    v271 = -v270;
  }

  sprintf1da(v5, v271, v911, 0, v270 >> 31);
  v272 = (*v5)++;
  *v272 = 44;
  v273 = *v5;
  if (*v5 >= *(v5 + 24))
  {
    v273 = *(v5 + 16);
    *v5 = v273;
  }

  v274 = *(v213 + 308);
  if (v274)
  {
    if (v274 >= 0)
    {
      v275 = *(v213 + 308);
    }

    else
    {
      v275 = -v274;
    }

    sprintf1da(v5, v275, v911, 0, v274 >> 31);
    v276 = (*v5)++;
    *v276 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf1da(v5, *(v894 + 333), v911, 0, 0);
    v277 = (*v5)++;
    *v277 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf1da(v5, *(v894 + 334), v911, 0, 0);
    v278 = (*v5)++;
    *v278 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf_AccEst(v5, *(v894 + 208));
    v279 = (*v5)++;
    *v279 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf_AccEst(v5, *(v894 + 216));
    v280 = (*v5)++;
    *v280 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    v281 = *(v894 + 224);
    if (v281 >= 0)
    {
      v282 = *(v894 + 224);
    }

    else
    {
      v282 = -v281;
    }

    sprintf1da(v5, v282, v911, 0, v281 >> 31);
    v283 = (*v5)++;
    *v283 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf_AccEst(v5, *(v894 + 200));
    v284 = (*v5)++;
    *v284 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf_AccEst(v5, *(v894 + 232));
    v285 = (*v5)++;
    *v285 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf_AccEst(v5, *(v894 + 240));
    v286 = (*v5)++;
    *v286 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf_AccEst(v5, *(v894 + 248));
    v287 = (*v5)++;
    *v287 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf_AccEst(v5, *(v894 + 160) * 1000.0);
    v288 = (*v5)++;
    *v288 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf_AccEst(v5, *(v894 + 168) * 1000000000.0);
    v289 = (*v5)++;
    *v289 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf_AccEst(v5, *(v894 + 176) * 1000000000.0);
    v290 = (*v5)++;
    *v290 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    v291 = *(v894 + 152) * 1000.0;
    v292 = -0.5;
    if (v291 > 0.0)
    {
      v292 = 0.5;
    }

    v293 = v291 + v292;
    if (v293 <= 2147483650.0)
    {
      if (v293 >= -2147483650.0)
      {
        v294 = v293;
      }

      else
      {
        v294 = 0x80000000;
      }
    }

    else
    {
      v294 = 0x7FFFFFFF;
    }

    sprintf_4f(v5, v294, 4);
    v297 = (*v5)++;
    *v297 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    v298 = *(v894 + 312);
    if (v298 >= 0)
    {
      v299 = *(v894 + 312);
    }

    else
    {
      v299 = -v298;
    }

    sprintf1da(v5, v299, v911, 0, v298 >> 31);
    v300 = (*v5)++;
    *v300 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    v301 = *(v894 + 316);
    if (v301 >= 0)
    {
      v302 = *(v894 + 316);
    }

    else
    {
      v302 = -v301;
    }

    sprintf1da(v5, v302, v911, 0, v301 >> 31);
    v303 = (*v5)++;
    *v303 = 44;
    v304 = *v5;
    if (*v5 >= *(v5 + 24))
    {
      v304 = *v895;
    }

    v305 = 0;
    v306 = 48;
    do
    {
      *v5 = v304 + 1;
      *v304 = v306;
      v304 = *v5;
      if (*v5 >= *(v5 + 24))
      {
        v304 = *(v5 + 16);
        *v5 = v304;
      }

      v306 = a0x_0[++v305];
    }

    while (v305 != 2);
    sprintf_08x(v5, *(v894 + 328));
    v307 = (*v5)++;
    *v307 = 44;
    v308 = *v5;
    if (*v5 >= *(v5 + 24))
    {
      v308 = *v895;
    }

    v309 = 0;
    v310 = 48;
    do
    {
      *v5 = v308 + 1;
      *v308 = v310;
      v308 = *v5;
      if (*v5 >= *(v5 + 24))
      {
        v308 = *(v5 + 16);
        *v5 = v308;
      }

      v310 = a0x_0[++v309];
    }

    while (v309 != 2);
    v213 = v894;
    sprintf_03x(v5, *(v894 + 296));
    v311 = (*v5)++;
    *v311 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    v312 = *(v894 + 320);
    if (v312 >= 0)
    {
      v313 = *(v894 + 320);
    }

    else
    {
      v313 = -v312;
    }

    sprintf1da(v5, v313, v911, 0, v312 >> 31);
  }

  else
  {
    v295 = 48;
    v296 = 1u;
    do
    {
      *v5 = v273 + 1;
      *v273 = v295;
      v273 = *v5;
      if (*v5 >= *(v5 + 24))
      {
        v273 = *(v5 + 16);
        *v5 = v273;
      }

      v295 = a0_1[v296++];
    }

    while (v296 != 20);
  }

  result = NMEA_Add_checksum(v5, v266);
  if (!v874 || *v874 != *v213 || *(v874 + 4) != *(v213 + 4))
  {
    goto LABEL_662;
  }

  v314 = (*v5)++;
  *v314 = 36;
  v315 = *v5;
  if (*v5 >= *(v5 + 24))
  {
    v315 = *v895;
  }

  v316 = 80;
  v317 = 1u;
  v318 = v315;
  do
  {
    *v5 = v318 + 1;
    *v318 = v316;
    v318 = *v5;
    if (*v5 >= *(v5 + 24))
    {
      v318 = *(v5 + 16);
      *v5 = v318;
    }

    v316 = aPdbgc[v317++];
  }

  while (v317 != 7);
  sprintf_HHMMSS(v5, v213);
  v319 = *v5;
  if (*(v874 + 16))
  {
    *v5 = v319 + 1;
    *v319 = 65;
    v320 = *v5;
    if (*v5 >= *(v5 + 24))
    {
      v320 = *v895;
    }

    *v5 = v320 + 1;
    *v320 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf1da(v5, *(v874 + 17), v911, 0, 0);
    v321 = (*v5)++;
    *v321 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf1da(v5, *(v874 + 18), v911, 0, 0);
    v322 = (*v5)++;
    *v322 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf_3f(v5, *(v874 + 20) / 10, 3);
    v323 = (*v5)++;
    *v323 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf1da(v5, *(v874 + 24), v911, 0, 0);
    v324 = (*v5)++;
    *v324 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf1da(v5, *(v874 + 25), v911, 0, 0);
    v325 = (*v5)++;
    *v325 = 44;
    v319 = *v5;
    if (*v5 >= *(v5 + 24))
    {
      v319 = *v895;
    }
  }

  else
  {
    v327 = 78;
    v328 = 1u;
    do
    {
      *v5 = v319 + 1;
      *v319 = v327;
      v319 = *v5;
      if (*v5 >= *(v5 + 24))
      {
        v319 = *(v5 + 16);
        *v5 = v319;
      }

      v327 = aN_4[v328++];
    }

    while (v328 != 8);
  }

  if (*(v874 + 26))
  {
    *v5 = v319 + 1;
    *v319 = 65;
    v329 = *v5;
    if (*v5 >= *(v5 + 24))
    {
      v329 = *v895;
    }

    *v5 = v329 + 1;
    *v329 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf1da(v5, *(v874 + 27), v911, 0, 0);
    v330 = (*v5)++;
    *v330 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf1da(v5, *(v874 + 28), v911, 0, 0);
    v331 = (*v5)++;
    *v331 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf_3f(v5, *(v874 + 32) / 10, 3);
    v332 = (*v5)++;
    *v332 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf1da(v5, *(v874 + 36), v911, 0, 0);
    v333 = (*v5)++;
    *v333 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf1da(v5, *(v874 + 37), v911, 0, 0);
    v334 = (*v5)++;
    *v334 = 44;
    v319 = *v5;
    if (*v5 >= *(v5 + 24))
    {
      v319 = *v895;
    }
  }

  else
  {
    v335 = 78;
    v336 = 1u;
    do
    {
      *v5 = v319 + 1;
      *v319 = v335;
      v319 = *v5;
      if (*v5 >= *(v5 + 24))
      {
        v319 = *(v5 + 16);
        *v5 = v319;
      }

      v335 = aN_4[v336++];
    }

    while (v336 != 8);
  }

  if (*(v874 + 38))
  {
    *v5 = v319 + 1;
    *v319 = 65;
    v337 = *v5;
    if (*v5 >= *(v5 + 24))
    {
      v337 = *v895;
    }

    *v5 = v337 + 1;
    *v337 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf1da(v5, *(v874 + 39), v911, 0, 0);
    v338 = (*v5)++;
    *v338 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf1da(v5, *(v874 + 40), v911, 0, 0);
    v339 = (*v5)++;
    *v339 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf_3f(v5, *(v874 + 44) / 10, 3);
    v340 = (*v5)++;
    *v340 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf1da(v5, *(v874 + 48), v911, 0, 0);
    v341 = (*v5)++;
    *v341 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf1da(v5, *(v874 + 49), v911, 0, 0);
  }

  else
  {
    v342 = 78;
    v343 = 1u;
    do
    {
      *v5 = v319 + 1;
      *v319 = v342;
      v319 = *v5;
      if (*v5 >= *(v5 + 24))
      {
        v319 = *(v5 + 16);
        *v5 = v319;
      }

      v342 = aN_5[v343++];
    }

    while (v343 != 7);
  }

  NMEA_Add_checksum(v5, v315);
  v344 = (*v5)++;
  *v344 = 36;
  v345 = *v5;
  if (*v5 >= *(v5 + 24))
  {
    v345 = *v895;
  }

  v346 = 80;
  v347 = 1u;
  v348 = v345;
  do
  {
    *v5 = v348 + 1;
    *v348 = v346;
    v348 = *v5;
    if (*v5 >= *(v5 + 24))
    {
      v348 = *(v5 + 16);
      *v5 = v348;
    }

    v346 = aPdbgd[v347++];
  }

  while (v347 != 7);
  sprintf_HHMMSS(v5, v894);
  v349 = *v5;
  if (*(v874 + 50))
  {
    *v5 = v349 + 1;
    *v349 = 65;
    v350 = *v5;
    if (*v5 >= *(v5 + 24))
    {
      v350 = *v895;
    }

    *v5 = v350 + 1;
    *v350 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf1da(v5, *(v874 + 51), v911, 0, 0);
    v351 = (*v5)++;
    *v351 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf1da(v5, *(v874 + 52), v911, 0, 0);
    v352 = (*v5)++;
    *v352 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf_3f(v5, *(v874 + 56) / 10, 3);
    v353 = (*v5)++;
    *v353 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    v354 = *(v874 + 64) * 100.0;
    v355 = -0.5;
    if (v354 > 0.0)
    {
      v355 = 0.5;
    }

    v356 = v354 + v355;
    if (v356 <= 2147483650.0)
    {
      if (v356 >= -2147483650.0)
      {
        v357 = v356;
      }

      else
      {
        v357 = 0x80000000;
      }
    }

    else
    {
      v357 = 0x7FFFFFFF;
    }

    sprintf_3f(v5, v357, 3);
    v360 = (*v5)++;
    *v360 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    v361 = *(v874 + 72) * 100.0;
    v362 = -0.5;
    if (v361 > 0.0)
    {
      v362 = 0.5;
    }

    v363 = v361 + v362;
    if (v363 <= 2147483650.0)
    {
      if (v363 >= -2147483650.0)
      {
        v364 = v363;
      }

      else
      {
        v364 = 0x80000000;
      }
    }

    else
    {
      v364 = 0x7FFFFFFF;
    }

    sprintf_3f(v5, v364, 3);
    v365 = (*v5)++;
    *v365 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf1da(v5, *(v874 + 80), v911, 0, 0);
  }

  else
  {
    v358 = 78;
    v359 = 1u;
    do
    {
      *v5 = v349 + 1;
      *v349 = v358;
      v349 = *v5;
      if (*v5 >= *(v5 + 24))
      {
        v349 = *(v5 + 16);
        *v5 = v349;
      }

      v358 = aN_4[v359++];
    }

    while (v359 != 8);
  }

  NMEA_Add_checksum(v5, v345);
  v366 = (*v5)++;
  *v366 = 36;
  v367 = *v5;
  if (*v5 >= *(v5 + 24))
  {
    v367 = *v895;
  }

  v368 = 80;
  v369 = 1u;
  v370 = v367;
  do
  {
    *v5 = v370 + 1;
    *v370 = v368;
    v370 = *v5;
    if (*v5 >= *(v5 + 24))
    {
      v370 = *(v5 + 16);
      *v5 = v370;
    }

    v368 = aPdbge[v369++];
  }

  while (v369 != 7);
  sprintf_HHMMSS(v5, v894);
  v371 = 0;
  v372 = *v5;
  v373 = 65;
  do
  {
    *v5 = v372 + 1;
    *v372 = v373;
    v372 = *v5;
    if (*v5 >= *(v5 + 24))
    {
      v372 = *(v5 + 16);
      *v5 = v372;
    }

    v373 = aA[++v371];
  }

  while (v371 != 2);
  sprintf1da(v5, *(v874 + 81), v911, 0, 0);
  v374 = (*v5)++;
  *v374 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf1da(v5, *(v874 + 82), v911, 0, 0);
  v375 = (*v5)++;
  *v375 = 44;
  v376 = *v5;
  if (*v5 >= *(v5 + 24))
  {
    v376 = *v895;
  }

  *v5 = v376 + 1;
  *v376 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf1da(v5, *(v874 + 84), v911, 0, 0);
  v377 = (*v5)++;
  *v377 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf1da(v5, *(v874 + 86), v911, 0, 0);
  v378 = (*v5)++;
  *v378 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf1da(v5, *(v874 + 90), v911, 0, 0);
  v379 = (*v5)++;
  *v379 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf1da(v5, *(v874 + 92), v911, 0, 0);
  v380 = (*v5)++;
  *v380 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf1da(v5, *(v874 + 93), v911, 0, 0);
  v381 = (*v5)++;
  *v381 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf1da(v5, *(v874 + 95), v911, 0, 0);
  v382 = (*v5)++;
  *v382 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf1da(v5, *(v874 + 96), v911, 0, 0);
  v383 = (*v5)++;
  *v383 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  v384 = *(v874 + 97);
  if (v384 >= 0)
  {
    v385 = *(v874 + 97);
  }

  else
  {
    v385 = -v384;
  }

  sprintf1da(v5, v385, v911, 0, (v384 >> 7) & 1);
  v386 = (*v5)++;
  *v386 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf1da(v5, *(v874 + 98), v911, 0, 0);
  v387 = (*v5)++;
  *v387 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf1da(v5, *(v874 + 99), v911, 0, 0);
  v388 = (*v5)++;
  *v388 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf1da(v5, *(v874 + 100), v911, 0, 0);
  v389 = (*v5)++;
  *v389 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf1da(v5, *(v874 + 102), v911, 0, 0);
  v390 = (*v5)++;
  *v390 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf1da(v5, *(v874 + 104), v911, 0, 0);
  v391 = (*v5)++;
  *v391 = 44;
  v392 = *v5;
  if (*v5 >= *(v5 + 24))
  {
    v392 = *v895;
  }

  v393 = 0;
  v394 = 82;
  do
  {
    *v5 = v392 + 1;
    *v392 = v394;
    v392 = *v5;
    if (*v5 >= *(v5 + 24))
    {
      v392 = *(v5 + 16);
      *v5 = v392;
    }

    v394 = aR_0[++v393];
  }

  while (v393 != 2);
  sprintf1da(v5, *(v874 + 106), v911, 0, 0);
  v395 = (*v5)++;
  *v395 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf1da(v5, *(v874 + 108), v911, 0, 0);
  v396 = (*v5)++;
  *v396 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf1da(v5, *(v874 + 110), v911, 0, 0);
  v397 = (*v5)++;
  *v397 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf1da(v5, *(v874 + 112), v911, 0, 0);
  v398 = (*v5)++;
  *v398 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf1da(v5, *(v874 + 113), v911, 0, 0);
  v399 = (*v5)++;
  *v399 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf1da(v5, *(v874 + 114), v911, 0, 0);
  v400 = (*v5)++;
  *v400 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf1da(v5, *(v874 + 115), v911, 0, 0);
  v401 = (*v5)++;
  *v401 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf1da(v5, *(v874 + 116), v911, 0, 0);
  v402 = (*v5)++;
  *v402 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  v403 = *(v874 + 120) * 10.0;
  v404 = -0.5;
  if (v403 > 0.0)
  {
    v404 = 0.5;
  }

  v405 = v403 + v404;
  if (v405 <= 2147483650.0)
  {
    if (v405 >= -2147483650.0)
    {
      v406 = v405;
    }

    else
    {
      v406 = 0x80000000;
    }
  }

  else
  {
    v406 = 0x7FFFFFFF;
  }

  sprintf_2f(v5, v406);
  v407 = (*v5)++;
  *v407 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  v408 = *(v874 + 128) * 10.0;
  v409 = -0.5;
  if (v408 > 0.0)
  {
    v409 = 0.5;
  }

  v410 = v408 + v409;
  if (v410 <= 2147483650.0)
  {
    if (v410 >= -2147483650.0)
    {
      v411 = v410;
    }

    else
    {
      v411 = 0x80000000;
    }
  }

  else
  {
    v411 = 0x7FFFFFFF;
  }

  sprintf_2f(v5, v411);
  v412 = (*v5)++;
  *v412 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  v413 = *(v874 + 136) * 10.0;
  v414 = -0.5;
  if (v413 > 0.0)
  {
    v414 = 0.5;
  }

  v415 = v413 + v414;
  if (v415 <= 2147483650.0)
  {
    if (v415 >= -2147483650.0)
    {
      v416 = v415;
    }

    else
    {
      v416 = 0x80000000;
    }
  }

  else
  {
    v416 = 0x7FFFFFFF;
  }

  sprintf_2f(v5, v416);
  v417 = (*v5)++;
  *v417 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  v418 = *(v874 + 144) * 10.0;
  v419 = -0.5;
  if (v418 > 0.0)
  {
    v419 = 0.5;
  }

  v420 = v418 + v419;
  if (v420 <= 2147483650.0)
  {
    if (v420 >= -2147483650.0)
    {
      v421 = v420;
    }

    else
    {
      v421 = 0x80000000;
    }
  }

  else
  {
    v421 = 0x7FFFFFFF;
  }

  sprintf_2f(v5, v421);
  v422 = (*v5)++;
  *v422 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf1da(v5, *(v874 + 152), v911, 0, 0);
  v423 = (*v5)++;
  *v423 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf1da(v5, *(v874 + 153), v911, 0, 0);
  v424 = (*v5)++;
  *v424 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf1da(v5, *(v874 + 154), v911, 0, 0);
  v425 = (*v5)++;
  *v425 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf1da(v5, *(v874 + 155), v911, 0, 0);
  v426 = (*v5)++;
  *v426 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf1da(v5, *(v874 + 156), v911, 0, 0);
  v427 = (*v5)++;
  *v427 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf1da(v5, *(v874 + 157), v911, 0, 0);
  v428 = (*v5)++;
  *v428 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf1da(v5, *(v874 + 158), v911, 0, 0);
  v429 = (*v5)++;
  *v429 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf1da(v5, *(v874 + 159), v911, 0, 0);
  NMEA_Add_checksum(v5, v367);
  if (*(v874 + 160) == 1)
  {
    NMEA_Encode_PDBGE_Constell(v5, 1, v894, v874);
  }

  if (*(v874 + 200) == 1)
  {
    NMEA_Encode_PDBGE_Constell(v5, 5, v894, v874);
  }

  if (*(v874 + 240) == 1)
  {
    NMEA_Encode_PDBGE_Constell(v5, 2, v894, v874);
  }

  if (*(v874 + 280) == 1)
  {
    NMEA_Encode_PDBGE_Constell(v5, 3, v894, v874);
  }

  if (*(v874 + 320) == 1)
  {
    NMEA_Encode_PDBGE_Constell(v5, 4, v894, v874);
  }

  if (*(v874 + 360) == 1)
  {
    NMEA_Encode_PDBGE_Constell(v5, 6, v894, v874);
  }

  if (*(v874 + 400) == 1)
  {
    NMEA_Encode_PDBGE_Constell(v5, 7, v894, v874);
  }

  v430 = (*v5)++;
  *v430 = 36;
  v431 = *v5;
  if (*v5 >= *(v5 + 24))
  {
    v431 = *v895;
  }

  v432 = 80;
  v433 = 1u;
  v434 = v431;
  do
  {
    *v5 = v434 + 1;
    *v434 = v432;
    v434 = *v5;
    if (*v5 >= *(v5 + 24))
    {
      v434 = *(v5 + 16);
      *v5 = v434;
    }

    v432 = aPdbgi[v433++];
  }

  while (v433 != 7);
  sprintf_HHMMSS(v5, v894);
  v435 = 0;
  v436 = *v5;
  v437 = 65;
  do
  {
    *v5 = v436 + 1;
    *v436 = v437;
    v436 = *v5;
    if (*v5 >= *(v5 + 24))
    {
      v436 = *(v5 + 16);
      *v5 = v436;
    }

    v437 = aA[++v435];
  }

  while (v435 != 2);
  v438 = *(v874 + 440);
  if (v438 >= 0)
  {
    v439 = *(v874 + 440);
  }

  else
  {
    v439 = -v438;
  }

  sprintf1da(v5, v439, v911, 0, v438 >> 31);
  v440 = (*v5)++;
  *v440 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf1da(v5, *(v874 + 444), v911, 0, 0);
  v441 = (*v5)++;
  *v441 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf1da(v5, *(v874 + 446), v911, 0, 0);
  v442 = (*v5)++;
  *v442 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf_2d(v5, *(v874 + 448));
  v443 = (*v5)++;
  *v443 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  for (j = 452; j != 458; ++j)
  {
    sprintf1da(v5, *(v874 + j), v911, 0, 0);
  }

  v445 = (*v5)++;
  *v445 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf1da(v5, *(v874 + 458), v911, 0, 0);
  v446 = (*v5)++;
  *v446 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  v447 = *(v874 + 464) * 10.0;
  v448 = -0.5;
  if (v447 > 0.0)
  {
    v448 = 0.5;
  }

  v449 = v447 + v448;
  if (v449 <= 2147483650.0)
  {
    if (v449 >= -2147483650.0)
    {
      v450 = v449;
    }

    else
    {
      v450 = 0x80000000;
    }
  }

  else
  {
    v450 = 0x7FFFFFFF;
  }

  sprintf_2f(v5, v450);
  v451 = (*v5)++;
  *v451 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf_AccEst(v5, *(v874 + 472));
  v452 = (*v5)++;
  *v452 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf_AccEst(v5, *(v874 + 480));
  v453 = (*v5)++;
  *v453 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf_AccEst(v5, *(v874 + 488));
  v454 = (*v5)++;
  *v454 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf1da(v5, *(v874 + 496), v911, 0, 0);
  v455 = (*v5)++;
  *v455 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf1da(v5, *(v874 + 497), v911, 0, 0);
  NMEA_Add_checksum(v5, v431);
  if (*(v874 + 504) == 1)
  {
    NMEA_Encode_PDBGI_Constell(v5, 1, v894, v874);
  }

  if (*(v874 + 600) == 1)
  {
    NMEA_Encode_PDBGI_Constell(v5, 5, v894, v874);
  }

  if (*(v874 + 696) == 1)
  {
    NMEA_Encode_PDBGI_Constell(v5, 2, v894, v874);
  }

  if (*(v874 + 792) == 1)
  {
    NMEA_Encode_PDBGI_Constell(v5, 3, v894, v874);
  }

  if (*(v874 + 888) == 1)
  {
    NMEA_Encode_PDBGI_Constell(v5, 4, v894, v874);
  }

  if (*(v874 + 984) == 1)
  {
    NMEA_Encode_PDBGI_Constell(v5, 6, v894, v874);
  }

  if (*(v874 + 1080) == 1)
  {
    NMEA_Encode_PDBGI_Constell(v5, 7, v894, v874);
  }

  v456 = (*v5)++;
  *v456 = 36;
  v457 = *v5;
  if (*v5 >= *(v5 + 24))
  {
    v457 = *v895;
  }

  v458 = 80;
  v459 = 1u;
  v460 = v457;
  do
  {
    *v5 = v460 + 1;
    *v460 = v458;
    v460 = *v5;
    if (*v5 >= *(v5 + 24))
    {
      v460 = *(v5 + 16);
      *v5 = v460;
    }

    v458 = aPdbgm[v459++];
  }

  while (v459 != 7);
  sprintf_HHMMSS(v5, v894);
  v461 = *v5;
  if (*(v874 + 1176))
  {
    *v5 = v461 + 1;
    *v461 = 65;
    v462 = *v5;
    if (*v5 >= *(v5 + 24))
    {
      v462 = *v895;
    }

    *v5 = v462 + 1;
    *v462 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf1da(v5, *(v874 + 1177), v911, 0, 0);
    v463 = (*v5)++;
    *v463 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf1da(v5, *(v874 + 1178), v911, 0, 0);
    v464 = (*v5)++;
    *v464 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf_3f(v5, *(v874 + 1180) / 10, 3);
    v465 = (*v5)++;
    *v465 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf1da(v5, *(v874 + 1184), v911, 0, 0);
    v466 = (*v5)++;
    *v466 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    v467 = *(v874 + 1192) * 10.0;
    v468 = -0.5;
    if (v467 > 0.0)
    {
      v468 = 0.5;
    }

    v469 = v467 + v468;
    if (v469 <= 2147483650.0)
    {
      if (v469 >= -2147483650.0)
      {
        v470 = v469;
      }

      else
      {
        v470 = 0x80000000;
      }
    }

    else
    {
      v470 = 0x7FFFFFFF;
    }

    sprintf_2f(v5, v470);
    v473 = (*v5)++;
    *v473 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    v474 = *(v874 + 1200) * 10.0;
    v475 = -0.5;
    if (v474 > 0.0)
    {
      v475 = 0.5;
    }

    v476 = v474 + v475;
    if (v476 <= 2147483650.0)
    {
      if (v476 >= -2147483650.0)
      {
        v477 = v476;
      }

      else
      {
        v477 = 0x80000000;
      }
    }

    else
    {
      v477 = 0x7FFFFFFF;
    }

    sprintf_2f(v5, v477);
    v478 = (*v5)++;
    *v478 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    v479 = *(v874 + 1208) * 10.0;
    v480 = -0.5;
    if (v479 > 0.0)
    {
      v480 = 0.5;
    }

    v481 = v479 + v480;
    if (v481 <= 2147483650.0)
    {
      if (v481 >= -2147483650.0)
      {
        v482 = v481;
      }

      else
      {
        v482 = 0x80000000;
      }
    }

    else
    {
      v482 = 0x7FFFFFFF;
    }

    sprintf_2f(v5, v482);
    v483 = (*v5)++;
    *v483 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf1da(v5, *(v874 + 1216), v911, 0, 0);
    v484 = (*v5)++;
    *v484 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf1da(v5, *(v874 + 1218), v911, 0, 0);
    v485 = (*v5)++;
    *v485 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf1da(v5, *(v874 + 1220), v911, 0, 0);
    v486 = (*v5)++;
    *v486 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf1da(v5, *(v874 + 1221), v911, 0, 0);
    v487 = (*v5)++;
    *v487 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf1da(v5, *(v874 + 1222), v911, 0, 0);
    v488 = (*v5)++;
    *v488 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf1da(v5, *(v874 + 1223), v911, 0, 0);
    v489 = (*v5)++;
    *v489 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf1da(v5, *(v874 + 1224), v911, 0, 0);
    v490 = (*v5)++;
    *v490 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf1da(v5, *(v874 + 1225), v911, 0, 0);
  }

  else
  {
    v471 = 78;
    v472 = 1u;
    do
    {
      *v5 = v461 + 1;
      *v461 = v471;
      v461 = *v5;
      if (*v5 >= *(v5 + 24))
      {
        v461 = *(v5 + 16);
        *v5 = v461;
      }

      v471 = aN_6[v472++];
    }

    while (v472 != 15);
  }

  NMEA_Add_checksum(v5, v457);
  if (*(v874 + 1232) == 1)
  {
    NMEA_Encode_PDBGO(v5, 1, v894, v874);
  }

  if (*(v874 + 1288) == 1)
  {
    NMEA_Encode_PDBGO(v5, 5, v894, v874);
  }

  if (*(v874 + 1344) == 1)
  {
    NMEA_Encode_PDBGO(v5, 2, v894, v874);
  }

  if (*(v874 + 1400) == 1)
  {
    NMEA_Encode_PDBGO(v5, 3, v894, v874);
  }

  if (*(v874 + 1456) == 1)
  {
    NMEA_Encode_PDBGO(v5, 4, v894, v874);
  }

  if (*(v874 + 1512) == 1)
  {
    NMEA_Encode_PDBGO(v5, 6, v894, v874);
  }

  if (*(v874 + 1568) == 1)
  {
    NMEA_Encode_PDBGO(v5, 7, v894, v874);
  }

  v491 = (*v5)++;
  *v491 = 36;
  v492 = *v5;
  if (*v5 >= *(v5 + 24))
  {
    v492 = *v895;
  }

  v493 = 80;
  v494 = 1u;
  v495 = v492;
  do
  {
    *v5 = v495 + 1;
    *v495 = v493;
    v495 = *v5;
    if (*v5 >= *(v5 + 24))
    {
      v495 = *(v5 + 16);
      *v5 = v495;
    }

    v493 = aPdbgp[v494++];
  }

  while (v494 != 7);
  sprintf_HHMMSS(v5, v894);
  v496 = *v5;
  if (*(v874 + 1624))
  {
    *v5 = v496 + 1;
    *v496 = 65;
    v497 = *v5;
    if (*v5 >= *(v5 + 24))
    {
      v497 = *v895;
    }

    *v5 = v497 + 1;
    *v497 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf1da(v5, *(v874 + 1625), v911, 0, 0);
    v498 = (*v5)++;
    *v498 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf1da(v5, *(v874 + 1627), v911, 0, 0);
    v499 = (*v5)++;
    *v499 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf_3f(v5, *(v874 + 1628) / 10, 3);
    v500 = (*v5)++;
    *v500 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf1da(v5, *(v874 + 1632), v911, 0, 0);
    v501 = (*v5)++;
    *v501 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf1da(v5, *(v874 + 1633), v911, 0, 0);
    v502 = (*v5)++;
    *v502 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf1da(v5, *(v874 + 1634), v911, 0, 0);
    v503 = (*v5)++;
    *v503 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    v504 = *(v874 + 1640) * 10.0;
    v505 = -0.5;
    if (v504 > 0.0)
    {
      v505 = 0.5;
    }

    v506 = v504 + v505;
    if (v506 <= 2147483650.0)
    {
      if (v506 >= -2147483650.0)
      {
        v507 = v506;
      }

      else
      {
        v507 = 0x80000000;
      }
    }

    else
    {
      v507 = 0x7FFFFFFF;
    }

    sprintf_2f(v5, v507);
    v510 = (*v5)++;
    *v510 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    v511 = *(v874 + 1648) * 10.0;
    v512 = -0.5;
    if (v511 > 0.0)
    {
      v512 = 0.5;
    }

    v513 = v511 + v512;
    if (v513 <= 2147483650.0)
    {
      if (v513 >= -2147483650.0)
      {
        v514 = v513;
      }

      else
      {
        v514 = 0x80000000;
      }
    }

    else
    {
      v514 = 0x7FFFFFFF;
    }

    sprintf_2f(v5, v514);
    v515 = (*v5)++;
    *v515 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    v516 = *(v874 + 1656) * 10.0;
    v517 = -0.5;
    if (v516 > 0.0)
    {
      v517 = 0.5;
    }

    v518 = v516 + v517;
    if (v518 <= 2147483650.0)
    {
      if (v518 >= -2147483650.0)
      {
        v519 = v518;
      }

      else
      {
        v519 = 0x80000000;
      }
    }

    else
    {
      v519 = 0x7FFFFFFF;
    }

    sprintf_2f(v5, v519);
    v520 = (*v5)++;
    *v520 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    v521 = *(v874 + 1664);
    if (v521 >= 0)
    {
      v522 = *(v874 + 1664);
    }

    else
    {
      v522 = -v521;
    }

    sprintf1da(v5, v522, v911, 0, v521 >> 31);
    v523 = (*v5)++;
    *v523 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    v524 = *(v874 + 1668);
    if (v524 >= 0)
    {
      v525 = *(v874 + 1668);
    }

    else
    {
      v525 = -v524;
    }

    sprintf1da(v5, v525, v911, 0, v524 >> 31);
    v526 = (*v5)++;
    *v526 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf1da(v5, *(v874 + 1672), v911, 0, 0);
    v527 = (*v5)++;
    *v527 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf1da(v5, *(v874 + 1674), v911, 0, 0);
    v528 = (*v5)++;
    *v528 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf1da(v5, *(v874 + 1626), v911, 0, 0);
  }

  else
  {
    v508 = 78;
    v509 = 1u;
    do
    {
      *v5 = v496 + 1;
      *v496 = v508;
      v496 = *v5;
      if (*v5 >= *(v5 + 24))
      {
        v496 = *(v5 + 16);
        *v5 = v496;
      }

      v508 = aN_6[v509++];
    }

    while (v509 != 15);
  }

  NMEA_Add_checksum(v5, v492);
  v529 = (*v5)++;
  *v529 = 36;
  v530 = *v5;
  if (*v5 >= *(v5 + 24))
  {
    v530 = *v895;
  }

  v531 = 80;
  v532 = 1u;
  v533 = v530;
  v534 = v894;
  do
  {
    *v5 = v533 + 1;
    *v533 = v531;
    v533 = *v5;
    if (*v5 >= *(v5 + 24))
    {
      v533 = *(v5 + 16);
      *v5 = v533;
    }

    v531 = aPdbgs[v532++];
  }

  while (v532 != 7);
  sprintf_HHMMSS(v5, v894);
  v535 = *v5;
  if (*(v874 + 1676))
  {
    *v5 = v535 + 1;
    *v535 = 65;
    v536 = *v5;
    if (*v5 >= *(v5 + 24))
    {
      v536 = *v895;
    }

    *v5 = v536 + 1;
    *v536 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf1da(v5, *(v874 + 1677), v911, 0, 0);
    v537 = (*v5)++;
    *v537 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf1da(v5, *(v874 + 1678), v911, 0, 0);
    v538 = (*v5)++;
    *v538 = 44;
    v534 = v894;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf1da(v5, *(v874 + 1679), v911, 0, 0);
  }

  else
  {
    v539 = 0;
    v540 = 78;
    do
    {
      *v5 = v535 + 1;
      *v535 = v540;
      v535 = *v5;
      if (*v5 >= *(v5 + 24))
      {
        v535 = *(v5 + 16);
        *v5 = v535;
      }

      v540 = aN_7[++v539];
    }

    while (v539 != 4);
  }

  NMEA_Add_checksum(v5, v530);
  v541 = (*v5)++;
  *v541 = 36;
  v542 = *v5;
  if (*v5 >= *(v5 + 24))
  {
    v542 = *v895;
  }

  v543 = 80;
  v544 = 1u;
  v545 = v542;
  do
  {
    *v5 = v545 + 1;
    *v545 = v543;
    v545 = *v5;
    if (*v5 >= *(v5 + 24))
    {
      v545 = *(v5 + 16);
      *v5 = v545;
    }

    v543 = aPdbgf[v544++];
  }

  while (v544 != 7);
  sprintf_HHMMSS(v5, v534);
  v546 = *v5;
  if (*(v874 + 1680))
  {
    *v5 = v546 + 1;
    *v546 = 65;
    v547 = *v5;
    if (*v5 >= *(v5 + 24))
    {
      v547 = *v895;
    }

    *v5 = v547 + 1;
    *v547 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf1da(v5, *(v874 + 1681), v911, 0, 0);
    v548 = (*v5)++;
    *v548 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf1da(v5, *(v874 + 1682), v911, 0, 0);
    v549 = (*v5)++;
    *v549 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    v550 = *(v874 + 1684);
    if (v550 >= 0)
    {
      v551 = *(v874 + 1684);
    }

    else
    {
      v551 = -v550;
    }

    sprintf1da(v5, v551, v911, 0, v550 >> 31);
    v552 = (*v5)++;
    *v552 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    v553 = *(v874 + 1688) * 100.0;
    v554 = -0.5;
    if (v553 > 0.0)
    {
      v554 = 0.5;
    }

    v555 = v553 + v554;
    v534 = v894;
    if (v555 <= 2147483650.0)
    {
      if (v555 >= -2147483650.0)
      {
        v556 = v555;
      }

      else
      {
        v556 = 0x80000000;
      }
    }

    else
    {
      v556 = 0x7FFFFFFF;
    }

    sprintf_3f(v5, v556, 3);
    v559 = (*v5)++;
    *v559 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    v560 = *(v874 + 1696) * 100.0;
    v561 = -0.5;
    if (v560 > 0.0)
    {
      v561 = 0.5;
    }

    v562 = v560 + v561;
    if (v562 <= 2147483650.0)
    {
      if (v562 >= -2147483650.0)
      {
        v563 = v562;
      }

      else
      {
        v563 = 0x80000000;
      }
    }

    else
    {
      v563 = 0x7FFFFFFF;
    }

    sprintf_3f(v5, v563, 3);
  }

  else
  {
    v557 = 78;
    v558 = 1u;
    do
    {
      *v5 = v546 + 1;
      *v546 = v557;
      v546 = *v5;
      if (*v5 >= *(v5 + 24))
      {
        v546 = *(v5 + 16);
        *v5 = v546;
      }

      v557 = aN_5[v558++];
    }

    while (v558 != 7);
  }

  NMEA_Add_checksum(v5, v542);
  v564 = (*v5)++;
  *v564 = 36;
  v565 = *v5;
  if (*v5 >= *(v5 + 24))
  {
    v565 = *v895;
  }

  v566 = 80;
  v567 = 1u;
  v568 = v565;
  do
  {
    *v5 = v568 + 1;
    *v568 = v566;
    v568 = *v5;
    if (*v5 >= *(v5 + 24))
    {
      v568 = *(v5 + 16);
      *v5 = v568;
    }

    v566 = aPdbgt[v567++];
  }

  while (v567 != 7);
  sprintf_HHMMSS(v5, v534);
  sprintf_1u(v5, *(v874 + 1776));
  v569 = (*v5)++;
  *v569 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf_1u(v5, *(v874 + 1780));
  v570 = (*v5)++;
  *v570 = 44;
  v571 = *v5;
  if (*v5 >= *(v5 + 24))
  {
    v571 = *(v5 + 16);
    *v5 = v571;
  }

  if (*(v874 + 1792))
  {
    v572 = *(v874 + 1794);
    if (v572 >= 0)
    {
      v573 = *(v874 + 1794);
    }

    else
    {
      v573 = -v572;
    }

    sprintf1da(v5, v573, v911, 0, (v572 >> 15) & 1);
    v574 = (*v5)++;
    *v574 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    v575 = *(v874 + 1800) * 1000.0;
    v576 = -0.5;
    if (v575 > 0.0)
    {
      v576 = 0.5;
    }

    v577 = v575 + v576;
    if (v577 <= 2147483650.0)
    {
      if (v577 >= -2147483650.0)
      {
        v578 = v577;
      }

      else
      {
        v578 = 0x80000000;
      }
    }

    else
    {
      v578 = 0x7FFFFFFF;
    }

    sprintf_4f(v5, v578, 4);
    v581 = (*v5)++;
    *v581 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    v582 = *(v874 + 1808) * 1000.0;
    v583 = -0.5;
    if (v582 > 0.0)
    {
      v583 = 0.5;
    }

    v584 = v582 + v583;
    if (v584 <= 2147483650.0)
    {
      if (v584 >= -2147483650.0)
      {
        v585 = v584;
      }

      else
      {
        v585 = 0x80000000;
      }
    }

    else
    {
      v585 = 0x7FFFFFFF;
    }

    sprintf_4f(v5, v585, 4);
    v586 = (*v5)++;
    *v586 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf_1u(v5, *(v874 + 1816));
    v587 = (*v5)++;
    *v587 = 44;
    v571 = *v5;
    if (*v5 >= *(v5 + 24))
    {
      v571 = *(v5 + 16);
      *v5 = v571;
    }
  }

  else
  {
    v579 = 0;
    v580 = 44;
    do
    {
      *v5 = v571 + 1;
      *v571 = v580;
      v571 = *v5;
      if (*v5 >= *(v5 + 24))
      {
        v571 = *(v5 + 16);
        *v5 = v571;
      }

      v580 = asc_29906A308[++v579];
    }

    while (v579 != 4);
  }

  if (*(v874 + 1820))
  {
    v588 = *(v874 + 1824);
    if (v588 >= 0)
    {
      v589 = *(v874 + 1824);
    }

    else
    {
      v589 = -v588;
    }

    sprintf1da(v5, v589, v911, 0, v588 >> 31);
    v590 = (*v5)++;
    *v590 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf_1u(v5, *(v874 + 1828));
    v591 = (*v5)++;
    *v591 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }
  }

  else
  {
    v592 = 0;
    v593 = 44;
    do
    {
      *v5 = v571 + 1;
      *v571 = v593;
      v571 = *v5;
      if (*v5 >= *(v5 + 24))
      {
        v571 = *(v5 + 16);
        *v5 = v571;
      }

      v593 = asc_29906A3BE[++v592];
    }

    while (v592 != 2);
  }

  sprintf1da(v5, *(v874 + 1832), v911, 0, 0);
  v594 = (*v5)++;
  *v594 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf1da(v5, *(v874 + 1833), v911, 0, 0);
  v595 = (*v5)++;
  *v595 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  v596 = *(v874 + 1840) * 1000.0;
  v597 = -0.5;
  if (v596 > 0.0)
  {
    v597 = 0.5;
  }

  v598 = v596 + v597;
  if (v598 <= 2147483650.0)
  {
    if (v598 >= -2147483650.0)
    {
      v599 = v598;
    }

    else
    {
      v599 = 0x80000000;
    }
  }

  else
  {
    v599 = 0x7FFFFFFF;
  }

  sprintf_4f(v5, v599, 4);
  v600 = (*v5)++;
  *v600 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  v601 = *(v874 + 1848);
  if (v601 >= 0)
  {
    v602 = *(v874 + 1848);
  }

  else
  {
    v602 = -v601;
  }

  sprintf1da(v5, v602, v911, 0, (v601 >> 15) & 1);
  v603 = (*v5)++;
  *v603 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf1da(v5, *(v874 + 1850), v911, 0, 0);
  v604 = (*v5)++;
  *v604 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  v605 = *(v874 + 1856) * 1000.0;
  v606 = -0.5;
  if (v605 > 0.0)
  {
    v606 = 0.5;
  }

  v607 = v605 + v606;
  if (v607 <= 2147483650.0)
  {
    if (v607 >= -2147483650.0)
    {
      v608 = v607;
    }

    else
    {
      v608 = 0x80000000;
    }
  }

  else
  {
    v608 = 0x7FFFFFFF;
  }

  sprintf_4f(v5, v608, 4);
  v609 = (*v5)++;
  *v609 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  v610 = *(v874 + 1864);
  if (v610 >= 0)
  {
    v611 = *(v874 + 1864);
  }

  else
  {
    v611 = -v610;
  }

  sprintf1da(v5, v611, v911, 0, (v610 >> 15) & 1);
  v612 = (*v5)++;
  *v612 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  v613 = *(v874 + 1866);
  if (v613 >= 0)
  {
    v614 = *(v874 + 1866);
  }

  else
  {
    v614 = -v613;
  }

  sprintf1da(v5, v614, v911, 0, (v613 >> 15) & 1);
  v615 = (*v5)++;
  *v615 = 44;
  v616 = *v5;
  v617 = v894;
  if (*v5 >= *(v5 + 24))
  {
    v616 = *(v5 + 16);
    *v5 = v616;
  }

  if (*(v874 + 1868))
  {
    v618 = *(v874 + 1869);
    if (v618 >= 0)
    {
      v619 = *(v874 + 1869);
    }

    else
    {
      v619 = -v618;
    }

    sprintf1da(v5, v619, v911, 0, (v618 >> 7) & 1);
    v620 = (*v5)++;
    *v620 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    v621 = *(v874 + 1870);
    if (v621 >= 0)
    {
      v622 = *(v874 + 1870);
    }

    else
    {
      v622 = -v621;
    }

    sprintf1da(v5, v622, v911, 0, (v621 >> 7) & 1);
    v623 = (*v5)++;
    *v623 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    v624 = *(v874 + 1872);
    if (v624 >= 0)
    {
      v625 = *(v874 + 1872);
    }

    else
    {
      v625 = -v624;
    }

    sprintf1da(v5, v625, v911, 0, (v624 >> 15) & 1);
    v626 = (*v5)++;
    *v626 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    v627 = *(v874 + 1874);
    if (v627 >= 0)
    {
      v628 = *(v874 + 1874);
    }

    else
    {
      v628 = -v627;
    }

    sprintf1da(v5, v628, v911, 0, (v627 >> 7) & 1);
    v629 = (*v5)++;
    *v629 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    v630 = *(v874 + 1875);
    if (v630 >= 0)
    {
      v631 = *(v874 + 1875);
    }

    else
    {
      v631 = -v630;
    }

    sprintf1da(v5, v631, v911, 0, (v630 >> 7) & 1);
    v632 = (*v5)++;
    *v632 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    v633 = *(v874 + 1876);
    if (v633 >= 0)
    {
      v634 = *(v874 + 1876);
    }

    else
    {
      v634 = -v633;
    }

    sprintf1da(v5, v634, v911, 0, (v633 >> 15) & 1);
    v635 = (*v5)++;
    *v635 = 44;
    v616 = *v5;
    v617 = v894;
    if (*v5 >= *(v5 + 24))
    {
      v616 = *(v5 + 16);
      *v5 = v616;
    }
  }

  else
  {
    v636 = 44;
    v637 = 1u;
    do
    {
      *v5 = v616 + 1;
      *v616 = v636;
      v616 = *v5;
      if (*v5 >= *(v5 + 24))
      {
        v616 = *(v5 + 16);
        *v5 = v616;
      }

      v636 = asc_29906A416[v637++];
    }

    while (v637 != 7);
  }

  v638 = *(v874 + 1880);
  if (v638)
  {
    if (v638 >= 0)
    {
      v639 = *(v874 + 1880);
    }

    else
    {
      v639 = -v638;
    }

    sprintf1da(v5, v639, v911, 0, v638 >> 31);
    v616 = *v5;
  }

  *v5 = v616 + 1;
  *v616 = 44;
  v640 = *v5;
  if (*v5 >= *(v5 + 24))
  {
    v640 = *(v5 + 16);
    *v5 = v640;
  }

  v641 = *(v874 + 1884);
  if (v641)
  {
    if (v641 >= 0)
    {
      v642 = *(v874 + 1884);
    }

    else
    {
      v642 = -v641;
    }

    sprintf1da(v5, v642, v911, 0, v641 >> 31);
    v640 = *v5;
  }

  *v5 = v640 + 1;
  *v640 = 44;
  v643 = *v5;
  if (*v5 >= *(v5 + 24))
  {
    v643 = *(v5 + 16);
    *v5 = v643;
  }

  v644 = *(v874 + 1888);
  if (v644)
  {
    if (v644 >= 0)
    {
      v645 = *(v874 + 1888);
    }

    else
    {
      v645 = -v644;
    }

    sprintf1da(v5, v645, v911, 0, v644 >> 31);
    v643 = *v5;
  }

  *v5 = v643 + 1;
  *v643 = 44;
  v646 = *v5;
  if (*v5 >= *(v5 + 24))
  {
    v646 = *(v5 + 16);
    *v5 = v646;
  }

  v647 = *(v874 + 1892);
  if (v647)
  {
    if (v647 >= 0)
    {
      v648 = *(v874 + 1892);
    }

    else
    {
      v648 = -v647;
    }

    sprintf1da(v5, v648, v911, 0, v647 >> 31);
    v646 = *v5;
  }

  *v5 = v646 + 1;
  *v646 = 44;
  v649 = *v5;
  if (*v5 >= *(v5 + 24))
  {
    v649 = *(v5 + 16);
    *v5 = v649;
  }

  v650 = *(v874 + 1896);
  if (v650)
  {
    if (v650 >= 0)
    {
      v651 = *(v874 + 1896);
    }

    else
    {
      v651 = -v650;
    }

    sprintf1da(v5, v651, v911, 0, v650 >> 31);
    v649 = *v5;
  }

  *v5 = v649 + 1;
  *v649 = 44;
  v652 = *v5;
  if (*v5 >= *(v5 + 24))
  {
    v652 = *(v5 + 16);
    *v5 = v652;
  }

  v653 = *(v874 + 1900);
  if (v653)
  {
    if (v653 >= 0)
    {
      v654 = *(v874 + 1900);
    }

    else
    {
      v654 = -v653;
    }

    sprintf1da(v5, v654, v911, 0, v653 >> 31);
    v652 = *v5;
  }

  *v5 = v652 + 1;
  *v652 = 44;
  v655 = *v5;
  if (*v5 >= *(v5 + 24))
  {
    v655 = *(v5 + 16);
    *v5 = v655;
  }

  v656 = *(v874 + 1784);
  if (v656)
  {
    sprintf_1U(v5, v656);
    v655 = *v5;
  }

  *v5 = v655 + 1;
  *v655 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf1da(v5, *(v874 + 1904), v911, 0, 0);
  NMEA_Add_checksum(v5, v565);
  v657 = (*v5)++;
  *v657 = 36;
  v658 = *v5;
  if (*v5 >= *(v5 + 24))
  {
    v658 = *v895;
  }

  v659 = 80;
  v660 = 1u;
  v661 = v658;
  do
  {
    *v5 = v661 + 1;
    *v661 = v659;
    v661 = *v5;
    if (*v5 >= *(v5 + 24))
    {
      v661 = *(v5 + 16);
      *v5 = v661;
    }

    v659 = aPdbgv[v660++];
  }

  while (v660 != 7);
  sprintf_HHMMSS(v5, v617);
  v662 = *v5;
  if (*(v874 + 1704))
  {
    *v5 = v662 + 1;
    *v662 = 65;
    v663 = *v5;
    if (*v5 >= *(v5 + 24))
    {
      v663 = *v895;
    }

    *v5 = v663 + 1;
    *v663 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf1da(v5, *(v874 + 1705), v911, 0, 0);
    v664 = (*v5)++;
    *v664 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf1da(v5, *(v874 + 1706), v911, 0, 0);
    v665 = (*v5)++;
    *v665 = 44;
    v617 = v894;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    v666 = *(v874 + 1712) * 100.0;
    v667 = -0.5;
    if (v666 > 0.0)
    {
      v667 = 0.5;
    }

    v668 = v666 + v667;
    if (v668 <= 2147483650.0)
    {
      if (v668 >= -2147483650.0)
      {
        v669 = v668;
      }

      else
      {
        v669 = 0x80000000;
      }
    }

    else
    {
      v669 = 0x7FFFFFFF;
    }

    sprintf_3f(v5, v669, 3);
    v672 = (*v5)++;
    *v672 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    v673 = *(v874 + 1720) * 100.0;
    v674 = -0.5;
    if (v673 > 0.0)
    {
      v674 = 0.5;
    }

    v675 = v673 + v674;
    if (v675 <= 2147483650.0)
    {
      if (v675 >= -2147483650.0)
      {
        v676 = v675;
      }

      else
      {
        v676 = 0x80000000;
      }
    }

    else
    {
      v676 = 0x7FFFFFFF;
    }

    sprintf_3f(v5, v676, 3);
    v677 = (*v5)++;
    *v677 = 44;
    v662 = *v5;
    if (*v5 >= *(v5 + 24))
    {
      v662 = *v895;
    }
  }

  else
  {
    v670 = 78;
    v671 = 1u;
    do
    {
      *v5 = v662 + 1;
      *v662 = v670;
      v662 = *v5;
      if (*v5 >= *(v5 + 24))
      {
        v662 = *(v5 + 16);
        *v5 = v662;
      }

      v670 = aN_5[v671++];
    }

    while (v671 != 7);
  }

  if (*(v874 + 1728))
  {
    *v5 = v662 + 1;
    *v662 = 65;
    v678 = *v5;
    if (*v5 >= *(v5 + 24))
    {
      v678 = *v895;
    }

    *v5 = v678 + 1;
    *v678 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf1da(v5, *(v874 + 1729), v911, 0, 0);
    v679 = (*v5)++;
    *v679 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf1da(v5, *(v874 + 1730), v911, 0, 0);
    v680 = (*v5)++;
    *v680 = 44;
    v617 = v894;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    v681 = *(v874 + 1736) * 100.0;
    v682 = -0.5;
    if (v681 > 0.0)
    {
      v682 = 0.5;
    }

    v683 = v681 + v682;
    if (v683 <= 2147483650.0)
    {
      if (v683 >= -2147483650.0)
      {
        v684 = v683;
      }

      else
      {
        v684 = 0x80000000;
      }
    }

    else
    {
      v684 = 0x7FFFFFFF;
    }

    sprintf_3f(v5, v684, 3);
    v687 = (*v5)++;
    *v687 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    v688 = *(v874 + 1744) * 100.0;
    v689 = -0.5;
    if (v688 > 0.0)
    {
      v689 = 0.5;
    }

    v690 = v688 + v689;
    if (v690 <= 2147483650.0)
    {
      if (v690 >= -2147483650.0)
      {
        v691 = v690;
      }

      else
      {
        v691 = 0x80000000;
      }
    }

    else
    {
      v691 = 0x7FFFFFFF;
    }

    sprintf_3f(v5, v691, 3);
    v692 = (*v5)++;
    *v692 = 44;
    v662 = *v5;
    if (*v5 >= *(v5 + 24))
    {
      v662 = *v895;
    }
  }

  else
  {
    v685 = 78;
    v686 = 1u;
    do
    {
      *v5 = v662 + 1;
      *v662 = v685;
      v662 = *v5;
      if (*v5 >= *(v5 + 24))
      {
        v662 = *(v5 + 16);
        *v5 = v662;
      }

      v685 = aN_5[v686++];
    }

    while (v686 != 7);
  }

  if (*(v874 + 1752))
  {
    *v5 = v662 + 1;
    *v662 = 65;
    v693 = *v5;
    if (*v5 >= *(v5 + 24))
    {
      v693 = *v895;
    }

    *v5 = v693 + 1;
    *v693 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf1da(v5, *(v874 + 1753), v911, 0, 0);
    v694 = (*v5)++;
    *v694 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    sprintf1da(v5, *(v874 + 1754), v911, 0, 0);
    v695 = (*v5)++;
    *v695 = 44;
    v617 = v894;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    v696 = *(v874 + 1760) * 100.0;
    v697 = -0.5;
    if (v696 > 0.0)
    {
      v697 = 0.5;
    }

    v698 = v696 + v697;
    if (v698 <= 2147483650.0)
    {
      if (v698 >= -2147483650.0)
      {
        v699 = v698;
      }

      else
      {
        v699 = 0x80000000;
      }
    }

    else
    {
      v699 = 0x7FFFFFFF;
    }

    sprintf_3f(v5, v699, 3);
    v702 = (*v5)++;
    *v702 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    v703 = *(v874 + 1768) * 100.0;
    v704 = -0.5;
    if (v703 > 0.0)
    {
      v704 = 0.5;
    }

    v705 = v703 + v704;
    if (v705 <= 2147483650.0)
    {
      if (v705 >= -2147483650.0)
      {
        v706 = v705;
      }

      else
      {
        v706 = 0x80000000;
      }
    }

    else
    {
      v706 = 0x7FFFFFFF;
    }

    sprintf_3f(v5, v706, 3);
    v707 = (*v5)++;
    *v707 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }
  }

  else
  {
    v700 = 78;
    v701 = 1u;
    do
    {
      *v5 = v662 + 1;
      *v662 = v700;
      v662 = *v5;
      if (*v5 >= *(v5 + 24))
      {
        v662 = *(v5 + 16);
        *v5 = v662;
      }

      v700 = aN_8[v701++];
    }

    while (v701 != 6);
  }

  NMEA_Add_checksum(v5, v658);
  v708 = (*v5)++;
  *v708 = 36;
  v709 = *v5;
  if (*v5 >= *(v5 + 24))
  {
    v709 = *v895;
  }

  v710 = 80;
  v711 = 1u;
  v712 = v709;
  do
  {
    *v5 = v712 + 1;
    *v712 = v710;
    v712 = *v5;
    if (*v5 >= *(v5 + 24))
    {
      v712 = *(v5 + 16);
      *v5 = v712;
    }

    v710 = aPdbgx[v711++];
  }

  while (v711 != 7);
  sprintf_HHMMSS(v5, v617);
  v713 = *(v874 + 1912) * 100.0;
  v714 = -0.5;
  if (v713 > 0.0)
  {
    v714 = 0.5;
  }

  v715 = v713 + v714;
  if (v715 <= 2147483650.0)
  {
    if (v715 >= -2147483650.0)
    {
      v716 = v715;
    }

    else
    {
      v716 = 0x80000000;
    }
  }

  else
  {
    v716 = 0x7FFFFFFF;
  }

  sprintf_3f(v5, v716, 3);
  v717 = (*v5)++;
  *v717 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  v718 = *(v874 + 1920) * 100.0;
  v719 = -0.5;
  if (v718 > 0.0)
  {
    v719 = 0.5;
  }

  v720 = v718 + v719;
  if (v720 <= 2147483650.0)
  {
    if (v720 >= -2147483650.0)
    {
      v721 = v720;
    }

    else
    {
      v721 = 0x80000000;
    }
  }

  else
  {
    v721 = 0x7FFFFFFF;
  }

  sprintf_3f(v5, v721, 3);
  v722 = (*v5)++;
  *v722 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  v723 = *(v874 + 1928) * 100.0;
  v724 = -0.5;
  if (v723 > 0.0)
  {
    v724 = 0.5;
  }

  v725 = v723 + v724;
  if (v725 <= 2147483650.0)
  {
    if (v725 >= -2147483650.0)
    {
      v726 = v725;
    }

    else
    {
      v726 = 0x80000000;
    }
  }

  else
  {
    v726 = 0x7FFFFFFF;
  }

  sprintf_3f(v5, v726, 3);
  v727 = (*v5)++;
  *v727 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  v728 = *(v874 + 1936) * 100.0;
  v729 = -0.5;
  if (v728 > 0.0)
  {
    v729 = 0.5;
  }

  v730 = v728 + v729;
  if (v730 <= 2147483650.0)
  {
    if (v730 >= -2147483650.0)
    {
      v731 = v730;
    }

    else
    {
      v731 = 0x80000000;
    }
  }

  else
  {
    v731 = 0x7FFFFFFF;
  }

  sprintf_3f(v5, v731, 3);
  v732 = (*v5)++;
  *v732 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  v733 = *(v874 + 1944) * 1000.0;
  v734 = -0.5;
  if (v733 > 0.0)
  {
    v734 = 0.5;
  }

  v735 = v733 + v734;
  if (v735 <= 2147483650.0)
  {
    if (v735 >= -2147483650.0)
    {
      v736 = v735;
    }

    else
    {
      v736 = 0x80000000;
    }
  }

  else
  {
    v736 = 0x7FFFFFFF;
  }

  sprintf_4f(v5, v736, 4);
  v737 = (*v5)++;
  *v737 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  v738 = *(v874 + 1952) * 1000.0;
  v739 = -0.5;
  if (v738 > 0.0)
  {
    v739 = 0.5;
  }

  v740 = v738 + v739;
  if (v740 <= 2147483650.0)
  {
    if (v740 >= -2147483650.0)
    {
      v741 = v740;
    }

    else
    {
      v741 = 0x80000000;
    }
  }

  else
  {
    v741 = 0x7FFFFFFF;
  }

  sprintf_4f(v5, v741, 4);
  v742 = (*v5)++;
  *v742 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  v743 = *(v874 + 1960) * 1000.0;
  v744 = -0.5;
  if (v743 > 0.0)
  {
    v744 = 0.5;
  }

  v745 = v743 + v744;
  if (v745 <= 2147483650.0)
  {
    if (v745 >= -2147483650.0)
    {
      v746 = v745;
    }

    else
    {
      v746 = 0x80000000;
    }
  }

  else
  {
    v746 = 0x7FFFFFFF;
  }

  sprintf_4f(v5, v746, 4);
  v747 = (*v5)++;
  *v747 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  v748 = *(v874 + 1968) * 1000.0;
  v749 = -0.5;
  if (v748 > 0.0)
  {
    v749 = 0.5;
  }

  v750 = v748 + v749;
  if (v750 <= 2147483650.0)
  {
    if (v750 >= -2147483650.0)
    {
      v751 = v750;
    }

    else
    {
      v751 = 0x80000000;
    }
  }

  else
  {
    v751 = 0x7FFFFFFF;
  }

  sprintf_4f(v5, v751, 4);
  v752 = (*v5)++;
  *v752 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  v753 = *(v874 + 1976) * 1000.0;
  v754 = -0.5;
  if (v753 > 0.0)
  {
    v754 = 0.5;
  }

  v755 = v753 + v754;
  if (v755 <= 2147483650.0)
  {
    if (v755 >= -2147483650.0)
    {
      v756 = v755;
    }

    else
    {
      v756 = 0x80000000;
    }
  }

  else
  {
    v756 = 0x7FFFFFFF;
  }

  sprintf_4f(v5, v756, 4);
  v757 = (*v5)++;
  *v757 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  v758 = *(v874 + 1984) * 10.0;
  v759 = -0.5;
  if (v758 > 0.0)
  {
    v759 = 0.5;
  }

  v760 = v758 + v759;
  if (v760 <= 2147483650.0)
  {
    if (v760 >= -2147483650.0)
    {
      v761 = v760;
    }

    else
    {
      v761 = 0x80000000;
    }
  }

  else
  {
    v761 = 0x7FFFFFFF;
  }

  sprintf_2f(v5, v761);
  v762 = (*v5)++;
  *v762 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  v763 = *(v874 + 1992) * 10.0;
  v764 = -0.5;
  if (v763 > 0.0)
  {
    v764 = 0.5;
  }

  v765 = v763 + v764;
  if (v765 <= 2147483650.0)
  {
    if (v765 >= -2147483650.0)
    {
      v766 = v765;
    }

    else
    {
      v766 = 0x80000000;
    }
  }

  else
  {
    v766 = 0x7FFFFFFF;
  }

  sprintf_2f(v5, v766);
  v767 = (*v5)++;
  *v767 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  v768 = *(v874 + 2000) * 10.0;
  v769 = -0.5;
  if (v768 > 0.0)
  {
    v769 = 0.5;
  }

  v770 = v768 + v769;
  if (v770 <= 2147483650.0)
  {
    if (v770 >= -2147483650.0)
    {
      v771 = v770;
    }

    else
    {
      v771 = 0x80000000;
    }
  }

  else
  {
    v771 = 0x7FFFFFFF;
  }

  sprintf_2f(v5, v771);
  v772 = (*v5)++;
  *v772 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  v773 = *(v874 + 2008) * 10.0;
  v774 = -0.5;
  if (v773 > 0.0)
  {
    v774 = 0.5;
  }

  v775 = v773 + v774;
  if (v775 <= 2147483650.0)
  {
    if (v775 >= -2147483650.0)
    {
      v776 = v775;
    }

    else
    {
      v776 = 0x80000000;
    }
  }

  else
  {
    v776 = 0x7FFFFFFF;
  }

  sprintf_2f(v5, v776);
  v777 = (*v5)++;
  *v777 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  v778 = *(v874 + 2016) * 10.0;
  v779 = -0.5;
  if (v778 > 0.0)
  {
    v779 = 0.5;
  }

  v780 = v778 + v779;
  if (v780 <= 2147483650.0)
  {
    if (v780 >= -2147483650.0)
    {
      v781 = v780;
    }

    else
    {
      v781 = 0x80000000;
    }
  }

  else
  {
    v781 = 0x7FFFFFFF;
  }

  sprintf_2f(v5, v781);
  v782 = (*v5)++;
  *v782 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  v783 = *(v874 + 2024) * 10.0;
  v784 = -0.5;
  if (v783 > 0.0)
  {
    v784 = 0.5;
  }

  v785 = v783 + v784;
  if (v785 <= 2147483650.0)
  {
    if (v785 >= -2147483650.0)
    {
      v786 = v785;
    }

    else
    {
      v786 = 0x80000000;
    }
  }

  else
  {
    v786 = 0x7FFFFFFF;
  }

  sprintf_2f(v5, v786);
  v787 = (*v5)++;
  *v787 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  v788 = *(v874 + 2032) * 10.0;
  v789 = -0.5;
  if (v788 > 0.0)
  {
    v789 = 0.5;
  }

  v790 = v788 + v789;
  if (v790 <= 2147483650.0)
  {
    if (v790 >= -2147483650.0)
    {
      v791 = v790;
    }

    else
    {
      v791 = 0x80000000;
    }
  }

  else
  {
    v791 = 0x7FFFFFFF;
  }

  sprintf_2f(v5, v791);
  v792 = (*v5)++;
  *v792 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf1da(v5, *(v874 + 2040), v911, 0, 0);
  v793 = (*v5)++;
  *v793 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  v794 = *(v874 + 2048) * 10.0;
  v795 = -0.5;
  if (v794 > 0.0)
  {
    v795 = 0.5;
  }

  v796 = v794 + v795;
  if (v796 <= 2147483650.0)
  {
    if (v796 >= -2147483650.0)
    {
      v797 = v796;
    }

    else
    {
      v797 = 0x80000000;
    }
  }

  else
  {
    v797 = 0x7FFFFFFF;
  }

  sprintf_2f(v5, v797);
  v798 = (*v5)++;
  *v798 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  v799 = *(v874 + 2056) * 10.0;
  v800 = -0.5;
  if (v799 > 0.0)
  {
    v800 = 0.5;
  }

  v801 = v799 + v800;
  if (v801 <= 2147483650.0)
  {
    if (v801 >= -2147483650.0)
    {
      v802 = v801;
    }

    else
    {
      v802 = 0x80000000;
    }
  }

  else
  {
    v802 = 0x7FFFFFFF;
  }

  sprintf_2f(v5, v802);
  v803 = (*v5)++;
  *v803 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  v804 = *(v874 + 2064) * 10.0;
  v805 = -0.5;
  if (v804 > 0.0)
  {
    v805 = 0.5;
  }

  v806 = v804 + v805;
  if (v806 <= 2147483650.0)
  {
    if (v806 >= -2147483650.0)
    {
      v807 = v806;
    }

    else
    {
      v807 = 0x80000000;
    }
  }

  else
  {
    v807 = 0x7FFFFFFF;
  }

  sprintf_2f(v5, v807);
  v808 = (*v5)++;
  *v808 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  v809 = *(v874 + 2072) * 10.0;
  v810 = -0.5;
  if (v809 > 0.0)
  {
    v810 = 0.5;
  }

  v811 = v809 + v810;
  if (v811 <= 2147483650.0)
  {
    if (v811 >= -2147483650.0)
    {
      v812 = v811;
    }

    else
    {
      v812 = 0x80000000;
    }
  }

  else
  {
    v812 = 0x7FFFFFFF;
  }

  sprintf_2f(v5, v812);
  v813 = (*v5)++;
  *v813 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  v814 = *(v894 + 56) * 1000000000.0 * 10.0;
  v815 = -0.5;
  if (v814 > 0.0)
  {
    v815 = 0.5;
  }

  v816 = v814 + v815;
  if (v816 <= 2147483650.0)
  {
    if (v816 >= -2147483650.0)
    {
      v817 = v816;
    }

    else
    {
      v817 = 0x80000000;
    }
  }

  else
  {
    v817 = 0x7FFFFFFF;
  }

  sprintf_2f(v5, v817);
  v818 = (*v5)++;
  *v818 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf_AccEst(v5, *(v894 + 168) * 1000000000.0);
  v819 = (*v5)++;
  *v819 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  v820 = *(v894 + 64) * 1000000000.0 * 10.0;
  v821 = -0.5;
  if (v820 > 0.0)
  {
    v821 = 0.5;
  }

  v822 = v820 + v821;
  if (v822 <= 2147483650.0)
  {
    if (v822 >= -2147483650.0)
    {
      v823 = v822;
    }

    else
    {
      v823 = 0x80000000;
    }
  }

  else
  {
    v823 = 0x7FFFFFFF;
  }

  sprintf_2f(v5, v823);
  v824 = (*v5)++;
  *v824 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf_AccEst(v5, *(v894 + 176) * 1000000000.0);
  NMEA_Add_checksum(v5, v709);
  v825 = (*v5)++;
  *v825 = 36;
  v826 = *v5;
  if (*v5 >= *(v5 + 24))
  {
    v826 = *v895;
  }

  v827 = 80;
  v828 = 1u;
  v829 = v826;
  do
  {
    *v5 = v829 + 1;
    *v829 = v827;
    v829 = *v5;
    if (*v5 >= *(v5 + 24))
    {
      v829 = *(v5 + 16);
      *v5 = v829;
    }

    v827 = aPdbgy[v828++];
  }

  while (v828 != 7);
  sprintf_HHMMSS(v5, v894);
  v830 = *(v874 + 2082);
  v831 = *v5;
  if (v830)
  {
    v832 = (v874 + 2083);
    do
    {
      *v5 = v831 + 1;
      *v831 = v830;
      v831 = *v5;
      if (*v5 >= *(v5 + 24))
      {
        v831 = *(v5 + 16);
        *v5 = v831;
      }

      v833 = *v832++;
      v830 = v833;
    }

    while (v833);
  }

  *v5 = v831 + 1;
  *v831 = 58;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf_04x(v5, *(v874 + 2086));
  v834 = (*v5)++;
  *v834 = 45;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf_08x(v5, *(v874 + 2088));
  v835 = (*v5)++;
  *v835 = 45;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf1da(v5, *(v874 + 2089), v911, 0, 0);
  v836 = (*v5)++;
  *v836 = 46;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf_02d(v5, *(v874 + 2090));
  v837 = (*v5)++;
  *v837 = 46;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf1da(v5, *(v874 + 2091), v911, 0, 0);
  v838 = (*v5)++;
  *v838 = 46;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf1da(v5, *(v874 + 2092), v911, 0, 0);
  v839 = (*v5)++;
  *v839 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf1da(v5, *(v874 + 2094), v911, 0, 0);
  v840 = (*v5)++;
  *v840 = 46;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf_2d(v5, *(v874 + 2096));
  v841 = (*v5)++;
  *v841 = 46;
  v842 = *v5;
  if (*v5 >= *(v5 + 24))
  {
    v842 = *v895;
  }

  v843 = *(v874 + 2097);
  *v5 = v842 + 1;
  *v842 = v843;
  v844 = *v5;
  if (*v5 >= *(v5 + 24))
  {
    v844 = *v895;
  }

  *v5 = v844 + 1;
  *v844 = 46;
  v845 = *v5;
  if (*v5 >= *(v5 + 24))
  {
    v845 = *(v5 + 16);
    *v5 = v845;
  }

  v846 = *(v874 + 2098);
  if (v846)
  {
    v847 = (v874 + 2099);
    do
    {
      *v5 = v845 + 1;
      *v845 = v846;
      v845 = *v5;
      if (*v5 >= *(v5 + 24))
      {
        v845 = *(v5 + 16);
        *v5 = v845;
      }

      v848 = *v847++;
      v846 = v848;
    }

    while (v848);
  }

  *v5 = v845 + 1;
  *v845 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  v849 = *(v874 + 2108);
  if (v849 >= 0)
  {
    v850 = *(v874 + 2108);
  }

  else
  {
    v850 = -v849;
  }

  sprintf1da(v5, v850, v911, 0, v849 >> 31);
  v851 = (*v5)++;
  *v851 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  v852 = *(v874 + 2112);
  if (v852 >= 0)
  {
    v853 = *(v874 + 2112);
  }

  else
  {
    v853 = -v852;
  }

  sprintf1da(v5, v853, v911, 0, v852 >> 31);
  v854 = (*v5)++;
  *v854 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf1da(v5, *(v874 + 2116), v911, 0, 0);
  v855 = (*v5)++;
  *v855 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf1da(v5, *(v874 + 2117), v911, 0, 0);
  v856 = (*v5)++;
  *v856 = 44;
  v857 = *v5;
  if (*v5 >= *(v5 + 24))
  {
    v857 = *v895;
  }

  v858 = 0;
  v859 = 48;
  do
  {
    *v5 = v857 + 1;
    *v857 = v859;
    v857 = *v5;
    if (*v5 >= *(v5 + 24))
    {
      v857 = *(v5 + 16);
      *v5 = v857;
    }

    v859 = a0x_0[++v858];
  }

  while (v858 != 2);
  sprintf_1X(v5, *(v874 + 2118));
  v860 = (*v5)++;
  *v860 = 44;
  v861 = *v5;
  if (*v5 >= *(v5 + 24))
  {
    v861 = *v895;
  }

  v862 = 0;
  v863 = 48;
  do
  {
    *v5 = v861 + 1;
    *v861 = v863;
    v861 = *v5;
    if (*v5 >= *(v5 + 24))
    {
      v861 = *(v5 + 16);
      *v5 = v861;
    }

    v863 = a0x_0[++v862];
  }

  while (v862 != 2);
  sprintf_1X(v5, *(v874 + 2119));
  v864 = (*v5)++;
  *v864 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  sprintf1da(v5, *(v874 + 2120), v911, 0, 0);
  v865 = (*v5)++;
  *v865 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  nzet(v5, 0xAu, v911, 0, 0, 0);
  v866 = (*v5)++;
  *v866 = 44;
  if (*v5 >= *(v5 + 24))
  {
    *v5 = *(v5 + 16);
  }

  v867 = *(v874 + 2128) - *(v874 + 2124);
  if (v867 >= 0)
  {
    v868 = *(v874 + 2128) - *(v874 + 2124);
  }

  else
  {
    v868 = *(v874 + 2124) - *(v874 + 2128);
  }

  sprintf1da(v5, v868, v911, 0, v867 >> 31);
  for (k = 0; k != 36; k += 4)
  {
    v870 = (*v5)++;
    *v870 = 44;
    if (*v5 >= *(v5 + 24))
    {
      *v5 = *(v5 + 16);
    }

    v871 = *(v874 + 2132 + k) - *(v874 + 2124);
    if (v871 >= 0)
    {
      v872 = *(v874 + 2132 + k) - *(v874 + 2124);
    }

    else
    {
      v872 = *(v874 + 2124) - *(v874 + 2132 + k);
    }

    sprintf1da(v5, v872, v911, 0, v871 >> 31);
  }

  v873 = *MEMORY[0x29EDCA608];

  return NMEA_Add_checksum(v5, v826);
}

char **NMEA_Encode_PDBGE_Constell(char **a1, int a2, uint64_t a3, uint64_t a4)
{
  v58 = *MEMORY[0x29EDCA608];
  v7 = (*a1)++;
  *v7 = 36;
  v8 = *a1;
  if (*a1 >= a1[3])
  {
    v8 = a1[2];
  }

  v9 = 80;
  v10 = 1u;
  v11 = v8;
  do
  {
    *a1 = v11 + 1;
    *v11 = v9;
    v11 = *a1;
    if (*a1 >= a1[3])
    {
      v11 = a1[2];
      *a1 = v11;
    }

    v9 = aPdbge[v10++];
  }

  while (v10 != 7);
  sprintf_HHMMSS(a1, a3);
  v12 = a2 - 1;
  v13 = qword_299051270[v12];
  v14 = qword_2990512A8[v12];
  v15 = qword_2990512E0[v12];
  v16 = qword_299051318[v12];
  v17 = qword_299051350[v12];
  v18 = qword_299051388[v12];
  v19 = qword_2990513C0[v12];
  v20 = qword_2990513F8[v12];
  v21 = qword_299051430[v12];
  v22 = qword_299051468[v12];
  v23 = off_29EF064E0[v12];
  v24 = *(a4 + qword_299051238[v12]);
  v25 = *v23;
  v26 = *(a4 + v13);
  v27 = *(a4 + v14);
  v28 = *(a4 + v15);
  v29 = *(a4 + v16);
  v30 = *(a4 + v17);
  v31 = *(a4 + v18);
  v32 = *(a4 + v19);
  v56 = *(a4 + v20);
  v33 = *(a4 + v21);
  v34 = *(a4 + v22);
  if (*v23)
  {
    v35 = *a1;
    v36 = (v23 + 1);
    do
    {
      *a1 = v35 + 1;
      *v35 = v25;
      v35 = *a1;
      if (*a1 >= a1[3])
      {
        v35 = a1[2];
        *a1 = v35;
      }

      v37 = *v36++;
      v25 = v37;
    }

    while (v37);
  }

  sprintf1da(a1, v24, v57, 0, 0);
  v38 = (*a1)++;
  *v38 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, v26, v57, 0, 0);
  v39 = (*a1)++;
  *v39 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, v27, v57, 0, 0);
  v40 = (*a1)++;
  *v40 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, v28, v57, 0, 0);
  v41 = (*a1)++;
  *v41 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, v29, v57, 0, 0);
  v42 = (*a1)++;
  *v42 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, v30, v57, 0, 0);
  v43 = (*a1)++;
  *v43 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, v31, v57, 0, 0);
  v44 = (*a1)++;
  *v44 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, v32, v57, 0, 0);
  v45 = (*a1)++;
  *v45 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, v56, v57, 0, 0);
  v46 = (*a1)++;
  *v46 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  v47 = -0.5;
  if (v33 * 100.0 > 0.0)
  {
    v47 = 0.5;
  }

  v48 = v33 * 100.0 + v47;
  if (v48 <= 2147483650.0)
  {
    if (v48 >= -2147483650.0)
    {
      v49 = v48;
    }

    else
    {
      v49 = 0x80000000;
    }
  }

  else
  {
    v49 = 0x7FFFFFFF;
  }

  sprintf_3f(a1, v49, 3);
  v50 = (*a1)++;
  *v50 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  v51 = -0.5;
  if (v34 * 100.0 > 0.0)
  {
    v51 = 0.5;
  }

  v52 = v34 * 100.0 + v51;
  if (v52 <= 2147483650.0)
  {
    if (v52 >= -2147483650.0)
    {
      v53 = v52;
    }

    else
    {
      v53 = 0x80000000;
    }
  }

  else
  {
    v53 = 0x7FFFFFFF;
  }

  sprintf_3f(a1, v53, 3);
  v54 = *MEMORY[0x29EDCA608];

  return NMEA_Add_checksum(a1, v8);
}

char **NMEA_Encode_PDBGI_Constell(char **a1, int a2, uint64_t a3, uint64_t a4)
{
  v74 = *MEMORY[0x29EDCA608];
  v7 = (*a1)++;
  *v7 = 36;
  v8 = *a1;
  if (*a1 >= a1[3])
  {
    v8 = a1[2];
  }

  v9 = 80;
  v10 = 1u;
  v11 = v8;
  do
  {
    *a1 = v11 + 1;
    *v11 = v9;
    v11 = *a1;
    if (*a1 >= a1[3])
    {
      v11 = a1[2];
      *a1 = v11;
    }

    v9 = aPdbgi[v10++];
  }

  while (v10 != 7);
  sprintf_HHMMSS(a1, a3);
  v12 = a2 - 1;
  v13 = qword_2990514A0[v12];
  v14 = off_29EF064E0[v12];
  v15 = (a4 + v13);
  v16 = v15[3];
  v69 = v15[2];
  v70 = v16;
  v17 = v15[5];
  v71 = v15[4];
  v72 = v17;
  v18 = v15[1];
  v68[0] = *v15;
  v68[1] = v18;
  v19 = *v14;
  if (*v14)
  {
    v20 = *a1;
    v21 = (v14 + 1);
    do
    {
      *a1 = v20 + 1;
      *v20 = v19;
      v20 = *a1;
      if (*a1 >= a1[3])
      {
        v20 = a1[2];
        *a1 = v20;
      }

      v22 = *v21++;
      v19 = v22;
    }

    while (v22);
  }

  sprintf1da(a1, BYTE1(v68[0]), v73, 0, 0);
  v23 = (*a1)++;
  *v23 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, BYTE2(v68[0]), v73, 0, 0);
  v24 = (*a1)++;
  *v24 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, BYTE3(v68[0]), v73, 0, 0);
  v25 = (*a1)++;
  *v25 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, BYTE4(v68[0]), v73, 0, 0);
  v26 = (*a1)++;
  *v26 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, BYTE6(v68[0]), v73, 0, 0);
  v27 = (*a1)++;
  *v27 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, BYTE7(v68[0]), v73, 0, 0);
  v28 = (*a1)++;
  *v28 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, BYTE8(v68[0]), v73, 0, 0);
  v29 = (*a1)++;
  *v29 = 44;
  v30 = *a1;
  if (*a1 >= a1[3])
  {
    v30 = a1[2];
  }

  for (i = 9; i != 17; ++i)
  {
    v32 = *(v68 + i);
    if (v32)
    {
      *a1 = v30 + 1;
      *v30 = v32;
      v30 = *a1;
      if (*a1 >= a1[3])
      {
        v30 = a1[2];
        *a1 = v30;
      }
    }
  }

  *a1 = v30 + 1;
  *v30 = 44;
  v33 = *a1;
  if (*a1 >= a1[3])
  {
    v33 = a1[2];
  }

  for (j = 17; j != 25; ++j)
  {
    v35 = *(v68 + j);
    if (v35)
    {
      *a1 = v33 + 1;
      *v33 = v35;
      v33 = *a1;
      if (*a1 >= a1[3])
      {
        v33 = a1[2];
        *a1 = v33;
      }
    }
  }

  *a1 = v33 + 1;
  *v33 = 44;
  v36 = *a1;
  if (*a1 >= a1[3])
  {
    v36 = a1[2];
  }

  for (k = 25; k != 33; ++k)
  {
    v38 = *(v68 + k);
    if (v38)
    {
      *a1 = v36 + 1;
      *v36 = v38;
      v36 = *a1;
      if (*a1 >= a1[3])
      {
        v36 = a1[2];
        *a1 = v36;
      }
    }
  }

  *a1 = v36 + 1;
  *v36 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  v39 = -0.5;
  if (*(&v69 + 1) * 10.0 > 0.0)
  {
    v39 = 0.5;
  }

  v40 = *(&v69 + 1) * 10.0 + v39;
  if (v40 <= 2147483650.0)
  {
    if (v40 >= -2147483650.0)
    {
      v41 = v40;
    }

    else
    {
      v41 = 0x80000000;
    }
  }

  else
  {
    v41 = 0x7FFFFFFF;
  }

  sprintf_2f(a1, v41);
  v42 = (*a1)++;
  *v42 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  v43 = -0.5;
  if (*&v70 * 10.0 > 0.0)
  {
    v43 = 0.5;
  }

  v44 = *&v70 * 10.0 + v43;
  if (v44 <= 2147483650.0)
  {
    if (v44 >= -2147483650.0)
    {
      v45 = v44;
    }

    else
    {
      v45 = 0x80000000;
    }
  }

  else
  {
    v45 = 0x7FFFFFFF;
  }

  sprintf_2f(a1, v45);
  v46 = (*a1)++;
  *v46 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  v47 = -0.5;
  if (*(&v70 + 1) * 10.0 > 0.0)
  {
    v47 = 0.5;
  }

  v48 = *(&v70 + 1) * 10.0 + v47;
  if (v48 <= 2147483650.0)
  {
    if (v48 >= -2147483650.0)
    {
      v49 = v48;
    }

    else
    {
      v49 = 0x80000000;
    }
  }

  else
  {
    v49 = 0x7FFFFFFF;
  }

  sprintf_2f(a1, v49);
  v50 = (*a1)++;
  *v50 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  v51 = -0.5;
  if (*&v71 * 10.0 > 0.0)
  {
    v51 = 0.5;
  }

  v52 = *&v71 * 10.0 + v51;
  if (v52 <= 2147483650.0)
  {
    if (v52 >= -2147483650.0)
    {
      v53 = v52;
    }

    else
    {
      v53 = 0x80000000;
    }
  }

  else
  {
    v53 = 0x7FFFFFFF;
  }

  sprintf_2f(a1, v53);
  v54 = (*a1)++;
  *v54 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  v55 = -0.5;
  if (*(&v71 + 1) * 10.0 > 0.0)
  {
    v55 = 0.5;
  }

  v56 = *(&v71 + 1) * 10.0 + v55;
  if (v56 <= 2147483650.0)
  {
    if (v56 >= -2147483650.0)
    {
      v57 = v56;
    }

    else
    {
      v57 = 0x80000000;
    }
  }

  else
  {
    v57 = 0x7FFFFFFF;
  }

  sprintf_2f(a1, v57);
  v58 = (*a1)++;
  *v58 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  v59 = -0.5;
  if (*&v72 * 10.0 > 0.0)
  {
    v59 = 0.5;
  }

  v60 = *&v72 * 10.0 + v59;
  if (v60 <= 2147483650.0)
  {
    if (v60 >= -2147483650.0)
    {
      v61 = v60;
    }

    else
    {
      v61 = 0x80000000;
    }
  }

  else
  {
    v61 = 0x7FFFFFFF;
  }

  sprintf_2f(a1, v61);
  v62 = (*a1)++;
  *v62 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, BYTE8(v72), v73, 0, 0);
  v63 = (*a1)++;
  *v63 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, BYTE9(v72), v73, 0, 0);
  v64 = (*a1)++;
  *v64 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf1da(a1, BYTE10(v72), v73, 0, 0);
  v65 = (*a1)++;
  *v65 = 44;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  v66 = *MEMORY[0x29EDCA608];

  return NMEA_Add_checksum(a1, v8);
}

char **NMEA_Encode_PDBGO(char **a1, int a2, uint64_t a3, uint64_t a4)
{
  v49 = *MEMORY[0x29EDCA608];
  v7 = (*a1)++;
  *v7 = 36;
  v8 = *a1;
  if (*a1 >= a1[3])
  {
    v8 = a1[2];
  }

  v9 = 80;
  v10 = 1u;
  v11 = v8;
  do
  {
    *a1 = v11 + 1;
    *v11 = v9;
    v11 = *a1;
    if (*a1 >= a1[3])
    {
      v11 = a1[2];
      *a1 = v11;
    }

    v9 = aPdbgo[v10++];
  }

  while (v10 != 7);
  sprintf_HHMMSS(a1, a3);
  v12 = a2 - 1;
  v13 = off_29EF064E0[v12];
  v14 = *(a4 + qword_2990514D8[v12]);
  v15 = *(a4 + qword_299051510[v12]);
  v16 = *(a4 + qword_299051548[v12]);
  v17 = *(a4 + qword_299051580[v12]);
  v18 = *(a4 + qword_2990515B8[v12]);
  v19 = *(a4 + qword_2990515F0[v12]);
  v20 = *v13;
  v21 = *a1;
  if (*v13)
  {
    v22 = (v13 + 1);
    do
    {
      *a1 = v21 + 1;
      *v21 = v20;
      v21 = *a1;
      if (*a1 >= a1[3])
      {
        v21 = a1[2];
        *a1 = v21;
      }

      v23 = *v22++;
      v20 = v23;
    }

    while (v23);
  }

  v24 = 0;
  v25 = 66;
  do
  {
    *a1 = v21 + 1;
    *v21 = v25;
    v21 = *a1;
    if (*a1 >= a1[3])
    {
      v21 = a1[2];
      *a1 = v21;
    }

    v25 = aB_0[++v24];
  }

  while (v24 != 2);
  if (v14)
  {
    v26 = 0;
    v27 = 48;
    do
    {
      *a1 = v21 + 1;
      *v21 = v27;
      v21 = *a1;
      if (*a1 >= a1[3])
      {
        v21 = a1[2];
        *a1 = v21;
      }

      v27 = a0x_0[++v26];
    }

    while (v26 != 2);
    sprintf_1X(a1, v14);
    v21 = *a1;
  }

  *a1 = v21 + 1;
  *v21 = 44;
  v28 = *a1;
  if (*a1 >= a1[3])
  {
    v28 = a1[2];
  }

  if (v16)
  {
    v29 = 0;
    v30 = 48;
    do
    {
      *a1 = v28 + 1;
      *v28 = v30;
      v28 = *a1;
      if (*a1 >= a1[3])
      {
        v28 = a1[2];
        *a1 = v28;
      }

      v30 = a0x_0[++v29];
    }

    while (v29 != 2);
    sprintf_1X(a1, v16);
    v28 = *a1;
  }

  *a1 = v28 + 1;
  *v28 = 44;
  v31 = *a1;
  if (*a1 >= a1[3])
  {
    v31 = a1[2];
  }

  if (v17)
  {
    v32 = 0;
    v33 = 48;
    do
    {
      *a1 = v31 + 1;
      *v31 = v33;
      v31 = *a1;
      if (*a1 >= a1[3])
      {
        v31 = a1[2];
        *a1 = v31;
      }

      v33 = a0x_0[++v32];
    }

    while (v32 != 2);
    sprintf_1X(a1, v17);
    v31 = *a1;
  }

  *a1 = v31 + 1;
  *v31 = 44;
  v34 = *a1;
  if (*a1 >= a1[3])
  {
    v34 = a1[2];
  }

  v35 = 0;
  v36 = 69;
  do
  {
    *a1 = v34 + 1;
    *v34 = v36;
    v34 = *a1;
    if (*a1 >= a1[3])
    {
      v34 = a1[2];
      *a1 = v34;
    }

    v36 = aE_2[++v35];
  }

  while (v35 != 2);
  if (v15)
  {
    v37 = 0;
    v38 = 48;
    do
    {
      *a1 = v34 + 1;
      *v34 = v38;
      v34 = *a1;
      if (*a1 >= a1[3])
      {
        v34 = a1[2];
        *a1 = v34;
      }

      v38 = a0x_0[++v37];
    }

    while (v37 != 2);
    sprintf_1X(a1, v15);
    v34 = *a1;
  }

  *a1 = v34 + 1;
  *v34 = 44;
  v39 = *a1;
  if (*a1 >= a1[3])
  {
    v39 = a1[2];
  }

  v40 = 0;
  v41 = 82;
  do
  {
    *a1 = v39 + 1;
    *v39 = v41;
    v39 = *a1;
    if (*a1 >= a1[3])
    {
      v39 = a1[2];
      *a1 = v39;
    }

    v41 = aR_0[++v40];
  }

  while (v40 != 2);
  if (v18)
  {
    v42 = 0;
    v43 = 48;
    do
    {
      *a1 = v39 + 1;
      *v39 = v43;
      v39 = *a1;
      if (*a1 >= a1[3])
      {
        v39 = a1[2];
        *a1 = v39;
      }

      v43 = a0x_0[++v42];
    }

    while (v42 != 2);
    sprintf_1X(a1, v18);
    v39 = *a1;
  }

  *a1 = v39 + 1;
  *v39 = 44;
  v44 = *a1;
  if (*a1 >= a1[3])
  {
    v44 = a1[2];
    *a1 = v44;
  }

  if (v19)
  {
    v45 = 0;
    v46 = 48;
    do
    {
      *a1 = v44 + 1;
      *v44 = v46;
      v44 = *a1;
      if (*a1 >= a1[3])
      {
        v44 = a1[2];
        *a1 = v44;
      }

      v46 = a0x_0[++v45];
    }

    while (v45 != 2);
    sprintf_1X(a1, v19);
  }

  v47 = *MEMORY[0x29EDCA608];

  return NMEA_Add_checksum(a1, v8);
}

uint64_t sprintf_LatLon(char **a1, double a2, double a3)
{
  v33 = *MEMORY[0x29EDCA608];
  v6 = a2;
  v7 = fabs((a2 - a2) * 60.0);
  if (v6 >= 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = -v6;
  }

  v9 = v7 * 1000000.0;
  v10 = -0.5;
  if (v9 > 0.0)
  {
    v10 = 0.5;
  }

  v11 = v9 + v10;
  if (v11 > 2147483650.0)
  {
    sprintf_02d(a1, v8);
    v12 = 0x7FFFFFFF;
    goto LABEL_13;
  }

  if (v11 >= -2147483650.0)
  {
    v12 = v11;
    sprintf_02d(a1, v8);
    if (v12 >= 10000000)
    {
      goto LABEL_13;
    }
  }

  else
  {
    sprintf_02d(a1, v8);
    v12 = 0x80000000;
  }

  v13 = (*a1)++;
  *v13 = 48;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

LABEL_13:
  sprintf_7f(a1, v12, 7);
  v14 = ",N,";
  if (a2 < 0.0)
  {
    v14 = ",S,";
  }

  v15 = *v14;
  if (*v14)
  {
    v16 = *a1;
    v17 = (v14 + 1);
    do
    {
      *a1 = v16 + 1;
      *v16 = v15;
      v16 = *a1;
      if (*a1 >= a1[3])
      {
        v16 = a1[2];
        *a1 = v16;
      }

      v18 = *v17++;
      v15 = v18;
    }

    while (v18);
  }

  v19 = fabs((a3 - a3) * 60.0);
  if (a3 >= 0)
  {
    v20 = a3;
  }

  else
  {
    v20 = -a3;
  }

  v21 = v19 * 1000000.0;
  v22 = -0.5;
  if (v21 > 0.0)
  {
    v22 = 0.5;
  }

  v23 = v21 + v22;
  if (v23 > 2147483650.0)
  {
    sprintf_03d(a1, v20);
    v24 = 0x7FFFFFFF;
    goto LABEL_32;
  }

  if (v23 >= -2147483650.0)
  {
    v24 = v23;
    sprintf_03d(a1, v20);
    if (v24 >= 10000000)
    {
      goto LABEL_32;
    }
  }

  else
  {
    sprintf_03d(a1, v20);
    v24 = 0x80000000;
  }

  v25 = (*a1)++;
  *v25 = 48;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

LABEL_32:
  result = sprintf_7f(a1, v24, 7);
  v27 = ",E,";
  if (a3 < 0.0)
  {
    v27 = ",W,";
  }

  v28 = *v27;
  if (*v27)
  {
    v29 = *a1;
    v30 = (v27 + 1);
    do
    {
      *a1 = v29 + 1;
      *v29 = v28;
      v29 = *a1;
      if (*a1 >= a1[3])
      {
        v29 = a1[2];
        *a1 = v29;
      }

      v31 = *v30++;
      v28 = v31;
    }

    while (v31);
  }

  v32 = *MEMORY[0x29EDCA608];
  return result;
}

void *sprintf_HHMMSS(void *result, uint64_t a2)
{
  v2 = result;
  v7 = *MEMORY[0x29EDCA608];
  if (*(a2 + 16) == 1)
  {
    sprintf_02d(result, *(a2 + 24));
    sprintf_02d(v2, *(a2 + 26));
    sprintf_02d(v2, *(a2 + 28));
    v4 = (*v2)++;
    *v4 = 46;
    if (*v2 >= v2[3])
    {
      *v2 = v2[2];
    }

    result = sprintf_03d(v2, *(a2 + 30));
  }

  v5 = (*v2)++;
  *v5 = 44;
  if (*v2 >= v2[3])
  {
    *v2 = v2[2];
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

char **NMEA_Add_checksum(uint64_t a1, _BYTE *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v3 = *a1;
  if (*a1 == a2)
  {
    v6 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      v5 = *a2;
      if (v5 == 32)
      {
        LOBYTE(v5) = 48;
        *a2 = 48;
      }

      if (++a2 >= *(a1 + 24))
      {
        a2 = *(a1 + 16);
      }

      v4 ^= v5;
      v3 = *a1;
    }

    while (a2 != *a1);
    v6 = v4;
  }

  *a1 = v3 + 1;
  *v3 = 42;
  if (*a1 >= *(a1 + 24))
  {
    *a1 = *(a1 + 16);
  }

  result = sprintf_02x(a1, v6);
  v8 = (*a1)++;
  *v8 = 10;
  if (*a1 >= *(a1 + 24))
  {
    *a1 = *(a1 + 16);
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sprintf_DOP(uint64_t result, double a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if (a2 >= 99.0)
  {
    v6 = *MEMORY[0x29EDCA608];
    v7 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v2 = a2 * 100.0;
    v3 = -0.5;
    if (v2 > 0.0)
    {
      v3 = 0.5;
    }

    v4 = v2 + v3;
    if (v4 <= 2147483650.0)
    {
      if (v4 >= -2147483650.0)
      {
        v5 = v4;
      }

      else
      {
        v5 = 0x80000000;
      }
    }

    else
    {
      v5 = 0x7FFFFFFF;
    }

    v8 = *MEMORY[0x29EDCA608];
    v9 = *MEMORY[0x29EDCA608];

    return sprintf_3f(result, v5, 3);
  }

  return result;
}

void *sprintf_AccEst(void *result, double a2)
{
  v22 = *MEMORY[0x29EDCA608];
  if (a2 >= 99999.0)
  {
LABEL_9:
    v5 = *MEMORY[0x29EDCA608];
    return result;
  }

  if (a2 > 9.9)
  {
    v2 = a2 + 0.5;
    if (v2 >= 2147483650.0)
    {
      v2 = 2147483650.0;
    }

    v3 = v2;
    if (v2 >= 0)
    {
      v4 = v2;
    }

    else
    {
      v4 = -v3;
    }

    result = sprintf1da(result, v4, v21, 0, v3 >> 31);
    goto LABEL_9;
  }

  if (a2 <= 0.99)
  {
    if (a2 <= 0.099)
    {
      v14 = a2 * 1000.0;
      v15 = -0.5;
      if (v14 > 0.0)
      {
        v15 = 0.5;
      }

      v16 = v14 + v15;
      if (v16 <= 2147483650.0)
      {
        if (v16 >= -2147483650.0)
        {
          v17 = v16;
        }

        else
        {
          v17 = 0x80000000;
        }
      }

      else
      {
        v17 = 0x7FFFFFFF;
      }

      v20 = *MEMORY[0x29EDCA608];

      return sprintf_4f(result, v17, 4);
    }

    else
    {
      v10 = a2 * 100.0;
      v11 = -0.5;
      if (v10 > 0.0)
      {
        v11 = 0.5;
      }

      v12 = v10 + v11;
      if (v12 <= 2147483650.0)
      {
        if (v12 >= -2147483650.0)
        {
          v13 = v12;
        }

        else
        {
          v13 = 0x80000000;
        }
      }

      else
      {
        v13 = 0x7FFFFFFF;
      }

      v19 = *MEMORY[0x29EDCA608];

      return sprintf_3f(result, v13, 3);
    }
  }

  else
  {
    v6 = a2 * 10.0;
    v7 = -0.5;
    if (v6 > 0.0)
    {
      v7 = 0.5;
    }

    v8 = v6 + v7;
    if (v8 <= 2147483650.0)
    {
      if (v8 >= -2147483650.0)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0x80000000;
      }
    }

    else
    {
      v9 = 0x7FFFFFFF;
    }

    v18 = *MEMORY[0x29EDCA608];

    return sprintf_2f(result, v9);
  }
}

void ECEF2Geo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x29EDCA608];
  v5 = *a1;
  if (*a2)
  {
    v6 = v5 + *(a2 + 48);
    v7 = *(a1 + 8);
    v8 = vaddq_f64(v7, *(a2 + 56));
    if (*(a2 + 2) == 1)
    {
      v9 = 0;
      v10 = (a2 + 88);
      do
      {
        v11 = v7.f64[0] * *(v10 - 1) + *(v10 - 2) * v5;
        v12 = *v10;
        v10 += 3;
        *(&v24 + v9) = v11 + v12 * v7.f64[1];
        v9 += 8;
      }

      while (v9 != 24);
      v5 = v6 + v24;
      v8 = vaddq_f64(v8, v25);
    }

    else
    {
      v5 = v5 + *(a2 + 48);
    }
  }

  else
  {
    v8 = *(a1 + 8);
  }

  v13 = vmulq_f64(v8, v8).f64[0] + v5 * v5;
  v14 = *(a2 + 24);
  v15 = 1.0 / *(a2 + 16);
  v16 = v13 * v15;
  v17 = v8.f64[1];
  v18 = vmuld_lane_f64(v8.f64[1], v8, 1) * v15;
  v21 = 3;
  do
  {
    v19 = *(a2 + 32);
    v20 = *(a2 + 40) * v18;
    v14 = v14 - ((v20 + v20) * (v14 * (v14 * v14)) + v20 * (v14 * v14) * (v14 * v14) + (v16 + v20 - v19) * (v14 * v14) + v19 * -2.0 * v14 - v19) / (v19 * -2.0 + (v20 + v20) * 3.0 * (v14 * v14) + v20 * 4.0 * (v14 * (v14 * v14)) + (v16 + v20 - v19 + v16 + v20 - v19) * v14);
    --v21;
  }

  while (v21);
  v22 = v14 + 1.0;
  if (fabs(v5) >= 0.001 || fabs(v8.f64[0]) >= 0.001)
  {
    *(a3 + 8) = atan2(v8.f64[0], v5);
  }

  else
  {
    *(a3 + 8) = 0;
    v8.f64[0] = 0.0;
    if (fabs(v8.f64[1]) < 0.001)
    {
      goto LABEL_16;
    }
  }

  v8.f64[0] = atan2(v17 * v22, sqrt(v13));
LABEL_16:
  *a3 = v8.f64[0];
  *(a3 + 16) = *(a2 + 8) * (sqrt(v18 + v16 / (v22 * v22)) * (1.0 - v14 * *(a2 + 40) / *(a2 + 24)));
  v23 = *MEMORY[0x29EDCA608];
}

BOOL NK_Body_Frame_Meas(unsigned int a1, double *a2, const double *a3, const double (*a4)[3], double a5, unsigned int a6, double *a7)
{
  v30[33] = *MEMORY[0x29EDCA608];
  v12 = &v28[2];
  ECEF2FSD_RotM(a4, a5, v28);
  v13 = 0;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  do
  {
    v17 = *(v12 - 1) * v15 + *(v12 - 2) * v14;
    v18 = *v12;
    v12 += 3;
    v28[v13 + 9] = v17 + v18 * v16;
    ++v13;
  }

  while (v13 != 3);
  v19 = 0;
  v25 = 0.0;
  v20 = &v28[2];
  do
  {
    v27 = 0;
    memset(v26, 0, sizeof(v26));
    v21 = *(v20 - 1);
    *(v26 + a1) = *(v20 - 2);
    *(v26 + a1 + 1) = v21;
    v22 = *v20;
    v20 += 3;
    *(&v26[1] + a1) = v22;
    *(v26 + a6) = v28[v19 + 9];
    result = umeas(a7, a6, a3[v19++], v26, v30, v29, &v25, 1.0e20);
  }

  while (v19 != 3);
  v24 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t NK_Static_Filter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v123[3] = *MEMORY[0x29EDCA608];
  v5 = a2 + 59944;
  v6 = a1 + 24576;
  v7 = *(a1 + 27120);
  if (v7 <= *(a1 + 16) && *(a2 + 1872) == 1)
  {
    v8 = *(a1 + 148);
    if (v8 >= *(a1 + 152))
    {
      v8 = *(a1 + 152);
    }

    if (v8 >= *(a1 + 156))
    {
      v8 = *(a1 + 156);
    }

    v111 = v8 > 0xA;
  }

  else
  {
    v111 = 0;
  }

  memcpy(__dst, (a1 + 976), sizeof(__dst));
  v9 = 0;
  v10 = *(a2 + 1584) - *&__dst[696];
  v11 = *(a2 + 1592) - *&__dst[704];
  v12 = *(a2 + 1600) - *&__dst[712];
  v13 = (a2 + 1752);
  do
  {
    v14 = v11 * *(v13 - 1) + *(v13 - 2) * v10;
    v15 = *v13;
    v13 += 3;
    *&v123[v9++] = v14 + v15 * v12;
  }

  while (v9 != 3);
  v17 = *v123;
  v16 = *&v123[1];
  v18 = sqrt(v16 * v16 + v17 * v17);
  v19 = *(v5 + 1560);
  v20 = *(v5 + 1568);
  *(a1 + 27216) = v18;
  *(a1 + 27240) = *(a1 + 27240) * 0.6 + v18 * 0.4;
  v21 = 4.0;
  if (v18 < 8.0)
  {
    v21 = 2.0;
    if (v18 >= 6.0)
    {
      v21 = 3.0;
    }
  }

  v22 = v19 + v20;
  v23 = *(a1 + 27232);
  if (*(v6 + 2540) < 3u || (v18 > v23 ? (v24 = v21 * v21 <= v22) : (v24 = 1), v24 || (*(a1 + 241) & 1) != 0))
  {
    v25 = 6.0;
    if (v18 <= 6.0 || v23 >= 6.0)
    {
      if (*(v6 + 2628) == 3)
      {
        v29 = v23 + -0.003;
        v25 = v18;
        if (v18 > v23 + -0.003)
        {
          goto LABEL_38;
        }

        v30 = 0.003;
      }

      else
      {
        v29 = v23 + -0.01;
        v25 = v18;
        if (v18 > v23 + -0.01)
        {
          goto LABEL_38;
        }

        v30 = 0.01;
      }

      v24 = v23 <= v30;
      v25 = *(a1 + 27232);
      if (!v24)
      {
        v25 = v29;
      }
    }
  }

  else
  {
    v25 = 10.0;
    if (v18 <= 10.0)
    {
      v26 = v23 + 0.5;
      if (v18 > v26 && v18 < 8.0)
      {
        v25 = v26;
      }

      else
      {
        v25 = v18;
      }
    }
  }

LABEL_38:
  *(a1 + 27232) = v25;
  v31 = *(v5 + 16);
  if (v31 == 1 && *(v5 + 12) != 1)
  {
    v32 = *(v6 + 2674);
  }

  else
  {
    *(v6 + 2673) = v25 <= 4.0;
    v32 = v25 > 4.0;
    *(v6 + 2674) = v25 > 4.0;
    if (v31 != 1)
    {
      if (v25 > 4.0)
      {
        v33 = 8;
      }

      else
      {
        v33 = 4;
      }

      *(v5 + 12) = v33;
      *(v5 + 16) = 0;
    }
  }

  if (v32)
  {
    v34 = 0.3;
  }

  else
  {
    v34 = 0.1;
  }

  if (*(v5 + 4) == 1)
  {
    v35 = *(v5 + 36);
  }

  else
  {
    v35 = 0;
  }

  v36 = *(v6 + 2780);
  if (v36 == 20)
  {
    v36 = 19;
  }

  else if (!v36)
  {
    *(a1 + 27504) = 0u;
    *(a1 + 27488) = 0u;
    *(a1 + 27472) = 0u;
    *(a1 + 27456) = 0u;
    *(a1 + 27440) = 0u;
    *(a1 + 27424) = 0u;
    *(a1 + 27408) = 0u;
    *(a1 + 27392) = 0u;
    *(a1 + 27376) = 0u;
    *(a1 + 27360) = 0u;
    goto LABEL_57;
  }

  memmove((a1 + 27368), (a1 + 27360), 8 * v36);
LABEL_57:
  *(a1 + 27360) = *(a2 + 1848);
  v37 = v36 + 1;
  *(v6 + 2780) = v36 + 1;
  v38 = *(a1 + 27472);
  v121[6] = *(a1 + 27456);
  v121[7] = v38;
  v39 = *(a1 + 27504);
  v121[8] = *(a1 + 27488);
  v121[9] = v39;
  v40 = *(a1 + 27408);
  v121[2] = *(a1 + 27392);
  v121[3] = v40;
  v41 = *(a1 + 27440);
  v121[4] = *(a1 + 27424);
  v121[5] = v41;
  v42 = *(a1 + 27376);
  v121[0] = *(a1 + 27360);
  v121[1] = v42;
  result = VecSortAscR8(v121, 0, v36);
  v44 = (v36 + 1) >> 1;
  if (v36)
  {
    if (v36 == -1)
    {
      v47 = 0.0;
      goto LABEL_71;
    }

    v45 = (*(v121 + v44 - 1) + *(v121 + v44)) * 0.5;
  }

  else
  {
    v45 = *(v121 + v44);
  }

  v46 = (a1 + 27360);
  v47 = 0.0;
  v48 = v36 + 1;
  do
  {
    v49 = *v46++;
    v50 = v49;
    if (v49 > v45 * 4.3512 && v45 > 1.0 && v37 == 20)
    {
      v50 = v45;
    }

    v47 = v47 + v50;
    --v48;
  }

  while (v48);
LABEL_71:
  v53 = v34 * 1.5;
  *(a1 + 27520) = v47 / v37;
  if (v18 >= 3.0 || v22 >= v53 * 3.0 * (v53 * 3.0))
  {
    *(v6 + 2676) = 0;
    goto LABEL_134;
  }

  v54 = *(v6 + 2676);
  if (v54 == 5)
  {
    v56 = 4;
    *(v6 + 2676) = 4;
    goto LABEL_80;
  }

  if (!*(v6 + 2676))
  {
    v55 = 0;
    *(a1 + 27272) = 0;
    *(a1 + 27256) = 0u;
    goto LABEL_82;
  }

  v56 = *(v6 + 2676);
  if (v54 >= 1)
  {
LABEL_80:
    v55 = 0;
    v54 = 0;
    v57 = v56 + 1;
    v58 = (a1 + 2 * v56 + 27262);
    do
    {
      v59 = *(v58 - 5);
      *(v58 - 4) = *(v58 - 5);
      v60 = *v58;
      v58[1] = *v58;
      v54 += v59;
      v55 += v60;
      --v57;
      --v58;
    }

    while (v57 > 1);
    goto LABEL_82;
  }

  v54 = 0;
  v55 = 0;
LABEL_82:
  v61 = -0.5;
  if (v17 * 1000.0 <= 0.0)
  {
    v62 = -0.5;
  }

  else
  {
    v62 = 0.5;
  }

  v63 = v17 * 1000.0 + v62;
  if (v63 <= 2147483650.0)
  {
    if (v63 >= -2147483650.0)
    {
      v64 = v63;
    }

    else
    {
      LOWORD(v64) = 0;
    }
  }

  else
  {
    LOWORD(v64) = -1;
  }

  *(v6 + 2678) = v64;
  if (v16 * 1000.0 > 0.0)
  {
    v61 = 0.5;
  }

  v65 = v16 * 1000.0 + v61;
  if (v65 <= 2147483650.0)
  {
    if (v65 >= -2147483650.0)
    {
      v66 = v65;
    }

    else
    {
      LOWORD(v66) = 0;
    }
  }

  else
  {
    LOWORD(v66) = -1;
  }

  *(v6 + 2688) = v66;
  v67 = *(v6 + 2676) + 1;
  *(v6 + 2676) = v67;
  if ((v35 & 1) == 0)
  {
    v68 = ((v54 + v64) * (v54 + v64) + (v55 + v66) * (v55 + v66)) / (v67 * v67);
    if (v67 < 5)
    {
      if (v67 < 3)
      {
        v73 = 0;
LABEL_124:
        v80 = 0.01;
        if (v32)
        {
          v80 = 0.09;
        }

        v35 = v18 * v18 <= v22 * 9.0 && (v22 * 9.0 + v18 * v18 < v80 || v73);
        goto LABEL_129;
      }
    }

    else
    {
      v69 = -0.5;
      if (v53 * 1000.0 > 0.0)
      {
        v69 = 0.5;
      }

      v70 = v53 * 1000.0 + v69;
      if (v70 <= 2147483650.0)
      {
        v74 = -2147483650.0;
        if (v70 > -2147483650.0)
        {
          v74 = v70;
        }

        v71 = v74;
        if (v70 < -2147483650.0)
        {
          v72 = 0x80000000;
        }

        else
        {
          v72 = v70;
        }
      }

      else
      {
        v71 = 0x7FFFFFFF;
        v72 = 0x7FFFFFFF;
      }

      if (v68 < v72 * v71)
      {
        v73 = 1;
        goto LABEL_124;
      }
    }

    v75 = -0.5;
    if (v34 * 1000.0 > 0.0)
    {
      v75 = 0.5;
    }

    v76 = v34 * 1000.0 + v75;
    if (v76 <= 2147483650.0)
    {
      v79 = -2147483650.0;
      if (v76 > -2147483650.0)
      {
        v79 = v34 * 1000.0 + v75;
      }

      v77 = v79;
      if (v76 < -2147483650.0)
      {
        v78 = 0x80000000;
      }

      else
      {
        v78 = v76;
      }
    }

    else
    {
      v77 = 0x7FFFFFFF;
      v78 = 0x7FFFFFFF;
    }

    v73 = v68 < v78 * v77;
    goto LABEL_124;
  }

  v35 = 1;
LABEL_129:
  if (*(v5 + 4) != 1)
  {
    if (v35)
    {
      v81 = 2;
    }

    else
    {
      v81 = 3;
    }

    *v5 = v81;
    *(v5 + 4) = 0;
  }

LABEL_134:
  v82 = (v6 + 2628);
  v83 = *(v6 + 2628);
  if (v83 > 1)
  {
    if (v83 != 3)
    {
      if (v83 == 2)
      {
        v86 = v7 != 0;
        v85 = v111;
LABEL_144:
        if (v18 > 3.0 || v86)
        {
          *v82 = 0;
          goto LABEL_163;
        }

        if (!(v35 & 1 | (v18 <= v34)))
        {
          goto LABEL_163;
        }

        *(v6 + 2628) = 3;
        goto LABEL_162;
      }

LABEL_148:
      result = gn_report_assertion_failure("switch/case error NK_Static_Filter.c");
LABEL_159:
      v85 = v111;
      goto LABEL_163;
    }

    if (v7 || v18 > 3.0)
    {
LABEL_158:
      *v82 = 0;
      goto LABEL_159;
    }

    if (v18 > v53)
    {
      *v82 = 2;
      goto LABEL_159;
    }

    v85 = v111;
    if (v35 & 1 | (v18 <= v34))
    {
LABEL_162:
      *(v6 + 2648) = *a2;
      goto LABEL_163;
    }

    v88 = 2;
LABEL_153:
    *v82 = v88;
    goto LABEL_163;
  }

  if (v83)
  {
    if (v83 == 1)
    {
      v84 = *(v6 + 2632);
      *(v6 + 2632) = v84 + 1;
      if (!v7 && v18 <= 3.0)
      {
        v85 = v111;
        if (v84 < 1)
        {
          goto LABEL_163;
        }

        v86 = 0;
        *v82 = 2;
        goto LABEL_144;
      }

      goto LABEL_158;
    }

    goto LABEL_148;
  }

  v85 = v111;
  v87 = !v111;
  if (v18 > 2.0)
  {
    v87 = 1;
  }

  if ((v87 & 1) == 0)
  {
    v88 = 1;
    goto LABEL_153;
  }

LABEL_163:
  if (((*(v6 + 2673) | v35) & 1) != 0 || *(v6 + 2674) == 1 && v18 < 3.0 && v22 < 4.0 && *(v6 + 2540) >= 3u)
  {
    LOBYTE(v114.f64[0]) = 0;
    LODWORD(v116) = 0;
    LOBYTE(v112) = 0;
    if (Core_Get_Static_Status(&v112) && !(v35 & 1 | (v112 < 0xAu)))
    {
      EvLog_nd("NKSF:  Static override", 2, v89, v112, *(v6 + 2628));
      *(v6 + 2628) = 3;
      *(v6 + 2648) = *a2;
    }

    result = Core_Get_Ped_Status(&v116, &v114);
    if (result)
    {
      v91 = v112;
      if (LODWORD(v116) == 2 && v112 > 2u)
      {
LABEL_170:
        if (*(v6 + 2674) == 1)
        {
          *(v6 + 2673) = 1;
          *(a1 + 27232) = v18;
          *(a1 + 20) = 2;
          result = EvLog_nd("NK_Static_Filter:  PED_STOPPED:  Car -> Ped override", 2, v90, v91, LOBYTE(v114.f64[0]));
        }

        *(v6 + 2628) = 3;
        *(v6 + 2648) = *a2;
        goto LABEL_187;
      }

      switch(LODWORD(v116))
      {
        case 3:
          if (*(v6 + 2673) == 1)
          {
            result = EvLog_nd("NK_Static_Filter:  PED_NOT_PED:  Ped -> Car indication", 2, v90, v112, LOBYTE(v114.f64[0]));
          }

          break;
        case 2:
          if (*(v6 + 2674) == 1)
          {
            *(v6 + 2673) = 1;
            *(a1 + 27232) = v18;
            *(a1 + 20) = 2;
            result = EvLog_nd("NK_Static_Filter:  PED_WALKING:  Car -> Ped override", 2, v90, v91, LOBYTE(v114.f64[0]));
          }

          *v82 = 2;
          break;
        case 1:
          goto LABEL_170;
        default:
          break;
      }
    }
  }

LABEL_187:
  if (v85 && (*v82 == 3 || *v82 == 2 && *(v6 + 2674) == 1))
  {
    LOWORD(v114.f64[0]) = 0;
    v118[0] = 0;
    v117 = 0;
    memset(&v118[4], 0, 32);
    v119 = 0u;
    v120 = 0;
    *&v118[8] = *(a2 + 1720);
    *&v118[16] = 0x4010000000000000;
    HIDWORD(v116) = 2;
    LOBYTE(v116) = 1;
    *(&v119 + 4) = 0x412E848000000000;
    result = Vert_Meas_Update(6u, (a2 + 1736), 0xCu, &v116, __dst, &v114, *&v118[8]);
    v92 = *(v6 + 2760);
    if (v92 && *(v6 + 2674) == 1 && *(v6 + 2540))
    {
      v92 += *(a2 + 16);
      *(v6 + 2760) = v92;
    }

    if ((*(v5 + 36) & 1) == 0)
    {
      v116 = 0.0;
      v117 = 0;
      *v118 = 0;
      __asm { FMOV            V0.2D, #4.0 }

      v112 = _Q0;
      v113 = 0x4010000000000000;
      if (v92 && *a2 - v92 <= 30000)
      {
        v96 = (a1 + 27328);
        v97 = 1;
        v98 = a3;
      }

      else
      {
        v98 = a3;
        if (*(v6 + 2700) < 2 || *a2 - *(v6 + 2720) > 30000)
        {
          v97 = 0;
          v96 = (a2 + 1856);
        }

        else
        {
          v96 = (a1 + 27280);
          v97 = 1;
        }
      }

      v99 = 0;
      v100 = *v96;
      *(v6 + 2672) = v97;
      v101 = *(a2 + 1584);
      v114 = vsubq_f64(v101, *&__dst[696]);
      v102 = *(a2 + 1600);
      v115 = v102 - *&__dst[712];
      do
      {
        *&v118[8 * v99] = *(&v114 + v99 + 2) - *(v98 + 120 + 8 * v99);
        v103 = v99 + 3;
        --v99;
      }

      while (v103 > 1);
      v104 = 0;
      v114 = v101;
      v115 = v102;
      do
      {
        *&v118[8 * v104] = *(&v114 + v104 + 2) - *(v98 + 120 + 8 * v104);
        v105 = v104 + 3;
        --v104;
      }

      while (v105 > 1);
      result = NK_Body_Frame_Meas(9u, &v116, &v112, (a2 + 1736), v100 * 0.0174532925, 0xCu, __dst);
    }

    v106 = *&__dst[672];
    *(a1 + 1632) = *&__dst[656];
    *(a1 + 1648) = v106;
    v107 = *&__dst[704];
    *(a1 + 1664) = *&__dst[688];
    *(a1 + 1680) = v107;
    v108 = *&__dst[640];
    *(a1 + 1600) = *&__dst[624];
    *(a1 + 1616) = v108;
  }

  else
  {
    *(v6 + 2672) = 0;
  }

  v109 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL Is_Eph_Kep_Real(const double *a1)
{
  v15[1] = *MEMORY[0x29EDCA608];
  v15[0] = 0.0;
  if (!R8_EQ(a1 + 24, v15))
  {
    goto LABEL_13;
  }

  v14 = 0.0;
  if (!R8_EQ(a1 + 29, &v14))
  {
    goto LABEL_13;
  }

  v13 = 0.0;
  if (!R8_EQ(a1 + 21, &v13))
  {
    goto LABEL_13;
  }

  v12 = 0.0;
  if (!R8_EQ(a1 + 14, &v12))
  {
    goto LABEL_13;
  }

  v11 = 0.0;
  if (R8_EQ(a1 + 13, &v11) && (v10 = 0.0, R8_EQ(a1 + 17, &v10)) && (v9 = 0.0, R8_EQ(a1 + 18, &v9)) && (v8 = 0.0, R8_EQ(a1 + 19, &v8)) && (v7 = 0.0, R8_EQ(a1 + 20, &v7)) && (v6 = 0.0, R8_EQ(a1 + 15, &v6)) && (v5 = 0.0, R8_EQ(a1 + 16, &v5)))
  {
    v4 = 0.0;
    result = !R8_EQ(a1 + 7, &v4);
  }

  else
  {
LABEL_13:
    result = 1;
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

double *Comp_GSpeed_Partial(double a1, double a2, double *result, double *a4)
{
  v12 = *MEMORY[0x29EDCA608];
  if (fabs(a1) > 0.0001 || fabs(a2) > 0.0001)
  {
    v10 = 1.0 / sqrt(a1 * a1 + a2 * a2);
    *a4 = v10 * (*result * a1 + result[3] * a2);
    a4[1] = v10 * (result[1] * a1 + result[4] * a2);
    v9 = v10 * (result[2] * a1);
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

void AzEl_RadDeg(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v4 = asin(*(a2 + 8));
  *(a2 + 24) = v4;
  *(a2 + 32) = v4 * 57.2957795;
  *a2 = (v4 * 57.2957795 + 0.5) - (v4 * 57.2957795 < -0.5);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (fabs(v5) > 0.00001 || fabs(v6) > 0.00001)
  {
    v8 = atan2(v5, v6);
    v9 = v8 * 57.2957795;
    if (v8 * 57.2957795 < 0.0)
    {
      v9 = v8 * 57.2957795 + 360.0;
    }

    *(a1 + 24) = v8;
    *(a1 + 32) = v9;
    v7 = (v9 + 0.5);
    if (v7 == 360)
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  *a1 = v7;
  v10 = *MEMORY[0x29EDCA608];
}

void Hal02_RouteZxPkt(unsigned __int8 *a1, size_t a2)
{
  v13 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (!g_LbsOsaTrace_Config)
    {
      goto LABEL_46;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx data\n");
LABEL_22:
    gnssOsa_PrintLog(__str, 1, 1, 0);
    goto LABEL_46;
  }

  if (!a2)
  {
    if (!g_LbsOsaTrace_Config)
    {
      goto LABEL_46;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx len\n");
    goto LABEL_22;
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v4 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    if (g_IsSPIEnabled)
    {
      v5 = "SPI";
    }

    else
    {
      v5 = "PCIe";
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s:Rcvd,size %u,zx%c%c%c 0x%x 0x%x\n", v4, "HAL", 73, "Hal02_RouteZxPkt", v5, a2, a1[2], a1[3], a1[4], a1[5], a1[6]);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (((*(*gp_Logger + 72))(gp_Logger) & 1) != 0 && a1[2] != 77)
  {
    GnssDbgMgr_WriteLog(a2, a1);
  }

  v6 = a1[2];
  if (v6 > 0x4E)
  {
    if (a1[2] > 0x55u)
    {
      if (v6 != 86 && v6 != 88)
      {
        goto LABEL_39;
      }
    }

    else
    {
      if (v6 == 79)
      {
        v9 = a1[3];
        if (v9 != 66 && v9 != 84)
        {
          if (v9 == 80)
          {
            Hal32_HandlePowerReportData(a1, a2);
          }

          goto LABEL_46;
        }

        goto LABEL_39;
      }

      if (v6 != 84)
      {
        goto LABEL_39;
      }
    }

LABEL_44:
    v10 = g_CbList;
    if (!g_CbList)
    {
      goto LABEL_46;
    }

LABEL_45:
    v10(a2, a1);
    goto LABEL_46;
  }

  if (a1[2] > 0x48u)
  {
    if (v6 == 73)
    {
      Hal29_HandleProxyResponse(a1, a2);
      goto LABEL_46;
    }

    goto LABEL_39;
  }

  if (v6 == 66)
  {
    v8 = a1[3];
    if (v8 != 83)
    {
      if (v8 != 89)
      {
        Hal02_HandleResp(a1, a2);
        goto LABEL_46;
      }

      goto LABEL_44;
    }

LABEL_39:
    v10 = off_2A13EC488;
    if (!off_2A13EC488)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if (v6 != 68)
  {
    goto LABEL_39;
  }

  v7 = a1[3];
  if (v7 == 69)
  {
    Hal_HandleGenericMEEvent(a1, a2);
    goto LABEL_46;
  }

  if (v7 == 67)
  {
    Hal_GetMEAnalyticsDataResponse(a1, a2);
    goto LABEL_46;
  }

  if (Hal02_CheckDebugConfigMsg(v7))
  {
    goto LABEL_44;
  }

  if (((*(*gp_Logger + 72))(gp_Logger) & 1) == 0)
  {
    GnssDbgMgr_WriteLog(a2, a1);
  }

LABEL_46:
  v11 = *MEMORY[0x29EDCA608];
}

void Hal02_HandleResp(unsigned __int8 *a1, unsigned int a2)
{
  v12 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (!g_LbsOsaTrace_Config)
    {
      goto LABEL_16;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx data\n");
LABEL_14:
    v5 = 1;
LABEL_15:
    gnssOsa_PrintLog(__str, v5, 1, 0);
    goto LABEL_16;
  }

  if (!a2)
  {
    if (!g_LbsOsaTrace_Config)
    {
      goto LABEL_16;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx len\n");
    goto LABEL_14;
  }

  if (Hal11_HandleEvent(a1[3], a1, a2))
  {
    goto LABEL_16;
  }

  if (g_HalState <= 3)
  {
    if (g_HalState >= 2)
    {
      if ((g_HalState - 2) < 2)
      {
        v4 = *MEMORY[0x29EDCA608];

        Hal15_HandleRevResp(a1);
        return;
      }

      goto LABEL_26;
    }

LABEL_16:
    v6 = *MEMORY[0x29EDCA608];
    return;
  }

  if ((g_HalState - 6) < 2)
  {
    v8 = *MEMORY[0x29EDCA608];

    Hal_CoexConfigRespone(a1);
  }

  else if (g_HalState == 5)
  {
    v10 = *MEMORY[0x29EDCA608];

    Hal32_HandlePowerReportRsp(a1);
  }

  else
  {
    if (g_HalState != 4)
    {
LABEL_26:
      if (g_LbsOsaTrace_Config < 2)
      {
        goto LABEL_16;
      }

      bzero(__str, 0x3C6uLL);
      v9 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx State,%u,MC,%c,MID,%c,MIDE,%c\n", (*&g_MacClockTicksToMsRelation * v9), "HAL", 87, "Hal02_HandleResp", 262, g_HalState, a1[2], a1[3], a1[4]);
      v5 = 2;
      goto LABEL_15;
    }

    v7 = *MEMORY[0x29EDCA608];

    Hal29_HandleProxyResponse(a1, a2);
  }
}