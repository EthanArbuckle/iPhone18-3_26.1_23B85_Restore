uint64_t ETLDMCMessageGetNumRanges(uint64_t a1, unsigned int a2)
{
  if (a2 < 4)
  {
    return *(a1 + (a2 << 6) + 16);
  }

  result = _ETLDebugPrint();
  __break(1u);
  return result;
}

uint64_t ETLDMCMessageGetRangeAndMasks(uint64_t a1, unsigned int a2, unsigned int a3, _DWORD *a4, void *a5)
{
  if (a2 >= 4)
  {
    result = _ETLDebugPrint();
    __break(1u);
  }

  else
  {
    v5 = a1 + (a2 << 6);
    v8 = *(v5 + 16);
    v7 = v5 + 16;
    v6 = v8;
    if (v8 > a3)
    {
      v9 = *(v7 + 8) + 16 * a3;
      *a4 = *v9;
      *a5 = *(v9 + 8);
    }

    return v6 > a3;
  }

  return result;
}

_OWORD *_ETLDMCAllocate()
{
  pthread_once(&_ETLDMCRegisterClassOnce, _ETLDMCRegisterClass);
  result = _CFRuntimeCreateInstance();
  if (result)
  {
    result[15] = 0u;
    result[16] = 0u;
    result[13] = 0u;
    result[14] = 0u;
    result[11] = 0u;
    result[12] = 0u;
    result[9] = 0u;
    result[10] = 0u;
    result[7] = 0u;
    result[8] = 0u;
    result[5] = 0u;
    result[6] = 0u;
    result[3] = 0u;
    result[4] = 0u;
    result[1] = 0u;
    result[2] = 0u;
  }

  else
  {
    _ETLDebugPrint();
    return 0;
  }

  return result;
}

uint64_t _ETLDMCGetView(uint64_t a1, int a2)
{
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 == 3)
      {
        return a1 + 208;
      }

      goto LABEL_8;
    }

    return a1 + 144;
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        return a1 + 80;
      }

LABEL_8:
      _ETLDebugPrint();
      return 0;
    }

    return a1 + 16;
  }
}

uint64_t _ETLDMCRegisterClass()
{
  result = _CFRuntimeRegisterClass();
  _ETLDMCHandleTypeID = result;
  return result;
}

void _ETLDMCHandleDestroy(void *a1)
{
  ETLDMCViewFree(a1 + 2);
  ETLDMCViewFree(a1 + 10);
  ETLDMCViewFree(a1 + 18);

  ETLDMCViewFree(a1 + 26);
}

uint64_t ETLLOGParseLogRecord(void *a1, _DWORD *a2, void *a3, _WORD *a4, unsigned __int16 *a5, unsigned int a6, unsigned int *a7)
{
  if (a6 < 0xC)
  {
    return 0;
  }

  v8 = *a5;
  *a7 = v8;
  if (v8 <= a6 && v8 > 0xB)
  {
    if (a1)
    {
      *a1 = a5 + 6;
    }

    if (a2)
    {
      *a2 = v8 - 12;
    }

    if (a3)
    {
      *a3 = *(a5 + 2);
    }

    if (a4)
    {
      *a4 = a5[1];
    }

    return 1;
  }

  else
  {
    _ETLDebugPrint();
    return 0;
  }
}

uint64_t ETLLOGParseLogHeader(uint64_t a1, unsigned int *a2, void *a3, _WORD *a4, uint64_t a5, unsigned int a6, _DWORD *a7)
{
  *a7 = 0;
  if (a6 < 4)
  {
    return 0;
  }

  if (*a5 != 16)
  {
    return 0;
  }

  v7 = *(a5 + 2);
  *a2 = v7;
  if (v7 > a6)
  {
    return 0;
  }

  *a7 = 4;
  if (a6 - 4 < 0xC)
  {
    return 0;
  }

  *a4 = *(a5 + 6);
  *a3 = *(a5 + 8);
  return 1;
}

uint64_t ETLLOGParseLog(char *__str, size_t __size, uint64_t a3, unsigned int a4, _DWORD *a5)
{
  *a5 = 0;
  if (a4 < 4 || *a3 != 16)
  {
    v6 = 0;
    v7 = 0;
    v5 = 0;
    goto LABEL_6;
  }

  v5 = *(a3 + 2);
  if (v5 > a4)
  {
    v6 = 0;
    v7 = 0;
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  v7 = 4;
  *a5 = 4;
  if (a4 - 4 < 0xC)
  {
    v6 = 0;
    goto LABEL_6;
  }

  v8 = *(a3 + 6);
  v6 = *(a3 + 8);
LABEL_7:
  *a5 = v5 + v7;
  v9 = 5 * (v6 >> 16) + ((((43685 * v6) >> 16) + (((v6 - ((43685 * v6) >> 16)) & 0xFFFE) >> 1)) >> 13) + 2;
  v10 = v9 >> 2;
  v11 = ((v9 * 0x10624DD2F1A9FCuLL) >> 64) + 315964800;
  if (__size >= snprintf(__str, __size, "[%02u:%02u:%02u:%06u: %04x] LOG 0x%02x: ", ((v11 * 0x123456789ABCE0uLL) >> 64) % 0x18, v11 / 0x3C - 60 * (((v11 / 0x3C * 0x888888888888889uLL) >> 64) >> 1), v11 % 0x3C, 1000 * (v10 - 1000 * ((v10 * 0x4189374BC6A7F0uLL) >> 64)), v8, v5))
  {
    TelephonyUtilBinToHex();
  }

  return 1;
}

uint64_t ETLDMCEventGetNumRanges(uint64_t a1, unsigned int a2)
{
  if (a2 < 4)
  {
    return *(a1 + ((a2 << 6) | 0x10) + 24);
  }

  result = _ETLDebugPrint();
  __break(1u);
  return result;
}

uint64_t ETLDMCEventGetRange(uint64_t a1, unsigned int a2, unsigned int a3, _DWORD *a4)
{
  if (a2 >= 4)
  {
    result = _ETLDebugPrint();
    __break(1u);
  }

  else
  {
    v4 = a1 + ((a2 << 6) | 0x10);
    v5 = *(v4 + 24);
    if (v5 > a3)
    {
      *a4 = *(*(v4 + 32) + 4 * a3);
    }

    return v5 > a3;
  }

  return result;
}

BOOL ETLDMCLogGetMask(uint64_t a1, int a2, unsigned int a3, void *a4, _DWORD *a5)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v5 = a1 + 144;
      *a5 = 0;
      if (a3 > 0xD)
      {
        return a3 < 0xE;
      }

      goto LABEL_15;
    }

    if (a2 == 3)
    {
      v5 = a1 + 208;
      *a5 = 0;
      if (a3 > 0xD)
      {
        return a3 < 0xE;
      }

      goto LABEL_15;
    }

    goto LABEL_10;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v5 = a1 + 80;
      *a5 = 0;
      if (a3 > 0xD)
      {
        return a3 < 0xE;
      }

      goto LABEL_15;
    }

LABEL_10:
    v6 = a3;
    v7 = a4;
    v8 = a5;
    _ETLDebugPrint();
    a5 = v8;
    a4 = v7;
    a3 = v6;
    v5 = 0;
    *v8 = 0;
    if (v6 > 0xD)
    {
      return a3 < 0xE;
    }

    goto LABEL_15;
  }

  v5 = a1 + 16;
  *a5 = 0;
  if (a3 > 0xD)
  {
    return a3 < 0xE;
  }

LABEL_15:
  v9 = *(v5 + 16);
  if (v9)
  {
    v10 = v9 + 16 * a3;
    *a5 = *v10;
    *a4 = *(v10 + 8);
  }

  return a3 < 0xE;
}

