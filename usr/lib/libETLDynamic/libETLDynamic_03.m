uint64_t ETLEVENTGetMask(void *a1, void *a2, unsigned int *a3, uint64_t a4)
{
  v34 = -127;
  v37 = 0u;
  v38 = 0u;
  v39 = 0;
  memset(v35, 0, sizeof(v35));
  v36 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    v30 = "ETLEVENTGetMask";
    v31 = "Failed to create command frame\n";
LABEL_22:
    _ETLDebugPrint(v30, v31, v8, v9, v10, v11, v12, v13, v33);
    goto LABEL_23;
  }

  if (HDLCFrameGetFreeSpace() <= 3)
  {
    v33 = 4;
    v30 = "ETLRequireFreeSpace";
    v31 = "Need %u bytes free space, but only have %u\n";
    goto LABEL_22;
  }

  HDLCFrameInjectUnsignedChar();
  HDLCFrameInjectUnsignedChar();
  if (!HDLCFrameInjectUnsignedShort())
  {
    goto LABEL_23;
  }

  v14 = malloc((2 * DWORD2(v37) + 32));
  if (v14)
  {
    v15 = HDLCFrameEncode();
    if (!v15)
    {
      goto LABEL_25;
    }

    v16 = v15;
    v40 = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, v14, v15);
    }

    if (!*a1)
    {
LABEL_25:
      free(v14);
      goto LABEL_23;
    }

    v17 = (*a1)(a1, v14, v16, &v40, 1, a4, 0);
    v18 = v40;
    free(v14);
    v14 = 0;
    if (v17)
    {
      if (v18 == v16)
      {
        if (!_ETLResponseRingBuffer)
        {
          TelephonyUtilRingBufferInitialize();
        }

        if (ETLFindMatchingResponseUsingBuffer(a1, v35, &_ETLResponseRingBuffer, &v34, a4))
        {
          v25 = DWORD2(v35[0]);
          if (DWORD2(v35[0]) <= 5)
          {
            _ETLDebugPrint("ETLEVENTParseSetGetMaskResponseInternal", "Response has %u bytes, need %u\n", v19, v20, v21, v22, v23, v24, DWORD2(v35[0]));
          }

          else
          {
            v26 = *&v35[0];
            if (**&v35[0] == 129)
            {
              if (!*(*&v35[0] + 1))
              {
                v27 = *(*&v35[0] + 4);
                *a3 = v27;
                v28 = v25 - 6;
                v29 = (v27 + 7) >> 3;
                if (v27 <= 0x1000 && v29 <= v28)
                {
                  memcpy(a2, (v26 + 6), v29);
                  v14 = 1;
                  goto LABEL_24;
                }

                _ETLDebugPrint("ETLEVENTParseSetGetMaskResponseInternal", "Need %u bytes for mask of %u bits, only have %u\n", v29, v20, v21, v22, v23, v24, (v27 + 7) >> 3);
              }
            }

            else
            {
              _ETLDebugPrint("ETLExpectResponseCode", "Received response code is %u, expected %u\n", v19, v20, v21, v22, v23, v24, **&v35[0]);
            }
          }
        }

LABEL_23:
        v14 = 0;
      }
    }
  }

LABEL_24:
  HDLCFrameFree();
  HDLCFrameFree();
  return v14;
}

void *ETLEVENTEnable(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = 96;
  _ETLDebugPrint("ETLEVENTEnable", "enable = %u\n", a3, a4, a5, a6, a7, a8, a2);
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  memset(v26, 0, sizeof(v26));
  v27 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    v21 = "ETLEVENTEnable";
    v22 = "Failed to create command frame\n";
LABEL_16:
    _ETLDebugPrint(v21, v22, v10, v11, v12, v13, v14, v15, v24);
    goto LABEL_17;
  }

  if (HDLCFrameGetFreeSpace() <= 1)
  {
    v24 = 2;
    v21 = "ETLRequireFreeSpace";
    v22 = "Need %u bytes free space, but only have %u\n";
    goto LABEL_16;
  }

  HDLCFrameInjectUnsignedChar();
  if (!HDLCFrameInjectUnsignedChar())
  {
LABEL_17:
    v16 = 0;
    goto LABEL_18;
  }

  v16 = malloc((2 * DWORD2(v28) + 32));
  if (!v16)
  {
    goto LABEL_18;
  }

  v17 = HDLCFrameEncode();
  if (!v17)
  {
    goto LABEL_19;
  }

  v18 = v17;
  v31 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v16, v17);
  }

  if (!*a1)
  {
LABEL_19:
    free(v16);
    goto LABEL_17;
  }

  v19 = (*a1)(a1, v16, v18, &v31, 1, a3, 0);
  v20 = v31;
  free(v16);
  v16 = 0;
  if (v19 && v20 == v18)
  {
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    v16 = ETLFindMatchingResponseUsingBuffer(a1, v26, &_ETLResponseRingBuffer, &v25, a3);
  }

LABEL_18:
  HDLCFrameFree();
  HDLCFrameFree();
  return v16;
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

uint64_t ETLPRLReadStatusIsSuccess(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 1;
  if (a1 && a1 != 2)
  {
    if (a1 == 1)
    {
      _ETLDebugPrint("ETLPRLReadStatusIsSuccess", "PRL Read status kStatusPRLNVReadFail [%u]\n", a3, a4, a5, a6, a7, a8, 1);
    }

    else
    {
      _ETLDebugPrint("ETLPRLReadStatusIsSuccess", "PRL Read status Invalid [%u]\n", a3, a4, a5, a6, a7, a8, a1);
    }

    return 0;
  }

  return v8;
}

uint64_t ETLPRLWriteStatusIsSuccess(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 < 2)
  {
    return 1;
  }

  if (a1 == 3)
  {
    _ETLDebugPrint("ETLPRLWriteStatusIsSuccess", "PRL Write status kStatusPRLWriteOverflow [%u]\n", a3, a4, a5, a6, a7, a8, 3);
    return 0;
  }

  else
  {
    if (a1 == 2)
    {
      _ETLDebugPrint("ETLPRLWriteStatusIsSuccess", "PRL Write status kStatusPRLWriteOutOfSeq [%u]\n", a3, a4, a5, a6, a7, a8, 2);
    }

    else
    {
      _ETLDebugPrint("ETLPRLWriteStatusIsSuccess", "PRL Write status Invalid [%u]\n", a3, a4, a5, a6, a7, a8, a1);
    }

    return 0;
  }
}

uint64_t ETLPRLCreateReadCommand()
{
  if (HDLCFrameGetFreeSpace() <= 2)
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", v0, v1, v2, v3, v4, v5, 3);
  }

  HDLCFrameInjectUnsignedChar();
  HDLCFrameInjectUnsignedChar();

  return HDLCFrameInjectUnsignedChar();
}

uint64_t ETLPRLParseReadResponse(uint64_t *a1, uint64_t a2, void *__dst, uint64_t a4, unsigned int *a5, _BYTE *a6, uint64_t a7, uint64_t a8)
{
  *a5 = 0;
  *a6 = 0;
  if (*(a1 + 2) <= 7u)
  {
    _ETLDebugPrint("ETLPRLParseReadResponse", "PRL Read Response size [%u] bytes not enough, need atleast [%u] bytes\n", __dst, a4, a5, a6, a7, a8, *(a1 + 2));
    return 0;
  }

  else
  {
    v8 = *a1;
    if (*a1)
    {
      v9 = *(v8 + 1);
      if (*(v8 + 1))
      {
        v10 = v9 == 2;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        if (*(v8 + 4) == a2)
        {
          *a6 = *(v8 + 5);
          v11 = *(v8 + 6);
          if (*(v8 + 6))
          {
            v12 = v11 >> 3;
            if (v11 >> 3 > a4)
            {
              _ETLDebugPrint("ETLPRLParseReadResponse", "PRL Read Destination Buffer not sufficient. Passed[%u] Required[%u]\n", __dst, a4, a5, a6, a7, a8, a4);
              return 0;
            }

            v20 = (v8 + 8);
            memcpy(__dst, v20, v11 >> 3);
            *a5 = v12;
          }

          return 1;
        }

        else
        {
          v23 = *(v8 + 4);
          _ETLDebugPrint("ETLPRLParseReadResponse", "Sequence number out of order Expected[%u] Received[%u]\n", __dst, a4, a5, a6, a7, a8, a2);
          return 0;
        }
      }

      else
      {
        if (v9 == 1)
        {
          _ETLDebugPrint("ETLPRLReadStatusIsSuccess", "PRL Read status kStatusPRLNVReadFail [%u]\n", __dst, a4, a5, a6, a7, a8, 1);
        }

        else
        {
          _ETLDebugPrint("ETLPRLReadStatusIsSuccess", "PRL Read status Invalid [%u]\n", __dst, a4, a5, a6, a7, a8, *(v8 + 1));
        }

        _ETLDebugPrint("ETLPRLParseReadResponse", "PRL NV Read Status [%u]\n", v14, v15, v16, v17, v18, v19, *(v8 + 2));
        return 0;
      }
    }

    else
    {
      _ETLDebugPrint("ETLPRLParseReadResponse", "PRL Get payload failed\n", __dst, a4, a5, a6, a7, a8, v22);
      return 0;
    }
  }
}

uint64_t ETLPRLCreateWriteCommand(uint64_t a1, uint64_t a2, int a3)
{
  v3 = (a3 + 6);
  if (HDLCFrameGetFreeSpace() < v3)
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", v4, v5, v6, v7, v8, v9, v3);
  }

  HDLCFrameInjectUnsignedChar();
  HDLCFrameInjectUnsignedChar();
  HDLCFrameInjectUnsignedChar();
  HDLCFrameInjectUnsignedChar();
  HDLCFrameInjectUnsignedShort();

  return HDLCFrameInject();
}

uint64_t ETLPRLParseWriteResponse(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 2) <= 3u)
  {
    _ETLDebugPrint("ETLPRLParseWriteResponse", "PRL Write Response size [%u] bytes not enough, need atleast [%u] bytes\n", a3, a4, a5, a6, a7, a8, *(a1 + 2));
    return 0;
  }

  else
  {
    v8 = *a1;
    if (*a1)
    {
      v9 = *(v8 + 1);
      if (v9 < 2)
      {
        return 1;
      }

      else
      {
        if (v9 == 3)
        {
          _ETLDebugPrint("ETLPRLWriteStatusIsSuccess", "PRL Write status kStatusPRLWriteOverflow [%u]\n", a3, a4, a5, a6, a7, a8, 3);
        }

        else if (v9 == 2)
        {
          _ETLDebugPrint("ETLPRLWriteStatusIsSuccess", "PRL Write status kStatusPRLWriteOutOfSeq [%u]\n", a3, a4, a5, a6, a7, a8, 2);
        }

        else
        {
          _ETLDebugPrint("ETLPRLWriteStatusIsSuccess", "PRL Write status Invalid [%u]\n", a3, a4, a5, a6, a7, a8, *(v8 + 1));
        }

        _ETLDebugPrint("ETLPRLParseWriteResponse", "PRL NV Write Status [%u]\n", v10, v11, v12, v13, v14, v15, *(v8 + 2));
        return 0;
      }
    }

    else
    {
      _ETLDebugPrint("ETLPRLParseWriteResponse", "PRL Get payload failed\n", a3, a4, a5, a6, a7, a8, v17);
      return 0;
    }
  }
}

uint64_t ETLPRLRead(uint64_t (**a1)(void, uint64_t, uint64_t, int *, uint64_t, uint64_t, void), char *a2, unsigned int a3, _DWORD *a4, uint64_t a5)
{
  v5 = 0;
  if (a1 && a2 && a3 && a4)
  {
    __dst = a2;
    v34 = a3;
    v35 = 0;
    v8 = 0;
    v42 = 1;
    v38 = 0xAAAAAAAAAAAAAAAALL;
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v36 = v9;
    v37 = v9;
    *a4 = 0;
    v10 = 0uLL;
    while (1)
    {
      v41 = 0;
      v39 = v10;
      v40 = v10;
      if ((HDLCFrameCreateUplink() & 1) == 0)
      {
        _ETLDebugPrint("ETLPRLRead", "Failed to create command frame\n", v11, v12, v13, v14, v15, v16, v31);
        HDLCFrameFree();
        return 0;
      }

      v38 = 0;
      v36 = 0u;
      v37 = 0u;
      if (HDLCFrameGetFreeSpace() <= 2)
      {
        _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", v17, v18, v19, v20, v21, v22, 3);
      }

      HDLCFrameInjectUnsignedChar();
      HDLCFrameInjectUnsignedChar();
      if (HDLCFrameInjectUnsignedChar())
      {
        v5 = malloc((2 * DWORD2(v39) + 32));
        if (!v5)
        {
          goto LABEL_24;
        }

        v23 = HDLCFrameEncode();
        if (!v23)
        {
          goto LABEL_22;
        }

        v24 = v23;
        v43 = -1431655766;
        if ((_ETLDebugFlags & 2) != 0)
        {
          off_2A18A5818(&str_3, 0, v5, v23);
        }

        if (*a1)
        {
          v25 = (*a1)(a1, v5, v24, &v43, 1, a5, 0);
          v26 = v43;
          free(v5);
          v5 = 0;
          if (!v25 || v26 != v24)
          {
            goto LABEL_24;
          }

          LOBYTE(v43) = 73;
          if (!_ETLResponseRingBuffer)
          {
            TelephonyUtilRingBufferInitialize();
          }

          if (ETLFindMatchingResponseUsingBuffer(a1, &v36, &_ETLResponseRingBuffer, &v43, a5) && ETLPRLParseReadResponse(&v36, v8, __dst, v34, &v35, &v42, v27, v28))
          {
            __dst += v35;
            v34 -= v35;
            *a4 += v35;
            ++v8;
            v5 = 1;
            goto LABEL_24;
          }
        }

        else
        {
LABEL_22:
          free(v5);
        }
      }

      v5 = 0;
LABEL_24:
      HDLCFrameFree();
      v29 = v42;
      HDLCFrameFree();
      if (v5)
      {
        v10 = 0uLL;
        if (v29)
        {
          continue;
        }
      }

      return v5;
    }
  }

  return v5;
}

void *ETLPRLWrite(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v4 = 0;
  if (a1)
  {
    v5 = a2;
    if (a2)
    {
      v6 = a3;
      if (a3)
      {
        v8 = a1;
        v9 = 0;
        v47 = 0xAAAAAAAAAAAAAAAALL;
        *&v10 = 0xAAAAAAAAAAAAAAAALL;
        *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v45 = v10;
        v46 = v10;
        v11 = 0uLL;
        while (1)
        {
          v50 = 0;
          v48 = v11;
          v49 = v11;
          if ((HDLCFrameCreateUplink() & 1) == 0)
          {
            break;
          }

          v47 = 0;
          v45 = 0u;
          v46 = 0u;
          if (v6 >= 0x78)
          {
            v18 = 120;
          }

          else
          {
            v18 = v6;
          }

          if (v6 <= 0x78)
          {
            v19 = v6;
          }

          else
          {
            v19 = v6 - 120;
          }

          if (HDLCFrameGetFreeSpace() < v18 + 6)
          {
            _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", v20, v21, v22, v23, v24, v25, v18 + 6);
          }

          HDLCFrameInjectUnsignedChar();
          HDLCFrameInjectUnsignedChar();
          HDLCFrameInjectUnsignedChar();
          HDLCFrameInjectUnsignedChar();
          HDLCFrameInjectUnsignedShort();
          if (!HDLCFrameInject())
          {
            goto LABEL_29;
          }

          v4 = malloc((2 * DWORD2(v48) + 32));
          if (!v4)
          {
            goto LABEL_30;
          }

          v26 = HDLCFrameEncode();
          if (!v26)
          {
            goto LABEL_28;
          }

          v27 = v26;
          v51 = -1431655766;
          if ((_ETLDebugFlags & 2) != 0)
          {
            off_2A18A5818(&str_3, 0, v4, v26);
          }

          v28 = *v8;
          if (!*v8)
          {
LABEL_28:
            free(v4);
LABEL_29:
            v4 = 0;
LABEL_30:
            HDLCFrameFree();
            HDLCFrameFree();
            return v4;
          }

          v29 = v8;
          v30 = a4;
          v31 = v28(v29, v4, v27, &v51, 1, a4, 0);
          v32 = v51;
          free(v4);
          v4 = 0;
          if (!v31)
          {
            goto LABEL_30;
          }

          v33 = v32 == v27;
          a4 = v30;
          v8 = a1;
          if (!v33)
          {
            goto LABEL_30;
          }

          LOBYTE(v51) = 72;
          if (!_ETLResponseRingBuffer)
          {
            TelephonyUtilRingBufferInitialize();
          }

          if (!ETLFindMatchingResponseUsingBuffer(a1, &v45, &_ETLResponseRingBuffer, &v51, a4))
          {
            goto LABEL_29;
          }

          v4 = ETLPRLParseWriteResponse(&v45, v34, v35, v36, v37, v38, v39, v40);
          HDLCFrameFree();
          HDLCFrameFree();
          if (v4)
          {
            ++v9;
            v5 += v18;
            v41 = v6 > 0x78;
            v6 = v19;
            v11 = 0uLL;
            if (v41)
            {
              continue;
            }
          }

          return v4;
        }

        _ETLDebugPrint("ETLPRLWrite", "Failed to create command frame\n", v12, v13, v14, v15, v16, v17, v43);
        HDLCFrameFree();
        return 0;
      }
    }
  }

  return v4;
}

uint64_t ETLFusingCreateReadQfpromFuseCommand()
{
  v2 = *MEMORY[0x29EDCA608];
  result = ETLFusingCreateQfpromFusingCommand();
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ETLFusingCreateQfpromFusingCommand()
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v1, v2, v3, v4, v5, v6, FreeSpace);
    return 0;
  }

  if ((HDLCFrameInject() & 1) == 0)
  {
    v15 = "ETLSubsysAddHeaderInternal";
    v16 = "Failed to inject\n";
LABEL_13:
    _ETLDebugPrint(v15, v16, v7, v8, v9, v10, v11, v12, v17);
    return 0;
  }

  v13 = HDLCFrameGetFreeSpace();
  if (v13 <= 0x23)
  {
    v17 = v13;
    v15 = "ETLFusingCreateQfpromFusingCommand";
    v16 = "Remaining %u not enough %u\n";
    goto LABEL_13;
  }

  if (!HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedChar() || !HDLCFrameInjectUnsignedChar())
  {
    return 0;
  }

  return HDLCFrameInject();
}

