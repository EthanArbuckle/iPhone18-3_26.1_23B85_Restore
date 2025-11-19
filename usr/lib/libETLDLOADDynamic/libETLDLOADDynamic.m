uint64_t ETLDLOADCommandCreateMemoryDebugReadRequestPrivate(uint64_t a1, int a2)
{
  *(a1 + 40) = a2;
  if (!HDLCFrameCreateUplink() || !HDLCFrameInjectUnsignedChar() || !HDLCFrameInjectUnsignedInt())
  {
    return 0;
  }

  return HDLCFrameInjectUnsignedShort();
}

uint64_t ETLDLOADCommandSend(uint64_t a1, uint64_t (**a2)(void, uint64_t, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a3)
{
  result = HDLCFrameEncodeAndCache();
  if (result)
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 32);
    v9 = -1431655766;
    if (*a2)
    {
      result = (*a2)(a2, v7, v8, &v9, 1, a3, 0);
      if (result)
      {
        return result;
      }

      if (*a2)
      {
        result = (*a2)(a2, v7, v8, &v9, 1, a3, 0);
        if (result)
        {
          return result;
        }
      }

      if (*a2)
      {
        return (*a2)(a2, v7, v8, &v9, 1, a3, 0);
      }
    }

    return 0;
  }

  return result;
}

