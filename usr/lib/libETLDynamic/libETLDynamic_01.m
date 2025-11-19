uint64_t APPLIB_DIAG_FTM_CDMA2000_CMD_RELEASE(unsigned __int8 *a1, int a2)
{
  v31 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (!a1 || a2 < 0x33)
  {
    goto LABEL_21;
  }

  bzero(a1, a2);
  *a1 = 461643;
  a1[4] = 108;
  v5 = a1[5];
  v6 = crc_16_l_table[v5 ^ 0x3C];
  v7 = a1[6];
  v8 = crc_16_l_table[(v7 ^ v6) ^ 0x53];
  v9 = crc_16_l_table[(a1[7] ^ v8 ^ HIBYTE(v6))];
  v10 = crc_16_l_table[(a1[8] ^ v9 ^ HIBYTE(v8))];
  v11 = crc_16_l_table[(a1[9] ^ v10 ^ HIBYTE(v9))];
  *(a1 + 5) = v11 ^ ~HIBYTE(crc_16_l_table[(a1[8] ^ v9 ^ HIBYTE(v8))]);
  if (a2 < 24)
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_21;
  }

  bzero(v30, 0x7FAuLL);
  __src = 461643;
  v28 = 108;
  if ((v5 - 125) <= 1)
  {
    v30[0] = v5 & 0x5F;
    v29 = 125;
    v12 = 7;
    v13 = 8;
    if ((v7 - 125) > 1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v29 = v5;
  v12 = 6;
  v13 = 7;
  if ((v7 - 125) <= 1)
  {
LABEL_9:
    *(&__src + v13) = v7 & 0x5F;
    LOBYTE(v7) = 125;
    LODWORD(v13) = v12 + 2;
  }

LABEL_10:
  *(&__src + v12) = v7;
  v14 = a1[7];
  v15 = v13 + 1;
  if ((v14 - 125) <= 1)
  {
    *(&__src + v15) = v14 & 0x5F;
    LOBYTE(v14) = 125;
    LODWORD(v15) = v13 + 2;
  }

  *(&__src + v13) = v14;
  v16 = a1[8];
  v17 = v15 + 1;
  if ((v16 - 125) <= 1)
  {
    *(&__src + v17) = v16 & 0x5F;
    LOBYTE(v16) = 125;
    LODWORD(v17) = v15 + 2;
  }

  *(&__src + v15) = v16;
  v18 = ~(v11 ^ BYTE1(v10));
  v19 = a1[9];
  v20 = v17;
  v21 = v17 + 1;
  if ((v19 - 125) <= 1)
  {
    *(&__src + v21) = v19 & 0x5F;
    LOBYTE(v19) = 125;
    LODWORD(v21) = v20 + 2;
  }

  v22 = ((v11 ^ ~(v10 >> 8)) >> 8);
  *(&__src + v20) = v19;
  v23 = v21;
  v24 = v21 + 1;
  if ((v18 - 125) <= 1)
  {
    *(&__src + v24) = v18 & 0x5F;
    LOBYTE(v18) = 125;
    LODWORD(v24) = v23 + 2;
  }

  *(&__src + v23) = v18;
  v25 = v24 + 1;
  if ((v22 - 125) <= 1)
  {
    *(&__src + v25) = v22 & 0x5F;
    LOBYTE(v22) = 125;
    LODWORD(v25) = v24 + 2;
  }

  *(&__src + v24) = v22;
  memcpy(a1, &__src, v25);
  result = (v25 + 1);
  a1[v25] = 126;
LABEL_21:
  v26 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_EVDO_PILOT_ACQ(char *a1, int a2, int a3, __int16 a4, int a5, int a6)
{
  v37 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x23)
  {
    bzero(a1, a2);
    *a1 = 527179;
    *(a1 + 2) = 113;
    *(a1 + 10) = a3;
    *(a1 + 7) = a4;
    v13 = crc_16_l_table[a1[6] ^ 0xACLL];
    v14 = crc_16_l_table[a1[7] ^ 0x6C ^ v13];
    v15 = crc_16_l_table[(a1[8] ^ v14 ^ HIBYTE(v13))];
    v16 = crc_16_l_table[(a1[9] ^ v15 ^ HIBYTE(v14))];
    v17 = crc_16_l_table[(a3 ^ v16 ^ HIBYTE(v15))];
    v18 = crc_16_l_table[(BYTE1(a3) ^ v17 ^ HIBYTE(v16))];
    v19 = crc_16_l_table[(BYTE2(a3) ^ v18 ^ HIBYTE(v17))];
    v20 = crc_16_l_table[(HIBYTE(a3) ^ v19 ^ HIBYTE(v18))];
    *(a1 + 4) = a5;
    *(a1 + 5) = a6;
    v21 = crc_16_l_table[(a4 ^ v20 ^ HIBYTE(v19))];
    v22 = crc_16_l_table[(HIBYTE(a4) ^ v21 ^ HIBYTE(v20))];
    v23 = crc_16_l_table[(a5 ^ v22 ^ HIBYTE(v21))];
    v24 = crc_16_l_table[(BYTE1(a5) ^ v23 ^ HIBYTE(v22))];
    v25 = crc_16_l_table[(BYTE2(a5) ^ v24 ^ HIBYTE(v23))];
    v26 = crc_16_l_table[(a1[19] ^ v25 ^ HIBYTE(v24))];
    v27 = crc_16_l_table[(a6 ^ v26 ^ HIBYTE(v25))];
    v28 = crc_16_l_table[(a1[21] ^ v27 ^ HIBYTE(v26))];
    v29 = crc_16_l_table[(a1[22] ^ v28 ^ HIBYTE(v27))];
    *(a1 + 12) = crc_16_l_table[(a1[23] ^ v29 ^ HIBYTE(v28))] ^ ~(v29 >> 8);
    if (a2 >= 52)
    {
      bzero(__src, 0x800uLL);
      v30 = 0;
      v31 = 0;
      do
      {
        while (1)
        {
          v32 = a1[v30];
          v33 = v31;
          v34 = v31 + 1;
          if ((v32 - 125) > 1)
          {
            break;
          }

          v31 += 2;
          __src[v34] = v32 & 0x5F;
          __src[v33] = 125;
          if (++v30 == 26)
          {
            goto LABEL_9;
          }
        }

        ++v31;
        __src[v33] = v32;
        ++v30;
      }

      while (v30 != 26);
LABEL_9:
      memcpy(a1, __src, v31);
      result = (v31 + 1);
      a1[v31] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v35 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_EVDO_SYS_TIME_ACQ(unsigned __int8 *a1, int a2)
{
  v26 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x1F)
  {
    bzero(a1, a2);
    *a1 = 527179;
    *(a1 + 2) = 114;
    a1[6] = 10;
    v5 = crc_16_l_table[a1[7] ^ 0x34];
    v6 = crc_16_l_table[a1[8] ^ 0x2F ^ v5];
    v7 = crc_16_l_table[(a1[9] ^ v6 ^ HIBYTE(v5))];
    *(a1 + 5) = v7 ^ ~HIBYTE(crc_16_l_table[a1[8] ^ 0x2F ^ v5]);
    if (a2 >= 24)
    {
      bzero(v25, 0x7F8uLL);
      __src = 527179;
      v22 = 114;
      v23 = 10;
      v8 = a1[7];
      if ((v8 - 125) > 1)
      {
        v9 = 8;
      }

      else
      {
        v25[0] = v8 & 0x5F;
        v9 = 9;
        LOBYTE(v8) = 125;
      }

      v24 = v8;
      v10 = a1[8];
      v11 = v9 + 1;
      if ((v10 - 125) <= 1)
      {
        *(&__src + v11) = v10 & 0x5F;
        LOBYTE(v10) = 125;
        LODWORD(v11) = v9 | 2;
      }

      *(&__src + v9) = v10;
      v12 = ~(v7 ^ BYTE1(v6));
      v13 = a1[9];
      v14 = v11;
      v15 = v11 + 1;
      if ((v13 - 125) <= 1)
      {
        *(&__src + v15) = v13 & 0x5F;
        LOBYTE(v13) = 125;
        LODWORD(v15) = v14 + 2;
      }

      v16 = ((v7 ^ ~(v6 >> 8)) >> 8);
      *(&__src + v14) = v13;
      v17 = v15;
      v18 = v15 + 1;
      if ((v12 - 125) <= 1)
      {
        *(&__src + v18) = v12 & 0x5F;
        LOBYTE(v12) = 125;
        LODWORD(v18) = v17 + 2;
      }

      *(&__src + v17) = v12;
      v19 = v18 + 1;
      if ((v16 - 125) <= 1)
      {
        *(&__src + v19) = v16 & 0x5F;
        LOBYTE(v16) = 125;
        LODWORD(v19) = v18 + 2;
      }

      *(&__src + v18) = v16;
      memcpy(a1, &__src, v19);
      result = (v19 + 1);
      a1[v19] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v20 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_EVDO_DEMOD_CC_MAC_FTC(unsigned __int8 *a1, int a2, unsigned __int8 a3, unsigned __int8 a4, unsigned __int8 a5, unsigned __int8 a6, unsigned __int8 a7, unsigned __int8 a8)
{
  v76 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x1B)
  {
    bzero(a1, a2);
    *a1 = 527179;
    *(a1 + 2) = 115;
    a1[10] = a3;
    a1[11] = a4;
    a1[12] = a5;
    v17 = a1[6];
    v18 = crc_16_l_table[v17 ^ 0x1C];
    v19 = crc_16_l_table[a1[7] ^ 0x5F ^ v18];
    v20 = crc_16_l_table[(a1[8] ^ v19 ^ HIBYTE(v18))];
    v21 = crc_16_l_table[(a1[9] ^ v20 ^ HIBYTE(v19))];
    a1[13] = a6;
    v22 = crc_16_l_table[(a3 ^ v21 ^ HIBYTE(v20))];
    a1[14] = a7;
    v23 = crc_16_l_table[(a4 ^ v22 ^ HIBYTE(v21))];
    a1[15] = a8;
    v24 = crc_16_l_table[(a5 ^ v23 ^ HIBYTE(v22))];
    v25 = crc_16_l_table[(a6 ^ v24 ^ HIBYTE(v23))];
    v26 = crc_16_l_table[(a7 ^ v25 ^ HIBYTE(v24))];
    v27 = crc_16_l_table[(v26 ^ HIBYTE(v25) ^ a8)];
    v28 = v27 ^ ~(v26 >> 8);
    *(a1 + 8) = v27 ^ ~(v26 >> 8);
    if (a2 >= 36)
    {
      bzero(v75, 0x7FFuLL);
      v29 = *a1;
      if ((v29 - 125) > 1)
      {
        v30 = 1;
      }

      else
      {
        v75[0] = v29 & 0x5F;
        v30 = 2;
        LOBYTE(v29) = 125;
      }

      __src = v29;
      v31 = a1[1];
      v32 = v30 + 1;
      if ((v31 - 125) <= 1)
      {
        v75[v32 - 1] = v31 & 0x5F;
        LOBYTE(v31) = 125;
        LODWORD(v32) = v30 + 2;
      }

      v75[v30 - 1] = v31;
      v33 = a1[2];
      v34 = v32;
      v35 = v32 + 1;
      if ((v33 - 125) <= 1)
      {
        v75[v35 - 1] = v33 & 0x5F;
        LODWORD(v35) = v34 + 2;
        LOBYTE(v33) = 125;
      }

      v75[v34 - 1] = v33;
      v36 = a1[3];
      v37 = v35;
      v38 = v35 + 1;
      if ((v36 - 125) <= 1)
      {
        v75[v38 - 1] = v36 & 0x5F;
        LOBYTE(v36) = 125;
        LODWORD(v38) = v37 + 2;
      }

      v75[v37 - 1] = v36;
      v39 = a1[4];
      v40 = v38 + 1;
      if ((v39 - 125) <= 1)
      {
        v75[v40 - 1] = v39 & 0x5F;
        LOBYTE(v39) = 125;
        LODWORD(v40) = v38 + 2;
      }

      v75[v38 - 1] = v39;
      v41 = a1[5];
      v42 = v40 + 1;
      if ((v41 - 125) <= 1)
      {
        v75[v42 - 1] = v41 & 0x5F;
        LOBYTE(v41) = 125;
        LODWORD(v42) = v40 + 2;
      }

      v75[v40 - 1] = v41;
      v43 = v42 + 1;
      if ((v17 - 125) <= 1)
      {
        v75[v43 - 1] = v17 & 0x5F;
        LODWORD(v43) = v42 + 2;
        LOBYTE(v17) = 125;
      }

      v75[v42 - 1] = v17;
      v44 = a1[7];
      v45 = v43;
      v46 = v43 + 1;
      if ((v44 - 125) <= 1)
      {
        v75[v46 - 1] = v44 & 0x5F;
        LOBYTE(v44) = 125;
        LODWORD(v46) = v45 + 2;
      }

      v75[v45 - 1] = v44;
      v47 = a1[8];
      v48 = v46;
      v49 = v46 + 1;
      if ((v47 - 125) <= 1)
      {
        v75[v49 - 1] = v47 & 0x5F;
        LODWORD(v49) = v48 + 2;
        LOBYTE(v47) = 125;
      }

      v75[v48 - 1] = v47;
      v50 = a1[9];
      v51 = v49;
      v52 = v49 + 1;
      if ((v50 - 125) <= 1)
      {
        v75[v52 - 1] = v50 & 0x5F;
        LOBYTE(v50) = 125;
        LODWORD(v52) = v51 + 2;
      }

      v75[v51 - 1] = v50;
      v53 = a1[10];
      v54 = v52;
      v55 = v52 + 1;
      if ((v53 - 125) <= 1)
      {
        v75[v55 - 1] = v53 & 0x5F;
        LODWORD(v55) = v54 + 2;
        LOBYTE(v53) = 125;
      }

      v75[v54 - 1] = v53;
      v56 = a1[11];
      v57 = v55;
      v58 = v55 + 1;
      if ((v56 - 125) <= 1)
      {
        v75[v58 - 1] = v56 & 0x5F;
        LOBYTE(v56) = 125;
        LODWORD(v58) = v57 + 2;
      }

      v75[v57 - 1] = v56;
      v59 = a1[12];
      v60 = v58;
      v61 = v58 + 1;
      if ((v59 - 125) <= 1)
      {
        v75[v61 - 1] = v59 & 0x5F;
        LODWORD(v61) = v60 + 2;
        LOBYTE(v59) = 125;
      }

      v75[v60 - 1] = v59;
      v62 = a1[13];
      v63 = v61 + 1;
      if ((v62 - 125) <= 1)
      {
        v75[v63 - 1] = v62 & 0x5F;
        LOBYTE(v62) = 125;
        LODWORD(v63) = v61 + 2;
      }

      v75[v61 - 1] = v62;
      v64 = a1[14];
      v65 = v63 + 1;
      if ((v64 - 125) <= 1)
      {
        v75[v65 - 1] = v64 & 0x5F;
        LODWORD(v65) = v63 + 2;
        LOBYTE(v64) = 125;
      }

      v75[v63 - 1] = v64;
      v66 = ~(v27 ^ BYTE1(v26));
      v67 = a1[15];
      v68 = v65;
      v69 = v65 + 1;
      if ((v67 - 125) <= 1)
      {
        v75[v69 - 1] = v67 & 0x5F;
        LOBYTE(v67) = 125;
        LODWORD(v69) = v68 + 2;
      }

      v70 = (v27 ^ ~(v26 >> 8)) >> 8;
      v75[v68 - 1] = v67;
      v71 = v69 + 1;
      if ((v66 - 125) <= 1)
      {
        v75[v71 - 1] = v66 & 0x5F;
        LODWORD(v71) = v69 + 2;
        LOBYTE(v66) = 125;
      }

      v75[v69 - 1] = v66;
      v72 = v71 + 1;
      if (BYTE1(v28) - 125 <= 1)
      {
        v75[v72 - 1] = BYTE1(v28) & 0x5F;
        v70 = 125;
        LODWORD(v72) = v71 + 2;
      }

      v75[v71 - 1] = v70;
      memcpy(a1, &__src, v72);
      result = (v72 + 1);
      a1[v72] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v73 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_EVDO_MOD_ACC(char *a1, int a2, int a3, int a4, int a5, int a6, int a7, char a8, char a9, char a10, char a11, char a12, char a13)
{
  v58 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x2F)
  {
    bzero(a1, a2);
    *a1 = 527179;
    *(a1 + 2) = 116;
    *(a1 + 10) = a3;
    *(a1 + 14) = a4;
    *(a1 + 18) = a5;
    *(a1 + 22) = a6;
    *(a1 + 26) = a7;
    v22 = crc_16_l_table[a1[6] ^ 0x14];
    v23 = crc_16_l_table[a1[7] ^ 0x12 ^ v22];
    v24 = crc_16_l_table[(a1[8] ^ v23 ^ HIBYTE(v22))];
    v25 = crc_16_l_table[(a1[9] ^ v24 ^ HIBYTE(v23))];
    v26 = crc_16_l_table[(a1[10] ^ v25 ^ HIBYTE(v24))];
    v27 = crc_16_l_table[(a1[11] ^ v26 ^ HIBYTE(v25))];
    v28 = crc_16_l_table[(a1[12] ^ v27 ^ HIBYTE(v26))];
    v29 = crc_16_l_table[(a1[13] ^ v28 ^ HIBYTE(v27))];
    v30 = crc_16_l_table[(a1[14] ^ v29 ^ HIBYTE(v28))];
    v31 = crc_16_l_table[(a1[15] ^ v30 ^ HIBYTE(v29))];
    v32 = crc_16_l_table[(a1[16] ^ v31 ^ HIBYTE(v30))];
    v33 = crc_16_l_table[(HIBYTE(a4) ^ v32 ^ HIBYTE(v31))];
    v34 = crc_16_l_table[(a5 ^ v33 ^ HIBYTE(v32))];
    v35 = crc_16_l_table[(BYTE1(a5) ^ v34 ^ HIBYTE(v33))];
    v36 = crc_16_l_table[(BYTE2(a5) ^ v35 ^ HIBYTE(v34))];
    v37 = crc_16_l_table[(HIBYTE(a5) ^ v36 ^ HIBYTE(v35))];
    v38 = crc_16_l_table[(a6 ^ v37 ^ HIBYTE(v36))];
    v39 = crc_16_l_table[(BYTE1(a6) ^ v38 ^ HIBYTE(v37))];
    v40 = crc_16_l_table[(BYTE2(a6) ^ v39 ^ HIBYTE(v38))];
    v41 = crc_16_l_table[(HIBYTE(a6) ^ v40 ^ HIBYTE(v39))];
    v42 = crc_16_l_table[(a7 ^ v41 ^ HIBYTE(v40))];
    a1[30] = a8;
    v43 = crc_16_l_table[(BYTE1(a7) ^ v42 ^ HIBYTE(v41))];
    a1[31] = a9;
    v44 = crc_16_l_table[(BYTE2(a7) ^ v43 ^ HIBYTE(v42))];
    a1[32] = a10;
    v45 = crc_16_l_table[(HIBYTE(a7) ^ v44 ^ HIBYTE(v43))];
    a1[33] = a11;
    v46 = crc_16_l_table[(a8 ^ v45 ^ HIBYTE(v44))];
    a1[34] = a12;
    v47 = crc_16_l_table[(a9 ^ v46 ^ HIBYTE(v45))];
    a1[35] = a13;
    v48 = crc_16_l_table[(a10 ^ v47 ^ HIBYTE(v46))];
    v49 = crc_16_l_table[(a11 ^ v48 ^ HIBYTE(v47))];
    v50 = crc_16_l_table[(a12 ^ v49 ^ HIBYTE(v48))];
    *(a1 + 18) = crc_16_l_table[(v50 ^ HIBYTE(v49) ^ a13)] ^ ~(v50 >> 8);
    if (a2 >= 76)
    {
      bzero(__src, 0x800uLL);
      v51 = 0;
      v52 = 0;
      do
      {
        while (1)
        {
          v53 = a1[v51];
          v54 = v52;
          v55 = v52 + 1;
          if ((v53 - 125) > 1)
          {
            break;
          }

          v52 += 2;
          __src[v55] = v53 & 0x5F;
          __src[v54] = 125;
          if (++v51 == 38)
          {
            goto LABEL_9;
          }
        }

        ++v52;
        __src[v54] = v53;
        ++v51;
      }

      while (v51 != 38);
LABEL_9:
      memcpy(a1, __src, v52);
      result = (v52 + 1);
      a1[v52] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v56 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_EVDO_REV_A_CONF_MAC_FOR_FWD_CC_MAC_FTC(unsigned __int8 *a1, int a2, int a3, int a4)
{
  v38 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x1B)
  {
    bzero(a1, a2);
    *a1 = 527179;
    *(a1 + 2) = 124;
    a1[10] = a3;
    a1[11] = a4;
    v9 = a1[6];
    v10 = crc_16_l_table[v9 ^ 0xD4];
    v11 = crc_16_l_table[a1[7] ^ 0xDC ^ v10];
    v12 = crc_16_l_table[(a1[8] ^ v11 ^ HIBYTE(v10))];
    v13 = crc_16_l_table[(a1[9] ^ v12 ^ HIBYTE(v11))];
    v14 = crc_16_l_table[(a3 ^ v13 ^ HIBYTE(v12))];
    v15 = crc_16_l_table[(v14 ^ HIBYTE(v13)) ^ a4];
    v16 = v15 ^ ~(v14 >> 8);
    *(a1 + 6) = v15 ^ ~HIBYTE(crc_16_l_table[(a3 ^ v13 ^ HIBYTE(v12))]);
    if (a2 >= 28)
    {
      bzero(v37, 0x7F9uLL);
      __src = 527179;
      v35 = 124;
      if ((v9 - 125) > 1)
      {
        v17 = 7;
      }

      else
      {
        v37[0] = v9 & 0x5F;
        v17 = 8;
        LOBYTE(v9) = 125;
      }

      v36 = v9;
      v18 = a1[7];
      v19 = v17 + 1;
      if ((v18 - 125) <= 1)
      {
        *(&__src + v19) = v18 & 0x5F;
        LOBYTE(v18) = 125;
        LODWORD(v19) = v17 + 2;
      }

      *(&__src + v17) = v18;
      v20 = a1[8];
      v21 = v19;
      v22 = v19 + 1;
      if ((v20 - 125) <= 1)
      {
        *(&__src + v22) = v20 & 0x5F;
        LODWORD(v22) = v21 + 2;
        LOBYTE(v20) = 125;
      }

      *(&__src + v21) = v20;
      v23 = a1[9];
      v24 = v22 + 1;
      if ((v23 - 125) <= 1)
      {
        *(&__src + v24) = v23 & 0x5F;
        LOBYTE(v23) = 125;
        LODWORD(v24) = v22 + 2;
      }

      *(&__src + v22) = v23;
      v25 = v24 + 1;
      if ((a3 - 125) <= 1)
      {
        *(&__src + v25) = a3 & 0x5F;
        LODWORD(v25) = v24 + 2;
        LOBYTE(a3) = 125;
      }

      v26 = ~(v15 ^ BYTE1(v14));
      *(&__src + v24) = a3;
      v27 = v25;
      v28 = v25 + 1;
      if ((a4 - 125) <= 1)
      {
        *(&__src + v28) = a4 & 0x5F;
        LOBYTE(a4) = 125;
        LODWORD(v28) = v27 + 2;
      }

      v29 = (v15 ^ ~(v14 >> 8)) >> 8;
      *(&__src + v27) = a4;
      v30 = v28;
      v31 = v28 + 1;
      if ((v26 - 125) <= 1)
      {
        *(&__src + v31) = v26 & 0x5F;
        LODWORD(v31) = v30 + 2;
        LOBYTE(v26) = 125;
      }

      *(&__src + v30) = v26;
      v32 = v31 + 1;
      if (BYTE1(v16) - 125 <= 1)
      {
        *(&__src + v32) = BYTE1(v16) & 0x5F;
        v29 = 125;
        LODWORD(v32) = v31 + 2;
      }

      *(&__src + v31) = v29;
      memcpy(a1, &__src, v32);
      result = (v32 + 1);
      a1[v32] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v33 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_EVDO_REV_A_MOD_ACC(char *a1, int a2, int a3, int a4, int a5, int a6, int a7, char a8, char a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, char a18)
{
  v74 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x35)
  {
    bzero(a1, a2);
    *a1 = 527179;
    *(a1 + 2) = 125;
    *(a1 + 10) = a3;
    *(a1 + 14) = a4;
    *(a1 + 18) = a5;
    *(a1 + 22) = a6;
    *(a1 + 26) = a7;
    v27 = crc_16_l_table[~*a1];
    v28 = crc_16_l_table[(a1[1] ^ ~v27)];
    v29 = crc_16_l_table[(a1[2] ^ v28 ^ HIBYTE(v27))];
    v30 = crc_16_l_table[(a1[3] ^ v29 ^ HIBYTE(v28))];
    v31 = crc_16_l_table[(a1[4] ^ v30 ^ HIBYTE(v29))];
    v32 = crc_16_l_table[(a1[5] ^ v31 ^ HIBYTE(v30))];
    v33 = crc_16_l_table[(a1[6] ^ v32 ^ HIBYTE(v31))];
    v34 = crc_16_l_table[(a1[7] ^ v33 ^ HIBYTE(v32))];
    v35 = crc_16_l_table[(a1[8] ^ v34 ^ HIBYTE(v33))];
    v36 = crc_16_l_table[(a1[9] ^ v35 ^ HIBYTE(v34))];
    v37 = crc_16_l_table[(a1[10] ^ v36 ^ HIBYTE(v35))];
    v38 = crc_16_l_table[(a1[11] ^ v37 ^ HIBYTE(v36))];
    v39 = crc_16_l_table[(a1[12] ^ v38 ^ HIBYTE(v37))];
    v40 = crc_16_l_table[(a1[13] ^ v39 ^ HIBYTE(v38))];
    v41 = crc_16_l_table[(a1[14] ^ v40 ^ HIBYTE(v39))];
    v42 = crc_16_l_table[(a1[15] ^ v41 ^ HIBYTE(v40))];
    v43 = crc_16_l_table[(a1[16] ^ v42 ^ HIBYTE(v41))];
    v44 = crc_16_l_table[(a1[17] ^ v43 ^ HIBYTE(v42))];
    v45 = crc_16_l_table[(a1[18] ^ v44 ^ HIBYTE(v43))];
    v46 = crc_16_l_table[(a1[19] ^ v45 ^ HIBYTE(v44))];
    v47 = crc_16_l_table[(a1[20] ^ v46 ^ HIBYTE(v45))];
    v48 = crc_16_l_table[(a1[21] ^ v47 ^ HIBYTE(v46))];
    v49 = crc_16_l_table[(a6 ^ v48 ^ HIBYTE(v47))];
    v50 = crc_16_l_table[(BYTE1(a6) ^ v49 ^ HIBYTE(v48))];
    v51 = crc_16_l_table[(BYTE2(a6) ^ v50 ^ HIBYTE(v49))];
    v52 = crc_16_l_table[(HIBYTE(a6) ^ v51 ^ HIBYTE(v50))];
    v53 = crc_16_l_table[(a7 ^ v52 ^ HIBYTE(v51))];
    a1[30] = a8;
    v54 = crc_16_l_table[(BYTE1(a7) ^ v53 ^ HIBYTE(v52))];
    a1[31] = a9;
    v55 = crc_16_l_table[(BYTE2(a7) ^ v54 ^ HIBYTE(v53))];
    a1[32] = a10;
    v56 = crc_16_l_table[(HIBYTE(a7) ^ v55 ^ HIBYTE(v54))];
    a1[33] = a11;
    v57 = crc_16_l_table[(a8 ^ v56 ^ HIBYTE(v55))];
    a1[34] = a12;
    v58 = crc_16_l_table[(a9 ^ v57 ^ HIBYTE(v56))];
    a1[35] = a13;
    v59 = crc_16_l_table[(a10 ^ v58 ^ HIBYTE(v57))];
    a1[36] = a14;
    v60 = crc_16_l_table[(a11 ^ v59 ^ HIBYTE(v58))];
    a1[37] = a15;
    v61 = crc_16_l_table[(a12 ^ v60 ^ HIBYTE(v59))];
    a1[38] = a16;
    v62 = crc_16_l_table[(a13 ^ v61 ^ HIBYTE(v60))];
    a1[39] = a17;
    v63 = crc_16_l_table[(a14 ^ v62 ^ HIBYTE(v61))];
    a1[40] = a18;
    v64 = crc_16_l_table[(a15 ^ v63 ^ HIBYTE(v62))];
    v65 = crc_16_l_table[(a16 ^ v64 ^ HIBYTE(v63))];
    v66 = crc_16_l_table[(a17 ^ v65 ^ HIBYTE(v64))];
    *(a1 + 41) = crc_16_l_table[(v66 ^ HIBYTE(v65) ^ a18)] ^ ~(v66 >> 8);
    if (a2 >= 86)
    {
      bzero(__src, 0x800uLL);
      v67 = 0;
      v68 = 0;
      do
      {
        while (1)
        {
          v69 = a1[v67];
          v70 = v68;
          v71 = v68 + 1;
          if ((v69 - 125) > 1)
          {
            break;
          }

          v68 += 2;
          __src[v71] = v69 & 0x5F;
          __src[v70] = 125;
          if (++v67 == 43)
          {
            goto LABEL_9;
          }
        }

        ++v68;
        __src[v70] = v69;
        ++v67;
      }

      while (v67 != 43);
LABEL_9:
      memcpy(a1, __src, v68);
      result = (v68 + 1);
      a1[v68] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v72 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_EVDO_REV_A_DEMOD_FWD_WITH_NO_REV(unsigned __int8 *a1, int a2, unsigned __int8 a3, unsigned __int8 a4, unsigned __int8 a5, unsigned __int8 a6, unsigned __int8 a7, unsigned __int8 a8, char a9, char a10, char a11)
{
  v95 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x35)
  {
    bzero(a1, a2);
    *a1 = 527179;
    *(a1 + 2) = 127;
    a1[10] = a3;
    a1[11] = a4;
    a1[12] = a5;
    v20 = crc_16_l_table[a1[6] ^ 0xBCLL];
    v21 = crc_16_l_table[a1[7] ^ 0xF6 ^ v20];
    v22 = crc_16_l_table[(a1[8] ^ v21 ^ HIBYTE(v20))];
    v23 = crc_16_l_table[(a1[9] ^ v22 ^ HIBYTE(v21))];
    a1[13] = a6;
    v24 = crc_16_l_table[(a3 ^ v23 ^ HIBYTE(v22))];
    a1[14] = a7;
    v25 = crc_16_l_table[(a4 ^ v24 ^ HIBYTE(v23))];
    a1[15] = a8;
    v26 = crc_16_l_table[(a5 ^ v25 ^ HIBYTE(v24))];
    a1[16] = a9;
    v27 = crc_16_l_table[(a6 ^ v26 ^ HIBYTE(v25))];
    a1[17] = a10;
    v28 = crc_16_l_table[(a7 ^ v27 ^ HIBYTE(v26))];
    a1[18] = a11;
    v29 = crc_16_l_table[(a8 ^ v28 ^ HIBYTE(v27))];
    v30 = crc_16_l_table[(a9 ^ v29 ^ HIBYTE(v28))];
    v31 = (a10 ^ v30 ^ HIBYTE(v29));
    v32 = crc_16_l_table[v31];
    v33 = crc_16_l_table[(v32 ^ HIBYTE(v30) ^ a11)];
    *(a1 + 19) = v33 ^ ~HIBYTE(crc_16_l_table[v31]);
    if (a2 >= 42)
    {
      bzero(v94, 0x7FFuLL);
      v34 = *a1;
      if ((v34 - 125) > 1)
      {
        v35 = 1;
      }

      else
      {
        v94[0] = v34 & 0x5F;
        v35 = 2;
        LOBYTE(v34) = 125;
      }

      __src = v34;
      v36 = a1[1];
      v37 = v35 + 1;
      if ((v36 - 125) <= 1)
      {
        v94[v37 - 1] = v36 & 0x5F;
        LOBYTE(v36) = 125;
        LODWORD(v37) = v35 + 2;
      }

      v94[v35 - 1] = v36;
      v38 = a1[2];
      v39 = v37;
      v40 = v37 + 1;
      if ((v38 - 125) <= 1)
      {
        v94[v40 - 1] = v38 & 0x5F;
        LODWORD(v40) = v39 + 2;
        LOBYTE(v38) = 125;
      }

      v94[v39 - 1] = v38;
      v41 = a1[3];
      v42 = v40;
      v43 = v40 + 1;
      if ((v41 - 125) <= 1)
      {
        v94[v43 - 1] = v41 & 0x5F;
        LOBYTE(v41) = 125;
        LODWORD(v43) = v42 + 2;
      }

      v94[v42 - 1] = v41;
      v44 = a1[4];
      v45 = v43;
      v46 = v43 + 1;
      if ((v44 - 125) <= 1)
      {
        v94[v46 - 1] = v44 & 0x5F;
        LODWORD(v46) = v45 + 2;
        LOBYTE(v44) = 125;
      }

      v94[v45 - 1] = v44;
      v47 = a1[5];
      v48 = v46;
      v49 = v46 + 1;
      if ((v47 - 125) <= 1)
      {
        v94[v49 - 1] = v47 & 0x5F;
        LOBYTE(v47) = 125;
        LODWORD(v49) = v48 + 2;
      }

      v94[v48 - 1] = v47;
      v50 = a1[6];
      v51 = v49;
      v52 = v49 + 1;
      if ((v50 - 125) <= 1)
      {
        v94[v52 - 1] = v50 & 0x5F;
        LODWORD(v52) = v51 + 2;
        LOBYTE(v50) = 125;
      }

      v94[v51 - 1] = v50;
      v53 = a1[7];
      v54 = v52;
      v55 = v52 + 1;
      if ((v53 - 125) <= 1)
      {
        v94[v55 - 1] = v53 & 0x5F;
        LOBYTE(v53) = 125;
        LODWORD(v55) = v54 + 2;
      }

      v94[v54 - 1] = v53;
      v56 = a1[8];
      v57 = v55;
      v58 = v55 + 1;
      if ((v56 - 125) <= 1)
      {
        v94[v58 - 1] = v56 & 0x5F;
        LODWORD(v58) = v57 + 2;
        LOBYTE(v56) = 125;
      }

      v94[v57 - 1] = v56;
      v59 = a1[9];
      v60 = v58;
      v61 = v58 + 1;
      if ((v59 - 125) <= 1)
      {
        v94[v61 - 1] = v59 & 0x5F;
        LOBYTE(v59) = 125;
        LODWORD(v61) = v60 + 2;
      }

      v94[v60 - 1] = v59;
      v62 = a1[10];
      v63 = v61;
      v64 = v61 + 1;
      if ((v62 - 125) <= 1)
      {
        v94[v64 - 1] = v62 & 0x5F;
        LODWORD(v64) = v63 + 2;
        LOBYTE(v62) = 125;
      }

      v94[v63 - 1] = v62;
      v65 = a1[11];
      v66 = v64;
      v67 = v64 + 1;
      if ((v65 - 125) <= 1)
      {
        v94[v67 - 1] = v65 & 0x5F;
        LOBYTE(v65) = 125;
        LODWORD(v67) = v66 + 2;
      }

      v94[v66 - 1] = v65;
      v68 = a1[12];
      v69 = v67;
      v70 = v67 + 1;
      if ((v68 - 125) <= 1)
      {
        v94[v70 - 1] = v68 & 0x5F;
        LODWORD(v70) = v69 + 2;
        LOBYTE(v68) = 125;
      }

      v94[v69 - 1] = v68;
      v71 = a1[13];
      v72 = v70;
      v73 = v70 + 1;
      if ((v71 - 125) <= 1)
      {
        v94[v73 - 1] = v71 & 0x5F;
        LOBYTE(v71) = 125;
        LODWORD(v73) = v72 + 2;
      }

      v94[v72 - 1] = v71;
      v74 = a1[14];
      v75 = v73;
      v76 = v73 + 1;
      if ((v74 - 125) <= 1)
      {
        v94[v76 - 1] = v74 & 0x5F;
        LODWORD(v76) = v75 + 2;
        LOBYTE(v74) = 125;
      }

      v94[v75 - 1] = v74;
      v77 = a1[15];
      v78 = v76;
      v79 = v76 + 1;
      if ((v77 - 125) <= 1)
      {
        v94[v79 - 1] = v77 & 0x5F;
        LOBYTE(v77) = 125;
        LODWORD(v79) = v78 + 2;
      }

      v94[v78 - 1] = v77;
      v80 = a1[16];
      v81 = v79 + 1;
      if ((v80 - 125) <= 1)
      {
        v94[v81 - 1] = v80 & 0x5F;
        LOBYTE(v80) = 125;
        LODWORD(v81) = v79 + 2;
      }

      v94[v79 - 1] = v80;
      v82 = a1[17];
      v83 = v81 + 1;
      if ((v82 - 125) <= 1)
      {
        v94[v83 - 1] = v82 & 0x5F;
        LOBYTE(v82) = 125;
        LODWORD(v83) = v81 + 2;
      }

      v94[v81 - 1] = v82;
      v84 = ~(v33 ^ BYTE1(v32));
      v85 = a1[18];
      v86 = v83;
      v87 = v83 + 1;
      if ((v85 - 125) <= 1)
      {
        v94[v87 - 1] = v85 & 0x5F;
        LOBYTE(v85) = 125;
        LODWORD(v87) = v86 + 2;
      }

      v88 = ((v33 ^ ~(v32 >> 8)) >> 8);
      v94[v86 - 1] = v85;
      v89 = v87;
      v90 = v87 + 1;
      if ((v84 - 125) <= 1)
      {
        v94[v90 - 1] = v84 & 0x5F;
        LOBYTE(v84) = 125;
        LODWORD(v90) = v89 + 2;
      }

      v94[v89 - 1] = v84;
      v91 = v90 + 1;
      if ((v88 - 125) <= 1)
      {
        v94[v91 - 1] = v88 & 0x5F;
        LOBYTE(v88) = 125;
        LODWORD(v91) = v90 + 2;
      }

      v94[v90 - 1] = v88;
      memcpy(a1, &__src, v91);
      result = (v91 + 1);
      a1[v91] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v92 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_EVDO_DEMOD_FWD_WITH_NO_REV(unsigned __int8 *a1, int a2, unsigned __int8 a3, unsigned __int8 a4, unsigned __int8 a5, unsigned __int8 a6, unsigned __int8 a7, unsigned __int8 a8, char a9, char a10)
{
  v88 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x35)
  {
    bzero(a1, a2);
    *a1 = 527179;
    *(a1 + 2) = 122;
    a1[10] = a3;
    a1[11] = a4;
    a1[12] = a5;
    v19 = crc_16_l_table[a1[6] ^ 4];
    v20 = crc_16_l_table[(a1[7] ^ v19) ^ 0x88];
    v21 = crc_16_l_table[(a1[8] ^ v20 ^ HIBYTE(v19))];
    v22 = crc_16_l_table[(a1[9] ^ v21 ^ HIBYTE(v20))];
    a1[13] = a6;
    v23 = crc_16_l_table[(a3 ^ v22 ^ HIBYTE(v21))];
    a1[14] = a7;
    v24 = crc_16_l_table[(a4 ^ v23 ^ HIBYTE(v22))];
    a1[15] = a8;
    v25 = crc_16_l_table[(a5 ^ v24 ^ HIBYTE(v23))];
    a1[16] = a9;
    v26 = crc_16_l_table[(a6 ^ v25 ^ HIBYTE(v24))];
    a1[17] = a10;
    v27 = crc_16_l_table[(a7 ^ v26 ^ HIBYTE(v25))];
    v28 = crc_16_l_table[(a8 ^ v27 ^ HIBYTE(v26))];
    v29 = crc_16_l_table[(a9 ^ v28 ^ HIBYTE(v27))];
    v30 = crc_16_l_table[(v29 ^ HIBYTE(v28) ^ a10)];
    *(a1 + 9) = v30 ^ ~HIBYTE(crc_16_l_table[(a9 ^ v28 ^ HIBYTE(v27))]);
    if (a2 >= 40)
    {
      bzero(v87, 0x7FFuLL);
      v31 = *a1;
      if ((v31 - 125) > 1)
      {
        v32 = 1;
      }

      else
      {
        v87[0] = v31 & 0x5F;
        v32 = 2;
        LOBYTE(v31) = 125;
      }

      v86 = v31;
      v33 = a1[1];
      v34 = v32 + 1;
      if ((v33 - 125) <= 1)
      {
        v87[v34 - 1] = v33 & 0x5F;
        LOBYTE(v33) = 125;
        LODWORD(v34) = v32 + 2;
      }

      v87[v32 - 1] = v33;
      v35 = a1[2];
      v36 = v34;
      v37 = v34 + 1;
      if ((v35 - 125) <= 1)
      {
        v87[v37 - 1] = v35 & 0x5F;
        LODWORD(v37) = v36 + 2;
        LOBYTE(v35) = 125;
      }

      v87[v36 - 1] = v35;
      v38 = a1[3];
      v39 = v37;
      v40 = v37 + 1;
      if ((v38 - 125) <= 1)
      {
        v87[v40 - 1] = v38 & 0x5F;
        LOBYTE(v38) = 125;
        LODWORD(v40) = v39 + 2;
      }

      v87[v39 - 1] = v38;
      v41 = a1[4];
      v42 = v40;
      v43 = v40 + 1;
      if ((v41 - 125) <= 1)
      {
        v87[v43 - 1] = v41 & 0x5F;
        LODWORD(v43) = v42 + 2;
        LOBYTE(v41) = 125;
      }

      v87[v42 - 1] = v41;
      v44 = a1[5];
      v45 = v43;
      v46 = v43 + 1;
      if ((v44 - 125) <= 1)
      {
        v87[v46 - 1] = v44 & 0x5F;
        LOBYTE(v44) = 125;
        LODWORD(v46) = v45 + 2;
      }

      v87[v45 - 1] = v44;
      v47 = a1[6];
      v48 = v46;
      v49 = v46 + 1;
      if ((v47 - 125) <= 1)
      {
        v87[v49 - 1] = v47 & 0x5F;
        LODWORD(v49) = v48 + 2;
        LOBYTE(v47) = 125;
      }

      v87[v48 - 1] = v47;
      v50 = a1[7];
      v51 = v49;
      v52 = v49 + 1;
      if ((v50 - 125) <= 1)
      {
        v87[v52 - 1] = v50 & 0x5F;
        LOBYTE(v50) = 125;
        LODWORD(v52) = v51 + 2;
      }

      v87[v51 - 1] = v50;
      v53 = a1[8];
      v54 = v52;
      v55 = v52 + 1;
      if ((v53 - 125) <= 1)
      {
        v87[v55 - 1] = v53 & 0x5F;
        LODWORD(v55) = v54 + 2;
        LOBYTE(v53) = 125;
      }

      v87[v54 - 1] = v53;
      v56 = a1[9];
      v57 = v55;
      v58 = v55 + 1;
      if ((v56 - 125) <= 1)
      {
        v87[v58 - 1] = v56 & 0x5F;
        LOBYTE(v56) = 125;
        LODWORD(v58) = v57 + 2;
      }

      v87[v57 - 1] = v56;
      v59 = a1[10];
      v60 = v58;
      v61 = v58 + 1;
      if ((v59 - 125) <= 1)
      {
        v87[v61 - 1] = v59 & 0x5F;
        LODWORD(v61) = v60 + 2;
        LOBYTE(v59) = 125;
      }

      v87[v60 - 1] = v59;
      v62 = a1[11];
      v63 = v61;
      v64 = v61 + 1;
      if ((v62 - 125) <= 1)
      {
        v87[v64 - 1] = v62 & 0x5F;
        LOBYTE(v62) = 125;
        LODWORD(v64) = v63 + 2;
      }

      v87[v63 - 1] = v62;
      v65 = a1[12];
      v66 = v64;
      v67 = v64 + 1;
      if ((v65 - 125) <= 1)
      {
        v87[v67 - 1] = v65 & 0x5F;
        LODWORD(v67) = v66 + 2;
        LOBYTE(v65) = 125;
      }

      v87[v66 - 1] = v65;
      v68 = a1[13];
      v69 = v67;
      v70 = v67 + 1;
      if ((v68 - 125) <= 1)
      {
        v87[v70 - 1] = v68 & 0x5F;
        LOBYTE(v68) = 125;
        LODWORD(v70) = v69 + 2;
      }

      v87[v69 - 1] = v68;
      v71 = a1[14];
      v72 = v70;
      v73 = v70 + 1;
      if ((v71 - 125) <= 1)
      {
        v87[v73 - 1] = v71 & 0x5F;
        LODWORD(v73) = v72 + 2;
        LOBYTE(v71) = 125;
      }

      v87[v72 - 1] = v71;
      v74 = a1[15];
      v75 = v73 + 1;
      if ((v74 - 125) <= 1)
      {
        v87[v75 - 1] = v74 & 0x5F;
        LOBYTE(v74) = 125;
        LODWORD(v75) = v73 + 2;
      }

      v87[v73 - 1] = v74;
      v76 = a1[16];
      v77 = v75 + 1;
      if ((v76 - 125) <= 1)
      {
        v87[v77 - 1] = v76 & 0x5F;
        LODWORD(v77) = v75 + 2;
        LOBYTE(v76) = 125;
      }

      v87[v75 - 1] = v76;
      v78 = ~(v30 ^ BYTE1(v29));
      v79 = a1[17];
      v80 = v77;
      v81 = v77 + 1;
      if ((v79 - 125) <= 1)
      {
        v87[v81 - 1] = v79 & 0x5F;
        LOBYTE(v79) = 125;
        LODWORD(v81) = v80 + 2;
      }

      v82 = ((v30 ^ ~(v29 >> 8)) >> 8);
      v87[v80 - 1] = v79;
      v83 = v81 + 1;
      if ((v78 - 125) <= 1)
      {
        v87[v83 - 1] = v78 & 0x5F;
        LODWORD(v83) = v81 + 2;
        LOBYTE(v78) = 125;
      }

      v87[v81 - 1] = v78;
      v84 = v83 + 1;
      if ((v82 - 125) <= 1)
      {
        v87[v84 - 1] = v82 & 0x5F;
        LOBYTE(v82) = 125;
        LODWORD(v84) = v83 + 2;
      }

      v87[v83 - 1] = v82;
      memcpy(a1, &v86, v84);
      result = (v84 + 1);
      a1[v84] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v85 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_EVDO_REV_A_MOD_TRA(char *a1, int a2, char a3, char a4, char a5, char a6, char a7, char a8, char a9, char a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, char a21, char a22, char a23, char a24, char a25, char a26, char a27, char a28, char a29, char a30)
{
  v50 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x3D)
  {
    bzero(a1, a2);
    *a1 = 527179;
    *(a1 + 2) = 126;
    a1[6] = 42;
    a1[10] = a3;
    a1[11] = a4;
    a1[12] = a5;
    a1[13] = a6;
    a1[14] = a7;
    a1[15] = a8;
    a1[16] = a9;
    a1[17] = a10;
    a1[18] = a11;
    a1[19] = a12;
    a1[20] = a13;
    a1[21] = a14;
    *(a1 + 22) = a15;
    *(a1 + 26) = a16;
    *(a1 + 30) = a17;
    *(a1 + 34) = a18;
    *(a1 + 38) = a19;
    a1[42] = a20;
    a1[43] = a21;
    a1[44] = a22;
    a1[45] = a23;
    a1[46] = a24;
    a1[47] = a25;
    a1[48] = a26;
    a1[49] = a27;
    a1[50] = a28;
    a1[51] = a29;
    v38 = 424;
    a1[52] = a30;
    LOWORD(v39) = -1;
    v40 = a1;
    do
    {
      v41 = *v40++;
      v39 = crc_16_l_table[(v41 ^ v39)] ^ ((v39 & 0xFF00) >> 8);
      v38 -= 8;
    }

    while (v38);
    *(a1 + 53) = ~v39;
    if (a2 >= 110)
    {
      bzero(__src, 0x800uLL);
      v42 = 0;
      v43 = 0;
      do
      {
        while (1)
        {
          v44 = a1[v42];
          v45 = v43;
          v46 = v43 + 1;
          if ((v44 - 125) > 1)
          {
            break;
          }

          v43 += 2;
          __src[v46] = v44 & 0x5F;
          __src[v45] = 125;
          if (++v42 == 55)
          {
            goto LABEL_11;
          }
        }

        ++v43;
        __src[v45] = v44;
        ++v42;
      }

      while (v42 != 55);
LABEL_11:
      memcpy(a1, __src, v43);
      result = (v43 + 1);
      a1[v43] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v47 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_EVDO_MOD_REVERSE_TRA(char *a1, int a2, char a3, char a4, char a5, char a6, char a7, char a8, char a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, char a25)
{
  v45 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x3B)
  {
    bzero(a1, a2);
    *a1 = 527179;
    *(a1 + 2) = 117;
    a1[6] = 47;
    a1[10] = a3;
    a1[11] = a4;
    a1[12] = a5;
    a1[13] = a6;
    a1[14] = a7;
    a1[15] = a8;
    a1[16] = a9;
    a1[17] = a10;
    a1[18] = a11;
    a1[19] = a12;
    a1[20] = a13;
    a1[21] = a14;
    a1[22] = a15;
    a1[23] = a16;
    a1[24] = a17;
    a1[25] = a18;
    *(a1 + 26) = a19;
    *(a1 + 30) = a20;
    *(a1 + 34) = a21;
    *(a1 + 38) = a22;
    *(a1 + 42) = a23;
    a1[46] = a24;
    v33 = 384;
    a1[47] = a25;
    LOWORD(v34) = -1;
    v35 = a1;
    do
    {
      v36 = *v35++;
      v34 = crc_16_l_table[(v36 ^ v34)] ^ ((v34 & 0xFF00) >> 8);
      v33 -= 8;
    }

    while (v33);
    *(a1 + 24) = ~v34;
    if (a2 >= 100)
    {
      bzero(__src, 0x800uLL);
      v37 = 0;
      v38 = 0;
      do
      {
        while (1)
        {
          v39 = a1[v37];
          v40 = v38;
          v41 = v38 + 1;
          if ((v39 - 125) > 1)
          {
            break;
          }

          v38 += 2;
          __src[v41] = v39 & 0x5F;
          __src[v40] = 125;
          if (++v37 == 50)
          {
            goto LABEL_11;
          }
        }

        ++v38;
        __src[v40] = v39;
        ++v37;
      }

      while (v37 != 50);
LABEL_11:
      memcpy(a1, __src, v38);
      result = (v38 + 1);
      a1[v38] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v42 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_EVDO_CMD_RELEASE(unsigned __int8 *a1, int a2)
{
  v27 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x33)
  {
    bzero(a1, a2);
    *a1 = 527179;
    a1[4] = 118;
    a1[6] = 10;
    v5 = a1[5];
    v6 = crc_16_l_table[crc_16_l_table[v5 ^ 0x20] ^ 0xAC];
    v7 = crc_16_l_table[(a1[7] ^ v6 ^ HIBYTE(crc_16_l_table[v5 ^ 0x20]))];
    v8 = crc_16_l_table[(a1[8] ^ v7 ^ HIBYTE(v6))];
    v9 = crc_16_l_table[(a1[9] ^ v8 ^ HIBYTE(v7))];
    *(a1 + 5) = v9 ^ ~HIBYTE(crc_16_l_table[(a1[8] ^ v7 ^ HIBYTE(v6))]);
    if (a2 >= 24)
    {
      bzero(v26, 0x7FAuLL);
      __src = 527179;
      v24 = 118;
      if ((v5 - 125) > 1)
      {
        v10 = 6;
      }

      else
      {
        v26[0] = v5 & 0x5F;
        v10 = 7;
        LOBYTE(v5) = 125;
      }

      v25 = v5;
      *(&__src + v10) = 10;
      v11 = a1[7];
      v12 = v10 + 2;
      if ((v11 - 125) <= 1)
      {
        *(&__src + v12) = v11 & 0x5F;
        LOBYTE(v11) = 125;
        LODWORD(v12) = v10 + 3;
      }

      *(&__src + v10 + 1) = v11;
      v13 = a1[8];
      v14 = v12 + 1;
      if ((v13 - 125) <= 1)
      {
        *(&__src + v14) = v13 & 0x5F;
        LODWORD(v14) = v12 + 2;
        LOBYTE(v13) = 125;
      }

      *(&__src + v12) = v13;
      v15 = ~(v9 ^ BYTE1(v8));
      v16 = a1[9];
      v17 = v14;
      v18 = v14 + 1;
      if ((v16 - 125) <= 1)
      {
        *(&__src + v18) = v16 & 0x5F;
        LOBYTE(v16) = 125;
        LODWORD(v18) = v17 + 2;
      }

      v19 = ((v9 ^ ~(v8 >> 8)) >> 8);
      *(&__src + v17) = v16;
      v20 = v18 + 1;
      if ((v15 - 125) <= 1)
      {
        *(&__src + v20) = v15 & 0x5F;
        LODWORD(v20) = v18 + 2;
        LOBYTE(v15) = 125;
      }

      *(&__src + v18) = v15;
      v21 = v20 + 1;
      if ((v19 - 125) <= 1)
      {
        *(&__src + v21) = v19 & 0x5F;
        LOBYTE(v19) = 125;
        LODWORD(v21) = v20 + 2;
      }

      *(&__src + v20) = v19;
      memcpy(a1, &__src, v21);
      result = (v21 + 1);
      a1[v21] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v22 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_SetPA_DCDC_Levels(unsigned __int8 *a1, int a2, __int16 a3, __int16 a4)
{
  v43 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x11)
  {
    bzero(a1, a2);
    *a1 = 2891;
    v9 = gModeId;
    a1[2] = gModeId;
    v10 = HIBYTE(gModeId);
    a1[3] = HIBYTE(gModeId);
    *(a1 + 2) = 183;
    *(a1 + 3) = a3;
    v11 = HIBYTE(a3);
    *(a1 + 4) = a4;
    v12 = HIBYTE(a4);
    v13 = crc_16_l_table[crc_16_l_table[v9 ^ 0xA5] ^ v10 ^ 0xEC];
    v14 = crc_16_l_table[crc_16_l_table[v13 ^ HIBYTE(crc_16_l_table[v9 ^ 0xA5]) ^ 0xB7] ^ HIBYTE(crc_16_l_table[crc_16_l_table[v9 ^ 0xA5] ^ v10 ^ 0xEC])];
    v15 = crc_16_l_table[(v14 ^ HIBYTE(crc_16_l_table[v13 ^ HIBYTE(crc_16_l_table[v9 ^ 0xA5]) ^ 0xB7]) ^ a3)];
    v16 = crc_16_l_table[(HIBYTE(a3) ^ v15 ^ HIBYTE(v14))];
    v17 = crc_16_l_table[(a4 ^ v16 ^ HIBYTE(v15))];
    v18 = crc_16_l_table[HIBYTE(a4) ^ crc_16_l_table[(a4 ^ v16 ^ HIBYTE(v15))] ^ (v16 >> 8)];
    *(a1 + 5) = v18 ^ ~HIBYTE(crc_16_l_table[(a4 ^ v16 ^ HIBYTE(v15))]);
    if (a2 >= 24)
    {
      v19 = v18 ^ ~(v17 >> 8);
      bzero(v42, 0x7FFuLL);
      v20 = *a1;
      if ((v20 - 125) > 1)
      {
        v21 = 1;
      }

      else
      {
        v42[0] = v20 & 0x5F;
        v21 = 2;
        LOBYTE(v20) = 125;
      }

      v41 = v20;
      v22 = a1[1];
      v23 = v21 + 1;
      if ((v22 - 125) <= 1)
      {
        v42[v23 - 1] = v22 & 0x5F;
        LOBYTE(v22) = 125;
        LODWORD(v23) = v21 + 2;
      }

      v42[v21 - 1] = v22;
      v24 = v23;
      v25 = v23 + 1;
      if ((v9 - 125) <= 1)
      {
        v42[v25 - 1] = v9 & 0x5F;
        LOBYTE(v9) = 125;
        LODWORD(v25) = v24 + 2;
      }

      v26 = a3;
      v42[v24 - 1] = v9;
      v27 = v25 + 1;
      if ((v10 - 125) <= 1)
      {
        v42[v27 - 1] = v10 & 0x5F;
        LODWORD(v27) = v25 + 2;
        LOBYTE(v10) = 125;
      }

      v42[v25 - 1] = v10;
      *&v42[v27 - 1] = 183;
      v28 = v27 + 2;
      v29 = v27 + 3;
      if (a3 - 125 <= 1)
      {
        v42[v29 - 1] = a3 & 0x5F;
        v26 = 125;
        LODWORD(v29) = v27 + 4;
      }

      v30 = a4;
      v42[v28 - 1] = v26;
      v31 = v29 + 1;
      if (HIBYTE(a3) - 125 <= 1)
      {
        v42[v31 - 1] = HIBYTE(a3) & 0x5F;
        v11 = 125;
        LODWORD(v31) = v29 + 2;
      }

      v42[v29 - 1] = v11;
      v32 = v31;
      v33 = v31 + 1;
      if (a4 - 125 <= 1)
      {
        v42[v33 - 1] = a4 & 0x5F;
        LODWORD(v33) = v32 + 2;
        v30 = 125;
      }

      v34 = ~(v18 ^ BYTE1(v17));
      v42[v32 - 1] = v30;
      v35 = v33 + 1;
      if (HIBYTE(a4) - 125 <= 1)
      {
        v42[v35 - 1] = HIBYTE(a4) & 0x5F;
        v12 = 125;
        LODWORD(v35) = v33 + 2;
      }

      v36 = (v18 ^ ~(v17 >> 8)) >> 8;
      v42[v33 - 1] = v12;
      v37 = v35;
      v38 = v35 + 1;
      if ((v34 - 125) <= 1)
      {
        v42[v38 - 1] = v34 & 0x5F;
        LODWORD(v38) = v37 + 2;
        LOBYTE(v34) = 125;
      }

      v42[v37 - 1] = v34;
      v39 = v38 + 1;
      if (BYTE1(v19) - 125 <= 1)
      {
        v42[v39 - 1] = BYTE1(v19) & 0x5F;
        v36 = 125;
        LODWORD(v39) = v38 + 2;
      }

      v42[v38 - 1] = v36;
      memcpy(a1, &v41, v39);
      result = (v39 + 1);
      a1[v39] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v40 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_TX_RX_FREQ_CAL_SWEEP(char *a1, int a2, char *a3)
{
  v34 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (!a1 || a2 < 0x5D2)
  {
    goto LABEL_41;
  }

  bzero(a1, a2);
  *a1 = 0xA8008200140B4BLL;
  *(a1 + 4) = 12;
  a1[10] = *a3;
  a1[11] = a3[1];
  a1[12] = a3[2];
  a1[13] = a3[3];
  a1[14] = a3[4];
  a1[15] = a3[5];
  if (a3[2])
  {
    v7 = 0;
    v8 = a1 + 17;
    v9 = 16;
    do
    {
      v10 = &a3[2 * v7 + 6];
      *(v8 - 1) = *v10;
      *v8 = *(v10 + 1);
      v8 += 2;
      ++v7;
      v9 += 2;
    }

    while (v7 < a3[2]);
    if (!a3[3])
    {
      goto LABEL_26;
    }

LABEL_9:
    v11 = 0;
    v12 = &a1[v9];
    do
    {
      v13 = &a3[2 * v11 + 38];
      *v12 = *v13;
      v12[1] = *(v13 + 1);
      ++v11;
      v9 += 2;
      v12 += 2;
    }

    while (v11 < a3[3]);
    if (a3[3])
    {
      v14 = 0;
      do
      {
        v15 = &a3[2 * v14 + 78];
        *v12 = *v15;
        v12[1] = *(v15 + 1);
        ++v14;
        v12 += 2;
        v9 += 2;
      }

      while (v14 < a3[3]);
      if (a3[3])
      {
        v16 = 0;
        do
        {
          *v12++ = a3[v16++ + 118];
          ++v9;
        }

        while (v16 < a3[3]);
        if (a3[3])
        {
          v17 = 0;
          do
          {
            *v12++ = a3[v17++ + 138];
            ++v9;
          }

          while (v17 < a3[3]);
          if (a3[3])
          {
            v18 = 0;
            do
            {
              *v12++ = a3[v18++ + 158];
              ++v9;
            }

            while (v18 < a3[3]);
            if (a3[3])
            {
              v19 = 0;
              do
              {
                *v12++ = a3[v19++ + 178];
                ++v9;
              }

              while (v19 < a3[3]);
            }
          }
        }
      }
    }

    goto LABEL_26;
  }

  v9 = 16;
  if (a3[3])
  {
    goto LABEL_9;
  }

LABEL_26:
  v20 = 8 * v9;
  if (((8 * v9) & 0xFFF8) != 0)
  {
    LOWORD(v21) = -1;
    v22 = a1;
    do
    {
      v23 = *v22++;
      v21 = crc_16_l_table[(v23 ^ v21)] ^ ((v21 & 0xFF00) >> 8);
      v20 -= 8;
    }

    while (v20);
    *&a1[v9] = ~v21;
    result = 0xFFFFFFFFLL;
    if (v9 > 1022)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v24 = &a1[v9];
    *v24 = 0;
    v24[1] = 0;
    result = 0xFFFFFFFFLL;
    if (v9 > 1022)
    {
      goto LABEL_41;
    }
  }

  v25 = (v9 + 2);
  if (2 * v25 <= a2)
  {
    bzero(__src, 0x800uLL);
    if (v9 < -1)
    {
      v26 = 0;
    }

    else
    {
      v26 = 0;
      v27 = a1;
      do
      {
        while (1)
        {
          v29 = *v27++;
          v28 = v29;
          v30 = v26;
          v31 = v26 + 1;
          if ((v29 - 125) > 1)
          {
            break;
          }

          v26 += 2;
          __src[v31] = v28 & 0x5F;
          __src[v30] = 125;
          if (!--v25)
          {
            goto LABEL_40;
          }
        }

        ++v26;
        __src[v30] = v28;
        --v25;
      }

      while (v25);
    }

LABEL_40:
    memcpy(a1, __src, v26);
    result = (v26 + 1);
    a1[v26] = 126;
  }

LABEL_41:
  v32 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTM_TX_RX_FREQ_CAL_SWEEP_PARSE(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 2);
  v4 = *(a3 + 3);
  if (*(a3 + 2))
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  v7 = 0;
  v8 = a3 + 838;
  v9 = ((2 * v4 - 1) >> 1) + 1;
  v10 = (2 * v4 - 1) & 0xFFFFFFFE;
  v11 = a3 + 40 * *(a3 + 2) + v10 + 800;
  v12 = a1 + v10 + 2;
  v13 = (a3 + 854);
  v14 = v8;
  v15 = 6 * v4 + (2 * v4 + 2) * v3 + 22;
  do
  {
    if (v4 < 8 || ((v16 = 6 * v4 + (2 * v4 + 2) * v3 + 22 + 2 * v4 * v7, v17 = v12 + v16, v18 = a1 + v16, v8 < v17) ? (v19 = v18 >= v11) : (v19 = 1), !v19))
    {
      v24 = 0;
      v25 = 0;
LABEL_21:
      v26 = a1 + 1 + v24 + v15;
      do
      {
        *(v14 + 2 * v25) = *(v26 - 1);
        v26 += 2;
        ++v25;
      }

      while (v9 != v25);
      goto LABEL_7;
    }

    if (v4 >= 0x10)
    {
      v27 = (a1 + 16 + v15);
      v28 = v9 & 0xFFFFFFF0;
      v29 = v13;
      do
      {
        v30 = v27 - 16;
        v32 = vld2_s8(v30);
        v33 = vld2_s8(v27);
        v29[-1] = vorrq_s8(vshll_n_s8(v32.val[1], 8uLL), vmovl_u8(v32.val[0]));
        *v29 = vorrq_s8(vshll_n_s8(v33.val[1], 8uLL), vmovl_u8(v33.val[0]));
        v29 += 2;
        v27 += 32;
        v28 -= 16;
      }

      while (v28);
      if ((v9 & 0xFFFFFFF0) == v9)
      {
        goto LABEL_7;
      }

      v20 = v9 & 0xFFFFFFF0;
      v24 = 2 * v20;
      v25 = v20;
      if (((((2 * v4 - 1) >> 1) + 1) & 8) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v20 = 0;
    }

    v21 = (v14 + 2 * v20);
    v22 = (a1 + 2 * v20 + v15);
    v23 = v20 - (v9 & 0xFFFFFFF8);
    do
    {
      v31 = vld2_s8(v22);
      v22 += 16;
      *v21++ = vorrq_s8(vshll_n_s8(v31.val[1], 8uLL), vmovl_u8(v31.val[0]));
      v23 += 8;
    }

    while (v23);
    v24 = 2 * (v9 & 0xFFFFFFF8);
    v25 = v9 & 0xFFFFFFF8;
    if (v25 != v9)
    {
      goto LABEL_21;
    }

LABEL_7:
    ++v7;
    v13 = (v13 + 40);
    v15 += 2 * v4;
    v14 += 40;
  }

  while (v7 != v3);
  return 0;
}

uint64_t APPLIB_DIAG_Get_TX_Power_Channel(_DWORD *a1, int a2, __int16 a3)
{
  v24 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 9)
  {
    bzero(a1, a2);
    *a1 = 589131;
    v7 = a3;
    *(a1 + 2) = a3;
    v8 = HIBYTE(a3);
    v9 = crc_16_l_table[a3 ^ 8];
    v10 = crc_16_l_table[crc_16_l_table[a3 ^ 8] ^ HIBYTE(a3) ^ 0x68];
    v11 = v10 ^ ~(v9 >> 8);
    *(a1 + 6) = v10 ^ ~(v9 >> 8);
    v12 = BYTE1(v11);
    *(a1 + 7) = BYTE1(v11);
    if (a2 >= 0x10)
    {
      v13 = v10 ^ (v9 >> 8);
      bzero(v23, 0x7FBuLL);
      __src = 589131;
      if ((v7 - 125) > 1)
      {
        v14 = 5;
      }

      else
      {
        v23[0] = v7 & 0x5F;
        v14 = 6;
        LOBYTE(v7) = 125;
      }

      v15 = ~v13;
      v22 = v7;
      v16 = v14 + 1;
      if ((v8 - 125) <= 1)
      {
        *(&__src + v16) = v8 & 0x5F;
        LOBYTE(v8) = 125;
        LODWORD(v16) = v14 + 2;
      }

      *(&__src + v14) = v8;
      v17 = v16;
      v18 = v16 + 1;
      if ((v15 - 125) <= 1)
      {
        *(&__src + v18) = v15 & 0x5F;
        LODWORD(v18) = v17 + 2;
        LOBYTE(v15) = 125;
      }

      *(&__src + v17) = v15;
      v19 = v18 + 1;
      if ((v12 - 125) <= 1)
      {
        *(&__src + v19) = v12 & 0x5F;
        LOBYTE(v12) = 125;
        LODWORD(v19) = v18 + 2;
      }

      *(&__src + v18) = v12;
      memcpy(a1, &__src, v19);
      result = (v19 + 1);
      *(a1 + v19) = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v20 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_GetPmicTherm(_DWORD *a1, int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 5)
  {
    bzero(a1, a2);
    *a1 = 64843;
    *(a1 + 2) = 22839;
    if (a2 >= 0xC)
    {
      *a1 = 64843;
      *(a1 + 2) = 22839;
      *(a1 + 6) = 126;
      return 7;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_FTM_CDMA2000_FTM_SET_REVERSE_LINK_POWER(char *a1, int a2, int a3, int a4)
{
  v58 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x1F)
  {
    bzero(a1, a2);
    *a1 = 461643;
    *(a1 + 2) = 140;
    *(a1 + 11) = a4;
    a1[10] = a3;
    v9 = a1[6];
    v10 = crc_16_l_table[v9 ^ 0x25];
    v11 = crc_16_l_table[a1[7] ^ 0x12 ^ v10];
    v12 = crc_16_l_table[(a1[8] ^ v11 ^ HIBYTE(v10))];
    v13 = crc_16_l_table[(a1[9] ^ v12 ^ HIBYTE(v11))];
    v14 = crc_16_l_table[(v13 ^ HIBYTE(v12)) ^ a3];
    v15 = crc_16_l_table[(a4 ^ v14 ^ HIBYTE(v13))];
    v16 = crc_16_l_table[(a1[12] ^ v15 ^ HIBYTE(v14))];
    v17 = crc_16_l_table[(a1[13] ^ v16 ^ HIBYTE(v15))];
    v18 = crc_16_l_table[(a1[14] ^ v17 ^ HIBYTE(v16))];
    v19 = v18 ^ ~(v17 >> 8);
    *(a1 + 15) = v18 ^ ~HIBYTE(crc_16_l_table[(a1[13] ^ v16 ^ HIBYTE(v15))]);
    if (a2 >= 34)
    {
      bzero(v57, 0x7FFuLL);
      v20 = *a1;
      if ((v20 - 125) > 1)
      {
        v21 = 1;
      }

      else
      {
        v57[0] = v20 & 0x5F;
        v21 = 2;
        LOBYTE(v20) = 125;
      }

      __src = v20;
      v22 = a1[1];
      v23 = v21 + 1;
      if ((v22 - 125) <= 1)
      {
        v57[v23 - 1] = v22 & 0x5F;
        LOBYTE(v22) = 125;
        LODWORD(v23) = v21 + 2;
      }

      v57[v21 - 1] = v22;
      v24 = a1[2];
      v25 = v23;
      v26 = v23 + 1;
      if ((v24 - 125) <= 1)
      {
        v57[v26 - 1] = v24 & 0x5F;
        LODWORD(v26) = v25 + 2;
        LOBYTE(v24) = 125;
      }

      v57[v25 - 1] = v24;
      v27 = a1[3];
      v28 = v26;
      v29 = v26 + 1;
      if ((v27 - 125) <= 1)
      {
        v57[v29 - 1] = v27 & 0x5F;
        LOBYTE(v27) = 125;
        LODWORD(v29) = v28 + 2;
      }

      v57[v28 - 1] = v27;
      v30 = a1[4];
      v31 = v29 + 1;
      if ((v30 - 125) <= 1)
      {
        v57[v31 - 1] = v30 & 0x5F;
        LODWORD(v31) = v29 + 2;
        LOBYTE(v30) = 125;
      }

      v57[v29 - 1] = v30;
      v57[v31 - 1] = 0;
      v32 = v31 + 2;
      if ((v9 - 125) <= 1)
      {
        v57[v32 - 1] = v9 & 0x5F;
        LOBYTE(v9) = 125;
        LODWORD(v32) = v31 + 3;
      }

      v57[v31] = v9;
      v33 = a1[7];
      v34 = v32 + 1;
      if ((v33 - 125) <= 1)
      {
        v57[v34 - 1] = v33 & 0x5F;
        LOBYTE(v33) = 125;
        LODWORD(v34) = v32 + 2;
      }

      v57[v32 - 1] = v33;
      v35 = a1[8];
      v36 = v34 + 1;
      if ((v35 - 125) <= 1)
      {
        v57[v36 - 1] = v35 & 0x5F;
        LOBYTE(v35) = 125;
        LODWORD(v36) = v34 + 2;
      }

      v57[v34 - 1] = v35;
      v37 = a1[9];
      v38 = v36;
      v39 = v36 + 1;
      if ((v37 - 125) <= 1)
      {
        v57[v39 - 1] = v37 & 0x5F;
        LOBYTE(v37) = 125;
        LODWORD(v39) = v36 + 2;
      }

      v40 = a4;
      v57[v38 - 1] = v37;
      v41 = v39;
      v42 = v39 + 1;
      if ((a3 - 125) <= 1)
      {
        v57[v42 - 1] = a3 & 0x5F;
        LOBYTE(a3) = 125;
        LODWORD(v42) = v41 + 2;
      }

      v43 = BYTE1(a4);
      v57[v41 - 1] = a3;
      v44 = v42 + 1;
      if (a4 - 125 <= 1)
      {
        v57[v44 - 1] = a4 & 0x5F;
        v40 = 125;
        LODWORD(v44) = v42 + 2;
      }

      v45 = BYTE2(a4);
      v57[v42 - 1] = v40;
      v46 = v44 + 1;
      if (BYTE1(a4) - 125 <= 1)
      {
        v57[v46 - 1] = BYTE1(a4) & 0x5F;
        v43 = 125;
        LODWORD(v46) = v44 + 2;
      }

      v57[v44 - 1] = v43;
      v47 = v46;
      v48 = v46 + 1;
      if (BYTE2(a4) - 125 <= 1)
      {
        v57[v48 - 1] = BYTE2(a4) & 0x5F;
        v45 = 125;
        LODWORD(v48) = v47 + 2;
      }

      v57[v47 - 1] = v45;
      v49 = ~(v18 ^ BYTE1(v17));
      v50 = a1[14];
      v51 = v48 + 1;
      if ((v50 - 125) <= 1)
      {
        v57[v51 - 1] = v50 & 0x5F;
        LOBYTE(v50) = 125;
        LODWORD(v51) = v48 + 2;
      }

      v52 = (v18 ^ ~(v17 >> 8)) >> 8;
      v57[v48 - 1] = v50;
      v53 = v51 + 1;
      if ((v49 - 125) <= 1)
      {
        v57[v53 - 1] = v49 & 0x5F;
        LODWORD(v53) = v51 + 2;
        LOBYTE(v49) = 125;
      }

      v57[v51 - 1] = v49;
      v54 = v53 + 1;
      if (BYTE1(v19) - 125 <= 1)
      {
        v57[v54 - 1] = BYTE1(v19) & 0x5F;
        v52 = 125;
        LODWORD(v54) = v53 + 2;
      }

      v57[v53 - 1] = v52;
      memcpy(a1, &__src, v54);
      result = (v54 + 1);
      a1[v54] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v55 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ETLDiagCreateGUIDDB(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), unsigned __int16 *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    memset(v87, 0, sizeof(v87));
    v88 = 0;
    memset(v85, 0, sizeof(v85));
    v86 = 0;
    if (!HDLCFrameCreateUplink() || a2[2])
    {
      goto LABEL_20;
    }

    if (HDLCFrameGetFreeSpace() <= 7)
    {
      _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", v12, v13, v14, v15, v16, v17, 8);
    }

    else
    {
      v18 = *a2;
      FreeSpace = HDLCFrameGetFreeSpace();
      if (FreeSpace >= 4)
      {
        LOWORD(v90) = 4736;
        HIWORD(v90) = v18;
        if (HDLCFrameInject())
        {
          v32 = a2[1];
          if (!HDLCFrameInjectUnsignedShort())
          {
            goto LABEL_20;
          }

          v33 = a2[2];
          if (!HDLCFrameInjectUnsignedShort() || !ETLSendCommand(a1, v87, a4) || !ETLSubsys2FindMatchingResponse(a1, v85, a4))
          {
            goto LABEL_20;
          }

          v90 = 0;
          v34 = malloc(0x1CuLL);
          *a3 = v34;
          *v34 = 0;
          v34[2] = 0;
          *(v34 + 6) = 0;
          v34[1] = 0;
          v37 = ETLSubsys2ParseHeader(v85, &v89, v34, v34 + 1, v34 + 4, &v90, v35, v36);
          v38 = a3;
          if (!v37)
          {
            goto LABEL_28;
          }

          v39 = *a3;
          if (**a3 != *a2)
          {
            goto LABEL_28;
          }

          v40 = v90;
          v41 = DWORD2(v85[0]);
          if (DWORD2(v85[0]) - v90 <= 5)
          {
            _ETLDebugPrint("ETLDiagParseGetDBDataHeader", "The required size (%u) is less than the payload length (%u)\n", v26, v27, v28, v29, v30, v31, 6);
LABEL_27:
            v38 = a3;
LABEL_28:
            if (!*(*v38 + 14))
            {
              goto LABEL_20;
            }

            v43 = "ETLDiagParseGetDBData";
            v44 = "Failed to parse the header while getting GUID\x13.\x13\n";
            goto LABEL_19;
          }

          v46 = *&v85[0];
          v47 = (*&v85[0] + v90);
          v39[5] = *v47;
          v48 = v47[1];
          v39[6] = v48;
          v49 = v47[2];
          v39[7] = v49;
          if (v48 != a2[1])
          {
            _ETLDebugPrint("ETLDiagParseGetDBDataHeader", "The request version (%u) is not matched with responded version (%u).\n", v26, v27, v28, v29, v30, v31, a2[1]);
            goto LABEL_27;
          }

          if (v49)
          {
            _ETLDebugPrint("ETLDiagParseGetDBData", "The op code (%d) is not supported!\n", v26, v27, v28, v29, v30, v31, v49);
            goto LABEL_20;
          }

          if (v41 - (v40 + 6) <= 1)
          {
            _ETLDebugPrint("ETLDiagParseOperationDataFileList", "Request size (%u) is greater than the payload size (%u).\n", v26, v27, v28, v29, v30, v31, 2);
            goto LABEL_20;
          }

          v50 = v48;
          v51 = (v46 + v40 + 6);
          if (v48 == 3)
          {
            *(v39 + 16) = *v51;
            v52 = v51[1];
            *(v39 + 17) = v52;
            v53 = 21;
          }

          else
          {
            if (v48 != 1)
            {
              _ETLDebugPrint("ETLDiagParseOperationDataFileList", "Unknown version: %u\n", v26, v27, v28, v29, v30, v31, v48);
              goto LABEL_20;
            }

            *(v39 + 16) = *v51;
            v52 = v51[1];
            *(v39 + 17) = v52;
            v53 = 20;
          }

          v54 = v52 * v53;
          v55 = malloc(v54);
          *(v39 + 9) = v55;
          if (v55)
          {
            bzero(v55, v54);
            _ETLDebugPrint("ETLDiagParseOperationDataFileList", "Response: Version: %u\n", v56, v57, v58, v59, v60, v61, v50);
            _ETLDebugPrint("ETLDiagParseOperationDataFileList", "Response: Number of Files: %u\n", v62, v63, v64, v65, v66, v67, v52);
            if (v52)
            {
              v74 = v51 + 2;
              if (v50 == 3)
              {
                v75 = 21;
              }

              else
              {
                v75 = 20;
              }

              if (v50 == 1)
              {
                v80 = 0;
                v81 = -8 - v40;
                v42 = 1;
                while (1)
                {
                  v78 = v81 + DWORD2(v85[0]);
                  if (v78 < v75)
                  {
                    goto LABEL_57;
                  }

                  v82 = *(v39 + 9) + v80;
                  *v82 = *&v74[v80];
                  *(v82 + 4) = *&v74[v80 + 4];
                  *(v82 + 6) = *&v74[v80 + 6];
                  *(v82 + 8) = *&v74[v80 + 8];
                  *(*(v39 + 9) + 16) = *&v74[v80 + 16];
                  v81 -= v75;
                  v80 += 20;
                  if (20 * v52 == v80)
                  {
                    goto LABEL_21;
                  }
                }
              }

              if (v50 == 3)
              {
                v76 = 0;
                v77 = -8 - v40;
                v42 = 1;
                while (1)
                {
                  v78 = v77 + DWORD2(v85[0]);
                  if (v78 < v75)
                  {
                    goto LABEL_57;
                  }

                  v79 = *(v39 + 9) + v76;
                  *v79 = *&v74[v76];
                  *(v79 + 4) = *&v74[v76 + 4];
                  *(v79 + 6) = *&v74[v76 + 6];
                  *(v79 + 8) = *&v74[v76 + 8];
                  *(*(v39 + 9) + 16) = *&v74[v76 + 16];
                  *(*(v39 + 9) + 20) = v74[v76 + 20];
                  v77 -= v75;
                  v76 += 21;
                  if (21 * v52 == v76)
                  {
                    goto LABEL_21;
                  }
                }
              }

              v78 = DWORD2(v85[0]) - (v40 + 8);
              if (v78 < 0x14)
              {
LABEL_57:
                _ETLDebugPrint("ETLDiagParseOperationDataFileList", "Insufficient payload length( %u). Needed %u bytes more\n", v68, v69, v70, v71, v72, v73, v78);
                goto LABEL_20;
              }

              v83 = 0;
              while (++v83 < v52)
              {
                v78 = v78 - v75;
                if (v78 < v75)
                {
                  goto LABEL_57;
                }
              }
            }

            v42 = 1;
            goto LABEL_21;
          }

          v43 = "ETLDiagParseOperationDataFileList";
          v44 = "Failed to allocate memory for file info.\n";
        }

        else
        {
          v43 = "ETLSubsysAddHeaderInternal";
          v44 = "Failed to inject\n";
        }

LABEL_19:
        _ETLDebugPrint(v43, v44, v26, v27, v28, v29, v30, v31, v84);
        goto LABEL_20;
      }

      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v20, v21, v22, v23, v24, v25, FreeSpace);
    }

LABEL_20:
    v42 = 0;
LABEL_21:
    HDLCFrameFree();
    HDLCFrameFree();
    return v42;
  }

  _ETLDebugPrint("ETLDiagCreateGUIDDB", "transport cannot be NULL\n", a3, a4, a5, a6, a7, a8, v84);
  return 0;
}

uint64_t ETLDiagReleaseGUIDDB(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  if (*a1)
  {
    v10 = v8[6];
    if (v10 == 3 || v10 == 1)
    {
      v11 = *(v8 + 9);
      if (v11)
      {
        free(v11);
      }
    }

    else
    {
      _ETLDebugPrint("ETLDiagReleaseGUIDDB", "Warning: Version (%u) is not supported to free file list!\n", a3, a4, a5, a6, a7, a8, v8[6]);
    }

    free(*a1);
    *a1 = 0;
  }

  return 1;
}

const char *ETLDiagGetSubsysCmdString(int a1)
{
  if (a1 <= 3599)
  {
    if (a1 == 527)
    {
      return "APPS";
    }

    if (a1 == 2070)
    {
      return "MPSS";
    }
  }

  else
  {
    switch(a1)
    {
      case 3600:
        return "ADSP";
      case 5151:
        return "WCNSS";
      case 6680:
        return "SLPI";
    }
  }

  return &unk_2977CAD33;
}

void ETLFirmwareVersion::ETLFirmwareVersion(ETLFirmwareVersion *this)
{
  *this = &unk_2A1E537A8;
  *(this + 31) = 7;
  strcpy(this + 8, "Phoenix");
  *(this + 4) = 0;
  *(this + 5) = 0xFFFFFFFF00000000;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
}

{
  *this = &unk_2A1E537A8;
  *(this + 31) = 7;
  strcpy(this + 8, "Phoenix");
  *(this + 4) = 0;
  *(this + 5) = 0xFFFFFFFF00000000;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
}

void ETLFirmwareVersion::~ETLFirmwareVersion(void **this)
{
  *this = &unk_2A1E537A8;
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
    if ((*(this + 71) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(this + 31) & 0x80000000) == 0)
      {
        return;
      }

LABEL_7:
      operator delete(this[1]);
      return;
    }
  }

  else if ((*(this + 71) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[6]);
  if (*(this + 31) < 0)
  {
    goto LABEL_7;
  }
}

{
  *this = &unk_2A1E537A8;
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
    if ((*(this + 71) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(this + 31) & 0x80000000) == 0)
      {
        return;
      }

LABEL_7:
      operator delete(this[1]);
      return;
    }
  }

  else if ((*(this + 71) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[6]);
  if (*(this + 31) < 0)
  {
    goto LABEL_7;
  }
}

{
  *this = &unk_2A1E537A8;
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
    if ((*(this + 71) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(this + 31) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 71) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[6]);
  if ((*(this + 31) & 0x80000000) == 0)
  {
LABEL_4:
    v2 = this;

    goto LABEL_6;
  }

LABEL_9:
  operator delete(this[1]);
  v2 = this;

LABEL_6:
  operator delete(v2);
}

BOOL ETLFirmwareVersion::initCommon(uint64_t a1)
{
  __dst[0] = 0;
  __dst[1] = 0;
  v79 = 0;
  memset(__p, 170, sizeof(__p));
  ctu::tokenize();
  v2 = __p[0];
  v3 = __p[1];
  if (0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 3) < 2)
  {
    if (!__p[0])
    {
      goto LABEL_90;
    }

    goto LABEL_17;
  }

  v4 = *(__p[0] + 23);
  if (v4 >= 0)
  {
    v5 = *(__p[0] + 23);
  }

  else
  {
    v5 = *(__p[0] + 1);
  }

  v6 = *(a1 + 31);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a1 + 16);
  }

  if (v5 != v6 || (v4 >= 0 ? (v8 = __p[0]) : (v8 = *__p[0]), v7 >= 0 ? (v9 = (a1 + 8)) : (v9 = *(a1 + 8)), memcmp(v8, v9, v5)))
  {
LABEL_17:
    v10 = __p[0];
    if (__p[1] == __p[0])
    {
      goto LABEL_89;
    }

    do
    {
      v11 = *(v3 - 1);
      v3 -= 3;
      if (v11 < 0)
      {
        operator delete(*v3);
      }
    }

    while (v3 != __p[0]);
LABEL_88:
    v10 = __p[0];
LABEL_89:
    __p[1] = v2;
    operator delete(v10);
    goto LABEL_90;
  }

  if (__dst == (__p[0] + 24))
  {
LABEL_25:
    v12 = __p[0];
    if (__p[1] == __p[0])
    {
      goto LABEL_34;
    }

    do
    {
LABEL_31:
      v13 = *(v3 - 1);
      v3 -= 3;
      if (v13 < 0)
      {
        operator delete(*v3);
      }
    }

    while (v3 != v2);
    v12 = __p[0];
    goto LABEL_34;
  }

  if ((*(__p[0] + 47) & 0x80000000) == 0)
  {
    *__dst = *(__p[0] + 24);
    v79 = *(__p[0] + 5);
    goto LABEL_25;
  }

  std::string::__assign_no_alias<true>(__dst, *(__p[0] + 3), *(__p[0] + 4));
  v2 = __p[0];
  if (!__p[0])
  {
    goto LABEL_35;
  }

  v3 = __p[1];
  v12 = __p[0];
  if (__p[1] != __p[0])
  {
    goto LABEL_31;
  }

LABEL_34:
  __p[1] = v2;
  operator delete(v12);
LABEL_35:
  memset(__p, 170, sizeof(__p));
  ctu::tokenize();
  v2 = __p[0];
  v14 = __p[1];
  v15 = 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 3);
  if (v15 != 1)
  {
    if (v15 != 2)
    {
      if (__p[0])
      {
        v10 = __p[0];
        if (__p[1] == __p[0])
        {
          goto LABEL_89;
        }

        do
        {
          v18 = *(v14 - 1);
          v14 -= 3;
          if (v18 < 0)
          {
            operator delete(*v14);
          }
        }

        while (v14 != __p[0]);
        goto LABEL_88;
      }

      goto LABEL_90;
    }

    if (__dst != __p[0])
    {
      v16 = *(__p[0] + 23);
      if (SHIBYTE(v79) < 0)
      {
        if (v16 >= 0)
        {
          v19 = __p[0];
        }

        else
        {
          v19 = *__p[0];
        }

        if (v16 >= 0)
        {
          v20 = *(__p[0] + 23);
        }

        else
        {
          v20 = *(__p[0] + 1);
        }

        std::string::__assign_no_alias<false>(__dst, v19, v20);
      }

      else if ((*(__p[0] + 23) & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(__dst, *__p[0], *(__p[0] + 1));
      }

      else
      {
        v17 = *__p[0];
        v79 = *(__p[0] + 2);
        *__dst = v17;
      }
    }

    v2 = __p[0];
    v21 = (a1 + 48);
    if ((a1 + 48) != __p[0] + 24)
    {
      v22 = *(__p[0] + 47);
      if (*(a1 + 71) < 0)
      {
        if (v22 >= 0)
        {
          v24 = __p[0] + 24;
        }

        else
        {
          v24 = *(__p[0] + 3);
        }

        if (v22 >= 0)
        {
          v25 = *(__p[0] + 47);
        }

        else
        {
          v25 = *(__p[0] + 4);
        }

        std::string::__assign_no_alias<false>(v21, v24, v25);
      }

      else if ((*(__p[0] + 47) & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(v21, *(__p[0] + 3), *(__p[0] + 4));
      }

      else
      {
        v23 = *(__p[0] + 24);
        *(a1 + 64) = *(__p[0] + 5);
        *v21 = v23;
      }

      v2 = __p[0];
    }
  }

  if (v2)
  {
    v26 = __p[1];
    v27 = v2;
    if (__p[1] != v2)
    {
      do
      {
        v28 = *(v26 - 1);
        v26 -= 3;
        if (v28 < 0)
        {
          operator delete(*v26);
        }
      }

      while (v26 != v2);
      v27 = __p[0];
    }

    __p[1] = v2;
    operator delete(v27);
  }

  memset(__p, 170, sizeof(__p));
  ctu::tokenize();
  v2 = __p[0];
  v29 = __p[1];
  v30 = 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 3);
  if (v30 == 1)
  {
    goto LABEL_122;
  }

  if (v30 != 2)
  {
    if (__p[0])
    {
      v10 = __p[0];
      if (__p[1] == __p[0])
      {
        goto LABEL_89;
      }

      do
      {
        v33 = *(v29 - 1);
        v29 -= 3;
        if (v33 < 0)
        {
          operator delete(*v29);
        }
      }

      while (v29 != __p[0]);
      goto LABEL_88;
    }

LABEL_90:
    v34 = 0;
    goto LABEL_91;
  }

  if (__dst != __p[0])
  {
    v31 = *(__p[0] + 23);
    if (SHIBYTE(v79) < 0)
    {
      if (v31 >= 0)
      {
        v36 = __p[0];
      }

      else
      {
        v36 = *__p[0];
      }

      if (v31 >= 0)
      {
        v37 = *(__p[0] + 23);
      }

      else
      {
        v37 = *(__p[0] + 1);
      }

      std::string::__assign_no_alias<false>(__dst, v36, v37);
    }

    else if ((*(__p[0] + 23) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(__dst, *__p[0], *(__p[0] + 1));
    }

    else
    {
      v32 = *__p[0];
      v79 = *(__p[0] + 2);
      *__dst = v32;
    }
  }

  *(a1 + 44) = 0;
  v38 = __p[0];
  v39 = (__p[0] + 24);
  __endptr = 0;
  v40 = *(__p[0] + 47);
  if (v40 >= 0)
  {
    v41 = *(__p[0] + 47);
  }

  else
  {
    v41 = *(__p[0] + 4);
  }

  if (!v41 || (v40 >= 0 ? (v42 = __p[0] + 24) : (v42 = *v39), (v43 = memchr(v42, 45, v41)) != 0 ? (v44 = v43 - v42 == -1) : (v44 = 1), v44))
  {
    *__error() = 0;
    v45 = *(v38 + 47) >= 0 ? v39 : v38[3];
    v46 = strtoul(v45, &__endptr, 10);
    if (!*__error() && __endptr && !*__endptr)
    {
      *(a1 + 44) = v46;
    }
  }

  v2 = __p[0];
LABEL_122:
  if (v2)
  {
    v47 = __p[1];
    v48 = v2;
    if (__p[1] != v2)
    {
      do
      {
        v49 = *(v47 - 1);
        v47 -= 3;
        if (v49 < 0)
        {
          operator delete(*v47);
        }
      }

      while (v47 != v2);
      v48 = __p[0];
    }

    __p[1] = v2;
    operator delete(v48);
  }

  memset(__p, 170, sizeof(__p));
  ctu::tokenize();
  v50 = __p[0];
  v34 = (__p[1] - __p[0]) == 72;
  if ((__p[1] - __p[0]) == 72)
  {
    *(a1 + 32) = 0;
    __endptr = 0;
    v51 = *(v50 + 23);
    if (v51 >= 0)
    {
      v52 = *(v50 + 23);
    }

    else
    {
      v52 = v50[1];
    }

    if (!v52 || (v51 >= 0 ? (v53 = v50) : (v53 = *v50), (v54 = memchr(v53, 45, v52)) != 0 ? (v55 = v54 - v53 == -1) : (v55 = 1), v55))
    {
      *__error() = 0;
      v56 = *(v50 + 23) >= 0 ? v50 : *v50;
      v57 = strtoul(v56, &__endptr, 10);
      if (!*__error() && __endptr && !*__endptr)
      {
        *(a1 + 32) = v57;
      }
    }

    *(a1 + 36) = 0;
    v58 = __p[0];
    v59 = (__p[0] + 24);
    __endptr = 0;
    v60 = *(__p[0] + 47);
    if (v60 >= 0)
    {
      v61 = *(__p[0] + 47);
    }

    else
    {
      v61 = *(__p[0] + 4);
    }

    if (!v61 || (v60 >= 0 ? (v62 = __p[0] + 24) : (v62 = *v59), (v63 = memchr(v62, 45, v61)) == 0 || v63 - v62 == -1))
    {
      *__error() = 0;
      v64 = *(v58 + 47) >= 0 ? v59 : v58[3];
      v65 = strtoul(v64, &__endptr, 10);
      if (!*__error() && __endptr && !*__endptr)
      {
        *(a1 + 36) = v65;
      }
    }

    *(a1 + 40) = 0;
    v66 = __p[0];
    v67 = (__p[0] + 48);
    __endptr = 0;
    v68 = *(__p[0] + 71);
    if (v68 >= 0)
    {
      v69 = *(__p[0] + 71);
    }

    else
    {
      v69 = *(__p[0] + 7);
    }

    if (!v69 || (v68 >= 0 ? (v70 = __p[0] + 48) : (v70 = *v67), (v71 = memchr(v70, 45, v69)) == 0 || v71 - v70 == -1))
    {
      *__error() = 0;
      v72 = *(v66 + 71) >= 0 ? v67 : v66[6];
      v73 = strtoul(v72, &__endptr, 10);
      if (!*__error() && __endptr && !*__endptr)
      {
        *(a1 + 40) = v73;
      }
    }

    v50 = __p[0];
  }

  if (v50)
  {
    v74 = __p[1];
    v75 = v50;
    if (__p[1] != v50)
    {
      do
      {
        v76 = *(v74 - 1);
        v74 -= 3;
        if (v76 < 0)
        {
          operator delete(*v74);
        }
      }

      while (v74 != v50);
      v75 = __p[0];
    }

    __p[1] = v50;
    operator delete(v75);
  }

LABEL_91:
  if (SHIBYTE(v79) < 0)
  {
    operator delete(__dst[0]);
  }

  return v34;
}

void sub_297795D80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  std::vector<std::string>::~vector[abi:ne200100](&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ***std::vector<std::string>::~vector[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

BOOL ETLFirmwareVersion::initWithVersionString(uint64_t a1, uint64_t a2)
{
  v40[2] = *MEMORY[0x29EDCA608];
  memset(__p, 0, sizeof(__p));
  v4 = *(a2 + 23);
  v5 = v4;
  v6 = *a2;
  v7 = *(a2 + 8);
  v36 = *a2;
  if (v4 >= 0)
  {
    v6 = a2;
  }

  __s = v6;
  if (v4 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  v9 = *(a1 + 31);
  if (v9 >= 0)
  {
    v10 = (a1 + 8);
  }

  else
  {
    v10 = *(a1 + 8);
  }

  if (v9 >= 0)
  {
    v11 = *(a1 + 31);
  }

  else
  {
    v11 = *(a1 + 16);
  }

  if (v11)
  {
    if (v8 >= v11)
    {
      v15 = v6;
      v16 = &v6[v8];
      v17 = *v10;
      v18 = v8;
      do
      {
        v19 = v18 - v11;
        if (v19 == -1)
        {
          break;
        }

        v20 = memchr(v15, v17, v19 + 1);
        if (!v20)
        {
          break;
        }

        v21 = v20;
        if (!memcmp(v20, v10, v11))
        {
          if (v21 == v16 || v21 != __s)
          {
            break;
          }

          goto LABEL_33;
        }

        v15 = (v21 + 1);
        v18 = v16 - (v21 + 1);
      }

      while (v18 >= v11);
    }

    v12 = v11 + 1;
    if ((v11 + 1) > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v12 <= 0x16)
    {
      memset(&v38, 0, sizeof(v38));
      v14 = &v38;
      *(&v38.__r_.__value_.__s + 23) = v11 + 1;
    }

    else
    {
      if ((v12 | 7) == 0x17)
      {
        v13 = 25;
      }

      else
      {
        v13 = (v12 | 7) + 1;
      }

      v14 = operator new(v13);
      v38.__r_.__value_.__l.__size_ = v11 + 1;
      v38.__r_.__value_.__r.__words[2] = v13 | 0x8000000000000000;
      v38.__r_.__value_.__r.__words[0] = v14;
    }

    memmove(v14, v10, v11);
    *&v14[v11] = 32;
    v22 = std::string::append(&v38, __s, v8);
    v23 = v22->__r_.__value_.__r.__words[0];
    v40[0] = v22->__r_.__value_.__l.__size_;
    *(v40 + 7) = *(&v22->__r_.__value_.__r.__words[1] + 7);
    v24 = HIBYTE(v22->__r_.__value_.__r.__words[2]);
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    __p[0] = v23;
    __p[1] = v40[0];
    *(&__p[1] + 7) = *(v40 + 7);
    HIBYTE(__p[2]) = v24;
    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }
  }

  else
  {
LABEL_33:
    if (__p != a2)
    {
      if (v5 < 0)
      {
        std::string::__assign_no_alias<true>(__p, v36, v7);
      }

      else
      {
        *__p = *a2;
        __p[2] = *(a2 + 16);
      }
    }
  }

  v25 = *(a2 + 23);
  if (v25 >= 0)
  {
    v26 = *(a2 + 23);
  }

  else
  {
    v26 = *(a2 + 8);
  }

  v27 = v26 + 16;
  if (v26 + 16 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v27 < 0x17)
  {
    v30 = &v38.__r_.__value_.__s.__data_[16];
    v38.__r_.__value_.__r.__words[2] = 0;
    *(&v38.__r_.__value_.__s + 23) = v26 + 16;
    *&v38.__r_.__value_.__l.__data_ = *"Version String: ";
    if (!v26)
    {
      goto LABEL_51;
    }
  }

  else
  {
    if ((v27 | 7) == 0x17)
    {
      v28 = 25;
    }

    else
    {
      v28 = (v27 | 7) + 1;
    }

    v29 = operator new(v28);
    v38.__r_.__value_.__l.__size_ = v26 + 16;
    v38.__r_.__value_.__r.__words[2] = v28 | 0x8000000000000000;
    v38.__r_.__value_.__r.__words[0] = v29;
    *v29 = *"Version String: ";
    v30 = (v29 + 1);
  }

  v31 = *a2;
  if (v25 >= 0)
  {
    v32 = a2;
  }

  else
  {
    v32 = *a2;
  }

  memmove(v30, v32, v26);
LABEL_51:
  v30[v26] = 0;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 72) = v38;
  result = ETLFirmwareVersion::initCommon(a1);
  if (SHIBYTE(__p[2]) < 0)
  {
    v34 = result;
    operator delete(__p[0]);
    result = v34;
  }

  v35 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_297796180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);
  _Unwind_Resume(exception_object);
}

BOOL ETLFirmwareVersion::initWithFolderName(uint64_t a1, const void **a2)
{
  v2 = *(a2 + 23);
  if (v2 >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    v3 = a2[1];
  }

  v4 = v3 + 8;
  if (v3 + 8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 < 0x17)
  {
    v8 = &v12 + 8;
    v13 = 0;
    HIBYTE(v13) = v3 + 8;
    v12 = 0x203A7265646C6F46uLL;
    if (!v3)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    *(&v12 + 1) = v3 + 8;
    v13 = v7 | 0x8000000000000000;
    *&v12 = operator new(v7);
    *v12 = 0x203A7265646C6F46;
    v8 = (v12 + 8);
  }

  v9 = *a2;
  if (v2 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  memmove(v8, v10, v3);
LABEL_15:
  v8[v3] = 0;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 72) = v12;
  *(a1 + 88) = v13;

  return ETLFirmwareVersion::initCommon(a1);
}

BOOL ETLFirmwareVersion::isNewerThan(ETLFirmwareVersion *this, const ETLFirmwareVersion *a2)
{
  v2 = *(this + 8);
  v3 = *(a2 + 8);
  if (v2 < v3)
  {
    return 0;
  }

  if (v2 > v3)
  {
    return 1;
  }

  v5 = *(this + 9);
  v6 = *(a2 + 9);
  if (v5 < v6)
  {
    return 0;
  }

  if (v5 > v6)
  {
    return 1;
  }

  v7 = *(this + 10);
  v8 = *(a2 + 10);
  if (v7 < v8)
  {
    return 0;
  }

  if (v7 > v8)
  {
    return 1;
  }

  return *(this + 11) > *(a2 + 11);
}

uint64_t ETLFirmwareVersion::getAsString@<X0>(ETLFirmwareVersion *this@<X0>, std::string *a2@<X8>)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v80 = 0xAAAAAAAAAAAAAAAALL;
  v76 = 0xAAAAAAAAAAAAAAAALL;
  v87 = v4;
  v86 = v4;
  v85 = v4;
  v84 = v4;
  v83 = v4;
  v82 = v4;
  v79 = v4;
  v78 = v4;
  v75 = v4;
  v73 = v4;
  *__p = v4;
  v71 = v4;
  v72 = v4;
  v70 = v4;
  v81 = 0;
  v5 = MEMORY[0x29EDC95A8] + 64;
  v77 = MEMORY[0x29EDC95A8] + 64;
  v6 = *(MEMORY[0x29EDC9538] + 16);
  v69 = *(MEMORY[0x29EDC9538] + 8);
  *(&v69 + *(v69 - 24)) = v6;
  v7 = (&v69 + *(v69 - 24));
  std::ios_base::init(v7, &v70);
  v8 = MEMORY[0x29EDC95A8] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  v69 = v8;
  v77 = v5;
  v65 = MEMORY[0x29EDC9568] + 16;
  *&v70 = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29C2752A0](&v70 + 8);
  v72 = 0u;
  v73 = 0u;
  v71 = 0u;
  v64 = MEMORY[0x29EDC9570] + 16;
  *&v70 = MEMORY[0x29EDC9570] + 16;
  __p[0] = 0;
  __p[1] = 0;
  *&v75 = 0;
  *(&v75 + 1) = __p;
  LODWORD(v76) = 16;
  std::string::append(__p, 0x16uLL, 0);
  v9 = BYTE7(v75);
  v10 = v69;
  if (SBYTE7(v75) < 0)
  {
    v9 = __p[1];
  }

  *(&v72 + 1) = __p;
  *&v73 = __p;
  *(&v73 + 1) = __p + v9;
  v11 = (&v69 + *(v69 - 24));
  if (v11[1].__fmtflags_ == -1)
  {
    std::ios_base::getloc(v11);
    v12 = std::locale::use_facet(&v68, MEMORY[0x29EDC93D0]);
    (v12->__vftable[2].~facet_0)(v12, 32);
    std::locale::~locale(&v68);
    v10 = v69;
  }

  v13 = &v71;
  v11[1].__fmtflags_ = 48;
  *(&v71 + *(v10 - 24)) = 2;
  MEMORY[0x29C275260](&v69, *(this + 8));
  *(&v71 + *(v69 - 24)) = 1;
  v68.__r_.__value_.__s.__data_[0] = 46;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v69, &v68);
  *(&v71 + *(v69 - 24)) = 2;
  MEMORY[0x29C275260](&v69, *(this + 9));
  *(&v71 + *(v69 - 24)) = 1;
  v68.__r_.__value_.__s.__data_[0] = 46;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v69, &v68);
  *(&v71 + *(v69 - 24)) = 2;
  MEMORY[0x29C275260](&v69, *(this + 10));
  *(&v71 + *(v69 - 24)) = 1;
  if (*(this + 11) != -1)
  {
    v68.__r_.__value_.__s.__data_[0] = 45;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v69, &v68);
    MEMORY[0x29C275250](&v69, *(this + 11));
  }

  v14 = 0x7FFFFFFFFFFFFFF7;
  memset(a2, 170, sizeof(std::string));
  v15 = *(this + 31);
  if (v15 >= 0)
  {
    v16 = *(this + 31);
  }

  else
  {
    v16 = *(this + 2);
  }

  v17 = v16 + 1;
  if (v16 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v66 = a2;
  if (v17 < 0x17)
  {
    memset(&v68, 0, sizeof(v68));
    v19 = &v68;
    *(&v68.__r_.__value_.__s + 23) = v16 + 1;
    if (!v16)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if ((v17 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v17 | 7) + 1;
    }

    v19 = operator new(v18);
    v68.__r_.__value_.__l.__size_ = v16 + 1;
    v68.__r_.__value_.__r.__words[2] = v18 | 0x8000000000000000;
    v68.__r_.__value_.__r.__words[0] = v19;
  }

  if (v15 >= 0)
  {
    v20 = this + 8;
  }

  else
  {
    v20 = *(this + 1);
  }

  memmove(v19, v20, v16);
LABEL_21:
  *(&v19->__r_.__value_.__l.__data_ + v16) = 32;
  if ((v76 & 0x10) != 0)
  {
    v13 = &v72 + 1;
    v23 = *(&v75 + 1);
    if (*(&v75 + 1) < v73)
    {
      *(&v75 + 1) = v73;
      v23 = v73;
    }
  }

  else
  {
    if ((v76 & 8) == 0)
    {
      v21 = 0;
      *(&__dst.__r_.__value_.__s + 23) = 0;
      p_dst = &__dst;
      goto LABEL_36;
    }

    v23 = v72;
  }

  v24 = *v13;
  v21 = v23 - *v13;
  if (v21 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v21 >= 0x17)
  {
    if ((v21 | 7) == 0x17)
    {
      v25 = 25;
    }

    else
    {
      v25 = (v21 | 7) + 1;
    }

    p_dst = operator new(v25);
    __dst.__r_.__value_.__l.__size_ = v21;
    __dst.__r_.__value_.__r.__words[2] = v25 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
    goto LABEL_35;
  }

  *(&__dst.__r_.__value_.__s + 23) = v23 - *v13;
  p_dst = &__dst;
  if (v21)
  {
LABEL_35:
    memmove(p_dst, v24, v21);
  }

LABEL_36:
  p_dst->__r_.__value_.__s.__data_[v21] = 0;
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = &__dst;
  }

  else
  {
    v26 = __dst.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __dst.__r_.__value_.__l.__size_;
  }

  v28 = std::string::append(&v68, v26, size);
  v29 = *&v28->__r_.__value_.__l.__data_;
  v30 = v66;
  v66->__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
  *&v66->__r_.__value_.__l.__data_ = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v68.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_44:
      v31 = *(this + 71);
      if ((v31 & 0x8000000000000000) == 0)
      {
        goto LABEL_45;
      }

LABEL_49:
      if (!*(this + 7))
      {
        goto LABEL_71;
      }

      goto LABEL_50;
    }
  }

  else if ((SHIBYTE(v68.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_44;
  }

  operator delete(v68.__r_.__value_.__l.__data_);
  v31 = *(this + 71);
  if ((v31 & 0x8000000000000000) != 0)
  {
    goto LABEL_49;
  }

LABEL_45:
  if (!v31)
  {
    goto LABEL_71;
  }

LABEL_50:
  v32 = *(this + 7);
  if ((v31 & 0x80000000) == 0)
  {
    v33 = v31;
  }

  else
  {
    v33 = *(this + 7);
  }

  v34 = v33 + 1;
  if (v33 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v34 < 0x17)
  {
    v68.__r_.__value_.__r.__words[2] = 0;
    *(&v68.__r_.__value_.__s + 23) = v33 + 1;
    v37 = &v68.__r_.__value_.__s.__data_[1];
    *&v68.__r_.__value_.__l.__data_ = 0x5FuLL;
    if (!v33)
    {
      goto LABEL_64;
    }
  }

  else
  {
    if ((v34 | 7) == 0x17)
    {
      v35 = 25;
    }

    else
    {
      v35 = (v34 | 7) + 1;
    }

    v36 = operator new(v35);
    v68.__r_.__value_.__l.__size_ = v33 + 1;
    v68.__r_.__value_.__r.__words[2] = v35 | 0x8000000000000000;
    v68.__r_.__value_.__r.__words[0] = v36;
    *v36 = 95;
    v37 = v36 + 1;
    v30 = v66;
  }

  if ((v31 & 0x80000000) == 0)
  {
    v38 = this + 48;
  }

  else
  {
    v38 = *(this + 6);
  }

  memmove(v37, v38, v33);
LABEL_64:
  v37[v33] = 0;
  if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v39 = &v68;
  }

  else
  {
    v39 = v68.__r_.__value_.__r.__words[0];
  }

  if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v40 = HIBYTE(v68.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v40 = v68.__r_.__value_.__l.__size_;
  }

  std::string::append(v30, v39, v40);
  if ((SHIBYTE(v68.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_71:
    v41 = *(this + 95);
    if ((v41 & 0x8000000000000000) == 0)
    {
      goto LABEL_72;
    }

LABEL_75:
    if (!*(this + 10))
    {
      goto LABEL_123;
    }

    goto LABEL_76;
  }

  operator delete(v68.__r_.__value_.__l.__data_);
  v41 = *(this + 95);
  if ((v41 & 0x8000000000000000) != 0)
  {
    goto LABEL_75;
  }

LABEL_72:
  if (!v41)
  {
    goto LABEL_123;
  }

LABEL_76:
  v42 = *(this + 10);
  if ((v41 & 0x80000000) == 0)
  {
    v43 = v41;
  }

  else
  {
    v43 = *(this + 10);
  }

  v44 = v43 + 7;
  if (v43 + 7 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v44 < 0x17)
  {
    *&__dst.__r_.__value_.__r.__words[1] = 0uLL;
    *(&__dst.__r_.__value_.__s + 23) = v43 + 7;
    v47 = &__dst.__r_.__value_.__s.__data_[7];
    strcpy(&__dst, "( from ");
    if (!v43)
    {
      goto LABEL_90;
    }
  }

  else
  {
    if ((v44 | 7) == 0x17)
    {
      v45 = 25;
    }

    else
    {
      v45 = (v44 | 7) + 1;
    }

    v46 = operator new(v45);
    __dst.__r_.__value_.__l.__size_ = v43 + 7;
    __dst.__r_.__value_.__r.__words[2] = v45 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = v46;
    *v46 = 1919295528;
    v47 = v46 + 7;
    *(v46 + 3) = 544042866;
  }

  if ((v41 & 0x80000000) == 0)
  {
    v48 = this + 72;
  }

  else
  {
    v48 = *(this + 9);
  }

  memmove(v47, v48, v43);
LABEL_90:
  v47[v43] = 0;
  v49 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v49 = __dst.__r_.__value_.__l.__size_;
    v52 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v52 - __dst.__r_.__value_.__l.__size_ < 2)
    {
      v50 = __dst.__r_.__value_.__l.__size_ + 2;
      if (0x7FFFFFFFFFFFFFF7 - (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __dst.__r_.__value_.__l.__size_ + 2 - v52)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v51 = __dst.__r_.__value_.__r.__words[0];
      if (v52 > 0x3FFFFFFFFFFFFFF2)
      {
        v55 = 0;
LABEL_105:
        v56 = operator new(v14);
        v57 = v56;
        if (v49)
        {
          memmove(v56, v51, v49);
        }

        *(v57 + v49) = 10528;
        if (!v55)
        {
          operator delete(v51);
        }

        __dst.__r_.__value_.__l.__size_ = v50;
        __dst.__r_.__value_.__r.__words[2] = v14 | 0x8000000000000000;
        __dst.__r_.__value_.__r.__words[0] = v57;
        v58 = (v57 + v50);
        goto LABEL_115;
      }

LABEL_96:
      v53 = 2 * v52;
      if (v50 > 2 * v52)
      {
        v53 = v50;
      }

      if ((v53 | 7) == 0x17)
      {
        v54 = 25;
      }

      else
      {
        v54 = (v53 | 7) + 1;
      }

      if (v53 >= 0x17)
      {
        v14 = v54;
      }

      else
      {
        v14 = 23;
      }

      v55 = v52 == 22;
      goto LABEL_105;
    }

    v59 = __dst.__r_.__value_.__r.__words[0];
    *(__dst.__r_.__value_.__r.__words[0] + __dst.__r_.__value_.__l.__size_) = 10528;
    v60 = v49 + 2;
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_111;
    }

LABEL_113:
    __dst.__r_.__value_.__l.__size_ = v60;
    goto LABEL_114;
  }

  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) - 21) < 2)
  {
    v50 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]) + 2;
    v51 = &__dst;
    v52 = 22;
    goto LABEL_96;
  }

  v59 = &__dst;
  *(&__dst.__r_.__value_.__l.__data_ + SHIBYTE(__dst.__r_.__value_.__r.__words[2])) = 10528;
  v60 = v49 + 2;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_113;
  }

LABEL_111:
  *(&__dst.__r_.__value_.__s + 23) = v60 & 0x7F;
LABEL_114:
  v58 = v59 + v60;
LABEL_115:
  *v58 = 0;
  v68 = __dst;
  memset(&__dst, 0, sizeof(__dst));
  if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v61 = &v68;
  }

  else
  {
    v61 = v68.__r_.__value_.__r.__words[0];
  }

  if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v62 = HIBYTE(v68.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v62 = v68.__r_.__value_.__l.__size_;
  }

  std::string::append(v30, v61, v62);
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_123;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_123;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_123:
  v69 = *MEMORY[0x29EDC9538];
  *(&v69 + *(v69 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *&v70 = v64;
  if (SBYTE7(v75) < 0)
  {
    operator delete(__p[0]);
  }

  *&v70 = v65;
  std::locale::~locale(&v70 + 1);
  std::ostream::~ostream();
  return MEMORY[0x29C2752F0](&v77);
}

void sub_297796D90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, std::locale a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (*(a13 + 23) < 0)
  {
    operator delete(*a13);
    std::ostringstream::~ostringstream(&a26);
    MEMORY[0x29C2752F0](a12);
    _Unwind_Resume(a1);
  }

  std::ostringstream::~ostringstream(&a26);
  MEMORY[0x29C2752F0](a12);
  _Unwind_Resume(a1);
}

_BYTE *ETLFirmwareVersion::createWithVersionString(uint64_t a1)
{
  v2 = operator new(0x60uLL);
  *v2 = &unk_2A1E537A8;
  v2[31] = 7;
  strcpy(v2 + 8, "Phoenix");
  *(v2 + 4) = 0;
  *(v2 + 5) = 0xFFFFFFFF00000000;
  *(v2 + 3) = 0u;
  *(v2 + 4) = 0u;
  *(v2 + 5) = 0u;
  if (!ETLFirmwareVersion::initWithVersionString(v2, a1))
  {
    (*(*v2 + 8))(v2);
    return 0;
  }

  return v2;
}

_BYTE *ETLFirmwareVersion::createWithFolderName(const void **a1)
{
  v2 = operator new(0x60uLL);
  *v2 = &unk_2A1E537A8;
  v2[31] = 7;
  strcpy(v2 + 8, "Phoenix");
  *(v2 + 4) = 0;
  *(v2 + 5) = 0xFFFFFFFF00000000;
  *(v2 + 3) = 0u;
  *(v2 + 4) = 0u;
  *(v2 + 5) = 0u;
  if (!ETLFirmwareVersion::initWithFolderName(v2, a1))
  {
    (*(*v2 + 8))(v2);
    return 0;
  }

  return v2;
}

void std::__throw_length_error[abi:ne200100]()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception);
  __cxa_throw(exception, off_29EE6DEE8, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1)
{
  result = std::logic_error::logic_error(a1, "basic_string");
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

void *std::string::__assign_no_alias<true>(void *__dst, const void *a2, size_t __len)
{
  if (__len > 0x16)
  {
    if (__len - 0x7FFFFFFFFFFFFFF7 <= 0x800000000000001ELL)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v7 = 44;
    if (__len > 0x2C)
    {
      v7 = __len;
    }

    v8 = (v7 | 7) + 1;
    v5 = operator new(v8);
    memcpy(v5, a2, __len);
    __dst[1] = __len;
    __dst[2] = v8 | 0x8000000000000000;
    *__dst = v5;
  }

  else
  {
    *(__dst + 23) = __len;
    v5 = __dst;
    if (__len)
    {
      memmove(__dst, a2, __len);
      v5 = __dst;
    }
  }

  *(v5 + __len) = 0;
  return __dst;
}

void **std::string::__assign_no_alias<false>(void **a1, const void *a2, size_t __len)
{
  v5 = a1[2];
  v6 = v5 & 0x7FFFFFFFFFFFFFFFLL;
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) <= __len)
  {
    if (0x7FFFFFFFFFFFFFF7 - v6 < __len - v6 + 1)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v9 = v6 - 1;
    v10 = a1;
    if ((v5 & 0x8000000000000000) != 0)
    {
      v10 = *a1;
    }

    v11 = 2 * v9;
    if (__len > 2 * v9)
    {
      v11 = __len;
    }

    if ((v11 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v11 | 7) + 1;
    }

    v13 = v11 >= 0x17;
    v14 = 23;
    if (v13)
    {
      v14 = v12;
    }

    if (v9 <= 0x3FFFFFFFFFFFFFF2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0x7FFFFFFFFFFFFFF7;
    }

    v16 = operator new(v15);
    v7 = v16;
    if (__len)
    {
      memcpy(v16, a2, __len);
    }

    if (v9 != 22)
    {
      operator delete(v10);
    }

    a1[1] = __len;
    a1[2] = (v15 | 0x8000000000000000);
    *a1 = v7;
  }

  else
  {
    v7 = *a1;
    a1[1] = __len;
    if (__len)
    {
      memmove(v7, a2, __len);
    }
  }

  *(v7 + __len) = 0;
  return a1;
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x29EDC9538];
  v3 = *MEMORY[0x29EDC9538];
  *a1 = *MEMORY[0x29EDC9538];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2)
{
  v21[0] = 0xAAAAAAAAAAAAAAAALL;
  v21[1] = 0xAAAAAAAAAAAAAAAALL;
  MEMORY[0x29C275220](v21, a1);
  if (LOBYTE(v21[0]) == 1)
  {
    v4 = a1 + *(*a1 - 24);
    v5 = *(v4 + 5);
    v6 = *(v4 + 2);
    v7 = *(v4 + 36);
    if (v7 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v9 = std::locale::use_facet(__b, MEMORY[0x29EDC93D0]);
      v7 = (v9->__vftable[2].~facet_0)(v9, 32);
      std::locale::~locale(__b);
      *(v4 + 36) = v7;
      if ((v6 & 0xB0) == 0x20)
      {
        v8 = a2 + 1;
      }

      else
      {
        v8 = a2;
      }

      if (!v5)
      {
        goto LABEL_35;
      }
    }

    else
    {
      if ((*(v4 + 2) & 0xB0) == 0x20)
      {
        v8 = a2 + 1;
      }

      else
      {
        v8 = a2;
      }

      if (!v5)
      {
        goto LABEL_35;
      }
    }

    v10 = *(v4 + 3);
    v11 = v10 <= 1;
    v12 = v10 - 1;
    if (v11)
    {
      v13 = 0;
    }

    else
    {
      v13 = v12;
    }

    if (v8 - a2 < 1 || (*(*v5 + 96))(v5, a2, v8 - a2) == v8 - a2)
    {
      if (v13 >= 1)
      {
        memset(__b, 170, sizeof(__b));
        if (v13 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v13 >= 0x17)
        {
          if ((v13 | 7) == 0x17)
          {
            v15 = 25;
          }

          else
          {
            v15 = (v13 | 7) + 1;
          }

          v14 = operator new(v15);
          __b[1].__locale_ = v13;
          __b[2].__locale_ = (v15 | 0x8000000000000000);
          __b[0].__locale_ = v14;
        }

        else
        {
          HIBYTE(__b[2].__locale_) = v13;
          v14 = __b;
        }

        memset(v14, v7, v13);
        *(v14 + v13) = 0;
        if (SHIBYTE(__b[2].__locale_) >= 0)
        {
          locale = __b;
        }

        else
        {
          locale = __b[0].__locale_;
        }

        v17 = (*(*v5 + 96))(v5, locale, v13);
        if (SHIBYTE(__b[2].__locale_) < 0)
        {
          v18 = v17;
          operator delete(__b[0].__locale_);
          if (v18 != v13)
          {
            goto LABEL_35;
          }
        }

        else if (v17 != v13)
        {
          goto LABEL_35;
        }
      }

      v19 = a2 + 1 - v8;
      if (v19 < 1 || (*(*v5 + 96))(v5, v8, v19) == v19)
      {
        *(v4 + 3) = 0;
        goto LABEL_36;
      }
    }

LABEL_35:
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
  }

LABEL_36:
  MEMORY[0x29C275230](v21);
  return a1;
}

void sub_2977976E8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x29C275230](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v17 + *(*v17 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x2977976BCLL);
}

uint64_t ETLRouterSequenceGetLast(uint64_t a1)
{
  do
  {
    v1 = a1;
    a1 = *(a1 + 8);
  }

  while (a1);
  return v1;
}

uint64_t ETLRouterCreateRouterSequenceCommand(uint64_t a1, uint64_t a2)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v4, v5, v6, v7, v8, v9, FreeSpace);
    return 0;
  }

  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v10, v11, v12, v13, v14, v15, v41);
    return 0;
  }

  if (*a2)
  {
    return 0;
  }

  v17 = *(a2 + 8);
  if (!v17)
  {
    return 1;
  }

  while (HDLCFrameGetFreeSpace() > 2)
  {
    v24 = *v17;
    v25 = HDLCFrameInjectUnsignedChar();
    result = 0;
    v26 = *v17;
    if (*v17 > 3)
    {
      goto LABEL_14;
    }

LABEL_25:
    if (v26 == 2)
    {
LABEL_32:
      if (!v25)
      {
        return 0;
      }

      result = HDLCFrameInjectUnsignedShort();
      if (!result)
      {
        return result;
      }

      if (HDLCFrameGetFreeSpace() <= 3)
      {
        goto LABEL_50;
      }

      v37 = *(v17 + 8);
      result = HDLCFrameInjectUnsignedShort();
      if (!result)
      {
        return result;
      }

      v38 = *(v17 + 10);
      result = HDLCFrameInjectUnsignedShort();
      v17 = *(v17 + 1);
      if (!v17)
      {
        return result;
      }

      goto LABEL_11;
    }

    if (v26 != 3)
    {
      return result;
    }

    if (!v25)
    {
      return 0;
    }

    result = HDLCFrameInjectUnsignedShort();
    if (!result)
    {
      return result;
    }

    if (HDLCFrameGetFreeSpace() <= 1)
    {
      v40 = 2;
      goto LABEL_52;
    }

    v36 = *(v17 + 8);
    result = HDLCFrameInjectUnsignedShort();
    v17 = *(v17 + 1);
    if (!v17)
    {
      return result;
    }

LABEL_11:
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", v18, v19, v20, v21, v22, v23, 3);
  v25 = 0;
  result = 0;
  v26 = *v17;
  if (*v17 <= 3)
  {
    goto LABEL_25;
  }

LABEL_14:
  if (v26 == 4)
  {
    goto LABEL_32;
  }

  if (v26 != 5)
  {
    if (v26 != 255)
    {
      return result;
    }

    if (!v25)
    {
      return 0;
    }

    result = HDLCFrameInjectUnsignedShort();
    if (!result)
    {
      return result;
    }

    if (HDLCFrameGetFreeSpace() <= 3)
    {
      goto LABEL_50;
    }

    v33 = v17[16];
    result = HDLCFrameInjectUnsignedChar();
    if (!result)
    {
      return result;
    }

    v34 = v17[17];
    result = HDLCFrameInjectUnsignedChar();
    if (!result)
    {
      return result;
    }

    v35 = *(v17 + 9);
    result = HDLCFrameInjectUnsignedShort();
    v17 = *(v17 + 1);
    if (!v17)
    {
      return result;
    }

    goto LABEL_11;
  }

  if (*(v17 + 4))
  {
    if (!v25)
    {
      return 0;
    }

    result = HDLCFrameInjectUnsignedShort();
    if (!result)
    {
      return result;
    }

    if (HDLCFrameGetFreeSpace() <= 3)
    {
LABEL_50:
      v40 = 4;
      goto LABEL_52;
    }

    v39 = *(v17 + 4);
    result = HDLCFrameInjectUnsignedInt();
    v17 = *(v17 + 1);
    if (!v17)
    {
      return result;
    }

    goto LABEL_11;
  }

  if (!v25)
  {
    return 0;
  }

  result = HDLCFrameInjectUnsignedShort();
  if (!result)
  {
    return result;
  }

  if (HDLCFrameGetFreeSpace())
  {
    result = HDLCFrameInjectUnsignedChar();
    v17 = *(v17 + 1);
    if (!v17)
    {
      return result;
    }

    goto LABEL_11;
  }

  v40 = 1;
LABEL_52:
  _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", v27, v28, v29, v30, v31, v32, v40);
  return 0;
}

uint64_t ETLRouterParseRouterSequenceResponse(int **a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = *MEMORY[0x29EDCA608];
  v9 = *(a1 + 2);
  if (v9 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a3, a4, a5, a6, a7, a8, *(a1 + 2));
LABEL_11:
    result = 0;
    *a2 = 1;
    goto LABEL_12;
  }

  v10 = *a1;
  v11 = **a1;
  if (v11 != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, **a1);
    goto LABEL_11;
  }

  if (BYTE1(v11) != 253)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, BYTE1(v11));
    goto LABEL_11;
  }

  v12 = HIWORD(v11);
  if (v12 != 49)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, v12);
    goto LABEL_11;
  }

  if (v9 == 4)
  {
    result = 1;
  }

  else if (*(v10 + 4) == 255)
  {
    v15 = v9 - 11 < 0xFFFFFFFC;
    v16 = *(v10 + 7);
    v17 = *(v10 + 8);
    v18 = *(v10 + 9);
    __memcpy_chk();
    *a2 = 0;
    _ETLDebugPrint("ETLRouterParseVersionPayload", "Got version %u.%u.%u, notes '%s'\n", v19, v20, v21, v22, v23, v24, v16);
    result = v15;
  }

  else
  {
    *a2 = 0;
    result = 1;
  }

LABEL_12:
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ETLRouterSendRouterSequence(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a2, int a3, _DWORD *a4, uint64_t a5)
{
  memset(v24, 0, sizeof(v24));
  v25 = 0;
  memset(v22, 0, sizeof(v22));
  v23 = 0;
  *a4 = 1;
  if (HDLCFrameCreateUplink() && ETLRouterCreateRouterSequenceCommand(v24, a2) && (v10 = malloc((2 * DWORD2(v24[0]) + 32))) != 0)
  {
    v11 = v10;
    v12 = HDLCFrameEncode();
    if (v12)
    {
      v13 = -1431655766;
      v26 = -1431655766;
      if ((_ETLDebugFlags & 2) != 0)
      {
        off_2A18A5818(&str_3, 0, v11, v12);
      }

      if (*a1)
      {
        v14 = (*a1)(a1, v11, v12, &v26, 1, a5, 0);
        v13 = v26;
      }

      else
      {
        v14 = 0;
      }

      if (v13 == v12)
      {
        v12 = v14;
      }

      else
      {
        v12 = 0;
      }
    }

    free(v11);
    if (!a3)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v12 = 0;
    if (!a3)
    {
LABEL_21:
      *a4 = 0;
      goto LABEL_22;
    }
  }

  if (v12)
  {
    LOBYTE(v26) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    v12 = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, v22, &_ETLResponseRingBuffer, &v26, a5) && v26 == 75)
    {
      v12 = ETLRouterParseRouterSequenceResponse(v22, a4, v15, v16, v17, v18, v19, v20);
    }
  }

