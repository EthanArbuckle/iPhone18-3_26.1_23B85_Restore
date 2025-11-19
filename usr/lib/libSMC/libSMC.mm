uint64_t SMCGetKeyInfo(mach_port_t *a1, int a2, uint64_t a3)
{
  v33 = *MEMORY[0x29EDCA608];
  v3 = -1;
  if (a1 && a2 && a3)
  {
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0;
    inputStruct = a2;
    BYTE6(v24) = 9;
    if (SMCKextCall(*a1, &inputStruct, &v10))
    {
      v3 = -2;
    }

    else if (BYTE8(v12))
    {
      v3 = -3;
    }

    else
    {
      v5 = v12;
      *(a3 + 20) = HIDWORD(v11);
      if (SMCGetTypeDescriptionForNumericType(v5, a3 + 8) == -1)
      {
        *(a3 + 8) = HIBYTE(v5);
        *(a3 + 9) = BYTE2(v5);
        *(a3 + 10) = BYTE1(v5);
        *(a3 + 11) = v5;
        v6 = 1;
        *(a3 + 12) = 0;
      }

      else
      {
        v6 = 0;
      }

      v3 = 0;
      v7 = BYTE4(v12);
      *a3 = v6;
      *(a3 + 4) = v7;
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t SMCKextCall(mach_port_t a1, void *inputStruct, void *outputStruct)
{
  outputStructCnt = 168;
  if (*(inputStruct + 7) < 0x79u)
  {
    return IOConnectCallStructMethod(a1, 2u, inputStruct, 0xA8uLL, outputStruct, &outputStructCnt);
  }

  v3 = 3758097090;
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    SMCKextCall_cold_1();
  }

  return v3;
}

uint64_t SMCMakeUInt32Key(const char *a1)
{
  v2 = strlen(a1);
  v3 = 0;
  LODWORD(result) = 0;
  v5 = 24;
  do
  {
    if (v3 >= v2)
    {
      v6 = 32;
    }

    else
    {
      v6 = a1[v3];
    }

    result = (v6 << v5) | result;
    ++v3;
    v5 -= 8;
  }

  while (v3 != 4);
  return result;
}

uint64_t SMCGetTypeDescriptionForNumericType(unsigned int a1, uint64_t a2)
{
  if (a2)
  {
    v14 = bswap32(a1);
    if (v14 == 544500838)
    {
      v5 = 0;
      *a2 = 1;
      *(a2 + 4) = 1;
      LOWORD(v6) = 32;
LABEL_9:
      *(a2 + 6) = v6;
      *(a2 + 8) = 0;
      return v5;
    }

    if (v14 == 1952870249)
    {
      v5 = 0;
      *a2 = 2;
      *(a2 + 4) = 1;
      *(a2 + 6) = 64;
      *(a2 + 8) = 16;
      return v5;
    }

    if (BYTE2(a1) == 105)
    {
      v4 = 0;
      v3 = 0;
      v2 = 1;
    }

    else
    {
      if (BYTE2(a1) != 112)
      {
        return -1;
      }

      v2 = 0;
      v3 = 2;
      v4 = 1;
    }

    v7 = HIBYTE(a1);
    *a2 = v3;
    if (HIBYTE(a1) == 102)
    {
      if (!v4)
      {
        return -1;
      }

      v8 = 0;
      *(a2 + 4) = 0;
    }

    else
    {
      if (v7 != 115)
      {
        if (v7 != 117 || !v2)
        {
          return -1;
        }

        *(a2 + 4) = 0;
        goto LABEL_18;
      }

      v8 = 1;
      *(a2 + 4) = 1;
      if (v2)
      {
LABEL_18:
        v6 = (a1 >> 8) - 48;
        if ((BYTE1(a1) - 48) <= 9u)
        {
          if (a1 == 32)
          {
LABEL_22:
            v5 = 0;
            LOWORD(v6) = v6;
            goto LABEL_9;
          }

          if ((a1 - 48) <= 9u)
          {
            LOBYTE(v6) = a1 - 48 + 10 * v6;
            goto LABEL_22;
          }
        }

        return -1;
      }
    }

    v9 = (a1 >> 8) - 48;
    if ((BYTE1(a1) - 48) >= 0xAu)
    {
      LOBYTE(v9) = -1;
    }

    if ((BYTE1(a1) - 97) < 0x17u)
    {
      LOBYTE(v9) = BYTE1(a1) - 87;
    }

    v10 = a1 - 48;
    if ((a1 - 48) >= 0xAu)
    {
      v10 = -1;
    }

    if ((a1 - 97) >= 0x17u)
    {
      v11 = v10;
    }

    else
    {
      v11 = a1 - 87;
    }

    if ((v9 & 0x80) == 0 && (v11 & 0x80000000) == 0)
    {
      v12 = (v9 + v11 + v8);
      *(a2 + 6) = v12;
      *(a2 + 8) = v11;
      if (v12 < 0x41)
      {
        return 0;
      }
    }

    return -1;
  }

  return -1;
}

uint64_t SMCReadKeyWithKnownSize(mach_port_t *a1, int a2, unsigned int a3, void *a4)
{
  v25 = *MEMORY[0x29EDCA608];
  v4 = -1;
  if (a1 && a2 && a4)
  {
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0;
    memset(v9, 0, sizeof(v9));
    v10 = 0u;
    memset(v11, 0, sizeof(v11));
    v12 = 0;
    inputStruct = a2;
    DWORD2(v15) = a3;
    BYTE6(v16) = 5;
    if (SMCKextCall(*a1, &inputStruct, v9))
    {
      v4 = -2;
    }

    else if (BYTE8(v10))
    {
      v4 = -3;
    }

    else
    {
      memcpy(a4, v11, a3);
      v4 = 0;
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t SMCReadKeyAsNumericWithKnownKeyInfo(uint64_t a1, uint64_t a2, uint64_t a3, double *a4)
{
  v4 = a1;
  v14[1] = *MEMORY[0x29EDCA608];
  LOBYTE(a1) = -1;
  if (v4)
  {
    if (a3)
    {
      if (a4)
      {
        v7 = *(a3 + 20);
        MEMORY[0x2A1C7C4A8](255);
        v9 = v14 - ((v8 + 15) & 0x1FFFFFFF0);
        LODWORD(a1) = SMCReadKeyWithKnownSize(v11, v10, *(a3 + 20), v9);
        if (!a1)
        {
          LOBYTE(a1) = SMCParseBytesForNumeric(v9, *(a3 + 20), a4, a3);
        }
      }
    }
  }

  v12 = *MEMORY[0x29EDCA608];
  return a1;
}

uint64_t SMCWriteKey(mach_port_t *a1, int a2, uint64_t a3)
{
  v3 = a1;
  LOBYTE(a1) = -1;
  if (v3)
  {
    if (a3)
    {
      v7[0] = 0;
      v7[1] = 0;
      v8 = 0;
      LODWORD(a1) = SMCGetKeyInfo(v3, a2, v7);
      if (!a1)
      {
        LOBYTE(a1) = SMCWriteKeyWithKnownSize(v3, a2, HIDWORD(v8), a3);
      }
    }
  }

  return a1;
}

uint64_t SMCOSAccumSampleChannel(mach_port_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  LOBYTE(a1) = -1;
  if (v3 && a2 && a3)
  {
    if (SMCOSAccumIsSupported(v3))
    {
      v12 = *(a2 + 268);
      LODWORD(a1) = SMCWriteKey(v3, 1297315938, &v12);
      if (!a1)
      {
        v10 = 0;
        v11 = 0.0;
        LODWORD(a1) = SMCReadKey(v3, 1297315955, &v10, 0x10u);
        if (!a1)
        {
          if (__PAIR64__(BYTE1(v10), v10) == __PAIR64__(*(a2 + 269), *(a2 + 268)))
          {
            v9 = 0;
            v8 = 0;
            LODWORD(a1) = SMCGetTypeDescriptionForNumericType(*(a2 + 264), &v8);
            if (!a1)
            {
              v6 = (1 << v9);
              if (v8 != 2)
              {
                v6 = 1.0;
              }

              *a3 = v11 / v6;
              *(a3 + 8) = HIDWORD(v10);
              *(a3 + 12) = v10;
            }
          }

          else
          {
            LOBYTE(a1) = 0;
          }
        }
      }
    }

    else
    {
      LOBYTE(a1) = -1;
    }
  }

  return a1;
}

uint64_t SMCParseBytesForNumeric(unsigned __int8 *a1, unsigned int a2, double *a3, uint64_t a4)
{
  v4 = *(a4 + 14);
  if (8 * a2 < v4)
  {
    return -1;
  }

  v6 = *(a4 + 8);
  if (v6 == 2)
  {
    if ((*(a4 + 4) & 4) != 0)
    {
      if (a2)
      {
        v16 = 0;
        v19 = a2;
        do
        {
          v16 = a1[--v19] | (v16 << 8);
        }

        while (v19);
        goto LABEL_30;
      }
    }

    else if (a2)
    {
      v16 = 0;
      v17 = a2;
      do
      {
        v18 = *a1++;
        v16 = v18 | (v16 << 8);
        --v17;
      }

      while (v17);
      goto LABEL_30;
    }

    v16 = 0;
LABEL_30:
    v20 = v4 - 1;
    v21 = (v16 & ~(-1 << v4) ^ (1 << (v4 - 1))) - (1 << (v4 - 1));
    if (!*(a4 + 12))
    {
      v21 = v16;
    }

    if (v20 <= 0x3E)
    {
      v16 = v21;
    }

    v22 = *(a4 + 12) & (v16 < 0);
    if (v22)
    {
      v16 = -v16;
    }

    v15 = v16;
    if (*(a4 + 16))
    {
      v15 = v15 / (1 << *(a4 + 16));
    }

    v5 = 0;
    if (v22)
    {
      v15 = -v15;
    }

    goto LABEL_40;
  }

  if (v6 == 1)
  {
    if (a2)
    {
      v13 = 0.0;
      v14 = a2;
      do
      {
        LODWORD(v13) = a1[--v14] | (LODWORD(v13) << 8);
      }

      while (v14);
      v15 = v13;
    }

    else
    {
      v15 = 0.0;
    }

    v5 = 0;
LABEL_40:
    *a3 = v15;
    return v5;
  }

  if (v6)
  {
    return -1;
  }

  v7 = 0;
  if (a2)
  {
    v8 = a2;
    do
    {
      v9 = *a1++;
      v7 = v9 | (v7 << 8);
      --v8;
    }

    while (v8);
  }

  *a3 = v7;
  if (*(a4 + 12) == 1)
  {
    v5 = 0;
    v10 = *(a4 + 14);
    v11 = v10 - 64;
    v12 = ((1 << (v10 - 1)) ^ v7 & ~(-1 << v10)) - (1 << (v10 - 1));
    if (v11 >= 0xFFFFFFC1)
    {
      v7 = v12;
    }

    *a3 = v7;
  }

  else
  {
    return 0;
  }

  return v5;
}

uint64_t SMCOSAccumIsSupported(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 509) == 1 || !SMCAEPopulatePlatform(a1))
    {
      v2 = *(a1 + 508);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        SMCOSAccumIsSupported_cold_1();
      }

      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t SMCWriteKeyWithKnownSize(mach_port_t *a1, int a2, unsigned int a3, uint64_t a4)
{
  v31 = *MEMORY[0x29EDCA608];
  v4 = -1;
  if (a1 && a4)
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    memset(v9, 0, sizeof(v9));
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0;
    inputStruct = a2;
    DWORD2(v21) = a3;
    BYTE6(v22) = 6;
    if (a3 <= 0x78)
    {
      __memcpy_chk();
      v6 = SMCKextCall(*a1, &inputStruct, v9);
      kdebug_trace();
      if (v6 == -536870207)
      {
        v4 = -7;
      }

      else if (v6)
      {
        v4 = -2;
      }

      else if (BYTE8(v10))
      {
        v4 = -3;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = -1;
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t SMCReadKey(mach_port_t *a1, int a2, void *a3, unsigned int a4)
{
  v5 = -1;
  if (a1 && a2 && a3)
  {
    v10[0] = 0;
    v10[1] = 0;
    v11 = 0;
    if (SMCGetKeyInfo(a1, a2, v10))
    {
      return -1;
    }

    else if (HIDWORD(v11) <= a4)
    {
      return SMCReadKeyWithKnownSize(a1, a2, HIDWORD(v11), a3);
    }

    else
    {
      return -5;
    }
  }

  return v5;
}

uint64_t SMCAEPopulatePlatform(uint64_t a1)
{
  v22 = *MEMORY[0x29EDCA608];
  v2 = SMCReadKey(a1, 1381002356, v20, 0x20u);
  if (v2)
  {
    v3 = v2;
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      SMCAEPopulatePlatform_cold_1();
    }

    goto LABEL_30;
  }

  __strlcpy_chk();
  if (SMCReadKey(a1, 1297307713, v20, 0x20u))
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      SMCAEPopulatePlatform_cold_2();
    }

    v4 = &AccumulatorPlatformStructLookupArray;
    v5 = 56;
    while (strcasecmp(v21, v4))
    {
      v4 += 48;
      if (!--v5)
      {
        goto LABEL_29;
      }
    }

    *(a1 + 8) = v4;
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      SMCAEPopulatePlatform_cold_3();
    }

    goto LABEL_17;
  }

  v6 = malloc_type_malloc(0x30uLL, 0x106004040E2E4D3uLL);
  if (!v6)
  {
LABEL_29:
    v3 = 0;
    *(a1 + 509) = 1;
    *(a1 + 4) = 0;
    goto LABEL_30;
  }

  v7 = v6;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v16 = 0;
  __strlcpy_chk();
  if (SMCReadKeyAsNumeric(a1, 1297307758, &v17, &v16))
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      SMCAEPopulatePlatform_cold_4();
    }

    goto LABEL_28;
  }

  if (v17 || v18 || BYTE4(v18) || (v17 & 0x8000000000) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      SMCAEPopulatePlatform_cold_9();
    }

    goto LABEL_28;
  }

  v7[8] = v16;
  if (SMCReadKeyAsNumeric(a1, 1297307726, &v17, &v16))
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      SMCAEPopulatePlatform_cold_5();
    }

    goto LABEL_28;
  }

  if (v17 || v18 || BYTE4(v18) || (v17 & 0x8000000000) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      SMCAEPopulatePlatform_cold_8();
    }

    goto LABEL_28;
  }

  v7[9] = v16;
  v12 = malloc_type_calloc(0x110uLL, v7[8], 0xE0BEEA91uLL);
  if (!v12)
  {
LABEL_28:
    free(v7);
    goto LABEL_29;
  }

  v13 = v12;
  if (SMCAEPopulateChannelInfo(a1, v12, v7[8], 1u, 2u, 3u, 4u, 2))
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      SMCAEPopulatePlatform_cold_6();
    }

    goto LABEL_44;
  }

  v14 = malloc_type_calloc(0x110uLL, v7[9], 0x900D1C9FuLL);
  if (!v14)
  {
LABEL_44:
    free(v13);
    goto LABEL_28;
  }

  v15 = v14;
  if (SMCAEPopulateChannelInfo(a1, v14, v7[9], 0xBu, 0xCu, 0xDu, 0xEu, 3))
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      SMCAEPopulatePlatform_cold_7();
    }

    free(v15);
    goto LABEL_44;
  }

  *(v7 + 2) = v13;
  *(v7 + 3) = v15;
  v7[10] = 0;
  *(a1 + 8) = v7;