uint64_t ETLFusingParseReadQfpromFuseResponse(int **a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
        if (v12 == 11)
        {
          if (v9 <= 0x21)
          {
            _ETLDebugPrint("ETLFusingParseQfpromFusingResponse", "Payload length %u less than needed %u\n", a3, a4, a5, a6, a7, a8, v9);
            return 0;
          }

          else
          {
            v13 = v10[1];
            v14 = *(v10 + 6);
            *a3 = *(v10 + 2);
            a3[1] = v14;
            if (v13)
            {
              _ETLDebugPrint("ETLFusingParseQfpromFusingResponse", "Status returned was %u, expected %u\n", a3, a4, a5, a6, a7, a8, v13);
              return 0;
            }

            else
            {
              return 1;
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

uint64_t ETLFusingParseWriteQfpromFuseResponse(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
        if (v11 == 11)
        {
          if (v9 <= 0x21)
          {
            _ETLDebugPrint("ETLFusingParseQfpromFusingResponse", "Payload length %u less than needed %u\n", a3, a4, a5, a6, a7, a8, v9);
            return 0;
          }

          else if (*(*a1 + 4))
          {
            _ETLDebugPrint("ETLFusingParseQfpromFusingResponse", "Status returned was %u, expected %u\n", a3, a4, a5, a6, a7, a8, *(*a1 + 4));
            return 0;
          }

          else
          {
            return 1;
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

uint64_t ETLFusingParseVerifyQfpromFuseResponse(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
        if (v11 == 11)
        {
          if (v9 <= 0x21)
          {
            _ETLDebugPrint("ETLFusingParseQfpromFusingResponse", "Payload length %u less than needed %u\n", a3, a4, a5, a6, a7, a8, v9);
            return 0;
          }

          else if (*(*a1 + 4))
          {
            _ETLDebugPrint("ETLFusingParseQfpromFusingResponse", "Status returned was %u, expected %u\n", a3, a4, a5, a6, a7, a8, *(*a1 + 4));
            return 0;
          }

          else
          {
            return 1;
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

uint64_t ETLFusingProgramQfpromFuse(void *a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v57 = *MEMORY[0x29EDCA608];
  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  __dst = v13;
  v55 = v13;
  v53[0] = v13;
  v53[1] = v13;
  v52[3] = 0xAAAAAAAAAAAAAAAALL;
  memset(v52 + 1, 170, 24);
  if (a5 > 0x1F)
  {
    v15 = a4[1];
    __dst = *a4;
    v55 = v15;
  }

  else
  {
    v14 = a5;
    _ETLDebugPrint("ETLFusingProgramQfpromFuse", "Data length needed %u  provided %u - padding the rest with zeroes\n", a3, a4, a5, a6, a7, a8, 32);
    memcpy(&__dst, a4, v14);
    bzero(&__dst + v14, 32 - v14);
  }

  memset(__b, 170, sizeof(__b));
  TelephonyUtilLogBinaryToBuffer();
  _ETLDebugPrint("ETLFusingShowQfpromFuse", "%s fuse %u, value: \t%s\n", v16, v17, v18, v19, v20, v21, "Programming");
  *&v22 = 0xAAAAAAAAAAAAAAAALL;
  *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v50 = v22;
  v51 = v22;
  if ((ETLFusingPerformQfpromFusingOperation(a1, a2, 0, 0, v53, &v50, a6) & 1) == 0)
  {
    _ETLDebugPrint("ETLFusingProgramQfpromFuse", "Failed to read the fuse %u\n", v23, v24, v25, v26, v27, v28, a2);
LABEL_40:
    result = 0;
    goto LABEL_41;
  }

  memset(__b, 170, sizeof(__b));
  TelephonyUtilLogBinaryToBuffer();
  _ETLDebugPrint("ETLFusingShowQfpromFuse", "%s fuse %u, value: \t%s\n", v29, v30, v31, v32, v33, v34, "Read back");
  v41 = __dst;
  LOBYTE(v52[0]) = __dst & ~v50;
  if ((v50 | __dst) != __dst)
  {
    goto LABEL_39;
  }

  v41 = BYTE1(__dst);
  BYTE1(v52[0]) = BYTE1(__dst) & ~BYTE1(v50);
  if ((BYTE1(v50) | BYTE1(__dst)) != BYTE1(__dst))
  {
    goto LABEL_39;
  }

  v41 = BYTE2(__dst);
  BYTE2(v52[0]) = BYTE2(__dst) & ~BYTE2(v50);
  if ((BYTE2(v50) | BYTE2(__dst)) != BYTE2(__dst))
  {
    goto LABEL_39;
  }

  v41 = BYTE3(__dst);
  BYTE3(v52[0]) = BYTE3(__dst) & ~BYTE3(v50);
  if ((BYTE3(v50) | BYTE3(__dst)) != BYTE3(__dst))
  {
    goto LABEL_39;
  }

  v41 = BYTE4(__dst);
  BYTE4(v52[0]) = BYTE4(__dst) & ~BYTE4(v50);
  if ((BYTE4(v50) | BYTE4(__dst)) != BYTE4(__dst))
  {
    goto LABEL_39;
  }

  v41 = BYTE5(__dst);
  BYTE5(v52[0]) = BYTE5(__dst) & ~BYTE5(v50);
  if ((BYTE5(v50) | BYTE5(__dst)) != BYTE5(__dst))
  {
    goto LABEL_39;
  }

  v41 = BYTE6(__dst);
  BYTE6(v52[0]) = BYTE6(__dst) & ~BYTE6(v50);
  if ((BYTE6(v50) | BYTE6(__dst)) != BYTE6(__dst))
  {
    goto LABEL_39;
  }

  v41 = BYTE7(__dst);
  HIBYTE(v52[0]) = BYTE7(__dst) & ~BYTE7(v50);
  if ((BYTE7(v50) | BYTE7(__dst)) != BYTE7(__dst))
  {
    goto LABEL_39;
  }

  v41 = BYTE8(__dst);
  LOBYTE(v52[1]) = BYTE8(__dst) & ~BYTE8(v50);
  if ((BYTE8(v50) | BYTE8(__dst)) != BYTE8(__dst))
  {
    goto LABEL_39;
  }

  v41 = BYTE9(__dst);
  BYTE1(v52[1]) = BYTE9(__dst) & ~BYTE9(v50);
  if ((BYTE9(v50) | BYTE9(__dst)) != BYTE9(__dst))
  {
    goto LABEL_39;
  }

  v41 = BYTE10(__dst);
  BYTE2(v52[1]) = BYTE10(__dst) & ~BYTE10(v50);
  if ((BYTE10(v50) | BYTE10(__dst)) != BYTE10(__dst))
  {
    goto LABEL_39;
  }

  v41 = BYTE11(__dst);
  BYTE3(v52[1]) = BYTE11(__dst) & ~BYTE11(v50);
  if ((BYTE11(v50) | BYTE11(__dst)) != BYTE11(__dst))
  {
    goto LABEL_39;
  }

  v41 = BYTE12(__dst);
  BYTE4(v52[1]) = BYTE12(__dst) & ~BYTE12(v50);
  if ((BYTE12(v50) | BYTE12(__dst)) != BYTE12(__dst))
  {
    goto LABEL_39;
  }

  v41 = BYTE13(__dst);
  BYTE5(v52[1]) = BYTE13(__dst) & ~BYTE13(v50);
  if ((BYTE13(v50) | BYTE13(__dst)) != BYTE13(__dst))
  {
    goto LABEL_39;
  }

  v41 = BYTE14(__dst);
  BYTE6(v52[1]) = BYTE14(__dst) & ~BYTE14(v50);
  if ((BYTE14(v50) | BYTE14(__dst)) != BYTE14(__dst))
  {
    goto LABEL_39;
  }

  v41 = HIBYTE(__dst);
  HIBYTE(v52[1]) = HIBYTE(__dst) & ~HIBYTE(v50);
  if ((HIBYTE(v50) | HIBYTE(__dst)) != HIBYTE(__dst))
  {
    goto LABEL_39;
  }

  v41 = v55;
  LOBYTE(v52[2]) = v55 & ~v51;
  if ((v51 | v55) != v55)
  {
    goto LABEL_39;
  }

  v41 = BYTE1(v55);
  BYTE1(v52[2]) = BYTE1(v55) & ~BYTE1(v51);
  if ((BYTE1(v51) | BYTE1(v55)) != BYTE1(v55))
  {
    goto LABEL_39;
  }

  v41 = BYTE2(v55);
  BYTE2(v52[2]) = BYTE2(v55) & ~BYTE2(v51);
  if ((BYTE2(v51) | BYTE2(v55)) != BYTE2(v55))
  {
    goto LABEL_39;
  }

  v41 = BYTE3(v55);
  BYTE3(v52[2]) = BYTE3(v55) & ~BYTE3(v51);
  if ((BYTE3(v51) | BYTE3(v55)) != BYTE3(v55))
  {
    goto LABEL_39;
  }

  v41 = BYTE4(v55);
  BYTE4(v52[2]) = BYTE4(v55) & ~BYTE4(v51);
  if ((BYTE4(v51) | BYTE4(v55)) != BYTE4(v55))
  {
    goto LABEL_39;
  }

  v41 = BYTE5(v55);
  BYTE5(v52[2]) = BYTE5(v55) & ~BYTE5(v51);
  if ((BYTE5(v51) | BYTE5(v55)) != BYTE5(v55))
  {
    goto LABEL_39;
  }

  v41 = BYTE6(v55);
  BYTE6(v52[2]) = BYTE6(v55) & ~BYTE6(v51);
  if ((BYTE6(v51) | BYTE6(v55)) != BYTE6(v55))
  {
    goto LABEL_39;
  }

  v41 = BYTE7(v55);
  HIBYTE(v52[2]) = BYTE7(v55) & ~BYTE7(v51);
  if ((BYTE7(v51) | BYTE7(v55)) != BYTE7(v55))
  {
    goto LABEL_39;
  }

  v41 = BYTE8(v55);
  LOBYTE(v52[3]) = BYTE8(v55) & ~BYTE8(v51);
  if ((BYTE8(v51) | BYTE8(v55)) != BYTE8(v55))
  {
    goto LABEL_39;
  }

  v41 = BYTE9(v55);
  BYTE1(v52[3]) = BYTE9(v55) & ~BYTE9(v51);
  if ((BYTE9(v51) | BYTE9(v55)) != BYTE9(v55))
  {
    goto LABEL_39;
  }

  v41 = BYTE10(v55);
  BYTE2(v52[3]) = BYTE10(v55) & ~BYTE10(v51);
  if ((BYTE10(v51) | BYTE10(v55)) != BYTE10(v55))
  {
    goto LABEL_39;
  }

  v41 = BYTE11(v55);
  BYTE3(v52[3]) = BYTE11(v55) & ~BYTE11(v51);
  if ((BYTE11(v51) | BYTE11(v55)) != BYTE11(v55))
  {
    goto LABEL_39;
  }

  v41 = BYTE12(v55);
  BYTE4(v52[3]) = BYTE12(v55) & ~BYTE12(v51);
  if ((BYTE12(v51) | BYTE12(v55)) != BYTE12(v55) || (v41 = BYTE13(v55), BYTE5(v52[3]) = BYTE13(v55) & ~BYTE13(v51), (BYTE13(v51) | BYTE13(v55)) != BYTE13(v55)) || (v41 = BYTE14(v55), BYTE6(v52[3]) = BYTE14(v55) & ~BYTE14(v51), (BYTE14(v51) | BYTE14(v55)) != BYTE14(v55)) || (v41 = HIBYTE(v55), HIBYTE(v52[3]) = HIBYTE(v55) & ~HIBYTE(v51), (HIBYTE(v51) | HIBYTE(v55)) != HIBYTE(v55)))
  {
LABEL_39:
    _ETLDebugPrint("ETLFusingProgramQfpromFuse", "Mismatch, expected to write %02x, final value on device will be %02x\n", v35, v36, v37, v38, v39, v40, v41);
    goto LABEL_40;
  }

  memset(__b, 170, sizeof(__b));
  TelephonyUtilLogBinaryToBuffer();
  _ETLDebugPrint("ETLFusingShowQfpromFuse", "%s fuse %u, value: \t%s\n", v42, v43, v44, v45, v46, v47, "Final write value for Programming");
  result = ETLFusingPerformQfpromFusingOperation(a1, a2, 1, a3, v52, v53, a6);
LABEL_41:
  v49 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ETLFusingPerformQfpromFusingOperation(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, _OWORD *a6, uint64_t a7)
{
  v48 = *MEMORY[0x29EDCA608];
  v44 = 0u;
  v45 = 0u;
  v46 = 0;
  memset(v42, 0, sizeof(v42));
  v43 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLFusingPerformQfpromFusingOperation", "Faild to create uplink frame\n", v11, v12, v13, v14, v15, v16, v41);
    goto LABEL_7;
  }

  if (a3)
  {
    if (a3 == 2)
    {
      if (ETLFusingCreateQfpromFusingCommand())
      {
        goto LABEL_12;
      }
    }

    else if (ETLFusingCreateQfpromFusingCommand())
    {
      goto LABEL_12;
    }

LABEL_7:
    v17 = 0;
    goto LABEL_8;
  }

  memset(v47, 0, sizeof(v47));
  if (!ETLFusingCreateQfpromFusingCommand())
  {
    goto LABEL_7;
  }

LABEL_12:
  v17 = malloc((2 * DWORD2(v44) + 32));
  if (!v17)
  {
    goto LABEL_8;
  }

  v20 = HDLCFrameEncode();
  if (!v20)
  {
    goto LABEL_31;
  }

  v21 = v20;
  LODWORD(v47[0]) = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v17, v20);
  }

  if (!*a1)
  {
LABEL_31:
    free(v17);
    goto LABEL_7;
  }

  v22 = (*a1)(a1, v17, v21, v47, 1, a7, 0);
  v23 = v47[0];
  free(v17);
  v17 = 0;
  if (v22 && v23 == v21)
  {
    LOBYTE(v47[0]) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    v17 = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, v42, &_ETLResponseRingBuffer, v47, a7))
    {
      if (LOBYTE(v47[0]) == 75)
      {
        if (a3 == 2)
        {
          v30 = DWORD2(v42[0]);
          v31 = (DWORD2(v42[0]) - 4);
          if (DWORD2(v42[0]) >= 4)
          {
            v32 = *&v42[0];
            v37 = **&v42[0];
            v34 = **&v42[0];
            if (v34 == 75)
            {
              v35 = BYTE1(v37);
              if (BYTE1(v37) == 253)
              {
                v36 = HIWORD(v37);
                if (v36 == 11)
                {
                  if (v31 > 0x21)
                  {
                    goto LABEL_37;
                  }

                  goto LABEL_50;
                }

LABEL_49:
                _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v24, v25, v26, v27, v28, v29, v36);
                goto LABEL_7;
              }

LABEL_48:
              _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", v24, v25, v26, v27, v28, v29, v35);
              goto LABEL_7;
            }

LABEL_47:
            _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", v24, v25, v26, v27, v28, v29, v34);
            goto LABEL_7;
          }
        }

        else if (a3 == 1)
        {
          v30 = DWORD2(v42[0]);
          v31 = (DWORD2(v42[0]) - 4);
          if (DWORD2(v42[0]) >= 4)
          {
            v32 = *&v42[0];
            v33 = **&v42[0];
            v34 = **&v42[0];
            if (v34 == 75)
            {
              v35 = BYTE1(v33);
              if (BYTE1(v33) == 253)
              {
                v36 = HIWORD(v33);
                if (v36 == 11)
                {
                  if (v31 > 0x21)
                  {
LABEL_37:
                    v38 = *(v32 + 4);
                    if (v38)
                    {
LABEL_38:
                      _ETLDebugPrint("ETLFusingParseQfpromFusingResponse", "Status returned was %u, expected %u\n", v24, v25, v26, v27, v28, v29, v38);
                      goto LABEL_7;
                    }

LABEL_45:
                    v17 = 1;
                    goto LABEL_8;
                  }

LABEL_50:
                  _ETLDebugPrint("ETLFusingParseQfpromFusingResponse", "Payload length %u less than needed %u\n", v24, v25, v26, v27, v28, v29, v31);
                  goto LABEL_7;
                }

                goto LABEL_49;
              }

              goto LABEL_48;
            }

            goto LABEL_47;
          }
        }

        else
        {
          v30 = DWORD2(v42[0]);
          v31 = (DWORD2(v42[0]) - 4);
          if (DWORD2(v42[0]) >= 4)
          {
            v39 = **&v42[0];
            v34 = **&v42[0];
            if (v34 == 75)
            {
              v35 = BYTE1(v39);
              if (BYTE1(v39) == 253)
              {
                v36 = HIWORD(v39);
                if (v36 == 11)
                {
                  if (v31 > 0x21)
                  {
                    v38 = *(*&v42[0] + 4);
                    v40 = *(*&v42[0] + 24);
                    *a6 = *(*&v42[0] + 8);
                    a6[1] = v40;
                    if (v38)
                    {
                      goto LABEL_38;
                    }

                    goto LABEL_45;
                  }

                  goto LABEL_50;
                }

                goto LABEL_49;
              }

              goto LABEL_48;
            }

            goto LABEL_47;
          }
        }

        _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", v24, v25, v26, v27, v28, v29, v30);
        goto LABEL_7;
      }
    }
  }

LABEL_8:
  HDLCFrameFree();
  HDLCFrameFree();
  v18 = *MEMORY[0x29EDCA608];
  return v17;
}

uint64_t ETLFusingReadQfpromFuse(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27[133] = *MEMORY[0x29EDCA608];
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v27 = v8;
  *&v27[2] = v8;
  *a5 = 0;
  if (a4 > 0x1F)
  {
    v12 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4);
    v25 = v13;
    v26 = v13;
    result = ETLFusingPerformQfpromFusingOperation(v12, v14, 0, 0, v27, &v25, v15);
    if (result)
    {
      *a5 = 32;
      v16 = v26;
      *a3 = v25;
      a3[1] = v16;
      v17 = result;
      memset(&v27[5], 170, 0x400uLL);
      TelephonyUtilLogBinaryToBuffer();
      _ETLDebugPrint("ETLFusingShowQfpromFuse", "%s fuse %u, value: \t%s\n", v18, v19, v20, v21, v22, v23, "Read back");
      result = v17;
    }
  }

  else
  {
    *(&v26 + 1) = 32;
    _ETLDebugPrint("ETLFusingReadQfpromFuse", "Data capacity %u less than required %u\n", a3, a4, a5, a6, a7, a8, a4);
    result = 0;
  }

  v24 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ETLFusingVerifyQfpromFuse(void *a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = *MEMORY[0x29EDCA608];
  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  __dst = v13;
  v25 = v13;
  if (a5 > 0x1F)
  {
    v15 = a4[1];
    __dst = *a4;
    v25 = v15;
  }

  else
  {
    v14 = a5;
    _ETLDebugPrint("ETLFusingVerifyQfpromFuse", "Data length needed %u  provided %u - padding the rest with zeroes\n", a3, a4, a5, a6, a7, a8, 32);
    memcpy(&__dst, a4, v14);
    bzero(&__dst + v14, 32 - v14);
  }

  memset(__b, 170, sizeof(__b));
  TelephonyUtilLogBinaryToBuffer();
  _ETLDebugPrint("ETLFusingShowQfpromFuse", "%s fuse %u, value: \t%s\n", v16, v17, v18, v19, v20, v21, "Verifying");
  result = ETLFusingPerformQfpromFusingOperation(a1, a2, 2, a3, &__dst, __b, a6);
  v23 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ETLProvisionAddSecurityCommandHeader()
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

uint64_t ETLProvisionParseSecurityResponseHeader(uint64_t a1, int a2, _WORD *a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = ETLMaverickParseFACTORYResponseHeader(a1, a4, 12, a4, a5, a6, a7, a8);
  if (result)
  {
    v19 = *a4;
    if ((*(a1 + 8) - v19) <= 3)
    {
      v21 = (*(a1 + 8) - v19);
      _ETLDebugPrint("ETLProvisionParseSecurityResponseHeader", "Need %u bytes, but only have %u\n", v13, v14, v15, v16, v17, v18, 4);
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

      _ETLDebugPrint("ETLProvisionParseSecurityResponseHeader", "Received code 0x%x mismatches expected 0x%x\n", v13, v14, v15, v16, v17, v18, *v20);
    }

    return 0;
  }

  return result;
}

const char *ETLProvisionGetStateAsString(unsigned int a1)
{
  if (a1 > 4)
  {
    return "???";
  }

  else
  {
    return off_29EE6DF10[a1];
  }
}

uint64_t ETLProvisionParseStatus(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _ETLDebugPrint("ETLProvisionParseStatus", "Provisioning manifest status %u\n", a3, a4, a5, a6, a7, a8, *(a1 + 8));
  v10 = *(a1 + 8);
  v11 = v10 - 28;
  if (v10 == 6)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  if (*(a1 + 8))
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v11 < 2)
  {
    v13 = 3;
  }

  *(a2 + 4) = v13;
  return 1;
}

uint64_t ETLProvisionCreateStartProvisionCommand(uint64_t a1, uint64_t *a2)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v4, v5, v6, v7, v8, v9, FreeSpace);
    return 0;
  }

  if ((HDLCFrameInject() & 1) == 0)
  {
    v17 = "ETLSubsysAddHeaderInternal";
    v18 = "Failed to inject\n";
LABEL_11:
    _ETLDebugPrint(v17, v18, v10, v11, v12, v13, v14, v15, v23);
    return 0;
  }

  if (HDLCFrameGetFreeSpace() <= 1)
  {
    v23 = 2;
    goto LABEL_10;
  }

  if (!HDLCFrameInjectUnsignedShort())
  {
    return 0;
  }

  v16 = (*(a2 + 2) + 2);
  if (HDLCFrameGetFreeSpace() < v16)
  {
    v23 = v16;
LABEL_10:
    v17 = "ETLRequireFreeSpace";
    v18 = "Need %u bytes free space, but only have %u\n";
    goto LABEL_11;
  }

  v20 = *(a2 + 4);
  if (!HDLCFrameInjectUnsignedShort())
  {
    return 0;
  }

  v21 = *a2;
  v22 = *(a2 + 2);

  return HDLCFrameInject();
}

uint64_t ETLProvisionCreateStartProvisionCommand64Bit(uint64_t a1, uint64_t *a2)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v4, v5, v6, v7, v8, v9, FreeSpace);
    return 0;
  }

  if ((HDLCFrameInject() & 1) == 0)
  {
    v17 = "ETLSubsysAddHeaderInternal";
    v18 = "Failed to inject\n";
LABEL_11:
    _ETLDebugPrint(v17, v18, v10, v11, v12, v13, v14, v15, v23);
    return 0;
  }

  if (HDLCFrameGetFreeSpace() <= 1)
  {
    v23 = 2;
    goto LABEL_10;
  }

  if (!HDLCFrameInjectUnsignedShort())
  {
    return 0;
  }

  v16 = (*(a2 + 2) + 2);
  if (HDLCFrameGetFreeSpace() < v16)
  {
    v23 = v16;
LABEL_10:
    v17 = "ETLRequireFreeSpace";
    v18 = "Need %u bytes free space, but only have %u\n";
    goto LABEL_11;
  }

  v20 = *(a2 + 4);
  if (!HDLCFrameInjectUnsignedShort())
  {
    return 0;
  }

  v21 = *a2;
  v22 = *(a2 + 2);

  return HDLCFrameInject();
}