uint64_t ETLDLOADCommandReceiveSmallWithFlags(unsigned __int8 **a1)
{
  v6 = *MEMORY[0x29EDCA608];
  memset(__b, 170, sizeof(__b));
  TelephonyUtilRingBufferInitialize();
  result = ETLFrameReadFromTransport();
  if (result)
  {
    if (!*(a1 + 2))
    {
      HDLCFrameFree();
      result = 0;
      v4 = *MEMORY[0x29EDCA608];
      return result;
    }

    *(a1 + 10) = **a1;
    result = 1;
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ETLDLOADCommandReceiveWithBufferAndFlags(unsigned __int8 **a1)
{
  result = ETLFrameReadFromTransport();
  if (result)
  {
    if (*(a1 + 2))
    {
      *(a1 + 10) = **a1;
      return 1;
    }

    else
    {
      HDLCFrameFree();
      return 0;
    }
  }

  return result;
}

uint64_t ETLDLOADCommandCreateParametersRequest(uint64_t a1)
{
  *(a1 + 40) = 7;
  result = HDLCFrameCreateUplink();
  if (result)
  {

    return HDLCFrameInjectUnsignedChar();
  }

  return result;
}

uint64_t ETLDLOADCommandParseParametersResponse(_DWORD *a1, uint64_t a2)
{
  *(a2 + 3) = 0;
  *a2 = 0;
  if (a1[10] == 8)
  {
    if (a1[2] < 8u)
    {
      return 0;
    }

    else
    {
      v2 = *(*a1 + 1);
      *(a2 + 3) = *(*a1 + 4);
      *a2 = v2;
      *(a2 + 2) = bswap32(HIWORD(v2)) >> 16;
      return 1;
    }
  }

  else
  {
    v4 = a1[10];
    _ETLDebugPrint();
    return 0;
  }
}

uint64_t ETLDLOADCommandCreateVersionRequest(uint64_t a1)
{
  *(a1 + 40) = 12;
  result = HDLCFrameCreateUplink();
  if (result)
  {

    return HDLCFrameInjectUnsignedChar();
  }

  return result;
}

uint64_t ETLDLOADCommandParseVersionResponse(_DWORD *a1, _BYTE *__dst, int a3)
{
  *__dst = 0;
  if (a1[10] == 13)
  {
    v3 = a1[2];
    if (v3 < 2)
    {
      v10 = a1[2];
      _ETLDebugPrint();
      return 0;
    }

    else
    {
      v4 = *(*a1 + 1);
      if (v3 + 2 >= v4)
      {
        if (a3 - 1 >= v4)
        {
          v6 = *(*a1 + 1);
        }

        else
        {
          v6 = (a3 - 1);
        }

        memcpy(__dst, (*a1 + 2), v6);
        __dst[v6] = 0;
        return 1;
      }

      else
      {
        v8 = *(*a1 + 1);
        _ETLDebugPrint();
        return 0;
      }
    }
  }

  else
  {
    v9 = a1[10];
    _ETLDebugPrint();
    return 0;
  }
}

uint64_t ETLDLOADCommandCreateSerialNumberRequest(capabilities::radio *a1)
{
  capabilities::radio::mav25Plus(a1);
  *(a1 + 10) = 22;
  if (!HDLCFrameCreateUplink() || !HDLCFrameInjectUnsignedChar())
  {
    return 0;
  }

  return HDLCFrameInjectUnsignedChar();
}

uint64_t ETLDLOADCommandParseSerialNumberResponse(_DWORD *a1, void *__dst, uint64_t a3, unsigned int *a4)
{
  *a4 = 0;
  if (a1[10] != 22)
  {
    v9 = a1[10];
    _ETLDebugPrint();
    return 0;
  }

  v4 = a1[2];
  if (v4 < 3)
  {
    return 0;
  }

  v5 = *a1;
  v6 = v4 - 2;
  v7 = *(*a1 + 1);
  *a4 = v7;
  if (8 * v6 >= v7)
  {
    v6 = (v7 + 7) >> 3;
  }

  else
  {
    *a4 = 8 * v6;
  }

  memcpy(__dst, (v5 + 2), v6);
  return 1;
}

uint64_t ETLDLOADCommandCreateChipIDRequest(uint64_t a1)
{
  *(a1 + 40) = 23;
  result = HDLCFrameCreateUplink();
  if (result)
  {

    return HDLCFrameInjectUnsignedChar();
  }

  return result;
}

uint64_t ETLDLOADCommandParseChipIDResponse(_DWORD *a1, _DWORD *a2, _DWORD *a3)
{
  if (a1[10] == 23)
  {
    if (a1[2] < 3u)
    {
      return 0;
    }

    else
    {
      v3 = *a1;
      *a2 = *(*a1 + 3);
      *a3 = *(v3 + 7);
      return 1;
    }
  }

  else
  {
    v5 = a1[10];
    _ETLDebugPrint();
    return 0;
  }
}

uint64_t ETLDLOADCommandCreatePkHashRequest(uint64_t a1)
{
  *(a1 + 40) = 24;
  result = HDLCFrameCreateUplink();
  if (result)
  {

    return HDLCFrameInjectUnsignedChar();
  }

  return result;
}

uint64_t ETLDLOADCommandParsePkHashResponse(_DWORD *a1, void *__dst, uint64_t a3, unsigned int *a4)
{
  *a4 = 0;
  if (a1[10] != 24)
  {
    v9 = a1[10];
    _ETLDebugPrint();
    return 0;
  }

  v4 = a1[2];
  if (v4 < 3)
  {
    return 0;
  }

  v5 = *a1;
  v6 = v4 - 2;
  v7 = __rev16(*(*a1 + 1));
  *a4 = v7;
  if (8 * v6 >= v7)
  {
    v6 = (v7 + 7) >> 3;
  }

  else
  {
    *a4 = 8 * v6;
  }

  memcpy(__dst, (v5 + 3), v6);
  return 1;
}

uint64_t ETLDLOADCommandCreateWriteRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 40) = 15;
  if (!HDLCFrameCreateUplink() || !HDLCFrameInjectUnsignedChar() || !HDLCFrameInjectUnsignedInt() || !HDLCFrameInjectUnsignedShort())
  {
    return 0;
  }

  return MEMORY[0x2A1C6D698](a1, a4, a3);
}

uint64_t ETLDLOADCommandParseACKNAKResponse(_DWORD *a1, _BYTE *a2, _WORD *a3)
{
  if (a1[10] == 2)
  {
    LOWORD(v4) = 0;
    *a2 = 1;
LABEL_3:
    *a3 = v4;
    return 1;
  }

  v7 = a3;
  v8 = a1[10];
  _ETLDebugPrint();
  if (a1[10] != 3)
  {
    v9 = a1[10];
    _ETLDebugPrint();
    return 0;
  }

  result = 0;
  *a2 = 0;
  if (a1[2] >= 3u)
  {
    v4 = bswap32(*(*a1 + 1)) >> 16;
    a3 = v7;
    goto LABEL_3;
  }

  return result;
}

uint64_t ETLDLOADCommandCreateGoRequest(uint64_t a1)
{
  *(a1 + 40) = 5;
  if (!HDLCFrameCreateUplink() || !HDLCFrameInjectUnsignedChar() || !HDLCFrameInjectUnsignedShort())
  {
    return 0;
  }

  return HDLCFrameInjectUnsignedShort();
}

const char *ETLDLOADGetNAKReasonAsString(unsigned int a1)
{
  if (a1 > 0xF)
  {
    return "Unrecognized reason";
  }

  else
  {
    return (&off_29EE6DD00)[a1];
  }
}