LABEL_17:
  *(a1 + 509) = 1;
  *(a1 + 4) = 1;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v8 = !SMCGetKeyInfo(a1, 1297315938, &v17) && (v17 & 0x5000000000) != 0 && HIDWORD(v19) == 2;
  *(a1 + 508) = v8;
  v9 = SMCReadKey(a1, 1297307720, v20, 0x20u);
  v3 = SMCReadKey(a1, 1297307724, v20, 0x20u);
  *(a1 + 466) = (v3 | v9) == 0;
  *(a1 + 464) = 0;
  *(a1 + 467) = 0;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0;
LABEL_30:
  v10 = *MEMORY[0x29EDCA608];
  return v3;
}

_DWORD *SMCAccumGetChannelInfoForKey(uint64_t a1, int a2)
{
  if (!a1)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      SMCAccumGetChannelInfoForKey_cold_4();
    }

    return 0;
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      SMCAccumGetChannelInfoForKey_cold_3();
    }

    return 0;
  }

  result = *(v2 + 16);
  if (!result)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      SMCAccumGetChannelInfoForKey_cold_2();
    }

    return 0;
  }

  v4 = *(v2 + 32);
  if (v4 < 1)
  {
LABEL_7:
    result = *(v2 + 24);
    if (result)
    {
      v5 = *(v2 + 36);
      if (v5 >= 1)
      {
        while (*result != a2)
        {
          result += 68;
          if (!--v5)
          {
            return 0;
          }
        }

        return result;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      SMCAccumGetChannelInfoForKey_cold_1();
    }

    return 0;
  }

  while (*result != a2)
  {
    result += 68;
    if (!--v4)
    {
      goto LABEL_7;
    }
  }

  return result;
}