uint64_t ETLProvisionParseStartProvisionResponse(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[2];
  if (v8 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a3, a4, a5, a6, a7, a8, a1[2]);
    return 0;
  }

  v9 = *a1;
  v10 = **a1;
  if (v10 != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, **a1);
    return 0;
  }

  if (BYTE1(v10) != 254)
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
    _ETLDebugPrint("ETLProvisionParseSecurityResponseHeader", "Need %u bytes, but only have %u\n", a3, a4, a5, a6, a7, a8, 4);
    return 0;
  }

  v12 = *(v9 + 2);
  if (*(v9 + 2))
  {
    _ETLDebugPrint("ETLProvisionParseSecurityResponseHeader", "Received code 0x%x mismatches expected 0x%x\n", a3, a4, a5, a6, a7, a8, *(v9 + 2));
    return 0;
  }

  if (v8 - 28 > 0xFFFFFFEB || *(v9 + 3))
  {
    return v12;
  }

  v14 = v9[6];
  *a2 = *(v9 + 2);
  *(a2 + 16) = v14;
  if (v14 > 0x100 || a1[2] - 28 < v14)
  {
    return 0;
  }

  memcpy((a2 + 20), (*a1 + 28), v14);
  return 1;
}

uint64_t ETLProvisionParseStartProvisionResponse64Bit(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[2];
  if (v8 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a3, a4, a5, a6, a7, a8, a1[2]);
    return 0;
  }

  v9 = *a1;
  v10 = **a1;
  if (v10 != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, **a1);
    return 0;
  }

  if (BYTE1(v10) != 254)
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
    _ETLDebugPrint("ETLProvisionParseSecurityResponseHeader", "Need %u bytes, but only have %u\n", a3, a4, a5, a6, a7, a8, 4);
    return 0;
  }

  if (*(v9 + 2) != 36)
  {
    _ETLDebugPrint("ETLProvisionParseSecurityResponseHeader", "Received code 0x%x mismatches expected 0x%x\n", a3, a4, a5, a6, a7, a8, *(v9 + 2));
    return 0;
  }

  if (v8 - 32 > 0xFFFFFFE7 || *(v9 + 3))
  {
    return 0;
  }

  v12 = *(v9 + 2);
  v13 = *(v9 + 3);
  *(a2 + 16) = v13;
  *a2 = v12;
  if (HIDWORD(v13) > 0x100 || a1[2] - 32 < HIDWORD(v13))
  {
    return 0;
  }

  memcpy((a2 + 24), (*a1 + 32), HIDWORD(v13));
  return 1;
}

uint64_t ETLProvisionCreateFinishProvisionCommand(uint64_t a1, uint64_t *a2)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v4, v5, v6, v7, v8, v9, FreeSpace);
    return 0;
  }

  if ((HDLCFrameInject() & 1) == 0)
  {
    v17 = "ETLSubsysAddHeaderInternal";
    v18 = "Failed to inject\n";
LABEL_11:
    _ETLDebugPrint(v17, v18, v10, v11, v12, v13, v14, v15, v23);
    return 0;
  }

  if (HDLCFrameGetFreeSpace() <= 1)
  {
    v23 = 2;
    goto LABEL_10;
  }

  if (!HDLCFrameInjectUnsignedShort())
  {
    return 0;
  }

  v16 = (*(a2 + 2) + 2);
  if (HDLCFrameGetFreeSpace() < v16)
  {
    v23 = v16;
LABEL_10:
    v17 = "ETLRequireFreeSpace";
    v18 = "Need %u bytes free space, but only have %u\n";
    goto LABEL_11;
  }

  v20 = *(a2 + 4);
  if (!HDLCFrameInjectUnsignedShort())
  {
    return 0;
  }

  v21 = *a2;
  v22 = *(a2 + 2);

  return HDLCFrameInject();
}

uint64_t ETLProvisionParseFinishProvisionResponse(int **a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

  if (BYTE1(v10) != 254)
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
    _ETLDebugPrint("ETLProvisionParseSecurityResponseHeader", "Need %u bytes, but only have %u\n", a3, a4, a5, a6, a7, a8, 4);
    return 0;
  }

  if (*(v9 + 2) != 1)
  {
    _ETLDebugPrint("ETLProvisionParseSecurityResponseHeader", "Received code 0x%x mismatches expected 0x%x\n", a3, a4, a5, a6, a7, a8, *(v9 + 2));
    return 0;
  }

  result = 0;
  if (v8 - 15 <= 0xFFFFFFF8 && !*(v9 + 3))
  {
    v13 = v9[2];
    *(a2 + 3) = *(v9 + 11);
    *a2 = v13;
    return 1;
  }

  return result;
}

uint64_t ETLProvisionGetStatus(void *a1, uint64_t a2, uint64_t a3)
{
  memset(v17, 0, sizeof(v17));
  *a2 = 0;
  if (ETLMaverickGetManifestStatus(a1, v17, a3))
  {
    _ETLDebugPrint("ETLProvisionParseStatus", "Provisioning manifest status %u\n", v4, v5, v6, v7, v8, v9, WORD4(v17[0]));
    v10 = WORD4(v17[0]) - 28;
    if (WORD4(v17[0]) == 6)
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    if (WORD4(v17[0]))
    {
      v12 = WORD4(v17[0]) != 6;
    }

    else
    {
      v12 = 0;
    }

    if (WORD4(v17[0]))
    {
      v13 = v11;
    }

    else
    {
      v13 = 0;
    }

    v14 = v10 >= 2;
    v15 = v10 >= 2 && v12;
    if (!v14)
    {
      v13 = 3;
    }

    *(a2 + 4) = v13;
    *a2 = v15;
    return 1;
  }

  else
  {
    *(a2 + 4) = 4;
    return 1;
  }
}

uint64_t ETLProvisionStart(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memset(v27, 0, sizeof(v27));
  v28 = 0;
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  v8 = (2 * *(a2 + 8));
  if (!HDLCFrameCreateUplink())
  {
    goto LABEL_19;
  }

  if (!ETLProvisionCreateStartProvisionCommand(v27, a2))
  {
    goto LABEL_19;
  }

  v9 = malloc((2 * DWORD2(v27[0]) + 32));
  if (!v9)
  {
    goto LABEL_19;
  }

  v10 = v9;
  v11 = HDLCFrameEncode();
  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = v11;
  v29 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v10, v11);
  }

  if (!*a1)
  {
LABEL_18:
    free(v10);
LABEL_19:
    started = 0;
    goto LABEL_20;
  }

  v13 = (*a1)(a1, v10, v12, &v29, 1, a4, 0);
  v14 = v29;
  free(v10);
  if (v13)
  {
    v15 = v14 == v12;
  }

  else
  {
    v15 = 0;
  }

  if (!v15)
  {
    goto LABEL_19;
  }

  LOBYTE(v29) = 75;
  if (!_ETLResponseRingBuffer)
  {
    TelephonyUtilRingBufferInitialize();
  }

  v16 = ETLFindMatchingResponseUsingBuffer(a1, v25, &_ETLResponseRingBuffer, &v29, a4);
  started = 0;
  if (v16 && v29 == 75)
  {
    started = ETLProvisionParseStartProvisionResponse(v25, a3, v17, v18, v19, v20, v21, v22);
  }

LABEL_20:
  HDLCFrameFree();
  HDLCFrameFree();
  return started;
}

uint64_t ETLProvisionStart64Bit(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memset(v34, 0, sizeof(v34));
  v35 = 0;
  memset(v32, 0, sizeof(v32));
  v33 = 0;
  v8 = (2 * *(a2 + 8));
  if (!HDLCFrameCreateUplink())
  {
    goto LABEL_19;
  }

  if (!ETLProvisionCreateStartProvisionCommand64Bit(v34, a2))
  {
    goto LABEL_19;
  }

  v9 = malloc((2 * DWORD2(v34[0]) + 32));
  if (!v9)
  {
    goto LABEL_19;
  }

  v10 = v9;
  v11 = HDLCFrameEncode();
  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = v11;
  v36 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v10, v11);
  }

  if (!*a1)
  {
LABEL_18:
    free(v10);
LABEL_19:
    started = 0;
    goto LABEL_20;
  }

  v13 = (*a1)(a1, v10, v12, &v36, 1, a4, 0);
  v14 = v36;
  free(v10);
  if (v13)
  {
    v15 = v14 == v12;
  }

  else
  {
    v15 = 0;
  }

  if (!v15)
  {
    goto LABEL_19;
  }

  LOBYTE(v36) = 75;
  if (!_ETLResponseRingBuffer)
  {
    TelephonyUtilRingBufferInitialize();
  }

  v16 = ETLFindMatchingResponseUsingBuffer(a1, v32, &_ETLResponseRingBuffer, &v36, a4);
  started = 0;
  if (v16 && v36 == 75)
  {
    started = ETLProvisionParseStartProvisionResponse64Bit(v32, a3, v17, v18, v19, v20, v21, v22);
  }

LABEL_20:
  HDLCFrameFree();
  HDLCFrameFree();
  v30 = "failed";
  if (started)
  {
    v30 = "succeeded";
  }

  _ETLDebugPrint("ETLProvisionStart64Bit", "ETLProvisionStart64Bit: %s", v24, v25, v26, v27, v28, v29, v30);
  return started;
}

uint64_t ETLProvisionFinish(void *a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  memset(v31, 0, sizeof(v31));
  v32 = 0;
  memset(v29, 0, sizeof(v29));
  v30 = 0;
  v8 = (2 * *(a2 + 8));
  if (!HDLCFrameCreateUplink())
  {
    goto LABEL_27;
  }

  if (!ETLProvisionCreateFinishProvisionCommand(v31, a2))
  {
    goto LABEL_27;
  }

  v9 = malloc((2 * DWORD2(v31[0]) + 32));
  if (!v9)
  {
    goto LABEL_27;
  }

  v10 = v9;
  v11 = HDLCFrameEncode();
  if (!v11)
  {
    goto LABEL_26;
  }

  v12 = v11;
  v33 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v10, v11);
  }

  if (!*a1)
  {
LABEL_26:
    free(v10);
    goto LABEL_27;
  }

  v13 = (*a1)(a1, v10, v12, &v33, 1, a4, 0);
  v14 = v33;
  free(v10);
  if (v13)
  {
    v15 = v14 == v12;
  }

  else
  {
    v15 = 0;
  }

  if (!v15)
  {
    goto LABEL_27;
  }

  v16 = 3 * a4;
  LOBYTE(v33) = 75;
  if (!_ETLResponseRingBuffer)
  {
    TelephonyUtilRingBufferInitialize();
  }

  v17 = ETLFindMatchingResponseUsingBuffer(a1, v29, &_ETLResponseRingBuffer, &v33, v16);
  v24 = 0;
  if (v17 && v33 == 75)
  {
    if (DWORD2(v29[0]) < 4)
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", v18, v19, v20, v21, v22, v23, DWORD2(v29[0]));
    }

    else
    {
      v25 = **&v29[0];
      if (**&v29[0] == 75)
      {
        if (BYTE1(v25) == 254)
        {
          v26 = HIWORD(v25);
          if (v26 == 12)
          {
            if ((DWORD2(v29[0]) - 4) <= 3)
            {
              _ETLDebugPrint("ETLProvisionParseSecurityResponseHeader", "Need %u bytes, but only have %u\n", v18, v19, v20, v21, v22, v23, 4);
            }

            else
            {
              if (*(*&v29[0] + 4) == 1)
              {
                v24 = 0;
                if ((DWORD2(v29[0]) - 15) <= 0xFFFFFFF8 && !*(*&v29[0] + 6))
                {
                  v27 = *(*&v29[0] + 8);
                  *(a3 + 3) = *(*&v29[0] + 11);
                  *a3 = v27;
                  v24 = 1;
                }

                goto LABEL_28;
              }

              _ETLDebugPrint("ETLProvisionParseSecurityResponseHeader", "Received code 0x%x mismatches expected 0x%x\n", v18, v19, v20, v21, v22, v23, *(*&v29[0] + 4));
            }
          }

          else
          {
            _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v18, v19, v20, v21, v22, v23, v26);
          }
        }

        else
        {
          _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", v18, v19, v20, v21, v22, v23, BYTE1(v25));
        }
      }

      else
      {
        _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", v18, v19, v20, v21, v22, v23, **&v29[0]);
      }
    }

LABEL_27:
    v24 = 0;
  }

LABEL_28:
  HDLCFrameFree();
  HDLCFrameFree();
  return v24;
}

uint64_t ETLEFS2PrintError(uint64_t __errnum)
{
  v1 = __errnum;
  v25 = *MEMORY[0x29EDCA608];
  v23 = 0u;
  memset(v24, 0, sizeof(v24));
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  *__dst = 0u;
  if (__errnum > 302)
  {
    if (__errnum <= 0x8000)
    {
      switch(__errnum)
      {
        case 0x12F:
          v2 = "Not an EFS2 item file.";
          goto LABEL_30;
        case 0x130:
          v2 = "Rollback failed while backing orig file.";
          goto LABEL_30;
        case 0x8000:
          v2 = "End of file. Internal error.";
          goto LABEL_30;
      }
    }

    else if (__errnum > 65534)
    {
      if (__errnum == 0xFFFF)
      {
        v2 = "Internal Error";
        goto LABEL_30;
      }

      if (__errnum == 0x10000)
      {
        v2 = "File has no number to EFS file mapping";
        goto LABEL_30;
      }
    }

    else
    {
      if (__errnum == 32769)
      {
        v2 = "Untranslated SFAT error code.";
        goto LABEL_30;
      }

      if (__errnum == 32770)
      {
        v2 = "Untranslated HFAT error code.";
LABEL_30:
        strncpy(__dst, v2, 0xFEuLL);
LABEL_31:
        fprintf(*MEMORY[0x29EDCA610], "Error: [%d] ETL EFS - %s\n", v1, __dst);
        __errnum = _ETLDebugPrint("ETLEFS2PrintError", "Error: [%d] ETL EFS - %s\n", v3, v4, v5, v6, v7, v8, v1);
        goto LABEL_32;
      }
    }

    goto LABEL_33;
  }

  if (__errnum > 121)
  {
    switch(__errnum)
    {
      case 0x7A:
        v2 = "Writing beyong quota.";
        goto LABEL_30;
      case 0x12D:
        v2 = "No media present.";
        goto LABEL_30;
      case 0x12E:
        v2 = "Bad formatted media.";
        goto LABEL_30;
    }

    goto LABEL_33;
  }

  if (__errnum)
  {
    if (__errnum == 34)
    {
      v2 = "Parameter out of range.";
      goto LABEL_30;
    }

    if (__errnum == 116)
    {
      v2 = "Stale remote file handle.";
      goto LABEL_30;
    }

LABEL_33:
    strerror_r(__errnum, __dst, 0xFEuLL);
    goto LABEL_31;
  }

LABEL_32:
  v9 = *MEMORY[0x29EDCA608];
  return __errnum;
}

uint64_t ETLEFS2CreatePutCommand(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, unsigned int a7)
{
  if (a7 > 0x7C00)
  {
    return 0;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v10, v11, v12, v13, v14, v15, FreeSpace);
    return 0;
  }

  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v16, v17, v18, v19, v20, v21, v30);
    return 0;
  }

  v22 = a7 + strlen(a5) + 1 + 6;
  if (HDLCFrameGetFreeSpace() < v22)
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", v23, v24, v25, v26, v27, v28, v22);
    return 0;
  }

  if (!HDLCFrameInjectUnsignedInt() || !HDLCFrameInjectUnsignedInt() || !HDLCFrameInjectUnsignedShort() || !HDLCFrameInject())
  {
    return 0;
  }

  return HDLCFrameInject();
}

BOOL ETLEFS2ParsePutResponse(int **a1, int a2, _WORD *a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a4 = 0xFFFF;
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

  v12 = HIWORD(v11);
  v13 = BYTE1(v11);
  if (a2)
  {
    v14 = 62;
  }

  else
  {
    v14 = 19;
  }

  if (v13 != v14)
  {
    _ETLDebugPrint("ETLEFS2ParseHeader", "Subsys mismatch, expected 0x%x, got 0x%x\n", a3, a4, a5, a6, a7, a8, v14);
    goto LABEL_13;
  }

  if (v12 != 38)
  {
LABEL_13:
    _ETLDebugPrint("ETLEFS2ParseHeader", "Command code mismatch, expected 0x%x, got 0x%x\n", a3, a4, a5, a6, a7, a8, 38);
    return 0;
  }

  if (v9 <= 5)
  {
    _ETLDebugPrint("ETLEFS2ParsePutResponse", "Needed %u bytes, available %u\n", a3, a4, a5, a6, a7, a8, 6);
    return 0;
  }

  else
  {
    *a3 = *(v10 + 2);
    v15 = *(v10 + 6);
    *a4 = v15;
    return v15 == 0;
  }
}

uint64_t ETLEFS2CreateGetCommand(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, unsigned int a6)
{
  if (a6 >= 0x7C00)
  {
    v7 = 31744;
  }

  else
  {
    v7 = a6;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v9, v10, v11, v12, v13, v14, FreeSpace);
    return 0;
  }

  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v15, v16, v17, v18, v19, v20, v29);
    return 0;
  }

  v21 = v7 + strlen(a4) + 1 + 6;
  if (HDLCFrameGetFreeSpace() < v21)
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", v22, v23, v24, v25, v26, v27, v21);
    return 0;
  }

  if (!HDLCFrameInjectUnsignedInt() || !HDLCFrameInjectUnsignedInt() || !HDLCFrameInjectUnsignedShort())
  {
    return 0;
  }

  return HDLCFrameInject();
}

uint64_t ETLEFS2CreateStatCommand(uint64_t a1, uint64_t a2, const char *a3)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v5, v6, v7, v8, v9, v10, FreeSpace);
    return 0;
  }

  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v11, v12, v13, v14, v15, v16, v25);
    return 0;
  }

  v17 = strlen(a3) + 1;
  if (HDLCFrameGetFreeSpace() < v17)
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", v18, v19, v20, v21, v22, v23, v17);
    return 0;
  }

  return HDLCFrameInject();
}

uint64_t ETLEFS2ParseGetResponse(int **a1, int a2, void *__dst, uint64_t a4, _WORD *a5, _DWORD *a6, _DWORD *a7, uint64_t a8)
{
  *a6 = 0xFFFF;
  v8 = *(a1 + 2);
  if (v8 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", __dst, a4, a5, a6, a7, a8, *(a1 + 2));
    return 0;
  }

  v9 = *a1;
  v10 = **a1;
  if (v10 != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", __dst, a4, a5, a6, a7, a8, **a1);
    return 0;
  }

  v11 = HIWORD(v10);
  v12 = BYTE1(v10);
  if (a2)
  {
    v13 = 62;
  }

  else
  {
    v13 = 19;
  }

  if (v12 != v13)
  {
    _ETLDebugPrint("ETLEFS2ParseHeader", "Subsys mismatch, expected 0x%x, got 0x%x\n", __dst, a4, a5, a6, a7, a8, v13);
    goto LABEL_14;
  }

  if (v11 != 39)
  {
LABEL_14:
    _ETLDebugPrint("ETLEFS2ParseHeader", "Command code mismatch, expected 0x%x, got 0x%x\n", __dst, a4, a5, a6, a7, a8, 39);
    return 0;
  }

  if (v8 - 4 <= 9)
  {
    _ETLDebugPrint("ETLEFS2ParseGetResponse", "Needed %u bytes, available %u\n", __dst, a4, a5, a6, a7, a8, 10);
    return 0;
  }

  else
  {
    *a7 = v9[1];
    v14 = v9[2];
    *a6 = v14;
    *a5 = *(v9 + 6);
    if (v14)
    {
      return 0;
    }

    else
    {
      v16 = v8 - 14;
      if (v16 <= a4)
      {
        memcpy(__dst, v9 + 14, v16);
        return 1;
      }

      else
      {
        _ETLDebugPrint("ETLEFS2ParseGetResponse", "Capacity %u is not enough for response of size %u\n", __dst, a4, a5, a6, a7, a8, a4);
        return 0;
      }
    }
  }
}