uint64_t ETLDLOADCommandPowerCreateResetRequest(uint64_t a1)
{
  *(a1 + 40) = 10;
  result = HDLCFrameCreateUplink();
  if (result)
  {

    return HDLCFrameInjectUnsignedChar();
  }

  return result;
}

uint64_t ETLDLOADCommandPowerCreatePowerDownRequest(uint64_t a1)
{
  *(a1 + 40) = 14;
  result = HDLCFrameCreateUplink();
  if (result)
  {

    return HDLCFrameInjectUnsignedChar();
  }

  return result;
}

uint64_t ETLDLOADCommandCreateMemoryDebugInfoRequest(uint64_t a1)
{
  *(a1 + 40) = 16;
  result = HDLCFrameCreateUplink();
  if (result)
  {

    return HDLCFrameInjectUnsignedChar();
  }

  return result;
}

uint64_t ETLDLOADCommandParseMemoryDebugInfoResponse(_DWORD *a1, void *__dst)
{
  __dst[64] = 0;
  if (a1[10] != 17)
  {
    v9 = a1[10];
LABEL_11:
    _ETLDebugPrint();
    return 0;
  }

  v2 = a1[2];
  v3 = v2 - 3;
  if (v2 < 3)
  {
    v10 = a1[2];
    goto LABEL_11;
  }

  v5 = *a1;
  v6 = bswap32(*(*a1 + 1)) >> 16;
  if (v3 < v6)
  {
    _ETLDebugPrint();
    v6 = v3;
  }

  if (v6 >= 0x200)
  {
    v7 = 512;
  }

  else
  {
    v7 = v6;
  }

  memcpy(__dst, (v5 + 3), v7);
  *(__dst + 128) = v7;
  return 1;
}

uint64_t ETLDLOADCommandCopyDebugDataField(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *a3 = 0;
  *(a2 + 60) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v3 = *(a1 + 516);
  v4 = *(a1 + 512);
  if (v4 < v3)
  {
    v19 = *(a1 + 516);
    v20 = *(a1 + 512);
LABEL_3:
    _ETLDebugPrint();
    return 0;
  }

  v6 = v4 - v3;
  if (v4 - v3 < 0xA)
  {
    if (v4 != v3)
    {
      goto LABEL_3;
    }

    result = 1;
    *a3 = 1;
  }

  else
  {
    v7 = (a1 + v3);
    *a2 = *v7;
    *(a2 + 4) = bswap32(*(v7 + 1));
    *(a2 + 8) = bswap32(*(v7 + 5));
    v8 = v7 + 9;
    v9 = v6 - 9;
    if ((v6 - 9) >= 0x20)
    {
      v10 = 32;
    }

    else
    {
      v10 = v9;
    }

    v13 = __strlcpy_chk();
    if (v13 + 1 < v10)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = v10;
    }

    v15 = v9 - v14;
    if (v15 >= 0x20)
    {
      v16 = 32;
    }

    else
    {
      v16 = v15;
    }

    v17 = strlcpy((a2 + 44), &v8[v14], v16);
    if (v17 + 1 < v16)
    {
      v18 = v17 + 1;
    }

    else
    {
      v18 = v16;
    }

    *(a1 + 516) = *(a1 + 516) + v6 - v15 + v18;
    return 1;
  }

  return result;
}

uint64_t ETLDLOADCommandCreateMemoryDebugReadRequest(uint64_t a1)
{
  *(a1 + 40) = 18;
  if (!HDLCFrameCreateUplink() || !HDLCFrameInjectUnsignedChar() || !HDLCFrameInjectUnsignedInt())
  {
    return 0;
  }

  return HDLCFrameInjectUnsignedShort();
}

uint64_t ETLDLOADCommandParseMemoryDebugReadResponse(_DWORD *a1, _DWORD *a2, _WORD *a3, void *a4)
{
  if (a1[10] == 19)
  {
    v4 = a1[2];
    v5 = v4 - 7;
    if (v4 < 7)
    {
      v10 = a1[2];
      _ETLDebugPrint();
      return 0;
    }

    else
    {
      v6 = *a1;
      *a2 = bswap32(*(*a1 + 1));
      v7 = bswap32(*(v6 + 5)) >> 16;
      *a3 = v7;
      if (v5 >= v7)
      {
        *a4 = v6 + 7;
        return 1;
      }

      else
      {
        _ETLDebugPrint();
        return 0;
      }
    }
  }

  else
  {
    v9 = a1[10];
    _ETLDebugPrint();
    return 0;
  }
}