uint64_t SMCAEPopulateChannelInfo(mach_port_t *a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, char a8)
{
  if (a3 < 1)
  {
    return 0;
  }

  v15 = 0;
  v29 = a3;
  while (1)
  {
    ChannelAttribute = SMCAEPrepareToFetchChannelAttribute(a1, v15, a4, 16);
    if (ChannelAttribute)
    {
      break;
    }

    v32 = 0;
    v17 = SMCReadKey(a1, 1297307713, &v32, 4u);
    if (v17)
    {
      v27 = v17;
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        SMCAEPopulateChannelInfo_cold_2();
      }

      return v27;
    }

    v18 = SMCAEPrepareToFetchChannelAttribute(a1, v15, a7, 16);
    if (v18)
    {
      v27 = v18;
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        SMCAEPopulateChannelInfo_cold_3();
      }

      return v27;
    }

    v31 = 0;
    v19 = SMCReadKey(a1, 1297307713, &v31, 4u);
    if (v19)
    {
      v27 = v19;
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        SMCAEPopulateChannelInfo_cold_4();
      }

      return v27;
    }

    v20 = SMCAEPrepareToFetchChannelAttribute(a1, v15, a6, 49);
    if (v20)
    {
      v27 = v20;
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        SMCAEPopulateChannelInfo_cold_5();
      }

      return v27;
    }

    v21 = SMCReadKey(a1, 1297307713, v30, 4u);
    if (v21)
    {
      v27 = v21;
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        SMCAEPopulateChannelInfo_cold_6();
      }

      return v27;
    }

    v22 = SMCMakeUInt32Key(v30);
    v23 = SMCAEPrepareToFetchChannelAttribute(a1, v15, a5, 48);
    if (v23)
    {
      v27 = v23;
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        SMCAEPopulateChannelInfo_cold_7();
      }

      return v27;
    }

    v24 = SMCReadKey(a1, 1297307713, v30, 4u);
    if (v24)
    {
      v27 = v24;
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        SMCAEPopulateChannelInfo_cold_8();
      }

      return v27;
    }

    v25 = SMCMakeUInt32Key(v30);
    v26 = v31;
    *(a2 + 4) = v32;
    *a2 = v25;
    *(a2 + 264) = v22;
    *(a2 + 261) = v26;
    *(a2 + 5) = 0;
    *(a2 + 268) = a8;
    *(a2 + 269) = v15++;
    a2 += 272;
    if (v29 == v15)
    {
      return 0;
    }
  }

  v27 = ChannelAttribute;
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    SMCAEPopulateChannelInfo_cold_1();
  }

  return v27;
}

uint64_t SMCAEPrepareToFetchChannelAttribute(mach_port_t *a1, uint64_t a2, unsigned int a3, int a4)
{
  v7 = SMCWriteKeyAsNumeric(a1, 1297307696, a2);
  if (!v7)
  {
    v7 = SMCWriteKeyAsNumeric(a1, 1297307698, a3);
    if (!v7)
    {
      v11 = 0;
      memset(v10, 0, sizeof(v10));
      v7 = SMCReadKeyAsNumeric(a1, 1297307705, v10, &v11);
      if (v11 == a4)
      {
        v8 = 0;
      }

      else
      {
        v8 = -9;
      }

      if (!v7)
      {
        LOBYTE(v7) = v8;
      }
    }
  }

  return v7;
}

uint64_t SMCOpenAppleSMC(uint64_t result)
{
  connect = 0;
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = IOServiceOpen(result, *MEMORY[0x29EDCA6B0], 0, &connect);
  if (v2)
  {
    if (v2 == -536870201)
    {
      findMaxClientCreatorAndReport(v1);
    }

    result = os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    SMCOpenAppleSMC_cold_3();
    return 0;
  }

  if (!connect)
  {
    result = os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    SMCOpenAppleSMC_cold_2();
    return 0;
  }

  if (!IOConnectCallScalarMethod(connect, 0, 0, 0, 0, 0))
  {
    return connect;
  }

  result = os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  if (result)
  {
    SMCOpenAppleSMC_cold_1();
    return 0;
  }

  return result;
}

void findMaxClientCreatorAndReport(uint64_t a1)
{
  v38 = *MEMORY[0x29EDCA608];
  memset(v37, 0, sizeof(v37));
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  findUserClients(a1, Mutable);
  Count = CFDictionaryGetCount(Mutable);
  if (Count)
  {
    v4 = Count;
    v5 = 8 * Count;
    MEMORY[0x2A1C7C4A8](Count);
    v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
    v7 = (&v28 - v6);
    if (v5 >= 0x200)
    {
      v8 = 512;
    }

    else
    {
      v8 = v5;
    }

    bzero(&v28 - v6, v8);
    MEMORY[0x2A1C7C4A8](v9);
    v10 = (&v28 - v6);
    bzero(&v28 - v6, v8);
    CFDictionaryGetKeysAndValues(Mutable, (&v28 - v6), (&v28 - v6));
    if (v4 < 1)
    {
      v25 = 0;
    }

    else
    {
      v11 = 0;
      v12 = 0;
      do
      {
        MutableBytePtr = CFDataGetMutableBytePtr(*v10);
        v14 = *(MutableBytePtr + 66);
        if (v14 > v11)
        {
          v15 = MutableBytePtr;
          v28 = *MutableBytePtr;
          v16 = *(MutableBytePtr + 1);
          v17 = *(MutableBytePtr + 2);
          v18 = *(MutableBytePtr + 4);
          v31 = *(MutableBytePtr + 3);
          v32 = v18;
          v29 = v16;
          v30 = v17;
          v19 = *(MutableBytePtr + 5);
          v20 = *(MutableBytePtr + 6);
          v21 = *(MutableBytePtr + 7);
          v36 = *(MutableBytePtr + 16);
          v34 = v20;
          v35 = v21;
          v33 = v19;
          v22 = *v7;
          if ((CFStringGetLength(*v7) + 1) > 0x7F)
          {
            v23 = 128;
          }

          else
          {
            v23 = CFStringGetLength(*v7) + 1;
          }

          if (!CFStringGetCString(v22, v37, v23, 0x8000100u))
          {
            LOBYTE(v37[0]) = 0;
          }

          v11 = *(v15 + 66);
        }

        v12 += v14;
        v24 = *v10++;
        v40.location = 0;
        v40.length = 136;
        CFDataDeleteBytes(v24, v40);
        ++v7;
        --v4;
      }

      while (v4);
      v25 = v12;
    }

    CFDictionaryRemoveAllValues(Mutable);
    CFRelease(Mutable);
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_FAULT))
    {
      findMaxClientCreatorAndReport_cold_1(&v28, v37, v25);
    }

    v27 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v26 = *MEMORY[0x29EDCA608];

    CFRelease(Mutable);
  }
}

uint64_t SMCCloseAppleSMC(io_connect_t a1)
{
  if (IOConnectCallScalarMethod(a1, 1u, 0, 0, 0, 0))
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      SMCCloseAppleSMC_cold_1();
    }

    return 3758097084;
  }

  else
  {

    return IOServiceClose(a1);
  }
}

uint64_t findUserClients(uint64_t a1, const __CFDictionary *a2)
{
  v33 = *MEMORY[0x29EDCA608];
  iterator = 0;
  v4 = IOObjectConformsTo(a1, "IOUserClient");
  if (a2)
  {
    if (v4)
    {
      memset(cStr, 0, sizeof(cStr));
      v31 = 0;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      *bytes = 0u;
      v24 = 0u;
      if (!MEMORY[0x29C282090](a1, cStr))
      {
        v5 = *MEMORY[0x29EDB8ED8];
        v6 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], cStr, 0x8000100u);
        Value = CFDictionaryGetValue(a2, v6);
        if (Value)
        {
          MutableBytePtr = CFDataGetMutableBytePtr(Value);
          ++*(MutableBytePtr + 66);
        }

        else
        {
          CFProperty = IORegistryEntryCreateCFProperty(a1, @"IOUserClientCreator", v5, 0);
          v10 = CFProperty;
          if (CFProperty && (v11 = CFGetTypeID(CFProperty), v11 == CFStringGetTypeID()))
          {
            Length = CFStringGetLength(v10);
            v13 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
            if (v13)
            {
              v14 = v13;
              if (CFStringGetCString(v10, v13, Length + 1, 0x8000100u) && sscanf(v14, "pid %d, %128s", &v31, bytes) != 2)
              {
                LODWORD(v31) = 0;
              }

              CFRelease(v10);
              free(v14);
            }

            else
            {
              CFRelease(v10);
            }

            if (!v31)
            {
              goto LABEL_20;
            }

            WORD2(v31) = 1;
            Mutable = CFDataCreateMutable(v5, 0);
            v17 = Mutable;
            if (Mutable)
            {
              CFDataAppendBytes(Mutable, bytes, 136);
              CFDictionaryAddValue(a2, v6, v17);
            }

            v15 = v17;
          }

          else
          {
            v15 = v10;
          }

          CFRelease(v15);
        }

LABEL_20:
        CFRelease(v6);
      }
    }
  }

  if (!MEMORY[0x29C282080](a1, "IOService", &iterator))
  {
    v18 = IOIteratorNext(iterator);
    if (v18)
    {
      v19 = v18;
      do
      {
        findUserClients(v19, a2);
        IOObjectRelease(v19);
        v19 = IOIteratorNext(iterator);
      }

      while (v19);
    }
  }

  result = iterator;
  if (iterator)
  {
    result = IOObjectRelease(iterator);
  }

  v21 = *MEMORY[0x29EDCA608];
  return result;
}

_DWORD *SMCOpenConnection(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x200uLL, 0x106004083A41F05uLL);
  if (!v2)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      SMCOpenConnection_cold_2();
    }

    return 0;
  }

  v3 = v2;
  v4 = SMCOpenAppleSMC(a1);
  *v3 = v4;
  if (!v4)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      SMCOpenConnection_cold_1();
    }

    free(v3);
    return 0;
  }

  return v3;
}

_DWORD *SMCOpenConnectionWithDefaultService()
{
  name = 0;
  if (MEMORY[0x29C282010](0, &name))
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      SMCOpenConnectionWithDefaultService_cold_1();
    }

    return 0;
  }

  else
  {
    v1 = name;
    v2 = IOServiceMatching("AppleSMC");
    MatchingService = IOServiceGetMatchingService(v1, v2);
    v4 = MatchingService;
    v0 = SMCOpenConnection(MatchingService);
    IOObjectRelease(v4);
    mach_port_deallocate(*MEMORY[0x29EDCA6B0], name);
  }

  return v0;
}