uint64_t ETLEFS2ParseStatResponse(int **a1, int a2, _DWORD *a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a3 = 0xFFFF;
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

  v12 = HIWORD(v11);
  v13 = BYTE1(v11);
  if (a2)
  {
    v14 = 62;
  }

  else
  {
    v14 = 19;
  }

  if (v13 != v14)
  {
    _ETLDebugPrint("ETLEFS2ParseHeader", "Subsys mismatch, expected 0x%x, got 0x%x\n", a3, a4, a5, a6, a7, a8, v14);
    goto LABEL_14;
  }

  if (v12 != 15)
  {
LABEL_14:
    _ETLDebugPrint("ETLEFS2ParseHeader", "Command code mismatch, expected 0x%x, got 0x%x\n", a3, a4, a5, a6, a7, a8, 15);
    return 0;
  }

  if (v9 <= 0x1B)
  {
    _ETLDebugPrint("ETLEFS2ParseStatResponse", "Needed %u bytes, available %u\n", a3, a4, a5, a6, a7, a8, 28);
    return 0;
  }

  else
  {
    v15 = v10[1];
    *a3 = v15;
    if (v15)
    {
      return 0;
    }

    else
    {
      *a4 = v10[3];
      return 1;
    }
  }
}

uint64_t ETLEFS2SelectorFromString(const char *a1, _DWORD *a2)
{
  if (!strcmp(a1, "prim") || !strcmp(a1, "primary"))
  {
    *a2 = 0;
    return 1;
  }

  else if (!strcmp(a1, "alt") || !strcmp(a1, "alternate"))
  {
    *a2 = 1;
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t ETLEFS2CreateSyncNoWaitCommand(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || !a3)
  {
    _ETLDebugPrint("ETLEFS2CreateSyncNoWaitCommand", "invalid arguments:  frame = %p, path = %p\n", a3, a4, a5, a6, a7, a8, a1);
    return 0;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    v38 = FreeSpace;
    v16 = "Free space %u not enough for %zu\n";
  }

  else
  {
    if (HDLCFrameInject())
    {
      goto LABEL_9;
    }

    v16 = "Failed to inject\n";
  }

  _ETLDebugPrint("ETLSubsysAddHeaderInternal", v16, v10, v11, v12, v13, v14, v15, v38);
LABEL_9:
  v17 = strlen(a3) + 3;
  if (HDLCFrameGetFreeSpace() >= v17)
  {
    if (HDLCFrameInjectUnsignedShort())
    {
      if (HDLCFrameInject())
      {
        return 1;
      }

      v37 = "failed adding path to HDLC frame\n";
    }

    else
    {
      v37 = "failed adding sequenceNumber to HDLC frame\n";
    }

    _ETLDebugPrint("ETLEFS2CreateSyncNoWaitCommand", v37, v30, v31, v32, v33, v34, v35, v38);
  }

  else
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", v18, v19, v20, v21, v22, v23, v17);
    _ETLDebugPrint("ETLEFS2CreateSyncNoWaitCommand", "Needed %u bytes, but not enough free space\n", v24, v25, v26, v27, v28, v29, v17);
  }

  return 0;
}

uint64_t ETLEFS2ParseSyncNoWaitResponse(uint64_t a1, _WORD *a2, _DWORD *a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a4 = 0xFFFF;
  if (!a1 || !a2 || !a3)
  {
    _ETLDebugPrint("ETLEFS2ParseSyncNoWaitResponse", "invalid arguments:  frame = %p, sequenceNumber = %p, syncToken = %p, resposneErrno = %p\n", a3, a4, a5, a6, a7, a8, a1);
    return 0;
  }

  v8 = *(a1 + 8);
  v9 = v8 - 4;
  if (v8 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a3, a4, a5, a6, a7, a8, *(a1 + 8));
LABEL_23:
    _ETLDebugPrint("ETLEFS2ParseSyncNoWaitResponse", "failed parsing header\n", v16, v17, v18, v19, v20, v21, v22);
    return 0;
  }

  v10 = *a1;
  v11 = **a1;
  if (v11 != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, **a1);
    goto LABEL_23;
  }

  if (BYTE1(v11) != 19)
  {
    _ETLDebugPrint("ETLEFS2ParseHeader", "Subsys mismatch, expected 0x%x, got 0x%x\n", a3, a4, a5, a6, a7, a8, 19);
    goto LABEL_22;
  }

  if (HIWORD(v11) != 48)
  {
LABEL_22:
    _ETLDebugPrint("ETLEFS2ParseHeader", "Command code mismatch, expected 0x%x, got 0x%x\n", a3, a4, a5, a6, a7, a8, 48);
    goto LABEL_23;
  }

  if (v9 <= 9)
  {
    _ETLDebugPrint("ETLEFS2ParseSyncNoWaitResponse", "needed %u bytes, available %u\n", a3, a4, a5, a6, a7, a8, 10);
    return 0;
  }

  *a2 = *(v10 + 2);
  *a3 = *(v10 + 6);
  v12 = *(v10 + 10);
  *a4 = v12;
  if (v12)
  {
    v13 = v12 == 306;
  }

  else
  {
    v13 = 1;
  }

  result = v13;
  if (v12)
  {
    if (v12 != 306)
    {
      v15 = result;
      _ETLDebugPrint("ETLEFS2ParseSyncNoWaitResponse", "sync was not successful, errno %u\n", a3, a4, a5, a6, a7, a8, 0);
      return v15;
    }
  }

  return result;
}

uint64_t ETLEFS2SyncNoWait(void *a1, uint64_t a2, const char *a3, _DWORD *a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = 0;
  memset(v33, 0, sizeof(v33));
  v34 = 0;
  memset(v31, 0, sizeof(v31));
  v32 = 0;
  if (!a1 || !a3 || !a4 || !a5)
  {
    _ETLDebugPrint("ETLEFS2SyncNoWait", "invalid arguments:  transport = %p, path = %p, syncToken = %p, responseErrno = %p\n", a3, a4, a5, a6, a7, a8, a1);
LABEL_27:
    v26 = 0;
    goto LABEL_28;
  }

  *a5 = 0xFFFF;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    v27 = "Failed to create command frame\n";
LABEL_26:
    _ETLDebugPrint("ETLEFS2SyncNoWait", v27, v14, v15, v16, v17, v18, v19, v29);
    goto LABEL_27;
  }

  if ((ETLEFS2CreateSyncNoWaitCommand(v33, a2, a3, v15, v16, v17, v18, v19) & 1) == 0)
  {
    v27 = "failed to create EFS sync command\n";
    goto LABEL_26;
  }

  v20 = malloc((2 * DWORD2(v33[0]) + 32));
  if (!v20)
  {
LABEL_25:
    v27 = "failed to send EFS sync command\n";
    goto LABEL_26;
  }

  v21 = v20;
  v22 = HDLCFrameEncode();
  if (!v22)
  {
    goto LABEL_24;
  }

  v23 = v22;
  v35 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v21, v22);
  }

  if (!*a1)
  {
LABEL_24:
    free(v21);
    goto LABEL_25;
  }

  v24 = (*a1)(a1, v21, v23, &v35, 1, a6, 0);
  v25 = v35;
  free(v21);
  if (!v24 || v25 != v23)
  {
    goto LABEL_25;
  }

  LOBYTE(v35) = 75;
  if (!_ETLResponseRingBuffer)
  {
    TelephonyUtilRingBufferInitialize();
  }

  if (!ETLFindMatchingResponseUsingBuffer(a1, v31, &_ETLResponseRingBuffer, &v35, a6) || v35 != 75)
  {
    v27 = "failed to find EFS sync command response\n";
    goto LABEL_26;
  }

  if ((ETLEFS2ParseSyncNoWaitResponse(v31, &v30, a4, a5, v16, v17, v18, v19) & 1) == 0)
  {
    v27 = "failed parsing EFS sync response\n";
    goto LABEL_26;
  }

  if (v30 != a2)
  {
    _ETLDebugPrint("ETLEFS2SyncNoWait", "sequence number out of order, got %u, sent %u\n", v14, v15, v16, v17, v18, v19, v30);
    goto LABEL_27;
  }

  v26 = 1;
LABEL_28:
  HDLCFrameFree();
  HDLCFrameFree();
  return v26;
}

uint64_t ETLEFS2Put(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *__s, uint64_t a6, unsigned int a7, _DWORD *a8, unsigned int a9)
{
  memset(v46, 0, sizeof(v46));
  v47 = 0;
  memset(v44, 0, sizeof(v44));
  v45 = 0;
  *a8 = 0xFFFF;
  strlen(__s);
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLEFS2Put", "Failed to create command frame\n", v17, v18, v19, v20, v21, v22, v43);
    goto LABEL_22;
  }

  if (!ETLEFS2CreatePutCommand(v46, a2, a3, a4, __s, a6, a7))
  {
    goto LABEL_22;
  }

  v23 = malloc((2 * DWORD2(v46[0]) + 32));
  if (!v23)
  {
    goto LABEL_22;
  }

  v24 = v23;
  v25 = HDLCFrameEncode();
  if (!v25)
  {
    goto LABEL_24;
  }

  v26 = v25;
  v48 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v24, v25);
  }

  if (!*a1)
  {
LABEL_24:
    free(v24);
    goto LABEL_22;
  }

  v27 = (*a1)(a1, v24, v26, &v48, 1, a9, 0);
  v28 = v48;
  free(v24);
  if (v27)
  {
    v29 = v28 == v26;
  }

  else
  {
    v29 = 0;
  }

  if (!v29)
  {
    goto LABEL_22;
  }

  LOBYTE(v48) = 75;
  if (!_ETLResponseRingBuffer)
  {
    TelephonyUtilRingBufferInitialize();
  }

  v30 = ETLFindMatchingResponseUsingBuffer(a1, v44, &_ETLResponseRingBuffer, &v48, a9);
  v35 = 0;
  if (v30 && v48 == 75)
  {
    LOWORD(v48) = -21846;
    if (!ETLEFS2ParsePutResponse(v44, a2, &v48, a8, v31, v32, v33, v34))
    {
LABEL_22:
      v35 = 0;
      goto LABEL_23;
    }

    v35 = 1;
    if (v48 != a4 && a4 + 1 != v48)
    {
      _ETLDebugPrint("ETLEFS2Put", "Sequence number out of order, got %u, sent %u\n", v36, v37, v38, v39, v40, v41, v48);
      goto LABEL_22;
    }
  }

LABEL_23:
  HDLCFrameFree();
  HDLCFrameFree();
  return v35;
}

uint64_t ETLEFS2Get(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a2, uint64_t a3, char *__s, void *a5, unsigned int a6, _DWORD *a7, unsigned int *a8, unsigned int a9)
{
  v58 = 0;
  if ((ETLEFS2GetSize(a1, a2, __s, &v58, a7, a9) & 1) == 0)
  {
    _ETLDebugPrint("ETLEFS2Get", "Failed to get size of NV item. Error [%d]\n", v17, v18, v19, v20, v21, v22, *a7);
    return 0;
  }

  v23 = v58;
  if (!v58)
  {
    _ETLDebugPrint("ETLEFS2Get", "NV file size is ZERO\n", v17, v18, v19, v20, v21, v22, v49);
    return 0;
  }

  memset(v56, 0, sizeof(v56));
  v57 = 0;
  memset(v54, 0, sizeof(v54));
  v55 = 0;
  *a7 = 0xFFFF;
  strlen(__s);
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLEFS2Get", "Failed to create command frame\n", v24, v25, v26, v27, v28, v29, v49);
  }

  v30 = calloc(v23, 1uLL);
  if (v30)
  {
    __src = v30;
    if (ETLEFS2CreateGetCommand(v56, a2, a3, __s, v31, v23))
    {
      v52 = a5;
      v32 = malloc((2 * DWORD2(v56[0]) + 32));
      if (v32)
      {
        v33 = v32;
        v34 = HDLCFrameEncode();
        if (!v34)
        {
          goto LABEL_26;
        }

        v35 = v34;
        v59 = -1431655766;
        if ((_ETLDebugFlags & 2) != 0)
        {
          off_2A18A5818(&str_3, 0, v33, v34);
        }

        if (*a1)
        {
          v51 = v35;
          v36 = (*a1)(a1, v33, v35, &v59, 1, a9, 0);
          v50 = v59;
          free(v33);
          v37 = 0;
          if (!v36 || v50 != v51)
          {
            goto LABEL_28;
          }

          LOBYTE(v59) = 75;
          if (!_ETLResponseRingBuffer)
          {
            TelephonyUtilRingBufferInitialize();
          }

          v38 = ETLFindMatchingResponseUsingBuffer(a1, v54, &_ETLResponseRingBuffer, &v59, a9);
          v37 = 0;
          if (!v38 || v59 != 75)
          {
            goto LABEL_28;
          }

          LOWORD(v59) = -21846;
          if (ETLEFS2ParseGetResponse(v54, a2, __src, v23, &v59, a7, a8, v39))
          {
            if (v59 == a3 || a3 + 1 == v59)
            {
              if (*a8 >= a6)
              {
                v48 = a6;
              }

              else
              {
                v48 = *a8;
              }

              *a8 = v48;
              memcpy(v52, __src, v48);
              v37 = 1;
              goto LABEL_28;
            }

            _ETLDebugPrint("ETLEFS2Get", "Sequence number out of order, got %u, sent %u\n", v40, v41, v42, v43, v44, v45, v59);
          }
        }

        else
        {
LABEL_26:
          free(v33);
        }
      }
    }

    v37 = 0;
LABEL_28:
    v47 = v37;
    free(__src);
    goto LABEL_29;
  }

  v47 = 0;
LABEL_29:
  HDLCFrameFree();
  HDLCFrameFree();
  return v47;
}

uint64_t ETLEFS2GetSize(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), int a2, char *__s, _DWORD *a4, _DWORD *a5, uint64_t a6)
{
  v53 = 0u;
  v54 = 0u;
  v55 = 0;
  memset(v51, 0, sizeof(v51));
  v52 = 0;
  *a5 = 0xFFFF;
  strlen(__s);
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    v39 = "ETLEFS2GetSize";
    v40 = "Failed to create command frame\n";
LABEL_12:
    _ETLDebugPrint(v39, v40, v12, v13, v14, v15, v16, v17, v49);
    goto LABEL_13;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v19, v20, v21, v22, v23, v24, FreeSpace);
    goto LABEL_13;
  }

  LOBYTE(v56) = 75;
  if (a2)
  {
    v25 = 62;
  }

  else
  {
    v25 = 19;
  }

  BYTE1(v56) = v25;
  HIWORD(v56) = 15;
  if ((HDLCFrameInject() & 1) == 0)
  {
    v39 = "ETLSubsysAddHeaderInternal";
    v40 = "Failed to inject\n";
    goto LABEL_12;
  }

  v26 = strlen(__s) + 1;
  if (HDLCFrameGetFreeSpace() >= v26)
  {
    if (HDLCFrameInject())
    {
      v43 = malloc((2 * DWORD2(v53) + 32));
      if (v43)
      {
        v44 = v43;
        v45 = HDLCFrameEncode();
        if (!v45)
        {
          goto LABEL_29;
        }

        v46 = v45;
        v56 = -1431655766;
        if ((_ETLDebugFlags & 2) != 0)
        {
          off_2A18A5818(&str_3, 0, v44, v45);
        }

        if (*a1)
        {
          v47 = (*a1)(a1, v44, v46, &v56, 1, a6, 0);
          v48 = v56;
          free(v44);
          if (v47 && v48 == v46)
          {
            LOBYTE(v56) = 75;
            if (!_ETLResponseRingBuffer)
            {
              TelephonyUtilRingBufferInitialize();
            }

            if (ETLFindMatchingResponseUsingBuffer(a1, v51, &_ETLResponseRingBuffer, &v56, a6) && v56 == 75 && ETLEFS2ParseStatResponse(v51, a2, a5, a4, v35, v36, v37, v38))
            {
              v50 = *a4;
              _ETLDebugPrint("ETLEFS2GetSize", "NV item [%s] is of size [%d]\n", v33, v34, v35, v36, v37, v38, __s);
              v41 = 1;
              goto LABEL_14;
            }
          }
        }

        else
        {
LABEL_29:
          free(v44);
        }
      }
    }
  }

  else
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", v27, v28, v29, v30, v31, v32, v26);
  }

LABEL_13:
  _ETLDebugPrint("ETLEFS2GetSize", "Failed to get size of NV item [%s]\n", v33, v34, v35, v36, v37, v38, __s);
  v41 = 0;
LABEL_14:
  HDLCFrameFree();
  HDLCFrameFree();
  return v41;
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

BOOL ETLDecompressCheck(unsigned __int8 **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 2);
  if (v8 > 6)
  {
    return **a1 == 155;
  }

  _ETLDebugPrint("ETLDecompressCheck", "Error: Given frame size(%u) is less than the decompress header(%u)!\n", a3, a4, a5, a6, a7, a8, v8);
  return 0;
}

uint64_t ETLDecompress(uint64_t *a1, char *__dst, unint64_t a3, uint64_t *a4, BOOL *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a4 = 0;
  v8 = *a1;
  *a5 = *(*a1 + 3) != 0;
  if (*(v8 + 4))
  {
    v9 = "Error: ZIP compress type is not supported yet.\n";
LABEL_3:
    _ETLDebugPrint("ETLDecompress", v9, a3, a4, a5, a6, a7, a8, v13);
    return 0;
  }

  v12 = lz4_decode(__dst, a3, (v8 + 7), *(v8 + 1));
  *a4 = v12;
  if (!v12)
  {
    v9 = "Error: Decoded size is none.\n";
    goto LABEL_3;
  }

  return 1;
}

uint64_t ETLDecompressProcessNonHDLCData(unsigned __int8 *a1, unint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 > 3)
  {
    if (*a1 == 126)
    {
      if (a1[1] == 126)
      {
        _ETLDebugPrint("ETLDecompressProcessNonHDLCData", "Error: Consecutive data should not contain the flag (0x%x).\n", a3, a4, a5, a6, a7, a8, 126);
        return 0;
      }

      else
      {
        v9 = *(a1 + 1);
        *a4 = v9;
        *a3 = a1 + 4;
        *a5 = v9 + 5;
        return 1;
      }
    }

    else
    {
      v11 = *a1;
      _ETLDebugPrint("ETLDecompressProcessNonHDLCData", "Error: Non HDLC Compressed Data expect start code of (0x%x), but it contains 0x%x.\n", a3, a4, a5, a6, a7, a8, 126);
      return 0;
    }
  }

  else
  {
    _ETLDebugPrint("ETLDecompressProcessNonHDLCData", "Error: Given buffer size is less than the size of the header\n", a3, a4, a5, a6, a7, a8, v10);
    return 0;
  }
}

uint64_t ETLSubsysAddHeader()
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

uint64_t ETLSubsysParseHeader(uint64_t a1, _WORD *a2, _WORD *a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a4;
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
      *a2 = BYTE1(v10);
      *a3 = HIWORD(v10);
      *a4 = v8 + 4;
      return 1;
    }

    else
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, v10);
      return 0;
    }
  }
}

uint64_t ETLSubsys2AddHeader()
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

uint64_t ETLSubsys2ParseHeader(uint64_t *a1, _WORD *a2, _WORD *a3, _DWORD *a4, _WORD *a5, _DWORD *a6, uint64_t a7, uint64_t a8)
{
  v8 = *a6;
  v9 = (*(a1 + 2) - v8);
  if (v9 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a3, a4, a5, a6, a7, a8, v9);
    return 0;
  }

  else
  {
    v10 = *a1;
    v11 = *(*a1 + v8);
    if (v11 == 128)
    {
      *a2 = BYTE1(v11);
      *a3 = HIWORD(v11);
      *a6 = v8 + 4;
      if ((*(a1 + 2) - (v8 + 4)) <= 5)
      {
        v14 = (*(a1 + 2) - (v8 + 4));
        _ETLDebugPrint("ETLSubsys2ParseHeader", "Need %u bytes, only have %u\n", a3, a4, a5, a6, a7, a8, 6);
        return 0;
      }

      else
      {
        v12 = v10 + (v8 + 4);
        *a6 = v8 + 10;
        *a4 = *v12;
        *a5 = *(v12 + 4);
        return 1;
      }
    }

    else
    {
      _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, v11);
      return 0;
    }
  }
}