LABEL_22:
  HDLCFrameFree();
  HDLCFrameFree();
  return v12;
}

BOOL ETLRouterGetVersion(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), unsigned int *a2, _DWORD *a3, uint64_t a4)
{
  v49 = *MEMORY[0x29EDCA608];
  v41[0] = 0;
  v41[1] = 0;
  v8 = *a2;
  v40[1] = 0;
  v40[0] = 255;
  v40[2] = v8;
  v9 = v41;
  do
  {
    v10 = v9;
    v9 = v9[1];
  }

  while (v9);
  v10[1] = v40;
  v42 = 0u;
  v43 = 0u;
  v44 = 0;
  v46 = 0u;
  v47 = 0u;
  v48 = 0;
  *a3 = 1;
  if (!HDLCFrameCreateUplink())
  {
    goto LABEL_12;
  }

  if (!ETLRouterCreateRouterSequenceCommand(&v42, v41))
  {
    goto LABEL_12;
  }

  v11 = malloc((2 * DWORD2(v42) + 32));
  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = v11;
  v13 = HDLCFrameEncode();
  if (!v13)
  {
    free(v12);
LABEL_12:
    *a3 = 0;
    HDLCFrameFree();
    HDLCFrameFree();
    result = 0;
    goto LABEL_13;
  }

  v14 = v13;
  v15 = -1431655766;
  v45 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v12, v13);
  }

  if (*a1)
  {
    v16 = (*a1)(a1, v12, v14, &v45, 1, a4, 0);
    v15 = v45;
  }

  else
  {
    v16 = 0;
  }

  free(v12);
  *a3 = 0;
  HDLCFrameFree();
  HDLCFrameFree();
  result = 0;
  if (v16 && v15 == v14)
  {
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    LOBYTE(v46) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    v19 = ETLFindMatchingResponseUsingBuffer(a1, &v42, &_ETLResponseRingBuffer, &v46, a4);
    v26 = 0;
    if (!v19 || v46 != 75)
    {
      goto LABEL_33;
    }

    v27 = DWORD2(v42);
    if (DWORD2(v42) < 4)
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", v20, v21, v22, v23, v24, v25, DWORD2(v42));
    }

    else
    {
      v28 = v42;
      v29 = *v42;
      if (*v42 == 75)
      {
        if (BYTE1(v29) == 253)
        {
          v30 = HIWORD(v29);
          if (v30 == 49)
          {
            *a3 = 1;
            if (v27 != 4 && *(v28 + 4) == 255)
            {
              v32 = (v27 - 11) < 0xFFFFFFFC;
              v46 = 0u;
              v47 = 0u;
              v33 = *(v28 + 7);
              *a2 = v33;
              *(a2 + 1) = *(v28 + 8);
              *(a2 + 1) = *(v28 + 9);
              __memcpy_chk();
              *a3 = 0;
              _ETLDebugPrint("ETLRouterParseVersionPayload", "Got version %u.%u.%u, notes '%s'\n", v34, v35, v36, v37, v38, v39, v33);
              v26 = v32;
            }

            else
            {
              v26 = 0;
            }

            goto LABEL_33;
          }

          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v20, v21, v22, v23, v24, v25, v30);
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", v20, v21, v22, v23, v24, v25, BYTE1(v29));
        }
      }

      else
      {
        _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", v20, v21, v22, v23, v24, v25, *v42);
      }
    }

    v26 = 0;
    *a3 = 1;