uint64_t SMCCloseConnection(io_connect_t *a1)
{
  if (a1)
  {
    SMCCloseAppleSMC(*a1);
    free(a1);
    return 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      SMCCloseConnection_cold_1();
    }

    return -1;
  }
}

uint64_t SMCUInt32ToString(uint64_t result, _BYTE *a2)
{
  *a2 = BYTE3(result);
  a2[1] = BYTE2(result);
  a2[2] = BYTE1(result);
  a2[3] = result;
  a2[4] = 0;
  return result;
}

uint64_t SMCGetKeyFromIndex(mach_port_t *a1, int a2, _DWORD *a3)
{
  v27 = *MEMORY[0x29EDCA608];
  v3 = -1;
  if (a1 && a3)
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    memset(v7, 0, sizeof(v7));
    memset(inputStruct, 0, sizeof(inputStruct));
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0;
    HIDWORD(v18) = a2;
    BYTE10(v18) = 8;
    if (SMCKextCall(*a1, inputStruct, v7))
    {
      v3 = -2;
    }

    else
    {
      v3 = BYTE8(v8);
      if (BYTE8(v8))
      {
        if (BYTE8(v8) == 184)
        {
          v3 = -4;
        }

        else
        {
          v3 = -3;
        }
      }

      else
      {
        *a3 = v7[0];
      }
    }
  }

  v5 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t SMCReadPKey(mach_port_t *a1, int a2, uint64_t a3, void *a4, unsigned int a5, unsigned int a6)
{
  v32 = *MEMORY[0x29EDCA608];
  v6 = -1;
  if (a1 && a2 && a3 && a4)
  {
    v14[0] = 0;
    v14[1] = 0;
    __n = 0;
    if (SMCGetKeyInfo(a1, a2, v14))
    {
      v6 = -1;
    }

    else
    {
      v6 = -5;
      if (HIDWORD(__n) <= a6 && HIDWORD(__n) <= a5)
      {
        v31 = 0;
        v30 = 0u;
        v29 = 0u;
        v28 = 0u;
        v27 = 0u;
        v26 = 0u;
        v25 = 0u;
        v24 = 0u;
        v23 = 0u;
        v22 = 0u;
        v21 = 0u;
        v19 = 0;
        memset(v18, 0, sizeof(v18));
        v17 = 0u;
        memset(outputStruct, 0, sizeof(outputStruct));
        inputStruct = a2;
        DWORD2(v22) = HIDWORD(__n);
        BYTE6(v23) = 17;
        __memcpy_chk();
        if (SMCKextCall(*a1, &inputStruct, outputStruct))
        {
          v6 = -2;
        }

        else if (BYTE8(v17))
        {
          v6 = -3;
        }

        else
        {
          memcpy(a4, v18, HIDWORD(__n));
          v6 = 0;
        }
      }
    }
  }

  v12 = *MEMORY[0x29EDCA608];
  return v6;
}

unint64_t SMCReadBigEndianArrayToUIntMax(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  result = 0;
  v4 = a2;
  do
  {
    v5 = *a1++;
    result = v5 | (result << 8);
    --v4;
  }

  while (v4);
  return result;
}

unint64_t SMCReadLittleEndianArrayToUIntMax(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  result = 0;
  v4 = a2;
  v5 = a1 - 1;
  do
  {
    result = *(v5 + v4--) | (result << 8);
  }

  while (v4);
  return result;
}

uint64_t SMCSignExtendToIntMax(uint64_t result, int a2)
{
  if ((a2 - 64) >= 0xFFFFFFC1)
  {
    return ((1 << (a2 - 1)) ^ result & ~(-1 << a2)) - (1 << (a2 - 1));
  }

  return result;
}

uint64_t SMCReadKeyAsNumeric(mach_port_t *a1, uint64_t a2, uint64_t a3, double *a4)
{
  v4 = a1;
  LOBYTE(a1) = -1;
  if (v4)
  {
    if (a4)
    {
      v9 = 0uLL;
      v10 = 0;
      LODWORD(a1) = SMCGetKeyInfo(v4, a2, &v9);
      if (!a1)
      {
        LODWORD(a1) = SMCReadKeyAsNumericWithKnownKeyInfo(v4, a2, &v9, a4);
        if (!a1)
        {
          LOBYTE(a1) = 0;
          if (a3)
          {
            *a3 = v9;
            *(a3 + 16) = v10;
          }
        }
      }
    }
  }

  return a1;
}

uint64_t SMCConvertNumericToBytes(double *a1, uint64_t a2, unint64_t *a3, unsigned __int16 a4)
{
  v5 = *(a2 + 14);
  if (8 * a4 < v5)
  {
    goto LABEL_2;
  }

  v7 = *(a2 + 8);
  switch(v7)
  {
    case 2:
      v12 = *a1;
      if (*a1 < 0.0)
      {
        v12 = -*a1;
      }

      v13 = (v12 * (1 << *(a2 + 16)));
      if (*a1 < 0.0)
      {
        v13 = -v13;
      }

      v20 = v13;
      if ((*(a2 + 4) & 4) != 0)
      {
        if (v5 >= 8)
        {
          v8 = 0;
          v18 = v5 >> 3;
          do
          {
            v8 = *(&v19 + v18--) | (v8 << 8);
          }

          while (v18);
          goto LABEL_24;
        }
      }

      else if (v5 >= 8)
      {
        v8 = 0;
        v14 = v5 >> 3;
        v15 = &v20;
        do
        {
          v16 = *v15;
          v15 = (v15 + 1);
          v8 = v16 | (v8 << 8);
          --v14;
        }

        while (v14);
        goto LABEL_24;
      }

      goto LABEL_23;
    case 1:
      v6 = 0;
      *&v11 = *a1;
      v8 = v11;
LABEL_25:
      *a3 = v8;
      return v6;
    case 0:
      if (v5 >= 8)
      {
        v8 = 0;
        v9 = v5 >> 3;
        do
        {
          v10 = *a1;
          a1 = (a1 + 1);
          v8 = v10 | (v8 << 8);
          --v9;
        }

        while (v9);
        goto LABEL_24;
      }

LABEL_23:
      v8 = 0;
LABEL_24:
      v6 = 0;
      goto LABEL_25;
  }

LABEL_2:
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    SMCConvertNumericToBytes_cold_1((a2 + 8));
  }

  return -1;
}

uint64_t SMCWriteKeyAsNumeric(mach_port_t *a1, int a2, uint64_t a3)
{
  v13[1] = *MEMORY[0x29EDCA608];
  *&v13[0] = a3;
  if (a1)
  {
    v11[0] = 0;
    v11[1] = 0;
    v12 = 0;
    v5 = SMCGetKeyInfo(a1, a2, v11);
    if (!v5)
    {
      MEMORY[0x2A1C7C4A8](v5);
      v7 = (&v11[-1] - ((v6 + 15) & 0x1FFFFFFF0));
      if (SMCConvertNumericToBytes(v13, v11, v7, WORD2(v12)))
      {
        LOBYTE(v5) = -1;
      }

      else
      {
        LOBYTE(v5) = SMCWriteKeyWithKnownSize(a1, a2, HIDWORD(v12), v7);
      }
    }
  }

  else
  {
    LOBYTE(v5) = -1;
  }

  v8 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t SMCAccumIsSupported(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 509) == 1 || !SMCAEPopulatePlatform(a1))
    {
      v2 = *(a1 + 4);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        SMCAccumIsSupported_cold_1();
      }

      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t SMCAccumCheckMinMaxSupport(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 466);
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

uint64_t SMCSetAccum1msChannels(uint64_t a1, uint64_t a2)
{
  v2 = -1;
  if (a1 && a2)
  {
    if (SMCAccumIsSupported(a1))
    {
      for (i = 0; i != 16; i += 4)
      {
        *(a1 + 472 + i) = *(a2 + i);
      }

      return 0;
    }

    else
    {
      return -6;
    }
  }

  return v2;
}

uint64_t SMCSetAccum1secChannels(uint64_t a1, uint64_t a2)
{
  v2 = -1;
  if (a1 && a2)
  {
    if (SMCAccumIsSupported(a1))
    {
      for (i = 0; i != 16; i += 4)
      {
        *(a1 + 488 + i) = *(a2 + i);
      }

      return 0;
    }

    else
    {
      return -6;
    }
  }

  return v2;
}

uint64_t SMCSetAccumMode(uint64_t a1, unsigned int a2)
{
  v2 = -1;
  if (a1)
  {
    v3 = a2;
    if (a2 <= 2)
    {
      if (SMCAccumIsSupported(a1))
      {
        v2 = 0;
        *(a1 + 504) = v3;
      }

      else
      {
        return -6;
      }
    }
  }

  return v2;
}

uint64_t SMCSetAccumBitShift(uint64_t a1, unsigned int a2)
{
  if (a1)
  {
    if (SMCAccumIsSupported(a1))
    {
      if (a2 <= 0x10)
      {
        v4 = 0;
        *(a1 + 505) = a2;
      }

      else
      {
        return -1;
      }
    }

    else
    {
      return -6;
    }
  }

  else
  {
    return -1;
  }

  return v4;
}

