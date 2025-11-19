void *ETLMaverickGetIMEISwVersion(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = 0u;
  v35 = 0u;
  v36 = 0;
  memset(v32, 0, sizeof(v32));
  v33 = 0;
  if (!a2 || (HDLCFrameCreateUplink() & 1) == 0)
  {
    v28 = "ETLMaverickGetIMEISwVersion";
    v29 = "Failed to create command frame\n";
LABEL_18:
    _ETLDebugPrint(v28, v29, a3, a4, a5, a6, a7, a8, v31);
LABEL_19:
    v18 = 0;
    goto LABEL_20;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v12, v13, v14, v15, v16, v17, FreeSpace);
    goto LABEL_19;
  }

  v37 = 2424139;
  if ((HDLCFrameInject() & 1) == 0)
  {
    v28 = "ETLSubsysAddHeaderInternal";
    v29 = "Failed to inject\n";
    goto LABEL_18;
  }

  v18 = malloc((2 * DWORD2(v34) + 32));
  if (!v18)
  {
    goto LABEL_20;
  }

  v19 = HDLCFrameEncode();
  if (!v19)
  {
    goto LABEL_23;
  }

  v20 = v19;
  v37 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v18, v19);
  }

  if (!*a1)
  {
LABEL_23:
    free(v18);
    goto LABEL_19;
  }

  v21 = (*a1)(a1, v18, v20, &v37, 1, a3, 0);
  v22 = v37;
  free(v18);
  v18 = 0;
  if (v21 && v22 == v20)
  {
    LOBYTE(v37) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    v18 = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, v32, &_ETLResponseRingBuffer, &v37, a3) && v37 == 75)
    {
      v18 = ETLMaverickParseIMEISwVersionResponse(v32, a2, 36, v23, v24, v25, v26, v27);
    }
  }

LABEL_20:
  HDLCFrameFree();
  HDLCFrameFree();
  return v18;
}

uint64_t ETLMaverickGetHWType(void *a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(v10, 170, sizeof(v10));
  if (!a2)
  {
    return 0;
  }

  result = ETLMaverickGetHWInfo(a1, v10, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    *a2 = v10[0];
    return 1;
  }

  return result;
}

void *ETLMaverickGetHWInfo(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = 0u;
  v36 = 0u;
  v37 = 0;
  memset(v33, 0, sizeof(v33));
  v34 = 0;
  if (!a2 || (HDLCFrameCreateUplink() & 1) == 0)
  {
    v29 = "ETLMaverickGetHWInfo";
    v30 = "Failed to create command frame\n";
LABEL_18:
    _ETLDebugPrint(v29, v30, a3, a4, a5, a6, a7, a8, v32);
LABEL_19:
    HWConfigIDResponse = 0;
    goto LABEL_20;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v12, v13, v14, v15, v16, v17, FreeSpace);
    goto LABEL_19;
  }

  v38 = 65099;
  if ((HDLCFrameInject() & 1) == 0)
  {
    v29 = "ETLSubsysAddHeaderInternal";
    v30 = "Failed to inject\n";
    goto LABEL_18;
  }

  HWConfigIDResponse = malloc((2 * DWORD2(v35) + 32));
  if (!HWConfigIDResponse)
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
    off_2A18A5818(&str_3, 0, HWConfigIDResponse, v19);
  }

  if (!*a1)
  {
LABEL_23:
    free(HWConfigIDResponse);
    goto LABEL_19;
  }

  v21 = (*a1)(a1, HWConfigIDResponse, v20, &v38, 1, a3, 0);
  v22 = v38;
  free(HWConfigIDResponse);
  HWConfigIDResponse = 0;
  if (v21 && v22 == v20)
  {
    LOBYTE(v38) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    HWConfigIDResponse = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, v33, &_ETLResponseRingBuffer, &v38, a3) && v38 == 75)
    {
      HWConfigIDResponse = ETLMaverickParseGetHWConfigIDResponse(v33, a2, v23, v24, v25, v26, v27, v28);
    }
  }

LABEL_20:
  HDLCFrameFree();
  HDLCFrameFree();
  return HWConfigIDResponse;
}

uint64_t ETLMaverickGetHWRev(void *a1, _WORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(v10, 170, sizeof(v10));
  if (!a2)
  {
    return 0;
  }

  result = ETLMaverickGetHWInfo(a1, v10, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    *a2 = WORD2(v10[0]);
    return 1;
  }

  return result;
}

uint64_t ETLMaverickGetHWConfigId(void *a1, _WORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(v10, 170, sizeof(v10));
  if (!a2)
  {
    return 0;
  }

  result = ETLMaverickGetHWInfo(a1, v10, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    *a2 = HIWORD(v10[0]);
    return 1;
  }

  return result;
}

uint64_t ETLMaverickGetPAConfig(void *a1, _WORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(v10, 170, sizeof(v10));
  if (!a2)
  {
    return 0;
  }

  result = ETLMaverickGetHWInfo(a1, v10, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    *a2 = v10[1];
    return 1;
  }

  return result;
}

uint64_t ETLMaverickGetAntennaTunerID(void *a1, _WORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(v10, 170, sizeof(v10));
  if (!a2)
  {
    return 0;
  }

  result = ETLMaverickGetHWInfo(a1, v10, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    *a2 = WORD1(v10[1]);
    return 1;
  }

  return result;
}

uint64_t ETLMaverickGetSKU(void *a1, _WORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(v10, 170, sizeof(v10));
  if (!a2)
  {
    return 0;
  }

  result = ETLMaverickGetHWInfo(a1, v10, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    *a2 = HIWORD(v10[2]);
    return 1;
  }

  return result;
}

void *ETLMaverickGetMaxTxPower(void *a1, _WORD *a2, _WORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = 0u;
  v36 = 0u;
  v37 = 0;
  memset(v33, 0, sizeof(v33));
  v34 = 0;
  if (!a2 || !a3 || (HDLCFrameCreateUplink() & 1) == 0)
  {
    v29 = "ETLMaverickGetMaxTxPower";
    v30 = "Failed to create command frame\n";
LABEL_19:
    _ETLDebugPrint(v29, v30, a3, a4, a5, a6, a7, a8, v32);
LABEL_20:
    MaxTxPowerResponse = 0;
    goto LABEL_21;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v13, v14, v15, v16, v17, v18, FreeSpace);
    goto LABEL_20;
  }

  v38 = 1375051;
  if ((HDLCFrameInject() & 1) == 0)
  {
    v29 = "ETLSubsysAddHeaderInternal";
    v30 = "Failed to inject\n";
    goto LABEL_19;
  }

  MaxTxPowerResponse = malloc((2 * DWORD2(v35) + 32));
  if (!MaxTxPowerResponse)
  {
    goto LABEL_21;
  }

  v20 = HDLCFrameEncode();
  if (!v20)
  {
    goto LABEL_24;
  }

  v21 = v20;
  v38 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, MaxTxPowerResponse, v20);
  }

  if (!*a1)
  {
LABEL_24:
    free(MaxTxPowerResponse);
    goto LABEL_20;
  }

  v22 = (*a1)(a1, MaxTxPowerResponse, v21, &v38, 1, a4, 0);
  v23 = v38;
  free(MaxTxPowerResponse);
  MaxTxPowerResponse = 0;
  if (v22 && v23 == v21)
  {
    LOBYTE(v38) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    MaxTxPowerResponse = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, v33, &_ETLResponseRingBuffer, &v38, a4) && v38 == 75)
    {
      MaxTxPowerResponse = ETLMaverickParseGetMaxTxPowerResponse(v33, a2, a3, v24, v25, v26, v27, v28);
    }
  }

LABEL_21:
  HDLCFrameFree();
  HDLCFrameFree();
  return MaxTxPowerResponse;
}

void *ETLMaverickSetAutoAnswer(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = 0u;
  v38 = 0u;
  v39 = 0;
  memset(v35, 0, sizeof(v35));
  v36 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    v31 = "ETLMaverickSetAutoAnswer";
    v32 = "Failed to create command frame\n";
LABEL_21:
    _ETLDebugPrint(v31, v32, v6, v7, v8, v9, v10, v11, v34);
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

  v40 = 2686283;
  if ((HDLCFrameInject() & 1) == 0)
  {
    v31 = "ETLSubsysAddHeaderInternal";
    v32 = "Failed to inject\n";
    goto LABEL_21;
  }

  if (HDLCFrameGetFreeSpace() <= 1)
  {
    v34 = 2;
    v31 = "ETLMaverickCreateSetAutoAnswerCommand";
    v32 = "Not enough room, need %zu, have %u\n";
    goto LABEL_21;
  }

  HDLCFrameInjectUnsignedChar();
  HDLCFrameInjectUnsignedChar();
  v19 = malloc((2 * DWORD2(v37) + 32));
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
  v40 = -1431655766;
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

  v22 = (*a1)(a1, v19, v21, &v40, 1, a4, 0);
  v23 = v40;
  free(v19);
  v19 = 0;
  if (v22 && v23 == v21)
  {
    LOBYTE(v40) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    v19 = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, v35, &_ETLResponseRingBuffer, &v40, a4) && v40 == 75)
    {
      v19 = ETLMaverickParseSetAutoAnswerResponse(v35, v24, v25, v26, v27, v28, v29, v30);
    }
  }

LABEL_23:
  HDLCFrameFree();
  HDLCFrameFree();
  return v19;
}

void *ETLMaverickCheckCalibration(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    memset(v39, 0, sizeof(v39));
    v40 = 0;
    if (HDLCFrameCreateUplink())
    {
      FreeSpace = HDLCFrameGetFreeSpace();
      if (FreeSpace < 4)
      {
        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v18, v19, v20, v21, v22, v23, FreeSpace);
        goto LABEL_22;
      }

      v44 = 3210571;
      if (HDLCFrameInject())
      {
        v24 = malloc((2 * DWORD2(v41) + 32));
        if (!v24)
        {
LABEL_23:
          HDLCFrameFree();
          HDLCFrameFree();
          return v24;
        }

        v25 = HDLCFrameEncode();
        if (v25)
        {
          v26 = v25;
          v44 = -1431655766;
          if ((_ETLDebugFlags & 2) != 0)
          {
            off_2A18A5818(&str_3, 0, v24, v25);
          }

          if (*a1)
          {
            v27 = (*a1)(a1, v24, v26, &v44, 1, a3, 0);
            v28 = v44;
            free(v24);
            v24 = 0;
            if (v27 && v28 == v26)
            {
              LOBYTE(v44) = 75;
              if (!_ETLResponseRingBuffer)
              {
                TelephonyUtilRingBufferInitialize();
              }

              v24 = 0;
              if (ETLFindMatchingResponseUsingBuffer(a1, v39, &_ETLResponseRingBuffer, &v44, a3) && v44 == 75)
              {
                v24 = ETLMaverickParseCalibrationCheckResonse(v39, a2, v29, v30, v31, v32, v33, v34);
              }
            }

            goto LABEL_23;
          }
        }

        free(v24);
LABEL_22:
        v24 = 0;
        goto LABEL_23;
      }

      v35 = "ETLSubsysAddHeaderInternal";
      v36 = "Failed to inject\n";
    }

    else
    {
      v35 = "ETLMaverickCheckCalibration";
      v36 = "Failed to create command frame\n";
    }

    _ETLDebugPrint(v35, v36, v11, v12, v13, v14, v15, v16, v38);
    goto LABEL_22;
  }

  _ETLDebugPrint("ETLMaverickCheckCalibration", "Calibration status pointer is NULL, skipping calibration check\n", a3, a4, a5, a6, a7, a8, v38);
  return 0;
}

void *ETLMaverickCheckCalibrationV2(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    memset(v39, 0, sizeof(v39));
    v40 = 0;
    if (HDLCFrameCreateUplink())
    {
      FreeSpace = HDLCFrameGetFreeSpace();
      if (FreeSpace < 4)
      {
        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v19, v20, v21, v22, v23, v24, FreeSpace);
        goto LABEL_22;
      }

      LOWORD(v44) = -1205;
      HIWORD(v44) = a4;
      if (HDLCFrameInject())
      {
        v25 = malloc((2 * DWORD2(v41) + 32));
        if (!v25)
        {
LABEL_23:
          HDLCFrameFree();
          HDLCFrameFree();
          return v25;
        }

        v26 = HDLCFrameEncode();
        if (v26)
        {
          v27 = v26;
          v44 = -1431655766;
          if ((_ETLDebugFlags & 2) != 0)
          {
            off_2A18A5818(&str_3, 0, v25, v26);
          }

          if (*a1)
          {
            v28 = (*a1)(a1, v25, v27, &v44, 1, a3, 0);
            v29 = v44;
            free(v25);
            v25 = 0;
            if (v28 && v29 == v27)
            {
              LOBYTE(v44) = 75;
              if (!_ETLResponseRingBuffer)
              {
                TelephonyUtilRingBufferInitialize();
              }

              v25 = 0;
              if (ETLFindMatchingResponseUsingBuffer(a1, v39, &_ETLResponseRingBuffer, &v44, a3) && v44 == 75)
              {
                v25 = ETLMaverickParseCalibrationCheckResponseV2(v39, a2, a4, v30, v31, v32, v33, v34);
              }
            }

            goto LABEL_23;
          }
        }

        free(v25);
LABEL_22:
        v25 = 0;
        goto LABEL_23;
      }

      v35 = "ETLSubsysAddHeaderInternal";
      v36 = "Failed to inject\n";
    }

    else
    {
      v35 = "ETLMaverickCheckCalibrationV2";
      v36 = "Failed to create command frame\n";
    }

    _ETLDebugPrint(v35, v36, v12, v13, v14, v15, v16, v17, v38);
    goto LABEL_22;
  }

  _ETLDebugPrint("ETLMaverickCheckCalibrationV2", "Calibration status pointer is NULL, skipping calibration check\n", a3, a4, a5, a6, a7, a8, v38);
  return 0;
}

uint64_t ETLMaverickParseICCIDResponse(int **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
          if (v9 <= 0xB)
          {
            _ETLDebugPrint("ETLMaverickParseICCIDResponse", "Received response has only %u bytes, need %u\n", a3, a4, a5, a6, a7, a8, v9);
            return 0;
          }

          else if (*(v10 + 2) == 1)
          {
            v13 = *(v10 + 6);
            *(a2 + 8) = *(v10 + 7);
            *a2 = v13;
            return 1;
          }

          else
          {
            _ETLDebugPrint("ETLMaverickParseICCIDResponse", "Received response with failure status [%d]\n", a3, a4, a5, a6, a7, a8, *(v10 + 2));
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

uint64_t ETLMaverickParseIMEIResponse(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || !a2)
  {
    goto LABEL_16;
  }

  v8 = a1[2];
  v9 = v8 - 4;
  if (v8 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a3, a4, a5, a6, a7, a8, a1[2]);
LABEL_16:
    _ETLDebugPrint("ETLMaverickParseIMEIResponse", "status: %d, success: %s, offset:%d\n", a3, a4, a5, a6, a7, a8, 0);
    return 0;
  }

  v10 = *a1;
  v11 = **a1;
  if (v11 != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, **a1);
    goto LABEL_16;
  }

  if (BYTE1(v11) != 253)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, BYTE1(v11));
    goto LABEL_16;
  }

  v12 = HIWORD(v11);
  if (v12 != 12)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, v12);
    goto LABEL_16;
  }

  if (v9 <= 3)
  {
    _ETLDebugPrint("ETLMaverickParseSecurityResponseHeader", "Need %u bytes, but only have %u\n", a3, a4, a5, a6, a7, a8, 4);
    goto LABEL_16;
  }

  v13 = *(v10 + 2);
  if (v13 != 34)
  {
    _ETLDebugPrint("ETLMaverickParseSecurityResponseHeader", "Received code 0x%x mismatches expected 0x%x\n", a3, a4, a5, a6, a7, a8, v13);
    goto LABEL_16;
  }

  v16 = *(v10 + 3);
  _ETLDebugPrint("ETLMaverickParseIMEIResponse", "status: %d, success: %s, offset:%d\n", a3, a4, a5, a6, a7, a8, v16);
  if (v16)
  {
    _ETLDebugPrint("ETLMaverickParseIMEIResponse", "status is %d\n", v17, v18, v19, v20, v21, v22, v16);
    return 0;
  }

  if (a1[2] - 8 < 0xA)
  {
    return 0;
  }

  if (!*(*a1 + 9))
  {
    _ETLDebugPrint("ETLMaverickParseIMEIResponse", "Received response has only %u bytes, need %u\n", v17, v18, v19, v20, v21, v22, a1[2] - 8);
    return 0;
  }

  v24 = *(*a1 + 9);
  *(a2 + 8) = *(*a1 + 17);
  *a2 = v24;
  return 1;
}

void *ETLMaverickGetICCIDExt(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = 0u;
  v35 = 0u;
  v36 = 0;
  memset(v32, 0, sizeof(v32));
  v33 = 0;
  if (!a2 || (HDLCFrameCreateUplink() & 1) == 0)
  {
    v28 = "ETLMaverickGetICCIDExt";
    v29 = "Failed to create command frame\n";
LABEL_19:
    _ETLDebugPrint(v28, v29, a3, a4, a5, a6, a7, a8, v31);
    goto LABEL_20;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v12, v13, v14, v15, v16, v17, FreeSpace);
    goto LABEL_20;
  }

  v37 = 5438795;
  if ((HDLCFrameInject() & 1) == 0)
  {
    v28 = "ETLSubsysAddHeaderInternal";
    v29 = "Failed to inject\n";
    goto LABEL_19;
  }

  if (!HDLCFrameInjectUnsignedChar())
  {
LABEL_20:
    v18 = 0;
    goto LABEL_21;
  }

  v18 = malloc((2 * DWORD2(v34) + 32));
  if (!v18)
  {
    goto LABEL_21;
  }

  v19 = HDLCFrameEncode();
  if (!v19)
  {
    goto LABEL_24;
  }

  v20 = v19;
  v37 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v18, v19);
  }

  if (!*a1)
  {
LABEL_24:
    free(v18);
    goto LABEL_20;
  }

  v21 = (*a1)(a1, v18, v20, &v37, 1, a4, 0);
  v22 = v37;
  free(v18);
  v18 = 0;
  if (v21 && v22 == v20)
  {
    LOBYTE(v37) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    v18 = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, v32, &_ETLResponseRingBuffer, &v37, a4) && v37 == 75)
    {
      v18 = ETLMaverickParseICCIDResponse(v32, a2, 82, v23, v24, v25, v26, v27);
    }
  }

LABEL_21:
  HDLCFrameFree();
  HDLCFrameFree();
  return v18;
}

uint64_t ETLMaverickGetIMEI(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    v24 = "imei is null\n";
LABEL_19:
    _ETLDebugPrint("ETLMaverickGetIMEI", v24, a3, a4, a5, a6, a7, a8, *&v27[0]);
    return 0;
  }

  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  memset(v27, 0, sizeof(v27));
  v28 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    v24 = "Failed to create command frame\n";
    goto LABEL_19;
  }

  v11 = ETLMaverickAddSecurityCommandHeader();
  if (v11)
  {
    v11 = HDLCFrameInjectUnsignedChar();
    if (v11)
    {
      v11 = malloc((2 * DWORD2(v29) + 32));
      if (v11)
      {
        v12 = v11;
        v13 = HDLCFrameEncode();
        if (!v13)
        {
          goto LABEL_20;
        }

        v14 = v13;
        v32 = -1431655766;
        if ((_ETLDebugFlags & 2) != 0)
        {
          off_2A18A5818(&str_3, 0, v12, v13);
        }

        if (*a1)
        {
          v15 = (*a1)(a1, v12, v14, &v32, 1, a4, 0);
          v16 = v32;
          free(v12);
          v11 = 0;
          if (v15 && v16 == v14)
          {
            LOBYTE(v32) = 75;
            if (!_ETLResponseRingBuffer)
            {
              TelephonyUtilRingBufferInitialize();
            }

            v23 = ETLFindMatchingResponseUsingBuffer(a1, v27, &_ETLResponseRingBuffer, &v32, a4);
            v11 = 0;
            if (v23)
            {
              if (v32 == 75)
              {
                v11 = ETLMaverickParseIMEIResponse(v27, a2, v17, v18, v19, v20, v21, v22);
              }
            }
          }
        }

        else
        {
LABEL_20:
          free(v12);
          v11 = 0;
        }
      }
    }
  }

  v26 = v11;
  HDLCFrameFree();
  HDLCFrameFree();
  return v26;
}

uint64_t ETLMaverickGetFactoryCalibrationStatus(void *a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = 0u;
  v38 = 0u;
  v39 = 0;
  memset(v35, 0, sizeof(v35));
  v36 = 0;
  if (!a2 || (HDLCFrameCreateUplink() & 1) == 0)
  {
    v31 = "ETLMaverickGetFactoryCalibrationStatus";
    v32 = "Failed to create command frame\n";
LABEL_24:
    _ETLDebugPrint(v31, v32, a3, a4, a5, a6, a7, a8, v34);
    goto LABEL_25;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v12, v13, v14, v15, v16, v17, FreeSpace);
    goto LABEL_25;
  }

  v40 = 3734347;
  if ((HDLCFrameInject() & 1) == 0)
  {
    v31 = "ETLSubsysAddHeaderInternal";
    v32 = "Failed to inject\n";
    goto LABEL_24;
  }

  v18 = malloc((2 * DWORD2(v37) + 32));
  if (v18)
  {
    v19 = HDLCFrameEncode();
    if (!v19)
    {
      goto LABEL_29;
    }

    v20 = v19;
    v40 = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, v18, v19);
    }

    if (!*a1)
    {
LABEL_29:
      free(v18);
      goto LABEL_25;
    }

    v21 = (*a1)(a1, v18, v20, &v40, 1, a3, 0);
    v22 = v40;
    free(v18);
    v18 = 0;
    if (v21)
    {
      if (v22 == v20)
      {
        LOBYTE(v40) = 75;
        if (!_ETLResponseRingBuffer)
        {
          TelephonyUtilRingBufferInitialize();
        }

        v18 = 0;
        if (ETLFindMatchingResponseUsingBuffer(a1, v35, &_ETLResponseRingBuffer, &v40, a3))
        {
          if (v40 == 75)
          {
            if (DWORD2(v35[0]) < 4)
            {
              _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", v23, v24, v25, v26, v27, v28, DWORD2(v35[0]));
            }

            else
            {
              v29 = **&v35[0];
              if (**&v35[0] == 75)
              {
                if (BYTE1(v29) == 251)
                {
                  v30 = HIWORD(v29);
                  if (v30 == 56)
                  {
                    if ((DWORD2(v35[0]) - 4) <= 3)
                    {
                      _ETLDebugPrint("ETLMaverickParseGetFactoryCalibrationStatus", "Received response has only %u bytes, need %u\n", v23, v24, v25, v26, v27, v28, (DWORD2(v35[0]) - 4));
                    }

                    else
                    {
                      if (*(*&v35[0] + 4) == 1)
                      {
                        *a2 = *(*&v35[0] + 6);
                        v18 = 1;
                        goto LABEL_26;
                      }

                      _ETLDebugPrint("ETLMaverickParseGetFactoryCalibrationStatus", "Received response with failure status [%d]\n", v23, v24, v25, v26, v27, v28, *(*&v35[0] + 4));
                    }
                  }

                  else
                  {
                    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v23, v24, v25, v26, v27, v28, v30);
                  }
                }

                else
                {
                  _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", v23, v24, v25, v26, v27, v28, BYTE1(v29));
                }
              }

              else
              {
                _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", v23, v24, v25, v26, v27, v28, **&v35[0]);
              }
            }

LABEL_25:
            v18 = 0;
          }
        }
      }
    }
  }

LABEL_26:
  HDLCFrameFree();
  HDLCFrameFree();
  return v18;
}

uint64_t ETLMaverickGetRAT(void *a1, _WORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && a2)
  {
    v58 = 0u;
    v59 = 0u;
    v60 = 0;
    memset(v56, 0, sizeof(v56));
    v57 = 0;
    if (HDLCFrameCreateUplink())
    {
      FreeSpace = HDLCFrameGetFreeSpace();
      if (FreeSpace < 4)
      {
        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v18, v19, v20, v21, v22, v23, FreeSpace);
      }

      else
      {
        v63 = 4521291;
        if (HDLCFrameInject())
        {
          if (!HDLCFrameGetFreeSpace())
          {
            _ETLDebugPrint("ETLMaverickAddBSPExtCommandGetHeader", "Not enough room, need %zu, have %u\n", v30, v31, v32, v33, v34, v35, 2);
            goto LABEL_31;
          }

          HDLCFrameInjectUnsignedChar();
          v36 = malloc((2 * DWORD2(v58) + 32));
          if (!v36)
          {
LABEL_32:
            HDLCFrameFree();
            HDLCFrameFree();
            return v36;
          }

          v37 = HDLCFrameEncode();
          if (!v37)
          {
            goto LABEL_35;
          }

          v38 = v37;
          v63 = -1431655766;
          if ((_ETLDebugFlags & 2) != 0)
          {
            off_2A18A5818(&str_3, 0, v36, v37);
          }

          if (!*a1)
          {
LABEL_35:
            free(v36);
            goto LABEL_31;
          }

          v39 = (*a1)(a1, v36, v38, &v63, 1, a3, 0);
          v40 = v63;
          free(v36);
          v36 = 0;
          if (!v39 || v40 != v38)
          {
            goto LABEL_32;
          }

          LOBYTE(v63) = 75;
          if (!_ETLResponseRingBuffer)
          {
            TelephonyUtilRingBufferInitialize();
          }

          v36 = 0;
          if (!ETLFindMatchingResponseUsingBuffer(a1, v56, &_ETLResponseRingBuffer, &v63, a3) || v63 != 75)
          {
            goto LABEL_32;
          }

          v63 = 0;
          v62 = -21846;
          v61 = -21846;
          if (ETLSubsysParseHeader(v56, &v62, &v61, &v63, v41, v42, v43, v44))
          {
            if (v62 == 253)
            {
              if (v61 == 68)
              {
                if (DWORD2(v56[0]) - v63 <= 1)
                {
                  _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Received response has only %u bytes, need %u bytes\n", v45, v46, v47, v48, v49, v50, DWORD2(v56[0]) - v63);
                }

                else
                {
                  if (*(*&v56[0] + v63) == 1)
                  {
                    v51 = DWORD2(v56[0]) - (v63 + 2);
                    if (v51 > 1)
                    {
                      *a2 = *(*&v56[0] + v63 + 2);
                      v36 = 1;
                      goto LABEL_32;
                    }

                    _ETLDebugPrint("ETLMaverickParseGetRATSelectionResponse", "Received response has only %u bytes, need %u bytes\n", v45, v46, v47, v48, v49, v50, v51);
LABEL_31:
                    v36 = 0;
                    goto LABEL_32;
                  }

                  _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Received response with failure status [%d]\n", v45, v46, v47, v48, v49, v50, *(*&v56[0] + v63));
                }

                goto LABEL_39;
              }

              _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v45, v46, v47, v48, v49, v50, v61);
            }

            else
            {
              _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", v45, v46, v47, v48, v49, v50, v62);
            }
          }

          _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Failed to parse BSP response header\n", v45, v46, v47, v48, v49, v50, v55);
LABEL_39:
          v52 = "ETLMaverickParseGetRATSelectionResponse";
          v53 = "Failed on parsing BSP Ext Response.\n";
          goto LABEL_30;
        }

        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v24, v25, v26, v27, v28, v29, v55);
      }

      v52 = "ETLMaverickAddBSPExtCommandGetHeader";
      v53 = "Failed on creating BSP Command Heder\n";
    }

    else
    {
      v52 = "ETLMaverickGetRAT";
      v53 = "Failed to create command frame\n";
    }

LABEL_30:
    _ETLDebugPrint(v52, v53, v11, v12, v13, v14, v15, v16, v55);
    goto LABEL_31;
  }

  _ETLDebugPrint("ETLMaverickGetRAT", "Transport or ratSelection memory cannot be NULL\n", a3, a4, a5, a6, a7, a8, v55);
  return 0;
}

uint64_t ETLMaverickSetRAT(void *a1, unsigned __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v59 = 0u;
    v60 = 0u;
    v61 = 0;
    memset(v57, 0, sizeof(v57));
    v58 = 0;
    if (HDLCFrameCreateUplink())
    {
      FreeSpace = HDLCFrameGetFreeSpace();
      if (FreeSpace < 4)
      {
        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v18, v19, v20, v21, v22, v23, FreeSpace);
      }

      else
      {
        v64 = 4521291;
        if (HDLCFrameInject())
        {
          if (HDLCFrameGetFreeSpace() <= 1)
          {
            _ETLDebugPrint("ETLMaverickAddBSPExtCommandSetHeader", "Not enough room, need %zu, have %u\n", v30, v31, v32, v33, v34, v35, 2);
            goto LABEL_31;
          }

          HDLCFrameInjectUnsignedChar();
          HDLCFrameInjectUnsignedChar();
          v36 = malloc((2 * DWORD2(v59) + 32));
          if (!v36)
          {
LABEL_32:
            HDLCFrameFree();
            HDLCFrameFree();
            return v36;
          }

          v37 = HDLCFrameEncode();
          if (!v37)
          {
            goto LABEL_35;
          }

          v38 = v37;
          v64 = -1431655766;
          if ((_ETLDebugFlags & 2) != 0)
          {
            off_2A18A5818(&str_3, 0, v36, v37);
          }

          if (!*a1)
          {
LABEL_35:
            free(v36);
            goto LABEL_31;
          }

          v39 = (*a1)(a1, v36, v38, &v64, 1, a3, 0);
          v40 = v64;
          free(v36);
          v36 = 0;
          if (!v39 || v40 != v38)
          {
            goto LABEL_32;
          }

          LOBYTE(v64) = 75;
          if (!_ETLResponseRingBuffer)
          {
            TelephonyUtilRingBufferInitialize();
          }

          v36 = 0;
          if (!ETLFindMatchingResponseUsingBuffer(a1, v57, &_ETLResponseRingBuffer, &v64, a3) || v64 != 75)
          {
            goto LABEL_32;
          }

          v64 = 0;
          v63 = -21846;
          v62 = -21846;
          if (ETLSubsysParseHeader(v57, &v63, &v62, &v64, v41, v42, v43, v44))
          {
            if (v63 == 253)
            {
              if (v62 == 68)
              {
                if (DWORD2(v57[0]) - v64 <= 1)
                {
                  _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Received response has only %u bytes, need %u bytes\n", v45, v46, v47, v48, v49, v50, DWORD2(v57[0]) - v64);
                }

                else
                {
                  if (*(*&v57[0] + v64) == 1)
                  {
                    v51 = DWORD2(v57[0]) - (v64 + 2);
                    if (v51 <= 1)
                    {
                      _ETLDebugPrint("ETLMaverickParseSetRATSelectionResponse", "Received response has only %u bytes, need %u\n", v45, v46, v47, v48, v49, v50, v51);
                    }

                    else
                    {
                      v52 = *(*&v57[0] + v64 + 2);
                      if (v52 == a2)
                      {
                        v36 = 1;
                        goto LABEL_32;
                      }

                      _ETLDebugPrint("ETLMaverickParseSetRATSelectionResponse", "Received rat selection %d doesn't match with %d\n", v45, v46, v47, v48, v49, v50, v52);
                    }

LABEL_31:
                    v36 = 0;
                    goto LABEL_32;
                  }

                  _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Received response with failure status [%d]\n", v45, v46, v47, v48, v49, v50, *(*&v57[0] + v64));
                }

                goto LABEL_39;
              }

              _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v45, v46, v47, v48, v49, v50, v62);
            }

            else
            {
              _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", v45, v46, v47, v48, v49, v50, v63);
            }
          }

          _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Failed to parse BSP response header\n", v45, v46, v47, v48, v49, v50, v56);
LABEL_39:
          v53 = "ETLMaverickParseSetRATSelectionResponse";
          v54 = "Failed on parsing BSP Ext Response.\n";
          goto LABEL_30;
        }

        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v24, v25, v26, v27, v28, v29, v56);
      }

      v53 = "ETLMaverickAddBSPExtCommandSetHeader";
      v54 = "Failed on creating BSP Command Heder\n";
    }

    else
    {
      v53 = "ETLMaverickSetRAT";
      v54 = "Failed to create command frame\n";
    }