LABEL_33:
    v31 = v26;
    HDLCFrameFree();
    result = v31;
  }

LABEL_13:
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

__n128 ETLDebugRegisterDelegate(__n128 *a1)
{
  result = *a1;
  *&gDelegate = *a1;
  return result;
}

double ETLDebugSetDefaults()
{
  result = *&gDelegateDefault;
  *&gDelegate = gDelegateDefault;
  _ETLDebugFlags = 3;
  return result;
}

uint64_t ETLDebugRemoveFlags(unsigned int a1)
{
  v1 = _ETLDebugFlags;
  _ETLDebugFlags &= ~a1;
  return v1 & a1;
}

uint64_t _ETLDebugPrint(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (_ETLDebugFlags)
  {
    return gDelegate(result, a2, &a9);
  }

  return result;
}

uint64_t _ETLDebugPrintBinary(uint64_t a1, int a2)
{
  if (a2 == 3 || (_ETLDebugFlags & 2) != 0)
  {
    return off_2A18A5818();
  }

  return result;
}

uint64_t _ETLDebugPrintBinaryVerbose(uint64_t a1, int a2)
{
  if (a2 == 3 || (_ETLDebugFlags & 4) != 0)
  {
    return off_2A18A5818();
  }

  return result;
}

uint64_t APPLIB_DIAG_SEND_SMS(_OWORD *a1, int a2, unsigned int a3, int a4, uint64_t a5)
{
  v38 = *MEMORY[0x29EDCA608];
  *(a1 + 204) = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  *a1 = 130123;
  *(a1 + 4) = a2;
  if (a2 >= 1)
  {
    v7 = a2 + 1;
    v8 = a1 + a2 + 4;
    do
    {
      *v8-- = a3 % 0xA;
      --v7;
      a3 /= 0xAu;
    }

    while (v7 > 1);
  }

  *(a1 + 20) = a4;
  if (a4 >= 1)
  {
    if (a4 < 8 || a1 - a5 + 21 < 0x20)
    {
      v9 = 0;
      goto LABEL_8;
    }

    if (a4 >= 0x20)
    {
      v9 = a4 & 0x7FFFFFE0;
      v28 = (a5 + 16);
      v29 = (a1 + 37);
      v30 = v9;
      do
      {
        v31 = *v28;
        *(v29 - 1) = *(v28 - 1);
        *v29 = v31;
        v28 += 2;
        v29 += 2;
        v30 -= 32;
      }

      while (v30);
      if (v9 == a4)
      {
        goto LABEL_10;
      }

      if ((a4 & 0x18) == 0)
      {
LABEL_8:
        v10 = a4 - v9;
        v11 = a1 + v9 + 21;
        v12 = (a5 + v9);
        do
        {
          v13 = *v12++;
          *v11++ = v13;
          --v10;
        }

        while (v10);
        goto LABEL_10;
      }
    }

    else
    {
      v9 = 0;
    }

    v32 = v9;
    v9 = a4 & 0x7FFFFFF8;
    v33 = (a5 + v32);
    v34 = (a1 + v32 + 21);
    v35 = v32 - v9;
    do
    {
      v36 = *v33++;
      *v34++ = v36;
      v35 += 8;
    }

    while (v35);
    if (v9 != a4)
    {
      goto LABEL_8;
    }
  }

LABEL_10:
  v14 = a4 + 21;
  v15 = 8 * v14;
  if (((8 * v14) & 0xFFF8) != 0)
  {
    LOWORD(v16) = -1;
    v17 = a1;
    do
    {
      v18 = *v17++;
      v16 = crc_16_l_table[(v18 ^ v16)] ^ ((v16 & 0xFF00) >> 8);
      v15 -= 8;
    }

    while (v15);
    *(a1 + v14) = ~v16;
    *(a1 + a4 + 22) = ~v16 >> 8;
    if (a4 > 233)
    {
      goto LABEL_14;
    }
  }

  else
  {
    *(a1 + v14) = 0;
    *(a1 + a4 + 22) = 0;
    if (a4 > 233)
    {
LABEL_14:
      result = 0xFFFFFFFFLL;
      goto LABEL_24;
    }
  }

  bzero(__src, 0x800uLL);
  if (a4 < -22)
  {
    v20 = 0;
  }

  else
  {
    v20 = 0;
    v21 = (a4 + 23);
    v22 = a1;
    do
    {
      while (1)
      {
        v24 = *v22++;
        v23 = v24;
        v25 = v20;
        v26 = v20 + 1;
        if ((v24 - 125) > 1)
        {
          break;
        }

        v20 += 2;
        __src[v26] = v23 & 0x5F;
        __src[v25] = 125;
        if (!--v21)
        {
          goto LABEL_23;
        }
      }

      ++v20;
      __src[v25] = v23;
      --v21;
    }

    while (v21);
  }

LABEL_23:
  memcpy(a1, __src, v20);
  result = (v20 + 1);
  *(a1 + v20) = 126;
LABEL_24:
  v27 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_ENABLE_MT_SMS_STORE(char *a1, unsigned __int8 a2)
{
  v15 = *MEMORY[0x29EDCA608];
  *a1 = 195659;
  v3 = a2;
  a1[4] = a2;
  v4 = crc_16_l_table[a2 ^ 0xA4] ^ 0xFF30;
  v5 = crc_16_l_table[a2 ^ 0xA4] ^ 0x30;
  *(a1 + 5) = v4;
  v6 = HIBYTE(v4);
  bzero(v14, 0x7FBuLL);
  __src = 195659;
  if ((v3 - 125) > 1)
  {
    v13 = v3;
    v7 = 5;
    v8 = 6;
    if ((v5 - 125) > 1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v14[0] = v3 & 0x5F;
  v13 = 125;
  v7 = 6;
  v8 = 7;
  if ((v5 - 125) <= 1)
  {
LABEL_5:
    *(&__src + v8) = v5 & 0x5F;
    LODWORD(v8) = v7 + 2;
    LOBYTE(v5) = 125;
  }

LABEL_6:
  *(&__src + v7) = v5;
  v9 = v8 + 1;
  if ((v6 - 125) <= 1)
  {
    *(&__src + v9) = v6 & 0x5F;
    LOBYTE(v6) = 125;
    LODWORD(v9) = v8 + 2;
  }

  *(&__src + v8) = v6;
  memcpy(a1, &__src, v9);
  a1[v9] = 126;
  v10 = *MEMORY[0x29EDCA608];
  return (v9 + 1);
}

uint64_t APPLIB_DIAG_RECV_MT_SMS(uint64_t a1)
{
  *a1 = 261195;
  *(a1 + 4) = 10627;
  *(a1 + 6) = 126;
  return 7;
}

uint64_t ETLMaverickAddDataCommandHeader()
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v1, v2, v3, v4, v5, v6, FreeSpace);
    return 0;
  }

  else
  {
    result = HDLCFrameInject();
    if ((result & 1) == 0)
    {
      v14 = result;
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v8, v9, v10, v11, v12, v13, v15);
      return v14;
    }
  }

  return result;
}