uint64_t SMCProgramAccum(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (SMCAccumIsSupported(a1))
    {
      v2 = populateChannels(a1, v6, v5, v9, v8);
      if (!v2)
      {
        v2 = SMCWriteKeyWithKnownSize(a1, 1297307763, 4u, v6);
        if (!v2)
        {
          v2 = SMCWriteKeyWithKnownSize(a1, 1297307731, 4u, v5);
          if (!v2)
          {
            v2 = programAccumModes(a1);
            if (!v2)
            {
              v7 = 3;
              v2 = SMCWriteKeyWithKnownSize(a1, 1297307746, 1u, &v7);
              if (!v2)
              {
                *(a1 + 467) = 1;
                copyKeyInfo(a1, v9, v8);
                LOBYTE(v2) = 0;
              }
            }
          }
        }
      }
    }

    else
    {
      LOBYTE(v2) = -6;
    }
  }

  else
  {
    LOBYTE(v2) = -1;
  }

  v3 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t populateChannels(uint64_t a1, _BYTE *a2, uint64_t a3, _DWORD *a4, _DWORD *a5)
{
  if (lookup1msChannel(a1, *(a1 + 472), a4, a2))
  {
    v10 = 1;
  }

  else
  {
    v12 = 0;
    v13 = (a1 + 488);
    v14 = a4 + 6;
    v15 = a2 + 1;
    v10 = 1;
    v16 = (a1 + 488);
    do
    {
      v17 = *v16++;
      if (lookup1secChannel(a1, v17, a5, (a3 + v12)))
      {
        break;
      }

      v10 = v12 < 3;
      if (v12 == 3)
      {
        break;
      }

      v18 = lookup1msChannel(a1, *(v13 - 3), v14, &v15[v12]);
      v14 += 6;
      a5 += 6;
      ++v12;
      v13 = v16;
    }

    while (!v18);
  }

  return (v10 << 31 >> 31);
}

uint64_t programAccumModes(uint64_t a1)
{
  v3 = 0;
  result = SMCReadKeyWithKnownSize(a1, 1297307757, 2u, &v3);
  if (!result)
  {
    v3 = v3 & 0xFF2 | (*(a1 + 505) << 12) | (4 * (*(a1 + 504) & 3)) | 1;
    result = SMCWriteKeyWithKnownSize(a1, 1297307757, 2u, &v3);
    if (!result)
    {
      *(a1 + 464) = *(a1 + 504);
    }
  }

  return result;
}

uint64_t copyKeyInfo(uint64_t result, __int128 *a2, __int128 *a3)
{
  v3 = 16;
  v4 = 472;
  do
  {
    v5 = *(result + v4);
    if (v5)
    {
      v6 = result + v3;
      *v6 = v5;
      v7 = *a2;
      *(v6 + 20) = *(a2 + 2);
      *(v6 + 4) = v7;
    }

    else
    {
      *(result + v3) = 0x100000000;
    }

    v8 = *(result + v4 + 16);
    v9 = result + v3;
    if (v8)
    {
      *(v9 + 224) = v8;
      v10 = *a3;
      *(v9 + 244) = *(a3 + 2);
      *(v9 + 228) = v10;
    }

    else
    {
      *(v9 + 224) = 0;
      *(v9 + 4) = 1;
    }

    v3 += 56;
    a3 = (a3 + 24);
    a2 = (a2 + 24);
    v4 += 4;
  }

  while (v3 != 240);
  return result;
}

uint64_t SMCProgramAccumWithoutReset(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (SMCAccumIsSupported(a1))
    {
      v2 = populateChannels(a1, v18, v17, v20, v19);
      if (!v2)
      {
        v2 = SMCReadKeyWithKnownSize(a1, 1297307763, 4u, v16);
        if (!v2)
        {
          v2 = SMCReadKeyWithKnownSize(a1, 1297307731, 4u, v15);
          if (!v2)
          {
            v3 = 0;
            v4 = 0;
            v5 = (a1 + 488);
            v6 = v19;
            v7 = v20;
            v8 = 244;
            v9 = 472;
            do
            {
              if (*v7 == 1 && *(a1 + v3 + 20) != 1)
              {
                v18[v4] = v16[v4];
                *v7 = *(a1 + v3 + 20);
                *(v7 + 2) = *(a1 + v3 + 36);
                *(a1 + v9) = *(a1 + v3 + 16);
              }

              if (v6[5] == 1 && *(a1 + v3 + 264) != 1)
              {
                v17[v4] = v15[v4];
                *v6 = *(a1 + v8);
                *(v6 + 2) = *(a1 + v8 + 16);
                *(a1 + v9 + 16) = *(a1 + v3 + 240);
              }

              ++v4;
              v8 += 56;
              v3 += 56;
              v6 += 6;
              v9 += 4;
              v7 += 6;
            }

            while (v4 != 4);
            v2 = SMCWriteKeyWithKnownSize(a1, 1297307763, 4u, v18);
            if (!v2)
            {
              v2 = SMCWriteKeyWithKnownSize(a1, 1297307731, 4u, v17);
              if (!v2)
              {
                v2 = programAccumModes(a1);
                if (!v2)
                {
                  v10 = 0;
                  *(a1 + 467) = 1;
                  v11 = a1 + 244;
                  do
                  {
                    v12 = *(v5 - 4);
                    if (v12)
                    {
                      *(v11 - 228) = v12;
                      *(v11 - 224) = *&v20[v10];
                      *(v11 - 208) = *&v20[v10 + 4];
                    }

                    if (*v5)
                    {
                      *(v11 - 4) = *v5;
                      *v11 = *&v19[v10];
                      *(v11 + 16) = *&v19[v10 + 4];
                    }

                    LOBYTE(v2) = 0;
                    ++v5;
                    v10 += 6;
                    v11 += 56;
                  }

                  while (v10 != 24);
                }
              }
            }
          }
        }
      }
    }

    else
    {
      LOBYTE(v2) = -6;
    }
  }

  else
  {
    LOBYTE(v2) = -1;
  }

  v13 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t SMCProgramAccum1Channel(mach_port_t *a1, int a2)
{
  v2 = a1;
  LOBYTE(a1) = -1;
  if (v2 && a2)
  {
    if (!SMCAccumIsSupported(v2))
    {
      LOBYTE(a1) = -6;
      return a1;
    }

    v19 = 0;
    v17 = 0uLL;
    v18 = 0;
    v4 = lookup1msChannel(v2, a2, &v17, &v19);
    if (v4)
    {
      if (lookup1secChannel(v2, a2, &v17, &v19))
      {
        LOBYTE(a1) = -1;
        return a1;
      }

      v10 = 0;
      v7 = 0;
      v11 = (v2 + 61);
      do
      {
        v12 = *v11;
        v11 += 14;
        if (v12 == 1)
        {
          v7 = v10;
        }

        ++v10;
      }

      while (v10 != 4);
    }

    else
    {
      v6 = 0;
      v7 = 0;
      v8 = (v2 + 5);
      do
      {
        v9 = *v8;
        v8 += 14;
        if (v9 == 1)
        {
          v7 = v6;
        }

        ++v6;
      }

      while (v6 != 4);
    }

    if (v4)
    {
      LODWORD(a1) = SMCReadKeyWithKnownSize(v2, 1297307731, 4u, v16);
      if (!a1)
      {
        v16[v7] = v19;
        LODWORD(a1) = SMCWriteKeyWithKnownSize(v2, 1297307731, 4u, v16);
        if (!a1)
        {
          v13 = v7;
          v14 = 60;
LABEL_25:
          LOBYTE(a1) = 0;
          v15 = &v2[14 * v13 + v14];
          *(v15 + 4) = v17;
          *(v15 + 20) = v18;
          *v15 = a2;
        }
      }
    }

    else
    {
      LODWORD(a1) = SMCReadKeyWithKnownSize(v2, 1297307763, 4u, v16);
      if (!a1)
      {
        v16[v7] = v19;
        LODWORD(a1) = SMCWriteKeyWithKnownSize(v2, 1297307763, 4u, v16);
        if (!a1)
        {
          v13 = v7;
          v14 = 4;
          goto LABEL_25;
        }
      }
    }
  }

  return a1;
}