LABEL_30:
    _ETLDebugPrint(v53, v54, v11, v12, v13, v14, v15, v16, v56);
    goto LABEL_31;
  }

  _ETLDebugPrint("ETLMaverickSetRAT", "Transport cannot be NULL\n", a3, a4, a5, a6, a7, a8, v56);
  return 0;
}

uint64_t ETLMaverickGetBBMode(void *a1, _WORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && a2)
  {
    v58 = 0u;
    v59 = 0u;
    v60 = 0;
    memset(v56, 0, sizeof(v56));
    v57 = 0;
    if (HDLCFrameCreateUplink())
    {
      FreeSpace = HDLCFrameGetFreeSpace();
      if (FreeSpace < 4)
      {
        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v18, v19, v20, v21, v22, v23, FreeSpace);
      }

      else
      {
        v63 = 4521291;
        if (HDLCFrameInject())
        {
          if (!HDLCFrameGetFreeSpace())
          {
            _ETLDebugPrint("ETLMaverickAddBSPExtCommandGetHeader", "Not enough room, need %zu, have %u\n", v30, v31, v32, v33, v34, v35, 2);
            goto LABEL_31;
          }

          HDLCFrameInjectUnsignedChar();
          v36 = malloc((2 * DWORD2(v58) + 32));
          if (!v36)
          {
LABEL_32:
            HDLCFrameFree();
            HDLCFrameFree();
            return v36;
          }

          v37 = HDLCFrameEncode();
          if (!v37)
          {
            goto LABEL_35;
          }

          v38 = v37;
          v63 = -1431655766;
          if ((_ETLDebugFlags & 2) != 0)
          {
            off_2A18A5818(&str_3, 0, v36, v37);
          }

          if (!*a1)
          {
LABEL_35:
            free(v36);
            goto LABEL_31;
          }

          v39 = (*a1)(a1, v36, v38, &v63, 1, a3, 0);
          v40 = v63;
          free(v36);
          v36 = 0;
          if (!v39 || v40 != v38)
          {
            goto LABEL_32;
          }

          LOBYTE(v63) = 75;
          if (!_ETLResponseRingBuffer)
          {
            TelephonyUtilRingBufferInitialize();
          }

          v36 = 0;
          if (!ETLFindMatchingResponseUsingBuffer(a1, v56, &_ETLResponseRingBuffer, &v63, a3) || v63 != 75)
          {
            goto LABEL_32;
          }

          v63 = 0;
          v62 = -21846;
          v61 = -21846;
          if (ETLSubsysParseHeader(v56, &v62, &v61, &v63, v41, v42, v43, v44))
          {
            if (v62 == 253)
            {
              if (v61 == 68)
              {
                if (DWORD2(v56[0]) - v63 <= 1)
                {
                  _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Received response has only %u bytes, need %u bytes\n", v45, v46, v47, v48, v49, v50, DWORD2(v56[0]) - v63);
                }

                else
                {
                  if (*(*&v56[0] + v63) == 1)
                  {
                    v51 = DWORD2(v56[0]) - (v63 + 2);
                    if (v51 > 1)
                    {
                      *a2 = *(*&v56[0] + v63 + 2);
                      v36 = 1;
                      goto LABEL_32;
                    }

                    _ETLDebugPrint("ETLMaverickParseGetBBModeResponse", "Received response has only %u bytes, need %u\n", v45, v46, v47, v48, v49, v50, v51);
LABEL_31:
                    v36 = 0;
                    goto LABEL_32;
                  }

                  _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Received response with failure status [%d]\n", v45, v46, v47, v48, v49, v50, *(*&v56[0] + v63));
                }

                goto LABEL_39;
              }

              _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v45, v46, v47, v48, v49, v50, v61);
            }

            else
            {
              _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", v45, v46, v47, v48, v49, v50, v62);
            }
          }

          _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Failed to parse BSP response header\n", v45, v46, v47, v48, v49, v50, v55);
LABEL_39:
          v52 = "ETLMaverickParseGetBBModeResponse";
          v53 = "Failed on parsing BSP Ext Response.\n";
          goto LABEL_30;
        }

        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v24, v25, v26, v27, v28, v29, v55);
      }

      v52 = "ETLMaverickAddBSPExtCommandGetHeader";
      v53 = "Failed on creating BSP Command Heder\n";
    }

    else
    {
      v52 = "ETLMaverickGetBBMode";
      v53 = "Failed to create command frame\n";
    }

LABEL_30:
    _ETLDebugPrint(v52, v53, v11, v12, v13, v14, v15, v16, v55);
    goto LABEL_31;
  }

  _ETLDebugPrint("ETLMaverickGetBBMode", "Transport or mode memory cannot be NULL\n", a3, a4, a5, a6, a7, a8, v55);
  return 0;
}

uint64_t ETLMaverickSetBBMode(void *a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v59 = 0u;
    v60 = 0u;
    v61 = 0;
    memset(v57, 0, sizeof(v57));
    v58 = 0;
    if (HDLCFrameCreateUplink())
    {
      FreeSpace = HDLCFrameGetFreeSpace();
      if (FreeSpace < 4)
      {
        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v18, v19, v20, v21, v22, v23, FreeSpace);
      }

      else
      {
        v64 = 4521291;
        if (HDLCFrameInject())
        {
          if (HDLCFrameGetFreeSpace() <= 1)
          {
            _ETLDebugPrint("ETLMaverickAddBSPExtCommandSetHeader", "Not enough room, need %zu, have %u\n", v30, v31, v32, v33, v34, v35, 2);
            goto LABEL_31;
          }

          HDLCFrameInjectUnsignedChar();
          HDLCFrameInjectUnsignedChar();
          v36 = malloc((2 * DWORD2(v59) + 32));
          if (!v36)
          {
LABEL_32:
            HDLCFrameFree();
            HDLCFrameFree();
            return v36;
          }

          v37 = HDLCFrameEncode();
          if (!v37)
          {
            goto LABEL_35;
          }

          v38 = v37;
          v64 = -1431655766;
          if ((_ETLDebugFlags & 2) != 0)
          {
            off_2A18A5818(&str_3, 0, v36, v37);
          }

          if (!*a1)
          {
LABEL_35:
            free(v36);
            goto LABEL_31;
          }

          v39 = (*a1)(a1, v36, v38, &v64, 1, a3, 0);
          v40 = v64;
          free(v36);
          v36 = 0;
          if (!v39 || v40 != v38)
          {
            goto LABEL_32;
          }

          LOBYTE(v64) = 75;
          if (!_ETLResponseRingBuffer)
          {
            TelephonyUtilRingBufferInitialize();
          }

          v36 = 0;
          if (!ETLFindMatchingResponseUsingBuffer(a1, v57, &_ETLResponseRingBuffer, &v64, a3) || v64 != 75)
          {
            goto LABEL_32;
          }

          v64 = 0;
          v63 = -21846;
          v62 = -21846;
          if (ETLSubsysParseHeader(v57, &v63, &v62, &v64, v41, v42, v43, v44))
          {
            if (v63 == 253)
            {
              if (v62 == 68)
              {
                if (DWORD2(v57[0]) - v64 <= 1)
                {
                  _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Received response has only %u bytes, need %u bytes\n", v45, v46, v47, v48, v49, v50, DWORD2(v57[0]) - v64);
                }

                else
                {
                  if (*(*&v57[0] + v64) == 1)
                  {
                    v51 = DWORD2(v57[0]) - (v64 + 2);
                    if (v51 <= 1)
                    {
                      _ETLDebugPrint("ETLMaverickParseSetBBModeResponse", "Received response has only %u bytes, need %u\n", v45, v46, v47, v48, v49, v50, v51);
                    }

                    else
                    {
                      v52 = *(*&v57[0] + v64 + 2);
                      if (a2 == v52)
                      {
                        v36 = 1;
                        goto LABEL_32;
                      }

                      _ETLDebugPrint("ETLMaverickParseSetBBModeResponse", "Received mode %d doesn't match with %d\n", v45, v46, v47, v48, v49, v50, v52);
                    }

LABEL_31:
                    v36 = 0;
                    goto LABEL_32;
                  }

                  _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Received response with failure status [%d]\n", v45, v46, v47, v48, v49, v50, *(*&v57[0] + v64));
                }

                goto LABEL_39;
              }

              _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v45, v46, v47, v48, v49, v50, v62);
            }

            else
            {
              _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", v45, v46, v47, v48, v49, v50, v63);
            }
          }

          _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Failed to parse BSP response header\n", v45, v46, v47, v48, v49, v50, v56);
LABEL_39:
          v53 = "ETLMaverickParseSetBBModeResponse";
          v54 = "Failed on parsing BSP Ext Response.\n";
          goto LABEL_30;
        }

        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v24, v25, v26, v27, v28, v29, v56);
      }

      v53 = "ETLMaverickAddBSPExtCommandSetHeader";
      v54 = "Failed on creating BSP Command Heder\n";
    }

    else
    {
      v53 = "ETLMaverickSetBBMode";
      v54 = "Failed to create command frame\n";
    }

LABEL_30:
    _ETLDebugPrint(v53, v54, v11, v12, v13, v14, v15, v16, v56);
    goto LABEL_31;
  }

  _ETLDebugPrint("ETLMaverickSetBBMode", "Transport cannot be NULL\n", a3, a4, a5, a6, a7, a8, v56);
  return 0;
}

uint64_t ETLMaverickGetAutoAnswerBSP(void *a1, _WORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && a2)
  {
    v58 = 0u;
    v59 = 0u;
    v60 = 0;
    memset(v56, 0, sizeof(v56));
    v57 = 0;
    if (HDLCFrameCreateUplink())
    {
      FreeSpace = HDLCFrameGetFreeSpace();
      if (FreeSpace < 4)
      {
        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v18, v19, v20, v21, v22, v23, FreeSpace);
      }

      else
      {
        v63 = 4521291;
        if (HDLCFrameInject())
        {
          if (!HDLCFrameGetFreeSpace())
          {
            _ETLDebugPrint("ETLMaverickAddBSPExtCommandGetHeader", "Not enough room, need %zu, have %u\n", v30, v31, v32, v33, v34, v35, 2);
            goto LABEL_31;
          }

          HDLCFrameInjectUnsignedChar();
          v36 = malloc((2 * DWORD2(v58) + 32));
          if (!v36)
          {
LABEL_32:
            HDLCFrameFree();
            HDLCFrameFree();
            return v36;
          }

          v37 = HDLCFrameEncode();
          if (!v37)
          {
            goto LABEL_35;
          }

          v38 = v37;
          v63 = -1431655766;
          if ((_ETLDebugFlags & 2) != 0)
          {
            off_2A18A5818(&str_3, 0, v36, v37);
          }

          if (!*a1)
          {
LABEL_35:
            free(v36);
            goto LABEL_31;
          }

          v39 = (*a1)(a1, v36, v38, &v63, 1, a3, 0);
          v40 = v63;
          free(v36);
          v36 = 0;
          if (!v39 || v40 != v38)
          {
            goto LABEL_32;
          }

          LOBYTE(v63) = 75;
          if (!_ETLResponseRingBuffer)
          {
            TelephonyUtilRingBufferInitialize();
          }

          v36 = 0;
          if (!ETLFindMatchingResponseUsingBuffer(a1, v56, &_ETLResponseRingBuffer, &v63, a3) || v63 != 75)
          {
            goto LABEL_32;
          }

          v63 = 0;
          v62 = -21846;
          v61 = -21846;
          if (ETLSubsysParseHeader(v56, &v62, &v61, &v63, v41, v42, v43, v44))
          {
            if (v62 == 253)
            {
              if (v61 == 68)
              {
                if (DWORD2(v56[0]) - v63 <= 1)
                {
                  _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Received response has only %u bytes, need %u bytes\n", v45, v46, v47, v48, v49, v50, DWORD2(v56[0]) - v63);
                }

                else
                {
                  if (*(*&v56[0] + v63) == 1)
                  {
                    v51 = DWORD2(v56[0]) - (v63 + 2);
                    if (v51 > 1)
                    {
                      *a2 = *(*&v56[0] + v63 + 2);
                      v36 = 1;
                      goto LABEL_32;
                    }

                    _ETLDebugPrint("ETLMaverickParseGetAutoAnswerResponse", "Received response has only %u bytes, need %u\n", v45, v46, v47, v48, v49, v50, v51);
LABEL_31:
                    v36 = 0;
                    goto LABEL_32;
                  }

                  _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Received response with failure status [%d]\n", v45, v46, v47, v48, v49, v50, *(*&v56[0] + v63));
                }

                goto LABEL_39;
              }

              _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v45, v46, v47, v48, v49, v50, v61);
            }

            else
            {
              _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", v45, v46, v47, v48, v49, v50, v62);
            }
          }

          _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Failed to parse BSP response header\n", v45, v46, v47, v48, v49, v50, v55);
LABEL_39:
          v52 = "ETLMaverickParseGetAutoAnswerResponse";
          v53 = "Failed on parsing BSP Ext Response.\n";
          goto LABEL_30;
        }

        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v24, v25, v26, v27, v28, v29, v55);
      }

      v52 = "ETLMaverickAddBSPExtCommandGetHeader";
      v53 = "Failed on creating BSP Command Heder\n";
    }

    else
    {
      v52 = "ETLMaverickGetAutoAnswerBSP";
      v53 = "Failed to create command frame\n";
    }

LABEL_30:
    _ETLDebugPrint(v52, v53, v11, v12, v13, v14, v15, v16, v55);
    goto LABEL_31;
  }

  _ETLDebugPrint("ETLMaverickGetAutoAnswerBSP", "Transport or autoAnswer memory cannot be NULL\n", a3, a4, a5, a6, a7, a8, v55);
  return 0;
}

uint64_t ETLMaverickSetAutoAnswerBSP(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v59 = 0u;
    v60 = 0u;
    v61 = 0;
    memset(v57, 0, sizeof(v57));
    v58 = 0;
    if (HDLCFrameCreateUplink())
    {
      FreeSpace = HDLCFrameGetFreeSpace();
      if (FreeSpace < 4)
      {
        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v18, v19, v20, v21, v22, v23, FreeSpace);
      }

      else
      {
        v64 = 4521291;
        if (HDLCFrameInject())
        {
          if (HDLCFrameGetFreeSpace() <= 1)
          {
            _ETLDebugPrint("ETLMaverickAddBSPExtCommandSetHeader", "Not enough room, need %zu, have %u\n", v30, v31, v32, v33, v34, v35, 2);
            goto LABEL_31;
          }

          HDLCFrameInjectUnsignedChar();
          HDLCFrameInjectUnsignedChar();
          v36 = malloc((2 * DWORD2(v59) + 32));
          if (!v36)
          {
LABEL_32:
            HDLCFrameFree();
            HDLCFrameFree();
            return v36;
          }

          v37 = HDLCFrameEncode();
          if (!v37)
          {
            goto LABEL_35;
          }

          v38 = v37;
          v64 = -1431655766;
          if ((_ETLDebugFlags & 2) != 0)
          {
            off_2A18A5818(&str_3, 0, v36, v37);
          }

          if (!*a1)
          {
LABEL_35:
            free(v36);
            goto LABEL_31;
          }

          v39 = (*a1)(a1, v36, v38, &v64, 1, a3, 0);
          v40 = v64;
          free(v36);
          v36 = 0;
          if (!v39 || v40 != v38)
          {
            goto LABEL_32;
          }

          LOBYTE(v64) = 75;
          if (!_ETLResponseRingBuffer)
          {
            TelephonyUtilRingBufferInitialize();
          }

          v36 = 0;
          if (!ETLFindMatchingResponseUsingBuffer(a1, v57, &_ETLResponseRingBuffer, &v64, a3) || v64 != 75)
          {
            goto LABEL_32;
          }

          v64 = 0;
          v63 = -21846;
          v62 = -21846;
          if (ETLSubsysParseHeader(v57, &v63, &v62, &v64, v41, v42, v43, v44))
          {
            if (v63 == 253)
            {
              if (v62 == 68)
              {
                if (DWORD2(v57[0]) - v64 <= 1)
                {
                  _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Received response has only %u bytes, need %u bytes\n", v45, v46, v47, v48, v49, v50, DWORD2(v57[0]) - v64);
                }

                else
                {
                  if (*(*&v57[0] + v64) == 1)
                  {
                    v51 = v64 + 2;
                    v52 = DWORD2(v57[0]) - (v64 + 2);
                    if (v52 <= 1)
                    {
                      _ETLDebugPrint("ETLMaverickParseSetAutoAnswerBSPResponse", "Received response has only %u bytes, need %u\n", v45, v46, v47, v48, v49, v50, v52);
                    }

                    else
                    {
                      if (*(*&v57[0] + v51) == a2)
                      {
                        v36 = 1;
                        goto LABEL_32;
                      }

                      _ETLDebugPrint("ETLMaverickParseSetAutoAnswerBSPResponse", "Received mode %d doesn't match with %d\n", v45, v46, v47, v48, v49, v50, *(*&v57[0] + v51));
                    }

LABEL_31:
                    v36 = 0;
                    goto LABEL_32;
                  }

                  _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Received response with failure status [%d]\n", v45, v46, v47, v48, v49, v50, *(*&v57[0] + v64));
                }

                goto LABEL_39;
              }

              _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v45, v46, v47, v48, v49, v50, v62);
            }

            else
            {
              _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", v45, v46, v47, v48, v49, v50, v63);
            }
          }

          _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Failed to parse BSP response header\n", v45, v46, v47, v48, v49, v50, v56);
LABEL_39:
          v53 = "ETLMaverickParseSetAutoAnswerBSPResponse";
          v54 = "Failed on parsing BSP Ext Response.\n";
          goto LABEL_30;
        }

        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v24, v25, v26, v27, v28, v29, v56);
      }

      v53 = "ETLMaverickAddBSPExtCommandSetHeader";
      v54 = "Failed on creating BSP Command Heder\n";
    }

    else
    {
      v53 = "ETLMaverickSetAutoAnswerBSP";
      v54 = "Failed to create command frame\n";
    }

LABEL_30:
    _ETLDebugPrint(v53, v54, v11, v12, v13, v14, v15, v16, v56);
    goto LABEL_31;
  }

  _ETLDebugPrint("ETLMaverickSetAutoAnswerBSP", "Transport cannot be NULL\n", a3, a4, a5, a6, a7, a8, v56);
  return 0;
}

uint64_t ETLMaverickGetNasSec(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && a2)
  {
    v59 = 0u;
    v60 = 0u;
    v61 = 0;
    memset(v57, 0, sizeof(v57));
    v58 = 0;
    if (HDLCFrameCreateUplink())
    {
      FreeSpace = HDLCFrameGetFreeSpace();
      if (FreeSpace < 4)
      {
        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v18, v19, v20, v21, v22, v23, FreeSpace);
      }

      else
      {
        v64 = 4521291;
        if (HDLCFrameInject())
        {
          if (!HDLCFrameGetFreeSpace())
          {
            _ETLDebugPrint("ETLMaverickAddBSPExtCommandGetHeader", "Not enough room, need %zu, have %u\n", v30, v31, v32, v33, v34, v35, 2);
            goto LABEL_32;
          }

          HDLCFrameInjectUnsignedChar();
          v36 = malloc((2 * DWORD2(v59) + 32));
          if (!v36)
          {
LABEL_33:
            HDLCFrameFree();
            HDLCFrameFree();
            return v36;
          }

          v37 = HDLCFrameEncode();
          if (!v37)
          {
            goto LABEL_36;
          }

          v38 = v37;
          v64 = -1431655766;
          if ((_ETLDebugFlags & 2) != 0)
          {
            off_2A18A5818(&str_3, 0, v36, v37);
          }

          if (!*a1)
          {
LABEL_36:
            free(v36);
            goto LABEL_32;
          }

          v39 = (*a1)(a1, v36, v38, &v64, 1, a3, 0);
          v40 = v64;
          free(v36);
          v36 = 0;
          if (!v39 || v40 != v38)
          {
            goto LABEL_33;
          }

          LOBYTE(v64) = 75;
          if (!_ETLResponseRingBuffer)
          {
            TelephonyUtilRingBufferInitialize();
          }

          v36 = 0;
          if (!ETLFindMatchingResponseUsingBuffer(a1, v57, &_ETLResponseRingBuffer, &v64, a3) || v64 != 75)
          {
            goto LABEL_33;
          }

          v64 = 0;
          v63 = -21846;
          v62 = -21846;
          if (ETLSubsysParseHeader(v57, &v63, &v62, &v64, v41, v42, v43, v44))
          {
            if (v63 == 253)
            {
              if (v62 == 68)
              {
                if (DWORD2(v57[0]) - v64 <= 1)
                {
                  _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Received response has only %u bytes, need %u bytes\n", v45, v46, v47, v48, v49, v50, DWORD2(v57[0]) - v64);
                }

                else
                {
                  if (*(*&v57[0] + v64) == 1)
                  {
                    v51 = DWORD2(v57[0]) - (v64 + 2);
                    if (v51 <= 1)
                    {
                      _ETLDebugPrint("ETLMaverickParseGetNasSecResponse", "Received response has only %u bytes, need %u\n", v45, v46, v47, v48, v49, v50, v51);
                    }

                    else
                    {
                      v52 = (*&v57[0] + v64 + 2);
                      if (*v52 == 10)
                      {
                        *a2 = v52[1];
                        v36 = 1;
                        goto LABEL_33;
                      }

                      _ETLDebugPrint("ETLMaverickParseGetNasSecResponse", "Expected NAS Sec ID, %u, does not match with read ID, %u\n", v45, v46, v47, v48, v49, v50, 11);
                    }

LABEL_32:
                    v36 = 0;
                    goto LABEL_33;
                  }

                  _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Received response with failure status [%d]\n", v45, v46, v47, v48, v49, v50, *(*&v57[0] + v64));
                }

                goto LABEL_40;
              }

              _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v45, v46, v47, v48, v49, v50, v62);
            }

            else
            {
              _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", v45, v46, v47, v48, v49, v50, v63);
            }
          }

          _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Failed to parse BSP response header\n", v45, v46, v47, v48, v49, v50, v56);
LABEL_40:
          v53 = "ETLMaverickParseGetNasSecResponse";
          v54 = "Failed on parsing BSP Ext Response.\n";
          goto LABEL_31;
        }

        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v24, v25, v26, v27, v28, v29, v56);
      }

      v53 = "ETLMaverickAddBSPExtCommandGetHeader";
      v54 = "Failed on creating BSP Command Heder\n";
    }

    else
    {
      v53 = "ETLMaverickGetNasSec";
      v54 = "Failed to create command frame\n";
    }

LABEL_31:
    _ETLDebugPrint(v53, v54, v11, v12, v13, v14, v15, v16, v56);
    goto LABEL_32;
  }

  _ETLDebugPrint("ETLMaverickGetNasSec", "Transport or nasStatus memory cannot be NULL\n", a3, a4, a5, a6, a7, a8, v56);
  return 0;
}

uint64_t ETLMaverickSetNasSec(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v59 = 0u;
    v60 = 0u;
    v61 = 0;
    memset(v57, 0, sizeof(v57));
    v58 = 0;
    if (HDLCFrameCreateUplink())
    {
      FreeSpace = HDLCFrameGetFreeSpace();
      if (FreeSpace < 4)
      {
        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v18, v19, v20, v21, v22, v23, FreeSpace);
      }

      else
      {
        v64 = 4521291;
        if (HDLCFrameInject())
        {
          if (HDLCFrameGetFreeSpace() <= 1)
          {
            _ETLDebugPrint("ETLMaverickAddBSPExtCommandSetHeader", "Not enough room, need %zu, have %u\n", v30, v31, v32, v33, v34, v35, 2);
            goto LABEL_32;
          }

          HDLCFrameInjectUnsignedChar();
          HDLCFrameInjectUnsignedChar();
          v36 = malloc((2 * DWORD2(v59) + 32));
          if (!v36)
          {
LABEL_33:
            HDLCFrameFree();
            HDLCFrameFree();
            return v36;
          }

          v37 = HDLCFrameEncode();
          if (!v37)
          {
            goto LABEL_36;
          }

          v38 = v37;
          v64 = -1431655766;
          if ((_ETLDebugFlags & 2) != 0)
          {
            off_2A18A5818(&str_3, 0, v36, v37);
          }

          if (!*a1)
          {
LABEL_36:
            free(v36);
            goto LABEL_32;
          }

          v39 = (*a1)(a1, v36, v38, &v64, 1, a3, 0);
          v40 = v64;
          free(v36);
          v36 = 0;
          if (!v39 || v40 != v38)
          {
            goto LABEL_33;
          }

          LOBYTE(v64) = 75;
          if (!_ETLResponseRingBuffer)
          {
            TelephonyUtilRingBufferInitialize();
          }

          v36 = 0;
          if (!ETLFindMatchingResponseUsingBuffer(a1, v57, &_ETLResponseRingBuffer, &v64, a3) || v64 != 75)
          {
            goto LABEL_33;
          }

          v64 = 0;
          v63 = -21846;
          v62 = -21846;
          if (ETLSubsysParseHeader(v57, &v63, &v62, &v64, v41, v42, v43, v44))
          {
            if (v63 == 253)
            {
              if (v62 == 68)
              {
                if (DWORD2(v57[0]) - v64 <= 1)
                {
                  _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Received response has only %u bytes, need %u bytes\n", v45, v46, v47, v48, v49, v50, DWORD2(v57[0]) - v64);
                }

                else
                {
                  if (*(*&v57[0] + v64) == 1)
                  {
                    v51 = DWORD2(v57[0]) - (v64 + 2);
                    if (v51 <= 1)
                    {
                      _ETLDebugPrint("ETLMaverickParseSetNasSecResponse", "Received response has only %u bytes, need %u\n", v45, v46, v47, v48, v49, v50, v51);
                    }

                    else
                    {
                      v52 = (*&v57[0] + v64 + 2);
                      if (*v52 == 11)
                      {
                        if (v52[1] == a2)
                        {
                          v36 = 1;
                          goto LABEL_33;
                        }

                        _ETLDebugPrint("ETLMaverickParseSetNasSecResponse", "Expected NAS Sec status, %u, does not match with read status, %u\n", v45, v46, v47, v48, v49, v50, a2);
                      }

                      else
                      {
                        _ETLDebugPrint("ETLMaverickParseSetNasSecResponse", "Expected NAS Sec ID, %u, does not match with read ID, %u\n", v45, v46, v47, v48, v49, v50, 11);
                      }
                    }

LABEL_32:
                    v36 = 0;
                    goto LABEL_33;
                  }

                  _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Received response with failure status [%d]\n", v45, v46, v47, v48, v49, v50, *(*&v57[0] + v64));
                }

                goto LABEL_40;
              }

              _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v45, v46, v47, v48, v49, v50, v62);
            }

            else
            {
              _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", v45, v46, v47, v48, v49, v50, v63);
            }
          }

          _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Failed to parse BSP response header\n", v45, v46, v47, v48, v49, v50, v56);
LABEL_40:
          v53 = "ETLMaverickParseSetNasSecResponse";
          v54 = "Failed on parsing BSP Ext Response.\n";
          goto LABEL_31;
        }

        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v24, v25, v26, v27, v28, v29, v56);
      }

      v53 = "ETLMaverickAddBSPExtCommandSetHeader";
      v54 = "Failed on creating BSP Command Heder\n";
    }

    else
    {
      v53 = "ETLMaverickSetNasSec";
      v54 = "Failed to create command frame\n";
    }

LABEL_31:
    _ETLDebugPrint(v53, v54, v11, v12, v13, v14, v15, v16, v56);
    goto LABEL_32;
  }

  _ETLDebugPrint("ETLMaverickSetNasSec", "Transport cannot be NULL\n", a3, a4, a5, a6, a7, a8, v56);
  return 0;
}

void *ETLMaverickGetBandlock(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), _WORD *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 && a1 && a3)
  {
    v53 = 0u;
    v54 = 0u;
    v55 = 0;
    memset(v51, 0, sizeof(v51));
    v52 = 0;
    if (HDLCFrameCreateUplink())
    {
      FreeSpace = HDLCFrameGetFreeSpace();
      if (FreeSpace < 4)
      {
        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v19, v20, v21, v22, v23, v24, FreeSpace);
      }

      else
      {
        v56 = 4521291;
        if (HDLCFrameInject())
        {
          if (HDLCFrameGetFreeSpace())
          {
            HDLCFrameInjectUnsignedChar();
            BandLockResponse = malloc((2 * DWORD2(v53) + 32));
            if (!BandLockResponse)
            {
LABEL_27:
              HDLCFrameFree();
              HDLCFrameFree();
              return BandLockResponse;
            }

            v38 = HDLCFrameEncode();
            if (v38)
            {
              v39 = v38;
              v56 = -1431655766;
              if ((_ETLDebugFlags & 2) != 0)
              {
                off_2A18A5818(&str_3, 0, BandLockResponse, v38);
              }

              if (*a1)
              {
                v40 = (*a1)(a1, BandLockResponse, v39, &v56, 1, a4, 0);
                v41 = v56;
                free(BandLockResponse);
                BandLockResponse = 0;
                if (v40 && v41 == v39)
                {
                  LOBYTE(v56) = 75;
                  if (!_ETLResponseRingBuffer)
                  {
                    TelephonyUtilRingBufferInitialize();
                  }

                  BandLockResponse = 0;
                  if (ETLFindMatchingResponseUsingBuffer(a1, v51, &_ETLResponseRingBuffer, &v56, a4) && v56 == 75)
                  {
                    BandLockResponse = ETLMaverickParseGetBandLockResponse(v51, a2, a3, v42, v43, v44, v45, v46);
                  }
                }

                goto LABEL_27;
              }
            }

            free(BandLockResponse);
          }

          else
          {
            _ETLDebugPrint("ETLMaverickAddBSPExtCommandGetHeader", "Not enough room, need %zu, have %u\n", v31, v32, v33, v34, v35, v36, 2);
          }

LABEL_26:
          BandLockResponse = 0;
          goto LABEL_27;
        }

        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v25, v26, v27, v28, v29, v30, v50);
      }

      v47 = "ETLMaverickAddBSPExtCommandGetHeader";
      v48 = "Failed on creating BSP Command Heder\n";
    }

    else
    {
      v47 = "ETLMaverickGetBandlock";
      v48 = "Failed to create command frame\n";
    }

    _ETLDebugPrint(v47, v48, v12, v13, v14, v15, v16, v17, v50);
    goto LABEL_26;
  }

  _ETLDebugPrint("ETLMaverickGetBandlock", "Transport or bandLock or errorCode memory cannot be NULL\n", a3, a4, a5, a6, a7, a8, v50);
  return 0;
}

uint64_t ETLMaverickParseGetBandLockResponse(int **a1, _WORD *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 2);
  v9 = v8 - 4;
  if (v8 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a3, a4, a5, a6, a7, a8, *(a1 + 2));
LABEL_13:
    _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Failed to parse BSP response header\n", v15, v16, v17, v18, v19, v20, v27);
LABEL_14:
    _ETLDebugPrint("ETLMaverickParseGetBandLockResponse", "Failed on parsing BSP Ext Response.\n", v21, v22, v23, v24, v25, v26, v28);
    return 0;
  }

  v10 = *a1;
  v11 = **a1;
  if (v11 != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, **a1);
    goto LABEL_13;
  }

  if (BYTE1(v11) != 253)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, BYTE1(v11));
    goto LABEL_13;
  }

  v12 = HIWORD(v11);
  if (v12 != 68)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, v12);
    goto LABEL_13;
  }

  if (v9 <= 1)
  {
    _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Received response has only %u bytes, need %u bytes\n", a3, a4, a5, a6, a7, a8, v9);
    goto LABEL_14;
  }

  if (*(v10 + 2) != 1)
  {
    _ETLDebugPrint("ETLMaverickParseBSPExtResponse", "Received response with failure status [%d]\n", a3, a4, a5, a6, a7, a8, *(v10 + 2));
    goto LABEL_14;
  }

  v13 = v8 - 6;
  if (v13 <= 0x19)
  {
    _ETLDebugPrint("ETLMaverickParseGetBandLockResponse", "Received response has only %u bytes, need %u\n", a3, a4, a5, a6, a7, a8, v13);
    return 0;
  }

  else
  {
    *a2 = *(v10 + 3);
    *a3 = *(v10 + 1);
    a3[1] = *(v10 + 2);
    a3[2] = *(v10 + 3);
    return 1;
  }
}