uint64_t ETLMaverickParseDataResponseHeader(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  v9 = (*(a1 + 8) - v8);
  if (v9 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a3, a4, a5, a6, a7, a8, v9);
    return 0;
  }

  else
  {
    v10 = *(*a1 + v8);
    if (v10 == 75)
    {
      *a2 = v8 + 4;
      if (BYTE1(v10) == 100)
      {
        if (HIWORD(v10) == a3)
        {
          return 1;
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, HIWORD(v10));
          return 0;
        }
      }

      else
      {
        _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, BYTE1(v10));
        return 0;
      }
    }

    else
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, v10);
      return 0;
    }
  }
}

uint64_t ETLMaverickAddBSPCommandHeader()
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v1, v2, v3, v4, v5, v6, FreeSpace);
    return 0;
  }

  else
  {
    result = HDLCFrameInject();
    if ((result & 1) == 0)
    {
      v14 = result;
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v8, v9, v10, v11, v12, v13, v15);
      return v14;
    }
  }

  return result;
}

uint64_t ETLMaverickParseBSPResponseHeader(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  v9 = (*(a1 + 8) - v8);
  if (v9 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a3, a4, a5, a6, a7, a8, v9);
    return 0;
  }

  else
  {
    v10 = *(*a1 + v8);
    if (v10 == 75)
    {
      *a2 = v8 + 4;
      if (BYTE1(v10) == 253)
      {
        if (HIWORD(v10) == a3)
        {
          return 1;
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, HIWORD(v10));
          return 0;
        }
      }

      else
      {
        _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, BYTE1(v10));
        return 0;
      }
    }

    else
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, v10);
      return 0;
    }
  }
}