uint64_t ETLSubsysFindMatchingResponse(uint64_t a1, unsigned __int8 **a2, unsigned int a3)
{
  v7 = 75;
  if (!_ETLResponseRingBuffer)
  {
    v4 = a1;
    v5 = a2;
    TelephonyUtilRingBufferInitialize();
    a1 = v4;
    a2 = v5;
  }

  LODWORD(result) = ETLFindMatchingResponseUsingBuffer(a1, a2, &_ETLResponseRingBuffer, &v7, a3);
  if (v7 == 75)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t ETLSubsys2FindMatchingResponse(uint64_t a1, unsigned __int8 **a2, unsigned int a3)
{
  v7 = 0x80;
  if (!_ETLResponseRingBuffer)
  {
    v4 = a1;
    v5 = a2;
    TelephonyUtilRingBufferInitialize();
    a1 = v4;
    a2 = v5;
  }

  LODWORD(result) = ETLFindMatchingResponseUsingBuffer(a1, a2, &_ETLResponseRingBuffer, &v7, a3);
  if (v7 == 128)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

BOOL ETLHDLCFrameCheckFreeSpace(uint64_t a1, unsigned int a2)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  v10 = FreeSpace;
  if (FreeSpace < a2)
  {
    _ETLDebugPrint("ETLHDLCFrameCheckFreeSpace", "Remaining %u not enough %u\n", v4, v5, v6, v7, v8, v9, FreeSpace);
  }

  return v10 >= a2;
}

BOOL ETLHDLCFrameCheckRemainedSize(uint64_t a1, unsigned int a2, void *a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a4;
  v10 = *(a1 + 8) - v9;
  if (v10 < a2)
  {
    _ETLDebugPrint("ETLHDLCFrameCheckRemainedSize", "Payload length %u less than needed %u\n", a3, a4, a5, a6, a7, a8, (*(a1 + 8) - v9));
    return v10 >= a2;
  }

  else
  {
    *a3 = *a1 + v9;
    *a4 = v9 + a2;
    return v10 >= a2;
  }
}

uint64_t ETLFrameReadFromTransport(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 *a4)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  while (1)
  {
    while (TelephonyUtilRingBufferGetSize())
    {
      v6 = *a3;
      v7 = *(a3 + 4);
      TelephonyUtilRingBufferGetSize();
      v8 = *a4;
      v9 = *(a4 + 1);
      v10 = *(a4 + 2);
      v11 = *(a4 + 2);
      LOBYTE(v6) = HDLCFrameCreateDownlink();
      TelephonyUtilRingBufferSkip();
      if (v6)
      {
        return 1;
      }
    }

    if (TelephonyUtilRingBufferInsertTransport() < 1)
    {
      break;
    }

    TelephonyUtilRingBufferLinearize();
  }

  return 0;
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
          v6 += dword_2977CA700[v11];
          v7 += *(v3 + qword_2977CA6D8[v11]);
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
          v6 += dword_2977CA700[v9];
          v7 += *(v3 + qword_2977CA6D8[v9]);
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
        v6 += dword_2977CA700[v10];
        v7 += *(v3 + qword_2977CA6D8[v10]);
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
        v6 += dword_2977CA700[v8];
        v7 += *(v3 + qword_2977CA6D8[v8]);
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

uint64_t ETLFusingCreateReadFuseCommand()
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v1, v2, v3, v4, v5, v6, FreeSpace);
    return 0;
  }

  if ((HDLCFrameInject() & 1) == 0)
  {
    v15 = "ETLSubsysAddHeaderInternal";
    v16 = "Failed to inject\n";
LABEL_12:
    _ETLDebugPrint(v15, v16, v7, v8, v9, v10, v11, v12, v17);
    return 0;
  }

  v13 = HDLCFrameGetFreeSpace();
  if (v13 <= 7)
  {
    v17 = v13;
    v15 = "ETLFusingCreateFusingCommand";
    v16 = "Remaining %u not enough %u\n";
    goto LABEL_12;
  }

  if (!HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedShort())
  {
    return 0;
  }

  return HDLCFrameInjectUnsignedInt();
}

uint64_t ETLFusingCreateWriteFuseCommand()
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v1, v2, v3, v4, v5, v6, FreeSpace);
    return 0;
  }

  if ((HDLCFrameInject() & 1) == 0)
  {
    v15 = "ETLSubsysAddHeaderInternal";
    v16 = "Failed to inject\n";
LABEL_12:
    _ETLDebugPrint(v15, v16, v7, v8, v9, v10, v11, v12, v17);
    return 0;
  }

  v13 = HDLCFrameGetFreeSpace();
  if (v13 <= 7)
  {
    v17 = v13;
    v15 = "ETLFusingCreateFusingCommand";
    v16 = "Remaining %u not enough %u\n";
    goto LABEL_12;
  }

  if (!HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedShort())
  {
    return 0;
  }

  return HDLCFrameInjectUnsignedInt();
}

uint64_t ETLFusingParseReadFuseResponse(int **a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
        if (v12 == 11)
        {
          if (v9 <= 5)
          {
            _ETLDebugPrint("ETLFusingParseFusingResponse", "Payload length %u less than needed %u\n", a3, a4, a5, a6, a7, a8, v9);
            return 0;
          }

          else
          {
            v13 = *(v10 + 2);
            *a3 = *(v10 + 6);
            if (v13 == 1)
            {
              return 1;
            }

            else
            {
              _ETLDebugPrint("ETLFusingParseFusingResponse", "Status returned was %u, expected %u\n", a3, a4, a5, a6, a7, a8, v13);
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

uint64_t ETLFusingParseWriteFuseResponse(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
        if (v11 == 11)
        {
          if (v9 <= 5)
          {
            _ETLDebugPrint("ETLFusingParseFusingResponse", "Payload length %u less than needed %u\n", a3, a4, a5, a6, a7, a8, v9);
            return 0;
          }

          else if (*(*a1 + 4) == 1)
          {
            return 1;
          }

          else
          {
            _ETLDebugPrint("ETLFusingParseFusingResponse", "Status returned was %u, expected %u\n", a3, a4, a5, a6, a7, a8, *(*a1 + 4));
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

uint64_t ETLFusingProgramFuse(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *a3;
  _ETLDebugPrint("ETLFusingProgramFuse", "Programming fuse %u, value %u\n", a3, a4, a5, a6, a7, a8, a2);
  if (a4 == 4)
  {
    v33 = -1431655766;
    if (ETLFusingPerformFusingOperation(a1, a2, 0, 0, &v33, a5))
    {
      v25 = v33;
      _ETLDebugPrint("ETLFusingProgramFuse", "Read back fuse %u, value %u\n", v19, v20, v21, v22, v23, v24, a2);
      if ((v25 | v12) == v12)
      {
        _ETLDebugPrint("ETLFusingProgramFuse", "Programming fuse %u, final write value %u\n", v26, v27, v28, v29, v30, v31, a2);
        return ETLFusingPerformFusingOperation(a1, a2, 1, v12 & ~v25, &v34, a5);
      }

      _ETLDebugPrint("ETLFusingProgramFuse", "Mismatch, expected to be written %u, final value on device will be %u\n", v26, v27, v28, v29, v30, v31, v12);
    }

    else
    {
      _ETLDebugPrint("ETLFusingProgramFuse", "Failed to read the fuse %u\n", v19, v20, v21, v22, v23, v24, a2);
    }
  }

  else
  {
    _ETLDebugPrint("ETLFusingProgramFuse", "Data length %u is not %zu\n", v13, v14, v15, v16, v17, v18, a4);
  }

  return 0;
}

uint64_t ETLFusingPerformFusingOperation(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t a6)
{
  memset(v44, 0, sizeof(v44));
  v45 = 0;
  memset(v42, 0, sizeof(v42));
  v43 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    v24 = "ETLFusingPerformFusingOperation";
    v25 = "Faild to create uplink frame\n";
LABEL_25:
    _ETLDebugPrint(v24, v25, v10, v11, v12, v13, v14, v15, v41);
    goto LABEL_26;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v17, v18, v19, v20, v21, v22, FreeSpace);
LABEL_26:
    a3 = 0;
    goto LABEL_27;
  }

  v46 = 785739;
  if (!HDLCFrameInject())
  {
    v24 = "ETLSubsysAddHeaderInternal";
    v25 = "Failed to inject\n";
    goto LABEL_25;
  }

  v23 = HDLCFrameGetFreeSpace();
  if (!a3)
  {
    if (v23 > 7)
    {
      if (!HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedShort() || (HDLCFrameInjectUnsignedInt() & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_17;
    }

    goto LABEL_24;
  }

  if (v23 <= 7)
  {
LABEL_24:
    v41 = v23;
    v24 = "ETLFusingCreateFusingCommand";
    v25 = "Remaining %u not enough %u\n";
    goto LABEL_25;
  }

  if (!HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedInt())
  {
    goto LABEL_26;
  }

LABEL_17:
  if (!ETLSendCommand(a1, v44, a6) || !ETLSubsysFindMatchingResponse(a1, v42, a6))
  {
    goto LABEL_26;
  }

  if (!a3)
  {
    v46 = 0;
    if (!ETLMaverickParseBSPResponseHeader(v42, &v46, 11, v26, v27, v28, v29, v30))
    {
      goto LABEL_27;
    }

    v37 = DWORD2(v42[0]) - v46;
    if (v37 > 5)
    {
      v40 = (*&v42[0] + v46);
      v38 = *v40;
      *a5 = *(v40 + 1);
      if (v38 == 1)
      {
        goto LABEL_23;
      }

LABEL_31:
      _ETLDebugPrint("ETLFusingParseFusingResponse", "Status returned was %u, expected %u\n", v31, v32, v33, v34, v35, v36, v38);
      goto LABEL_26;
    }

LABEL_32:
    _ETLDebugPrint("ETLFusingParseFusingResponse", "Payload length %u less than needed %u\n", v31, v32, v33, v34, v35, v36, v37);
    goto LABEL_26;
  }

  v46 = 0;
  a3 = 0;
  if (ETLMaverickParseBSPResponseHeader(v42, &v46, 11, v26, v27, v28, v29, v30))
  {
    v37 = DWORD2(v42[0]) - v46;
    if (v37 > 5)
    {
      v38 = *(*&v42[0] + v46);
      if (v38 == 1)
      {
LABEL_23:
        a3 = 1;
        goto LABEL_27;
      }

      goto LABEL_31;
    }

    goto LABEL_32;
  }

LABEL_27:
  HDLCFrameFree();
  HDLCFrameFree();
  return a3;
}

uint64_t ETLFusingReadFuse(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a2, int *a3, uint64_t a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a5 = 0;
  if (a4 > 3)
  {
    v19 = -1431655766;
    v18 = ETLFusingPerformFusingOperation(a1, a2, 0, 0, &v19, a6);
    result = 0;
    if (v18)
    {
      *a5 = 4;
      *a3 = v19;
      _ETLDebugPrint("ETLFusingReadFuse", "Read back fuse %u, value %u\n", v12, v13, v14, v15, v16, v17, a2);
      return 1;
    }
  }

  else
  {
    _ETLDebugPrint("ETLFusingReadFuse", "Data capacity %u less than reequired %zu\n", a3, a4, a5, a6, a7, a8, a4);
    return 0;
  }

  return result;
}

uint64_t ETLFusingProgramTriggerM20(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || !a2)
  {
    _ETLDebugPrint("ETLFusingProgramTriggerM20", "Transport (%p) and Status (%p) should not be NULL \n", a3, a4, a5, a6, a7, a8, a1);
    return 0;
  }

  memset(v48, 0, sizeof(v48));
  v49 = 0;
  memset(v46, 0, sizeof(v46));
  v47 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    v41 = "ETLFusingProgramTriggerM20";
    v42 = "Faild to create uplink frame\n";
LABEL_24:
    _ETLDebugPrint(v41, v42, v11, v12, v13, v14, v15, v16, v45);
    goto LABEL_25;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v18, v19, v20, v21, v22, v23, FreeSpace);
LABEL_25:
    v43 = 0;
LABEL_26:
    HDLCFrameFree();
    HDLCFrameFree();
    return v43;
  }

  v51 = 1575755;
  if ((HDLCFrameInject() & 1) == 0)
  {
    v41 = "ETLSubsysAddHeaderInternal";
    v42 = "Failed to inject\n";
    goto LABEL_24;
  }

  v24 = HDLCFrameGetFreeSpace();
  if (v24 <= 7)
  {
    v45 = v24;
    v41 = "ETLHDLCFrameCheckFreeSpace";
    v42 = "Remaining %u not enough %u\n";
    goto LABEL_24;
  }

  if (!HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedShort() || !ETLSendCommand(a1, v48, a3) || !ETLSubsysFindMatchingResponse(a1, v46, a3))
  {
    goto LABEL_25;
  }

  v50 = 0;
  v51 = 0;
  ETLSubsysParseHeader(v46, &v50 + 1, &v50, &v51, v25, v26, v27, v28);
  if (HIWORD(v50) != 11)
  {
    _ETLDebugPrint("ETLFusingParseFusingResponseM20", "Received subsys 0x%x doesn't match expected 0x%x\n", v29, v30, v31, v32, v33, v34, HIWORD(v50));
    v35 = v50;
    goto LABEL_34;
  }

  v35 = v50;
  if (v50 != 24)
  {
LABEL_34:
    _ETLDebugPrint("ETLFusingParseFusingResponseM20", "Received command code 0x%x doesn't match expected 0x%x\n", v29, v30, v31, v32, v33, v34, v35);
    __break(1u);
    goto LABEL_35;
  }

  v36 = DWORD2(v46[0]) - v51;
  if (v36 > 7)
  {
    v37 = (*&v46[0] + v51);
    if (*v37 == 3)
    {
      v38 = DWORD2(v46[0]) - (v51 + 8);
      if (v38 > 3)
      {
        v37 = (*&v46[0] + v51 + 8);
        v39 = 1;
        goto LABEL_30;
      }

      _ETLDebugPrint("ETLHDLCFrameCheckRemainedSize", "Payload length %u less than needed %u\n", v29, v30, v31, v32, v33, v34, v38);
    }

    else
    {
      _ETLDebugPrint("ETLFusingParseFusingResponseM20", "Received Secboot provisioning trigger code 0x%x doesn't match expected 0x%x\n", v29, v30, v31, v32, v33, v34, *(*&v46[0] + v51));
    }

    v39 = 0;
LABEL_30:
    v44 = *v37;
    *a2 = v44;
    if (v44)
    {
      _ETLDebugPrint("ETLFusingParseFusingResponseM20", "Received status 0x%x doesn't match expected 0x%x\n", v29, v30, v31, v32, v33, v34, v44);
      v43 = 0;
    }

    else
    {
      v43 = v39;
    }

    goto LABEL_26;
  }

LABEL_35:
  result = _ETLDebugPrint("ETLHDLCFrameCheckRemainedSize", "Payload length %u less than needed %u\n", v29, v30, v31, v32, v33, v34, v36);
  __break(1u);
  return result;
}

unint64_t ETLFusingGetFusedData(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && a2)
  {
    v49 = 0u;
    v50 = 0u;
    v51 = 0;
    memset(v47, 0, sizeof(v47));
    v48 = 0;
    if (HDLCFrameCreateUplink())
    {
      FreeSpace = HDLCFrameGetFreeSpace();
      if (FreeSpace < 4)
      {
        _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v18, v19, v20, v21, v22, v23, FreeSpace);
LABEL_35:
        v24 = 0;
        goto LABEL_36;
      }

      v52 = 8781131;
      if (HDLCFrameInject())
      {
        v24 = malloc((2 * DWORD2(v49) + 32));
        if (!v24)
        {
          goto LABEL_36;
        }

        v25 = HDLCFrameEncode();
        if (!v25)
        {
          goto LABEL_38;
        }

        v26 = v25;
        v52 = -1431655766;
        if ((_ETLDebugFlags & 2) != 0)
        {
          off_2A18A5818(&str_3, 0, v24, v25);
        }

        if (!*a1)
        {
LABEL_38:
          free(v24);
          goto LABEL_35;
        }

        v27 = (*a1)(a1, v24, v26, &v52, 1, a3, 0);
        v28 = v52;
        free(v24);
        v24 = 0;
        if (!v27 || v28 != v26)
        {
          goto LABEL_36;
        }

        LOBYTE(v52) = 75;
        if (!_ETLResponseRingBuffer)
        {
          TelephonyUtilRingBufferInitialize();
        }

        v24 = 0;
        if (!ETLFindMatchingResponseUsingBuffer(a1, v47, &_ETLResponseRingBuffer, &v52, a3) || v52 != 75)
        {
          goto LABEL_36;
        }

        v29 = (DWORD2(v47[0]) - 4);
        if (DWORD2(v47[0]) < 4)
        {
          _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", v11, v12, v13, v14, v15, v16, DWORD2(v47[0]));
        }

        else
        {
          v30 = **&v47[0];
          if (**&v47[0] == 75)
          {
            v31 = BYTE1(v30);
            if (BYTE1(v30) == 253)
            {
              if (HIWORD(v30) != 133)
              {
                _ETLDebugPrint("ETLFusingParseGetFusedData", "Received command code 0x%x doesn't match expected 0x%x\n", v11, v12, v13, v14, v15, v16, HIWORD(v30));
                goto LABEL_35;
              }

              *(a2 + 44) = 0;
              if (v29 >= 4)
              {
                v32 = 0;
                v33 = 12;
                v34 = -12;
                while (1)
                {
                  if (v32 >= *(a2 + 8) - 1)
                  {
                    goto LABEL_46;
                  }

                  *(*a2 + 4 * v32) = *(*&v47[0] + (v33 - 8));
                  v35 = *(a2 + 44);
                  if (v35 >= *(a2 + 24) - 1)
                  {
                    goto LABEL_46;
                  }

                  v36 = (v34 + DWORD2(v47[0]) + 4);
                  if (v36 <= 3)
                  {
                    _ETLDebugPrint("ETLHDLCFrameCheckRemainedSize", "Payload length %u less than needed %u\n", v11, v12, v13, v14, v15, v16, v36);
                    v42 = *(a2 + 44);
                    v43 = *(a2 + 24);
LABEL_46:
                    v46 = (v33 - 4);
                    goto LABEL_49;
                  }

                  *(*(a2 + 16) + 4 * v35) = *(*&v47[0] + (v33 - 4));
                  v37 = *(a2 + 44);
                  if (v37 >= *(a2 + 40) - 1)
                  {
                    goto LABEL_48;
                  }

                  v38 = (v34 + DWORD2(v47[0]));
                  if (v38 <= 3)
                  {
                    break;
                  }

                  *(*(a2 + 32) + 4 * v37) = *(*&v47[0] + v33);
                  v32 = *(a2 + 44) + 1;
                  *(a2 + 44) = v32;
                  v33 = (v33 + 12);
                  v34 -= 12;
                  v29 = (DWORD2(v47[0]) + v34 + 8);
                  if (v29 <= 3)
                  {
                    goto LABEL_29;
                  }
                }

                _ETLDebugPrint("ETLHDLCFrameCheckRemainedSize", "Payload length %u less than needed %u\n", v11, v12, v13, v14, v15, v16, v38);
                v45 = *(a2 + 40);
                v44 = *(a2 + 44);
LABEL_48:
                v46 = v33;
LABEL_49:
                v39 = "ETLFusingParseGetFusedData";
                v40 = "Failed to fill address at offset: %d, totalNumber: %d, maxNumberOfAddress: %d\n";
                goto LABEL_34;
              }

LABEL_29:
              _ETLDebugPrint("ETLHDLCFrameCheckRemainedSize", "Payload length %u less than needed %u\n", v11, v12, v13, v14, v15, v16, v29);
              v24 = *(a2 + 44) != 0;
LABEL_36:
              HDLCFrameFree();
              HDLCFrameFree();
              return v24;
            }

LABEL_42:
            _ETLDebugPrint("ETLFusingParseGetFusedData", "Received subsys 0x%x doesn't match expected 0x%x\n", v11, v12, v13, v14, v15, v16, v31);
            goto LABEL_35;
          }

          _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", v11, v12, v13, v14, v15, v16, **&v47[0]);
        }

        v31 = 0;
        goto LABEL_42;
      }

      v39 = "ETLSubsysAddHeaderInternal";
      v40 = "Failed to inject\n";
    }

    else
    {
      v39 = "ETLFusingGetFusedData";
      v40 = "Failed to create uplink frame\n";
    }

LABEL_34:
    _ETLDebugPrint(v39, v40, v11, v12, v13, v14, v15, v16, v46);
    goto LABEL_35;
  }

  _ETLDebugPrint("ETLFusingGetFusedData", "Neither transport (%p) nor parameter (%p) should be NULL \n", a3, a4, a5, a6, a7, a8, a1);
  return 0;
}

uint64_t ETLFusingGetSecureState(void *a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || !a2)
  {
    _ETLDebugPrint("ETLFusingGetSecureState", "Neither transport (%p) nor state (%p) should be NULL\n", a3, a4, a5, a6, a7, a8, a1);
    return 0;
  }

  v47 = 0u;
  v48 = 0u;
  v49 = 0;
  memset(v45, 0, sizeof(v45));
  v46 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    v40 = "ETLFusingGetSecureState";
    v41 = "Failed to create uplink frame\n";
LABEL_29:
    _ETLDebugPrint(v40, v41, v11, v12, v13, v14, v15, v16, v44);
    goto LABEL_30;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v18, v19, v20, v21, v22, v23, FreeSpace);
LABEL_30:
    v24 = 0;
    goto LABEL_31;
  }

  v50 = 9502027;
  if ((HDLCFrameInject() & 1) == 0)
  {
    v40 = "ETLSubsysAddHeaderInternal";
    v41 = "Failed to inject\n";
    goto LABEL_29;
  }

  v24 = malloc((2 * DWORD2(v47) + 32));
  if (!v24)
  {
LABEL_31:
    HDLCFrameFree();
    HDLCFrameFree();
    return v24;
  }

  v25 = HDLCFrameEncode();
  if (!v25)
  {
    goto LABEL_33;
  }

  v26 = v25;
  v50 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v24, v25);
  }

  if (!*a1)
  {
LABEL_33:
    free(v24);
    goto LABEL_30;
  }

  v27 = (*a1)(a1, v24, v26, &v50, 1, a3, 0);
  v28 = v50;
  free(v24);
  v24 = 0;
  if (!v27 || v28 != v26)
  {
    goto LABEL_31;
  }

  LOBYTE(v50) = 75;
  if (!_ETLResponseRingBuffer)
  {
    TelephonyUtilRingBufferInitialize();
  }

  v24 = 0;
  if (!ETLFindMatchingResponseUsingBuffer(a1, v45, &_ETLResponseRingBuffer, &v50, a3) || v50 != 75)
  {
    goto LABEL_31;
  }

  v35 = (DWORD2(v45[0]) - 4);
  if (DWORD2(v45[0]) < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", v29, v30, v31, v32, v33, v34, DWORD2(v45[0]));
LABEL_42:
    v37 = 0;
    v38 = 0;
    goto LABEL_43;
  }

  v36 = **&v45[0];
  if (**&v45[0] != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", v29, v30, v31, v32, v33, v34, **&v45[0]);
    goto LABEL_42;
  }

  v37 = HIWORD(v36);
  v38 = BYTE1(v36);
  if (BYTE1(v36) != 253)
  {
LABEL_43:
    _ETLDebugPrint("ETLFusingParseGetSecureState", "Received subsys 0x%x doesn't match expected 0x%x\n", v29, v30, v31, v32, v33, v34, v38);
    goto LABEL_44;
  }

  if (v37 != 144)
  {
LABEL_44:
    _ETLDebugPrint("ETLFusingParseGetSecureState", "Received command code 0x%x doesn't match expected 0x%x\n", v29, v30, v31, v32, v33, v34, v37);
    __break(1u);
    goto LABEL_45;
  }

  if (v35 > 3)
  {
    v39 = (*&v45[0] + 4);
    if (*(*&v45[0] + 4))
    {
      _ETLDebugPrint("ETLFusingParseGetSecureState", "Received Secboot provisioning trigger code 0x%x doesn't match expected 0x%x\n", v29, v30, v31, v32, v33, v34, *(*&v45[0] + 4));
    }

    else
    {
      if (*(*&v45[0] + 4))
      {
        v24 = 0;
        goto LABEL_38;
      }

      v43 = (DWORD2(v45[0]) - 8);
      if (v43 > 3)
      {
        v39 = (*&v45[0] + 8);
        v24 = 1;
        goto LABEL_38;
      }

      _ETLDebugPrint("ETLHDLCFrameCheckRemainedSize", "Payload length %u less than needed %u\n", v29, v30, v31, v32, v33, v34, v43);
    }

    v24 = 0;
LABEL_38:
    *a2 = *v39;
    goto LABEL_31;
  }