uint64_t ETLMaverickSetBandlock(uint64_t (**a1)(void, uint64_t, uint64_t, __int128 *, uint64_t, uint64_t, void), _WORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v99 = 0u;
    v100 = 0u;
    v101 = 0;
    memset(v97, 0, sizeof(v97));
    v98 = 0;
    if (HDLCFrameCreateUplink())
    {
      v102 = *a3;
      v103 = *(a3 + 16);
      FreeSpace = HDLCFrameGetFreeSpace();
      if (FreeSpace < 4)
      {
        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v19, v20, v21, v22, v23, v24, FreeSpace);
      }

      else
      {
        if (HDLCFrameInject())
        {
          if (HDLCFrameGetFreeSpace() <= 1)
          {
            _ETLDebugPrint("ETLMaverickSetBandlockCommand", "Not enough room, need %zu, have %u\n", v31, v32, v33, v34, v35, v36, 2);
          }

          else
          {
            HDLCFrameInjectUnsignedChar();
            HDLCFrameInject();
            v37 = malloc((2 * DWORD2(v99) + 32));
            if (!v37)
            {
LABEL_33:
              HDLCFrameFree();
              HDLCFrameFree();
              return v37;
            }

            v38 = HDLCFrameEncode();
            if (!v38)
            {
              goto LABEL_36;
            }

            v39 = v38;
            LODWORD(v102) = -1431655766;
            if ((_ETLDebugFlags & 2) != 0)
            {
              off_2A18A5818(&str_3, 0, v37, v38);
            }

            if (*a1)
            {
              v40 = (*a1)(a1, v37, v39, &v102, 1, a4, 0);
              v41 = v102;
              free(v37);
              v37 = 0;
              if (!v40 || v41 != v39)
              {
                goto LABEL_33;
              }

              LOBYTE(v102) = 75;
              if (!_ETLResponseRingBuffer)
              {
                TelephonyUtilRingBufferInitialize();
              }

              v37 = 0;
              if (!ETLFindMatchingResponseUsingBuffer(a1, v97, &_ETLResponseRingBuffer, &v102, a4) || v102 != 75)
              {
                goto LABEL_33;
              }

              v95 = *a3;
              v96 = *(a3 + 16);
              v102 = 0uLL;
              v103 = 0;
              ETLMaverickParseGetBandLockResponse(v97, a2, &v102, v42, v43, v44, v45, v46);
              if (!*a2)
              {
                v53 = v102 == v95 && *(&v102 + 1) == *(&v95 + 1);
                if (v53 && v103 == v96)
                {
                  v37 = 1;
                  goto LABEL_33;
                }
              }

              _ETLDebugPrint("ETLMaverickParseSetBandLockResponse", "Expected locked band values are different read back locked band values.\n", v47, v48, v49, v50, v51, v52, v94);
              _ETLDebugPrint("ETLMaverickParseSetBandLockResponse", "\tExpected GWC: 0x%016llx\n", v55, v56, v57, v58, v59, v60, v95);
              _ETLDebugPrint("ETLMaverickParseSetBandLockResponse", "\tExpected LTE: 0x%016llx\n", v61, v62, v63, v64, v65, v66, *(&v95 + 1));
              _ETLDebugPrint("ETLMaverickParseSetBandLockResponse", "\tExpected TDS: 0x%016llx\n", v67, v68, v69, v70, v71, v72, v96);
              _ETLDebugPrint("ETLMaverickParseSetBandLockResponse", "\tRead back GWC: 0x%016llx\n", v73, v74, v75, v76, v77, v78, v102);
              _ETLDebugPrint("ETLMaverickParseSetBandLockResponse", "\tRead back LTE: 0x%016llx\n", v79, v80, v81, v82, v83, v84, *(&v102 + 1));
              _ETLDebugPrint("ETLMaverickParseSetBandLockResponse", "\tRead back TDS: 0x%016llx\n", v85, v86, v87, v88, v89, v90, v103);
            }

            else
            {
LABEL_36:
              free(v37);
            }
          }

LABEL_32:
          v37 = 0;
          goto LABEL_33;
        }

        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v25, v26, v27, v28, v29, v30, v94);
      }

      v91 = "ETLMaverickSetBandlockCommand";
      v92 = "Failed on creating BSP Command Heder\n";
    }

    else
    {
      v91 = "ETLMaverickSetBandlock";
      v92 = "Failed to create command frame\n";
    }

    _ETLDebugPrint(v91, v92, v12, v13, v14, v15, v16, v17, v94);
    goto LABEL_32;
  }

  _ETLDebugPrint("ETLMaverickSetBandlock", "Transport cannot be NULL\n", a3, a4, a5, a6, a7, a8, v94);
  return 0;
}

uint64_t ETLMaverickGetBandSupport(void *a1, _WORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v50 = 0u;
    v51 = 0u;
    v52 = 0;
    memset(v48, 0, sizeof(v48));
    v49 = 0;
    if (HDLCFrameCreateUplink())
    {
      FreeSpace = HDLCFrameGetFreeSpace();
      if (FreeSpace < 4)
      {
        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v20, v21, v22, v23, v24, v25, FreeSpace);
        goto LABEL_30;
      }

      v53 = 3210059;
      if (HDLCFrameInject())
      {
        v26 = malloc((2 * DWORD2(v50) + 32));
        if (!v26)
        {
LABEL_31:
          HDLCFrameFree();
          HDLCFrameFree();
          return v26;
        }

        v27 = HDLCFrameEncode();
        if (!v27)
        {
          goto LABEL_33;
        }

        v28 = v27;
        v53 = -1431655766;
        if ((_ETLDebugFlags & 2) != 0)
        {
          off_2A18A5818(&str_3, 0, v26, v27);
        }

        if (!*a1)
        {
LABEL_33:
          free(v26);
          goto LABEL_30;
        }

        v29 = (*a1)(a1, v26, v28, &v53, 1, a5, 0);
        v30 = v53;
        free(v26);
        v26 = 0;
        if (!v29 || v30 != v28)
        {
          goto LABEL_31;
        }

        LOBYTE(v53) = 75;
        if (!_ETLResponseRingBuffer)
        {
          TelephonyUtilRingBufferInitialize();
        }

        v26 = 0;
        if (!ETLFindMatchingResponseUsingBuffer(a1, v48, &_ETLResponseRingBuffer, &v53, a5) || v53 != 75)
        {
          goto LABEL_31;
        }

        v37 = (DWORD2(v48[0]) - 4);
        if (DWORD2(v48[0]) < 4)
        {
          _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", v31, v32, v33, v34, v35, v36, DWORD2(v48[0]));
        }

        else
        {
          v38 = *&v48[0];
          v39 = **&v48[0];
          if (**&v48[0] == 75)
          {
            if (BYTE1(v39) == 251)
            {
              v40 = HIWORD(v39);
              if (v40 == 48)
              {
                if (v37 > 1)
                {
                  v41 = *(*&v48[0] + 4);
                  *a2 = v41;
                  if (v41 != 1)
                  {
                    _ETLDebugPrint("ETLMaverickParseGetBandSupportResponse", "Error Code Returned: %d\n", v31, v32, v33, v34, v35, v36, v41);
                  }

                  if (v37 > 0x2D)
                  {
                    v42 = *(v38 + 6);
                    *(a3 + 14) = *(v38 + 20);
                    *a3 = v42;
                    v43 = *(v38 + 28);
                    *(a4 + 14) = *(v38 + 42);
                    *a4 = v43;
                    v26 = 1;
                    goto LABEL_31;
                  }
                }

                _ETLDebugPrint("ETLMaverickParseGetBandSupportResponse", "Received response has only %u bytes, need %u\n", v31, v32, v33, v34, v35, v36, v37);
LABEL_30:
                v26 = 0;
                goto LABEL_31;
              }

              _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v31, v32, v33, v34, v35, v36, v40);
            }

            else
            {
              _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", v31, v32, v33, v34, v35, v36, BYTE1(v39));
            }
          }

          else
          {
            _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", v31, v32, v33, v34, v35, v36, **&v48[0]);
          }
        }

        v44 = "ETLMaverickParseGetBandSupportResponse";
        v45 = "Failed on parsing BSP Ext Response.\n";
      }

      else
      {
        v44 = "ETLSubsysAddHeaderInternal";
        v45 = "Failed to inject\n";
      }
    }

    else
    {
      v44 = "ETLMaverickGetBandSupport";
      v45 = "Failed to create command frame\n";
    }

    _ETLDebugPrint(v44, v45, v13, v14, v15, v16, v17, v18, v47);
    goto LABEL_30;
  }

  _ETLDebugPrint("ETLMaverickGetBandSupport", "Transport cannot be NULL\n", a3, a4, a5, a6, a7, a8, v47);
  return 0;
}

void *ETLMaverickGetGPIOExt(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, _BYTE *a6, uint64_t a7, uint64_t a8)
{
  if (a1 && a3 && a4 && a5 && a6)
  {
    v41 = 0u;
    v42 = 0u;
    v43 = 0;
    memset(v39, 0, sizeof(v39));
    v40 = 0;
    if (HDLCFrameCreateUplink())
    {
      FreeSpace = HDLCFrameGetFreeSpace();
      if (FreeSpace < 4)
      {
        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v22, v23, v24, v25, v26, v27, FreeSpace);
        goto LABEL_27;
      }

      v44 = 3013963;
      if (HDLCFrameInject())
      {
        if (HDLCFrameInjectUnsignedShort())
        {
          GPIOExtResponse = malloc((2 * DWORD2(v41) + 32));
          if (!GPIOExtResponse)
          {
LABEL_28:
            HDLCFrameFree();
            HDLCFrameFree();
            return GPIOExtResponse;
          }

          v29 = HDLCFrameEncode();
          if (v29)
          {
            v30 = v29;
            v44 = -1431655766;
            if ((_ETLDebugFlags & 2) != 0)
            {
              off_2A18A5818(&str_3, 0, GPIOExtResponse, v29);
            }

            if (*a1)
            {
              v31 = (*a1)(a1, GPIOExtResponse, v30, &v44, 1, a7, 0);
              v38 = v44;
              free(GPIOExtResponse);
              GPIOExtResponse = 0;
              if (v31 && v38 == v30)
              {
                LOBYTE(v44) = 75;
                if (!_ETLResponseRingBuffer)
                {
                  TelephonyUtilRingBufferInitialize();
                }

                GPIOExtResponse = 0;
                if (ETLFindMatchingResponseUsingBuffer(a1, v39, &_ETLResponseRingBuffer, &v44, a7) && v44 == 75)
                {
                  GPIOExtResponse = ETLMaverickParseGetGPIOExtResponse(v39, a2, a3, a4, a5, a6, v32, v33);
                }
              }

              goto LABEL_28;
            }
          }

          free(GPIOExtResponse);
        }

LABEL_27:
        GPIOExtResponse = 0;
        goto LABEL_28;
      }

      v34 = "ETLSubsysAddHeaderInternal";
      v35 = "Failed to inject\n";
    }

    else
    {
      v34 = "ETLMaverickGetGPIOExt";
      v35 = "Failed to create command frame\n";
    }

    _ETLDebugPrint(v34, v35, v15, v16, v17, v18, v19, v20, v37);
    goto LABEL_27;
  }

  _ETLDebugPrint("ETLMaverickGetGPIOExt", "Transport, gpioState, direction, value, or function memory cannot be NULL\n", a3, a4, a5, a6, a7, a8, v37);
  return 0;
}

uint64_t ETLMaverickParseGetGPIOExtResponse(int **a1, uint64_t a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, _BYTE *a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 2);
  v9 = v8 - 4;
  if (v8 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a3, a4, a5, a6, a7, a8, *(a1 + 2));
LABEL_13:
    _ETLDebugPrint("ETLMaverickParseGetGPIOExtResponse", "Failed to parse BSP response header\n", v14, v15, v16, v17, v18, v19, v20);
    return 0;
  }

  v10 = *a1;
  v11 = **a1;
  if (v11 != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, **a1);
    goto LABEL_13;
  }

  if (BYTE1(v11) != 253)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, BYTE1(v11));
    goto LABEL_13;
  }

  v12 = HIWORD(v11);
  if (v12 != 45)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, v12);
    goto LABEL_13;
  }

  if (v9 <= 5)
  {
    _ETLDebugPrint("ETLMaverickParseGetGPIOExtResponse", "Received response has only %u bytes, need %u\n", a3, a4, a5, a6, a7, a8, v9);
    return 0;
  }

  else if (*(v10 + 2) == 1)
  {
    if (*(v10 + 3) == a2)
    {
      *a3 = *(v10 + 8);
      *a4 = *(v10 + 9);
      *a5 = *(v10 + 10);
      *a6 = *(v10 + 11);
      return 1;
    }

    else
    {
      v21 = *(v10 + 3);
      _ETLDebugPrint("ETLMaverickParseGetGPIOExtResponse", "Expected gpio id, %u, but got %u\n", a3, a4, a5, a6, a7, a8, a2);
      return 0;
    }
  }

  else
  {
    _ETLDebugPrint("ETLMaverickParseGetGPIOExtResponse", "Received response with failure status [%d]\n", a3, a4, a5, a6, a7, a8, *(v10 + 2));
    return 0;
  }
}

uint64_t ETLMaverickSetGPIOExt(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    memset(v37, 0, sizeof(v37));
    v38 = 0;
    memset(v35, 0, sizeof(v35));
    v36 = 0;
    if (HDLCFrameCreateUplink())
    {
      FreeSpace = HDLCFrameGetFreeSpace();
      if (FreeSpace < 4)
      {
        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v17, v18, v19, v20, v21, v22, FreeSpace);
        goto LABEL_17;
      }

      v39 = 3079499;
      if (HDLCFrameInject())
      {
        if (HDLCFrameInjectUnsignedShort() && HDLCFrameInjectUnsignedChar() && HDLCFrameInjectUnsignedChar() && HDLCFrameInjectUnsignedChar() && ETLSendCommand(a1, v37, a6) && ETLSubsysFindMatchingResponse(a1, v35, a6))
        {
          v30 = ETLMaverickParseSetGPIOExtResponse(v35, v23, v24, v25, v26, v27, v28, v29);
LABEL_18:
          HDLCFrameFree();
          HDLCFrameFree();
          return v30;
        }

LABEL_17:
        v30 = 0;
        goto LABEL_18;
      }

      v31 = "ETLSubsysAddHeaderInternal";
      v32 = "Failed to inject\n";
    }

    else
    {
      v31 = "ETLMaverickSetGPIOExt";
      v32 = "Failed to create command frame\n";
    }

    _ETLDebugPrint(v31, v32, v10, v11, v12, v13, v14, v15, v34);
    goto LABEL_17;
  }

  _ETLDebugPrint("ETLMaverickSetGPIOExt", "Transport cannot be NULL\n", a3, a4, a5, a6, a7, a8, v34);
  return 0;
}

uint64_t ETLMaverickParseSetGPIOExtResponse(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[2];
  v9 = v8 - 4;
  if (v8 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a3, a4, a5, a6, a7, a8, a1[2]);
LABEL_12:
    _ETLDebugPrint("ETLMaverickParseSetGPIOExtResponse", "Failed to parse BSP response header\n", v13, v14, v15, v16, v17, v18, v19);
    return 0;
  }

  v10 = **a1;
  if (v10 != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, **a1);
    goto LABEL_12;
  }

  if (BYTE1(v10) != 253)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, BYTE1(v10));
    goto LABEL_12;
  }

  v11 = HIWORD(v10);
  if (v11 != 46)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, v11);
    goto LABEL_12;
  }

  if (v9 <= 1)
  {
    _ETLDebugPrint("ETLMaverickParseSetGPIOExtResponse", "Received response has only %u bytes, need %u\n", a3, a4, a5, a6, a7, a8, v9);
    return 0;
  }

  else if (*(*a1 + 4) == 1)
  {
    return 1;
  }

  else
  {
    _ETLDebugPrint("ETLMaverickParseSetGPIOExtResponse", "Received response with failure status [%d]\n", a3, a4, a5, a6, a7, a8, *(*a1 + 4));
    return 0;
  }
}

uint64_t ETLMaverickLoopbackMode(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v52 = 0u;
    v53 = 0u;
    v54 = 0;
    memset(v50, 0, sizeof(v50));
    v51 = 0;
    if (HDLCFrameCreateUplink())
    {
      FreeSpace = HDLCFrameGetFreeSpace();
      if (FreeSpace < 4)
      {
        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v18, v19, v20, v21, v22, v23, FreeSpace);
      }

      else
      {
        v57 = 4128075;
        if (HDLCFrameInject())
        {
          if (HDLCFrameGetFreeSpace() <= 4)
          {
            _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", v30, v31, v32, v33, v34, v35, 5);
            v46 = "ETLMaverickAddLoopbackModeHeader";
            v47 = "There is no more free spaces.\n";
          }

          else
          {
            HDLCFrameInjectUnsignedInt();
            HDLCFrameInjectUnsignedChar();
            if (a2 == 3)
            {
              HDLCFrameInjectUnsignedChar();
              HDLCFrameInjectUnsignedChar();
              HDLCFrameInjectUnsignedChar();
              HDLCFrameInjectUnsignedInt();
            }

            v36 = malloc((2 * DWORD2(v52) + 32));
            if (!v36)
            {
              goto LABEL_32;
            }

            v37 = HDLCFrameEncode();
            if (!v37)
            {
              goto LABEL_35;
            }

            v38 = v37;
            v57 = -1431655766;
            if ((_ETLDebugFlags & 2) != 0)
            {
              off_2A18A5818(&str_3, 0, v36, v37);
            }

            if (!*a1)
            {
LABEL_35:
              free(v36);
              goto LABEL_31;
            }

            v39 = (*a1)(a1, v36, v38, &v57, 1, a5, 0);
            v40 = v57;
            free(v36);
            v36 = 0;
            if (!v39 || v40 != v38)
            {
              goto LABEL_32;
            }

            LOBYTE(v57) = 75;
            if (!_ETLResponseRingBuffer)
            {
              TelephonyUtilRingBufferInitialize();
            }

            v36 = 0;
            if (!ETLFindMatchingResponseUsingBuffer(a1, v50, &_ETLResponseRingBuffer, &v57, a5) || v57 != 75)
            {
              goto LABEL_32;
            }

            v57 = 0;
            v56 = -21846;
            v55 = -21846;
            if (ETLSubsysParseHeader(v50, &v56, &v55, &v57, v41, v42, v43, v44))
            {
              if (v56 == 253)
              {
                if (v55 == 62)
                {
                  v45 = DWORD2(v50[0]) - v57;
                  if (v45 <= 1)
                  {
                    _ETLDebugPrint("ETLMaverickParseResponseLoopbackMode", "Received response has only %u bytes, need %u bytes\n", v11, v12, v13, v14, v15, v16, v45);
                  }

                  else
                  {
                    if (*(*&v50[0] + v57) == 1)
                    {
                      v36 = 1;
LABEL_32:
                      HDLCFrameFree();
                      HDLCFrameFree();
                      return v36;
                    }

                    _ETLDebugPrint("ETLMaverickParseResponseLoopbackMode", "Received response with failure status [%d]\n", v11, v12, v13, v14, v15, v16, *(*&v50[0] + v57));
                  }

LABEL_31:
                  v36 = 0;
                  goto LABEL_32;
                }

                _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v11, v12, v13, v14, v15, v16, v55);
              }

              else
              {
                _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", v11, v12, v13, v14, v15, v16, v56);
              }
            }

            v46 = "ETLMaverickParseResponseLoopbackMode";
            v47 = "Failed to parse BSP response header\n";
          }

LABEL_30:
          _ETLDebugPrint(v46, v47, v11, v12, v13, v14, v15, v16, v49);
          goto LABEL_31;
        }

        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v24, v25, v26, v27, v28, v29, v49);
      }

      v46 = "ETLMaverickAddLoopbackModeHeader";
      v47 = "Failed to create command header\n";
      goto LABEL_30;
    }

    v46 = "ETLMaverickLoopbackMode";
    v47 = "Failed to create command frame\n";
    goto LABEL_30;
  }

  _ETLDebugPrint("ETLMaverickLoopbackMode", "Transport cannot be NULL\n", a3, a4, a5, a6, a7, a8, v49);
  return 0;
}

uint64_t ETLMaverickMHILoopbackMode(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v8 = a3;
    v55 = 0u;
    v56 = 0u;
    v57 = 0;
    memset(v53, 0, sizeof(v53));
    v54 = 0;
    if ((HDLCFrameCreateUplink() & 1) == 0)
    {
      v49 = "ETLMaverickMHILoopbackMode";
      v50 = "Failed to create command frame\n";
      goto LABEL_30;
    }

    v58 = a2;
    v59 = v8;
    FreeSpace = HDLCFrameGetFreeSpace();
    if (FreeSpace < 4)
    {
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v19, v20, v21, v22, v23, v24, FreeSpace);
    }

    else
    {
      v61 = 5176651;
      if (HDLCFrameInject())
      {
        if (HDLCFrameGetFreeSpace() > 0xC)
        {
          HDLCFrameInjectUnsignedChar();
          HDLCFrameInject();
          v37 = malloc((2 * DWORD2(v55) + 32));
          if (!v37)
          {
LABEL_32:
            HDLCFrameFree();
            HDLCFrameFree();
            return v37;
          }

          v38 = HDLCFrameEncode();
          if (!v38)
          {
            goto LABEL_35;
          }

          v39 = v38;
          LODWORD(v58) = -1431655766;
          if ((_ETLDebugFlags & 2) != 0)
          {
            off_2A18A5818(&str_3, 0, v37, v38);
          }

          if (!*a1)
          {
LABEL_35:
            free(v37);
            goto LABEL_31;
          }

          v40 = (*a1)(a1, v37, v39, &v58, 1, a4, 0);
          v41 = v58;
          free(v37);
          v37 = 0;
          if (!v40 || v41 != v39)
          {
            goto LABEL_32;
          }

          LOBYTE(v58) = 75;
          if (!_ETLResponseRingBuffer)
          {
            TelephonyUtilRingBufferInitialize();
          }

          v37 = 0;
          if (!ETLFindMatchingResponseUsingBuffer(a1, v53, &_ETLResponseRingBuffer, &v58, a4) || v58 != 75)
          {
            goto LABEL_32;
          }

          LODWORD(v58) = 0;
          LOWORD(v61) = -21846;
          v60 = -21846;
          if (ETLSubsysParseHeader(v53, &v61, &v60, &v58, v42, v43, v44, v45))
          {
            if (v61 == 253)
            {
              if (v60 == 78)
              {
                v46 = (DWORD2(v53[0]) - v58);
                if (v46 <= 4)
                {
                  _ETLDebugPrint("ETLMaverickParseResponseMHILoopbackMode", "Received response has only %u bytes, need %u bytes\n", v12, v13, v14, v15, v16, v17, v46);
                }

                else
                {
                  v47 = *&v53[0] + v58;
                  v48 = *(v47 + 1);
                  v37 = 1;
                  if (!v48 || !*v47)
                  {
                    goto LABEL_32;
                  }

                  _ETLDebugPrint("ETLMaverickParseResponseMHILoopbackMode", "Received response with failure status [%d]\n", v12, v13, v14, v15, v16, v17, v48);
                }

                goto LABEL_31;
              }

              _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v12, v13, v14, v15, v16, v17, v60);
            }

            else
            {
              _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", v12, v13, v14, v15, v16, v17, v61);
            }
          }

          v49 = "ETLMaverickParseResponseMHILoopbackMode";
          v50 = "Failed to parse BSP response header\n";
LABEL_30:
          _ETLDebugPrint(v49, v50, v12, v13, v14, v15, v16, v17, v52);
LABEL_31:
          v37 = 0;
          goto LABEL_32;
        }

        _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", v31, v32, v33, v34, v35, v36, 13);
        v50 = "There is no more free spaces.\n";
LABEL_29:
        v49 = "ETLMaverickAddMHILoopbackModeHeader";
        goto LABEL_30;
      }

      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v25, v26, v27, v28, v29, v30, v52);
    }

    v50 = "Failed to create command header\n";
    goto LABEL_29;
  }

  _ETLDebugPrint("ETLMaverickMHILoopbackMode", "Transport cannot be NULL\n", a3, a4, a5, a6, a7, a8, v52);
  return 0;
}

uint64_t ETLMaverickRFSelfTestTrigger(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v185 = "Transport parameter is NULL\n";
LABEL_20:
    _ETLDebugPrint("ETLMaverickRFSelfTestTrigger", v185, a3, a4, a5, a6, a7, a8, v196);
    return 0;
  }

  if (!a2)
  {
    v185 = "Trigger info parameter is NULL\n";
    goto LABEL_20;
  }

  v201 = 0;
  memset(v200, 0, sizeof(v200));
  memset(v198, 0, sizeof(v198));
  v199 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    v187 = "ETLMaverickRFSelfTestTrigger";
    v188 = "Failed to create command frame\n";
LABEL_26:
    _ETLDebugPrint(v187, v188, v11, v12, v13, v14, v15, v16, v196);
    goto LABEL_27;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v18, v19, v20, v21, v22, v23, FreeSpace);
LABEL_24:
    _ETLDebugPrint("ETLMaverickAddRFSubCommandHeader", "Failed on creating RF Command Header\n", v189, v190, v191, v192, v193, v194, v197);