uint64_t ETLMaverickAddBSPExtCommandGetHeader()
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v1, v2, v3, v4, v5, v6, FreeSpace);
LABEL_7:
    _ETLDebugPrint("ETLMaverickAddBSPExtCommandGetHeader", "Failed on creating BSP Command Heder\n", v20, v21, v22, v23, v24, v25, v27);
    return 0;
  }

  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v7, v8, v9, v10, v11, v12, v26);
    goto LABEL_7;
  }

  if (HDLCFrameGetFreeSpace())
  {
    HDLCFrameInjectUnsignedChar();
    return 1;
  }

  else
  {
    _ETLDebugPrint("ETLMaverickAddBSPExtCommandGetHeader", "Not enough room, need %zu, have %u\n", v13, v14, v15, v16, v17, v18, 2);
    return 0;
  }
}

uint64_t ETLMaverickAddBSPExtCommandSetHeader()
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v1, v2, v3, v4, v5, v6, FreeSpace);
LABEL_7:
    _ETLDebugPrint("ETLMaverickAddBSPExtCommandSetHeader", "Failed on creating BSP Command Heder\n", v20, v21, v22, v23, v24, v25, v27);
    return 0;
  }

  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v7, v8, v9, v10, v11, v12, v26);
    goto LABEL_7;
  }

  if (HDLCFrameGetFreeSpace() > 1)
  {
    HDLCFrameInjectUnsignedChar();
    HDLCFrameInjectUnsignedChar();
    return 1;
  }

  _ETLDebugPrint("ETLMaverickAddBSPExtCommandSetHeader", "Not enough room, need %zu, have %u\n", v13, v14, v15, v16, v17, v18, 2);
  return 0;
}