uint64_t lookup1msChannel(uint64_t a1, int a2, _DWORD *a3, _BYTE *a4)
{
  v4 = *(a1 + 8);
  if (a2)
  {
    v5 = *(v4 + 32);
    if (v5 < 1)
    {
      return -1;
    }

    v6 = 0;
    v7 = *(v4 + 16);
    v8 = 272 * v5;
    while (*(v7 + v6) != a2)
    {
      v6 += 272;
      if (v8 == v6)
      {
        return -1;
      }
    }

    *a4 = *(v7 + v6 + 4);
    *a3 = 0;
    v10 = *(*(a1 + 8) + 16) + v6;
    a3[5] = *(v10 + 261);
    if (SMCGetTypeDescriptionForNumericType(*(v10 + 264), (a3 + 2)))
    {
      return -1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v9 = 0;
    *a4 = *(*(v4 + 16) + 4);
    *a3 = 1;
  }

  return v9;
}

uint64_t lookup1secChannel(uint64_t a1, int a2, _DWORD *a3, _BYTE *a4)
{
  v4 = *(a1 + 8);
  if (a2)
  {
    v5 = *(v4 + 36);
    if (v5 < 1)
    {
      return -1;
    }

    v6 = 0;
    v7 = *(v4 + 24);
    v8 = 272 * v5;
    while (*(v7 + v6) != a2)
    {
      v6 += 272;
      if (v8 == v6)
      {
        return -1;
      }
    }

    *a4 = *(v7 + v6 + 4);
    *a3 = 0;
    v10 = *(*(a1 + 8) + 24) + v6;
    a3[5] = *(v10 + 261);
    if (SMCGetTypeDescriptionForNumericType(*(v10 + 264), (a3 + 2)))
    {
      return -1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v9 = 0;
    *a4 = *(*(v4 + 24) + 4);
    *a3 = 1;
  }

  return v9;
}

uint64_t SMCProgramAccumDefaults(uint64_t a1)
{
  v25 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (!SMCAccumIsSupported(a1))
    {
      LOBYTE(v10) = -6;
      goto LABEL_16;
    }

    v2 = 0;
    v3 = 0;
    v4 = *(a1 + 8);
    v5 = -1088;
    v6 = *(v4 + 16);
    while (1)
    {
      v24[v3] = *(v6 + v5 + 1088);
      v21[v3] = *(v6 + v5 + 1092);
      v7 = &v22[v2 + 97];
      *v7 = 0;
      v7[5] = *(v6 + v5 + 1349);
      if (SMCGetTypeDescriptionForNumericType(*(v6 + v5 + 1352), &v22[v2 + 105]))
      {
        break;
      }

      v8 = *(v4 + 24) + v5;
      v23[v3] = *(v8 + 1088);
      v20[v3] = *(v8 + 1092);
      v9 = &v22[v2 + 1];
      *v9 = 0;
      v9[5] = *(v8 + 1349);
      if (SMCGetTypeDescriptionForNumericType(*(v8 + 1352), &v22[v2 + 9]))
      {
        break;
      }

      ++v3;
      v2 += 24;
      v5 += 272;
      if (!v5)
      {
        v10 = SMCWriteKeyWithKnownSize(a1, 1297307763, 4u, v21);
        if (!v10)
        {
          v10 = SMCWriteKeyWithKnownSize(a1, 1297307731, 4u, v20);
          if (!v10)
          {
            *(a1 + 504) = 0;
            v10 = programAccumModes(a1);
            if (!v10)
            {
              v22[0] = 3;
              v10 = SMCWriteKeyWithKnownSize(a1, 1297307746, 1u, v22);
              if (!v10)
              {
                v11 = 0;
                v12 = a1 + 244;
                *(a1 + 467) = 1;
                v13 = v23;
                v14 = v24;
                do
                {
                  LOBYTE(v10) = 0;
                  v15 = *v14++;
                  *(v12 - 228) = v15;
                  *(v12 - 224) = *&v22[v11 + 97];
                  *(v12 - 208) = *&v22[v11 + 113];
                  v16 = *v13++;
                  *(v12 - 4) = v16;
                  v17 = *&v22[v11 + 1];
                  *(v12 + 16) = *&v22[v11 + 17];
                  *v12 = v17;
                  v12 += 56;
                  v11 += 24;
                }

                while (v11 != 96);
              }
            }
          }
        }

        goto LABEL_16;
      }
    }
  }

  LOBYTE(v10) = -1;
LABEL_16:
  v18 = *MEMORY[0x29EDCA608];
  return v10;
}

uint64_t SMCStartAccum(uint64_t a1)
{
  if (a1)
  {
    if (SMCAccumIsSupported(a1))
    {
      if (*(a1 + 467) == 1)
      {
        v4 = 1;
        v2 = SMCWriteKeyWithKnownSize(a1, 1297307746, 1u, &v4);
        if (!v2)
        {
          *(a1 + 468) = 1;
        }
      }

      else
      {
        LOBYTE(v2) = -1;
      }
    }

    else
    {
      LOBYTE(v2) = -6;
    }
  }

  else
  {
    LOBYTE(v2) = -1;
  }

  return v2;
}

uint64_t SMCStopAccum(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  LOBYTE(a1) = -1;
  if (v2 && a2)
  {
    if (SMCAccumIsSupported(v2))
    {
      v5 = 0;
      LODWORD(a1) = SMCWriteKeyWithKnownSize(v2, 1297307746, 1u, &v5);
      if (!a1)
      {
        *(v2 + 468) = 0;
        LOBYTE(a1) = SMCGetAccumStatus(v2, a2);
      }
    }

    else
    {
      LOBYTE(a1) = -6;
    }
  }

  return a1;
}

uint64_t SMCGetAccumStatus(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v25 = *MEMORY[0x29EDCA608];
  LOBYTE(a1) = -1;
  if (v2 && a2)
  {
    if (!SMCAccumIsSupported(v2))
    {
      LOBYTE(a1) = -6;
      goto LABEL_33;
    }

    v4 = *(v2 + 468);
    if (v4 == 1)
    {
      LOBYTE(v23) = 0;
      LODWORD(a1) = SMCWriteKeyWithKnownSize(v2, 1297307746, 1u, &v23);
      if (a1)
      {
        goto LABEL_33;
      }

      *(v2 + 468) = 0;
    }

    LODWORD(a1) = SMCReadKey(v2, 1297307747, v22, 4u);
    if (!a1)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        v6 = v22[v5++] | (v6 << 8);
      }

      while (v5 != 4);
      *(a2 + 448) = v6;
      LODWORD(a1) = SMCReadKey(v2, 1297307715, v22, 4u);
      if (!a1)
      {
        v7 = 0;
        v8 = 0;
        do
        {
          v8 = v22[v7++] | (v8 << 8);
        }

        while (v7 != 4);
        *(a2 + 452) = v8;
        *(a2 + 460) = *(v2 + 468) ^ 1;
        *(a2 + 464) = *(v2 + 464);
        v9 = -224;
        do
        {
          v10 = a2 + v9;
          if (*(v2 + v9 + 240))
          {
            v11 = *(v2 + v9 + 240);
            v12 = *(v2 + v9 + 256);
            v13 = *(v2 + v9 + 272);
            *(v10 + 272) = *(v2 + v9 + 288);
            *(v10 + 240) = v12;
            *(v10 + 256) = v13;
            *(v10 + 224) = v11;
          }

          else
          {
            *(v10 + 224) = 0;
          }

          v14 = v2 + v9;
          v15 = (a2 + v9 + 448);
          if (*(v2 + v9 + 464))
          {
            v17 = *(v14 + 464);
            v18 = *(v14 + 480);
            v16 = v14 + 464;
            v19 = *(v16 + 32);
            *(a2 + v9 + 496) = *(v16 + 48);
            *(a2 + v9 + 464) = v18;
            *(a2 + v9 + 480) = v19;
            *v15 = v17;
          }

          else
          {
            *v15 = 0;
          }

          v9 += 56;
        }

        while (v9);
        LODWORD(a1) = SMCReadKey(v2, 1297307748, &v23, 0x20u);
        if (!a1)
        {
          parseAccumOutput(a2, &v23, 0, 1);
          v23 = 0u;
          v24 = 0u;
          LODWORD(a1) = SMCReadKey(v2, 1297307716, &v23, 0x20u);
          if (!a1)
          {
            parseAccumOutput(a2, &v23, 0, 2);
            if (*(v2 + 466) == 1)
            {
              v23 = 0u;
              v24 = 0u;
              LODWORD(a1) = SMCReadKey(v2, 1297307752, &v23, 0x20u);
              if (a1)
              {
                goto LABEL_33;
              }

              parseAccumOutput(a2, &v23, 2, 1);
              v23 = 0u;
              v24 = 0u;
              LODWORD(a1) = SMCReadKey(v2, 1297307720, &v23, 0x20u);
              if (a1)
              {
                goto LABEL_33;
              }

              parseAccumOutput(a2, &v23, 2, 2);
              v23 = 0u;
              v24 = 0u;
              LODWORD(a1) = SMCReadKey(v2, 1297307756, &v23, 0x20u);
              if (a1)
              {
                goto LABEL_33;
              }

              parseAccumOutput(a2, &v23, 1, 1);
              v23 = 0u;
              v24 = 0u;
              LODWORD(a1) = SMCReadKey(v2, 1297307724, &v23, 0x20u);
              if (a1)
              {
                goto LABEL_33;
              }

              parseAccumOutput(a2, &v23, 1, 2);
            }

            if (!v4 || (LODWORD(a1) = SMCStartAccum(v2), !a1))
            {
              LOBYTE(a1) = 0;
            }
          }
        }
      }
    }
  }

LABEL_33:
  v20 = *MEMORY[0x29EDCA608];
  return a1;
}