LABEL_25:
    v187 = "ETLMaverickAddRFSelfTestTriggerInfo";
    v188 = "Failed on creating RF Sub Command Header\n";
    goto LABEL_26;
  }

  v204 = 4455243;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v24, v25, v26, v27, v28, v29, v196);
    goto LABEL_24;
  }

  if (HDLCFrameGetFreeSpace() <= 1)
  {
    _ETLDebugPrint("ETLMaverickAddRFSubCommandHeader", "Not enough room, need %zu, have %zu\n", v30, v31, v32, v33, v34, v35, 2);
    goto LABEL_25;
  }

  HDLCFrameInjectUnsignedShort();
  if (HDLCFrameGetFreeSpace() <= 3)
  {
    v195 = 4;
LABEL_32:
    _ETLDebugPrint("ETLMaverickAddRFSelfTestTriggerInfo", "Not enough room, need %zu, have %zu\n", v36, v37, v38, v39, v40, v41, v195);
    goto LABEL_27;
  }

  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  if (HDLCFrameGetFreeSpace() <= 0x103)
  {
    v195 = 260;
    goto LABEL_32;
  }

  v42 = *a2;
  HDLCFrameInjectUnsignedShort();
  v43 = a2[1];
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedChar();
  HDLCFrameInjectUnsignedChar();
  HDLCFrameInjectUnsignedChar();
  HDLCFrameInjectUnsignedChar();
  HDLCFrameInjectUnsignedChar();
  HDLCFrameInjectUnsignedChar();
  HDLCFrameInjectUnsignedChar();
  HDLCFrameInjectUnsignedChar();
  HDLCFrameInjectUnsignedChar();
  HDLCFrameInjectUnsignedChar();
  v44 = a2[2];
  HDLCFrameInjectUnsignedShort();
  v45 = a2[3];
  HDLCFrameInjectUnsignedShort();
  v46 = a2[4];
  HDLCFrameInjectUnsignedShort();
  v47 = a2[5];
  HDLCFrameInjectUnsignedShort();
  v48 = a2[6];
  HDLCFrameInjectUnsignedShort();
  v49 = a2[7];
  HDLCFrameInjectUnsignedShort();
  v50 = a2[8];
  HDLCFrameInjectUnsignedShort();
  v51 = a2[9];
  HDLCFrameInjectUnsignedShort();
  v52 = a2[10];
  HDLCFrameInjectUnsignedShort();
  v53 = a2[11];
  HDLCFrameInjectUnsignedShort();
  v54 = a2[12];
  HDLCFrameInjectUnsignedShort();
  v55 = a2[13];
  HDLCFrameInjectUnsignedShort();
  v56 = a2[14];
  HDLCFrameInjectUnsignedShort();
  v57 = a2[15];
  HDLCFrameInjectUnsignedShort();
  v58 = a2[16];
  HDLCFrameInjectUnsignedShort();
  v59 = a2[17];
  HDLCFrameInjectUnsignedShort();
  v60 = a2[18];
  HDLCFrameInjectUnsignedShort();
  v61 = a2[19];
  HDLCFrameInjectUnsignedShort();
  v62 = a2[20];
  HDLCFrameInjectUnsignedShort();
  v63 = a2[21];
  HDLCFrameInjectUnsignedShort();
  v64 = a2[22];
  HDLCFrameInjectUnsignedShort();
  v65 = a2[23];
  HDLCFrameInjectUnsignedShort();
  v66 = a2[24];
  HDLCFrameInjectUnsignedShort();
  v67 = a2[25];
  HDLCFrameInjectUnsignedShort();
  v68 = a2[26];
  HDLCFrameInjectUnsignedShort();
  v69 = a2[27];
  HDLCFrameInjectUnsignedShort();
  v70 = a2[28];
  HDLCFrameInjectUnsignedShort();
  v71 = a2[29];
  HDLCFrameInjectUnsignedShort();
  v72 = a2[30];
  HDLCFrameInjectUnsignedShort();
  v73 = a2[31];
  HDLCFrameInjectUnsignedShort();
  v74 = a2[32];
  HDLCFrameInjectUnsignedShort();
  v75 = a2[33];
  HDLCFrameInjectUnsignedShort();
  v76 = a2[34];
  HDLCFrameInjectUnsignedShort();
  v77 = a2[35];
  HDLCFrameInjectUnsignedShort();
  v78 = a2[36];
  HDLCFrameInjectUnsignedShort();
  v79 = a2[37];
  HDLCFrameInjectUnsignedShort();
  v80 = a2[38];
  HDLCFrameInjectUnsignedShort();
  v81 = a2[39];
  HDLCFrameInjectUnsignedShort();
  v82 = a2[40];
  HDLCFrameInjectUnsignedShort();
  v83 = a2[41];
  HDLCFrameInjectUnsignedShort();
  v84 = a2[42];
  HDLCFrameInjectUnsignedShort();
  v85 = a2[43];
  HDLCFrameInjectUnsignedShort();
  v86 = a2[44];
  HDLCFrameInjectUnsignedShort();
  v87 = a2[45];
  HDLCFrameInjectUnsignedShort();
  v88 = a2[46];
  HDLCFrameInjectUnsignedShort();
  v89 = a2[47];
  HDLCFrameInjectUnsignedShort();
  v90 = a2[48];
  HDLCFrameInjectUnsignedShort();
  v91 = a2[49];
  HDLCFrameInjectUnsignedShort();
  v92 = a2[50];
  HDLCFrameInjectUnsignedShort();
  v93 = a2[51];
  HDLCFrameInjectUnsignedShort();
  v94 = a2[52];
  HDLCFrameInjectUnsignedShort();
  v95 = a2[53];
  HDLCFrameInjectUnsignedShort();
  v96 = a2[54];
  HDLCFrameInjectUnsignedShort();
  v97 = a2[55];
  HDLCFrameInjectUnsignedShort();
  v98 = a2[56];
  HDLCFrameInjectUnsignedShort();
  v99 = a2[57];
  HDLCFrameInjectUnsignedShort();
  v100 = a2[58];
  HDLCFrameInjectUnsignedShort();
  v101 = a2[59];
  HDLCFrameInjectUnsignedShort();
  v102 = a2[60];
  HDLCFrameInjectUnsignedShort();
  v103 = a2[61];
  HDLCFrameInjectUnsignedShort();
  v104 = a2[62];
  HDLCFrameInjectUnsignedShort();
  v105 = a2[63];
  HDLCFrameInjectUnsignedShort();
  v106 = a2[64];
  HDLCFrameInjectUnsignedShort();
  v107 = a2[65];
  HDLCFrameInjectUnsignedShort();
  v108 = a2[66];
  HDLCFrameInjectUnsignedShort();
  v109 = a2[67];
  HDLCFrameInjectUnsignedShort();
  v110 = a2[68];
  HDLCFrameInjectUnsignedShort();
  v111 = a2[69];
  HDLCFrameInjectUnsignedShort();
  v112 = a2[70];
  HDLCFrameInjectUnsignedShort();
  v113 = a2[71];
  HDLCFrameInjectUnsignedShort();
  v114 = a2[72];
  HDLCFrameInjectUnsignedShort();
  v115 = a2[73];
  HDLCFrameInjectUnsignedShort();
  v116 = a2[74];
  HDLCFrameInjectUnsignedShort();
  v117 = a2[75];
  HDLCFrameInjectUnsignedShort();
  v118 = a2[76];
  HDLCFrameInjectUnsignedShort();
  v119 = a2[77];
  HDLCFrameInjectUnsignedShort();
  v120 = a2[78];
  HDLCFrameInjectUnsignedShort();
  v121 = a2[79];
  HDLCFrameInjectUnsignedShort();
  v122 = a2[80];
  HDLCFrameInjectUnsignedShort();
  v123 = a2[81];
  HDLCFrameInjectUnsignedShort();
  v124 = a2[82];
  HDLCFrameInjectUnsignedShort();
  v125 = a2[83];
  HDLCFrameInjectUnsignedShort();
  v126 = a2[84];
  HDLCFrameInjectUnsignedShort();
  v127 = a2[85];
  HDLCFrameInjectUnsignedShort();
  v128 = a2[86];
  HDLCFrameInjectUnsignedShort();
  v129 = a2[87];
  HDLCFrameInjectUnsignedShort();
  v130 = a2[88];
  HDLCFrameInjectUnsignedShort();
  v131 = a2[89];
  HDLCFrameInjectUnsignedShort();
  v132 = a2[90];
  HDLCFrameInjectUnsignedShort();
  v133 = a2[91];
  HDLCFrameInjectUnsignedShort();
  v134 = a2[92];
  HDLCFrameInjectUnsignedShort();
  v135 = a2[93];
  HDLCFrameInjectUnsignedShort();
  v136 = a2[94];
  HDLCFrameInjectUnsignedShort();
  v137 = a2[95];
  HDLCFrameInjectUnsignedShort();
  v138 = a2[96];
  HDLCFrameInjectUnsignedShort();
  v139 = a2[97];
  HDLCFrameInjectUnsignedShort();
  v140 = a2[98];
  HDLCFrameInjectUnsignedShort();
  v141 = a2[99];
  HDLCFrameInjectUnsignedShort();
  v142 = a2[100];
  HDLCFrameInjectUnsignedShort();
  v143 = a2[101];
  HDLCFrameInjectUnsignedShort();
  v144 = a2[102];
  HDLCFrameInjectUnsignedShort();
  v145 = a2[103];
  HDLCFrameInjectUnsignedShort();
  v146 = a2[104];
  HDLCFrameInjectUnsignedShort();
  v147 = a2[105];
  HDLCFrameInjectUnsignedShort();
  v148 = a2[106];
  HDLCFrameInjectUnsignedShort();
  v149 = a2[107];
  HDLCFrameInjectUnsignedShort();
  v150 = a2[108];
  HDLCFrameInjectUnsignedShort();
  v151 = a2[109];
  HDLCFrameInjectUnsignedShort();
  v152 = a2[110];
  HDLCFrameInjectUnsignedShort();
  v153 = a2[111];
  HDLCFrameInjectUnsignedShort();
  v154 = a2[112];
  HDLCFrameInjectUnsignedShort();
  v155 = a2[113];
  HDLCFrameInjectUnsignedShort();
  v156 = a2[114];
  HDLCFrameInjectUnsignedShort();
  v157 = a2[115];
  HDLCFrameInjectUnsignedShort();
  v158 = a2[116];
  HDLCFrameInjectUnsignedShort();
  v159 = a2[117];
  HDLCFrameInjectUnsignedShort();
  v160 = a2[118];
  HDLCFrameInjectUnsignedShort();
  v161 = a2[119];
  HDLCFrameInjectUnsignedShort();
  v162 = a2[120];
  HDLCFrameInjectUnsignedShort();
  v163 = a2[121];
  HDLCFrameInjectUnsignedShort();
  v164 = a2[122];
  HDLCFrameInjectUnsignedShort();
  v165 = a2[123];
  HDLCFrameInjectUnsignedShort();
  v166 = a2[124];
  HDLCFrameInjectUnsignedShort();
  v167 = a2[125];
  HDLCFrameInjectUnsignedShort();
  v168 = a2[126];
  HDLCFrameInjectUnsignedShort();
  v169 = a2[127];
  HDLCFrameInjectUnsignedShort();
  v170 = a2[128];
  HDLCFrameInjectUnsignedShort();
  v171 = a2[129];
  HDLCFrameInjectUnsignedShort();
  if (!ETLSendCommand(a1, v200, a3))
  {
    goto LABEL_27;
  }

  if (!ETLSubsysFindMatchingResponse(a1, v198, a3))
  {
    goto LABEL_27;
  }

  v204 = 0;
  v203 = -21846;
  v202 = -21846;
  if (!ETLSubsysParseHeader(v198, &v203, &v202, &v204, v172, v173, v174, v175))
  {
    goto LABEL_27;
  }

  if (v203 != 251)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", v176, v177, v178, v179, v180, v181, v203);
    goto LABEL_27;
  }

  if (v202 != 67)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v176, v177, v178, v179, v180, v181, v202);
    goto LABEL_27;
  }

  v182 = DWORD2(v198[0]) - v204;
  if (v182 <= 3)
  {
    _ETLDebugPrint("ETLMaverickParseRFSelfTestTriggerResponse", "Received response has only %zu bytes, need %zu\n", v176, v177, v178, v179, v180, v181, v182);
    goto LABEL_27;
  }

  if (*(*&v198[0] + v204) != 11)
  {
LABEL_27:
    v184 = 0;
    goto LABEL_28;
  }

  v183 = *(*&v198[0] + v204 + 2);
  if (v183 != 1)
  {
    _ETLDebugPrint("ETLMaverickParseRFSelfTestTriggerResponse", "Received response with failure status [%d]\n", v176, v177, v178, v179, v180, v181, v183);
    goto LABEL_27;
  }

  v184 = 1;
LABEL_28:
  HDLCFrameFree();
  HDLCFrameFree();
  return v184;
}

uint64_t ETLMaverickRFSelfTestResult(uint64_t (**a1)(void, uint64_t, uint64_t, unsigned int *, uint64_t, uint64_t, void), _WORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (a2)
    {
      v81 = 0;
      v79 = 0u;
      v80 = 0u;
      memset(v77, 0, sizeof(v77));
      v78 = 0;
      if ((HDLCFrameCreateUplink() & 1) == 0)
      {
        v66 = "ETLMaverickRFSelfTestResult";
        v67 = "Failed to create command frame\n";
LABEL_33:
        _ETLDebugPrint(v66, v67, v11, v12, v13, v14, v15, v16, v75);
        goto LABEL_34;
      }

      FreeSpace = HDLCFrameGetFreeSpace();
      if (FreeSpace < 4)
      {
        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v18, v19, v20, v21, v22, v23, FreeSpace);
      }

      else
      {
        v84 = 4455243;
        if (HDLCFrameInject())
        {
          if (HDLCFrameGetFreeSpace() > 1)
          {
            HDLCFrameInjectUnsignedShort();
            if (HDLCFrameGetFreeSpace() <= 3)
            {
              _ETLDebugPrint("ETLMaverickAddRFSelfTestResultHeader", "Not enough room, need %zu, have %zu\n", v36, v37, v38, v39, v40, v41, 4);
            }

            else
            {
              HDLCFrameInjectUnsignedShort();
              HDLCFrameInjectUnsignedShort();
              v42 = malloc((2 * DWORD2(v79) + 32));
              if (!v42)
              {
LABEL_35:
                HDLCFrameFree();
                HDLCFrameFree();
                return v42;
              }

              v43 = HDLCFrameEncode();
              if (!v43)
              {
                goto LABEL_39;
              }

              v44 = v43;
              v84 = -1431655766;
              if ((_ETLDebugFlags & 2) != 0)
              {
                off_2A18A5818(&str_3, 0, v42, v43);
              }

              if (*a1)
              {
                v45 = (*a1)(a1, v42, v44, &v84, 1, a3, 0);
                v46 = v84;
                free(v42);
                v42 = 0;
                if (!v45 || v46 != v44)
                {
                  goto LABEL_35;
                }

                if (ETLSubsysFindMatchingResponse(a1, v77, a3))
                {
                  v84 = 0;
                  v83 = -21846;
                  v82 = -21846;
                  if (ETLSubsysParseHeader(v77, &v83, &v82, &v84, v47, v48, v49, v50))
                  {
                    if (v83 == 251)
                    {
                      if (v82 == 67)
                      {
                        v57 = v84;
                        v58 = DWORD2(v77[0]) - v84;
                        v59 = v84 + 6;
                        v84 += 6;
                        if (v58 <= 5)
                        {
                          _ETLDebugPrint("ETLMaverickParseRFSelfTestResultResponse", "Received response has only %zu bytes, need %zu\n", v51, v52, v53, v54, v55, v56, v58);
                        }

                        else
                        {
                          v60 = *&v77[0] + v57;
                          v61 = *(*&v77[0] + v57);
                          if (v61 == 21)
                          {
                            if (*(v60 + 4) == 100)
                            {
                              v62 = *(v60 + 2);
                              if (v62 == 1)
                              {
                                v63 = DWORD2(v77[0]) - v59;
                                if (v63 > 0x205)
                                {
                                  v64 = (*&v77[0] + v59);
                                  *a2 = *v64;
                                  a2[1] = v64[1];
                                  a2[2] = v64[2];
                                  a2[3] = v64[3];
                                  a2[4] = v64[4];
                                  a2[5] = v64[5];
                                  a2[6] = v64[6];
                                  a2[7] = v64[7];
                                  a2[8] = v64[8];
                                  a2[9] = v64[9];
                                  a2[10] = v64[10];
                                  a2[11] = v64[11];
                                  a2[12] = v64[12];
                                  a2[13] = v64[13];
                                  a2[14] = v64[14];
                                  a2[15] = v64[15];
                                  a2[16] = v64[16];
                                  a2[17] = v64[17];
                                  a2[18] = v64[18];
                                  a2[19] = v64[19];
                                  a2[20] = v64[20];
                                  a2[21] = v64[21];
                                  a2[22] = v64[22];
                                  a2[23] = v64[23];
                                  a2[24] = v64[24];
                                  a2[25] = v64[25];
                                  a2[26] = v64[26];
                                  a2[27] = v64[27];
                                  a2[28] = v64[28];
                                  a2[29] = v64[29];
                                  a2[30] = v64[30];
                                  a2[31] = v64[31];
                                  a2[32] = v64[32];
                                  a2[33] = v64[33];
                                  a2[34] = v64[34];
                                  a2[35] = v64[35];
                                  a2[36] = v64[36];
                                  a2[37] = v64[37];
                                  a2[38] = v64[38];
                                  a2[39] = v64[39];
                                  a2[40] = v64[40];
                                  a2[41] = v64[41];
                                  a2[42] = v64[42];
                                  a2[43] = v64[43];
                                  a2[44] = v64[44];
                                  a2[45] = v64[45];
                                  a2[46] = v64[46];
                                  a2[47] = v64[47];
                                  a2[48] = v64[48];
                                  a2[49] = v64[49];
                                  a2[50] = v64[50];
                                  a2[51] = v64[51];
                                  a2[52] = v64[52];
                                  a2[53] = v64[53];
                                  a2[54] = v64[54];
                                  a2[55] = v64[55];
                                  a2[56] = v64[56];
                                  a2[57] = v64[57];
                                  a2[58] = v64[58];
                                  a2[59] = v64[59];
                                  a2[60] = v64[60];
                                  a2[61] = v64[61];
                                  a2[62] = v64[62];
                                  a2[63] = v64[63];
                                  a2[64] = v64[64];
                                  a2[65] = v64[65];
                                  a2[66] = v64[66];
                                  a2[67] = v64[67];
                                  a2[68] = v64[68];
                                  a2[69] = v64[69];
                                  a2[70] = v64[70];
                                  a2[71] = v64[71];
                                  a2[72] = v64[72];
                                  a2[73] = v64[73];
                                  a2[74] = v64[74];
                                  a2[75] = v64[75];
                                  a2[76] = v64[76];
                                  a2[77] = v64[77];
                                  a2[78] = v64[78];
                                  a2[79] = v64[79];
                                  a2[80] = v64[80];
                                  a2[81] = v64[81];
                                  a2[82] = v64[82];
                                  a2[83] = v64[83];
                                  a2[84] = v64[84];
                                  a2[85] = v64[85];
                                  a2[86] = v64[86];
                                  a2[87] = v64[87];
                                  a2[88] = v64[88];
                                  a2[89] = v64[89];
                                  a2[90] = v64[90];
                                  a2[91] = v64[91];
                                  a2[92] = v64[92];
                                  a2[93] = v64[93];
                                  a2[94] = v64[94];
                                  a2[95] = v64[95];
                                  a2[96] = v64[96];
                                  a2[97] = v64[97];
                                  a2[98] = v64[98];
                                  a2[99] = v64[99];
                                  a2[100] = v64[100];
                                  a2[101] = v64[101];
                                  a2[102] = v64[102];
                                  a2[103] = v64[103];
                                  a2[104] = v64[104];
                                  a2[105] = v64[105];
                                  a2[106] = v64[106];
                                  a2[107] = v64[107];
                                  a2[108] = v64[108];
                                  a2[109] = v64[109];
                                  a2[110] = v64[110];
                                  a2[111] = v64[111];
                                  a2[112] = v64[112];
                                  a2[113] = v64[113];
                                  a2[114] = v64[114];
                                  a2[115] = v64[115];
                                  a2[116] = v64[116];
                                  a2[117] = v64[117];
                                  a2[118] = v64[118];
                                  a2[119] = v64[119];
                                  a2[120] = v64[120];
                                  a2[121] = v64[121];
                                  a2[122] = v64[122];
                                  a2[123] = v64[123];
                                  a2[124] = v64[124];
                                  a2[125] = v64[125];
                                  a2[126] = v64[126];
                                  a2[127] = v64[127];
                                  a2[128] = v64[128];
                                  a2[129] = v64[129];
                                  a2[130] = v64[130];
                                  a2[131] = v64[131];
                                  a2[132] = v64[132];
                                  a2[133] = v64[133];
                                  a2[134] = v64[134];
                                  a2[135] = v64[135];
                                  a2[136] = v64[136];
                                  a2[137] = v64[137];
                                  a2[138] = v64[138];
                                  a2[139] = v64[139];
                                  a2[140] = v64[140];
                                  a2[141] = v64[141];
                                  a2[142] = v64[142];
                                  a2[143] = v64[143];
                                  a2[144] = v64[144];
                                  a2[145] = v64[145];
                                  a2[146] = v64[146];
                                  a2[147] = v64[147];
                                  a2[148] = v64[148];
                                  a2[149] = v64[149];
                                  a2[150] = v64[150];
                                  a2[151] = v64[151];
                                  a2[152] = v64[152];
                                  a2[153] = v64[153];
                                  a2[154] = v64[154];
                                  a2[155] = v64[155];
                                  a2[156] = v64[156];
                                  a2[157] = v64[157];
                                  a2[158] = v64[158];
                                  a2[159] = v64[159];
                                  a2[160] = v64[160];
                                  a2[161] = v64[161];
                                  a2[162] = v64[162];
                                  a2[163] = v64[163];
                                  a2[164] = v64[164];
                                  a2[165] = v64[165];
                                  a2[166] = v64[166];
                                  a2[167] = v64[167];
                                  a2[168] = v64[168];
                                  a2[169] = v64[169];
                                  a2[170] = v64[170];
                                  a2[171] = v64[171];
                                  a2[172] = v64[172];
                                  a2[173] = v64[173];
                                  a2[174] = v64[174];
                                  a2[175] = v64[175];
                                  a2[176] = v64[176];
                                  a2[177] = v64[177];
                                  a2[178] = v64[178];
                                  a2[179] = v64[179];
                                  a2[180] = v64[180];
                                  a2[181] = v64[181];
                                  a2[182] = v64[182];
                                  a2[183] = v64[183];
                                  a2[184] = v64[184];
                                  a2[185] = v64[185];
                                  a2[186] = v64[186];
                                  a2[187] = v64[187];
                                  a2[188] = v64[188];
                                  a2[189] = v64[189];
                                  a2[190] = v64[190];
                                  a2[191] = v64[191];
                                  a2[192] = v64[192];
                                  a2[193] = v64[193];
                                  a2[194] = v64[194];
                                  a2[195] = v64[195];
                                  a2[196] = v64[196];
                                  a2[197] = v64[197];
                                  a2[198] = v64[198];
                                  a2[199] = v64[199];
                                  a2[200] = v64[200];
                                  a2[201] = v64[201];
                                  a2[202] = v64[202];
                                  a2[203] = v64[203];
                                  a2[204] = v64[204];
                                  a2[205] = v64[205];
                                  a2[206] = v64[206];
                                  a2[207] = v64[207];
                                  a2[208] = v64[208];
                                  a2[209] = v64[209];
                                  a2[210] = v64[210];
                                  a2[211] = v64[211];
                                  a2[212] = v64[212];
                                  a2[213] = v64[213];
                                  a2[214] = v64[214];
                                  a2[215] = v64[215];
                                  a2[216] = v64[216];
                                  a2[217] = v64[217];
                                  a2[218] = v64[218];
                                  a2[219] = v64[219];
                                  a2[220] = v64[220];
                                  a2[221] = v64[221];
                                  a2[222] = v64[222];
                                  a2[223] = v64[223];
                                  a2[224] = v64[224];
                                  a2[225] = v64[225];
                                  a2[226] = v64[226];
                                  a2[227] = v64[227];
                                  a2[228] = v64[228];
                                  a2[229] = v64[229];
                                  a2[230] = v64[230];
                                  a2[231] = v64[231];
                                  a2[232] = v64[232];
                                  a2[233] = v64[233];
                                  a2[234] = v64[234];
                                  a2[235] = v64[235];
                                  a2[236] = v64[236];
                                  a2[237] = v64[237];
                                  a2[238] = v64[238];
                                  a2[239] = v64[239];
                                  a2[240] = v64[240];
                                  a2[241] = v64[241];
                                  a2[242] = v64[242];
                                  a2[243] = v64[243];
                                  a2[244] = v64[244];
                                  a2[245] = v64[245];
                                  a2[246] = v64[246];
                                  a2[247] = v64[247];
                                  a2[248] = v64[248];
                                  a2[249] = v64[249];
                                  a2[250] = v64[250];
                                  a2[251] = v64[251];
                                  a2[252] = v64[252];
                                  a2[253] = v64[253];
                                  a2[254] = v64[254];
                                  a2[255] = v64[255];
                                  a2[256] = v64[256];
                                  a2[257] = v64[257];
                                  a2[258] = v64[258];
                                  v42 = 1;
                                  goto LABEL_35;
                                }

                                _ETLDebugPrint("ETLMaverickParseRFSelfTestResultResponse", "Received result has only %zu bytes, need %zu\n", v51, v52, v53, v54, v55, v56, v63);
                              }

                              else
                              {
                                _ETLDebugPrint("ETLMaverickParseRFSelfTestResultResponse", "Received response with failure status [%d]\n", v51, v52, v53, v54, v55, v56, v62);
                              }
                            }

                            else
                            {
                              _ETLDebugPrint("ETLMaverickParseRFSelfTestResultResponse", "Received response with progress in-complete [%d %%]\n", v51, v52, v53, v54, v55, v56, *(v60 + 4));
                            }
                          }

                          else
                          {
                            _ETLDebugPrint("ETLMaverickParseRFSelfTestResultResponse", "Received response with invalid sub-command code [%d]\n", v51, v52, v53, v54, v55, v56, v61);
                          }
                        }
                      }

                      else
                      {
                        _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v51, v52, v53, v54, v55, v56, v82);
                      }
                    }

                    else
                    {
                      _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", v51, v52, v53, v54, v55, v56, v83);
                    }
                  }
                }
              }

              else
              {
LABEL_39:
                free(v42);
              }
            }

LABEL_34:
            v42 = 0;
            goto LABEL_35;
          }

          _ETLDebugPrint("ETLMaverickAddRFSubCommandHeader", "Not enough room, need %zu, have %zu\n", v30, v31, v32, v33, v34, v35, 2);
          goto LABEL_32;
        }

        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v24, v25, v26, v27, v28, v29, v75);
      }

      _ETLDebugPrint("ETLMaverickAddRFSubCommandHeader", "Failed on creating RF Command Header\n", v68, v69, v70, v71, v72, v73, v76);
LABEL_32:
      v66 = "ETLMaverickAddRFSelfTestResultHeader";
      v67 = "Failed on creating RF Sub Command Header\n";
      goto LABEL_33;
    }

    v65 = "Result info parameter is NULL\n";
  }

  else
  {
    v65 = "Transport parameter is NULL\n";
  }

  _ETLDebugPrint("ETLMaverickRFSelfTestResult", v65, a3, a4, a5, a6, a7, a8, v75);
  return 0;
}

uint64_t ETLMaverickGetBasebandInitStatusEx(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), _DWORD *a2, uint64_t a3, int a4)
{
  v4 = 0;
  if (a1 && a2)
  {
    v48 = 0u;
    v49 = 0u;
    v50 = 0;
    memset(v46, 0, sizeof(v46));
    v47 = 0;
    if (HDLCFrameCreateUplink())
    {
      FreeSpace = HDLCFrameGetFreeSpace();
      if (FreeSpace < 4)
      {
        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v16, v17, v18, v19, v20, v21, FreeSpace);
        goto LABEL_16;
      }

      v51 = 5373259;
      if (HDLCFrameInject())
      {
        v22 = malloc((2 * DWORD2(v48) + 32));
        if (v22)
        {
          v23 = v22;
          v24 = HDLCFrameEncode();
          if (v24)
          {
            v25 = -1431655766;
            v51 = -1431655766;
            if ((_ETLDebugFlags & 2) != 0)
            {
              off_2A18A5818(&str_3, 0, v23, v24);
            }

            if (*a1)
            {
              v26 = (*a1)(a1, v23, v24, &v51, 1, a3, 0);
              v25 = v51;
            }

            else
            {
              v26 = 0;
            }

            if (v25 == v24)
            {
              LODWORD(v24) = v26;
            }

            else
            {
              LODWORD(v24) = 0;
            }
          }

          free(v23);
          if (!a4)
          {
            goto LABEL_30;
          }

          goto LABEL_17;
        }

LABEL_16:
        LODWORD(v24) = 0;
        if (!a4)
        {
LABEL_30:
          if (!v24)
          {
            goto LABEL_46;
          }

          LOBYTE(v51) = 75;
          if (!_ETLResponseRingBuffer)
          {
            TelephonyUtilRingBufferInitialize();
          }

          v4 = 0;
          if (!ETLFindMatchingResponseUsingBuffer(a1, v46, &_ETLResponseRingBuffer, &v51, a3) || v51 != 75)
          {
            goto LABEL_47;
          }

          goto LABEL_35;
        }

LABEL_17:
        LOBYTE(v51) = 75;
        *a2 = 0;
        if (!v24)
        {
          goto LABEL_46;
        }

        if (!_ETLResponseRingBuffer)
        {
          TelephonyUtilRingBufferInitialize();
        }

        if (!ETLFindMatchingResponseUsingBuffer(a1, v46, &_ETLResponseRingBuffer, &v51, a3))
        {
          goto LABEL_46;
        }

        if (v51 != 75)
        {
          if (v51 == 19)
          {
            _ETLDebugPrint("ETLMaverickGetBasebandInitStatusEx", "BB Init status handler is not regisered yet. Treat it as not done\n", v29, v30, v31, v32, v33, v34, v44);
LABEL_24:
            v4 = 1;
LABEL_47:
            HDLCFrameFree();
            HDLCFrameFree();
            return v4;
          }

LABEL_46:
          v4 = 0;
          goto LABEL_47;
        }

LABEL_35:
        if (DWORD2(v46[0]) < 4)
        {
          _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", v29, v30, v31, v32, v33, v34, DWORD2(v46[0]));
        }

        else
        {
          v35 = **&v46[0];
          if (**&v46[0] == 75)
          {
            if (BYTE1(v35) == 253)
            {
              v36 = HIWORD(v35);
              if (v36 == 81)
              {
                if ((DWORD2(v46[0]) - 4) > 3)
                {
                  *a2 = *(*&v46[0] + 4);
                  goto LABEL_24;
                }

                _ETLDebugPrint("ETLMaverickParseParseBasebandInitStatusResponse", "Received response has only %u bytes, need %u bytes\n", v29, v30, v31, v32, v33, v34, (DWORD2(v46[0]) - 4));
                goto LABEL_46;
              }

              _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v29, v30, v31, v32, v33, v34, v36);
            }

            else
            {
              _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", v29, v30, v31, v32, v33, v34, BYTE1(v35));
            }
          }

          else
          {
            _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", v29, v30, v31, v32, v33, v34, **&v46[0]);
          }
        }

        _ETLDebugPrint("ETLMaverickParseParseBasebandInitStatusResponse", "Failed on parsing BSP Response.\n", v37, v38, v39, v40, v41, v42, v45);
        goto LABEL_46;
      }

      v27 = "ETLSubsysAddHeaderInternal";
      v28 = "Failed to inject\n";
    }

    else
    {
      v27 = "ETLMaverickGetBasebandInitStatusEx";
      v28 = "Failed to create command frame\n";
    }

    _ETLDebugPrint(v27, v28, v9, v10, v11, v12, v13, v14, v44);
    goto LABEL_16;
  }

  return v4;
}

uint64_t ETLMaverickIPALoopbackV2(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _ETLDebugPrint("ETLMaverickIPALoopbackV2", "Transport cannot be NULL\n", a3, a4, a5, a6, a7, a8, v64);
    return 0;
  }

  memset(v68, 0, sizeof(v68));
  v69 = 0;
  memset(v66, 0, sizeof(v66));
  v67 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLMaverickIPALoopbackV2", "Failed to create command frame\n", v10, v11, v12, v13, v14, v15, v64);
    return 0;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v17, v18, v19, v20, v21, v22, FreeSpace);
LABEL_13:
    _ETLDebugPrint("ETLMaverickAddDataSubCommandHeader", "Failed on creating Data Command Header\n", v45, v46, v47, v48, v49, v50, v65);
LABEL_14:
    v51 = "ETLMaverickAddIPALoopbackV2Header";
    v52 = "Failed to create command header with subcommand\n";
LABEL_15:
    _ETLDebugPrint(v51, v52, v37, v38, v39, v40, v41, v42, v64);
    goto LABEL_16;
  }

  v70[0] = 268461131;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v23, v24, v25, v26, v27, v28, v64);
    goto LABEL_13;
  }

  if (HDLCFrameGetFreeSpace() <= 1)
  {
    _ETLDebugPrint("ETLMaverickAddDataSubCommandHeader", "Not enough room, need %zu, have %zu\n", v29, v30, v31, v32, v33, v34, 2);
    goto LABEL_14;
  }

  v35 = HDLCFrameInjectUnsignedShort();
  MaverickIPALoopbackV2ParametersType = capabilities::etl::getMaverickIPALoopbackV2ParametersType(v35);
  if (MaverickIPALoopbackV2ParametersType)
  {
    if (MaverickIPALoopbackV2ParametersType != 1)
    {
      v52 = "Invalid radio for IPA Loopback V2 Header";
      v51 = "ETLMaverickAddIPALoopbackV2Header";
      goto LABEL_15;
    }

    v43 = 23;
  }

  else
  {
    v43 = 14;
  }

  v70[0] = 1;
  v70[1] = v43;
  v70[2] = 1;
  if (HDLCFrameGetFreeSpace() <= 0xB)
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", v54, v55, v56, v57, v58, v59, 12);
    v52 = "There is no more free space\n";
    v51 = "ETLMaverickAddIPALoopbackV2Header";
    goto LABEL_15;
  }

  if (!HDLCFrameInject() || !ETLSendCommand(a1, v68, a2) || !ETLSubsysFindMatchingResponse(a1, v66, a2))
  {
    goto LABEL_16;
  }

  v70[0] = 0;
  v72 = -21846;
  v71 = -21846;
  if (!ETLSubsysParseHeader(v66, &v72, &v71, v70, v60, v61, v62, v63))
  {
    goto LABEL_33;
  }

  if (v72 != 100)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", v37, v38, v39, v40, v41, v42, v72);
LABEL_33:
    v51 = "ETLMaverickParseIPALoopbackV2Response";
    v52 = "Failed on parsing Data Response.\n";
    goto LABEL_15;
  }

  if (v71 != 4096)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v37, v38, v39, v40, v41, v42, v71);
    goto LABEL_33;
  }

  if ((DWORD2(v66[0]) - v70[0]) > 4)
  {
    v53 = 1;
    goto LABEL_17;
  }

  _ETLDebugPrint("ETLMaverickParseIPALoopbackV2Response", "Received response has only %u bytes, need %u bytes\n", v37, v38, v39, v40, v41, v42, (DWORD2(v66[0]) - v70[0]));
LABEL_16:
  v53 = 0;
LABEL_17:
  HDLCFrameFree();
  HDLCFrameFree();
  return v53;
}

const char *ETLMaverickAPWakeReasonToString(int a1)
{
  v1 = "Invalid";
  if (a1 == 2)
  {
    v1 = "Forced";
  }

  if (a1 == 1)
  {
    return "Data Activity";
  }

  else
  {
    return v1;
  }
}

uint64_t ETLMaverickMHIPeriodicRemoteWake(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v52 = 0u;
    v53 = 0u;
    v54 = 0;
    memset(v50, 0, sizeof(v50));
    v51 = 0;
    if (HDLCFrameCreateUplink())
    {
      FreeSpace = HDLCFrameGetFreeSpace();
      if (FreeSpace < 4)
      {
        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v17, v18, v19, v20, v21, v22, FreeSpace);
      }

      else
      {
        v57 = 5176651;
        if (HDLCFrameInject())
        {
          if (HDLCFrameGetFreeSpace() <= 3)
          {
            _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", v29, v30, v31, v32, v33, v34, 4);
            v46 = "ETLMaverickAddMHIPeriodicRemoteWakeHeader";
            v47 = "There is no more free space.\n";
          }

          else
          {
            HDLCFrameInjectUnsignedChar();
            HDLCFrameInjectUnsignedChar();
            HDLCFrameInjectUnsignedShort();
            v35 = malloc((2 * DWORD2(v52) + 32));
            if (!v35)
            {
LABEL_31:
              HDLCFrameFree();
              HDLCFrameFree();
              return v35;
            }

            v36 = HDLCFrameEncode();
            if (!v36)
            {
              goto LABEL_34;
            }

            v37 = v36;
            v57 = -1431655766;
            if ((_ETLDebugFlags & 2) != 0)
            {
              off_2A18A5818(&str_3, 0, v35, v36);
            }

            if (!*a1)
            {
LABEL_34:
              free(v35);
              goto LABEL_30;
            }

            v38 = (*a1)(a1, v35, v37, &v57, 1, a4, 0);
            v39 = v57;
            free(v35);
            v35 = 0;
            if (!v38 || v39 != v37)
            {
              goto LABEL_31;
            }

            LOBYTE(v57) = 75;
            if (!_ETLResponseRingBuffer)
            {
              TelephonyUtilRingBufferInitialize();
            }

            v35 = 0;
            if (!ETLFindMatchingResponseUsingBuffer(a1, v50, &_ETLResponseRingBuffer, &v57, a4) || v57 != 75)
            {
              goto LABEL_31;
            }

            v57 = 0;
            v56 = -21846;
            v55 = -21846;
            if (ETLSubsysParseHeader(v50, &v56, &v55, &v57, v40, v41, v42, v43))
            {
              if (v56 == 253)
              {
                if (v55 == 78)
                {
                  v44 = DWORD2(v50[0]) - v57;
                  if (v44 <= 4)
                  {
                    _ETLDebugPrint("ETLMaverickParseMHIPeriodicRemoteWakeResponse", "Received response has only %u bytes, need %u bytes\n", v10, v11, v12, v13, v14, v15, v44);
                  }

                  else
                  {
                    v45 = *(*&v50[0] + v57 + 1);
                    if (v45 == 1 && *(*&v50[0] + v57) == 2)
                    {
                      v35 = 1;
                      goto LABEL_31;
                    }

                    _ETLDebugPrint("ETLMaverickParseMHIPeriodicRemoteWakeResponse", "Received response with failure status [%u] and command type [%u]\n", v10, v11, v12, v13, v14, v15, v45);
                  }

LABEL_30:
                  v35 = 0;
                  goto LABEL_31;
                }

                _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v10, v11, v12, v13, v14, v15, v55);
              }

              else
              {
                _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", v10, v11, v12, v13, v14, v15, v56);
              }
            }

            v46 = "ETLMaverickParseMHIPeriodicRemoteWakeResponse";
            v47 = "Failed to parse BSP response header\n";
          }

LABEL_29:
          _ETLDebugPrint(v46, v47, v10, v11, v12, v13, v14, v15, v49);
          goto LABEL_30;
        }

        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v23, v24, v25, v26, v27, v28, v49);
      }

      v46 = "ETLMaverickAddMHIPeriodicRemoteWakeHeader";
      v47 = "Failed to create command header\n";
      goto LABEL_29;
    }

    v46 = "ETLMaverickMHIPeriodicRemoteWake";
    v47 = "Failed to create command frame\n";
    goto LABEL_29;
  }

  _ETLDebugPrint("ETLMaverickMHIPeriodicRemoteWake", "Transport cannot be NULL\n", a3, a4, a5, a6, a7, a8, v49);
  return 0;
}