uint64_t ETLMaverickAddRFCommandHeader()
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v1, v2, v3, v4, v5, v6, FreeSpace);
    return 0;
  }

  else
  {
    result = HDLCFrameInject();
    if ((result & 1) == 0)
    {
      v14 = result;
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v8, v9, v10, v11, v12, v13, v15);
      return v14;
    }
  }

  return result;
}

uint64_t ETLMaverickParseRFResponseHeader(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  v9 = (*(a1 + 8) - v8);
  if (v9 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a3, a4, a5, a6, a7, a8, v9);
    return 0;
  }

  else
  {
    v10 = *(*a1 + v8);
    if (v10 == 75)
    {
      *a2 = v8 + 4;
      if (BYTE1(v10) == 251)
      {
        if (HIWORD(v10) == a3)
        {
          return 1;
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, HIWORD(v10));
          return 0;
        }
      }

      else
      {
        _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, BYTE1(v10));
        return 0;
      }
    }

    else
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, v10);
      return 0;
    }
  }
}

uint64_t ETLMaverickAddFACTORYCommandHeader()
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v1, v2, v3, v4, v5, v6, FreeSpace);
    return 0;
  }

  else
  {
    result = HDLCFrameInject();
    if ((result & 1) == 0)
    {
      v14 = result;
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v8, v9, v10, v11, v12, v13, v15);
      return v14;
    }
  }

  return result;
}

uint64_t ETLMaverickParseFACTORYResponseHeader(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  v9 = (*(a1 + 8) - v8);
  if (v9 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a3, a4, a5, a6, a7, a8, v9);
    return 0;
  }

  else
  {
    v10 = *(*a1 + v8);
    if (v10 == 75)
    {
      *a2 = v8 + 4;
      if (BYTE1(v10) == 254)
      {
        if (HIWORD(v10) == a3)
        {
          return 1;
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, HIWORD(v10));
          return 0;
        }
      }

      else
      {
        _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, BYTE1(v10));
        return 0;
      }
    }

    else
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, v10);
      return 0;
    }
  }
}

uint64_t ETLMaverickAddCDMACommandHeader()
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v1, v2, v3, v4, v5, v6, FreeSpace);
    return 0;
  }

  else
  {
    result = HDLCFrameInject();
    if ((result & 1) == 0)
    {
      v14 = result;
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v8, v9, v10, v11, v12, v13, v15);
      return v14;
    }
  }

  return result;
}

uint64_t ETLMaverickParseCDMAResponseHeader(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  v9 = (*(a1 + 8) - v8);
  if (v9 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a3, a4, a5, a6, a7, a8, v9);
    return 0;
  }

  else
  {
    v10 = *(*a1 + v8);
    if (v10 == 75)
    {
      *a2 = v8 + 4;
      if (BYTE1(v10) == 252)
      {
        if (HIWORD(v10) == a3)
        {
          return 1;
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, HIWORD(v10));
          return 0;
        }
      }

      else
      {
        _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, BYTE1(v10));
        return 0;
      }
    }

    else
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, v10);
      return 0;
    }
  }
}

uint64_t ETLMaverickCreateAPWakeCommand()
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v1, v2, v3, v4, v5, v6, FreeSpace);
    return 0;
  }

  else if (HDLCFrameInject())
  {
    if (HDLCFrameGetFreeSpace() <= 1)
    {
      _ETLDebugPrint("ETLMaverickCreateAPWakeCommand", "Not enough room, need %zu, have %u\n", v13, v14, v15, v16, v17, v18, 2);
      return 0;
    }

    else
    {
      HDLCFrameInjectUnsignedShort();
      return 1;
    }
  }

  else
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v7, v8, v9, v10, v11, v12, v20);
    return 0;
  }
}

uint64_t ETLMaverickParseAPWakeResponse(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[2];
  if (v8 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a3, a4, a5, a6, a7, a8, a1[2]);
    return 0;
  }

  else
  {
    v9 = **a1;
    if (v9 == 75)
    {
      if (BYTE1(v9) == 253)
      {
        v10 = HIWORD(v9);
        if (v10 == 13)
        {
          if (v8 - 4 <= 1)
          {
            _ETLDebugPrint("ETLMaverickParseAPWakeResponse", "response requires %u bytes, got %u\n", a3, a4, a5, a6, a7, a8, 2);
            return 0;
          }

          else if (*(*a1 + 4))
          {
            return 1;
          }

          else
          {
            _ETLDebugPrint("ETLMaverickParseAPWakeResponse", "Status was %u\n", a3, a4, a5, a6, a7, a8, 0);
            return 0;
          }
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, v10);
          return 0;
        }
      }

      else
      {
        _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, BYTE1(v9));
        return 0;
      }
    }

    else
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, **a1);
      return 0;
    }
  }
}

uint64_t ETLMaverickCreateTxModeSwitchCommand()
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v1, v2, v3, v4, v5, v6, FreeSpace);
    return 0;
  }

  else if (HDLCFrameInject())
  {
    if (HDLCFrameGetFreeSpace() <= 1)
    {
      _ETLDebugPrint("ETLMaverickCreateTxModeSwitchCommand", "Not enough room, need %zu, have %u\n", v13, v14, v15, v16, v17, v18, 2);
      return 0;
    }

    else
    {
      HDLCFrameInjectUnsignedShort();
      return 1;
    }
  }

  else
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v7, v8, v9, v10, v11, v12, v20);
    return 0;
  }
}

uint64_t ETLMaverickParseTxModeSwitchResponse(int **a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 2);
  v9 = v8 - 4;
  if (v8 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a3, a4, a5, a6, a7, a8, *(a1 + 2));
LABEL_15:
    _ETLDebugPrint("ETLMaverickParseTxModeSwitchResponse", "Failed to parse BSP header from response\n", v16, v17, v18, v19, v20, v21, v22);
    return 0;
  }

  v10 = *a1;
  v11 = **a1;
  if (v11 != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, **a1);
    goto LABEL_15;
  }

  if (BYTE1(v11) != 253)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, BYTE1(v11));
    goto LABEL_15;
  }

  v12 = HIWORD(v11);
  if (v12 != 6)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, v12);
    goto LABEL_15;
  }

  if (v9 <= 3)
  {
    _ETLDebugPrint("ETLMaverickParseTxModeSwitchResponse", "response requires %u bytes, got %u\n", a3, a4, a5, a6, a7, a8, 4);
    return 0;
  }

  else if (*(v10 + 2) == 1)
  {
    v13 = *(v10 + 3);
    v14 = a2 - 3;
    if (a2 <= 2)
    {
      v14 = a2;
    }

    if (v13 == v14)
    {
      return 1;
    }

    else
    {
      _ETLDebugPrint("ETLMaverickParseTxModeSwitchResponse", "Mode doesn't match %u, expected %u\n", a3, a4, a5, a6, a7, a8, v13);
      return 0;
    }
  }

  else
  {
    _ETLDebugPrint("ETLMaverickParseTxModeSwitchResponse", "Status was %u\n", a3, a4, a5, a6, a7, a8, *(v10 + 2));
    return 0;
  }
}

uint64_t ETLMaverickAddRSSICommandHeader()
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v1, v2, v3, v4, v5, v6, FreeSpace);
    return 0;
  }

  else if (HDLCFrameInject())
  {
    if (HDLCFrameGetFreeSpace() <= 1)
    {
      _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", v13, v14, v15, v16, v17, v18, 2);
      return 0;
    }

    else
    {
      HDLCFrameInjectUnsignedShort();
      return 1;
    }
  }

  else
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v7, v8, v9, v10, v11, v12, v20);
    return 0;
  }
}

uint64_t ETLMaverickCreateStartRSSICommand()
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v1, v2, v3, v4, v5, v6, FreeSpace);
    return 0;
  }

  if ((HDLCFrameInject() & 1) == 0)
  {
    v14 = "ETLSubsysAddHeaderInternal";
    v15 = "Failed to inject\n";
LABEL_13:
    _ETLDebugPrint(v14, v15, v7, v8, v9, v10, v11, v12, v17);
    return 0;
  }

  if (HDLCFrameGetFreeSpace() <= 1)
  {
    v16 = 2;
LABEL_12:
    v17 = v16;
    v14 = "ETLRequireFreeSpace";
    v15 = "Need %u bytes free space, but only have %u\n";
    goto LABEL_13;
  }

  HDLCFrameInjectUnsignedShort();
  if (HDLCFrameGetFreeSpace() <= 5)
  {
    v16 = 6;
    goto LABEL_12;
  }

  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();

  return HDLCFrameInjectUnsignedShort();
}

uint64_t ETLMaverickCreateStopRSSICommand()
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v1, v2, v3, v4, v5, v6, FreeSpace);
    return 0;
  }

  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v7, v8, v9, v10, v11, v12, v21);
    return 0;
  }

  if (HDLCFrameGetFreeSpace() <= 1)
  {
    v20 = 2;
LABEL_12:
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", v13, v14, v15, v16, v17, v18, v20);
    return 0;
  }

  HDLCFrameInjectUnsignedShort();
  if (HDLCFrameGetFreeSpace() <= 5)
  {
    v20 = 6;
    goto LABEL_12;
  }

  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();

  return HDLCFrameInjectUnsignedShort();
}

uint64_t ETLMaverickCreateReportRSSICommand()
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v1, v2, v3, v4, v5, v6, FreeSpace);
    return 0;
  }

  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v7, v8, v9, v10, v11, v12, v21);
    return 0;
  }

  if (HDLCFrameGetFreeSpace() <= 1)
  {
    v20 = 2;
LABEL_12:
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", v13, v14, v15, v16, v17, v18, v20);
    return 0;
  }

  HDLCFrameInjectUnsignedShort();
  if (HDLCFrameGetFreeSpace() <= 5)
  {
    v20 = 6;
    goto LABEL_12;
  }

  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();

  return HDLCFrameInjectUnsignedShort();
}

uint64_t ETLMaverickParseRSSICommandResponse(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  v9 = (*(a1 + 8) - v8);
  if (v9 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a3, a4, a5, a6, a7, a8, v9);
    return 0;
  }

  else
  {
    v10 = *(*a1 + v8);
    if (v10 == 75)
    {
      v11 = v8 + 4;
      *a2 = v11;
      if (BYTE1(v10) == 253)
      {
        v12 = HIWORD(v10);
        if (v12 == 15)
        {
          v13 = *(a1 + 8) - v11;
          if (v13 <= 1)
          {
            _ETLDebugPrint("ETLMaverickParseRSSICommandResponse", "Only have %u bytes, need %u\n", a3, a4, a5, a6, a7, a8, v13);
            return 0;
          }

          else
          {
            v14 = *(*a1 + v11);
            if (v14 == a3)
            {
              return 1;
            }

            else
            {
              _ETLDebugPrint("ETLMaverickParseRSSICommandResponse", "Returned subcommand 0x%x mismatches expected 0x%x\n", a3, a4, a5, a6, a7, a8, v14);
              return 0;
            }
          }
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, v12);
          return 0;
        }
      }

      else
      {
        _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, BYTE1(v10));
        return 0;
      }
    }

    else
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, v10);
      return 0;
    }
  }
}

uint64_t ETLMaverickCreateGetTxPowerExtCommand(uint64_t a1, unsigned int a2)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v4, v5, v6, v7, v8, v9, FreeSpace);
    return 0;
  }

  else if (HDLCFrameInject())
  {
    if (HDLCFrameGetFreeSpace() <= 1)
    {
      _ETLDebugPrint("ETLMaverickCreateGetTxPowerExtCommand", "Not enough room, need %zu, have %u\n", v16, v17, v18, v19, v20, v21, 2);
    }

    else if (a2 <= 7)
    {
      HDLCFrameInjectUnsignedShort();
      return 1;
    }

    return 0;
  }

  else
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v10, v11, v12, v13, v14, v15, v23);
    return 0;
  }
}

uint64_t ETLMaverickParseGetTxPowerExtResponse(int **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a3 = 0;
  v8 = *(a1 + 2);
  v9 = v8 - 4;
  if (v8 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a3, a4, a5, a6, a7, a8, *(a1 + 2));
    return 0;
  }

  else
  {
    v10 = *a1;
    v11 = **a1;
    if (v11 == 75)
    {
      if (BYTE1(v11) == 251)
      {
        v12 = HIWORD(v11);
        if (v12 == 16)
        {
          if (v9 <= 9)
          {
            _ETLDebugPrint("ETLMaverickParseGetTxPowerExtResponse", "response requires %u bytes, got %u\n", a3, a4, a5, a6, a7, a8, 10);
            return 0;
          }

          else if (v10[2])
          {
            *a3 = v10[3];
            *(a3 + 2) = v10[4];
            *(a3 + 4) = v10[5];
            *(a3 + 6) = v10[6];
            return 1;
          }

          else
          {
            _ETLDebugPrint("ETLMaverickParseGetTxPowerExtResponse", "Status was %u\n", a3, a4, a5, a6, a7, a8, 0);
            return 0;
          }
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, v12);
          return 0;
        }
      }

      else
      {
        _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, BYTE1(v11));
        return 0;
      }
    }

    else
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, **a1);
      return 0;
    }
  }
}

uint64_t ETLMaverickCreateGetTxPowerCapCommand()
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v1, v2, v3, v4, v5, v6, FreeSpace);
    return 0;
  }

  else if (HDLCFrameInject())
  {
    if (HDLCFrameGetFreeSpace() <= 1)
    {
      _ETLDebugPrint("ETLMaverickCreateGetTxPowerCapCommand", "Not enough room, need %zu, have %u\n", v13, v14, v15, v16, v17, v18, 2);
      return 0;
    }

    else
    {
      HDLCFrameInjectUnsignedShort();
      return 1;
    }
  }

  else
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v7, v8, v9, v10, v11, v12, v20);
    return 0;
  }
}

uint64_t ETLMaverickParseGetTxPowerCapResponse(int **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a2 + 4) = 0;
  *a2 = 0;
  v8 = *(a1 + 2);
  v9 = v8 - 4;
  if (v8 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a3, a4, a5, a6, a7, a8, *(a1 + 2));
    return 0;
  }

  else
  {
    v10 = *a1;
    v11 = **a1;
    if (v11 == 75)
    {
      if (BYTE1(v11) == 253)
      {
        v12 = HIWORD(v11);
        if (v12 == 23)
        {
          if (v9 <= 7)
          {
            _ETLDebugPrint("ETLMaverickParseGetTxPowerCapResponse", "response requires %u bytes, got %u\n", a3, a4, a5, a6, a7, a8, 8);
            return 0;
          }

          else if (v10[2])
          {
            *a2 = v10[3];
            *(a2 + 2) = v10[4];
            *(a2 + 4) = v10[5];
            return 1;
          }

          else
          {
            _ETLDebugPrint("ETLMaverickParseGetTxPowerCapResponse", "Status was %u\n", a3, a4, a5, a6, a7, a8, 0);
            return 0;
          }
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, v12);
          return 0;
        }
      }

      else
      {
        _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, BYTE1(v11));
        return 0;
      }
    }

    else
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, **a1);
      return 0;
    }
  }
}

uint64_t ETLMaverickCreateGetMaxTxPowerCommand()
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v1, v2, v3, v4, v5, v6, FreeSpace);
    return 0;
  }

  else
  {
    result = HDLCFrameInject();
    if ((result & 1) == 0)
    {
      v14 = result;
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v8, v9, v10, v11, v12, v13, v15);
      return v14;
    }
  }

  return result;
}

uint64_t ETLMaverickParseGetMaxTxPowerResponse(int **a1, _WORD *a2, _WORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 2);
  v9 = v8 - 4;
  if (v8 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a3, a4, a5, a6, a7, a8, *(a1 + 2));
    return 0;
  }

  v10 = *a1;
  v11 = **a1;
  if (v11 != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, **a1);
    return 0;
  }

  if (BYTE1(v11) != 251)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, BYTE1(v11));
    return 0;
  }

  v12 = HIWORD(v11);
  if (v12 != 20)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, v12);
    return 0;
  }

  if (v9 <= 5)
  {
    _ETLDebugPrint("ETLMaverickParseGetMaxTxPowerResponse", "response requires %u bytes, got %u\n", a3, a4, a5, a6, a7, a8, 6);
    return 0;
  }

  if (!*(v10 + 2))
  {
    _ETLDebugPrint("ETLMaverickParseGetMaxTxPowerResponse", "Status was %u\n", a3, a4, a5, a6, a7, a8, 0);
    return 0;
  }

  result = 0;
  if (a2)
  {
    if (a3)
    {
      *a3 = *(v10 + 3);
      *a2 = *(v10 + 4);
      return 1;
    }
  }

  return result;
}

uint64_t ETLMaverickCreateSetAutoAnswerCommand()
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v1, v2, v3, v4, v5, v6, FreeSpace);
  }

  else
  {
    if (HDLCFrameInject())
    {
      if (HDLCFrameGetFreeSpace() > 1)
      {
        HDLCFrameInjectUnsignedChar();
        HDLCFrameInjectUnsignedChar();
        return 1;
      }

      v16 = 2;
      v14 = "ETLMaverickCreateSetAutoAnswerCommand";
      v15 = "Not enough room, need %zu, have %u\n";
    }

    else
    {
      v14 = "ETLSubsysAddHeaderInternal";
      v15 = "Failed to inject\n";
    }

    _ETLDebugPrint(v14, v15, v7, v8, v9, v10, v11, v12, v16);
  }

  return 0;
}

BOOL ETLMaverickParseSetAutoAnswerResponse(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[2];
  v9 = v8 - 4;
  if (v8 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a3, a4, a5, a6, a7, a8, a1[2]);
    return 0;
  }

  else
  {
    v10 = **a1;
    if (v10 == 75)
    {
      if (BYTE1(v10) == 253)
      {
        v11 = HIWORD(v10);
        if (v11 == 40)
        {
          if (v9 <= 1)
          {
            _ETLDebugPrint("ETLMaverickParseSetAutoAnswerResponse", "Received response has only %u bytes, need %u\n", a3, a4, a5, a6, a7, a8, v9);
            return 0;
          }

          else
          {
            return *(*a1 + 4) != 0;
          }
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, v11);
          return 0;
        }
      }

      else
      {
        _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, BYTE1(v10));
        return 0;
      }
    }

    else
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, **a1);
      return 0;
    }
  }
}

uint64_t ETLMaverickCreateWriteDefaultNVsCommand()
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v1, v2, v3, v4, v5, v6, FreeSpace);
    return 0;
  }

  else
  {
    result = HDLCFrameInject();
    if ((result & 1) == 0)
    {
      v14 = result;
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v8, v9, v10, v11, v12, v13, v15);
      return v14;
    }
  }

  return result;
}

uint64_t ETLMaverickParseWriteDefaultNVsResponse(unsigned int **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 2) < 4u)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a3, a4, a5, a6, a7, a8, *(a1 + 2));
    return 0;
  }

  else
  {
    v8 = **a1;
    if (v8 == 75)
    {
      if (BYTE1(v8) == 253)
      {
        v9 = HIWORD(v8);
        if (v9 == 25)
        {
          return 1;
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, v9);
          return 0;
        }
      }

      else
      {
        _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, BYTE1(v8));
        return 0;
      }
    }

    else
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, **a1);
      return 0;
    }
  }
}

uint64_t ETLMaverickCreateWriteFactoryDefaultNVsCommand()
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v1, v2, v3, v4, v5, v6, FreeSpace);
    return 0;
  }

  else
  {
    result = HDLCFrameInject();
    if ((result & 1) == 0)
    {
      v14 = result;
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v8, v9, v10, v11, v12, v13, v15);
      return v14;
    }
  }

  return result;
}

uint64_t ETLMaverickParseWriteFactoryDefaultNVsResponse(unsigned int **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 2) < 4u)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a3, a4, a5, a6, a7, a8, *(a1 + 2));
    return 0;
  }

  else
  {
    v8 = **a1;
    if (v8 == 75)
    {
      if (BYTE1(v8) == 254)
      {
        v9 = HIWORD(v8);
        if (v9 == 27)
        {
          return 1;
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, v9);
          return 0;
        }
      }

      else
      {
        _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, BYTE1(v8));
        return 0;
      }
    }

    else
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, **a1);
      return 0;
    }
  }
}

uint64_t ETLMaverickCreateWriteFactoryFATPDefaultNVsCommand()
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v1, v2, v3, v4, v5, v6, FreeSpace);
    return 0;
  }

  else
  {
    result = HDLCFrameInject();
    if ((result & 1) == 0)
    {
      v14 = result;
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v8, v9, v10, v11, v12, v13, v15);
      return v14;
    }
  }

  return result;
}

uint64_t ETLMaverickParseWriteFactoryFATPDefaultNVsResponse(unsigned int **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 2) < 4u)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a3, a4, a5, a6, a7, a8, *(a1 + 2));
    return 0;
  }

  else
  {
    v8 = **a1;
    if (v8 == 75)
    {
      if (BYTE1(v8) == 254)
      {
        v9 = HIWORD(v8);
        if (v9 == 39)
        {
          return 1;
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, v9);
          return 0;
        }
      }

      else
      {
        _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, BYTE1(v8));
        return 0;
      }
    }

    else
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, **a1);
      return 0;
    }
  }
}

uint64_t ETLMaverickCreateIsSimPresentCommand()
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v1, v2, v3, v4, v5, v6, FreeSpace);
    return 0;
  }

  else
  {
    result = HDLCFrameInject();
    if ((result & 1) == 0)
    {
      v14 = result;
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v8, v9, v10, v11, v12, v13, v15);
      return v14;
    }
  }

  return result;
}

uint64_t ETLMaverickParseIsSimPresentResponse(int **a1, BOOL *a2, BOOL *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 2);
  v9 = v8 - 4;
  if (v8 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a3, a4, a5, a6, a7, a8, *(a1 + 2));
LABEL_12:
    _ETLDebugPrint("ETLMaverickParseIsSimPresentResponse", "failed parsing factory response from frame\n", v14, v15, v16, v17, v18, v19, v21);
    return 0;
  }

  v10 = *a1;
  v11 = **a1;
  if (v11 != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, **a1);
    goto LABEL_12;
  }

  if (BYTE1(v11) != 254)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, BYTE1(v11));
    goto LABEL_12;
  }

  v12 = HIWORD(v11);
  if (v12 != 1)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, v12);
    goto LABEL_12;
  }

  if (v9 <= 5)
  {
    _ETLDebugPrint("ETLMaverickParseIsSimPresentResponse", "Need %u bytes, but only have %u\n", a3, a4, a5, a6, a7, a8, 6);
    return 0;
  }

  else if (*(v10 + 2))
  {
    *a3 = *(v10 + 3) != 0;
    *a2 = *(v10 + 4) != 0;
    return 1;
  }

  else
  {
    _ETLDebugPrint("ETLMaverickParseIsSimPresentResponse", "SIM Command failed\n", a3, a4, a5, a6, a7, a8, v20);
    return 0;
  }
}

BOOL ETLMaverickParseGetTxAntenna(uint64_t a1, unsigned int *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a3;
  v9 = (*(a1 + 8) - v8);
  if (v9 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a3, a4, a5, a6, a7, a8, v9);
LABEL_12:
    _ETLDebugPrint("ETLMaverickParseGetTxAntenna", "failed parsing BSP response from frame\n", v16, v17, v18, v19, v20, v21, v22);
    return 0;
  }

  v10 = *(*a1 + v8);
  if (v10 != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, v10);
    goto LABEL_12;
  }

  v11 = v8 + 4;
  *a3 = v8 + 4;
  if (BYTE1(v10) != 253)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, BYTE1(v10));
    goto LABEL_12;
  }

  v12 = HIWORD(v10);
  if (v12 != 24)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, v12);
    goto LABEL_12;
  }

  if (*(a1 + 8) - v11 <= 3)
  {
    v23 = *(a1 + 8) - v11;
    _ETLDebugPrint("ETLMaverickParseGetTxAntenna", "Need %u bytes, but only have %u\n", a3, a4, a5, a6, a7, a8, 4);
    return 0;
  }

  else
  {
    v13 = (*a1 + v11);
    if (*v13 == 1)
    {
      v14 = v13[1];
      result = v14 < 5;
      *a2 = v14;
      *a3 = v8 + 8;
    }

    else
    {
      _ETLDebugPrint("ETLMaverickParseGetTxAntenna", "status = %d\n", a3, a4, a5, a6, a7, a8, *v13);
      return 0;
    }
  }

  return result;
}

uint64_t ETLMaverickCreateGetGPIOCommand()
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v1, v2, v3, v4, v5, v6, FreeSpace);
    return 0;
  }

  else if (HDLCFrameInject())
  {
    if (HDLCFrameGetFreeSpace() <= 1)
    {
      _ETLDebugPrint("ETLMaverickCreateGetGPIOCommand", "Not enough room, need %zu, have %u\n", v13, v14, v15, v16, v17, v18, 2);
      return 0;
    }

    else
    {

      return HDLCFrameInjectUnsignedShort();
    }
  }

  else
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v7, v8, v9, v10, v11, v12, v20);
    return 0;
  }
}

BOOL ETLMaverickParseGetGPIOResponse(int **a1, int a2, BOOL *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 2);
  v9 = v8 - 4;
  if (v8 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a3, a4, a5, a6, a7, a8, *(a1 + 2));