uint64_t parseAccumOutput(uint64_t a1, int *a2, int a3, int a4)
{
  for (i = 0; i != 224; i += 56)
  {
    v14 = *a2++;
    v22 = v14;
    v15 = a1 + i;
    if (a3 == 2)
    {
      if (a4 == 1)
      {
        v16 = *(v15 + 12);
        v4 = v4 & 0xFFFFFFFF00000000 | *(v15 + 20);
        v17 = (v15 + 40);
        LOBYTE(v18) = v4;
      }

      else
      {
        v16 = *(v15 + 236);
        v18 = *(v15 + 244);
        v17 = (v15 + 264);
        v21 = v21 & 0xFFFFFFFF00000000 | v18;
      }

      goto LABEL_12;
    }

    if (a3 == 1)
    {
      if (a4 == 1)
      {
        v16 = *(v15 + 12);
        v6 = v6 & 0xFFFFFFFF00000000 | *(v15 + 20);
        v17 = (v15 + 48);
        LOBYTE(v18) = v6;
      }

      else
      {
        v16 = *(v15 + 236);
        v5 = v5 & 0xFFFFFFFF00000000 | *(v15 + 244);
        v17 = (v15 + 272);
        LOBYTE(v18) = v5;
      }

LABEL_12:
      v19 = 1;
      goto LABEL_13;
    }

    if (a4 == 1)
    {
      v19 = *(a1 + 448);
      v16 = *(v15 + 12);
      v8 = v8 & 0xFFFFFFFF00000000 | *(v15 + 20);
      v17 = (v15 + 32);
      LOBYTE(v18) = v8;
    }

    else
    {
      v19 = *(a1 + 452);
      v16 = *(v15 + 236);
      v7 = v7 & 0xFFFFFFFF00000000 | *(v15 + 244);
      v17 = (v15 + 256);
      LOBYTE(v18) = v7;
    }

LABEL_13:
    result = SMCParseAccumOutputToNumeric(&v22, v16, v18, *(a1 + 465), v19, v17);
  }

  return result;
}

uint64_t SMCGetAccumStatusFor(uint64_t a1, int a2, double *a3, void *a4)
{
  v4 = a1;
  v16 = *MEMORY[0x29EDCA608];
  LOBYTE(a1) = -1;
  if (v4 && a2 && a3 && a4)
  {
    if (!SMCAccumIsSupported(v4))
    {
      LOBYTE(a1) = -6;
      goto LABEL_12;
    }

    v8 = 0;
    v9 = (v4 + 240);
    while (1)
    {
      v10 = *(v9 - 56);
      if (v10 == a2 || *v9 == a2)
      {
        break;
      }

      v9 += 14;
      v8 -= 4;
      if (v8 == -16)
      {
        LOBYTE(a1) = -1;
        goto LABEL_12;
      }
    }

    v13 = *(v4 + 468);
    if (v13 == 1)
    {
      v15[0] = 0;
      LODWORD(a1) = SMCWriteKeyWithKnownSize(v4, 1297307746, 1u, v15);
      if (a1)
      {
        goto LABEL_12;
      }

      *(v4 + 468) = 0;
    }

    if (v10 == a2)
    {
      LODWORD(a1) = SMCReadKey(v4, 1297307747, a4, 4u);
      if (a1)
      {
        goto LABEL_12;
      }

      LODWORD(a1) = SMCReadKey(v4, 1297307748, v15, 0x20u);
      if (a1)
      {
        goto LABEL_12;
      }

      v14 = 4;
    }

    else
    {
      LODWORD(a1) = SMCReadKey(v4, 1297307715, a4, 4u);
      if (a1)
      {
        goto LABEL_12;
      }

      LODWORD(a1) = SMCReadKey(v4, 1297307716, v15, 0x20u);
      if (a1)
      {
        goto LABEL_12;
      }

      v14 = 60;
    }

    LODWORD(a1) = SMCParseBytesForNumeric(&v15[-v8], 4u, a3, &v9[v14 - 59]);
    if (!a1 && v13)
    {
      LOBYTE(a1) = SMCStartAccum(v4);
    }
  }

LABEL_12:
  v11 = *MEMORY[0x29EDCA608];
  return a1;
}

__CFDictionary *SMCCreateAccumProgrammableChannelsDict1ms(uint64_t a1)
{
  if (!a1 || !SMCAccumIsSupported(a1))
  {
    return 0;
  }

  v2 = *(*(a1 + 8) + 32);
  v3 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (v2 >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(*(*(a1 + 8) + 16) + v5);
      cStr[0] = HIBYTE(v6);
      cStr[1] = BYTE2(v6);
      cStr[2] = BYTE1(v6);
      cStr[3] = v6;
      cStr[4] = 0;
      v7 = CFStringCreateWithCString(v3, cStr, 0x600u);
      CFDictionaryAddValue(Mutable, v7, @"NULL");
      CFRelease(v7);
      v5 += 272;
    }

    while (272 * v2 != v5);
  }

  return Mutable;
}

__CFDictionary *SMCCreateAccumProgrammableChannelsDict1sec(uint64_t a1)
{
  if (!a1 || !SMCAccumIsSupported(a1))
  {
    return 0;
  }

  v2 = *(*(a1 + 8) + 36);
  v3 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (v2 >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(*(*(a1 + 8) + 24) + v5);
      cStr[0] = HIBYTE(v6);
      cStr[1] = BYTE2(v6);
      cStr[2] = BYTE1(v6);
      cStr[3] = v6;
      cStr[4] = 0;
      v7 = CFStringCreateWithCString(v3, cStr, 0x600u);
      CFDictionaryAddValue(Mutable, v7, @"NULL");
      CFRelease(v7);
      v5 += 272;
    }

    while (272 * v2 != v5);
  }

  return Mutable;
}

uint64_t getSMCQueue()
{
  if (getSMCQueue_SMCQueue_pred != -1)
  {
    getSMCQueue_cold_1();
  }

  return getSMCQueue_SMCQueue;
}

dispatch_queue_t __getSMCQueue_block_invoke()
{
  result = dispatch_queue_create("SMC gNotifications", 0);
  getSMCQueue_SMCQueue = result;
  gSMCClientList = 0;
  return result;
}

void _smcNotificationCallback(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (getSMCQueue_SMCQueue_pred != -1)
  {
    getSMCQueue_cold_1();
  }

  dispatch_assert_queue_V2(getSMCQueue_SMCQueue);
  for (i = gSMCClientList; i; i = *i)
  {
    if (*(i + 16) == a3)
    {
      v7 = *(i + 17);
      if (v7 == BYTE2(a4) || v7 == 255)
      {
        v8 = _Block_copy(*(i + 24));
        v9 = *(i + 32);
        v10[0] = MEMORY[0x29EDCA5F8];
        v10[1] = 0x40000000;
        v10[2] = ___smcNotificationCallback_block_invoke;
        v10[3] = &unk_29EE8A7D8;
        v10[4] = v8;
        v11 = BYTE2(a4);
        v12 = BYTE1(a4);
        v13 = a4;
        dispatch_async(v9, v10);
      }
    }
  }
}

void ___smcNotificationCallback_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 41);
  v4 = *(a1 + 42);
  (*(*(a1 + 32) + 16))();
  v5 = *(a1 + 32);

  _Block_release(v5);
}

uint64_t SMCRegisterForSubTypeNotification(const char *a1, char a2, NSObject *a3, const void *a4)
{
  if (!a1 || !a3 || !a4)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      SMCRegisterForSubTypeNotification_cold_1();
    }

    return 0;
  }

  if (!strcmp(a1, "system-state-notify"))
  {
    v9 = 112;
  }

  else if (!strcmp(a1, "power-state-notify"))
  {
    v9 = 113;
  }

  else
  {
    if (strcmp(a1, "hid-event-notify"))
    {
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        SMCRegisterForSubTypeNotification_cold_2();
      }

      return 0;
    }

    v9 = 114;
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = malloc_type_calloc(1uLL, 0x28uLL, 0x10A0040CF3D8648uLL);
  if (v16[3])
  {
    v10 = _Block_copy(a4);
    v11 = v16[3];
    *(v11 + 24) = v10;
    *(v11 + 32) = a3;
    dispatch_retain(a3);
    v12 = v16[3];
    *(v12 + 16) = v9;
    *(v12 + 17) = a2;
    if (getSMCQueue_SMCQueue_pred != -1)
    {
      SMCRegisterForSubTypeNotification_cold_3();
    }

    v14[0] = MEMORY[0x29EDCA5F8];
    v14[1] = 0x40000000;
    v14[2] = __SMCRegisterForSubTypeNotification_block_invoke;
    v14[3] = &unk_29EE8A800;
    v14[4] = &v15;
    v14[5] = getSMCQueue_SMCQueue;
    dispatch_sync(getSMCQueue_SMCQueue, v14);
    v8 = v16[3];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      SMCRegisterForSubTypeNotification_cold_4();
    }

    v8 = 0;
  }

  _Block_object_dispose(&v15, 8);
  return v8;
}