uint64_t ETLMaverickMHIPeriodicRemoteWakeV2(void *a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v89 = 0u;
    v90 = 0u;
    v91 = 0;
    memset(v87, 0, sizeof(v87));
    v88 = 0;
    if (HDLCFrameCreateUplink())
    {
      FreeSpace = HDLCFrameGetFreeSpace();
      if (FreeSpace < 4)
      {
        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v18, v19, v20, v21, v22, v23, FreeSpace);
      }

      else
      {
        v94 = 916811;
        if (HDLCFrameInject())
        {
          if (HDLCFrameGetFreeSpace() <= 5)
          {
            _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", v30, v31, v32, v33, v34, v35, 6);
            v47 = "ETLMaverickAddMHIPeriodicRemoteWakeHeaderV2";
            v48 = "There is no more free space.\n";
          }

          else
          {
            HDLCFrameInjectUnsignedShort();
            HDLCFrameInjectUnsignedInt();
            v36 = malloc((2 * DWORD2(v89) + 32));
            if (!v36)
            {
LABEL_30:
              HDLCFrameFree();
              HDLCFrameFree();
              return v36;
            }

            v37 = HDLCFrameEncode();
            if (!v37)
            {
              goto LABEL_33;
            }

            v38 = v37;
            v94 = -1431655766;
            if ((_ETLDebugFlags & 2) != 0)
            {
              off_2A18A5818(&str_3, 0, v36, v37);
            }

            if (!*a1)
            {
LABEL_33:
              free(v36);
              goto LABEL_29;
            }

            v39 = (*a1)(a1, v36, v38, &v94, 1, a4, 0);
            v40 = v94;
            free(v36);
            v36 = 0;
            if (!v39 || v40 != v38)
            {
              goto LABEL_30;
            }

            LOBYTE(v94) = 75;
            if (!_ETLResponseRingBuffer)
            {
              TelephonyUtilRingBufferInitialize();
            }

            v36 = 0;
            if (!ETLFindMatchingResponseUsingBuffer(a1, v87, &_ETLResponseRingBuffer, &v94, a4) || v94 != 75)
            {
              goto LABEL_30;
            }

            v94 = 0;
            v93 = -21846;
            v92 = -21846;
            if (ETLSubsysParseHeader(v87, &v93, &v92, &v94, v41, v42, v43, v44))
            {
              if (v93 == 253)
              {
                if (v92 == 13)
                {
                  v45 = DWORD2(v87[0]) - v94;
                  if (v45 <= 0x15)
                  {
                    _ETLDebugPrint("ETLMaverickParseMHIPeriodicRemoteWakeResponseV2", "Received response has only %u bytes, need %u bytes\n", v11, v12, v13, v14, v15, v16, v45);
                  }

                  else
                  {
                    v46 = *&v87[0] + v94;
                    if (!*v46)
                    {
                      v50 = *(v46 + 6);
                      v51 = *(v46 + 10);
                      v52 = *(v46 + 14);
                      v53 = *(v46 + 18);
                      v54 = *(v46 + 2);
                      _ETLDebugPrint("ETLMaverickParseMHIPeriodicRemoteWakeResponseV2", "Status: %s\n", v11, v12, v13, v14, v15, v16, "success");
                      if (a2 == 1)
                      {
                        v67 = "Invalid";
                        if (v54 == 2)
                        {
                          v67 = "Forced";
                        }

                        if (v54 == 1)
                        {
                          v67 = "Data Activity";
                        }

                        _ETLDebugPrint("ETLMaverickParseMHIPeriodicRemoteWakeResponseV2", "Wakeup reason: %s\n", v55, v56, v57, v58, v59, v60, v67);
                      }

                      else if (a2)
                      {
                        _ETLDebugPrint("ETLMaverickParseMHIPeriodicRemoteWakeResponseV2", "Invalid subCMD: %u\n", v55, v56, v57, v58, v59, v60, a2);
                      }

                      else
                      {
                        _ETLDebugPrint("ETLMaverickParseMHIPeriodicRemoteWakeResponseV2", "Delay: %u ms\n", v55, v56, v57, v58, v59, v60, v54);
                      }

                      v36 = 1;
                      _ETLDebugPrint("ETLMaverickParseMHIPeriodicRemoteWakeResponseV2", "MHI channel %d mask: %u\n", v61, v62, v63, v64, v65, v66, 1);
                      _ETLDebugPrint("ETLMaverickParseMHIPeriodicRemoteWakeResponseV2", "MHI channel %d mask: %u\n", v68, v69, v70, v71, v72, v73, 2);
                      _ETLDebugPrint("ETLMaverickParseMHIPeriodicRemoteWakeResponseV2", "MHI channel %d mask: %u\n", v74, v75, v76, v77, v78, v79, 3);
                      _ETLDebugPrint("ETLMaverickParseMHIPeriodicRemoteWakeResponseV2", "MHI channel %d mask: %u\n", v80, v81, v82, v83, v84, v85, 4);
                      goto LABEL_30;
                    }

                    _ETLDebugPrint("ETLMaverickParseMHIPeriodicRemoteWakeResponseV2", "Received response with failure status [%u]\n", v11, v12, v13, v14, v15, v16, *(*&v87[0] + v94));
                  }

                  goto LABEL_29;
                }

                _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v11, v12, v13, v14, v15, v16, v92);
              }

              else
              {
                _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", v11, v12, v13, v14, v15, v16, v93);
              }
            }

            v47 = "ETLMaverickParseMHIPeriodicRemoteWakeResponseV2";
            v48 = "Failed to parse BSP response header\n";
          }

LABEL_28:
          _ETLDebugPrint(v47, v48, v11, v12, v13, v14, v15, v16, v86);
LABEL_29:
          v36 = 0;
          goto LABEL_30;
        }

        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v24, v25, v26, v27, v28, v29, v86);
      }

      v47 = "ETLMaverickAddMHIPeriodicRemoteWakeHeaderV2";
      v48 = "Failed to create command header\n";
      goto LABEL_28;
    }

    v47 = "ETLMaverickMHIPeriodicRemoteWakeV2";
    v48 = "Failed to create command frame\n";
    goto LABEL_28;
  }

  _ETLDebugPrint("ETLMaverickMHIPeriodicRemoteWakeV2", "Transport cannot be NULL\n", a3, a4, a5, a6, a7, a8, v86);
  return 0;
}

uint64_t ETLMaverickADPLEnable(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _ETLDebugPrint("ETLMaverickADPLEnable", "transport cannot be NULL\n", a3, a4, a5, a6, a7, a8, v54);
    return 0;
  }

  memset(v57, 0, sizeof(v57));
  v58 = 0;
  memset(v55, 0, sizeof(v55));
  v56 = 0;
  if (!HDLCFrameCreateUplink())
  {
    goto LABEL_21;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v11, v12, v13, v14, v15, v16, FreeSpace);
LABEL_21:
    v46 = 0;
    goto LABEL_22;
  }

  v61 = 1073767499;
  v17 = HDLCFrameInject();
  if ((v17 & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v18, v19, v20, v21, v22, v23, v54);
    goto LABEL_21;
  }

  capabilities::etl::DPLVersion(v17);
  if (!HDLCFrameInjectUnsignedChar() || !HDLCFrameInjectUnsignedChar() || !HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedInt() || !ETLSendCommand(a1, v57, a3) || !ETLSubsysFindMatchingResponse(a1, v55, a3))
  {
    goto LABEL_21;
  }

  v61 = 0;
  v60 = -21846;
  v59 = -21846;
  v28 = ETLSubsysParseHeader(v55, &v60, &v59, &v61, v24, v25, v26, v27);
  if (!v28)
  {
    goto LABEL_25;
  }

  if (v60 != 100)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", v29, v30, v31, v32, v33, v34, v60);
LABEL_25:
    v35 = DWORD2(v55[0]) - v61;
    goto LABEL_26;
  }

  if (v59 != 0x4000)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v29, v30, v31, v32, v33, v34, v59);
    goto LABEL_25;
  }

  v35 = DWORD2(v55[0]) - v61;
  if (v35 <= 1)
  {
LABEL_26:
    _ETLDebugPrint("ETLMaverickADPLParseResponse", "Received response has only %u bytes, need %u bytes\n", v29, v30, v31, v32, v33, v34, v35);
    goto LABEL_21;
  }

  v36 = (*&v55[0] + v61);
  v37 = *v36;
  v38 = capabilities::etl::DPLVersion(v28);
  if (v37 != v38)
  {
    capabilities::etl::DPLVersion(v38);
    _ETLDebugPrint("ETLMaverickADPLParseResponse", "Received response with version [%u] while expecting [%u]\n", v48, v49, v50, v51, v52, v53, v37);
    v45 = v36[1];
    goto LABEL_28;
  }

  v45 = v36[1];
  if (v45 != 1)
  {
LABEL_28:
    _ETLDebugPrint("ETLMaverickADPLParseResponse", "Received response with failure status [%u]\n", v39, v40, v41, v42, v43, v44, v45);
    goto LABEL_21;
  }

  v46 = 1;
LABEL_22:
  HDLCFrameFree();
  HDLCFrameFree();
  return v46;
}

uint64_t ETLMaverickGetResetProperties(uint64_t (**a1)(void, uint64_t, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v44 = 0u;
    v45 = 0u;
    v46 = 0;
    memset(v42, 0, sizeof(v42));
    v43 = 0;
    if (HDLCFrameCreateUplink())
    {
      FreeSpace = HDLCFrameGetFreeSpace();
      if (FreeSpace < 4)
      {
        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v12, v13, v14, v15, v16, v17, FreeSpace);
      }

      else
      {
        v47 = 9436491;
        if (HDLCFrameInject())
        {
          v24 = malloc((2 * DWORD2(v44) + 32));
          if (!v24)
          {
LABEL_26:
            HDLCFrameFree();
            HDLCFrameFree();
            return v24;
          }

          v25 = HDLCFrameEncode();
          if (v25)
          {
            v26 = v25;
            v47 = -1431655766;
            if ((_ETLDebugFlags & 2) != 0)
            {
              off_2A18A5818(&str_3, 0, v24, v25);
            }

            if (*a1)
            {
              v27 = (*a1)(a1, v24, v26, &v47, 1, a3, 0);
              v28 = v47;
              free(v24);
              v24 = 0;
              if (!v27 || v28 != v26)
              {
                goto LABEL_26;
              }

              LOBYTE(v47) = 75;
              if (!_ETLResponseRingBuffer)
              {
                TelephonyUtilRingBufferInitialize();
              }

              v24 = 0;
              if (!ETLFindMatchingResponseUsingBuffer(a1, v42, &_ETLResponseRingBuffer, &v47, a3) || v47 != 75)
              {
                goto LABEL_26;
              }

              v35 = (DWORD2(v42[0]) - 4);
              if (DWORD2(v42[0]) < 4)
              {
                _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", v29, v30, v31, v32, v33, v34, DWORD2(v42[0]));
              }

              else
              {
                v36 = *&v42[0];
                v37 = **&v42[0];
                if (**&v42[0] == 75)
                {
                  if (BYTE1(v37) == 253)
                  {
                    v38 = HIWORD(v37);
                    if (v38 == 143)
                    {
                      if (v35 > 6)
                      {
                        *a2 = *(*&v42[0] + 4);
                        *(a2 + 2) = *(v36 + 5);
                        *(a2 + 4) = *(v36 + 7);
                        v24 = 1;
                        goto LABEL_26;
                      }

                      goto LABEL_33;
                    }

                    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v29, v30, v31, v32, v33, v34, v38);
                  }

                  else
                  {
                    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", v29, v30, v31, v32, v33, v34, BYTE1(v37));
                  }

                  v40 = -4;
LABEL_32:
                  v35 = (DWORD2(v42[0]) + v40);
LABEL_33:
                  _ETLDebugPrint("ETLMaverickGetResetPropertiesParseResponse", "Received response has only %u bytes, need %u bytes\n", v29, v30, v31, v32, v33, v34, v35);
                  goto LABEL_25;
                }

                _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", v29, v30, v31, v32, v33, v34, **&v42[0]);
              }

              v40 = 0;
              goto LABEL_32;
            }
          }

          free(v24);
        }

        else
        {
          _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v18, v19, v20, v21, v22, v23, v41);
        }
      }
    }

LABEL_25:
    v24 = 0;
    goto LABEL_26;
  }

  _ETLDebugPrint("ETLMaverickGetResetProperties", "transport cannot be NULL\n", a3, a4, a5, a6, a7, a8, v41);
  return 0;
}

uint64_t ETLMaverickQDSSEnable(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _ETLDebugPrint("ETLMaverickQDSSEnable", "transport cannot be NULL\n", a3, a4, a5, a6, a7, a8, v54);
    return 1;
  }

  v58 = 0u;
  v59 = 0u;
  v60 = 0;
  v55 = 0u;
  v56 = 0u;
  v57 = 0;
  if (!HDLCFrameCreateUplink())
  {
    goto LABEL_33;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v11, v12, v13, v14, v15, v16, FreeSpace);
LABEL_33:
    HDLCFrameFree();
    HDLCFrameFree();
    return 0;
  }

  v63 = 16865867;
  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v17, v18, v19, v20, v21, v22, v54);
    goto LABEL_33;
  }

  if (!HDLCFrameInjectUnsignedChar())
  {
    goto LABEL_33;
  }

  v23 = malloc((2 * DWORD2(v58) + 32));
  if (!v23)
  {
    goto LABEL_33;
  }

  v24 = v23;
  v25 = HDLCFrameEncode();
  if (!v25)
  {
    goto LABEL_35;
  }

  v26 = v25;
  v63 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v24, v25);
  }

  if (!*a1)
  {
LABEL_35:
    free(v24);
    goto LABEL_33;
  }

  v27 = (*a1)(a1, v24, v26, &v63, 1, a3, 0);
  v28 = v63;
  free(v24);
  if (!v27 || v28 != v26)
  {
    goto LABEL_33;
  }

  LOBYTE(v63) = 75;
  if (!_ETLResponseRingBuffer)
  {
    TelephonyUtilRingBufferInitialize();
  }

  if (!ETLFindMatchingResponseUsingBuffer(a1, &v55, &_ETLResponseRingBuffer, &v63, a3))
  {
    goto LABEL_33;
  }

  if (v63 != 75)
  {
    goto LABEL_33;
  }

  v63 = 0;
  v62 = -21846;
  v61 = -21846;
  if (!ETLSubsysParseHeader(&v55, &v62, &v61, &v63, v29, v30, v31, v32))
  {
    goto LABEL_33;
  }

  if (v62 != 90)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", v33, v34, v35, v36, v37, v38, v62);
    goto LABEL_33;
  }

  if (v61 != 257)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v33, v34, v35, v36, v37, v38, v61);
    goto LABEL_33;
  }

  HDLCFrameFree();
  HDLCFrameFree();
  v58 = 0u;
  v59 = 0u;
  v60 = 0;
  v55 = 0u;
  v56 = 0u;
  v57 = 0;
  if (!HDLCFrameCreateUplink() || !ETLMaverickQDSSBuildCommand() || !ETLSendCommand(a1, &v58, a3) || !ETLSubsysFindMatchingResponse(a1, &v55, a3))
  {
    goto LABEL_33;
  }

  v45 = ETLMaverickQDSSParseResponse(v55, DWORD2(v55), v39, v40, v41, v42, v43, v44);
  HDLCFrameFree();
  HDLCFrameFree();
  if (!v45)
  {
    return 0;
  }

  v58 = 0u;
  v59 = 0u;
  v60 = 0;
  v55 = 0u;
  v56 = 0u;
  v57 = 0;
  if (HDLCFrameCreateUplink() && ETLMaverickQDSSBuildCommand() && ETLSendCommand(a1, &v58, a3) && ETLSubsysFindMatchingResponse(a1, &v55, a3))
  {
    v52 = ETLMaverickQDSSParseResponse(v55, DWORD2(v55), v46, v47, v48, v49, v50, v51);
  }

  else
  {
    v52 = 0;
  }

  HDLCFrameFree();
  HDLCFrameFree();
  return v52;
}

uint64_t ETLMaverickQDSSBuildCommand()
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v1, v2, v3, v4, v5, v6, FreeSpace);
    return 0;
  }

  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v7, v8, v9, v10, v11, v12, v14);
    return 0;
  }

  if (!HDLCFrameInjectUnsignedChar() || !HDLCFrameInjectUnsignedChar() || !HDLCFrameInjectUnsignedChar() || !HDLCFrameInjectUnsignedChar() || !HDLCFrameInjectUnsignedChar() || !HDLCFrameInjectUnsignedChar() || !HDLCFrameInjectUnsignedChar() || !HDLCFrameInjectUnsignedChar() || !HDLCFrameInjectUnsignedChar())
  {
    return 0;
  }

  return HDLCFrameInjectUnsignedChar();
}

uint64_t ETLMaverickQDSSParseResponse(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a3, a4, a5, a6, a7, a8, a2);
    return 0;
  }

  else
  {
    v8 = *a1;
    if (*a1 == 75)
    {
      if (BYTE1(v8) == 18)
      {
        v9 = HIWORD(v8);
        if (v9 == 548)
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
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, *a1);
      return 0;
    }
  }
}

uint64_t ETLMaverickSetFlags(void *a1, uint64_t a2, _DWORD *a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    *a4 = 0;
    _ETLDebugPrint("ETLMaverickSetFlags", "Setting enabled to 0x%x\n", a3, a4, a5, a6, a7, a8, a2);
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    memset(v41, 0, sizeof(v41));
    v42 = 0;
    if (!HDLCFrameCreateUplink())
    {
      goto LABEL_25;
    }

    FreeSpace = HDLCFrameGetFreeSpace();
    if (FreeSpace < 4)
    {
      _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v13, v14, v15, v16, v17, v18, FreeSpace);
      goto LABEL_25;
    }

    v48 = 7994699;
    if (HDLCFrameInject())
    {
      if (HDLCFrameGetFreeSpace() <= 1)
      {
        v40 = 2;
        v36 = "ETLMaverickCreateSetFlagsCommand";
        v37 = "Not enough room, need %zu, have %u\n";
      }

      else
      {
        if (!HDLCFrameInjectUnsignedInt())
        {
          goto LABEL_25;
        }

        v25 = malloc((2 * DWORD2(v43) + 32));
        if (!v25)
        {
LABEL_26:
          HDLCFrameFree();
          HDLCFrameFree();
          return v25;
        }

        v26 = HDLCFrameEncode();
        if (!v26)
        {
          goto LABEL_28;
        }

        v27 = v26;
        v48 = -1431655766;
        if ((_ETLDebugFlags & 2) != 0)
        {
          off_2A18A5818(&str_3, 0, v25, v26);
        }

        if (!*a1)
        {
LABEL_28:
          free(v25);
          goto LABEL_25;
        }

        v28 = (*a1)(a1, v25, v27, &v48, 1, a5, 0);
        v29 = v48;
        free(v25);
        v25 = 0;
        if (!v28 || v29 != v27)
        {
          goto LABEL_26;
        }

        if (!ETLSubsysFindMatchingResponse(a1, v41, a5))
        {
          goto LABEL_25;
        }

        v48 = 0;
        v47 = -21846;
        v46 = -21846;
        if (ETLSubsysParseHeader(v41, &v47, &v46, &v48, v30, v31, v32, v33))
        {
          if (v47 == 253)
          {
            if (v46 == 121)
            {
              *a4 = 0;
              v34 = DWORD2(v41[0]) - v48;
              if (v34 > 7)
              {
                v35 = (*&v41[0] + v48);
                *a3 = *v35;
                *a4 = v35[1];
                _ETLDebugPrint("ETLMaverickParseSetFlagsResponse", "Received response w/ flag [%u] and version [%u]\n", v19, v20, v21, v22, v23, v24, *a3);
                v25 = 1;
                goto LABEL_26;
              }

              _ETLDebugPrint("ETLMaverickParseSetFlagsResponse", "Received response has only %u bytes, need %u bytes\n", v19, v20, v21, v22, v23, v24, v34);
LABEL_25:
              v25 = 0;
              goto LABEL_26;
            }

            _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v19, v20, v21, v22, v23, v24, v46);
          }

          else
          {
            _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", v19, v20, v21, v22, v23, v24, v47);
          }
        }

        v36 = "ETLMaverickParseSetFlagsResponse";
        v37 = "Failed to parse BSP response header\n";
      }
    }

    else
    {
      v36 = "ETLSubsysAddHeaderInternal";
      v37 = "Failed to inject\n";
    }

    _ETLDebugPrint(v36, v37, v19, v20, v21, v22, v23, v24, v40);
    goto LABEL_25;
  }

  _ETLDebugPrint("ETLMaverickSetFlags", "transport cannot be NULL\n", a3, a4, a5, a6, a7, a8, v39);
  return 0;
}