LABEL_12:
    _ETLDebugPrint("ETLMaverickParseGetGPIOResponse", "failed parsing factory response from frame\n", v15, v16, v17, v18, v19, v20, v22);
    return 0;
  }

  v10 = *a1;
  v11 = **a1;
  if (v11 != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, **a1);
    goto LABEL_12;
  }

  if (BYTE1(v11) != 254)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, BYTE1(v11));
    goto LABEL_12;
  }

  v12 = HIWORD(v11);
  if (v12 != 19)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, v12);
    goto LABEL_12;
  }

  if (v9 <= 5)
  {
    _ETLDebugPrint("ETLMaverickParseGetGPIOResponse", "Need %u bytes, but only have %u\n", a3, a4, a5, a6, a7, a8, 6);
    return 0;
  }

  else if (*(v10 + 2))
  {
    v13 = *(v10 + 3);
    *a3 = *(v10 + 4) != 0;
    return v13 == a2;
  }

  else
  {
    _ETLDebugPrint("ETLMaverickParseGetGPIOResponse", "Get GPIO Status Command failed\n", a3, a4, a5, a6, a7, a8, v21);
    return 0;
  }
}

uint64_t ETLMaverickCreateSetGPIOCommand()
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v1, v2, v3, v4, v5, v6, FreeSpace);
    return 0;
  }

  if ((HDLCFrameInject() & 1) == 0)
  {
    v14 = "ETLSubsysAddHeaderInternal";
    v15 = "Failed to inject\n";
LABEL_11:
    _ETLDebugPrint(v14, v15, v7, v8, v9, v10, v11, v12, v16);
    return 0;
  }

  if (HDLCFrameGetFreeSpace() <= 3)
  {
    v16 = 4;
    v14 = "ETLMaverickCreateSetGPIOCommand";
    v15 = "Not enough room, need %zu, have %u\n";
    goto LABEL_11;
  }

  if (!HDLCFrameInjectUnsignedShort())
  {
    return 0;
  }

  return HDLCFrameInjectUnsignedShort();
}

BOOL ETLMaverickParseSetGPIOResponse(int **a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 2);
  v9 = v8 - 4;
  if (v8 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a3, a4, a5, a6, a7, a8, *(a1 + 2));
LABEL_12:
    _ETLDebugPrint("ETLMaverickParseSetGPIOResponse", "failed parsing factory response from frame\n", v14, v15, v16, v17, v18, v19, v21);
    return 0;
  }

  v10 = *a1;
  v11 = **a1;
  if (v11 != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, **a1);
    goto LABEL_12;
  }

  if (BYTE1(v11) != 254)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, BYTE1(v11));
    goto LABEL_12;
  }

  v12 = HIWORD(v11);
  if (v12 != 20)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, v12);
    goto LABEL_12;
  }

  if (v9 <= 5)
  {
    _ETLDebugPrint("ETLMaverickParseSetGPIOResponse", "Need %u bytes, but only have %u\n", a3, a4, a5, a6, a7, a8, 6);
    return 0;
  }

  else if (*(v10 + 2))
  {
    return *(v10 + 3) == a2;
  }

  else
  {
    _ETLDebugPrint("ETLMaverickParseSetGPIOResponse", "Set GPIO State Command failed\n", a3, a4, a5, a6, a7, a8, v20);
    return 0;
  }
}

uint64_t ETLMaverickCreateBackupBoardSNCommand()
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v1, v2, v3, v4, v5, v6, FreeSpace);
    return 0;
  }

  else if (HDLCFrameInject())
  {
    if (HDLCFrameGetFreeSpace() <= 1)
    {
      _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", v13, v14, v15, v16, v17, v18, 2);
      return 0;
    }

    else
    {

      return HDLCFrameInjectUnsignedShort();
    }
  }

  else
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v7, v8, v9, v10, v11, v12, v20);
    return 0;
  }
}

BOOL ETLMaverickParseBackupBoardSNResponse(int **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 2);
  v9 = v8 - 4;
  if (v8 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a3, a4, a5, a6, a7, a8, *(a1 + 2));
    return 0;
  }

  else
  {
    v10 = *a1;
    v11 = **a1;
    if (v11 == 75)
    {
      if (BYTE1(v11) == 254)
      {
        v12 = HIWORD(v11);
        if (v12 == 12)
        {
          if (v9 <= 3)
          {
            _ETLDebugPrint("ETLCheckPayloadLength", "Need %u bytes, but only have %u\n", a3, a4, a5, a6, a7, a8, 4);
            return 0;
          }

          else if (*(v10 + 2) == 20)
          {
            return *(v10 + 3) == 0;
          }

          else
          {
            v14 = *(v10 + 2);
            _ETLDebugPrint("ETLMaverickParseBackupBoardSNResponse", "Backup Board SN response does not match MAV_SEC_BKP_BOARD_SN [%d]. Received [%d]\n", a3, a4, a5, a6, a7, a8, 20);
            return 0;
          }
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, v12);
          return 0;
        }
      }

      else
      {
        _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, BYTE1(v11));
        return 0;
      }
    }

    else
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, **a1);
      return 0;
    }
  }
}

uint64_t ETLMaverickCreateAnntennaSKU(int *a1, unsigned __int8 a2, int a3)
{
  if ((a2 & ((a3 - 1) < 2)) == 1)
  {
    if (a3 == 1)
    {
      v3 = 3;
    }

    else
    {
      v3 = 4;
    }

    if (a3 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    if ((a2 & 2) == 0)
    {
      v3 = v4;
    }

    *a1 = v3;
  }

  return a2 & ((a3 - 1) < 2);
}

uint64_t ETLMaverickCreateSetAntennaSKUCommand()
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v1, v2, v3, v4, v5, v6, FreeSpace);
    return 0;
  }

  else if (HDLCFrameInject())
  {
    if (HDLCFrameGetFreeSpace() <= 1)
    {
      _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", v13, v14, v15, v16, v17, v18, 2);
      return 0;
    }

    else
    {

      return HDLCFrameInjectUnsignedShort();
    }
  }

  else
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v7, v8, v9, v10, v11, v12, v20);
    return 0;
  }
}

uint64_t ETLMaverickParseSetAntennaSKUResponse(int **a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 2);
  v9 = v8 - 4;
  if (v8 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a3, a4, a5, a6, a7, a8, *(a1 + 2));
  }

  else
  {
    v10 = *a1;
    v11 = **a1;
    if (v11 == 75)
    {
      if (BYTE1(v11) == 253)
      {
        v12 = HIWORD(v11);
        if (v12 == 38)
        {
          if (v9 <= 3)
          {
            _ETLDebugPrint("ETLMaverickParseSetAntennaSKUResponse", "Received response has only %u bytes, need %u\n", a3, a4, a5, a6, a7, a8, v9);
          }

          else if (*(v10 + 2) == 1)
          {
            if (*(v10 + 3) == a2)
            {
              return 1;
            }

            _ETLDebugPrint("ETLMaverickParseSetAntennaSKUResponse", "Received SKU %u mismatches sent %u\n", a3, a4, a5, a6, a7, a8, *(v10 + 3));
          }
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, v12);
        }
      }

      else
      {
        _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, BYTE1(v11));
      }
    }

    else
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, **a1);
    }
  }

  return 0;
}

uint64_t ETLMaverickCreateSetIMEISwVersionCommand()
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v1, v2, v3, v4, v5, v6, FreeSpace);
    return 0;
  }

  else if (HDLCFrameInject())
  {
    if (HDLCFrameGetFreeSpace())
    {

      return HDLCFrameInjectUnsignedChar();
    }

    else
    {
      _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", v13, v14, v15, v16, v17, v18, 1);
      return 0;
    }
  }

  else
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v7, v8, v9, v10, v11, v12, v20);
    return 0;
  }
}

uint64_t ETLMaverickParseIMEISwVersionResponse(int **a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 2);
  v9 = v8 - 4;
  if (v8 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a3, a4, a5, a6, a7, a8, *(a1 + 2));
    return 0;
  }

  else
  {
    v10 = *a1;
    v11 = **a1;
    if (v11 == 75)
    {
      if (BYTE1(v11) == 253)
      {
        v12 = HIWORD(v11);
        if (v12 == a3)
        {
          if (v9 <= 2)
          {
            _ETLDebugPrint("ETLMaverickParseIMEISwVersionResponse", "Received response has only %u bytes, need %u\n", a3, a4, a5, a6, a7, a8, v9);
            return 0;
          }

          else if (*(v10 + 2) == 1)
          {
            *a2 = *(v10 + 6);
            return 1;
          }

          else
          {
            _ETLDebugPrint("ETLMaverickParseIMEISwVersionResponse", "Received response with failure status [%d]\n", a3, a4, a5, a6, a7, a8, *(v10 + 2));
            return 0;
          }
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, v12);
          return 0;
        }
      }

      else
      {
        _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, BYTE1(v11));
        return 0;
      }
    }

    else
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, **a1);
      return 0;
    }
  }
}

uint64_t ETLMaverickCreateGetHWConfigIDCommand()
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v1, v2, v3, v4, v5, v6, FreeSpace);
    return 0;
  }

  else
  {
    result = HDLCFrameInject();
    if ((result & 1) == 0)
    {
      v14 = result;
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v8, v9, v10, v11, v12, v13, v15);
      return v14;
    }
  }

  return result;
}

uint64_t ETLMaverickParseGetHWConfigIDResponse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 8);
  v9 = v8 - 4;
  if (v8 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a3, a4, a5, a6, a7, a8, *(a1 + 8));
LABEL_15:
    _ETLDebugPrint("ETLMaverickParseGetHWConfigIDResponse", "failed parsing factory response from frame\n", v13, v14, v15, v16, v17, v18, v20);
    return 0;
  }

  v10 = *a1;
  v11 = **a1;
  if (v11 != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, **a1);
    goto LABEL_15;
  }

  if (BYTE1(v11) != 254)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, BYTE1(v11));
    goto LABEL_15;
  }

  if (v11 >= 0x10000)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, HIWORD(v11));
    goto LABEL_15;
  }

  if (v9 <= 0x17)
  {
    _ETLDebugPrint("ETLMaverickParseGetHWConfigIDResponse", "Need %u bytes, but only have %u\n", a3, a4, a5, a6, a7, a8, 24);
    return 0;
  }

  else if (*(v10 + 2))
  {
    if (a2)
    {
      *a2 = *(v10 + 6);
      *(a2 + 4) = *(v10 + 5);
      *(a2 + 6) = *(v10 + 6);
      *(a2 + 8) = *(v10 + 7);
      *(a2 + 10) = *(v10 + 8);
      *(a2 + 12) = *(v10 + 9);
      *(a2 + 14) = *(v10 + 10);
      if (v9 < 0x1A)
      {
        *(a2 + 22) = -1;
      }

      else
      {
        *(a2 + 22) = *(v10 + 14);
      }

      return 1;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    _ETLDebugPrint("ETLMaverickParseGetHWConfigIDResponse", "Get HW Config ID Command failed\n", a3, a4, a5, a6, a7, a8, v19);
    return 0;
  }
}

uint64_t ETLMaverickCreateCalibrationCheckCommand()
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v1, v2, v3, v4, v5, v6, FreeSpace);
    return 0;
  }

  else
  {
    result = HDLCFrameInject();
    if ((result & 1) == 0)
    {
      v14 = result;
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v8, v9, v10, v11, v12, v13, v15);
      return v14;
    }
  }

  return result;
}

uint64_t ETLMaverickCreateCalibrationCheckCommandV2()
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v1, v2, v3, v4, v5, v6, FreeSpace);
    return 0;
  }

  else
  {
    result = HDLCFrameInject();
    if ((result & 1) == 0)
    {
      v14 = result;
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v8, v9, v10, v11, v12, v13, v15);
      return v14;
    }
  }

  return result;
}

uint64_t ETLMaverickParseCalibrationCheckResonse(unsigned int *a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[2];
  v9 = v8 - 4;
  if (v8 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a3, a4, a5, a6, a7, a8, a1[2]);
LABEL_11:
    _ETLDebugPrint("ETLMaverickParseCalibrationCheckResonse", "Parsing BSP Response Header failed.\n", v13, v14, v15, v16, v17, v18, v19);
    return 0;
  }

  v10 = **a1;
  if (v10 != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, **a1);
    goto LABEL_11;
  }

  if (BYTE1(v10) != 253)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, BYTE1(v10));
    goto LABEL_11;
  }

  v11 = HIWORD(v10);
  if (v11 != 48)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, v11);
    goto LABEL_11;
  }

  if (v9 <= 3)
  {
    _ETLDebugPrint("ETLMaverickParseCalibrationCheckResonse", "Received response has only %u bytes, need %u\n", a3, a4, a5, a6, a7, a8, v9);
    return 0;
  }

  else
  {
    *a2 = *(*a1 + 4);
    return 1;
  }
}

uint64_t ETLMaverickParseCalibrationCheckResponseV2(unsigned int *a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[2];
  v9 = v8 - 4;
  if (v8 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a3, a4, a5, a6, a7, a8, a1[2]);
LABEL_11:
    _ETLDebugPrint("ETLMaverickParseCalibrationCheckResponseV2", "Parsing RF Response Header failed.\n", v12, v13, v14, v15, v16, v17, v18);
    return 0;
  }

  v10 = **a1;
  if (v10 != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, **a1);
    goto LABEL_11;
  }

  if (BYTE1(v10) != 251)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, BYTE1(v10));
    goto LABEL_11;
  }

  if (a3 != HIWORD(v10))
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, HIWORD(v10));
    goto LABEL_11;
  }

  if (v9 <= 3)
  {
    _ETLDebugPrint("ETLMaverickParseCalibrationCheckResponseV2", "Received response has only %u bytes, need %u\n", a3, a4, a5, a6, a7, a8, v9);
    return 0;
  }

  else
  {
    *a2 = *(*a1 + 4);
    return 1;
  }
}

uint64_t ETLMaverickStartRSSI(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = 0u;
  v31 = 0u;
  v32 = 0;
  memset(v28, 0, sizeof(v28));
  v29 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLMaverickStartRSSI", "Failed to create command frame\n", v7, v8, v9, v10, v11, v12, *&v28[0]);
LABEL_19:
    v26 = 0;
    goto LABEL_20;
  }

  if (!ETLMaverickCreateStartRSSICommand())
  {
    goto LABEL_19;
  }

  v13 = malloc((2 * DWORD2(v30) + 32));
  if (!v13)
  {
    goto LABEL_19;
  }

  v14 = v13;
  v15 = HDLCFrameEncode();
  if (!v15)
  {
    goto LABEL_21;
  }

  v16 = v15;
  v33 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v14, v15);
  }

  if (!*a1)
  {
LABEL_21:
    free(v14);
    goto LABEL_19;
  }

  v17 = (*a1)(a1, v14, v16, &v33, 1, a5, 0);
  v18 = v33;
  free(v14);
  if (v17)
  {
    v19 = v18 == v16;
  }

  else
  {
    v19 = 0;
  }

  if (!v19)
  {
    goto LABEL_19;
  }

  LOBYTE(v33) = 75;
  if (!_ETLResponseRingBuffer)
  {
    TelephonyUtilRingBufferInitialize();
  }

  v20 = ETLFindMatchingResponseUsingBuffer(a1, v28, &_ETLResponseRingBuffer, &v33, a5);
  v26 = 0;
  if (v20 && v33 == 75)
  {
    v33 = 0;
    v26 = ETLMaverickParseRSSICommandResponse(v28, &v33, 1, v21, v22, v23, v24, v25);
  }

LABEL_20:
  HDLCFrameFree();
  HDLCFrameFree();
  return v26;
}

uint64_t ETLMaverickStopRSSI(void *a1, uint64_t a2)
{
  v27 = 0u;
  v28 = 0u;
  v29 = 0;
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLMaverickStopRSSI", "Failed to create command frame\n", v4, v5, v6, v7, v8, v9, *&v25[0]);
LABEL_19:
    v23 = 0;
    goto LABEL_20;
  }

  if (!ETLMaverickCreateStopRSSICommand())
  {
    goto LABEL_19;
  }

  v10 = malloc((2 * DWORD2(v27) + 32));
  if (!v10)
  {
    goto LABEL_19;
  }

  v11 = v10;
  v12 = HDLCFrameEncode();
  if (!v12)
  {
    goto LABEL_21;
  }

  v13 = v12;
  v30 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v11, v12);
  }

  if (!*a1)
  {
LABEL_21:
    free(v11);
    goto LABEL_19;
  }

  v14 = (*a1)(a1, v11, v13, &v30, 1, a2, 0);
  v15 = v30;
  free(v11);
  if (v14)
  {
    v16 = v15 == v13;
  }

  else
  {
    v16 = 0;
  }

  if (!v16)
  {
    goto LABEL_19;
  }

  LOBYTE(v30) = 75;
  if (!_ETLResponseRingBuffer)
  {
    TelephonyUtilRingBufferInitialize();
  }

  v17 = ETLFindMatchingResponseUsingBuffer(a1, v25, &_ETLResponseRingBuffer, &v30, a2);
  v23 = 0;
  if (v17 && v30 == 75)
  {
    v30 = 0;
    v23 = ETLMaverickParseRSSICommandResponse(v25, &v30, 1, v18, v19, v20, v21, v22);
  }

LABEL_20:
  HDLCFrameFree();
  HDLCFrameFree();
  return v23;
}

uint64_t ETLMaverickReportRSSI(void *a1, uint64_t a2)
{
  v30 = 0;
  v27 = 0u;
  v28 = 0u;
  v29 = 0;
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLMaverickReportRSSI", "Failed to create command frame\n", v4, v5, v6, v7, v8, v9, *&v25[0]);
LABEL_19:
    v23 = 0;
    goto LABEL_20;
  }

  if (!ETLMaverickCreateReportRSSICommand())
  {
    goto LABEL_19;
  }

  v10 = malloc((2 * DWORD2(v27) + 32));
  if (!v10)
  {
    goto LABEL_19;
  }

  v11 = v10;
  v12 = HDLCFrameEncode();
  if (!v12)
  {
    goto LABEL_21;
  }

  v13 = v12;
  v31 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v11, v12);
  }

  if (!*a1)
  {
LABEL_21:
    free(v11);
    goto LABEL_19;
  }

  v14 = (*a1)(a1, v11, v13, &v31, 1, a2, 0);
  v15 = v31;
  free(v11);
  if (v14)
  {
    v16 = v15 == v13;
  }

  else
  {
    v16 = 0;
  }

  if (!v16)
  {
    goto LABEL_19;
  }

  LOBYTE(v31) = 75;
  if (!_ETLResponseRingBuffer)
  {
    TelephonyUtilRingBufferInitialize();
  }

  v17 = ETLFindMatchingResponseUsingBuffer(a1, v25, &_ETLResponseRingBuffer, &v31, a2);
  v23 = 0;
  if (v17 && v31 == 75)
  {
    v23 = ETLMaverickParseRSSICommandResponse(v25, &v30, 1, v18, v19, v20, v21, v22);
  }

LABEL_20:
  HDLCFrameFree();
  HDLCFrameFree();
  return v23;
}

void *ETLMaverickSetAPWake(void *a1, uint64_t a2, uint64_t a3)
{
  v36 = 0u;
  v37 = 0u;
  v38 = 0;
  memset(v34, 0, sizeof(v34));
  v35 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    v30 = "ETLMaverickSetAPWake";
    v31 = "Failed to create command frame\n";
LABEL_21:
    _ETLDebugPrint(v30, v31, v5, v6, v7, v8, v9, v10, v33);
    goto LABEL_22;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v12, v13, v14, v15, v16, v17, FreeSpace);
LABEL_22:
    v18 = 0;
    goto LABEL_23;
  }

  v39 = 916811;
  if ((HDLCFrameInject() & 1) == 0)
  {
    v30 = "ETLSubsysAddHeaderInternal";
    v31 = "Failed to inject\n";
    goto LABEL_21;
  }

  if (HDLCFrameGetFreeSpace() <= 1)
  {
    v33 = 2;
    v30 = "ETLMaverickCreateAPWakeCommand";
    v31 = "Not enough room, need %zu, have %u\n";
    goto LABEL_21;
  }

  HDLCFrameInjectUnsignedShort();
  v18 = malloc((2 * DWORD2(v36) + 32));
  if (!v18)
  {
    goto LABEL_23;
  }

  v19 = HDLCFrameEncode();
  if (!v19)
  {
    goto LABEL_24;
  }

  v20 = v19;
  v39 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v18, v19);
  }

  if (!*a1)
  {
LABEL_24:
    free(v18);
    goto LABEL_22;
  }

  v21 = (*a1)(a1, v18, v20, &v39, 1, a3, 0);
  v22 = v39;
  free(v18);
  v18 = 0;
  if (v21 && v22 == v20)
  {
    LOBYTE(v39) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    v18 = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, v34, &_ETLResponseRingBuffer, &v39, a3) && v39 == 75)
    {
      v18 = ETLMaverickParseAPWakeResponse(v34, v23, v24, v25, v26, v27, v28, v29);
    }
  }

LABEL_23:
  HDLCFrameFree();
  HDLCFrameFree();
  return v18;
}

uint64_t ETLMaverickEnterEmergencyDownloadMode(void *a1, uint64_t a2)
{
  v36 = 0u;
  v37 = 0u;
  v38 = 0;
  memset(v34, 0, sizeof(v34));
  v35 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    v30 = "ETLMaverickEnterEmergencyDownloadMode";
    v31 = "Failed to create command frame\n";
LABEL_23:
    _ETLDebugPrint(v30, v31, v4, v5, v6, v7, v8, v9, v33);
    goto LABEL_24;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v11, v12, v13, v14, v15, v16, FreeSpace);
    goto LABEL_24;
  }

  v39 = 982347;
  if ((HDLCFrameInject() & 1) == 0)
  {
    v30 = "ETLSubsysAddHeaderInternal";
    v31 = "Failed to inject\n";
    goto LABEL_23;
  }

  v17 = malloc((2 * DWORD2(v36) + 32));
  if (v17)
  {
    v18 = HDLCFrameEncode();
    if (!v18)
    {
      goto LABEL_26;
    }

    v19 = v18;
    v39 = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, v17, v18);
    }

    if (!*a1)
    {
LABEL_26:
      free(v17);
      goto LABEL_24;
    }

    v20 = (*a1)(a1, v17, v19, &v39, 1, a2, 0);
    v21 = v39;
    free(v17);
    v17 = 0;
    if (v20)
    {
      if (v21 == v19)
      {
        LOBYTE(v39) = 75;
        if (!_ETLResponseRingBuffer)
        {
          TelephonyUtilRingBufferInitialize();
        }

        v17 = 0;
        if (ETLFindMatchingResponseUsingBuffer(a1, v34, &_ETLResponseRingBuffer, &v39, a2))
        {
          if (v39 == 75)
          {
            if (DWORD2(v34[0]) < 4)
            {
              _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", v22, v23, v24, v25, v26, v27, DWORD2(v34[0]));
            }

            else
            {
              v28 = **&v34[0];
              if (**&v34[0] == 75)
              {
                if (BYTE1(v28) == 253)
                {
                  v29 = HIWORD(v28);
                  if (v29 == 14)
                  {
                    v17 = 1;
                    goto LABEL_25;
                  }

                  _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v22, v23, v24, v25, v26, v27, v29);
                }

                else
                {
                  _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", v22, v23, v24, v25, v26, v27, BYTE1(v28));
                }
              }

              else
              {
                _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", v22, v23, v24, v25, v26, v27, **&v34[0]);
              }
            }

LABEL_24:
            v17 = 0;
          }
        }
      }
    }
  }

LABEL_25:
  HDLCFrameFree();
  HDLCFrameFree();
  return v17;
}

void *ETLMaverickGetTxPower(void *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v42 = 0u;
  v43 = 0u;
  v44 = 0;
  memset(v40, 0, sizeof(v40));
  v41 = 0;
  if (!a3 || (HDLCFrameCreateUplink() & 1) == 0)
  {
    v36 = "ETLMaverickGetTxPower";
    v37 = "Failed to create command frame\n";
LABEL_17:
    _ETLDebugPrint(v36, v37, a3, a4, a5, a6, a7, a8, v39);
    goto LABEL_18;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v13, v14, v15, v16, v17, v18, FreeSpace);
    goto LABEL_18;
  }

  v45 = 1112907;
  if ((HDLCFrameInject() & 1) == 0)
  {
    v36 = "ETLSubsysAddHeaderInternal";
    v37 = "Failed to inject\n";
    goto LABEL_17;
  }

  if (HDLCFrameGetFreeSpace() <= 1)
  {
    _ETLDebugPrint("ETLMaverickCreateGetTxPowerExtCommand", "Not enough room, need %zu, have %u\n", v19, v20, v21, v22, v23, v24, 2);
    goto LABEL_18;
  }

  if (a2 > 7)
  {
LABEL_18:
    TxPowerExtResponse = 0;
    goto LABEL_19;
  }

  HDLCFrameInjectUnsignedShort();
  TxPowerExtResponse = malloc((2 * DWORD2(v42) + 32));
  if (TxPowerExtResponse)
  {
    v26 = HDLCFrameEncode();
    if (!v26)
    {
      goto LABEL_23;
    }

    v27 = v26;
    v45 = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, TxPowerExtResponse, v26);
    }

    if (!*a1)
    {
LABEL_23:
      free(TxPowerExtResponse);
      goto LABEL_18;
    }

    v28 = (*a1)(a1, TxPowerExtResponse, v27, &v45, 1, a4, 0);
    v29 = v45;
    free(TxPowerExtResponse);
    TxPowerExtResponse = 0;
    if (v28)
    {
      if (v29 == v27)
      {
        if (ETLSubsysFindMatchingResponse(a1, v40, a4))
        {
          TxPowerExtResponse = ETLMaverickParseGetTxPowerExtResponse(v40, v30, a3, v31, v32, v33, v34, v35);
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }
  }

LABEL_19:
  HDLCFrameFree();
  HDLCFrameFree();
  return TxPowerExtResponse;
}

void *ETLMaverickGetTxPowerCap(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v41 = 0u;
  v42 = 0u;
  v43 = 0;
  memset(v39, 0, sizeof(v39));
  v40 = 0;
  if (!a2 || (HDLCFrameCreateUplink() & 1) == 0)
  {
    v35 = "ETLMaverickGetTxPowerCap";
    v36 = "Failed to create command frame\n";
LABEL_19:
    _ETLDebugPrint(v35, v36, a3, a4, a5, a6, a7, a8, v38);
LABEL_20:
    TxPowerCapResponse = 0;
    goto LABEL_21;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v12, v13, v14, v15, v16, v17, FreeSpace);
    goto LABEL_20;
  }

  v44 = 1572171;
  if ((HDLCFrameInject() & 1) == 0)
  {
    v35 = "ETLSubsysAddHeaderInternal";
    v36 = "Failed to inject\n";
    goto LABEL_19;
  }

  if (HDLCFrameGetFreeSpace() <= 1)
  {
    _ETLDebugPrint("ETLMaverickCreateGetTxPowerCapCommand", "Not enough room, need %zu, have %u\n", v18, v19, v20, v21, v22, v23, 2);
    goto LABEL_20;
  }

  HDLCFrameInjectUnsignedShort();
  TxPowerCapResponse = malloc((2 * DWORD2(v41) + 32));
  if (!TxPowerCapResponse)
  {
    goto LABEL_21;
  }

  v25 = HDLCFrameEncode();
  if (!v25)
  {
    goto LABEL_25;
  }

  v26 = v25;
  v44 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, TxPowerCapResponse, v25);
  }

  if (!*a1)
  {
LABEL_25:
    free(TxPowerCapResponse);
    goto LABEL_20;
  }

  v27 = (*a1)(a1, TxPowerCapResponse, v26, &v44, 1, a3, 0);
  v28 = v44;
  free(TxPowerCapResponse);
  TxPowerCapResponse = 0;
  if (v27 && v28 == v26)
  {
    LOBYTE(v44) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    TxPowerCapResponse = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, v39, &_ETLResponseRingBuffer, &v44, a3) && v44 == 75)
    {
      TxPowerCapResponse = ETLMaverickParseGetTxPowerCapResponse(v39, a2, v29, v30, v31, v32, v33, v34);
    }
  }

LABEL_21:
  HDLCFrameFree();
  HDLCFrameFree();
  return TxPowerCapResponse;
}

