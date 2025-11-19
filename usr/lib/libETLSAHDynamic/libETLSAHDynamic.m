const char *ETLSAHModeAsString(int a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return "ETLSAHModePending";
    }

    if (a1 == 1)
    {
      return "ETLSAHModeComplete";
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return "ETLSAHModeMemoryDebug";
      case 3:
        return "ETLSAHModeCommand";
      case 256:
        return "ETLSAHModeMaverick";
    }
  }

  return "Unknown";
}

const char *ETLSAHExecutionCommandIDAsString(unsigned int a1)
{
  if (a1 > 9)
  {
    return "Unknown";
  }

  else
  {
    return (&off_29EE6E088)[a1];
  }
}

uint64_t ETLSAHCommandSend(uint64_t (**a1)(void), uint64_t a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v6 = -1431655766;
  v4 = *(a2 + 4);
  result = v2();
  if (result)
  {
    return v6 == *(a2 + 4);
  }

  return result;
}

uint64_t ETLSAHSendReadData(uint64_t (**a1)(void), uint64_t a2, int a3)
{
  if (!*a1)
  {
    return 0;
  }

  LODWORD(result) = (*a1)();
  if (a3 == -1431655766)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t ETLSAHCommandReceive(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int a4)
{
  if (a4 < 8)
  {
    return 0;
  }

  v7 = a4 - 8;
  while (1)
  {
    Size = TelephonyUtilRingBufferGetSize();
    Remaining = TelephonyUtilRingBufferGetLinearReadRemaining();
    if (Size >= 8)
    {
      break;
    }

LABEL_4:
    if (TelephonyUtilRingBufferInsertTransport() <= 0)
    {
      return 0;
    }
  }

  if (Remaining <= 7)
  {
    result = TelephonyUtilRingBufferLinearize();
    if (!result)
    {
      return result;
    }
  }

  v10 = (*a2 + *(a2 + 16));
  v11 = v10[1];
  *a3 = *v10;
  a3[1] = v11;
  if (v11 >= 8 && v7 >= v11)
  {
    if (v11 <= Size)
    {
      memcpy(a3 + 2, v10 + 2, (v11 - 8));
      TelephonyUtilRingBufferSkip();
      return 1;
    }

    goto LABEL_4;
  }

  _ETLDebugPrint();
  _ETLDebugPrintBinary();
  return 0;
}

uint64_t ETLSAHCommandExecute(_DWORD *a1, unsigned int a2, void *a3, uint64_t a4, int a5, uint64_t a6, unint64_t a7, unint64_t *a8, unsigned int a9)
{
  *a8 = 0;
  if (a2 < 0xC || !a1)
  {
    _ETLDebugPrint();
LABEL_10:
    _ETLDebugPrint();
    return 2;
  }

  *a1 = 0xC0000000DLL;
  a1[2] = a5;
  v11 = *a3;
  if (!*a3)
  {
    goto LABEL_25;
  }

  v24 = -1431655766;
  if ((v11(a3, a1, 12, &v24, 1, a9, 0) & 1) == 0 || v24 != a1[1] || (ETLSAHCommandReceive(a3, a4, a1, a2) & 1) == 0)
  {
    goto LABEL_25;
  }

  if ((a1[1] & 0xFFFFFFF8) == 8)
  {
    goto LABEL_16;
  }

  if (*a1 != 14)
  {
    _ETLDebugPrint();
    _ETLDebugPrintBinary();
LABEL_16:
    _ETLDebugPrint();
    goto LABEL_10;
  }

  v19 = a1[2];
  v20 = a1[3];
  *a8 = v20;
  if (v19 != a5)
  {
    _ETLDebugPrint();
    return 5;
  }

  if (v20 > a7)
  {
    _ETLDebugPrint();
    return 3;
  }

  *a1 = 0xC0000000FLL;
  a1[2] = a5;
  v21 = *a3;
  if (*a3)
  {
    v25 = -1431655766;
    if ((v21(a3, a1, 12, &v25, 1, a9, 0) & 1) != 0 && v25 == a1[1])
    {
      v23 = 0;
      v22 = a3[1];
      if (v22)
      {
        if (v22(a3, a6, *a8, &v23, 1, a9, 0) && *a8 == v23)
        {
          return 0;
        }
      }
    }
  }

LABEL_25:
  _ETLDebugPrint();
  return 4;
}

uint64_t ETLSAHCommandExecuteCreate(uint64_t a1, int a2, unint64_t a3)
{
  if (a3 > 0xB && a1)
  {
    *a1 = 0xC0000000DLL;
    *(a1 + 8) = a2;
    return 1;
  }

  else
  {
    _ETLDebugPrint();
    return 0;
  }
}

uint64_t ETLSAHCommandExecuteParseResponse(unsigned int *a1, _DWORD *a2, void *a3)
{
  if (!a1 || !a2 || !a3 || (a1[1] & 0xFFFFFFF8) == 8)
  {
    goto LABEL_5;
  }

  if (*a1 != 14)
  {
    v5 = *a1;
    _ETLDebugPrint();
    _ETLDebugPrintBinary();
LABEL_5:
    _ETLDebugPrint();
    return 0;
  }

  v4 = a1[3];
  *a2 = a1[2];
  *a3 = v4;
  return 1;
}

uint64_t ETLSAHCommandExecuteDataCreate(uint64_t a1, int a2, unint64_t a3)
{
  if (a3 > 0xB && a1)
  {
    *a1 = 0xC0000000FLL;
    *(a1 + 8) = a2;
    return 1;
  }

  else
  {
    _ETLDebugPrint();
    return 0;
  }
}

uint64_t ETLSAHCommandParseHello(unsigned int *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, void *a6, _DWORD *a7)
{
  v7 = a1[1];
  if (*a1 != 1)
  {
    v9 = *a1;
    _ETLDebugPrint();
    _ETLDebugPrintBinary();
    return 0;
  }

  if (v7 - 24 > 0xFFFFFFEF)
  {
    return 0;
  }

  *a2 = a1[2];
  *a3 = a1[3];
  *a4 = a1[4];
  *a5 = a1[5];
  if (a6)
  {
    *a6 = a1 + 6;
  }

  if (a7)
  {
    *a7 = v7 - 24;
  }

  return 1;
}

BOOL ETLSAHCommandCreateHelloResponse(uint64_t a1, unsigned int a2, int a3, int a4, int a5, int a6)
{
  if (a2 >= 0x30)
  {
    *a1 = 0x3000000002;
    *(a1 + 8) = a3;
    *(a1 + 12) = a4;
    *(a1 + 16) = a5;
    *(a1 + 20) = a6;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
  }

  return a2 > 0x2F;
}

uint64_t ETLSAHCommandCreateHelloResponseExt(uint64_t a1, unsigned int a2, int a3, int a4, int a5, int a6, void *__src, size_t __n)
{
  if (a2 < 0x30)
  {
    return 0;
  }

  *a1 = 0x3000000002;
  *(a1 + 8) = a3;
  *(a1 + 12) = a4;
  *(a1 + 16) = a5;
  *(a1 + 20) = a6;
  if (__src)
  {
    if (__n <= 0x18)
    {
      memcpy((a1 + 24), __src, __n);
      return 1;
    }

    return 0;
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return 1;
}

uint64_t ETLSAHCommandParseMemoryDebug(unsigned int *a1, _DWORD *a2, _DWORD *a3)
{
  if (*a1 == 9)
  {
    if ((a1[1] & 0xFFFFFFF8) == 8)
    {
      return 0;
    }

    else
    {
      *a2 = a1[2];
      *a3 = a1[3];
      return 1;
    }
  }

  else
  {
    v4 = *a1;
    _ETLDebugPrint();
    _ETLDebugPrintBinary();
    return 0;
  }
}

uint64_t ETLSAHCommandParseMemoryDebug64Bit(unsigned int *a1, void *a2, void *a3)
{
  if (*a1 == 16)
  {
    if (a1[1] - 24 <= 0xFFFFFFEF)
    {
      *a2 = *(a1 + 1);
      *a3 = *(a1 + 2);
      return 1;
    }
  }

  else
  {
    v4 = *a1;
    _ETLDebugPrint();
    _ETLDebugPrintBinary();
  }

  return 0;
}

BOOL ETLSAHCommandCreateMemoryRead(uint64_t a1, unsigned int a2, int a3, int a4)
{
  if (a2 >= 0x10)
  {
    *a1 = 0x100000000ALL;
    *(a1 + 8) = a3;
    *(a1 + 12) = a4;
  }

  return a2 > 0xF;
}

BOOL ETLSAHCommandCreateMemoryRead64Bit(uint64_t a1, unsigned int a2, int a3, int a4)
{
  if (a2 >= 0x10)
  {
    *a1 = 0x100000000ALL;
    *(a1 + 8) = a3;
    *(a1 + 12) = a4;
  }

  return a2 > 0xF;
}

uint64_t ETLSAHGetDebugRecordCount(void *a1, uint64_t a2, unsigned int *a3, unsigned int a4, unsigned int *a5, uint64_t a6)
{
  if (!ETLSAHCommandReceive(a1, a2, a3, a4))
  {
    goto LABEL_10;
  }

  if (*a3 != 9)
  {
    v15 = *a3;
    _ETLDebugPrint();
    _ETLDebugPrintBinary();
    goto LABEL_12;
  }

  if ((a3[1] & 0xFFFFFFF8) == 8)
  {
LABEL_12:
    v13 = 0;
LABEL_13:
    *a5 = 0;
    _ETLDebugPrint();
    return v13;
  }

  v11 = a3[3];
  if (!v11)
  {
    v13 = 1;
    goto LABEL_13;
  }

  if (a4 < 0x10 || (*a3 = 0x100000000ALL, (v12 = *a1) == 0) || (v16 = -1431655766, (v12(a1, a3, 16, &v16, 1, a6, 0) & 1) == 0) || v16 != a3[1])
  {
LABEL_10:
    _ETLDebugPrint();
    return 0;
  }

  *a5 = v11 / 0x34;
  return 1;
}

uint64_t ETLSAHGetDebugRecordCount64Bit(void *a1, uint64_t a2, unsigned int *a3, unsigned int a4, unint64_t *a5, uint64_t a6)
{
  if (!ETLSAHCommandReceive(a1, a2, a3, a4))
  {
    goto LABEL_10;
  }

  if (*a3 != 16)
  {
    v16 = *a3;
    _ETLDebugPrint();
    _ETLDebugPrintBinary();
    goto LABEL_12;
  }

  if (a3[1] - 24 > 0xFFFFFFEF)
  {
LABEL_12:
    v14 = 0;
LABEL_13:
    *a5 = 0;
    _ETLDebugPrint();
    return v14;
  }

  v11 = *(a3 + 2);
  if (!v11)
  {
    v14 = 1;
    goto LABEL_13;
  }

  if (a4 < 0x10 || (v12 = *(a3 + 1), *a3 = 0x100000000ALL, a3[2] = v12, a3[3] = v11, (v13 = *a1) == 0) || (v17 = -1431655766, (v13(a1, a3, 16, &v17, 1, a6, 0) & 1) == 0) || v17 != a3[1])
  {
LABEL_10:
    _ETLDebugPrint();
    return 0;
  }

  *a5 = v11 >> 6;
  return 1;
}

uint64_t ETLSAHGetDebugTable(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  TelephonyUtilRingBufferReset();
  if (TelephonyUtilRingBufferInsertTransport() >= 1 && (v7 = *a2) != 0 && (v8 = *(a2 + 4), 52 * a4 == TelephonyUtilRingBufferGetLinearReadRemaining()))
  {
    if (a4)
    {
      v9 = a4;
      v10 = (v7 + v8);
      do
      {
        v11 = *v10;
        v12 = v10[1];
        v13 = v10[2];
        v14 = *(v10 + 12);
        v10 = (v10 + 52);
        *(a3 + 48) = v14;
        *(a3 + 16) = v12;
        *(a3 + 32) = v13;
        *a3 = v11;
        a3 += 52;
        --v9;
      }

      while (v9);
    }

    return 1;
  }

  else
  {
    _ETLDebugPrint();
    return 0;
  }
}

uint64_t ETLSAHGetDebugTable64Bit(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  TelephonyUtilRingBufferReset();
  if (TelephonyUtilRingBufferInsertTransport() >= 1 && (v7 = *a2) != 0 && (v8 = *(a2 + 4), a4 << 6 == TelephonyUtilRingBufferGetLinearReadRemaining()))
  {
    if (a4)
    {
      v9 = 0;
      v10 = (v7 + v8);
      v11 = 1;
      do
      {
        v12 = (a3 + (v9 << 6));
        v13 = *v10;
        v14 = v10[1];
        v15 = v10[2];
        v16 = v10[3];
        v10 += 4;
        v12[2] = v15;
        v12[3] = v16;
        *v12 = v13;
        v12[1] = v14;
        v9 = v11++;
      }

      while (v9 < a4);
    }

    return 1;
  }

  else
  {
    _ETLDebugPrint();
    return 0;
  }
}

BOOL ETLSAHGetRecordEx(uint64_t a1, void (**a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t __size)
{
  v7 = __size;
  v13 = *(a3 + 4);
  v14 = *(a3 + 8);
  if (v14 <= 0x40000000)
  {
    v15 = *(a3 + 8);
  }

  else
  {
    v15 = 0;
  }

  v30[0] = *(a4 + 8);
  v30[1] = v13;
  v30[2] = v15 + v13;
  v31 = 0xAAAAAAAAAAAAAAAALL;
  v16 = malloc(__size);
  if (!v16)
  {
    return 0;
  }

  v17 = v16;
  v18 = *(a4 + 16) * (v15 / v7);
  v19 = v18 / 0x64;
  if (v18 < 0x64)
  {
    v19 = 1;
  }

  if (v15)
  {
    if (v7 >= 0x10 && *a1)
    {
      v27 = v19;
      v28 = a5;
      v20 = 1;
      while (1)
      {
        v21 = v14 >= v7 ? v7 : v14;
        *v17 = 0x100000000ALL;
        v17[2] = v13;
        v17[3] = v21;
        v22 = *a1;
        if (!*a1)
        {
          break;
        }

        v32 = -1431655766;
        if (!v22(a1, v17, 16, &v32, 1, a6, 0))
        {
          break;
        }

        v23 = v17[1];
        v24 = v32 == v23;
        if (v32 != v23)
        {
          goto LABEL_29;
        }

        v32 = 0;
        v25 = *(a1 + 8);
        if (!v25 || !v25(a1, v17, v21, &v32, 1, a6, 0) || v21 != v32)
        {
          _ETLDebugPrint();
          break;
        }

        if (*a2)
        {
          (*a2)();
          LODWORD(v21) = v32;
        }

        v13 = (v21 + v13);
        if (!--v20)
        {
          v31 = v13;
          (*(v28 + 16))(v28, v30, a3);
          v20 = v27;
        }

        v14 -= v21;
        if (!v14)
        {
          goto LABEL_29;
        }
      }
    }

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

LABEL_29:
  free(v17);
  return v24;
}

BOOL ETLSAHGetRecordEx64Bit(uint64_t a1, void (**a2)(void, void *, void, int *, uint64_t, uint64_t, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t __size)
{
  v7 = __size;
  v12 = *(a3 + 8);
  v13 = *(a3 + 16);
  if (v13 <= 0x40000000)
  {
    v14 = *(a3 + 16);
  }

  else
  {
    v14 = 0;
  }

  v15 = __size;
  v31[0] = *(a4 + 8);
  v31[1] = v12;
  v31[2] = v14 + v12;
  v32 = 0xAAAAAAAAAAAAAAAALL;
  v16 = malloc(__size);
  if (!v16)
  {
    return 0;
  }

  v17 = v16;
  v18 = v14 / v15 * *(a4 + 16);
  v19 = v18 / 0x64;
  if (v18 < 0x64)
  {
    v19 = 1;
  }

  if (v14)
  {
    if (v7 >= 0x10 && *a1)
    {
      v27 = v19;
      v20 = 1;
      while (1)
      {
        v21 = v13 >= v15 ? v15 : v13;
        *v17 = 0x100000000ALL;
        v17[2] = v12;
        v17[3] = v21;
        v22 = *a1;
        if (!*a1)
        {
          break;
        }

        v33 = -1431655766;
        if (!v22(a1, v17, 16, &v33, 1, a6, 0))
        {
          break;
        }

        v23 = v17[1];
        v24 = v33 == v23;
        if (v33 != v23)
        {
          goto LABEL_29;
        }

        v33 = 0;
        v25 = *(a1 + 8);
        if (!v25 || !v25(a1, v17, v21, &v33, 1, a6, 0) || v21 != v33)
        {
          _ETLDebugPrint();
          break;
        }

        v30 = 0;
        if (*a2)
        {
          (*a2)(a2, v17, v33, &v30, 1, a6, 0);
          v21 = v33;
        }

        v12 += v21;
        if (!--v20)
        {
          v32 = v12;
          (*(a5 + 16))(a5, v31, a3);
          v20 = v27;
        }

        v13 -= v21;
        if (!v13)
        {
          goto LABEL_29;
        }
      }
    }

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

LABEL_29:
  free(v17);
  return v24;
}

uint64_t ETLSAHCommandParseReadData(unsigned int *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  if (*a1 == 3)
  {
    if (a1[1] - 20 <= 0xFFFFFFF3)
    {
      *a2 = a1[2];
      *a3 = a1[3];
      *a4 = a1[4];
      return 1;
    }
  }

  else
  {
    v5 = *a1;
    _ETLDebugPrint();
    _ETLDebugPrintBinary();
  }

  return 0;
}

uint64_t ETLSAHCommandParseEndOfImageTransfer(unsigned int *a1, _DWORD *a2, _DWORD *a3)
{
  if (*a1 == 4)
  {
    if ((a1[1] & 0xFFFFFFF8) == 8)
    {
      return 0;
    }

    else
    {
      *a2 = a1[2];
      *a3 = a1[3];
      return 1;
    }
  }

  else
  {
    v4 = *a1;
    _ETLDebugPrint();
    _ETLDebugPrintBinary();
    return 0;
  }
}

BOOL ETLSAHCommandCreateDone(void *a1, unsigned int a2)
{
  if (a2 >= 8)
  {
    *a1 = 0x800000005;
  }

  return a2 > 7;
}

uint64_t ETLSAHCommandParseDoneResponse(unsigned int *a1, _DWORD *a2)
{
  if (*a1 == 6)
  {
    if ((a1[1] & 0xFFFFFFFC) == 8)
    {
      return 0;
    }

    else
    {
      *a2 = a1[2];
      return 1;
    }
  }

  else
  {
    v3 = *a1;
    _ETLDebugPrint();
    _ETLDebugPrintBinary();
    return 0;
  }
}

BOOL ETLSAHCommandCreateReset(void *a1, unsigned int a2)
{
  if (a2 >= 8)
  {
    *a1 = 0x800000007;
  }

  return a2 > 7;
}

BOOL ETLSAHCommandParseResetResponse(unsigned int *a1)
{
  v1 = *a1;
  if (*a1 != 8)
  {
    a1[1];
    v3 = *a1;
    _ETLDebugPrint();
    _ETLDebugPrintBinary();
  }

  return v1 == 8;
}

BOOL ETLSAHCommandParseCommandReady(unsigned int *a1)
{
  v1 = *a1;
  if (*a1 != 11)
  {
    a1[1];
    v3 = *a1;
    _ETLDebugPrint();
    _ETLDebugPrintBinary();
  }

  return v1 == 11;
}

uint64_t ETLSAHCommandCreateSwitchMode(uint64_t a1, int a2, unint64_t a3)
{
  if (a3 > 0xB && a1)
  {
    *a1 = 0xC0000000CLL;
    *(a1 + 8) = a2;
    return 1;
  }

  else
  {
    _ETLDebugPrint();
    return 0;
  }
}

uint64_t ETLSAHCommandParseMaverickEraseQuery(unsigned int *a1, void *a2, _DWORD *a3)
{
  v3 = 0;
  if (!a2 || !a3)
  {
    return v3;
  }

  if (*a1 == 160)
  {
    *a3 = a1[1] - 8;
    *a2 = a1 + 2;
    return 1;
  }

  v5 = *a1;
  _ETLDebugPrint();
  _ETLDebugPrintBinary();
  return 0;
}

BOOL ETLSAHCommandCreateMaverickEraseResponse(_DWORD *a1, unsigned int a2, int a3, char a4)
{
  if (a4)
  {
    v4 = 16;
  }

  else
  {
    v4 = 12;
  }

  if (v4 <= a2)
  {
    *a1 = 161;
    a1[1] = v4;
    a1[2] = a3;
    if (a4)
    {
      a1[3] = 1213417795;
    }
  }

  return v4 <= a2;
}

uint64_t ETLSAHCommandParseMaverickSendHashesQuery(unsigned int *a1, uint64_t a2)
{
  if (*a1 != 165)
  {
    v45 = *a1;
    _ETLDebugPrint();
    _ETLDebugPrintBinary();
    return 0;
  }

  v4 = a1[1] - 8;
  v5 = ETLDLOADGetProtocolVersion();
  if (v5 <= 1)
  {
    if (!v5)
    {
      _ETLDebugPrint();
      if (v4 >= 0x8C)
      {
        v28 = *(a1 + 2);
        *(a2 + 16) = a1[6];
        *a2 = v28;
        v29 = *(a1 + 7);
        *(a2 + 36) = a1[11];
        *(a2 + 20) = v29;
        v30 = *(a1 + 3);
        *(a2 + 56) = a1[16];
        *(a2 + 40) = v30;
        v31 = *(a1 + 17);
        *(a2 + 76) = a1[21];
        *(a2 + 60) = v31;
        v32 = *(a1 + 22);
        *(a2 + 96) = a1[26];
        *(a2 + 80) = v32;
        v33 = *(a1 + 27);
        *(a2 + 116) = a1[31];
        *(a2 + 100) = v33;
        v34 = *(a1 + 8);
        *(a2 + 136) = a1[36];
        *(a2 + 120) = v34;
        return 1;
      }

      return 0;
    }

    if (v5 == 1)
    {
      _ETLDebugPrint();
      if (v4 >= 0x140)
      {
        v6 = *(a1 + 6);
        *a2 = *(a1 + 2);
        *(a2 + 16) = v6;
        v7 = *(a1 + 14);
        *(a2 + 32) = *(a1 + 10);
        *(a2 + 48) = v7;
        v8 = *(a1 + 22);
        *(a2 + 64) = *(a1 + 18);
        *(a2 + 80) = v8;
        v9 = *(a1 + 30);
        *(a2 + 96) = *(a1 + 26);
        *(a2 + 112) = v9;
        v10 = *(a1 + 38);
        *(a2 + 128) = *(a1 + 34);
        *(a2 + 144) = v10;
        v11 = *(a1 + 46);
        *(a2 + 160) = *(a1 + 42);
        *(a2 + 176) = v11;
        v12 = *(a1 + 54);
        *(a2 + 192) = *(a1 + 50);
        *(a2 + 208) = v12;
        v13 = *(a1 + 62);
        *(a2 + 224) = *(a1 + 58);
        *(a2 + 240) = v13;
        v14 = *(a1 + 70);
        *(a2 + 256) = *(a1 + 66);
        *(a2 + 272) = v14;
        v15 = *(a1 + 78);
        *(a2 + 288) = *(a1 + 74);
        *(a2 + 304) = v15;
        return 1;
      }

      return 0;
    }

LABEL_12:
    if (v4 >= 0x3C)
    {
      v25 = *(a1 + 2);
      *(a2 + 16) = a1[6];
      *a2 = v25;
      v26 = *(a1 + 7);
      *(a2 + 36) = a1[11];
      *(a2 + 20) = v26;
      v27 = *(a1 + 3);
      *(a2 + 56) = a1[16];
      *(a2 + 40) = v27;
      return 1;
    }

    return 0;
  }

  if (v5 != 3)
  {
    if (v5 == 2)
    {
      _ETLDebugPrint();
      if (v4 >= 0xC0)
      {
        v17 = *(a1 + 2);
        v18 = *(a1 + 10);
        *(a2 + 16) = *(a1 + 6);
        *(a2 + 32) = v18;
        *a2 = v17;
        v19 = *(a1 + 14);
        v20 = *(a1 + 22);
        *(a2 + 64) = *(a1 + 18);
        *(a2 + 80) = v20;
        *(a2 + 48) = v19;
        v21 = *(a1 + 26);
        v22 = *(a1 + 34);
        *(a2 + 112) = *(a1 + 30);
        *(a2 + 128) = v22;
        *(a2 + 96) = v21;
        v23 = *(a1 + 38);
        v24 = *(a1 + 46);
        *(a2 + 160) = *(a1 + 42);
        *(a2 + 176) = v24;
        *(a2 + 144) = v23;
        return 1;
      }

      return 0;
    }

    goto LABEL_12;
  }

  _ETLDebugPrint();
  if (v4 >= 0xF0)
  {
    v35 = *(a1 + 2);
    v36 = *(a1 + 10);
    *(a2 + 16) = *(a1 + 6);
    *(a2 + 32) = v36;
    *a2 = v35;
    v37 = *(a1 + 14);
    v38 = *(a1 + 22);
    *(a2 + 64) = *(a1 + 18);
    *(a2 + 80) = v38;
    *(a2 + 48) = v37;
    v39 = *(a1 + 26);
    v40 = *(a1 + 34);
    *(a2 + 112) = *(a1 + 30);
    *(a2 + 128) = v40;
    *(a2 + 96) = v39;
    v41 = *(a1 + 38);
    v42 = *(a1 + 46);
    *(a2 + 160) = *(a1 + 42);
    *(a2 + 176) = v42;
    *(a2 + 144) = v41;
    v43 = *(a1 + 50);
    v44 = *(a1 + 58);
    *(a2 + 208) = *(a1 + 54);
    *(a2 + 224) = v44;
    *(a2 + 192) = v43;
    return 1;
  }

  return 0;
}

uint64_t ETLSAHCommandParseMaverickConfigQuery(unsigned int *a1, uint64_t a2)
{
  if (*a1 == 169)
  {
    if (a1[1] - 280 <= 0xFFFFFEEF)
    {
      *a2 = a1[2];
      *(a2 + 4) = a1[3];
      *(a2 + 8) = a1[4];
      *(a2 + 12) = a1[5];
      v2 = *(a1 + 6);
      v3 = *(a1 + 10);
      v4 = *(a1 + 18);
      *(a2 + 48) = *(a1 + 14);
      *(a2 + 64) = v4;
      *(a2 + 16) = v2;
      *(a2 + 32) = v3;
      v5 = *(a1 + 22);
      v6 = *(a1 + 26);
      v7 = *(a1 + 34);
      *(a2 + 112) = *(a1 + 30);
      *(a2 + 128) = v7;
      *(a2 + 80) = v5;
      *(a2 + 96) = v6;
      v8 = *(a1 + 38);
      v9 = *(a1 + 42);
      v10 = *(a1 + 50);
      *(a2 + 176) = *(a1 + 46);
      *(a2 + 192) = v10;
      *(a2 + 144) = v8;
      *(a2 + 160) = v9;
      v11 = *(a1 + 54);
      v12 = *(a1 + 58);
      v13 = *(a1 + 66);
      *(a2 + 240) = *(a1 + 62);
      *(a2 + 256) = v13;
      *(a2 + 208) = v11;
      *(a2 + 224) = v12;
      *(a2 + 271) = 0;
      return 1;
    }
  }

  else
  {
    v15 = *a1;
    _ETLDebugPrint();
    _ETLDebugPrintBinary();
  }

  return 0;
}

uint64_t ETLSAHCommandCreateMaverickConfigResponse(uint64_t a1, int a2, int a3, uint64_t a4, unsigned int a5)
{
  if (a5 > 0x17 && a1)
  {
    *a1 = 0x18000000AALL;
    *(a1 + 8) = a2;
    *(a1 + 12) = a3;
    *(a1 + 16) = a4;
    return 1;
  }

  else
  {
    _ETLDebugPrint();
    return 0;
  }
}

BOOL ETLSAHCommandCreateMaverickHashResponse(uint64_t a1, unsigned int a2, int a3)
{
  if (a2 >= 0xC)
  {
    *a1 = 0xC000000A6;
    *(a1 + 8) = a3;
  }

  return a2 > 0xB;
}

uint64_t ETLSAHCommandParseChipID(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  if (a1 && a3 && a2 > 7)
  {
    *a3 = *(a1 + 4);
    return 1;
  }

  else
  {
    _ETLDebugPrint();
    return 0;
  }
}

uint64_t ETLSAHCommandParseMaverickRootManifestQuery(unsigned int *a1, uint64_t a2)
{
  if (*a1 != 162)
  {
    v15 = *a1;
    _ETLDebugPrint();
    _ETLDebugPrintBinary();
    return 0;
  }

  v4 = a1[1] - 8;
  v5 = ETLDLOADGetProtocolVersion();
  if (v5 < 2)
  {
    _ETLDebugPrint();
    if (v4 < 0x40)
    {
      return 0;
    }

    *a2 = a1[2];
    v10 = *(a1 + 3);
    *(a2 + 20) = a1[7];
    *(a2 + 4) = v10;
    *(a2 + 24) = a1[8];
    *(a2 + 28) = a1[9];
    v11 = *(a1 + 10);
    v12 = *(a1 + 14);
LABEL_12:
    *(a2 + 32) = v11;
    *(a2 + 48) = v12;
    return 1;
  }

  if (v5 == 2)
  {
    _ETLDebugPrint();
    if (v4 < 0x50)
    {
      return 0;
    }

    *a2 = a1[2];
    v13 = *(a1 + 3);
    *(a2 + 20) = a1[7];
    *(a2 + 4) = v13;
    *(a2 + 24) = a1[8];
    *(a2 + 28) = a1[9];
    v11 = *(a1 + 10);
    v12 = *(a1 + 14);
    *(a2 + 64) = *(a1 + 18);
    goto LABEL_12;
  }

  if (v5 == 3)
  {
    _ETLDebugPrint();
    if (v4 >= 0x54)
    {
      *a2 = a1[2];
      v6 = *(a1 + 3);
      *(a2 + 20) = a1[7];
      *(a2 + 4) = v6;
      *(a2 + 24) = *(a1 + 4);
      *(a2 + 32) = a1[10];
      v7 = *(a1 + 11);
      v8 = *(a1 + 15);
      *(a2 + 68) = *(a1 + 19);
      *(a2 + 52) = v8;
      *(a2 + 36) = v7;
      return 1;
    }
  }

  else if (v4 >= 0x20)
  {
    *a2 = a1[2];
    v14 = *(a1 + 3);
    *(a2 + 20) = a1[7];
    *(a2 + 4) = v14;
    *(a2 + 24) = a1[8];
    *(a2 + 28) = a1[9];
    return 1;
  }

  return 0;
}

BOOL ETLSAHCommandCreateMaverickRootManifestResponse(_DWORD *a1, unsigned int a2, void *__src, size_t __n)
{
  v5 = __n + 8;
  if (__n + 8 <= a2)
  {
    *a1 = 163;
    a1[1] = v5;
    memcpy(a1 + 2, __src, __n);
  }

  return v5 <= a2;
}

BOOL ETLSAHCommandMaverickParseEnd(unsigned int *a1)
{
  v1 = *a1;
  if (*a1 != 164)
  {
    a1[1];
    v3 = *a1;
    _ETLDebugPrint();
    _ETLDebugPrintBinary();
  }

  return v1 == 164;
}