uint64_t ETLMaverickParseCSNResponse(unsigned int *a1, _DWORD *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a2 = 0;
  *a3 = 0;
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
        if (v11 == a4)
        {
          if (v9 <= 0x11)
          {
            _ETLDebugPrint("ETLMaverickParseCSNResponse", "Received response has only %u bytes, need %u\n", a3, a4, a5, a6, a7, a8, v9);
            return 0;
          }

          else
          {
            v12 = *(*a1 + 4);
            *a3 = v12;
            switch(v12)
            {
              case 3:
                result = 1;
                *a2 = 1;
                break;
              case 2:
                return 1;
              case 1:
                *a2 = 2;
                return 1;
              default:
                return 0;
            }
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

  return result;
}

uint64_t ETLMaverickGetCardType(void *a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v49 = 0u;
  v50 = 0u;
  v51 = 0;
  memset(v47, 0, sizeof(v47));
  v48 = 0;
  if (!a2 || (HDLCFrameCreateUplink() & 1) == 0)
  {
    v29 = "ETLMaverickGetCardType";
    v30 = "Failed to create command frame\n";
LABEL_20:
    _ETLDebugPrint(v29, v30, a3, a4, a5, a6, a7, a8, v45);
LABEL_21:
    v24 = 0;
    goto LABEL_22;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v12, v13, v14, v15, v16, v17, FreeSpace);
    goto LABEL_21;
  }

  v52 = 5504331;
  if ((HDLCFrameInject() & 1) == 0)
  {
    v29 = "ETLSubsysAddHeaderInternal";
    v30 = "Failed to inject\n";
    goto LABEL_20;
  }

  v46 = -86;
  if (!HDLCFrameInjectUnsignedChar())
  {
    goto LABEL_21;
  }

  v18 = malloc((2 * DWORD2(v49) + 32));
  if (!v18)
  {
    goto LABEL_21;
  }

  v19 = v18;
  v20 = HDLCFrameEncode();
  if (!v20)
  {
    goto LABEL_44;
  }

  v21 = v20;
  v52 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v19, v20);
  }

  if (!*a1)
  {
LABEL_44:
    free(v19);
    goto LABEL_21;
  }

  v22 = (*a1)(a1, v19, v21, &v52, 1, a4, 0);
  v23 = v52;
  free(v19);
  v24 = 0;
  if (v22 && v23 == v21)
  {
    LOBYTE(v52) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    v24 = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, v47, &_ETLResponseRingBuffer, &v52, a4))
    {
      if (v52 == 75)
      {
        v24 = ETLMaverickParseCSNResponse(v47, a2, &v46, 83, v25, v26, v27, v28);
        if (v46 == 2)
        {
          while (1)
          {
            while (1)
            {
              do
              {
                do
                {
                  v32 = v24;
                  usleep(0x186A0u);
                  LOBYTE(v24) = 0;
                }

                while ((v32 & 1) == 0);
                v33 = malloc((2 * DWORD2(v49) + 32));
                LOBYTE(v24) = 0;
              }

              while (!v33);
              v34 = v33;
              v35 = HDLCFrameEncode();
              if (v35)
              {
                break;
              }

LABEL_23:
              free(v34);
              LOBYTE(v24) = 0;
            }

            v36 = v35;
            v52 = -1431655766;
            if ((_ETLDebugFlags & 2) != 0)
            {
              off_2A18A5818(&str_3, 0, v34, v35);
              v37 = *a1;
              if (!*a1)
              {
                goto LABEL_23;
              }
            }

            else
            {
              v37 = *a1;
              if (!*a1)
              {
                goto LABEL_23;
              }
            }

            v38 = v37(a1, v34, v36, &v52, 1, a4, 0);
            v39 = v52;
            free(v34);
            LOBYTE(v24) = 0;
            if (v38)
            {
              v40 = v39 == v36;
            }

            else
            {
              v40 = 0;
            }

            if (v40)
            {
              LOBYTE(v52) = 75;
              if (!_ETLResponseRingBuffer)
              {
                TelephonyUtilRingBufferInitialize();
              }

              LOBYTE(v24) = 0;
              if (ETLFindMatchingResponseUsingBuffer(a1, v47, &_ETLResponseRingBuffer, &v52, a4))
              {
                if (v52 == 75)
                {
                  v24 = ETLMaverickParseCSNResponse(v47, a2, &v46, 83, v41, v42, v43, v44);
                  if (v46 != 2)
                  {
                    break;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_22:
  HDLCFrameFree();
  HDLCFrameFree();
  return v24;
}

uint64_t ETLCDMAMakeMEID(_DWORD *a1, int *a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  if (!v2)
  {
    v4 = *a2;
    *(a1 + 3) = *(a2 + 3);
    *a1 = v4;
  }

  return v3;
}

uint64_t ETLCDMAMakeMEIDFromString(_BYTE *a1, char *__s, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = 0;
  if (a1 && __s && (v9 = strlen(__s), v9 == 14))
  {
    v11 = __s[13];
    v12 = __s[12];
    v13 = TelephonyUtilDecodeHexWithDefault();
    v14 = TelephonyUtilDecodeHexWithDefault();
    if (((v14 | (16 * v13)) & 0x80000000) == 0)
    {
      *a1 = v14 | (16 * v13);
      v15 = __s[11];
      v16 = __s[10];
      v17 = TelephonyUtilDecodeHexWithDefault();
      v18 = TelephonyUtilDecodeHexWithDefault();
      if (((v18 | (16 * v17)) & 0x80000000) == 0)
      {
        a1[1] = v18 | (16 * v17);
        v19 = __s[9];
        v20 = __s[8];
        v21 = TelephonyUtilDecodeHexWithDefault();
        v22 = TelephonyUtilDecodeHexWithDefault();
        if (((v22 | (16 * v21)) & 0x80000000) == 0)
        {
          a1[2] = v22 | (16 * v21);
          v23 = __s[7];
          v24 = __s[6];
          v25 = TelephonyUtilDecodeHexWithDefault();
          v26 = TelephonyUtilDecodeHexWithDefault();
          if (((v26 | (16 * v25)) & 0x80000000) == 0)
          {
            a1[3] = v26 | (16 * v25);
            v27 = __s[5];
            v28 = __s[4];
            v29 = TelephonyUtilDecodeHexWithDefault();
            v30 = TelephonyUtilDecodeHexWithDefault();
            if (((v30 | (16 * v29)) & 0x80000000) == 0)
            {
              a1[4] = v30 | (16 * v29);
              v31 = __s[3];
              v32 = __s[2];
              v33 = TelephonyUtilDecodeHexWithDefault();
              v34 = TelephonyUtilDecodeHexWithDefault();
              if (((v34 | (16 * v33)) & 0x80000000) == 0)
              {
                a1[5] = v34 | (16 * v33);
                v35 = __s[1];
                v36 = *__s;
                v37 = TelephonyUtilDecodeHexWithDefault();
                v38 = TelephonyUtilDecodeHexWithDefault() | (16 * v37);
                if ((v38 & 0x80000000) == 0)
                {
                  a1[6] = v38;
                  return 1;
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    _ETLDebugPrint("ETLCDMAMakeMEIDFromString", "MEID length is %zu, expected %u\n", a3, a4, a5, a6, a7, a8, v9);
  }

  return 0;
}

uint64_t ETLCDMAMakeStringFromMEID(_BYTE *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v8 = a3 == 0;
  }

  else
  {
    v8 = 1;
  }

  v10 = !v8 && a2 > 0xE;
  if (v10 == 1)
  {
    v12 = a3[6];
    TelephonyUtilEncodeHex();
    *a1 = -86;
    a1[1] = -86;
    v14 = a3[5];
    TelephonyUtilEncodeHex();
    a1[2] = -86;
    a1[3] = -86;
    v15 = a3[4];
    TelephonyUtilEncodeHex();
    a1[4] = -86;
    a1[5] = -86;
    v16 = a3[3];
    TelephonyUtilEncodeHex();
    a1[6] = -86;
    a1[7] = -86;
    v17 = a3[2];
    TelephonyUtilEncodeHex();
    a1[8] = -86;
    a1[9] = -86;
    v18 = a3[1];
    TelephonyUtilEncodeHex();
    a1[10] = -86;
    a1[11] = -86;
    v19 = *a3;
    TelephonyUtilEncodeHex();
    a1[12] = -86;
    a1[13] = -86;
    a1[14] = 0;
  }

  else
  {
    _ETLDebugPrint("ETLCDMAMakeStringFromMEID", "buffer capacity is %u, need %u\n", a3, a4, a5, a6, a7, a8, a2);
  }

  return v10;
}

uint64_t ETLCDMAMakeStringFromMEIDRegular(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a3 == 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = !v3 && a2 > 0xE;
  if (v5 == 1)
  {
    TelephonyUtilBinToHex();
  }

  return v5;
}

uint64_t ETLCDMAGetMEID(uint64_t (**a1)(void, void *, uint64_t, _OWORD *, uint64_t, uint64_t, void), _DWORD *a2, uint64_t a3)
{
  v9 = *MEMORY[0x29EDCA608];
  v6 = -1431655766;
  v7 = -1431655766;
  memset(v8, 0, sizeof(v8));
  result = ETLNVRead(a1, 1943, v8, 128, &v7, &v6, a3);
  if (result)
  {
    if (v6 != 5 && v6 || v7 < 7)
    {
      result = 0;
    }

    else
    {
      *a2 = v8[0];
      *(a2 + 3) = *(v8 + 3);
      result = 1;
    }
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL ETLCDMAIsValidMEID(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *MEMORY[0x29EDCA608];
  memset(__s2, 170, 15);
  ETLCDMAMakeStringFromMEID(__s2, 15, a1, a4, a5, a6, a7, a8);
  result = strncmp(kDefaultMEID, __s2, 0xEuLL) != 0;
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_API_MAV_SendFuseCommand(void *a1, unsigned int a2, __int16 a3, __int16 a4, int *a5, int a6)
{
  if (a6 != 4)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = v6;
  v12 = v7;
  v9[0] = a4;
  v9[1] = a3;
  v10 = *a5;
  return APPLIB_API_SUBSYS_SendCommand(a1, a2, 253, 11, v9, 8);
}

uint64_t APPLIB_API_MAV_ParseFuseResponse(uint64_t a1, unsigned int a2, _WORD *a3, _DWORD *a4)
{
  if (a2 < 4)
  {
    return 0;
  }

  result = 0;
  if (*a1 == 75 && *(a1 + 1) == 253)
  {
    if (*(a1 + 2) != 11)
    {
      return 0;
    }

    *a3 = *(a1 + 4);
    *a4 = *(a1 + 6);
    return 1;
  }

  return result;
}

uint64_t APPLIB_API_MAV_ParseAPWakeResponse(uint64_t a1, unsigned int a2, uint64_t a3, _WORD *a4)
{
  *a4 = -1;
  if (a2 < 4)
  {
    return 0;
  }

  result = 0;
  if (*a1 == 75 && *(a1 + 1) == 253)
  {
    if (*(a1 + 2) != 13)
    {
      return 0;
    }

    *a4 = *(a1 + 6);
    return 1;
  }

  return result;
}

uint64_t APPLIB_DIAG_CreateFile(char *a1, int a2, const void *a3, int a4)
{
  v47 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a4 <= 32 && a4 + 7 <= a2)
  {
    bzero(a1, a2);
    *a1 = 523851;
    memcpy(a1 + 4, a3, a4);
    v9 = crc_16_l_table[a1[4] ^ 0xA4];
    v10 = crc_16_l_table[(a1[5] ^ v9) ^ 4];
    v11 = crc_16_l_table[(a1[6] ^ v10 ^ HIBYTE(v9))];
    v12 = crc_16_l_table[(a1[7] ^ v11 ^ HIBYTE(v10))];
    v13 = crc_16_l_table[(a1[8] ^ v12 ^ HIBYTE(v11))];
    v14 = crc_16_l_table[(a1[9] ^ v13 ^ HIBYTE(v12))];
    v15 = crc_16_l_table[(a1[10] ^ v14 ^ HIBYTE(v13))];
    v16 = crc_16_l_table[(a1[11] ^ v15 ^ HIBYTE(v14))];
    v17 = crc_16_l_table[(a1[12] ^ v16 ^ HIBYTE(v15))];
    v18 = crc_16_l_table[(a1[13] ^ v17 ^ HIBYTE(v16))];
    v19 = crc_16_l_table[(a1[14] ^ v18 ^ HIBYTE(v17))];
    v20 = crc_16_l_table[(a1[15] ^ v19 ^ HIBYTE(v18))];
    v21 = crc_16_l_table[(a1[16] ^ v20 ^ HIBYTE(v19))];
    v22 = crc_16_l_table[(a1[17] ^ v21 ^ HIBYTE(v20))];
    v23 = crc_16_l_table[(a1[18] ^ v22 ^ HIBYTE(v21))];
    v24 = crc_16_l_table[(a1[19] ^ v23 ^ HIBYTE(v22))];
    v25 = crc_16_l_table[(a1[20] ^ v24 ^ HIBYTE(v23))];
    v26 = crc_16_l_table[(a1[21] ^ v25 ^ HIBYTE(v24))];
    v27 = crc_16_l_table[(a1[22] ^ v26 ^ HIBYTE(v25))];
    v28 = crc_16_l_table[(a1[23] ^ v27 ^ HIBYTE(v26))];
    v29 = crc_16_l_table[(a1[24] ^ v28 ^ HIBYTE(v27))];
    v30 = crc_16_l_table[(a1[25] ^ v29 ^ HIBYTE(v28))];
    v31 = crc_16_l_table[(a1[26] ^ v30 ^ HIBYTE(v29))];
    v32 = crc_16_l_table[(a1[27] ^ v31 ^ HIBYTE(v30))];
    v33 = crc_16_l_table[(a1[28] ^ v32 ^ HIBYTE(v31))];
    v34 = crc_16_l_table[(a1[29] ^ v33 ^ HIBYTE(v32))];
    v35 = crc_16_l_table[(a1[30] ^ v34 ^ HIBYTE(v33))];
    v36 = crc_16_l_table[(a1[31] ^ v35 ^ HIBYTE(v34))];
    v37 = crc_16_l_table[(a1[32] ^ v36 ^ HIBYTE(v35))];
    v38 = crc_16_l_table[(a1[33] ^ v37 ^ HIBYTE(v36))];
    v39 = crc_16_l_table[(a1[34] ^ v38 ^ HIBYTE(v37))];
    *(a1 + 18) = crc_16_l_table[(a1[35] ^ v39 ^ HIBYTE(v38))] ^ ~(v39 >> 8);
    if (a2 >= 76)
    {
      bzero(__src, 0x800uLL);
      v40 = 0;
      v41 = 0;
      do
      {
        while (1)
        {
          v42 = a1[v40];
          v43 = v41;
          v44 = v41 + 1;
          if ((v42 - 125) > 1)
          {
            break;
          }

          v41 += 2;
          __src[v44] = v42 & 0x5F;
          __src[v43] = 125;
          if (++v40 == 38)
          {
            goto LABEL_10;
          }
        }

        ++v41;
        __src[v43] = v42;
        ++v40;
      }

      while (v40 != 38);
LABEL_10:
      memcpy(a1, __src, v41);
      result = (v41 + 1);
      a1[v41] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v45 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_GetFileInfo(char *a1, int a2, const void *a3, int a4)
{
  v47 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a4 <= 32 && a4 + 7 <= a2)
  {
    bzero(a1, a2);
    *a1 = 785995;
    memcpy(a1 + 4, a3, a4);
    v9 = crc_16_l_table[a1[4] ^ 4];
    v10 = crc_16_l_table[a1[5] ^ 0xAD ^ v9];
    v11 = crc_16_l_table[(a1[6] ^ v10 ^ HIBYTE(v9))];
    v12 = crc_16_l_table[(a1[7] ^ v11 ^ HIBYTE(v10))];
    v13 = crc_16_l_table[(a1[8] ^ v12 ^ HIBYTE(v11))];
    v14 = crc_16_l_table[(a1[9] ^ v13 ^ HIBYTE(v12))];
    v15 = crc_16_l_table[(a1[10] ^ v14 ^ HIBYTE(v13))];
    v16 = crc_16_l_table[(a1[11] ^ v15 ^ HIBYTE(v14))];
    v17 = crc_16_l_table[(a1[12] ^ v16 ^ HIBYTE(v15))];
    v18 = crc_16_l_table[(a1[13] ^ v17 ^ HIBYTE(v16))];
    v19 = crc_16_l_table[(a1[14] ^ v18 ^ HIBYTE(v17))];
    v20 = crc_16_l_table[(a1[15] ^ v19 ^ HIBYTE(v18))];
    v21 = crc_16_l_table[(a1[16] ^ v20 ^ HIBYTE(v19))];
    v22 = crc_16_l_table[(a1[17] ^ v21 ^ HIBYTE(v20))];
    v23 = crc_16_l_table[(a1[18] ^ v22 ^ HIBYTE(v21))];
    v24 = crc_16_l_table[(a1[19] ^ v23 ^ HIBYTE(v22))];
    v25 = crc_16_l_table[(a1[20] ^ v24 ^ HIBYTE(v23))];
    v26 = crc_16_l_table[(a1[21] ^ v25 ^ HIBYTE(v24))];
    v27 = crc_16_l_table[(a1[22] ^ v26 ^ HIBYTE(v25))];
    v28 = crc_16_l_table[(a1[23] ^ v27 ^ HIBYTE(v26))];
    v29 = crc_16_l_table[(a1[24] ^ v28 ^ HIBYTE(v27))];
    v30 = crc_16_l_table[(a1[25] ^ v29 ^ HIBYTE(v28))];
    v31 = crc_16_l_table[(a1[26] ^ v30 ^ HIBYTE(v29))];
    v32 = crc_16_l_table[(a1[27] ^ v31 ^ HIBYTE(v30))];
    v33 = crc_16_l_table[(a1[28] ^ v32 ^ HIBYTE(v31))];
    v34 = crc_16_l_table[(a1[29] ^ v33 ^ HIBYTE(v32))];
    v35 = crc_16_l_table[(a1[30] ^ v34 ^ HIBYTE(v33))];
    v36 = crc_16_l_table[(a1[31] ^ v35 ^ HIBYTE(v34))];
    v37 = crc_16_l_table[(a1[32] ^ v36 ^ HIBYTE(v35))];
    v38 = crc_16_l_table[(a1[33] ^ v37 ^ HIBYTE(v36))];
    v39 = crc_16_l_table[(a1[34] ^ v38 ^ HIBYTE(v37))];
    *(a1 + 18) = crc_16_l_table[(a1[35] ^ v39 ^ HIBYTE(v38))] ^ ~(v39 >> 8);
    if (a2 >= 76)
    {
      bzero(__src, 0x800uLL);
      v40 = 0;
      v41 = 0;
      do
      {
        while (1)
        {
          v42 = a1[v40];
          v43 = v41;
          v44 = v41 + 1;
          if ((v42 - 125) > 1)
          {
            break;
          }

          v41 += 2;
          __src[v44] = v42 & 0x5F;
          __src[v43] = 125;
          if (++v40 == 38)
          {
            goto LABEL_10;
          }
        }

        ++v41;
        __src[v43] = v42;
        ++v40;
      }

      while (v40 != 38);
LABEL_10:
      memcpy(a1, __src, v41);
      result = (v41 + 1);
      a1[v41] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v45 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_DeleteFile(char *a1, int a2, const void *a3, int a4)
{
  v47 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a4 <= 32 && a4 + 7 <= a2)
  {
    bzero(a1, a2);
    *a1 = 589387;
    memcpy(a1 + 4, a3, a4);
    v9 = crc_16_l_table[a1[4] ^ 0x6CLL];
    v10 = crc_16_l_table[(a1[5] ^ v9) ^ 0x87];
    v11 = crc_16_l_table[(a1[6] ^ v10 ^ HIBYTE(v9))];
    v12 = crc_16_l_table[(a1[7] ^ v11 ^ HIBYTE(v10))];
    v13 = crc_16_l_table[(a1[8] ^ v12 ^ HIBYTE(v11))];
    v14 = crc_16_l_table[(a1[9] ^ v13 ^ HIBYTE(v12))];
    v15 = crc_16_l_table[(a1[10] ^ v14 ^ HIBYTE(v13))];
    v16 = crc_16_l_table[(a1[11] ^ v15 ^ HIBYTE(v14))];
    v17 = crc_16_l_table[(a1[12] ^ v16 ^ HIBYTE(v15))];
    v18 = crc_16_l_table[(a1[13] ^ v17 ^ HIBYTE(v16))];
    v19 = crc_16_l_table[(a1[14] ^ v18 ^ HIBYTE(v17))];
    v20 = crc_16_l_table[(a1[15] ^ v19 ^ HIBYTE(v18))];
    v21 = crc_16_l_table[(a1[16] ^ v20 ^ HIBYTE(v19))];
    v22 = crc_16_l_table[(a1[17] ^ v21 ^ HIBYTE(v20))];
    v23 = crc_16_l_table[(a1[18] ^ v22 ^ HIBYTE(v21))];
    v24 = crc_16_l_table[(a1[19] ^ v23 ^ HIBYTE(v22))];
    v25 = crc_16_l_table[(a1[20] ^ v24 ^ HIBYTE(v23))];
    v26 = crc_16_l_table[(a1[21] ^ v25 ^ HIBYTE(v24))];
    v27 = crc_16_l_table[(a1[22] ^ v26 ^ HIBYTE(v25))];
    v28 = crc_16_l_table[(a1[23] ^ v27 ^ HIBYTE(v26))];
    v29 = crc_16_l_table[(a1[24] ^ v28 ^ HIBYTE(v27))];
    v30 = crc_16_l_table[(a1[25] ^ v29 ^ HIBYTE(v28))];
    v31 = crc_16_l_table[(a1[26] ^ v30 ^ HIBYTE(v29))];
    v32 = crc_16_l_table[(a1[27] ^ v31 ^ HIBYTE(v30))];
    v33 = crc_16_l_table[(a1[28] ^ v32 ^ HIBYTE(v31))];
    v34 = crc_16_l_table[(a1[29] ^ v33 ^ HIBYTE(v32))];
    v35 = crc_16_l_table[(a1[30] ^ v34 ^ HIBYTE(v33))];
    v36 = crc_16_l_table[(a1[31] ^ v35 ^ HIBYTE(v34))];
    v37 = crc_16_l_table[(a1[32] ^ v36 ^ HIBYTE(v35))];
    v38 = crc_16_l_table[(a1[33] ^ v37 ^ HIBYTE(v36))];
    v39 = crc_16_l_table[(a1[34] ^ v38 ^ HIBYTE(v37))];
    *(a1 + 18) = crc_16_l_table[(a1[35] ^ v39 ^ HIBYTE(v38))] ^ ~(v39 >> 8);
    if (a2 >= 76)
    {
      bzero(__src, 0x800uLL);
      v40 = 0;
      v41 = 0;
      do
      {
        while (1)
        {
          v42 = a1[v40];
          v43 = v41;
          v44 = v41 + 1;
          if ((v42 - 125) > 1)
          {
            break;
          }

          v41 += 2;
          __src[v44] = v42 & 0x5F;
          __src[v43] = 125;
          if (++v40 == 38)
          {
            goto LABEL_10;
          }
        }

        ++v41;
        __src[v43] = v42;
        ++v40;
      }

      while (v40 != 38);
LABEL_10:
      memcpy(a1, __src, v41);
      result = (v41 + 1);
      a1[v41] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v45 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_WriteFile(char *a1, int a2, const void *a3, int a4, int a5, _OWORD *a6)
{
  v30 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a4 <= 32 && a4 + 135 <= a2)
  {
    bzero(a1, a2);
    *a1 = 720459;
    *(a1 + 1) = a5;
    memcpy(a1 + 8, a3, a4);
    v13 = a6[2];
    v14 = a6[3];
    v15 = a6[1];
    *(a1 + 40) = *a6;
    *(a1 + 88) = v14;
    *(a1 + 72) = v13;
    *(a1 + 56) = v15;
    v16 = a6[6];
    v17 = a6[7];
    v18 = a6[5];
    *(a1 + 104) = a6[4];
    *(a1 + 152) = v17;
    *(a1 + 136) = v16;
    *(a1 + 120) = v18;
    v19 = 1344;
    LOWORD(v20) = -1;
    v21 = a1;
    do
    {
      v22 = *v21++;
      v20 = crc_16_l_table[(v22 ^ v20)] ^ ((v20 & 0xFF00) >> 8);
      v19 -= 8;
    }

    while (v19);
    *(a1 + 84) = ~v20;
    if (a2 >= 340)
    {
      bzero(__src, 0x800uLL);
      v23 = 0;
      v24 = 0;
      do
      {
        while (1)
        {
          v25 = a1[v23];
          v26 = v24;
          v27 = v24 + 1;
          if ((v25 - 125) > 1)
          {
            break;
          }

          v24 += 2;
          __src[v27] = v25 & 0x5F;
          __src[v26] = 125;
          if (++v23 == 170)
          {
            goto LABEL_12;
          }
        }

        ++v24;
        __src[v26] = v25;
        ++v23;
      }

      while (v23 != 170);
LABEL_12:
      memcpy(a1, __src, v24);
      result = (v24 + 1);
      a1[v24] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v28 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_ReadFile(char *a1, int a2, const void *a3, int a4, int a5)
{
  v53 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1 && a4 <= 32 && a4 + 135 <= a2)
  {
    bzero(a1, a2);
    *a1 = 654923;
    *(a1 + 1) = a5;
    memcpy(a1 + 8, a3, a4);
    v11 = crc_16_l_table[a5 ^ 0xB4];
    v12 = crc_16_l_table[(v11 ^ BYTE1(a5)) ^ 0x9E];
    v13 = crc_16_l_table[(v12 ^ HIBYTE(v11) ^ BYTE2(a5))];
    v14 = crc_16_l_table[(a1[7] ^ v13 ^ HIBYTE(v12))];
    v15 = crc_16_l_table[(a1[8] ^ v14 ^ HIBYTE(v13))];
    v16 = crc_16_l_table[(a1[9] ^ v15 ^ HIBYTE(v14))];
    v17 = crc_16_l_table[(a1[10] ^ v16 ^ HIBYTE(v15))];
    v18 = crc_16_l_table[(a1[11] ^ v17 ^ HIBYTE(v16))];
    v19 = crc_16_l_table[(a1[12] ^ v18 ^ HIBYTE(v17))];
    v20 = crc_16_l_table[(a1[13] ^ v19 ^ HIBYTE(v18))];
    v21 = crc_16_l_table[(a1[14] ^ v20 ^ HIBYTE(v19))];
    v22 = crc_16_l_table[(a1[15] ^ v21 ^ HIBYTE(v20))];
    v23 = crc_16_l_table[(a1[16] ^ v22 ^ HIBYTE(v21))];
    v24 = crc_16_l_table[(a1[17] ^ v23 ^ HIBYTE(v22))];
    v25 = crc_16_l_table[(a1[18] ^ v24 ^ HIBYTE(v23))];
    v26 = crc_16_l_table[(a1[19] ^ v25 ^ HIBYTE(v24))];
    v27 = crc_16_l_table[(a1[20] ^ v26 ^ HIBYTE(v25))];
    v28 = crc_16_l_table[(a1[21] ^ v27 ^ HIBYTE(v26))];
    v29 = crc_16_l_table[(a1[22] ^ v28 ^ HIBYTE(v27))];
    v30 = crc_16_l_table[(a1[23] ^ v29 ^ HIBYTE(v28))];
    v31 = crc_16_l_table[(a1[24] ^ v30 ^ HIBYTE(v29))];
    v32 = crc_16_l_table[(a1[25] ^ v31 ^ HIBYTE(v30))];
    v33 = crc_16_l_table[(a1[26] ^ v32 ^ HIBYTE(v31))];
    v34 = crc_16_l_table[(a1[27] ^ v33 ^ HIBYTE(v32))];
    v35 = crc_16_l_table[(a1[28] ^ v34 ^ HIBYTE(v33))];
    v36 = crc_16_l_table[(a1[29] ^ v35 ^ HIBYTE(v34))];
    v37 = crc_16_l_table[(a1[30] ^ v36 ^ HIBYTE(v35))];
    v38 = crc_16_l_table[(a1[31] ^ v37 ^ HIBYTE(v36))];
    v39 = crc_16_l_table[(a1[32] ^ v38 ^ HIBYTE(v37))];
    v40 = crc_16_l_table[(a1[33] ^ v39 ^ HIBYTE(v38))];
    v41 = crc_16_l_table[(a1[34] ^ v40 ^ HIBYTE(v39))];
    v42 = crc_16_l_table[(a1[35] ^ v41 ^ HIBYTE(v40))];
    v43 = crc_16_l_table[(a1[36] ^ v42 ^ HIBYTE(v41))];
    v44 = crc_16_l_table[(a1[37] ^ v43 ^ HIBYTE(v42))];
    v45 = crc_16_l_table[(a1[38] ^ v44 ^ HIBYTE(v43))];
    *(a1 + 20) = crc_16_l_table[(a1[39] ^ v45 ^ HIBYTE(v44))] ^ ~(v45 >> 8);
    if (a2 >= 84)
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
          if (++v46 == 42)
          {
            goto LABEL_10;
          }
        }

        ++v47;
        __src[v49] = v48;
        ++v46;
      }

      while (v46 != 42);
LABEL_10:
      memcpy(a1, __src, v47);
      result = (v47 + 1);
      a1[v47] = 126;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v51 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t APPLIB_DIAG_ReadICCID_EFS_File(void *a1, int a2)
{
  v46 = *MEMORY[0x29EDCA608];
  if (a2 >= 512 && (memset(v44, 0, 25), v3 = a2, bzero(a1, a2), a1))
  {
    bzero(a1, v3);
    *a1 = 654923;
    *(a1 + 2) = 778922355;
    *(a1 + 6) = 30836;
    *(a1 + 14) = 116;
    *(a1 + 15) = v44[0];
    *(a1 + 3) = *(v44 + 9);
    v4 = crc_16_l_table[*(a1 + 7) ^ 0x6ELL];
    v5 = crc_16_l_table[*(a1 + 8) ^ 0x6A ^ v4];
    v6 = crc_16_l_table[(*(a1 + 9) ^ v5 ^ HIBYTE(v4))];
    v7 = crc_16_l_table[(*(a1 + 10) ^ v6 ^ HIBYTE(v5))];
    v8 = crc_16_l_table[(*(a1 + 11) ^ v7 ^ HIBYTE(v6))];
    v9 = crc_16_l_table[(v8 ^ HIBYTE(v7)) ^ 0x74];
    v10 = crc_16_l_table[(v9 ^ HIBYTE(v8)) ^ 0x78];
    v11 = crc_16_l_table[(v10 ^ HIBYTE(v9)) ^ 0x74];
    v12 = crc_16_l_table[(*(a1 + 15) ^ v11 ^ HIBYTE(v10))];
    v13 = crc_16_l_table[(*(a1 + 16) ^ v12 ^ HIBYTE(v11))];
    v14 = crc_16_l_table[(*(a1 + 17) ^ v13 ^ HIBYTE(v12))];
    v15 = crc_16_l_table[(*(a1 + 18) ^ v14 ^ HIBYTE(v13))];
    v16 = crc_16_l_table[(*(a1 + 19) ^ v15 ^ HIBYTE(v14))];
    v17 = crc_16_l_table[(*(a1 + 20) ^ v16 ^ HIBYTE(v15))];
    v18 = crc_16_l_table[(*(a1 + 21) ^ v17 ^ HIBYTE(v16))];
    v19 = crc_16_l_table[(*(a1 + 22) ^ v18 ^ HIBYTE(v17))];
    v20 = crc_16_l_table[(*(a1 + 23) ^ v19 ^ HIBYTE(v18))];
    v21 = crc_16_l_table[(*(a1 + 24) ^ v20 ^ HIBYTE(v19))];
    v22 = crc_16_l_table[(*(a1 + 25) ^ v21 ^ HIBYTE(v20))];
    v23 = crc_16_l_table[(*(a1 + 26) ^ v22 ^ HIBYTE(v21))];
    v24 = crc_16_l_table[(*(a1 + 27) ^ v23 ^ HIBYTE(v22))];
    v25 = crc_16_l_table[(*(a1 + 28) ^ v24 ^ HIBYTE(v23))];
    v26 = crc_16_l_table[(*(a1 + 29) ^ v25 ^ HIBYTE(v24))];
    v27 = crc_16_l_table[(*(a1 + 30) ^ v26 ^ HIBYTE(v25))];
    v28 = crc_16_l_table[(*(a1 + 31) ^ v27 ^ HIBYTE(v26))];
    v29 = crc_16_l_table[(*(a1 + 32) ^ v28 ^ HIBYTE(v27))];
    v30 = crc_16_l_table[(*(a1 + 33) ^ v29 ^ HIBYTE(v28))];
    v31 = crc_16_l_table[(*(a1 + 34) ^ v30 ^ HIBYTE(v29))];
    v32 = crc_16_l_table[(*(a1 + 35) ^ v31 ^ HIBYTE(v30))];
    v33 = crc_16_l_table[(*(a1 + 36) ^ v32 ^ HIBYTE(v31))];
    v34 = crc_16_l_table[(*(a1 + 37) ^ v33 ^ HIBYTE(v32))];
    v35 = crc_16_l_table[(*(a1 + 38) ^ v34 ^ HIBYTE(v33))];
    *(a1 + 20) = crc_16_l_table[(*(a1 + 39) ^ v35 ^ HIBYTE(v34))] ^ ~(v35 >> 8);
    bzero(__src, 0x800uLL);
    v36 = 0;
    v37 = 0;
    do
    {
      while (1)
      {
        v38 = *(a1 + v36);
        v39 = v37;
        v40 = v37 + 1;
        if ((v38 - 125) > 1)
        {
          break;
        }

        v37 += 2;
        __src[v40] = v38 & 0x5F;
        __src[v39] = 125;
        if (++v36 == 42)
        {
          goto LABEL_7;
        }
      }

      ++v37;
      __src[v39] = v38;
      ++v36;
    }

    while (v36 != 42);
LABEL_7:
    memcpy(a1, __src, v37);
    result = (v37 + 1);
    *(a1 + v37) = 126;
    v42 = *MEMORY[0x29EDCA608];
  }

  else
  {
    result = 0xFFFFFFFFLL;
    v43 = *MEMORY[0x29EDCA608];
  }

  return result;
}

uint64_t ETLMaverickAddSecurityCommandHeader()
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

uint64_t ETLMaverickParseSecurityResponseHeader(uint64_t a1, int a2, _WORD *a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = ETLMaverickParseBSPResponseHeader(a1, a4, 12, a4, a5, a6, a7, a8);
  if (result)
  {
    v19 = *a4;
    if ((*(a1 + 8) - v19) <= 3)
    {
      v21 = (*(a1 + 8) - v19);
      _ETLDebugPrint("ETLMaverickParseSecurityResponseHeader", "Need %u bytes, but only have %u\n", v13, v14, v15, v16, v17, v18, 4);
    }

    else
    {
      v20 = (*a1 + v19);
      if (*v20 == a2)
      {
        *a3 = v20[1];
        *a4 = v19 + 4;
        return 1;
      }

      _ETLDebugPrint("ETLMaverickParseSecurityResponseHeader", "Received code 0x%x mismatches expected 0x%x\n", v13, v14, v15, v16, v17, v18, *v20);
    }

    return 0;
  }

  return result;
}

uint64_t ETLMaverickSecurityCreateCheckCalibrationBackupCommand()
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

uint64_t ETLMaverickSecurityParseCheckCalibrationBackupResponse(int **a1, _WORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
        if (v12 == 12)
        {
          if (v9 <= 3)
          {
            _ETLDebugPrint("ETLMaverickParseSecurityResponseHeader", "Need %u bytes, but only have %u\n", a3, a4, a5, a6, a7, a8, 4);
            return 0;
          }

          else
          {
            v13 = *(v10 + 2);
            if (v13 == 13)
            {
              *a2 = *(v10 + 3);
              return 1;
            }

            else
            {
              _ETLDebugPrint("ETLMaverickParseSecurityResponseHeader", "Received code 0x%x mismatches expected 0x%x\n", a3, a4, a5, a6, a7, a8, v13);
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

uint64_t ETLMaverickCreateNVBackupCommand()
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

uint64_t ETLMaverickParseNVBackupResponse(int **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
        if (v12 == 12)
        {
          if (v9 <= 3)
          {
            _ETLDebugPrint("ETLMaverickParseSecurityResponseHeader", "Need %u bytes, but only have %u\n", a3, a4, a5, a6, a7, a8, 4);
            return 0;
          }

          else
          {
            v13 = *(v10 + 2);
            if (v13 == 7)
            {
              if (*(v10 + 3))
              {
                _ETLDebugPrint("ETLMaverickParseNVBackupResponse", "Status was %u\n", a3, a4, a5, a6, a7, a8, *(v10 + 3));
                return 0;
              }

              else
              {
                return 1;
              }
            }

            else
            {
              _ETLDebugPrint("ETLMaverickParseSecurityResponseHeader", "Received code 0x%x mismatches expected 0x%x\n", a3, a4, a5, a6, a7, a8, v13);
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

uint64_t ETLMaverickCreateNVRestoreCommand()
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

uint64_t ETLMaverickParseNVRestoreResponse(int **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
        if (v12 == 12)
        {
          if (v9 <= 3)
          {
            _ETLDebugPrint("ETLMaverickParseSecurityResponseHeader", "Need %u bytes, but only have %u\n", a3, a4, a5, a6, a7, a8, 4);
            return 0;
          }

          else
          {
            v13 = *(v10 + 2);
            if (v13 == 8)
            {
              if (*(v10 + 3))
              {
                _ETLDebugPrint("ETLMaverickExpectStatus", "Status was %u\n", a3, a4, a5, a6, a7, a8, *(v10 + 3));
                return 0;
              }

              else
              {
                return 1;
              }
            }

            else
            {
              _ETLDebugPrint("ETLMaverickParseSecurityResponseHeader", "Received code 0x%x mismatches expected 0x%x\n", a3, a4, a5, a6, a7, a8, v13);
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

uint64_t ETLMaverickSecurityCreateReadSerialNumberAndChipIDCommand()
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

uint64_t ETLMaverickSecurityCreateReadSerialNumberAndChipIDCommand64Bit()
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

uint64_t ETLMaverickSecurityParseReadSerialNumberAndChipIDResponse(int **a1, _DWORD *a2, _DWORD *a3, uint64_t a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 2);
  if (v8 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a3, a4, a5, a6, a7, a8, *(a1 + 2));
    return 0;
  }

  v9 = *a1;
  v10 = **a1;
  if (v10 != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, **a1);
    return 0;
  }

  if (BYTE1(v10) != 253)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, BYTE1(v10));
    return 0;
  }

  v11 = HIWORD(v10);
  if (v11 != 12)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, v11);
    return 0;
  }

  if (v8 - 4 <= 3)
  {
    _ETLDebugPrint("ETLMaverickParseSecurityResponseHeader", "Need %u bytes, but only have %u\n", a3, a4, a5, a6, a7, a8, 4);
    return 0;
  }

  if (*(v9 + 2) != 3)
  {
    _ETLDebugPrint("ETLMaverickParseSecurityResponseHeader", "Received code 0x%x mismatches expected 0x%x\n", a3, a4, a5, a6, a7, a8, *(v9 + 2));
    return 0;
  }

  if (*(v9 + 3))
  {
    _ETLDebugPrint("ETLMaverickExpectStatus", "Status was %u\n", a3, a4, a5, a6, a7, a8, *(v9 + 3));
    return 0;
  }

  v13 = v8 - 8;
  if (v13 <= 7)
  {
    _ETLDebugPrint("ETLMaverickSecurityParseReadSerialNumberAndChipIDResponse", "Only have %u bytes, need %u\n", a3, a4, a5, a6, a7, a8, v13);
  }

  else if (a4 >= 4)
  {
    *a2 = v9[2];
    *a3 = 32;
    *a5 = v9[3];
    return 1;
  }

  return 0;
}

uint64_t ETLMaverickSecurityParseReadSerialNumberAndChipIDResponse64Bit(int **a1, void *a2, _DWORD *a3, uint64_t a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 2);
  if (v8 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a3, a4, a5, a6, a7, a8, *(a1 + 2));
    return 0;
  }

  v9 = *a1;
  v10 = **a1;
  if (v10 != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, **a1);
    return 0;
  }

  if (BYTE1(v10) != 253)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, BYTE1(v10));
    return 0;
  }

  v11 = HIWORD(v10);
  if (v11 != 12)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, v11);
    return 0;
  }

  if (v8 - 4 <= 3)
  {
    _ETLDebugPrint("ETLMaverickParseSecurityResponseHeader", "Need %u bytes, but only have %u\n", a3, a4, a5, a6, a7, a8, 4);
    return 0;
  }

  if (*(v9 + 2) != 37)
  {
    _ETLDebugPrint("ETLMaverickParseSecurityResponseHeader", "Received code 0x%x mismatches expected 0x%x\n", a3, a4, a5, a6, a7, a8, *(v9 + 2));
    return 0;
  }

  if (*(v9 + 3))
  {
    _ETLDebugPrint("ETLMaverickExpectStatus", "Status was %u\n", a3, a4, a5, a6, a7, a8, *(v9 + 3));
    return 0;
  }

  v13 = v8 - 8;
  if (v13 <= 0xB)
  {
    _ETLDebugPrint("ETLMaverickSecurityParseReadSerialNumberAndChipIDResponse64Bit", "Only have %u bytes, need %u\n", a3, a4, a5, a6, a7, a8, v13);
  }

  else if (a4 >= 8)
  {
    *a2 = *(v9 + 1);
    *a3 = 64;
    *a5 = v9[4];
    return 1;
  }

  return 0;
}

uint64_t ETLMaverickSecurityCreateReadNonceCommand()
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

uint64_t ETLMaverickSecurityParseReadNonceResponse(_DWORD **a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 2);
  if (v8 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a3, a4, a5, a6, a7, a8, *(a1 + 2));
    return 0;
  }

  v9 = *a1;
  v10 = **a1;
  if (v10 != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, **a1);
    return 0;
  }

  if (BYTE1(v10) != 253)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, BYTE1(v10));
    return 0;
  }

  v11 = HIWORD(v10);
  if (v11 != 12)
  {
    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, v11);
    return 0;
  }

  if (v8 - 4 <= 3)
  {
    _ETLDebugPrint("ETLMaverickParseSecurityResponseHeader", "Need %u bytes, but only have %u\n", a3, a4, a5, a6, a7, a8, 4);
    return 0;
  }

  if (v9[2] != 2)
  {
    _ETLDebugPrint("ETLMaverickParseSecurityResponseHeader", "Received code 0x%x mismatches expected 0x%x\n", a3, a4, a5, a6, a7, a8, v9[2]);
    return 0;
  }

  if (v9[3])
  {
    _ETLDebugPrint("ETLMaverickExpectStatus", "Status was %u\n", a3, a4, a5, a6, a7, a8, v9[3]);
    return 0;
  }

  v15 = v8 - 8;
  v16 = a4;
  _ETLDebugPrint("ETLMaverickSecurityParseReadNonceResponse", "Nonce is %u bytes\n", a3, a4, a5, a6, a7, a8, v15);
  if (v15 > v16)
  {
    return 0;
  }

  memcpy(a2, v9 + 4, v15);
  *a3 = 8 * v15;
  return 1;
}

uint64_t ETLMaverickNVBackup(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a2)
{
  v36 = 0u;
  v37 = 0u;
  v38 = 0;
  memset(v34, 0, sizeof(v34));
  v35 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    v31 = "ETLMaverickNVBackup";
    v32 = "Failed to create uplink frame\n";
LABEL_22:
    _ETLDebugPrint(v31, v32, v4, v5, v6, v7, v8, v9, v33);
    return 0;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v11, v12, v13, v14, v15, v16, FreeSpace);
    return 0;
  }

  v39 = 851275;
  if ((HDLCFrameInject() & 1) == 0)
  {
    v31 = "ETLSubsysAddHeaderInternal";
    v32 = "Failed to inject\n";
    goto LABEL_22;
  }

  if (HDLCFrameGetFreeSpace() <= 1)
  {
    v33 = 2;
    v31 = "ETLRequireFreeSpace";
    v32 = "Need %u bytes free space, but only have %u\n";
    goto LABEL_22;
  }

  result = HDLCFrameInjectUnsignedShort();
  if (result)
  {
    result = malloc((2 * DWORD2(v36) + 32));
    if (result)
    {
      v18 = result;
      v19 = HDLCFrameEncode();
      if (!v19)
      {
        goto LABEL_25;
      }

      v20 = v19;
      v39 = -1431655766;
      if ((_ETLDebugFlags & 2) != 0)
      {
        off_2A18A5818(&str_3, 0, v18, v19);
      }

      if (*a1)
      {
        v21 = (*a1)(a1, v18, v20, &v39, 1, a2, 0);
        v22 = v39;
        free(v18);
        result = 0;
        if (v21 && v22 == v20)
        {
          LOBYTE(v39) = 75;
          if (!_ETLResponseRingBuffer)
          {
            TelephonyUtilRingBufferInitialize();
          }

          v30 = ETLFindMatchingResponseUsingBuffer(a1, v34, &_ETLResponseRingBuffer, &v39, a2);
          result = 0;
          if (v30)
          {
            if (v39 == 75)
            {
              return ETLMaverickParseNVBackupResponse(v34, v23, v24, v25, v26, v27, v28, v29);
            }
          }
        }
      }

      else
      {
LABEL_25:
        free(v18);
        return 0;
      }
    }
  }

  return result;
}

uint64_t ETLMaverickNVRestore(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a2)
{
  v36 = 0u;
  v37 = 0u;
  v38 = 0;
  memset(v34, 0, sizeof(v34));
  v35 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    v31 = "ETLMaverickNVRestore";
    v32 = "Failed to create uplink frame\n";
LABEL_22:
    _ETLDebugPrint(v31, v32, v4, v5, v6, v7, v8, v9, v33);
    return 0;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v11, v12, v13, v14, v15, v16, FreeSpace);
    return 0;
  }

  v39 = 851275;
  if ((HDLCFrameInject() & 1) == 0)
  {
    v31 = "ETLSubsysAddHeaderInternal";
    v32 = "Failed to inject\n";
    goto LABEL_22;
  }

  if (HDLCFrameGetFreeSpace() <= 1)
  {
    v33 = 2;
    v31 = "ETLRequireFreeSpace";
    v32 = "Need %u bytes free space, but only have %u\n";
    goto LABEL_22;
  }

  result = HDLCFrameInjectUnsignedShort();
  if (result)
  {
    result = malloc((2 * DWORD2(v36) + 32));
    if (result)
    {
      v18 = result;
      v19 = HDLCFrameEncode();
      if (!v19)
      {
        goto LABEL_25;
      }

      v20 = v19;
      v39 = -1431655766;
      if ((_ETLDebugFlags & 2) != 0)
      {
        off_2A18A5818(&str_3, 0, v18, v19);
      }

      if (*a1)
      {
        v21 = (*a1)(a1, v18, v20, &v39, 1, a2, 0);
        v22 = v39;
        free(v18);
        result = 0;
        if (v21 && v22 == v20)
        {
          LOBYTE(v39) = 75;
          if (!_ETLResponseRingBuffer)
          {
            TelephonyUtilRingBufferInitialize();
          }

          v30 = ETLFindMatchingResponseUsingBuffer(a1, v34, &_ETLResponseRingBuffer, &v39, a2);
          result = 0;
          if (v30)
          {
            if (v39 == 75)
            {
              return ETLMaverickParseNVRestoreResponse(v34, v23, v24, v25, v26, v27, v28, v29);
            }
          }
        }
      }

      else
      {
LABEL_25:
        free(v18);
        return 0;
      }
    }
  }

  return result;
}

void *ETLMaverickReadSerialNumberAndChipID(void *a1, _DWORD *a2, _DWORD *a3, uint64_t a4, _DWORD *a5, uint64_t a6)
{
  v39 = 0u;
  v40 = 0u;
  v41 = 0;
  memset(v37, 0, sizeof(v37));
  v38 = 0;
  if (!HDLCFrameCreateUplink())
  {
    goto LABEL_22;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v13, v14, v15, v16, v17, v18, FreeSpace);
    goto LABEL_22;
  }

  v42 = 851275;
  if ((HDLCFrameInject() & 1) == 0)
  {
    v33 = "ETLSubsysAddHeaderInternal";
    v34 = "Failed to inject\n";
LABEL_21:
    _ETLDebugPrint(v33, v34, v19, v20, v21, v22, v23, v24, v36);
    goto LABEL_22;
  }

  if (HDLCFrameGetFreeSpace() <= 1)
  {
    v36 = 2;
    v33 = "ETLRequireFreeSpace";
    v34 = "Need %u bytes free space, but only have %u\n";
    goto LABEL_21;
  }

  if (!HDLCFrameInjectUnsignedShort())
  {
LABEL_22:
    SerialNumberAndChipIDResponse = 0;
    goto LABEL_23;
  }

  SerialNumberAndChipIDResponse = malloc((2 * DWORD2(v39) + 32));
  if (!SerialNumberAndChipIDResponse)
  {
    goto LABEL_23;
  }

  v26 = HDLCFrameEncode();
  if (!v26)
  {
    goto LABEL_24;
  }

  v27 = v26;
  v42 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, SerialNumberAndChipIDResponse, v26);
  }

  if (!*a1)
  {
LABEL_24:
    free(SerialNumberAndChipIDResponse);
    goto LABEL_22;
  }

  v28 = (*a1)(a1, SerialNumberAndChipIDResponse, v27, &v42, 1, a6, 0);
  v29 = v42;
  free(SerialNumberAndChipIDResponse);
  SerialNumberAndChipIDResponse = 0;
  if (v28 && v29 == v27)
  {
    LOBYTE(v42) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    SerialNumberAndChipIDResponse = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, v37, &_ETLResponseRingBuffer, &v42, a6) && v42 == 75)
    {
      SerialNumberAndChipIDResponse = ETLMaverickSecurityParseReadSerialNumberAndChipIDResponse(v37, a2, a3, a4, a5, v30, v31, v32);
    }
  }

LABEL_23:
  HDLCFrameFree();
  HDLCFrameFree();
  return SerialNumberAndChipIDResponse;
}

void *ETLMaverickReadSerialNumberAndChipID64Bit(void *a1, void *a2, _DWORD *a3, uint64_t a4, _DWORD *a5, uint64_t a6)
{
  v39 = 0u;
  v40 = 0u;
  v41 = 0;
  memset(v37, 0, sizeof(v37));
  v38 = 0;
  if (!HDLCFrameCreateUplink())
  {
    goto LABEL_22;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v13, v14, v15, v16, v17, v18, FreeSpace);
    goto LABEL_22;
  }

  v42 = 851275;
  if ((HDLCFrameInject() & 1) == 0)
  {
    v33 = "ETLSubsysAddHeaderInternal";
    v34 = "Failed to inject\n";
LABEL_21:
    _ETLDebugPrint(v33, v34, v19, v20, v21, v22, v23, v24, v36);
    goto LABEL_22;
  }

  if (HDLCFrameGetFreeSpace() <= 1)
  {
    v36 = 2;
    v33 = "ETLRequireFreeSpace";
    v34 = "Need %u bytes free space, but only have %u\n";
    goto LABEL_21;
  }

  if (!HDLCFrameInjectUnsignedShort())
  {
LABEL_22:
    SerialNumberAndChipIDResponse64Bit = 0;
    goto LABEL_23;
  }

  SerialNumberAndChipIDResponse64Bit = malloc((2 * DWORD2(v39) + 32));
  if (!SerialNumberAndChipIDResponse64Bit)
  {
    goto LABEL_23;
  }

  v26 = HDLCFrameEncode();
  if (!v26)
  {
    goto LABEL_24;
  }

  v27 = v26;
  v42 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, SerialNumberAndChipIDResponse64Bit, v26);
  }

  if (!*a1)
  {
LABEL_24:
    free(SerialNumberAndChipIDResponse64Bit);
    goto LABEL_22;
  }

  v28 = (*a1)(a1, SerialNumberAndChipIDResponse64Bit, v27, &v42, 1, a6, 0);
  v29 = v42;
  free(SerialNumberAndChipIDResponse64Bit);
  SerialNumberAndChipIDResponse64Bit = 0;
  if (v28 && v29 == v27)
  {
    LOBYTE(v42) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    SerialNumberAndChipIDResponse64Bit = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, v37, &_ETLResponseRingBuffer, &v42, a6) && v42 == 75)
    {
      SerialNumberAndChipIDResponse64Bit = ETLMaverickSecurityParseReadSerialNumberAndChipIDResponse64Bit(v37, a2, a3, a4, a5, v30, v31, v32);
    }
  }

LABEL_23:
  HDLCFrameFree();
  HDLCFrameFree();
  return SerialNumberAndChipIDResponse64Bit;
}

uint64_t ETLMaverickReadPublicKeyHash(void *a1, void *a2, unsigned int a3, _DWORD *a4, uint64_t a5)
{
  v49 = 0u;
  v50 = 0u;
  v51 = 0;
  memset(v47, 0, sizeof(v47));
  v48 = 0;
  if (!HDLCFrameCreateUplink())
  {
    goto LABEL_26;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v11, v12, v13, v14, v15, v16, FreeSpace);
    goto LABEL_26;
  }

  v52 = 851275;
  if ((HDLCFrameInject() & 1) == 0)
  {
    v41 = "ETLSubsysAddHeaderInternal";
    v42 = "Failed to inject\n";
LABEL_25:
    _ETLDebugPrint(v41, v42, v17, v18, v19, v20, v21, v22, v46);
    goto LABEL_26;
  }

  if (HDLCFrameGetFreeSpace() <= 1)
  {
    v46 = 2;
    v41 = "ETLRequireFreeSpace";
    v42 = "Need %u bytes free space, but only have %u\n";
    goto LABEL_25;
  }

  if (!HDLCFrameInjectUnsignedShort())
  {
LABEL_26:
    v23 = 0;
    goto LABEL_27;
  }

  v23 = malloc((2 * DWORD2(v49) + 32));
  if (!v23)
  {
    goto LABEL_27;
  }

  v24 = HDLCFrameEncode();
  if (!v24)
  {
    goto LABEL_28;
  }

  v25 = v24;
  v52 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v23, v24);
  }

  if (!*a1)
  {
LABEL_28:
    free(v23);
    goto LABEL_26;
  }

  v26 = (*a1)(a1, v23, v25, &v52, 1, a5, 0);
  v27 = v52;
  free(v23);
  v23 = 0;
  if (v26 && v27 == v25)
  {
    LOBYTE(v52) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    v23 = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, v47, &_ETLResponseRingBuffer, &v52, a5))
    {
      if (v52 == 75)
      {
        v52 = 0;
        if (ETLMaverickParseBSPResponseHeader(v47, &v52, 12, v28, v29, v30, v31, v32))
        {
          if (DWORD2(v47[0]) - v52 <= 3)
          {
            _ETLDebugPrint("ETLMaverickParseSecurityResponseHeader", "Need %u bytes, but only have %u\n", v33, v34, v35, v36, v37, v38, 4);
          }

          else if (*(*&v47[0] + v52) == 16)
          {
            v39 = *(*&v47[0] + v52 + 2);
            v40 = v52 + 4;
            v52 += 4;
            if (v39)
            {
              _ETLDebugPrint("ETLMaverickExpectStatus", "Status was %u\n", v33, v34, v35, v36, v37, v38, v39);
            }

            else if (DWORD2(v47[0]) - v40 >= 4)
            {
              v44 = (*&v47[0] + v40);
              v45 = *v44;
              *a4 = v45;
              if (v45 - 1 < a3)
              {
                memcpy(a2, v44 + 1, v45);
                v23 = 1;
                goto LABEL_27;
              }
            }
          }

          else
          {
            _ETLDebugPrint("ETLMaverickParseSecurityResponseHeader", "Received code 0x%x mismatches expected 0x%x\n", v33, v34, v35, v36, v37, v38, *(*&v47[0] + v52));
          }
        }

        goto LABEL_26;
      }
    }
  }