uint64_t ETLMaverickWriteFATPDefaultNVs(void *a1, uint64_t a2)
{
  v36 = 0u;
  v37 = 0u;
  v38 = 0;
  memset(v34, 0, sizeof(v34));
  v35 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    v30 = "ETLMaverickWriteFATPDefaultNVs";
    v31 = "Failed to create command frame\n";
LABEL_23:
    _ETLDebugPrint(v30, v31, v4, v5, v6, v7, v8, v9, v33);
    goto LABEL_24;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v11, v12, v13, v14, v15, v16, FreeSpace);
    goto LABEL_24;
  }

  v39 = 2621003;
  if ((HDLCFrameInject() & 1) == 0)
  {
    v30 = "ETLSubsysAddHeaderInternal";
    v31 = "Failed to inject\n";
    goto LABEL_23;
  }

  v17 = malloc((2 * DWORD2(v36) + 32));
  if (v17)
  {
    v18 = HDLCFrameEncode();
    if (!v18)
    {
      goto LABEL_26;
    }

    v19 = v18;
    v39 = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, v17, v18);
    }

    if (!*a1)
    {
LABEL_26:
      free(v17);
      goto LABEL_24;
    }

    v20 = (*a1)(a1, v17, v19, &v39, 1, a2, 0);
    v21 = v39;
    free(v17);
    v17 = 0;
    if (v20)
    {
      if (v21 == v19)
      {
        LOBYTE(v39) = 75;
        if (!_ETLResponseRingBuffer)
        {
          TelephonyUtilRingBufferInitialize();
        }

        v17 = 0;
        if (ETLFindMatchingResponseUsingBuffer(a1, v34, &_ETLResponseRingBuffer, &v39, a2))
        {
          if (v39 == 75)
          {
            if (DWORD2(v34[0]) < 4)
            {
              _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", v22, v23, v24, v25, v26, v27, DWORD2(v34[0]));
            }

            else
            {
              v28 = **&v34[0];
              if (**&v34[0] == 75)
              {
                if (BYTE1(v28) == 254)
                {
                  v29 = HIWORD(v28);
                  if (v29 == 39)
                  {
                    v17 = 1;
                    goto LABEL_25;
                  }

                  _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v22, v23, v24, v25, v26, v27, v29);
                }

                else
                {
                  _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", v22, v23, v24, v25, v26, v27, BYTE1(v28));
                }
              }

              else
              {
                _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", v22, v23, v24, v25, v26, v27, **&v34[0]);
              }
            }

LABEL_24:
            v17 = 0;
          }
        }
      }
    }
  }

LABEL_25:
  HDLCFrameFree();
  HDLCFrameFree();
  return v17;
}

uint64_t ETLMaverickWriteDefaultNVs(void *a1, uint64_t a2)
{
  v36 = 0u;
  v37 = 0u;
  v38 = 0;
  memset(v34, 0, sizeof(v34));
  v35 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    v30 = "ETLMaverickWriteDefaultNVs";
    v31 = "Failed to create command frame\n";
LABEL_23:
    _ETLDebugPrint(v30, v31, v4, v5, v6, v7, v8, v9, v33);
    goto LABEL_24;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v11, v12, v13, v14, v15, v16, FreeSpace);
    goto LABEL_24;
  }

  v39 = 1703243;
  if ((HDLCFrameInject() & 1) == 0)
  {
    v30 = "ETLSubsysAddHeaderInternal";
    v31 = "Failed to inject\n";
    goto LABEL_23;
  }

  v17 = malloc((2 * DWORD2(v36) + 32));
  if (v17)
  {
    v18 = HDLCFrameEncode();
    if (!v18)
    {
      goto LABEL_26;
    }

    v19 = v18;
    v39 = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, v17, v18);
    }

    if (!*a1)
    {
LABEL_26:
      free(v17);
      goto LABEL_24;
    }

    v20 = (*a1)(a1, v17, v19, &v39, 1, a2, 0);
    v21 = v39;
    free(v17);
    v17 = 0;
    if (v20)
    {
      if (v21 == v19)
      {
        LOBYTE(v39) = 75;
        if (!_ETLResponseRingBuffer)
        {
          TelephonyUtilRingBufferInitialize();
        }

        v17 = 0;
        if (ETLFindMatchingResponseUsingBuffer(a1, v34, &_ETLResponseRingBuffer, &v39, a2))
        {
          if (v39 == 75)
          {
            if (DWORD2(v34[0]) < 4)
            {
              _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", v22, v23, v24, v25, v26, v27, DWORD2(v34[0]));
            }

            else
            {
              v28 = **&v34[0];
              if (**&v34[0] == 75)
              {
                if (BYTE1(v28) == 253)
                {
                  v29 = HIWORD(v28);
                  if (v29 == 25)
                  {
                    v17 = 1;
                    goto LABEL_25;
                  }

                  _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v22, v23, v24, v25, v26, v27, v29);
                }

                else
                {
                  _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", v22, v23, v24, v25, v26, v27, BYTE1(v28));
                }
              }

              else
              {
                _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", v22, v23, v24, v25, v26, v27, **&v34[0]);
              }
            }

LABEL_24:
            v17 = 0;
          }
        }
      }
    }
  }

LABEL_25:
  HDLCFrameFree();
  HDLCFrameFree();
  return v17;
}

uint64_t ETLMaverickWriteFactoryDefaultNVs(void *a1, uint64_t a2)
{
  v36 = 0u;
  v37 = 0u;
  v38 = 0;
  memset(v34, 0, sizeof(v34));
  v35 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    v30 = "ETLMaverickWriteFactoryDefaultNVs";
    v31 = "Failed to create command frame\n";
LABEL_23:
    _ETLDebugPrint(v30, v31, v4, v5, v6, v7, v8, v9, v33);
    goto LABEL_24;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v11, v12, v13, v14, v15, v16, FreeSpace);
    goto LABEL_24;
  }

  v39 = 1834571;
  if ((HDLCFrameInject() & 1) == 0)
  {
    v30 = "ETLSubsysAddHeaderInternal";
    v31 = "Failed to inject\n";
    goto LABEL_23;
  }

  v17 = malloc((2 * DWORD2(v36) + 32));
  if (v17)
  {
    v18 = HDLCFrameEncode();
    if (!v18)
    {
      goto LABEL_26;
    }

    v19 = v18;
    v39 = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, v17, v18);
    }

    if (!*a1)
    {
LABEL_26:
      free(v17);
      goto LABEL_24;
    }

    v20 = (*a1)(a1, v17, v19, &v39, 1, a2, 0);
    v21 = v39;
    free(v17);
    v17 = 0;
    if (v20)
    {
      if (v21 == v19)
      {
        LOBYTE(v39) = 75;
        if (!_ETLResponseRingBuffer)
        {
          TelephonyUtilRingBufferInitialize();
        }

        v17 = 0;
        if (ETLFindMatchingResponseUsingBuffer(a1, v34, &_ETLResponseRingBuffer, &v39, a2))
        {
          if (v39 == 75)
          {
            if (DWORD2(v34[0]) < 4)
            {
              _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", v22, v23, v24, v25, v26, v27, DWORD2(v34[0]));
            }

            else
            {
              v28 = **&v34[0];
              if (**&v34[0] == 75)
              {
                if (BYTE1(v28) == 254)
                {
                  v29 = HIWORD(v28);
                  if (v29 == 27)
                  {
                    v17 = 1;
                    goto LABEL_25;
                  }

                  _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v22, v23, v24, v25, v26, v27, v29);
                }

                else
                {
                  _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", v22, v23, v24, v25, v26, v27, BYTE1(v28));
                }
              }

              else
              {
                _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", v22, v23, v24, v25, v26, v27, **&v34[0]);
              }
            }

LABEL_24:
            v17 = 0;
          }
        }
      }
    }
  }

LABEL_25:
  HDLCFrameFree();
  HDLCFrameFree();
  return v17;
}

void *ETLMaverickIsSimPresentExt(void *a1, BOOL *a2, BOOL *a3, uint64_t a4, uint64_t a5)
{
  v38 = 0u;
  v39 = 0u;
  v40 = 0;
  memset(v36, 0, sizeof(v36));
  v37 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    v32 = "ETLMaverickIsSimPresentExt";
    v33 = "Failed to create command frame\n";
LABEL_20:
    _ETLDebugPrint(v32, v33, v9, v10, v11, v12, v13, v14, v35);
    goto LABEL_21;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v16, v17, v18, v19, v20, v21, FreeSpace);
    goto LABEL_21;
  }

  v41 = 130635;
  if ((HDLCFrameInject() & 1) == 0)
  {
    v32 = "ETLSubsysAddHeaderInternal";
    v33 = "Failed to inject\n";
    goto LABEL_20;
  }

  if (!HDLCFrameInjectUnsignedShort())
  {
LABEL_21:
    IsSimPresentResponse = 0;
    goto LABEL_22;
  }

  IsSimPresentResponse = malloc((2 * DWORD2(v38) + 32));
  if (!IsSimPresentResponse)
  {
    goto LABEL_22;
  }

  v23 = HDLCFrameEncode();
  if (!v23)
  {
    goto LABEL_23;
  }

  v24 = v23;
  v41 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, IsSimPresentResponse, v23);
  }

  if (!*a1)
  {
LABEL_23:
    free(IsSimPresentResponse);
    goto LABEL_21;
  }

  v25 = (*a1)(a1, IsSimPresentResponse, v24, &v41, 1, a5, 0);
  v26 = v41;
  free(IsSimPresentResponse);
  IsSimPresentResponse = 0;
  if (v25 && v26 == v24)
  {
    LOBYTE(v41) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    IsSimPresentResponse = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, v36, &_ETLResponseRingBuffer, &v41, a5) && v41 == 75)
    {
      IsSimPresentResponse = ETLMaverickParseIsSimPresentResponse(v36, a2, a3, v27, v28, v29, v30, v31);
    }
  }

LABEL_22:
  HDLCFrameFree();
  HDLCFrameFree();
  return IsSimPresentResponse;
}

void *ETLMaverickSetTxAntenna(void *a1, int a2, uint64_t a3)
{
  v36 = 0u;
  v37 = 0u;
  v38 = 0;
  memset(v34, 0, sizeof(v34));
  v35 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    v30 = "ETLMaverickSetTxAntenna";
    v31 = "Failed to create command frame\n";
LABEL_21:
    _ETLDebugPrint(v30, v31, v6, v7, v8, v9, v10, v11, v33);
    goto LABEL_22;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v13, v14, v15, v16, v17, v18, FreeSpace);
LABEL_22:
    v19 = 0;
    goto LABEL_23;
  }

  v39 = 458059;
  if ((HDLCFrameInject() & 1) == 0)
  {
    v30 = "ETLSubsysAddHeaderInternal";
    v31 = "Failed to inject\n";
    goto LABEL_21;
  }

  if (HDLCFrameGetFreeSpace() <= 1)
  {
    v33 = 2;
    v30 = "ETLMaverickCreateTxModeSwitchCommand";
    v31 = "Not enough room, need %zu, have %u\n";
    goto LABEL_21;
  }

  HDLCFrameInjectUnsignedShort();
  v19 = malloc((2 * DWORD2(v36) + 32));
  if (!v19)
  {
    goto LABEL_23;
  }

  v20 = HDLCFrameEncode();
  if (!v20)
  {
    goto LABEL_24;
  }

  v21 = v20;
  v39 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v19, v20);
  }

  if (!*a1)
  {
LABEL_24:
    free(v19);
    goto LABEL_22;
  }

  v22 = (*a1)(a1, v19, v21, &v39, 1, a3, 0);
  v23 = v39;
  free(v19);
  v19 = 0;
  if (v22 && v23 == v21)
  {
    LOBYTE(v39) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    v19 = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, v34, &_ETLResponseRingBuffer, &v39, a3) && v39 == 75)
    {
      v19 = ETLMaverickParseTxModeSwitchResponse(v34, a2, v24, v25, v26, v27, v28, v29);
    }
  }

LABEL_23:
  HDLCFrameFree();
  HDLCFrameFree();
  return v19;
}

void *ETLMaverickGetTxAntenna(void *a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = 0;
  v34 = 0u;
  v35 = 0u;
  v36 = 0;
  memset(v32, 0, sizeof(v32));
  v33 = 0;
  if (!a2 || (HDLCFrameCreateUplink() & 1) == 0)
  {
    v28 = "ETLMaverickGetTxAntenna";
    v29 = "Failed to create command frame\n";
LABEL_18:
    _ETLDebugPrint(v28, v29, a3, a4, a5, a6, a7, a8, v31);
LABEL_19:
    TxAntenna = 0;
    goto LABEL_20;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v12, v13, v14, v15, v16, v17, FreeSpace);
    goto LABEL_19;
  }

  v38 = 1637707;
  if ((HDLCFrameInject() & 1) == 0)
  {
    v28 = "ETLSubsysAddHeaderInternal";
    v29 = "Failed to inject\n";
    goto LABEL_18;
  }

  TxAntenna = malloc((2 * DWORD2(v34) + 32));
  if (!TxAntenna)
  {
    goto LABEL_20;
  }

  v19 = HDLCFrameEncode();
  if (!v19)
  {
    goto LABEL_23;
  }

  v20 = v19;
  v38 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, TxAntenna, v19);
  }

  if (!*a1)
  {
LABEL_23:
    free(TxAntenna);
    goto LABEL_19;
  }

  v21 = (*a1)(a1, TxAntenna, v20, &v38, 1, a3, 0);
  v22 = v38;
  free(TxAntenna);
  TxAntenna = 0;
  if (v21 && v22 == v20)
  {
    LOBYTE(v38) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    TxAntenna = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, v32, &_ETLResponseRingBuffer, &v38, a3) && v38 == 75)
    {
      TxAntenna = ETLMaverickParseGetTxAntenna(v32, a2, &v37, v23, v24, v25, v26, v27);
    }
  }

LABEL_20:
  HDLCFrameFree();
  HDLCFrameFree();
  return TxAntenna;
}

void *ETLMaverickGetGPIOState(void *a1, int a2, BOOL *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v41 = 0u;
  v42 = 0u;
  v43 = 0;
  memset(v39, 0, sizeof(v39));
  v40 = 0;
  if (!a3 || (HDLCFrameCreateUplink() & 1) == 0)
  {
    v35 = "ETLMaverickGetGPIOState";
    v36 = "Failed to create command frame\n";
LABEL_17:
    _ETLDebugPrint(v35, v36, a3, a4, a5, a6, a7, a8, v38);
    goto LABEL_18;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v13, v14, v15, v16, v17, v18, FreeSpace);
    goto LABEL_18;
  }

  v44 = 1310283;
  if ((HDLCFrameInject() & 1) == 0)
  {
    v35 = "ETLSubsysAddHeaderInternal";
    v36 = "Failed to inject\n";
    goto LABEL_17;
  }

  if (HDLCFrameGetFreeSpace() <= 1)
  {
    _ETLDebugPrint("ETLMaverickCreateGetGPIOCommand", "Not enough room, need %zu, have %u\n", v19, v20, v21, v22, v23, v24, 2);
    goto LABEL_18;
  }

  if (!HDLCFrameInjectUnsignedShort())
  {
LABEL_18:
    GPIOResponse = 0;
    goto LABEL_19;
  }

  GPIOResponse = malloc((2 * DWORD2(v41) + 32));
  if (GPIOResponse)
  {
    v26 = HDLCFrameEncode();
    if (!v26)
    {
      goto LABEL_23;
    }

    v27 = v26;
    v44 = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, GPIOResponse, v26);
    }

    if (!*a1)
    {
LABEL_23:
      free(GPIOResponse);
      goto LABEL_18;
    }

    v28 = (*a1)(a1, GPIOResponse, v27, &v44, 1, a4, 0);
    v29 = v44;
    free(GPIOResponse);
    GPIOResponse = 0;
    if (v28)
    {
      if (v29 == v27)
      {
        if (ETLSubsysFindMatchingResponse(a1, v39, a4))
        {
          GPIOResponse = ETLMaverickParseGetGPIOResponse(v39, a2, a3, v30, v31, v32, v33, v34);
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }
  }

LABEL_19:
  HDLCFrameFree();
  HDLCFrameFree();
  return GPIOResponse;
}

void *ETLMaverickSetGPIOState(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v37 = 0u;
  v38 = 0u;
  v39 = 0;
  memset(v35, 0, sizeof(v35));
  v36 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    v31 = "ETLMaverickSetGPIOState";
    v32 = "Failed to create command frame\n";
LABEL_20:
    _ETLDebugPrint(v31, v32, v7, v8, v9, v10, v11, v12, v34);
    goto LABEL_21;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v14, v15, v16, v17, v18, v19, FreeSpace);
    goto LABEL_21;
  }

  v40 = 1375819;
  if ((HDLCFrameInject() & 1) == 0)
  {
    v31 = "ETLSubsysAddHeaderInternal";
    v32 = "Failed to inject\n";
    goto LABEL_20;
  }

  if (HDLCFrameGetFreeSpace() <= 3)
  {
    v34 = 4;
    v31 = "ETLMaverickCreateSetGPIOCommand";
    v32 = "Not enough room, need %zu, have %u\n";
    goto LABEL_20;
  }

  if (!HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedShort())
  {
    goto LABEL_21;
  }

  v20 = malloc((2 * DWORD2(v37) + 32));
  if (v20)
  {
    v21 = HDLCFrameEncode();
    if (!v21)
    {
      goto LABEL_23;
    }

    v22 = v21;
    v40 = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, v20, v21);
    }

    if (!*a1)
    {
LABEL_23:
      free(v20);
      goto LABEL_21;
    }

    v23 = (*a1)(a1, v20, v22, &v40, 1, a4, 0);
    v24 = v40;
    free(v20);
    v20 = 0;
    if (v23)
    {
      if (v24 == v22)
      {
        if (ETLSubsysFindMatchingResponse(a1, v35, a4))
        {
          v20 = ETLMaverickParseSetGPIOResponse(v35, a2, v25, v26, v27, v28, v29, v30);
          goto LABEL_22;
        }

LABEL_21:
        v20 = 0;
      }
    }
  }

LABEL_22:
  HDLCFrameFree();
  HDLCFrameFree();
  return v20;
}

void *ETLMaverickBackupBoardSN(void *a1, uint64_t a2)
{
  v35 = 0u;
  v36 = 0u;
  v37 = 0;
  memset(v33, 0, sizeof(v33));
  v34 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    v29 = "ETLMaverickBackupBoardSN";
    v30 = "Failed to create command frame\n";
LABEL_22:
    _ETLDebugPrint(v29, v30, v4, v5, v6, v7, v8, v9, v32);
    goto LABEL_23;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v11, v12, v13, v14, v15, v16, FreeSpace);
    goto LABEL_23;
  }

  v38 = 851531;
  if ((HDLCFrameInject() & 1) == 0)
  {
    v29 = "ETLSubsysAddHeaderInternal";
    v30 = "Failed to inject\n";
    goto LABEL_22;
  }

  if (HDLCFrameGetFreeSpace() <= 1)
  {
    v32 = 2;
    v29 = "ETLRequireFreeSpace";
    v30 = "Need %u bytes free space, but only have %u\n";
    goto LABEL_22;
  }

  if (!HDLCFrameInjectUnsignedShort())
  {
LABEL_23:
    v17 = 0;
    goto LABEL_24;
  }

  v17 = malloc((2 * DWORD2(v35) + 32));
  if (!v17)
  {
    goto LABEL_24;
  }

  v18 = HDLCFrameEncode();
  if (!v18)
  {
    goto LABEL_25;
  }

  v19 = v18;
  v38 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v17, v18);
  }

  if (!*a1)
  {
LABEL_25:
    free(v17);
    goto LABEL_23;
  }

  v20 = (*a1)(a1, v17, v19, &v38, 1, a2, 0);
  v21 = v38;
  free(v17);
  v17 = 0;
  if (v20 && v21 == v19)
  {
    LOBYTE(v38) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    v17 = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, v33, &_ETLResponseRingBuffer, &v38, a2) && v38 == 75)
    {
      v17 = ETLMaverickParseBackupBoardSNResponse(v33, v22, v23, v24, v25, v26, v27, v28);
    }
  }

LABEL_24:
  HDLCFrameFree();
  HDLCFrameFree();
  return v17;
}

uint64_t ETLMaverickBackupOrRestoreBBData(uint64_t (**a1)(void, uint64_t, uint64_t, int *, uint64_t, uint64_t, void), int a2, uint64_t a3)
{
  if (a2 <= 13)
  {
    v4 = a2;
    v38 = 0u;
    v39 = 0u;
    v40 = 0;
    memset(v36, 0, sizeof(v36));
    v37 = 0;
    if (HDLCFrameCreateUplink())
    {
      FreeSpace = HDLCFrameGetFreeSpace();
      if (FreeSpace < 4)
      {
        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v14, v15, v16, v17, v18, v19, FreeSpace);
        goto LABEL_26;
      }

      v20 = v4 + 21;
      LOWORD(v41) = -437;
      HIWORD(v41) = v4 + 21;
      if (HDLCFrameInject())
      {
        v3 = malloc((2 * DWORD2(v38) + 32));
        if (!v3)
        {
LABEL_27:
          HDLCFrameFree();
          HDLCFrameFree();
          return v3;
        }

        v21 = HDLCFrameEncode();
        if (!v21)
        {
          goto LABEL_29;
        }

        v22 = v21;
        v41 = -1431655766;
        if ((_ETLDebugFlags & 2) != 0)
        {
          off_2A18A5818(&str_3, 0, v3, v21);
        }

        if (*a1)
        {
          v23 = (*a1)(a1, v3, v22, &v41, 1, a3, 0);
          v24 = v41;
          free(v3);
          v3 = 0;
          if (!v23 || v24 != v22)
          {
            goto LABEL_27;
          }

          LOBYTE(v41) = 75;
          if (!_ETLResponseRingBuffer)
          {
            TelephonyUtilRingBufferInitialize();
          }

          v3 = 0;
          if (!ETLFindMatchingResponseUsingBuffer(a1, v36, &_ETLResponseRingBuffer, &v41, a3) || v41 != 75)
          {
            goto LABEL_27;
          }

          if (DWORD2(v36[0]) < 4)
          {
            _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", v25, v26, v27, v28, v29, v30, DWORD2(v36[0]));
          }

          else
          {
            v31 = **&v36[0];
            if (**&v36[0] == 75)
            {
              if (BYTE1(v31) == 254)
              {
                if (v20 == HIWORD(v31))
                {
                  v3 = 1;
                  goto LABEL_27;
                }

                _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v25, v26, v27, v28, v29, v30, HIWORD(v31));
              }

              else
              {
                _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", v25, v26, v27, v28, v29, v30, BYTE1(v31));
              }
            }

            else
            {
              _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", v25, v26, v27, v28, v29, v30, **&v36[0]);
            }
          }
        }

        else
        {
LABEL_29:
          free(v3);
        }

LABEL_26:
        v3 = 0;
        goto LABEL_27;
      }

      v32 = "ETLSubsysAddHeaderInternal";
      v33 = "Failed to inject\n";
    }

    else
    {
      v32 = "ETLMaverickBackupOrRestoreBBData";
      v33 = "Failed to create command frame\n";
    }

    _ETLDebugPrint(v32, v33, v7, v8, v9, v10, v11, v12, v35);
    goto LABEL_26;
  }

  return 0;
}

void *ETLMaverickSetAntennaSKU(void *a1, int a2, uint64_t a3)
{
  v36 = 0u;
  v37 = 0u;
  v38 = 0;
  memset(v34, 0, sizeof(v34));
  v35 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    v30 = "ETLMaverickSetAntennaSKU";
    v31 = "Failed to create command frame\n";
LABEL_22:
    _ETLDebugPrint(v30, v31, v6, v7, v8, v9, v10, v11, v33);
    goto LABEL_23;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v13, v14, v15, v16, v17, v18, FreeSpace);
    goto LABEL_23;
  }

  v39 = 2555211;
  if ((HDLCFrameInject() & 1) == 0)
  {
    v30 = "ETLSubsysAddHeaderInternal";
    v31 = "Failed to inject\n";
    goto LABEL_22;
  }

  if (HDLCFrameGetFreeSpace() <= 1)
  {
    v33 = 2;
    v30 = "ETLRequireFreeSpace";
    v31 = "Need %u bytes free space, but only have %u\n";
    goto LABEL_22;
  }

  if (!HDLCFrameInjectUnsignedShort())
  {
LABEL_23:
    v19 = 0;
    goto LABEL_24;
  }

  v19 = malloc((2 * DWORD2(v36) + 32));
  if (!v19)
  {
    goto LABEL_24;
  }

  v20 = HDLCFrameEncode();
  if (!v20)
  {
    goto LABEL_25;
  }

  v21 = v20;
  v39 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v19, v20);
  }

  if (!*a1)
  {
LABEL_25:
    free(v19);
    goto LABEL_23;
  }

  v22 = (*a1)(a1, v19, v21, &v39, 1, a3, 0);
  v23 = v39;
  free(v19);
  v19 = 0;
  if (v22 && v23 == v21)
  {
    LOBYTE(v39) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    v19 = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, v34, &_ETLResponseRingBuffer, &v39, a3) && v39 == 75)
    {
      v19 = ETLMaverickParseSetAntennaSKUResponse(v34, a2, v24, v25, v26, v27, v28, v29);
    }
  }

LABEL_24:
  HDLCFrameFree();
  HDLCFrameFree();
  return v19;
}

uint64_t ETLMaverickSetIMEISwVersion(void *a1, int a2, uint64_t a3)
{
  v41 = 0u;
  v42 = 0u;
  v43 = 0;
  memset(v39, 0, sizeof(v39));
  v40 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    v35 = "ETLMaverickSetIMEISwVersion";
    v36 = "Failed to create command frame\n";
LABEL_24:
    _ETLDebugPrint(v35, v36, v6, v7, v8, v9, v10, v11, v38);
    goto LABEL_25;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v13, v14, v15, v16, v17, v18, FreeSpace);
    goto LABEL_25;
  }

  v44 = 2489675;
  if ((HDLCFrameInject() & 1) == 0)
  {
    v35 = "ETLSubsysAddHeaderInternal";
    v36 = "Failed to inject\n";
    goto LABEL_24;
  }

  if (!HDLCFrameGetFreeSpace())
  {
    v38 = 1;
    v35 = "ETLRequireFreeSpace";
    v36 = "Need %u bytes free space, but only have %u\n";
    goto LABEL_24;
  }

  if (!HDLCFrameInjectUnsignedChar())
  {
    goto LABEL_25;
  }

  v19 = malloc((2 * DWORD2(v41) + 32));
  if (v19)
  {
    v20 = HDLCFrameEncode();
    if (!v20)
    {
      goto LABEL_27;
    }

    v21 = v20;
    v44 = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, v19, v20);
    }

    if (!*a1)
    {
LABEL_27:
      free(v19);
      goto LABEL_25;
    }

    v22 = (*a1)(a1, v19, v21, &v44, 1, a3, 0);
    v23 = v44;
    free(v19);
    v19 = 0;
    if (v22)
    {
      if (v23 == v21)
      {
        LOBYTE(v44) = 75;
        if (!_ETLResponseRingBuffer)
        {
          TelephonyUtilRingBufferInitialize();
        }

        v19 = 0;
        if (ETLFindMatchingResponseUsingBuffer(a1, v39, &_ETLResponseRingBuffer, &v44, a3))
        {
          if (v44 == 75)
          {
            LOBYTE(v44) = -86;
            if (ETLMaverickParseIMEISwVersionResponse(v39, &v44, 37, v24, v25, v26, v27, v28))
            {
              if (v44 == a2)
              {
                v19 = 1;
                goto LABEL_26;
              }

              _ETLDebugPrint("ETLMaverickSetIMEISwVersion", "Received SVN %u mismatches sent %u\n", v29, v30, v31, v32, v33, v34, v44);
            }

LABEL_25:
            v19 = 0;
          }
        }
      }
    }
  }

LABEL_26:
  HDLCFrameFree();
  HDLCFrameFree();
  return v19;
}