LABEL_45:
  result = _ETLDebugPrint("ETLHDLCFrameCheckRemainedSize", "Payload length %u less than needed %u\n", v29, v30, v31, v32, v33, v34, v35);
  __break(1u);
  return result;
}

uint64_t ETLDesenseCreateCommand()
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v1, v2, v3, v4, v5, v6, FreeSpace);
LABEL_12:
    _ETLDebugPrint("ETLDesenseCreateCommand", "Failed to add command header\n", v21, v22, v23, v24, v25, v26, v28);
    return 0;
  }

  if ((HDLCFrameInject() & 1) == 0)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v7, v8, v9, v10, v11, v12, v27);
    goto LABEL_12;
  }

  v13 = HDLCFrameGetFreeSpace();
  if (v13 <= 7)
  {
    _ETLDebugPrint("ETLDesenseCreateCommand", "Remaining %u not enough %u\n", v14, v15, v16, v17, v18, v19, v13);
    return 0;
  }

  if (!HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedShort())
  {
    return 0;
  }

  return HDLCFrameInjectUnsignedShort();
}

uint64_t ETLDesenseParseResponse(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
        if (v11 == 15)
        {
          if (v9 <= 1)
          {
            _ETLDebugPrint("ETLDesenseParseResponseWithStatus", "Payload length %u less than needed %u\n", a3, a4, a5, a6, a7, a8, v9);
            return 0;
          }

          else if (*(*a1 + 4) == 1)
          {
            return 1;
          }

          else
          {
            _ETLDebugPrint("ETLDesenseParseResponseWithStatus", "Status returned was %u, expected %u\n", a3, a4, a5, a6, a7, a8, *(*a1 + 4));
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

uint64_t ETLDesenseOperation(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  if (a7)
  {
    *a7 = 0;
  }

  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  memset(v38, 0, sizeof(v38));
  v39 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    _ETLDebugPrint("ETLDesenseOperation", "Faild to create uplink frame\n", v10, v11, v12, v13, v14, v15, v37);
    goto LABEL_26;
  }

  if (!ETLDesenseCreateCommand())
  {
LABEL_26:
    v16 = 0;
    goto LABEL_27;
  }

  v16 = malloc((2 * DWORD2(v40) + 32));
  if (v16)
  {
    v17 = HDLCFrameEncode();
    if (!v17)
    {
      goto LABEL_28;
    }

    v18 = v17;
    v43 = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, v16, v17);
    }

    if (!*a1)
    {
LABEL_28:
      free(v16);
      goto LABEL_26;
    }

    v19 = (*a1)(a1, v16, v18, &v43, 1, a6, 0);
    v20 = v43;
    free(v16);
    v16 = 0;
    if (v19)
    {
      if (v20 == v18)
      {
        LOBYTE(v43) = 75;
        if (!_ETLResponseRingBuffer)
        {
          TelephonyUtilRingBufferInitialize();
        }

        v16 = 0;
        if (ETLFindMatchingResponseUsingBuffer(a1, v38, &_ETLResponseRingBuffer, &v43, a6))
        {
          if (v43 == 75)
          {
            _ETLDebugPrint("ETLDesenseOperation", "Read done\n", v21, v22, v23, v24, v25, v26, v37);
            if (DWORD2(v38[0]) < 4)
            {
              _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", v27, v28, v29, v30, v31, v32, DWORD2(v38[0]));
            }

            else
            {
              v33 = **&v38[0];
              if (**&v38[0] == 75)
              {
                if (BYTE1(v33) == 253)
                {
                  v34 = HIWORD(v33);
                  if (v34 == 15)
                  {
                    if ((DWORD2(v38[0]) - 4) <= 1)
                    {
                      _ETLDebugPrint("ETLDesenseParseResponseWithStatus", "Payload length %u less than needed %u\n", v27, v28, v29, v30, v31, v32, (DWORD2(v38[0]) - 4));
                    }

                    else
                    {
                      v35 = *(*&v38[0] + 4);
                      if (a7)
                      {
                        *a7 = v35;
                      }

                      if (v35 == 1)
                      {
                        v16 = 1;
                        goto LABEL_27;
                      }

                      _ETLDebugPrint("ETLDesenseParseResponseWithStatus", "Status returned was %u, expected %u\n", v27, v28, v29, v30, v31, v32, v35);
                    }
                  }

                  else
                  {
                    _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", v27, v28, v29, v30, v31, v32, v34);
                  }
                }

                else
                {
                  _ETLDebugPrint("ETLMaverickParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", v27, v28, v29, v30, v31, v32, BYTE1(v33));
                }
              }

              else
              {
                _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", v27, v28, v29, v30, v31, v32, **&v38[0]);
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
  return v16;
}

uint64_t ETLLOGParseLogRecord(void *a1, _DWORD *a2, void *a3, _WORD *a4, unsigned __int16 *a5, uint64_t a6, _DWORD *a7, uint64_t a8)
{
  if (a6 < 0xC)
  {
    return 0;
  }

  v9 = *a5;
  *a7 = v9;
  if (v9 <= a6 && v9 > 0xB)
  {
    if (a1)
    {
      *a1 = a5 + 6;
    }

    if (a2)
    {
      *a2 = v9 - 12;
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
    _ETLDebugPrint("ETLLOGParseLogRecord", "Packet length is (%u), source buffer length is (%u), LOG header size should be (%u), skipping.\n", a3, a4, a5, a6, a7, a8, v9);
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

uint64_t ETLGSMAddCommandHeader()
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

uint64_t ETLGSMParseSubsysResponseHeader(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
      if (BYTE1(v10) == a3)
      {
        if (HIWORD(v10) == a4)
        {
          return 1;
        }

        else
        {
          _ETLDebugPrint("ETLGSMParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, HIWORD(v10));
          return 0;
        }
      }

      else
      {
        _ETLDebugPrint("ETLGSMParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, BYTE1(v10));
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

uint64_t ETLGSMParseGetIMEI(uint64_t *a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a3;
  v9 = (*(a1 + 2) - v8);
  if (v9 < 4)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Response length %u less than %zu\n", a3, a4, a5, a6, a7, a8, v9);
LABEL_11:
    _ETLDebugPrint("ETLGSMParseGetIMEI", "failed parsing GSM response from frame\n", v17, v18, v19, v20, v21, v22, v23);
    return 0;
  }

  v10 = *a1;
  v11 = *(*a1 + v8);
  if (v11 != 75)
  {
    _ETLDebugPrint("ETLSubsysParseHeaderInternal", "Header command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, *(*a1 + v8));
    goto LABEL_11;
  }

  v12 = v8 + 4;
  *a3 = v12;
  if (BYTE1(v11) != 8)
  {
    _ETLDebugPrint("ETLGSMParseSubsysResponseHeader", "Received subsys 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, BYTE1(v11));
    goto LABEL_11;
  }

  v13 = HIWORD(v11);
  if (v13 != 1)
  {
    _ETLDebugPrint("ETLGSMParseSubsysResponseHeader", "Received command code 0x%x doesn't match expected 0x%x\n", a3, a4, a5, a6, a7, a8, v13);
    goto LABEL_11;
  }

  if (*(a1 + 2) - v12 <= 8)
  {
    v24 = *(a1 + 2) - v12;
    _ETLDebugPrint("ETLGSMParseGetIMEI", "Need %u bytes, but only have %u\n", a3, a4, a5, a6, a7, a8, 9);
    return 0;
  }

  else
  {
    v14 = (v10 + v12);
    v15 = *v14;
    *(a2 + 8) = *(v14 + 8);
    *a2 = v15;
    return 1;
  }
}

uint64_t ETLGSMMakeIMEIFromString(uint64_t a1, char *__s)
{
  result = 0;
  if (!a1 || !__s)
  {
    return result;
  }

  v5 = strlen(__s);
  if (v5 != 15)
  {
    _ETLDebugPrint("ETLGSMMakeIMEIFromString", "Length %zu is unrecognized\n", v6, v7, v8, v9, v10, v11, v5);
    return 0;
  }

  v12 = *__s;
  v13 = v12 - 58;
  v14 = v12 - 48;
  if (v13 < 0xFFFFFFF6)
  {
    v14 = -1;
  }

  if (v14 < 0)
  {
    return 0;
  }

  result = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *a1 = 8;
  *(a1 + 1) = (16 * v14) | 0xA;
  v15 = __s[1];
  v16 = v15 - 58;
  v17 = v15 - 48;
  if (v16 < 0xFFFFFFF6)
  {
    v17 = -1;
  }

  v18 = __s[2];
  v19 = v18 - 58;
  v20 = v18 - 48;
  if (v19 < 0xFFFFFFF6)
  {
    v20 = -1;
  }

  if ((v17 & 0x80000000) == 0 && (v20 & 0x80000000) == 0)
  {
    result = 0;
    *(a1 + 2) = v17 | (16 * v20);
    v21 = __s[3];
    v22 = v21 - 58;
    v23 = v21 - 48;
    if (v22 < 0xFFFFFFF6)
    {
      v23 = -1;
    }

    v24 = __s[4];
    v25 = v24 - 58;
    v26 = v24 - 48;
    if (v25 < 0xFFFFFFF6)
    {
      v26 = -1;
    }

    if ((v23 & 0x80000000) == 0 && (v26 & 0x80000000) == 0)
    {
      result = 0;
      *(a1 + 3) = v23 | (16 * v26);
      v27 = __s[5];
      v28 = v27 - 58;
      v29 = v27 - 48;
      if (v28 < 0xFFFFFFF6)
      {
        v29 = -1;
      }

      v30 = __s[6];
      v31 = v30 - 58;
      v32 = v30 - 48;
      if (v31 < 0xFFFFFFF6)
      {
        v32 = -1;
      }

      if ((v29 & 0x80000000) == 0 && (v32 & 0x80000000) == 0)
      {
        result = 0;
        *(a1 + 4) = v29 | (16 * v32);
        v33 = __s[7];
        v34 = v33 - 58;
        v35 = v33 - 48;
        if (v34 < 0xFFFFFFF6)
        {
          v35 = -1;
        }

        v36 = __s[8];
        v37 = v36 - 58;
        v38 = v36 - 48;
        if (v37 < 0xFFFFFFF6)
        {
          v38 = -1;
        }

        if ((v35 & 0x80000000) == 0 && (v38 & 0x80000000) == 0)
        {
          result = 0;
          *(a1 + 5) = v35 | (16 * v38);
          v39 = __s[9];
          v40 = v39 - 58;
          v41 = v39 - 48;
          if (v40 < 0xFFFFFFF6)
          {
            v41 = -1;
          }

          v42 = __s[10];
          v43 = v42 - 58;
          v44 = v42 - 48;
          if (v43 < 0xFFFFFFF6)
          {
            v44 = -1;
          }

          if ((v41 & 0x80000000) == 0 && (v44 & 0x80000000) == 0)
          {
            result = 0;
            *(a1 + 6) = v41 | (16 * v44);
            v45 = __s[11];
            v46 = v45 - 58;
            v47 = v45 - 48;
            if (v46 < 0xFFFFFFF6)
            {
              v47 = -1;
            }

            v48 = __s[12];
            v49 = v48 - 58;
            v50 = v48 - 48;
            if (v49 < 0xFFFFFFF6)
            {
              v50 = -1;
            }

            if ((v47 & 0x80000000) == 0 && (v50 & 0x80000000) == 0)
            {
              result = 0;
              *(a1 + 7) = v47 | (16 * v50);
              v51 = __s[13];
              v52 = v51 - 58;
              v53 = v51 - 48;
              if (v52 < 0xFFFFFFF6)
              {
                v53 = -1;
              }

              v54 = __s[14];
              v55 = v54 - 58;
              v56 = v54 - 48;
              if (v55 < 0xFFFFFFF6)
              {
                v56 = -1;
              }

              if ((v53 & 0x80000000) == 0 && (v56 & 0x80000000) == 0)
              {
                *(a1 + 8) = v53 | (16 * v56);
                return 1;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t ETLGSMMakeStringFromIMEI(_BYTE *a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && a3)
  {
    if (a2 >= 0x10)
    {
      *a1 = (a3[1] >> 4) | 0x30;
      a1[1] = a3[2] & 0xF | 0x30;
      a1[2] = (a3[2] >> 4) | 0x30;
      a1[3] = a3[3] & 0xF | 0x30;
      a1[4] = (a3[3] >> 4) | 0x30;
      a1[5] = a3[4] & 0xF | 0x30;
      a1[6] = (a3[4] >> 4) | 0x30;
      a1[7] = a3[5] & 0xF | 0x30;
      a1[8] = (a3[5] >> 4) | 0x30;
      a1[9] = a3[6] & 0xF | 0x30;
      a1[10] = (a3[6] >> 4) | 0x30;
      a1[11] = a3[7] & 0xF | 0x30;
      a1[12] = (a3[7] >> 4) | 0x30;
      a1[13] = a3[8] & 0xF | 0x30;
      a1[14] = (a3[8] >> 4) | 0x30;
      a1[15] = 0;
      return 1;
    }

    _ETLDebugPrint("ETLGSMMakeStringFromIMEI", "buffer capacity is %u, need %u\n", a3, a4, a5, a6, a7, a8, a2);
  }

  return 0;
}

void *ETLGSMGetIMEI(void *a1, uint64_t a2, uint64_t a3)
{
  v38 = 0;
  v35 = 0u;
  v36 = 0u;
  v37 = 0;
  memset(v33, 0, sizeof(v33));
  v34 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    v29 = "ETLGSMGetIMEI";
    v30 = "Failed to create command frame\n";
LABEL_19:
    _ETLDebugPrint(v29, v30, v6, v7, v8, v9, v10, v11, v32);
    goto LABEL_20;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v13, v14, v15, v16, v17, v18, FreeSpace);
LABEL_20:
    IMEI = 0;
    goto LABEL_21;
  }

  v39 = 67659;
  if ((HDLCFrameInject() & 1) == 0)
  {
    v29 = "ETLSubsysAddHeaderInternal";
    v30 = "Failed to inject\n";
    goto LABEL_19;
  }

  IMEI = malloc((2 * DWORD2(v35) + 32));
  if (!IMEI)
  {
    goto LABEL_21;
  }

  v20 = HDLCFrameEncode();
  if (!v20)
  {
    goto LABEL_22;
  }

  v21 = v20;
  v39 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, IMEI, v20);
  }

  if (!*a1)
  {
LABEL_22:
    free(IMEI);
    goto LABEL_20;
  }

  v22 = (*a1)(a1, IMEI, v21, &v39, 1, a3, 0);
  v23 = v39;
  free(IMEI);
  IMEI = 0;
  if (v22 && v23 == v21)
  {
    LOBYTE(v39) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    IMEI = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, v33, &_ETLResponseRingBuffer, &v39, a3) && v39 == 75)
    {
      IMEI = ETLGSMParseGetIMEI(v33, a2, &v38, v24, v25, v26, v27, v28);
    }
  }

LABEL_21:
  HDLCFrameFree();
  HDLCFrameFree();
  return IMEI;
}

uint64_t ETLGSMIsValidIMEI(_BYTE *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  memset(__s2, 170, sizeof(__s2));
  if (a1)
  {
    __s2[0] = (a1[1] >> 4) | 0x30;
    v1 = a1[2];
    __s2[1] = v1 & 0xF | 0x30;
    __s2[2] = (v1 >> 4) | 0x30;
    v2 = a1[3];
    __s2[3] = v2 & 0xF | 0x30;
    __s2[4] = (v2 >> 4) | 0x30;
    v3 = a1[4];
    __s2[5] = v3 & 0xF | 0x30;
    __s2[6] = (v3 >> 4) | 0x30;
    v4 = a1[5];
    __s2[7] = v4 & 0xF | 0x30;
    __s2[8] = (v4 >> 4) | 0x30;
    v5 = a1[6];
    __s2[9] = v5 & 0xF | 0x30;
    __s2[10] = (v5 >> 4) | 0x30;
    v6 = a1[7];
    __s2[11] = v6 & 0xF | 0x30;
    __s2[12] = (v6 >> 4) | 0x30;
    v7 = a1[8];
    __s2[13] = v7 & 0xF | 0x30;
    *&__s2[14] = (v7 >> 4) | 0x30;
  }

  result = strncmp(kDefaultIMEIs, __s2, 0xFuLL);
  if (result)
  {
    result = strncmp(qword_2A139A6B0, __s2, 0xFuLL) != 0;
  }

  v9 = *MEMORY[0x29EDCA608];
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

unint64_t ETLLOGDisable(void *a1, uint64_t a2)
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0;
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  if (!HDLCFrameCreateUplink())
  {
    goto LABEL_20;
  }

  if (HDLCFrameGetFreeSpace() <= 7)
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", v4, v5, v6, v7, v8, v9, 8);
    goto LABEL_20;
  }

  v21 = 115;
  if (!HDLCFrameInject())
  {
LABEL_20:
    v10 = 0;
    goto LABEL_21;
  }

  v10 = malloc((2 * DWORD2(v18) + 32));
  if (!v10)
  {
    goto LABEL_21;
  }

  v11 = HDLCFrameEncode();
  if (!v11)
  {
    goto LABEL_22;
  }

  v12 = v11;
  LODWORD(v21) = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v10, v11);
  }

  if (!*a1)
  {
LABEL_22:
    free(v10);
    goto LABEL_20;
  }

  v13 = (*a1)(a1, v10, v12, &v21, 1, a2, 0);
  v14 = v21;
  free(v10);
  v10 = 0;
  if (v13 && v14 == v12)
  {
    LOBYTE(v21) = 115;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    v10 = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, v16, &_ETLResponseRingBuffer, &v21, a2))
    {
      if (**&v16[0] == 115 && DWORD2(v16[0]) >= 8)
      {
        v10 = 0;
        if (!*(*&v16[0] + 4) && (DWORD2(v16[0]) & 0xFFFFFFFC) != 8)
        {
          v10 = *(*&v16[0] + 8) == 0;
        }
      }
    }
  }

LABEL_21:
  HDLCFrameFree();
  HDLCFrameFree();
  return v10;
}

uint64_t ETLLOGGetIDs(void *a1, void *a2, int a3, unsigned int *a4, uint64_t a5)
{
  v25 = 0u;
  v26 = 0u;
  v27 = 0;
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  if (!HDLCFrameCreateUplink())
  {
    goto LABEL_24;
  }

  if (HDLCFrameGetFreeSpace() <= 7)
  {
    _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", v10, v11, v12, v13, v14, v15, 8);
    goto LABEL_24;
  }

  v28 = 0x100000073;
  if (!HDLCFrameInject())
  {
LABEL_24:
    v16 = 0;
    goto LABEL_25;
  }

  v16 = malloc((2 * DWORD2(v25) + 32));
  if (!v16)
  {
    goto LABEL_25;
  }

  v17 = HDLCFrameEncode();
  if (!v17)
  {
    goto LABEL_26;
  }

  v18 = v17;
  LODWORD(v28) = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v16, v17);
  }

  if (!*a1)
  {
LABEL_26:
    free(v16);
    goto LABEL_24;
  }

  v19 = (*a1)(a1, v16, v18, &v28, 1, a5, 0);
  v20 = v28;
  free(v16);
  v16 = 0;
  if (v19 && v20 == v18)
  {
    LOBYTE(v28) = 115;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    v16 = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, v23, &_ETLResponseRingBuffer, &v28, a5))
    {
      if (**&v23[0] == 115 && DWORD2(v23[0]) >= 8)
      {
        v16 = 0;
        if (*(*&v23[0] + 4) == 1 && (DWORD2(v23[0]) & 0xFFFFFFFC) != 8)
        {
          if (!(*(*&v23[0] + 8) | BYTE8(v23[0]) & 3))
          {
            if (4 * a3 >= (DWORD2(v23[0]) - 12))
            {
              v21 = (DWORD2(v23[0]) - 12);
            }

            else
            {
              v21 = (4 * a3);
            }

            memcpy(a2, (*&v23[0] + 12), v21);
            *a4 = v21 >> 2;
            v16 = 1;
            goto LABEL_25;
          }

          goto LABEL_24;
        }
      }
    }
  }

LABEL_25:
  HDLCFrameFree();
  HDLCFrameFree();
  return v16;
}

uint64_t ETLLOGSetMask(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a4;
  v13 = (a4 + 7) >> 3;
  _ETLDebugPrint("ETLLOGSetMask", "Set Mask for id %u, bits = %u (%u bytes)\n", a3, a4, a5, a6, a7, a8, a2);
  memset(v50, 0, sizeof(v50));
  v51 = 0;
  memset(v48, 0, sizeof(v48));
  v49 = 0;
  if (!HDLCFrameCreateUplink())
  {
    goto LABEL_11;
  }

  if (HDLCFrameGetFreeSpace() <= 7)
  {
    v45 = 8;
    goto LABEL_9;
  }

  v52 = 0x300000073;
  if (HDLCFrameInject())
  {
    if (v9 > 0x1000)
    {
      _ETLDebugPrint("ETLLOGCreateSetMaskCommand", "Bits %u too large\n", v14, v15, v16, v17, v18, v19, v9);
      goto LABEL_11;
    }

    if (!v9)
    {
      v20 = "ETLLOGCreateSetMaskCommand";
      v21 = "Bits must be nonzero\n";
      goto LABEL_10;
    }

    if (HDLCFrameGetFreeSpace() < v13 + 8)
    {
      v45 = (v13 + 8);
LABEL_9:
      v20 = "ETLRequireFreeSpace";
      v21 = "Need %u bytes free space, but only have %u\n";
LABEL_10:
      _ETLDebugPrint(v20, v21, v14, v15, v16, v17, v18, v19, v45);
      goto LABEL_11;
    }

    if (!HDLCFrameInjectUnsignedInt())
    {
      goto LABEL_11;
    }

    if (!HDLCFrameInjectUnsignedInt())
    {
      goto LABEL_11;
    }

    if (!HDLCFrameInject())
    {
      goto LABEL_11;
    }

    if (!ETLSendCommand(a1, v50, a5))
    {
      goto LABEL_11;
    }

    LOBYTE(v52) = 115;
    if (!ETLFindMatchingResponse(a1, v48, &v52, a5))
    {
      goto LABEL_11;
    }

    v30 = *&v48[0];
    if (**&v48[0] == 115 && DWORD2(v48[0]) >= 8 && *(*&v48[0] + 4) == 3 && (DWORD2(v48[0]) & 0xFFFFFFFC) != 8 && !*(*&v48[0] + 8))
    {
      if ((DWORD2(v48[0]) - 12) >= 4)
      {
        if (*(*&v48[0] + 12) == a2)
        {
          if ((DWORD2(v48[0]) - 16) >= 4)
          {
            v31 = *(*&v48[0] + 16);
            v32 = DWORD2(v48[0]) - 20;
            if (v31 >= v9)
            {
              v33 = v13;
            }

            else
            {
              _ETLDebugPrint("ETLLOGParseSetMaskResponse", "Warning: response bits %u is less than request %u\n", v24, v25, v26, v27, v28, v29, *(*&v48[0] + 16));
              v33 = (v31 + 7) >> 3;
              LODWORD(v9) = v31;
            }

            if (v33 <= v32)
            {
              v34 = (v30 + 20);
              v35 = v9 >> 3;
              v36 = -1 << (v9 & 7);
              v37 = memcmp(v34, a3, v35);
              v44 = (a3[v35] ^ v34[v35]) & ~v36;
              if (!(v37 | v44))
              {
                v22 = 1;
                goto LABEL_12;
              }

              _ETLDebugPrint("ETLLOGParseSetMaskResponse", "Error: Mask response mismatch\n", v38, v39, v40, v41, v42, v43, v45);
              if (v44)
              {
                v47 = v34[v35] & ~v36;
                v46 = a3[v35] & ~v36;
                _ETLDebugPrint("ETLLOGParseSetMaskResponse", "Error: Mask[%u]: 0x%x, and Received Mask[%u]: 0x%x\n", v24, v25, v26, v27, v28, v29, v35);
              }

              if ((_ETLDebugFlags & 2) != 0)
              {
                off_2A18A5818("Sent:", 2, a3, v13);
                if ((_ETLDebugFlags & 2) != 0)
                {
                  off_2A18A5818("Received:", 2, v34, v33);
                }
              }

              goto LABEL_32;
            }

            v13 = v33;
          }
        }

        else
        {
          _ETLDebugPrint("ETLLOGParseSetMaskResponse", "ID mismatch. Requested %u, response %u\n", v24, v25, v26, v27, v28, v29, a2);
        }
      }

      _ETLDebugPrint("ETLLOGParseSetMaskResponse", "Error: Received Mask bits upto %u bytes, but the actual payload has %u bytes.\n", v24, v25, v26, v27, v28, v29, v13);
    }

LABEL_32:
    _ETLDebugPrint("ETLLOGParseSetMaskResponse", "Failed on ID %u\n", v24, v25, v26, v27, v28, v29, a2);
  }

LABEL_11:
  v22 = 0;
LABEL_12:
  HDLCFrameFree();
  HDLCFrameFree();
  return v22;
}

uint64_t ETLLOGSetMaskWithRetry(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a6)
  {
    return 0;
  }

  v8 = a6;
  do
  {
    v14 = ETLLOGSetMask(a1, a2, a3, a4, a5, a6, a7, a8);
    if (v14)
    {
      break;
    }

    TelephonyUtilRingBufferReset();
    v21 = *(a1 + 24);
    if (v21)
    {
      v21(a1);
    }

    _ETLDebugPrint("ETLLOGSetMaskWithRetry", "Trying again\n", v15, v16, v17, v18, v19, v20, v23);
    --v8;
  }

  while (v8);
  return v14;
}

uint64_t ETLLOGClearAllMasksWithRetry(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v39 = *MEMORY[0x29EDCA608];
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v38[2] = v11;
  v38[3] = v11;
  v38[0] = v11;
  v38[1] = v11;
  v36 = -1431655766;
  _ETLDebugPrint("ETLLOGClearAllMasksWithRetry", "Clearing All Masks\n", a3, a4, a5, a6, a7, a8, v34);
  result = ETLLOGGetIDs(a1, v38, 16, &v36, a2);
  if (!result)
  {
LABEL_20:
    v32 = *MEMORY[0x29EDCA608];
    return result;
  }

  memset(v37, 0, sizeof(v37));
  if (v8)
  {
    v16 = 0;
    v17 = v36 - 1;
    if (v36 - 1 >= 0xD)
    {
      v17 = 13;
    }

    v35 = (v17 + 1);
    while (1)
    {
      v18 = *(v38 + v16);
      v19 = v18 >= 0x1000 ? 4096 : *(v38 + v16);
      v20 = v18 ? v19 : 4096;
      if ((ETLLOGSetMask(a1, v16, v37, v20, a2, v13, v14, v15) & 1) == 0)
      {
        break;
      }

LABEL_6:
      if (++v16 == v35)
      {
        goto LABEL_21;
      }
    }

    v21 = v8;
    while (--v21)
    {
      TelephonyUtilRingBufferReset();
      v31 = a1[3];
      if (v31)
      {
        v31(a1);
      }

      _ETLDebugPrint("ETLLOGClearAllMasksWithRetry", "Trying again\n", v25, v26, v27, v28, v29, v30, v35);
      if (ETLLOGSetMask(a1, v16, v37, v20, a2, v22, v23, v24))
      {
        goto LABEL_6;
      }
    }

    result = 0;
    goto LABEL_20;
  }

LABEL_21:
  result = 1;
  v33 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ETLLOGClearAllEnabledMasksWithRetry(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = a5;
  v43 = *MEMORY[0x29EDCA608];
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v42[2] = v11;
  v42[3] = v11;
  v42[0] = v11;
  v42[1] = v11;
  v40 = -1431655766;
  _ETLDebugPrint("ETLLOGClearAllEnabledMasksWithRetry", "Clearing All Masks\n", a3, a4, a5, a6, a7, a8, v35);
  result = ETLLOGGetIDs(a1, v42, 16, &v40, a4);
  if (!result)
  {
    goto LABEL_22;
  }

  v16 = v40 - 1;
  if (v40 - 1 >= 0xD)
  {
    v16 = 13;
  }

  v38 = v16;
  memset(v41, 0, sizeof(v41));
  if (!a2 || !v37)
  {
LABEL_21:
    result = 1;
LABEL_22:
    v33 = *MEMORY[0x29EDCA608];
    return result;
  }

  v17 = 0;
  while (1)
  {
    v18 = *(a3 + 4 * v17);
    if (v18 <= v38)
    {
      v19 = *(v42 + v18);
      v20 = v19 >= 0x1000 ? 4096 : *(v42 + v18);
      v21 = v19 ? v20 : 4096;
      if ((ETLLOGSetMask(a1, *(a3 + 4 * v17), v41, v21, a4, v13, v14, v15) & 1) == 0)
      {
        break;
      }
    }

LABEL_7:
    if (++v17 == a2)
    {
      goto LABEL_21;
    }
  }

  v22 = v37;
  while (--v22)
  {
    TelephonyUtilRingBufferReset();
    v32 = a1[3];
    if (v32)
    {
      v32(a1);
    }

    _ETLDebugPrint("ETLLOGClearAllEnabledMasksWithRetry", "Trying again\n", v26, v27, v28, v29, v30, v31, v36);
    if (ETLLOGSetMask(a1, v18, v41, v21, a4, v23, v24, v25))
    {
      goto LABEL_7;
    }
  }

  result = 0;
  v34 = *MEMORY[0x29EDCA608];
  return result;
}

const char *ETLLOGEquipIDAsString(unsigned int a1)
{
  if (a1 <= 0xD)
  {
    return off_29EE6DF38[a1];
  }

  else
  {
    return "Unknown";
  }
}

uint64_t APPLIB_DIAG_PM_ReadVRegLevel(void *a1, unsigned int a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  bzero(a1, a2);
  if (!HDLCFrameCreateUplink())
  {
    return 0xFFFFFFFFLL;
  }

  HDLCFrameInject();
  LODWORD(result) = HDLCFrameEncode();
  if (result)
  {
    return result;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t APPLIB_DIAG_PM_ParseReadVRegLevelResponse(uint64_t a1, unsigned int a2, _BYTE *a3, _WORD *a4)
{
  if (a2 < 3)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a3 = *(a1 + 3);
  *a4 = *(a1 + 4);
  return result;
}

uint64_t ETLHSICParseCommandHeader(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = ETLMaverickParseFACTORYResponseHeader(a1, a2, 48, a4, a5, a6, a7, a8);
  if (result)
  {
    v18 = *a2;
    if ((*(a1 + 8) - v18) <= 1)
    {
      v20 = (*(a1 + 8) - v18);
      _ETLDebugPrint("ETLHSICParseCommandHeader", "Need %u bytes, but only have %u\n", v12, v13, v14, v15, v16, v17, 2);
      return 0;
    }

    else
    {
      v19 = *(*a1 + v18);
      *a3 = v19;
      if (v19)
      {
        _ETLDebugPrint("ETLHSICParseCommandHeader", "Command status was %u\n", v12, v13, v14, v15, v16, v17, v19);
      }

      return 1;
    }
  }

  return result;
}

uint64_t ETLHSICCreateEchoCommand(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v9, v10, v11, v12, v13, v14, FreeSpace);
    return 0;
  }

  if ((HDLCFrameInject() & 1) == 0)
  {
    v22 = "ETLSubsysAddHeaderInternal";
    v23 = "Failed to inject\n";
LABEL_16:
    _ETLDebugPrint(v22, v23, v15, v16, v17, v18, v19, v20, v24);
    return 0;
  }

  if (HDLCFrameGetFreeSpace() <= 0xB)
  {
    v24 = 12;
    v22 = "ETLRequireFreeSpace";
    v23 = "Need %u bytes free space, but only have %u\n";
    goto LABEL_16;
  }

  if (!HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedInt() || !HDLCFrameInjectUnsignedInt() || !ETLRequireFreeSpace(a1, (a6 + 2)) || !HDLCFrameInjectUnsignedShort())
  {
    return 0;
  }

  return HDLCFrameInject();
}

uint64_t ETLHSICParseEchoCommand(unsigned int *a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
      if (BYTE1(v9) == 254)
      {
        v10 = HIWORD(v9);
        if (v10 == 48)
        {
          if (v8 - 4 <= 1)
          {
            _ETLDebugPrint("ETLHSICParseCommandHeader", "Need %u bytes, but only have %u\n", a3, a4, a5, a6, a7, a8, 2);
            return 0;
          }

          else
          {
            v11 = *(*a1 + 4);
            *a2 = v11;
            if (v11)
            {
              _ETLDebugPrint("ETLHSICParseCommandHeader", "Command status was %u\n", a3, a4, a5, a6, a7, a8, v11);
            }

            return 1;
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

uint64_t ETLUARTCreateSetInactivityTimerCommand()
{
  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v1, v2, v3, v4, v5, v6, FreeSpace);
    return 0;
  }

  else if (HDLCFrameInject())
  {
    if (HDLCFrameGetFreeSpace() <= 3)
    {
      _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", v13, v14, v15, v16, v17, v18, 4);
      return 0;
    }

    else
    {

      return HDLCFrameInjectUnsignedInt();
    }
  }

  else
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Failed to inject\n", v7, v8, v9, v10, v11, v12, v20);
    return 0;
  }
}

BOOL ETLUARTParseSetInactivityTimerResponse(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
        if (v10 == 44)
        {
          if (v8 == 4)
          {
            _ETLDebugPrint("ETLUARTParseSetInactivityTimerResponse", "Only have %u bytes, need %u\n", a3, a4, a5, a6, a7, a8, 0);
            return 0;
          }

          else
          {
            return *(*a1 + 4) == 1;
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

unint64_t ETLUARTSetInactivityTimer(void *a1, uint64_t a2, uint64_t a3)
{
  v40 = 0u;
  v41 = 0u;
  v42 = 0;
  memset(v38, 0, sizeof(v38));
  v39 = 0;
  if ((HDLCFrameCreateUplink() & 1) == 0)
  {
    v34 = "ETLUARTSetInactivityTimer";
    v35 = "Failed to create command frame\n";
LABEL_24:
    _ETLDebugPrint(v34, v35, v5, v6, v7, v8, v9, v10, v37);
    goto LABEL_25;
  }

  FreeSpace = HDLCFrameGetFreeSpace();
  if (FreeSpace < 4)
  {
    _ETLDebugPrint("ETLSubsysAddHeaderInternal", "Free space %u not enough for %zu\n", v12, v13, v14, v15, v16, v17, FreeSpace);
    goto LABEL_25;
  }

  v43 = 2948427;
  if ((HDLCFrameInject() & 1) == 0)
  {
    v34 = "ETLSubsysAddHeaderInternal";
    v35 = "Failed to inject\n";
    goto LABEL_24;
  }

  if (HDLCFrameGetFreeSpace() <= 3)
  {
    v37 = 4;
    v34 = "ETLRequireFreeSpace";
    v35 = "Need %u bytes free space, but only have %u\n";
    goto LABEL_24;
  }

  if (!HDLCFrameInjectUnsignedInt())
  {
LABEL_25:
    v18 = 0;
    goto LABEL_26;
  }

  v18 = malloc((2 * DWORD2(v40) + 32));
  if (!v18)
  {
    goto LABEL_26;
  }

  v19 = HDLCFrameEncode();
  if (!v19)
  {
    goto LABEL_27;
  }

  v20 = v19;
  v43 = -1431655766;
  if ((_ETLDebugFlags & 2) != 0)
  {
    off_2A18A5818(&str_3, 0, v18, v19);
  }

  if (!*a1)
  {
LABEL_27:
    free(v18);
    goto LABEL_25;
  }

  v21 = (*a1)(a1, v18, v20, &v43, 1, a3, 0);
  v22 = v43;
  free(v18);
  v18 = 0;
  if (v21 && v22 == v20)
  {
    LOBYTE(v43) = 75;
    if (!_ETLResponseRingBuffer)
    {
      TelephonyUtilRingBufferInitialize();
    }

    v18 = 0;
    if (ETLFindMatchingResponseUsingBuffer(a1, v38, &_ETLResponseRingBuffer, &v43, a3))
    {
      if (v43 == 75)
      {
        v43 = 0;
        v18 = 0;
        if (ETLMaverickParseBSPResponseHeader(v38, &v43, 44, v23, v24, v25, v26, v27))
        {
          if (DWORD2(v38[0]) != v43)
          {
            v18 = *(*&v38[0] + v43) == 1;
            goto LABEL_26;
          }

          _ETLDebugPrint("ETLUARTParseSetInactivityTimerResponse", "Only have %u bytes, need %u\n", v28, v29, v30, v31, v32, v33, 0);
          goto LABEL_25;
        }
      }
    }
  }

LABEL_26:
  HDLCFrameFree();
  HDLCFrameFree();
  return v18;
}

uint64_t ETLMESSAGEGetSubsystemIDRanges(void *a1, unsigned int a2, void *a3, unsigned int *a4, uint64_t a5)
{
  v28 = 0u;
  v29 = 0u;
  v30 = 0;
  memset(v26, 0, sizeof(v26));
  v27 = 0;
  *a4 = 0;
  if (!HDLCFrameCreateUplink())
  {
    goto LABEL_24;
  }

  LOWORD(v31) = 381;
  if (HDLCFrameGetFreeSpace() <= 1)
  {
    v25 = 2;
    v22 = "ETLRequireFreeSpace";
    v23 = "Need %u bytes free space, but only have %u\n";
    goto LABEL_23;
  }

  if (!HDLCFrameInject())
  {
    goto LABEL_24;
  }

  v16 = malloc((2 * DWORD2(v28) + 32));
  if (v16)
  {
    v17 = HDLCFrameEncode();
    if (!v17)
    {
      goto LABEL_26;
    }

    v18 = v17;
    v31 = -1431655766;
    if ((_ETLDebugFlags & 2) != 0)
    {
      off_2A18A5818(&str_3, 0, v16, v17);
    }

    if (!*a1)
    {
LABEL_26:
      free(v16);
      goto LABEL_24;
    }

    v19 = (*a1)(a1, v16, v18, &v31, 1, a5, 0);
    v20 = v31;
    free(v16);
    v16 = 0;
    if (v19)
    {
      if (v20 == v18)
      {
        LOBYTE(v31) = 125;
        if (!_ETLResponseRingBuffer)
        {
          TelephonyUtilRingBufferInitialize();
        }

        if (ETLFindMatchingResponseUsingBuffer(a1, v26, &_ETLResponseRingBuffer, &v31, a5))
        {
          if (DWORD2(v26[0]) >= 2)
          {
            if (*(*&v26[0] + 1) == 1)
            {
              if ((DWORD2(v26[0]) - 8) <= 0xFFFFFFF9)
              {
                if (*(*&v26[0] + 2) == 1)
                {
                  if (*(*&v26[0] + 4) < a2)
                  {
                    a2 = *(*&v26[0] + 4);
                  }

                  v21 = 4 * a2;
                  if (DWORD2(v26[0]) - 8 >= v21)
                  {
                    memcpy(a3, (*&v26[0] + 8), v21);
                    *a4 = a2;
                    v16 = 1;
                    goto LABEL_25;
                  }
                }

                else
                {
                  _ETLDebugPrint("ETLMESSAGEParseGetSubsystemIDRangesResponse", "Status was %u\n", v10, v11, v12, v13, v14, v15, *(*&v26[0] + 2));
                }
              }
            }

            else
            {
              _ETLDebugPrint("ETLMESSAGEParseGetSubsystemIDRangesResponse", "Response subcommand %u mismatches expected %u\n", v10, v11, v12, v13, v14, v15, *(*&v26[0] + 1));
            }
          }

LABEL_24:
          v16 = 0;
          goto LABEL_25;
        }

        v22 = "ETLMESSAGEFindMatchingResponse";
        v23 = "Failed to find matching response\n";
LABEL_23:
        _ETLDebugPrint(v22, v23, v10, v11, v12, v13, v14, v15, v25);
        goto LABEL_24;
      }
    }
  }

LABEL_25:
  HDLCFrameFree();
  HDLCFrameFree();
  return v16;
}

uint64_t ETLMESSAGEGetSubsystemMasksWithRetry(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  v9 = *a2;
  v10 = a2[1] - v9 + 1;
  v61 = *a2;
  *a6 = 0;
  if (a3)
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  if (a8)
  {
    v54 = v11;
    v55 = a7;
    v14 = a8 - 1;
    v57 = a8 - 1;
    while (1)
    {
      v60 = a4;
      __dst = a5;
      if (v10 >= 0x3D)
      {
        v15 = 61;
      }

      else
      {
        v15 = v10;
      }

      v62 = v9 + v15 - 1;
      _ETLDebugPrint("ETLMESSAGEGetSubsystemMasksWithRetry", "Partition Range to 0x%08X, max 0x%x\n", a3, a4, a5, a6, a7, a8, v9 | (v62 << 16));
      while (1)
      {
        v65 = 0u;
        v66 = 0u;
        v67 = 0;
        memset(v63, 0, sizeof(v63));
        v64 = 0;
        if (!HDLCFrameCreateUplink())
        {
          goto LABEL_46;
        }

        if (a3)
        {
          if (a3 != 1)
          {
            v51 = a3;
            v40 = "ETLMESSAGEGetSubcommandTypeForMaskType";
            v41 = "Invald mask type %u\n";
LABEL_45:
            _ETLDebugPrint(v40, v41, v16, v17, v18, v19, v20, v21, v51);
            goto LABEL_46;
          }

          v22 = 3;
        }

        else
        {
          v22 = 2;
        }

        LOBYTE(v68[0]) = 125;
        BYTE1(v68[0]) = v22;
        if (HDLCFrameGetFreeSpace() <= 1)
        {
          v39 = 2;
          goto LABEL_43;
        }

        if (!HDLCFrameInject())
        {
          goto LABEL_46;
        }

        if (HDLCFrameGetFreeSpace() <= 3)
        {
          v39 = 4;
LABEL_43:
          _ETLDebugPrint("ETLRequireFreeSpace", "Need %u bytes free space, but only have %u\n", v23, v24, v25, v26, v27, v28, v39);
LABEL_46:
          v33 = 0;
          LOBYTE(v29) = 0;
          goto LABEL_47;
        }

        if (!HDLCFrameInject())
        {
          goto LABEL_46;
        }

        v56 = v8;
        v29 = malloc((2 * DWORD2(v65) + 32));
        if (v29)
        {
          v30 = HDLCFrameEncode();
          if (!v30)
          {
            goto LABEL_52;
          }

          v31 = v30;
          v68[0] = -1431655766;
          if ((_ETLDebugFlags & 2) != 0)
          {
            off_2A18A5818(&str_3, 0, v29, v30);
          }

          if (*a1)
          {
            v32 = (*a1)(a1, v29, v31, v68, 1, v55, 0);
            v52 = v68[0];
            v53 = v32;
            free(v29);
            v33 = 0;
            if (v53)
            {
              LOBYTE(v29) = 0;
              v34 = v52 == v31;
              v8 = v56;
              if (v34)
              {
                LOBYTE(v68[0]) = 125;
                if (!_ETLResponseRingBuffer)
                {
                  TelephonyUtilRingBufferInitialize();
                }

                if (ETLFindMatchingResponseUsingBuffer(a1, v63, &_ETLResponseRingBuffer, v68, v55))
                {
                  if (DWORD2(v63[0]) >= 2)
                  {
                    if (v54 == *(*&v63[0] + 1))
                    {
                      if ((DWORD2(v63[0]) - 8) <= 0xFFFFFFF9)
                      {
                        if (*(*&v63[0] + 6) == 1)
                        {
                          v35 = *(*&v63[0] + 2);
                          v36 = *(*&v63[0] + 4);
                          if (v62 == v36 && v61 == v35)
                          {
                            v37 = v36 - v35;
                            if (v37 + 1 < v60)
                            {
                              v33 = v37 + 1;
                            }

                            else
                            {
                              v33 = v60;
                            }

                            v38 = 4 * v33;
                            if (DWORD2(v63[0]) - 8 >= v38)
                            {
                              memcpy(__dst, (*&v63[0] + 8), v38);
                              LOBYTE(v29) = 1;
                              goto LABEL_47;
                            }
                          }

                          else
                          {
                            _ETLDebugPrint("ETLMESSAGEParseGetSubsystemMasksResponse", "Returned range 0x%x didn't match requested 0x%x\n", v16, v17, v18, v19, v20, v21, v35 | (v36 << 16));
                          }
                        }

                        else
                        {
                          _ETLDebugPrint("ETLMESSAGEParseGetSubsystemMasksResponse", "Status was %u\n", v16, v17, v18, v19, v20, v21, *(*&v63[0] + 6));
                        }
                      }
                    }

                    else
                    {
                      _ETLDebugPrint("ETLMESSAGEParseGetSubsystemMasksResponse", "Response subcommand 0x%x mismatches expected 0x%x\n", v16, v17, v18, v19, v20, v21, *(*&v63[0] + 1));
                    }
                  }

                  goto LABEL_46;
                }

                v40 = "ETLMESSAGEFindMatchingResponse";
                v41 = "Failed to find matching response\n";
                goto LABEL_45;
              }
            }

            else
            {
              LOBYTE(v29) = 0;
              v8 = v56;
            }
          }

          else
          {
LABEL_52:
            free(v29);
            v33 = 0;
            LOBYTE(v29) = 0;
            v8 = v56;
          }
        }

        else
        {
          v33 = 0;
        }

LABEL_47:
        HDLCFrameFree();
        HDLCFrameFree();
        if (v29)
        {
          break;
        }

        if (!v14)
        {
          goto LABEL_66;
        }

        TelephonyUtilRingBufferReset();
        v48 = *(a1 + 24);
        if (v48)
        {
          v48(a1);
        }

        _ETLDebugPrint("ETLMESSAGEGetSubsystemMasksWithRetry", "Trying again\n", v42, v43, v44, v45, v46, v47, v51);
        --v14;
      }

      if (v33)
      {
        *v8 += v33;
        a5 = __dst + 4 * v33;
        a4 = v60 - v33;
        v10 -= v33;
        LOWORD(v9) = v61 + v33;
        v61 = v9;
        v14 = v57;
        if (a2[1] >= v9)
        {
          continue;
        }
      }

      return 1;
    }
  }

  if (v10 >= 0x3D)
  {
    v50 = 61;
  }

  else
  {
    v50 = v10;
  }

  _ETLDebugPrint("ETLMESSAGEGetSubsystemMasksWithRetry", "Partition Range to 0x%08X, max 0x%x\n", a3, a4, a5, a6, a7, a8, (v9 | ((v9 + v50) << 16)) - 0x10000);
LABEL_66:
  result = 0;
  *v8 = 0;
  return result;
}

uint64_t ETLMESSAGESetSubsystemRuntimeMasksWithRetry(void *a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  v9 = a2[1] - v8 + 1;
  v46 = *a2;
  if (!a5)
  {
    if (v9 >= 0x3D)
    {
      v9 = 61;
    }

    _ETLDebugPrint("ETLMESSAGESetSubsystemRuntimeMasksWithRetry", "Partition Range to 0x%08X, max 0x%x\n", a3, a4, a5, a6, a7, a8, (v8 | ((v8 + v9) << 16)) - 0x10000);
    return 0;
  }

  v44 = a4;
  v11 = a5 - 1;
  v40 = a5 - 1;
  do
  {
    v45 = a3;
    if (v9 >= 0x3D)
    {
      v12 = 61;
    }

    else
    {
      v12 = v9;
    }

    v42 = v12;
    v43 = v9;
    v47 = v8 + v12 - 1;
    _ETLDebugPrint("ETLMESSAGESetSubsystemRuntimeMasksWithRetry", "Partition Range to 0x%08X, max 0x%x\n", a3, a4, a5, a6, a7, a8, v8 | (v47 << 16));
    while (1)
    {
      v50 = 0u;
      v51 = 0u;
      v52 = 0;
      memset(v48, 0, sizeof(v48));
      v49 = 0;
      if (!HDLCFrameCreateUplink())
      {
        goto LABEL_16;
      }

      LOWORD(v53[0]) = 1149;
      if (HDLCFrameGetFreeSpace() <= 1)
      {
        v37 = 2;
LABEL_14:
        v20 = "ETLRequireFreeSpace";
        v21 = "Need %u bytes free space, but only have %u\n";
LABEL_15:
        _ETLDebugPrint(v20, v21, v13, v14, v15, v16, v17, v18, v37);
        goto LABEL_16;
      }

      if (!HDLCFrameInject())
      {
        goto LABEL_16;
      }

      v19 = 4 * (v47 - v46 + 1);
      if (HDLCFrameGetFreeSpace() < v19 + 4)
      {
        v37 = (v19 + 4);
        goto LABEL_14;
      }

      if (HDLCFrameInject())
      {
        if (HDLCFrameInjectUnsignedShort())
        {
          if (HDLCFrameInject())
          {
            v29 = malloc((2 * DWORD2(v50) + 32));
            if (v29)
            {
              v30 = v29;
              v31 = HDLCFrameEncode();
              if (!v31)
              {
                goto LABEL_37;
              }

              v32 = v31;
              v53[0] = -1431655766;
              if ((_ETLDebugFlags & 2) != 0)
              {
                off_2A18A5818(&str_3, 0, v30, v31);
              }

              if (!*a1)
              {
LABEL_37:
                free(v30);
                goto LABEL_16;
              }

              v33 = (*a1)(a1, v30, v32, v53, 1, v44, 0);
              v38 = v53[0];
              v39 = v33;
              free(v30);
              if (v39)
              {
                if (v38 == v32)
                {
                  LOBYTE(v53[0]) = 125;
                  if (!_ETLResponseRingBuffer)
                  {
                    TelephonyUtilRingBufferInitialize();
                  }

                  if ((ETLFindMatchingResponseUsingBuffer(a1, v48, &_ETLResponseRingBuffer, v53, v44) & 1) == 0)
                  {
                    v20 = "ETLMESSAGEFindMatchingResponse";
                    v21 = "Failed to find matching response\n";
                    goto LABEL_15;
                  }

                  if (DWORD2(v48[0]) >= 2)
                  {
                    break;
                  }
                }
              }
            }
          }
        }
      }

LABEL_16:
      HDLCFrameFree();
      HDLCFrameFree();
      if (!v11)
      {
        return 0;
      }

      TelephonyUtilRingBufferReset();
      v28 = a1[3];
      if (v28)
      {
        v28(a1);
      }

      _ETLDebugPrint("ETLMESSAGESetSubsystemRuntimeMasksWithRetry", "Trying again\n", v22, v23, v24, v25, v26, v27, v37);
      --v11;
    }

    if (*(*&v48[0] + 1) != 4)
    {
      _ETLDebugPrint("ETLMESSAGEParseSetSubsystemRunTimeMasksResponse", "Response subcommand 0x%x mismatches expected 0x%x\n", v13, v14, v15, v16, v17, v18, *(*&v48[0] + 1));
      goto LABEL_16;
    }

    if ((DWORD2(v48[0]) - 8) > 0xFFFFFFF9)
    {
      goto LABEL_16;
    }

    if (*(*&v48[0] + 6) != 1)
    {
      _ETLDebugPrint("ETLMESSAGEParseSetSubsystemRunTimeMasksResponse", "Status was %u\n", v13, v14, v15, v16, v17, v18, *(*&v48[0] + 6));
      goto LABEL_16;
    }

    v34 = *(*&v48[0] + 2);
    v35 = *(*&v48[0] + 4);
    if (v47 != v35 || v46 != v34)
    {
      _ETLDebugPrint("ETLMESSAGEParseSetSubsystemRunTimeMasksResponse", "Returned range 0x%x didn't match requested 0x%x\n", v13, v14, v15, v16, v17, v18, v34 | (v35 << 16));
    }

    HDLCFrameFree();
    HDLCFrameFree();
    if (!v43)
    {
      return 1;
    }

    a3 = v45 + 4 * v42;
    v9 = v43 - v42;
    LOWORD(v8) = v46 + v42;
    v46 = v8;
    result = 1;
    v11 = v40;
  }

  while (a2[1] >= v8);
  return result;
}

uint64_t ETLMESSAGESetAllSubsystemRunTimeMasks(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _ETLDebugPrint("ETLMESSAGESetAllSubsystemRunTimeMasks", "to 0x%x\n", a3, a4, a5, a6, a7, a8, a2);
  memset(v32, 0, sizeof(v32));
  v33 = 0;
  memset(v30, 0, sizeof(v30));
  v31 = 0;
  if (!HDLCFrameCreateUplink())
  {
    goto LABEL_19;
  }

  v34 = 1405;
  if (HDLCFrameGetFreeSpace() <= 1)
  {
    v19 = 2;
LABEL_17:
    v29 = v19;
    v20 = "ETLRequireFreeSpace";
    v21 = "Need %u bytes free space, but only have %u\n";
LABEL_18:
    _ETLDebugPrint(v20, v21, v11, v12, v13, v14, v15, v16, v29);
    goto LABEL_19;
  }

  if (!HDLCFrameInject())
  {
    goto LABEL_19;
  }

  if (HDLCFrameGetFreeSpace() <= 5)
  {
    v19 = 6;
    goto LABEL_17;
  }

  if (!HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedInt() || !ETLSendCommand(a1, v32, a3))
  {
    goto LABEL_19;
  }

  LOBYTE(v34) = 125;
  if ((ETLFindMatchingResponse(a1, v30, &v34, a3) & 1) == 0)
  {
    v20 = "ETLMESSAGEFindMatchingResponse";
    v21 = "Failed to find matching response\n";
    goto LABEL_18;
  }

  if (DWORD2(v30[0]) < 2)
  {
    goto LABEL_19;
  }

  if (*(*&v30[0] + 1) != 5)
  {
    _ETLDebugPrint("ETLMESSAGEParseSetAllSubsystemRunTimeMasksResponse", "Response subcommand 0x%x mismatches expected 0x%x\n", v11, v12, v13, v14, v15, v16, *(*&v30[0] + 1));
    goto LABEL_19;
  }

  if ((DWORD2(v30[0]) - 8) > 0xFFFFFFF9)
  {
LABEL_19:
    v18 = 0;
    HDLCFrameFree();
    HDLCFrameFree();
    _ETLDebugPrint("ETLMESSAGESetAllSubsystemRunTimeMasks", "Failed to set masks to 0x%x\n", v22, v23, v24, v25, v26, v27, a2);
    return v18;
  }

  if (*(*&v30[0] + 2) != 1)
  {
    _ETLDebugPrint("ETLMESSAGEParseSetAllSubsystemRunTimeMasksResponse", "Status was %u\n", v11, v12, v13, v14, v15, v16, *(*&v30[0] + 2));
    goto LABEL_19;
  }

  v17 = *(*&v30[0] + 4);
  if (v17 != a2)
  {
    _ETLDebugPrint("ETLMESSAGEParseSetAllSubsystemRunTimeMasksResponse", "Returned mask %u doesn't match requested %u\n", v11, v12, v13, v14, v15, v16, v17);
  }

  v18 = 1;
  HDLCFrameFree();
  HDLCFrameFree();
  return v18;
}

uint64_t ETLMESSAGESetFlags(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a2, _DWORD *a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a4 = 0;
  _ETLDebugPrint("ETLMESSAGESetFlags", "Setting enabled to 0x%x\n", a3, a4, a5, a6, a7, a8, a2);
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  if (!HDLCFrameCreateUplink())
  {
    goto LABEL_19;
  }

  v29 = 1661;
  if (HDLCFrameGetFreeSpace() <= 1)
  {
    v20 = 2;
LABEL_17:
    v24 = v20;
    v21 = "ETLRequireFreeSpace";
    v22 = "Need %u bytes free space, but only have %u\n";
LABEL_18:
    _ETLDebugPrint(v21, v22, v12, v13, v14, v15, v16, v17, v24);
    goto LABEL_19;
  }

  if (!HDLCFrameInject())
  {
    goto LABEL_19;
  }

  if (HDLCFrameGetFreeSpace() <= 5)
  {
    v20 = 6;
    goto LABEL_17;
  }

  if (!HDLCFrameInjectUnsignedShort() || !HDLCFrameInjectUnsignedInt() || !ETLSendCommand(a1, v27, a5))
  {
    goto LABEL_19;
  }

  LOBYTE(v29) = 125;
  if ((ETLFindMatchingResponse(a1, v25, &v29, a5) & 1) == 0)
  {
    v21 = "ETLMESSAGEFindMatchingResponse";
    v22 = "Failed to find matching response\n";
    goto LABEL_18;
  }

  *a4 = 0;
  v18 = DWORD2(v25[0]);
  if (DWORD2(v25[0]) < 2)
  {
    goto LABEL_19;
  }

  if (*(*&v25[0] + 1) != 6)
  {
    _ETLDebugPrint("ETLMESSAGEParseSetFlagsResponse", "Response subcommand 0x%x mismatches expected 0x%x\n", v12, v13, v14, v15, v16, v17, *(*&v25[0] + 1));
    goto LABEL_19;
  }

  if ((DWORD2(v25[0]) - 8) > 0xFFFFFFF9)
  {
LABEL_19:
    v19 = 0;
    goto LABEL_20;
  }

  if (*(*&v25[0] + 2) != 1)
  {
    _ETLDebugPrint("ETLMESSAGEParseSetFlagsResponse", "Status was %u\n", v12, v13, v14, v15, v16, v17, *(*&v25[0] + 2));
    goto LABEL_19;
  }

  *a3 = *(*&v25[0] + 4);
  if ((v18 - 12) <= 0xFFFFFFFB)
  {
    *a4 = 0;
  }

  v19 = 1;
LABEL_20:
  HDLCFrameFree();
  HDLCFrameFree();
  return v19;
}

uint64_t ETLMESSAGESetEnabled(uint64_t (**a1)(void, void *, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v11 = 0;
  LODWORD(result) = ETLMESSAGESetFlags(a1, a2, &v11, &v10, a3, a6, a7, a8);
  if (v11 == v8)
  {
    return result;
  }

  else
  {
    return 0;
  }
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