LABEL_27:
  HDLCFrameFree();
  HDLCFrameFree();
  return v23;
}

uint64_t ETLMaverickGetFusingStatus(void *a1, _DWORD *a2, uint64_t a3)
{
  v44 = 0u;
  v45 = 0u;
  v46 = 0;
  memset(v42, 0, sizeof(v42));
  v43 = 0;
  if (!HDLCFrameCreateUplink())
  {
    goto LABEL_26;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v7, v8, v9, v10, v11, v12, FreeSpace);
    goto LABEL_26;
  }

  v47 = 851275;
  if ((HDLCFrameInject() & 1) == 0)
  {
    v37 = "ETLSubsysAddHeaderInternal";
    v38 = "Failed to inject\n";
LABEL_25:
    _ETLDebugPrint(v37, v38, v13, v14, v15, v16, v17, v18, v41);
    goto LABEL_26;
  }

  if (HDLCFrameGetFreeSpace() <= 1)
  {
    v41 = 2;
    v37 = "ETLRequireFreeSpace";
    v38 = "Need %u bytes free space, but only have %u\n";
    goto LABEL_25;
  }

  if (!HDLCFrameInjectUnsignedShort())
  {
LABEL_26:
    v19 = 0;
    goto LABEL_27;
  }

  v19 = malloc((2 * DWORD2(v44) + 32));
  if (!v19)
  {
    goto LABEL_27;
  }

  v20 = HDLCFrameEncode();
  if (!v20)
  {
    goto LABEL_28;
  }

  v21 = v20;
  v47 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v19, v20);
  }

  if (!*a1)
  {
LABEL_28:
    free(v19);
    goto LABEL_26;
  }

  v22 = (*a1)(a1, v19, v21, &v47, 1, a3, 0);
  v23 = v47;
  free(v19);
  v19 = 0;
  if (v22 && v23 == v21)
  {
    LOBYTE(v47) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    v19 = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, v42, &_ETLResponseRingBuffer, &v47, a3))
    {
      if (v47 == 75)
      {
        v47 = 0;
        if (ETLMaverickParseBSPResponseHeader(v42, &v47, 12, v24, v25, v26, v27, v28))
        {
          if (DWORD2(v42[0]) - v47 <= 3)
          {
            _ETLDebugPrint("ETLMaverickParseSecurityResponseHeader", "Need %u bytes, but only have %u\n", v29, v30, v31, v32, v33, v34, 4);
          }

          else if (*(*&v42[0] + v47) == 17)
          {
            v35 = *(*&v42[0] + v47 + 2);
            v36 = v47 + 4;
            v47 += 4;
            if (v35)
            {
              _ETLDebugPrint("ETLMaverickExpectStatus", "Status was %u\n", v29, v30, v31, v32, v33, v34, v35);
            }

            else if (DWORD2(v42[0]) - v36 >= 4)
            {
              v40 = (*&v42[0] + v36);
              if (*v40 == 4)
              {
                *a2 = v40[1];
                v19 = 1;
                goto LABEL_27;
              }
            }
          }

          else
          {
            _ETLDebugPrint("ETLMaverickParseSecurityResponseHeader", "Received code 0x%x mismatches expected 0x%x\n", v29, v30, v31, v32, v33, v34, *(*&v42[0] + v47));
          }
        }

        goto LABEL_26;
      }
    }
  }

LABEL_27:
  HDLCFrameFree();
  HDLCFrameFree();
  return v19;
}

void *ETLMaverickReadNonce(void *a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  v38 = 0u;
  v39 = 0u;
  v40 = 0;
  memset(v36, 0, sizeof(v36));
  v37 = 0;
  if (!HDLCFrameCreateUplink())
  {
    goto LABEL_22;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v11, v12, v13, v14, v15, v16, FreeSpace);
    goto LABEL_22;
  }

  v41 = 851275;
  if ((HDLCFrameInject() & 1) == 0)
  {
    v32 = "ETLSubsysAddHeaderInternal";
    v33 = "Failed to inject\n";
LABEL_21:
    _ETLDebugPrint(v32, v33, v17, v18, v19, v20, v21, v22, v35);
    goto LABEL_22;
  }

  if (HDLCFrameGetFreeSpace() <= 1)
  {
    v35 = 2;
    v32 = "ETLRequireFreeSpace";
    v33 = "Need %u bytes free space, but only have %u\n";
    goto LABEL_21;
  }

  if (!HDLCFrameInjectUnsignedShort())
  {
LABEL_22:
    NonceResponse = 0;
    goto LABEL_23;
  }

  NonceResponse = malloc((2 * DWORD2(v38) + 32));
  if (!NonceResponse)
  {
    goto LABEL_23;
  }

  v24 = HDLCFrameEncode();
  if (!v24)
  {
    goto LABEL_24;
  }

  v25 = v24;
  v41 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, NonceResponse, v24);
  }

  if (!*a1)
  {
LABEL_24:
    free(NonceResponse);
    goto LABEL_22;
  }

  v26 = (*a1)(a1, NonceResponse, v25, &v41, 1, a5, 0);
  v27 = v41;
  free(NonceResponse);
  NonceResponse = 0;
  if (v26 && v27 == v25)
  {
    LOBYTE(v41) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    NonceResponse = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, v36, &_ETLResponseRingBuffer, &v41, a5) && v41 == 75)
    {
      NonceResponse = ETLMaverickSecurityParseReadNonceResponse(v36, a2, a3, a4, v28, v29, v30, v31);
    }
  }

LABEL_23:
  HDLCFrameFree();
  HDLCFrameFree();
  return NonceResponse;
}

uint64_t ETLMaverickManifestStatusInit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    *a1 = xmmword_2977CA680;
    v9 = malloc(0x30uLL);
    *(a1 + 24) = v9;
    v10 = malloc(0x30uLL);
    *(a1 + 16) = v10;
    if (v9 && v10)
    {
      return 1;
    }

    else
    {
      _ETLDebugPrint("ETLMaverickManifestStatusInit", "failed allocating data for ckey hash = %p and skey hash = %p\n", v11, v12, v13, v14, v15, v16, v9);
      v18 = *(a1 + 24);
      if (v18)
      {
        free(v18);
        *(a1 + 24) = 0;
      }

      result = *(a1 + 16);
      if (result)
      {
        free(result);
        result = 0;
        *(a1 + 16) = 0;
      }
    }
  }

  else
  {
    _ETLDebugPrint("ETLMaverickManifestStatusInit", "invalid manifest status to initialize, manifest_status = %p\n", a3, a4, a5, a6, a7, a8, 0);
    return 0;
  }

  return result;
}

BOOL ETLMaverickManifestStatusFree(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v9 = *(a1 + 24);
    if (v9)
    {
      free(v9);
      *(a1 + 24) = 0;
    }

    v10 = *(a1 + 16);
    if (v10)
    {
      free(v10);
      *(a1 + 16) = 0;
    }

    return a1 != 0;
  }

  else
  {
    _ETLDebugPrint("ETLMaverickManifestStatusFree", "invalid manifest status to initialize, manifest_status = %p\n", a3, a4, a5, a6, a7, a8, 0);
    return 0;
  }
}

uint64_t ETLMaverickGetManifestStatus(void *a1, uint64_t *a2, uint64_t a3)
{
  v49 = 0u;
  v50 = 0u;
  v51 = 0;
  memset(v47, 0, sizeof(v47));
  v48 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    v41 = "ETLMaverickGetManifestStatus";
    v42 = "Failed to create command frame\n";
LABEL_27:
    _ETLDebugPrint(v41, v42, v6, v7, v8, v9, v10, v11, v46);
    goto LABEL_28;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v13, v14, v15, v16, v17, v18, FreeSpace);
    goto LABEL_28;
  }

  v52 = 851275;
  if ((HDLCFrameInject() & 1) == 0)
  {
    v41 = "ETLSubsysAddHeaderInternal";
    v42 = "Failed to inject\n";
    goto LABEL_27;
  }

  if (HDLCFrameGetFreeSpace() <= 1)
  {
    v46 = 2;
    v41 = "ETLRequireFreeSpace";
    v42 = "Need %u bytes free space, but only have %u\n";
    goto LABEL_27;
  }

  if (!HDLCFrameInjectUnsignedShort())
  {
LABEL_28:
    v19 = 0;
    goto LABEL_29;
  }

  v19 = malloc((2 * DWORD2(v49) + 32));
  if (!v19)
  {
    goto LABEL_29;
  }

  v20 = HDLCFrameEncode();
  if (!v20)
  {
    goto LABEL_30;
  }

  v21 = v20;
  v52 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v19, v20);
  }

  if (!*a1)
  {
LABEL_30:
    free(v19);
    goto LABEL_28;
  }

  v22 = (*a1)(a1, v19, v21, &v52, 1, a3, 0);
  v23 = v52;
  free(v19);
  v19 = 0;
  if (v22 && v23 == v21)
  {
    LOBYTE(v52) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    v19 = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, v47, &_ETLResponseRingBuffer, &v52, a3))
    {
      if (v52 == 75)
      {
        v52 = 0;
        if (ETLMaverickParseBSPResponseHeader(v47, &v52, 12, v24, v25, v26, v27, v28))
        {
          if (DWORD2(v47[0]) - v52 <= 3)
          {
            _ETLDebugPrint("ETLMaverickParseSecurityResponseHeader", "Need %u bytes, but only have %u\n", v29, v30, v31, v32, v33, v34, 4);
          }

          else
          {
            v35 = *&v47[0];
            if (*(*&v47[0] + v52) == 12)
            {
              v36 = *(*&v47[0] + v52 + 2);
              v37 = v52 + 4;
              v52 = v37;
              v38 = *a2;
              v39 = 2 * *a2 + 6;
              v40 = DWORD2(v47[0]) - v37;
              if (v39 - 2 <= v40)
              {
                if (v40 < v39)
                {
                  _ETLDebugPrint("ETLMaverickSecurityParseReadManifestStatusResponse", "Manifest response size %u is small %u, ignoring status check\n", v29, v30, v31, v32, v33, v34, v40);
                  v37 = v52 - 2;
                  v52 -= 2;
                  v35 = *&v47[0];
LABEL_34:
                  v44 = (v35 + v37);
                  *(a2 + 4) = *v44;
                  *(a2 + 5) = v44[1];
                  *(a2 + 6) = v44[2];
                  v45 = v44 + 3;
                  memcpy(a2[2], v44 + 3, v38);
                  memcpy(a2[3], v45 + v38, v38);
                  v19 = 1;
                  goto LABEL_29;
                }

                if (!v36)
                {
                  goto LABEL_34;
                }
              }
            }

            else
            {
              _ETLDebugPrint("ETLMaverickParseSecurityResponseHeader", "Received code 0x%x mismatches expected 0x%x\n", v29, v30, v31, v32, v33, v34, *(*&v47[0] + v52));
            }
          }
        }

        goto LABEL_28;
      }
    }
  }

LABEL_29:
  HDLCFrameFree();
  HDLCFrameFree();
  return v19;
}

uint64_t ETLMaverickGetCarrierID(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v59 = 0u;
  v60 = 0u;
  v61 = 0;
  memset(v57, 0, sizeof(v57));
  v58 = 0;
  if (!a2)
  {
    _ETLDebugPrint("ETLMaverickGetCarrierID", "Invalid arguments\n", a3, a4, a5, a6, a7, a8, v56);
    goto LABEL_25;
  }

  a2[7] = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
LABEL_25:
    v53 = "ETLMaverickGetCarrierID";
    v54 = "Failed to create command frame\n";
LABEL_26:
    _ETLDebugPrint(v53, v54, v11, v12, v13, v14, v15, v16, v56);
    goto LABEL_27;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v18, v19, v20, v21, v22, v23, FreeSpace);
    goto LABEL_27;
  }

  v62 = 851275;
  if ((HDLCFrameInject() & 1) == 0)
  {
    v53 = "ETLSubsysAddHeaderInternal";
    v54 = "Failed to inject\n";
    goto LABEL_26;
  }

  if (HDLCFrameGetFreeSpace() <= 1)
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", v24, v25, v26, v27, v28, v29, 2);
    goto LABEL_27;
  }

  if (!HDLCFrameInjectUnsignedShort())
  {
LABEL_27:
    v30 = 0;
    goto LABEL_28;
  }

  v30 = malloc((2 * DWORD2(v59) + 32));
  if (!v30)
  {
    goto LABEL_28;
  }

  v31 = HDLCFrameEncode();
  if (!v31)
  {
    goto LABEL_32;
  }

  v32 = v31;
  v62 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v30, v31);
  }

  if (!*a1)
  {
LABEL_32:
    free(v30);
    goto LABEL_27;
  }

  v33 = (*a1)(a1, v30, v32, &v62, 1, a3, 0);
  v34 = v62;
  free(v30);
  v30 = 0;
  if (v33 && v34 == v32)
  {
    if (!ETLSubsysFindMatchingResponse(a1, v57, a3))
    {
      _ETLDebugPrint("ETLMaverickGetCarrierID", "Command not implemented\n", v35, v36, v37, v38, v39, v40, v56);
      a2[7] = 0;
      v30 = 1;
      goto LABEL_28;
    }

    v62 = 0;
    if (ETLMaverickParseBSPResponseHeader(v57, &v62, 12, v36, v37, v38, v39, v40))
    {
      if (DWORD2(v57[0]) - v62 <= 3)
      {
        _ETLDebugPrint("ETLMaverickParseSecurityResponseHeader", "Need %u bytes, but only have %u\n", v41, v42, v43, v44, v45, v46, 4);
      }

      else if (*(*&v57[0] + v62) == 23)
      {
        v47 = *(*&v57[0] + v62 + 2);
        v48 = v62 + 4;
        v62 += 4;
        if (v47 == 6)
        {
          goto LABEL_37;
        }

        if (v47 || DWORD2(v57[0]) - v48 < 4)
        {
          goto LABEL_36;
        }

        v49 = (*&v57[0] + v48);
        v52 = *v49;
        v50 = v49 + 1;
        v51 = v52;
        if (!v52)
        {
LABEL_37:
          v30 = 1;
          a2[7] = 0;
          goto LABEL_28;
        }

        if (v51 <= 7)
        {
          memcpy(a2, v50, v51);
          v30 = 1;
          a2[7] = 1;
          goto LABEL_28;
        }

        _ETLDebugPrint("ETLMaverickSecurityParseReadCarrierIDResponse", "received carrier id length %u larger than expected %u\n", v51, v42, v43, v44, v45, v46, v51);
      }

      else
      {
        _ETLDebugPrint("ETLMaverickParseSecurityResponseHeader", "Received code 0x%x mismatches expected 0x%x\n", v41, v42, v43, v44, v45, v46, *(*&v57[0] + v62));
      }
    }

LABEL_36:
    v30 = 0;
    a2[7] = 0;
  }

LABEL_28:
  HDLCFrameFree();
  HDLCFrameFree();
  return v30;
}