void __SMCRegisterForSubTypeNotification_block_invoke(uint64_t a1)
{
  if (!gNotifyPort)
  {
    v2 = IONotificationPortCreate(0);
    gNotifyPort = v2;
    if (!v2)
    {
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        __SMCRegisterForSubTypeNotification_block_invoke_cold_3();
      }

      goto LABEL_15;
    }

    IONotificationPortSetDispatchQueue(v2, *(a1 + 40));
  }

  v3 = gSMCClientList;
  **(*(*(a1 + 32) + 8) + 24) = gSMCClientList;
  if (v3)
  {
    *(v3 + 8) = *(*(*(a1 + 32) + 8) + 24);
  }

  gSMCClientList = *(*(*(a1 + 32) + 8) + 24);
  *(gSMCClientList + 8) = &gSMCClientList;
  v4 = *MEMORY[0x29EDBB110];
  v5 = IOServiceMatching("AppleSMC");
  MatchingService = IOServiceGetMatchingService(v4, v5);
  if (!MatchingService)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      __SMCRegisterForSubTypeNotification_block_invoke_cold_2();
    }

    goto LABEL_15;
  }

  if (!gNotification)
  {
    v7 = MatchingService;
    v8 = IOServiceAddInterestNotification(gNotifyPort, MatchingService, "IOGeneralInterest", _smcNotificationCallback, 0, &gNotification);
    IOObjectRelease(v7);
    if (v8)
    {
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        __SMCRegisterForSubTypeNotification_block_invoke_cold_1();
      }

LABEL_15:
      _unregisterForNotification(*(*(*(a1 + 32) + 8) + 24));
      *(*(*(a1 + 32) + 8) + 24) = 0;
    }
  }
}

void _unregisterForNotification(void *a1)
{
  if (getSMCQueue_SMCQueue_pred != -1)
  {
    getSMCQueue_cold_1();
  }

  dispatch_assert_queue_V2(getSMCQueue_SMCQueue);
  if (a1)
  {
    v2 = gSMCClientList;
    if (gSMCClientList)
    {
      do
      {
        if (v2 == a1)
        {
          v3 = *v2;
          v4 = v2[1];
          if (*v2)
          {
            v3[1] = v4;
          }

          *v4 = v3;
        }

        v2 = *v2;
      }

      while (v2);
    }

    v5 = a1[3];
    if (v5)
    {
      _Block_release(v5);
    }

    if (!gSMCClientList)
    {
      if (gNotifyPort)
      {
        IONotificationPortDestroy(gNotifyPort);
        gNotifyPort = 0;
      }

      if (gNotification)
      {
        IOObjectRelease(gNotification);
        gNotification = 0;
      }
    }

    v6 = a1[4];
    if (v6)
    {
      dispatch_release(v6);
    }

    a1[4] = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;

    free(a1);
  }

  else if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    _unregisterForNotification_cold_2();
  }
}

void SMCUnregisterForNotification(uint64_t a1)
{
  if (getSMCQueue_SMCQueue_pred != -1)
  {
    getSMCQueue_cold_1();
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = __SMCUnregisterForNotification_block_invoke;
  block[3] = &__block_descriptor_tmp_12;
  block[4] = a1;
  dispatch_sync(getSMCQueue_SMCQueue, block);
}

uint64_t SMCRequestMacOSWakeFromAP(mach_port_t *a1, __int16 a2)
{
  if (a1)
  {
    v4[0] = -32656;
    v4[1] = a2;
    return SMCWriteKeyWithKnownSize(a1, 1313166158, 4u, v4);
  }

  else
  {
    return -1;
  }
}

uint64_t SMCParseAccumOutputToNumeric(uint64_t result, unint64_t a2, char a3, int a4, unint64_t a5, double *a6)
{
  v6 = HIWORD(a2);
  if (a2)
  {
    if (a2 == 1)
    {
      v15 = 0.0;
      for (i = 3; i != -1; --i)
      {
        LODWORD(v15) = *(result + i) | (LODWORD(v15) << 8);
      }

      v14 = v15 / a5;
    }

    else
    {
      if (a2 != 2)
      {
        SMCParseAccumOutputToNumeric_cold_1();
      }

      v7 = 0;
      v8 = 0;
      do
      {
        v8 = *(result + v7++) | (v8 << 8);
      }

      while (v7 != 4);
      v9 = v6 - 1;
      v10 = ((v8 / a5) & ~(-1 << SBYTE6(a2)) ^ (1 << (BYTE6(a2) - 1))) - (1 << (BYTE6(a2) - 1));
      if (v9 > 0x3E)
      {
        v10 = v8 / a5;
      }

      if ((a2 & 0x100000000) == 0)
      {
        v10 = v8 / a5;
      }

      v11 = v10 < 0;
      if ((HIDWORD(a2) & v11) != 0)
      {
        v10 = -v10;
      }

      v12 = (1 << a3);
      v13 = v10 / v12;
      if (a4)
      {
        v13 = v13 * (1 << a4);
      }

      v14 = ((v8 % a5) << a4) / a5 / v12 + v13;
      if ((HIDWORD(a2) & v11) != 0)
      {
        v14 = -v14;
      }
    }

    *a6 = v14;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v18 = *(result + v17++) | (v18 << 8);
    }

    while (v17 != 4);
    v19 = (v18 / a5) << a4;
    v20 = (v18 % a5) << a4;
    v21 = v6 - 64;
    v22 = (v19 & ~(-1 << SBYTE6(a2)) ^ (1 << (BYTE6(a2) - 1))) - (1 << (BYTE6(a2) - 1));
    if (v21 < 0xFFFFFFC1)
    {
      v22 = v19;
    }

    if (v22 >= 0)
    {
      v23 = v20;
    }

    else
    {
      v23 = -v20;
    }

    if ((a2 & 0x100000000) != 0)
    {
      v20 = v23;
    }

    else
    {
      v22 = v19;
    }

    *a6 = v20 / a5 + v22;
  }

  return result;
}

void SMCAEPopulatePlatform_cold_1()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x29EDCA608];
}

void SMCAEPopulatePlatform_cold_2()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x29EDCA608];
}

void SMCAEPopulatePlatform_cold_3()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x29EDCA608];
}

void SMCAEPopulatePlatform_cold_4()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x29EDCA608];
}

void SMCAEPopulatePlatform_cold_5()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x29EDCA608];
}

void SMCAEPopulatePlatform_cold_6()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x29EDCA608];
}

void SMCAEPopulatePlatform_cold_7()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x29EDCA608];
}

void SMCAEPopulatePlatform_cold_8()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x29EDCA608];
}

void SMCAEPopulatePlatform_cold_9()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x29EDCA608];
}

void SMCAccumGetChannelInfoForKey_cold_1()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x29EDCA608];
}

void SMCAccumGetChannelInfoForKey_cold_2()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x29EDCA608];
}

void SMCAccumGetChannelInfoForKey_cold_3()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x29EDCA608];
}

void SMCAccumGetChannelInfoForKey_cold_4()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x29EDCA608];
}

void SMCOSAccumIsSupported_cold_1()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x29EDCA608];
}

void SMCAEPopulateChannelInfo_cold_1()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x29EDCA608];
}

void SMCAEPopulateChannelInfo_cold_2()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x29EDCA608];
}

void SMCAEPopulateChannelInfo_cold_3()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x29EDCA608];
}

void SMCAEPopulateChannelInfo_cold_4()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x29EDCA608];
}

void SMCAEPopulateChannelInfo_cold_5()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x29EDCA608];
}

void SMCAEPopulateChannelInfo_cold_6()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x29EDCA608];
}

void SMCAEPopulateChannelInfo_cold_7()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x29EDCA608];
}

void SMCAEPopulateChannelInfo_cold_8()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x29EDCA608];
}

void SMCOpenAppleSMC_cold_1()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x29EDCA608];
}

void SMCOpenAppleSMC_cold_2()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x29EDCA608];
}

void SMCOpenAppleSMC_cold_3()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x29EDCA608];
}

void findMaxClientCreatorAndReport_cold_1(uint64_t a1, uint64_t a2, int a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 128);
  v4 = *(a1 + 132);
  v6 = 136316162;
  v7 = a1;
  v8 = 1024;
  v9 = v3;
  v10 = 1024;
  v11 = v4;
  v12 = 2080;
  v13 = a2;
  v14 = 1024;
  v15 = a3;
  _os_log_fault_impl(&dword_29810C000, MEMORY[0x29EDCA988], OS_LOG_TYPE_FAULT, "'%s' (pid %d) opened %d '%s' user clients (%d total)\n", &v6, 0x28u);
  v5 = *MEMORY[0x29EDCA608];
}

void SMCCloseAppleSMC_cold_1()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x29EDCA608];
}

void SMCKextCall_cold_1()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
  v5 = *MEMORY[0x29EDCA608];
}

void SMCOpenConnection_cold_1()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x29EDCA608];
}

void SMCOpenConnection_cold_2()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x29EDCA608];
}

void SMCOpenConnectionWithDefaultService_cold_1()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x29EDCA608];
}

void SMCCloseConnection_cold_1()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x29EDCA608];
}

void SMCConvertNumericToBytes_cold_1(int *a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v7 = *a1;
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Eu);
  v6 = *MEMORY[0x29EDCA608];
}

void SMCAccumIsSupported_cold_1()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x29EDCA608];
}

void SMCRegisterForSubTypeNotification_cold_1()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x29EDCA608];
}

void SMCRegisterForSubTypeNotification_cold_2()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x29EDCA608];
}

void SMCRegisterForSubTypeNotification_cold_4()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x29EDCA608];
}

void __SMCRegisterForSubTypeNotification_block_invoke_cold_1()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x29EDCA608];
}

void __SMCRegisterForSubTypeNotification_block_invoke_cold_2()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x29EDCA608];
}

void __SMCRegisterForSubTypeNotification_block_invoke_cold_3()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x29EDCA608];
}

void _unregisterForNotification_cold_2()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x29EDCA608];
}