uint64_t ETLDMCLogGetEnabledEquipIDs(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  if (a2 >= 4)
  {
    result = _ETLDebugPrint();
    __break(1u);
    return result;
  }

  v3 = *(a1 + ((a2 << 6) | 0x10) + 16);
  if (!v3)
  {
    return 0;
  }

  if (!*v3)
  {
    result = 0;
    if (!v3[4])
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  *a3 = 0;
  result = 1;
  if (v3[4])
  {
LABEL_5:
    a3[result] = 1;
    result = (result + 1);
  }

LABEL_6:
  if (v3[8])
  {
    a3[result] = 2;
    result = (result + 1);
  }

  if (v3[12])
  {
    a3[result] = 3;
    result = (result + 1);
  }

  if (v3[16])
  {
    a3[result] = 4;
    result = (result + 1);
  }

  if (v3[20])
  {
    a3[result] = 5;
    result = (result + 1);
  }

  if (v3[24])
  {
    a3[result] = 6;
    result = (result + 1);
  }

  if (v3[28])
  {
    a3[result] = 7;
    result = (result + 1);
  }

  if (v3[32])
  {
    a3[result] = 8;
    result = (result + 1);
  }

  if (v3[36])
  {
    a3[result] = 9;
    result = (result + 1);
  }

  if (v3[40])
  {
    a3[result] = 10;
    result = (result + 1);
  }

  if (v3[44])
  {
    a3[result] = 11;
    result = (result + 1);
  }

  if (v3[48])
  {
    a3[result] = 12;
    result = (result + 1);
  }

  if (v3[52])
  {
    a3[result] = 13;
    return (result + 1);
  }

  return result;
}

uint64_t ETLDMCLogFilter(void *a1, char a2, unsigned int a3, uint64_t a4, unsigned int a5)
{
  if ((a2 & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = a1[4];
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = (v5 + 16 * a3);
  v7 = *v6;
  if (*v6 >= a5)
  {
    v7 = a5;
  }

  v8 = v7 + 7;
  if (v7 + 7 >= 8)
  {
    v25 = 0;
    LODWORD(v5) = 0;
    v26 = v8 >> 3;
    do
    {
      v27 = *(a4 + v25);
      v28 = *(v6 + 1);
      v29 = *(v28 + v25);
      if ((v29 & v27) != 0)
      {
        *(v28 + v25) = v29 & ~v27;
        LODWORD(v5) = 1;
      }

      ++v25;
    }

    while (v26 != v25);
  }

  else
  {
LABEL_6:
    LODWORD(v5) = 0;
  }

LABEL_7:
  if ((a2 & 2) == 0)
  {
    if ((a2 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v15 = a1[20];
    if (!v15)
    {
      goto LABEL_21;
    }

    v16 = (v15 + 16 * a3);
    v17 = *v16;
    if (*v16 >= a5)
    {
      v17 = a5;
    }

    v18 = v17 + 7;
    if (v17 + 7 >= 8)
    {
      v35 = 0;
      v19 = 0;
      v36 = v18 >> 3;
      do
      {
        v37 = *(a4 + v35);
        v38 = *(v16 + 1);
        v39 = *(v38 + v35);
        if ((v39 & v37) != 0)
        {
          *(v38 + v35) = v39 & ~v37;
          v19 = 1;
        }

        ++v35;
      }

      while (v36 != v35);
    }

    else
    {
LABEL_21:
      v19 = 0;
    }

    LODWORD(v5) = v5 | v19;
    if ((a2 & 8) == 0)
    {
      return v5 & 1;
    }

    goto LABEL_23;
  }

  v10 = a1[12];
  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = (v10 + 16 * a3);
  v12 = *v11;
  if (*v11 >= a5)
  {
    v12 = a5;
  }

  v13 = v12 + 7;
  if (v12 + 7 >= 8)
  {
    v30 = 0;
    v14 = 0;
    v31 = v13 >> 3;
    do
    {
      v32 = *(a4 + v30);
      v33 = *(v11 + 1);
      v34 = *(v33 + v30);
      if ((v34 & v32) != 0)
      {
        *(v33 + v30) = v34 & ~v32;
        v14 = 1;
      }

      ++v30;
    }

    while (v31 != v30);
  }

  else
  {
LABEL_15:
    v14 = 0;
  }

  LODWORD(v5) = v5 | v14;
  if ((a2 & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  if ((a2 & 8) == 0)
  {
    return v5 & 1;
  }

LABEL_23:
  v20 = a1[28];
  if (!v20)
  {
    return v5 & 1;
  }

  v21 = (v20 + 16 * a3);
  v22 = *v21;
  if (*v21 >= a5)
  {
    v22 = a5;
  }

  v23 = v22 + 7;
  if (v22 + 7 >= 8)
  {
    v40 = 0;
    v24 = 0;
    v41 = v23 >> 3;
    do
    {
      v42 = *(a4 + v40);
      v43 = *(v21 + 1);
      v44 = *(v43 + v40);
      if ((v44 & v42) != 0)
      {
        *(v43 + v40) = v44 & ~v42;
        v24 = 1;
      }

      ++v40;
    }

    while (v41 != v40);
  }

  else
  {
    v24 = 0;
  }

  return (v5 | v24) & 1;
}

uint64_t ETLDMCLogGetDefaultFilters(void *a1)
{
  if (_MergedGlobals == -1)
  {
    *a1 = &dword_2A139A638;
  }

  else
  {
    dispatch_once(&_MergedGlobals, &__block_literal_global);
    *a1 = &dword_2A139A638;
  }

  return 2;
}

double __ETLDMCLogGetDefaultFilters_block_invoke()
{
  dword_2A139A638 = 1;
  v0 = malloc(0x123uLL);
  qword_2A139A640 = v0;
  *v0 = 0u;
  v0[1] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  v0[5] = 0u;
  v0[6] = 0u;
  v0[7] = 0u;
  v0[8] = 0u;
  v0[9] = 0u;
  v0[10] = 0u;
  v0[11] = 0u;
  v0[12] = 0u;
  v0[13] = 0u;
  v0[14] = 0u;
  v0[15] = 0u;
  v0[16] = 0u;
  v0[17] = 0u;
  *(v0 + 144) = 0;
  *(v0 + 1) = 6;
  *(v0 + 118) = 3;
  *(v0 + 154) = 7;
  *(v0 + 88) = 3136;
  *(v0 + 256) = 48;
  *(v0 + 290) = 48;
  dword_2A139A648 = 2325;
  dword_2A139A650 = 7;
  v1 = malloc(0x29uLL);
  qword_2A139A658 = v1;
  result = 0.0;
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 31) = 0;
  *(v1 + 39) = 6528;
  dword_2A139A660 = 324;
  return result;
}

uint64_t APPLIB_DIAG_AUDIO_PCM_14Bit_Start_Loopback(char *a1, int a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v2 = 0xFFFFFFFFLL;
  if (a1 && a2 >= 13)
  {
    *a1 = 0;
    *(a1 + 5) = 0;
    *a1 = 458315;
    a1[4] = 1;
    a1[5] = 0;
    v3 = a1[1];
    v4 = crc_16_l_table[~(v3 ^ 0xAF)];
    v5 = a1[2];
    v6 = crc_16_l_table[(v5 ^ v4 ^ 0xF3)];
    v7 = a1[3];
    v8 = crc_16_l_table[(v7 ^ v6 ^ HIBYTE(v4))];
    v9 = crc_16_l_table[(v8 ^ HIBYTE(v6)) ^ 1];
    v10 = crc_16_l_table[(v9 ^ HIBYTE(v8))];
    *(a1 + 3) = v10 ^ ~HIBYTE(crc_16_l_table[(v8 ^ HIBYTE(v6)) ^ 1]);
    if (a2 >= 0x10)
    {
      bzero(v25, 0x7FFuLL);
      __src = 75;
      if ((v3 - 125) > 1)
      {
        v12 = 2;
      }

      else
      {
        v25[1] = v3 & 0x5F;
        v12 = 3;
        LOBYTE(v3) = 125;
      }

      v25[0] = v3;
      v13 = v12 + 1;
      if ((v5 - 125) <= 1)
      {
        v25[v13 - 1] = v5 & 0x5F;
        LOBYTE(v5) = 125;
        LODWORD(v13) = v12 + 2;
      }

      v25[v12 - 1] = v5;
      v14 = v13 + 1;
      if ((v7 - 125) <= 1)
      {
        v25[v14 - 1] = v7 & 0x5F;
        LOBYTE(v7) = 125;
        LODWORD(v14) = v13 + 2;
      }

      v25[v13 - 1] = v7;
      v15 = v14;
      v16 = v14 + 1;
      v17 = ~(v10 ^ BYTE1(v9));
      v25[v15 - 1] = 1;
      v18 = ((v10 ^ ~(v9 >> 8)) >> 8);
      v25[v16 - 1] = 0;
      v19 = (v16 + 1);
      v20 = v19 + 1;
      if ((v17 - 125) <= 1)
      {
        v25[v20 - 1] = v17 & 0x5F;
        LOBYTE(v17) = 125;
        LODWORD(v20) = v19 + 2;
      }

      v25[v19 - 1] = v17;
      v21 = v20 + 1;
      if ((v18 - 125) <= 1)
      {
        v25[v21 - 1] = v18 & 0x5F;
        LOBYTE(v18) = 125;
        LODWORD(v21) = v20 + 2;
      }

      v25[v20 - 1] = v18;
      memcpy(a1, &__src, v21);
      v2 = (v21 + 1);
      a1[v21] = 126;
    }

    else
    {
      v2 = 0xFFFFFFFFLL;
    }
  }

  v22 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t APPLIB_DIAG_AUDIO_PCM_14Bit_Stop_Loopback(char *a1, int a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v2 = 0xFFFFFFFFLL;
  if (a1 && a2 >= 13)
  {
    *a1 = 0;
    *(a1 + 5) = 0;
    *a1 = 458315;
    a1[4] = 2;
    a1[5] = 0;
    v3 = a1[1];
    v4 = crc_16_l_table[~(v3 ^ 0xAF)];
    v5 = a1[2];
    v6 = crc_16_l_table[(v5 ^ v4 ^ 0xF3)];
    v7 = a1[3];
    v8 = crc_16_l_table[(v7 ^ v6 ^ HIBYTE(v4))];
    v9 = crc_16_l_table[(v8 ^ HIBYTE(v6)) ^ 2];
    v10 = crc_16_l_table[(v9 ^ HIBYTE(v8))];
    *(a1 + 3) = v10 ^ ~HIBYTE(crc_16_l_table[(v8 ^ HIBYTE(v6)) ^ 2]);
    if (a2 >= 0x10)
    {
      bzero(v25, 0x7FFuLL);
      __src = 75;
      if ((v3 - 125) > 1)
      {
        v12 = 2;
      }

      else
      {
        v25[1] = v3 & 0x5F;
        v12 = 3;
        LOBYTE(v3) = 125;
      }

      v25[0] = v3;
      v13 = v12 + 1;
      if ((v5 - 125) <= 1)
      {
        v25[v13 - 1] = v5 & 0x5F;
        LOBYTE(v5) = 125;
        LODWORD(v13) = v12 + 2;
      }

      v25[v12 - 1] = v5;
      v14 = v13 + 1;
      if ((v7 - 125) <= 1)
      {
        v25[v14 - 1] = v7 & 0x5F;
        LOBYTE(v7) = 125;
        LODWORD(v14) = v13 + 2;
      }

      v25[v13 - 1] = v7;
      v15 = v14;
      v16 = v14 + 1;
      v17 = ~(v10 ^ BYTE1(v9));
      v25[v15 - 1] = 2;
      v18 = ((v10 ^ ~(v9 >> 8)) >> 8);
      v25[v16 - 1] = 0;
      v19 = (v16 + 1);
      v20 = v19 + 1;
      if ((v17 - 125) <= 1)
      {
        v25[v20 - 1] = v17 & 0x5F;
        LOBYTE(v17) = 125;
        LODWORD(v20) = v19 + 2;
      }

      v25[v19 - 1] = v17;
      v21 = v20 + 1;
      if ((v18 - 125) <= 1)
      {
        v25[v21 - 1] = v18 & 0x5F;
        LOBYTE(v18) = 125;
        LODWORD(v21) = v20 + 2;
      }

      v25[v20 - 1] = v18;
      memcpy(a1, &__src, v21);
      v2 = (v21 + 1);
      a1[v21] = 126;
    }

    else
    {
      v2 = 0xFFFFFFFFLL;
    }
  }

  v22 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t APPLIB_DIAG_AUDIO_PCM_16Bit_Start_Loopback(char *a1, int a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v2 = 0xFFFFFFFFLL;
  if (a1 && a2 >= 13)
  {
    *a1 = 0;
    *(a1 + 5) = 0;
    *a1 = 458315;
    a1[4] = 3;
    a1[5] = 0;
    v3 = a1[1];
    v4 = crc_16_l_table[~(v3 ^ 0xAF)];
    v5 = a1[2];
    v6 = crc_16_l_table[(v5 ^ v4 ^ 0xF3)];
    v7 = a1[3];
    v8 = crc_16_l_table[(v7 ^ v6 ^ HIBYTE(v4))];
    v9 = crc_16_l_table[(v8 ^ HIBYTE(v6)) ^ 3];
    v10 = crc_16_l_table[(v9 ^ HIBYTE(v8))];
    *(a1 + 3) = v10 ^ ~HIBYTE(crc_16_l_table[(v8 ^ HIBYTE(v6)) ^ 3]);
    if (a2 >= 0x10)
    {
      bzero(v25, 0x7FFuLL);
      __src = 75;
      if ((v3 - 125) > 1)
      {
        v12 = 2;
      }

      else
      {
        v25[1] = v3 & 0x5F;
        v12 = 3;
        LOBYTE(v3) = 125;
      }

      v25[0] = v3;
      v13 = v12 + 1;
      if ((v5 - 125) <= 1)
      {
        v25[v13 - 1] = v5 & 0x5F;
        LOBYTE(v5) = 125;
        LODWORD(v13) = v12 + 2;
      }

      v25[v12 - 1] = v5;
      v14 = v13 + 1;
      if ((v7 - 125) <= 1)
      {
        v25[v14 - 1] = v7 & 0x5F;
        LOBYTE(v7) = 125;
        LODWORD(v14) = v13 + 2;
      }

      v25[v13 - 1] = v7;
      v15 = v14;
      v16 = v14 + 1;
      v17 = ~(v10 ^ BYTE1(v9));
      v25[v15 - 1] = 3;
      v18 = ((v10 ^ ~(v9 >> 8)) >> 8);
      v25[v16 - 1] = 0;
      v19 = (v16 + 1);
      v20 = v19 + 1;
      if ((v17 - 125) <= 1)
      {
        v25[v20 - 1] = v17 & 0x5F;
        LOBYTE(v17) = 125;
        LODWORD(v20) = v19 + 2;
      }

      v25[v19 - 1] = v17;
      v21 = v20 + 1;
      if ((v18 - 125) <= 1)
      {
        v25[v21 - 1] = v18 & 0x5F;
        LOBYTE(v18) = 125;
        LODWORD(v21) = v20 + 2;
      }

      v25[v20 - 1] = v18;
      memcpy(a1, &__src, v21);
      v2 = (v21 + 1);
      a1[v21] = 126;
    }

    else
    {
      v2 = 0xFFFFFFFFLL;
    }
  }

  v22 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t APPLIB_DIAG_AUDIO_PCM_16Bit_Stop_Loopback(char *a1, int a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v2 = 0xFFFFFFFFLL;
  if (a1 && a2 >= 13)
  {
    *a1 = 0;
    *(a1 + 5) = 0;
    *a1 = 458315;
    a1[4] = 4;
    a1[5] = 0;
    v3 = a1[1];
    v4 = crc_16_l_table[~(v3 ^ 0xAF)];
    v5 = a1[2];
    v6 = crc_16_l_table[(v5 ^ v4 ^ 0xF3)];
    v7 = a1[3];
    v8 = crc_16_l_table[(v7 ^ v6 ^ HIBYTE(v4))];
    v9 = crc_16_l_table[(v8 ^ HIBYTE(v6)) ^ 4];
    v10 = crc_16_l_table[(v9 ^ HIBYTE(v8))];
    *(a1 + 3) = v10 ^ ~HIBYTE(crc_16_l_table[(v8 ^ HIBYTE(v6)) ^ 4]);
    if (a2 >= 0x10)
    {
      bzero(v25, 0x7FFuLL);
      __src = 75;
      if ((v3 - 125) > 1)
      {
        v12 = 2;
      }

      else
      {
        v25[1] = v3 & 0x5F;
        v12 = 3;
        LOBYTE(v3) = 125;
      }

      v25[0] = v3;
      v13 = v12 + 1;
      if ((v5 - 125) <= 1)
      {
        v25[v13 - 1] = v5 & 0x5F;
        LOBYTE(v5) = 125;
        LODWORD(v13) = v12 + 2;
      }

      v25[v12 - 1] = v5;
      v14 = v13 + 1;
      if ((v7 - 125) <= 1)
      {
        v25[v14 - 1] = v7 & 0x5F;
        LOBYTE(v7) = 125;
        LODWORD(v14) = v13 + 2;
      }

      v25[v13 - 1] = v7;
      v15 = v14;
      v16 = v14 + 1;
      v17 = ~(v10 ^ BYTE1(v9));
      v25[v15 - 1] = 4;
      v18 = ((v10 ^ ~(v9 >> 8)) >> 8);
      v25[v16 - 1] = 0;
      v19 = (v16 + 1);
      v20 = v19 + 1;
      if ((v17 - 125) <= 1)
      {
        v25[v20 - 1] = v17 & 0x5F;
        LOBYTE(v17) = 125;
        LODWORD(v20) = v19 + 2;
      }

      v25[v19 - 1] = v17;
      v21 = v20 + 1;
      if ((v18 - 125) <= 1)
      {
        v25[v21 - 1] = v18 & 0x5F;
        LOBYTE(v18) = 125;
        LODWORD(v21) = v20 + 2;
      }

      v25[v20 - 1] = v18;
      memcpy(a1, &__src, v21);
      v2 = (v21 + 1);
      a1[v21] = 126;
    }

    else
    {
      v2 = 0xFFFFFFFFLL;
    }
  }

  v22 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t APPLIB_DIAG_AUDIO_I2S_Start_Loopback(char *a1, int a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v2 = 0xFFFFFFFFLL;
  if (a1 && a2 >= 13)
  {
    *a1 = 0;
    *(a1 + 5) = 0;
    *a1 = 458315;
    a1[4] = 5;
    a1[5] = 0;
    v3 = a1[1];
    v4 = crc_16_l_table[~(v3 ^ 0xAF)];
    v5 = a1[2];
    v6 = crc_16_l_table[(v5 ^ v4 ^ 0xF3)];
    v7 = a1[3];
    v8 = crc_16_l_table[(v7 ^ v6 ^ HIBYTE(v4))];
    v9 = crc_16_l_table[(v8 ^ HIBYTE(v6)) ^ 5];
    v10 = crc_16_l_table[(v9 ^ HIBYTE(v8))];
    *(a1 + 3) = v10 ^ ~HIBYTE(crc_16_l_table[(v8 ^ HIBYTE(v6)) ^ 5]);
    if (a2 >= 0x10)
    {
      bzero(v25, 0x7FFuLL);
      __src = 75;
      if ((v3 - 125) > 1)
      {
        v12 = 2;
      }

      else
      {
        v25[1] = v3 & 0x5F;
        v12 = 3;
        LOBYTE(v3) = 125;
      }

      v25[0] = v3;
      v13 = v12 + 1;
      if ((v5 - 125) <= 1)
      {
        v25[v13 - 1] = v5 & 0x5F;
        LOBYTE(v5) = 125;
        LODWORD(v13) = v12 + 2;
      }

      v25[v12 - 1] = v5;
      v14 = v13 + 1;
      if ((v7 - 125) <= 1)
      {
        v25[v14 - 1] = v7 & 0x5F;
        LOBYTE(v7) = 125;
        LODWORD(v14) = v13 + 2;
      }

      v25[v13 - 1] = v7;
      v15 = v14;
      v16 = v14 + 1;
      v17 = ~(v10 ^ BYTE1(v9));
      v25[v15 - 1] = 5;
      v18 = ((v10 ^ ~(v9 >> 8)) >> 8);
      v25[v16 - 1] = 0;
      v19 = (v16 + 1);
      v20 = v19 + 1;
      if ((v17 - 125) <= 1)
      {
        v25[v20 - 1] = v17 & 0x5F;
        LOBYTE(v17) = 125;
        LODWORD(v20) = v19 + 2;
      }

      v25[v19 - 1] = v17;
      v21 = v20 + 1;
      if ((v18 - 125) <= 1)
      {
        v25[v21 - 1] = v18 & 0x5F;
        LOBYTE(v18) = 125;
        LODWORD(v21) = v20 + 2;
      }

      v25[v20 - 1] = v18;
      memcpy(a1, &__src, v21);
      v2 = (v21 + 1);
      a1[v21] = 126;
    }

    else
    {
      v2 = 0xFFFFFFFFLL;
    }
  }

  v22 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t APPLIB_DIAG_AUDIO_I2S_Stop_Loopback(char *a1, int a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v2 = 0xFFFFFFFFLL;
  if (a1 && a2 >= 13)
  {
    *a1 = 0;
    *(a1 + 5) = 0;
    *a1 = 458315;
    a1[4] = 6;
    a1[5] = 0;
    v3 = a1[1];
    v4 = crc_16_l_table[~(v3 ^ 0xAF)];
    v5 = a1[2];
    v6 = crc_16_l_table[(v5 ^ v4 ^ 0xF3)];
    v7 = a1[3];
    v8 = crc_16_l_table[(v7 ^ v6 ^ HIBYTE(v4))];
    v9 = crc_16_l_table[(v8 ^ HIBYTE(v6)) ^ 6];
    v10 = crc_16_l_table[(v9 ^ HIBYTE(v8))];
    *(a1 + 3) = v10 ^ ~HIBYTE(crc_16_l_table[(v8 ^ HIBYTE(v6)) ^ 6]);
    if (a2 >= 0x10)
    {
      bzero(v25, 0x7FFuLL);
      __src = 75;
      if ((v3 - 125) > 1)
      {
        v12 = 2;
      }

      else
      {
        v25[1] = v3 & 0x5F;
        v12 = 3;
        LOBYTE(v3) = 125;
      }

      v25[0] = v3;
      v13 = v12 + 1;
      if ((v5 - 125) <= 1)
      {
        v25[v13 - 1] = v5 & 0x5F;
        LOBYTE(v5) = 125;
        LODWORD(v13) = v12 + 2;
      }

      v25[v12 - 1] = v5;
      v14 = v13 + 1;
      if ((v7 - 125) <= 1)
      {
        v25[v14 - 1] = v7 & 0x5F;
        LOBYTE(v7) = 125;
        LODWORD(v14) = v13 + 2;
      }

      v25[v13 - 1] = v7;
      v15 = v14;
      v16 = v14 + 1;
      v17 = ~(v10 ^ BYTE1(v9));
      v25[v15 - 1] = 6;
      v18 = ((v10 ^ ~(v9 >> 8)) >> 8);
      v25[v16 - 1] = 0;
      v19 = (v16 + 1);
      v20 = v19 + 1;
      if ((v17 - 125) <= 1)
      {
        v25[v20 - 1] = v17 & 0x5F;
        LOBYTE(v17) = 125;
        LODWORD(v20) = v19 + 2;
      }

      v25[v19 - 1] = v17;
      v21 = v20 + 1;
      if ((v18 - 125) <= 1)
      {
        v25[v21 - 1] = v18 & 0x5F;
        LOBYTE(v18) = 125;
        LODWORD(v21) = v20 + 2;
      }

      v25[v20 - 1] = v18;
      memcpy(a1, &__src, v21);
      v2 = (v21 + 1);
      a1[v21] = 126;
    }

    else
    {
      v2 = 0xFFFFFFFFLL;
    }
  }

  v22 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t APPLIB_DIAG_AUDIO_PCM_I2S_PASSTHROUGH_Start(char *a1, int a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v2 = 0xFFFFFFFFLL;
  if (a1 && a2 >= 13)
  {
    *a1 = 0;
    *(a1 + 5) = 0;
    *a1 = 458315;
    a1[4] = 7;
    a1[5] = 0;
    v3 = a1[1];
    v4 = crc_16_l_table[~(v3 ^ 0xAF)];
    v5 = a1[2];
    v6 = crc_16_l_table[(v5 ^ v4 ^ 0xF3)];
    v7 = a1[3];
    v8 = crc_16_l_table[(v7 ^ v6 ^ HIBYTE(v4))];
    v9 = crc_16_l_table[(v8 ^ HIBYTE(v6)) ^ 7];
    v10 = crc_16_l_table[(v9 ^ HIBYTE(v8))];
    *(a1 + 3) = v10 ^ ~HIBYTE(crc_16_l_table[(v8 ^ HIBYTE(v6)) ^ 7]);
    if (a2 >= 0x10)
    {
      bzero(v25, 0x7FFuLL);
      __src = 75;
      if ((v3 - 125) > 1)
      {
        v12 = 2;
      }

      else
      {
        v25[1] = v3 & 0x5F;
        v12 = 3;
        LOBYTE(v3) = 125;
      }

      v25[0] = v3;
      v13 = v12 + 1;
      if ((v5 - 125) <= 1)
      {
        v25[v13 - 1] = v5 & 0x5F;
        LOBYTE(v5) = 125;
        LODWORD(v13) = v12 + 2;
      }

      v25[v12 - 1] = v5;
      v14 = v13 + 1;
      if ((v7 - 125) <= 1)
      {
        v25[v14 - 1] = v7 & 0x5F;
        LOBYTE(v7) = 125;
        LODWORD(v14) = v13 + 2;
      }

      v25[v13 - 1] = v7;
      v15 = v14;
      v16 = v14 + 1;
      v17 = ~(v10 ^ BYTE1(v9));
      v25[v15 - 1] = 7;
      v18 = ((v10 ^ ~(v9 >> 8)) >> 8);
      v25[v16 - 1] = 0;
      v19 = (v16 + 1);
      v20 = v19 + 1;
      if ((v17 - 125) <= 1)
      {
        v25[v20 - 1] = v17 & 0x5F;
        LOBYTE(v17) = 125;
        LODWORD(v20) = v19 + 2;
      }

      v25[v19 - 1] = v17;
      v21 = v20 + 1;
      if ((v18 - 125) <= 1)
      {
        v25[v21 - 1] = v18 & 0x5F;
        LOBYTE(v18) = 125;
        LODWORD(v21) = v20 + 2;
      }

      v25[v20 - 1] = v18;
      memcpy(a1, &__src, v21);
      v2 = (v21 + 1);
      a1[v21] = 126;
    }

    else
    {
      v2 = 0xFFFFFFFFLL;
    }
  }

  v22 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t APPLIB_DIAG_AUDIO_PCM_I2S_PASSTHROUGH_Stop(char *a1, int a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v2 = 0xFFFFFFFFLL;
  if (a1 && a2 >= 13)
  {
    *a1 = 0;
    *(a1 + 5) = 0;
    *a1 = 458315;
    a1[4] = 8;
    a1[5] = 0;
    v3 = a1[1];
    v4 = crc_16_l_table[~(v3 ^ 0xAF)];
    v5 = a1[2];
    v6 = crc_16_l_table[(v5 ^ v4 ^ 0xF3)];
    v7 = a1[3];
    v8 = crc_16_l_table[(v7 ^ v6 ^ HIBYTE(v4))];
    v9 = crc_16_l_table[(v8 ^ HIBYTE(v6)) ^ 8];
    v10 = crc_16_l_table[(v9 ^ HIBYTE(v8))];
    *(a1 + 3) = v10 ^ ~HIBYTE(crc_16_l_table[(v8 ^ HIBYTE(v6)) ^ 8]);
    if (a2 >= 0x10)
    {
      bzero(v25, 0x7FFuLL);
      __src = 75;
      if ((v3 - 125) > 1)
      {
        v12 = 2;
      }

      else
      {
        v25[1] = v3 & 0x5F;
        v12 = 3;
        LOBYTE(v3) = 125;
      }

      v25[0] = v3;
      v13 = v12 + 1;
      if ((v5 - 125) <= 1)
      {
        v25[v13 - 1] = v5 & 0x5F;
        LOBYTE(v5) = 125;
        LODWORD(v13) = v12 + 2;
      }

      v25[v12 - 1] = v5;
      v14 = v13 + 1;
      if ((v7 - 125) <= 1)
      {
        v25[v14 - 1] = v7 & 0x5F;
        LOBYTE(v7) = 125;
        LODWORD(v14) = v13 + 2;
      }

      v25[v13 - 1] = v7;
      v15 = v14;
      v16 = v14 + 1;
      v17 = ~(v10 ^ BYTE1(v9));
      v25[v15 - 1] = 8;
      v18 = ((v10 ^ ~(v9 >> 8)) >> 8);
      v25[v16 - 1] = 0;
      v19 = (v16 + 1);
      v20 = v19 + 1;
      if ((v17 - 125) <= 1)
      {
        v25[v20 - 1] = v17 & 0x5F;
        LOBYTE(v17) = 125;
        LODWORD(v20) = v19 + 2;
      }

      v25[v19 - 1] = v17;
      v21 = v20 + 1;
      if ((v18 - 125) <= 1)
      {
        v25[v21 - 1] = v18 & 0x5F;
        LOBYTE(v18) = 125;
        LODWORD(v21) = v20 + 2;
      }

      v25[v20 - 1] = v18;
      memcpy(a1, &__src, v21);
      v2 = (v21 + 1);
      a1[v21] = 126;
    }

    else
    {
      v2 = 0xFFFFFFFFLL;
    }
  }

  v22 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t APPLIB_DIAG_AUDIO_I2S_PCM_PASSTHROUGH_Start(char *a1, int a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v2 = 0xFFFFFFFFLL;
  if (a1 && a2 >= 13)
  {
    *a1 = 0;
    *(a1 + 5) = 0;
    *a1 = 458315;
    a1[4] = 9;
    a1[5] = 0;
    v3 = a1[1];
    v4 = crc_16_l_table[~(v3 ^ 0xAF)];
    v5 = a1[2];
    v6 = crc_16_l_table[(v5 ^ v4 ^ 0xF3)];
    v7 = a1[3];
    v8 = crc_16_l_table[(v7 ^ v6 ^ HIBYTE(v4))];
    v9 = crc_16_l_table[(v8 ^ HIBYTE(v6)) ^ 9];
    v10 = crc_16_l_table[(v9 ^ HIBYTE(v8))];
    *(a1 + 3) = v10 ^ ~HIBYTE(crc_16_l_table[(v8 ^ HIBYTE(v6)) ^ 9]);
    if (a2 >= 0x10)
    {
      bzero(v25, 0x7FFuLL);
      __src = 75;
      if ((v3 - 125) > 1)
      {
        v12 = 2;
      }

      else
      {
        v25[1] = v3 & 0x5F;
        v12 = 3;
        LOBYTE(v3) = 125;
      }

      v25[0] = v3;
      v13 = v12 + 1;
      if ((v5 - 125) <= 1)
      {
        v25[v13 - 1] = v5 & 0x5F;
        LOBYTE(v5) = 125;
        LODWORD(v13) = v12 + 2;
      }

      v25[v12 - 1] = v5;
      v14 = v13 + 1;
      if ((v7 - 125) <= 1)
      {
        v25[v14 - 1] = v7 & 0x5F;
        LOBYTE(v7) = 125;
        LODWORD(v14) = v13 + 2;
      }

      v25[v13 - 1] = v7;
      v15 = v14;
      v16 = v14 + 1;
      v17 = ~(v10 ^ BYTE1(v9));
      v25[v15 - 1] = 9;
      v18 = ((v10 ^ ~(v9 >> 8)) >> 8);
      v25[v16 - 1] = 0;
      v19 = (v16 + 1);
      v20 = v19 + 1;
      if ((v17 - 125) <= 1)
      {
        v25[v20 - 1] = v17 & 0x5F;
        LOBYTE(v17) = 125;
        LODWORD(v20) = v19 + 2;
      }

      v25[v19 - 1] = v17;
      v21 = v20 + 1;
      if ((v18 - 125) <= 1)
      {
        v25[v21 - 1] = v18 & 0x5F;
        LOBYTE(v18) = 125;
        LODWORD(v21) = v20 + 2;
      }

      v25[v20 - 1] = v18;
      memcpy(a1, &__src, v21);
      v2 = (v21 + 1);
      a1[v21] = 126;
    }

    else
    {
      v2 = 0xFFFFFFFFLL;
    }
  }

  v22 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t APPLIB_DIAG_AUDIO_I2S_PCM_PASSTHROUGH_Stop(char *a1, int a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v2 = 0xFFFFFFFFLL;
  if (a1 && a2 >= 13)
  {
    *a1 = 0;
    *(a1 + 5) = 0;
    *a1 = 458315;
    a1[4] = 10;
    a1[5] = 0;
    v3 = a1[1];
    v4 = crc_16_l_table[~(v3 ^ 0xAF)];
    v5 = a1[2];
    v6 = crc_16_l_table[(v5 ^ v4 ^ 0xF3)];
    v7 = a1[3];
    v8 = crc_16_l_table[(v7 ^ v6 ^ HIBYTE(v4))];
    v9 = crc_16_l_table[(v8 ^ HIBYTE(v6)) ^ 0xA];
    v10 = crc_16_l_table[(v9 ^ HIBYTE(v8))];
    *(a1 + 3) = v10 ^ ~HIBYTE(crc_16_l_table[(v8 ^ HIBYTE(v6)) ^ 0xA]);
    if (a2 >= 0x10)
    {
      bzero(v25, 0x7FFuLL);
      __src = 75;
      if ((v3 - 125) > 1)
      {
        v12 = 2;
      }

      else
      {
        v25[1] = v3 & 0x5F;
        v12 = 3;
        LOBYTE(v3) = 125;
      }

      v25[0] = v3;
      v13 = v12 + 1;
      if ((v5 - 125) <= 1)
      {
        v25[v13 - 1] = v5 & 0x5F;
        LOBYTE(v5) = 125;
        LODWORD(v13) = v12 + 2;
      }

      v25[v12 - 1] = v5;
      v14 = v13 + 1;
      if ((v7 - 125) <= 1)
      {
        v25[v14 - 1] = v7 & 0x5F;
        LOBYTE(v7) = 125;
        LODWORD(v14) = v13 + 2;
      }

      v25[v13 - 1] = v7;
      v15 = v14;
      v16 = v14 + 1;
      v17 = ~(v10 ^ BYTE1(v9));
      v25[v15 - 1] = 10;
      v18 = ((v10 ^ ~(v9 >> 8)) >> 8);
      v25[v16 - 1] = 0;
      v19 = (v16 + 1);
      v20 = v19 + 1;
      if ((v17 - 125) <= 1)
      {
        v25[v20 - 1] = v17 & 0x5F;
        LOBYTE(v17) = 125;
        LODWORD(v20) = v19 + 2;
      }

      v25[v19 - 1] = v17;
      v21 = v20 + 1;
      if ((v18 - 125) <= 1)
      {
        v25[v21 - 1] = v18 & 0x5F;
        LOBYTE(v18) = 125;
        LODWORD(v21) = v20 + 2;
      }

      v25[v20 - 1] = v18;
      memcpy(a1, &__src, v21);
      v2 = (v21 + 1);
      a1[v21] = 126;
    }

    else
    {
      v2 = 0xFFFFFFFFLL;
    }
  }

  v22 = *MEMORY[0x29EDCA608];
  return v2;
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

_OWORD *_ETLDMCCreateFromFile(const char *a1, uint64_t a2, int a3, int a4)
{
  v48 = *MEMORY[0x29EDCA608];
  v7 = xmlNewParserCtxt();
  if (v7)
  {
    v8 = v7;
    v9 = open(a1, 4);
    if (v9 < 0)
    {
      v17 = __error();
      strerror(*v17);
      _ETLDebugPrint();
    }

    else
    {
      v10 = v9;
      v11 = lseek(v9, 0, 2);
      lseek(v10, 0, 0);
      if (v11 <= 0x200000)
      {
        v12 = malloc(v11);
        if (!v12)
        {
          close(v10);
          goto LABEL_13;
        }

        v13 = TelephonyUtilUnblockableReadToCompletionWithTimeout();
        close(v10);
        if (!v13)
        {
LABEL_13:
          v16 = 0;
LABEL_14:
          xmlFreeParserCtxt(v8);
          free(v12);
          goto LABEL_15;
        }

        if (v11 < 1)
        {
          goto LABEL_68;
        }

        if (v11 < 4)
        {
          v15 = 0;
LABEL_77:
          v31 = &v12[v15];
          v32 = v11 - v15;
          do
          {
            if (*v31 == 13)
            {
              *v31 = 32;
            }

            ++v31;
            --v32;
          }

          while (v32);
LABEL_68:
          Memory = xmlCtxtReadMemory(v8, v12, v11, "", 0, 1);
          if (Memory)
          {
            v27 = Memory;
            if (!v8->valid)
            {
LABEL_120:
              v16 = 0;
              goto LABEL_121;
            }

            v16 = _ETLDMCAllocate();
            if (!v16)
            {
LABEL_121:
              xmlFreeDoc(v27);
              goto LABEL_14;
            }

            _ETLDebugPrint();
            RootElement = xmlDocGetRootElement(v27);
            if (RootElement)
            {
              v29 = RootElement;
              v30 = RootElement;
              while (v30->type != XML_ELEMENT_NODE || strcmp("QXDMProfessional", v30->name))
              {
                v30 = v30->next;
                if (!v30)
                {
                  while (v29->type != XML_ELEMENT_NODE || strcmp("QXDM", v29->name))
                  {
                    v29 = v29->next;
                    if (!v29)
                    {
                      goto LABEL_118;
                    }
                  }

                  v30 = v29;
                  break;
                }
              }

              children = v30->children;
              if (children)
              {
                while (children->type != XML_ELEMENT_NODE || strcmp("Persistence", children->name))
                {
                  children = children->next;
                  if (!children)
                  {
                    goto LABEL_118;
                  }
                }

                v34 = children->children;
                if (v34)
                {
                  if (a3 != 3)
                  {
                    if (a3 == 1)
                    {
LABEL_97:
                      if (_ETLDMCLoadViewFromFile(v16 + 5, "LoggingView", v34, 0))
                      {
                        goto LABEL_98;
                      }

                      ETLDMCViewFree(v16 + 10);
                      goto LABEL_119;
                    }

                    if (a3)
                    {
LABEL_98:
                      if ((a3 & 0xFFFFFFFE) == 2)
                      {
                        while (*(v34 + 8) != 1 || strcmp("Displays", *(v34 + 16)))
                        {
                          v34 = *(v34 + 48);
                          if (!v34)
                          {
                            goto LABEL_122;
                          }
                        }

                        v35 = *(v34 + 24);
                        if (v35)
                        {
                          v41 = 0;
                          *&v36 = 0xAAAAAAAAAAAAAAAALL;
                          *(&v36 + 1) = 0xAAAAAAAAAAAAAAAALL;
                          *__str = v36;
                          v47 = v36;
                          v44 = v36;
                          v45 = v36;
                          v42 = v36;
                          v43 = v36;
                          while (2)
                          {
                            snprintf(__str, 0x20uLL, "%s%u", "Display", v41);
                            v37 = v35;
                            while (*(v37 + 8) != 1 || strcmp(__str, *(v37 + 16)))
                            {
                              v37 = *(v37 + 48);
                              if (!v37)
                              {
                                goto LABEL_122;
                              }
                            }

                            v38 = *(v37 + 24);
                            if (v38)
                            {
                              v44 = 0u;
                              v45 = 0u;
                              v39 = v38;
                              v42 = 0u;
                              v43 = 0u;
                              while (*(v39 + 8) != 1 || strcmp("View", *(v39 + 16)))
                              {
                                v39 = *(v39 + 48);
                                if (!v39)
                                {
                                  goto LABEL_117;
                                }
                              }

                              if (_ETLDMCLoadViewFromFile(&v42, "View", v38, a4))
                              {
                                v40 = ETLDMCViewMergeInto((v16 + 9), &v42);
                                ETLDMCViewFree(&v42);
                                if (v40)
                                {
LABEL_117:
                                  ++v41;
                                  continue;
                                }
                              }

                              else
                              {
                                ETLDMCViewFree(&v42);
                              }

                              ETLDMCViewFree(v16 + 18);
                              goto LABEL_119;
                            }

                            break;
                          }
                        }

LABEL_122:
                        if (a3 == 3 && (_ETLDMCGenerateMergedView(v16) & 1) == 0)
                        {
                          ETLDMCViewFree(v16 + 26);
                          goto LABEL_119;
                        }
                      }

                      _ETLDebugPrint();
                      goto LABEL_121;
                    }
                  }

                  if (_ETLDMCLoadViewFromFile(v16 + 1, "MessagesView", children->children, 0))
                  {
                    if ((a3 | 2) == 3)
                    {
                      goto LABEL_97;
                    }

                    goto LABEL_98;
                  }

                  ETLDMCViewFree(v16 + 2);
                }
              }

              else
              {
LABEL_118:
                _ETLDebugPrint();
              }
            }

LABEL_119:
            _ETLDebugPrint();
            CFRelease(v16);
            goto LABEL_120;
          }

          goto LABEL_13;
        }

        if (v11 < 0x10)
        {
          v15 = 0;
          goto LABEL_56;
        }

        v15 = v11 & 0x3FFFF0;
        v20 = v12 + 7;
        v21.i64[0] = 0xD0D0D0D0D0D0D0DLL;
        v21.i64[1] = 0xD0D0D0D0D0D0D0DLL;
        v22 = v11 & 0x7FFFFFFFFFFFFFF0;
        while (1)
        {
          v14 = vceqq_s8(*(v20 - 7), v21);
          if (v14.i8[0])
          {
            *(v20 - 7) = 32;
            if ((v14.i8[1] & 1) == 0)
            {
              goto LABEL_23;
            }
          }

          else if ((v14.i8[1] & 1) == 0)
          {
LABEL_23:
            if (v14.i8[2])
            {
              goto LABEL_24;
            }

            goto LABEL_40;
          }

          *(v20 - 6) = 32;
          if (v14.i8[2])
          {
LABEL_24:
            *(v20 - 5) = 32;
            if ((v14.i8[3] & 1) == 0)
            {
              goto LABEL_25;
            }

            goto LABEL_41;
          }

LABEL_40:
          if ((v14.i8[3] & 1) == 0)
          {
LABEL_25:
            if (v14.i8[4])
            {
              goto LABEL_26;
            }

            goto LABEL_42;
          }

LABEL_41:
          *(v20 - 4) = 32;
          if (v14.i8[4])
          {
LABEL_26:
            *(v20 - 3) = 32;
            if ((v14.i8[5] & 1) == 0)
            {
              goto LABEL_27;
            }

            goto LABEL_43;
          }

LABEL_42:
          if ((v14.i8[5] & 1) == 0)
          {
LABEL_27:
            if (v14.i8[6])
            {
              goto LABEL_28;
            }

            goto LABEL_44;
          }

LABEL_43:
          *(v20 - 2) = 32;
          if (v14.i8[6])
          {
LABEL_28:
            *(v20 - 1) = 32;
            if ((v14.i8[7] & 1) == 0)
            {
              goto LABEL_29;
            }

            goto LABEL_45;
          }

LABEL_44:
          if ((v14.i8[7] & 1) == 0)
          {
LABEL_29:
            if (v14.i8[8])
            {
              goto LABEL_30;
            }

            goto LABEL_46;
          }

LABEL_45:
          *v20 = 32;
          if (v14.i8[8])
          {
LABEL_30:
            v20[1] = 32;
            if ((v14.i8[9] & 1) == 0)
            {
              goto LABEL_31;
            }

            goto LABEL_47;
          }

LABEL_46:
          if ((v14.i8[9] & 1) == 0)
          {
LABEL_31:
            if (v14.i8[10])
            {
              goto LABEL_32;
            }

            goto LABEL_48;
          }

LABEL_47:
          v20[2] = 32;
          if (v14.i8[10])
          {
LABEL_32:
            v20[3] = 32;
            if ((v14.i8[11] & 1) == 0)
            {
              goto LABEL_33;
            }

            goto LABEL_49;
          }

LABEL_48:
          if ((v14.i8[11] & 1) == 0)
          {
LABEL_33:
            if (v14.i8[12])
            {
              goto LABEL_34;
            }

            goto LABEL_50;
          }

LABEL_49:
          v20[4] = 32;
          if (v14.i8[12])
          {
LABEL_34:
            v20[5] = 32;
            if ((v14.i8[13] & 1) == 0)
            {
              goto LABEL_35;
            }

            goto LABEL_51;
          }

LABEL_50:
          if ((v14.i8[13] & 1) == 0)
          {
LABEL_35:
            if (v14.i8[14])
            {
              goto LABEL_36;
            }

            goto LABEL_52;
          }

LABEL_51:
          v20[6] = 32;
          if (v14.i8[14])
          {
LABEL_36:
            v20[7] = 32;
            if (v14.i8[15])
            {
              goto LABEL_53;
            }

            goto LABEL_20;
          }

LABEL_52:
          if (v14.i8[15])
          {
LABEL_53:
            v20[8] = 32;
          }

LABEL_20:
          v20 += 16;
          v22 -= 16;
          if (!v22)
          {
            if (v11 == v15)
            {
              goto LABEL_68;
            }

            if ((v11 & 0xC) == 0)
            {
              goto LABEL_77;
            }

LABEL_56:
            v23 = v15;
            v15 = v11 & 0x7FFFFFFFFFFFFFFCLL;
            v24 = v23 - (v11 & 0x7FFFFFFFFFFFFFFCLL);
            v25 = &v12[v23 + 1];
            while (2)
            {
              v14.i32[0] = *(v25 - 1);
              *v14.i8 = vceq_s16(*&vmovl_u8(*v14.i8), 0xD000D000D000DLL);
              if (v14.i8[0])
              {
                *(v25 - 1) = 32;
                if ((v14.i8[2] & 1) == 0)
                {
                  goto LABEL_60;
                }

LABEL_64:
                *v25 = 32;
                if ((v14.i8[4] & 1) == 0)
                {
                  goto LABEL_65;
                }

LABEL_61:
                v25[1] = 32;
                if (v14.i8[6])
                {
                  goto LABEL_66;
                }
              }

              else
              {
                if (v14.i8[2])
                {
                  goto LABEL_64;
                }

LABEL_60:
                if (v14.i8[4])
                {
                  goto LABEL_61;
                }

LABEL_65:
                if (v14.i8[6])
                {
LABEL_66:
                  v25[2] = 32;
                }
              }

              v25 += 4;
              v24 += 4;
              if (!v24)
              {
                if (v11 == v15)
                {
                  goto LABEL_68;
                }

                goto LABEL_77;
              }

              continue;
            }
          }
        }
      }

      _ETLDebugPrint();
      close(v10);
    }

    v12 = 0;
    goto LABEL_13;
  }

  _ETLDebugPrint();
  v16 = 0;
LABEL_15:
  v18 = *MEMORY[0x29EDCA608];
  return v16;
}

void ETLDMCFree(void *a1)
{
  ETLDMCViewFree(a1 + 2);
  ETLDMCViewFree(a1 + 10);
  ETLDMCViewFree(a1 + 18);

  ETLDMCViewFree(a1 + 26);
}

const void *ETLDMCMerge(unsigned int *a1, unsigned int *a2)
{
  _ETLDebugPrint();
  v4 = _ETLDMCAllocate();
  v5 = v4;
  if (v4 && (!ETLDMCViewMerge((v4 + 1), a1 + 4, a2 + 4) || !ETLDMCViewMerge(v5 + 80, a1 + 20, a2 + 20) || !ETLDMCViewMerge(v5 + 144, a1 + 36, a2 + 36) || (ETLDMCViewMerge(v5 + 208, a1 + 52, a2 + 52) & 1) == 0))
  {
    CFRelease(v5);
    return 0;
  }

  return v5;
}

uint64_t ETLDMCAppend(CFTypeRef *a1, unsigned int *cf)
{
  v2 = cf;
  v4 = *a1;
  if (v4)
  {
    result = ETLDMCMerge(v4, cf);
    if (!result)
    {
      return result;
    }

    v2 = result;
    CFRelease(*a1);
  }

  else
  {
    CFRetain(cf);
  }

  *a1 = v2;
  return 1;
}

uint64_t _ETLDMCLoadViewFromFile(_OWORD *a1, char *__s1, uint64_t a3, int a4)
{
  v61 = *MEMORY[0x29EDCA608];
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  while (*(a3 + 8) != 1 || strcmp(__s1, *(a3 + 16)))
  {
    a3 = *(a3 + 48);
    if (!a3)
    {
      goto LABEL_77;
    }
  }

  v8 = *(a3 + 24);
  if (!v8)
  {
    goto LABEL_77;
  }

  while (*(v8 + 8) != 1 || strcmp("ISVConfig", *(v8 + 16)))
  {
    v8 = *(v8 + 48);
    if (!v8)
    {
      goto LABEL_77;
    }
  }

  v9 = *(v8 + 24);
  if (!v9)
  {
LABEL_77:
    result = 1;
    v54 = *MEMORY[0x29EDCA608];
    return result;
  }

  _ETLDebugPrint();
  v10 = v9;
  while (*(v10 + 8) != 1 || strcmp("EventIDs", *(v10 + 16)))
  {
    v10 = *(v10 + 48);
    if (!v10)
    {
      goto LABEL_32;
    }
  }

  v11 = *(v10 + 24);
  if (v11 && *(v11 + 8) == 3)
  {
    v57[0] = *(v11 + 80);
    v57[1] = 0;
    v12 = ETLDMCParserCountTokens(v57, 44);
    v13 = v12;
    if (v12)
    {
      v14 = malloc(2 * v12);
      if (!v14)
      {
LABEL_28:
        free(v14);
        goto LABEL_78;
      }

      v15 = 0;
      v16 = 0;
      v56 = v13;
      v17 = 2 * v13;
      v18 = -1;
      v19 = MEMORY[0x29EDCA600];
      do
      {
        *&v24 = 0xAAAAAAAAAAAAAAAALL;
        *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *__str = v24;
        v60 = v24;
        if (!ETLDMCParserGetToken(v57, 0x2Cu, __str, 0x20u))
        {
          goto LABEL_28;
        }

        __endptr = 0xAAAAAAAAAAAAAAAALL;
        v23 = strtoul(__str, &__endptr, 10);
        v25 = *__endptr;
        if (*__endptr)
        {
          if ((v25 & 0x80000000) != 0)
          {
            v20 = v19;
            v21 = v23;
            v22 = __maskrune(*__endptr, 0x4000uLL);
            v23 = v21;
            v19 = v20;
            if (!v22)
            {
              goto LABEL_28;
            }
          }

          else if ((*(v19 + 4 * v25 + 60) & 0x4000) == 0)
          {
            goto LABEL_28;
          }
        }

        *&v14[v15] = v23;
        if (v18 != v23)
        {
          ++v16;
        }

        v18 = v23 + 1;
        v15 += 2;
      }

      while (v17 != v15);
      v13 = v56;
    }

    else
    {
      v16 = 0;
      v14 = 0;
    }

    v26 = ETLDMCLoadEventRangesFromEventsArray(a1, v14, v16, v13);
    free(v14);
    if (!v26)
    {
      goto LABEL_78;
    }
  }

LABEL_32:
  v27 = v9;
  while (*(v27 + 8) != 1 || strcmp("MessageLevels", *(v27 + 16)))
  {
    v27 = *(v27 + 48);
    if (!v27)
    {
      goto LABEL_74;
    }
  }

  v28 = *(v27 + 24);
  if (!v28 || *(v28 + 8) != 3)
  {
LABEL_74:
    if (!_ETLDMCParseLogCodesInternal(v9, "LogCodes", a1, a4) || !_ETLDMCParseLogCodesInternal(v9, "OTATypes", a1, 0) || (_ETLDMCParseQTraces(v9, a1) & 1) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

  v29 = malloc(0x34000uLL);
  if (!v29)
  {
    goto LABEL_78;
  }

  v30 = v29;
  bzero(v29, 0x34000uLL);
  v31 = 0;
  v32 = *(v28 + 80);
  while (1)
  {
    *&v33 = 0xAAAAAAAAAAAAAAAALL;
    *(&v33 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *__str = v33;
    v60 = v33;
    v34 = *(v32 + v31);
    LODWORD(v35) = v31;
    if (v34 == 44)
    {
LABEL_44:
      v35 = (v35 + 1);
      v37 = v35 - v31;
      goto LABEL_47;
    }

    v36 = -1;
    v35 = v31;
    while (v34)
    {
      v35 = (v35 + 1);
      v34 = *(v32 + v35);
      --v36;
      if (v34 == 44)
      {
        goto LABEL_44;
      }
    }

    if (v36 == -1)
    {
      break;
    }

    v37 = -v36;
LABEL_47:
    v31 = v35;
    if (!v37)
    {
      break;
    }

    __strlcpy_chk();
    v38 = strchr(__str, 47);
    if (!v38)
    {
      goto LABEL_62;
    }

    v39 = v38;
    *v38 = 0;
    v57[0] = 0xAAAAAAAAAAAAAAAALL;
    v40 = strtoul(__str, v57, 10);
    v41 = *v57[0];
    if (*v57[0])
    {
      if (!((v41 & 0x80000000) != 0 ? __maskrune(v41, 0x4000uLL) : *(MEMORY[0x29EDCA600] + 4 * v41 + 60) & 0x4000))
      {
        goto LABEL_62;
      }
    }

    if ((v57[0] = 0xAAAAAAAAAAAAAAAALL, v43 = strtoul(v39 + 1, v57, 10), (v44 = *v57[0]) != 0) && ((v44 & 0x80000000) != 0 ? (v46 = v43, v45 = __maskrune(*v57[0], 0x4000uLL), v43 = v46) : (v45 = *(MEMORY[0x29EDCA600] + 4 * v44 + 60) & 0x4000), !v45) || v40 >> 12 > 0xC)
    {
LABEL_62:
      free(v30);
      goto LABEL_78;
    }

    *(v30 + v40) |= 1 << v43;
  }

  v47 = 0;
  v48 = 0;
  v49 = 0;
  do
  {
    if ((v47 - v48) > 1 || v49 == 0)
    {
      v51 = v49 + 1;
    }

    else
    {
      v51 = v49;
    }

    if (*(v30 + v47))
    {
      v49 = v51;
      v48 = v47;
    }

    ++v47;
  }

  while (v47 != 53248);
  MessagesFromMaskArray = ETLDMCViewLoadMessagesFromMaskArray(a1, v30, v49);
  free(v30);
  if (MessagesFromMaskArray)
  {
    goto LABEL_74;
  }

LABEL_78:
  _ETLDebugPrint();
  result = 0;
  v55 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _ETLDMCGenerateMergedView(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  if ((ETLDMCViewMerge(&v10, (a1 + 208), (a1 + 16)) & 1) == 0)
  {
    goto LABEL_6;
  }

  ETLDMCViewFree((a1 + 208));
  v2 = v11;
  *(a1 + 208) = v10;
  *(a1 + 224) = v2;
  v3 = v13;
  *(a1 + 240) = v12;
  *(a1 + 256) = v3;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  if (ETLDMCViewMerge(&v10, (a1 + 208), (a1 + 80)))
  {
    ETLDMCViewFree((a1 + 208));
    v4 = v11;
    *(a1 + 208) = v10;
    *(a1 + 224) = v4;
    v5 = v13;
    *(a1 + 240) = v12;
    *(a1 + 256) = v5;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v6 = ETLDMCViewMerge(&v10, (a1 + 208), (a1 + 144));
    if (v6)
    {
      ETLDMCViewFree((a1 + 208));
      v7 = v11;
      *(a1 + 208) = v10;
      *(a1 + 224) = v7;
      v8 = v13;
      *(a1 + 240) = v12;
      *(a1 + 256) = v8;
    }

    else
    {
      ETLDMCViewFree(&v10);
    }

    return v6;
  }

  else
  {
LABEL_6:
    ETLDMCViewFree(&v10);
    return 0;
  }
}

uint64_t _ETLDMCParseQTraces(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x29EDCA608];
  while (*(a1 + 8) != 1 || strcmp("QTraces", *(a1 + 16)))
  {
    a1 = *(a1 + 48);
    if (!a1)
    {
      goto LABEL_10;
    }
  }

  v4 = *(a1 + 24);
  if (!v4 || *(v4 + 8) != 3)
  {
LABEL_10:
    _ETLDebugPrint();
    result = 1;
    goto LABEL_11;
  }

  v5 = malloc(0x20000uLL);
  if (!v5)
  {
    _ETLDebugPrint();
    result = 0;
    goto LABEL_11;
  }

  v6 = v5;
  bzero(v5, 0x20000uLL);
  v7 = *(v4 + 80);
  *__s = 0u;
  v30 = 0u;
  v8 = *v7;
  if (v8 == 44)
  {
    v9 = 1;
  }

  else
  {
    v9 = 0;
    while (v8)
    {
      v9 = (v9 + 1);
      v8 = v7[v9];
      if (v8 == 44)
      {
        v12 = v9 + 1;
        v9 = (v9 + 1);
        goto LABEL_19;
      }
    }

    if (!v9)
    {
      goto LABEL_46;
    }

    v12 = v9 + 1;
LABEL_19:
    if (!v12)
    {
      goto LABEL_46;
    }
  }

  __strlcpy_chk();
  v13 = strchr(__s, 47);
  if (!v13)
  {
    goto LABEL_45;
  }

  v14 = v13;
  v15 = MEMORY[0x29EDCA600];
  while (1)
  {
    *v14 = 0;
    __endptr = 0xAAAAAAAAAAAAAAAALL;
    v16 = strtoul(__s, &__endptr, 10);
    v17 = *__endptr;
    if (*__endptr)
    {
      if ((v17 & 0x80000000) != 0)
      {
        if (!__maskrune(v17, 0x4000uLL))
        {
          goto LABEL_45;
        }
      }

      else if ((*(v15 + 4 * v17 + 60) & 0x4000) == 0)
      {
        goto LABEL_45;
      }
    }

    __endptr = 0xAAAAAAAAAAAAAAAALL;
    v18 = strtoul(v14 + 1, &__endptr, 10);
    v19 = *__endptr;
    if (*__endptr)
    {
      if ((v19 & 0x80000000) != 0)
      {
        v20 = v18;
        v21 = __maskrune(*__endptr, 0x4000uLL);
        v18 = v20;
        if (!v21)
        {
          goto LABEL_45;
        }
      }

      else if ((*(v15 + 4 * v19 + 60) & 0x4000) == 0)
      {
        goto LABEL_45;
      }
    }

    v6->i16[v16] |= 1 << v18;
    v22 = v7[v9];
    LODWORD(v23) = v9;
    if (v22 != 44)
    {
      break;
    }

LABEL_36:
    v25 = (v23 + 1);
    v26 = v25 - v9;
    v9 = v25;
    if (!v26)
    {
      goto LABEL_43;
    }

LABEL_40:
    __strlcpy_chk();
    v14 = strchr(__s, 47);
    if (!v14)
    {
      goto LABEL_45;
    }
  }

  v24 = -1;
  v23 = v9;
  while (v22)
  {
    v23 = (v23 + 1);
    v22 = v7[v23];
    --v24;
    if (v22 == 44)
    {
      goto LABEL_36;
    }
  }

  if (v24 != -1)
  {
    v9 = v23;
    if (v24)
    {
      goto LABEL_40;
    }
  }

LABEL_43:
  if (ETLDMCViewLoadQTraces(a2, v6, 0x10000u))
  {
    v27 = 1;
    goto LABEL_47;
  }

LABEL_45:
  _ETLDebugPrint();
LABEL_46:
  v27 = 0;
LABEL_47:
  free(v6);
  result = v27;
LABEL_11:
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _ETLDMCParseLogCodesInternal(uint64_t a1, char *__s1, uint64_t a3, int a4)
{
  v41 = *MEMORY[0x29EDCA608];
  while (*(a1 + 8) != 1 || strcmp(__s1, *(a1 + 16)))
  {
    a1 = *(a1 + 48);
    if (!a1)
    {
      goto LABEL_69;
    }
  }

  v8 = *(a1 + 24);
  if (!v8 || *(v8 + 8) != 3)
  {
LABEL_69:
    result = 1;
    goto LABEL_70;
  }

  v9 = *(v8 + 80);
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__s = v10;
  v40 = v10;
  v11 = *v9;
  if (v11 == 44)
  {
    v12 = 1;
    goto LABEL_16;
  }

  v12 = 0;
  do
  {
    if (!v11)
    {
      if (v12 && v12 != -1)
      {
        goto LABEL_16;
      }

LABEL_22:
      result = 0;
      if (!a4)
      {
        goto LABEL_70;
      }

LABEL_61:
      v36 = *(a3 + 16);
      if (!v36)
      {
        result = malloc(0x100uLL);
        *(a3 + 16) = result;
        if (!result)
        {
          goto LABEL_70;
        }

        v36 = result;
        *(result + 224) = 0u;
        *(result + 240) = 0u;
        *(result + 192) = 0u;
        *(result + 208) = 0u;
        *(result + 160) = 0u;
        *(result + 176) = 0u;
        *(result + 128) = 0u;
        *(result + 144) = 0u;
        *(result + 96) = 0u;
        *(result + 112) = 0u;
        *(result + 64) = 0u;
        *(result + 80) = 0u;
        *(result + 32) = 0u;
        *(result + 48) = 0u;
        *result = 0u;
        *(result + 16) = 0u;
      }

      result = *(v36 + 24);
      if (!result)
      {
        result = malloc(0x200uLL);
        *(v36 + 24) = result;
        if (!result)
        {
          goto LABEL_70;
        }

        *(result + 480) = 0u;
        *(result + 496) = 0u;
        *(result + 448) = 0u;
        *(result + 464) = 0u;
        *(result + 416) = 0u;
        *(result + 432) = 0u;
        *(result + 384) = 0u;
        *(result + 400) = 0u;
        *(result + 352) = 0u;
        *(result + 368) = 0u;
        *(result + 320) = 0u;
        *(result + 336) = 0u;
        *(result + 288) = 0u;
        *(result + 304) = 0u;
        *(result + 256) = 0u;
        *(result + 272) = 0u;
        *(result + 224) = 0u;
        *(result + 240) = 0u;
        *(result + 192) = 0u;
        *(result + 208) = 0u;
        *(result + 160) = 0u;
        *(result + 176) = 0u;
        *(result + 128) = 0u;
        *(result + 144) = 0u;
        *(result + 96) = 0u;
        *(result + 112) = 0u;
        *(result + 64) = 0u;
        *(result + 80) = 0u;
        *(result + 32) = 0u;
        *(result + 48) = 0u;
        *result = 0u;
        *(result + 16) = 0u;
      }

      *(result + 61) |= 8u;
      if (*(v36 + 16) <= 0x1EBu)
      {
        *(v36 + 16) = 492;
      }

      goto LABEL_69;
    }

    v12 = (v12 + 1);
    v11 = v9[v12];
  }

  while (v11 != 44);
  v12 = (v12 + 1);
  if (!v12)
  {
    goto LABEL_22;
  }

LABEL_16:
  __strlcpy_chk();
  v13 = strchr(__s, 47);
  if (v13)
  {
    *v13 = 0;
  }

  __endptr = 0xAAAAAAAAAAAAAAAALL;
  v14 = strtoul(__s, &__endptr, 16);
  v15 = *__endptr;
  if (!*__endptr)
  {
    goto LABEL_25;
  }

  if ((v15 & 0x80000000) != 0)
  {
    if (__maskrune(v15, 0x4000uLL))
    {
      goto LABEL_25;
    }

    goto LABEL_59;
  }

  if ((*(MEMORY[0x29EDCA600] + 4 * v15 + 60) & 0x4000) == 0)
  {
    goto LABEL_59;
  }

LABEL_25:
  v17 = *(a3 + 16);
  if (!v17)
  {
    v17 = malloc(0x100uLL);
    *(a3 + 16) = v17;
    if (v17)
    {
      v17[14] = 0u;
      v17[15] = 0u;
      v17[12] = 0u;
      v17[13] = 0u;
      v17[10] = 0u;
      v17[11] = 0u;
      v17[8] = 0u;
      v17[9] = 0u;
      v17[6] = 0u;
      v17[7] = 0u;
      v17[4] = 0u;
      v17[5] = 0u;
      v17[2] = 0u;
      v17[3] = 0u;
      *v17 = 0u;
      v17[1] = 0u;
      goto LABEL_28;
    }

LABEL_59:
    result = 0;
    v35 = *MEMORY[0x29EDCA608];
    return result;
  }

LABEL_28:
  if (v14 >> 13 > 6)
  {
    goto LABEL_59;
  }

  v18 = &v17[v14 >> 12];
  v19 = *(v18 + 1);
  if (!v19)
  {
    v19 = malloc(0x200uLL);
    *(v18 + 1) = v19;
    if (!v19)
    {
      goto LABEL_59;
    }

    v19[30] = 0u;
    v19[31] = 0u;
    v19[28] = 0u;
    v19[29] = 0u;
    v19[26] = 0u;
    v19[27] = 0u;
    v19[24] = 0u;
    v19[25] = 0u;
    v19[22] = 0u;
    v19[23] = 0u;
    v19[20] = 0u;
    v19[21] = 0u;
    v19[18] = 0u;
    v19[19] = 0u;
    v19[16] = 0u;
    v19[17] = 0u;
    v19[14] = 0u;
    v19[15] = 0u;
    v19[12] = 0u;
    v19[13] = 0u;
    v19[10] = 0u;
    v19[11] = 0u;
    v19[8] = 0u;
    v19[9] = 0u;
    v19[6] = 0u;
    v19[7] = 0u;
    v19[4] = 0u;
    v19[5] = 0u;
    v19[2] = 0u;
    v19[3] = 0u;
    *v19 = 0u;
    v19[1] = 0u;
  }

  v20 = v14 & 0xFFF;
  *(v19 + (v20 >> 3)) |= 1 << (v14 & 7);
  if (v20 >= *v18)
  {
    *v18 = v20 + 1;
  }

  v21 = MEMORY[0x29EDCA600];
  while (2)
  {
    *&v22 = 0xAAAAAAAAAAAAAAAALL;
    *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *__s = v22;
    v40 = v22;
    v23 = v9[v12];
    LODWORD(v24) = v12;
    if (v23 == 44)
    {
LABEL_39:
      v26 = (v24 + 1);
      v27 = v26 - v12;
      v12 = v26;
      if (!v27)
      {
        break;
      }

      goto LABEL_43;
    }

    v25 = -1;
    v24 = v12;
    while (v23)
    {
      v24 = (v24 + 1);
      v23 = v9[v24];
      --v25;
      if (v23 == 44)
      {
        goto LABEL_39;
      }
    }

    if (v25 != -1)
    {
      v12 = v24;
      if (v25)
      {
LABEL_43:
        __strlcpy_chk();
        v28 = strchr(__s, 47);
        if (v28)
        {
          *v28 = 0;
        }

        __endptr = 0xAAAAAAAAAAAAAAAALL;
        v29 = strtoul(__s, &__endptr, 16);
        v30 = *__endptr;
        if (*__endptr)
        {
          if ((v30 & 0x80000000) != 0)
          {
            if (!__maskrune(v30, 0x4000uLL))
            {
              goto LABEL_59;
            }
          }

          else if ((*(v21 + 4 * v30 + 60) & 0x4000) == 0)
          {
            goto LABEL_59;
          }
        }

        v31 = *(a3 + 16);
        if (!v31)
        {
          v31 = malloc(0x100uLL);
          *(a3 + 16) = v31;
          if (!v31)
          {
            goto LABEL_59;
          }

          v31[14] = 0u;
          v31[15] = 0u;
          v31[12] = 0u;
          v31[13] = 0u;
          v31[10] = 0u;
          v31[11] = 0u;
          v31[8] = 0u;
          v31[9] = 0u;
          v31[6] = 0u;
          v31[7] = 0u;
          v31[4] = 0u;
          v31[5] = 0u;
          v31[2] = 0u;
          v31[3] = 0u;
          *v31 = 0u;
          v31[1] = 0u;
        }

        if (v29 >> 13 > 6)
        {
          goto LABEL_59;
        }

        v32 = &v31[v29 >> 12];
        v33 = *(v32 + 1);
        if (!v33)
        {
          v33 = malloc(0x200uLL);
          *(v32 + 1) = v33;
          if (!v33)
          {
            goto LABEL_59;
          }

          v33[30] = 0u;
          v33[31] = 0u;
          v33[28] = 0u;
          v33[29] = 0u;
          v33[26] = 0u;
          v33[27] = 0u;
          v33[24] = 0u;
          v33[25] = 0u;
          v33[22] = 0u;
          v33[23] = 0u;
          v33[20] = 0u;
          v33[21] = 0u;
          v33[18] = 0u;
          v33[19] = 0u;
          v33[16] = 0u;
          v33[17] = 0u;
          v33[14] = 0u;
          v33[15] = 0u;
          v33[12] = 0u;
          v33[13] = 0u;
          v33[10] = 0u;
          v33[11] = 0u;
          v33[8] = 0u;
          v33[9] = 0u;
          v33[6] = 0u;
          v33[7] = 0u;
          v33[4] = 0u;
          v33[5] = 0u;
          v33[2] = 0u;
          v33[3] = 0u;
          *v33 = 0u;
          v33[1] = 0u;
        }

        v34 = v29 & 0xFFF;
        *(v33 + (v34 >> 3)) |= 1 << (v29 & 7);
        if (v34 >= *v32)
        {
          *v32 = v34 + 1;
        }

        continue;
      }
    }

    break;
  }

  result = 1;
  if (a4)
  {
    goto LABEL_61;
  }

LABEL_70:
  v37 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_LOG_DISABLE(unsigned __int8 *a1, int a2)
{
  v26 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x10)
  {
    bzero(a1, a2);
    *a1 = 115;
    v5 = a1[1];
    v6 = crc_16_l_table[v5 ^ 0x9B];
    v7 = a1[2];
    v8 = crc_16_l_table[(v7 ^ v6) ^ 0x4E];
    v9 = a1[3];
    v10 = crc_16_l_table[(v9 ^ v8 ^ HIBYTE(v6))];
    v11 = crc_16_l_table[v10 ^ (v8 >> 8)];
    v12 = crc_16_l_table[v11 ^ (v10 >> 8)];
    *(a1 + 1) = 0;
    v13 = crc_16_l_table[v12 ^ (v11 >> 8)];
    v14 = crc_16_l_table[crc_16_l_table[v12 ^ (v11 >> 8)] ^ (v12 >> 8)];
    v15 = v14 ^ ~(v13 >> 8);
    *(a1 + 4) = v14 ^ ~HIBYTE(crc_16_l_table[v12 ^ (v11 >> 8)]);
    if (a2 >= 20)
    {
      bzero(v25, 0x7FEuLL);
      __src[0] = 115;
      if ((v5 - 125) > 1)
      {
        v16 = 2;
      }

      else
      {
        v25[0] = v5 & 0x5F;
        v16 = 3;
        LOBYTE(v5) = 125;
      }

      __src[1] = v5;
      v17 = v16 + 1;
      if ((v7 - 125) <= 1)
      {
        __src[v17] = v7 & 0x5F;
        LOBYTE(v7) = 125;
        LODWORD(v17) = v16 + 2;
      }

      v18 = ~(v14 ^ BYTE1(v13));
      __src[v16] = v7;
      v19 = v17 + 1;
      if ((v9 - 125) <= 1)
      {
        __src[v19] = v9 & 0x5F;
        LOBYTE(v9) = 125;
        LODWORD(v19) = v17 + 2;
      }

      v20 = (v14 ^ ~(v13 >> 8)) >> 8;
      __src[v17] = v9;
      *&__src[v19] = 0;
      v21 = v19 + 5;
      if ((v18 - 125) <= 1)
      {
        __src[v21] = v18 & 0x5F;
        LOBYTE(v18) = 125;
        LODWORD(v21) = v19 + 6;
      }

      __src[v19 + 4] = v18;
      v22 = v21 + 1;
      if (BYTE1(v15) - 125 <= 1)
      {
        __src[v22] = BYTE1(v15) & 0x5F;
        v20 = 125;
        LODWORD(v22) = v21 + 2;
      }

      __src[v21] = v20;
      memcpy(a1, __src, v22);
      result = (v22 + 1);
      a1[v22] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v23 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_FTM_LOG_ENABLE(unsigned __int8 *a1, int a2, __int16 a3, int a4, int a5)
{
  v90 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x1F)
  {
    bzero(a1, a2);
    *a1 = 592715;
    *(a1 + 5) = a3;
    v11 = crc_16_l_table[a1[4] ^ 0x3DLL];
    v12 = crc_16_l_table[a1[5] ^ 0x2B ^ v11];
    v13 = crc_16_l_table[(a1[6] ^ v12 ^ HIBYTE(v11))];
    v14 = crc_16_l_table[(a1[7] ^ v13 ^ HIBYTE(v12))];
    v15 = crc_16_l_table[(a1[8] ^ v14 ^ HIBYTE(v13))];
    v16 = crc_16_l_table[(a1[9] ^ v15 ^ HIBYTE(v14))];
    *(a1 + 3) = a4;
    *(a1 + 4) = a5;
    v17 = crc_16_l_table[(a3 ^ v16 ^ HIBYTE(v15))];
    v18 = crc_16_l_table[(HIBYTE(a3) ^ v17 ^ HIBYTE(v16))];
    v19 = crc_16_l_table[(a4 ^ v18 ^ HIBYTE(v17))];
    v20 = crc_16_l_table[(BYTE1(a4) ^ v19 ^ HIBYTE(v18))];
    v21 = crc_16_l_table[(BYTE2(a4) ^ v20 ^ HIBYTE(v19))];
    v22 = crc_16_l_table[(a1[15] ^ v21 ^ HIBYTE(v20))];
    v23 = crc_16_l_table[(a5 ^ v22 ^ HIBYTE(v21))];
    v24 = crc_16_l_table[(a1[17] ^ v23 ^ HIBYTE(v22))];
    v25 = crc_16_l_table[(a1[18] ^ v24 ^ HIBYTE(v23))];
    v26 = crc_16_l_table[(a1[19] ^ v25 ^ HIBYTE(v24))];
    *(a1 + 10) = v26 ^ ~HIBYTE(crc_16_l_table[(a1[18] ^ v24 ^ HIBYTE(v23))]);
    if (a2 >= 44)
    {
      bzero(v89, 0x7FFuLL);
      v27 = *a1;
      if ((v27 - 125) > 1)
      {
        v28 = 1;
      }

      else
      {
        v89[0] = v27 & 0x5F;
        v28 = 2;
        LOBYTE(v27) = 125;
      }

      __src = v27;
      v29 = a1[1];
      v30 = v28 + 1;
      if ((v29 - 125) <= 1)
      {
        v89[v30 - 1] = v29 & 0x5F;
        LOBYTE(v29) = 125;
        LODWORD(v30) = v28 + 2;
      }

      v89[v28 - 1] = v29;
      v31 = a1[2];
      v32 = v30;
      v33 = v30 + 1;
      if ((v31 - 125) <= 1)
      {
        v89[v33 - 1] = v31 & 0x5F;
        LODWORD(v33) = v32 + 2;
        LOBYTE(v31) = 125;
      }

      v89[v32 - 1] = v31;
      v34 = a1[3];
      v35 = v33;
      v36 = v33 + 1;
      if ((v34 - 125) <= 1)
      {
        v89[v36 - 1] = v34 & 0x5F;
        LOBYTE(v34) = 125;
        LODWORD(v36) = v35 + 2;
      }

      v89[v35 - 1] = v34;
      v37 = a1[4];
      v38 = v36;
      v39 = v36 + 1;
      if ((v37 - 125) <= 1)
      {
        v89[v39 - 1] = v37 & 0x5F;
        LODWORD(v39) = v38 + 2;
        LOBYTE(v37) = 125;
      }

      v89[v38 - 1] = v37;
      v40 = a1[5];
      v41 = v39;
      v42 = v39 + 1;
      if ((v40 - 125) <= 1)
      {
        v89[v42 - 1] = v40 & 0x5F;
        LOBYTE(v40) = 125;
        LODWORD(v42) = v41 + 2;
      }

      v89[v41 - 1] = v40;
      v43 = a1[6];
      v44 = v42;
      v45 = v42 + 1;
      if ((v43 - 125) <= 1)
      {
        v89[v45 - 1] = v43 & 0x5F;
        LODWORD(v45) = v44 + 2;
        LOBYTE(v43) = 125;
      }

      v89[v44 - 1] = v43;
      v46 = a1[7];
      v47 = v45;
      v48 = v45 + 1;
      if ((v46 - 125) <= 1)
      {
        v89[v48 - 1] = v46 & 0x5F;
        LOBYTE(v46) = 125;
        LODWORD(v48) = v47 + 2;
      }

      v89[v47 - 1] = v46;
      v49 = a1[8];
      v50 = v48;
      v51 = v48 + 1;
      if ((v49 - 125) <= 1)
      {
        v89[v51 - 1] = v49 & 0x5F;
        LODWORD(v51) = v50 + 2;
        LOBYTE(v49) = 125;
      }

      v89[v50 - 1] = v49;
      v52 = a1[9];
      v53 = v51;
      v54 = v51 + 1;
      if ((v52 - 125) <= 1)
      {
        v89[v54 - 1] = v52 & 0x5F;
        LOBYTE(v52) = 125;
        LODWORD(v54) = v53 + 2;
      }

      v89[v53 - 1] = v52;
      v55 = a1[10];
      v56 = v54;
      v57 = v54 + 1;
      if ((v55 - 125) <= 1)
      {
        v89[v57 - 1] = v55 & 0x5F;
        LODWORD(v57) = v56 + 2;
        LOBYTE(v55) = 125;
      }

      v89[v56 - 1] = v55;
      v58 = a1[11];
      v59 = v57;
      v60 = v57 + 1;
      if ((v58 - 125) <= 1)
      {
        v89[v60 - 1] = v58 & 0x5F;
        LOBYTE(v58) = 125;
        LODWORD(v60) = v59 + 2;
      }

      v89[v59 - 1] = v58;
      v61 = a1[12];
      v62 = v60;
      v63 = v60 + 1;
      if ((v61 - 125) <= 1)
      {
        v89[v63 - 1] = v61 & 0x5F;
        LODWORD(v63) = v62 + 2;
        LOBYTE(v61) = 125;
      }

      v89[v62 - 1] = v61;
      v64 = a1[13];
      v65 = v63;
      v66 = v63 + 1;
      if ((v64 - 125) <= 1)
      {
        v89[v66 - 1] = v64 & 0x5F;
        LOBYTE(v64) = 125;
        LODWORD(v66) = v65 + 2;
      }

      v89[v65 - 1] = v64;
      v67 = a1[14];
      v68 = v66;
      v69 = v66 + 1;
      if ((v67 - 125) <= 1)
      {
        v89[v69 - 1] = v67 & 0x5F;
        LODWORD(v69) = v68 + 2;
        LOBYTE(v67) = 125;
      }

      v89[v68 - 1] = v67;
      v70 = a1[15];
      v71 = v69;
      v72 = v69 + 1;
      if ((v70 - 125) <= 1)
      {
        v89[v72 - 1] = v70 & 0x5F;
        LOBYTE(v70) = 125;
        LODWORD(v72) = v71 + 2;
      }

      v89[v71 - 1] = v70;
      v73 = a1[16];
      v74 = v72;
      v75 = v72 + 1;
      if ((v73 - 125) <= 1)
      {
        v89[v75 - 1] = v73 & 0x5F;
        LODWORD(v75) = v74 + 2;
        LOBYTE(v73) = 125;
      }

      v89[v74 - 1] = v73;
      v76 = a1[17];
      v77 = v75 + 1;
      if ((v76 - 125) <= 1)
      {
        v89[v77 - 1] = v76 & 0x5F;
        LOBYTE(v76) = 125;
        LODWORD(v77) = v75 + 2;
      }

      v89[v75 - 1] = v76;
      v78 = a1[18];
      v79 = v77 + 1;
      if ((v78 - 125) <= 1)
      {
        v89[v79 - 1] = v78 & 0x5F;
        LODWORD(v79) = v77 + 2;
        LOBYTE(v78) = 125;
      }

      v89[v77 - 1] = v78;
      v80 = ~(v26 ^ BYTE1(v25));
      v81 = a1[19];
      v82 = v79;
      v83 = v79 + 1;
      if ((v81 - 125) <= 1)
      {
        v89[v83 - 1] = v81 & 0x5F;
        LOBYTE(v81) = 125;
        LODWORD(v83) = v82 + 2;
      }

      v84 = ((v26 ^ ~(v25 >> 8)) >> 8);
      v89[v82 - 1] = v81;
      v85 = v83 + 1;
      if ((v80 - 125) <= 1)
      {
        v89[v85 - 1] = v80 & 0x5F;
        LODWORD(v85) = v83 + 2;
        LOBYTE(v80) = 125;
      }

      v89[v83 - 1] = v80;
      v86 = v85 + 1;
      if ((v84 - 125) <= 1)
      {
        v89[v86 - 1] = v84 & 0x5F;
        LOBYTE(v84) = 125;
        LODWORD(v86) = v85 + 2;
      }

      v89[v85 - 1] = v84;
      memcpy(a1, &__src, v86);
      result = (v86 + 1);
      a1[v86] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v87 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_FTM_LOG_DISABLE(unsigned __int8 *a1, int a2, __int16 a3)
{
  v41 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (!a1 || a2 < 0x1F)
  {
    goto LABEL_25;
  }

  bzero(a1, a2);
  *a1 = 592715;
  a1[4] = 1;
  *(a1 + 5) = a3;
  v7 = HIBYTE(a3);
  v8 = a1[5];
  v9 = crc_16_l_table[v8 ^ 0xC4];
  v10 = a1[6];
  v11 = crc_16_l_table[(v10 ^ v9) ^ 0xFB];
  v12 = crc_16_l_table[(a1[7] ^ v11 ^ HIBYTE(v9))];
  v13 = crc_16_l_table[(a1[8] ^ v12 ^ HIBYTE(v11))];
  v14 = crc_16_l_table[(a1[9] ^ v13 ^ HIBYTE(v12))];
  v15 = crc_16_l_table[(a3 ^ v14 ^ HIBYTE(v13))];
  v16 = crc_16_l_table[HIBYTE(a3) ^ crc_16_l_table[(a3 ^ v14 ^ HIBYTE(v13))] ^ (v14 >> 8)];
  v17 = v16 ^ ~(v15 >> 8);
  *(a1 + 6) = v16 ^ ~HIBYTE(crc_16_l_table[(a3 ^ v14 ^ HIBYTE(v13))]);
  if (a2 < 28)
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_25;
  }

  bzero(v40, 0x7FAuLL);
  __src = 592715;
  v38 = 1;
  if ((v8 - 125) <= 1)
  {
    v40[0] = v8 & 0x5F;
    v39 = 125;
    v18 = 7;
    v19 = 8;
    if ((v10 - 125) > 1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v39 = v8;
  v18 = 6;
  v19 = 7;
  if ((v10 - 125) <= 1)
  {
LABEL_9:
    *(&__src + v19) = v10 & 0x5F;
    LOBYTE(v10) = 125;
    LODWORD(v19) = v18 + 2;
  }

LABEL_10:
  *(&__src + v18) = v10;
  v20 = a1[7];
  v21 = v19;
  v22 = v19 + 1;
  if ((v20 - 125) <= 1)
  {
    *(&__src + v22) = v20 & 0x5F;
    LODWORD(v22) = v21 + 2;
    LOBYTE(v20) = 125;
  }

  *(&__src + v21) = v20;
  v23 = a1[8];
  v24 = v22;
  v25 = v22 + 1;
  if ((v23 - 125) <= 1)
  {
    *(&__src + v25) = v23 & 0x5F;
    LOBYTE(v23) = 125;
    LODWORD(v25) = v24 + 2;
  }

  *(&__src + v24) = v23;
  v26 = a3;
  v27 = a1[9];
  v28 = v25 + 1;
  if ((v27 - 125) <= 1)
  {
    *(&__src + v28) = v27 & 0x5F;
    LOBYTE(v27) = 125;
    LODWORD(v28) = v25 + 2;
  }

  *(&__src + v25) = v27;
  v29 = v28 + 1;
  if (a3 - 125 <= 1)
  {
    *(&__src + v29) = a3 & 0x5F;
    v26 = 125;
    LODWORD(v29) = v28 + 2;
  }

  v30 = ~(v16 ^ BYTE1(v15));
  *(&__src + v28) = v26;
  v31 = v29 + 1;
  if (HIBYTE(a3) - 125 <= 1)
  {
    *(&__src + v31) = HIBYTE(a3) & 0x5F;
    v7 = 125;
    LODWORD(v31) = v29 + 2;
  }

  v32 = (v16 ^ ~(v15 >> 8)) >> 8;
  *(&__src + v29) = v7;
  v33 = v31;
  v34 = v31 + 1;
  if ((v30 - 125) <= 1)
  {
    *(&__src + v34) = v30 & 0x5F;
    LOBYTE(v30) = 125;
    LODWORD(v34) = v33 + 2;
  }

  *(&__src + v33) = v30;
  v35 = v34 + 1;
  if (BYTE1(v17) - 125 <= 1)
  {
    *(&__src + v35) = BYTE1(v17) & 0x5F;
    v32 = 125;
    LODWORD(v35) = v34 + 2;
  }

  *(&__src + v34) = v32;
  memcpy(a1, &__src, v35);
  result = (v35 + 1);
  a1[v35] = 126;
LABEL_25:
  v36 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_LOG_GetIds(unsigned __int8 *a1, int a2)
{
  v26 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x10)
  {
    bzero(a1, a2);
    v5 = a1[1];
    v6 = crc_16_l_table[v5 ^ 0x9B];
    v7 = a1[2];
    v8 = crc_16_l_table[(v7 ^ v6) ^ 0x4E];
    v9 = a1[3];
    v10 = crc_16_l_table[(v9 ^ v8 ^ HIBYTE(v6))];
    v11 = crc_16_l_table[v10 ^ (v8 >> 8) ^ 1];
    *a1 = 115;
    v12 = crc_16_l_table[v11 ^ (v10 >> 8)];
    *(a1 + 1) = 1;
    v13 = crc_16_l_table[v12 ^ (v11 >> 8)];
    v14 = crc_16_l_table[crc_16_l_table[v12 ^ (v11 >> 8)] ^ (v12 >> 8)];
    v15 = v14 ^ ~(v13 >> 8);
    *(a1 + 4) = v14 ^ ~HIBYTE(crc_16_l_table[v12 ^ (v11 >> 8)]);
    if (a2 >= 20)
    {
      bzero(v25, 0x7FEuLL);
      __src[0] = 115;
      if ((v5 - 125) > 1)
      {
        v16 = 2;
      }

      else
      {
        v25[0] = v5 & 0x5F;
        v16 = 3;
        LOBYTE(v5) = 125;
      }

      __src[1] = v5;
      v17 = v16 + 1;
      if ((v7 - 125) <= 1)
      {
        __src[v17] = v7 & 0x5F;
        LOBYTE(v7) = 125;
        LODWORD(v17) = v16 + 2;
      }

      v18 = ~(v14 ^ BYTE1(v13));
      __src[v16] = v7;
      v19 = v17 + 1;
      if ((v9 - 125) <= 1)
      {
        __src[v19] = v9 & 0x5F;
        LOBYTE(v9) = 125;
        LODWORD(v19) = v17 + 2;
      }

      v20 = (v14 ^ ~(v13 >> 8)) >> 8;
      __src[v17] = v9;
      *&__src[v19] = 1;
      v21 = v19 + 5;
      if ((v18 - 125) <= 1)
      {
        __src[v21] = v18 & 0x5F;
        LOBYTE(v18) = 125;
        LODWORD(v21) = v19 + 6;
      }

      __src[v19 + 4] = v18;
      v22 = v21 + 1;
      if (BYTE1(v15) - 125 <= 1)
      {
        __src[v22] = BYTE1(v15) & 0x5F;
        v20 = 125;
        LODWORD(v22) = v21 + 2;
      }

      __src[v21] = v20;
      memcpy(a1, __src, v22);
      result = (v22 + 1);
      a1[v22] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v23 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_LOG_GetMasks(unsigned __int8 *a1, int a2)
{
  v26 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x10)
  {
    bzero(a1, a2);
    v5 = a1[1];
    v6 = crc_16_l_table[v5 ^ 0x9B];
    v7 = a1[2];
    v8 = crc_16_l_table[(v7 ^ v6) ^ 0x4E];
    v9 = a1[3];
    v10 = crc_16_l_table[(v9 ^ v8 ^ HIBYTE(v6))];
    v11 = crc_16_l_table[v10 ^ (v8 >> 8) ^ 4];
    *a1 = 115;
    v12 = crc_16_l_table[v11 ^ (v10 >> 8)];
    *(a1 + 1) = 4;
    v13 = crc_16_l_table[v12 ^ (v11 >> 8)];
    v14 = crc_16_l_table[crc_16_l_table[v12 ^ (v11 >> 8)] ^ (v12 >> 8)];
    v15 = v14 ^ ~(v13 >> 8);
    *(a1 + 4) = v14 ^ ~HIBYTE(crc_16_l_table[v12 ^ (v11 >> 8)]);
    if (a2 >= 20)
    {
      bzero(v25, 0x7FEuLL);
      __src[0] = 115;
      if ((v5 - 125) > 1)
      {
        v16 = 2;
      }

      else
      {
        v25[0] = v5 & 0x5F;
        v16 = 3;
        LOBYTE(v5) = 125;
      }

      __src[1] = v5;
      v17 = v16 + 1;
      if ((v7 - 125) <= 1)
      {
        __src[v17] = v7 & 0x5F;
        LOBYTE(v7) = 125;
        LODWORD(v17) = v16 + 2;
      }

      v18 = ~(v14 ^ BYTE1(v13));
      __src[v16] = v7;
      v19 = v17 + 1;
      if ((v9 - 125) <= 1)
      {
        __src[v19] = v9 & 0x5F;
        LOBYTE(v9) = 125;
        LODWORD(v19) = v17 + 2;
      }

      v20 = (v14 ^ ~(v13 >> 8)) >> 8;
      __src[v17] = v9;
      *&__src[v19] = 4;
      v21 = v19 + 5;
      if ((v18 - 125) <= 1)
      {
        __src[v21] = v18 & 0x5F;
        LOBYTE(v18) = 125;
        LODWORD(v21) = v19 + 6;
      }

      __src[v19 + 4] = v18;
      v22 = v21 + 1;
      if (BYTE1(v15) - 125 <= 1)
      {
        __src[v22] = BYTE1(v15) & 0x5F;
        v20 = 125;
        LODWORD(v22) = v21 + 2;
      }

      __src[v21] = v20;
      memcpy(a1, __src, v22);
      result = (v22 + 1);
      a1[v22] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v23 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_LOG_SetMasks(char *a1, int a2, unsigned int a3, unint64_t a4)
{
  v22 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x10)
  {
    bzero(a1, a2);
    *a1 = 115;
    *(a1 + 1) = 3;
    *(a1 + 2) = a4 >> 12;
    *(a1 + 3) = a3;
    if (a3 >= 8)
    {
      v13 = a3 >> 3;
      v14 = (a4 >> 3) & 0x1FF;
      do
      {
        if (!v14)
        {
          a1[((a4 >> 3) & 0x1FF) + 16] = 1 << (a4 & 7);
        }

        --v14;
        --v13;
      }

      while (v13);
    }

    v9 = 1336;
    LOWORD(v10) = -1;
    v11 = a1;
    do
    {
      v12 = *v11++;
      v10 = crc_16_l_table[(v12 ^ v10)] ^ ((v10 & 0xFF00) >> 8);
      v9 -= 8;
    }

    while (v9);
    *(a1 + 167) = ~v10;
    if (a2 >= 338)
    {
      bzero(__src, 0x800uLL);
      v15 = 0;
      v16 = 0;
      do
      {
        while (1)
        {
          v17 = a1[v15];
          v18 = v16;
          v19 = v16 + 1;
          if ((v17 - 125) > 1)
          {
            break;
          }

          v16 += 2;
          __src[v19] = v17 & 0x5F;
          __src[v18] = 125;
          if (++v15 == 169)
          {
            goto LABEL_16;
          }
        }

        ++v16;
        __src[v18] = v17;
        ++v15;
      }

      while (v15 != 169);
LABEL_16:
      memcpy(a1, __src, v16);
      result = (v16 + 1);
      a1[v16] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v20 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_LOG_SetMultipleLogMasks(unsigned __int8 *a1, int a2, int a3, unsigned int a4, int a5, uint64_t a6)
{
  v33 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x10)
  {
    bzero(a1, a2);
    *a1 = 115;
    *(a1 + 1) = 3;
    *(a1 + 2) = a3;
    *(a1 + 3) = a4;
    LODWORD(v13) = a4 >> 3;
    if ((a4 & 7) != 0)
    {
      v13 = (v13 + 1);
    }

    else
    {
      v13 = v13;
    }

    if (a5 && v13)
    {
      v14 = 0;
      do
      {
        v15 = *(a6 + 2 * v14);
        v16 = (v15 >> 3) & 0x1FF;
        v17 = 1 << (v15 & 7);
        v18 = v16;
        v19 = v13;
        do
        {
          if (!v18)
          {
            a1[v16 + 16] |= v17;
          }

          --v18;
          --v19;
        }

        while (v19);
        ++v14;
      }

      while (v14 != a5);
    }

    v20 = v13 + 16;
    v21 = 8 * (v13 + 16);
    if (8 * (v13 + 16))
    {
      LOWORD(v22) = -1;
      v23 = a1;
      do
      {
        v24 = *v23++;
        v22 = crc_16_l_table[(v24 ^ v22)] ^ ((v22 & 0xFF00) >> 8);
        v21 -= 8;
      }

      while (v21);
      a1[v20] = ~v22;
      a1[v13 + 17] = ~v22 >> 8;
      result = 0xFFFFFFFFLL;
      if (v13 > 0x3EE)
      {
        goto LABEL_26;
      }
    }

    else
    {
      a1[v20] = 0;
      a1[v13 + 17] = 0;
      result = 0xFFFFFFFFLL;
      if (v13 > 0x3EE)
      {
        goto LABEL_26;
      }
    }

    v25 = (v13 + 18);
    if (2 * v25 <= a2)
    {
      bzero(__src, 0x800uLL);
      v26 = 0;
      v27 = 0;
      do
      {
        while (1)
        {
          v28 = a1[v26];
          v29 = v27;
          v30 = v27 + 1;
          if ((v28 - 125) > 1)
          {
            break;
          }

          v27 += 2;
          __src[v30] = v28 & 0x5F;
          __src[v29] = 125;
          if (v25 == ++v26)
          {
            goto LABEL_25;
          }
        }

        ++v27;
        __src[v29] = v28;
        ++v26;
      }

      while (v25 != v26);
LABEL_25:
      memcpy(a1, __src, v27);
      result = (v27 + 1);
      a1[v27] = 126;
    }
  }

LABEL_26:
  v31 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_ParseRDALog(uint64_t a1)
{
  v1 = ((*(a1 + 16) & 0x38) != 0) | (4 * ((*(a1 + 16) & 7) != 0));
  if ((*(a1 + 16) & 0x1C0) != 0)
  {
    ++v1;
  }

  v2 = *(a1 + 19);
  if (v1 > v2 || (*(a1 + 18) & 2) == 0)
  {
    return 0;
  }

  v3 = a1 + 20;
  v4 = v2 / v1;
  v5 = 0;
  if ((*(a1 + 18) & 8) != 0)
  {
    if ((*(a1 + 18) & 4) != 0)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        v11 = *(v3 + 10);
        if (v11 <= 4)
        {
          v6 += dword_29777ECC0[v11];
          v7 += *(v3 + qword_29777EC98[v11]);
        }

        ++v5;
        v3 += 98;
      }

      while (v5 < v4);
    }

    else
    {
      v6 = 0;
      v7 = 0;
      do
      {
        v9 = *(v3 + 10);
        if (v9 <= 4)
        {
          v6 += dword_29777ECC0[v9];
          v7 += *(v3 + qword_29777EC98[v9]);
        }

        ++v5;
        v3 += 72;
      }

      while (v5 < v4);
    }
  }

  else if ((*(a1 + 18) & 4) != 0)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v10 = *(v3 + 10);
      if (v10 <= 4)
      {
        v6 += dword_29777ECC0[v10];
        v7 += *(v3 + qword_29777EC98[v10]);
      }

      ++v5;
      v3 += 74;
    }

    while (v5 < v4);
  }

  else
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = *(v3 + 10);
      if (v8 <= 4)
      {
        v6 += dword_29777ECC0[v8];
        v7 += *(v3 + qword_29777EC98[v8]);
      }

      ++v5;
      v3 += 48;
    }

    while (v5 < v4);
  }

  if (v6)
  {
    return v7 / v6;
  }

  else
  {
    return 0;
  }
}

uint64_t APPLIB_DIAG_Unlock(_BYTE *a1, int a2, unsigned __int8 *a3, int a4)
{
  v40 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (!a1 || a2 < 13 || a4 != 6)
  {
    goto LABEL_24;
  }

  bzero(a1, a2);
  *a1 = 65;
  v8 = *a3;
  a1[1] = v8;
  v9 = a3[1];
  a1[2] = v9;
  v10 = a3[2];
  a1[3] = v10;
  v11 = a3[3];
  a1[4] = v11;
  v12 = a3[4];
  a1[5] = v12;
  v13 = a3[5];
  a1[6] = v13;
  v14 = crc_16_l_table[v8 ^ 0xA];
  v15 = crc_16_l_table[(v9 ^ v14) ^ 0x5C];
  v16 = crc_16_l_table[(v10 ^ v15 ^ HIBYTE(v14))];
  v17 = crc_16_l_table[(v11 ^ v16 ^ HIBYTE(v15))];
  v18 = crc_16_l_table[(v12 ^ v17 ^ HIBYTE(v16))];
  v19 = crc_16_l_table[(v13 ^ v18 ^ HIBYTE(v17))];
  v20 = v19 ^ ~(v18 >> 8);
  a1[7] = v20;
  v21 = BYTE1(v20);
  a1[8] = v21;
  if (a2 < 0x12)
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_24;
  }

  v36 = v21;
  bzero(v39, 0x7FEuLL);
  __src = 65;
  if ((v8 - 125) <= 1)
  {
    v39[0] = v8 & 0x5F;
    v38 = 125;
    v22 = 3;
    v23 = 4;
    if ((v9 - 125) > 1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v38 = v8;
  v22 = 2;
  v23 = 3;
  if ((v9 - 125) <= 1)
  {
LABEL_10:
    *(&__src + v23) = v9 & 0x5F;
    LOBYTE(v9) = 125;
    LODWORD(v23) = v22 + 2;
  }

LABEL_11:
  *(&__src + v22) = v9;
  v24 = v23;
  v25 = v23 + 1;
  if ((v10 - 125) <= 1)
  {
    *(&__src + v25) = v10 & 0x5F;
    LODWORD(v25) = v24 + 2;
    LOBYTE(v10) = 125;
  }

  *(&__src + v24) = v10;
  v26 = v25 + 1;
  if ((v11 - 125) <= 1)
  {
    *(&__src + v26) = v11 & 0x5F;
    LOBYTE(v11) = 125;
    LODWORD(v26) = v25 + 2;
  }

  *(&__src + v25) = v11;
  v27 = v26;
  v28 = v26 + 1;
  if ((v12 - 125) <= 1)
  {
    *(&__src + v28) = v12 & 0x5F;
    LODWORD(v28) = v27 + 2;
    LOBYTE(v12) = 125;
  }

  v29 = ~(v19 ^ BYTE1(v18));
  *(&__src + v27) = v12;
  v30 = v28 + 1;
  if ((v13 - 125) <= 1)
  {
    *(&__src + v30) = v13 & 0x5F;
    LOBYTE(v13) = 125;
    LODWORD(v30) = v28 + 2;
  }

  *(&__src + v28) = v13;
  v31 = v30;
  v32 = v30 + 1;
  if ((v29 - 125) <= 1)
  {
    *(&__src + v32) = v29 & 0x5F;
    LODWORD(v32) = v31 + 2;
    LOBYTE(v29) = 125;
  }

  *(&__src + v31) = v29;
  v33 = v36;
  v34 = v32 + 1;
  if ((v36 - 125) <= 1)
  {
    *(&__src + v34) = v36 & 0x5F;
    v33 = 125;
    LODWORD(v34) = v32 + 2;
  }

  *(&__src + v32) = v33;
  memcpy(a1, &__src, v34);
  result = (v34 + 1);
  a1[v34] = 126;
LABEL_24:
  v35 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_Lock(_WORD *a1, int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 4)
  {
    bzero(a1, a2);
    *a1 = 11387;
    *(a1 + 2) = 61;
    if (a2 >= 6)
    {
      *a1 = 2117938299;
      return 4;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_CreateICCID_EFS_File(char *a1, int a2)
{
  v53 = *MEMORY[0x29EDCA608];
  if (a2 < 64)
  {
    goto LABEL_4;
  }

  if (!a1)
  {
    goto LABEL_4;
  }

  *a1 = 0u;
  *(a1 + 1) = 0u;
  a1[48] = 0;
  *(a1 + 2) = 0u;
  *a1 = 8523;
  *(a1 + 1) = 0;
  a1[4] = 1;
  *(a1 + 5) = 0uLL;
  a1[21] = 0;
  a1[22] = 1;
  *(a1 + 23) = 0;
  a1[25] = 0;
  a1[26] = 1;
  a1[31] = 0;
  *(a1 + 27) = 0;
  *(a1 + 16) = 10;
  *(a1 + 34) = 778922355;
  *(a1 + 19) = 30836;
  a1[40] = 116;
  a1[41] = 0;
  v2 = crc_16_l_table[~*a1];
  v3 = crc_16_l_table[(a1[1] ^ ~v2)];
  v4 = crc_16_l_table[(a1[2] ^ v3 ^ HIBYTE(v2))];
  v5 = crc_16_l_table[(a1[3] ^ v4 ^ HIBYTE(v3))];
  v6 = crc_16_l_table[(a1[4] ^ v5 ^ HIBYTE(v4))];
  v7 = crc_16_l_table[(a1[5] ^ v6 ^ HIBYTE(v5))];
  v8 = crc_16_l_table[(a1[6] ^ v7 ^ HIBYTE(v6))];
  v9 = crc_16_l_table[(a1[7] ^ v8 ^ HIBYTE(v7))];
  v10 = crc_16_l_table[(a1[8] ^ v9 ^ HIBYTE(v8))];
  v11 = crc_16_l_table[(a1[9] ^ v10 ^ HIBYTE(v9))];
  v12 = crc_16_l_table[(a1[10] ^ v11 ^ HIBYTE(v10))];
  v13 = crc_16_l_table[(a1[11] ^ v12 ^ HIBYTE(v11))];
  v14 = crc_16_l_table[(a1[12] ^ v13 ^ HIBYTE(v12))];
  v15 = crc_16_l_table[(a1[13] ^ v14 ^ HIBYTE(v13))];
  v16 = crc_16_l_table[(a1[14] ^ v15 ^ HIBYTE(v14))];
  v17 = crc_16_l_table[(a1[15] ^ v16 ^ HIBYTE(v15))];
  v18 = crc_16_l_table[(a1[16] ^ v17 ^ HIBYTE(v16))];
  v19 = crc_16_l_table[(a1[17] ^ v18 ^ HIBYTE(v17))];
  v20 = crc_16_l_table[(a1[18] ^ v19 ^ HIBYTE(v18))];
  v21 = crc_16_l_table[(a1[19] ^ v20 ^ HIBYTE(v19))];
  v22 = crc_16_l_table[(a1[20] ^ v21 ^ HIBYTE(v20))];
  v23 = crc_16_l_table[(a1[21] ^ v22 ^ HIBYTE(v21))];
  v24 = crc_16_l_table[(a1[22] ^ v23 ^ HIBYTE(v22))];
  v25 = crc_16_l_table[(a1[23] ^ v24 ^ HIBYTE(v23))];
  v26 = crc_16_l_table[(a1[24] ^ v25 ^ HIBYTE(v24))];
  v27 = crc_16_l_table[(a1[25] ^ v26 ^ HIBYTE(v25))];
  v28 = crc_16_l_table[(v27 ^ HIBYTE(v26)) ^ 1];
  v29 = crc_16_l_table[(a1[27] ^ v28 ^ HIBYTE(v27))];
  v30 = crc_16_l_table[(a1[28] ^ v29 ^ HIBYTE(v28))];
  v31 = crc_16_l_table[(a1[29] ^ v30 ^ HIBYTE(v29))];
  v32 = crc_16_l_table[(a1[30] ^ v31 ^ HIBYTE(v30))];
  v33 = crc_16_l_table[(a1[31] ^ v32 ^ HIBYTE(v31))];
  v34 = crc_16_l_table[(v33 ^ HIBYTE(v32)) ^ 0xA];
  v35 = crc_16_l_table[(v34 ^ HIBYTE(v33))];
  v36 = crc_16_l_table[(a1[34] ^ v35 ^ HIBYTE(v34))];
  v37 = crc_16_l_table[(a1[35] ^ v36 ^ HIBYTE(v35))];
  v38 = crc_16_l_table[(a1[36] ^ v37 ^ HIBYTE(v36))];
  v39 = crc_16_l_table[(a1[37] ^ v38 ^ HIBYTE(v37))];
  v40 = crc_16_l_table[(v39 ^ HIBYTE(v38)) ^ 0x74];
  v41 = crc_16_l_table[(v40 ^ HIBYTE(v39)) ^ 0x78];
  v42 = crc_16_l_table[(v41 ^ HIBYTE(v40)) ^ 0x74];
  *(a1 + 21) = crc_16_l_table[(v42 ^ HIBYTE(v41))] ^ ~(v42 >> 8);
  if (a2 >= 0x58)
  {
    bzero(__src, 0x800uLL);
    v46 = 0;
    v47 = 0;
    do
    {
      while (1)
      {
        v48 = a1[v46];
        v49 = v47;
        v50 = v47 + 1;
        if ((v48 - 125) > 1)
        {
          break;
        }

        v47 += 2;
        __src[v50] = v48 & 0x5F;
        __src[v49] = 125;
        if (++v46 == 44)
        {
          goto LABEL_9;
        }
      }

      ++v47;
      __src[v49] = v48;
      ++v46;
    }

    while (v46 != 44);
LABEL_9:
    memcpy(a1, __src, v47);
    result = (v47 + 1);
    a1[v47] = 126;
    v51 = *MEMORY[0x29EDCA608];
  }

  else
  {
LABEL_4:
    result = 0xFFFFFFFFLL;
    v44 = *MEMORY[0x29EDCA608];
  }

  return result;
}

uint64_t APPLIB_DIAG_GetICCID(char *a1, int a2)
{
  v16 = *MEMORY[0x29EDCA608];
  if (a2 < 64)
  {
    goto LABEL_6;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 46) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 4727168;
  a1[4] = 1;
  *(a1 + 5) = 0;
  a1[7] = 0;
  a1[8] = 119;
  *(a1 + 9) = 0;
  a1[11] = 0;
  *(a1 + 6) = 4097;
  *(a1 + 14) = 0uLL;
  a1[30] = 107;
  *(a1 + 31) = 0;
  a1[33] = 0;
  a1[34] = 107;
  *(a1 + 35) = 0;
  *(a1 + 38) = 0;
  a1[42] = 1;
  *(a1 + 43) = 0;
  *(a1 + 46) = 0;
  a1[50] = 10;
  v2 = 440;
  *(a1 + 51) = 0;
  LOWORD(v3) = -1;
  v4 = a1;
  do
  {
    v5 = *v4++;
    v3 = crc_16_l_table[(v5 ^ v3)] ^ ((v3 & 0xFF00) >> 8);
    v2 -= 8;
  }

  while (v2);
  *(a1 + 55) = ~v3;
  if (a2 >= 114)
  {
    bzero(__src, 0x800uLL);
    v9 = 0;
    v10 = 0;
    do
    {
      while (1)
      {
        v11 = a1[v9];
        v12 = v10;
        v13 = v10 + 1;
        if ((v11 - 125) > 1)
        {
          break;
        }

        v10 += 2;
        __src[v13] = v11 & 0x5F;
        __src[v12] = 125;
        if (++v9 == 57)
        {
          goto LABEL_11;
        }
      }

      ++v10;
      __src[v12] = v11;
      ++v9;
    }

    while (v9 != 57);
LABEL_11:
    memcpy(a1, __src, v10);
    result = (v10 + 1);
    a1[v10] = 126;
    v14 = *MEMORY[0x29EDCA608];
  }

  else
  {
LABEL_6:
    result = 0xFFFFFFFFLL;
    v7 = *MEMORY[0x29EDCA608];
  }

  return result;
}

uint64_t APPLIB_DIAG_Read_Meid(char *a1, int a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = 0xFFFFFFFFLL;
  if (a1 && a2 >= 140)
  {
    *(a1 + 124) = 0u;
    *(a1 + 6) = 0u;
    *(a1 + 7) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 5) = 0u;
    *(a1 + 2) = 0u;
    *(a1 + 3) = 0u;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *a1 = -26842;
    v3 = 1064;
    a1[2] = 7;
    LOWORD(v4) = -1;
    v5 = a1;
    do
    {
      v6 = *v5++;
      v4 = crc_16_l_table[(v6 ^ v4)] ^ ((v4 & 0xFF00) >> 8);
      v3 -= 8;
    }

    while (v3);
    *(a1 + 133) = ~v4;
    if (a2 >= 0x10E)
    {
      bzero(__src, 0x800uLL);
      v8 = 0;
      v9 = 0;
      do
      {
        while (1)
        {
          v10 = a1[v8];
          v11 = v9;
          v12 = v9 + 1;
          if ((v10 - 125) > 1)
          {
            break;
          }

          v9 += 2;
          __src[v12] = v10 & 0x5F;
          __src[v11] = 125;
          if (++v8 == 135)
          {
            goto LABEL_11;
          }
        }

        ++v9;
        __src[v11] = v10;
        ++v8;
      }

      while (v8 != 135);
LABEL_11:
      memcpy(a1, __src, v9);
      v2 = (v9 + 1);
      a1[v9] = 126;
    }

    else
    {
      v2 = 0xFFFFFFFFLL;
    }
  }

  v13 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t APPLIB_DIAG_Write_Meid(char *a1, int a2, void *__src, int a4)
{
  if (a4 > 8)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return APPLIB_DIAG_NvItemWrite(a1, a2, 1943, __src, a4);
  }
}

uint64_t APPLIB_DIAG_Read_Msl(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = 0xFFFFFFFFLL;
  if (a1 && a2 >= 140)
  {
    *(a1 + 124) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    strcpy(a1, "&U");
    v3 = 1064;
    LOWORD(v4) = -1;
    v5 = a1;
    do
    {
      v6 = *v5++;
      v4 = crc_16_l_table[(v6 ^ v4)] ^ ((v4 & 0xFF00) >> 8);
      v3 -= 8;
    }

    while (v3);
    *(a1 + 133) = ~v4;
    if (a2 >= 0x10E)
    {
      bzero(__src, 0x800uLL);
      v8 = 0;
      v9 = 0;
      do
      {
        while (1)
        {
          v10 = *(a1 + v8);
          v11 = v9;
          v12 = v9 + 1;
          if ((v10 - 125) > 1)
          {
            break;
          }

          v9 += 2;
          __src[v12] = v10 & 0x5F;
          __src[v11] = 125;
          if (++v8 == 135)
          {
            goto LABEL_11;
          }
        }

        ++v9;
        __src[v11] = v10;
        ++v8;
      }

      while (v8 != 135);
LABEL_11:
      memcpy(a1, __src, v9);
      v2 = (v9 + 1);
      *(a1 + v9) = 126;
    }

    else
    {
      v2 = 0xFFFFFFFFLL;
    }
  }

  v13 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t APPLIB_DIAG_Write_Msl(char *a1, int a2, void *__src, int a4)
{
  if (a4 > 6)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return APPLIB_DIAG_NvItemWrite(a1, a2, 85, __src, a4);
  }
}

uint64_t APPLIB_DIAG_Read_Otksl(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = 0xFFFFFFFFLL;
  if (a1 && a2 >= 140)
  {
    *(a1 + 124) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    strcpy(a1, "&U");
    v3 = 1064;
    LOWORD(v4) = -1;
    v5 = a1;
    do
    {
      v6 = *v5++;
      v4 = crc_16_l_table[(v6 ^ v4)] ^ ((v4 & 0xFF00) >> 8);
      v3 -= 8;
    }

    while (v3);
    *(a1 + 133) = ~v4;
    if (a2 >= 0x10E)
    {
      bzero(__src, 0x800uLL);
      v8 = 0;
      v9 = 0;
      do
      {
        while (1)
        {
          v10 = *(a1 + v8);
          v11 = v9;
          v12 = v9 + 1;
          if ((v10 - 125) > 1)
          {
            break;
          }

          v9 += 2;
          __src[v12] = v10 & 0x5F;
          __src[v11] = 125;
          if (++v8 == 135)
          {
            goto LABEL_11;
          }
        }

        ++v9;
        __src[v11] = v10;
        ++v8;
      }

      while (v8 != 135);
LABEL_11:
      memcpy(a1, __src, v9);
      v2 = (v9 + 1);
      *(a1 + v9) = 126;
    }

    else
    {
      v2 = 0xFFFFFFFFLL;
    }
  }

  v13 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t APPLIB_DIAG_Write_Otksl(char *a1, int a2, void *__src, int a4)
{
  if (a4 > 6)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return APPLIB_DIAG_NvItemWrite(a1, a2, 219, __src, a4);
  }
}

uint64_t APPLIB_DIAG_Write_AKey(char *a1, int a2, void *__src, int a4)
{
  if (a4 > 9)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return APPLIB_DIAG_NvItemWrite(a1, a2, 25, __src, a4);
  }
}

uint64_t APPLIB_DIAG_Write_AKeyCSum(char *a1, int a2, void *__src, int a4)
{
  if (a4 > 8)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return APPLIB_DIAG_NvItemWrite(a1, a2, 26, __src, a4);
  }
}

uint64_t APPLIB_DIAG_Write_BlueToothAddr(char *a1, int a2, void *__src, int a4)
{
  if (a4 > 6)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return APPLIB_DIAG_NvItemWrite(a1, a2, 50001, __src, a4);
  }
}

uint64_t APPLIB_DIAG_Read_BlueToothAddr(char *a1, int a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = 0xFFFFFFFFLL;
  if (a1 && a2 >= 140)
  {
    *(a1 + 124) = 0u;
    *(a1 + 6) = 0u;
    *(a1 + 7) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 5) = 0u;
    *(a1 + 2) = 0u;
    *(a1 + 3) = 0u;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *a1 = 20774;
    v3 = 1064;
    a1[2] = -61;
    LOWORD(v4) = -1;
    v5 = a1;
    do
    {
      v6 = *v5++;
      v4 = crc_16_l_table[(v6 ^ v4)] ^ ((v4 & 0xFF00) >> 8);
      v3 -= 8;
    }

    while (v3);
    *(a1 + 133) = ~v4;
    if (a2 >= 0x10E)
    {
      bzero(__src, 0x800uLL);
      v8 = 0;
      v9 = 0;
      do
      {
        while (1)
        {
          v10 = a1[v8];
          v11 = v9;
          v12 = v9 + 1;
          if ((v10 - 125) > 1)
          {
            break;
          }

          v9 += 2;
          __src[v12] = v10 & 0x5F;
          __src[v11] = 125;
          if (++v8 == 135)
          {
            goto LABEL_11;
          }
        }

        ++v9;
        __src[v11] = v10;
        ++v8;
      }

      while (v8 != 135);
LABEL_11:
      memcpy(a1, __src, v9);
      v2 = (v9 + 1);
      a1[v9] = 126;
    }

    else
    {
      v2 = 0xFFFFFFFFLL;
    }
  }

  v13 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t APPLIB_DIAG_Write_WiFi_MAC_Addr(char *a1, int a2, void *__src, int a4)
{
  if (a4 > 6)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return APPLIB_DIAG_NvItemWrite(a1, a2, 50002, __src, a4);
  }
}

uint64_t APPLIB_DIAG_Read_WiFi_MAC_Addr(char *a1, int a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = 0xFFFFFFFFLL;
  if (a1 && a2 >= 140)
  {
    *(a1 + 124) = 0u;
    *(a1 + 6) = 0u;
    *(a1 + 7) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 5) = 0u;
    *(a1 + 2) = 0u;
    *(a1 + 3) = 0u;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *a1 = 21030;
    v3 = 1064;
    a1[2] = -61;
    LOWORD(v4) = -1;
    v5 = a1;
    do
    {
      v6 = *v5++;
      v4 = crc_16_l_table[(v6 ^ v4)] ^ ((v4 & 0xFF00) >> 8);
      v3 -= 8;
    }

    while (v3);
    *(a1 + 133) = ~v4;
    if (a2 >= 0x10E)
    {
      bzero(__src, 0x800uLL);
      v8 = 0;
      v9 = 0;
      do
      {
        while (1)
        {
          v10 = a1[v8];
          v11 = v9;
          v12 = v9 + 1;
          if ((v10 - 125) > 1)
          {
            break;
          }

          v9 += 2;
          __src[v12] = v10 & 0x5F;
          __src[v11] = 125;
          if (++v8 == 135)
          {
            goto LABEL_11;
          }
        }

        ++v9;
        __src[v11] = v10;
        ++v8;
      }

      while (v8 != 135);
LABEL_11:
      memcpy(a1, __src, v9);
      v2 = (v9 + 1);
      a1[v9] = 126;
    }

    else
    {
      v2 = 0xFFFFFFFFLL;
    }
  }

  v13 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t APPLIB_DIAG_Write_WiFi_Cal_Data(char *a1, int a2, void *__src, int a4)
{
  if (a4 > 64)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return APPLIB_DIAG_NvItemWrite(a1, a2, 50003, __src, a4);
  }
}

uint64_t APPLIB_DIAG_Read_WiFi_Cal_Data(char *a1, int a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = 0xFFFFFFFFLL;
  if (a1 && a2 >= 140)
  {
    *(a1 + 124) = 0u;
    *(a1 + 6) = 0u;
    *(a1 + 7) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 5) = 0u;
    *(a1 + 2) = 0u;
    *(a1 + 3) = 0u;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *a1 = 21286;
    v3 = 1064;
    a1[2] = -61;
    LOWORD(v4) = -1;
    v5 = a1;
    do
    {
      v6 = *v5++;
      v4 = crc_16_l_table[(v6 ^ v4)] ^ ((v4 & 0xFF00) >> 8);
      v3 -= 8;
    }

    while (v3);
    *(a1 + 133) = ~v4;
    if (a2 >= 0x10E)
    {
      bzero(__src, 0x800uLL);
      v8 = 0;
      v9 = 0;
      do
      {
        while (1)
        {
          v10 = a1[v8];
          v11 = v9;
          v12 = v9 + 1;
          if ((v10 - 125) > 1)
          {
            break;
          }

          v9 += 2;
          __src[v12] = v10 & 0x5F;
          __src[v11] = 125;
          if (++v8 == 135)
          {
            goto LABEL_11;
          }
        }

        ++v9;
        __src[v11] = v10;
        ++v8;
      }

      while (v8 != 135);
LABEL_11:
      memcpy(a1, __src, v9);
      v2 = (v9 + 1);
      a1[v9] = 126;
    }

    else
    {
      v2 = 0xFFFFFFFFLL;
    }
  }

  v13 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t APPLIB_DIAG_Write_USB2ETHERNET_MAC_Addr(char *a1, int a2, void *__src, int a4)
{
  if (a4 > 6)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return APPLIB_DIAG_NvItemWrite(a1, a2, 50004, __src, a4);
  }
}

uint64_t APPLIB_DIAG_Read_USB2ETHERNET_MAC_Addr(char *a1, int a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = 0xFFFFFFFFLL;
  if (a1 && a2 >= 140)
  {
    *(a1 + 124) = 0u;
    *(a1 + 6) = 0u;
    *(a1 + 7) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 5) = 0u;
    *(a1 + 2) = 0u;
    *(a1 + 3) = 0u;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *a1 = 21542;
    v3 = 1064;
    a1[2] = -61;
    LOWORD(v4) = -1;
    v5 = a1;
    do
    {
      v6 = *v5++;
      v4 = crc_16_l_table[(v6 ^ v4)] ^ ((v4 & 0xFF00) >> 8);
      v3 -= 8;
    }

    while (v3);
    *(a1 + 133) = ~v4;
    if (a2 >= 0x10E)
    {
      bzero(__src, 0x800uLL);
      v8 = 0;
      v9 = 0;
      do
      {
        while (1)
        {
          v10 = a1[v8];
          v11 = v9;
          v12 = v9 + 1;
          if ((v10 - 125) > 1)
          {
            break;
          }

          v9 += 2;
          __src[v12] = v10 & 0x5F;
          __src[v11] = 125;
          if (++v8 == 135)
          {
            goto LABEL_11;
          }
        }

        ++v9;
        __src[v11] = v10;
        ++v8;
      }

      while (v8 != 135);
LABEL_11:
      memcpy(a1, __src, v9);
      v2 = (v9 + 1);
      a1[v9] = 126;
    }

    else
    {
      v2 = 0xFFFFFFFFLL;
    }
  }

  v13 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t APPLIB_DIAG_GetSerialNumAndChipID(void *a1, int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 8)
  {
    bzero(a1, a2);
    *a1 = 0x9B390003000CFE4BLL;
    if (a2 >= 16)
    {
      *a1 = 0x9B390003000CFE4BLL;
      *(a1 + 8) = 126;
      return 9;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_GetNonce(void *a1, int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 8)
  {
    bzero(a1, a2);
    *a1 = 0x82E10002000CFE4BLL;
    if (a2 >= 16)
    {
      *a1 = 0x82E10002000CFE4BLL;
      *(a1 + 8) = 126;
      return 9;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_SfpNvBackup(void *a1, int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 8)
  {
    bzero(a1, a2);
    *a1 = 0xFC590007000CFE4BLL;
    if (a2 >= 16)
    {
      *a1 = 0xFC590007000CFE4BLL;
      *(a1 + 8) = 126;
      return 9;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_SfpNvRestore(void *a1, int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 8)
  {
    bzero(a1, a2);
    *a1 = 0x7F910008000CFE4BLL;
    if (a2 >= 16)
    {
      *a1 = 0x7F910008000CFE4BLL;
      *(a1 + 8) = 126;
      return 9;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_ReadRootManifest(_DWORD *a1, int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x17)
  {
    bzero(a1, a2);
    *a1 = 851275;
    a1[1] = 10;
    *(a1 + 4) = 5546;
    if (a2 >= 20)
    {
      *a1 = 0xA000CFD4BLL;
      *(a1 + 4) = 5546;
      *(a1 + 10) = 126;
      return 11;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_StartProvision(_WORD *a1, unsigned int a2, const void *a3, unsigned int a4)
{
  v24 = *MEMORY[0x29EDCA608];
  if (a1 && 2 * a4 + 22 < a2)
  {
    bzero(a1, a2);
    *a1 = 851531;
    a1[2] = 0;
    a1[3] = a4;
    memcpy(a1 + 4, a3, a4);
    v8 = 8 * (a4 + 8);
    if (8 * (a4 + 8))
    {
      LOWORD(v9) = -1;
      v10 = a1;
      do
      {
        v11 = *v10++;
        v9 = crc_16_l_table[(v11 ^ v9)] ^ ((v9 & 0xFF00) >> 8);
        v8 -= 8;
      }

      while (v8);
      v12 = ~v9;
      v13 = ~v9 >> 8;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    *(a1 + a4 + 8) = v12;
    *(a1 + a4 + 9) = v13;
    v16 = a4 + 10;
    result = 0xFFFFFFFFLL;
    if (v16 <= 1024 && 2 * v16 <= a2)
    {
      bzero(__src, 0x800uLL);
      if (v16 < 1)
      {
        v17 = 0;
      }

      else
      {
        v17 = 0;
        v18 = a1;
        do
        {
          while (1)
          {
            v20 = *v18++;
            v19 = v20;
            v21 = v17;
            v22 = v17 + 1;
            if ((v20 - 125) > 1)
            {
              break;
            }

            v17 += 2;
            __src[v22] = v19 & 0x5F;
            __src[v21] = 125;
            if (!--v16)
            {
              goto LABEL_19;
            }
          }

          ++v17;
          __src[v21] = v19;
          --v16;
        }

        while (v16);
      }

LABEL_19:
      memcpy(a1, __src, v17);
      result = (v17 + 1);
      *(a1 + v17) = 126;
    }
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FinishProvision(_WORD *a1, unsigned int a2, const void *a3, unsigned int a4)
{
  v24 = *MEMORY[0x29EDCA608];
  if (a1 && 2 * a4 + 22 < a2)
  {
    bzero(a1, a2);
    *a1 = 851531;
    a1[2] = 1;
    a1[3] = a4;
    memcpy(a1 + 4, a3, a4);
    v8 = 8 * (a4 + 8);
    if (8 * (a4 + 8))
    {
      LOWORD(v9) = -1;
      v10 = a1;
      do
      {
        v11 = *v10++;
        v9 = crc_16_l_table[(v11 ^ v9)] ^ ((v9 & 0xFF00) >> 8);
        v8 -= 8;
      }

      while (v8);
      v12 = ~v9;
      v13 = ~v9 >> 8;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    *(a1 + a4 + 8) = v12;
    *(a1 + a4 + 9) = v13;
    v16 = a4 + 10;
    result = 0xFFFFFFFFLL;
    if (v16 <= 1024 && 2 * v16 <= a2)
    {
      bzero(__src, 0x800uLL);
      if (v16 < 1)
      {
        v17 = 0;
      }

      else
      {
        v17 = 0;
        v18 = a1;
        do
        {
          while (1)
          {
            v20 = *v18++;
            v19 = v20;
            v21 = v17;
            v22 = v17 + 1;
            if ((v20 - 125) > 1)
            {
              break;
            }

            v17 += 2;
            __src[v22] = v19 & 0x5F;
            __src[v21] = 125;
            if (!--v16)
            {
              goto LABEL_19;
            }
          }

          ++v17;
          __src[v21] = v19;
          --v16;
        }

        while (v16);
      }

LABEL_19:
      memcpy(a1, __src, v17);
      result = (v17 + 1);
      *(a1 + v17) = 126;
    }
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_WriteCalibrationManifest(_WORD *a1, unsigned int a2, const void *a3, unsigned int a4)
{
  v22 = *MEMORY[0x29EDCA608];
  if (!a1 || 2 * a4 + 22 >= a2)
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_9;
  }

  bzero(a1, a2);
  *a1 = 851531;
  a1[2] = 6;
  a1[3] = a4;
  memcpy(a1 + 4, a3, a4);
  v8 = a4 + 8;
  v9 = 8 * (a4 + 8);
  if (8 * (a4 + 8))
  {
    LOWORD(v10) = -1;
    v11 = a1;
    do
    {
      v12 = *v11++;
      v10 = crc_16_l_table[(v12 ^ v10)] ^ ((v10 & 0xFF00) >> 8);
      v9 -= 8;
    }

    while (v9);
    *(a1 + v8) = ~v10;
    *(a1 + a4 + 9) = ~v10 >> 8;
    result = 0xFFFFFFFFLL;
    if (a4 > 0x3F6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    *(a1 + v8) = 0;
    *(a1 + a4 + 9) = 0;
    result = 0xFFFFFFFFLL;
    if (a4 > 0x3F6)
    {
      goto LABEL_9;
    }
  }

  v15 = a4 + 10;
  if (2 * v15 <= a2)
  {
    bzero(__src, 0x800uLL);
    v16 = 0;
    v17 = 0;
    do
    {
      while (1)
      {
        v18 = *(a1 + v16);
        v19 = v17;
        v20 = v17 + 1;
        if ((v18 - 125) > 1)
        {
          break;
        }

        v17 += 2;
        __src[v20] = v18 & 0x5F;
        __src[v19] = 125;
        if (v15 == ++v16)
        {
          goto LABEL_16;
        }
      }

      ++v17;
      __src[v19] = v18;
      ++v16;
    }

    while (v15 != v16);
LABEL_16:
    memcpy(a1, __src, v17);
    result = (v17 + 1);
    *(a1 + v17) = 126;
  }

LABEL_9:
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_ReadCalibrationBackup(void *a1, int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x13)
  {
    bzero(a1, a2);
    *a1 = 0xCFE90005000CFE4BLL;
    if (a2 >= 16)
    {
      *a1 = 0xCFE90005000CFE4BLL;
      *(a1 + 8) = 126;
      return 9;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_BackupCalibrationData(void *a1, int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x13)
  {
    bzero(a1, a2);
    *a1 = 0xD6310004000CFE4BLL;
    if (a2 >= 16)
    {
      *a1 = 0xD6310004000CFE4BLL;
      *(a1 + 8) = 126;
      return 9;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_RestoreCalibrationData(void *a1, int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x13)
  {
    bzero(a1, a2);
    *a1 = 0x66490009000CFE4BLL;
    if (a2 >= 16)
    {
      *a1 = 0x66490009000CFE4BLL;
      *(a1 + 8) = 126;
      return 9;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_ReadManifestStatus(void *a1, int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x13)
  {
    bzero(a1, a2);
    *a1 = 0x53D000C000CFD4BLL;
    if (a2 >= 16)
    {
      *a1 = 0x53D000C000CFD4BLL;
      *(a1 + 8) = 126;
      return 9;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_CheckCalibrationData(void *a1, int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x13)
  {
    bzero(a1, a2);
    *a1 = 0x129000D000CFE4BLL;
    if (a2 >= 16)
    {
      *a1 = 0x129000D000CFE4BLL;
      *(a1 + 8) = 126;
      return 9;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_ReadCalCounter(void *a1, int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 0x13)
  {
    bzero(a1, a2);
    *a1 = 0x2B41000E000CFE4BLL;
    if (a2 >= 16)
    {
      *a1 = 0x2B41000E000CFE4BLL;
      *(a1 + 8) = 126;
      return 9;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_GetRevision(_WORD *a1, int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 4)
  {
    bzero(a1, a2);
    *a1 = 30720;
    *(a1 + 2) = -16;
    if (a2 >= 6)
    {
      *a1 = 2129688576;
      return 4;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t DetectAndFixSpecialCharacters(unsigned __int8 *a1, int a2, int a3)
{
  v15 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a3 <= 1024 && 2 * a3 <= a2)
  {
    bzero(__src, 0x800uLL);
    if (a3 < 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0;
      v7 = a1;
      v8 = a3;
      do
      {
        while (1)
        {
          v10 = *v7++;
          v9 = v10;
          v11 = v6;
          v12 = v6 + 1;
          if ((v10 - 125) > 1)
          {
            break;
          }

          v6 += 2;
          __src[v12] = v9 & 0x5F;
          __src[v11] = 125;
          if (!--v8)
          {
            goto LABEL_10;
          }
        }

        ++v6;
        __src[v11] = v9;
        --v8;
      }

      while (v8);
    }

LABEL_10:
    memcpy(a1, __src, v6);
    result = (v6 + 1);
    a1[v6] = 126;
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_PingBaseBand(_WORD *a1, int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 4)
  {
    bzero(a1, a2);
    *a1 = 11387;
    *(a1 + 2) = 61;
    if (a2 >= 6)
    {
      *a1 = 2117938299;
      return 4;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_GetBaseBandRevision(_WORD *a1, int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 4)
  {
    bzero(a1, a2);
    *a1 = -27780;
    *(a1 + 2) = 73;
    if (a2 >= 6)
    {
      *a1 = 2118751100;
      return 4;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_SetDownloadMode(_WORD *a1, int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 4)
  {
    bzero(a1, a2);
    *a1 = -24262;
    *(a1 + 2) = 110;
    if (a2 >= 6)
    {
      *a1 = 2121179450;
      return 4;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_NvItemRead(char *a1, int a2, __int16 a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v3 = 0xFFFFFFFFLL;
  if (a1 && a2 >= 140)
  {
    *(a1 + 124) = 0u;
    *(a1 + 6) = 0u;
    *(a1 + 7) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 5) = 0u;
    *(a1 + 2) = 0u;
    *(a1 + 3) = 0u;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *a1 = 38;
    *(a1 + 1) = a3;
    v4 = 1064;
    LOWORD(v5) = -1;
    v6 = a1;
    do
    {
      v7 = *v6++;
      v5 = crc_16_l_table[(v7 ^ v5)] ^ ((v5 & 0xFF00) >> 8);
      v4 -= 8;
    }

    while (v4);
    *(a1 + 133) = ~v5;
    if (a2 >= 0x10E)
    {
      bzero(__src, 0x800uLL);
      v9 = 0;
      v10 = 0;
      do
      {
        while (1)
        {
          v11 = a1[v9];
          v12 = v10;
          v13 = v10 + 1;
          if ((v11 - 125) > 1)
          {
            break;
          }

          v10 += 2;
          __src[v13] = v11 & 0x5F;
          __src[v12] = 125;
          if (++v9 == 135)
          {
            goto LABEL_11;
          }
        }

        ++v10;
        __src[v12] = v11;
        ++v9;
      }

      while (v9 != 135);
LABEL_11:
      memcpy(a1, __src, v10);
      v3 = (v10 + 1);
      a1[v10] = 126;
    }

    else
    {
      v3 = 0xFFFFFFFFLL;
    }
  }

  v14 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t APPLIB_DIAG_NvItemWrite(char *a1, int a2, __int16 a3, void *__src, int a5)
{
  v19 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 140 && __src && a5 <= 128)
  {
    *(a1 + 124) = 0u;
    *(a1 + 6) = 0u;
    *(a1 + 7) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 5) = 0u;
    *(a1 + 2) = 0u;
    *(a1 + 3) = 0u;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *a1 = 39;
    *(a1 + 1) = a3;
    memcpy(a1 + 3, __src, a5);
    v8 = 1064;
    LOWORD(v9) = -1;
    v10 = a1;
    do
    {
      v11 = *v10++;
      v9 = crc_16_l_table[(v11 ^ v9)] ^ ((v9 & 0xFF00) >> 8);
      v8 -= 8;
    }

    while (v8);
    *(a1 + 133) = ~v9;
    if (a2 >= 0x10E)
    {
      bzero(__srca, 0x800uLL);
      v12 = 0;
      v13 = 0;
      do
      {
        while (1)
        {
          v14 = a1[v12];
          v15 = v13;
          v16 = v13 + 1;
          if ((v14 - 125) > 1)
          {
            break;
          }

          v13 += 2;
          __srca[v16] = v14 & 0x5F;
          __srca[v15] = 125;
          if (++v12 == 135)
          {
            goto LABEL_13;
          }
        }

        ++v13;
        __srca[v15] = v14;
        ++v12;
      }

      while (v12 != 135);
LABEL_13:
      memcpy(a1, __srca, v13);
      result = (v13 + 1);
      a1[v13] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_FTMNvItemRead(char *a1, int a2, unsigned int a3)
{
  v28 = *MEMORY[0x29EDCA608];
  v3 = 0xFFFFFFFFLL;
  if (a1 && a2 >= 19)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 15) = 0;
    *a1 = 2891;
    *(a1 + 2) = 0x900000025C0024;
    *(a1 + 5) = a3;
    v4 = crc_16_l_table[a1[7] ^ 0x5FLL];
    v5 = crc_16_l_table[a1[8] ^ 0xB7 ^ v4];
    v6 = crc_16_l_table[(a1[9] ^ v5 ^ HIBYTE(v4))];
    v7 = crc_16_l_table[(v6 ^ HIBYTE(v5) ^ a3)];
    v8 = a3 >> 8;
    v9 = crc_16_l_table[(a3 >> 8) ^ crc_16_l_table[(v6 ^ HIBYTE(v5) ^ a3)] ^ (v6 >> 8)];
    v10 = v9 ^ ~(v7 >> 8);
    *(a1 + 6) = v9 ^ ~(v7 >> 8);
    if (a2 >= 0x1C)
    {
      v12 = a3;
      v13 = v9 ^ (v7 >> 8);
      bzero(v27, 0x7F5uLL);
      __src = 0x25C00240B4BLL;
      v25 = 144;
      if ((v12 - 125) > 1)
      {
        v14 = 11;
      }

      else
      {
        v27[0] = v12 & 0x5F;
        v14 = 12;
        LOBYTE(v12) = 125;
      }

      v15 = ~v13;
      v26 = v12;
      v16 = v14;
      v17 = v14 + 1;
      if (v8 - 125 <= 1)
      {
        *(&__src + v17) = v8 & 0x5F;
        LOBYTE(v8) = 125;
        LODWORD(v17) = v14 + 2;
      }

      v18 = BYTE1(v10);
      *(&__src + v16) = v8;
      v19 = v17;
      v20 = v17 + 1;
      if ((v15 - 125) <= 1)
      {
        *(&__src + v20) = v15 & 0x5F;
        LODWORD(v20) = v19 + 2;
        LOBYTE(v15) = 125;
      }

      *(&__src + v19) = v15;
      v21 = v20 + 1;
      if ((v18 - 125) <= 1)
      {
        *(&__src + v21) = v18 & 0x5F;
        LOBYTE(v18) = 125;
        LODWORD(v21) = v20 + 2;
      }

      *(&__src + v20) = v18;
      memcpy(a1, &__src, v21);
      v3 = (v21 + 1);
      a1[v21] = 126;
    }

    else
    {
      v3 = 0xFFFFFFFFLL;
    }
  }

  v22 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t APPLIB_DIAG_FTMNvItemWrite(void *a1, int a2, __int16 a3, void *__src, int a5)
{
  v25 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 - a5 >= 21)
  {
    *a1 = 0;
    a1[1] = 0;
    *(a1 + 13) = 0;
    *a1 = 2891;
    *(a1 + 2) = 0xE0000025D0024;
    *(a1 + 5) = a3;
    *(a1 + 6) = a5;
    memcpy(a1 + 14, __src, a5);
    v10 = 8 * (a5 + 14);
    if (8 * (a5 + 14))
    {
      LOWORD(v11) = -1;
      v12 = a1;
      do
      {
        v13 = *v12++;
        v11 = crc_16_l_table[(v13 ^ v11)] ^ ((v11 & 0xFF00) >> 8);
        v10 -= 8;
      }

      while (v10);
      v14 = ~v11;
      v15 = ~v11 >> 8;
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    *(a1 + a5 + 14) = v14;
    *(a1 + a5 + 15) = v15;
    v16 = (a5 + 16);
    result = 0xFFFFFFFFLL;
    if (v16 <= 1024 && 2 * v16 <= a2)
    {
      bzero(__srca, 0x800uLL);
      if (v16 < 1)
      {
        v17 = 0;
      }

      else
      {
        v17 = 0;
        v18 = a1;
        do
        {
          while (1)
          {
            v20 = *v18++;
            v19 = v20;
            v21 = v17;
            v22 = v17 + 1;
            if ((v20 - 125) > 1)
            {
              break;
            }

            v17 += 2;
            __srca[v22] = v19 & 0x5F;
            __srca[v21] = 125;
            if (!--v16)
            {
              goto LABEL_17;
            }
          }

          ++v17;
          __srca[v21] = v19;
          --v16;
        }

        while (v16);
      }

LABEL_17:
      memcpy(a1, __srca, v17);
      result = (v17 + 1);
      *(a1 + v17) = 126;
    }
  }

  v23 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_ModeChange(_WORD *a1, int a2, unsigned int a3)
{
  v21 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 10)
  {
    *a1 = 0;
    a1[4] = 0;
    *a1 = 41;
    v5 = a3;
    *(a1 + 1) = a3;
    v6 = a3 >> 8;
    *(a1 + 2) = BYTE1(a3);
    v7 = crc_16_l_table[a3 ^ 0x44];
    v8 = crc_16_l_table[crc_16_l_table[a3 ^ 0x44] ^ (a3 >> 8) ^ 0xB3];
    v9 = v8 ^ (v7 >> 8);
    v10 = v8 ^ ~(v7 >> 8);
    *(a1 + 3) = v10;
    v11 = BYTE1(v10);
    *(a1 + 4) = BYTE1(v10);
    bzero(v20, 0x7FEuLL);
    __src[0] = 41;
    if ((v5 - 125) > 1)
    {
      v12 = 2;
    }

    else
    {
      v20[0] = v5 & 0x5F;
      v12 = 3;
      LOBYTE(v5) = 125;
    }

    v13 = ~v9;
    __src[1] = v5;
    v14 = v12 + 1;
    if (v6 - 125 <= 1)
    {
      __src[v14] = v6 & 0x5F;
      LOBYTE(v6) = 125;
      LODWORD(v14) = v12 + 2;
    }

    __src[v12] = v6;
    v15 = v14;
    v16 = v14 + 1;
    if ((v13 - 125) <= 1)
    {
      __src[v16] = v13 & 0x5F;
      LODWORD(v16) = v15 + 2;
      LOBYTE(v13) = 125;
    }

    __src[v15] = v13;
    v17 = v16 + 1;
    if ((v11 - 125) <= 1)
    {
      __src[v17] = v11 & 0x5F;
      LOBYTE(v11) = 125;
      LODWORD(v17) = v16 + 2;
    }

    __src[v16] = v11;
    memcpy(a1, __src, v17);
    result = (v17 + 1);
    *(a1 + v17) = 126;
  }

  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_GetStatus(_WORD *a1, int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 4)
  {
    bzero(a1, a2);
    *a1 = 5132;
    *(a1 + 2) = 58;
    if (a2 >= 6)
    {
      *a1 = 2117735436;
      return 4;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t APPLIB_DIAG_GetDeviceID(_DWORD *a1, int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 5)
  {
    bzero(a1, a2);
    *a1 = 65099;
    *(a1 + 2) = -18861;
    if (a2 >= 0xC)
    {
      *a1 = 65099;
      *(a1 + 2) = -18861;
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

uint64_t APPLIB_DIAG_DetectSim(_DWORD *a1, int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 5)
  {
    bzero(a1, a2);
    *a1 = 130635;
    *(a1 + 2) = -20597;
    if (a2 >= 0xC)
    {
      *a1 = 130635;
      *(a1 + 2) = -20597;
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

uint64_t DetectAndStripSpecialCharacters(_BYTE *a1, int a2, int a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v3 = 0xFFFFFFFFLL;
  if (a3 <= 2048 && a3 <= a2)
  {
    bzero(__src, 0x800uLL);
    if (a3 < 1)
    {
      v3 = 0;
    }

    else
    {
      v3 = 0;
      v6 = 0;
      do
      {
        v7 = v6;
        v8 = a1[v6];
        if (v8 == 125)
        {
          ++v6;
          LOBYTE(v8) = a1[v7 + 1] ^ 0x20;
        }

        __src[v3++] = v8;
        ++v6;
      }

      while (v6 < a3);
    }

    bzero(a1, a3);
    memcpy(a1, __src, v3);
  }

  v9 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t APPLIB_DIAG_SendRawRequest(char *a1, int a2, const void *a3, int a4)
{
  v23 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_20;
  }

  result = 0xFFFFFFFFLL;
  if (a3 && a4 + 7 <= a2)
  {
    bzero(a1, a4 + 7);
    memcpy(a1, a3, a4);
    v9 = 8 * a4;
    if (((8 * a4) & 0xFFF8) != 0)
    {
      LOWORD(v10) = -1;
      v11 = a1;
      do
      {
        v12 = *v11++;
        v10 = crc_16_l_table[(v12 ^ v10)] ^ ((v10 & 0xFF00) >> 8);
        v9 -= 8;
      }

      while (v9);
      *&a1[a4] = ~v10;
      result = 0xFFFFFFFFLL;
      if (a4 > 1022)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v13 = &a1[a4];
      *v13 = 0;
      v13[1] = 0;
      result = 0xFFFFFFFFLL;
      if (a4 > 1022)
      {
        goto LABEL_20;
      }
    }

    v14 = (a4 + 2);
    if (2 * v14 <= a2)
    {
      bzero(__src, 0x800uLL);
      if (a4 < -1)
      {
        v15 = 0;
      }

      else
      {
        v15 = 0;
        v16 = a1;
        do
        {
          while (1)
          {
            v18 = *v16++;
            v17 = v18;
            v19 = v15;
            v20 = v15 + 1;
            if ((v18 - 125) > 1)
            {
              break;
            }

            v15 += 2;
            __src[v20] = v17 & 0x5F;
            __src[v19] = 125;
            if (!--v14)
            {
              goto LABEL_19;
            }
          }

          ++v15;
          __src[v19] = v17;
          --v14;
        }

        while (v14);
      }

LABEL_19:
      memcpy(a1, __src, v15);
      result = (v15 + 1);
      a1[v15] = 126;
    }
  }

LABEL_20:
  v21 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_SetOneRx(_DWORD *a1, int a2, __int16 a3)
{
  v24 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 9)
  {
    bzero(a1, a2);
    *a1 = 195915;
    v7 = a3;
    *(a1 + 2) = a3;
    v8 = HIBYTE(a3);
    v9 = crc_16_l_table[a3 ^ 0x78];
    v10 = crc_16_l_table[crc_16_l_table[a3 ^ 0x78] ^ HIBYTE(a3) ^ 0x95];
    v11 = v10 ^ ~(v9 >> 8);
    *(a1 + 6) = v10 ^ ~(v9 >> 8);
    v12 = BYTE1(v11);
    *(a1 + 7) = BYTE1(v11);
    if (a2 >= 0x10)
    {
      v13 = v10 ^ (v9 >> 8);
      bzero(v23, 0x7FBuLL);
      __src = 195915;
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

uint64_t APPLIB_DIAG_Get_RSSI_Channel(_DWORD *a1, int a2, __int16 a3)
{
  v24 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 9)
  {
    bzero(a1, a2);
    *a1 = 261451;
    v7 = a3;
    *(a1 + 2) = a3;
    v8 = HIBYTE(a3);
    v9 = crc_16_l_table[a3 ^ 0xA0];
    v10 = crc_16_l_table[crc_16_l_table[a3 ^ 0xA0] ^ HIBYTE(a3) ^ 0x8C];
    v11 = v10 ^ ~(v9 >> 8);
    *(a1 + 6) = v10 ^ ~(v9 >> 8);
    v12 = BYTE1(v11);
    *(a1 + 7) = BYTE1(v11);
    if (a2 >= 0x10)
    {
      v13 = v10 ^ (v9 >> 8);
      bzero(v23, 0x7FBuLL);
      __src = 261451;
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

uint64_t APPLIB_DIAG_Get_OneRxConfig(_DWORD *a1, int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 7)
  {
    bzero(a1, a2);
    *a1 = 326987;
    *(a1 + 2) = 15959;
    if (a2 >= 0xC)
    {
      *a1 = 326987;
      *(a1 + 2) = 15959;
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

uint64_t APPLIB_DIAG_Release_BB_RESET_DET_N(_DWORD *a1, int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 5)
  {
    bzero(a1, a2);
    *a1 = 523595;
    *(a1 + 2) = 5183;
    if (a2 >= 0xC)
    {
      *a1 = 523595;
      *(a1 + 2) = 5183;
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

uint64_t APPLIB_DIAG_PowerDown_BaseBand(_DWORD *a1, int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 5)
  {
    bzero(a1, a2);
    *a1 = 654667;
    *(a1 + 2) = -29137;
    if (a2 >= 0xC)
    {
      *a1 = 654667;
      *(a1 + 2) = -29137;
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

uint64_t APPLIB_DIAG_EDLOAD(_DWORD *a1, int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2 >= 5)
  {
    bzero(a1, a2);
    *a1 = 982347;
    *(a1 + 2) = -15577;
    if (a2 >= 0xC)
    {
      *a1 = 982347;
      *(a1 + 2) = -15577;
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

BOOL ETLLOGGetItemIDAndEquipIDFromCode(unsigned int a1, unsigned int *a2, unsigned int *a3)
{
  if (a1 >> 13 <= 6)
  {
    *a2 = a1 >> 12;
    *a3 = a1 & 0xFFF;
  }

  return a1 < 0xE000;
}

uint64_t ETLLOGDisable()
{
  if (ETLFrameCreateUplink() && ETLRequireFreeSpace() && HDLCFrameInject() && ETLSendCommand())
  {
    ETLFindMatchingResponse();
  }

  HDLCFrameFree();
  HDLCFrameFree();
  return 0;
}

uint64_t ETLLOGGetIDs()
{
  if (ETLFrameCreateUplink() && ETLRequireFreeSpace() && HDLCFrameInject() && ETLSendCommand())
  {
    ETLFindMatchingResponse();
  }

  HDLCFrameFree();
  HDLCFrameFree();
  return 0;
}

uint64_t ETLLOGSetMask(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  _ETLDebugPrint();
  if (ETLFrameCreateUplink() && ETLRequireFreeSpace() && HDLCFrameInject() && (a4 > 0x1000 || !a4 || ETLRequireFreeSpace() && HDLCFrameInjectUnsignedInt() && HDLCFrameInjectUnsignedInt() && HDLCFrameInject() && ETLSendCommand() && ETLFindMatchingResponse()))
  {
    _ETLDebugPrint();
  }

  HDLCFrameFree();
  HDLCFrameFree();
  return 0;
}

uint64_t ETLLOGSetMaskWithRetry(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, int a6)
{
  if (!a6)
  {
    return 0;
  }

  v6 = a6;
  do
  {
    v11 = ETLLOGSetMask(a1, a2, a3, a4);
    if (v11)
    {
      break;
    }

    ETLFlushResponseFull();
    _ETLDebugPrint();
    --v6;
  }

  while (v6);
  return v11;
}

uint64_t ETLLOGClearAllMasksWithRetry(uint64_t a1, uint64_t a2, int a3)
{
  v16 = *MEMORY[0x29EDCA608];
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15[2] = v5;
  v15[3] = v5;
  v15[0] = v5;
  v15[1] = v5;
  _ETLDebugPrint();
  result = ETLLOGGetIDs();
  if (!result)
  {
LABEL_17:
    v12 = *MEMORY[0x29EDCA608];
    return result;
  }

  memset(v14, 0, sizeof(v14));
  if (a3)
  {
    v7 = 0;
    while (1)
    {
      v8 = *(v15 + v7);
      v9 = v8 >= 0x1000 ? 4096 : *(v15 + v7);
      v10 = v8 ? v9 : 4096;
      if ((ETLLOGSetMask(a1, v7, v14, v10) & 1) == 0)
      {
        break;
      }

LABEL_4:
      if (++v7 == 14)
      {
        goto LABEL_18;
      }
    }

    v11 = a3;
    while (--v11)
    {
      ETLFlushResponseFull();
      _ETLDebugPrint();
      if (ETLLOGSetMask(a1, v7, v14, v10))
      {
        goto LABEL_4;
      }
    }

    result = 0;
    goto LABEL_17;
  }

LABEL_18:
  result = 1;
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ETLLOGClearAllEnabledMasksWithRetry(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v21 = *MEMORY[0x29EDCA608];
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20[2] = v7;
  v20[3] = v7;
  v20[0] = v7;
  v20[1] = v7;
  _ETLDebugPrint();
  result = ETLLOGGetIDs();
  if (!result)
  {
    goto LABEL_19;
  }

  memset(v19, 0, sizeof(v19));
  if (!a2 || !a5)
  {
LABEL_18:
    result = 1;
LABEL_19:
    v15 = *MEMORY[0x29EDCA608];
    return result;
  }

  v9 = 0;
  while (1)
  {
    v10 = *(a3 + 4 * v9);
    if (v10 <= 0xD)
    {
      v11 = *(v20 + v10);
      v12 = v11 >= 0x1000 ? 4096 : *(v20 + v10);
      v13 = v11 ? v12 : 4096;
      if ((ETLLOGSetMask(a1, *(a3 + 4 * v9), v19, v13) & 1) == 0)
      {
        break;
      }
    }

LABEL_5:
    if (++v9 == a2)
    {
      goto LABEL_18;
    }
  }

  v14 = a5;
  while (--v14)
  {
    ETLFlushResponseFull();
    _ETLDebugPrint();
    if (ETLLOGSetMask(a1, v10, v19, v13))
    {
      goto LABEL_5;
    }
  }

  result = 0;
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

const char *ETLLOGEquipIDAsString(unsigned int a1)
{
  if (a1 <= 0xD)
  {
    return (&__const_ETLLOGEquipIDAsString_kNames)[a1];
  }

  else
  {
    return "Unknown";
  }
}

uint64_t ETLEVENTProcessEvent(char *a1, size_t __size, unsigned int *a3, char *a4, unsigned int a5, _DWORD *a6)
{
  *a3 = 0;
  *a6 = 0;
  v6 = a5 - 2;
  if (a5 < 2)
  {
    return 0;
  }

  v7 = *a4;
  v8 = a4[1];
  *a6 = 2;
  v9 = a4 + 2;
  if ((v8 & 0x80000000) != 0)
  {
    if (v6 < 2)
    {
      goto LABEL_8;
    }

    v12 = 0;
    v13 = 0;
    LOBYTE(v10) = a4[2];
    LOBYTE(v11) = a4[3];
    v14 = 2;
    v15 = (v8 >> 5) & 3;
    v16 = a5 - 4;
    v17 = 4;
    *a6 = 4;
    if (v15 <= 1)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  if (v6 < 8)
  {
    goto LABEL_8;
  }

  v10 = *v9 >> 8;
  v11 = *v9 >> 16;
  v12 = *v9;
  v13 = v11 & 0xFFFFFFFFFF00;
  v14 = 8;
  v15 = (v8 >> 5) & 3;
  v16 = a5 - 10;
  v17 = 10;
  *a6 = 10;
  if (v15 > 1)
  {
LABEL_10:
    if (v15 != 3)
    {
      if (v16 >= v15)
      {
        goto LABEL_17;
      }

      return 0;
    }

    if (v16)
    {
      v19 = *(v9 + v14);
      v17 = v14 + 3;
      *a6 = v14 + 3;
      v15 = v19;
      if (v16 - 1 >= v19)
      {
        goto LABEL_17;
      }

      return 0;
    }

LABEL_8:
    result = 0;
    *a6 = 0;
    return result;
  }

LABEL_5:
  if (v15 && v16 < v15)
  {
    return 0;
  }

LABEL_17:
  v20 = v7 & 0xFFFFF0FF | ((v8 & 0xF) << 8);
  *a6 = v15 + v17;
  v21 = 5 * (v13 | v11) + ((((43685 * (v12 & 0xFFFF00FF | (v10 << 8))) >> 16) + ((((v12 | (v10 << 8)) - ((43685 * (v12 & 0xFFFF00FF | (v10 << 8))) >> 16)) & 0xFFFE) >> 1)) >> 13) + 2;
  v22 = v21 >> 2;
  v23 = ((v21 * 0x10624DD2F1A9FCuLL) >> 64) + 315964800;
  v24 = __size;
  v26 = snprintf(a1, __size, "[%02u:%02u:%02u:%06u] EVENT 0x%04x ", ((v23 * 0x123456789ABCE0uLL) >> 64) % 0x18, v23 / 0x3C - 60 * (((v23 / 0x3C * 0x888888888888889uLL) >> 64) >> 1), v23 % 0x3C, 1000 * (v22 - 1000 * ((v22 * 0x4189374BC6A7F0uLL) >> 64)), v20);
  if (v26 >= v24)
  {
    v27 = v24;
  }

  else
  {
    v27 = v26;
  }

  *a3 = v27;
  if (v26 < v24)
  {
    if (v24 >= v26)
    {
      v28 = v24 - v26;
    }

    else
    {
      v28 = 0;
    }

    v29 = TelephonyUtilBinToHex();
    if (v29 >= v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = v29;
    }

    *a3 += v30;
  }

  return 1;
}

uint64_t ETLEVENTProcessEventItem(char *a1, unsigned int a2, _DWORD *a3, _WORD *a4, _BYTE *a5, uint64_t a6)
{
  *a3 = 0;
  v6 = a2 - 2;
  if (a2 < 2)
  {
    return 0;
  }

  v7 = a1[1];
  *a4 = (*a1 | (a1[1] << 8)) & 0xFFF;
  *a3 = 2;
  v8 = a1 + 2;
  if ((v7 & 0x80000000) == 0)
  {
    if (v6 >= 8)
    {
      *a6 = *v8;
      v9 = 8;
      goto LABEL_8;
    }

LABEL_6:
    result = 0;
    *a3 = 0;
    return result;
  }

  if (v6 < 2)
  {
    goto LABEL_6;
  }

  *(a6 + 1) = a1[2];
  *(a6 + 2) = a1[3];
  v9 = 2;
LABEL_8:
  v11 = (v7 >> 5) & 3;
  v12 = v6 - v9;
  *a3 += v9;
  if (v11 <= 1)
  {
    if (!v11)
    {
      *a5 = 0;
      result = 1;
      *a3 = *a3;
      return result;
    }

    v13 = 1;
    *a5 = 1;
    if (!v12)
    {
      return 0;
    }

    goto LABEL_18;
  }

  if (v11 == 2)
  {
    v13 = 2;
    *a5 = 2;
    if (v12 >= 2)
    {
      goto LABEL_18;
    }

    return 0;
  }

  if (v12)
  {
    *a5 = *(v8 + v9);
    ++*a3;
    v13 = *a5;
    if (v12 - 1 >= v13)
    {
LABEL_18:
      result = 1;
      *a3 += v13;
      return result;
    }

    return 0;
  }

  result = 0;
  *a3 = 0;
  return result;
}

uint64_t ETLEVENTProcessEventItemTSLength(unsigned __int8 *a1, unsigned int a2, _DWORD *a3, _WORD *a4, _BYTE *a5, uint64_t a6, unsigned int *a7)
{
  *a3 = 0;
  v7 = a2 - 2;
  if (a2 < 2)
  {
    return 0;
  }

  v8 = a1[1];
  *a4 = (*a1 | (v8 << 8)) & 0xFFF;
  if (a7)
  {
    *a7 = v8 >> 7;
    *a3 += 2;
    v9 = a1 + 2;
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    *a3 = 2;
    v9 = a1 + 2;
    if ((v8 & 0x80) == 0)
    {
LABEL_4:
      if (v7 >= 8)
      {
        *a6 = *v9;
        v10 = 8;
        goto LABEL_10;
      }

LABEL_8:
      result = 0;
      *a3 = 0;
      return result;
    }
  }

  if (v7 < 2)
  {
    goto LABEL_8;
  }

  *(a6 + 1) = a1[2];
  *(a6 + 2) = a1[3];
  v10 = 2;
LABEL_10:
  v12 = (v8 >> 5) & 3;
  v13 = v7 - v10;
  *a3 += v10;
  if (v12 <= 1)
  {
    if (!v12)
    {
      *a5 = 0;
      result = 1;
      *a3 = *a3;
      return result;
    }

    v12 = 1;
LABEL_18:
    *a5 = v12;
    if (v13 < v12)
    {
      return 0;
    }

    goto LABEL_16;
  }

  if (v12 == 2)
  {
    goto LABEL_18;
  }

  if (v13)
  {
    *a5 = *(v9 + v10);
    ++*a3;
    v12 = *a5;
    if (v13 - 1 < v12)
    {
      return 0;
    }

LABEL_16:
    result = 1;
    *a3 += v12;
    return result;
  }

  result = 0;
  *a3 = 0;
  return result;
}

uint64_t ETLEVENTProcessHeader(uint64_t a1, unsigned int a2, _DWORD *a3, _DWORD *a4)
{
  *a3 = 0;
  *a4 = 0;
  if (a2 < 3 || *a1 != 96)
  {
    return 0;
  }

  *a3 = *(a1 + 1);
  *a4 = 3;
  return 1;
}

uint64_t ETLEVENTParseReport(char *a1, size_t __size, uint64_t a3, unsigned int a4, _DWORD *a5)
{
  *a5 = 0;
  if (a4 < 3 || *a3 != 96)
  {
    return 0;
  }

  v16 = v5;
  v17 = v6;
  v8 = *(a3 + 1);
  *a5 = 3;
  if (!v8)
  {
    return 1;
  }

  v11 = (a3 + 3);
  while (1)
  {
    v14 = -1431655766;
    v15 = -1431655766;
    if ((ETLEVENTProcessEvent(a1, __size, &v14, v11, v8, &v15) & 1) == 0)
    {
      break;
    }

    v12 = v15;
    v11 += v15;
    *a5 += v15;
    a1 += v14;
    __size = __size - v14;
    v8 -= v12;
    if (!v8)
    {
      return 1;
    }
  }

  result = 0;
  *a5 = 0;
  return result;
}

uint64_t ETLEVENTParseEventReport(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (v3 < 3)
  {
    return 0;
  }

  if (*v2 != 96 || *(v2 + 1) + 3 != v3)
  {
    return 0;
  }

  result = malloc(0x28uLL);
  if (!result)
  {
    return result;
  }

  v7 = *a1;
  v8 = *(a1 + 8);
  *result = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 0;
  v9 = v8 + 1;
  if (v9 > 0xFFFFFFFD)
  {
    goto LABEL_26;
  }

  v10 = v7[4];
  *result = (v7[3] | (v7[4] << 8)) & 0xFFF;
  v11 = v7 + 5;
  if ((v10 & 0x80000000) != 0)
  {
    if (v9 < 2)
    {
      goto LABEL_26;
    }

    *(result + 3) = v7[5];
    *(result + 4) = v7[6];
    v12 = 2;
  }

  else
  {
    if (v9 < 8)
    {
      goto LABEL_26;
    }

    *(result + 2) = *v11;
    v12 = 8;
  }

  v13 = (v10 >> 5) & 3;
  v14 = v9 - v12;
  v15 = v12 + 2;
  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v16 = 2;
      *(result + 24) = 2;
      goto LABEL_19;
    }

    if (v14)
    {
      v16 = *(v11 + v12);
      *(result + 24) = v16;
      --v14;
      v15 = v12 + 3;
      goto LABEL_19;
    }

LABEL_26:
    free(result);
    return 0;
  }

  if (!v13)
  {
    goto LABEL_26;
  }

  v16 = 1;
  *(result + 24) = 1;
LABEL_19:
  if (v14 < v16)
  {
    goto LABEL_26;
  }

  if (!v16)
  {
    goto LABEL_26;
  }

  v17 = result;
  v18 = malloc(v16);
  result = v17;
  *(v17 + 16) = v18;
  if (!v18)
  {
    goto LABEL_26;
  }

  memcpy(v18, &v7[v15 + 3], v16);
  v19 = a2[1];
  if (v19)
  {
    v20 = (v19 + 32);
  }

  else
  {
    v20 = a2;
  }

  *v20 = v17;
  a2[1] = v17;
  ++*(a2 + 4);
  return 1;
}

BOOL ETLEVENTReportFree(uint64_t *a1)
{
  v2 = *a1;
  if (!*a1)
  {
    v3 = 0;
    v5 = *(a1 + 4);
    if (v5)
    {
      return v3 == v5;
    }

    goto LABEL_5;
  }

  v3 = 0;
  do
  {
    v4 = *(v2 + 32);
    free(*(v2 + 16));
    free(v2);
    ++v3;
    v2 = v4;
  }

  while (v4);
  v5 = *(a1 + 4);
  if (v3 == v5)
  {
LABEL_5:
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  return v3 == v5;
}

uint64_t ETLMESSAGEGetSubsystemIDRanges(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  *a4 = 0;
  if (ETLFrameCreateUplink() && (ETLRequireFreeSpace() & 1) != 0 && HDLCFrameInject() && ETLSendCommand() && (ETLFindMatchingResponse() & 1) == 0)
  {
    _ETLDebugPrint();
  }

  HDLCFrameFree();
  HDLCFrameFree();
  return 0;
}

uint64_t ETLMESSAGEGetSubsystemMasksWithRetry(uint64_t a1, unsigned __int16 *a2, unsigned int a3, uint64_t a4, uint64_t a5, _DWORD *a6, uint64_t a7, int a8)
{
  v8 = a2[1] - *a2 + 1;
  *a6 = 0;
  if (a8)
  {
    v10 = a8 - 1;
    _ETLDebugPrint();
    while (1)
    {
      if (ETLFrameCreateUplink() && (a3 > 1 || (ETLRequireFreeSpace() & 1) != 0 && HDLCFrameInject() && ETLRequireFreeSpace() && HDLCFrameInject() && ETLSendCommand() && (ETLFindMatchingResponse() & 1) == 0))
      {
        _ETLDebugPrint();
      }

      HDLCFrameFree();
      HDLCFrameFree();
      if (!v10)
      {
        break;
      }

      ETLFlushResponseFull();
      _ETLDebugPrint();
      --v10;
    }
  }

  else
  {
    _ETLDebugPrint();
  }

  result = 0;
  *a6 = 0;
  return result;
}

uint64_t ETLMESSAGESetSubsystemRuntimeMasksWithRetry(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = *a2;
  if (a5)
  {
    v6 = a5 - 1;
    _ETLDebugPrint();
    while (1)
    {
      if (ETLFrameCreateUplink() && (ETLRequireFreeSpace() & 1) != 0 && HDLCFrameInject() && ETLRequireFreeSpace() && HDLCFrameInject() && HDLCFrameInjectUnsignedShort() && HDLCFrameInject() && ETLSendCommand() && (ETLFindMatchingResponse() & 1) == 0)
      {
        _ETLDebugPrint();
      }

      HDLCFrameFree();
      HDLCFrameFree();
      if (!v6)
      {
        break;
      }

      ETLFlushResponseFull();
      _ETLDebugPrint();
      --v6;
    }
  }

  else
  {
    if (a2[1] - v5 + 1 < 0x3D)
    {
      v7 = a2[1] - v5 + 1;
    }

    _ETLDebugPrint();
  }

  return 0;
}

uint64_t ETLMESSAGESetAllSubsystemRunTimeMasks()
{
  _ETLDebugPrint();
  if (ETLFrameCreateUplink() && (ETLRequireFreeSpace() & 1) != 0 && HDLCFrameInject() && ETLRequireFreeSpace() && HDLCFrameInjectUnsignedShort() && HDLCFrameInjectUnsignedInt() && ETLSendCommand() && (ETLFindMatchingResponse() & 1) == 0)
  {
    _ETLDebugPrint();
  }

  HDLCFrameFree();
  HDLCFrameFree();
  _ETLDebugPrint();
  return 0;
}

uint64_t ETLMESSAGESetFlags(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  *a4 = 0;
  _ETLDebugPrint();
  if (ETLFrameCreateUplink() && (ETLRequireFreeSpace() & 1) != 0 && HDLCFrameInject() && ETLRequireFreeSpace() && HDLCFrameInjectUnsignedShort() && HDLCFrameInjectUnsignedInt() && ETLSendCommand())
  {
    if (ETLFindMatchingResponse())
    {
      *a4 = 0;
    }

    else
    {
      _ETLDebugPrint();
    }
  }

  HDLCFrameFree();
  HDLCFrameFree();
  return 0;
}

uint64_t ETLMESSAGESetEnabled(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v5 = 0;
  LODWORD(result) = ETLMESSAGESetFlags(a1, a2, &v5, &v4);
  if (v5 == v2)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t ETLQtraceSend(uint64_t a1, unsigned int *a2)
{
  if (a1)
  {
    if (ETLFrameCreateUplink())
    {
      if ((ETLSubsysAddHeader() & 1) == 0 || (v3 = *a2, (HDLCFrameInjectUnsignedInt() & 1) == 0) || (HDLCFrameInjectUnsignedInt() & 1) == 0 || (HDLCFrameInjectUnsignedInt() & 1) == 0 || (v4 = *a2, (HDLCFrameInjectUnsignedInt() & 1) == 0) || (v5 = *a2, !ETLRequireFreeSpace()))
      {
LABEL_18:
        _ETLDebugPrint();
        goto LABEL_19;
      }

      if (*a2)
      {
        v6 = 0;
        v7 = 0;
        do
        {
          v8 = *(*(a2 + 1) + v6);
          if ((HDLCFrameInjectUnsignedShort() & 1) == 0)
          {
            goto LABEL_18;
          }

          v9 = *(*(a2 + 1) + v6 + 2);
          if ((HDLCFrameInjectUnsignedShort() & 1) == 0)
          {
            goto LABEL_18;
          }

          ++v7;
          v6 += 4;
        }

        while (v7 < *a2);
      }

      if (ETLSendCommand() && ETLSubsysFindMatchingResponse())
      {
        v10 = ETLQtraceParseResponse();
LABEL_20:
        HDLCFrameFree();
        HDLCFrameFree();
        return v10;
      }
    }

LABEL_19:
    v10 = 0;
    goto LABEL_20;
  }

  _ETLDebugPrint();
  return 0;
}

uint64_t ETLQtraceParseResponse()
{
  ETLSubsysParseHeader();
  _ETLDebugPrint();
  return 0;
}

uint64_t ETLQtraceClearSend(uint64_t a1)
{
  if (!a1)
  {
    _ETLDebugPrint();
    return 0;
  }

  if (!ETLFrameCreateUplink())
  {
    goto LABEL_13;
  }

  if (!ETLSubsysAddHeader() || !HDLCFrameInjectUnsignedInt() || !HDLCFrameInjectUnsignedInt() || !HDLCFrameInjectUnsignedInt() || (HDLCFrameInjectUnsignedInt() & 1) == 0)
  {
    _ETLDebugPrint();
LABEL_13:
    v1 = 0;
    goto LABEL_14;
  }

  if (!ETLSendCommand() || !ETLSubsysFindMatchingResponse())
  {
    goto LABEL_13;
  }

  v1 = ETLQtraceParseResponse();
LABEL_14:
  HDLCFrameFree();
  HDLCFrameFree();
  return v1;
}

uint64_t ETLDMCUtilCountRangesInMaskArray(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  LODWORD(v4) = 0;
  do
  {
    v5 = *(a1 + 4 * v2);
    if ((v2 - v3) > 1 || v4 == 0)
    {
      v7 = v4 + 1;
    }

    else
    {
      v7 = v4;
    }

    if (v5)
    {
      v4 = v7;
    }

    else
    {
      v4 = v4;
    }

    if (v5)
    {
      v3 = v2;
    }

    ++v2;
  }

  while (a2 != v2);
  return v4;
}

uint64_t ETLDMCKeyword(unsigned int a1)
{
  if (a1 > 0x11)
  {
    return 0;
  }

  else
  {
    return *(&kDMCFilesMap + 2 * a1 + 1);
  }
}

uint64_t *ETLDMCFileName(unsigned int a1)
{
  HardwareModel = _MergedGlobals_0;
  if (_MergedGlobals_0)
  {
    if (a1 > 0x11)
    {
      return 0;
    }
  }

  else
  {
    HardwareModel = TelephonyCapabilitiesGetHardwareModel();
    _MergedGlobals_0 = HardwareModel;
    if (a1 > 0x11)
    {
      return 0;
    }
  }

  v3 = *(&kDMCFilesMap + 2 * a1 + 1);
  if (!v3)
  {
    return 0;
  }

  qword_2A139A670 = 0;
  *algn_2A139A678 = 0;
  *(&qword_2A139A680 + 7) = 0;
  qword_2A139A680 = 0;
  if (!HardwareModel)
  {
    return 0;
  }

  v4 = snprintf(&qword_2A139A670, 0x1EuLL, "%c%d%s%s%s", *(HardwareModel + 4), *HardwareModel, (HardwareModel + 5), "_", v3);
  result = &qword_2A139A670;
  if (v4 >= 30)
  {
    return 0;
  }

  return result;
}

const char *ETLDMCGetMatchingKeyword(const char *a1)
{
  HardwareModel = _MergedGlobals_0;
  if (a1)
  {
    v2 = a1;
    v3 = 8u;
    v4 = _MergedGlobals_0;
    while (1)
    {
      if (v4)
      {
        v5 = *(&kDMCFilesMap + v3);
        if (v5)
        {
          goto LABEL_9;
        }
      }

      else
      {
        HardwareModel = TelephonyCapabilitiesGetHardwareModel();
        _MergedGlobals_0 = HardwareModel;
        v4 = HardwareModel;
        v5 = *(&kDMCFilesMap + v3);
        if (v5)
        {
LABEL_9:
          qword_2A139A670 = 0;
          *algn_2A139A678 = 0;
          *(&qword_2A139A680 + 7) = 0;
          qword_2A139A680 = 0;
          if (v4)
          {
            v6 = snprintf(&qword_2A139A670, 0x1EuLL, "%c%d%s%s%s", *(v4 + 4), *v4, (v4 + 5), "_", v5);
            HardwareModel = _MergedGlobals_0;
            if (v6 > 29)
            {
              v4 = _MergedGlobals_0;
            }

            else
            {
              v7 = strcmp(v2, &qword_2A139A670);
              v4 = HardwareModel;
              if (!v7)
              {
                return *(&kDMCFilesMap + v3);
              }
            }
          }
        }
      }

      v3 += 16;
      if (v3 == 296)
      {
        if (HardwareModel || (HardwareModel = TelephonyCapabilitiesGetHardwareModel(), (_MergedGlobals_0 = HardwareModel) != 0))
        {
          if (strlen(v2) >= 3 && *(HardwareModel + 4) == *v2 && *(v2 + 1) - 49 < 8)
          {
            return 0;
          }
        }

        return v2;
      }
    }
  }

  v2 = 0;
  if (!_MergedGlobals_0)
  {
    _MergedGlobals_0 = TelephonyCapabilitiesGetHardwareModel();
  }

  return v2;
}

char *ETLDMCGetMatchingFileNameAndType(char *a1, unsigned int *a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = off_2A139A510;
  if (off_2A139A510 && !strcasecmp(a1, off_2A139A510))
  {
    v5 = 0;
  }

  else
  {
    v4 = off_2A139A520;
    if (off_2A139A520 && !strcasecmp(a1, off_2A139A520))
    {
      v5 = 1;
    }

    else
    {
      v4 = off_2A139A530;
      if (off_2A139A530 && !strcasecmp(a1, off_2A139A530))
      {
        v5 = 2;
      }

      else
      {
        v4 = off_2A139A540;
        if (off_2A139A540 && !strcasecmp(a1, off_2A139A540))
        {
          v5 = 3;
        }

        else
        {
          v4 = off_2A139A550;
          if (off_2A139A550 && !strcasecmp(a1, off_2A139A550))
          {
            v5 = 4;
          }

          else
          {
            v4 = off_2A139A560;
            if (off_2A139A560 && !strcasecmp(a1, off_2A139A560))
            {
              v5 = 5;
            }

            else
            {
              v4 = off_2A139A570;
              if (off_2A139A570 && !strcasecmp(a1, off_2A139A570))
              {
                v5 = 6;
              }

              else
              {
                v4 = off_2A139A580;
                if (off_2A139A580 && !strcasecmp(a1, off_2A139A580))
                {
                  v5 = 7;
                }

                else
                {
                  v4 = off_2A139A590;
                  if (off_2A139A590 && !strcasecmp(a1, off_2A139A590))
                  {
                    v5 = 8;
                  }

                  else
                  {
                    v4 = off_2A139A5A0;
                    if (off_2A139A5A0 && !strcasecmp(a1, off_2A139A5A0))
                    {
                      v5 = 9;
                    }

                    else
                    {
                      v4 = off_2A139A5B0;
                      if (off_2A139A5B0 && !strcasecmp(a1, off_2A139A5B0))
                      {
                        v5 = 10;
                      }

                      else
                      {
                        v4 = off_2A139A5C0;
                        if (off_2A139A5C0 && !strcasecmp(a1, off_2A139A5C0))
                        {
                          v5 = 11;
                        }

                        else
                        {
                          v4 = off_2A139A5D0;
                          if (off_2A139A5D0 && !strcasecmp(a1, off_2A139A5D0))
                          {
                            v5 = 12;
                          }

                          else
                          {
                            v4 = off_2A139A5E0;
                            if (off_2A139A5E0 && !strcasecmp(a1, off_2A139A5E0))
                            {
                              v5 = 13;
                            }

                            else
                            {
                              v4 = off_2A139A5F0;
                              if (off_2A139A5F0 && !strcasecmp(a1, off_2A139A5F0))
                              {
                                v5 = 14;
                              }

                              else
                              {
                                v4 = off_2A139A600;
                                if (off_2A139A600 && !strcasecmp(a1, off_2A139A600))
                                {
                                  v5 = 15;
                                }

                                else
                                {
                                  v4 = off_2A139A610;
                                  if (off_2A139A610 && !strcasecmp(a1, off_2A139A610))
                                  {
                                    v5 = 16;
                                  }

                                  else
                                  {
                                    v4 = off_2A139A620;
                                    if (!off_2A139A620)
                                    {
                                      return v4;
                                    }

                                    if (strcasecmp(a1, off_2A139A620))
                                    {
                                      return 0;
                                    }

                                    v5 = 17;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (a2)
  {
    *a2 = v5;
  }

  HardwareModel = _MergedGlobals_0;
  if (_MergedGlobals_0)
  {
    qword_2A139A670 = 0;
    *algn_2A139A678 = 0;
    *(&qword_2A139A680 + 7) = 0;
    qword_2A139A680 = 0;
  }

  else
  {
    HardwareModel = TelephonyCapabilitiesGetHardwareModel();
    _MergedGlobals_0 = HardwareModel;
    v4 = *(&kDMCFilesMap + 2 * v5 + 1);
    if (!v4)
    {
      return v4;
    }

    qword_2A139A670 = 0;
    *algn_2A139A678 = 0;
    *(&qword_2A139A680 + 7) = 0;
    qword_2A139A680 = 0;
    if (!HardwareModel)
    {
      return 0;
    }
  }

  v8 = v4;
  v4 = &qword_2A139A670;
  if (snprintf(&qword_2A139A670, 0x1EuLL, "%c%d%s%s%s", *(HardwareModel + 4), *HardwareModel, (HardwareModel + 5), "_", v8) >= 30)
  {
    return 0;
  }

  return v4;
}

void *ETLTimestampGetTimeval(void *result, uint64_t a2)
{
  v2 = (43685 * *result) >> 16;
  v3 = 5 * (*result >> 16) + ((v2 + (((*result - v2) & 0xFFFE) >> 1)) >> 13) + 2;
  *a2 = ((v3 * 0x10624DD2F1A9FCuLL) >> 64) + 315964800;
  *(a2 + 8) = 1000 * ((v3 >> 2) - 1000 * (((v3 >> 2) * 0x4189374BC6A7F0uLL) >> 64));
  return result;
}

uint64_t ETLTimestampFromTimeval(uint64_t result, void *a2)
{
  if (result)
  {
    if (a2)
    {
      *a2 = ((-25600 * (*(result + 8) % 1250)) | ((800 * *result + *(result + 8) / 1250) << 16)) - 16565655306240000;
    }
  }

  return result;
}

uint64_t ETLTimestampGetHoursMinutesSeconds(uint64_t result, _DWORD *a2, int *a3, _DWORD *a4)
{
  *a4 = result % 60;
  *a3 = (result / 60) % 60;
  v4 = (result / 3600 * 0x2AAAAAAAAAAAAAABLL) >> 64;
  *a2 = result / 3600 - 24 * ((v4 >> 63) + (v4 >> 2));
  return result;
}

uint64_t ETLTimestampsEqual(unint64_t *a1, unint64_t *a2)
{
  v2 = bswap64(*a1);
  v3 = bswap64(*a2);
  v4 = v2 >= v3;
  v5 = v2 > v3;
  v6 = !v4;
  return (v5 - v6);
}

uint64_t ETLDMCDebugGetMessageRange@<X0>(unsigned __int16 *a1@<X0>, _BYTE *a2@<X8>)
{
  v27 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26[7] = v4;
  v26[8] = v4;
  v26[5] = v4;
  v26[6] = v4;
  v26[3] = v4;
  v26[4] = v4;
  v26[1] = v4;
  v26[2] = v4;
  v25 = v4;
  v26[0] = v4;
  *__p = v4;
  v24 = v4;
  v21 = v4;
  *__src = v4;
  v19 = v4;
  v20 = v4;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v19);
  v5 = v19;
  v6 = &v19 + *(v19 - 24);
  if (*(v6 + 36) == -1)
  {
    std::ios_base::getloc((&v19 + *(v19 - 24)));
    v7 = std::locale::use_facet(&v28, MEMORY[0x29EDC93D0]);
    (v7->__vftable[2].~facet_0)(v7, 32);
    std::locale::~locale(&v28);
    v5 = v19;
  }

  *(v6 + 36) = 48;
  *(&v20 + *(v5 - 24) + 8) = 4;
  v8 = MEMORY[0x29C274D50](&v19, *a1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " to ", 4);
  v9 = *v8;
  v10 = v8 + *(*v8 - 24);
  if (*(v10 + 36) == -1)
  {
    std::ios_base::getloc((v8 + *(*v8 - 24)));
    v11 = std::locale::use_facet(&v28, MEMORY[0x29EDC93D0]);
    v12 = (v11->__vftable[2].~facet_0)(v11, 32);
    std::locale::~locale(&v28);
    *(v10 + 36) = v12;
    v9 = *v8;
  }

  *(v10 + 36) = 48;
  *(v8 + *(v9 - 24) + 24) = 4;
  MEMORY[0x29C274D50](v8, a1[1]);
  if ((BYTE8(v25) & 0x10) != 0)
  {
    v14 = v25;
    if (v25 < __src[1])
    {
      *&v25 = __src[1];
      v14 = __src[1];
    }

    v15 = __src[0];
    v13 = v14 - __src[0];
    if ((v14 - __src[0]) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if ((BYTE8(v25) & 8) == 0)
    {
      v13 = 0;
      a2[23] = 0;
      goto LABEL_19;
    }

    v15 = *(&v20 + 1);
    v13 = *(&v21 + 1) - *(&v20 + 1);
    if (*(&v21 + 1) - *(&v20 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_23:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v13 >= 0x17)
  {
    if ((v13 | 7) == 0x17)
    {
      v16 = 25;
    }

    else
    {
      v16 = (v13 | 7) + 1;
    }

    v17 = operator new(v16);
    *(a2 + 1) = v13;
    *(a2 + 2) = v16 | 0x8000000000000000;
    *a2 = v17;
    a2 = v17;
    goto LABEL_18;
  }

  a2[23] = v13;
  if (v13)
  {
LABEL_18:
    memmove(a2, v15, v13);
  }

LABEL_19:
  a2[v13] = 0;
  *&v19 = *MEMORY[0x29EDC9538];
  *(&v19 + *(v19 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v19 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v19 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v20);
  std::ostream::~ostream();
  return MEMORY[0x29C274DB0](v26);
}

void sub_29776CB48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::locale::~locale((v9 - 56));
  std::ostringstream::~ostringstream(&a9);
  _Unwind_Resume(a1);
}

uint64_t std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t a1)
{
  *(a1 + 160) = 0;
  v2 = MEMORY[0x29EDC95A8] + 64;
  *(a1 + 112) = MEMORY[0x29EDC95A8] + 64;
  v3 = *(MEMORY[0x29EDC9538] + 16);
  v4 = *(MEMORY[0x29EDC9538] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, (a1 + 8));
  v6 = MEMORY[0x29EDC95A8] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  *(a1 + 112) = v2;
  *(a1 + 8) = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29C274D60](a1 + 16);
  *(a1 + 72) = 0;
  v7 = a1 + 72;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = MEMORY[0x29EDC9570] + 16;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 104) = 16;
  *(a1 + 96) = a1 + 72;
  std::string::append((a1 + 72), 0x16uLL, 0);
  v8 = *(a1 + 95);
  if (v8 < 0)
  {
    v8 = *(a1 + 80);
  }

  *(a1 + 48) = v7;
  *(a1 + 56) = v7;
  *(a1 + 64) = v7 + v8;
  return a1;
}

void sub_29776CD70(_Unwind_Exception *a1)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*v3);
  }

  *(v1 + 8) = v4;
  std::locale::~locale((v1 + 16));
  std::ostream::~ostream();
  MEMORY[0x29C274DB0](v2);
  _Unwind_Resume(a1);
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
  std::ostream::~ostream();
  MEMORY[0x29C274DB0](a1 + 112);
  return a1;
}

uint64_t ETLDMCDebugGetEventRange@<X0>(unsigned __int16 *a1@<X0>, _BYTE *a2@<X8>)
{
  v27 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26[7] = v4;
  v26[8] = v4;
  v26[5] = v4;
  v26[6] = v4;
  v26[3] = v4;
  v26[4] = v4;
  v26[1] = v4;
  v26[2] = v4;
  v25 = v4;
  v26[0] = v4;
  *__p = v4;
  v24 = v4;
  v21 = v4;
  *__src = v4;
  v19 = v4;
  v20 = v4;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v19);
  v5 = v19;
  v6 = &v19 + *(v19 - 24);
  if (*(v6 + 36) == -1)
  {
    std::ios_base::getloc((&v19 + *(v19 - 24)));
    v7 = std::locale::use_facet(&v28, MEMORY[0x29EDC93D0]);
    (v7->__vftable[2].~facet_0)(v7, 32);
    std::locale::~locale(&v28);
    v5 = v19;
  }

  *(v6 + 36) = 48;
  *(&v20 + *(v5 - 24) + 8) = 4;
  v8 = MEMORY[0x29C274D50](&v19, *a1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " to ", 4);
  v9 = *v8;
  v10 = v8 + *(*v8 - 24);
  if (*(v10 + 36) == -1)
  {
    std::ios_base::getloc((v8 + *(*v8 - 24)));
    v11 = std::locale::use_facet(&v28, MEMORY[0x29EDC93D0]);
    v12 = (v11->__vftable[2].~facet_0)(v11, 32);
    std::locale::~locale(&v28);
    *(v10 + 36) = v12;
    v9 = *v8;
  }

  *(v10 + 36) = 48;
  *(v8 + *(v9 - 24) + 24) = 4;
  MEMORY[0x29C274D50](v8, a1[1]);
  if ((BYTE8(v25) & 0x10) != 0)
  {
    v14 = v25;
    if (v25 < __src[1])
    {
      *&v25 = __src[1];
      v14 = __src[1];
    }

    v15 = __src[0];
    v13 = v14 - __src[0];
    if ((v14 - __src[0]) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if ((BYTE8(v25) & 8) == 0)
    {
      v13 = 0;
      a2[23] = 0;
      goto LABEL_19;
    }

    v15 = *(&v20 + 1);
    v13 = *(&v21 + 1) - *(&v20 + 1);
    if (*(&v21 + 1) - *(&v20 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_23:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v13 >= 0x17)
  {
    if ((v13 | 7) == 0x17)
    {
      v16 = 25;
    }

    else
    {
      v16 = (v13 | 7) + 1;
    }

    v17 = operator new(v16);
    *(a2 + 1) = v13;
    *(a2 + 2) = v16 | 0x8000000000000000;
    *a2 = v17;
    a2 = v17;
    goto LABEL_18;
  }

  a2[23] = v13;
  if (v13)
  {
LABEL_18:
    memmove(a2, v15, v13);
  }

LABEL_19:
  a2[v13] = 0;
  *&v19 = *MEMORY[0x29EDC9538];
  *(&v19 + *(v19 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v19 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v19 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v20);
  std::ostream::~ostream();
  return MEMORY[0x29C274DB0](v26);
}

void sub_29776D2A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::locale::~locale((v9 - 56));
  std::ostringstream::~ostringstream(&a9);
  _Unwind_Resume(a1);
}

uint64_t ETLDMCDebugGetMessageMasks@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  if (a2 >= 4)
  {
    result = _ETLDebugPrint();
    __break(1u);
    return result;
  }

  v6 = *(a1 + (a2 << 6) + 16);
  v40 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v39[7] = v7;
  v39[8] = v7;
  v39[5] = v7;
  v39[6] = v7;
  v39[3] = v7;
  v39[4] = v7;
  v39[1] = v7;
  v39[2] = v7;
  v38 = v7;
  v39[0] = v7;
  *v36 = v7;
  v37 = v7;
  v34 = v7;
  v35 = v7;
  v32 = v7;
  v33 = v7;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v32);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "Ranges: ", 8);
  v8 = MEMORY[0x29C274D40](&v32, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "\n", 1);
  __dst = a3;
  if (v6)
  {
    v9 = 0;
    v10 = (a1 + ((a2 << 6) | 0x10));
    v11 = 8;
    do
    {
      v31 = -1431655766;
      if (v9 >= *v10)
      {
        v15 = 43691;
        v14 = 43690;
      }

      else
      {
        v12 = (*(v10 + 1) + v11);
        v31 = *(v12 - 2);
        v13 = *v12;
        v14 = v31;
        v15 = HIWORD(v31) + 1;
      }

      ETLDMCDebugGetMessageRange(&v31, __p);
      if ((v30 & 0x80u) == 0)
      {
        v16 = __p;
      }

      else
      {
        v16 = __p[0];
      }

      if ((v30 & 0x80u) == 0)
      {
        v17 = v30;
      }

      else
      {
        v17 = __p[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, v16, v17);
      v41[0] = 58;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, v41, 1);
      if (v30 < 0)
      {
        operator delete(__p[0]);
      }

      v18 = v15 - v14;
      v19 = operator new[]((8 * (v15 - v14)) | 1u);
      bzero(v19, (8 * v18) | 1u);
      TelephonyUtilBinToHex();
      v20 = strlen(v19);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, v19, v20);
      LOBYTE(__p[0]) = 10;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, __p, 1);
      operator delete[](v19);
      ++v9;
      v11 += 16;
    }

    while (v6 != v9);
  }

  if ((BYTE8(v38) & 0x10) != 0)
  {
    v23 = v38;
    v21 = __dst;
    if (v38 < *(&v35 + 1))
    {
      *&v38 = *(&v35 + 1);
      v23 = *(&v35 + 1);
    }

    v24 = v35;
    v22 = v23 - v35;
    if ((v23 - v35) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v21 = __dst;
    if ((BYTE8(v38) & 8) == 0)
    {
      v22 = 0;
      *(__dst + 23) = 0;
      goto LABEL_30;
    }

    v24 = *(&v33 + 1);
    v22 = *(&v34 + 1) - *(&v33 + 1);
    if (*(&v34 + 1) - *(&v33 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_34:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v22 >= 0x17)
  {
    if ((v22 | 7) == 0x17)
    {
      v25 = 25;
    }

    else
    {
      v25 = (v22 | 7) + 1;
    }

    v26 = operator new(v25);
    v21[1] = v22;
    v21[2] = v25 | 0x8000000000000000;
    *v21 = v26;
    v21 = v26;
  }

  else
  {
    *(v21 + 23) = v22;
    if (!v22)
    {
      goto LABEL_30;
    }
  }

  memmove(v21, v24, v22);
LABEL_30:
  *(v21 + v22) = 0;
  *&v32 = *MEMORY[0x29EDC9538];
  *(&v32 + *(v32 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v32 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v37) < 0)
  {
    operator delete(v36[1]);
  }

  *(&v32 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v33);
  std::ostream::~ostream();
  return MEMORY[0x29C274DB0](v39);
}

uint64_t ETLDMCDebugGetLogCodes@<X0>(uint64_t a1@<X0>, int a2@<W1>, char a3@<W2>, void *a4@<X8>)
{
  v59 = *MEMORY[0x29EDCA608];
  v55 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v54[7] = v8;
  v54[8] = v8;
  v54[5] = v8;
  v54[6] = v8;
  v54[3] = v8;
  v54[4] = v8;
  v54[1] = v8;
  v54[2] = v8;
  v53 = v8;
  v54[0] = v8;
  *__p = v8;
  v52 = v8;
  v49 = v8;
  v50 = v8;
  v47 = v8;
  v48 = v8;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v47);
  v46 = a1 + 144;
  __dst = a4;
  v43 = a1 + 80;
  v44 = a1 + 208;
  v45 = a1 + 16;
  if ((a3 & 1) == 0)
  {
    v22 = 0;
    v23 = 0;
    while (1)
    {
      if (a2 > 1)
      {
        v24 = a1 + 144;
        if (a2 != 2)
        {
          v24 = a1 + 208;
          if (a2 != 3)
          {
LABEL_46:
            result = _ETLDebugPrint();
            __break(1u);
            return result;
          }
        }
      }

      else
      {
        v24 = a1 + 16;
        if (a2)
        {
          v24 = a1 + 80;
          if (a2 != 1)
          {
            goto LABEL_46;
          }
        }
      }

      v25 = *(v24 + 16);
      if (v25)
      {
        v26 = (v25 + v22);
        v27 = *v26;
        if (*v26)
        {
          v28 = *(v26 + 1);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, "EquipID(", 8);
          v29 = MEMORY[0x29C274D40](&v47, v23);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "): ", 3);
          v30 = strlen((&__const_ETLLOGEquipIDAsString_kNames)[v23]);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, (&__const_ETLLOGEquipIDAsString_kNames)[v23], v30);
          __str[0] = 58;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, __str, 1);
          v31 = ((v27 + 7) >> 2) | 1;
          v32 = operator new[](v31);
          bzero(v32, v31);
          TelephonyUtilBinToHex();
          v33 = strlen(v32);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, v32, v33);
          __str[0] = 10;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, __str, 1);
          operator delete[](v32);
        }
      }

      ++v23;
      v22 += 16;
      if (v23 == 14)
      {
        goto LABEL_27;
      }
    }
  }

  v9 = 0;
  for (i = 0; i != 14; ++i)
  {
    if (a2 > 1)
    {
      v11 = v46;
      if (a2 != 2)
      {
        v11 = v44;
        if (a2 != 3)
        {
          goto LABEL_46;
        }
      }
    }

    else
    {
      v11 = v45;
      if (a2)
      {
        v11 = v43;
        if (a2 != 1)
        {
          goto LABEL_46;
        }
      }
    }

    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = (v12 + 16 * i);
      v14 = *v13;
      if (*v13)
      {
        v15 = *(v13 + 1);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, "EquipID(", 8);
        v16 = MEMORY[0x29C274D40](&v47, i);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "): ", 3);
        v17 = strlen((&__const_ETLLOGEquipIDAsString_kNames)[i]);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, (&__const_ETLLOGEquipIDAsString_kNames)[i], v17);
        __str[0] = 58;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, __str, 1);
        __str[0] = 10;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, __str, 1);
        v18 = 0;
        v19 = v9;
        do
        {
          if ((*(v15 + (v18 >> 3)) >> (v18 & 7)))
          {
            *&v20 = 0xAAAAAAAAAAAAAAAALL;
            *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
            *__str = v20;
            v58 = v20;
            snprintf(__str, 0x20uLL, "0x%x", v19);
            v56 = 9;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, &v56, 1);
            v21 = strlen(__str);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, __str, v21);
            v56 = 10;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, &v56, 1);
          }

          ++v18;
          ++v19;
        }

        while (v14 != v18);
      }
    }

    v9 += 4096;
  }

LABEL_27:
  v34 = __dst;
  if ((BYTE8(v53) & 0x10) != 0)
  {
    v36 = v53;
    if (v53 < *(&v50 + 1))
    {
      *&v53 = *(&v50 + 1);
      v36 = *(&v50 + 1);
    }

    v37 = v50;
    v35 = v36 - v50;
    if ((v36 - v50) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_45;
    }
  }

  else
  {
    if ((BYTE8(v53) & 8) == 0)
    {
      v35 = 0;
      *(__dst + 23) = 0;
      goto LABEL_41;
    }

    v37 = *(&v48 + 1);
    v35 = *(&v49 + 1) - *(&v48 + 1);
    if (*(&v49 + 1) - *(&v48 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_45:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v35 >= 0x17)
  {
    if ((v35 | 7) == 0x17)
    {
      v38 = 25;
    }

    else
    {
      v38 = (v35 | 7) + 1;
    }

    v39 = operator new(v38);
    __dst[1] = v35;
    __dst[2] = v38 | 0x8000000000000000;
    *__dst = v39;
    v34 = v39;
  }

  else
  {
    *(__dst + 23) = v35;
    if (!v35)
    {
      goto LABEL_41;
    }
  }

  memmove(v34, v37, v35);
LABEL_41:
  *(v34 + v35) = 0;
  *&v47 = *MEMORY[0x29EDC9538];
  *(&v47 + *(v47 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v47 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v52) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v47 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v48);
  std::ostream::~ostream();
  result = MEMORY[0x29C274DB0](v54);
  v41 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29776DCB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_29776DCC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_29776DCDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_29776DCF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_29776DD04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t ETLDMCDebugGetEvents@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, _BYTE *a3@<X8>)
{
  if (a2 >= 4)
  {
    result = _ETLDebugPrint();
    __break(1u);
    return result;
  }

  v6 = *(a1 + ((a2 << 6) | 0x10) + 24);
  v30 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v29[7] = v7;
  v29[8] = v7;
  v29[5] = v7;
  v29[6] = v7;
  v29[3] = v7;
  v29[4] = v7;
  v29[1] = v7;
  v29[2] = v7;
  v28 = v7;
  v29[0] = v7;
  *v26 = v7;
  v27 = v7;
  v24 = v7;
  v25 = v7;
  v22 = v7;
  v23 = v7;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v22);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "Ranges: ", 8);
  v8 = MEMORY[0x29C274D40](&v22, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "\n", 1);
  if (v6)
  {
    v9 = 0;
    v10 = a1 + ((a2 << 6) | 0x10);
    do
    {
      v21 = -1431655766;
      if (v9 < *(v10 + 24))
      {
        v21 = *(*(v10 + 32) + 4 * v9);
      }

      ETLDMCDebugGetEventRange(&v21, __p);
      if ((v20 & 0x80u) == 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      if ((v20 & 0x80u) == 0)
      {
        v12 = v20;
      }

      else
      {
        v12 = __p[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, v11, v12);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "\n", 1);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }

      ++v9;
    }

    while (v6 != v9);
  }

  if ((BYTE8(v28) & 0x10) != 0)
  {
    v14 = v28;
    if (v28 < *(&v25 + 1))
    {
      *&v28 = *(&v25 + 1);
      v14 = *(&v25 + 1);
    }

    v15 = v25;
    v13 = v14 - v25;
    if ((v14 - v25) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_33;
    }
  }

  else
  {
    if ((BYTE8(v28) & 8) == 0)
    {
      v13 = 0;
      a3[23] = 0;
      goto LABEL_29;
    }

    v15 = *(&v23 + 1);
    v13 = *(&v24 + 1) - *(&v23 + 1);
    if (*(&v24 + 1) - *(&v23 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_33:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v13 >= 0x17)
  {
    if ((v13 | 7) == 0x17)
    {
      v16 = 25;
    }

    else
    {
      v16 = (v13 | 7) + 1;
    }

    v17 = operator new(v16);
    *(a3 + 1) = v13;
    *(a3 + 2) = v16 | 0x8000000000000000;
    *a3 = v17;
    a3 = v17;
  }

  else
  {
    a3[23] = v13;
    if (!v13)
    {
      goto LABEL_29;
    }
  }

  memmove(a3, v15, v13);
LABEL_29:
  a3[v13] = 0;
  *&v22 = *MEMORY[0x29EDC9538];
  *(&v22 + *(v22 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v22 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[1]);
  }

  *(&v22 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v23);
  std::ostream::~ostream();
  return MEMORY[0x29C274DB0](v29);
}

void sub_29776E050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_29776E068(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a18);
  _Unwind_Resume(a1);
}

const char *ETLDMCDebugGetViewAsString(unsigned int a1)
{
  if (a1 > 3)
  {
    return "Unknown";
  }

  else
  {
    return (&off_29EE6DE60)[a1];
  }
}

uint64_t ETLDMCDebugGetQtraces@<X0>(void *a1@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  v29 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v28[7] = v6;
  v28[8] = v6;
  v28[5] = v6;
  v28[6] = v6;
  v28[3] = v6;
  v28[4] = v6;
  v28[1] = v6;
  v28[2] = v6;
  v27 = v6;
  v28[0] = v6;
  *__p = v6;
  v26 = v6;
  v23 = v6;
  v24 = v6;
  v21 = v6;
  v22 = v6;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v21);
  if (a2 <= 1)
  {
    if (!a2)
    {
      v7 = a1 + 2;
      if (!a1[9])
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    if (a2 == 1)
    {
      v7 = a1 + 10;
      if (!a1[17])
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

LABEL_10:
    _ETLDebugPrint();
    v7 = 0;
    if (!MEMORY[0x38])
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  if (a2 != 2)
  {
    if (a2 == 3)
    {
      v7 = a1 + 26;
      if (!a1[33])
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v7 = a1 + 18;
  if (!a1[25])
  {
    goto LABEL_18;
  }

LABEL_15:
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "Total Clinet IDs: ", 18);
  v8 = MEMORY[0x29C274D40](&v21, *(v7 + 12));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "\n", 1);
  if (*(v7 + 12))
  {
    v9 = 0;
    v10 = 0;
    do
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "  Clinet ID: ", 13);
      *(&v21 + *(v21 - 24) + 8) = *(&v21 + *(v21 - 24) + 8) & 0xFFFFFFB5 | 2;
      v11 = MEMORY[0x29C274D50](&v21, *(v7[7] + v9));
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", Mask: 0x", 10);
      *(v12 + *(*v12 - 24) + 8) = *(v12 + *(*v12 - 24) + 8) & 0xFFFFFFB5 | 8;
      v13 = *(v7[7] + v9 + 2);
      v14 = MEMORY[0x29C274D50](v12);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "\n", 1);
      ++v10;
      v9 += 4;
    }

    while (v10 < *(v7 + 12));
  }

LABEL_18:
  if ((BYTE8(v27) & 0x10) != 0)
  {
    v16 = v27;
    if (v27 < *(&v24 + 1))
    {
      *&v27 = *(&v24 + 1);
      v16 = *(&v24 + 1);
    }

    v17 = v24;
    v15 = v16 - v24;
    if ((v16 - v24) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_36;
    }
  }

  else
  {
    if ((BYTE8(v27) & 8) == 0)
    {
      v15 = 0;
      a3[23] = 0;
      goto LABEL_32;
    }

    v17 = *(&v22 + 1);
    v15 = *(&v23 + 1) - *(&v22 + 1);
    if (*(&v23 + 1) - *(&v22 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_36:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v15 >= 0x17)
  {
    if ((v15 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v15 | 7) + 1;
    }

    v19 = operator new(v18);
    *(a3 + 1) = v15;
    *(a3 + 2) = v18 | 0x8000000000000000;
    *a3 = v19;
    a3 = v19;
    goto LABEL_31;
  }

  a3[23] = v15;
  if (v15)
  {
LABEL_31:
    memmove(a3, v17, v15);
  }

LABEL_32:
  a3[v15] = 0;
  *&v21 = *MEMORY[0x29EDC9538];
  *(&v21 + *(v21 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v21 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v21 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v22);
  std::ostream::~ostream();
  return MEMORY[0x29C274DB0](v28);
}