uint64_t ETLMaverickCheckCalibrationBackup(void *a1, _WORD *a2, uint64_t a3)
{
  *a2 = -1;
  v42 = 0u;
  v43 = 0u;
  v44 = 0;
  memset(v40, 0, sizeof(v40));
  v41 = 0;
  if (!HDLCFrameCreateUplink())
  {
    goto LABEL_25;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v7, v8, v9, v10, v11, v12, FreeSpace);
    goto LABEL_25;
  }

  v45 = 851275;
  if ((HDLCFrameInject() & 1) == 0)
  {
    v36 = "ETLSubsysAddHeaderInternal";
    v37 = "Failed to inject\n";
LABEL_24:
    _ETLDebugPrint(v36, v37, v13, v14, v15, v16, v17, v18, v39);
    goto LABEL_25;
  }

  if (HDLCFrameGetFreeSpace() <= 1)
  {
    v39 = 2;
    v36 = "ETLRequireFreeSpace";
    v37 = "Need %u bytes free space, but only have %u\n";
    goto LABEL_24;
  }

  if (!HDLCFrameInjectUnsignedShort())
  {
    goto LABEL_25;
  }

  v19 = malloc((2 * DWORD2(v42) + 32));
  if (v19)
  {
    v20 = HDLCFrameEncode();
    if (!v20)
    {
      goto LABEL_27;
    }

    v21 = v20;
    v45 = -1431655766;
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

    v22 = (*a1)(a1, v19, v21, &v45, 1, a3, 0);
    v23 = v45;
    free(v19);
    v19 = 0;
    if (v22)
    {
      if (v23 == v21)
      {
        LOBYTE(v45) = 75;
        if (!_ETLResponseRingBuffer)
        {
          TelephonyUtilRingBufferInitialize();
        }

        v19 = 0;
        if (ETLFindMatchingResponseUsingBuffer(a1, v40, &_ETLResponseRingBuffer, &v45, a3))
        {
          if (v45 == 75)
          {
            v45 = 0;
            v19 = 0;
            if (ETLMaverickParseBSPResponseHeader(v40, &v45, 12, v24, v25, v26, v27, v28))
            {
              if (DWORD2(v40[0]) - v45 <= 3)
              {
                _ETLDebugPrint("ETLMaverickParseSecurityResponseHeader", "Need %u bytes, but only have %u\n", v29, v30, v31, v32, v33, v34, 4);
              }

              else
              {
                v35 = *(*&v40[0] + v45);
                if (v35 == 13)
                {
                  *a2 = *(*&v40[0] + v45 + 2);
                  v19 = 1;
                  goto LABEL_26;
                }

                _ETLDebugPrint("ETLMaverickParseSecurityResponseHeader", "Received code 0x%x mismatches expected 0x%x\n", v29, v30, v31, v32, v33, v34, v35);
              }

LABEL_25:
              v19 = 0;
            }
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

uint64_t ETLFTMRFCallResponse(unsigned int **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 2) < 4u)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a3, a4, a5, a6, a7, a8, *(a1 + 2));
  }

  else
  {
    v10 = **a1;
    if (v10 == 75)
    {
      if (BYTE1(v10) == 11)
      {
        v11 = HIWORD(v10);
        if (v11 != 251)
        {
          _ETLDebugPrint("ETLFTMRFCallResponse", "Received command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, v11);
        }
      }

      else
      {
        _ETLDebugPrint("ETLFTMRFCallResponse", "Received subsys 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, BYTE1(v10));
      }

      v12 = 1;
      if ((*(a1 + 2) - 4) <= 3)
      {
        goto LABEL_15;
      }

      goto LABEL_9;
    }

    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, **a1);
  }

  v12 = 0;
  if (*(a1 + 2) <= 3u)
  {
LABEL_15:
    _ETLDebugPrint("ETLFTMRFCallResponse", "response requires %u bytes, got %u\n", a3, a4, a5, a6, a7, a8, 4);
    return 0;
  }

LABEL_9:
  v13 = &(*a1)[v12];
  if (*v13 == a2)
  {
    if (*(v13 + 1) == 1)
    {
      return 1;
    }

    else
    {
      _ETLDebugPrint("ETLFTMRFCallResponse", "Call got failed. The status returns %u\n", a3, a4, a5, a6, a7, a8, *(v13 + 1));
      return 0;
    }
  }

  else
  {
    v15 = *v13;
    _ETLDebugPrint("ETLFTMRFCallResponse", "Expect Maverick CMD code %u is not matched with gottne %u\n", a3, a4, a5, a6, a7, a8, a2);
    return 0;
  }
}

uint64_t ETLFTMRFCallSetup(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _ETLDebugPrint("ETLFTMRFCallSetup", "Transport cannot be NULL\n", a3, a4, a5, a6, a7, a8, v43);
    return 0;
  }

  memset(v46, 0, sizeof(v46));
  v47 = 0;
  memset(v44, 0, sizeof(v44));
  v45 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    v34 = "ETLFTMRFCallSetup";
    v35 = "Failed to create command frame\n";
LABEL_22:
    _ETLDebugPrint(v34, v35, v11, v12, v13, v14, v15, v16, v43);
    goto LABEL_23;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v18, v19, v20, v21, v22, v23, FreeSpace);
    goto LABEL_23;
  }

  v48 = 16452427;
  if ((HDLCFrameInject() & 1) == 0)
  {
    v34 = "ETLSubsysAddHeaderInternal";
    v35 = "Failed to inject\n";
    goto LABEL_22;
  }

  if (HDLCFrameGetFreeSpace() <= 0xB)
  {
    v43 = 12;
    goto LABEL_21;
  }

  if (!HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedShort())
  {
    goto LABEL_23;
  }

  if (a2 >= 7 || ((0x6Du >> a2) & 1) == 0)
  {
    _ETLDebugPrint("ETLFTMCreateRFCallSetup", "The technology cannot be interpreted %u\n", v24, v25, v26, v27, v28, v29, a2);
    goto LABEL_23;
  }

  v30 = 4 * (a2 & 7);
  v31 = *(&unk_2977CA690 + v30);
  v32 = *(&unk_2977CA6AC + v30);
  if (HDLCFrameInjectUnsignedShort())
  {
    if (HDLCFrameGetFreeSpace() < v31)
    {
      v43 = v31;
LABEL_21:
      v34 = "ETLFTMCreateRFCallSetup";
      v35 = "Not enough room, need %u, have %u\n";
      goto LABEL_22;
    }

    if (v32 > 1)
    {
      if (v32 == 2)
      {
        if ((HDLCFrameInjectUnsignedShort() & 1) == 0 || !HDLCFrameInjectUnsignedShort())
        {
          goto LABEL_23;
        }
      }

      else if ((HDLCFrameInjectUnsignedShort() & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else if (v32 && (!HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedShort() || (HDLCFrameInjectUnsignedShort() & 1) == 0))
    {
      goto LABEL_23;
    }

    if (ETLSendCommand(a1, v46, a4) && ETLSubsysFindMatchingResponse(a1, v44, a4))
    {
      v36 = ETLFTMRFCallResponse(v44, 82, v37, v38, v39, v40, v41, v42);
      goto LABEL_24;
    }
  }

LABEL_23:
  v36 = 0;
LABEL_24:
  HDLCFrameFree();
  HDLCFrameFree();
  return v36;
}

uint64_t ETLFTMRFCallExit(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _ETLDebugPrint("ETLFTMRFCallExit", "Transport cannot be NULL\n", a3, a4, a5, a6, a7, a8, v33);
    return 0;
  }

  memset(v36, 0, sizeof(v36));
  v37 = 0;
  memset(v34, 0, sizeof(v34));
  v35 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    v31 = "ETLFTMRFCallExit";
    v32 = "Failed to create command frame\n";
LABEL_16:
    _ETLDebugPrint(v31, v32, v10, v11, v12, v13, v14, v15, v33);
    goto LABEL_17;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v17, v18, v19, v20, v21, v22, FreeSpace);
LABEL_17:
    v29 = 0;
    goto LABEL_18;
  }

  v38 = 16452427;
  if ((HDLCFrameInject() & 1) == 0)
  {
    v31 = "ETLSubsysAddHeaderInternal";
    v32 = "Failed to inject\n";
    goto LABEL_16;
  }

  if (HDLCFrameGetFreeSpace() <= 3)
  {
    v33 = 4;
    v31 = "ETLFTMCreateRFCallExit";
    v32 = "Not enough room, need %u, have %u\n";
    goto LABEL_16;
  }

  if (!HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedShort() || !ETLSendCommand(a1, v36, a3) || !ETLSubsysFindMatchingResponse(a1, v34, a3))
  {
    goto LABEL_17;
  }

  v29 = ETLFTMRFCallResponse(v34, 83, v23, v24, v25, v26, v27, v28);
LABEL_18:
  HDLCFrameFree();
  HDLCFrameFree();
  return v29;
}

uint64_t ETLFTMFEMCommonDispatchResponse(unsigned int **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 2) < 4u)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a3, a4, a5, a6, a7, a8, *(a1 + 2));
  }

  else
  {
    v10 = **a1;
    if (v10 == 75)
    {
      if (HIWORD(v10) != 20 || BYTE1(v10) != 11)
      {
        _ETLDebugPrint("ETLFTMFEMCommonDispatchResponse", "Received subsys 0x%x command code 0x%x doesn't match expected subsys 0x%x command code 0x%x\n", a3, a4, a5, a6, a7, a8, BYTE1(v10));
      }

      v12 = 1;
      if ((*(a1 + 2) - 4) <= 9)
      {
        goto LABEL_9;
      }

      goto LABEL_13;
    }

    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, **a1);
  }

  v12 = 0;
  if (*(a1 + 2) <= 9u)
  {
LABEL_9:
    _ETLDebugPrint("ETLFTMFEMCommonDispatchResponse", "response requires %u bytes, got %u\n", a3, a4, a5, a6, a7, a8, 10);
    return 0;
  }

LABEL_13:
  v14 = &(*a1)[v12];
  if (*v14 == 1005)
  {
    *(a2 + 4) = *(v14 + 7);
    *a2 = *(v14 + 9);
    return 1;
  }

  else
  {
    _ETLDebugPrint("ETLFTMFEMCommonDispatchResponse", "Expect Maverick CMD code %u is not matched with gottne %u\n", a3, a4, a5, a6, a7, a8, 1005);
    return 0;
  }
}

const char *ETLFTMRfcInitStatusAsString(unsigned int a1)
{
  if (a1 > 3)
  {
    return "Unknown";
  }

  else
  {
    return off_29EE6DEF0[a1];
  }
}

uint64_t ETLFTMGetFEMCommonInfo(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _ETLDebugPrint("ETLFTMGetFEMCommonInfo", "Transport cannot be NULL\n", a3, a4, a5, a6, a7, a8, v34);
    return 0;
  }

  memset(v37, 0, sizeof(v37));
  v38 = 0;
  memset(v35, 0, sizeof(v35));
  v36 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    v32 = "ETLFTMGetFEMCommonInfo";
    v33 = "Failed to create command frame\n";
LABEL_19:
    _ETLDebugPrint(v32, v33, v11, v12, v13, v14, v15, v16, v34);
    goto LABEL_20;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v18, v19, v20, v21, v22, v23, FreeSpace);
LABEL_20:
    v30 = 0;
    goto LABEL_21;
  }

  v39 = 1313611;
  if ((HDLCFrameInject() & 1) == 0)
  {
    v32 = "ETLSubsysAddHeaderInternal";
    v33 = "Failed to inject\n";
    goto LABEL_19;
  }

  if (HDLCFrameGetFreeSpace() <= 7)
  {
    v34 = 8;
    v32 = "ETLFTMCreateFEMCommonDispatch";
    v33 = "Not enough room, need %u, have %u\n";
    goto LABEL_19;
  }

  if (!HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedChar() || !HDLCFrameInjectUnsignedChar() || !ETLSendCommand(a1, v37, a3) || !ETLSubsysFindMatchingResponse(a1, v35, a3))
  {
    goto LABEL_20;
  }

  v30 = ETLFTMFEMCommonDispatchResponse(v35, a2, v24, v25, v26, v27, v28, v29);
LABEL_21:
  HDLCFrameFree();
  HDLCFrameFree();
  return v30;
}

uint64_t ETLUCalTxCreateCommand(uint64_t a1, int a2)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v4, v5, v6, v7, v8, v9, FreeSpace);
LABEL_13:
    _ETLDebugPrint("ETLUCalTxCreateCommand", "Failed to add command header\n", v24, v25, v26, v27, v28, v29, v32);
    return 0;
  }

  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v10, v11, v12, v13, v14, v15, v31);
    goto LABEL_13;
  }

  v16 = HDLCFrameGetFreeSpace();
  if (a2)
  {
    if (a2 != 1)
    {
      _ETLDebugPrint("ETLUCalTxCreateCommand", "Wrong to arrive here\n", v17, v18, v19, v20, v21, v22, v31);
    }

    return HDLCFrameInjectUnsignedShort() & 1;
  }

  if (v16 <= 9)
  {
    _ETLDebugPrint("ETLUCalTxCreateCommand", "Remaining %u not enough %u\n", v17, v18, v19, v20, v21, v22, v16);
    return 0;
  }

  v30 = HDLCFrameInjectUnsignedShort();
  result = 0;
  if (v30)
  {

    return HDLCFrameInject();
  }

  return result;
}

uint64_t ETLUCalTxParseResponse(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
        if (v11 == 26)
        {
          if (v9 <= 1)
          {
            _ETLDebugPrint("ETLUCalTxParseResponseWithStatus", "Payload length %u less than needed %u\n", a3, a4, a5, a6, a7, a8, v9);
            return 0;
          }

          else if (*(*a1 + 4) == 1)
          {
            return 1;
          }

          else
          {
            _ETLDebugPrint("ETLUCalTxParseResponseWithStatus", "Status returned was %u, expected %u\n", a3, a4, a5, a6, a7, a8, *(*a1 + 4));
            return 0;
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

uint64_t ETLUCalTxOperation(void *a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  if (a5)
  {
    *a5 = 0;
  }

  v40 = 0;
  memset(v39, 0, sizeof(v39));
  memset(v37, 0, sizeof(v37));
  v38 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLUCalTxOperation", "Faild to create uplink frame\n", v9, v10, v11, v12, v13, v14, v36);
    goto LABEL_26;
  }

  if (!ETLUCalTxCreateCommand(v39, a2))
  {
LABEL_26:
    v15 = 0;
    goto LABEL_27;
  }

  v15 = malloc((2 * DWORD2(v39[0]) + 32));
  if (v15)
  {
    v16 = HDLCFrameEncode();
    if (!v16)
    {
      goto LABEL_28;
    }

    v17 = v16;
    v41 = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, v15, v16);
    }

    if (!*a1)
    {
LABEL_28:
      free(v15);
      goto LABEL_26;
    }

    v18 = (*a1)(a1, v15, v17, &v41, 1, a4, 0);
    v19 = v41;
    free(v15);
    v15 = 0;
    if (v18)
    {
      if (v19 == v17)
      {
        LOBYTE(v41) = 75;
        if (!_ETLResponseRingBuffer)
        {
          TelephonyUtilRingBufferInitialize();
        }

        v15 = 0;
        if (ETLFindMatchingResponseUsingBuffer(a1, v37, &_ETLResponseRingBuffer, &v41, a4))
        {
          if (v41 == 75)
          {
            _ETLDebugPrint("ETLUCalTxOperation", "Read done\n", v20, v21, v22, v23, v24, v25, v36);
            if (DWORD2(v37[0]) < 4)
            {
              _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", v26, v27, v28, v29, v30, v31, DWORD2(v37[0]));
            }

            else
            {
              v32 = **&v37[0];
              if (**&v37[0] == 75)
              {
                if (BYTE1(v32) == 253)
                {
                  v33 = HIWORD(v32);
                  if (v33 == 26)
                  {
                    if ((DWORD2(v37[0]) - 4) <= 1)
                    {
                      _ETLDebugPrint("ETLUCalTxParseResponseWithStatus", "Payload length %u less than needed %u\n", v26, v27, v28, v29, v30, v31, (DWORD2(v37[0]) - 4));
                    }

                    else
                    {
                      v34 = *(*&v37[0] + 4);
                      if (a5)
                      {
                        *a5 = v34;
                      }

                      if (v34 == 1)
                      {
                        v15 = 1;
                        goto LABEL_27;
                      }

                      _ETLDebugPrint("ETLUCalTxParseResponseWithStatus", "Status returned was %u, expected %u\n", v26, v27, v28, v29, v30, v31, v34);
                    }
                  }

                  else
                  {
                    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v26, v27, v28, v29, v30, v31, v33);
                  }
                }

                else
                {
                  _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", v26, v27, v28, v29, v30, v31, BYTE1(v32));
                }
              }

              else
              {
                _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", v26, v27, v28, v29, v30, v31, **&v37[0]);
              }
            }

            goto LABEL_26;
          }
        }
      }
    }
  }

LABEL_27:
  HDLCFrameFree();
  HDLCFrameFree();
  return v15;
}

uint64_t ETLCalGetSKU(uint64_t (**a1)(void, void *, uint64_t, _OWORD *, uint64_t, uint64_t, void), _DWORD *a2, uint64_t a3)
{
  v3 = 0;
  v12 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (a2)
    {
      v9 = 4;
      v10 = 0;
      memset(v11, 0, sizeof(v11));
      v5 = ETLNVRead(a1, 50020, v11, 256, &v10, &v9, a3);
      v3 = 0;
      if (v5)
      {
        if (v9)
        {
          v6 = v9 == 5;
        }

        else
        {
          v6 = 1;
        }

        v3 = v6;
        if (v6 && v10 >= 3)
        {
          *a2 = LOWORD(v11[0]);
          v3 = 1;
        }
      }
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t ETLCalGetUmtsBand4Status(uint64_t (**a1)(void, uint64_t, uint64_t, int *, uint64_t, uint64_t, void), BOOL *a2, uint64_t a3)
{
  v3 = 0;
  if (a1 && a2)
  {
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    memset(v41, 0, sizeof(v41));
    v42 = 0;
    if (HDLCFrameCreateUplink())
    {
      FreeSpace = HDLCFrameGetFreeSpace();
      if (FreeSpace < 4)
      {
        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v14, v15, v16, v17, v18, v19, FreeSpace);
      }

      else
      {
        v46 = 3472715;
        if (HDLCFrameInject())
        {
          v3 = malloc((2 * DWORD2(v43) + 32));
          if (!v3)
          {
LABEL_29:
            HDLCFrameFree();
            HDLCFrameFree();
            return v3;
          }

          v26 = HDLCFrameEncode();
          if (!v26)
          {
            goto LABEL_31;
          }

          v27 = v26;
          v46 = -1431655766;
          if ((_ETLDebugFlags & 2) != 0)
          {
            off_2A18A5818(&str_3, 0, v3, v26);
          }

          if (*a1)
          {
            v28 = (*a1)(a1, v3, v27, &v46, 1, a3, 0);
            v29 = v46;
            free(v3);
            v3 = 0;
            if (!v28 || v29 != v27)
            {
              goto LABEL_29;
            }

            LOBYTE(v46) = 75;
            if (!_ETLResponseRingBuffer)
            {
              TelephonyUtilRingBufferInitialize();
            }

            v3 = 0;
            if (!ETLFindMatchingResponseUsingBuffer(a1, v41, &_ETLResponseRingBuffer, &v46, a3) || v46 != 75)
            {
              goto LABEL_29;
            }

            if (DWORD2(v41[0]) < 4)
            {
              _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", v30, v31, v32, v33, v34, v35, DWORD2(v41[0]));
            }

            else
            {
              v36 = **&v41[0];
              if (**&v41[0] == 75)
              {
                if (BYTE1(v36) == 253)
                {
                  v37 = HIWORD(v36);
                  if (v37 == 52)
                  {
                    if ((DWORD2(v41[0]) - 4) > 1)
                    {
                      *a2 = *(*&v41[0] + 4) != 0;
                      v3 = 1;
                      goto LABEL_29;
                    }

                    _ETLDebugPrint("ETLCalGetUmtsBand4Status", "Payload length %u less than needed %u\n", v30, v31, v32, v33, v34, v35, (DWORD2(v41[0]) - 4));
                  }

                  else
                  {
                    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v30, v31, v32, v33, v34, v35, v37);
                  }
                }

                else
                {
                  _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", v30, v31, v32, v33, v34, v35, BYTE1(v36));
                }
              }

              else
              {
                _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", v30, v31, v32, v33, v34, v35, **&v41[0]);
              }
            }
          }

          else
          {
LABEL_31:
            free(v3);
          }

LABEL_28:
          v3 = 0;
          goto LABEL_29;
        }

        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v20, v21, v22, v23, v24, v25, v40);
      }

      v38 = "Failed to add command header\n";
    }

    else
    {
      v38 = "Failed to create uplink frame\n";
    }

    _ETLDebugPrint("ETLCalGetUmtsBand4Status", v38, v7, v8, v9, v10, v11, v12, v40);
    goto LABEL_28;
  }

  return v3;
}

uint64_t ETLPM_GetVREGLevel(void *a1, char a2, int *a3, unsigned int a4)
{
  v25 = *MEMORY[0x29EDCA608];
  v17 = -1431655766;
  v23 = -21846;
  memset(v24, 0, sizeof(v24));
  v21 = 271435;
  v22 = a2;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v18 = v7;
  v19 = v7;
  if (!HDLCFrameCreateUplink())
  {
    goto LABEL_15;
  }

  HDLCFrameInject();
  v8 = HDLCFrameEncode();
  if (!v8)
  {
    goto LABEL_15;
  }

  v9 = v8;
  if (v8 < 1)
  {
    goto LABEL_15;
  }

  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&unk_2977CAD33, 0, v24, v8);
  }

  if (!*a1)
  {
LABEL_15:
    result = 0;
LABEL_16:
    v15 = *MEMORY[0x29EDCA608];
    return result;
  }

  v10 = (*a1)(a1, v24, v9, &v17, 1, 1000, 0);
  result = 0;
  if (!v10 || v17 != v9)
  {
    goto LABEL_16;
  }

  v20 = 0xAAAAAAAAAAAAAAAALL;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v18 = v12;
  v19 = v12;
  LOBYTE(v21) = 75;
  if (!_ETLResponseRingBuffer)
  {
    TelephonyUtilRingBufferInitialize();
  }

  result = ETLFindMatchingResponseUsingBuffer(a1, &v18, &_ETLResponseRingBuffer, &v21, a4);
  if (!result)
  {
    goto LABEL_16;
  }

  if (v21 == 75)
  {
    v13 = (DWORD2(v18) - 4) < 0xFFFFFFFD;
    if ((DWORD2(v18) - 4) > 0xFFFFFFFC)
    {
      v14 = 43690;
    }

    else
    {
      v14 = *(v18 + 5);
    }

    *a3 = v14;
  }

  else
  {
    v13 = 0;
  }

  HDLCFrameFree();
  result = v13;
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ETLCMCreateGetModeCommand()
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

uint64_t ETLCMParseGetModeResponse(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 8);
  v9 = v8 - 4;
  if (v8 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a3, a4, a5, a6, a7, a8, *(a1 + 8));
    return 0;
  }

  v10 = *a1;
  if (**a1 != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, **a1);
    return 0;
  }

  if ((**a1 & 0xFFFFFF00) != 0xF00)
  {
    return 0;
  }

  if (v9 <= 0x2B)
  {
    _ETLDebugPrint("ETLCMParseGetModeResponse", "Need %u bytes, only have %u\n", a3, a4, a5, a6, a7, a8, 44);
    return 0;
  }

  else
  {
    v11 = *(v10 + 4);
    v12 = *(v10 + 20);
    *(a2 + 28) = v10[2];
    *a2 = v11;
    a2[1] = v12;
    return 1;
  }
}

uint64_t ETLCMGetMode(uint64_t (**a1)(void, uint64_t, uint64_t, int *, uint64_t, uint64_t, void), _OWORD *a2, uint64_t a3)
{
  if (a1)
  {
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
        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v13, v14, v15, v16, v17, v18, FreeSpace);
        goto LABEL_26;
      }

      v41 = 3915;
      if (HDLCFrameInject())
      {
        v19 = malloc((2 * DWORD2(v38) + 32));
        if (!v19)
        {
LABEL_27:
          HDLCFrameFree();
          HDLCFrameFree();
          return v19;
        }

        v20 = HDLCFrameEncode();
        if (!v20)
        {
          goto LABEL_29;
        }

        v21 = v20;
        v41 = -1431655766;
        if ((_ETLDebugFlags & 2) != 0)
        {
          off_2A18A5818(&str_3, 0, v19, v20);
        }

        if (*a1)
        {
          v22 = (*a1)(a1, v19, v21, &v41, 1, a3, 0);
          v23 = v41;
          free(v19);
          v19 = 0;
          if (!v22 || v23 != v21)
          {
            goto LABEL_27;
          }

          LOBYTE(v41) = 75;
          if (!_ETLResponseRingBuffer)
          {
            TelephonyUtilRingBufferInitialize();
          }

          v19 = 0;
          if (!ETLFindMatchingResponseUsingBuffer(a1, v36, &_ETLResponseRingBuffer, &v41, a3) || v41 != 75)
          {
            goto LABEL_27;
          }

          if (DWORD2(v36[0]) < 4)
          {
            _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", v24, v25, v26, v27, v28, v29, DWORD2(v36[0]));
          }

          else if (**&v36[0] == 75)
          {
            if ((**&v36[0] & 0xFFFFFF00) == 0xF00)
            {
              if ((DWORD2(v36[0]) - 4) > 0x2B)
              {
                v30 = *(*&v36[0] + 4);
                v31 = *(*&v36[0] + 20);
                *(a2 + 28) = *(*&v36[0] + 32);
                *a2 = v30;
                a2[1] = v31;
                v19 = 1;
                goto LABEL_27;
              }

              _ETLDebugPrint("ETLCMParseGetModeResponse", "Need %u bytes, only have %u\n", v24, v25, v26, v27, v28, v29, 44);
            }
          }

          else
          {
            _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", v24, v25, v26, v27, v28, v29, **&v36[0]);
          }
        }

        else
        {
LABEL_29:
          free(v19);
        }

LABEL_26:
        v19 = 0;
        goto LABEL_27;
      }

      v32 = "ETLSubsysAddHeaderInternal";
      v33 = "Failed to inject\n";
    }

    else
    {
      v32 = "ETLCMGetMode";
      v33 = "Failed to create command frame\n";
    }

    _ETLDebugPrint(v32, v33, v6, v7, v8, v9, v10, v11, v35);
    goto LABEL_26;
  }

  return 0;
}

uint64_t ETLEVENTCreateSetMaskCommand(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  _ETLDebugPrint("ETLEVENTCreateSetMaskCommand", "Setting masks of %u bits\n", a3, a4, a5, a6, a7, a8, a3);
  if (v8 > 0x1000)
  {
    return 0;
  }

  v9 = (v8 + 7) >> 3;
  if (HDLCFrameGetFreeSpace() < v9 + 7)
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", v10, v11, v12, v13, v14, v15, v9 + 7);
    return 0;
  }

  HDLCFrameInjectUnsignedChar();
  HDLCFrameInjectUnsignedChar();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInjectUnsignedShort();
  HDLCFrameInject();

  return HDLCFrameInjectUnsignedChar();
}

uint64_t ETLEVENTParseSetMaskResponse(unsigned __int8 **a1, _DWORD *a2, void *__dst, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 2);
  if (v8 <= 5)
  {
    _ETLDebugPrint("ETLEVENTParseSetGetMaskResponseInternal", "Response has %u bytes, need %u\n", __dst, a4, a5, a6, a7, a8, *(a1 + 2));
    return 0;
  }

  else
  {
    v9 = *a1;
    if (**a1 == 130)
    {
      v10 = *(v9 + 1);
      *a2 = v10;
      if (v10)
      {
        return 0;
      }

      else
      {
        v12 = *(v9 + 4);
        *a4 = v12;
        if (v12 > 0x1000 || (v12 + 7) >> 3 > v8 - 6)
        {
          _ETLDebugPrint("ETLEVENTParseSetGetMaskResponseInternal", "Need %u bytes for mask of %u bits, only have %u\n", __dst, a4, a5, a6, a7, a8, (v12 + 7) >> 3);
          return 0;
        }

        else
        {
          memcpy(__dst, (v9 + 6), (v12 + 7) >> 3);
          return 1;
        }
      }
    }

    else
    {
      _ETLDebugPrint("ETLExpectResponseCode", "Received response code is %u, expected %u\n", __dst, a4, a5, a6, a7, a8, **a1);
      return 0;
    }
  }
}

uint64_t ETLEVENTCreateGetMaskCommand()
{
  if (HDLCFrameGetFreeSpace() <= 3)
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", v0, v1, v2, v3, v4, v5, 4);
    return 0;
  }

  else
  {
    HDLCFrameInjectUnsignedChar();
    HDLCFrameInjectUnsignedChar();

    return HDLCFrameInjectUnsignedShort();
  }
}

uint64_t ETLEVENTParseGetMaskResponse(unsigned __int8 **a1, _DWORD *a2, void *__dst, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 2);
  if (v8 <= 5)
  {
    _ETLDebugPrint("ETLEVENTParseSetGetMaskResponseInternal", "Response has %u bytes, need %u\n", __dst, a4, a5, a6, a7, a8, *(a1 + 2));
    return 0;
  }

  else
  {
    v9 = *a1;
    if (**a1 == 129)
    {
      v10 = *(v9 + 1);
      *a2 = v10;
      if (v10)
      {
        return 0;
      }

      else
      {
        v12 = *(v9 + 4);
        *a4 = v12;
        if (v12 > 0x1000 || (v12 + 7) >> 3 > v8 - 6)
        {
          _ETLDebugPrint("ETLEVENTParseSetGetMaskResponseInternal", "Need %u bytes for mask of %u bits, only have %u\n", __dst, a4, a5, a6, a7, a8, (v12 + 7) >> 3);
          return 0;
        }

        else
        {
          memcpy(__dst, (v9 + 6), (v12 + 7) >> 3);
          return 1;
        }
      }
    }

    else
    {
      _ETLDebugPrint("ETLExpectResponseCode", "Received response code is %u, expected %u\n", __dst, a4, a5, a6, a7, a8, **a1);
      return 0;
    }
  }
}

uint64_t ETLEVENTCreateEnableCommand()
{
  if (HDLCFrameGetFreeSpace() <= 1)
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", v0, v1, v2, v3, v4, v5, 2);
    return 0;
  }

  else
  {
    HDLCFrameInjectUnsignedChar();

    return HDLCFrameInjectUnsignedChar();
  }
}

unint64_t ETLEVENTSetMask(void *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v39 = *MEMORY[0x29EDCA608];
  v32 = -126;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  __s2[30] = v8;
  __s2[31] = v8;
  __s2[28] = v8;
  __s2[29] = v8;
  __s2[26] = v8;
  __s2[27] = v8;
  __s2[24] = v8;
  __s2[25] = v8;
  __s2[22] = v8;
  __s2[23] = v8;
  __s2[20] = v8;
  __s2[21] = v8;
  __s2[18] = v8;
  __s2[19] = v8;
  __s2[16] = v8;
  __s2[17] = v8;
  __s2[14] = v8;
  __s2[15] = v8;
  __s2[12] = v8;
  __s2[13] = v8;
  __s2[10] = v8;
  __s2[11] = v8;
  __s2[8] = v8;
  __s2[9] = v8;
  __s2[6] = v8;
  __s2[7] = v8;
  __s2[4] = v8;
  __s2[5] = v8;
  __s2[2] = v8;
  __s2[3] = v8;
  __s2[0] = v8;
  __s2[1] = v8;
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  memset(v33, 0, sizeof(v33));
  v34 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLEVENTSetMask", "Failed to create command frame\n", v9, v10, v11, v12, v13, v14, v30);
    goto LABEL_25;
  }

  if (!ETLEVENTCreateSetMaskCommand(v35, a2, a3, v10, v11, v12, v13, v14))
  {
LABEL_25:
    v15 = 0;
    goto LABEL_26;
  }

  v15 = malloc((2 * DWORD2(v35[0]) + 32));
  if (!v15)
  {
    goto LABEL_26;
  }

  v16 = HDLCFrameEncode();
  if (!v16)
  {
    goto LABEL_27;
  }

  v17 = v16;
  v37 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v15, v16);
  }

  if (!*a1)
  {
LABEL_27:
    free(v15);
    goto LABEL_25;
  }

  v18 = (*a1)(a1, v15, v17, &v37, 1, a4, 0);
  v19 = v37;
  free(v15);
  v15 = 0;
  if (v18 && v19 == v17)
  {
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    if (ETLFindMatchingResponseUsingBuffer(a1, v33, &_ETLResponseRingBuffer, &v32, a4))
    {
      if (DWORD2(v33[0]) <= 5)
      {
        _ETLDebugPrint("ETLEVENTParseSetGetMaskResponseInternal", "Response has %u bytes, need %u\n", v20, v21, v22, v23, v24, v25, DWORD2(v33[0]));
      }

      else if (**&v33[0] == 130)
      {
        if (!*(*&v33[0] + 1))
        {
          LODWORD(v26) = *(*&v33[0] + 4);
          v27 = (v26 + 7) >> 3;
          if (v26 > 0x1000 || v27 > DWORD2(v33[0]) - 6)
          {
            v31 = *(*&v33[0] + 4);
            _ETLDebugPrint("ETLEVENTParseSetGetMaskResponseInternal", "Need %u bytes for mask of %u bits, only have %u\n", v27, v21, v22, v23, v24, v25, (v26 + 7) >> 3);
          }

          else
          {
            __memcpy_chk();
            if (v26 >= a3)
            {
              v26 = a3;
            }

            else
            {
              v26 = v26;
            }

            if (!memcmp(a2, __s2, v26 >> 3))
            {
              v15 = (v26 & 7) == 0 || ((*(__s2 + (v26 >> 3)) ^ a2[v26 >> 3]) & ~(-1 << (v26 & 7))) == 0;
              goto LABEL_26;
            }
          }
        }
      }

      else
      {
        _ETLDebugPrint("ETLExpectResponseCode", "Received response code is %u, expected %u\n", v20, v21, v22, v23, v24, v25, **&v33[0]);
      }
    }

    goto LABEL_25;
  }

LABEL_26:
  HDLCFrameFree();
  HDLCFrameFree();
  v28 = *MEMORY[0x29EDCA608];
  return v15;
}