uint64_t ETLDLOADCommandCreateMemoryDebugFastReadRequest(uint64_t a1)
{
  *(a1 + 40) = 32;
  if (!HDLCFrameCreateUplink() || !HDLCFrameInjectUnsignedChar() || !HDLCFrameInjectUnsignedInt())
  {
    return 0;
  }

  return HDLCFrameInjectUnsignedShort();
}

uint64_t ETLDLOADCommandReadMemoryDebugFastReadResponse(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    return 0;
  }

  result = v3();
  if (result)
  {
    if (a3 == -1431655766)
    {
      return 1;
    }

    else
    {
      _ETLDebugPrint();
      return 0;
    }
  }

  return result;
}

uint64_t ETLDLOADDetectProtocolVersion(void *a1, _BYTE *a2, int *a3)
{
  v18 = *MEMORY[0x29EDCA608];
  if (!a2 || !a3 || (*&v6 = 0xAAAAAAAAAAAAAAAALL, *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL, v16 = v6, !HDLCFrameCreateUplink()) || !HDLCFrameInjectUnsignedChar())
  {
    _ETLDebugPrint();
LABEL_22:
    result = 0;
    v11 = *MEMORY[0x29EDCA608];
    return result;
  }

  if ((HDLCFrameEncodeAndCache() & 1) == 0)
  {
    goto LABEL_21;
  }

  __b[0] = -1431655766;
  if (!*a1)
  {
    goto LABEL_21;
  }

  if ((*a1)(a1, 0xAAAAAAAAAAAAAAAALL, 2863311530, __b, 1, 1000, 0))
  {
LABEL_10:
    HDLCFrameFree();
    goto LABEL_11;
  }

  if (!*a1)
  {
    goto LABEL_21;
  }

  if ((*a1)(a1, 0xAAAAAAAAAAAAAAAALL, 2863311530, __b, 1, 1000, 0))
  {
    goto LABEL_10;
  }

  if (!*a1)
  {
LABEL_21:
    HDLCFrameFree();
    goto LABEL_22;
  }

  v9 = (*a1)(a1, 0xAAAAAAAAAAAAAAAALL, 2863311530, __b, 1, 1000, 0);
  HDLCFrameFree();
  if (!v9)
  {
    goto LABEL_22;
  }

LABEL_11:
  memset(__b, 170, sizeof(__b));
  TelephonyUtilRingBufferInitialize();
  if (!ETLFrameReadFromTransport())
  {
LABEL_24:
    _ETLDebugPrint();
    goto LABEL_22;
  }

  if (!DWORD2(v16))
  {
    HDLCFrameFree();
    goto LABEL_24;
  }

  v7 = *v16;
  v8 = *a3;
  *a2 = 0;
  if (v7 != 13 || DWORD2(v16) == 1)
  {
    goto LABEL_25;
  }

  v12 = *(v16 + 1);
  if (DWORD2(v16) + 2 < v12)
  {
    v15 = *(v16 + 1);
LABEL_25:
    _ETLDebugPrint();
    HDLCFrameFree();
    _ETLDebugPrintBinary();
    goto LABEL_22;
  }

  if (v8 - 1 >= v12)
  {
    v13 = *(v16 + 1);
  }

  else
  {
    v13 = (v8 - 1);
  }

  memcpy(a2, (v16 + 2), v13);
  a2[v13] = 0;
  HDLCFrameFree();
  result = 1;
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ETLDLOADCommandDumpCommand(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a2 + 2);
  return _ETLDebugPrintBinary();
}

uint64_t ETLDLOADCreateCommandForSend(uint64_t a1, int a2)
{
  *(a1 + 40) = a2;
  result = HDLCFrameCreateUplink();
  if (result)
  {

    return HDLCFrameInjectUnsignedChar();
  }

  return result;
}

BOOL ETLDLOADExpectCommandType(uint64_t a1, int a2)
{
  v3 = *(a1 + 40);
  if (v3 != a2)
  {
    v5 = *(a1 + 40);
    _ETLDebugPrint();
  }

  return v3 == a2;
}

uint64_t ETLDLOADGetProtocolVersion(capabilities::radio *a1)
{
  if (capabilities::radio::mav25Plus(a1))
  {
    return 3;
  }

  else
  {
    return 2;
  }
}